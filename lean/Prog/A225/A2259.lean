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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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

/-!
# A225900: T(n,k)=Number of nXk binary arrays whose sum with another nXk binary array containing no more than a single 1 has rows and columns in lexicographically nondecreasing order.

The programs for A225900, there is no canonical definition to state claims against.
-/

/-! ## A225900.P13357462094240684904

`A360202(n+1)+A010054(A022175(n))`
-/

namespace A225900.P13357462094240684904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (n + 1) + A010054 (A022175 n).toNat

end

end A225900.P13357462094240684904

/-! ## A225900.P10777817089688073350

`A360202(n+1)+A010054(A157221(n))`
-/

namespace A225900.P10777817089688073350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (n + 1) + A010054 (A157221 n).toNat

end

end A225900.P10777817089688073350

/-! ## A225900.P11774350683255922915

`A360202(n+1)+A063524(A340475(n)²)`
-/

namespace A225900.P11774350683255922915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (n + 1) + A063524 (A340475 n ^ 2).toNat

end

end A225900.P11774350683255922915

/-! ## A225900.P17281183418621921038

`A227558(record[A252648(n)])`
-/

namespace A225900.P17281183418621921038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225900.P17281183418621921038

/-! ## A225900.P12409695858547854712

`A227558(A001104(n+1))`
-/

namespace A225900.P12409695858547854712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227558 (A001104 (n + 1)).toNat

end

end A225900.P12409695858547854712

/-!
# A225901: Write n in factorial base, then replace each nonzero digit d of radix k with k-d.

The programs for A225901, there is no canonical definition to state claims against.
-/

/-! ## A225901.P4376507999703527879

`A276149(n)+a(A257687(n))` with `a(0)=0, a(1)=1`
-/

namespace A225901.P4376507999703527879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A276149 n + a (A257687 n).toNat

end

end A225901.P4376507999703527879

/-! ## A225901.P12555445799323346684

`A276091(A275736(n))+A153880(a(A257684(n)))` with `a(0)=0, a(1)=1`
-/

namespace A225901.P12555445799323346684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A276091 (A275736 n).toNat + A153880 (a (A257684 n).toNat).toNat

end

end A225901.P12555445799323346684

/-! ## A225901.P9722732399807234408

`A302851(a(n-1)+1)` with `a(0)=0`
-/

namespace A225901.P9722732399807234408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A302851 (a (n - 1) + 1).toNat

end

end A225901.P9722732399807234408

/-! ## A225901.P3874739491903626446

`A275957(A060125(n))`
-/

namespace A225901.P3874739491903626446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275957 (A060125 n).toNat

end

end A225901.P3874739491903626446

/-! ## A225901.P552950820674834044

`A060125(A275958(n))`
-/

namespace A225901.P552950820674834044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 (A275958 n).toNat

end

end A225901.P552950820674834044

/-! ## A225901.P3621361345071581820

`A276008(A153880(n))-n`
-/

namespace A225901.P3621361345071581820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 (A153880 n).toNat - (n : ℤ)

end

end A225901.P3621361345071581820

/-! ## A225901.P14873280019865106939

`A276008(A255411(n))-n`
-/

namespace A225901.P14873280019865106939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 (A255411 n).toNat - (n : ℤ)

end

end A225901.P14873280019865106939

/-! ## A225901.P2279676434930362084

`A059590(2*A275727(n))-n`
-/

namespace A225901.P2279676434930362084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (2 * A275727 n).toNat - (n : ℤ)

end

end A225901.P2279676434930362084

/-! ## A225901.P12643003353699511436

`A255411(n)-(A153880(n)+n)`
-/

namespace A225901.P12643003353699511436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 n - (A153880 n + (n : ℤ))

end

end A225901.P12643003353699511436

/-! ## A225901.P15750631233727500166

`A275957(A060127(A060119(n)))`
-/

namespace A225901.P15750631233727500166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275957 (A060127 (A060119 n).toNat).toNat

end

end A225901.P15750631233727500166

/-! ## A225901.P5730683255827393208

`A275837(A273668(n))`
-/

namespace A225901.P5730683255827393208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275837 (A273668 n).toNat

end

end A225901.P5730683255827393208

/-! ## A225901.P3408635300492312285

`A275836(A273667(n))`
-/

namespace A225901.P3408635300492312285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275836 (A273667 n).toNat

end

end A225901.P3408635300492312285

/-! ## A225901.P11031384856067265755

`A276011(A273663(A275952(n)))`
-/

namespace A225901.P11031384856067265755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276011 (A273663 (A275952 n).toNat).toNat

end

end A225901.P11031384856067265755

/-! ## A225901.P393854139295349276

`A276012(A273662(A275954(n)))`
-/

namespace A225901.P393854139295349276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276012 (A273662 (A275954 n).toNat).toNat

end

end A225901.P393854139295349276

/-! ## A225901.P12631542170179106997

`A275837(A275842(A276012(n)))`
-/

namespace A225901.P12631542170179106997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275837 (A275842 (A276012 n).toNat).toNat

end

end A225901.P12631542170179106997

/-! ## A225901.P2130585942769464925

`A275836(A276011(A275841(n)))`
-/

namespace A225901.P2130585942769464925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275836 (A276011 (A275841 n).toNat).toNat

end

end A225901.P2130585942769464925

/-! ## A225901.P15780702085673915595

`A273667(A275838(n))`
-/

namespace A225901.P15780702085673915595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A275838 n).toNat

end

end A225901.P15780702085673915595

/-! ## A225901.P13952194266266146757

`A276011(A275841(A275838(A276012(A276011(n)))))`
-/

namespace A225901.P13952194266266146757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276011 (A275841 (A275838 (A276012 (A276011 n).toNat).toNat).toNat).toNat

end

end A225901.P13952194266266146757

/-! ## A225901.P1923567641703738805

`A343042(∑[n+3])-n`
-/

namespace A225901.P1923567641703738805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343042 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A225901.P1923567641703738805

/-! ## A225901.P11421574400900634888

`A273668(A275835(n))`
-/

namespace A225901.P11421574400900634888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273668 (A275835 n).toNat

end

end A225901.P11421574400900634888

/-!
# A225904: Numerator of Sum_{k=1..n} 1/L(k) where L(n) is the n-th Lucas number (A000204).

The programs for A225904, there is no canonical definition to state claims against.
-/

/-! ## A225904.P3508763858074331983

`A225891(A203010(n+1)/A009194(n+1))`
-/

namespace A225904.P3508763858074331983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225891 (SequenceMachineLib.roundAway ((A203010 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ))).toNat

end

end A225904.P3508763858074331983

/-!
# A225905: Denominator of Sum_{k=1..n} 1/L(k) where L(n) is the n-th Lucas number (A000204).

The programs for A225905, there is no canonical definition to state claims against.
-/

/-! ## A225905.P2514002858945721708

`∏[A111608(round(ϕ^((n+1)%(n+1)²)))]`
-/

namespace A225905.P2514002858945721708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111608 (SequenceMachineLib.roundAway (Real.goldenRatio ^ ((n + 1) % (n + 1) ^ 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A225905.P2514002858945721708

/-! ## A225905.P1752781862788165820

`∏[A111608(round((ϕ-C(2, n+2))^(n+1)))]`
-/

namespace A225905.P1752781862788165820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111608 (SequenceMachineLib.roundAway ((Real.goldenRatio - (Nat.choose 2 (n + 2) : ℝ)) ^ (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A225905.P1752781862788165820

/-! ## A225905.P12381676787971294199

`∏[A025492(record[A132827(n)])]`
-/

namespace A225905.P12381676787971294199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132827 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A225905.P12381676787971294199

/-! ## A225905.P16386029433514458242

`∏[A111608(A000032(n+1))]`
-/

namespace A225905.P16386029433514458242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111608 (A000032 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A225905.P16386029433514458242

/-!
# A225906: Indices of primes whose Wilson quotients are also prime.

The programs for A225906, there is no canonical definition to state claims against.
-/

/-! ## A225906.P15062047101381810557

`A000720(A050299(n+2))`
-/

namespace A225906.P15062047101381810557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A050299 (n + 2)).toNat

end

end A225906.P15062047101381810557

/-! ## A225906.P14351928068759122939

`A036234(A242565(n+1))`
-/

namespace A225906.P14351928068759122939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A242565 (n + 1)).toNat

end

end A225906.P14351928068759122939

/-!
# A225907: Smallest n-Ramanujan prime that is less than half of the next n-Ramanujan prime, or 0 if none exists.

The programs for A225907, there is no canonical definition to state claims against.
-/

/-! ## A225907.P10821357610390193473

`A063655(xor(1, ∑[8^n])+16)-8`
-/

namespace A225907.P10821357610390193473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 16) - 8

end

end A225907.P10821357610390193473

/-!
# A225908: Numbers that are both a sum and a difference of two positive cubes.

The programs for A225908, there is no canonical definition to state claims against.
-/

/-! ## A225908.P15523460628864850720

`∩[A003325(n+1), A038593(n+1)]`
-/

namespace A225908.P15523460628864850720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225908.P15523460628864850720

/-! ## A225908.P17226110919589113901

`∩[A004999(n+1), A038593(n+1)]`
-/

namespace A225908.P17226110919589113901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225908.P17226110919589113901

/-! ## A225908.P2281849819877475087

`∩[A024670(n+1), A038593(n+1)]`
-/

namespace A225908.P2281849819877475087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225908.P2281849819877475087

/-! ## A225908.P16167681659860765216

`∩[A038593(n+1), A114090(n+1)]`
-/

namespace A225908.P16167681659860765216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225908.P16167681659860765216

/-! ## A225908.P2020336882029626584

`∩[A003325(n+1), A181123(n+1)]`
-/

namespace A225908.P2020336882029626584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225908.P2020336882029626584

/-! ## A225908.P16843888385380143810

`∩[A024670(n+1), A181123(n+1)]`
-/

namespace A225908.P16843888385380143810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225908.P16843888385380143810

/-! ## A225908.P4985803315791015248

`∩[A114090(n+1), A181123(n+1)]`
-/

namespace A225908.P4985803315791015248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225908.P4985803315791015248

/-! ## A225908.P8032352828302828696

`∩[A003325(n+1), A152043(n+1)]`
-/

namespace A225908.P8032352828302828696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225908.P8032352828302828696

/-! ## A225908.P6200577891428041830

`∩[A024670(n+1), A152043(n+1)]`
-/

namespace A225908.P6200577891428041830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225908.P6200577891428041830

/-!
# A225909: Numbers that are both a sum of two positive cubes and a difference of two consecutive cubes.

The programs for A225909, there is no canonical definition to state claims against.
-/

/-! ## A225909.P18167773826720091074

`(A226902(n+1)+1)^3-A226902(n+1)^3`
-/

namespace A225909.P18167773826720091074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A226902 (n + 1) + 1) ^ 3 - A226902 (n + 1) ^ 3

end

end A225909.P18167773826720091074

/-! ## A225909.P12391230367050463912

`∩[A159961(n+1), A225908(n+1)]`
-/

namespace A225909.P12391230367050463912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225909.P12391230367050463912

/-! ## A225909.P8506569060757730639

`A003215(A226902(n+1))`
-/

namespace A225909.P8506569060757730639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A226902 (n + 1)).toNat

end

end A225909.P8506569060757730639

/-! ## A225909.P11884746426314315249

`∩[A225908(n+1), A003215(n)]`
-/

namespace A225909.P11884746426314315249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225909.P11884746426314315249

/-! ## A225909.P9732057308062412680

`∩[A225908(n+1), A354343(n)]`
-/

namespace A225909.P9732057308062412680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354343 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225909.P9732057308062412680

/-! ## A225909.P10493427746328227725

`∩[A225908(n+1), A298125(n+1)]`
-/

namespace A225909.P10493427746328227725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225909.P10493427746328227725

/-! ## A225909.P7183786741905738146

`∩[A225908(n+1), A309805(n+1)]`
-/

namespace A225909.P7183786741905738146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225909.P7183786741905738146

/-!
# A225910: Square array read by antidiagonals: a(m,n) is the number of binary pattern classes in the (m,n)-rectangular grid, two patterns are in the same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A225910, there is no canonical definition to state claims against.
-/

/-! ## A225910.P2718387244260079895

`A125749(A034801(n))`
-/

namespace A225910.P2718387244260079895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125749 (A034801 n).toNat

end

end A225910.P2718387244260079895

/-! ## A225910.P2682183115738375795

`A140192(A022168(n))`
-/

namespace A225910.P2682183115738375795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140192 (A022168 n).toNat

end

end A225910.P2682183115738375795

/-! ## A225910.P1730637239031210828

`A097688(A128596(n))`
-/

namespace A225910.P1730637239031210828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097688 (A128596 n).toNat

end

end A225910.P1730637239031210828

/-! ## A225910.P2937101949566813643

`A076634(A174690(n))`
-/

namespace A225910.P2937101949566813643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076634 (A174690 n).toNat

end

end A225910.P2937101949566813643

/-! ## A225910.P11535784362920598415

`A104307(A168621(n))`
-/

namespace A225910.P11535784362920598415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104307 (A168621 n).toNat

end

end A225910.P11535784362920598415

/-!
# A225914: Position of the first occurrence of n in sequence A196942.

The programs for A225914, there is no canonical definition to state claims against.
-/

/-! ## A225914.P17148395969013974267

`A000229(n+1)-A320322(A074260(n))`
-/

namespace A225914.P17148395969013974267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000229 (n + 1) - A320322 (A074260 n).toNat

end

end A225914.P17148395969013974267

/-!
# A225916: Product of distinct primes p*q such that both 2p + q and p + 2q are prime numbers.

The programs for A225916, there is no canonical definition to state claims against.
-/

/-! ## A225916.P17004268034414228312

`filter[A179182(2*n+1), A353480(#)]`
-/

namespace A225916.P17004268034414228312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179182 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A225916.P17004268034414228312

/-! ## A225916.P497225899062767332

`filter[A179182(2*n+1), A353481(#)]`
-/

namespace A225916.P497225899062767332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179182 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A225916.P497225899062767332

/-! ## A225916.P14959817339408164427

`filter[A179182(2*n+1), A353676(#)]`
-/

namespace A225916.P14959817339408164427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179182 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A225916.P14959817339408164427

/-!
# A225917: a(n) is the smallest product of distinct prime pair p*q such that both 2^n*p+q and p+2^n+q are prime numbers.

The programs for A225917, there is no canonical definition to state claims against.
-/

/-! ## A225917.P3603257563338641768

`A130569(A245910(n)+2)`
-/

namespace A225917.P3603257563338641768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130569 (A245910 n + 2).toNat

end

end A225917.P3603257563338641768

/-! ## A225917.P14971896241562543297

`or(7, A191887(A037943(n+1)))`
-/

namespace A225917.P14971896241562543297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A191887 (A037943 (n + 1)).toNat)

end

end A225917.P14971896241562543297

/-! ## A225917.P6732535068966549832

`A061346(gcd(A007677(n), A057574(n)))`
-/

namespace A225917.P6732535068966549832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (Int.gcd (A007677 n) (A057574 n))

end

end A225917.P6732535068966549832

/-! ## A225917.P1697543452798016857

`A141230(gcd(A141244(n), A333429(n+1)))`
-/

namespace A225917.P1697543452798016857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141230 (Int.gcd (A141244 n) (A333429 (n + 1)))

end

end A225917.P1697543452798016857

/-! ## A225917.P6591693783432458167

`A004771(gcd(A322231(n), A350009(n+1)))`
-/

namespace A225917.P6591693783432458167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (Int.gcd (A322231 n) (A350009 (n + 1)))

end

end A225917.P6591693783432458167

/-!
# A225918: a(n) is the least k such that f(a(n-1)+1) + ... + f(k) > f(a(n-2)+1) + ... + f(a(n-1)) for n > 1, where f(n) = 1/(n+3) and a(1) = 1.

The programs for A225918, there is no canonical definition to state claims against.
-/

/-! ## A225918.P1398028626688448587

`A225919(n+1)-A325102(A000079(n))`
-/

namespace A225918.P1398028626688448587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225919 (n + 1) - A325102 (A000079 n).toNat

end

end A225918.P1398028626688448587

/-!
# A225919: a(n) is the least k such that f(a(n-1)+1) + ... + f(k) > f(a(n-2)+1) + ... + f(a(n-1)) for n > 1, where f(n) = 1/(n+4) and a(1) = 1.

The programs for A225919, there is no canonical definition to state claims against.
-/

/-! ## A225919.P10806776808977745456

`A225918(n+1)+A004525(A225920(n+1)-A225918(n+1))`
-/

namespace A225919.P10806776808977745456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225918 (n + 1) + A004525 (A225920 (n + 1) - A225918 (n + 1)).toNat

end

end A225919.P10806776808977745456

/-! ## A225919.P2693485021954989494

`A225918(n+1)+A004526(A225920(n+1)-A225918(n+1))`
-/

namespace A225919.P2693485021954989494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225918 (n + 1) + A004526 (A225920 (n + 1) - A225918 (n + 1)).toNat

end

end A225919.P2693485021954989494

/-! ## A225919.P11981074867636923173

`A001281(A225920(n+1)+A225918(n+1))`
-/

namespace A225919.P11981074867636923173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A225920 (n + 1) + A225918 (n + 1)).toNat

end

end A225919.P11981074867636923173

/-!
# A225920: a(n) is the least k such that f(a(n-1)+1) + ... + f(k) > f(a(n-2)+1) + ... + f(a(n-1)) for n > 1, where f(n) = 1/(n+5) and a(1) = 1.

The programs for A225920, there is no canonical definition to state claims against.
-/

/-! ## A225920.P3664283732603305659

`A325102(A000079(n))+A225919(n+1)`
-/

namespace A225920.P3664283732603305659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325102 (A000079 n).toNat + A225919 (n + 1)

end

end A225920.P3664283732603305659

/-!
# A225921: a(n) is the least k such that f(a(n-1)+1) + ... + f(k) > f(a(n-2)+1) + ... + f(a(n-1)) for n > 1, where f(n) = 1/(n+6) and a(1) = 1.

The programs for A225921, there is no canonical definition to state claims against.
-/

/-! ## A225921.P10968127685213326270

`A306229(A256582(n+1)+∏[gcd(2, n)]-1)`
-/

namespace A225921.P10968127685213326270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306229 (A256582 (n + 1) + (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)).toNat

end

end A225921.P10968127685213326270

/-!
# A225922: a(n) is the least k such that f(a(n-1)+1) + ... + f(k) > f(a(n-2)+1) + ... + f(a(n-1)) for n > 1, where f(n) = 1/(n+7) and a(1) = 1.

The programs for A225922, there is no canonical definition to state claims against.
-/

/-! ## A225922.P3121127025868940555

`A126613(or(A066099(n+1), A227587(n)))`
-/

namespace A225922.P3121127025868940555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126613 (Int.lor (A066099 (n + 1)) (A227587 n)).toNat

end

end A225922.P3121127025868940555

/-!
# A225923: Expansion of q^(-1/2) * k(q) * (1 - k(q)^4) * (K(q) / (Pi/2))^6 / 4 in powers of q where k(), k'(), K() are Jacobi elliptic functions.

The programs for A225923, there is no canonical definition to state claims against.
-/

/-! ## A225923.P5563342120552900829

`A000735(n)+32*A225872(n)`
-/

namespace A225923.P5563342120552900829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000735 n + 32 * A225872 n

end

end A225923.P5563342120552900829

/-! ## A225923.P7375502102356848420

`A225912(Δ[n²])`
-/

namespace A225923.P7375502102356848420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225912 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A225923.P7375502102356848420

/-! ## A225923.P6099849472742329594

`A225912(n+1+n)^gcd(n, n+1)`
-/

namespace A225923.P6099849472742329594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225912 (n + 1 + n) ^ Nat.gcd n (n + 1)

end

end A225923.P6099849472742329594

/-! ## A225923.P10944881941317540290

`(1-4/2)²*A225912(2*n+1)`
-/

namespace A225923.P10944881941317540290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) ^ 2 * (A225912 (2 * n + 1) : ℚ)

end

end A225923.P10944881941317540290

/-! ## A225923.P9794035529078876569

`2*A225543(n)-A000735(n)`
-/

namespace A225923.P9794035529078876569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A225543 n - A000735 n

end

end A225923.P9794035529078876569

/-! ## A225923.P13191304104964096938

`A225912(2*n+1)+char[A017466(n)]`
-/

namespace A225923.P13191304104964096938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017466 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225912 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A225923.P13191304104964096938

/-! ## A225923.P14948238503443821943

`A225912(2*n+1)%Δ[A055856(n)]`
-/

namespace A225923.P14948238503443821943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225912 (2 * n + 1)) (f1 (n + 1) - f1 n)

end

end A225923.P14948238503443821943

/-! ## A225923.P2868622157987472111

`A225912(2*n+1)+A000007(n+1)`
-/

namespace A225923.P2868622157987472111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225912 (2 * n + 1) + A000007 (n + 1)

end

end A225923.P2868622157987472111

/-! ## A225923.P7887433855176450246

`A225912(2*n+1)+A088917(2*n+1)`
-/

namespace A225923.P7887433855176450246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225912 (2 * n + 1) + A088917 (2 * n + 1)

end

end A225923.P7887433855176450246

/-! ## A225923.P6151678200476463248

`A020985(n+1)*A225912(2*n+1)*A020985(n+1)`
-/

namespace A225923.P6151678200476463248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (n + 1) * A225912 (2 * n + 1) * A020985 (n + 1)

end

end A225923.P6151678200476463248

/-! ## A225923.P3549674069148446869

`A225912(2*n+1)+A008683(2*(n+1))*A225912(2*n)`
-/

namespace A225923.P3549674069148446869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225912 (2 * n + 1) + A008683 (2 * (n + 1)) * A225912 (2 * n)

end

end A225923.P3549674069148446869

/-! ## A225923.P16368222067986007426

`A225912(2*n+1)+A047753(2*(n+1))`
-/

namespace A225923.P16368222067986007426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225912 (2 * n + 1) + A047753 (2 * (n + 1))

end

end A225923.P16368222067986007426

/-!
# A225924: Number of solutions to 2n - 1 = (p1*p2 + p3)/2, where p1, p2, and p3 are prime numbers less than 2n-1.

The programs for A225924, there is no canonical definition to state claims against.
-/

/-! ## A225924.P9160570849545664934

`A162642(A036891(n+1)+A000122(n))`
-/

namespace A225924.P9160570849545664934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (A036891 (n + 1) + A000122 n).toNat

end

end A225924.P9160570849545664934

/-! ## A225924.P12085445204528473302

`A292818(A311570(n))%A026238(n+2)`
-/

namespace A225924.P12085445204528473302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292818 (A311570 n).toNat) (A026238 (n + 2))

end

end A225924.P12085445204528473302

/-! ## A225924.P10110450812853425160

`A037811(lcm(A098771(n+1), A271709(n)))`
-/

namespace A225924.P10110450812853425160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (Int.lcm (A098771 (n + 1)) (A271709 n))

end

end A225924.P10110450812853425160

/-! ## A225924.P2956244436285501693

`A087436(A271518(n)+A000041(3*(n+1)))`
-/

namespace A225924.P2956244436285501693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A271518 n + A000041 (3 * (n + 1))).toNat

end

end A225924.P2956244436285501693

/-! ## A225924.P8574549146302658006

`A124760(A262813(n+1)*A365043(2*n+3))`
-/

namespace A225924.P8574549146302658006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A262813 (n + 1) * A365043 (2 * n + 3)).toNat

end

end A225924.P8574549146302658006

/-!
# A225927: Least number of prime powers greater than 1 needed to sum up to n, or 0 if n cannot be represented as a sum of prime powers.

The programs for A225927, there is no canonical definition to state claims against.
-/

/-! ## A225927.P643999531769166444

`A241405(n+1)%∑[A010052(A027620(n))]`
-/

namespace A225927.P643999531769166444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A027620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241405 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225927.P643999531769166444

/-! ## A225927.P10533391872807822119

`A034448(n+1)%A055642(A133033(n+1))`
-/

namespace A225927.P10533391872807822119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034448 (n + 1)) (A055642 (A133033 (n + 1)).toNat)

end

end A225927.P10533391872807822119

/-! ## A225927.P3409404533241042866

`gcd(A350251(n+1), A350251(A055151(n+2)))`
-/

namespace A225927.P3409404533241042866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A350251 (n + 1)) (A350251 (A055151 (n + 2)).toNat)

end

end A225927.P3409404533241042866

/-! ## A225927.P15658550523859128291

`A327219(n)*A333451(A002496(n+1))`
-/

namespace A225927.P15658550523859128291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 n * A333451 (A002496 (n + 1)).toNat

end

end A225927.P15658550523859128291

/-! ## A225927.P11512336096607420704

`A095407(A287415(n)^A112344(n+1))`
-/

namespace A225927.P11512336096607420704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (SequenceMachineLib.roundAway ((A287415 n : ℚ) ^ (A112344 (n + 1) : ℤ))).toNat

end

end A225927.P11512336096607420704

/-!
# A225928: a(n) = 4*16^n + 8*4^n + 17.

The programs for A225928, the canonical program `A225928.P13436948195386558090` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225928 has offset 0).

The definition of A225928 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*16^n+8*4^n+17` (program `A225928.P13436948195386558090`, by `A225928.P13436948195386558090.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225928.P13436948195386558090

`4*16^n+8*4^n+17`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225928

/-- `4*16^n+8*4^n+17` -/
def P13436948195386558090.Spec : Prop :=
  ∀ n, (P13436948195386558090.a n : ℤ) = A225928 n

theorem P13436948195386558090.correct : P13436948195386558090.Spec := by
  intro n
  simp only [A225928]

end A225928

/-! ## A225928.P9137477399584108266

`A241749(2*4^n+2)`
-/

namespace A225928.P9137477399584108266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241749 (2 * 4 ^ n + 2)

end

end A225928.P9137477399584108266

namespace A225928

/-- `A241749(2*4^n+2)` -/
def P9137477399584108266.Spec : Prop :=
  ∀ n, P9137477399584108266.a n = A225928 n

end A225928

/-! ## A225928.P3877052741600338853

`or(1, A241749(record[2^xor(1, n)+2]))`
-/

namespace A225928.P3877052741600338853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor 1 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A241749 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A225928.P3877052741600338853

namespace A225928

/-- `or(1, A241749(record[2^xor(1, n)+2]))` -/
def P3877052741600338853.Spec : Prop :=
  ∀ n, P3877052741600338853.a n = A225928 n

end A225928

/-!
# A225939: Numbers k that divide prime(k) + prime(k-1).

The programs for A225939, there is no canonical definition to state claims against.
-/

/-! ## A225939.P7609473157304850921

`lt[n+1, gcd(n+2, A001043(n+1))]+2`
-/

namespace A225939.P7609473157304850921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A001043 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A225939.P7609473157304850921

/-!
# A225942: Triangular array read by rows: T(n,k) is the number of f:{1,2,...,n}->{1,2,...,n} with exactly 2k elements that have a preimage of even (possibly zero) cardinality; n>=0, 0<=k<=floor(n/2).

The programs for A225942, there is no canonical definition to state claims against.
-/

/-! ## A225942.P8553296400217203300

`A000003(A307284(n)+A002869(n))`
-/

namespace A225942.P8553296400217203300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (A307284 n + A002869 n).toNat

end

end A225942.P8553296400217203300

/-!
# A225943: The first member of a twin prime pair whose sum equals the sums of two consecutive smaller pairs of twin primes.

The programs for A225943, there is no canonical definition to state claims against.
-/

/-! ## A225943.P5218053245355814271

`A160916(n+1)-1`
-/

namespace A225943.P5218053245355814271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160916 (n + 1) - 1

end

end A225943.P5218053245355814271

/-! ## A225943.P3096948673267737084

`6*A226652(n+1)-1`
-/

namespace A225943.P3096948673267737084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A226652 (n + 1) - 1

end

end A225943.P3096948673267737084

/-! ## A225943.P10915802928102801198

`A260196(n+2)+A160916(n+1)`
-/

namespace A225943.P10915802928102801198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A160916 (n + 1)

end

end A225943.P10915802928102801198

/-! ## A225943.P12968336137015727462

`A280193(2*n+1)+A160916(n+1)`
-/

namespace A225943.P12968336137015727462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A160916 (n + 1)

end

end A225943.P12968336137015727462

/-! ## A225943.P5074505236537033840

`abs(A160916(n+1)+or(-1, A007094(n)))`
-/

namespace A225943.P5074505236537033840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A160916 (n + 1) + Int.lor (-1) (A007094 n)|

end

end A225943.P5074505236537033840

/-! ## A225943.P17620386803415029762

`p?[A160916(n+1)+A033999(2*n+1)]`
-/

namespace A225943.P17620386803415029762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160916 (n + 1) + A033999 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225943.P17620386803415029762

/-! ## A225943.P15057814016262895626

`A107745(A226652(n+1))`
-/

namespace A225943.P15057814016262895626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107745 (A226652 (n + 1)).toNat

end

end A225943.P15057814016262895626

/-! ## A225943.P18020708065692373228

`A182482(A160916(n+1)/6)`
-/

namespace A225943.P18020708065692373228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182482 (SequenceMachineLib.roundAway ((A160916 (n + 1) : ℚ) / 6)).toNat

end

end A225943.P18020708065692373228

/-!
# A225944: Numbers k such that prime(k) divides k^k - 1.

The programs for A225944, there is no canonical definition to state claims against.
-/

/-! ## A225944.P3459796620598841811

`eq[1, A117131(n+1)]+1`
-/

namespace A225944.P3459796620598841811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225944.P3459796620598841811

/-! ## A225944.P17078634164066062487

`record[root(A000027(n+1), A117131(n+1))]`
-/

namespace A225944.P17078634164066062487
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℝ) ^ (1 / (A117131 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225944.P17078634164066062487

/-!
# A225947: Lexicographically least sequence of primes (including 1) that are sum-free.

The programs for A225947, there is no canonical definition to state claims against.
-/

/-! ## A225947.P13117061129278131051

`A323520(A005109(n+1)-A357982(n+1))`
-/

namespace A225947.P13117061129278131051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323520 (A005109 (n + 1) - A357982 (n + 1)).toNat

end

end A225947.P13117061129278131051

/-!
# A225948: a(0) = -1; for n>0, a(n) = numerator(1/4 - 4/n^2).

The programs for A225948, the canonical program `A225948.P11567398781708977786` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225948 has offset 0).

The definition of A225948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225948.P12358287417159123307

`(n²-16)/gcd(n²-16, 16*n)`
-/

namespace A225948.P12358287417159123307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 16 : ℚ) / (Int.gcd ((n ^ 2 : ℤ) - 16) (16 * n : ℤ) : ℚ)

end

end A225948.P12358287417159123307

namespace A225948

/-- `(n²-16)/gcd(n²-16, 16*n)` -/
def P12358287417159123307.Spec : Prop :=
  ∀ n, P12358287417159123307.a n = (A225948 n : ℚ)

end A225948

/-! ## A225948.P11567398781708977786

`(A225975(n)-A106609(n+4))*A106609(n+4)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A225948

/-- `(A225975(n)-A106609(n+4))*A106609(n+4)` -/
def P11567398781708977786.Spec : Prop :=
  ∀ n, P11567398781708977786.a n = A225948 n

theorem P11567398781708977786.correct : P11567398781708977786.Spec := by
  intro n
  simp only [A225948]

end A225948

/-! ## A225948.P2592906607024890736

`A014709(A174683(n))*A174680(n)`
-/

namespace A225948.P2592906607024890736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A174683 n).toNat * A174680 n

end

end A225948.P2592906607024890736

namespace A225948

/-- `A014709(A174683(n))*A174680(n)` -/
def P2592906607024890736.Spec : Prop :=
  ∀ n, P2592906607024890736.a n = A225948 n

end A225948

/-! ## A225948.P2473531949323502950

`A000034(A188134(n)²)*A174680(n)`
-/

namespace A225948.P2473531949323502950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A188134 n ^ 2).toNat * A174680 n

end

end A225948.P2473531949323502950

namespace A225948

/-- `A000034(A188134(n)²)*A174680(n)` -/
def P2473531949323502950.Spec : Prop :=
  ∀ n, P2473531949323502950.a n = A225948 n

end A225948

/-! ## A225948.P13050825265966478503

`A014695(A174683(n))*A173651(∑[n+4]+3)`
-/

namespace A225948.P13050825265966478503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A174683 n).toNat * A173651 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A225948.P13050825265966478503

namespace A225948

/-- `A014695(A174683(n))*A173651(∑[n+4]+3)` -/
def P13050825265966478503.Spec : Prop :=
  ∀ n, P13050825265966478503.a n = A225948 n

end A225948

/-!
# A225949: Triangle for sum of the two legs (catheti) of primitive Pythagorean triangles.

The programs for A225949, there is no canonical definition to state claims against.
-/

/-! ## A225949.P9284422677733374862

`A225952(n+2)+A225950(n+2)`
-/

namespace A225949.P9284422677733374862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225952 (n + 2) + A225950 (n + 2)

end

end A225949.P9284422677733374862

/-! ## A225949.P7074781608716849421

`A056203(n+1)*A249866(n+2)`
-/

namespace A225949.P7074781608716849421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056203 (n + 1) * A249866 (n + 2)

end

end A225949.P7074781608716849421

/-! ## A225949.P3344285955665896045

`A225951(n+2)-A222946(n+2)`
-/

namespace A225949.P3344285955665896045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225951 (n + 2) - A222946 (n + 2)

end

end A225949.P3344285955665896045

/-! ## A225949.P13061700619699748901

`A056203(n+1)%A300291(n+2)²`
-/

namespace A225949.P13061700619699748901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056203 (n + 1)) (A300291 (n + 2) ^ 2)

end

end A225949.P13061700619699748901

/-! ## A225949.P2089318680219278945

`A222946(n+2)%2*A056203(n+1)`
-/

namespace A225949.P2089318680219278945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222946 (n + 2)) 2 * A056203 (n + 1)

end

end A225949.P2089318680219278945

/-! ## A225949.P13154701443498780608

`and(1, A225950(n+2))*A056203(n+1)`
-/

namespace A225949.P13154701443498780608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A225950 (n + 2)) * A056203 (n + 1)

end

end A225949.P13154701443498780608

/-! ## A225949.P1820374584844368185

`A000035(A222946(n+2))*A056203(n+1)`
-/

namespace A225949.P1820374584844368185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A222946 (n + 2)).toNat * A056203 (n + 1)

end

end A225949.P1820374584844368185

/-! ## A225949.P7642111153035498484

`A225952(n+2)+A278712(n+2)/A003057(n+2)`
-/

namespace A225949.P7642111153035498484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225952 (n + 2) : ℚ) + (A278712 (n + 2) : ℚ) / (A003057 (n + 2) : ℚ)

end

end A225949.P7642111153035498484

/-! ## A225949.P17640299013806625375

`A222946(n+2)+A225951(n+2)%A055096(n+2)`
-/

namespace A225949.P17640299013806625375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2) + Int.tmod (A225951 (n + 2)) (A055096 (n + 2))

end

end A225949.P17640299013806625375

/-! ## A225949.P6037714879798778446

`and(A054431(n+1), A056203(n+1))*A056203(n+1)`
-/

namespace A225949.P6037714879798778446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A056203 (n + 1)) * A056203 (n + 1)

end

end A225949.P6037714879798778446

/-!
# A225950: Triangle for odd legs of primitive Pythagorean triangles.

The programs for A225950, the canonical program `A225950.P5976257078115682793` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225950 has offset 2).

The definition of A225950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225950.P2156204419904441517

`A278712(n+2)/(comp[∑[n]]-n)`
-/

namespace A225950.P2156204419904441517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278712 (n + 2) : ℚ) / ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ)

end

end A225950.P2156204419904441517

namespace A225950

/-- `A278712(n+2)/(comp[∑[n]]-n)` -/
def P2156204419904441517.Spec : Prop :=
  ∀ n, P2156204419904441517.a n = (A225950 (n + 2) : ℚ)

end A225950

/-! ## A225950.P8362787448821855889

`A278711(n+2)/(n-comp[∑[n]])²`
-/

namespace A225950.P8362787448821855889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278711 (n + 2) : ℚ) / (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 : ℚ)

end

end A225950.P8362787448821855889

namespace A225950

/-- `A278711(n+2)/(n-comp[∑[n]])²` -/
def P8362787448821855889.Spec : Prop :=
  ∀ n, P8362787448821855889.a n = (A225950 (n + 2) : ℚ)

end A225950

/-! ## A225950.P17133030135468328566

`A120070(n+2)*A249866(n+2)`
-/

namespace A225950.P17133030135468328566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) * A249866 (n + 2)

end

end A225950.P17133030135468328566

namespace A225950

/-- `A120070(n+2)*A249866(n+2)` -/
def P17133030135468328566.Spec : Prop :=
  ∀ n, P17133030135468328566.a n = A225950 (n + 2)

end A225950

/-! ## A225950.P16283925842651356672

`A120072(n+2)*A249866(n+2)`
-/

namespace A225950.P16283925842651356672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120072 (n + 2) * A249866 (n + 2)

end

end A225950.P16283925842651356672

namespace A225950

/-- `A120072(n+2)*A249866(n+2)` -/
def P16283925842651356672.Spec : Prop :=
  ∀ n, P16283925842651356672.a n = A225950 (n + 2)

end A225950

/-! ## A225950.P14194810537538778434

`floor(A278711(n+2)/A140978(n+1))`
-/

namespace A225950.P14194810537538778434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A278711 (n + 2) : ℚ) / (A140978 (n + 1) : ℚ)⌋

end

end A225950.P14194810537538778434

namespace A225950

/-- `floor(A278711(n+2)/A140978(n+1))` -/
def P14194810537538778434.Spec : Prop :=
  ∀ n, P14194810537538778434.a n = A225950 (n + 2)

end A225950

/-! ## A225950.P7484222583300631131

`floor(A278712(n+2)/A003057(n+2))`
-/

namespace A225950.P7484222583300631131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A278712 (n + 2) : ℚ) / (A003057 (n + 2) : ℚ)⌋

end

end A225950.P7484222583300631131

namespace A225950

/-- `floor(A278712(n+2)/A003057(n+2))` -/
def P7484222583300631131.Spec : Prop :=
  ∀ n, P7484222583300631131.a n = A225950 (n + 2)

end A225950

/-! ## A225950.P5976257078115682793

`A222946(n+2)%2*A120070(n+2)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A225950

/-- `A222946(n+2)%2*A120070(n+2)` -/
def P5976257078115682793.Spec : Prop :=
  ∀ n, P5976257078115682793.a n = A225950 (n + 2)

theorem P5976257078115682793.correct : P5976257078115682793.Spec := by
  intro n
  simp only [A225950, Nat.add_sub_cancel]

end A225950

/-! ## A225950.P17490821456629607258

`floor(A278711(n+2)/A003057(n+2)²)`
-/

namespace A225950.P17490821456629607258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A278711 (n + 2) : ℚ) / (A003057 (n + 2) ^ 2 : ℚ)⌋

end

end A225950.P17490821456629607258

namespace A225950

/-- `floor(A278711(n+2)/A003057(n+2)²)` -/
def P17490821456629607258.Spec : Prop :=
  ∀ n, P17490821456629607258.a n = A225950 (n + 2)

end A225950

/-! ## A225950.P1103972268445033133

`A225949(n+2)-A225952(n+2)`
-/

namespace A225950.P1103972268445033133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225949 (n + 2) - A225952 (n + 2)

end

end A225950.P1103972268445033133

namespace A225950

/-- `A225949(n+2)-A225952(n+2)` -/
def P1103972268445033133.Spec : Prop :=
  ∀ n, P1103972268445033133.a n = A225950 (n + 2)

end A225950

/-! ## A225950.P11434378891794468882

`A120070(n+2)%A300291(n+2)`
-/

namespace A225950.P11434378891794468882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120070 (n + 2)) (A300291 (n + 2))

end

end A225950.P11434378891794468882

namespace A225950

/-- `A120070(n+2)%A300291(n+2)` -/
def P11434378891794468882.Spec : Prop :=
  ∀ n, P11434378891794468882.a n = A225950 (n + 2)

end A225950

/-!
# A225951: Triangle for perimeters of primitive Pythagorean triangles.

The programs for A225951, there is no canonical definition to state claims against.
-/

/-! ## A225951.P17030179714995833681

`A225949(n+2)+A222946(n+2)`
-/

namespace A225951.P17030179714995833681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225949 (n + 2) + A222946 (n + 2)

end

end A225951.P17030179714995833681

/-! ## A225951.P5887023694815347040

`2*A001283(n+2)*A249866(n+2)`
-/

namespace A225951.P5887023694815347040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001283 (n + 2) * A249866 (n + 2))

end

end A225951.P5887023694815347040

/-! ## A225951.P17711353056820013376

`2/A004736(n+1)*A278712(n+2)`
-/

namespace A225951.P17711353056820013376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A004736 (n + 1) : ℚ) * (A278712 (n + 2) : ℚ)

end

end A225951.P17711353056820013376

/-! ## A225951.P13757955978021641985

`2/A112543(n+1)*A278712(n+2)`
-/

namespace A225951.P13757955978021641985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A112543 (n + 1) : ℚ) * (A278712 (n + 2) : ℚ)

end

end A225951.P13757955978021641985

/-! ## A225951.P7604206397236853196

`2%A300291(n+2)*A001283(n+2)`
-/

namespace A225951.P7604206397236853196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A300291 (n + 2)) * A001283 (n + 2)

end

end A225951.P7604206397236853196

/-! ## A225951.P6740887447807212585

`A225949(n+2)+A058084(A300291(n+2))`
-/

namespace A225951.P6740887447807212585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225949 (n + 2) + A058084 (A300291 (n + 2)).toNat

end

end A225951.P6740887447807212585

/-! ## A225951.P3456276067761917594

`A005843(A001283(n+2)*A249866(n+2))`
-/

namespace A225951.P3456276067761917594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A001283 (n + 2) * A249866 (n + 2)).toNat

end

end A225951.P3456276067761917594

/-! ## A225951.P10196964307669499657

`A005843(A278712(n+2)/A004736(n+1))`
-/

namespace A225951.P10196964307669499657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A278712 (n + 2) : ℚ) / (A004736 (n + 1) : ℚ))).toNat

end

end A225951.P10196964307669499657

/-! ## A225951.P14789147367752765517

`A005843(A278712(n+2)/(A025581(n)+1))`
-/

namespace A225951.P14789147367752765517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A278712 (n + 2) : ℚ) / (A025581 n + 1 : ℚ))).toNat

end

end A225951.P14789147367752765517

/-! ## A225951.P13305169695157369300

`A005843(A278712(n+2)/A112543(n+1))`
-/

namespace A225951.P13305169695157369300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A278712 (n + 2) : ℚ) / (A112543 (n + 1) : ℚ))).toNat

end

end A225951.P13305169695157369300

/-!
# A225952: Triangle read by rows, giving the even legs of primitive Pythagorean triangles, with zero entries for non-primitive triangles.

The programs for A225952, there is no canonical definition to state claims against.
-/

/-! ## A225952.P7402079286757034589

`A225949(n+2)-A225950(n+2)`
-/

namespace A225952.P7402079286757034589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225949 (n + 2) - A225950 (n + 2)

end

end A225952.P7402079286757034589

/-! ## A225952.P10443156721382837205

`A225949(n+2)-A278712(n+2)/(comp[∑[n]]-n)`
-/

namespace A225952.P10443156721382837205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225949 (n + 2) : ℚ) - (A278712 (n + 2) : ℚ) / ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ)

end

end A225952.P10443156721382837205

/-! ## A225952.P873386434211711299

`A225949(n+2)-A278711(n+2)/(n-comp[∑[n]])²`
-/

namespace A225952.P873386434211711299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225949 (n + 2) : ℚ) - (A278711 (n + 2) : ℚ) / (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 : ℚ)

end

end A225952.P873386434211711299

/-! ## A225952.P16474237885617594711

`A225951(n+2)%A004277(A140978(n+1))`
-/

namespace A225952.P16474237885617594711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225951 (n + 2)) (A004277 (A140978 (n + 1)).toNat)

end

end A225952.P16474237885617594711

/-! ## A225952.P11295316757305943342

`A225950(n+2)+A057105(n+1)*A249866(n+2)`
-/

namespace A225952.P11295316757305943342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225950 (n + 2) + A057105 (n + 1) * A249866 (n + 2)

end

end A225952.P11295316757305943342

/-! ## A225952.P502402286891508851

`A225951(n+2)-(A225950(n+2)+A222946(n+2))`
-/

namespace A225952.P502402286891508851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225951 (n + 2) - (A225950 (n + 2) + A222946 (n + 2))

end

end A225952.P502402286891508851

/-! ## A225952.P9159757540018000770

`(A056203(n+1)-A225950(n+2))*A249866(n+2)`
-/

namespace A225952.P9159757540018000770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056203 (n + 1) - A225950 (n + 2)) * A249866 (n + 2)

end

end A225952.P9159757540018000770

/-! ## A225952.P2820241699925350668

`A225949(n+2)-A120070(n+2)*A249866(n+2)`
-/

namespace A225952.P2820241699925350668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225949 (n + 2) - A120070 (n + 2) * A249866 (n + 2)

end

end A225952.P2820241699925350668

/-! ## A225952.P10656701076268166972

`A225950(n+2)+A057105(n+1)%A300291(n+2)`
-/

namespace A225952.P10656701076268166972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225950 (n + 2) + Int.tmod (A057105 (n + 1)) (A300291 (n + 2))

end

end A225952.P10656701076268166972

/-! ## A225952.P3481433430070066454

`(A225951(n+2)-A225950(n+2))%A055096(n+2)`
-/

namespace A225952.P3481433430070066454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225951 (n + 2) - A225950 (n + 2)) (A055096 (n + 2))

end

end A225952.P3481433430070066454

/-!
# A225954: A primitive sequence of order n = 2 generated by f(x) = x^2 - (4*x + 13) over Z/(3*5) (see below).

The programs for A225954, the canonical program `A225954.P13746598503051587470` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225954 has offset 0).

The definition of A225954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225954.P13746598503051587470

`Δ[A158525(n+11)]%15`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A225954

/-- `Δ[A158525(n+11)]%15` -/
def P13746598503051587470.Spec : Prop :=
  ∀ n, P13746598503051587470.a n = A225954 n

theorem P13746598503051587470.correct : P13746598503051587470.Spec := by
  intro n
  simp only [A225954]

end A225954

/-!
# A225955: Numbers n such that (15^n - 2^n)/13 is prime.

The programs for A225955, there is no canonical definition to state claims against.
-/

/-! ## A225955.P12533379778351795555

`A377544(A001317(n))`
-/

namespace A225955.P12533379778351795555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377544 (A001317 n).toNat

end

end A225955.P12533379778351795555

/-!
# A225958: O.g.f.: exp( Sum_{n>=1} (sigma(2*n^3) - sigma(n^3)) * x^n/n ).

The programs for A225958, there is no canonical definition to state claims against.
-/

/-! ## A225958.P9939526676042050114

`A004074(A004663(n)*A311932(n))`
-/

namespace A225958.P9939526676042050114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (A004663 n * A311932 n).toNat

end

end A225958.P9939526676042050114

/-! ## A225958.P14268401225416421841

`A122986(A125654(n+1))+A002905(n)`
-/

namespace A225958.P14268401225416421841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122986 (A125654 (n + 1)).toNat + A002905 n

end

end A225958.P14268401225416421841

/-!
# A225959: a(n) = sigma(2*n^3) - sigma(n^3).

The programs for A225959, the canonical program `A225959.P1080982604390908792` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225959 has offset 1).

The definition of A225959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225959.P1080982604390908792

`A054785((n+1)^3)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A225959

/-- `A054785((n+1)^3)` -/
def P1080982604390908792.Spec : Prop :=
  ∀ n, P1080982604390908792.a n = A225959 (n + 1)

theorem P1080982604390908792.correct : P1080982604390908792.Spec := by
  intro n
  simp only [A225959, Nat.add_sub_cancel]

end A225959

/-! ## A225959.P15879821403330277779

`A175926((n+1)/2^val(n+1, 2))+A175926(n+1)`
-/

namespace A225959.P15879821403330277779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat + A175926 (n + 1)

end

end A225959.P15879821403330277779

namespace A225959

/-- `A175926((n+1)/2^val(n+1, 2))+A175926(n+1)` -/
def P15879821403330277779.Spec : Prop :=
  ∀ n, P15879821403330277779.a n = A225959 (n + 1)

end A225959

/-! ## A225959.P10983135959915471968

`A175926(A000265(n+1))+A175926(n+1)`
-/

namespace A225959.P10983135959915471968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175926 (A000265 (n + 1)).toNat + A175926 (n + 1)

end

end A225959.P10983135959915471968

namespace A225959

/-- `A175926(A000265(n+1))+A175926(n+1)` -/
def P10983135959915471968.Spec : Prop :=
  ∀ n, P10983135959915471968.a n = A225959 (n + 1)

end A225959

/-! ## A225959.P16905493152145938382

`A175926(n+1)+A175926(n+1)/A175926(A006519(n+1))`
-/

namespace A225959.P16905493152145938382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175926 (n + 1) : ℚ) + (A175926 (n + 1) : ℚ) / (A175926 (A006519 (n + 1)).toNat : ℚ)

end

end A225959.P16905493152145938382

namespace A225959

/-- `A175926(n+1)+A175926(n+1)/A175926(A006519(n+1))` -/
def P16905493152145938382.Spec : Prop :=
  ∀ n, P16905493152145938382.a n = (A225959 (n + 1) : ℚ)

end A225959

/-! ## A225959.P3852194841002149969

`A175926(A028234(2*(n+1)))+A175926(n+1)`
-/

namespace A225959.P3852194841002149969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175926 (A028234 (2 * (n + 1))).toNat + A175926 (n + 1)

end

end A225959.P3852194841002149969

namespace A225959

/-- `A175926(A028234(2*(n+1)))+A175926(n+1)` -/
def P3852194841002149969.Spec : Prop :=
  ∀ n, P3852194841002149969.a n = A225959 (n + 1)

end A225959

/-! ## A225959.P9617199609403059623

`A175926(n+1)+gcd(A175926(2*(n+1)), A175926(n+1))`
-/

namespace A225959.P9617199609403059623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175926 (n + 1) + (Int.gcd (A175926 (2 * (n + 1))) (A175926 (n + 1)) : ℤ)

end

end A225959.P9617199609403059623

namespace A225959

/-- `A175926(n+1)+gcd(A175926(2*(n+1)), A175926(n+1))` -/
def P9617199609403059623.Spec : Prop :=
  ∀ n, P9617199609403059623.a n = A225959 (n + 1)

end A225959

/-! ## A225959.P11339455521978513305

`∑{d}[(n+1)^3, lcm(2, #)]`
-/

namespace A225959.P11339455521978513305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.lcm 2 d

end

end A225959.P11339455521978513305

namespace A225959

/-- `∑{d}[(n+1)^3, lcm(2, #)]` -/
def P11339455521978513305.Spec : Prop :=
  ∀ n, (P11339455521978513305.a n : ℤ) = A225959 (n + 1)

end A225959

/-!
# A225960: Number of permutations of [n] having exactly one strong fixed block.

The programs for A225960, there is no canonical definition to state claims against.
-/

/-! ## A225960.P10750229698439431062

`∑[A145878(∑[n]+1)]`
-/

namespace A225960.P10750229698439431062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145878 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225960.P10750229698439431062

/-! ## A225960.P5347936676098990221

`A186373(∑[ceil((n+2)/3)])`
-/

namespace A225960.P5347936676098990221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186373 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225960.P5347936676098990221

/-! ## A225960.P11023662130807972872

`A186373(A186380(n+1))%A002006(n)`
-/

namespace A225960.P11023662130807972872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186373 (A186380 (n + 1)).toNat) (A002006 n)

end

end A225960.P11023662130807972872

/-!
# A225963: Number of permutations of [n] having exactly 2 strong fixed blocks.

The programs for A225963, there is no canonical definition to state claims against.
-/

/-! ## A225963.P12197474613484003075

`A186373(lt[A200251(3*n+2), A000217(n)])`
-/

namespace A225963.P12197474613484003075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186373 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225963.P12197474613484003075

/-! ## A225963.P780426866599011378

`A186373(lt[A316648(3*n+1), A238479(n+1)])`
-/

namespace A225963.P780426866599011378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186373 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225963.P780426866599011378

/-! ## A225963.P8497358580503618273

`A186373(lt[A266935(3*n+2), floor((n+1)/ϕ)])`
-/

namespace A225963.P8497358580503618273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186373 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225963.P8497358580503618273

/-! ## A225963.P13014892123938026613

`A186373(lt[A327116(3*n+1), A241512(n)])`
-/

namespace A225963.P13014892123938026613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327116 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186373 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225963.P13014892123938026613

/-! ## A225963.P7206521354486124392

`A186373(lt[A327116(3*n+1), A338915(n)])`
-/

namespace A225963.P7206521354486124392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327116 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186373 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225963.P7206521354486124392

/-!
# A225964: Number of permutations of [n] having exactly 3 strong fixed blocks.

The programs for A225964, there is no canonical definition to state claims against.
-/

/-! ## A225964.P16723445763230116179

`xor(A067251(A001906(2*n+1)), A333766(n))`
-/

namespace A225964.P16723445763230116179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A067251 (A001906 (2 * n + 1)).toNat) (A333766 n)

end

end A225964.P16723445763230116179

/-!
# A225972: The number of binary pattern classes in the (2,n)-rectangular grid with 3 '1's and (2n-3) '0's: two patterns are in same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A225972, the canonical program `A225972.P12077912823201308333` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225972 has offset 0).

The definition of A225972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225972.P12077912823201308333

`(n-1)*(4*n²-2*n-3*(-1)^n+3)/12`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225972

/-- `(n-1)*(4*n²-2*n-3*(-1)^n+3)/12` -/
def P12077912823201308333.Spec : Prop :=
  ∀ n, P12077912823201308333.a n = (A225972 n : ℚ)

end A225972

/-! ## A225972.P14705859861250839996

`A212685(n)-floor(n/2)²`
-/

namespace A225972.P14705859861250839996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212685 n - ⌊(n : ℚ) / 2⌋ ^ 2

end

end A225972.P14705859861250839996

namespace A225972

/-- `A212685(n)-floor(n/2)²` -/
def P14705859861250839996.Spec : Prop :=
  ∀ n, P14705859861250839996.a n = A225972 n

end A225972

/-! ## A225972.P8979070849136572132

`A109620(n)+A053439(n)`
-/

namespace A225972.P8979070849136572132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109620 n + A053439 n

end

end A225972.P8979070849136572132

namespace A225972

/-- `A109620(n)+A053439(n)` -/
def P8979070849136572132.Spec : Prop :=
  ∀ n, P8979070849136572132.a n = A225972 n

end A225972

/-! ## A225972.P13602803428989422988

`A033547(n)-A266287(n)`
-/

namespace A225972.P13602803428989422988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 n - A266287 n

end

end A225972.P13602803428989422988

namespace A225972

/-- `A033547(n)-A266287(n)` -/
def P13602803428989422988.Spec : Prop :=
  ∀ n, P13602803428989422988.a n = A225972 n

end A225972

/-! ## A225972.P6570298470697514359

`A168582(n)-A158416(n)`
-/

namespace A225972.P6570298470697514359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168582 n - A158416 n

end

end A225972.P6570298470697514359

namespace A225972

/-- `A168582(n)-A158416(n)` -/
def P6570298470697514359.Spec : Prop :=
  ∀ n, P6570298470697514359.a n = A225972 n

end A225972

/-! ## A225972.P17722219644413003904

`A029578(n)+∑[A137932(n)]`
-/

namespace A225972.P17722219644413003904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225972.P17722219644413003904

namespace A225972

/-- `A029578(n)+∑[A137932(n)]` -/
def P17722219644413003904.Spec : Prop :=
  ∀ n, P17722219644413003904.a n = A225972 n

end A225972

/-! ## A225972.P17468122649855113469

`A006527(n)-A031878(n+1)`
-/

namespace A225972.P17468122649855113469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n - A031878 (n + 1)

end

end A225972.P17468122649855113469

namespace A225972

/-- `A006527(n)-A031878(n+1)` -/
def P17468122649855113469.Spec : Prop :=
  ∀ n, P17468122649855113469.a n = A225972 n

end A225972

/-! ## A225972.P2208227237142957047

`A289179(n+1)-A014848(n)`
-/

namespace A225972.P2208227237142957047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289179 (n + 1) - A014848 n

end

end A225972.P2208227237142957047

namespace A225972

/-- `A289179(n+1)-A014848(n)` -/
def P2208227237142957047.Spec : Prop :=
  ∀ n, P2208227237142957047.a n = A225972 n

end A225972

/-! ## A225972.P14687117237961972216

`A168582(n)-(A142150(n)+1)`
-/

namespace A225972.P14687117237961972216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168582 n - (A142150 n + 1)

end

end A225972.P14687117237961972216

namespace A225972

/-- `A168582(n)-(A142150(n)+1)` -/
def P14687117237961972216.Spec : Prop :=
  ∀ n, P14687117237961972216.a n = A225972 n

end A225972

/-! ## A225972.P6021702619823802389

`A006527(n)-(A142150(n)+A000982(n))`
-/

namespace A225972.P6021702619823802389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n - (A142150 n + A000982 n)

end

end A225972.P6021702619823802389

namespace A225972

/-- `A006527(n)-(A142150(n)+A000982(n))` -/
def P6021702619823802389.Spec : Prop :=
  ∀ n, P6021702619823802389.a n = A225972 n

end A225972

/-! ## A225972.P8285108058917868777

`A212959(n)+A212969(n)-A128624(n+1)`
-/

namespace A225972.P8285108058917868777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 n + (A212969 n - A128624 (n + 1))

end

end A225972.P8285108058917868777

namespace A225972

/-- `A212959(n)+A212969(n)-A128624(n+1)` -/
def P8285108058917868777.Spec : Prop :=
  ∀ n, P8285108058917868777.a n = A225972 n

end A225972

/-! ## A225972.P3659905360126995963

`∑[A002522(n)]-(A029578(n+1)+A002522(n))`
-/

namespace A225972.P3659905360126995963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A029578 (n + 1) + A002522 n)

end

end A225972.P3659905360126995963

namespace A225972

/-- `∑[A002522(n)]-(A029578(n+1)+A002522(n))` -/
def P3659905360126995963.Spec : Prop :=
  ∀ n, P3659905360126995963.a n = A225972 n

end A225972

/-! ## A225972.P4603055618968393880

`A081490(n+1)-A029579(n+1)`
-/

namespace A225972.P4603055618968393880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081490 (n + 1) - A029579 (n + 1)

end

end A225972.P4603055618968393880

namespace A225972

/-- `A081490(n+1)-A029579(n+1)` -/
def P4603055618968393880.Spec : Prop :=
  ∀ n, P4603055618968393880.a n = A225972 n

end A225972

/-! ## A225972.P2732438502786145336

`A032801(2*n+1)-A130507(2*n+1)`
-/

namespace A225972.P2732438502786145336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032801 (2 * n + 1) - A130507 (2 * n + 1)

end

end A225972.P2732438502786145336

namespace A225972

/-- `A032801(2*n+1)-A130507(2*n+1)` -/
def P2732438502786145336.Spec : Prop :=
  ∀ n, P2732438502786145336.a n = A225972 n

end A225972

/-! ## A225972.P3221133211871013999

`A081490(n+1)-A008619(A114752(n+1))`
-/

namespace A225972.P3221133211871013999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081490 (n + 1) - A008619 (A114752 (n + 1)).toNat

end

end A225972.P3221133211871013999

namespace A225972

/-- `A081490(n+1)-A008619(A114752(n+1))` -/
def P3221133211871013999.Spec : Prop :=
  ∀ n, P3221133211871013999.a n = A225972 n

end A225972

/-! ## A225972.P4736948944079660614

`A008217(2*n+1)+A032801(2*n+1)-A008217(2*n)`
-/

namespace A225972.P4736948944079660614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (2 * n + 1) + (A032801 (2 * n + 1) - A008217 (2 * n))

end

end A225972.P4736948944079660614

namespace A225972

/-- `A008217(2*n+1)+A032801(2*n+1)-A008217(2*n)` -/
def P4736948944079660614.Spec : Prop :=
  ∀ n, P4736948944079660614.a n = A225972 n

end A225972

/-! ## A225972.P408674162818281101

`A053186(A008217(2*n+1))+A032801(2*n+1)`
-/

namespace A225972.P408674162818281101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A008217 (2 * n + 1)).toNat + A032801 (2 * n + 1)

end

end A225972.P408674162818281101

namespace A225972

/-- `A053186(A008217(2*n+1))+A032801(2*n+1)` -/
def P408674162818281101.Spec : Prop :=
  ∀ n, P408674162818281101.a n = A225972 n

end A225972

/-! ## A225972.P15391098024310224266

`A006463(ceil(n²/2))`
-/

namespace A225972.P15391098024310224266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 ⌈(n ^ 2 : ℚ) / 2⌉.toNat

end

end A225972.P15391098024310224266

namespace A225972

/-- `A006463(ceil(n²/2))` -/
def P15391098024310224266.Spec : Prop :=
  ∀ n, P15391098024310224266.a n = A225972 n

end A225972

/-! ## A225972.P7872244912105886534

`A248011(∑[n]+2)`
-/

namespace A225972.P7872244912105886534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248011 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A225972.P7872244912105886534

namespace A225972

/-- `A248011(∑[n]+2)` -/
def P7872244912105886534.Spec : Prop :=
  ∀ n, P7872244912105886534.a n = A225972 n

end A225972

/-!
# A225973: Number of union-closed partitions of weight n.

The programs for A225973, there is no canonical definition to state claims against.
-/

/-! ## A225973.P6457487768478896115

`A000607(2*n)-A257594(n)`
-/

namespace A225973.P6457487768478896115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (2 * n) - A257594 n

end

end A225973.P6457487768478896115

/-! ## A225973.P9557308002973429307

`∑[A033183(A048134(A055646(n)))]`
-/

namespace A225973.P9557308002973429307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A048134 (A055646 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225973.P9557308002973429307

/-! ## A225973.P2853669558458619177

`∑[A033183(A048134(n))]%A057280(2*n+3)`
-/

namespace A225973.P2853669558458619177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A048134 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A057280 (2 * n + 3))

end

end A225973.P2853669558458619177

/-! ## A225973.P15176896397981887975

`A000196(A000196(A011782(n))*A039853(n+1))`
-/

namespace A225973.P15176896397981887975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000196 (A011782 n).toNat * A039853 (n + 1)).toNat

end

end A225973.P15176896397981887975

/-! ## A225973.P12196025700624198422

`A123731(A301756(n+1))`
-/

namespace A225973.P12196025700624198422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (A301756 (n + 1)).toNat

end

end A225973.P12196025700624198422

/-!
# A225975: Square root of A226008(n).

The programs for A225975, the canonical program `A225975.P14240903064831222647` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225975 has offset 0).

The definition of A225975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225975.P2587144254065701535

`2*n/gcd(8, n+4)`
-/

namespace A225975.P2587144254065701535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (Nat.gcd 8 (n + 4) : ℚ))

end

end A225975.P2587144254065701535

namespace A225975

/-- `2*n/gcd(8, n+4)` -/
def P2587144254065701535.Spec : Prop :=
  ∀ n, P2587144254065701535.a n = (A225975 n : ℚ)

end A225975

/-! ## A225975.P9444970264155970693

`2*n/gcd(2*n, n-4)`
-/

namespace A225975.P9444970264155970693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Int.gcd (2 * n : ℤ) ((n : ℤ) - 4) : ℚ)

end

end A225975.P9444970264155970693

namespace A225975

/-- `2*n/gcd(2*n, n-4)` -/
def P9444970264155970693.Spec : Prop :=
  ∀ n, P9444970264155970693.a n = (A225975 n : ℚ)

end A225975

/-! ## A225975.P11642214708593130537

`lcm(n+4, 2*n)/(n+4)`
-/

namespace A225975.P11642214708593130537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 4) (2 * n) : ℚ) / (n + 4 : ℚ)

end

end A225975.P11642214708593130537

namespace A225975

/-- `lcm(n+4, 2*n)/(n+4)` -/
def P11642214708593130537.Spec : Prop :=
  ∀ n, P11642214708593130537.a n = (A225975 n : ℚ)

end A225975

/-! ## A225975.P13956513457954842080

`sqrt(floor((lcm(2, n)/gcd(n, ∑[n+2]))²))`
-/

namespace A225975.P13956513457954842080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (⌊((Nat.lcm 2 n : ℚ) / (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)) ^ 2⌋ : ℝ)

end

end A225975.P13956513457954842080

namespace A225975

/-- `sqrt(floor((lcm(2, n)/gcd(n, ∑[n+2]))²))` -/
def P13956513457954842080.Spec : Prop :=
  ∀ n, P13956513457954842080.a n = (A225975 n : ℝ)

end A225975

/-! ## A225975.P6740677071330696249

`sqrt(A226008(n))`
-/

namespace A225975.P6740677071330696249
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A226008 n : ℝ)

end

end A225975.P6740677071330696249

namespace A225975

/-- `sqrt(A226008(n))` -/
def P6740677071330696249.Spec : Prop :=
  ∀ n, P6740677071330696249.a n = (A225975 n : ℝ)

end A225975

/-! ## A225975.P5041338038639698

`2*n/A109011(A004453(n))`
-/

namespace A225975.P5041338038639698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (A109011 (A004453 n).toNat : ℚ))

end

end A225975.P5041338038639698

namespace A225975

/-- `2*n/A109011(A004453(n))` -/
def P5041338038639698.Spec : Prop :=
  ∀ n, P5041338038639698.a n = (A225975 n : ℚ)

end A225975

/-! ## A225975.P14167741043187778015

`A005843(n)/A109011(A004453(n))`
-/

namespace A225975.P14167741043187778015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A109011 (A004453 n).toNat : ℚ)

end

end A225975.P14167741043187778015

namespace A225975

/-- `A005843(n)/A109011(A004453(n))` -/
def P14167741043187778015.Spec : Prop :=
  ∀ n, P14167741043187778015.a n = (A225975 n : ℚ)

end A225975

/-! ## A225975.P14240903064831222647

`gcd(A109043(n), A227316(A026741(n)))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A225975

/-- `gcd(A109043(n), A227316(A026741(n)))` -/
def P14240903064831222647.Spec : Prop :=
  ∀ n, (P14240903064831222647.a n : ℤ) = A225975 n

theorem P14240903064831222647.correct : P14240903064831222647.Spec := by
  intro n
  simp only [A225975]

end A225975

/-! ## A225975.P5353212488939886187

`A022998(A255347(n))-A038608(n)`
-/

namespace A225975.P5353212488939886187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A255347 n).toNat - A038608 n

end

end A225975.P5353212488939886187

namespace A225975

/-- `A022998(A255347(n))-A038608(n)` -/
def P5353212488939886187.Spec : Prop :=
  ∀ n, P5353212488939886187.a n = A225975 n

end A225975

/-! ## A225975.P17667740269684934319

`A106609(2*A227107(n))`
-/

namespace A225975.P17667740269684934319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (2 * A227107 n).toNat

end

end A225975.P17667740269684934319

namespace A225975

/-- `A106609(2*A227107(n))` -/
def P17667740269684934319.Spec : Prop :=
  ∀ n, P17667740269684934319.a n = A225975 n

end A225975

/-! ## A225975.P18167175692210270579

`A106609(A227107(A227107(n)))`
-/

namespace A225975.P18167175692210270579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A227107 (A227107 n).toNat).toNat

end

end A225975.P18167175692210270579

namespace A225975

/-- `A106609(A227107(A227107(n)))` -/
def P18167175692210270579.Spec : Prop :=
  ∀ n, P18167175692210270579.a n = A225975 n

end A225975

/-! ## A225975.P4786326510044947463

`A051724(A227107(3*n))`
-/

namespace A225975.P4786326510044947463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A227107 (3 * n)).toNat

end

end A225975.P4786326510044947463

namespace A225975

/-- `A051724(A227107(3*n))` -/
def P4786326510044947463.Spec : Prop :=
  ∀ n, P4786326510044947463.a n = A225975 n

end A225975

/-!
# A225976: Number of n X 2 binary arrays whose sum with another n X 2 binary array containing no more than two 1s has rows and columns in lexicographically nondecreasing order.

The programs for A225976, there is no canonical definition to state claims against.
-/

/-! ## A225976.P345998237686749214

`A225982(∑[n+1]+2)`
-/

namespace A225976.P345998237686749214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A225976.P345998237686749214

/-! ## A225976.P4890522596713873765

`record[A225982(A008795(n)+2)]`
-/

namespace A225976.P4890522596713873765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225976.P4890522596713873765

/-! ## A225976.P15889790970630235902

`record[A225982(A286158(n+1)+2)]`
-/

namespace A225976.P15889790970630235902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A286158 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225976.P15889790970630235902

/-! ## A225976.P1175846979414058836

`or(char[1], A225982(A000217(n+1)+2))`
-/

namespace A225976.P1175846979414058836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A225982 (A000217 (n + 1) + 2).toNat)

end

end A225976.P1175846979414058836

/-! ## A225976.P4400847713308419687

`record[A225982(Δ[A003453(n+5)])]`
-/

namespace A225976.P4400847713308419687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225976.P4400847713308419687

/-!
# A225977: Number of n X 3 binary arrays whose sum with another n X 3 binary array containing no more than two 1s has rows and columns in lexicographically nondecreasing order.

The programs for A225977, there is no canonical definition to state claims against.
-/

/-! ## A225977.P1160180342548630649

`A225982(∑[n+2]+4)`
-/

namespace A225977.P1160180342548630649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A225977.P1160180342548630649

/-! ## A225977.P5540134586483720949

`A225982(A167614(n+1))+char[14]`
-/

namespace A225977.P5540134586483720949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A225977.P5540134586483720949

/-! ## A225977.P1014153069459559622

`A295884(n+1)+A225982(A167614(n+1))`
-/

namespace A225977.P1014153069459559622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (n + 1) + A225982 (A167614 (n + 1)).toNat

end

end A225977.P1014153069459559622

/-! ## A225977.P5080721262853466275

`A225982(A167614(n+1))%A155599(n+3)`
-/

namespace A225977.P5080721262853466275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225982 (A167614 (n + 1)).toNat) (A155599 (n + 3))

end

end A225977.P5080721262853466275

/-! ## A225977.P16914854610414647203

`A225982(A167614(n+1))/Δ[A322554(n+2)]`
-/

namespace A225977.P16914854610414647203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225982 (A167614 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A225977.P16914854610414647203

/-!
# A225978: Number of nX4 binary arrays whose sum with another nX4 binary array containing no more than two 1s has rows and columns in lexicographically nondecreasing order.

The programs for A225978, there is no canonical definition to state claims against.
-/

/-! ## A225978.P7497444124961012878

`A225982(A141214(n)+7)`
-/

namespace A225978.P7497444124961012878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A141214 n + 7).toNat

end

end A225978.P7497444124961012878

/-! ## A225978.P8812543206723481467

`A225982(A052905(n)+9)`
-/

namespace A225978.P8812543206723481467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A052905 n + 9).toNat

end

end A225978.P8812543206723481467

/-! ## A225978.P10293575241680254564

`A225982(A055999(n)+10)`
-/

namespace A225978.P10293575241680254564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A055999 n + 10).toNat

end

end A225978.P10293575241680254564

/-! ## A225978.P7547016217688017686

`A225982(eq[5, A066657(n)])`
-/

namespace A225978.P7547016217688017686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225978.P7547016217688017686

/-! ## A225978.P11984472330818455443

`A225982(Δ[A005286(n)]+5)`
-/

namespace A225978.P11984472330818455443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (f1 (n + 1) - f1 n + 5).toNat

end

end A225978.P11984472330818455443

/-!
# A225979: Number of nX5 binary arrays whose sum with another nX5 binary array containing no more than two 1s has rows and columns in lexicographically nondecreasing order.

The programs for A225979, there is no canonical definition to state claims against.
-/

/-! ## A225979.P10900409694972729839

`A225982(A077169(n+5))`
-/

namespace A225979.P10900409694972729839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A077169 (n + 5)).toNat

end

end A225979.P10900409694972729839

/-! ## A225979.P11791788396339058413

`A225982(A155212(n)+13)`
-/

namespace A225979.P11791788396339058413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A155212 n + 13).toNat

end

end A225979.P11791788396339058413

/-! ## A225979.P1067267442310351934

`A225982(A056000(n)+15)`
-/

namespace A225979.P1067267442310351934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A056000 n + 15).toNat

end

end A225979.P1067267442310351934

/-! ## A225979.P7939067192397552193

`A225982(eq[7, A066657(n)])`
-/

namespace A225979.P7939067192397552193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225979.P7939067192397552193

/-! ## A225979.P6755576795994480821

`A225982(A167614(n+3)+2)`
-/

namespace A225979.P6755576795994480821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A167614 (n + 3) + 2).toNat

end

end A225979.P6755576795994480821

/-!
# A225980: Number of nX6 binary arrays whose sum with another nX6 binary array containing no more than two 1s has rows and columns in lexicographically nondecreasing order.

The programs for A225980, there is no canonical definition to state claims against.
-/

/-! ## A225980.P11257426374825963987

`A225982(A166136(n+4))`
-/

namespace A225980.P11257426374825963987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A166136 (n + 4)).toNat

end

end A225980.P11257426374825963987

/-! ## A225980.P5387836380187233236

`A225982(A056115(n)+21)`
-/

namespace A225980.P5387836380187233236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A056115 n + 21).toNat

end

end A225980.P5387836380187233236

/-! ## A225980.P2109793245366069012

`A225982(A167614(n+4)+3)`
-/

namespace A225980.P2109793245366069012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A167614 (n + 4) + 3).toNat

end

end A225980.P2109793245366069012

/-! ## A225980.P2147784697171324977

`A225982(A133263(n+5)+4)`
-/

namespace A225980.P2147784697171324977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A133263 (n + 5) + 4).toNat

end

end A225980.P2147784697171324977

/-! ## A225980.P2864515285647066666

`A225982(A000124(n+5)+5)`
-/

namespace A225980.P2864515285647066666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A000124 (n + 5) + 5).toNat

end

end A225980.P2864515285647066666

/-!
# A225981: Number of nX7 binary arrays whose sum with another nX7 binary array containing no more than two 1s has rows and columns in lexicographically nondecreasing order.

The programs for A225981, there is no canonical definition to state claims against.
-/

/-! ## A225981.P16695751235232406485

`A225982(eq[11, A066657(n)])`
-/

namespace A225981.P16695751235232406485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225981.P16695751235232406485

/-! ## A225981.P12954470686510543488

`A225982(A166136(n+5)+1)`
-/

namespace A225981.P12954470686510543488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A166136 (n + 5) + 1).toNat

end

end A225981.P12954470686510543488

/-! ## A225981.P3822626495858361940

`A225982(A167499(n+5)+2)`
-/

namespace A225981.P3822626495858361940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A167499 (n + 5) + 2).toNat

end

end A225981.P3822626495858361940

/-! ## A225981.P10322049083909242824

`A225982(A167614(n+5)+4)`
-/

namespace A225981.P10322049083909242824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A167614 (n + 5) + 4).toNat

end

end A225981.P10322049083909242824

/-! ## A225981.P15279583916411357868

`A225982(A155212(n+2)+15)`
-/

namespace A225981.P15279583916411357868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225982 (A155212 (n + 2) + 15).toNat

end

end A225981.P15279583916411357868

/-!
# A225982: T(n,k)=Number of nXk binary arrays whose sum with another nXk binary array containing no more than two 1s has rows and columns in lexicographically nondecreasing order.

The programs for A225982, there is no canonical definition to state claims against.
-/

/-! ## A225982.P12913158637290973210

`A283282(n+1)-A087773(A152537(n))`
-/

namespace A225982.P12913158637290973210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (n + 1) - A087773 (A152537 n).toNat

end

end A225982.P12913158637290973210

/-! ## A225982.P10782111646868161564

`A283282(n+1)-A336107(A319408(n+1))`
-/

namespace A225982.P10782111646868161564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (n + 1) - A336107 (A319408 (n + 1)).toNat

end

end A225982.P10782111646868161564

/-! ## A225982.P373521074053583883

`A289509(A320402(n+1))%A382150(n+1)`
-/

namespace A225982.P373521074053583883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289509 (A320402 (n + 1)).toNat) (A382150 (n + 1))

end

end A225982.P373521074053583883

/-! ## A225982.P3475582289374452991

`A322554(A134346(n)+1)-A087773(A152537(n))`
-/

namespace A225982.P3475582289374452991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (A134346 n + 1).toNat - A087773 (A152537 n).toNat

end

end A225982.P3475582289374452991

/-! ## A225982.P11183850927493796030

`A079247(A287274(n+1)+1)-A087773(A152537(n))`
-/

namespace A225982.P11183850927493796030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079247 (A287274 (n + 1) + 1).toNat - A087773 (A152537 n).toNat

end

end A225982.P11183850927493796030

/-!
# A225983: Numbers k such that gcd(phi(k), tau(k)) = 1.

The programs for A225983, there is no canonical definition to state claims against.
-/

/-! ## A225983.P15945912992999961151

`record[A000463(n+1)/A009213(A000463(n+1))]`
-/

namespace A225983.P15945912992999961151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000463 (n + 1) : ℚ) / (A009213 (A000463 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225983.P15945912992999961151

/-! ## A225983.P140529080928046174

`eq[1, A009213(n+1)]+1`
-/

namespace A225983.P140529080928046174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225983.P140529080928046174

/-! ## A225983.P5189873200131861757

`A298080(n+1)%A120937(n)`
-/

namespace A225983.P5189873200131861757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298080 (n + 1)) (A120937 n)

end

end A225983.P5189873200131861757

/-! ## A225983.P2400533156686284045

`A298080(n+1)+A000007(A298121(n+4))`
-/

namespace A225983.P2400533156686284045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298080 (n + 1) + A000007 (A298121 (n + 4)).toNat

end

end A225983.P2400533156686284045

/-! ## A225983.P11110049162613898522

`∩[A298080(n+1), A242662(n)]`
-/

namespace A225983.P11110049162613898522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242662 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225983.P11110049162613898522

/-!
# A225984: Linear recurrence sequence with infrequent pseudoprimes, a(n) = -a(n-1) + a(n-2) - a(n-3) + a(n-5), with initial terms (5, -1, 3, -7, 11).

The programs for A225984, the canonical program `A225984.P10893283797276211328` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225984 has offset 0).

The definition of A225984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)+a(n-2)-a(n-3)+a(n-5)` (program `A225984.P10893283797276211328`, by `A225984.P10893283797276211328.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225984.P10893283797276211328

`-a(n-1)+a(n-2)-a(n-3)+a(n-5)` with `a(0)=5, a(1)=-1, a(2)=3, a(3)=-7, a(4)=11`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225984

/-- `-a(n-1)+a(n-2)-a(n-3)+a(n-5)` -/
def P10893283797276211328.Spec : Prop :=
  ∀ n, P10893283797276211328.a n = A225984 n

theorem P10893283797276211328.correct : P10893283797276211328.Spec := by
  intro n
  simp only [A225984]

end A225984

/-!
# A225985: List the positive numbers, remove even digits (including zeros) from each term; sequence = remaining terms.

The programs for A225985, there is no canonical definition to state claims against.
-/

/-! ## A225985.P14952505381791713766

`A093178(∑[A134451(A133552(n))])`
-/

namespace A225985.P14952505381791713766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A133552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225985.P14952505381791713766

/-! ## A225985.P2419191635660139857

`A093178(record[A064097(A006450(n+1))])`
-/

namespace A225985.P2419191635660139857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A006450 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225985.P2419191635660139857

/-! ## A225985.P14021648706219663068

`A093178(lt[A089594(n+4), A139061(n+1)])`
-/

namespace A225985.P14021648706219663068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089594 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225985.P14021648706219663068

/-! ## A225985.P13445532427944279691

`A263646(A132087(n+1))`
-/

namespace A225985.P13445532427944279691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263646 (A132087 (n + 1)).toNat

end

end A225985.P13445532427944279691

/-!
# A225986: Number of pairs of orthogonal (-x,y) vectors of length 1*(x+y), where x/y is the n-th rational <= 1, ordered first by y and then x, e.g. 1/1, 1/2, 1/3, 2/3, 1/4, 3/4 ...

The programs for A225986, there is no canonical definition to state claims against.
-/

/-! ## A225986.P7366164201617611997

`A225987(∑[n+1])`
-/

namespace A225986.P7366164201617611997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225987 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225986.P7366164201617611997

/-! ## A225986.P9659052923238695606

`A225987(A000217(n+1))%A075929(n)`
-/

namespace A225986.P9659052923238695606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225987 (A000217 (n + 1)).toNat) (A075929 n)

end

end A225986.P9659052923238695606

/-! ## A225986.P6779839602107497533

`A164660(n)²*A225987(A000217(n+1))`
-/

namespace A225986.P6779839602107497533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164660 n ^ 2 * A225987 (A000217 (n + 1)).toNat

end

end A225986.P6779839602107497533

/-! ## A225986.P4441476133879198104

`A007318(C(2, n))*A225987(A000217(n+1))`
-/

namespace A225986.P4441476133879198104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A225987 (A000217 (n + 1)).toNat

end

end A225986.P4441476133879198104

/-! ## A225986.P1270715017905038145

`A001222(A341634(n))*A225987(A000217(n+1))`
-/

namespace A225986.P1270715017905038145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A341634 n).toNat * A225987 (A000217 (n + 1)).toNat

end

end A225986.P1270715017905038145

/-!
# A225988: Number of pairs of orthogonal (-1,2) vectors of length 3*n.

The programs for A225988, there is no canonical definition to state claims against.
-/

/-! ## A225988.P10105818711649801314

`A225987(∑[n+1]+2)`
-/

namespace A225988.P10105818711649801314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225987 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A225988.P10105818711649801314

/-!
# A225989: Number of pairs of orthogonal (-1,3) vectors of length 4*n.

The programs for A225989, there is no canonical definition to state claims against.
-/

/-! ## A225989.P1982273830237125510

`A225987(∑[n+2]+4)`
-/

namespace A225989.P1982273830237125510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225987 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A225989.P1982273830237125510

/-! ## A225989.P9007777329958907696

`lcm(2, A225987(A167614(n+1)))`
-/

namespace A225989.P9007777329958907696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A225987 (A167614 (n + 1)).toNat)

end

end A225989.P9007777329958907696

/-! ## A225989.P14328195335885542982

`A225987(A167614(n+1))+A025466(n)`
-/

namespace A225989.P14328195335885542982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225987 (A167614 (n + 1)).toNat + A025466 n

end

end A225989.P14328195335885542982

/-! ## A225989.P14794848931955823078

`A225987(A167614(n+1))%A225990(n+1)`
-/

namespace A225989.P14794848931955823078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225987 (A167614 (n + 1)).toNat) (A225990 (n + 1))

end

end A225989.P14794848931955823078

/-! ## A225989.P133004709945652981

`A225987(A167614(n+1))+char[A225990(2*(n+2))]`
-/

namespace A225989.P133004709945652981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225990 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225987 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A225989.P133004709945652981

/-!
# A225990: Number of pairs of orthogonal (-2,3) vectors of length 5*n.

The programs for A225990, there is no canonical definition to state claims against.
-/

/-! ## A225990.P1752897756330087574

`A225987(A167614(n+2)+1)`
-/

namespace A225990.P1752897756330087574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225987 (A167614 (n + 2) + 1).toNat

end

end A225990.P1752897756330087574

/-! ## A225990.P17995896432204074420

`A225987(A055998(n+1)+7)`
-/

namespace A225990.P17995896432204074420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225987 (A055998 (n + 1) + 7).toNat

end

end A225990.P17995896432204074420

/-!
# A225991: Number of pairs of orthogonal (-1,4) vectors of length 5*n.

The programs for A225991, there is no canonical definition to state claims against.
-/

/-! ## A225991.P9040524518478281866

`A225987(A055998(n+2)+8)`
-/

namespace A225991.P9040524518478281866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225987 (A055998 (n + 2) + 8).toNat

end

end A225991.P9040524518478281866

/-!
# A225994: 

The programs for A225994, there is no canonical definition to state claims against.
-/

/-! ## A225994.P4783444943974781225

`A225987(A046691(n+5)+12)`
-/

namespace A225994.P4783444943974781225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225987 (A046691 (n + 5) + 12).toNat

end

end A225994.P4783444943974781225

