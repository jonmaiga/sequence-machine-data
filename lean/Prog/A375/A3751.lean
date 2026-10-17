import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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

/-!
# A375101: a(0) = 1; a(n+1) = 10*a(n) + A010888(a(n)), where A010888 = digital root.

The programs for A375101, the canonical program `A375101.P13084328984688794402` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375101 has offset 0).

The definition of A375101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375101.P13084328984688794402

`dr(a(n-1))+10*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A375101

/-- `dr(a(n-1))+10*a(n-1)` -/
def P13084328984688794402.Spec : Prop :=
  ∀ n, (P13084328984688794402.a n : ℤ) = A375101 n

theorem P13084328984688794402.correct : P13084328984688794402.Spec := by
  intro n
  simp only [A375101]

end A375101

/-!
# A375105: a(n) = (2*n)^(n-2)*(2*n)!/n!.

The programs for A375105, there is no canonical definition to state claims against.
-/

/-! ## A375105.P3966313998492463651

`A069720(n+1)*A152684(n+1)`
-/

namespace A375105.P3966313998492463651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069720 (n + 1) * A152684 (n + 1)

end

end A375105.P3966313998492463651

/-!
# A375106: Expansion of Sum_{k in Z} x^k / (1 - x^(7*k+3)).

The programs for A375106, there is no canonical definition to state claims against.
-/

/-! ## A375106.P7559096786302579084

`A363851(n+1)-A363856(n+1)`
-/

namespace A375106.P7559096786302579084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363851 (n + 1) - A363856 (n + 1)

end

end A375106.P7559096786302579084

/-! ## A375106.P7931396857461908916

`A010872(A195849(n)^3)`
-/

namespace A375106.P7931396857461908916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A195849 n ^ 3).toNat

end

end A375106.P7931396857461908916

/-! ## A375106.P10013375654972542773

`A195849(n)%A112046(A070875(n+3))`
-/

namespace A375106.P10013375654972542773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195849 n) (A112046 (A070875 (n + 3)).toNat)

end

end A375106.P10013375654972542773

/-! ## A375106.P13155938979927815097

`A379552(∑[(2*n)²+2]+4)%3`
-/

namespace A375106.P13155938979927815097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379552 (∑ j ∈ Finset.range (n + 1), f1 j + 4)) 3

end

end A375106.P13155938979927815097

/-! ## A375106.P8531100429284325513

`C(A061704(A055389(n)), A061704(n+1))`
-/

namespace A375106.P8531100429284325513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061704 (A055389 n).toNat).toNat (A061704 (n + 1)).toNat

end

end A375106.P8531100429284325513

/-!
# A375107: Expansion of Sum_{k in Z} x^(2*k) / (1 - x^(7*k+3)).

The programs for A375107, there is no canonical definition to state claims against.
-/

/-! ## A375107.P16653102152346914502

`A363859(n+1)-A363860(n+1)`
-/

namespace A375107.P16653102152346914502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363859 (n + 1) - A363860 (n + 1)

end

end A375107.P16653102152346914502

/-! ## A375107.P4813910767793660632

`A318370(A054040(n+2))+A057428(n)`
-/

namespace A375107.P4813910767793660632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318370 (A054040 (n + 2)).toNat + A057428 n

end

end A375107.P4813910767793660632

/-! ## A375107.P3576199553852123812

`A067255(2*(n+1))-A342753(A001358(2*(n+1)))`
-/

namespace A375107.P3576199553852123812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067255 (2 * (n + 1)) - A342753 (A001358 (2 * (n + 1))).toNat

end

end A375107.P3576199553852123812

/-!
# A375108: Expansion of Sum_{k in Z} x^(3*k) / (1 - x^(7*k+3)).

The programs for A375108, the canonical program `A375108.P7246935247640333009` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375108 has offset 0).

The definition of A375108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375108.P7246935247640333009

`A363887(n+2)-A363888(n+2)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A375108

/-- `A363887(n+2)-A363888(n+2)` -/
def P7246935247640333009.Spec : Prop :=
  ∀ n, P7246935247640333009.a n = A375108 n

theorem P7246935247640333009.correct : P7246935247640333009.Spec := by
  intro n
  simp only [A375108]

end A375108

/-!
# A375109: Number of distinct products i*j with 1 <= i, j <= n which are not the sum of two numbers between 1 and n.

The programs for A375109, there is no canonical definition to state claims against.
-/

/-! ## A375109.P4689317462551853630

`A373716(n+1)+A108954(n+1)`
-/

namespace A375109.P4689317462551853630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373716 (n + 1) + A108954 (n + 1)

end

end A375109.P4689317462551853630

/-! ## A375109.P1198107993601312956

`A263995(n+1)-Δ[n²]`
-/

namespace A375109.P1198107993601312956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263995 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A375109.P1198107993601312956

/-! ## A375109.P3397650774227977819

`abs(A263995(n+1)-A005408(n))`
-/

namespace A375109.P3397650774227977819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A263995 (n + 1) - A005408 n|

end

end A375109.P3397650774227977819

/-! ## A375109.P10759129389991582862

`A263995(n+1)-A000027(n+1)-n`
-/

namespace A375109.P10759129389991582862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263995 (n + 1) - A000027 (n + 1) - (n : ℤ)

end

end A375109.P10759129389991582862

/-! ## A375109.P9075749514765883818

`A263995(n+1)-A057427(2*n+1)-2*n`
-/

namespace A375109.P9075749514765883818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263995 (n + 1) - A057427 (2 * n + 1) - (2 * n : ℤ)

end

end A375109.P9075749514765883818

/-!
# A375111: a(n) = A375110(n) mod A375110(n+1).

The programs for A375111, there is no canonical definition to state claims against.
-/

/-! ## A375111.P7350744392425531236

`A375110(n+1)%A375110(n+2)`
-/

namespace A375111.P7350744392425531236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375110 (n + 1)) (A375110 (n + 2))

end

end A375111.P7350744392425531236

/-! ## A375111.P3043385563994385316

`A002262(A375113(n+1)-1)`
-/

namespace A375111.P3043385563994385316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A375113 (n + 1) - 1).toNat

end

end A375111.P3043385563994385316

/-! ## A375111.P9664922156658036976

`A227189(A220125(n+1))`
-/

namespace A375111.P9664922156658036976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227189 (A220125 (n + 1)).toNat

end

end A375111.P9664922156658036976

/-! ## A375111.P13930710687401925579

`and(A022559(A225546(n+1)), A185283(n))`
-/

namespace A375111.P13930710687401925579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022559 (A225546 (n + 1)).toNat) (A185283 n)

end

end A375111.P13930710687401925579

/-! ## A375111.P13969598028040981232

`A119427(A319794(n))%A104413(3*n+7)`
-/

namespace A375111.P13969598028040981232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119427 (A319794 n).toNat) (A104413 (3 * n + 7))

end

end A375111.P13969598028040981232

/-!
# A375114: Lexicographically earliest sequence of positive integers such that the pairs (gcd(a(n), a(n+1)), a(n+1)) are all distinct.

The programs for A375114, there is no canonical definition to state claims against.
-/

/-! ## A375114.P18095415352080125235

`A015748(A212804(n))+A004526(n)`
-/

namespace A375114.P18095415352080125235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015748 (A212804 n).toNat + A004526 n

end

end A375114.P18095415352080125235

/-! ## A375114.P17011680498520189478

`A334968(A224956(n)-A325768(n))`
-/

namespace A375114.P17011680498520189478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334968 (A224956 n - A325768 n).toNat

end

end A375114.P17011680498520189478

/-!
# A375115: Lexicographically earliest sequence of positive integers such that the pairs (a(n) AND a(n+1), a(n+1)) are all distinct (where AND denotes the bitwise AND operator).

The programs for A375115, there is no canonical definition to state claims against.
-/

/-! ## A375115.P13707771628980048837

`A109129(A030427(n+1)-A117958(n))`
-/

namespace A375115.P13707771628980048837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A030427 (n + 1) - A117958 n).toNat

end

end A375115.P13707771628980048837

/-! ## A375115.P16869992821774423686

`A056239(n+1)-A127245(A276085(n+2))`
-/

namespace A375115.P16869992821774423686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A127245 (A276085 (n + 2)).toNat

end

end A375115.P16869992821774423686

/-!
# A375116: Maximum number of squares covered (i.e., attacked) by 3 independent (i.e., nonattacking) queens on an n X n chessboard.

The programs for A375116, there is no canonical definition to state claims against.
-/

/-! ## A375116.P12359501434025036856

`A376732(A167614(n+2))`
-/

namespace A375116.P12359501434025036856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376732 (A167614 (n + 2)).toNat

end

end A375116.P12359501434025036856

/-! ## A375116.P604005476529419125

`A376732(A340266(n+2)+1)`
-/

namespace A375116.P604005476529419125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376732 (A340266 (n + 2) + 1).toNat

end

end A375116.P604005476529419125

/-! ## A375116.P2159186827248933314

`A376732(A000124(n+3)+2)`
-/

namespace A375116.P2159186827248933314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376732 (A000124 (n + 3) + 2).toNat

end

end A375116.P2159186827248933314

/-! ## A375116.P17560478643309875584

`A376732(A000217(n+4)-(n+1))`
-/

namespace A375116.P17560478643309875584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376732 (A000217 (n + 4) - (n + 1 : ℤ)).toNat

end

end A375116.P17560478643309875584

/-! ## A375116.P16576506732874606046

`A376732(A008585(n+3)+A000217(n))`
-/

namespace A375116.P16576506732874606046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376732 (A008585 (n + 3) + A000217 n).toNat

end

end A375116.P16576506732874606046

/-!
# A375120: Number of complete binary unordered tree-factorizations of n.

The programs for A375120, there is no canonical definition to state claims against.
-/

/-! ## A375120.P2759215572099938998

`A085201(A369713(n+1))`
-/

namespace A375120.P2759215572099938998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085201 (A369713 (n + 1)).toNat

end

end A375120.P2759215572099938998

/-! ## A375120.P8030849495152805957

`A364185(A140773(n+1)%A322336(n+1))`
-/

namespace A375120.P8030849495152805957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364185 (Int.tmod (A140773 (n + 1)) (A322336 (n + 1))).toNat

end

end A375120.P8030849495152805957

/-! ## A375120.P2682250906262831330

`A000930(A294904(n+1)%A107452(n+2))`
-/

namespace A375120.P2682250906262831330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (Int.tmod (A294904 (n + 1)) (A107452 (n + 2))).toNat

end

end A375120.P2682250906262831330

/-! ## A375120.P9589846643170647497

`A000930(A294904(n+1))%A291067(n+2)`
-/

namespace A375120.P9589846643170647497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000930 (A294904 (n + 1)).toNat) (A291067 (n + 2))

end

end A375120.P9589846643170647497

/-! ## A375120.P10954778622849418182

`A045778(3^A335434(n+1))`
-/

namespace A375120.P10954778622849418182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A335434 (n + 1) : ℤ))).toNat

end

end A375120.P10954778622849418182

/-!
# A375121: Number of odd reduced Latin squares of order n.

The programs for A375121, there is no canonical definition to state claims against.
-/

/-! ## A375121.P18261309471154940470

`A000315(n+1)-A375141(n+1)`
-/

namespace A375121.P18261309471154940470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000315 (n + 1) - A375141 (n + 1)

end

end A375121.P18261309471154940470

/-! ## A375121.P14896266286304661900

`A001009(∑[n+1])-A375141(n+1)`
-/

namespace A375121.P14896266286304661900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001009 (∑ j ∈ Finset.range (n + 1), f1 j) - A375141 (n + 1)

end

end A375121.P14896266286304661900

/-! ## A375121.P15942255839528836820

`A057997(n+1)/(n+1)-A375141(n+1)`
-/

namespace A375121.P15942255839528836820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057997 (n + 1) : ℚ) / (n + 1 : ℚ) - (A375141 (n + 1) : ℚ)

end

end A375121.P15942255839528836820

/-!
# A375123: Weakly increasing run-leader transformation for standard compositions.

The programs for A375123, there is no canonical definition to state claims against.
-/

/-! ## A375123.P17811702268806821096

`A375125(A373948(n))`
-/

namespace A375123.P17811702268806821096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375125 (A373948 n).toNat

end

end A375123.P17811702268806821096

/-! ## A375123.P7832906599600820926

`gcd(n%A001223(A230551(n+1)), A124760(n))`
-/

namespace A375123.P7832906599600820926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (n : ℤ) (A001223 (A230551 (n + 1)).toNat)) (A124760 n)

end

end A375123.P7832906599600820926

/-! ## A375123.P18024066629470924516

`A373948(C(n, A033630(n)))`
-/

namespace A375123.P18024066629470924516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373948 (Nat.choose n (A033630 n).toNat)

end

end A375123.P18024066629470924516

/-! ## A375123.P13034031827720900475

`A000578(A177932(n+1))%(n+1)`
-/

namespace A375123.P13034031827720900475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (A177932 (n + 1)).toNat) (n + 1 : ℤ)

end

end A375123.P13034031827720900475

/-! ## A375123.P4261815910479596119

`A356147(A011827(n+1))%(n+1)`
-/

namespace A375123.P4261815910479596119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356147 (A011827 (n + 1)).toNat) (n + 1 : ℤ)

end

end A375123.P4261815910479596119

/-!
# A375124: Weakly decreasing run-leader transformation for standard compositions.

The programs for A375124, there is no canonical definition to state claims against.
-/

/-! ## A375124.P11958582225585891350

`A375126(A373948(n))`
-/

namespace A375124.P11958582225585891350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375126 (A373948 n).toNat

end

end A375124.P11958582225585891350

/-! ## A375124.P17451614776184034169

`A322250(n+1)%A007953(A199932(n+1))`
-/

namespace A375124.P17451614776184034169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322250 (n + 1)) (A007953 (A199932 (n + 1)).toNat)

end

end A375124.P17451614776184034169

/-! ## A375124.P1804493422785890909

`A373948(lcm(∏{p}[n+1, 1-#], A373948(n)))`
-/

namespace A375124.P1804493422785890909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373948 (Int.lcm (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) (A373948 n))

end

end A375124.P1804493422785890909

/-! ## A375124.P1302058227434045300

`A327076(n+1)-A350388(A289526(n))`
-/

namespace A375124.P1302058227434045300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (n + 1) - A350388 (A289526 n).toNat

end

end A375124.P1302058227434045300

/-! ## A375124.P12810657356038900821

`A373948(A143201(n+1)*A373948(n))`
-/

namespace A375124.P12810657356038900821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373948 (A143201 (n + 1) * A373948 n).toNat

end

end A375124.P12810657356038900821

/-!
# A375126: Strictly decreasing run-leader transformation for standard compositions.

The programs for A375126, there is no canonical definition to state claims against.
-/

/-! ## A375126.P11444884758142875403

`A295126(n+1)-A003557(A177735(n))`
-/

namespace A375126.P11444884758142875403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 (n + 1) - A003557 (A177735 n).toNat

end

end A375126.P11444884758142875403

/-! ## A375126.P2725499140222363138

`A295126(n+1)-A158388(A327265(n))`
-/

namespace A375126.P2725499140222363138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 (n + 1) - A158388 (A327265 n).toNat

end

end A375126.P2725499140222363138

/-! ## A375126.P8103624303558723756

`A295126(n+1)+A057428(A039828(n+2))`
-/

namespace A375126.P8103624303558723756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 (n + 1) + A057428 (A039828 (n + 2)).toNat

end

end A375126.P8103624303558723756

/-! ## A375126.P4470992084153000260

`A295126(n+1)-A158388(A094144(n+1))`
-/

namespace A375126.P4470992084153000260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 (n + 1) - A158388 (A094144 (n + 1)).toNat

end

end A375126.P4470992084153000260

/-!
# A375127: The anti-run-leader transformation for standard compositions.

The programs for A375127, there is no canonical definition to state claims against.
-/

/-! ## A375127.P1032407959409933922

`A375125(A375126(n))%A018884(n+3)`
-/

namespace A375127.P1032407959409933922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375125 (A375126 n).toNat) (A018884 (n + 3))

end

end A375127.P1032407959409933922

/-! ## A375127.P6798183734667791371

`A375125(A375126(n)%A374638(3*(n+1)))`
-/

namespace A375127.P6798183734667791371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375125 (Int.tmod (A375126 n) (A374638 (3 * (n + 1)))).toNat

end

end A375127.P6798183734667791371

/-! ## A375127.P12028664473633513272

`A375125(A375126(n)%A001771(n+1))`
-/

namespace A375127.P12028664473633513272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375125 (Int.tmod (A375126 n) (A001771 (n + 1))).toNat

end

end A375127.P12028664473633513272

/-! ## A375127.P12274264703596126724

`A375125(A375126(n)%A327265(n))`
-/

namespace A375127.P12274264703596126724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375125 (Int.tmod (A375126 n) (A327265 n)).toNat

end

end A375127.P12274264703596126724

/-! ## A375127.P11897416721229508023

`A375125(A375126(n)+A348800(n))`
-/

namespace A375127.P11897416721229508023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375125 (A375126 n + A348800 n).toNat

end

end A375127.P11897416721229508023

/-!
# A375128: Irregular triangle read by rows where row n lists the minima of maximal strictly increasing runs in the weakly increasing prime indices of n.

The programs for A375128, there is no canonical definition to state claims against.
-/

/-! ## A375128.P5300466603884382255

`A055396(A000040(n+5)*A128651(n+2))`
-/

namespace A375128.P5300466603884382255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A000040 (n + 5) * A128651 (n + 2)).toNat

end

end A375128.P5300466603884382255

/-! ## A375128.P8665534993808727112

`A055396(A001132(n+1)*A128651(n+2))`
-/

namespace A375128.P8665534993808727112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A001132 (n + 1) * A128651 (n + 2)).toNat

end

end A375128.P8665534993808727112

/-! ## A375128.P13066888578344982389

`A055396(A088878(n+1)*A128651(n+2))`
-/

namespace A375128.P13066888578344982389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A088878 (n + 1) * A128651 (n + 2)).toNat

end

end A375128.P13066888578344982389

/-! ## A375128.P5123641954391448980

`A055396(A128651(n+2)*A128653(n+1))`
-/

namespace A375128.P5123641954391448980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A128651 (n + 2) * A128653 (n + 1)).toNat

end

end A375128.P5123641954391448980

/-! ## A375128.P17489644532694647360

`gcd(A371130(A371130(n+3)), A381436(n+1))`
-/

namespace A375128.P17489644532694647360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A371130 (A371130 (n + 3)).toNat) (A381436 (n + 1))

end

end A375128.P17489644532694647360

/-!
# A375129: Number of combinatorially distinct ways to dissect a rectangle into n rectangles, taking into account the ordering of the lines that extend the sides.

The programs for A375129, there is no canonical definition to state claims against.
-/

/-! ## A375129.P8967562366112546916

`A339218(A119330(n))+A000142(n)`
-/

namespace A375129.P8967562366112546916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339218 (A119330 n).toNat + A000142 n

end

end A375129.P8967562366112546916

/-! ## A375129.P7888227918274433383

`A075989(A081032(n+1)+A000255(n))`
-/

namespace A375129.P7888227918274433383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075989 (A081032 (n + 1) + A000255 n).toNat

end

end A375129.P7888227918274433383

/-! ## A375129.P8199621231857424636

`A205725(3*n+2)+A054898(A007446(n))`
-/

namespace A375129.P8199621231857424636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205725 (3 * n + 2) + A054898 (A007446 n).toNat

end

end A375129.P8199621231857424636

/-!
# A375130: Number of nonaligned dissections of a rectangle into n rectangles.

The programs for A375130, there is no canonical definition to state claims against.
-/

/-! ## A375130.P14935054170827883435

`or(A197433(n), A222758(A000142(n)))`
-/

namespace A375130.P14935054170827883435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A197433 n) (A222758 (A000142 n).toNat)

end

end A375130.P14935054170827883435

/-! ## A375130.P4018091368322679570

`or(A230295(A001426(n)), A280937(n))`
-/

namespace A375130.P4018091368322679570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A230295 (A001426 n).toNat) (A280937 n)

end

end A375130.P4018091368322679570

/-! ## A375130.P5727858923717643508

`or(A038119(n+1), A332296(A332296(n)))`
-/

namespace A375130.P5727858923717643508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038119 (n + 1)) (A332296 (A332296 n).toNat)

end

end A375130.P5727858923717643508

/-!
# A375131: Number of trivalent dissections of a rectangle into n rectangles.

The programs for A375131, there is no canonical definition to state claims against.
-/

/-! ## A375131.P15497612519261489672

`A000142(n)-A233864(A221409(n))`
-/

namespace A375131.P15497612519261489672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A233864 (A221409 n).toNat

end

end A375131.P15497612519261489672

/-! ## A375131.P5336296238230664144

`A000142(n)-A088526(A174702(n+1))`
-/

namespace A375131.P5336296238230664144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A088526 (A174702 (n + 1)).toNat

end

end A375131.P5336296238230664144

/-! ## A375131.P8699730355237302075

`A360462(n)-A088526(A174702(n+1))`
-/

namespace A375131.P8699730355237302075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360462 n - A088526 (A174702 (n + 1)).toNat

end

end A375131.P8699730355237302075

/-!
# A375132: Number of nonaligned trivalent dissections of a rectangle into n rectangles.

The programs for A375132, there is no canonical definition to state claims against.
-/

/-! ## A375132.P14769234129896386870

`A189663(A072774(n+1)+A004211(n))`
-/

namespace A375132.P14769234129896386870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A072774 (n + 1) + A004211 n).toNat

end

end A375132.P14769234129896386870

/-! ## A375132.P9167270455996774916

`A189663(A327453(n+1)+A004211(n))`
-/

namespace A375132.P9167270455996774916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A327453 (n + 1) + A004211 n).toNat

end

end A375132.P9167270455996774916

/-!
# A375133: Number of integer partitions of n whose maximal anti-runs have distinct maxima.

The programs for A375133, there is no canonical definition to state claims against.
-/

/-! ## A375133.P14530201251946857129

`A000041(n)-A375401(n)`
-/

namespace A375133.P14530201251946857129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A375401 n

end

end A375133.P14530201251946857129

/-! ## A375133.P7698970907171787290

`A213598(n)-A375401(n)`
-/

namespace A375133.P7698970907171787290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A375401 n

end

end A375133.P7698970907171787290

/-! ## A375133.P13236634548520597670

`∑[A002865(n)]-A375401(n)`
-/

namespace A375133.P13236634548520597670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A375401 n

end

end A375133.P13236634548520597670

/-! ## A375133.P10327629011357506871

`A375134(n)+A375404(n)-A375401(n)`
-/

namespace A375133.P10327629011357506871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375134 n + (A375404 n - A375401 n)

end

end A375133.P10327629011357506871

/-! ## A375133.P6164140611896920879

`A273190(A161993(n))`
-/

namespace A375133.P6164140611896920879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A161993 n).toNat

end

end A375133.P6164140611896920879

/-!
# A375134: Number of integer partitions of n whose maximal anti-runs have distinct minima.

The programs for A375134, there is no canonical definition to state claims against.
-/

/-! ## A375134.P2907765146196350543

`A000041(n)-A375404(n)`
-/

namespace A375134.P2907765146196350543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A375404 n

end

end A375134.P2907765146196350543

/-! ## A375134.P6019813589216991612

`A213598(n)-A375404(n)`
-/

namespace A375134.P6019813589216991612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A375404 n

end

end A375134.P6019813589216991612

/-! ## A375134.P1135609143572253282

`A001055(A000079(n))-A375404(n)`
-/

namespace A375134.P1135609143572253282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A000079 n).toNat - A375404 n

end

end A375134.P1135609143572253282

/-!
# A375135: Number of integer compositions of n whose leaders of maximal strictly increasing runs are not weakly decreasing.

The programs for A375135, there is no canonical definition to state claims against.
-/

/-! ## A375135.P9384143147395070480

`A011782(n)-A374697(n)`
-/

namespace A375135.P9384143147395070480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A374697 n

end

end A375135.P9384143147395070480

/-! ## A375135.P1845968558481909783

`A039991(∑[n])-A374697(n)`
-/

namespace A375135.P1845968558481909783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (∑ j ∈ Finset.range (n + 1), f1 j) - A374697 n

end

end A375135.P1845968558481909783

/-! ## A375135.P16238096563418763719

`A189076(n)+A374636(n)-A374697(n)`
-/

namespace A375135.P16238096563418763719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189076 n + (A374636 n - A374697 n)

end

end A375135.P16238096563418763719

/-! ## A375135.P16496104841240641360

`A000010(A000079(n))-A374697(n)`
-/

namespace A375135.P16496104841240641360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 n).toNat - A374697 n

end

end A375135.P16496104841240641360

/-! ## A375135.P421396800439246831

`A000010(A060546(2*n))-A374697(n)`
-/

namespace A375135.P421396800439246831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A060546 (2 * n)).toNat - A374697 n

end

end A375135.P421396800439246831

/-!
# A375136: Number of maximal strictly increasing runs in the weakly increasing prime factors of n.

The programs for A375136, the canonical program `A375136.P12794075087779853218` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375136 has offset 1).

The definition of A375136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375136.P12794075087779853218

`∑{e}[A217434(n+1), #]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A375136

/-- `∑{e}[A217434(n+1), #]` -/
def P12794075087779853218.Spec : Prop :=
  ∀ n, (P12794075087779853218.a n : ℤ) = A375136 (n + 1)

theorem P12794075087779853218.correct : P12794075087779853218.Spec := by
  intro n
  simp only [A375136, Nat.add_sub_cancel]

end A375136

/-! ## A375136.P3528469501623561355

`A001222(A217434(n+1))`
-/

namespace A375136.P3528469501623561355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A217434 (n + 1)).toNat

end

end A375136.P3528469501623561355

namespace A375136

/-- `A001222(A217434(n+1))` -/
def P3528469501623561355.Spec : Prop :=
  ∀ n, P3528469501623561355.a n = A375136 (n + 1)

end A375136

/-! ## A375136.P1196704756170607769

`A057427(n)+A046660(n+1)`
-/

namespace A375136.P1196704756170607769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A046660 (n + 1)

end

end A375136.P1196704756170607769

namespace A375136

/-- `A057427(n)+A046660(n+1)` -/
def P1196704756170607769.Spec : Prop :=
  ∀ n, P1196704756170607769.a n = A375136 (n + 1)

end A375136

/-! ## A375136.P16842045082783998366

`A046660(n+1)-A057428(n)`
-/

namespace A375136.P16842045082783998366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) - A057428 n

end

end A375136.P16842045082783998366

namespace A375136

/-- `A046660(n+1)-A057428(n)` -/
def P16842045082783998366.Spec : Prop :=
  ∀ n, P16842045082783998366.a n = A375136 (n + 1)

end A375136

/-! ## A375136.P12250722523515278924

`A046660(n+1)+1-A000007(n)`
-/

namespace A375136.P12250722523515278924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) + (1 - A000007 n)

end

end A375136.P12250722523515278924

namespace A375136

/-- `A046660(n+1)+1-A000007(n)` -/
def P12250722523515278924.Spec : Prop :=
  ∀ n, P12250722523515278924.a n = A375136 (n + 1)

end A375136

/-! ## A375136.P10398522023518523771

`A001222(n+1)-A297155(n+1)`
-/

namespace A375136.P10398522023518523771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A297155 (n + 1)

end

end A375136.P10398522023518523771

namespace A375136

/-- `A001222(n+1)-A297155(n+1)` -/
def P10398522023518523771.Spec : Prop :=
  ∀ n, P10398522023518523771.a n = A375136 (n + 1)

end A375136

/-! ## A375136.P1294409138188927962

`A113901(n+1)%A073093(n+1)`
-/

namespace A375136.P1294409138188927962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113901 (n + 1)) (A073093 (n + 1))

end

end A375136.P1294409138188927962

namespace A375136

/-- `A113901(n+1)%A073093(n+1)` -/
def P1294409138188927962.Spec : Prop :=
  ∀ n, P1294409138188927962.a n = A375136 (n + 1)

end A375136

/-! ## A375136.P15816270416583488899

`A046660(n+1)+n/A028310(n)`
-/

namespace A375136.P15816270416583488899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046660 (n + 1) : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A375136.P15816270416583488899

namespace A375136

/-- `A046660(n+1)+n/A028310(n)` -/
def P15816270416583488899.Spec : Prop :=
  ∀ n, P15816270416583488899.a n = (A375136 (n + 1) : ℚ)

end A375136

/-! ## A375136.P5799837003700292741

`A046660(n+1)+A001221(A020639(n+1))`
-/

namespace A375136.P5799837003700292741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) + A001221 (A020639 (n + 1)).toNat

end

end A375136.P5799837003700292741

namespace A375136

/-- `A046660(n+1)+A001221(A020639(n+1))` -/
def P5799837003700292741.Spec : Prop :=
  ∀ n, P5799837003700292741.a n = A375136 (n + 1)

end A375136

/-! ## A375136.P2390450029871451921

`A051903(A007947(n+1))+A046660(n+1)`
-/

namespace A375136.P2390450029871451921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A007947 (n + 1)).toNat + A046660 (n + 1)

end

end A375136.P2390450029871451921

namespace A375136

/-- `A051903(A007947(n+1))+A046660(n+1)` -/
def P2390450029871451921.Spec : Prop :=
  ∀ n, P2390450029871451921.a n = A375136 (n + 1)

end A375136

/-! ## A375136.P8922358723060868468

`A046660(n+1)+A001221(A061142(n+1))`
-/

namespace A375136.P8922358723060868468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) + A001221 (A061142 (n + 1)).toNat

end

end A375136.P8922358723060868468

namespace A375136

/-- `A046660(n+1)+A001221(A061142(n+1))` -/
def P8922358723060868468.Spec : Prop :=
  ∀ n, P8922358723060868468.a n = A375136 (n + 1)

end A375136

/-! ## A375136.P4353334007273094279

`A001222(n+1)-A070824(A034444(n+1))`
-/

namespace A375136.P4353334007273094279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A070824 (A034444 (n + 1)).toNat

end

end A375136.P4353334007273094279

namespace A375136

/-- `A001222(n+1)-A070824(A034444(n+1))` -/
def P4353334007273094279.Spec : Prop :=
  ∀ n, P4353334007273094279.a n = A375136 (n + 1)

end A375136

/-! ## A375136.P18344872546370281950

`A001222(A003557(n+1)*A006530(n+1))`
-/

namespace A375136.P18344872546370281950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003557 (n + 1) * A006530 (n + 1)).toNat

end

end A375136.P18344872546370281950

namespace A375136

/-- `A001222(A003557(n+1)*A006530(n+1))` -/
def P18344872546370281950.Spec : Prop :=
  ∀ n, P18344872546370281950.a n = A375136 (n + 1)

end A375136

/-! ## A375136.P6473321497247636051

`A062977(2*A124508(n+1))`
-/

namespace A375136.P6473321497247636051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (2 * A124508 (n + 1)).toNat

end

end A375136.P6473321497247636051

namespace A375136

/-- `A062977(2*A124508(n+1))` -/
def P6473321497247636051.Spec : Prop :=
  ∀ n, P6473321497247636051.a n = A375136 (n + 1)

end A375136

/-! ## A375136.P16653311227831694592

`A046660(2*A046523(n+1))`
-/

namespace A375136.P16653311227831694592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (2 * A046523 (n + 1)).toNat

end

end A375136.P16653311227831694592

namespace A375136

/-- `A046660(2*A046523(n+1))` -/
def P16653311227831694592.Spec : Prop :=
  ∀ n, P16653311227831694592.a n = A375136 (n + 1)

end A375136

/-! ## A375136.P1926337695127238433

`A046660(A046523(n+1)+A046523(n+1))`
-/

namespace A375136.P1926337695127238433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A046523 (n + 1) + A046523 (n + 1)).toNat

end

end A375136.P1926337695127238433

namespace A375136

/-- `A046660(A046523(n+1)+A046523(n+1))` -/
def P1926337695127238433.Spec : Prop :=
  ∀ n, P1926337695127238433.a n = A375136 (n + 1)

end A375136

/-! ## A375136.P15211664418260024299

`A252736(2*A217434(n+1))`
-/

namespace A375136.P15211664418260024299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * A217434 (n + 1)).toNat

end

end A375136.P15211664418260024299

namespace A375136

/-- `A252736(2*A217434(n+1))` -/
def P15211664418260024299.Spec : Prop :=
  ∀ n, P15211664418260024299.a n = A375136 (n + 1)

end A375136

/-! ## A375136.P3523321141981892926

`A144494(2*(n+1))-A001221(n+1)`
-/

namespace A375136.P3523321141981892926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (2 * (n + 1)) - A001221 (n + 1)

end

end A375136.P3523321141981892926

namespace A375136

/-- `A144494(2*(n+1))-A001221(n+1)` -/
def P3523321141981892926.Spec : Prop :=
  ∀ n, P3523321141981892926.a n = A375136 (n + 1)

end A375136

/-! ## A375136.P14666709206020764673

`A278520(A124508(n+1))`
-/

namespace A375136.P14666709206020764673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278520 (A124508 (n + 1)).toNat

end

end A375136.P14666709206020764673

namespace A375136

/-- `A278520(A124508(n+1))` -/
def P14666709206020764673.Spec : Prop :=
  ∀ n, P14666709206020764673.a n = A375136 (n + 1)

end A375136

/-! ## A375136.P18012588282138231879

`A361200(A330979(n+1))+A046660(n+1)`
-/

namespace A375136.P18012588282138231879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361200 (A330979 (n + 1)).toNat + A046660 (n + 1)

end

end A375136.P18012588282138231879

namespace A375136

/-- `A361200(A330979(n+1))+A046660(n+1)` -/
def P18012588282138231879.Spec : Prop :=
  ∀ n, P18012588282138231879.a n = A375136 (n + 1)

end A375136

/-!
# A375137: Numbers k such that the k-th composition in standard order (row k of A066099) matches the dashed pattern 1-32.

The programs for A375137, there is no canonical definition to state claims against.
-/

/-! ## A375137.P12296211186784752365

`∩[A335480(n+1), A375139(n+1)]`
-/

namespace A375137.P12296211186784752365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375137.P12296211186784752365

/-! ## A375137.P4711735939741942499

`A335480(A355547(n+1))`
-/

namespace A375137.P4711735939741942499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335480 (A355547 (n + 1)).toNat

end

end A375137.P4711735939741942499

/-! ## A375137.P15643988997523314824

`record[A335480(A374740(n)+A004197(n))]`
-/

namespace A375137.P15643988997523314824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335480 (A374740 n + A004197 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375137.P15643988997523314824

/-! ## A375137.P1561848515625830880

`A335480(A303166(n+1)+A046663(n+2))`
-/

namespace A375137.P1561848515625830880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335480 (A303166 (n + 1) + A046663 (n + 2)).toNat

end

end A375137.P1561848515625830880

/-!
# A375138: Numbers k such that the k-th composition in standard order (row k of A066099) matches the dashed pattern 23-1.

The programs for A375138, there is no canonical definition to state claims against.
-/

/-! ## A375138.P12705698240047699917

`A335482(A090240(n+1)%A167202(n+1))`
-/

namespace A375138.P12705698240047699917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335482 (Int.tmod (A090240 (n + 1)) (A167202 (n + 1))).toNat

end

end A375138.P12705698240047699917

/-! ## A375138.P14231336875197884833

`A335482(A022306(n)%A229542(n+1))`
-/

namespace A375138.P14231336875197884833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335482 (Int.tmod (A022306 n) (A229542 (n + 1))).toNat

end

end A375138.P14231336875197884833

/-! ## A375138.P172064118887342275

`A335482(A355547(n+1))`
-/

namespace A375138.P172064118887342275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335482 (A355547 (n + 1)).toNat

end

end A375138.P172064118887342275

/-! ## A375138.P6140707818622768010

`A335482(A303166(n+1)+A046663(n+2))`
-/

namespace A375138.P6140707818622768010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335482 (A303166 (n + 1) + A046663 (n + 2)).toNat

end

end A375138.P6140707818622768010

/-!
# A375140: Number of integer compositions of n whose leaders of weakly increasing runs are not strictly decreasing.

The programs for A375140, there is no canonical definition to state claims against.
-/

/-! ## A375140.P2829394143993607067

`2^n-A188920(n+1)`
-/

namespace A375140.P2829394143993607067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A188920 (n + 1)

end

end A375140.P2829394143993607067

/-! ## A375140.P15970963660166831933

`abs(A011782(n+1)-A188920(n+1))`
-/

namespace A375140.P15970963660166831933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (n + 1) - A188920 (n + 1)|

end

end A375140.P15970963660166831933

/-! ## A375140.P7560453276853242745

`A189076(n+1)+A374636(n+1)-A188920(n+1)`
-/

namespace A375140.P7560453276853242745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189076 (n + 1) + (A374636 (n + 1) - A188920 (n + 1))

end

end A375140.P7560453276853242745

/-! ## A375140.P16150250557846730391

`A188900(n+1)+A375406(n+1)-A188920(n+1)`
-/

namespace A375140.P16150250557846730391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188900 (n + 1) + (A375406 (n + 1) - A188920 (n + 1))

end

end A375140.P16150250557846730391

/-! ## A375140.P54029120871721329

`A088809(n)-A174738(A032555(n+1))`
-/

namespace A375140.P54029120871721329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088809 n - A174738 (A032555 (n + 1)).toNat

end

end A375140.P54029120871721329

/-!
# A375141: Number of even reduced Latin squares of order n.

The programs for A375141, there is no canonical definition to state claims against.
-/

/-! ## A375141.P4982217184586821930

`A000315(n+1)-A375121(n+1)`
-/

namespace A375141.P4982217184586821930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000315 (n + 1) - A375121 (n + 1)

end

end A375141.P4982217184586821930

/-! ## A375141.P10001611389022626925

`A001009(∑[n+1])-A375121(n+1)`
-/

namespace A375141.P10001611389022626925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001009 (∑ j ∈ Finset.range (n + 1), f1 j) - A375121 (n + 1)

end

end A375141.P10001611389022626925

/-! ## A375141.P9853743486107832329

`A057997(n+1)/(n+1)-A375121(n+1)`
-/

namespace A375141.P9853743486107832329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057997 (n + 1) : ℚ) / (n + 1 : ℚ) - (A375121 (n + 1) : ℚ)

end

end A375141.P9853743486107832329

/-!
# A375142: Numbers whose powerful part (A057521) is a power of a squarefree number that is larger than 1 (A072777).

The programs for A375142, the canonical program `A375142.P17228614779630182782` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375142 has offset 1).

The definition of A375142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3618 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375142.P17228614779630182782

`eq[1, A340373(A181819(n+1))]+1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A375142

/-- `eq[1, A340373(A181819(n+1))]+1` -/
def P17228614779630182782.Spec : Prop :=
  ∀ n, (P17228614779630182782.a n : ℤ) = A375142 (n + 1)

theorem P17228614779630182782.correct : P17228614779630182782.Spec := by
  intro n
  simp only [A375142, Nat.add_sub_cancel]

end A375142

/-! ## A375142.P10493291483548777428

`eq[1, A071625(A256690(n+1))]+1`
-/

namespace A375142.P10493291483548777428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A256690 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375142.P10493291483548777428

namespace A375142

/-- `eq[1, A071625(A256690(n+1))]+1` -/
def P10493291483548777428.Spec : Prop :=
  ∀ n, (P10493291483548777428.a n : ℤ) = A375142 (n + 1)

end A375142

/-! ## A375142.P2868925701186279824

`lt[A333161(A284345(n)), A284345(n)]`
-/

namespace A375142.P2868925701186279824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333161 (A284345 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375142.P2868925701186279824

namespace A375142

/-- `lt[A333161(A284345(n)), A284345(n)]` -/
def P2868925701186279824.Spec : Prop :=
  ∀ n, (P2868925701186279824.a n : ℤ) = A375142 (n + 1)

end A375142

/-! ## A375142.P1335475759846920613

`lt[1, A115872(A175506(n+1))]+1`
-/

namespace A375142.P1335475759846920613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115872 (A175506 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A375142.P1335475759846920613

namespace A375142

/-- `lt[1, A115872(A175506(n+1))]+1` -/
def P1335475759846920613.Spec : Prop :=
  ∀ n, (P1335475759846920613.a n : ℤ) = A375142 (n + 1)

end A375142

/-! ## A375142.P17564133652209224359

`lt[A191312(A236840(n)), A105570(n)]`
-/

namespace A375142.P17564133652209224359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191312 (A236840 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375142.P17564133652209224359

namespace A375142

/-- `lt[A191312(A236840(n)), A105570(n)]` -/
def P17564133652209224359.Spec : Prop :=
  ∀ n, (P17564133652209224359.a n : ℤ) = A375142 (n + 1)

end A375142

/-!
# A375143: Numbers whose prime factorization has a minimum exponent that is larger than 1 and is 1 less than the maximum exponent.

The programs for A375143, there is no canonical definition to state claims against.
-/

/-! ## A375143.P15081330844949424970

`∩[A001694(n+1), A325241(n+1)]`
-/

namespace A375143.P15081330844949424970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375143.P15081330844949424970

/-! ## A375143.P12238829321808267486

`∩[A046099(n+1), A325241(n+1)]`
-/

namespace A375143.P12238829321808267486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375143.P12238829321808267486

/-! ## A375143.P4721586026680517101

`∩[A052486(n+1), A325241(n+1)]`
-/

namespace A375143.P4721586026680517101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375143.P4721586026680517101

/-! ## A375143.P17521947220931397789

`∩[A059172(n+1), A325241(n+1)]`
-/

namespace A375143.P17521947220931397789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375143.P17521947220931397789

/-! ## A375143.P4697355240401896379

`∩[A072412(n+1), A325241(n+1)]`
-/

namespace A375143.P4697355240401896379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375143.P4697355240401896379

/-! ## A375143.P12187352747189172524

`∩[A074451(n+1), A325241(n+1)]`
-/

namespace A375143.P12187352747189172524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375143.P12187352747189172524

/-! ## A375143.P4316145284974673218

`∩[A102834(n+1), A325241(n+1)]`
-/

namespace A375143.P4316145284974673218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375143.P4316145284974673218

/-! ## A375143.P3541818576364999540

`∩[A192636(n+1), A325241(n+1)]`
-/

namespace A375143.P3541818576364999540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375143.P3541818576364999540

/-! ## A375143.P1019381249735787858

`∩[A216426(n+1), A325241(n+1)]`
-/

namespace A375143.P1019381249735787858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375143.P1019381249735787858

/-! ## A375143.P15731412215796478735

`∩[A216427(n+1), A325241(n+1)]`
-/

namespace A375143.P15731412215796478735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375143.P15731412215796478735

/-!
# A375144: Numbers whose prime factorization has exactly two exponents that equal 2 and has no higher exponents.

The programs for A375144, the canonical program `A375144.P11032156288611190920` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375144 has offset 1).

The definition of A375144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375144.P14214234181835342387

`∩[A338539(n+1), A386797(n+1)]`
-/

namespace A375144.P14214234181835342387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375144.P14214234181835342387

namespace A375144

/-- `∩[A338539(n+1), A386797(n+1)]` -/
def P14214234181835342387.Spec : Prop :=
  ∀ n, (P14214234181835342387.a n : ℤ) = A375144 (n + 1)

end A375144

/-! ## A375144.P14127716186743291165

`∩[A036785(n+1), A195086(n+1)]`
-/

namespace A375144.P14127716186743291165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375144.P14127716186743291165

namespace A375144

/-- `∩[A036785(n+1), A195086(n+1)]` -/
def P14127716186743291165.Spec : Prop :=
  ∀ n, (P14127716186743291165.a n : ℤ) = A375144 (n + 1)

end A375144

/-! ## A375144.P17242535784268083864

`∩[A072413(n+1), A195086(n+1)]`
-/

namespace A375144.P17242535784268083864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375144.P17242535784268083864

namespace A375144

/-- `∩[A072413(n+1), A195086(n+1)]` -/
def P17242535784268083864.Spec : Prop :=
  ∀ n, (P17242535784268083864.a n : ℤ) = A375144 (n + 1)

end A375144

/-! ## A375144.P12211446083246184425

`∩[A082295(n+1), A195086(n+1)]`
-/

namespace A375144.P12211446083246184425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375144.P12211446083246184425

namespace A375144

/-- `∩[A082295(n+1), A195086(n+1)]` -/
def P12211446083246184425.Spec : Prop :=
  ∀ n, (P12211446083246184425.a n : ℤ) = A375144 (n + 1)

end A375144

/-! ## A375144.P13058567413177002020

`∩[A195086(n+1), A338539(n+1)]`
-/

namespace A375144.P13058567413177002020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375144.P13058567413177002020

namespace A375144

/-- `∩[A195086(n+1), A338539(n+1)]` -/
def P13058567413177002020.Spec : Prop :=
  ∀ n, (P13058567413177002020.a n : ℤ) = A375144 (n + 1)

end A375144

/-! ## A375144.P15499345847791695500

`∩[A195086(n+1), A377563(n+1)]`
-/

namespace A375144.P15499345847791695500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375144.P15499345847791695500

namespace A375144

/-- `∩[A195086(n+1), A377563(n+1)]` -/
def P15499345847791695500.Spec : Prop :=
  ∀ n, (P15499345847791695500.a n : ℤ) = A375144 (n + 1)

end A375144

/-! ## A375144.P5154603387591101749

`∩[A195086(n+1), A377817(n+1)]`
-/

namespace A375144.P5154603387591101749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375144.P5154603387591101749

namespace A375144

/-- `∩[A195086(n+1), A377817(n+1)]` -/
def P5154603387591101749.Spec : Prop :=
  ∀ n, (P5154603387591101749.a n : ℤ) = A375144 (n + 1)

end A375144

/-! ## A375144.P13206607197777900095

`∩[A195086(n+1), A386797(n+1)]`
-/

namespace A375144.P13206607197777900095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375144.P13206607197777900095

namespace A375144

/-- `∩[A195086(n+1), A386797(n+1)]` -/
def P13206607197777900095.Spec : Prop :=
  ∀ n, (P13206607197777900095.a n : ℤ) = A375144 (n + 1)

end A375144

/-! ## A375144.P9857567406246335050

`filter[A195086(n+1), A212793(#)]`
-/

namespace A375144.P9857567406246335050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A375144.P9857567406246335050

namespace A375144

/-- `filter[A195086(n+1), A212793(#)]` -/
def P9857567406246335050.Spec : Prop :=
  ∀ n, P9857567406246335050.a n = A375144 (n + 1)

end A375144

/-! ## A375144.P17215228723450907379

`filter[A195086(n+1), A355823(#)]`
-/

namespace A375144.P17215228723450907379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A375144.P17215228723450907379

namespace A375144

/-- `filter[A195086(n+1), A355823(#)]` -/
def P17215228723450907379.Spec : Prop :=
  ∀ n, P17215228723450907379.a n = A375144 (n + 1)

end A375144

/-! ## A375144.P4553516802184198486

`filter[A195086(n+1), A355825(#)]`
-/

namespace A375144.P4553516802184198486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A375144.P4553516802184198486

namespace A375144

/-- `filter[A195086(n+1), A355825(#)]` -/
def P4553516802184198486.Spec : Prop :=
  ∀ n, P4553516802184198486.a n = A375144 (n + 1)

end A375144

/-! ## A375144.P11032156288611190920

`filter[A338539(n+1), A212793(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A375144

/-- `filter[A338539(n+1), A212793(#)]` -/
def P11032156288611190920.Spec : Prop :=
  ∀ n, P11032156288611190920.a n = A375144 (n + 1)

theorem P11032156288611190920.correct : P11032156288611190920.Spec := by
  intro n
  simp only [A375144, Nat.add_sub_cancel]

end A375144

/-! ## A375144.P17583580360514109468

`filter[A195086(n+1), A359429(#)]`
-/

namespace A375144.P17583580360514109468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A375144.P17583580360514109468

namespace A375144

/-- `filter[A195086(n+1), A359429(#)]` -/
def P17583580360514109468.Spec : Prop :=
  ∀ n, P17583580360514109468.a n = A375144 (n + 1)

end A375144

/-! ## A375144.P6406778316537174554

`filter[A195086(n+1), A380454(#)]`
-/

namespace A375144.P6406778316537174554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A375144.P6406778316537174554

namespace A375144

/-- `filter[A195086(n+1), A380454(#)]` -/
def P6406778316537174554.Spec : Prop :=
  ∀ n, P6406778316537174554.a n = A375144 (n + 1)

end A375144

/-! ## A375144.P12699580422439074863

`filter[A386797(n+1), A212793(#)]`
-/

namespace A375144.P12699580422439074863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A375144.P12699580422439074863

namespace A375144

/-- `filter[A386797(n+1), A212793(#)]` -/
def P12699580422439074863.Spec : Prop :=
  ∀ n, P12699580422439074863.a n = A375144 (n + 1)

end A375144

/-! ## A375144.P2643577249723767663

`filter[A338539(n+1), A359429(#)]`
-/

namespace A375144.P2643577249723767663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A375144.P2643577249723767663

namespace A375144

/-- `filter[A338539(n+1), A359429(#)]` -/
def P2643577249723767663.Spec : Prop :=
  ∀ n, P2643577249723767663.a n = A375144 (n + 1)

end A375144

/-! ## A375144.P7331213022189999630

`filter[A386797(n+1), A359429(#)]`
-/

namespace A375144.P7331213022189999630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A375144.P7331213022189999630

namespace A375144

/-- `filter[A386797(n+1), A359429(#)]` -/
def P7331213022189999630.Spec : Prop :=
  ∀ n, P7331213022189999630.a n = A375144 (n + 1)

end A375144

/-! ## A375144.P4579844211818161448

`∩[A048111(n+1), A195086(n+1)]`
-/

namespace A375144.P4579844211818161448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375144.P4579844211818161448

namespace A375144

/-- `∩[A048111(n+1), A195086(n+1)]` -/
def P4579844211818161448.Spec : Prop :=
  ∀ n, (P4579844211818161448.a n : ℤ) = A375144 (n + 1)

end A375144

/-! ## A375144.P9429536639277862556

`filter[A195086(n+1), A353470(#)]`
-/

namespace A375144.P9429536639277862556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A375144.P9429536639277862556

namespace A375144

/-- `filter[A195086(n+1), A353470(#)]` -/
def P9429536639277862556.Spec : Prop :=
  ∀ n, P9429536639277862556.a n = A375144 (n + 1)

end A375144

/-! ## A375144.P12108261526738993118

`filter[A195086(n+1), A353625(#)]`
-/

namespace A375144.P12108261526738993118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A375144.P12108261526738993118

namespace A375144

/-- `filter[A195086(n+1), A353625(#)]` -/
def P12108261526738993118.Spec : Prop :=
  ∀ n, P12108261526738993118.a n = A375144 (n + 1)

end A375144

/-!
# A375145: Numbers whose prime factorization has exactly one exponent that is larger than 2.

The programs for A375145, the canonical program `A375145.P4922130066098864515` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375145 has offset 1).

The definition of A375145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8078 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375145.P4922130066098864515

`eq[1, A295659(n+1)]+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A375145

/-- `eq[1, A295659(n+1)]+1` -/
def P4922130066098864515.Spec : Prop :=
  ∀ n, (P4922130066098864515.a n : ℤ) = A375145 (n + 1)

theorem P4922130066098864515.correct : P4922130066098864515.Spec := by
  intro n
  simp only [A375145, Nat.add_sub_cancel]

end A375145

/-! ## A375145.P11138402931218404357

`eq[2, A368248(n+1)]+1`
-/

namespace A375145.P11138402931218404357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375145.P11138402931218404357

namespace A375145

/-- `eq[2, A368248(n+1)]+1` -/
def P11138402931218404357.Spec : Prop :=
  ∀ n, (P11138402931218404357.a n : ℤ) = A375145 (n + 1)

end A375145

/-! ## A375145.P6230948723446540652

`∪[A345193(n+1), A362148(n+1)]`
-/

namespace A375145.P6230948723446540652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375145.P6230948723446540652

namespace A375145

/-- `∪[A345193(n+1), A362148(n+1)]` -/
def P6230948723446540652.Spec : Prop :=
  ∀ n, (P6230948723446540652.a n : ℤ) = A375145 (n + 1)

end A375145

/-! ## A375145.P7484126437212599823

`∪[A344653(n+1), A362148(n+1)]`
-/

namespace A375145.P7484126437212599823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375145.P7484126437212599823

namespace A375145

/-- `∪[A344653(n+1), A362148(n+1)]` -/
def P7484126437212599823.Spec : Prop :=
  ∀ n, (P7484126437212599823.a n : ℤ) = A375145 (n + 1)

end A375145

/-! ## A375145.P2133440930196364593

`∪[A074451(n+1), A344653(n+1)]`
-/

namespace A375145.P2133440930196364593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375145.P2133440930196364593

namespace A375145

/-- `∪[A074451(n+1), A344653(n+1)]` -/
def P2133440930196364593.Spec : Prop :=
  ∀ n, (P2133440930196364593.a n : ℤ) = A375145 (n + 1)

end A375145

/-!
# A375146: 

The programs for A375146, there is no canonical definition to state claims against.
-/

/-! ## A375146.P15868328872555913811

`eq[1, A295884(n+1)]+1`
-/

namespace A375146.P15868328872555913811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375146.P15868328872555913811

/-!
# A375148: Expansion of Sum_{k in Z} x^k / (1 - x^(7*k+2)).

The programs for A375148, there is no canonical definition to state claims against.
-/

/-! ## A375148.P10494542387992813350

`A363852(n+1)-A363857(n+1)`
-/

namespace A375148.P10494542387992813350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363852 (n + 1) - A363857 (n + 1)

end

end A375148.P10494542387992813350

/-! ## A375148.P3361480447238269041

`A363795(A017017(n)-1)-A363807(A017005(n))`
-/

namespace A375148.P3361480447238269041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A017017 n - 1).toNat - A363807 (A017005 n).toNat

end

end A375148.P3361480447238269041

/-! ## A375148.P1318904635152308223

`A053838(A342728(n)^A053838(n))`
-/

namespace A375148.P1318904635152308223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (SequenceMachineLib.roundAway ((A342728 n : ℚ) ^ (A053838 n : ℤ))).toNat

end

end A375148.P1318904635152308223

/-! ## A375148.P17269396919320178704

`A001221(3*n+4)-A107846(A096958(n))`
-/

namespace A375148.P17269396919320178704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 * n + 4) - A107846 (A096958 n).toNat

end

end A375148.P17269396919320178704

/-! ## A375148.P8830286833266871015

`C(A000034(A003064(n+1)), A359938(n+1))`
-/

namespace A375148.P8830286833266871015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000034 (A003064 (n + 1)).toNat).toNat (A359938 (n + 1)).toNat

end

end A375148.P8830286833266871015

/-!
# A375149: Expansion of Sum_{k in Z} x^k / (1 - x^(7*k+4)).

The programs for A375149, there is no canonical definition to state claims against.
-/

/-! ## A375149.P2216572402173144936

`A363850(n+1)-A363855(n+1)`
-/

namespace A375149.P2216572402173144936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363850 (n + 1) - A363855 (n + 1)

end

end A375149.P2216572402173144936

/-! ## A375149.P2847235292159167441

`A339890(3*n+4)-A245196(A107684(n+1))`
-/

namespace A375149.P2847235292159167441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (3 * n + 4) - A245196 (A107684 (n + 1)).toNat

end

end A375149.P2847235292159167441

/-! ## A375149.P6032586865609880352

`A059895(n+1)-A096577(A115313(n+1))`
-/

namespace A375149.P6032586865609880352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059895 (n + 1) - A096577 (A115313 (n + 1)).toNat

end

end A375149.P6032586865609880352

/-! ## A375149.P7523585677776095177

`A035263(A051286(n))*A227481(n)`
-/

namespace A375149.P7523585677776095177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A051286 n).toNat * A227481 n

end

end A375149.P7523585677776095177

/-! ## A375149.P3902065619964810625

`and(A005563(A022399(n)), A227481(n))`
-/

namespace A375149.P3902065619964810625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005563 (A022399 n).toNat) (A227481 n)

end

end A375149.P3902065619964810625

/-!
# A375150: Expansion of Sum_{k in Z} x^k / (1 - x^(7*k+5)).

The programs for A375150, there is no canonical definition to state claims against.
-/

/-! ## A375150.P910805378827683235

`A362845(n+1)-A363854(n+1)`
-/

namespace A375150.P910805378827683235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362845 (n + 1) - A363854 (n + 1)

end

end A375150.P910805378827683235

/-! ## A375150.P1156229462408601384

`A373336(A017041(n))`
-/

namespace A375150.P1156229462408601384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373336 (A017041 n).toNat

end

end A375150.P1156229462408601384

/-! ## A375150.P16254022361809595539

`A373336(A017329(n)-3*n)`
-/

namespace A375150.P16254022361809595539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373336 (A017329 n - (3 * n : ℤ)).toNat

end

end A375150.P16254022361809595539

/-! ## A375150.P10032926419981756913

`A373336(A016825(2*n+1)-(n+1))`
-/

namespace A375150.P10032926419981756913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373336 (A016825 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A375150.P10032926419981756913

/-! ## A375150.P8280975104551073928

`A279061(A017017(n)+2)-A363854(n+1)`
-/

namespace A375150.P8280975104551073928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (A017017 n + 2).toNat - A363854 (n + 1)

end

end A375150.P8280975104551073928

/-! ## A375150.P5904644192678437454

`A279061(A047883(n+1)+1)-A363854(n+1)`
-/

namespace A375150.P5904644192678437454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (A047883 (n + 1) + 1).toNat - A363854 (n + 1)

end

end A375150.P5904644192678437454

/-!
# A375155: a(n) = 2*a(n-1) + 1 for a(n-1) not prime, otherwise a(n) = prime(n) - 1; with a(1) = 147.

The programs for A375155, the canonical program `A375155.P69600174419661904` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375155 has offset 1).

The definition of A375155 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+1` (program `A375155.P69600174419661904`, by `A375155.P69600174419661904.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375155.P69600174419661904

`2*a(n-1)+1` with `a(0)=147`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A375155

/-- `2*a(n-1)+1` -/
def P69600174419661904.Spec : Prop :=
  ∀ n, (P69600174419661904.a n : ℤ) = A375155 (n + 1)

theorem P69600174419661904.correct : P69600174419661904.Spec := by
  intro n
  simp only [A375155, Nat.add_sub_cancel]

end A375155

/-! ## A375155.P12059821886369682419

`xor(1, 2*a(n-1))` with `a(0)=147`
-/

namespace A375155.P12059821886369682419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [147] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A375155.P12059821886369682419

namespace A375155

/-- `xor(1, 2*a(n-1))` -/
def P12059821886369682419.Spec : Prop :=
  ∀ n, (P12059821886369682419.a n : ℤ) = A375155 (n + 1)

end A375155

/-! ## A375155.P632797624342196845

`4*(37*2^n-1)+3`
-/

namespace A375155.P632797624342196845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((37 * 2 ^ n : ℤ) - 1) + 3

end

end A375155.P632797624342196845

namespace A375155

/-- `4*(37*2^n-1)+3` -/
def P632797624342196845.Spec : Prop :=
  ∀ n, P632797624342196845.a n = A375155 (n + 1)

end A375155

/-! ## A375155.P10138132847712563897

`or(2, 2*a(n-1)-1)` with `a(0)=147`
-/

namespace A375155.P10138132847712563897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [147] fun n a =>
  Int.lor 2 (2 * a (n - 1) - 1)

end

end A375155.P10138132847712563897

namespace A375155

/-- `or(2, 2*a(n-1)-1)` -/
def P10138132847712563897.Spec : Prop :=
  ∀ n, P10138132847712563897.a n = A375155 (n + 1)

end A375155

/-! ## A375155.P13133272732717825821

`A171390(n+3)`
-/

namespace A375155.P13133272732717825821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171390 (n + 3)

end

end A375155.P13133272732717825821

namespace A375155

/-- `A171390(n+3)` -/
def P13133272732717825821.Spec : Prop :=
  ∀ n, P13133272732717825821.a n = A375155 (n + 1)

end A375155

/-!
# A375156: In the binary expansion of n: expand bits 1 -> 01 and 0 -> x0 from most to least significant, where x is the complement of the previous bit from n.

The programs for A375156, the canonical program `A375156.P5944505907265701600` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375156 has offset 0).

The definition of A375156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375156.P5944505907265701600

`and(A003188(A374625(n)), A374625(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A375156

/-- `and(A003188(A374625(n)), A374625(n))` -/
def P5944505907265701600.Spec : Prop :=
  ∀ n, P5944505907265701600.a n = A375156 n

theorem P5944505907265701600.correct : P5944505907265701600.Spec := by
  intro n
  simp only [A375156]

end A375156

/-! ## A375156.P8954086644038233834

`A179821(A374625(n))`
-/

namespace A375156.P8954086644038233834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179821 (A374625 n).toNat

end

end A375156.P8954086644038233834

namespace A375156

/-- `A179821(A374625(n))` -/
def P8954086644038233834.Spec : Prop :=
  ∀ n, P8954086644038233834.a n = A375156 n

end A375156

/-!
# A375158: Expansion of Sum_{k in Z} x^(2*k) / (1 - x^(7*k+2)).

The programs for A375158, there is no canonical definition to state claims against.
-/

/-! ## A375158.P14676753181936074550

`A363885(n+1)-A363886(n+1)`
-/

namespace A375158.P14676753181936074550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363885 (n + 1) - A363886 (n + 1)

end

end A375158.P14676753181936074550

/-! ## A375158.P9925349166991300678

`A363885(n+1)-A092178(A329133(3*n+4))%A134866(3*(n+1))`
-/

namespace A375158.P9925349166991300678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363885 (n + 1) - Int.tmod (A092178 (A329133 (3 * n + 4)).toNat) (A134866 (3 * (n + 1)))

end

end A375158.P9925349166991300678

/-! ## A375158.P6804913863046681384

`A295281(2*n+3)-A344617(A002805(n+1))`
-/

namespace A375158.P6804913863046681384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295281 (2 * n + 3) - A344617 (A002805 (n + 1)).toNat

end

end A375158.P6804913863046681384

/-! ## A375158.P807494878963660753

`A376590(A052410(3*n+5)+A014551(n+2))`
-/

namespace A375158.P807494878963660753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376590 (A052410 (3 * n + 5) + A014551 (n + 2)).toNat

end

end A375158.P807494878963660753

/-!
# A375159: Expansion of Sum_{k in Z} x^(4*k) / (1 - x^(7*k+2)).

The programs for A375159, there is no canonical definition to state claims against.
-/

/-! ## A375159.P4508471725223592645

`A359769(n+1)+A321396(A071949(n))`
-/

namespace A375159.P4508471725223592645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359769 (n + 1) + A321396 (A071949 n).toNat

end

end A375159.P4508471725223592645

/-! ## A375159.P13817693992669949801

`A271224(A154117(n))-A285383(n+1)`
-/

namespace A375159.P13817693992669949801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271224 (A154117 n).toNat - A285383 (n + 1)

end

end A375159.P13817693992669949801

/-!
# A375162: Non-prime-power orders of groups for which there exists at least one group G of order k such that |Aut(G)|/GCD(|Aut(G)|,k)=(k/GCD(|Aut(G)|,k))-1. Non-prime-power terms of A374666.

The programs for A375162, there is no canonical definition to state claims against.
-/

/-! ## A375162.P5138253482817996990

`filter[A374666(n+1), A143731(#)]`
-/

namespace A375162.P5138253482817996990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A375162.P5138253482817996990

/-! ## A375162.P1109877223718515668

`filter[A374666(n+1), A210455(#)]`
-/

namespace A375162.P1109877223718515668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A375162.P1109877223718515668

/-! ## A375162.P9605170057890506856

`filter[A374666(n+1), A294936(#)]`
-/

namespace A375162.P9605170057890506856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A375162.P9605170057890506856

/-! ## A375162.P5046762624550225944

`filter[A374666(n+1), A294937(#)]`
-/

namespace A375162.P5046762624550225944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A375162.P5046762624550225944

/-! ## A375162.P8527800358830417124

`filter[A374666(n+1), A323170(#)]`
-/

namespace A375162.P8527800358830417124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A375162.P8527800358830417124

/-!
# A375163: Expansion of 1/((1 + x)^7 - 2*x^7).

The programs for A375163, there is no canonical definition to state claims against.
-/

/-! ## A375163.P14606803562437287659

`A341025(A096592(n))+A049018(n)`
-/

namespace A375163.P14606803562437287659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 ((A096592 n).toNat + 120) + A049018 n

end

end A375163.P14606803562437287659

/-! ## A375163.P3317918426218821693

`A341591(A306941(n+1))+A049018(n)`
-/

namespace A375163.P3317918426218821693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341591 (A306941 (n + 1)).toNat + A049018 n

end

end A375163.P3317918426218821693

/-! ## A375163.P4082331315385191061

`A363808(A218695(3*n+2))+A049018(n)`
-/

namespace A375163.P4082331315385191061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (A218695 (3 * n + 2)).toNat + A049018 n

end

end A375163.P4082331315385191061

/-!
# A375164: Expansion of 1/((1 - x)^4 - 2*x^4).

The programs for A375164, the canonical program `A375164.P13321569577354213343` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375164 has offset 0).

The definition of A375164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375164.P13321569577354213343

`4*a(n-1)-6*a(n-2)+4*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=20`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A375164

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)+a(n-4)` -/
def P13321569577354213343.Spec : Prop :=
  ∀ n, P13321569577354213343.a n = A375164 n

theorem P13321569577354213343.correct : P13321569577354213343.Spec := by
  intro n
  simp only [A375164]

end A375164

/-! ## A375164.P9406721322931369370

`∑[∑[A119330(n)]]`
-/

namespace A375164.P9406721322931369370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119330 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375164.P9406721322931369370

namespace A375164

/-- `∑[∑[A119330(n)]]` -/
def P9406721322931369370.Spec : Prop :=
  ∀ n, P9406721322931369370.a n = A375164 n

end A375164

/-! ## A375164.P4718303924174197300

`∑[∑[∑[A097081(n)]]]`
-/

namespace A375164.P4718303924174197300
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375164.P4718303924174197300

namespace A375164

/-- `∑[∑[∑[A097081(n)]]]` -/
def P4718303924174197300.Spec : Prop :=
  ∀ n, P4718303924174197300.a n = A375164 n

end A375164

/-! ## A375164.P17163565814787169914

`Δ[A093406(n+1)/2]`
-/

namespace A375164.P17163565814787169914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093406 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375164.P17163565814787169914

namespace A375164

/-- `Δ[A093406(n+1)/2]` -/
def P17163565814787169914.Spec : Prop :=
  ∀ n, P17163565814787169914.a n = (A375164 n : ℚ)

end A375164

/-! ## A375164.P1887269632238986278

`Δ[A097081(n+3)]/2`
-/

namespace A375164.P1887269632238986278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097081 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A375164.P1887269632238986278

namespace A375164

/-- `Δ[A097081(n+3)]/2` -/
def P1887269632238986278.Spec : Prop :=
  ∀ n, P1887269632238986278.a n = (A375164 n : ℚ)

end A375164

/-!
# A375165: Expansion of 1/((1 - x)^6 - 2*x^6).

The programs for A375165, there is no canonical definition to state claims against.
-/

/-! ## A375165.P9471720659376163572

`A025428(A000142(n))+A008498(n)`
-/

namespace A375165.P9471720659376163572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A000142 n).toNat + A008498 n

end

end A375165.P9471720659376163572

/-! ## A375165.P3214664321521170923

`A192080(n)+A064911(A006862(n))`
-/

namespace A375165.P3214664321521170923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192080 n + A064911 (A006862 n).toNat

end

end A375165.P3214664321521170923

/-!
# A375166: Nonsquares congruent to {0, 1, 4, 7} modulo 9.

The programs for A375166, the canonical program `A375166.P13823784569073551818` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375166 has offset 1).

The definition of A375166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9852 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375166.P13823784569073551818

`filter[A056991(n+3), A049240(#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A375166

/-- `filter[A056991(n+3), A049240(#)]` -/
def P13823784569073551818.Spec : Prop :=
  ∀ n, P13823784569073551818.a n = A375166 (n + 1)

theorem P13823784569073551818.correct : P13823784569073551818.Spec := by
  intro n
  simp only [A375166, Nat.add_sub_cancel]

end A375166

/-! ## A375166.P4237179351366994978

`filter[A242660(n+3), A049240(#)]`
-/

namespace A375166.P4237179351366994978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A375166.P4237179351366994978

namespace A375166

/-- `filter[A242660(n+3), A049240(#)]` -/
def P4237179351366994978.Spec : Prop :=
  ∀ n, P4237179351366994978.a n = A375166 (n + 1)

end A375166

/-! ## A375166.P2872623197040832114

`∩[A000037(n+1), A056991(n+1)]`
-/

namespace A375166.P2872623197040832114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375166.P2872623197040832114

namespace A375166

/-- `∩[A000037(n+1), A056991(n+1)]` -/
def P2872623197040832114.Spec : Prop :=
  ∀ n, (P2872623197040832114.a n : ℤ) = A375166 (n + 1)

end A375166

/-! ## A375166.P2611226576384254101

`∩[A000037(n+1), A242660(n+1)]`
-/

namespace A375166.P2611226576384254101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375166.P2611226576384254101

namespace A375166

/-- `∩[A000037(n+1), A242660(n+1)]` -/
def P2611226576384254101.Spec : Prop :=
  ∀ n, (P2611226576384254101.a n : ℤ) = A375166 (n + 1)

end A375166

/-! ## A375166.P4241516122226895185

`filter[A056991(n+1), A267594(#)]`
-/

namespace A375166.P4241516122226895185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A375166.P4241516122226895185

namespace A375166

/-- `filter[A056991(n+1), A267594(#)]` -/
def P4241516122226895185.Spec : Prop :=
  ∀ n, P4241516122226895185.a n = A375166 (n + 1)

end A375166

/-! ## A375166.P1325901669764307568

`filter[A056991(n+1), A267635(#)]`
-/

namespace A375166.P1325901669764307568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A375166.P1325901669764307568

namespace A375166

/-- `filter[A056991(n+1), A267635(#)]` -/
def P1325901669764307568.Spec : Prop :=
  ∀ n, P1325901669764307568.a n = A375166 (n + 1)

end A375166

/-! ## A375166.P418763695388395262

`filter[A242660(n+2), A267594(#)]`
-/

namespace A375166.P418763695388395262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A375166.P418763695388395262

namespace A375166

/-- `filter[A242660(n+2), A267594(#)]` -/
def P418763695388395262.Spec : Prop :=
  ∀ n, P418763695388395262.a n = A375166 (n + 1)

end A375166

/-! ## A375166.P4019502513268678707

`filter[A242660(n+2), A267635(#)]`
-/

namespace A375166.P4019502513268678707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A375166.P4019502513268678707

namespace A375166

/-- `filter[A242660(n+2), A267635(#)]` -/
def P4019502513268678707.Spec : Prop :=
  ∀ n, P4019502513268678707.a n = A375166 (n + 1)

end A375166

/-!
# A375167: Expansion of e.g.f. 1 / (1 + x * log(1 - x^2/2)).

The programs for A375167, there is no canonical definition to state claims against.
-/

/-! ## A375167.P4028054790338747360

`A333381(n²+8)*A375586(n)`
-/

namespace A375167.P4028054790338747360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (n ^ 2 + 8) * A375586 n

end

end A375167.P4028054790338747360

/-! ## A375167.P779199850092689439

`abs(A375557(n)%A007810(n+1))`
-/

namespace A375167.P779199850092689439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A375557 n) (A007810 (n + 1))|

end

end A375167.P779199850092689439

/-! ## A375167.P1490729156316755219

`A184848(A065953(n))*A351155(n)`
-/

namespace A375167.P1490729156316755219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A065953 n).toNat * A351155 n

end

end A375167.P1490729156316755219

/-! ## A375167.P2395008281821694248

`A351155(n)*A382890(A053556(n))`
-/

namespace A375167.P2395008281821694248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351155 n * A382890 (A053556 n).toNat

end

end A375167.P2395008281821694248

/-! ## A375167.P8364011683004392637

`A245933(A245931(n))*A351155(n)`
-/

namespace A375167.P8364011683004392637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245933 (A245931 n).toNat * A351155 n

end

end A375167.P8364011683004392637

/-!
# A375169: Expansion of (1 - x) / ((1 - x)^3 - x^4).

The programs for A375169, the canonical program `A375169.P13098437961648839749` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375169 has offset 0).

The definition of A375169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375169.P13098437961648839749

`3*a(n-1)-3*a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A375169

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+a(n-4)` -/
def P13098437961648839749.Spec : Prop :=
  ∀ n, P13098437961648839749.a n = A375169 n

theorem P13098437961648839749.correct : P13098437961648839749.Spec := by
  intro n
  simp only [A375169]

end A375169

/-! ## A375169.P18076866206988953844

`∑[A003522(n)]`
-/

namespace A375169.P18076866206988953844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375169.P18076866206988953844

namespace A375169

/-- `∑[A003522(n)]` -/
def P18076866206988953844.Spec : Prop :=
  ∀ n, P18076866206988953844.a n = A375169 n

end A375169

/-! ## A375169.P13566036207305862951

`∑[A017817(3*n)]`
-/

namespace A375169.P13566036207305862951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375169.P13566036207305862951

namespace A375169

/-- `∑[A017817(3*n)]` -/
def P13566036207305862951.Spec : Prop :=
  ∀ n, P13566036207305862951.a n = A375169 n

end A375169

/-! ## A375169.P10609759041519621531

`A127838(3*(n+3))`
-/

namespace A375169.P10609759041519621531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (3 * (n + 3))

end

end A375169.P10609759041519621531

namespace A375169

/-- `A127838(3*(n+3))` -/
def P10609759041519621531.Spec : Prop :=
  ∀ n, P10609759041519621531.a n = A375169 n

end A375169

/-! ## A375169.P10540489884817389788

`A017817(3*(n+1)+1)`
-/

namespace A375169.P10540489884817389788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (3 * (n + 1) + 1)

end

end A375169.P10540489884817389788

namespace A375169

/-- `A017817(3*(n+1)+1)` -/
def P10540489884817389788.Spec : Prop :=
  ∀ n, P10540489884817389788.a n = A375169 n

end A375169

/-! ## A375169.P16243005919521282354

`Δ[Δ[A003522(n+2)]]`
-/

namespace A375169.P16243005919521282354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003522 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375169.P16243005919521282354

namespace A375169

/-- `Δ[Δ[A003522(n+2)]]` -/
def P16243005919521282354.Spec : Prop :=
  ∀ n, P16243005919521282354.a n = A375169 n

end A375169

/-!
# A375170: Primes that can be expressed as the sum of a prime and twice a positive square.

The programs for A375170, there is no canonical definition to state claims against.
-/

/-! ## A375170.P6886827424945690074

`lt[A351245(n+1), A046922(n+1)]+1`
-/

namespace A375170.P6886827424945690074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A375170.P6886827424945690074

/-! ## A375170.P13891055796844792632

`A000040(lt[A177764(n+4), A252373(n+1)])`
-/

namespace A375170.P13891055796844792632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177764 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A375170.P13891055796844792632

/-! ## A375170.P10622607408112524850

`A138889(n+1)+A014197(A138889(2*n+1))`
-/

namespace A375170.P10622607408112524850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138889 (n + 1) + A014197 (A138889 (2 * n + 1)).toNat

end

end A375170.P10622607408112524850

/-! ## A375170.P2279099670956914049

`∩[A115232(n+1), A204458(n+1)]`
-/

namespace A375170.P2279099670956914049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375170.P2279099670956914049

/-! ## A375170.P16935820155012587414

`filter[A214432(n+1), A171387(#)]`
-/

namespace A375170.P16935820155012587414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A375170.P16935820155012587414

/-!
# A375172: Expansion of e.g.f. exp( x^2/(1-x)^3 ) / (1-x).

The programs for A375172, there is no canonical definition to state claims against.
-/

/-! ## A375172.P14293755153543768542

`A001710(n)*A085501(A262843(n+1))`
-/

namespace A375172.P14293755153543768542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 n * A085501 (A262843 (n + 1)).toNat

end

end A375172.P14293755153543768542

/-!
# A375173: Expansion of e.g.f. exp( (1/(1 - 4*x)^(1/2) - 1)/2 ).

The programs for A375173, there is no canonical definition to state claims against.
-/

/-! ## A375173.P6774644157982321053

`A339023(A101514(n)²)`
-/

namespace A375173.P6774644157982321053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339023 (A101514 n ^ 2).toNat

end

end A375173.P6774644157982321053

/-!
# A375175: Expansion of e.g.f. exp( (exp( (exp(4*x) - 1)/2 ) - 1)/2 ).

The programs for A375175, there is no canonical definition to state claims against.
-/

/-! ## A375175.P12788377052006412972

`A157134(A329657(n+1))`
-/

namespace A375175.P12788377052006412972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157134 (A329657 (n + 1)).toNat

end

end A375175.P12788377052006412972

/-!
# A375176: Expansion of e.g.f. exp( (exp( (exp(9*x) - 1)/3 ) - 1)/3 ).

The programs for A375176, there is no canonical definition to state claims against.
-/

/-! ## A375176.P12293518798005679820

`A240835(A308928(n+4)+A120607(n))`
-/

namespace A375176.P12293518798005679820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240835 (A308928 (n + 4) + A120607 n).toNat

end

end A375176.P12293518798005679820

/-!
# A375177: a(n) = 1/(n + 1)^2 * Sum_{k = 1..n+1} (k^4)*binomial(n+1, k)^2.

The programs for A375177, the canonical program `A375177.P17845045903573206518` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375177 has offset 1).

The definition of A375177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375177.P17845045903573206518

`A037966(n)+A037965(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A375177

/-- `A037966(n)+A037965(n+1)` -/
def P17845045903573206518.Spec : Prop :=
  ∀ n, P17845045903573206518.a n = A375177 (n + 1)

theorem P17845045903573206518.correct : P17845045903573206518.Spec := by
  intro n
  simp only [A375177, Nat.add_sub_cancel]

end A375177

/-! ## A375177.P10926397022682190987

`A074334(n+1)/(n+1)²`
-/

namespace A375177.P10926397022682190987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074334 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A375177.P10926397022682190987

namespace A375177

/-- `A074334(n+1)/(n+1)²` -/
def P10926397022682190987.Spec : Prop :=
  ∀ n, P10926397022682190987.a n = (A375177 (n + 1) : ℚ)

end A375177

/-! ## A375177.P6802290818976737179

`A074334(n+1)/A037965(n+1)*A000108(n)`
-/

namespace A375177.P6802290818976737179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074334 (n + 1) : ℚ) / (A037965 (n + 1) : ℚ) * (A000108 n : ℚ)

end

end A375177.P6802290818976737179

namespace A375177

/-- `A074334(n+1)/A037965(n+1)*A000108(n)` -/
def P6802290818976737179.Spec : Prop :=
  ∀ n, P6802290818976737179.a n = (A375177 (n + 1) : ℚ)

end A375177

/-! ## A375177.P15685848380534536281

`A074334(n+1)/A037966(n+1)*A000984(n)`
-/

namespace A375177.P15685848380534536281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074334 (n + 1) : ℚ) / (A037966 (n + 1) : ℚ) * (A000984 n : ℚ)

end

end A375177.P15685848380534536281

namespace A375177

/-- `A074334(n+1)/A037966(n+1)*A000984(n)` -/
def P15685848380534536281.Spec : Prop :=
  ∀ n, P15685848380534536281.a n = (A375177 (n + 1) : ℚ)

end A375177

/-! ## A375177.P14208136196818563729

`A157169(∑[4*n])`
-/

namespace A375177.P14208136196818563729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157169 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375177.P14208136196818563729

namespace A375177

/-- `A157169(∑[4*n])` -/
def P14208136196818563729.Spec : Prop :=
  ∀ n, P14208136196818563729.a n = A375177 (n + 1)

end A375177

/-!
# A375178: a(n) = Sum_{k = 0..n-1} binomial(n+k-1, k)^3 (same as A112028 with an extra 0 at the start).

The programs for A375178, there is no canonical definition to state claims against.
-/

/-! ## A375178.P15553758708923691698

`A112028(n-A057427(n))-char[(8*n)²]`
-/

namespace A375178.P15553758708923691698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112028 ((n : ℤ) - A057427 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A375178.P15553758708923691698

/-! ## A375178.P6074878636993413687

`char[A237270(n+1)]*A112028(n-A057427(n))`
-/

namespace A375178.P6074878636993413687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A112028 ((n : ℤ) - A057427 n).toNat

end

end A375178.P6074878636993413687

/-! ## A375178.P14289852137543984383

`A112028(n-A057427(n))%A000172(2*n)`
-/

namespace A375178.P14289852137543984383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112028 ((n : ℤ) - A057427 n).toNat) (A000172 (2 * n))

end

end A375178.P14289852137543984383

/-! ## A375178.P12302247458293517653

`A112028(n-A057427(n))%A204249(n)`
-/

namespace A375178.P12302247458293517653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112028 ((n : ℤ) - A057427 n).toNat) (A204249 n)

end

end A375178.P12302247458293517653

/-!
# A375181: Inverse binomial transform of A376277.

The programs for A375181, there is no canonical definition to state claims against.
-/

/-! ## A375181.P14824191191850717646

`A100196(A006402(n+2))`
-/

namespace A375181.P14824191191850717646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A006402 (n + 2)).toNat

end

end A375181.P14824191191850717646

/-! ## A375181.P1892562104919882462

`A247908(A247908(n*a(n-1)))` with `a(0)=1`
-/

namespace A375181.P1892562104919882462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247908 (A247908 ((n : ℤ) * a (n - 1)).toNat).toNat

end

end A375181.P1892562104919882462

/-! ## A375181.P16372484198413632083

`A226762(A000108(n)+A000070(n))`
-/

namespace A375181.P16372484198413632083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A000108 n + A000070 n).toNat

end

end A375181.P16372484198413632083

/-! ## A375181.P4132001061349392254

`A024417(A293518(n)+A148193(n))`
-/

namespace A375181.P4132001061349392254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A293518 n + A148193 n).toNat

end

end A375181.P4132001061349392254

/-! ## A375181.P17272479364708443465

`A024417(A148193(n)+A024417(n+1))`
-/

namespace A375181.P17272479364708443465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148193 n + A024417 (n + 1)).toNat

end

end A375181.P17272479364708443465

/-!
# A375182: Slowest increasing sequence of semiprimes such that the differences of successive terms are distinct.

The programs for A375182, there is no canonical definition to state claims against.
-/

/-! ## A375182.P3807587060699817601

`A054395(lt[A198982(n+1), A005843(n)])`
-/

namespace A375182.P3807587060699817601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A375182.P3807587060699817601

/-! ## A375182.P11448129930100188858

`A054395(lt[A233239(n+1), A161441(n+1)])`
-/

namespace A375182.P11448129930100188858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A375182.P11448129930100188858

/-! ## A375182.P9564437615917975962

`A054395(lt[A280961(n+1), A000203(3*n+1)])`
-/

namespace A375182.P9564437615917975962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A375182.P9564437615917975962

/-! ## A375182.P8552063210077358880

`A001358(lt[A236829(3*n+8), A345167(3*n+2)])`
-/

namespace A375182.P8552063210077358880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236829 (3 * n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A375182.P8552063210077358880

/-!
# A375183: In the binary expansion of n, complement bits at even positions and to the right of a 1 (the most significant bit corresponding to position 1).

The programs for A375183, the canonical program `A375183.P6442371015820757928` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375183 has offset 0).

The definition of A375183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375183.P6442371015820757928

`xor(n, A377414(floor(n/2)))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A375183

/-- `xor(n, A377414(floor(n/2)))` -/
def P6442371015820757928.Spec : Prop :=
  ∀ n, P6442371015820757928.a n = A375183 n

theorem P6442371015820757928.correct : P6442371015820757928.Spec := by
  intro n
  simp only [A375183]

end A375183

/-! ## A375183.P14989930064649956353

`xor(n, A286548(n-A377415(n)))`
-/

namespace A375183.P14989930064649956353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A286548 ((n : ℤ) - A377415 n).toNat)

end

end A375183.P14989930064649956353

namespace A375183

/-- `xor(n, A286548(n-A377415(n)))` -/
def P14989930064649956353.Spec : Prop :=
  ∀ n, P14989930064649956353.a n = A375183 n

end A375183

/-! ## A375183.P3849207103499810145

`A375184(A165199(n))`
-/

namespace A375183.P3849207103499810145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375184 (A165199 n).toNat

end

end A375183.P3849207103499810145

namespace A375183

/-- `A375184(A165199(n))` -/
def P3849207103499810145.Spec : Prop :=
  ∀ n, P3849207103499810145.a n = A375183 n

end A375183

/-! ## A375183.P2738280609442203917

`A375184(A245443(A193231(n)))`
-/

namespace A375183.P2738280609442203917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375184 (A245443 (A193231 n).toNat).toNat

end

end A375183.P2738280609442203917

namespace A375183

/-- `A375184(A245443(A193231(n)))` -/
def P2738280609442203917.Spec : Prop :=
  ∀ n, P2738280609442203917.a n = A375183 n

end A375183

/-! ## A375183.P5747379956382716878

`A375184(A193231(A245444(n)))`
-/

namespace A375183.P5747379956382716878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375184 (A193231 (A245444 n).toNat).toNat

end

end A375183.P5747379956382716878

namespace A375183

/-- `A375184(A193231(A245444(n)))` -/
def P5747379956382716878.Spec : Prop :=
  ∀ n, P5747379956382716878.a n = A375183 n

end A375183

/-!
# A375184: In the binary expansion of n, complement bits at even positions and to the right of a 0 (the most significant bit corresponding to position 1).

The programs for A375184, the canonical program `A375184.P6361993029201309949` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375184 has offset 0).

The definition of A375184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375184.P6361993029201309949

`A375183(A165199(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A375184

/-- `A375183(A165199(n))` -/
def P6361993029201309949.Spec : Prop :=
  ∀ n, P6361993029201309949.a n = A375184 n

theorem P6361993029201309949.correct : P6361993029201309949.Spec := by
  intro n
  simp only [A375184]

end A375184

/-! ## A375184.P8710714116555244704

`A375183(A245443(A193231(n)))`
-/

namespace A375184.P8710714116555244704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375183 (A245443 (A193231 n).toNat).toNat

end

end A375184.P8710714116555244704

namespace A375184

/-- `A375183(A245443(A193231(n)))` -/
def P8710714116555244704.Spec : Prop :=
  ∀ n, P8710714116555244704.a n = A375184 n

end A375184

/-! ## A375184.P17468296815345502120

`A375183(A193231(A245444(n)))`
-/

namespace A375184.P17468296815345502120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375183 (A193231 (A245444 n).toNat).toNat

end

end A375184.P17468296815345502120

namespace A375184

/-- `A375183(A193231(A245444(n)))` -/
def P17468296815345502120.Spec : Prop :=
  ∀ n, P17468296815345502120.a n = A375184 n

end A375184

/-! ## A375184.P16814471081647210583

`A154445(A154445(n))%A106531(n+1)`
-/

namespace A375184.P16814471081647210583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154445 (A154445 n).toNat) (A106531 (n + 1))

end

end A375184.P16814471081647210583

namespace A375184

/-- `A154445(A154445(n))%A106531(n+1)` -/
def P16814471081647210583.Spec : Prop :=
  ∀ n, P16814471081647210583.a n = A375184 n

end A375184

/-! ## A375184.P10189352062245081800

`A154445(A154445(n)%A247715(n+1))`
-/

namespace A375184.P10189352062245081800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154445 (Int.tmod (A154445 n) (A247715 (n + 1))).toNat

end

end A375184.P10189352062245081800

namespace A375184

/-- `A154445(A154445(n)%A247715(n+1))` -/
def P10189352062245081800.Spec : Prop :=
  ∀ n, P10189352062245081800.a n = A375184 n

end A375184

/-!
# A375185: Number of subsets of {1,2,...,n} such that no two elements differ by 1, 2, 3, or 5.

The programs for A375185, the canonical program `A375185.P14050459311278268511` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375185 has offset 0).

The definition of A375185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375185.P14050459311278268511

`a(n-1)+a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A375185

/-- `a(n-1)+a(n-4)-a(n-5)+a(n-6)` -/
def P14050459311278268511.Spec : Prop :=
  ∀ n, P14050459311278268511.a n = A375185 n

theorem P14050459311278268511.correct : P14050459311278268511.Spec := by
  intro n
  simp only [A375185]

end A375185

/-! ## A375185.P17644244145632986349

`A000267(A367223(n)+A000045(n))`
-/

namespace A375185.P17644244145632986349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A367223 n + A000045 n).toNat

end

end A375185.P17644244145632986349

namespace A375185

/-- `A000267(A367223(n)+A000045(n))` -/
def P17644244145632986349.Spec : Prop :=
  ∀ n, P17644244145632986349.a n = A375185 n

end A375185

/-! ## A375185.P9475255207179778711

`A002024(A002572(n+4)-A002572(n+1))`
-/

namespace A375185.P9475255207179778711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A002572 (n + 4) - A002572 (n + 1)).toNat

end

end A375185.P9475255207179778711

namespace A375185

/-- `A002024(A002572(n+4)-A002572(n+1))` -/
def P9475255207179778711.Spec : Prop :=
  ∀ n, P9475255207179778711.a n = A375185 n

end A375185

/-! ## A375185.P3845276967550461814

`A002024(A237666(n)-A089075(2*n+3))`
-/

namespace A375185.P3845276967550461814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A237666 n - A089075 (2 * n + 3)).toNat

end

end A375185.P3845276967550461814

namespace A375185

/-- `A002024(A237666(n)-A089075(2*n+3))` -/
def P3845276967550461814.Spec : Prop :=
  ∀ n, P3845276967550461814.a n = A375185 n

end A375185

/-! ## A375185.P3085268807712407055

`A227568(A287439(n))`
-/

namespace A375185.P3085268807712407055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A287439 n).toNat

end

end A375185.P3085268807712407055

namespace A375185

/-- `A227568(A287439(n))` -/
def P3085268807712407055.Spec : Prop :=
  ∀ n, P3085268807712407055.a n = A375185 n

end A375185

/-!
# A375186: Number of subsets of {1,2,...,n} such that no two elements differ by 1, 2, 4, or 5.

The programs for A375186, the canonical program `A375186.P15841188888946693863` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375186 has offset 0).

The definition of A375186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375186.P15841188888946693863

`a(n-1)+a(n-3)-a(n-4)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6, a(5)=8`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A375186

/-- `a(n-1)+a(n-3)-a(n-4)+a(n-6)` -/
def P15841188888946693863.Spec : Prop :=
  ∀ n, P15841188888946693863.a n = A375186 n

theorem P15841188888946693863.correct : P15841188888946693863.Spec := by
  intro n
  simp only [A375186]

end A375186

/-! ## A375186.P4744822954116141253

`A252743(A022166(2*n+3))+A094988(2*n+3)`
-/

namespace A375186.P4744822954116141253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252743 (A022166 (2 * n + 3)).toNat + A094988 (2 * n + 3)

end

end A375186.P4744822954116141253

namespace A375186

/-- `A252743(A022166(2*n+3))+A094988(2*n+3)` -/
def P4744822954116141253.Spec : Prop :=
  ∀ n, P4744822954116141253.a n = A375186 n

end A375186

/-! ## A375186.P935291793033011913

`A217869(A181159(n+1))+A017911(n)`
-/

namespace A375186.P935291793033011913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217869 (A181159 (n + 1)).toNat + A017911 n

end

end A375186.P935291793033011913

namespace A375186

/-- `A217869(A181159(n+1))+A017911(n)` -/
def P935291793033011913.Spec : Prop :=
  ∀ n, P935291793033011913.a n = A375186 n

end A375186

/-! ## A375186.P16015433356561267414

`A338006(A164316(n))`
-/

namespace A375186.P16015433356561267414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338006 (A164316 n).toNat

end

end A375186.P16015433356561267414

namespace A375186

/-- `A338006(A164316(n))` -/
def P16015433356561267414.Spec : Prop :=
  ∀ n, P16015433356561267414.a n = A375186 n

end A375186

/-! ## A375186.P14858457830913506869

`A380573(A274194(n))`
-/

namespace A375186.P14858457830913506869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (A274194 n).toNat

end

end A375186.P14858457830913506869

namespace A375186

/-- `A380573(A274194(n))` -/
def P14858457830913506869.Spec : Prop :=
  ∀ n, P14858457830913506869.a n = A375186 n

end A375186

/-!
# A375187: Number of unitary square divisors of n!.

The programs for A375187, there is no canonical definition to state claims against.
-/

/-! ## A375187.P4117757415703115746

`∏{e}[A240502(n), #+1]`
-/

namespace A375187.P4117757415703115746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A375187.P4117757415703115746

/-! ## A375187.P16942168128889118583

`∏{p}[A240502(n), A000005(#)]`
-/

namespace A375187.P16942168128889118583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 p

end

end A375187.P16942168128889118583

/-! ## A375187.P1046190320978408605

`∏{p}[A240502(n), A293226(#)]`
-/

namespace A375187.P1046190320978408605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A293226 p

end

end A375187.P1046190320978408605

/-! ## A375187.P10334976292146938147

`A000005(A240502(n))`
-/

namespace A375187.P10334976292146938147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A240502 n).toNat

end

end A375187.P10334976292146938147

/-!
# A375195: Numbers k such that A025487(k) and A025487(k+1) have an equal number of divisors.

The programs for A375195, there is no canonical definition to state claims against.
-/

/-! ## A375195.P7826459446369062387

`eq[A146288(n+1), A146288(n+2)]+1`
-/

namespace A375195.P7826459446369062387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146288 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A375195.P7826459446369062387

/-! ## A375195.P6280269605241478649

`A085089(A375196(n+1))`
-/

namespace A375195.P6280269605241478649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A375196 (n + 1)).toNat

end

end A375195.P6280269605241478649

/-! ## A375195.P11207547997192959208

`A101296(A375196(A224401(A085836(n+1))))`
-/

namespace A375195.P11207547997192959208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A375196 (A224401 (A085836 (n + 1)).toNat).toNat).toNat

end

end A375195.P11207547997192959208

/-!
# A375196: Smaller of two successive terms of A025487 that have an equal number of divisors.

The programs for A375196, there is no canonical definition to state claims against.
-/

/-! ## A375196.P852336238953202520

`A025487(A375195(n+1))`
-/

namespace A375196.P852336238953202520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A375195 (n + 1)).toNat

end

end A375196.P852336238953202520

/-!
# A375197: Terms k in A025487 such that k-1 and k+1 are twin primes.

The programs for A375197, there is no canonical definition to state claims against.
-/

/-! ## A375197.P2368148158875471492

`∩[A344385(n+1), A384530(n+1)]`
-/

namespace A375197.P2368148158875471492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375197.P2368148158875471492

/-! ## A375197.P17988516546583547445

`A025487(A375198(n+1))`
-/

namespace A375197.P17988516546583547445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A375198 (n + 1)).toNat

end

end A375197.P17988516546583547445

/-! ## A375197.P9760773707407654768

`∩[A025487(n+1), A384530(n+1)]`
-/

namespace A375197.P9760773707407654768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375197.P9760773707407654768

/-! ## A375197.P15673903283815998263

`∩[A025487(n+1), A258838(n+1)]`
-/

namespace A375197.P15673903283815998263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375197.P15673903283815998263

/-! ## A375197.P13081576580906461486

`∩[A258838(n+1), A344385(n+1)]`
-/

namespace A375197.P13081576580906461486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375197.P13081576580906461486

/-!
# A375198: Numbers k such that A025487(k)-1 and A025487(k)+1 are twin primes.

The programs for A375198, there is no canonical definition to state claims against.
-/

/-! ## A375198.P12187094139701333421

`A085089(A375197(n+1))`
-/

namespace A375198.P12187094139701333421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A375197 (n + 1)).toNat

end

end A375198.P12187094139701333421

/-!
# A375199: Number of groups G of order n such that |N(G)| <> |Z(G)|, where N(G) is the intersection of the normalizers of all subgroups of G and Z(G) is the center of G.

The programs for A375199, there is no canonical definition to state claims against.
-/

/-! ## A375199.P10360567687747019079

`A357807(n+1)%A318667(n+1)`
-/

namespace A375199.P10360567687747019079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357807 (n + 1)) (A318667 (n + 1))

end

end A375199.P10360567687747019079

/-! ## A375199.P18425490168666131475

`A352831(A281118(n+1))%∏{e}[n+1, (-2)^#/2]`
-/

namespace A375199.P18425490168666131475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352831 (A281118 (n + 1)).toNat) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), ((-2) ^ Nat.factorization (f1 n) p : ℚ) / 2))

end

end A375199.P18425490168666131475

/-! ## A375199.P4429474482685176118

`A393520(n+1)%A317941(n+1)`
-/

namespace A375199.P4429474482685176118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393520 (n + 1)) (A317941 (n + 1))

end

end A375199.P4429474482685176118

/-! ## A375199.P152713695096913791

`A128249(n+1)%A317941(n+1)`
-/

namespace A375199.P152713695096913791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128249 (n + 1)) (A317941 (n + 1))

end

end A375199.P152713695096913791

/-! ## A375199.P3706011605087495120

`A375096(n+1)%A318667(n+1)`
-/

namespace A375199.P3706011605087495120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375096 (n + 1)) (A318667 (n + 1))

end

end A375199.P3706011605087495120

