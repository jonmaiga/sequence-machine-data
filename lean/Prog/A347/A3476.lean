import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

/-!
# A347600: Irregular table read by rows, T(n, k) is the rank of the k-th Seidel permutation of {1,...,n}, permutations sorted in lexicographical order.

The programs for A347600, there is no canonical definition to state claims against.
-/

/-! ## A347600.P10218870116977010844

`A261416(A062108(n)*A111191(n+1))`
-/

namespace A347600.P10218870116977010844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261416 (A062108 n * A111191 (n + 1)).toNat

end

end A347600.P10218870116977010844

/-!
# A347601: a(n) is the number of positive Euler permutations of order n.

The programs for A347601, there is no canonical definition to state claims against.
-/

/-! ## A347601.P3863919993251518635

`A347602(n)+A347598(n)`
-/

namespace A347601.P3863919993251518635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347602 n + A347598 n

end

end A347601.P3863919993251518635

/-! ## A347601.P9706493920688983194

`A000166(n)-A347602(n)`
-/

namespace A347601.P9706493920688983194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A347602 n

end

end A347601.P9706493920688983194

/-! ## A347601.P9854757438945577122

`abs(A182386(n))-A347602(n)`
-/

namespace A347601.P9854757438945577122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| - A347602 n

end

end A347601.P9854757438945577122

/-! ## A347601.P14194042916216149768

`A008290(∑[n])-A347602(n)`
-/

namespace A347601.P14194042916216149768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (∑ j ∈ Finset.range (n + 1), f1 j) - A347602 n

end

end A347601.P14194042916216149768

/-! ## A347601.P9591963785065192911

`A068106(∑[n])-A347602(n)`
-/

namespace A347601.P9591963785065192911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f1 j) - A347602 n

end

end A347601.P9591963785065192911

/-!
# A347602: a(n) is the number of negative Euler permutations of order n.

The programs for A347602, there is no canonical definition to state claims against.
-/

/-! ## A347602.P15730263964420322767

`∑{#}[n, C(n, #)*(-1)^(n-#)*#!]-A347601(n)`
-/

namespace A347602.P15730263964420322767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.factorial k : ℚ) - (A347601 n : ℚ)

end

end A347602.P15730263964420322767

/-! ## A347602.P1508046882447079402

`A000166(n)-A347601(n)`
-/

namespace A347602.P1508046882447079402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A347601 n

end

end A347602.P1508046882447079402

/-! ## A347602.P12689862212928675486

`A347601(n)-A347598(n)`
-/

namespace A347602.P12689862212928675486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347601 n - A347598 n

end

end A347602.P12689862212928675486

/-! ## A347602.P2722970645768542525

`abs(A182386(n))-A347601(n)`
-/

namespace A347602.P2722970645768542525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| - A347601 n

end

end A347602.P2722970645768542525

/-! ## A347602.P5416151705208354691

`A008290(∑[n])-A347601(n)`
-/

namespace A347602.P5416151705208354691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (∑ j ∈ Finset.range (n + 1), f1 j) - A347601 n

end

end A347602.P5416151705208354691

/-!
# A347604: Number of partitions of n^3 into n or more parts.

The programs for A347604, there is no canonical definition to state claims against.
-/

/-! ## A347604.P5072999602074206039

`A128854(n)+A304176(n)-A238608(n)`
-/

namespace A347604.P5072999602074206039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128854 n + A304176 n - A238608 n

end

end A347604.P5072999602074206039

/-! ## A347604.P7296229093683043232

`A347618(∑[n+3]+n+3)`
-/

namespace A347604.P7296229093683043232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347618 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A347604.P7296229093683043232

/-! ## A347604.P10355669037398831151

`abs(1-A347618(A046691(n+2)))+1`
-/

namespace A347604.P10355669037398831151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A347618 (A046691 (n + 2)).toNat| + 1

end

end A347604.P10355669037398831151

/-!
# A347605: Number of partitions of n^n into n or more parts.

The programs for A347605, there is no canonical definition to state claims against.
-/

/-! ## A347605.P4592864735533541350

`A347607(n)+A347606(n)-A238000(n)`
-/

namespace A347605.P4592864735533541350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347607 n + A347606 n - A238000 n

end

end A347605.P4592864735533541350

/-!
# A347606: Number of partitions of n^n into exactly n parts.

The programs for A347606, there is no canonical definition to state claims against.
-/

/-! ## A347606.P13274719095323260940

`A347617(∑[4*n])`
-/

namespace A347606.P13274719095323260940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347617 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347606.P13274719095323260940

/-!
# A347607: Number of partitions of n^n.

The programs for A347607, there is no canonical definition to state claims against.
-/

/-! ## A347607.P478950193656394617

`A000041(n^n)`
-/

namespace A347607.P478950193656394617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n ^ n)

end

end A347607.P478950193656394617

/-!
# A347609: Number of partitions of n into at most 5 prime parts.

The programs for A347609, there is no canonical definition to state claims against.
-/

/-! ## A347609.P12967904429610560338

`A347578(n)+A259195(n)`
-/

namespace A347609.P12967904429610560338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 n + A259195 n

end

end A347609.P12967904429610560338

/-! ## A347609.P8232545430134759174

`A347578(n)+round(acot(n)*A308854(n))`
-/

namespace A347609.P8232545430134759174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 n + SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) * (A308854 n : ℝ))

end

end A347609.P8232545430134759174

/-! ## A347609.P10170303837277808103

`A347578(n)-A057428(n)*A259195(n)`
-/

namespace A347609.P10170303837277808103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 n - A057428 n * A259195 n

end

end A347609.P10170303837277808103

/-! ## A347609.P12082032024805888983

`A347578(n)+A308854(n)/A028310(n)`
-/

namespace A347609.P12082032024805888983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347578 n : ℚ) + (A308854 n : ℚ) / (A028310 n : ℚ)

end

end A347609.P12082032024805888983

/-! ## A347609.P8438085752729767791

`A347578(n)+A308854(n)/A233583(n+1)`
-/

namespace A347609.P8438085752729767791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347578 n : ℚ) + (A308854 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A347609.P8438085752729767791

/-! ## A347609.P4242606878159857762

`A347578(n)+A308854(n)/A065033(2*n)`
-/

namespace A347609.P4242606878159857762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347578 n : ℚ) + (A308854 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A347609.P4242606878159857762

/-! ## A347609.P4322048728317406882

`A347578(n)+A308854(n)/(A004277(n)-n)`
-/

namespace A347609.P4322048728317406882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347578 n : ℚ) + (A308854 n : ℚ) / (A004277 n - (n : ℤ) : ℚ)

end

end A347609.P4322048728317406882

/-! ## A347609.P2507627093267465550

`A347578(n)+A308854(n)/A000196(A002522(n))`
-/

namespace A347609.P2507627093267465550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347578 n : ℚ) + (A308854 n : ℚ) / (A000196 (A002522 n).toNat : ℚ)

end

end A347609.P2507627093267465550

/-! ## A347609.P7581863388923243491

`A347578(n)+A308854(n)/A008619(A004275(n))`
-/

namespace A347609.P7581863388923243491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347578 n : ℚ) + (A308854 n : ℚ) / (A008619 (A004275 n).toNat : ℚ)

end

end A347609.P7581863388923243491

/-!
# A347610: Number of partitions of n into at most 6 prime parts.

The programs for A347610, there is no canonical definition to state claims against.
-/

/-! ## A347610.P15336025541384695752

`or(char[A062119(n+1)], A145816(n+2))`
-/

namespace A347610.P15336025541384695752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062119 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A145816 (n + 2))

end

end A347610.P15336025541384695752

/-! ## A347610.P216575363100018268

`A000607(n)-A276134(A185036(n))`
-/

namespace A347610.P216575363100018268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - A276134 (A185036 n).toNat

end

end A347610.P216575363100018268

/-! ## A347610.P13155052423501395765

`A046676(n)-A276134(A185036(n))`
-/

namespace A347610.P13155052423501395765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - A276134 (A185036 n).toNat

end

end A347610.P13155052423501395765

/-! ## A347610.P14802749553461927088

`A347609(n)+A262257(A002881(n+1))`
-/

namespace A347610.P14802749553461927088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 n + A262257 (A002881 (n + 1)).toNat

end

end A347610.P14802749553461927088

/-! ## A347610.P8841840331998840174

`A000607(n)-A188300(A105200(n+1))`
-/

namespace A347610.P8841840331998840174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - A188300 (A105200 (n + 1)).toNat

end

end A347610.P8841840331998840174

/-!
# A347611: a(n) is the n-th n-factorial number: a(n) = n!_n.

The programs for A347611, there is no canonical definition to state claims against.
-/

/-! ## A347611.P14849589598384237372

`A069777(C(n+n+1, 2)+n)`
-/

namespace A347611.P14849589598384237372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (Nat.choose (n + n + 1) 2 + n)

end

end A347611.P14849589598384237372

/-! ## A347611.P15012900362878891325

`A156540(2*n²)`
-/

namespace A347611.P15012900362878891325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156540 (2 * n ^ 2)

end

end A347611.P15012900362878891325

/-! ## A347611.P12221058262116932491

`A069777(∑[4*n])`
-/

namespace A347611.P12221058262116932491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347611.P12221058262116932491

/-! ## A347611.P710760862593921824

`A043568(n)*A069777(A046092(n))`
-/

namespace A347611.P710760862593921824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n * A069777 (A046092 n).toNat

end

end A347611.P710760862593921824

/-! ## A347611.P9618685385763931214

`A069777(A106232(n+1))+A008683(4*(n+5))`
-/

namespace A347611.P9618685385763931214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (A106232 (n + 1)).toNat + A008683 (4 * (n + 5))

end

end A347611.P9618685385763931214

/-!
# A347612: Semiprimes formed from single-digits primes only, each used at most once.

The programs for A347612, there is no canonical definition to state claims against.
-/

/-! ## A347612.P13424151852590138471

`filter[A124673(n+1), A064911(#)]`
-/

namespace A347612.P13424151852590138471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A347612.P13424151852590138471

/-! ## A347612.P13788478529250502799

`filter[A108632(n+1), A178788(#)]`
-/

namespace A347612.P13788478529250502799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A347612.P13788478529250502799

/-! ## A347612.P14716363309923862136

`filter[A124673(n+1), A353480(#)]`
-/

namespace A347612.P14716363309923862136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A347612.P14716363309923862136

/-! ## A347612.P1905269488657057679

`∩[A001358(n+1), A124673(n+1)]`
-/

namespace A347612.P1905269488657057679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347612.P1905269488657057679

/-! ## A347612.P1217911252898552933

`∩[A029740(n+1), A108632(n+1)]`
-/

namespace A347612.P1217911252898552933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347612.P1217911252898552933

/-!
# A347614: a(n) = Sum_{k=1..n} n^Omega(k).

The programs for A347614, the canonical program `A347614.P11670207612564000745` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347614 has offset 1).

The definition of A347614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347614.P11670207612564000745

`∑{#}[n, (n+1)^A001222(#+1)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A347614

/-- `∑{#}[n, (n+1)^A001222(#+1)]` -/
def P11670207612564000745.Spec : Prop :=
  ∀ n, P11670207612564000745.a n = (A347614 (n + 1) : ℚ)

end A347614

/-! ## A347614.P7746023071005553785

`∑[∑{e}[(n+1)^round(acot(n)+n), n*#]]+1`
-/

namespace A347614.P7746023071005553785
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, n * Nat.factorization (SequenceMachineLib.roundAway (f2 n)).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A347614.P7746023071005553785

namespace A347614

/-- `∑[∑{e}[(n+1)^round(acot(n)+n), n*#]]+1` -/
def P7746023071005553785.Spec : Prop :=
  ∀ n, (P7746023071005553785.a n : ℤ) = A347614 (n + 1)

end A347614

/-! ## A347614.P318147241154095684

`∑[A104583(2*n²)]`
-/

namespace A347614.P318147241154095684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104583 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347614.P318147241154095684

namespace A347614

/-- `∑[A104583(2*n²)]` -/
def P318147241154095684.Spec : Prop :=
  ∀ n, P318147241154095684.a n = A347614 (n + 1)

end A347614

/-!
# A347615: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) is the number of partitions of n^k.

The programs for A347615, there is no canonical definition to state claims against.
-/

/-! ## A347615.P8614445203537942150

`A000041(col(n)^(row(n)-col(n)))`
-/

namespace A347615.P8614445203537942150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((SequenceMachineLib.triCol n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ))).toNat

end

end A347615.P8614445203537942150

/-! ## A347615.P5785777680123917340

`A000041(A004248(n))`
-/

namespace A347615.P5785777680123917340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A004248 n).toNat

end

end A347615.P5785777680123917340

/-! ## A347615.P13813110359289244499

`A000041(A103462(n)-1)`
-/

namespace A347615.P13813110359289244499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A103462 n - 1).toNat

end

end A347615.P13813110359289244499

/-! ## A347615.P16676590427714862171

`A035444(4*A004248(n))`
-/

namespace A347615.P16676590427714862171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * A004248 n).toNat

end

end A347615.P16676590427714862171

/-! ## A347615.P10024984773919131689

`A114099(9*A004248(n))`
-/

namespace A347615.P10024984773919131689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (9 * A004248 n).toNat

end

end A347615.P10024984773919131689

/-! ## A347615.P13160293974729236759

`A000041(A003992(A061579(n)))`
-/

namespace A347615.P13160293974729236759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A003992 (A061579 n).toNat).toNat

end

end A347615.P13160293974729236759

/-! ## A347615.P14272806879542689703

`A000041(A003992(n)-A055651(n))`
-/

namespace A347615.P14272806879542689703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A003992 n - A055651 n).toNat

end

end A347615.P14272806879542689703

/-! ## A347615.P807956910408926832

`A000041(A002262(n)^A025581(n))`
-/

namespace A347615.P807956910408926832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A347615.P807956910408926832

/-! ## A347615.P4012143315617872817

`A000041(A002262(n)^A122200(n))`
-/

namespace A347615.P4012143315617872817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A122200 n : ℤ))).toNat

end

end A347615.P4012143315617872817

/-! ## A347615.P11546686650326843462

`A000041(A298486(n)^A025581(n))`
-/

namespace A347615.P11546686650326843462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((A298486 n : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A347615.P11546686650326843462

/-!
# A347616: a(n) = Sum_{k=1..n} k^Omega(k).

The programs for A347616, the canonical program `A347616.P15670111867370556904` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347616 has offset 1).

The definition of A347616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347616.P17400758052938503803

`∑[(n+1)^∑{e}[n+1, #]]`
-/

namespace A347616.P17400758052938503803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347616.P17400758052938503803

namespace A347616

/-- `∑[(n+1)^∑{e}[n+1, #]]` -/
def P17400758052938503803.Spec : Prop :=
  ∀ n, (P17400758052938503803.a n : ℤ) = A347616 (n + 1)

end A347616

/-! ## A347616.P15670111867370556904

`∑[∏{e}[n+1, (n+1)^#]]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A347616

/-- `∑[∏{e}[n+1, (n+1)^#]]` -/
def P15670111867370556904.Spec : Prop :=
  ∀ n, (P15670111867370556904.a n : ℤ) = A347616 (n + 1)

theorem P15670111867370556904.correct : P15670111867370556904.Spec := by
  intro n
  simp only [A347616, Nat.add_sub_cancel]

end A347616

/-! ## A347616.P10487066580162172180

`∑[(n+1)^∑{p}[n+1, val(n+1, #)]]`
-/

namespace A347616.P10487066580162172180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (n + 1) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347616.P10487066580162172180

namespace A347616

/-- `∑[(n+1)^∑{p}[n+1, val(n+1, #)]]` -/
def P10487066580162172180.Spec : Prop :=
  ∀ n, (P10487066580162172180.a n : ℤ) = A347616 (n + 1)

end A347616

/-! ## A347616.P7008390160930356396

`∑[∏{p}[n+1, (n+1)^val(n+1, #)]]`
-/

namespace A347616.P7008390160930356396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (n + 1) ^ SequenceMachineLib.valuation (n + 1) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347616.P7008390160930356396

namespace A347616

/-- `∑[∏{p}[n+1, (n+1)^val(n+1, #)]]` -/
def P7008390160930356396.Spec : Prop :=
  ∀ n, (P7008390160930356396.a n : ℤ) = A347616 (n + 1)

end A347616

/-! ## A347616.P4390962066630706145

`a(n-1)+(n+1)^∑{e}[n+1, #]` with `a(0)=1`
-/

namespace A347616.P4390962066630706145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A347616.P4390962066630706145

namespace A347616

/-- `a(n-1)+(n+1)^∑{e}[n+1, #]` -/
def P4390962066630706145.Spec : Prop :=
  ∀ n, (P4390962066630706145.a n : ℤ) = A347616 (n + 1)

end A347616

/-! ## A347616.P2421475466828429123

`∏{e}[n+1, (n+1)^#]+a(n-1)` with `a(0)=1`
-/

namespace A347616.P2421475466828429123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), (n + 1) ^ Nat.factorization (f1 n) p + a (n - 1)

end

end A347616.P2421475466828429123

namespace A347616

/-- `∏{e}[n+1, (n+1)^#]+a(n-1)` -/
def P2421475466828429123.Spec : Prop :=
  ∀ n, (P2421475466828429123.a n : ℤ) = A347616 (n + 1)

end A347616

/-! ## A347616.P3437566446683480867

`∑[A176029(n+1)]`
-/

namespace A347616.P3437566446683480867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347616.P3437566446683480867

namespace A347616

/-- `∑[A176029(n+1)]` -/
def P3437566446683480867.Spec : Prop :=
  ∀ n, P3437566446683480867.a n = A347616 (n + 1)

end A347616

/-! ## A347616.P14553704979122583539

`∑[(n+1)^Δ[A022559(n)]]`
-/

namespace A347616.P14553704979122583539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347616.P14553704979122583539

namespace A347616

/-- `∑[(n+1)^Δ[A022559(n)]]` -/
def P14553704979122583539.Spec : Prop :=
  ∀ n, P14553704979122583539.a n = (A347616 (n + 1) : ℚ)

end A347616

/-! ## A347616.P16361805472304572371

`∑[(n+1)*A072195(n+1)]`
-/

namespace A347616.P16361805472304572371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A072195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347616.P16361805472304572371

namespace A347616

/-- `∑[(n+1)*A072195(n+1)]` -/
def P16361805472304572371.Spec : Prop :=
  ∀ n, P16361805472304572371.a n = A347616 (n + 1)

end A347616

/-! ## A347616.P3724996048549369875

`∑[(n+1)^A001222(n+1)]`
-/

namespace A347616.P3724996048549369875
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347616.P3724996048549369875

namespace A347616

/-- `∑[(n+1)^A001222(n+1)]` -/
def P3724996048549369875.Spec : Prop :=
  ∀ n, P3724996048549369875.a n = (A347616 (n + 1) : ℚ)

end A347616

/-! ## A347616.P3838913822372636418

`∑[(n+1)^A086436(n+1)]`
-/

namespace A347616.P3838913822372636418
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A086436 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347616.P3838913822372636418

namespace A347616

/-- `∑[(n+1)^A086436(n+1)]` -/
def P3838913822372636418.Spec : Prop :=
  ∀ n, P3838913822372636418.a n = (A347616 (n + 1) : ℚ)

end A347616

/-! ## A347616.P1994904619150009795

`∑[(n+1)^val(A061142(n+1), 2)]`
-/

namespace A347616.P1994904619150009795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ SequenceMachineLib.valuation (A061142 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347616.P1994904619150009795

namespace A347616

/-- `∑[(n+1)^val(A061142(n+1), 2)]` -/
def P1994904619150009795.Spec : Prop :=
  ∀ n, (P1994904619150009795.a n : ℤ) = A347616 (n + 1)

end A347616

/-! ## A347616.P6378843678095175976

`∑[(n+1)^val(A165825(n+1), 4)]`
-/

namespace A347616.P6378843678095175976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347616.P6378843678095175976

namespace A347616

/-- `∑[(n+1)^val(A165825(n+1), 4)]` -/
def P6378843678095175976.Spec : Prop :=
  ∀ n, (P6378843678095175976.a n : ℤ) = A347616 (n + 1)

end A347616

/-! ## A347616.P10285796254186982370

`∑[(n+1)^(A000005(A068794(n+1))-1)]`
-/

namespace A347616.P10285796254186982370
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000005 (A068794 (n + 1)).toNat - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347616.P10285796254186982370

namespace A347616

/-- `∑[(n+1)^(A000005(A068794(n+1))-1)]` -/
def P10285796254186982370.Spec : Prop :=
  ∀ n, P10285796254186982370.a n = (A347616 (n + 1) : ℚ)

end A347616

/-! ## A347616.P7549248008488271311

`∑[(n+1)^(A046660(n+1)+A001221(n+1))]`
-/

namespace A347616.P7549248008488271311
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A046660 (n + 1) + A001221 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347616.P7549248008488271311

namespace A347616

/-- `∑[(n+1)^(A046660(n+1)+A001221(n+1))]` -/
def P7549248008488271311.Spec : Prop :=
  ∀ n, P7549248008488271311.a n = (A347616 (n + 1) : ℚ)

end A347616

/-! ## A347616.P14096010014949342826

`∑[(n+1)^A347395((n+1)²)]`
-/

namespace A347616.P14096010014949342826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A347395 ((n + 1) ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347616.P14096010014949342826

namespace A347616

/-- `∑[(n+1)^A347395((n+1)²)]` -/
def P14096010014949342826.Spec : Prop :=
  ∀ n, P14096010014949342826.a n = (A347616 (n + 1) : ℚ)

end A347616

/-! ## A347616.P9329435024878144756

`∑[(n+1)^A001221(A086568(n+1))]`
-/

namespace A347616.P9329435024878144756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A001221 (A086568 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347616.P9329435024878144756

namespace A347616

/-- `∑[(n+1)^A001221(A086568(n+1))]` -/
def P9329435024878144756.Spec : Prop :=
  ∀ n, P9329435024878144756.a n = (A347616 (n + 1) : ℚ)

end A347616

/-! ## A347616.P8410876402538722551

`∑[(n+1)^A360616((n+1)²)]`
-/

namespace A347616.P8410876402538722551
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A360616 ((n + 1) ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347616.P8410876402538722551

namespace A347616

/-- `∑[(n+1)^A360616((n+1)²)]` -/
def P8410876402538722551.Spec : Prop :=
  ∀ n, P8410876402538722551.a n = (A347616 (n + 1) : ℚ)

end A347616

/-! ## A347616.P8899242679980945075

`∑[(n+1)^A362412((n+1)²)]`
-/

namespace A347616.P8899242679980945075
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A362412 ((n + 1) ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347616.P8899242679980945075

namespace A347616

/-- `∑[(n+1)^A362412((n+1)²)]` -/
def P8899242679980945075.Spec : Prop :=
  ∀ n, P8899242679980945075.a n = (A347616 (n + 1) : ℚ)

end A347616

/-! ## A347616.P581057966977866239

`∑[(n+1)^A401239((n+1)²)]`
-/

namespace A347616.P581057966977866239
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A401239 ((n + 1) ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347616.P581057966977866239

namespace A347616

/-- `∑[(n+1)^A401239((n+1)²)]` -/
def P581057966977866239.Spec : Prop :=
  ∀ n, P581057966977866239.a n = (A347616 (n + 1) : ℚ)

end A347616

/-!
# A347617: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) is the number of partitions of n^k into exactly n parts.

The programs for A347617, there is no canonical definition to state claims against.
-/

/-! ## A347617.P5122193562433993451

`A238016(n)+A347618(n)-A347615(n)`
-/

namespace A347617.P5122193562433993451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 n + (A347618 n - A347615 n)

end

end A347617.P5122193562433993451

/-! ## A347617.P13108353151814292412

`A347589(A347618(n))%A072154(n)`
-/

namespace A347617.P13108353151814292412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347589 (A347618 n).toNat) (A072154 n)

end

end A347617.P13108353151814292412

/-! ## A347617.P5666392606797637138

`A240328(A003204(n))+A221857(n)`
-/

namespace A347617.P5666392606797637138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A003204 n).toNat + A221857 n

end

end A347617.P5666392606797637138

/-! ## A347617.P16845876749200657854

`A325678(A005136(n)*A273712(n))`
-/

namespace A347617.P16845876749200657854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A005136 n * A273712 n).toNat

end

end A347617.P16845876749200657854

/-! ## A347617.P6499277499996271571

`A292942(A273712(n)%A056935(n))`
-/

namespace A347617.P6499277499996271571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292942 (Int.tmod (A273712 n) (A056935 n)).toNat

end

end A347617.P6499277499996271571

/-!
# A347618: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) is the number of partitions of n^k into n or more parts.

The programs for A347618, there is no canonical definition to state claims against.
-/

/-! ## A347618.P8631203759090209484

`A347615(n)+A347617(n)-A238016(n)`
-/

namespace A347618.P8631203759090209484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347615 n + (A347617 n - A238016 n)

end

end A347618.P8631203759090209484

/-! ## A347618.P16200448148529041797

`A076194(n+1)%A007446(A290353(n))`
-/

namespace A347618.P16200448148529041797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076194 (n + 1)) (A007446 (A290353 n).toNat)

end

end A347618.P16200448148529041797

/-! ## A347618.P15447069281722692794

`A335382(A273712(n))`
-/

namespace A347618.P15447069281722692794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335382 (A273712 n).toNat

end

end A347618.P15447069281722692794

/-! ## A347618.P8814253018339063558

`A095205(A273712(n)²)`
-/

namespace A347618.P8814253018339063558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095205 (A273712 n ^ 2).toNat

end

end A347618.P8814253018339063558

/-! ## A347618.P113993328823331259

`A123580(A273712(n)²)`
-/

namespace A347618.P113993328823331259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A273712 n ^ 2).toNat

end

end A347618.P113993328823331259

/-!
# A347621: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) is the number of partitions of n^k into distinct parts.

The programs for A347621, there is no canonical definition to state claims against.
-/

/-! ## A347621.P5715610811692138351

`A000009(col(n)^(row(n)-col(n)))`
-/

namespace A347621.P5715610811692138351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.roundAway ((SequenceMachineLib.triCol n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ))).toNat

end

end A347621.P5715610811692138351

/-! ## A347621.P1133278709688986590

`A000009(A004248(n))`
-/

namespace A347621.P1133278709688986590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A004248 n).toNat

end

end A347621.P1133278709688986590

/-! ## A347621.P16157368651353208284

`A000009(col(n)^val(A054582(n), 2))`
-/

namespace A347621.P16157368651353208284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.triCol n ^ SequenceMachineLib.valuation (A054582 n).toNat 2)

end

end A347621.P16157368651353208284

/-! ## A347621.P6836387543876957865

`A000009(col(n)^val(A153279(n), 2))`
-/

namespace A347621.P6836387543876957865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.triCol n ^ SequenceMachineLib.valuation (A153279 n).toNat 2)

end

end A347621.P6836387543876957865

/-! ## A347621.P9170958506569694413

`A000009(A003992(n)-A055651(n))`
-/

namespace A347621.P9170958506569694413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A003992 n - A055651 n).toNat

end

end A347621.P9170958506569694413

/-! ## A347621.P10177095469682566022

`A000009(A055652(n)-A003992(n))`
-/

namespace A347621.P10177095469682566022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A055652 n - A003992 n).toNat

end

end A347621.P10177095469682566022

/-! ## A347621.P14187173806412636658

`A000009(A156354(n)-A003992(n))`
-/

namespace A347621.P14187173806412636658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A156354 n - A003992 n).toNat

end

end A347621.P14187173806412636658

/-! ## A347621.P12764047084461605089

`A000009(A059297(n)/A007318(n))`
-/

namespace A347621.P12764047084461605089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.roundAway ((A059297 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A347621.P12764047084461605089

/-! ## A347621.P1633607609649295288

`A000009(A059297(n)/A132749(n))`
-/

namespace A347621.P1633607609649295288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.roundAway ((A059297 n : ℚ) / (A132749 n : ℚ))).toNat

end

end A347621.P1633607609649295288

/-! ## A347621.P11492419886901141200

`A000009(A059297(n)/A135227(n))`
-/

namespace A347621.P11492419886901141200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.roundAway ((A059297 n : ℚ) / (A135227 n : ℚ))).toNat

end

end A347621.P11492419886901141200

/-!
# A347622: Number of partitions of n into at most 2 prime parts (counting 1 as a prime).

The programs for A347622, there is no canonical definition to state claims against.
-/

/-! ## A347622.P8704422690116951698

`A218007(n+1)-A071335(n+1)`
-/

namespace A347622.P8704422690116951698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218007 (n + 1) - A071335 (n + 1)

end

end A347622.P8704422690116951698

/-! ## A347622.P9755315642576476439

`ceil(A347744(char[2]+n)/2)`
-/

namespace A347622.P9755315642576476439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347744 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / 2⌉

end

end A347622.P9755315642576476439

/-! ## A347622.P14565459887268802333

`ceil(or(char[2], A347744(n))/2)`
-/

namespace A347622.P14565459887268802333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A347744 n) : ℚ) / 2⌉

end

end A347622.P14565459887268802333

/-! ## A347622.P10266704722183945746

`A110654(A347744(char[2]+n))`
-/

namespace A347622.P10266704722183945746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A347744 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A347622.P10266704722183945746

/-! ## A347622.P11713044716637321357

`A110654(or(char[2], A347744(n)))`
-/

namespace A347622.P11713044716637321357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A347744 n)).toNat

end

end A347622.P11713044716637321357

/-! ## A347622.P1609202146855850180

`A004526(A347744(char[2]+n)+1)`
-/

namespace A347622.P1609202146855850180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A347744 ((if ∃ j, f1 j = n then 1 else 0) + n) + 1).toNat

end

end A347622.P1609202146855850180

/-! ## A347622.P16204870052752200017

`round(A347744(A014590(n)+n)/2)`
-/

namespace A347622.P16204870052752200017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A347744 (A014590 n + (n : ℤ)).toNat : ℚ) / 2)

end

end A347622.P16204870052752200017

/-! ## A347622.P7755907431035199122

`A008619(A347744(char[2]+n)+1)-1`
-/

namespace A347622.P7755907431035199122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A347744 ((if ∃ j, f1 j = n then 1 else 0) + n) + 1).toNat - 1

end

end A347622.P7755907431035199122

/-! ## A347622.P10894118445240387607

`A062108(A347744(A014590(n)+n))`
-/

namespace A347622.P10894118445240387607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A347744 (A014590 n + (n : ℤ)).toNat).toNat

end

end A347622.P10894118445240387607

/-! ## A347622.P2129984430808875619

`A110654(A347744(n)+Δ[A056811(n+1)])`
-/

namespace A347622.P2129984430808875619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A347744 n + (f1 (n + 1) - f1 n)).toNat

end

end A347622.P2129984430808875619

/-!
# A347623: Number of partitions of n into at most 4 prime parts (counting 1 as a prime).

The programs for A347623, there is no canonical definition to state claims against.
-/

/-! ## A347623.P15415048427379505023

`A347624(n+1)-A347609(n+1)`
-/

namespace A347623.P15415048427379505023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347624 (n + 1) - A347609 (n + 1)

end

end A347623.P15415048427379505023

/-!
# A347624: Number of partitions of n into at most 5 prime parts (counting 1 as a prime).

The programs for A347624, there is no canonical definition to state claims against.
-/

/-! ## A347624.P4781713177844133553

`A347625(n+1)-A347610(n+1)`
-/

namespace A347624.P4781713177844133553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347625 (n + 1) - A347610 (n + 1)

end

end A347624.P4781713177844133553

/-! ## A347624.P887492701369951613

`A327708(A237667(n))`
-/

namespace A347624.P887492701369951613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327708 (A237667 n).toNat

end

end A347624.P887492701369951613

/-! ## A347624.P7888488979958676302

`A327708(A325769(n))`
-/

namespace A347624.P7888488979958676302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327708 (A325769 n).toNat

end

end A347624.P7888488979958676302

/-! ## A347624.P17328316953275505214

`A213856(A053438(n)%A207977(n+1))`
-/

namespace A347624.P17328316953275505214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213856 (Int.tmod (A053438 n) (A207977 (n + 1))).toNat

end

end A347624.P17328316953275505214

/-! ## A347624.P128460914167660786

`A213856(A053438(n)%A029819(n))`
-/

namespace A347624.P128460914167660786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213856 (Int.tmod (A053438 n) (A029819 n)).toNat

end

end A347624.P128460914167660786

/-!
# A347626: Number of partitions of n^n into distinct odd parts.

The programs for A347626, there is no canonical definition to state claims against.
-/

/-! ## A347626.P3899607357496942494

`A000700(n^n)`
-/

namespace A347626.P3899607357496942494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n ^ n)

end

end A347626.P3899607357496942494

/-!
# A347627: Number of partitions of n into at most 4 triangular numbers.

The programs for A347627, there is no canonical definition to state claims against.
-/

/-! ## A347627.P624840085723227419

`A295218(n+1)+A025428(Δ[n²])`
-/

namespace A347627.P624840085723227419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295218 (n + 1) + A025428 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A347627.P624840085723227419

/-! ## A347627.P9007246442132320914

`A025428(2*n+1)+A002635(2*n+1)`
-/

namespace A347627.P9007246442132320914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (2 * n + 1) + A002635 (2 * n + 1)

end

end A347627.P9007246442132320914

/-! ## A347627.P12076626704860656195

`A025428(8*n+4)-A025428(2*n+1)`
-/

namespace A347627.P12076626704860656195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (8 * n + 4) - A025428 (2 * n + 1)

end

end A347627.P12076626704860656195

/-! ## A347627.P11344861544198870628

`A295218(n+1)+A025428(2*n+1)%8`
-/

namespace A347627.P11344861544198870628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295218 (n + 1) + Int.tmod (A025428 (2 * n + 1)) 8

end

end A347627.P11344861544198870628

/-! ## A347627.P2290532303723374758

`A000164(2*n+1)+2*A025428(2*n+1)`
-/

namespace A347627.P2290532303723374758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (2 * n + 1) + 2 * A025428 (2 * n + 1)

end

end A347627.P2290532303723374758

/-! ## A347627.P11847579696035918574

`2*A002635(2*n+1)-A000164(2*n+1)`
-/

namespace A347627.P11847579696035918574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002635 (2 * n + 1) - A000164 (2 * n + 1)

end

end A347627.P11847579696035918574

/-! ## A347627.P5459174619573565576

`A002635(A017113(n))-A295218(n+1)`
-/

namespace A347627.P5459174619573565576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A017113 n).toNat - A295218 (n + 1)

end

end A347627.P5459174619573565576

/-! ## A347627.P12570449895802924997

`A002635(A017113(n))-A002635(2*n+1)`
-/

namespace A347627.P12570449895802924997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A017113 n).toNat - A002635 (2 * n + 1)

end

end A347627.P12570449895802924997

/-!
# A347628: Number of partitions of n into at most 6 triangular numbers.

The programs for A347628, there is no canonical definition to state claims against.
-/

/-! ## A347628.P4794626177036686304

`A002264(n)+A002033(A332997(A136376(n+1)))`
-/

namespace A347628.P4794626177036686304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n + A002033 (A332997 (A136376 (n + 1)).toNat).toNat

end

end A347628.P4794626177036686304

/-! ## A347628.P11899434774859387104

`A038548(record[A194272(A276086(n))])`
-/

namespace A347628.P11899434774859387104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194272 (A276086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A347628.P11899434774859387104

/-! ## A347628.P13062236329550981321

`A007294(n)-A342676(A003586(n+4))`
-/

namespace A347628.P13062236329550981321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 n - A342676 (A003586 (n + 4)).toNat

end

end A347628.P13062236329550981321

/-!
# A347629: Number of minimum dominating sets in the n-pan graph (for n > 2).

The programs for A347629, the canonical program `A347629.P15522527695085579299` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347629 has offset 1).

The definition of A347629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347629.P13687186981285412939

`ogf((2+x+x^2-2x^3-x^4-2x^5+x^6+x^8)/(1-3x^3+3x^6-x^9))`
-/

namespace A347629.P13687186981285412939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 1, -2, -1, -2, 1, 0, 1] [1, 0, 0, -3, 0, 0, 3, 0, 0, -1] n

end

end A347629.P13687186981285412939

namespace A347629

/-- `ogf((2+x+x^2-2x^3-x^4-2x^5+x^6+x^8)/(1-3x^3+3x^6-x^9))` -/
def P13687186981285412939.Spec : Prop :=
  ∀ n, P13687186981285412939.a n = A347629 (n + 1)

end A347629

/-! ## A347629.P15522527695085579299

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=2, a(1)=1, a(2)=1, a(3)=4, a(4)=2, a(5)=1, a(6)=7, a(7)=3, a(8)=1`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A347629

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P15522527695085579299.Spec : Prop :=
  ∀ n, P15522527695085579299.a n = A347629 (n + 1)

theorem P15522527695085579299.correct : P15522527695085579299.Spec := by
  intro n
  simp only [A347629, Nat.add_sub_cancel]

end A347629

/-! ## A347629.P13413083491430811422

`A025177(A027689(A008611(n))+n)`
-/

namespace A347629.P13413083491430811422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A027689 (A008611 n).toNat + (n : ℤ)).toNat

end

end A347629.P13413083491430811422

namespace A347629

/-- `A025177(A027689(A008611(n))+n)` -/
def P13413083491430811422.Spec : Prop :=
  ∀ n, P13413083491430811422.a n = A347629 (n + 1)

end A347629

/-! ## A347629.P12715997582169205028

`A025177(lt[A025177(n+1), A259361(n)])`
-/

namespace A347629.P12715997582169205028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A347629.P12715997582169205028

namespace A347629

/-- `A025177(lt[A025177(n+1), A259361(n)])` -/
def P12715997582169205028.Spec : Prop :=
  ∀ n, P12715997582169205028.a n = A347629 (n + 1)

end A347629

/-! ## A347629.P17482710807285361381

`A168377(A025796(2*n)+n+6)`
-/

namespace A347629.P17482710807285361381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168377 (A025796 (2 * n) + (n + 6 : ℤ)).toNat

end

end A347629.P17482710807285361381

namespace A347629

/-- `A168377(A025796(2*n)+n+6)` -/
def P17482710807285361381.Spec : Prop :=
  ∀ n, P17482710807285361381.a n = A347629 (n + 1)

end A347629

/-!
# A347630: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) is the number of partitions of n^k into distinct odd parts.

The programs for A347630, there is no canonical definition to state claims against.
-/

/-! ## A347630.P12932484692050985052

`A000700(col(n)^(row(n)-col(n)))`
-/

namespace A347630.P12932484692050985052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (SequenceMachineLib.roundAway ((SequenceMachineLib.triCol n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ))).toNat

end

end A347630.P12932484692050985052

/-! ## A347630.P8980082782657894389

`A000700(A004248(n))`
-/

namespace A347630.P8980082782657894389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A004248 n).toNat

end

end A347630.P8980082782657894389

/-! ## A347630.P11812765205573611747

`A000700(col(n)^A025683(n+1))`
-/

namespace A347630.P11812765205573611747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (SequenceMachineLib.roundAway ((SequenceMachineLib.triCol n : ℚ) ^ (A025683 (n + 1) : ℤ))).toNat

end

end A347630.P11812765205573611747

/-! ## A347630.P8113335457162809856

`A000700(A003992(n)-A055651(n))`
-/

namespace A347630.P8113335457162809856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A003992 n - A055651 n).toNat

end

end A347630.P8113335457162809856

/-! ## A347630.P6764777630381120849

`A000700(A059297(n)/A007318(n))`
-/

namespace A347630.P6764777630381120849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (SequenceMachineLib.roundAway ((A059297 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A347630.P6764777630381120849

/-! ## A347630.P12708890028245632204

`A000700(A059297(n)/A135227(n))`
-/

namespace A347630.P12708890028245632204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (SequenceMachineLib.roundAway ((A059297 n : ℚ) / (A135227 n : ℚ))).toNat

end

end A347630.P12708890028245632204

/-! ## A347630.P10625427505030077758

`A000700(A002262(n)^A025581(n))`
-/

namespace A347630.P10625427505030077758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A347630.P10625427505030077758

/-! ## A347630.P4996769986012965212

`A000700(A002262(n)^A122200(n))`
-/

namespace A347630.P4996769986012965212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A122200 n : ℤ))).toNat

end

end A347630.P4996769986012965212

/-! ## A347630.P1917303974575403137

`gcd(A000038(n), A081362(A004248(n)))`
-/

namespace A347630.P1917303974575403137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A081362 (A004248 n).toNat)

end

end A347630.P1917303974575403137

/-! ## A347630.P4998599539632312974

`lcm(A020985(n), A081362(A004248(n)))`
-/

namespace A347630.P4998599539632312974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A081362 (A004248 n).toNat)

end

end A347630.P4998599539632312974

/-!
# A347631: Number of minimum dominating sets in the n-folded cube graph.

The programs for A347631, there is no canonical definition to state claims against.
-/

/-! ## A347631.P11469578800689952743

`A246928(A006950(n)*A256151(n+1))`
-/

namespace A347631.P11469578800689952743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246928 (A006950 n * A256151 (n + 1)).toNat

end

end A347631.P11469578800689952743

/-!
# A347632: Number of minimum dominating sets in the n X n grid graph.

The programs for A347632, there is no canonical definition to state claims against.
-/

/-! ## A347632.P4323405961863844390

`A350820(∑[4*n]+1)`
-/

namespace A347632.P4323405961863844390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350820 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A347632.P4323405961863844390

/-! ## A347632.P16202797187645079536

`abs(A350820(A001844(n))-1)+1`
-/

namespace A347632.P16202797187645079536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A350820 (A001844 n).toNat - 1| + 1

end

end A347632.P16202797187645079536

/-! ## A347632.P10593480495187760503

`gcd(A000038(n), A350820(A001844(n)))`
-/

namespace A347632.P10593480495187760503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A350820 (A001844 n).toNat)

end

end A347632.P10593480495187760503

/-! ## A347632.P11185967887492903231

`lcm(A033999(n), A350820(A001844(n)))`
-/

namespace A347632.P11185967887492903231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A350820 (A001844 n).toNat)

end

end A347632.P11185967887492903231

/-! ## A347632.P8044640633107718363

`or(A000007(n), A350820(A001844(n)))`
-/

namespace A347632.P8044640633107718363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A350820 (A001844 n).toNat)

end

end A347632.P8044640633107718363

/-!
# A347633: Number of minimum dominating sets in the path graph P_n.

The programs for A347633, the canonical program `A347633.P9187570170048257440` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347633 has offset 1).

The definition of A347633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347633.P61970812513935476

`ogf((1+2x+x^2+x^3-3x^4-2x^5-x^6+x^7+x^8)/(1-3x^3+3x^6-x^9))`
-/

namespace A347633.P61970812513935476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 1, -3, -2, -1, 1, 1] [1, 0, 0, -3, 0, 0, 3, 0, 0, -1] n

end

end A347633.P61970812513935476

namespace A347633

/-- `ogf((1+2x+x^2+x^3-3x^4-2x^5-x^6+x^7+x^8)/(1-3x^3+3x^6-x^9))` -/
def P61970812513935476.Spec : Prop :=
  ∀ n, P61970812513935476.a n = A347633 (n + 1)

end A347633

/-! ## A347633.P9187570170048257440

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=4, a(4)=3, a(5)=1, a(6)=8, a(7)=4, a(8)=1`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A347633

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P9187570170048257440.Spec : Prop :=
  ∀ n, P9187570170048257440.a n = A347633 (n + 1)

theorem P9187570170048257440.correct : P9187570170048257440.Spec := by
  intro n
  simp only [A347633, Nat.add_sub_cancel]

end A347633

/-! ## A347633.P13782944126914385172

`sqrt(A303054(n+1))`
-/

namespace A347633.P13782944126914385172
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A303054 (n + 1) : ℝ)

end

end A347633.P13782944126914385172

namespace A347633

/-- `sqrt(A303054(n+1))` -/
def P13782944126914385172.Spec : Prop :=
  ∀ n, P13782944126914385172.a n = (A347633 (n + 1) : ℝ)

end A347633

/-! ## A347633.P17390521858851045396

`root(A303054(n+1), A001316(A001316(n)))`
-/

namespace A347633.P17390521858851045396
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A303054 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A347633.P17390521858851045396

namespace A347633

/-- `root(A303054(n+1), A001316(A001316(n)))` -/
def P17390521858851045396.Spec : Prop :=
  ∀ n, P17390521858851045396.a n = (A347633 (n + 1) : ℝ)

end A347633

/-! ## A347633.P16913414201020539965

`A000027(root(A303054(n+1), 2))`
-/

namespace A347633.P16913414201020539965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A303054 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A347633.P16913414201020539965

namespace A347633

/-- `A000027(root(A303054(n+1), 2))` -/
def P16913414201020539965.Spec : Prop :=
  ∀ n, P16913414201020539965.a n = A347633 (n + 1)

end A347633

/-! ## A347633.P12562280021514243892

`A350816(n+1)/A000079(A008620(n))`
-/

namespace A347633.P12562280021514243892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350816 (n + 1) : ℚ) / (A000079 (A008620 n).toNat : ℚ)

end

end A347633.P12562280021514243892

namespace A347633

/-- `A350816(n+1)/A000079(A008620(n))` -/
def P12562280021514243892.Spec : Prop :=
  ∀ n, P12562280021514243892.a n = (A347633 (n + 1) : ℚ)

end A347633

/-! ## A347633.P16842051756909071779

`A106195(eq[A025581(n), A180663(n)])`
-/

namespace A347633.P16842051756909071779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A347633.P16842051756909071779

namespace A347633

/-- `A106195(eq[A025581(n), A180663(n)])` -/
def P16842051756909071779.Spec : Prop :=
  ∀ n, P16842051756909071779.a n = A347633 (n + 1)

end A347633

/-! ## A347633.P4660000548767668365

`A106195(eq[A100100(n), A109267(n)])`
-/

namespace A347633.P4660000548767668365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A347633.P4660000548767668365

namespace A347633

/-- `A106195(eq[A100100(n), A109267(n)])` -/
def P4660000548767668365.Spec : Prop :=
  ∀ n, P4660000548767668365.a n = A347633 (n + 1)

end A347633

/-! ## A347633.P8082129169578798424

`A247023(eq[1, A065941(n+2)])`
-/

namespace A347633.P8082129169578798424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347633.P8082129169578798424

namespace A347633

/-- `A247023(eq[1, A065941(n+2)])` -/
def P8082129169578798424.Spec : Prop :=
  ∀ n, P8082129169578798424.a n = A347633 (n + 1)

end A347633

/-! ## A347633.P991874867546038174

`A247023(eq[A100100(n), A109267(n)])`
-/

namespace A347633.P991874867546038174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247023 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A347633.P991874867546038174

namespace A347633

/-- `A247023(eq[A100100(n), A109267(n)])` -/
def P991874867546038174.Spec : Prop :=
  ∀ n, P991874867546038174.a n = A347633 (n + 1)

end A347633

/-! ## A347633.P5206850861247005531

`A212633(A002264(n)+A000124(n))`
-/

namespace A347633.P5206850861247005531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (A002264 n + A000124 n).toNat

end

end A347633.P5206850861247005531

namespace A347633

/-- `A212633(A002264(n)+A000124(n))` -/
def P5206850861247005531.Spec : Prop :=
  ∀ n, P5206850861247005531.a n = A347633 (n + 1)

end A347633

/-! ## A347633.P2438935014774493010

`A212633(A008620(n)+A000217(n))`
-/

namespace A347633.P2438935014774493010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (A008620 n + A000217 n).toNat

end

end A347633.P2438935014774493010

namespace A347633

/-- `A212633(A008620(n)+A000217(n))` -/
def P2438935014774493010.Spec : Prop :=
  ∀ n, P2438935014774493010.a n = A347633 (n + 1)

end A347633

/-!
# A347635: Given n equally spaced points on the circumference of a circle, a(n) is the maximum number of those points that can be chosen so that the lengths of the line segments drawn connecting those a(n) points as vertices are all different.

The programs for A347635, there is no canonical definition to state claims against.
-/

/-! ## A347635.P8523373799736107434

`A084557(A084557(n+1)%A193917(2*n+3))`
-/

namespace A347635.P8523373799736107434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084557 (Int.tmod (A084557 (n + 1)) (A193917 (2 * n + 3))).toNat

end

end A347635.P8523373799736107434

/-!
# A347636: Number of ways to tile an n X n square with 1 X 1 squares and (n-2) X 2 vertical or horizontal rectangles.

The programs for A347636, the canonical program `A347636.P10474376451140062624` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347636 has offset 5).

The definition of A347636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347636.P10474376451140062624

`2*A006130(n+5)+12*A000045(n+6)+16*A000045(n+4)-31`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A347636

/-- `2*A006130(n+5)+12*A000045(n+6)+16*A000045(n+4)-31` -/
def P10474376451140062624.Spec : Prop :=
  ∀ n, P10474376451140062624.a n = A347636 (n + 5)

theorem P10474376451140062624.correct : P10474376451140062624.Spec := by
  intro n
  simp only [A347636, Nat.add_sub_cancel]

end A347636

/-!
# A347638: Number of minimal dominating sets in the n-dipyramidal graph (for n > 3).

The programs for A347638, the canonical program `A347638.P2564707530814494524` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347638 has offset 1).

The definition of A347638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347638.P5498703939759747593

`ogf((3+x-4x^2-2x^3-7x^4-x^5+15x^6-7x^7)/(1-2x+x^3+x^5-2x^7+x^8))`
-/

namespace A347638.P5498703939759747593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -4, -2, -7, -1, 15, -7] [1, -2, 0, 1, 0, 1, 0, -2, 1] n

end

end A347638.P5498703939759747593

namespace A347638

/-- `ogf((3+x-4x^2-2x^3-7x^4-x^5+15x^6-7x^7)/(1-2x+x^3+x^5-2x^7+x^8))` -/
def P5498703939759747593.Spec : Prop :=
  ∀ n, P5498703939759747593.a n = A347638 (n + 1)

end A347638

/-! ## A347638.P2564707530814494524

`2*a(n-1)-a(n-3)-a(n-5)+2*a(n-7)-a(n-8)` with `a(0)=3, a(1)=7, a(2)=10, a(3)=15, a(4)=16, a(5)=18, a(6)=29, a(7)=31`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A347638

/-- `2*a(n-1)-a(n-3)-a(n-5)+2*a(n-7)-a(n-8)` -/
def P2564707530814494524.Spec : Prop :=
  ∀ n, P2564707530814494524.a n = A347638 (n + 1)

theorem P2564707530814494524.correct : P2564707530814494524.Spec := by
  intro n
  simp only [A347638, Nat.add_sub_cancel]

end A347638

/-! ## A347638.P12187983771480636563

`A253413(n+1)+A103517(n)+1`
-/

namespace A347638.P12187983771480636563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253413 (n + 1) + (A103517 n + 1)

end

end A347638.P12187983771480636563

namespace A347638

/-- `A253413(n+1)+A103517(n)+1` -/
def P12187983771480636563.Spec : Prop :=
  ∀ n, P12187983771480636563.a n = A347638 (n + 1)

end A347638

/-! ## A347638.P9250793851384584010

`round(A253413(n+1)+sqrt(A078371(n)))`
-/

namespace A347638.P9250793851384584010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A253413 (n + 1) : ℝ) + Real.sqrt (A078371 n : ℝ))

end

end A347638.P9250793851384584010

namespace A347638

/-- `round(A253413(n+1)+sqrt(A078371(n)))` -/
def P9250793851384584010.Spec : Prop :=
  ∀ n, P9250793851384584010.a n = A347638 (n + 1)

end A347638

/-! ## A347638.P16720141641439690833

`A253413(n+1)+A141310(A103517(n))`
-/

namespace A347638.P16720141641439690833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253413 (n + 1) + A141310 (A103517 n).toNat

end

end A347638.P16720141641439690833

namespace A347638

/-- `A253413(n+1)+A141310(A103517(n))` -/
def P16720141641439690833.Spec : Prop :=
  ∀ n, P16720141641439690833.a n = A347638 (n + 1)

end A347638

/-! ## A347638.P17137493023310981068

`A253413(n+1)+A004442(A051755(n+2))`
-/

namespace A347638.P17137493023310981068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253413 (n + 1) + A004442 (A051755 (n + 2)).toNat

end

end A347638.P17137493023310981068

namespace A347638

/-- `A253413(n+1)+A004442(A051755(n+2))` -/
def P17137493023310981068.Spec : Prop :=
  ∀ n, P17137493023310981068.a n = A347638 (n + 1)

end A347638

/-! ## A347638.P7077681492477885987

`A253413(n+1)+A040000(n)+A005408(n)`
-/

namespace A347638.P7077681492477885987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253413 (n + 1) + (A040000 n + A005408 n)

end

end A347638.P7077681492477885987

namespace A347638

/-- `A253413(n+1)+A040000(n)+A005408(n)` -/
def P7077681492477885987.Spec : Prop :=
  ∀ n, P7077681492477885987.a n = A347638 (n + 1)

end A347638

/-! ## A347638.P7346626765416051377

`A253413(n+1)+A049840(A096376(n))`
-/

namespace A347638.P7346626765416051377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253413 (n + 1) + A049840 (A096376 n).toNat

end

end A347638.P7346626765416051377

namespace A347638

/-- `A253413(n+1)+A049840(A096376(n))` -/
def P7346626765416051377.Spec : Prop :=
  ∀ n, P7346626765416051377.a n = A347638 (n + 1)

end A347638

/-!
# A347639: Number of minimal dominating sets in the n-triangular grid graph.

The programs for A347639, there is no canonical definition to state claims against.
-/

/-! ## A347639.P7756528621967473517

`or(A004185(A015083(n)), A007504(n))`
-/

namespace A347639.P7756528621967473517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004185 (A015083 n).toNat) (A007504 n)

end

end A347639.P7756528621967473517

/-!
# A347640: Number of minimal dominating sets in n-triangular honeycomb acute knight graph.

The programs for A347640, there is no canonical definition to state claims against.
-/

/-! ## A347640.P10314629299933407689

`A347995(n+1)%A000982(A204543(n+1))`
-/

namespace A347640.P10314629299933407689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347995 (n + 1)) (A000982 (A204543 (n + 1)).toNat)

end

end A347640.P10314629299933407689

/-! ## A347640.P1590602896546072530

`A347995(comp[7*n])`
-/

namespace A347640.P1590602896546072530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347995 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A347640.P1590602896546072530

/-!
# A347642: Number of minimum total dominating sets in the n-folded cube graph.

The programs for A347642, there is no canonical definition to state claims against.
-/

/-! ## A347642.P4622033222565350151

`A004437(A182069(n)+n)`
-/

namespace A347642.P4622033222565350151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004437 (A182069 n + (n : ℤ)).toNat

end

end A347642.P4622033222565350151

/-!
# A347643: Number of partitions of n into at most 2 prime powers (including 1).

The programs for A347643, there is no canonical definition to state claims against.
-/

/-! ## A347643.P12629203957151118073

`A358635(n)+A282062(n)%2`
-/

namespace A347643.P12629203957151118073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358635 n + Int.tmod (A282062 n) 2

end

end A347643.P12629203957151118073

/-! ## A347643.P7536265902660626326

`A358635(n)+A000035(A282062(n))`
-/

namespace A347643.P7536265902660626326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358635 n + A000035 (A282062 n).toNat

end

end A347643.P7536265902660626326

/-! ## A347643.P2052112784675146602

`A071330(A028310(n))+A010055(A028310(n))`
-/

namespace A347643.P2052112784675146602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (A028310 n).toNat + A010055 (A028310 n).toNat

end

end A347643.P2052112784675146602

/-! ## A347643.P3204554072187150040

`A110654(A282062(n))+A010055(A028310(n))`
-/

namespace A347643.P3204554072187150040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A282062 n).toNat + A010055 (A028310 n).toNat

end

end A347643.P3204554072187150040

/-! ## A347643.P11503147913732044036

`A110654(A282062(n))+A010055(A253909(n))`
-/

namespace A347643.P11503147913732044036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A282062 n).toNat + A010055 (A253909 n).toNat

end

end A347643.P11503147913732044036

/-! ## A347643.P189796792536000515

`floor((A347762(n)+char[2^n]+1)/2)`
-/

namespace A347643.P189796792536000515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A347762 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1 : ℚ) / 2⌋

end

end A347643.P189796792536000515

/-! ## A347643.P9999023347048221432

`A347762(n)-floor(A282062(n)/2)`
-/

namespace A347643.P9999023347048221432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 n - ⌊(A282062 n : ℚ) / 2⌋

end

end A347643.P9999023347048221432

/-! ## A347643.P4282521512226104911

`A034888(A347762(n)+char[2^n])`
-/

namespace A347643.P4282521512226104911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A347762 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A347643.P4282521512226104911

/-! ## A347643.P11165712995479900765

`A065033(A347762(n)+char[2^n])`
-/

namespace A347643.P11165712995479900765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A347762 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A347643.P11165712995479900765

/-! ## A347643.P11197925829161688680

`A110654(A347762(n)+char[2^n])`
-/

namespace A347643.P11197925829161688680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A347762 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A347643.P11197925829161688680

/-!
# A347644: Number of partitions of n into at most 3 prime powers (including 1).

The programs for A347644, there is no canonical definition to state claims against.
-/

/-! ## A347644.P7999222268583456293

`A248805(A238109(n+1))+A028310(n)`
-/

namespace A347644.P7999222268583456293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (A238109 (n + 1)).toNat + A028310 n

end

end A347644.P7999222268583456293

/-! ## A347644.P18343994192002131382

`A274933(n+1)+A011730(A030239(n))`
-/

namespace A347644.P18343994192002131382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274933 (n + 1) + A011730 (A030239 n).toNat

end

end A347644.P18343994192002131382

/-! ## A347644.P17714638895397061241

`A341999(A286772(n))+A274933(n+1)`
-/

namespace A347644.P17714638895397061241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 (A286772 n).toNat + A274933 (n + 1)

end

end A347644.P17714638895397061241

/-! ## A347644.P5803813763456709436

`A167430(A034888(n)*A092982(n+1))`
-/

namespace A347644.P5803813763456709436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167430 (A034888 n * A092982 (n + 1)).toNat

end

end A347644.P5803813763456709436

/-!
# A347645: Number of partitions of n into at most 4 prime powers (including 1).

The programs for A347645, there is no canonical definition to state claims against.
-/

/-! ## A347645.P295456262988980373

`∑[A000194(A280913(A034008(n)))]`
-/

namespace A347645.P295456262988980373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A280913 (A034008 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347645.P295456262988980373

/-!
# A347646: Number of partitions of n into at most 5 prime powers (including 1).

The programs for A347646, there is no canonical definition to state claims against.
-/

/-! ## A347646.P6038686508617899239

`A008621(∑[A005245(A036296(n))])`
-/

namespace A347646.P6038686508617899239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (A036296 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A347646.P6038686508617899239

/-! ## A347646.P166091546051459409

`A143731(A006721(n))+A126256(n)`
-/

namespace A347646.P166091546051459409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (A006721 n).toNat + A126256 n

end

end A347646.P166091546051459409

/-! ## A347646.P6139821815570460403

`A033638(n)-A033665(A336130(n))`
-/

namespace A347646.P6139821815570460403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n - A033665 (A336130 n).toNat

end

end A347646.P6139821815570460403

/-! ## A347646.P5050729920482522260

`A102424(n)-A340998(A000124(n))`
-/

namespace A347646.P5050729920482522260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102424 n - A340998 ((A000124 n).toNat + 140)

end

end A347646.P5050729920482522260

/-! ## A347646.P10132397772954592663

`A126256(n)+A024326(A287745(n))`
-/

namespace A347646.P10132397772954592663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126256 n + A024326 (A287745 n).toNat

end

end A347646.P10132397772954592663

/-!
# A347647: Number of partitions of n into at most 6 prime powers (including 1).

The programs for A347647, there is no canonical definition to state claims against.
-/

/-! ## A347647.P4674407832502921742

`A008766(n)-A340998(A066806(n))`
-/

namespace A347647.P4674407832502921742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008766 n - A340998 ((A066806 n).toNat + 140)

end

end A347647.P4674407832502921742

/-! ## A347647.P3300210591940753037

`A118759(A001401(n))-A326595(n)`
-/

namespace A347647.P3300210591940753037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A001401 n).toNat - A326595 n

end

end A347647.P3300210591940753037

/-! ## A347647.P15033071077283382765

`A008766(n)-A085974(A184207(n+2))`
-/

namespace A347647.P15033071077283382765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008766 n - A085974 (A184207 (n + 2)).toNat

end

end A347647.P15033071077283382765

/-! ## A347647.P7515237578731379751

`A351870(A008766(n))`
-/

namespace A347647.P7515237578731379751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A008766 n).toNat

end

end A347647.P7515237578731379751

/-! ## A347647.P3941885520724448741

`A008766(A089840(∑[n]))`
-/

namespace A347647.P3941885520724448741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008766 (A089840 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A347647.P3941885520724448741

/-!
# A347648: Number of partitions of n into at most 2 squarefree parts.

The programs for A347648, there is no canonical definition to state claims against.
-/

/-! ## A347648.P2309524086009388829

`A105588(n)-A294234(n)`
-/

namespace A347648.P2309524086009388829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105588 n - A294234 n

end

end A347648.P2309524086009388829

/-! ## A347648.P13596341658443335588

`A105588(n)+A001478(A294234(n)+1)+1`
-/

namespace A347648.P13596341658443335588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105588 n + (A001478 (A294234 n + 1).toNat + 1)

end

end A347648.P13596341658443335588

/-! ## A347648.P7565975162196442166

`A347777(n)-A098236(round(sqrt(n²+1)))`
-/

namespace A347648.P7565975162196442166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347777 n - A098236 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A347648.P7565975162196442166

/-! ## A347648.P1747219395322745801

`abs(A347777(n)-A098236(A028310(n)))`
-/

namespace A347648.P1747219395322745801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A347777 n - A098236 (A028310 n).toNat|

end

end A347648.P1747219395322745801

/-! ## A347648.P15760665981169521919

`abs(A347777(n)-A098236(A233583(n+1)))`
-/

namespace A347648.P15760665981169521919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A347777 n - A098236 (A233583 (n + 1)).toNat|

end

end A347648.P15760665981169521919

/-! ## A347648.P5580608592592188103

`A065033(A347777(n)+char[A007947(n+1)])`
-/

namespace A347648.P5580608592592188103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A347777 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A347648.P5580608592592188103

/-! ## A347648.P4164089753966865235

`A110654(A347777(n)+char[A007947(n+1)])`
-/

namespace A347648.P4164089753966865235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A347777 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A347648.P4164089753966865235

/-! ## A347648.P5579216118214713567

`A065033(A347777(n)+char[A055231(n+1)])`
-/

namespace A347648.P5579216118214713567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A347777 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A347648.P5579216118214713567

/-! ## A347648.P16751389704559697857

`A110654(A347777(n)+char[A055231(n+1)])`
-/

namespace A347648.P16751389704559697857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A347777 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A347648.P16751389704559697857

/-! ## A347648.P17922762089952867152

`A347649(n)-A307815(n)`
-/

namespace A347648.P17922762089952867152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347649 n - A307815 n

end

end A347648.P17922762089952867152

/-!
# A347649: Number of partitions of n into at most 3 squarefree parts.

The programs for A347649, there is no canonical definition to state claims against.
-/

/-! ## A347649.P13378187543561210622

`A347648(n)+A307815(n)`
-/

namespace A347649.P13378187543561210622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347648 n + A307815 n

end

end A347649.P13378187543561210622

/-! ## A347649.P5874849551760291264

`A105588(n)+A307815(n)-A294234(n)`
-/

namespace A347649.P5874849551760291264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105588 n + (A307815 n - A294234 n)

end

end A347649.P5874849551760291264

/-! ## A347649.P16060796738735452196

`A307815(n)+A347777(n)-A098236(A028310(n))`
-/

namespace A347649.P16060796738735452196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307815 n + (A347777 n - A098236 (A028310 n).toNat)

end

end A347649.P16060796738735452196

/-! ## A347649.P5711733980626783709

`A307815(n)-A001478(A105588(n)-A294234(n))`
-/

namespace A347649.P5711733980626783709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307815 n - A001478 (A105588 n - A294234 n).toNat

end

end A347649.P5711733980626783709

/-! ## A347649.P4835935781578214795

`A307815(n)+A347777(n)-A098236(A233583(n+1))`
-/

namespace A347649.P4835935781578214795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307815 n + (A347777 n - A098236 (A233583 (n + 1)).toNat)

end

end A347649.P4835935781578214795

/-! ## A347649.P3530385821074178653

`A307815(n)+A105588(n)+A001478(A294234(n)+1)+1`
-/

namespace A347649.P3530385821074178653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307815 n + (A105588 n + (A001478 (A294234 n + 1).toNat + 1))

end

end A347649.P3530385821074178653

/-! ## A347649.P8453470381796106695

`A347655(n)-A308767(n)`
-/

namespace A347649.P8453470381796106695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 n - A308767 n

end

end A347649.P8453470381796106695

/-! ## A347649.P10197780614728222408

`A347655(n)-round(acot(n)*A308783(n))`
-/

namespace A347649.P10197780614728222408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 n - SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) * (A308783 n : ℝ))

end

end A347649.P10197780614728222408

/-! ## A347649.P3765809423591358667

`A347655(n)-A308783(n)/A028310(n)`
-/

namespace A347649.P3765809423591358667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347655 n : ℚ) - (A308783 n : ℚ) / (A028310 n : ℚ)

end

end A347649.P3765809423591358667

/-! ## A347649.P2785777756995979240

`A347656(n)-(A308840(n)+A308767(n))`
-/

namespace A347649.P2785777756995979240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347656 n - (A308840 n + A308767 n)

end

end A347649.P2785777756995979240

/-!
# A347650: Number of minimum total dominating sets in the n-pan graph (for n > 2).

The programs for A347650, the canonical program `A347650.P15457661053292972478` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347650 has offset 1).

The definition of A347650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347650.P15457661053292972478

`ogf((1+2x+3x^2+2x^3+2x^5-4x^6-4x^7-x^8+x^10+2x^11)/(1-3x^4+3x^8-x^12))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A347650

/-- `ogf((1+2x+3x^2+2x^3+2x^5-4x^6-4x^7-x^8+x^10+2x^11)/(1-3x^4+3x^8-x^12))` -/
def P15457661053292972478.Spec : Prop :=
  ∀ n, P15457661053292972478.a n = A347650 (n + 1)

theorem P15457661053292972478.correct : P15457661053292972478.Spec := by
  intro n
  simp only [A347650, Nat.add_sub_cancel]

end A347650

/-! ## A347650.P6970328061649287344

`A056594(n)+2*A302654(n+1)`
-/

namespace A347650.P6970328061649287344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + 2 * A302654 (n + 1)

end

end A347650.P6970328061649287344

namespace A347650

/-- `A056594(n)+2*A302654(n+1)` -/
def P6970328061649287344.Spec : Prop :=
  ∀ n, P6970328061649287344.a n = A347650 (n + 1)

end A347650

/-! ## A347650.P11182218047034725943

`A056594(n)+A005843(A302654(n+1))`
-/

namespace A347650.P11182218047034725943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + A005843 (A302654 (n + 1)).toNat

end

end A347650.P11182218047034725943

namespace A347650

/-- `A056594(n)+A005843(A302654(n+1))` -/
def P11182218047034725943.Spec : Prop :=
  ∀ n, P11182218047034725943.a n = A347650 (n + 1)

end A347650

/-! ## A347650.P18382138443491201071

`A005408(A302654(n+1))-A007877(n)`
-/

namespace A347650.P18382138443491201071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A302654 (n + 1)).toNat - A007877 n

end

end A347650.P18382138443491201071

namespace A347650

/-- `A005408(A302654(n+1))-A007877(n)` -/
def P18382138443491201071.Spec : Prop :=
  ∀ n, P18382138443491201071.a n = A347650 (n + 1)

end A347650

/-! ## A347650.P1084617184821363276

`A166514(A079097(n+2))+A166514(n+2)`
-/

namespace A347650.P1084617184821363276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A079097 (n + 2)).toNat + A166514 (n + 2)

end

end A347650.P1084617184821363276

namespace A347650

/-- `A166514(A079097(n+2))+A166514(n+2)` -/
def P1084617184821363276.Spec : Prop :=
  ∀ n, P1084617184821363276.a n = A347650 (n + 1)

end A347650

/-! ## A347650.P15425782422110603722

`A166514(n+2)+A166514(A166514(n+3)²)`
-/

namespace A347650.P15425782422110603722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (n + 2) + A166514 (A166514 (n + 3) ^ 2).toNat

end

end A347650.P15425782422110603722

namespace A347650

/-- `A166514(n+2)+A166514(A166514(n+3)²)` -/
def P15425782422110603722.Spec : Prop :=
  ∀ n, P15425782422110603722.a n = A347650 (n + 1)

end A347650

/-!
# A347652: Records in the trajectory of all positive integers in the 3x+1 or Collatz problem, including the trajectory [1, 4, 2, 1] of 1.

The programs for A347652, there is no canonical definition to state claims against.
-/

/-! ## A347652.P10403715304819717012

`char[1]+record[A070165(n+3)]`
-/

namespace A347652.P10403715304819717012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A347652.P10403715304819717012

/-! ## A347652.P5002721000471238971

`record[A006370(A192719(n+2))]`
-/

namespace A347652.P5002721000471238971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A192719 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347652.P5002721000471238971

/-! ## A347652.P14563479151764122178

`record[A235795(1+n)]`
-/

namespace A347652.P14563479151764122178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235795 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347652.P14563479151764122178

/-! ## A347652.P12529887685744472477

`record[A288251(n+3)]`
-/

namespace A347652.P12529887685744472477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288251 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347652.P12529887685744472477

/-! ## A347652.P18356854249084757247

`record[A006370(A246646(n+1))]`
-/

namespace A347652.P18356854249084757247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A246646 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347652.P18356854249084757247

/-!
# A347653: Partial sums of the trajectory of all positive integers in the 3x+1 or Collatz problem, including the trajectory [1, 4, 2, 1] of 1.

The programs for A347653, there is no canonical definition to state claims against.
-/

/-! ## A347653.P13721646596817597083

`∑[A235795(1+n)]`
-/

namespace A347653.P13721646596817597083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235795 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347653.P13721646596817597083

/-! ## A347653.P3788146739302276257

`A235795(1+n)+a(A023443(n))` with `a(0)=1`
-/

namespace A347653.P3788146739302276257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A235795 (1 + n) + a (A023443 n).toNat

end

end A347653.P3788146739302276257

/-! ## A347653.P5016369622323363971

`a(n-1)+A235795(n+1)%A062324(n+1)` with `a(0)=1`
-/

namespace A347653.P5016369622323363971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A235795 (n + 1)) (A062324 (n + 1))

end

end A347653.P5016369622323363971

/-! ## A347653.P3259992386750363564

`A235795(n+1)+A005408(n)%2*a(n-1)` with `a(0)=1`
-/

namespace A347653.P3259992386750363564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A235795 (n + 1) + Int.tmod (A005408 n) 2 * a (n - 1)

end

end A347653.P3259992386750363564

/-! ## A347653.P17148262368044349958

`A235800(2*a(n-1))+A235795(n+1)` with `a(0)=1`
-/

namespace A347653.P17148262368044349958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A235800 (2 * a (n - 1)).toNat + A235795 (n + 1)

end

end A347653.P17148262368044349958

/-! ## A347653.P15967244114526974171

`A233583(A235795(n+1)+a(n-1))+1` with `a(0)=1`
-/

namespace A347653.P15967244114526974171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A233583 (A235795 (n + 1) + a (n - 1)).toNat + 1

end

end A347653.P15967244114526974171

/-! ## A347653.P12727369349975516087

`∑[A245943(n+1)-2]`
-/

namespace A347653.P12727369349975516087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245943 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347653.P12727369349975516087

/-! ## A347653.P5616222185825347936

`∑[A023444(A245943(n+1))]`
-/

namespace A347653.P5616222185825347936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A245943 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347653.P5616222185825347936

/-! ## A347653.P1608798924198939405

`∑[A023445(A245943(n+1)+1)]`
-/

namespace A347653.P1608798924198939405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A245943 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347653.P1608798924198939405

/-! ## A347653.P7664751288719299061

`∑[A023447(A245943(n+1)+3)]`
-/

namespace A347653.P7664751288719299061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A245943 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347653.P7664751288719299061

/-!
# A347654: Number of partitions of 10^n into distinct odd parts.

The programs for A347654, there is no canonical definition to state claims against.
-/

/-! ## A347654.P6836911261147507396

`A000700(10^n)`
-/

namespace A347654.P6836911261147507396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (10 ^ n)

end

end A347654.P6836911261147507396

/-!
# A347655: Number of partitions of n into at most 4 squarefree parts.

The programs for A347655, there is no canonical definition to state claims against.
-/

/-! ## A347655.P5785282492636510577

`A347649(n)+A308767(n)`
-/

namespace A347655.P5785282492636510577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347649 n + A308767 n

end

end A347655.P5785282492636510577

/-! ## A347655.P3290976632355992647

`A347649(n)+round(acot(n)*A308783(n))`
-/

namespace A347655.P3290976632355992647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347649 n + SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) * (A308783 n : ℝ))

end

end A347655.P3290976632355992647

/-! ## A347655.P6591794802627037112

`A307815(n)+A347648(n)+A308767(n)`
-/

namespace A347655.P6591794802627037112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307815 n + (A347648 n + A308767 n)

end

end A347655.P6591794802627037112

/-! ## A347655.P17007916898889653240

`A347649(n)+A308783(n)/A028310(n)`
-/

namespace A347655.P17007916898889653240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347649 n : ℚ) + (A308783 n : ℚ) / (A028310 n : ℚ)

end

end A347655.P17007916898889653240

/-! ## A347655.P16484766301454148680

`A347649(n)+A308783(n)/A233583(n+1)`
-/

namespace A347655.P16484766301454148680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347649 n : ℚ) + (A308783 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A347655.P16484766301454148680

/-! ## A347655.P7728703061216958786

`A308767(n)-A347649(n)/A321804(C(2, n))`
-/

namespace A347655.P7728703061216958786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308767 n : ℚ) - (A347649 n : ℚ) / (A321804 (Nat.choose 2 n) : ℚ)

end

end A347655.P7728703061216958786

/-! ## A347655.P4353885861084353649

`A308767(n)-A347649(n)/(n-A029579(2*n))`
-/

namespace A347655.P4353885861084353649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308767 n : ℚ) - (A347649 n : ℚ) / ((n : ℤ) - A029579 (2 * n) : ℚ)

end

end A347655.P4353885861084353649

/-! ## A347655.P4315299228478287392

`A308767(n)+A105588(n)+A307815(n)-A294234(n)`
-/

namespace A347655.P4315299228478287392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308767 n + (A105588 n + (A307815 n - A294234 n))

end

end A347655.P4315299228478287392

/-! ## A347655.P6073601276721579055

`A347656(n)-A308840(n)`
-/

namespace A347655.P6073601276721579055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347656 n - A308840 n

end

end A347655.P6073601276721579055

/-! ## A347655.P8258478077138323080

`A347657(n)-(A308902(n)+A308840(n))`
-/

namespace A347655.P8258478077138323080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347657 n - (A308902 n + A308840 n)

end

end A347655.P8258478077138323080

/-!
# A347656: Number of partitions of n into at most 5 squarefree parts.

The programs for A347656, there is no canonical definition to state claims against.
-/

/-! ## A347656.P10608344991149290063

`A347655(n)+A308840(n)`
-/

namespace A347656.P10608344991149290063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 n + A308840 n

end

end A347656.P10608344991149290063

/-! ## A347656.P6113080579171649892

`A308767(n)+A347649(n)+A308840(n)`
-/

namespace A347656.P6113080579171649892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308767 n + (A347649 n + A308840 n)

end

end A347656.P6113080579171649892

/-! ## A347656.P13883870936194058869

`A347655(n)+A308839(n)/A028310(n)`
-/

namespace A347656.P13883870936194058869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347655 n : ℚ) + (A308839 n : ℚ) / (A028310 n : ℚ)

end

end A347656.P13883870936194058869

/-! ## A347656.P13931494141390536372

`A347655(n)+A308839(n)/A233583(n+1)`
-/

namespace A347656.P13931494141390536372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347655 n : ℚ) + (A308839 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A347656.P13931494141390536372

/-! ## A347656.P16144648800833236304

`A308840(n)+A307815(n)+A347648(n)+A308767(n)`
-/

namespace A347656.P16144648800833236304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308840 n + (A307815 n + (A347648 n + A308767 n))

end

end A347656.P16144648800833236304

/-! ## A347656.P4027509410685333650

`A308840(n)+A347649(n)+A308783(n)/A028310(n)`
-/

namespace A347656.P4027509410685333650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308840 n : ℚ) + ((A347649 n : ℚ) + (A308783 n : ℚ) / (A028310 n : ℚ))

end

end A347656.P4027509410685333650

/-! ## A347656.P16896202770051775309

`A347657(n)-A308902(n)`
-/

namespace A347656.P16896202770051775309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347657 n - A308902 n

end

end A347656.P16896202770051775309

/-!
# A347657: Number of partitions of n into at most 6 squarefree parts.

The programs for A347657, there is no canonical definition to state claims against.
-/

/-! ## A347657.P14444417851091204712

`A347656(n)+A308902(n)`
-/

namespace A347657.P14444417851091204712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347656 n + A308902 n

end

end A347657.P14444417851091204712

/-! ## A347657.P11015173611784111560

`A308840(n)+A347655(n)+A308902(n)`
-/

namespace A347657.P11015173611784111560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308840 n + (A347655 n + A308902 n)

end

end A347657.P11015173611784111560

/-! ## A347657.P13001277669123627229

`A347656(n)+A308903(n)/A028310(n)`
-/

namespace A347657.P13001277669123627229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347656 n : ℚ) + (A308903 n : ℚ) / (A028310 n : ℚ)

end

end A347657.P13001277669123627229

/-! ## A347657.P8114291324932605675

`A347656(n)+A308903(n)/(A000007(n)+n)`
-/

namespace A347657.P8114291324932605675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347656 n : ℚ) + (A308903 n : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A347657.P8114291324932605675

/-! ## A347657.P11863509376382874095

`A308902(n)+A347655(n)+A308839(n)/(abs(1-n)+1)`
-/

namespace A347657.P11863509376382874095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308902 n : ℚ) + ((A347655 n : ℚ) + (A308839 n : ℚ) / (|1 - (n : ℤ)| + 1 : ℚ))

end

end A347657.P11863509376382874095

/-! ## A347657.P17315502954004079522

`A308902(n)+A308767(n)+A347649(n)+A308840(n)`
-/

namespace A347657.P17315502954004079522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308902 n + (A308767 n + (A347649 n + A308840 n))

end

end A347657.P17315502954004079522

/-!
# A347658: Number of partitions of n into at most 3 powers of 2.

The programs for A347658, there is no canonical definition to state claims against.
-/

/-! ## A347658.P8813454377613324000

`A089049(eq[n+2, or(6, n)])`
-/

namespace A347658.P8813454377613324000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089049 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A347658.P8813454377613324000

/-! ## A347658.P8230758711214393768

`A089049(2^(comp[∑[n]]-n)+n)`
-/

namespace A347658.P8230758711214393768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089049 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ) + (n : ℚ))).toNat

end

end A347658.P8230758711214393768

/-! ## A347658.P15956219623863194282

`dr(A089049(A047608(n+1)))`
-/

namespace A347658.P15956219623863194282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A089049 (A047608 (n + 1)).toNat)

end

end A347658.P15956219623863194282

/-! ## A347658.P4632025409405256633

`and(3, A089049(A047473(n+1)+2))`
-/

namespace A347658.P4632025409405256633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A089049 (A047473 (n + 1) + 2).toNat)

end

end A347658.P4632025409405256633

/-! ## A347658.P3254293111500982674

`A089049(A047608(ϕ²-(ϕ-n)))%4`
-/

namespace A347658.P3254293111500982674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089049 (A047608 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat) 4

end

end A347658.P3254293111500982674

/-! ## A347658.P8277154658795356324

`A347660(n)-(A089050(n)+A089049(n))`
-/

namespace A347658.P8277154658795356324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347660 n - (A089050 n + A089049 n)

end

end A347658.P8277154658795356324

/-! ## A347658.P17214719210887200062

`lcm(A033999(n), A089049(A047473(n+1)+2))`
-/

namespace A347658.P17214719210887200062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A089049 (A047473 (n + 1) + 2).toNat)

end

end A347658.P17214719210887200062

/-! ## A347658.P2869079125730922889

`A007318(C(2, n))*A089049(A047608(n+1))`
-/

namespace A347658.P2869079125730922889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A089049 (A047608 (n + 1)).toNat

end

end A347658.P2869079125730922889

/-! ## A347658.P114778008058411793

`A089049(A047608(n+1))/A014963(C(n+4, 2))`
-/

namespace A347658.P114778008058411793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089049 (A047608 (n + 1)).toNat : ℚ) / (A014963 (Nat.choose (n + 4) 2) : ℚ)

end

end A347658.P114778008058411793

/-! ## A347658.P6148105883511563585

`A347659(n)-A089049(n)`
-/

namespace A347658.P6148105883511563585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347659 n - A089049 n

end

end A347658.P6148105883511563585

/-!
# A347659: Number of partitions of n into at most 4 powers of 2.

The programs for A347659, there is no canonical definition to state claims against.
-/

/-! ## A347659.P1589064339195670539

`A347658(n)+A089049(n)`
-/

namespace A347659.P1589064339195670539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347658 n + A089049 n

end

end A347659.P1589064339195670539

/-! ## A347659.P17793425331992046968

`A347660(n)-A089050(n)`
-/

namespace A347659.P17793425331992046968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347660 n - A089050 n

end

end A347659.P17793425331992046968

/-! ## A347659.P11165925564245982919

`A089050(A008574(n)+gcd(4, n))`
-/

namespace A347659.P11165925564245982919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089050 (A008574 n + (Nat.gcd 4 n : ℤ)).toNat

end

end A347659.P11165925564245982919

/-! ## A347659.P4457637297262058203

`A089049(eq[n+2, or(6, n)])+A089049(n)`
-/

namespace A347659.P4457637297262058203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089049 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + A089049 n

end

end A347659.P4457637297262058203

/-! ## A347659.P6422676584932697015

`A089049(2^(comp[∑[n]]-n)+n)+A089049(n)`
-/

namespace A347659.P6422676584932697015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089049 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ) + (n : ℚ))).toNat + A089049 n

end

end A347659.P6422676584932697015

/-! ## A347659.P17626205331010850653

`A089050(A094497(n)+A047608(n+1))`
-/

namespace A347659.P17626205331010850653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089050 (A094497 n + A047608 (n + 1)).toNat

end

end A347659.P17626205331010850653

/-! ## A347659.P9066320102875886281

`A347661(n)-(A089051(n)+A089050(n))`
-/

namespace A347659.P9066320102875886281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347661 n - (A089051 n + A089050 n)

end

end A347659.P9066320102875886281

/-!
# A347660: Number of partitions of n into at most 5 powers of 2.

The programs for A347660, there is no canonical definition to state claims against.
-/

/-! ## A347660.P1105393164732546372

`A089050(A008574(n)+gcd(4, n))+A089050(n)`
-/

namespace A347660.P1105393164732546372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089050 (A008574 n + (Nat.gcd 4 n : ℤ)).toNat + A089050 n

end

end A347660.P1105393164732546372

/-! ## A347660.P15890169744709113398

`A089049(A047608(n+1))+A089050(n)+A089049(n)`
-/

namespace A347660.P15890169744709113398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089049 (A047608 (n + 1)).toNat + (A089050 n + A089049 n)

end

end A347660.P15890169744709113398

/-! ## A347660.P11299670105602371773

`A089050(n)+A089050(A094497(n)+A047608(n+1))`
-/

namespace A347660.P11299670105602371773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089050 n + A089050 (A094497 n + A047608 (n + 1)).toNat

end

end A347660.P11299670105602371773

/-! ## A347660.P16737773292284317618

`A089050(n)+A089049(A047473(n+1)+2)+A089049(n)`
-/

namespace A347660.P16737773292284317618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089050 n + (A089049 (A047473 (n + 1) + 2).toNat + A089049 n)

end

end A347660.P16737773292284317618

/-! ## A347660.P16303505579667537061

`A089050(n)+A089049(A168326(n+1)+n)+A089049(n)`
-/

namespace A347660.P16303505579667537061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089050 n + (A089049 (A168326 (n + 1) + (n : ℤ)).toNat + A089049 n)

end

end A347660.P16303505579667537061

/-! ## A347660.P1652652599288030292

`A089049(n)+A347658(n)+A089050(n)`
-/

namespace A347660.P1652652599288030292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089049 n + (A347658 n + A089050 n)

end

end A347660.P1652652599288030292

/-! ## A347660.P14246890257413394373

`A347659(n)+A089050(n)`
-/

namespace A347660.P14246890257413394373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347659 n + A089050 n

end

end A347660.P14246890257413394373

/-! ## A347660.P6819874281235376584

`A347659(n)+A089052(A077169(n)+n)`
-/

namespace A347660.P6819874281235376584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347659 n + A089052 (A077169 n + (n : ℤ)).toNat

end

end A347660.P6819874281235376584

/-! ## A347660.P16616657055172529658

`A347659(n)+A089051(n+1)-A089051(∑[n]%(n+1))`
-/

namespace A347660.P16616657055172529658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347659 n + (A089051 (n + 1) - A089051 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)))

end

end A347660.P16616657055172529658

/-! ## A347660.P11557817242996409697

`A347661(n)-A089051(n)`
-/

namespace A347660.P11557817242996409697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347661 n - A089051 n

end

end A347660.P11557817242996409697

/-!
# A347661: Number of partitions of n into at most 6 powers of 2.

The programs for A347661, there is no canonical definition to state claims against.
-/

/-! ## A347661.P8521146663358409775

`A347660(n)+A089051(n)`
-/

namespace A347661.P8521146663358409775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347660 n + A089051 n

end

end A347661.P8521146663358409775

/-! ## A347661.P17786875111240174428

`A089050(n)+A347659(n)+A089051(n)`
-/

namespace A347661.P17786875111240174428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089050 n + (A347659 n + A089051 n)

end

end A347661.P17786875111240174428

/-! ## A347661.P3848657431544227441

`A089051(n)+A347659(n)+A089052(A077169(n)+n)`
-/

namespace A347661.P3848657431544227441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089051 n + (A347659 n + A089052 (A077169 n + (n : ℤ)).toNat)

end

end A347661.P3848657431544227441

/-! ## A347661.P16111208831549225844

`A089051(n)+A089049(n)+A347658(n)+A089050(n)`
-/

namespace A347661.P16111208831549225844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089051 n + (A089049 n + (A347658 n + A089050 n))

end

end A347661.P16111208831549225844

/-!
# A347662: Number of partitions of n into at most 4 nonprime parts.

The programs for A347662, there is no canonical definition to state claims against.
-/

/-! ## A347662.P15409115103801145062

`A347663(A242474(n+1))-A023895(n+1)`
-/

namespace A347662.P15409115103801145062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347663 (A242474 (n + 1)).toNat - A023895 (n + 1)

end

end A347662.P15409115103801145062

/-! ## A347662.P8466015535951320057

`A285481(A000032(n)*A277326(n+1))`
-/

namespace A347662.P8466015535951320057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285481 (A000032 n * A277326 (n + 1)).toNat

end

end A347662.P8466015535951320057

/-! ## A347662.P1949322163065664442

`A347663(A044917(n+1))-A023895(n+1)`
-/

namespace A347662.P1949322163065664442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347663 (A044917 (n + 1)).toNat - A023895 (n + 1)

end

end A347662.P1949322163065664442

/-!
# A347663: Number of partitions of n into at most 5 nonprime parts.

The programs for A347663, there is no canonical definition to state claims against.
-/

/-! ## A347663.P345996157034083886

`A347664(A242474(n+1))-A023895(n+1)`
-/

namespace A347663.P345996157034083886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347664 (A242474 (n + 1)).toNat - A023895 (n + 1)

end

end A347663.P345996157034083886

/-!
# A347665: E.g.f.: exp( exp(x) * (1 + x + x^2 / 2) - 1 ).

The programs for A347665, there is no canonical definition to state claims against.
-/

/-! ## A347665.P13067030055345701000

`A065033(A153293(n)+A007582(n))`
-/

namespace A347665.P13067030055345701000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A153293 n + A007582 n).toNat

end

end A347665.P13067030055345701000

/-! ## A347665.P16629199079721980311

`A319207(n+1)+A008615(A103210(n))`
-/

namespace A347665.P16629199079721980311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319207 (n + 1) + A008615 (A103210 n).toNat

end

end A347665.P16629199079721980311

/-!
# A347666: E.g.f.: exp( exp(x) * (1 + x + x^2 / 2 + x^3 / 6) - 1 ).

The programs for A347666, there is no canonical definition to state claims against.
-/

/-! ## A347666.P2775198826226641742

`A004523(A000258(n+1)+1)`
-/

namespace A347666.P2775198826226641742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A000258 (n + 1) + 1).toNat

end

end A347666.P2775198826226641742

/-! ## A347666.P1374958142220835346

`A322042(A000258(n+1)+1)`
-/

namespace A347666.P1374958142220835346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322042 (A000258 (n + 1) + 1).toNat

end

end A347666.P1374958142220835346

/-!
# A347667: Triangle read by rows: T(n,k) = Sum_{j=0..k} binomial(n,j) * j! (0 <= k <= n).

The programs for A347667, the canonical program `A347667.P8486897740066909917` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347667 has offset 0).

The definition of A347667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347667.P2949609248937625638

`row(n)*T(n-1,k-1)+1` with `a(0)=1`
-/

namespace A347667.P2949609248937625638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triRow n * SequenceMachineLib.triUpLeft a n + 1

end

end A347667.P2949609248937625638

namespace A347667

/-- `row(n)*T(n-1,k-1)+1` -/
def P2949609248937625638.Spec : Prop :=
  ∀ n, (P2949609248937625638.a n : ℤ) = A347667 n

end A347667

/-! ## A347667.P10388495517793739106

`-xor(row(n)*T(n-1,k-1), -1)` with `a(0)=1`
-/

namespace A347667.P10388495517793739106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.xor ((SequenceMachineLib.triRow n : ℤ) * SequenceMachineLib.triUpLeft a n) (-1)

end

end A347667.P10388495517793739106

namespace A347667

/-- `-xor(row(n)*T(n-1,k-1), -1)` -/
def P10388495517793739106.Spec : Prop :=
  ∀ n, P10388495517793739106.a n = A347667 n

end A347667

/-! ## A347667.P16567603744430667101

`1-(T(n-1,k-1)-2*T(n-1,k-1))*row(n)` with `a(0)=1`
-/

namespace A347667.P16567603744430667101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (SequenceMachineLib.triUpLeft a n - 2 * SequenceMachineLib.triUpLeft a n) * (SequenceMachineLib.triRow n : ℤ)

end

end A347667.P16567603744430667101

namespace A347667

/-- `1-(T(n-1,k-1)-2*T(n-1,k-1))*row(n)` -/
def P16567603744430667101.Spec : Prop :=
  ∀ n, P16567603744430667101.a n = A347667 n

end A347667

/-! ## A347667.P2049025837978982273

`T(n-1,k-1)*A003056(n)+1` with `a(0)=1, a(1)=1`
-/

namespace A347667.P2049025837978982273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n * A003056 n + 1

end

end A347667.P2049025837978982273

namespace A347667

/-- `T(n-1,k-1)*A003056(n)+1` -/
def P2049025837978982273.Spec : Prop :=
  ∀ n, P2049025837978982273.a n = A347667 n

end A347667

/-! ## A347667.P9516090720394693421

`1-(A010054(n)-row(n))*T(n-1,k-1)` with `a(0)=1`
-/

namespace A347667.P9516090720394693421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (A010054 n - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUpLeft a n

end

end A347667.P9516090720394693421

namespace A347667

/-- `1-(A010054(n)-row(n))*T(n-1,k-1)` -/
def P9516090720394693421.Spec : Prop :=
  ∀ n, P9516090720394693421.a n = A347667 n

end A347667

/-! ## A347667.P2577727096924702528

`A285268(n+1)/∑[char[∑[n]]]`
-/

namespace A347667.P2577727096924702528
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285268 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A347667.P2577727096924702528

namespace A347667

/-- `A285268(n+1)/∑[char[∑[n]]]` -/
def P2577727096924702528.Spec : Prop :=
  ∀ n, P2577727096924702528.a n = (A347667 n : ℚ)

end A347667

/-! ## A347667.P8486897740066909917

`floor(A285268(n+1)/A002024(n+1))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A347667

/-- `floor(A285268(n+1)/A002024(n+1))` -/
def P8486897740066909917.Spec : Prop :=
  ∀ n, P8486897740066909917.a n = A347667 n

theorem P8486897740066909917.correct : P8486897740066909917.Spec := by
  intro n
  simp only [A347667]

end A347667

/-! ## A347667.P8666423636849162469

`round(A285268(A005408(n)-n)/A002024(n+1))`
-/

namespace A347667.P8666423636849162469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A285268 (A005408 n - (n : ℤ)).toNat : ℚ) / (A002024 (n + 1) : ℚ))

end

end A347667.P8666423636849162469

namespace A347667

/-- `round(A285268(A005408(n)-n)/A002024(n+1))` -/
def P8666423636849162469.Spec : Prop :=
  ∀ n, P8666423636849162469.a n = A347667 n

end A347667

/-! ## A347667.P3471218650560989364

`A285268(n+1)/A068424(n+1)*A008279(n)`
-/

namespace A347667.P3471218650560989364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285268 (n + 1) : ℚ) / (A068424 (n + 1) : ℚ) * (A008279 n : ℚ)

end

end A347667.P3471218650560989364

namespace A347667

/-- `A285268(n+1)/A068424(n+1)*A008279(n)` -/
def P3471218650560989364.Spec : Prop :=
  ∀ n, P3471218650560989364.a n = (A347667 n : ℚ)

end A347667

/-! ## A347667.P11079253897808114574

`A121662(A038722(n+1))/∑[A010054(n)]`
-/

namespace A347667.P11079253897808114574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121662 (A038722 (n + 1)).toNat : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A347667.P11079253897808114574

namespace A347667

/-- `A121662(A038722(n+1))/∑[A010054(n)]` -/
def P11079253897808114574.Spec : Prop :=
  ∀ n, P11079253897808114574.a n = (A347667 n : ℚ)

end A347667

/-!
# A347668: Indices of records in A347409.

The programs for A347668, there is no canonical definition to state claims against.
-/

/-! ## A347668.P3904155611412200205

`filter[A347669(n), A098725(#)]`
-/

namespace A347668.P3904155611412200205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A347668.P3904155611412200205

/-! ## A347668.P15817316231905321042

`filter[A347669(n), A166486(#)]`
-/

namespace A347668.P15817316231905321042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A347668.P15817316231905321042

/-! ## A347668.P998325384181105939

`filter[A347669(n), A341625(#)]`
-/

namespace A347668.P998325384181105939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A347668.P998325384181105939

/-! ## A347668.P14764915946066182128

`filter[A347669(n), A359550(#)]`
-/

namespace A347668.P14764915946066182128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A347668.P14764915946066182128

/-! ## A347668.P5214489356060891574

`filter[A347669(n), A371087(#)]`
-/

namespace A347668.P5214489356060891574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A347668.P5214489356060891574

/-!
# A347669: Indices of first occurrences of n in A347409.

The programs for A347669, there is no canonical definition to state claims against.
-/

/-! ## A347669.P2813747802463243408

`A231610(n)%A083778(A283364(n+1))`
-/

namespace A347669.P2813747802463243408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231610 n) (A083778 (A283364 (n + 1)).toNat)

end

end A347669.P2813747802463243408

/-! ## A347669.P7118866639568643265

`A231610(n)%A004766(A120031(n))`
-/

namespace A347669.P7118866639568643265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231610 n) (A004766 (A120031 n).toNat)

end

end A347669.P7118866639568643265

/-! ## A347669.P3218109665966828285

`(2^n)%p?[A239013(n+1)]`
-/

namespace A347669.P3218109665966828285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A347669.P3218109665966828285

/-! ## A347669.P15015940539964441060

`A011782(A005940(n+1))%A080327(n+1)`
-/

namespace A347669.P15015940539964441060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (A005940 (n + 1)).toNat) (A080327 (n + 1))

end

end A347669.P15015940539964441060

/-!
# A347671: a(n) = n^n mod 100.

The programs for A347671, the canonical program `A347671.P10751989517214809744` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347671 has offset 0).

The definition of A347671 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^n)%100` (program `A347671.P10751989517214809744`, by `A347671.P10751989517214809744.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A347671.P10751989517214809744

`(n^n)%100`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A347671

/-- `(n^n)%100` -/
def P10751989517214809744.Spec : Prop :=
  ∀ n, (P10751989517214809744.a n : ℤ) = A347671 n

theorem P10751989517214809744.correct : P10751989517214809744.Spec := by
  intro n
  simp only [A347671]

end A347671

/-!
# A347672: Array read by antidiagonals: T(n,k) (n>=1, k>=1) = number of Baxter matrices of size n X k.

The programs for A347672, there is no canonical definition to state claims against.
-/

/-! ## A347672.P4423920110429412067

`A093579(A028657(n)²)`
-/

namespace A347672.P4423920110429412067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093579 (A028657 n ^ 2).toNat

end

end A347672.P4423920110429412067

/-! ## A347672.P17674740906413676468

`A093579(A053534(n)²)`
-/

namespace A347672.P17674740906413676468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093579 (A053534 n ^ 2).toNat

end

end A347672.P17674740906413676468

/-! ## A347672.P8508528904202465971

`A093579(A094526(n)²)`
-/

namespace A347672.P8508528904202465971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093579 (A094526 n ^ 2).toNat

end

end A347672.P8508528904202465971

/-! ## A347672.P9881728746770412278

`A093579(A101515(n)²)`
-/

namespace A347672.P9881728746770412278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093579 (A101515 n ^ 2).toNat

end

end A347672.P9881728746770412278

/-! ## A347672.P1629846643704530019

`A093579(A104881(n)²)`
-/

namespace A347672.P1629846643704530019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093579 (A104881 n ^ 2).toNat

end

end A347672.P1629846643704530019

/-!
# A347673: Number of Baxter matrices of size 3 X n.

The programs for A347673, the canonical program `A347673.P1292171802455787093` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347673 has offset 1).

The definition of A347673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347673.P1292171802455787093

`ogf((1+9x+9x^2-12x^3+3x^4-3x^5+x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A347673

/-- `ogf((1+9x+9x^2-12x^3+3x^4-3x^5+x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P1292171802455787093.Spec : Prop :=
  ∀ n, P1292171802455787093.a n = A347673 (n + 1)

theorem P1292171802455787093.correct : P1292171802455787093.Spec := by
  intro n
  simp only [A347673, Nat.add_sub_cancel]

end A347673

/-! ## A347673.P17340933350512665269

`A347672(∑[n+2]+4)`
-/

namespace A347673.P17340933350512665269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347672 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A347673.P17340933350512665269

namespace A347673

/-- `A347672(∑[n+2]+4)` -/
def P17340933350512665269.Spec : Prop :=
  ∀ n, P17340933350512665269.a n = A347673 (n + 1)

end A347673

/-! ## A347673.P13490991412013745946

`and(-1, A347672(A167614(n+1)))`
-/

namespace A347673.P13490991412013745946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A347672 (A167614 (n + 1)).toNat)

end

end A347673.P13490991412013745946

namespace A347673

/-- `and(-1, A347672(A167614(n+1)))` -/
def P13490991412013745946.Spec : Prop :=
  ∀ n, P13490991412013745946.a n = A347673 (n + 1)

end A347673

/-! ## A347673.P10041464392602904705

`record[A010054(n)*A347672(n+3)]`
-/

namespace A347673.P10041464392602904705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A347672 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347673.P10041464392602904705

namespace A347673

/-- `record[A010054(n)*A347672(n+3)]` -/
def P10041464392602904705.Spec : Prop :=
  ∀ n, P10041464392602904705.a n = A347673 (n + 1)

end A347673

/-! ## A347673.P10691193959803067146

`record[gcd(A208459(n), A347672(n+1))]`
-/

namespace A347673.P10691193959803067146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208459 n) (A347672 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347673.P10691193959803067146

namespace A347673

/-- `record[gcd(A208459(n), A347672(n+1))]` -/
def P10691193959803067146.Spec : Prop :=
  ∀ n, (P10691193959803067146.a n : ℤ) = A347673 (n + 1)

end A347673

/-!
# A347674: Number of Baxter matrices of size n X n.

The programs for A347674, there is no canonical definition to state claims against.
-/

/-! ## A347674.P9308091478301215986

`A347672(∑[4*n]+1)`
-/

namespace A347674.P9308091478301215986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347672 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A347674.P9308091478301215986

/-! ## A347674.P2955663500372296243

`or(char[2], A347672(A001844(n)))`
-/

namespace A347674.P2955663500372296243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A347672 (A001844 n).toNat)

end

end A347674.P2955663500372296243

/-! ## A347674.P13751353031476800458

`record[A003982(n)*A347672(n+1)]`
-/

namespace A347674.P13751353031476800458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A347672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347674.P13751353031476800458

/-!
# A347675: Array read by antidiagonals: T(n,k) (n>=1, k>=1) = number of Baxter matrices of size n X k that contain the minimal number of 1's.

The programs for A347675, there is no canonical definition to state claims against.
-/

/-! ## A347675.P10538143204689547480

`xor(A129533(A114176(n)), A155864(n))`
-/

namespace A347675.P10538143204689547480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A129533 (A114176 n).toNat) (A155864 n)

end

end A347675.P10538143204689547480

/-! ## A347675.P12284153887536867485

`A097448(A173881(n))`
-/

namespace A347675.P12284153887536867485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A173881 n).toNat

end

end A347675.P12284153887536867485

/-! ## A347675.P9913327375077016093

`A066921(A317644(n))`
-/

namespace A347675.P9913327375077016093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066921 (A317644 n).toNat

end

end A347675.P9913327375077016093

/-! ## A347675.P3375843382633374902

`A143185(n)%A082930(n+1)`
-/

namespace A347675.P3375843382633374902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143185 n) (A082930 (n + 1))

end

end A347675.P3375843382633374902

/-! ## A347675.P5368995032662412285

`A007895(A359313(n))*A047130(n)`
-/

namespace A347675.P5368995032662412285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A359313 n).toNat * A047130 n

end

end A347675.P5368995032662412285

/-!
# A347676: Array read by antidiagonals: T(n,k) (n>=1, k>=1) = number of Baxter matrices of size n X k that contain the maximal number of 1's.

The programs for A347676, there is no canonical definition to state claims against.
-/

/-! ## A347676.P13701817080774505592

`A168134(A124376(n))`
-/

namespace A347676.P13701817080774505592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168134 (A124376 n).toNat

end

end A347676.P13701817080774505592

/-! ## A347676.P9875191752498291603

`A168134(A047671(n+1))`
-/

namespace A347676.P9875191752498291603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168134 (A047671 (n + 1)).toNat

end

end A347676.P9875191752498291603

/-! ## A347676.P6542800447117161342

`A180493(A334552(n+1))`
-/

namespace A347676.P6542800447117161342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180493 (A334552 (n + 1)).toNat

end

end A347676.P6542800447117161342

/-! ## A347676.P12800933433732784886

`A327333(A359573(n+1))`
-/

namespace A347676.P12800933433732784886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327333 (A359573 (n + 1)).toNat

end

end A347676.P12800933433732784886

/-!
# A347677: Number of Baxter matrices of size 3 X n that contain n+2 1's.

The programs for A347677, the canonical program `A347677.P9553482898666431151` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347677 has offset 1).

The definition of A347677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347677.P9553482898666431151

`ogf((1+5x+5x^2+x^4)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A347677

/-- `ogf((1+5x+5x^2+x^4)/(1-3x+3x^2-x^3))` -/
def P9553482898666431151.Spec : Prop :=
  ∀ n, P9553482898666431151.a n = A347677 (n + 1)

theorem P9553482898666431151.correct : P9553482898666431151.Spec := by
  intro n
  simp only [A347677, Nat.add_sub_cancel]

end A347677

/-! ## A347677.P17493605567173876238

`round((6*n-1)/acot(n))+2`
-/

namespace A347677.P17493605567173876238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((6 * n : ℤ) - 1 : ℝ) / SequenceMachineLib.acot (n : ℝ)) + 2

end

end A347677.P17493605567173876238

namespace A347677

/-- `round((6*n-1)/acot(n))+2` -/
def P17493605567173876238.Spec : Prop :=
  ∀ n, P17493605567173876238.a n = A347677 (n + 1)

end A347677

/-! ## A347677.P10122047284658534153

`∑[comp[2*(n+2)]+1]+5*n²`
-/

namespace A347677.P10122047284658534153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5 * n ^ 2

end

end A347677.P10122047284658534153

namespace A347677

/-- `∑[comp[2*(n+2)]+1]+5*n²` -/
def P10122047284658534153.Spec : Prop :=
  ∀ n, (P10122047284658534153.a n : ℤ) = A347677 (n + 1)

end A347677

/-! ## A347677.P254970164316277379

`abs(floor(n-atan(n))-A005897(n))`
-/

namespace A347677.P254970164316277379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ - A005897 n|

end

end A347677.P254970164316277379

namespace A347677

/-- `abs(floor(n-atan(n))-A005897(n))` -/
def P254970164316277379.Spec : Prop :=
  ∀ n, P254970164316277379.a n = A347677 (n + 1)

end A347677

/-! ## A347677.P13941176617508061312

`abs(floor(n-atan(n))-(A005919(n)-n²))`
-/

namespace A347677.P13941176617508061312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ - (A005919 n - (n ^ 2 : ℤ))|

end

end A347677.P13941176617508061312

namespace A347677

/-- `abs(floor(n-atan(n))-(A005919(n)-n²))` -/
def P13941176617508061312.Spec : Prop :=
  ∀ n, P13941176617508061312.a n = A347677 (n + 1)

end A347677

/-! ## A347677.P654563737045806307

`abs(A074764(n+1)+n*(6*n-2))`
-/

namespace A347677.P654563737045806307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074764 (n + 1) + (n : ℤ) * ((6 * n : ℤ) - 2)|

end

end A347677.P654563737045806307

namespace A347677

/-- `abs(A074764(n+1)+n*(6*n-2))` -/
def P654563737045806307.Spec : Prop :=
  ∀ n, P654563737045806307.a n = A347677 (n + 1)

end A347677

/-! ## A347677.P18356641888951868897

`abs(floor(n-atan(n))-(A005893(n)+(2*n)²))`
-/

namespace A347677.P18356641888951868897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ - (A005893 n + ((2 * n) ^ 2 : ℤ))|

end

end A347677.P18356641888951868897

namespace A347677

/-- `abs(floor(n-atan(n))-(A005893(n)+(2*n)²))` -/
def P18356641888951868897.Spec : Prop :=
  ∀ n, P18356641888951868897.a n = A347677 (n + 1)

end A347677

/-! ## A347677.P7967883670530241757

`abs(floor(n-atan(n))-(A005901(n)-(2*n)²))`
-/

namespace A347677.P7967883670530241757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ - (A005901 n - ((2 * n) ^ 2 : ℤ))|

end

end A347677.P7967883670530241757

namespace A347677

/-- `abs(floor(n-atan(n))-(A005901(n)-(2*n)²))` -/
def P7967883670530241757.Spec : Prop :=
  ∀ n, P7967883670530241757.a n = A347677 (n + 1)

end A347677

/-! ## A347677.P16875036305195051226

`abs(floor(n-atan(n))-(A008527(n)-2*n²))`
-/

namespace A347677.P16875036305195051226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ - (A008527 n - (2 * n ^ 2 : ℤ))|

end

end A347677.P16875036305195051226

namespace A347677

/-- `abs(floor(n-atan(n))-(A008527(n)-2*n²))` -/
def P16875036305195051226.Spec : Prop :=
  ∀ n, P16875036305195051226.a n = A347677 (n + 1)

end A347677

/-! ## A347677.P1355656015144780442

`abs(A005897(n)-A289207(n))`
-/

namespace A347677.P1355656015144780442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005897 n - A289207 n|

end

end A347677.P1355656015144780442

namespace A347677

/-- `abs(A005897(n)-A289207(n))` -/
def P1355656015144780442.Spec : Prop :=
  ∀ n, P1355656015144780442.a n = A347677 (n + 1)

end A347677

/-!
# A347678: Triangle read by rows: T(n,k) (1 <= k <= n) = number of n X k Baxter matrices in which all row sums are 1.

The programs for A347678, there is no canonical definition to state claims against.
-/

/-! ## A347678.P6218594862388728989

`A347675(A245300(n)+1)`
-/

namespace A347678.P6218594862388728989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347675 (A245300 n + 1).toNat

end

end A347678.P6218594862388728989

/-! ## A347678.P16175604896020714532

`A336358(A336562(n+1)+A063007(n))`
-/

namespace A347678.P16175604896020714532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336358 (A336562 (n + 1) + A063007 n).toNat

end

end A347678.P16175604896020714532

/-! ## A347678.P11328244099985557561

`A197640(or(A063007(n), A103881(n+1)))`
-/

namespace A347678.P11328244099985557561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197640 (Int.lor (A063007 n) (A103881 (n + 1))).toNat

end

end A347678.P11328244099985557561

/-! ## A347678.P14180721818713782884

`A336358(A336355(2*n+3)+A063007(n))`
-/

namespace A347678.P14180721818713782884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336358 (A336355 (2 * n + 3) + A063007 n).toNat

end

end A347678.P14180721818713782884

/-! ## A347678.P10347370876466887926

`A334230(A393343(n))`
-/

namespace A347678.P10347370876466887926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334230 (A393343 n).toNat

end

end A347678.P10347370876466887926

/-!
# A347681: Triangle read by rows: T(n,k) (1<=k<=n) = f(prime(n),prime(k)), where f(x,y) = x*red_inv(x,y) + y*red_inv(y,x) if gcd(x,y)=1, or 0 if gcd(x,y)>1, and red_inv is defined in the comments.

The programs for A347681, there is no canonical definition to state claims against.
-/

/-! ## A347681.P4750797700497294516

`A347682(A245300(n)+1)`
-/

namespace A347681.P4750797700497294516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347682 (A245300 n + 1).toNat

end

end A347681.P4750797700497294516

/-!
# A347683: Triangle read by rows: T(n,k) (1<=k<=n) = f(n,k), where f(x,y) = x*red_inv(x,y) + y*red_inv(y,x) if gcd(x,y)=1, or 0 if gcd(x,y)>1, and red_inv is defined in the comments.

The programs for A347683, there is no canonical definition to state claims against.
-/

/-! ## A347683.P11866595612783334180

`A347684(A245300(n)+1)`
-/

namespace A347683.P11866595612783334180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347684 (A245300 n + 1).toNat

end

end A347683.P11866595612783334180

/-! ## A347683.P7941863432824007928

`and(A004273(A261116(n+1)), A029618(n))`
-/

namespace A347683.P7941863432824007928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004273 (A261116 (n + 1)).toNat) (A029618 n)

end

end A347683.P7941863432824007928

/-! ## A347683.P14880872190562485521

`A048794(A139366(n+1)^A000010(n+1))`
-/

namespace A347683.P14880872190562485521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (SequenceMachineLib.roundAway ((A139366 (n + 1) : ℚ) ^ (A000010 (n + 1) : ℤ))).toNat

end

end A347683.P14880872190562485521

/-! ## A347683.P3158319263585860026

`A291452(n+1)%A291475(A291445(n+1))`
-/

namespace A347683.P3158319263585860026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291452 (n + 1)) (A291475 (A291445 (n + 1)).toNat)

end

end A347683.P3158319263585860026

/-!
# A347685: First differences of A345882.

The programs for A347685, there is no canonical definition to state claims against.
-/

/-! ## A347685.P5326416149949652224

`Δ[A345882(n+1)]`
-/

namespace A347685.P5326416149949652224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347685.P5326416149949652224

/-! ## A347685.P1010052032970441080

`abs(Δ[A345882(n-log2(1/2))])`
-/

namespace A347685.P1010052032970441080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345882 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A347685.P1010052032970441080

/-! ## A347685.P7886664189500784666

`record[Δ[A345882(A020986(n))]]`
-/

namespace A347685.P7886664189500784666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345882 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347685.P7886664189500784666

/-! ## A347685.P6888808579947424504

`Δ[record[A345882(A028920(n))]]`
-/

namespace A347685.P6888808579947424504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345882 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347685.P6888808579947424504

/-! ## A347685.P3367159170948053195

`Δ[record[A345882(A038568(n))]]`
-/

namespace A347685.P3367159170948053195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345882 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347685.P3367159170948053195

/-!
# A347686: n! - A345882(n).

The programs for A347686, there is no canonical definition to state claims against.
-/

/-! ## A347686.P9755934758819185354

`(n+1)!-A345882(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347686.P9755934758819185354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A345882 (n + 1)

end

end A347686.P9755934758819185354

/-! ## A347686.P15872903743176150894

`record[A047920(n)]-A345882(n+1)`
-/

namespace A347686.P15872903743176150894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A345882 (n + 1)

end

end A347686.P15872903743176150894

/-! ## A347686.P18437161120126441633

`A000142(n+1)-A345882(n+1)`
-/

namespace A347686.P18437161120126441633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A345882 (n + 1)

end

end A347686.P18437161120126441633

/-! ## A347686.P3159171834056238904

`A074911(C(n+2, 2))-A345882(n+1)`
-/

namespace A347686.P3159171834056238904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074911 (Nat.choose (n + 2) 2) - A345882 (n + 1)

end

end A347686.P3159171834056238904

/-! ## A347686.P4630093248340302727

`∏[n+1]-∑[A347685(A065033(2*n))]`
-/

namespace A347686.P4630093248340302727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347685 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A347686.P4630093248340302727

/-!
# A347687: Triangle read by rows: T(n,k) (1<=k<=n) = (r(n+k)-r(k))/(2*n), where {r(i), i>=1} is the n-th row of array A347684.

The programs for A347687, there is no canonical definition to state claims against.
-/

/-! ## A347687.P12347305221662730313

`A290456(n)%A004426(A075427(n))`
-/

namespace A347687.P12347305221662730313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290456 n) (A004426 (A075427 n).toNat)

end

end A347687.P12347305221662730313

/-! ## A347687.P16582789382509396687

`A088205(A054521(n+1)*A175224(n+1))`
-/

namespace A347687.P16582789382509396687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088205 (A054521 (n + 1) * A175224 (n + 1)).toNat

end

end A347687.P16582789382509396687

/-! ## A347687.P8049035408625814515

`A221169(A359363(n+1))`
-/

namespace A347687.P8049035408625814515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221169 (A359363 (n + 1)).toNat

end

end A347687.P8049035408625814515

/-! ## A347687.P3207408420343617439

`A117054(∑[A080232(n)]²)`
-/

namespace A347687.P3207408420343617439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117054 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A347687.P3207408420343617439

/-! ## A347687.P2415975511408609476

`A096271(A225117(n+1))`
-/

namespace A347687.P2415975511408609476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (A225117 (n + 1)).toNat

end

end A347687.P2415975511408609476

/-!
# A347688: Let c (resp. C) be the smallest (resp. largest) number that can be obtained by cyclically permuting the digits of n; a(n) = C - c.

The programs for A347688, there is no canonical definition to state claims against.
-/

/-! ## A347688.P9663120425242159327

`9*A347689(A328447(n))`
-/

namespace A347688.P9663120425242159327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A347689 (A328447 n).toNat

end

end A347688.P9663120425242159327

/-! ## A347688.P1339530778807749701

`9*A347689(n)`
-/

namespace A347688.P1339530778807749701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A347689 n

end

end A347688.P1339530778807749701

/-! ## A347688.P16418807413963719041

`A008591(A347689(n))`
-/

namespace A347688.P16418807413963719041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A347689 n).toNat

end

end A347688.P16418807413963719041

/-! ## A347688.P4539720309486375289

`A151949(n)-a(A347689(n))` with `a(0)=0`
-/

namespace A347688.P4539720309486375289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A151949 n - a (A347689 n).toNat

end

end A347688.P4539720309486375289

/-! ## A347688.P15469448761500069851

`A151949(n)-A056965(A347689(n))`
-/

namespace A347688.P15469448761500069851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n - A056965 (A347689 n).toNat

end

end A347688.P15469448761500069851

/-! ## A347688.P5813674505528948270

`A347689(n)/(A008683(A006881(n+1))/3)²`
-/

namespace A347688.P5813674505528948270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347689 n : ℚ) / ((A008683 (A006881 (n + 1)).toNat : ℚ) / 3) ^ 2

end

end A347688.P5813674505528948270

/-!
# A347689: A347688(n)/9.

The programs for A347689, there is no canonical definition to state claims against.
-/

/-! ## A347689.P4732953642758116327

`A347688(n)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347689.P4732953642758116327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347688 n : ℚ) / 9

end

end A347689.P4732953642758116327

/-! ## A347689.P11041327411645714272

`A106610(A347688(n))`
-/

namespace A347689.P11041327411645714272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A347688 n).toNat

end

end A347689.P11041327411645714272

/-! ## A347689.P9843417471764918791

`A343609(A347688(n)+1)`
-/

namespace A347689.P9843417471764918791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A347688 n + 1).toNat

end

end A347689.P9843417471764918791

/-! ## A347689.P13387691642191729047

`A106619(2*A347688(n))`
-/

namespace A347689.P13387691642191729047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (2 * A347688 n).toNat

end

end A347689.P13387691642191729047

/-! ## A347689.P15508402935831693985

`A194523(A347688(n)+4)`
-/

namespace A347689.P15508402935831693985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194523 (A347688 n + 4).toNat

end

end A347689.P15508402935831693985

/-! ## A347689.P18233042276518243077

`A255594(lcm(3, A347688(n)))`
-/

namespace A347689.P18233042276518243077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255594 (Int.lcm 3 (A347688 n))

end

end A347689.P18233042276518243077

/-! ## A347689.P4412323388466304575

`A194523(or(4, A347688(n)))`
-/

namespace A347689.P4412323388466304575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194523 (Int.lor 4 (A347688 n)).toNat

end

end A347689.P4412323388466304575

/-! ## A347689.P2986235254043060109

`A059995(A347688(n)+A151950(n))`
-/

namespace A347689.P2986235254043060109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A347688 n + A151950 n).toNat

end

end A347689.P2986235254043060109

/-!
# A347690: Values of k such that (product of first k squarefree numbers) / (sum of first k squarefree numbers) is an integer.

The programs for A347690, there is no canonical definition to state claims against.
-/

/-! ## A347690.P11284242065889822729

`A100112(A322608(n+1))`
-/

namespace A347690.P11284242065889822729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (A322608 (n + 1)).toNat

end

end A347690.P11284242065889822729

/-! ## A347690.P9559979832920606866

`A013928(A322608(n+1)+1)`
-/

namespace A347690.P9559979832920606866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A322608 (n + 1) + 1).toNat

end

end A347690.P9559979832920606866

/-! ## A347690.P14556496168062525905

`A322815(A322608(n+1)%A016885(n))`
-/

namespace A347690.P14556496168062525905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322815 (Int.tmod (A322608 (n + 1)) (A016885 n)).toNat

end

end A347690.P14556496168062525905

/-! ## A347690.P11129111684644073813

`A322815(A322608(n+1))%A030078(n+1)`
-/

namespace A347690.P11129111684644073813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322815 (A322608 (n + 1)).toNat) (A030078 (n + 1))

end

end A347690.P11129111684644073813

/-! ## A347690.P6504606051456368641

`A207974(∑[n])*A322815(A322608(n+1))`
-/

namespace A347690.P6504606051456368641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207974 (∑ j ∈ Finset.range (n + 1), f1 j) * A322815 (A322608 (n + 1)).toNat

end

end A347690.P6504606051456368641

/-!
# A347692: Numbers k such that there is regular 2-graph on k points with smallest eigenvalue rho_2 = -5.

The programs for A347692, there is no canonical definition to state claims against.
-/

/-! ## A347692.P1267884566724576507

`A283611(A049933(n+1))+A283611(n+1)`
-/

namespace A347692.P1267884566724576507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283611 (A049933 (n + 1)).toNat + A283611 (n + 1)

end

end A347692.P1267884566724576507

/-! ## A347692.P7863474762343790121

`A047206(A067526(n+5)+1)`
-/

namespace A347692.P7863474762343790121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047206 (A067526 (n + 5) + 1).toNat

end

end A347692.P7863474762343790121

/-!
# A347694: Largest k <= 2*n such that k is a prime or twice a prime.

The programs for A347694, the canonical program `A347694.P9273429398172691281` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347694 has offset 1).

The definition of A347694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347694.P10574536759058824548

`A001751(A099802(n+1)+A000720(n+1))`
-/

namespace A347694.P10574536759058824548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (A099802 (n + 1) + A000720 (n + 1)).toNat

end

end A347694.P10574536759058824548

namespace A347694

/-- `A001751(A099802(n+1)+A000720(n+1))` -/
def P10574536759058824548.Spec : Prop :=
  ∀ n, P10574536759058824548.a n = A347694 (n + 1)

end A347694

/-! ## A347694.P9273429398172691281

`A001751(A099801(n)+A055679(2*n+3))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A347694

/-- `A001751(A099801(n)+A055679(2*n+3))` -/
def P9273429398172691281.Spec : Prop :=
  ∀ n, P9273429398172691281.a n = A347694 (n + 1)

theorem P9273429398172691281.correct : P9273429398172691281.Spec := by
  intro n
  simp only [A347694, Nat.add_sub_cancel]

end A347694

/-! ## A347694.P11566991984103334455

`A001751(A000720(2*(n+1))+A000720(n+1))`
-/

namespace A347694.P11566991984103334455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (A000720 (2 * (n + 1)) + A000720 (n + 1)).toNat

end

end A347694.P11566991984103334455

namespace A347694

/-- `A001751(A000720(2*(n+1))+A000720(n+1))` -/
def P11566991984103334455.Spec : Prop :=
  ∀ n, P11566991984103334455.a n = A347694 (n + 1)

end A347694

/-! ## A347694.P13176810268303259658

`A001751(A036234(2*n+1)+A033270(n+1))`
-/

namespace A347694.P13176810268303259658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (A036234 (2 * n + 1) + A033270 (n + 1)).toNat

end

end A347694.P13176810268303259658

namespace A347694

/-- `A001751(A036234(2*n+1)+A033270(n+1))` -/
def P13176810268303259658.Spec : Prop :=
  ∀ n, P13176810268303259658.a n = A347694 (n + 1)

end A347694

/-! ## A347694.P270432343827583316

`A001751(A230980(2*(n+1))+A230980(n+1))`
-/

namespace A347694.P270432343827583316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (A230980 (2 * (n + 1)) + A230980 (n + 1)).toNat

end

end A347694.P270432343827583316

namespace A347694

/-- `A001751(A230980(2*(n+1))+A230980(n+1))` -/
def P270432343827583316.Spec : Prop :=
  ∀ n, P270432343827583316.a n = A347694 (n + 1)

end A347694

/-!
# A347695: Primes p such that the prime ideal J(p) is not principal, determined by using a quadratic or biquadratic subfield of Q(zeta_{p-1}).

The programs for A347695, there is no canonical definition to state claims against.
-/

/-! ## A347695.P1278248657920971450

`A335139(A066085(n+2))`
-/

namespace A347695.P1278248657920971450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335139 (A066085 (n + 2)).toNat

end

end A347695.P1278248657920971450

/-!
# A347696: Length of longest sequence of directed edges in the graph G (see Comments) that starts at node n.

The programs for A347696, there is no canonical definition to state claims against.
-/

/-! ## A347696.P17917867598854148603

`A335885(A329886(n)/A001316(n))`
-/

namespace A347696.P17917867598854148603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (SequenceMachineLib.roundAway ((A329886 n : ℚ) / (A001316 n : ℚ))).toNat

end

end A347696.P17917867598854148603

/-! ## A347696.P2912889733933152681

`A335885(A329886(n)/A040000(n))`
-/

namespace A347696.P2912889733933152681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (SequenceMachineLib.roundAway ((A329886 n : ℚ) / (A040000 n : ℚ))).toNat

end

end A347696.P2912889733933152681

/-! ## A347696.P8864279860705636395

`A335885(A329886(n)/A060632(n))`
-/

namespace A347696.P8864279860705636395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (SequenceMachineLib.roundAway ((A329886 n : ℚ) / (A060632 n : ℚ))).toNat

end

end A347696.P8864279860705636395

/-! ## A347696.P5643695601179802191

`A335885(ratio[A035214(n)]*A329886(n))`
-/

namespace A347696.P5643695601179802191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A329886 n : ℚ))).toNat

end

end A347696.P5643695601179802191

/-! ## A347696.P15741979428860634936

`A335885(A329886(n))`
-/

namespace A347696.P15741979428860634936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A329886 n).toNat

end

end A347696.P15741979428860634936

/-!
# A347697: a(n) = max_{k <= n} A347696(k).

The programs for A347697, the canonical program `A347697.P9868901146358314070` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347697 has offset 0).

The definition of A347697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347697.P1458834353808745493

`∑[char[∑[∑[2*T(n-1,k-1)]+1]]]` with `a(0)=1`
-/

namespace A347697.P1458834353808745493
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f4 =>
  2 * SequenceMachineLib.triUpLeft f4 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347697.P1458834353808745493

namespace A347697

/-- `∑[char[∑[∑[2*T(n-1,k-1)]+1]]]` -/
def P1458834353808745493.Spec : Prop :=
  ∀ n, (P1458834353808745493.a n : ℤ) = A347697 n

end A347697

/-! ## A347697.P9868901146358314070

`∑[char[∑[A137688(n+1)]]]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A347697

/-- `∑[char[∑[A137688(n+1)]]]` -/
def P9868901146358314070.Spec : Prop :=
  ∀ n, (P9868901146358314070.a n : ℤ) = A347697 n

theorem P9868901146358314070.correct : P9868901146358314070.Spec := by
  intro n
  simp only [A347697]

end A347697

/-! ## A347697.P9259775996155330666

`∑[char[A007664(n+2)-1]]`
-/

namespace A347697.P9259775996155330666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347697.P9259775996155330666

namespace A347697

/-- `∑[char[A007664(n+2)-1]]` -/
def P9259775996155330666.Spec : Prop :=
  ∀ n, (P9259775996155330666.a n : ℤ) = A347697 n

end A347697

/-! ## A347697.P9436447023404185275

`∑[char[A007664(n)-1]]-1`
-/

namespace A347697.P9436447023404185275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A347697.P9436447023404185275

namespace A347697

/-- `∑[char[A007664(n)-1]]-1` -/
def P9436447023404185275.Spec : Prop :=
  ∀ n, P9436447023404185275.a n = A347697 n

end A347697

/-! ## A347697.P7035434976237573831

`∑[char[2*A118416(n+1)]]`
-/

namespace A347697.P7035434976237573831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118416 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347697.P7035434976237573831

namespace A347697

/-- `∑[char[2*A118416(n+1)]]` -/
def P7035434976237573831.Spec : Prop :=
  ∀ n, (P7035434976237573831.a n : ℤ) = A347697 n

end A347697

/-! ## A347697.P460423954975974156

`∑[char[A118416(A014132(n+1))]]`
-/

namespace A347697.P460423954975974156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118416 (A014132 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347697.P460423954975974156

namespace A347697

/-- `∑[char[A118416(A014132(n+1))]]` -/
def P460423954975974156.Spec : Prop :=
  ∀ n, (P460423954975974156.a n : ℤ) = A347697 n

end A347697

/-! ## A347697.P1937829724659188070

`∑[char[A099375(n)*A140513(n)]]`
-/

namespace A347697.P1937829724659188070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n * A140513 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347697.P1937829724659188070

namespace A347697

/-- `∑[char[A099375(n)*A140513(n)]]` -/
def P1937829724659188070.Spec : Prop :=
  ∀ n, (P1937829724659188070.a n : ℤ) = A347697 n

end A347697

/-! ## A347697.P9782314036317081477

`∑[char[A317440(A118416(n+1))]]`
-/

namespace A347697.P9782314036317081477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (A118416 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347697.P9782314036317081477

namespace A347697

/-- `∑[char[A317440(A118416(n+1))]]` -/
def P9782314036317081477.Spec : Prop :=
  ∀ n, (P9782314036317081477.a n : ℤ) = A347697 n

end A347697

/-! ## A347697.P14379794498604370746

`A003056(A011371(n)%A096182(n+1))`
-/

namespace A347697.P14379794498604370746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A011371 n) (A096182 (n + 1))).toNat

end

end A347697.P14379794498604370746

namespace A347697

/-- `A003056(A011371(n)%A096182(n+1))` -/
def P14379794498604370746.Spec : Prop :=
  ∀ n, P14379794498604370746.a n = A347697 n

end A347697

/-!
# A347698: a(n) = n - A337125(n).

The programs for A347698, there is no canonical definition to state claims against.
-/

/-! ## A347698.P17770517752955501956

`n+1-A337125(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347698.P17770517752955501956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A337125 (n + 1)

end

end A347698.P17770517752955501956

/-! ## A347698.P13729740341117679183

`A024000(A337125(n+1))+n`
-/

namespace A347698.P13729740341117679183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A337125 (n + 1)).toNat + (n : ℤ)

end

end A347698.P13729740341117679183

/-! ## A347698.P9211229920572946420

`(n+1)%A337125(A000027(n+1))`
-/

namespace A347698.P9211229920572946420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A337125 (A000027 (n + 1)).toNat)

end

end A347698.P9211229920572946420

/-! ## A347698.P3427281250565544375

`A060401(n+1)%A337125(n+1)`
-/

namespace A347698.P3427281250565544375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A337125 (n + 1))

end

end A347698.P3427281250565544375

/-! ## A347698.P9233657163353680319

`A069782(n+1)%A337125(n+1)`
-/

namespace A347698.P9233657163353680319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069782 (n + 1)) (A337125 (n + 1))

end

end A347698.P9233657163353680319

/-! ## A347698.P5576879799887939496

`A087156(n+1)%A337125(n+1)`
-/

namespace A347698.P5576879799887939496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (n + 1)) (A337125 (n + 1))

end

end A347698.P5576879799887939496

/-!
# A347699: Triangle read by rows: For n >= 1, 0 <= k <= n-1, T(n,k) = 0 if k=0, otherwise the number of inequivalent k X (n-k) 0,1 matrices having at least one 1 in each column.

The programs for A347699, there is no canonical definition to state claims against.
-/

/-! ## A347699.P16146908225548824629

`A055080(C(2, n)+n)`
-/

namespace A347699.P16146908225548824629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (Nat.choose 2 n + n)

end

end A347699.P16146908225548824629

/-! ## A347699.P9873192232721781354

`A055080(gcd(n, C(2, n)))`
-/

namespace A347699.P9873192232721781354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (Nat.gcd n (Nat.choose 2 n))

end

end A347699.P9873192232721781354

/-! ## A347699.P3563530368914270378

`A055080(char[∑[n]]+n)`
-/

namespace A347699.P3563530368914270378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A347699.P3563530368914270378

/-! ## A347699.P4770690378646446502

`A055080(round(acot(n)+n))%52`
-/

namespace A347699.P4770690378646446502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055080 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) 52

end

end A347699.P4770690378646446502

/-! ## A347699.P4723295693352719643

`A055080(n)/a(n%2)` with `a(0)=1, a(1)=1`
-/

namespace A347699.P4723295693352719643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A055080 n : ℚ) / a (n % 2)

end

end A347699.P4723295693352719643

