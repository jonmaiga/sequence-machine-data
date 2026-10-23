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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A079200: Number of isomorphism classes of associative non-commutative closed binary operations on a set of order n, listed by class size.

The programs for A079200, there is no canonical definition to state claims against.
-/

/-! ## A079200.P1034031078449115780

`A079208(n)+A079207(n)`
-/

namespace A079200.P1034031078449115780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079208 n + A079207 n

end

end A079200.P1034031078449115780

/-! ## A079200.P9446515014828399592

`A079175(n)-A079201(n)`
-/

namespace A079200.P9446515014828399592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 n - A079201 n

end

end A079200.P9446515014828399592

/-! ## A079200.P10602132005388992362

`A079207(n)-A057428(n)*A079208(n)`
-/

namespace A079200.P10602132005388992362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079207 n - A057428 n * A079208 n

end

end A079200.P10602132005388992362

/-! ## A079200.P17695738315903152890

`or(A079207(n), A079208(A118759(n)))`
-/

namespace A079200.P17695738315903152890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079207 n) (A079208 (A118759 n).toNat)

end

end A079200.P17695738315903152890

/-! ## A079200.P14198649790302404312

`and(A023416(A037270(n)), A134058(n+1))`
-/

namespace A079200.P14198649790302404312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023416 (A037270 n).toNat) (A134058 (n + 1))

end

end A079200.P14198649790302404312

/-!
# A079201: Number of isomorphism classes of associative commutative closed binary operations on a set of order n, listed by class size.

The programs for A079201, there is no canonical definition to state claims against.
-/

/-! ## A079201.P1782406203266793259

`A079175(n)-A079200(n)`
-/

namespace A079201.P1782406203266793259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 n - A079200 n

end

end A079201.P1782406203266793259

/-! ## A079201.P6368622168286998264

`A079175(n)-(A079208(n)+A079207(n))`
-/

namespace A079201.P6368622168286998264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 n - (A079208 n + A079207 n)

end

end A079201.P6368622168286998264

/-! ## A079201.P1294571206960533914

`A079175(n)+A079200(n)*A099837(3*n+1)`
-/

namespace A079201.P1294571206960533914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 n + A079200 n * A099837 (3 * n + 1)

end

end A079201.P1294571206960533914

/-! ## A079201.P9033329988381178469

`A079175(n)-(A079207(n)-A057428(n)*A079208(n))`
-/

namespace A079201.P9033329988381178469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 n - (A079207 n - A057428 n * A079208 n)

end

end A079201.P9033329988381178469

/-! ## A079201.P2599797127826943860

`A079209(n^a(floor(acot(n))))` with `a(0)=1, a(1)=1`
-/

namespace A079201.P2599797127826943860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A079209 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat : ℤ))).toNat

end

end A079201.P2599797127826943860

/-!
# A079202: Number of isomorphism classes of non-associative non-commutative non-anti-associative non-anti-commutative closed binary operations on a set of order n, listed by class size.

The programs for A079202, there is no canonical definition to state claims against.
-/

/-! ## A079202.P9180235703666870944

`∑{d}[A273923(n+1), A074469(#)]`
-/

namespace A079202.P9180235703666870944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A074469 d

end

end A079202.P9180235703666870944

/-! ## A079202.P5383712811131218713

`and(∑[A133170(3*n+1)], A133177(2*n+1))`
-/

namespace A079202.P5383712811131218713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133170 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A133177 (2 * n + 1))

end

end A079202.P5383712811131218713

/-! ## A079202.P16522658291995785015

`and(A121184(A049887(n+1)), A306526(3*(n+1)))`
-/

namespace A079202.P16522658291995785015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A121184 (A049887 (n + 1)).toNat) (A306526 (3 * (n + 1)))

end

end A079202.P16522658291995785015

/-!
# A079204: Number of isomorphism classes of non-associative non-commutative anti-associative non-anti-commutative closed binary operations on a set of order n, listed by class size.

The programs for A079204, there is no canonical definition to state claims against.
-/

/-! ## A079204.P17629530145048984134

`A079181(n+1)%∑[2^n]-A079205(n+1)`
-/

namespace A079204.P17629530145048984134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079181 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A079205 (n + 1)

end

end A079204.P17629530145048984134

/-! ## A079204.P45507147272351395

`(A079181(n+1)-A079205(n+1))%A000111(n)`
-/

namespace A079204.P45507147272351395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079181 (n + 1) - A079205 (n + 1)) (A000111 n)

end

end A079204.P45507147272351395

/-! ## A079204.P1045015486876679816

`A005088(n+1)*A292372(A045883(n))`
-/

namespace A079204.P1045015486876679816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (n + 1) * A292372 (A045883 n).toNat

end

end A079204.P1045015486876679816

/-! ## A079204.P12684863872689529650

`and(A292372(A045883(n)), A335877(n+1))`
-/

namespace A079204.P12684863872689529650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A292372 (A045883 n).toNat) (A335877 (n + 1))

end

end A079204.P12684863872689529650

/-! ## A079204.P5164198159993333088

`and(A335877(n+1), A342274(A059514(n+1)))`
-/

namespace A079204.P5164198159993333088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A335877 (n + 1)) (A342274 (A059514 (n + 1)).toNat)

end

end A079204.P5164198159993333088

/-!
# A079205: Number of isomorphism classes of non-associative non-commutative anti-associative anti-commutative closed binary operations on a set of order n, listed by class size.

The programs for A079205, there is no canonical definition to state claims against.
-/

/-! ## A079205.P8073073276548353449

`A079181(n+1)%A079171(n+1)-A079204(n+1)`
-/

namespace A079205.P8073073276548353449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079181 (n + 1)) (A079171 (n + 1)) - A079204 (n + 1)

end

end A079205.P8073073276548353449

/-! ## A079205.P16658408976843906512

`(A079181(n+1)-A079204(n+1))%A079191(n+1)`
-/

namespace A079205.P16658408976843906512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079181 (n + 1) - A079204 (n + 1)) (A079191 (n + 1))

end

end A079205.P16658408976843906512

/-!
# A079206: Numbers n in which the first K digits of n form an integer divisible by the K-th prime, for K = 1, 2, ..., M, where M is the number of digits in n.

The programs for A079206, there is no canonical definition to state claims against.
-/

/-! ## A079206.P3757276551382784917

`eq[A093178(A004086(n)), A133188(n+1)]`
-/

namespace A079206.P3757276551382784917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079206.P3757276551382784917

/-!
# A079207: Number of isomorphism classes of associative non-commutative non-anti-associative non-anti-commutative closed binary operations on a set of order n, listed by class size.

The programs for A079207, there is no canonical definition to state claims against.
-/

/-! ## A079207.P7444202878635991374

`A079200(n)-A079208(n)`
-/

namespace A079207.P7444202878635991374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079200 n - A079208 n

end

end A079207.P7444202878635991374

/-! ## A079207.P10175422560271233334

`A079175(n)-(A079208(n)+A079201(n))`
-/

namespace A079207.P10175422560271233334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 n - (A079208 n + A079201 n)

end

end A079207.P10175422560271233334

/-! ## A079207.P2291079684524410319

`A079200(n)+A057428(n)*A079208(n)`
-/

namespace A079207.P2291079684524410319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079200 n + A057428 n * A079208 n

end

end A079207.P2291079684524410319

/-! ## A079207.P13844822256573456150

`A079200(n)+A079208(n)*A260196(n)`
-/

namespace A079207.P13844822256573456150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079200 n + A079208 n * A260196 n

end

end A079207.P13844822256573456150

/-! ## A079207.P9941194878113628356

`A079175(n)-A079201(n)-A079208(A028310(n))`
-/

namespace A079207.P9941194878113628356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 n - A079201 n - A079208 (A028310 n).toNat

end

end A079207.P9941194878113628356

/-! ## A079207.P6439378814918742480

`xor(A079200(n), A079208(A118759(n)))`
-/

namespace A079207.P6439378814918742480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A079200 n) (A079208 (A118759 n).toNat)

end

end A079207.P6439378814918742480

/-! ## A079207.P2624103469412350150

`A079175(n)-A079201(n)-A079208(A118759(n))`
-/

namespace A079207.P2624103469412350150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 n - A079201 n - A079208 (A118759 n).toNat

end

end A079207.P2624103469412350150

/-!
# A079208: Number of isomorphism classes of associative non-commutative non-anti-associative anti-commutative closed binary operations on a set of order n, listed by class size.

The programs for A079208, there is no canonical definition to state claims against.
-/

/-! ## A079208.P3443917572540493567

`A079200(n)-A079207(n)`
-/

namespace A079208.P3443917572540493567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079200 n - A079207 n

end

end A079208.P3443917572540493567

/-! ## A079208.P1544155512071954853

`xor(A079200((2*n)%(n+1)+1), A079207(n))%3`
-/

namespace A079208.P1544155512071954853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A079200 (2 * n % (n + 1) + 1)) (A079207 n)) 3

end

end A079208.P1544155512071954853

/-! ## A079208.P8638052325416506311

`A030341(xor(A079200(n), A079207(n)))`
-/

namespace A079208.P8638052325416506311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (Int.xor (A079200 n) (A079207 n)).toNat

end

end A079208.P8638052325416506311

/-! ## A079208.P4938849445365100240

`A091086(xor(A079200(n), A079207(n)))`
-/

namespace A079208.P4938849445365100240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091086 (Int.xor (A079200 n) (A079207 n)).toNat

end

end A079208.P4938849445365100240

/-! ## A079208.P15601722814407308836

`A089850(xor(A079200(n), A079207(n)))%3`
-/

namespace A079208.P15601722814407308836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089850 (Int.xor (A079200 n) (A079207 n)).toNat) 3

end

end A079208.P15601722814407308836

/-! ## A079208.P7755417727011242350

`A079175(n)-(A079207(n)+A079201(n))`
-/

namespace A079208.P7755417727011242350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 n - (A079207 n + A079201 n)

end

end A079208.P7755417727011242350

/-! ## A079208.P8408137834381318205

`A001222(4*xor(A079200(n), A079207(n))+1)`
-/

namespace A079208.P8408137834381318205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * Int.xor (A079200 n) (A079207 n) + 1).toNat

end

end A079208.P8408137834381318205

/-! ## A079208.P15269311308209467776

`A343029(2*(xor(A079200(n), A079207(n))+4))`
-/

namespace A079208.P15269311308209467776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (2 * (Int.xor (A079200 n) (A079207 n) + 4)).toNat

end

end A079208.P15269311308209467776

/-! ## A079208.P6161962737688349992

`((A057427(n)+1)²*xor(A079200(n), A079207(n)))%3`
-/

namespace A079208.P6161962737688349992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A057427 n + 1) ^ 2 * Int.xor (A079200 n) (A079207 n)) 3

end

end A079208.P6161962737688349992

/-! ## A079208.P1447386875088549199

`A058129(xor(A079200(n), A079207(n)))`
-/

namespace A079208.P1447386875088549199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058129 (Int.xor (A079200 n) (A079207 n)).toNat

end

end A079208.P1447386875088549199

/-! ## A079208.P2651465327916682803

`A058131(xor(A079200(n), A079207(n)))`
-/

namespace A079208.P2651465327916682803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058131 (Int.xor (A079200 n) (A079207 n)).toNat

end

end A079208.P2651465327916682803

/-! ## A079208.P13178205421033408682

`A277753(xor(A079200(n), A079207(n))+4)`
-/

namespace A079208.P13178205421033408682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277753 (Int.xor (A079200 n) (A079207 n) + 4).toNat

end

end A079208.P13178205421033408682

/-! ## A079208.P3094737977895345250

`A001222(2^xor(A079200(n), A079207(n)))`
-/

namespace A079208.P3094737977895345250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.xor (A079200 n) (A079207 n) : ℤ))).toNat

end

end A079208.P3094737977895345250

/-!
# A079209: Number of isomorphism classes of associative commutative non-anti-associative non-anti-commutative closed binary operations on a set of order n, listed by class size.

The programs for A079209, there is no canonical definition to state claims against.
-/

/-! ## A079209.P6981795624791112986

`A079201(ceil(acot(n)+n))`
-/

namespace A079209.P6981795624791112986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079201 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A079209.P6981795624791112986

/-! ## A079209.P9361791977779054383

`A079201(abs(2-n)+3)`
-/

namespace A079209.P9361791977779054383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079201 (|2 - (n : ℤ)| + 3).toNat

end

end A079209.P9361791977779054383

/-! ## A079209.P13971277908490243106

`A079201(n+1)%(2^n)`
-/

namespace A079209.P13971277908490243106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079201 (n + 1)) (2 ^ n : ℤ)

end

end A079209.P13971277908490243106

/-! ## A079209.P1525689842434782705

`A079201((n+1)²/∏{p}[n+1, #])-floor(acot(n))`
-/

namespace A079209.P1525689842434782705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079201 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A079209.P1525689842434782705

/-! ## A079209.P13033187632743585399

`A079201(n+1)-A000007(n)`
-/

namespace A079209.P13033187632743585399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079201 (n + 1) - A000007 n

end

end A079209.P13033187632743585399

/-!
# A079210: Positive divisors of n!, listed in increasing order for each n, a new row for each n.

The programs for A079210, there is no canonical definition to state claims against.
-/

/-! ## A079210.P2949669034517166546

`A070861(n)%A034302(3*n+4)`
-/

namespace A079210.P2949669034517166546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070861 n) (A034302 (3 * n + 4))

end

end A079210.P2949669034517166546

/-! ## A079210.P8785504068891085671

`A070861(n)+A000007(A175773(n))`
-/

namespace A079210.P8785504068891085671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070861 n + A000007 (A175773 n).toNat

end

end A079210.P8785504068891085671

/-! ## A079210.P2345026317926903754

`A070861(n)%A004767(A000292(n))`
-/

namespace A079210.P2345026317926903754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070861 n) (A004767 (A000292 n).toNat)

end

end A079210.P2345026317926903754

/-! ## A079210.P12982499482862032182

`A057427(A325004(n+1))*A070861(n)`
-/

namespace A079210.P12982499482862032182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A325004 (n + 1)).toNat * A070861 n

end

end A079210.P12982499482862032182

/-! ## A079210.P8430125427862332546

`A070861(n)+A070565(A367582(2*n))`
-/

namespace A079210.P8430125427862332546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070861 n + A070565 (A367582 (2 * n)).toNat

end

end A079210.P8430125427862332546

/-!
# A079212: Numbers n in which the last k digits of n form an integer divisible by the k-th prime, for k = 1, 2, ..., m, where m is the number of digits in n.

The programs for A079212, there is no canonical definition to state claims against.
-/

/-! ## A079212.P14654687120782308465

`∑[∑[A289709(n+2)%4]]`
-/

namespace A079212.P14654687120782308465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289709 (n + 2)) 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079212.P14654687120782308465

/-! ## A079212.P4240294808427977327

`A118759(2*lt[lcm(3, n), n+9])`
-/

namespace A079212.P4240294808427977327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A079212.P4240294808427977327

/-! ## A079212.P9102762978718149822

`lt[A152833(n), A040565(n)]`
-/

namespace A079212.P9102762978718149822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152833 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079212.P9102762978718149822

/-! ## A079212.P630258750040621262

`A118759(2*A204502(n+1))`
-/

namespace A079212.P630258750040621262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (2 * A204502 (n + 1)).toNat

end

end A079212.P630258750040621262

/-! ## A079212.P12227328677858656621

`A000196(4*A204503(n+1))`
-/

namespace A079212.P12227328677858656621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (4 * A204503 (n + 1)).toNat

end

end A079212.P12227328677858656621

/-!
# A079213: Triangle read by rows giving T(n,k) = number of sets of k black squares in an n X n checkerboard with the upper left corner colored black, such that the line joining any 2 squares slopes down to the right, 0 <= k <= n.

The programs for A079213, there is no canonical definition to state claims against.
-/

/-! ## A079213.P8564843575537487612

`A046854(n)+A085478(n)-A000120(A059328(n))`
-/

namespace A079213.P8564843575537487612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + (A085478 n - A000120 (A059328 n).toNat)

end

end A079213.P8564843575537487612

/-! ## A079213.P16900159303886036750

`A342515(A141905(n))`
-/

namespace A079213.P16900159303886036750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (A141905 n).toNat

end

end A079213.P16900159303886036750

/-! ## A079213.P17557829183639077589

`A066401(round(A141905(n)/2)²)`
-/

namespace A079213.P17557829183639077589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066401 (SequenceMachineLib.roundAway ((A141905 n : ℚ) / 2) ^ 2).toNat

end

end A079213.P17557829183639077589

/-! ## A079213.P14426463544998158919

`A076984(A245243(n))`
-/

namespace A079213.P14426463544998158919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (A245243 n).toNat

end

end A079213.P14426463544998158919

/-! ## A079213.P13393046271006217600

`A278064(A125800(n))`
-/

namespace A079213.P13393046271006217600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278064 (A125800 n).toNat

end

end A079213.P13393046271006217600

/-!
# A079214: Catalan paths: numbers starting with 1 and ending with 0 where each digit is nonnegative and adjacent digits differ by 1.

The programs for A079214, there is no canonical definition to state claims against.
-/

/-! ## A079214.P11459994378259047823

`A007090(2*A032816(2*n+1))`
-/

namespace A079214.P11459994378259047823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (2 * A032816 (2 * n + 1)).toNat

end

end A079214.P11459994378259047823

/-!
# A079215: Catalan paths: numbers starting with 1 and ending with 1 where each digit is positive and adjacent digits differ by 1.

The programs for A079215, there is no canonical definition to state claims against.
-/

/-! ## A079215.P2792552695296718642

`A071159(A080298(n))`
-/

namespace A079215.P2792552695296718642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071159 (A080298 n).toNat

end

end A079215.P2792552695296718642

/-!
# A079216: Square array A(n>=0,k>=1) (listed antidiagonally: A(0,1)=1, A(1,1)=1, A(0,2)=1, A(2,1)=2, A(1,2)=1, A(0,3)=1, A(3,1)=3, ...) giving the number of n-edge general plane trees fixed by k-fold application of Catalan Automorphisms A057511/A057512 (Deep rotation of general parenthesizations/plane trees).

The programs for A079216, there is no canonical definition to state claims against.
-/

/-! ## A079216.P4720673140632683196

`A330754(A239144(n))+A191228(A297802(n+2))`
-/

namespace A079216.P4720673140632683196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330754 (A239144 n).toNat + A191228 (A297802 (n + 2)).toNat

end

end A079216.P4720673140632683196

/-! ## A079216.P3062669807685202029

`A177903(A225640(n)²)`
-/

namespace A079216.P3062669807685202029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 (A225640 n ^ 2).toNat

end

end A079216.P3062669807685202029

/-! ## A079216.P15413784364917615686

`A177903(A308292(n+1))`
-/

namespace A079216.P15413784364917615686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 (A308292 (n + 1)).toNat

end

end A079216.P15413784364917615686

/-! ## A079216.P7265906917842927543

`A177903(A225640(n)^2)`
-/

namespace A079216.P7265906917842927543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 (A225640 n ^ 2).toNat

end

end A079216.P7265906917842927543

/-! ## A079216.P18111399270417762295

`A058318(A141724(n+1)+1)`
-/

namespace A079216.P18111399270417762295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058318 (A141724 (n + 1) + 1).toNat

end

end A079216.P18111399270417762295

/-!
# A079217: Triangle T(n,d) (listed row-wise: T(1,1)=1, T(2,1)=1, T(2,2)=1, T(3,1)=2, T(3,2)=0, T(3,3)=1, ...) giving the number of n-edge general plane trees with root degree d that are fixed by Catalan Automorphisms A057511/A057512 (Deep rotation of general parenthesizations/plane trees).

The programs for A079217, there is no canonical definition to state claims against.
-/

/-! ## A079217.P9113965078251112231

`A214576(n+1)%A002907(n)`
-/

namespace A079217.P9113965078251112231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214576 (n + 1)) (A002907 n)

end

end A079217.P9113965078251112231

/-! ## A079217.P2002436240186032446

`A214576(n+1)^A281155(n)!`
-/

namespace A079217.P2002436240186032446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214576 (n + 1) ^ Nat.factorial (A281155 n).toNat

end

end A079217.P2002436240186032446

/-! ## A079217.P7975694439853350371

`and(A214576(n+1), A359085(n+1))`
-/

namespace A079217.P7975694439853350371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A214576 (n + 1)) (A359085 (n + 1))

end

end A079217.P7975694439853350371

/-! ## A079217.P13599330842861146369

`floor(A214576(n+1)+acot(A306489(3*n+4)))`
-/

namespace A079217.P13599330842861146369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A214576 (n + 1) : ℝ) + SequenceMachineLib.acot (A306489 (3 * n + 4) : ℝ)⌋

end

end A079217.P13599330842861146369

/-! ## A079217.P15194286876885361015

`A214576(n+1)*A268357(A276086(n))`
-/

namespace A079217.P15194286876885361015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214576 (n + 1) * A268357 (A276086 n).toNat

end

end A079217.P15194286876885361015

/-!
# A079218: Triangle T(n,d) (listed row-wise: T(1,1)=1, T(2,1)=1, T(2,2)=1, T(3,1)=2, T(3,2)=2, T(3,3)=1, ...) giving the number of n-edge general plane trees with root degree d that are fixed by the two-fold application of Catalan Automorphisms A057511/A057512 (Deep rotation of general parenthesizations/plane trees).

The programs for A079218, there is no canonical definition to state claims against.
-/

/-! ## A079218.P17855908928503377344

`C(A079220(n), A051390(n+1)!)`
-/

namespace A079218.P17855908928503377344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079220 n).toNat (Nat.factorial (A051390 (n + 1)).toNat)

end

end A079218.P17855908928503377344

/-! ## A079218.P10490817614144718887

`C(A079220(n), A124120(n+1)!)`
-/

namespace A079218.P10490817614144718887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079220 n).toNat (Nat.factorial (A124120 (n + 1)).toNat)

end

end A079218.P10490817614144718887

/-! ## A079218.P2934497802463582767

`A079220(C(A051390(n+1), 2)+n)`
-/

namespace A079218.P2934497802463582767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079220 (Nat.choose (A051390 (n + 1)).toNat 2 + n)

end

end A079218.P2934497802463582767

/-! ## A079218.P10049327148638256415

`A079220(C(A124120(n+1), 2)+n)`
-/

namespace A079218.P10049327148638256415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079220 (Nat.choose (A124120 (n + 1)).toNat 2 + n)

end

end A079218.P10049327148638256415

/-! ## A079218.P14188803327320868325

`A079220(n)*A267576(A332834(n))`
-/

namespace A079218.P14188803327320868325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079220 n * A267576 (A332834 n).toNat

end

end A079218.P14188803327320868325

/-!
# A079219: Triangle T(n,d) (listed row-wise: T(1,1)=1, T(2,1)=1, T(2,2)=1, T(3,1)=2, T(3,2)=0, T(3,3)=1, ...) giving the number of n-edge general plane trees with root degree d that are fixed by the three-fold application of Catalan Automorphisms A057511/A057512 (Deep rotation of general parenthesizations/plane trees).

The programs for A079219, there is no canonical definition to state claims against.
-/

/-! ## A079219.P1891940625812994444

`A168019(n)+A137579(A329645(3*n+2))`
-/

namespace A079219.P1891940625812994444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168019 n + A137579 (A329645 (3 * n + 2)).toNat

end

end A079219.P1891940625812994444

/-! ## A079219.P18267926484083770275

`A308502(n+2)%A000120(A284539(n+1))`
-/

namespace A079219.P18267926484083770275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308502 (n + 2)) (A000120 (A284539 (n + 1)).toNat)

end

end A079219.P18267926484083770275

/-! ## A079219.P4512085165897168664

`and(A090721(A001190(n+4)), A319375(n+1))`
-/

namespace A079219.P4512085165897168664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090721 (A001190 (n + 4)).toNat) (A319375 (n + 1))

end

end A079219.P4512085165897168664

/-!
# A079220: Triangle T(n,d) (listed row-wise: T(1,1)=1, T(2,1)=1, T(2,2)=1, T(3,1)=2, T(3,2)=2, T(3,3)=1, ...) giving the number of n-edge general plane trees with root degree d that are fixed by the four-fold application of Catalan Automorphisms A057511/A057512 (Deep rotation of general parenthesizations/plane trees).

The programs for A079220, there is no canonical definition to state claims against.
-/

/-! ## A079220.P6212015572724745216

`or(A079200(A079267(n)), A079218(n))`
-/

namespace A079220.P6212015572724745216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079200 (A079267 n).toNat) (A079218 n)

end

end A079220.P6212015572724745216

/-! ## A079220.P13419214602248685269

`A333767(A079209(n+1))+A079218(n)`
-/

namespace A079220.P13419214602248685269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333767 (A079209 (n + 1)).toNat + A079218 n

end

end A079220.P13419214602248685269

/-! ## A079220.P14408924285225003878

`A085860(A079204(n+1))+A079218(n)`
-/

namespace A079220.P14408924285225003878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 (A079204 (n + 1)).toNat + A079218 n

end

end A079220.P14408924285225003878

/-! ## A079220.P3909791349933390744

`A079218(n)+A079200(A127193(n+1))`
-/

namespace A079220.P3909791349933390744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079218 n + A079200 (A127193 (n + 1)).toNat

end

end A079220.P3909791349933390744

/-! ## A079220.P8582774319245630739

`(A079218(n)+A079207(A127193(n+1)))%A005843(n+1)`
-/

namespace A079220.P8582774319245630739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079218 n + A079207 (A127193 (n + 1)).toNat) (A005843 (n + 1))

end

end A079220.P8582774319245630739

/-!
# A079222: Triangle T(n,d) (listed row-wise: T(1,1)=1, T(2,1)=1, T(2,2)=1, T(3,1)=2, T(3,2)=2, T(3,3)=1, ...) giving the number of n-edge general plane trees with root degree d that are fixed by the six-fold application of Catalan Automorphisms A057511/A057512 (Deep rotation of general parenthesizations/plane trees).

The programs for A079222, there is no canonical definition to state claims against.
-/

/-! ## A079222.P1846177414124468926

`A033184(n+1)%A365065(xor(n, n+1))`
-/

namespace A079222.P1846177414124468926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033184 (n + 1)) (A365065 (Nat.xor n (n + 1)))

end

end A079222.P1846177414124468926

/-! ## A079222.P10435837169293684461

`A033184(n+1)%A006047(A126454(n))`
-/

namespace A079222.P10435837169293684461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033184 (n + 1)) (A006047 (A126454 n).toNat)

end

end A079222.P10435837169293684461

/-! ## A079222.P6155952043310655083

`C(A033184(n+1), A094635(A332835(n)))`
-/

namespace A079222.P6155952043310655083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A033184 (n + 1)).toNat (A094635 (A332835 n).toNat).toNat

end

end A079222.P6155952043310655083

/-! ## A079222.P12089796885844882918

`and(A033184(n+1), A253249(A262864(n)))`
-/

namespace A079222.P12089796885844882918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033184 (n + 1)) (A253249 (A262864 n).toNat)

end

end A079222.P12089796885844882918

/-! ## A079222.P9576869958942862511

`abs(A171567(n))%A328278(A088617(n+2))`
-/

namespace A079222.P9576869958942862511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A171567 n| (A328278 (A088617 (n + 2)).toNat)

end

end A079222.P9576869958942862511

/-!
# A079223: Number of Catalan objects fixed by two-fold application of the Catalan bijections A057511/A057512 (Deep rotation of general parenthesizations/plane trees).

The programs for A079223, there is no canonical definition to state claims against.
-/

/-! ## A079223.P3738483768581839829

`A079216(∑[n+1]+1)`
-/

namespace A079223.P3738483768581839829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079216 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A079223.P3738483768581839829

/-! ## A079223.P17124013414901004979

`A280749(2*n+1)+A079216(A000124(n+1))`
-/

namespace A079223.P17124013414901004979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280749 (2 * n + 1) + A079216 (A000124 (n + 1)).toNat

end

end A079223.P17124013414901004979

/-! ## A079223.P16893376990684594614

`A023890(A263769(3*(n+1)))*A079216(A000124(n+1))`
-/

namespace A079223.P16893376990684594614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (A263769 (3 * (n + 1))).toNat * A079216 (A000124 (n + 1)).toNat

end

end A079223.P16893376990684594614

/-! ## A079223.P1819503396993377932

`A079218(∑[n])`
-/

namespace A079223.P1819503396993377932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079218 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079223.P1819503396993377932

/-! ## A079223.P14537331803489740529

`gcd(floor(1/(n+1)), A079218(n*(n+1)/2))`
-/

namespace A079223.P14537331803489740529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A079218 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A079223.P14537331803489740529

/-!
# A079224: Number of Catalan objects fixed by three-fold application of the Catalan bijections A057511/A057512 (Deep rotation of general parenthesizations/plane trees).

The programs for A079224, there is no canonical definition to state claims against.
-/

/-! ## A079224.P3855196299346642713

`A079219(∑[n])`
-/

namespace A079224.P3855196299346642713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079219 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079224.P3855196299346642713

/-! ## A079224.P9114164881114150704

`lcm((-1)^n, A079219(A000217(n)))`
-/

namespace A079224.P9114164881114150704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A079219 (A000217 n).toNat)

end

end A079224.P9114164881114150704

/-! ## A079224.P15908091796951865750

`A079219(or(1, n)*ceil(n/2))+A000035(2*(n+2))`
-/

namespace A079224.P15908091796951865750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079219 ((Nat.lor 1 n : ℤ) * ⌈(n : ℚ) / 2⌉).toNat + A000035 (2 * (n + 2))

end

end A079224.P15908091796951865750

/-! ## A079224.P18289877697855830481

`A079219(floor((2*n+1)²/8))+A000035(2*(n+2))`
-/

namespace A079224.P18289877697855830481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079219 ⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋.toNat + A000035 (2 * (n + 2))

end

end A079224.P18289877697855830481

/-! ## A079224.P8122888245161482180

`A079219(A000217(n))%A096636(n)`
-/

namespace A079224.P8122888245161482180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079219 (A000217 n).toNat) (A096636 n)

end

end A079224.P8122888245161482180

/-!
# A079225: Number of Catalan objects fixed by four-fold application of the Catalan bijections A057511/A057512 (Deep rotation of general parenthesizations/plane trees).

The programs for A079225, there is no canonical definition to state claims against.
-/

/-! ## A079225.P8611961307182161241

`A079220(∑[n])`
-/

namespace A079225.P8611961307182161241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079220 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079225.P8611961307182161241

/-! ## A079225.P8688182779852512666

`lcm((-1)^n, A079220(A000217(n)))`
-/

namespace A079225.P8688182779852512666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A079220 (A000217 n).toNat)

end

end A079225.P8688182779852512666

/-! ## A079225.P3412999546132604207

`A079220(n*(n+1)/2)-A371222(3*(n+1))`
-/

namespace A079225.P3412999546132604207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079220 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat - A371222 (3 * (n + 1))

end

end A079225.P3412999546132604207

/-! ## A079225.P6221395946412357742

`A079220(n*(n+1)/2)-A059841(2*n+3)`
-/

namespace A079225.P6221395946412357742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079220 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat - A059841 (2 * n + 3)

end

end A079225.P6221395946412357742

/-! ## A079225.P8895950934570193785

`A079220(A000217(n))%A002225(n+1)`
-/

namespace A079225.P8895950934570193785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079220 (A000217 n).toNat) (A002225 (n + 1))

end

end A079225.P8895950934570193785

/-!
# A079226: Number of Catalan objects fixed by five-fold application of the Catalan bijections A057511/A057512 (deep rotation of general parenthesizations/plane trees).

The programs for A079226, there is no canonical definition to state claims against.
-/

/-! ## A079226.P13987465830115114776

`A079221(∑[n])`
-/

namespace A079226.P13987465830115114776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079221 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079226.P13987465830115114776

/-! ## A079226.P8462136815513023263

`A080300(2*n+1)+A079221(A000217(n))`
-/

namespace A079226.P8462136815513023263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (2 * n + 1) + A079221 (A000217 n).toNat

end

end A079226.P8462136815513023263

/-! ## A079226.P18037051929162959489

`A117940(3*n+2)+A079221(A000217(n))`
-/

namespace A079226.P18037051929162959489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117940 (3 * n + 2) + A079221 (A000217 n).toNat

end

end A079226.P18037051929162959489

/-! ## A079226.P8838455719636277779

`A079216(eq[4, A002262(n)])`
-/

namespace A079226.P8838455719636277779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079226.P8838455719636277779

/-! ## A079226.P1148588416083500092

`A079216(eq[16, A059268(n)])`
-/

namespace A079226.P1148588416083500092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079226.P1148588416083500092

/-!
# A079227: Number of Catalan objects fixed by six-fold application of the Catalan bijections A057511/A057512 (Deep rotation of general parenthesizations/plane trees).

The programs for A079227, there is no canonical definition to state claims against.
-/

/-! ## A079227.P11945224195282395604

`A079222(∑[n])`
-/

namespace A079227.P11945224195282395604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079227.P11945224195282395604

/-! ## A079227.P17432212888739003910

`A079222(A000217(n))%A218410(n+1)`
-/

namespace A079227.P17432212888739003910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079222 (A000217 n).toNat) (A218410 (n + 1))

end

end A079227.P17432212888739003910

/-! ## A079227.P2738289999918454127

`A043545(3*n+2)*A079222(A000217(n))`
-/

namespace A079227.P2738289999918454127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (3 * n + 2) * A079222 (A000217 n).toNat

end

end A079227.P2738289999918454127

/-! ## A079227.P8746300663738080842

`A328959(2*n+5)+A079222(A000217(n))`
-/

namespace A079227.P8746300663738080842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328959 (2 * n + 5) + A079222 (A000217 n).toNat

end

end A079227.P8746300663738080842

/-! ## A079227.P13712772080845899588

`A079216(A167499(n+4))`
-/

namespace A079227.P13712772080845899588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079216 (A167499 (n + 4)).toNat

end

end A079227.P13712772080845899588

/-!
# A079228: Least number > n with greater squarefree kernel than that of n.

The programs for A079228, there is no canonical definition to state claims against.
-/

/-! ## A079228.P5292470631388667577

`A079229(n+1)+1+n`
-/

namespace A079228.P5292470631388667577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079229 (n + 1) + 1 + (n : ℤ)

end

end A079228.P5292470631388667577

/-! ## A079228.P16122964398096545167

`A079229(Δ[n²]-n)-xor(n, -1)`
-/

namespace A079228.P16122964398096545167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079229 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - Int.xor (n : ℤ) (-1)

end

end A079228.P16122964398096545167

/-! ## A079228.P1394856125110000098

`A020725(A079229(n+1)+n)`
-/

namespace A079228.P1394856125110000098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A079229 (n + 1) + (n : ℤ)).toNat

end

end A079228.P1394856125110000098

/-! ## A079228.P15744262391238381490

`A079115(C(n, A348948(n+1))+1)+n+1`
-/

namespace A079228.P15744262391238381490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079115 (Nat.choose n (A348948 (n + 1)).toNat + 1) + (n + 1 : ℤ)

end

end A079228.P15744262391238381490

/-! ## A079228.P8393593725628937054

`A067535(n+2)-A015582(A057546(n))`
-/

namespace A079228.P8393593725628937054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (n + 2) - A015582 (A057546 n).toNat

end

end A079228.P8393593725628937054

/-!
# A079229: Least k>0 such that rad(n+k) > rad(n), where rad is the squarefree kernel (A007947).

The programs for A079229, there is no canonical definition to state claims against.
-/

/-! ## A079229.P15110215006395237103

`A079228(n+1)-(n+1)`
-/

namespace A079229.P15110215006395237103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079228 (n + 1) - (n + 1 : ℤ)

end

end A079229.P15110215006395237103

/-! ## A079229.P7924007534582993685

`A002113(A079228(n+1)-n)`
-/

namespace A079229.P7924007534582993685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A079228 (n + 1) - (n : ℤ)).toNat

end

end A079229.P7924007534582993685

/-! ## A079229.P13990986546945766753

`A004913(A079228(n+1)-n)`
-/

namespace A079229.P13990986546945766753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (A079228 (n + 1) - (n : ℤ)).toNat

end

end A079229.P13990986546945766753

/-! ## A079229.P13171891782876961491

`A004914(A079228(n+1)-n)`
-/

namespace A079229.P13171891782876961491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004914 (A079228 (n + 1) - (n : ℤ)).toNat

end

end A079229.P13171891782876961491

/-! ## A079229.P17507717907831081133

`A009993(A079228(n+1)-n)`
-/

namespace A079229.P17507717907831081133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (A079228 (n + 1) - (n : ℤ)).toNat

end

end A079229.P17507717907831081133

/-! ## A079229.P17862908184872308898

`A028310(A079228(n+1)%(n+1))`
-/

namespace A079229.P17862908184872308898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A079228 (n + 1)) (n + 1 : ℤ)).toNat

end

end A079229.P17862908184872308898

/-! ## A079229.P15114077035625785245

`A290109(2^A079228(n+1)/2^(n+1))`
-/

namespace A079229.P15114077035625785245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290109 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A079228 (n + 1) : ℤ) / (2 ^ (n + 1) : ℚ))).toNat

end

end A079229.P15114077035625785245

/-! ## A079229.P6186403533582762586

`A002260(A079228(n+1)+∑[n])`
-/

namespace A079229.P6186403533582762586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A079228 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A079229.P6186403533582762586

/-! ## A079229.P9024162858144100981

`A079228(A014430(∑[n]))-1-n`
-/

namespace A079229.P9024162858144100981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079228 (A014430 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1 - (n : ℤ)

end

end A079229.P9024162858144100981

/-!
# A079239: Numbers n in which the last K digits of n form an integer divisible by K^3, for K = 1, 2, ..., M, where M is the number of digits in n.

The programs for A079239, there is no canonical definition to state claims against.
-/

/-! ## A079239.P8533466660603595331

`record[A079041(n+1)%A209886(n+1)]`
-/

namespace A079239.P8533466660603595331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079041 (n + 1)) (A209886 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079239.P8533466660603595331

/-!
# A079240: Number of associative non-commutative non-anti-associative non-anti-commutative closed binary operations on a set of order n.

The programs for A079240, there is no canonical definition to state claims against.
-/

/-! ## A079240.P17919628046407095465

`A023814(n)-A023815(n)-A079242(n)`
-/

namespace A079240.P17919628046407095465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023814 n - A023815 n - A079242 n

end

end A079240.P17919628046407095465

/-! ## A079240.P10794209986237585863

`A079198(A028310(n))-A079242(n)`
-/

namespace A079240.P10794209986237585863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079198 (A028310 n).toNat - A079242 n

end

end A079240.P10794209986237585863

/-! ## A079240.P10383166958861581495

`A079198(A051801(n))-A079242(n)`
-/

namespace A079240.P10383166958861581495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079198 (A051801 n).toNat - A079242 n

end

end A079240.P10383166958861581495

/-! ## A079240.P13992636903834066845

`A079198(A114806(n))-A079242(n)`
-/

namespace A079240.P13992636903834066845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079198 (A114806 n).toNat - A079242 n

end

end A079240.P13992636903834066845

/-!
# A079241: Number of isomorphism classes of associative non-commutative non-anti-associative non-anti-commutative closed binary operations on a set of order n.

The programs for A079241, there is no canonical definition to state claims against.
-/

/-! ## A079241.P13390184084005489991

`A027851(n)-A001426(n)-A079243(n)`
-/

namespace A079241.P13390184084005489991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027851 n - A001426 n - A079243 n

end

end A079241.P13390184084005489991

/-! ## A079241.P12471588891408300271

`A091194(∑[A307567(n)])`
-/

namespace A079241.P12471588891408300271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079241.P12471588891408300271

/-!
# A079242: Number of associative non-commutative non-anti-associative anti-commutative closed binary operations on a set of order n.

The programs for A079242, there is no canonical definition to state claims against.
-/

/-! ## A079242.P17322376645467585214

`and(-2, A121860(A028310(n)))`
-/

namespace A079242.P17322376645467585214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A121860 (A028310 n).toNat)

end

end A079242.P17322376645467585214

/-! ## A079242.P15001489680158203728

`A121860(round(acot(n)+n))%A102743(n)`
-/

namespace A079242.P15001489680158203728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121860 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) (A102743 n)

end

end A079242.P15001489680158203728

/-! ## A079242.P16644907166499163935

`A121860(round(sqrt(n²+1)))%A101052(n)`
-/

namespace A079242.P16644907166499163935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121860 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A101052 n)

end

end A079242.P16644907166499163935

/-! ## A079242.P11871009746231463384

`A121860(A028310(n))*A157928(n)`
-/

namespace A079242.P11871009746231463384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121860 (A028310 n).toNat * A157928 n

end

end A079242.P11871009746231463384

/-!
# A079246: "Memory" of 2^n: the number of (previous) powers of 2 contained as substrings in 2^n.

The programs for A079246, there is no canonical definition to state claims against.
-/

/-! ## A079246.P1884597254275890303

`A005248(n)%A068068(A192979(n))`
-/

namespace A079246.P1884597254275890303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005248 n) (A068068 (A192979 n).toNat)

end

end A079246.P1884597254275890303

/-! ## A079246.P4618318526866347867

`A142586(n)%A068068(A192979(n))`
-/

namespace A079246.P4618318526866347867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142586 n) (A068068 (A192979 n).toNat)

end

end A079246.P4618318526866347867

/-! ## A079246.P6386980213430582610

`A295515(n+1)-A101264(A000975(n))`
-/

namespace A079246.P6386980213430582610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (n + 1) - A101264 (A000975 n).toNat

end

end A079246.P6386980213430582610

/-! ## A079246.P18202819242302348119

`A001221(A263683(record[A002865(n)]))`
-/

namespace A079246.P18202819242302348119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A263683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A079246.P18202819242302348119

/-!
# A079247: Number of pairs (p,q), 0 <= p < q, such that p+q divides n.

The programs for A079247, the canonical program `A079247.P13961136694761078875` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079247 has offset 1).

The definition of A079247 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086670, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079247.P13961136694761078875

`A000203(n+1)-A086670(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079247

/-- `A000203(n+1)-A086670(n+1)` -/
def P13961136694761078875.Spec : Prop :=
  ∀ n, P13961136694761078875.a n = A079247 (n + 1)

theorem P13961136694761078875.correct : P13961136694761078875.Spec := by
  intro n
  simp only [A079247, Nat.add_sub_cancel]

end A079247

/-! ## A079247.P5201693054909674300

`1/2*(A000203(n+1)+A001227(n+1))`
-/

namespace A079247.P5201693054909674300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000203 (n + 1) + A001227 (n + 1) : ℚ)

end

end A079247.P5201693054909674300

namespace A079247

/-- `1/2*(A000203(n+1)+A001227(n+1))` -/
def P5201693054909674300.Spec : Prop :=
  ∀ n, P5201693054909674300.a n = (A079247 (n + 1) : ℚ)

end A079247

/-! ## A079247.P13505119462951977210

`∑{d}[n+1, ceil(#/2)]`
-/

namespace A079247.P13505119462951977210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈(d : ℚ) / 2⌉

end

end A079247.P13505119462951977210

namespace A079247

/-- `∑{d}[n+1, ceil(#/2)]` -/
def P13505119462951977210.Spec : Prop :=
  ∀ n, P13505119462951977210.a n = A079247 (n + 1)

end A079247

/-! ## A079247.P149566333402484623

`∑{d}[n+1, ceil(sinh(log(#)))]+1`
-/

namespace A079247.P149566333402484623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈Real.sinh (Real.log (d : ℝ))⌉ + 1

end

end A079247.P149566333402484623

namespace A079247

/-- `∑{d}[n+1, ceil(sinh(log(#)))]+1` -/
def P149566333402484623.Spec : Prop :=
  ∀ n, P149566333402484623.a n = A079247 (n + 1)

end A079247

/-! ## A079247.P11018362183668001204

`∑{d}[n+1, #%2+#]/2`
-/

namespace A079247.P11018362183668001204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d % 2 + d) : ℕ) : ℚ) / 2

end

end A079247.P11018362183668001204

namespace A079247

/-- `∑{d}[n+1, #%2+#]/2` -/
def P11018362183668001204.Spec : Prop :=
  ∀ n, P11018362183668001204.a n = (A079247 (n + 1) : ℚ)

end A079247

/-! ## A079247.P5936008636522909214

`∑{d}[n+1, and(1, #)+#]/2`
-/

namespace A079247.P5936008636522909214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (Nat.land 1 d + d) : ℕ) : ℚ) / 2

end

end A079247.P5936008636522909214

namespace A079247

/-- `∑{d}[n+1, and(1, #)+#]/2` -/
def P5936008636522909214.Spec : Prop :=
  ∀ n, P5936008636522909214.a n = (A079247 (n + 1) : ℚ)

end A079247

/-! ## A079247.P2130376705474207251

`∑{d}[n+1, #]-∑{d}[n+1, floor(#/2)]`
-/

namespace A079247.P2130376705474207251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f2 n), ⌊(d : ℚ) / 2⌋

end

end A079247.P2130376705474207251

namespace A079247

/-- `∑{d}[n+1, #]-∑{d}[n+1, floor(#/2)]` -/
def P2130376705474207251.Spec : Prop :=
  ∀ n, P2130376705474207251.a n = A079247 (n + 1)

end A079247

/-! ## A079247.P8693461816171009348

`A086670(n+1)+A001227(n+1)`
-/

namespace A079247.P8693461816171009348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086670 (n + 1) + A001227 (n + 1)

end

end A079247.P8693461816171009348

namespace A079247

/-- `A086670(n+1)+A001227(n+1)` -/
def P8693461816171009348.Spec : Prop :=
  ∀ n, P8693461816171009348.a n = A079247 (n + 1)

end A079247

/-! ## A079247.P17355129421108713426

`A145392(n+1)+A001842(n+1)`
-/

namespace A079247.P17355129421108713426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145392 (n + 1) + A001842 (n + 1)

end

end A079247.P17355129421108713426

namespace A079247

/-- `A145392(n+1)+A001842(n+1)` -/
def P17355129421108713426.Spec : Prop :=
  ∀ n, P17355129421108713426.a n = A079247 (n + 1)

end A079247

/-! ## A079247.P17121799074900037139

`A367588(n+1)+A000005(n+1)`
-/

namespace A079247.P17121799074900037139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367588 (n + 1) + A000005 (n + 1)

end

end A079247.P17121799074900037139

namespace A079247

/-- `A367588(n+1)+A000005(n+1)` -/
def P17121799074900037139.Spec : Prop :=
  ∀ n, P17121799074900037139.a n = A079247 (n + 1)

end A079247

/-! ## A079247.P11283539449100405867

`A369258(n+1)+A368582(n+1)`
-/

namespace A079247.P11283539449100405867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369258 (n + 1) + A368582 (n + 1)

end

end A079247.P11283539449100405867

namespace A079247

/-- `A369258(n+1)+A368582(n+1)` -/
def P11283539449100405867.Spec : Prop :=
  ∀ n, P11283539449100405867.a n = A079247 (n + 1)

end A079247

/-! ## A079247.P3666734285642001526

`A007503(n+1)-A069734(n+1)`
-/

namespace A079247.P3666734285642001526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A069734 (n + 1)

end

end A079247.P3666734285642001526

namespace A079247

/-- `A007503(n+1)-A069734(n+1)` -/
def P3666734285642001526.Spec : Prop :=
  ∀ n, P3666734285642001526.a n = A079247 (n + 1)

end A079247

/-! ## A079247.P14283410561671635923

`A069734(n+1)-A183063(n+1)`
-/

namespace A079247.P14283410561671635923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069734 (n + 1) - A183063 (n + 1)

end

end A079247.P14283410561671635923

namespace A079247

/-- `A069734(n+1)-A183063(n+1)` -/
def P14283410561671635923.Spec : Prop :=
  ∀ n, P14283410561671635923.a n = A079247 (n + 1)

end A079247

/-! ## A079247.P12887309597746855619

`A054785(n+1)-A286015(n+1)`
-/

namespace A079247.P12887309597746855619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - A286015 (n + 1)

end

end A079247.P12887309597746855619

namespace A079247

/-- `A054785(n+1)-A286015(n+1)` -/
def P12887309597746855619.Spec : Prop :=
  ∀ n, P12887309597746855619.a n = A079247 (n + 1)

end A079247

/-! ## A079247.P8706281254635812525

`(A001227(n+1)+A000203(n+1))/2`
-/

namespace A079247.P8706281254635812525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) + A000203 (n + 1) : ℚ) / 2

end

end A079247.P8706281254635812525

namespace A079247

/-- `(A001227(n+1)+A000203(n+1))/2` -/
def P8706281254635812525.Spec : Prop :=
  ∀ n, P8706281254635812525.a n = (A079247 (n + 1) : ℚ)

end A079247

/-! ## A079247.P8908477375629702357

`(A099777(n+1)+A065608(n+1))/2`
-/

namespace A079247.P8908477375629702357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099777 (n + 1) + A065608 (n + 1) : ℚ) / 2

end

end A079247.P8908477375629702357

namespace A079247

/-- `(A099777(n+1)+A065608(n+1))/2` -/
def P8908477375629702357.Spec : Prop :=
  ∀ n, P8908477375629702357.a n = (A079247 (n + 1) : ℚ)

end A079247

/-! ## A079247.P18042922823668849102

`(A349211(n+1)+A000593(n+1))/2`
-/

namespace A079247.P18042922823668849102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349211 (n + 1) + A000593 (n + 1) : ℚ) / 2

end

end A079247.P18042922823668849102

namespace A079247

/-- `(A349211(n+1)+A000593(n+1))/2` -/
def P18042922823668849102.Spec : Prop :=
  ∀ n, P18042922823668849102.a n = (A079247 (n + 1) : ℚ)

end A079247

/-! ## A079247.P8806745563466707306

`(A245092(2*n+1)+A001227(n+1))/2`
-/

namespace A079247.P8806745563466707306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (2 * n + 1) + A001227 (n + 1) : ℚ) / 2

end

end A079247.P8806745563466707306

namespace A079247

/-- `(A245092(2*n+1)+A001227(n+1))/2` -/
def P8806745563466707306.Spec : Prop :=
  ∀ n, P8806745563466707306.a n = (A079247 (n + 1) : ℚ)

end A079247

/-! ## A079247.P8205690543995654175

`(A000203(n+1)+A000005(A000265(n+1)))/2`
-/

namespace A079247.P8205690543995654175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + A000005 (A000265 (n + 1)).toNat : ℚ) / 2

end

end A079247.P8205690543995654175

namespace A079247

/-- `(A000203(n+1)+A000005(A000265(n+1)))/2` -/
def P8205690543995654175.Spec : Prop :=
  ∀ n, P8205690543995654175.a n = (A079247 (n + 1) : ℚ)

end A079247

/-! ## A079247.P4269630728469363232

`A257644(n+1)-(A257644(n)+A069734(n+1))`
-/

namespace A079247.P4269630728469363232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257644 (n + 1) - (A257644 n + A069734 (n + 1))

end

end A079247.P4269630728469363232

namespace A079247

/-- `A257644(n+1)-(A257644(n)+A069734(n+1))` -/
def P4269630728469363232.Spec : Prop :=
  ∀ n, P4269630728469363232.a n = A079247 (n + 1)

end A079247

/-!
# A079248: Sum of q in all pairs (p,q), 0 <= p < q, p+q divides n.

The programs for A079248, the canonical program `A079248.P15294235973507137332` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079248 has offset 1).

The definition of A079248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079248.P15294235973507137332

`∑{d}[n+1, A001318(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079248

/-- `∑{d}[n+1, A001318(#)]` -/
def P15294235973507137332.Spec : Prop :=
  ∀ n, P15294235973507137332.a n = A079248 (n + 1)

theorem P15294235973507137332.correct : P15294235973507137332.Spec := by
  intro n
  simp only [A079248, Nat.add_sub_cancel]

end A079248

/-! ## A079248.P11041346538094307908

`∑{d}[n+1, A000124(#)-A000124(A004526(#))]`
-/

namespace A079248.P11041346538094307908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000124 d - A000124 (A004526 d).toNat)

end

end A079248.P11041346538094307908

namespace A079248

/-- `∑{d}[n+1, A000124(#)-A000124(A004526(#))]` -/
def P11041346538094307908.Spec : Prop :=
  ∀ n, P11041346538094307908.a n = A079248 (n + 1)

end A079248

/-! ## A079248.P6646654401591925545

`∑{d}[n+1, A000217(#)-A000217(A004526(#))]`
-/

namespace A079248.P6646654401591925545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000217 d - A000217 (A004526 d).toNat)

end

end A079248.P6646654401591925545

namespace A079248

/-- `∑{d}[n+1, A000217(#)-A000217(A004526(#))]` -/
def P6646654401591925545.Spec : Prop :=
  ∀ n, P6646654401591925545.a n = A079248 (n + 1)

end A079248

/-! ## A079248.P12212379684822174480

`∑{d}[n+1, A000292(A001651(#))/A001651(#)]`
-/

namespace A079248.P12212379684822174480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000292 (A001651 d).toNat : ℚ) / (A001651 d : ℚ)

end

end A079248.P12212379684822174480

namespace A079248

/-- `∑{d}[n+1, A000292(A001651(#))/A001651(#)]` -/
def P12212379684822174480.Spec : Prop :=
  ∀ n, P12212379684822174480.a n = (A079248 (n + 1) : ℚ)

end A079248

/-! ## A079248.P6753714939158575314

`A014682(∑{d}[n+1, A152749(#)])`
-/

namespace A079248.P6753714939158575314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ d ∈ Nat.divisors (f1 n), A152749 d).toNat

end

end A079248.P6753714939158575314

namespace A079248

/-- `A014682(∑{d}[n+1, A152749(#)])` -/
def P6753714939158575314.Spec : Prop :=
  ∀ n, P6753714939158575314.a n = A079248 (n + 1)

end A079248

/-!
# A079249: Sum of r in all pairs (r,s), 0<=r

The programs for A079249, the canonical program `A079249.P4320334215125937614` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079249 has offset 1).

The definition of A079249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079249.P4320334215125937614

`∑{d}[n+1, C(ceil(#/2), 2)]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079249

/-- `∑{d}[n+1, C(ceil(#/2), 2)]` -/
def P4320334215125937614.Spec : Prop :=
  ∀ n, (P4320334215125937614.a n : ℤ) = A079249 (n + 1)

theorem P4320334215125937614.correct : P4320334215125937614.Spec := by
  intro n
  simp only [A079249, Nat.add_sub_cancel]

end A079249

/-! ## A079249.P9119432744666392994

`∑{d}[n+1, A000217(floor(((n+1)/#-1)/2))]`
-/

namespace A079249.P9119432744666392994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 ⌊((n + 1 : ℚ) / (d : ℚ) - 1) / 2⌋.toNat

end

end A079249.P9119432744666392994

namespace A079249

/-- `∑{d}[n+1, A000217(floor(((n+1)/#-1)/2))]` -/
def P9119432744666392994.Spec : Prop :=
  ∀ n, P9119432744666392994.a n = A079249 (n + 1)

end A079249

/-! ## A079249.P16335259162158838851

`∑{d}[n+1, A161680(A110654(#))]`
-/

namespace A079249.P16335259162158838851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161680 (A110654 d).toNat

end

end A079249.P16335259162158838851

namespace A079249

/-- `∑{d}[n+1, A161680(A110654(#))]` -/
def P16335259162158838851.Spec : Prop :=
  ∀ n, P16335259162158838851.a n = A079249 (n + 1)

end A079249

/-! ## A079249.P12668780475513382199

`∑{d}[n+1, A161680(A065033(#))]`
-/

namespace A079249.P12668780475513382199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161680 (A065033 d).toNat

end

end A079249.P12668780475513382199

namespace A079249

/-- `∑{d}[n+1, A161680(A065033(#))]` -/
def P12668780475513382199.Spec : Prop :=
  ∀ n, P12668780475513382199.a n = A079249 (n + 1)

end A079249

/-! ## A079249.P13132513276565759542

`∑{d}[n+1, A161680(A123108(#+1))]`
-/

namespace A079249.P13132513276565759542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161680 (A123108 (d + 1)).toNat

end

end A079249.P13132513276565759542

namespace A079249

/-- `∑{d}[n+1, A161680(A123108(#+1))]` -/
def P13132513276565759542.Spec : Prop :=
  ∀ n, P13132513276565759542.a n = A079249 (n + 1)

end A079249

/-! ## A079249.P2884616758684123992

`∑{d}[n+1, A024163(A016789(#))]`
-/

namespace A079249.P2884616758684123992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024163 (A016789 d).toNat

end

end A079249.P2884616758684123992

namespace A079249

/-- `∑{d}[n+1, A024163(A016789(#))]` -/
def P2884616758684123992.Spec : Prop :=
  ∀ n, P2884616758684123992.a n = A079249 (n + 1)

end A079249

/-!
# A079250: Even numbers in A079000.

The programs for A079250, the canonical program `A079250.P2253225547210677790` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079250 has offset 1).

The definition of A079250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079250.P2253225547210677790

`record[A079251(n+1)-1-a(n-1)]` with `a(0)=4`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A079250

/-- `record[A079251(n+1)-1-a(n-1)]` -/
def P2253225547210677790.Spec : Prop :=
  ∀ n, P2253225547210677790.a n = A079250 (n + 1)

theorem P2253225547210677790.correct : P2253225547210677790.Spec := by
  intro n
  simp only [A079250, Nat.add_sub_cancel]

end A079250

/-! ## A079250.P9697601672465210334

`record[A060000(n+7)-2+n]`
-/

namespace A079250.P9697601672465210334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (n + 7) - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079250.P9697601672465210334

namespace A079250

/-- `record[A060000(n+7)-2+n]` -/
def P9697601672465210334.Spec : Prop :=
  ∀ n, P9697601672465210334.a n = A079250 (n + 1)

end A079250

/-! ## A079250.P2966385655662477176

`∩[2*n, A079000(n+1)]`
-/

namespace A079250.P2966385655662477176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079250.P2966385655662477176

namespace A079250

/-- `∩[2*n, A079000(n+1)]` -/
def P2966385655662477176.Spec : Prop :=
  ∀ n, (P2966385655662477176.a n : ℤ) = A079250 (n + 1)

end A079250

/-! ## A079250.P5373252316140361829

`∩[2*n, A079253(n)+1]`
-/

namespace A079250.P5373252316140361829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079253 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079250.P5373252316140361829

namespace A079250

/-- `∩[2*n, A079253(n)+1]` -/
def P5373252316140361829.Spec : Prop :=
  ∀ n, (P5373252316140361829.a n : ℤ) = A079250 (n + 1)

end A079250

/-! ## A079250.P12973547232657765960

`∩[2*n, A080639(n+2)-1]`
-/

namespace A079250.P12973547232657765960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080639 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079250.P12973547232657765960

namespace A079250

/-- `∩[2*n, A080639(n+2)-1]` -/
def P12973547232657765960.Spec : Prop :=
  ∀ n, (P12973547232657765960.a n : ℤ) = A079250 (n + 1)

end A079250

/-! ## A079250.P1018604220373157724

`∩[n+1+n, A079253(n+1)]+1`
-/

namespace A079250.P1018604220373157724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A079250.P1018604220373157724

namespace A079250

/-- `∩[n+1+n, A079253(n+1)]+1` -/
def P1018604220373157724.Spec : Prop :=
  ∀ n, (P1018604220373157724.a n : ℤ) = A079250 (n + 1)

end A079250

/-! ## A079250.P5733896308021432234

`A079000(A079251(n+1))`
-/

namespace A079250.P5733896308021432234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (A079251 (n + 1)).toNat

end

end A079250.P5733896308021432234

namespace A079250

/-- `A079000(A079251(n+1))` -/
def P5733896308021432234.Spec : Prop :=
  ∀ n, P5733896308021432234.a n = A079250 (n + 1)

end A079250

/-! ## A079250.P1865789654105482324

`A079000(comp[A079253(n)]+1)`
-/

namespace A079250.P1865789654105482324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079253 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A079250.P1865789654105482324

namespace A079250

/-- `A079000(comp[A079253(n)]+1)` -/
def P1865789654105482324.Spec : Prop :=
  ∀ n, P1865789654105482324.a n = A079250 (n + 1)

end A079250

/-! ## A079250.P10321685343166332910

`A079253(comp[A079253(n)])+1`
-/

namespace A079250.P10321685343166332910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079253 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079253 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A079250.P10321685343166332910

namespace A079250

/-- `A079253(comp[A079253(n)])+1` -/
def P10321685343166332910.Spec : Prop :=
  ∀ n, P10321685343166332910.a n = A079250 (n + 1)

end A079250

/-! ## A079250.P125813895123287206

`∩[A079000(n+1), A005843(n)]`
-/

namespace A079250.P125813895123287206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079250.P125813895123287206

namespace A079250

/-- `∩[A079000(n+1), A005843(n)]` -/
def P125813895123287206.Spec : Prop :=
  ∀ n, (P125813895123287206.a n : ℤ) = A079250 (n + 1)

end A079250

/-! ## A079250.P13949469784628864001

`∩[A079000(n+1), A163300(n+1)]`
-/

namespace A079250.P13949469784628864001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079250.P13949469784628864001

namespace A079250

/-- `∩[A079000(n+1), A163300(n+1)]` -/
def P13949469784628864001.Spec : Prop :=
  ∀ n, (P13949469784628864001.a n : ℤ) = A079250 (n + 1)

end A079250

/-! ## A079250.P12103851883263776123

`∩[A079000(n+1), A051755(n+2)]`
-/

namespace A079250.P12103851883263776123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079250.P12103851883263776123

namespace A079250

/-- `∩[A079000(n+1), A051755(n+2)]` -/
def P12103851883263776123.Spec : Prop :=
  ∀ n, (P12103851883263776123.a n : ℤ) = A079250 (n + 1)

end A079250

/-! ## A079250.P16651706781411245638

`filter[A079000(n+2), A135528(#)]`
-/

namespace A079250.P16651706781411245638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A079250.P16651706781411245638

namespace A079250

/-- `filter[A079000(n+2), A135528(#)]` -/
def P16651706781411245638.Spec : Prop :=
  ∀ n, P16651706781411245638.a n = A079250 (n + 1)

end A079250

/-! ## A079250.P4596000122389028118

`record[A038608(A079000(n+2))]`
-/

namespace A079250.P4596000122389028118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A079000 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079250.P4596000122389028118

namespace A079250

/-- `record[A038608(A079000(n+2))]` -/
def P4596000122389028118.Spec : Prop :=
  ∀ n, P4596000122389028118.a n = A079250 (n + 1)

end A079250

/-! ## A079250.P15771703280997376666

`filter[A079000(n+1), A059841(#)]`
-/

namespace A079250.P15771703280997376666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A079250.P15771703280997376666

namespace A079250

/-- `filter[A079000(n+1), A059841(#)]` -/
def P15771703280997376666.Spec : Prop :=
  ∀ n, P15771703280997376666.a n = A079250 (n + 1)

end A079250

/-! ## A079250.P15010638167164131089

`filter[A079000(n+1), A267043(#)]`
-/

namespace A079250.P15010638167164131089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A079250.P15010638167164131089

namespace A079250

/-- `filter[A079000(n+1), A267043(#)]` -/
def P15010638167164131089.Spec : Prop :=
  ∀ n, P15010638167164131089.a n = A079250 (n + 1)

end A079250

/-! ## A079250.P9454487361737353184

`filter[A079000(n+2), A266591(#)]`
-/

namespace A079250.P9454487361737353184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A079250.P9454487361737353184

namespace A079250

/-- `filter[A079000(n+2), A266591(#)]` -/
def P9454487361737353184.Spec : Prop :=
  ∀ n, P9454487361737353184.a n = A079250 (n + 1)

end A079250

/-!
# A079251: Complement of A079000.

The programs for A079251, the canonical program `A079251.P10366369306939895838` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079251 has offset 1).

The definition of A079251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079251.P11885894828736553091

`∪[A079252(n+1), A357323(n+1)]`
-/

namespace A079251.P11885894828736553091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079251.P11885894828736553091

namespace A079251

/-- `∪[A079252(n+1), A357323(n+1)]` -/
def P11885894828736553091.Spec : Prop :=
  ∀ n, (P11885894828736553091.a n : ℤ) = A079251 (n + 1)

end A079251

/-! ## A079251.P10366369306939895838

`∑[A166517(A048298(A006068(n)))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A079251

/-- `∑[A166517(A048298(A006068(n)))]` -/
def P10366369306939895838.Spec : Prop :=
  ∀ n, P10366369306939895838.a n = A079251 (n + 1)

theorem P10366369306939895838.correct : P10366369306939895838.Spec := by
  intro n
  simp only [A079251, Nat.add_sub_cancel]

end A079251

/-! ## A079251.P3177494939673355847

`A057427(A278519(n+1))+comp[A079253(n)]`
-/

namespace A079251.P3177494939673355847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079253 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A278519 (n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A079251.P3177494939673355847

namespace A079251

/-- `A057427(A278519(n+1))+comp[A079253(n)]` -/
def P3177494939673355847.Spec : Prop :=
  ∀ n, P3177494939673355847.a n = A079251 (n + 1)

end A079251

/-! ## A079251.P16315740274911570423

`A057427(A011531(n+1)+1)+comp[A079253(n)]`
-/

namespace A079251.P16315740274911570423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079253 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A011531 (n + 1) + 1).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A079251.P16315740274911570423

namespace A079251

/-- `A057427(A011531(n+1)+1)+comp[A079253(n)]` -/
def P16315740274911570423.Spec : Prop :=
  ∀ n, P16315740274911570423.a n = A079251 (n + 1)

end A079251

/-! ## A079251.P8320843088349874499

`A057427(A053603(3*n)+1)+comp[A079253(n)]`
-/

namespace A079251.P8320843088349874499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079253 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A053603 (3 * n) + 1).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A079251.P8320843088349874499

namespace A079251

/-- `A057427(A053603(3*n)+1)+comp[A079253(n)]` -/
def P8320843088349874499.Spec : Prop :=
  ∀ n, P8320843088349874499.a n = A079251 (n + 1)

end A079251

/-! ## A079251.P3073666725532621494

`A057427(3*n+1)+comp[A079253(n)]`
-/

namespace A079251.P3073666725532621494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079253 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A079251.P3073666725532621494

namespace A079251

/-- `A057427(3*n+1)+comp[A079253(n)]` -/
def P3073666725532621494.Spec : Prop :=
  ∀ n, P3073666725532621494.a n = A079251 (n + 1)

end A079251

/-! ## A079251.P15156349098462574620

`lt[A079000(n+1)%2, 1]+1`
-/

namespace A079251.P15156349098462574620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079000 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A079251.P15156349098462574620

namespace A079251

/-- `lt[A079000(n+1)%2, 1]+1` -/
def P15156349098462574620.Spec : Prop :=
  ∀ n, (P15156349098462574620.a n : ℤ) = A079251 (n + 1)

end A079251

/-! ## A079251.P5571631102881322967

`lt[2, A020639(A080639(n+1))]`
-/

namespace A079251.P5571631102881322967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A080639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079251.P5571631102881322967

namespace A079251

/-- `lt[2, A020639(A080639(n+1))]` -/
def P5571631102881322967.Spec : Prop :=
  ∀ n, (P5571631102881322967.a n : ℤ) = A079251 (n + 1)

end A079251

/-! ## A079251.P18300772476087311237

`lt[2, A020639(A079000(n+1)+1)]+1`
-/

namespace A079251.P18300772476087311237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A079000 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A079251.P18300772476087311237

namespace A079251

/-- `lt[2, A020639(A079000(n+1)+1)]+1` -/
def P18300772476087311237.Spec : Prop :=
  ∀ n, (P18300772476087311237.a n : ℤ) = A079251 (n + 1)

end A079251

/-! ## A079251.P285519673923313064

`eq[1, A055396(A079000(n+1))]+1`
-/

namespace A079251.P285519673923313064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A079000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079251.P285519673923313064

namespace A079251

/-- `eq[1, A055396(A079000(n+1))]+1` -/
def P285519673923313064.Spec : Prop :=
  ∀ n, (P285519673923313064.a n : ℤ) = A079251 (n + 1)

end A079251

/-! ## A079251.P12540012928911464215

`record[A131732(A080587(2*n)+1)]`
-/

namespace A079251.P12540012928911464215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A080587 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079251.P12540012928911464215

namespace A079251

/-- `record[A131732(A080587(2*n)+1)]` -/
def P12540012928911464215.Spec : Prop :=
  ∀ n, P12540012928911464215.a n = A079251 (n + 1)

end A079251

/-! ## A079251.P4346593817380423620

`record[A260429(A080587(2*n)+1)]`
-/

namespace A079251.P4346593817380423620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (A080587 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079251.P4346593817380423620

namespace A079251

/-- `record[A260429(A080587(2*n)+1)]` -/
def P4346593817380423620.Spec : Prop :=
  ∀ n, P4346593817380423620.a n = A079251 (n + 1)

end A079251

/-! ## A079251.P11894751113431211199

`record[A057979(A080587(2*n)+4)]`
-/

namespace A079251.P11894751113431211199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A080587 (2 * n) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079251.P11894751113431211199

namespace A079251

/-- `record[A057979(A080587(2*n)+4)]` -/
def P11894751113431211199.Spec : Prop :=
  ∀ n, P11894751113431211199.a n = A079251 (n + 1)

end A079251

/-! ## A079251.P15539367185711507429

`A014682(eq[2, A001511(A080587(n))])`
-/

namespace A079251.P15539367185711507429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A080587 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079251.P15539367185711507429

namespace A079251

/-- `A014682(eq[2, A001511(A080587(n))])` -/
def P15539367185711507429.Spec : Prop :=
  ∀ n, P15539367185711507429.a n = A079251 (n + 1)

end A079251

/-!
# A079252: Even numbers not in A079000.

The programs for A079252, the canonical program `A079252.P16700383346931884610` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079252 has offset 1).

The definition of A079252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079252.P66219316728175212

`∩[2*n, A079251(n+1)]`
-/

namespace A079252.P66219316728175212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079252.P66219316728175212

namespace A079252

/-- `∩[2*n, A079251(n+1)]` -/
def P66219316728175212.Spec : Prop :=
  ∀ n, (P66219316728175212.a n : ℤ) = A079252 (n + 1)

end A079252

/-! ## A079252.P11972598060745915422

`A079251((n+3)^ceil(sin(n)²))`
-/

namespace A079252.P11972598060745915422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (SequenceMachineLib.roundAway ((n + 3 : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A079252.P11972598060745915422

namespace A079252

/-- `A079251((n+3)^ceil(sin(n)²))` -/
def P11972598060745915422.Spec : Prop :=
  ∀ n, P11972598060745915422.a n = A079252 (n + 1)

end A079252

/-! ## A079252.P6972317414950454163

`A079251(n-floor(acot(n)²)+3)`
-/

namespace A079252.P6972317414950454163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 ((n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ + 3).toNat

end

end A079252.P6972317414950454163

namespace A079252

/-- `A079251(n-floor(acot(n)²)+3)` -/
def P6972317414950454163.Spec : Prop :=
  ∀ n, P6972317414950454163.a n = A079252 (n + 1)

end A079252

/-! ## A079252.P12946991493989235222

`A079251(C(n+3, ceil(sin(n)²)))`
-/

namespace A079252.P12946991493989235222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (Nat.choose (n + 3) ⌈Real.sin (n : ℝ) ^ 2⌉.toNat)

end

end A079252.P12946991493989235222

namespace A079252

/-- `A079251(C(n+3, ceil(sin(n)²)))` -/
def P12946991493989235222.Spec : Prop :=
  ∀ n, P12946991493989235222.a n = A079252 (n + 1)

end A079252

/-! ## A079252.P7752669724651645799

`A079251(n+3)-3*floor(acot(n))`
-/

namespace A079252.P7752669724651645799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (n + 3) - 3 * ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A079252.P7752669724651645799

namespace A079252

/-- `A079251(n+3)-3*floor(acot(n))` -/
def P7752669724651645799.Spec : Prop :=
  ∀ n, P7752669724651645799.a n = A079252 (n + 1)

end A079252

/-! ## A079252.P6979749398310493371

`A079251(A171463(n+1))`
-/

namespace A079252.P6979749398310493371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (A171463 (n + 1)).toNat

end

end A079252.P6979749398310493371

namespace A079252

/-- `A079251(A171463(n+1))` -/
def P6979749398310493371.Spec : Prop :=
  ∀ n, P6979749398310493371.a n = A079252 (n + 1)

end A079252

/-! ## A079252.P16700383346931884610

`A079251(A122553(n)+n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A079252

/-- `A079251(A122553(n)+n)` -/
def P16700383346931884610.Spec : Prop :=
  ∀ n, P16700383346931884610.a n = A079252 (n + 1)

theorem P16700383346931884610.correct : P16700383346931884610.Spec := by
  intro n
  simp only [A079252, Nat.add_sub_cancel]

end A079252

/-! ## A079252.P8032420092783659883

`A079251(A114637(n+1)+1)`
-/

namespace A079252.P8032420092783659883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (A114637 (n + 1) + 1).toNat

end

end A079252.P8032420092783659883

namespace A079252

/-- `A079251(A114637(n+1)+1)` -/
def P8032420092783659883.Spec : Prop :=
  ∀ n, P8032420092783659883.a n = A079252 (n + 1)

end A079252

/-! ## A079252.P9237621999288694947

`filter[A079251(n+1), A178226(#)]`
-/

namespace A079252.P9237621999288694947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A079252.P9237621999288694947

namespace A079252

/-- `filter[A079251(n+1), A178226(#)]` -/
def P9237621999288694947.Spec : Prop :=
  ∀ n, P9237621999288694947.a n = A079252 (n + 1)

end A079252

/-! ## A079252.P4830589645948950356

`filter[A079251(n+1), A354034(#)]`
-/

namespace A079252.P4830589645948950356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A079252.P4830589645948950356

namespace A079252

/-- `filter[A079251(n+1), A354034(#)]` -/
def P4830589645948950356.Spec : Prop :=
  ∀ n, P4830589645948950356.a n = A079252 (n + 1)

end A079252

/-! ## A079252.P5649655341736658554

`filter[A079251(n+1), A374048(#)]`
-/

namespace A079252.P5649655341736658554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374048 (f1 j).toNat = 1) n)

end

end A079252.P5649655341736658554

namespace A079252

/-- `filter[A079251(n+1), A374048(#)]` -/
def P5649655341736658554.Spec : Prop :=
  ∀ n, P5649655341736658554.a n = A079252 (n + 1)

end A079252

/-! ## A079252.P9521203825632056707

`∩[A079251(n+1), A004275(n)]`
-/

namespace A079252.P9521203825632056707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079252.P9521203825632056707

namespace A079252

/-- `∩[A079251(n+1), A004275(n)]` -/
def P9521203825632056707.Spec : Prop :=
  ∀ n, (P9521203825632056707.a n : ℤ) = A079252 (n + 1)

end A079252

/-! ## A079252.P13583398336337069008

`∩[A079251(n+1), A004277(n)]`
-/

namespace A079252.P13583398336337069008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079252.P13583398336337069008

namespace A079252

/-- `∩[A079251(n+1), A004277(n)]` -/
def P13583398336337069008.Spec : Prop :=
  ∀ n, (P13583398336337069008.a n : ℤ) = A079252 (n + 1)

end A079252

/-! ## A079252.P3155767310019976038

`∩[A079251(n+1), A005843(n)]`
-/

namespace A079252.P3155767310019976038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079252.P3155767310019976038

namespace A079252

/-- `∩[A079251(n+1), A005843(n)]` -/
def P3155767310019976038.Spec : Prop :=
  ∀ n, (P3155767310019976038.a n : ℤ) = A079252 (n + 1)

end A079252

/-! ## A079252.P6312477663121157907

`∩[A079251(n+1), A119432(n+1)]`
-/

namespace A079252.P6312477663121157907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079252.P6312477663121157907

namespace A079252

/-- `∩[A079251(n+1), A119432(n+1)]` -/
def P6312477663121157907.Spec : Prop :=
  ∀ n, (P6312477663121157907.a n : ℤ) = A079252 (n + 1)

end A079252

/-! ## A079252.P8993460753985724533

`∩[A079251(n+1), A118672(n+1)]`
-/

namespace A079252.P8993460753985724533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079252.P8993460753985724533

namespace A079252

/-- `∩[A079251(n+1), A118672(n+1)]` -/
def P8993460753985724533.Spec : Prop :=
  ∀ n, (P8993460753985724533.a n : ℤ) = A079252 (n + 1)

end A079252

/-! ## A079252.P4812406549631309523

`lcm(2, A009531(A079251(n+3)))`
-/

namespace A079252.P4812406549631309523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A009531 (A079251 (n + 3)).toNat)

end

end A079252.P4812406549631309523

namespace A079252

/-- `lcm(2, A009531(A079251(n+3)))` -/
def P4812406549631309523.Spec : Prop :=
  ∀ n, (P4812406549631309523.a n : ℤ) = A079252 (n + 1)

end A079252

/-! ## A079252.P12110380620975510207

`∩[A079251(n+1), A092451(n)]`
-/

namespace A079252.P12110380620975510207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079252.P12110380620975510207

namespace A079252

/-- `∩[A079251(n+1), A092451(n)]` -/
def P12110380620975510207.Spec : Prop :=
  ∀ n, (P12110380620975510207.a n : ℤ) = A079252 (n + 1)

end A079252

/-! ## A079252.P7030531837932190264

`∩[A079251(n+1), A121538(n+1)]`
-/

namespace A079252.P7030531837932190264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079252.P7030531837932190264

namespace A079252

/-- `∩[A079251(n+1), A121538(n+1)]` -/
def P7030531837932190264.Spec : Prop :=
  ∀ n, (P7030531837932190264.a n : ℤ) = A079252 (n + 1)

end A079252

/-!
# A079253: a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) is even".

The programs for A079253, the canonical program `A079253.P13462614389333212130` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079253 has offset 0).

The definition of A079253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079253.P13462614389333212130

`A079000(n+1)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079253

/-- `A079000(n+1)-1` -/
def P13462614389333212130.Spec : Prop :=
  ∀ n, P13462614389333212130.a n = A079253 n

theorem P13462614389333212130.correct : P13462614389333212130.Spec := by
  intro n
  simp only [A079253]

end A079253

/-! ## A079253.P4520348242670718375

`comp[A079251(n+1)-1]`
-/

namespace A079253.P4520348242670718375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A079253.P4520348242670718375

namespace A079253

/-- `comp[A079251(n+1)-1]` -/
def P4520348242670718375.Spec : Prop :=
  ∀ n, (P4520348242670718375.a n : ℤ) = A079253 n

end A079253

/-! ## A079253.P14760144653735874761

`A079948(n)+a(n-1)` with `a(0)=0`
-/

namespace A079253.P14760144653735874761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A079948 n + a (n - 1)

end

end A079253.P14760144653735874761

namespace A079253

/-- `A079948(n)+a(n-1)` -/
def P14760144653735874761.Spec : Prop :=
  ∀ n, P14760144653735874761.a n = A079253 n

end A079253

/-! ## A079253.P4846420196075912593

`abs(1-A079000(ϕ²-(ϕ-n)))`
-/

namespace A079253.P4846420196075912593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A079000 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat|

end

end A079253.P4846420196075912593

namespace A079253

/-- `abs(1-A079000(ϕ²-(ϕ-n)))` -/
def P4846420196075912593.Spec : Prop :=
  ∀ n, P4846420196075912593.a n = A079253 n

end A079253

/-! ## A079253.P9003553422294898022

`∪[∑[A079948(n+1)], A002943(n)]`
-/

namespace A079253.P9003553422294898022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079948 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002943 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A079253.P9003553422294898022

namespace A079253

/-- `∪[∑[A079948(n+1)], A002943(n)]` -/
def P9003553422294898022.Spec : Prop :=
  ∀ n, (P9003553422294898022.a n : ℤ) = A079253 n

end A079253

/-! ## A079253.P16805179229648406125

`A001478(n+1)+A079000(n+1)+n`
-/

namespace A079253.P16805179229648406125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A079000 (n + 1) + (n : ℤ))

end

end A079253.P16805179229648406125

namespace A079253

/-- `A001478(n+1)+A079000(n+1)+n` -/
def P16805179229648406125.Spec : Prop :=
  ∀ n, P16805179229648406125.a n = A079253 n

end A079253

/-! ## A079253.P12626319956337966979

`A080639(n+2)-2`
-/

namespace A079253.P12626319956337966979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080639 (n + 2) - 2

end

end A079253.P12626319956337966979

namespace A079253

/-- `A080639(n+2)-2` -/
def P12626319956337966979.Spec : Prop :=
  ∀ n, P12626319956337966979.a n = A079253 n

end A079253

/-! ## A079253.P7311924432583173403

`eq[2, A020639(A079000(n+1)+1)]`
-/

namespace A079253.P7311924432583173403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A079000 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079253.P7311924432583173403

namespace A079253

/-- `eq[2, A020639(A079000(n+1)+1)]` -/
def P7311924432583173403.Spec : Prop :=
  ∀ n, (P7311924432583173403.a n : ℤ) = A079253 n

end A079253

/-! ## A079253.P1674458142879301448

`lt[2, A322312(A079000(n+1)+1)]`
-/

namespace A079253.P1674458142879301448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322312 (A079000 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079253.P1674458142879301448

namespace A079253

/-- `lt[2, A322312(A079000(n+1)+1)]` -/
def P1674458142879301448.Spec : Prop :=
  ∀ n, (P1674458142879301448.a n : ℤ) = A079253 n

end A079253

/-! ## A079253.P5506741574105308103

`lt[2, A020639(A079000(n+1)+2)]`
-/

namespace A079253.P5506741574105308103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A079000 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079253.P5506741574105308103

namespace A079253

/-- `lt[2, A020639(A079000(n+1)+2)]` -/
def P5506741574105308103.Spec : Prop :=
  ∀ n, (P5506741574105308103.a n : ℤ) = A079253 n

end A079253

/-! ## A079253.P13715077095459719290

`A023443(A079000(n+1))`
-/

namespace A079253.P13715077095459719290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A079000 (n + 1)).toNat

end

end A079253.P13715077095459719290

namespace A079253

/-- `A023443(A079000(n+1))` -/
def P13715077095459719290.Spec : Prop :=
  ∀ n, P13715077095459719290.a n = A079253 n

end A079253

/-! ## A079253.P3547898470059335568

`A023444(A080639(n+2))`
-/

namespace A079253.P3547898470059335568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A080639 (n + 2)).toNat

end

end A079253.P3547898470059335568

namespace A079253

/-- `A023444(A080639(n+2))` -/
def P3547898470059335568.Spec : Prop :=
  ∀ n, P3547898470059335568.a n = A079253 n

end A079253

/-! ## A079253.P10790346412008694642

`A349431(A055396(2*(n+1))+1)+A079000(n+1)`
-/

namespace A079253.P10790346412008694642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349431 (A055396 (2 * (n + 1)) + 1).toNat + A079000 (n + 1)

end

end A079253.P10790346412008694642

namespace A079253

/-- `A349431(A055396(2*(n+1))+1)+A079000(n+1)` -/
def P10790346412008694642.Spec : Prop :=
  ∀ n, P10790346412008694642.a n = A079253 n

end A079253

/-! ## A079253.P5864716964605802629

`eq[1, A055396(A079000(n+1)+1)]`
-/

namespace A079253.P5864716964605802629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A079000 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079253.P5864716964605802629

namespace A079253

/-- `eq[1, A055396(A079000(n+1)+1)]` -/
def P5864716964605802629.Spec : Prop :=
  ∀ n, (P5864716964605802629.a n : ℤ) = A079253 n

end A079253

/-! ## A079253.P12624571620510568229

`lt[1, A135561(A079000(n+1)+1)]`
-/

namespace A079253.P12624571620510568229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135561 (A079000 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079253.P12624571620510568229

namespace A079253

/-- `lt[1, A135561(A079000(n+1)+1)]` -/
def P12624571620510568229.Spec : Prop :=
  ∀ n, (P12624571620510568229.a n : ℤ) = A079253 n

end A079253

/-! ## A079253.P3611466275492655767

`lt[A000034(n), A000034(A079000(n+1))²]`
-/

namespace A079253.P3611466275492655767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A079000 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079253.P3611466275492655767

namespace A079253

/-- `lt[A000034(n), A000034(A079000(n+1))²]` -/
def P3611466275492655767.Spec : Prop :=
  ∀ n, (P3611466275492655767.a n : ℤ) = A079253 n

end A079253

/-! ## A079253.P3162370687980672501

`lt[1, A000034(A079000(n+1)+2)]`
-/

namespace A079253.P3162370687980672501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A079000 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079253.P3162370687980672501

namespace A079253

/-- `lt[1, A000034(A079000(n+1)+2)]` -/
def P3162370687980672501.Spec : Prop :=
  ∀ n, (P3162370687980672501.a n : ℤ) = A079253 n

end A079253

/-! ## A079253.P10843519444555075825

`lt[1, A055396(A079000(n+1)+2)]`
-/

namespace A079253.P10843519444555075825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A079000 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079253.P10843519444555075825

namespace A079253

/-- `lt[1, A055396(A079000(n+1)+2)]` -/
def P10843519444555075825.Spec : Prop :=
  ∀ n, (P10843519444555075825.a n : ℤ) = A079253 n

end A079253

/-! ## A079253.P12171059932356666131

`A025480(A080587(2*n+1)+1)`
-/

namespace A079253.P12171059932356666131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A080587 (2 * n + 1) + 1).toNat

end

end A079253.P12171059932356666131

namespace A079253

/-- `A025480(A080587(2*n+1)+1)` -/
def P12171059932356666131.Spec : Prop :=
  ∀ n, P12171059932356666131.a n = A079253 n

end A079253

/-!
# A079255: a(n) is taken to be the smallest positive integer greater than a(n-1) such that the condition "n is in the sequence if and only if a(n) is odd and a(n+1) is even" can be satisfied.

The programs for A079255, the canonical program `A079255.P4224529867862457493` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079255 has offset 1).

The definition of A079255 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026363, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079255.P4224529867862457493

`A026363(2*n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079255

/-- `A026363(2*n+1)` -/
def P4224529867862457493.Spec : Prop :=
  ∀ n, P4224529867862457493.a n = A079255 (n + 1)

theorem P4224529867862457493.correct : P4224529867862457493.Spec := by
  intro n
  simp only [A079255, Nat.add_sub_cancel]

end A079255

/-! ## A079255.P16336664967849800378

`A080428(n)+a(n-1)` with `a(0)=1`
-/

namespace A079255.P16336664967849800378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080428 n + a (n - 1)

end

end A079255.P16336664967849800378

namespace A079255

/-- `A080428(n)+a(n-1)` -/
def P16336664967849800378.Spec : Prop :=
  ∀ n, P16336664967849800378.a n = A079255 (n + 1)

end A079255

/-! ## A079255.P12130808219272906112

`A080902(n+2)-3`
-/

namespace A079255.P12130808219272906112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080902 (n + 2) - 3

end

end A079255.P12130808219272906112

namespace A079255

/-- `A080902(n+2)-3` -/
def P12130808219272906112.Spec : Prop :=
  ∀ n, P12130808219272906112.a n = A079255 (n + 1)

end A079255

/-! ## A079255.P1603807973088339924

`A284753(Δ[n²])/2`
-/

namespace A079255.P1603807973088339924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284753 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A079255.P1603807973088339924

namespace A079255

/-- `A284753(Δ[n²])/2` -/
def P1603807973088339924.Spec : Prop :=
  ∀ n, P1603807973088339924.a n = (A079255 (n + 1) : ℚ)

end A079255

/-! ## A079255.P9363258798451321690

`ceil(A080903(2*n+1)/2)`
-/

namespace A079255.P9363258798451321690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080903 (2 * n + 1) : ℚ) / 2⌉

end

end A079255.P9363258798451321690

namespace A079255

/-- `ceil(A080903(2*n+1)/2)` -/
def P9363258798451321690.Spec : Prop :=
  ∀ n, P9363258798451321690.a n = A079255 (n + 1)

end A079255

/-! ## A079255.P16130542713365179886

`ceil(A086398(2*n+1)/2)`
-/

namespace A079255.P16130542713365179886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A086398 (2 * n + 1) : ℚ) / 2⌉

end

end A079255.P16130542713365179886

namespace A079255

/-- `ceil(A086398(2*n+1)/2)` -/
def P16130542713365179886.Spec : Prop :=
  ∀ n, P16130542713365179886.a n = A079255 (n + 1)

end A079255

/-! ## A079255.P8984128500847585619

`A023445(A080902(n+2))`
-/

namespace A079255.P8984128500847585619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A080902 (n + 2)).toNat

end

end A079255.P8984128500847585619

namespace A079255

/-- `A023445(A080902(n+2))` -/
def P8984128500847585619.Spec : Prop :=
  ∀ n, P8984128500847585619.a n = A079255 (n + 1)

end A079255

/-! ## A079255.P9072511523409030701

`A026362(A026363(A026363(n+1+n)))`
-/

namespace A079255.P9072511523409030701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026362 (A026363 (A026363 (n + 1 + n)).toNat).toNat

end

end A079255.P9072511523409030701

namespace A079255

/-- `A026362(A026363(A026363(n+1+n)))` -/
def P9072511523409030701.Spec : Prop :=
  ∀ n, P9072511523409030701.a n = A079255 (n + 1)

end A079255

/-! ## A079255.P2924210370214354244

`A004526(A284753(2*n+1))`
-/

namespace A079255.P2924210370214354244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A284753 (2 * n + 1)).toNat

end

end A079255.P2924210370214354244

namespace A079255

/-- `A004526(A284753(2*n+1))` -/
def P2924210370214354244.Spec : Prop :=
  ∀ n, P2924210370214354244.a n = A079255 (n + 1)

end A079255

/-! ## A079255.P11961354816371619591

`A004526(A026364(2*n+1))-n`
-/

namespace A079255.P11961354816371619591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026364 (2 * n + 1)).toNat - (n : ℤ)

end

end A079255.P11961354816371619591

namespace A079255

/-- `A004526(A026364(2*n+1))-n` -/
def P11961354816371619591.Spec : Prop :=
  ∀ n, P11961354816371619591.a n = A079255 (n + 1)

end A079255

/-!
# A079256: a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) is a power of 2".

The programs for A079256, there is no canonical definition to state claims against.
-/

/-! ## A079256.P4393995824072668753

`∑[gcd(A291868(2*n+1), A291891(2*(n+4)))]`
-/

namespace A079256.P4393995824072668753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A291868 (2 * n + 1)) (A291891 (2 * (n + 4)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079256.P4393995824072668753

/-! ## A079256.P11426707158613307761

`∑[gcd(A116469(2*(n+2)), A344467(n+1))]`
-/

namespace A079256.P11426707158613307761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116469 (2 * (n + 2))) (A344467 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079256.P11426707158613307761

/-! ## A079256.P14558377389269867220

`lt[A124774(n), A124758(A093772(n+1))]`
-/

namespace A079256.P14558377389269867220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A093772 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079256.P14558377389269867220

/-! ## A079256.P13459504117878521264

`lt[A072376(A339809(n)), A035327(n+3)]`
-/

namespace A079256.P13459504117878521264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 (A339809 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079256.P13459504117878521264

/-! ## A079256.P14369141020999885228

`eq[A009194(A313747(3*(n+1))), A093466(n+1)]`
-/

namespace A079256.P14369141020999885228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A313747 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079256.P14369141020999885228

/-!
# A079259: a(n) is taken to be the smallest positive integer greater than a(n-1) such that the condition "n is in the sequence if and only if a(n) and a(n+1) are both odd" can be satisfied.

The programs for A079259, the canonical program `A079259.P11686728466096618619` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079259 has offset 1).

The definition of A079259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079259.P11686728466096618619

`∑[(char[A283965(n+1)]+1)²]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079259

/-- `∑[(char[A283965(n+1)]+1)²]` -/
def P11686728466096618619.Spec : Prop :=
  ∀ n, (P11686728466096618619.a n : ℤ) = A079259 (n + 1)

theorem P11686728466096618619.correct : P11686728466096618619.Spec := by
  intro n
  simp only [A079259, Nat.add_sub_cancel]

end A079259

/-! ## A079259.P15038810420675370593

`3*A284773(n+1)-2*(n+1)`
-/

namespace A079259.P15038810420675370593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A284773 (n + 1) - (2 * (n + 1) : ℤ)

end

end A079259.P15038810420675370593

namespace A079259

/-- `3*A284773(n+1)-2*(n+1)` -/
def P15038810420675370593.Spec : Prop :=
  ∀ n, P15038810420675370593.a n = A079259 (n + 1)

end A079259

/-! ## A079259.P111778089145933467

`A283965(A284773(n+1))`
-/

namespace A079259.P111778089145933467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283965 (A284773 (n + 1)).toNat

end

end A079259.P111778089145933467

namespace A079259

/-- `A283965(A284773(n+1))` -/
def P111778089145933467.Spec : Prop :=
  ∀ n, P111778089145933467.a n = A079259 (n + 1)

end A079259

/-! ## A079259.P17147787832982898877

`record[A038608(A286389(n))+n+1]`
-/

namespace A079259.P17147787832982898877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A286389 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079259.P17147787832982898877

namespace A079259

/-- `record[A038608(A286389(n))+n+1]` -/
def P17147787832982898877.Spec : Prop :=
  ∀ n, P17147787832982898877.a n = A079259 (n + 1)

end A079259

/-! ## A079259.P8499749346988221311

`A283965(∑[char[A283965(n+1)]+1])`
-/

namespace A079259.P8499749346988221311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283965 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283965 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079259.P8499749346988221311

namespace A079259

/-- `A283965(∑[char[A283965(n+1)]+1])` -/
def P8499749346988221311.Spec : Prop :=
  ∀ n, P8499749346988221311.a n = A079259 (n + 1)

end A079259

/-! ## A079259.P4297888479098973094

`A016789(A284773(n+1))-A103517(n+1)`
-/

namespace A079259.P4297888479098973094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A284773 (n + 1)).toNat - A103517 (n + 1)

end

end A079259.P4297888479098973094

namespace A079259

/-- `A016789(A284773(n+1))-A103517(n+1)` -/
def P4297888479098973094.Spec : Prop :=
  ∀ n, P4297888479098973094.a n = A079259 (n + 1)

end A079259

/-! ## A079259.P16305628009935649633

`A016777(A284773(n+1))-A144396(n+1)`
-/

namespace A079259.P16305628009935649633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A284773 (n + 1)).toNat - A144396 (n + 1)

end

end A079259.P16305628009935649633

namespace A079259

/-- `A016777(A284773(n+1))-A144396(n+1)` -/
def P16305628009935649633.Spec : Prop :=
  ∀ n, P16305628009935649633.a n = A079259 (n + 1)

end A079259

/-!
# A079260: Characteristic function of primes of form 4n+1 (1 if n is prime of form 4n+1, 0 otherwise).

The programs for A079260, the canonical program `A079260.P17131602053945993916` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079260 has offset 1).

The definition of A079260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079260.P5271077363629739729

`char[p?[4*n+1]-1]`
-/

namespace A079260.P5271077363629739729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079260.P5271077363629739729

namespace A079260

/-- `char[p?[4*n+1]-1]` -/
def P5271077363629739729.Spec : Prop :=
  ∀ n, (P5271077363629739729.a n : ℤ) = A079260 (n + 1)

end A079260

/-! ## A079260.P9681892686848562112

`char[xor(1, p?[2*n+2*n+1])]`
-/

namespace A079260.P9681892686848562112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A079260.P9681892686848562112

namespace A079260

/-- `char[xor(1, p?[2*n+2*n+1])]` -/
def P9681892686848562112.Spec : Prop :=
  ∀ n, (P9681892686848562112.a n : ℤ) = A079260 (n + 1)

end A079260

/-! ## A079260.P14683133807493263264

`char[A152680(n+1)]`
-/

namespace A079260.P14683133807493263264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079260.P14683133807493263264

namespace A079260

/-- `char[A152680(n+1)]` -/
def P14683133807493263264.Spec : Prop :=
  ∀ n, (P14683133807493263264.a n : ℤ) = A079260 (n + 1)

end A079260

/-! ## A079260.P4175041924385332540

`char[A250069(n+2)]`
-/

namespace A079260.P4175041924385332540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079260.P4175041924385332540

namespace A079260

/-- `char[A250069(n+2)]` -/
def P4175041924385332540.Spec : Prop :=
  ∀ n, (P4175041924385332540.a n : ℤ) = A079260 (n + 1)

end A079260

/-! ## A079260.P412419679271113385

`A353479(3*(n+1))`
-/

namespace A079260.P412419679271113385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353479 (3 * (n + 1))

end

end A079260.P412419679271113385

namespace A079260

/-- `A353479(3*(n+1))` -/
def P412419679271113385.Spec : Prop :=
  ∀ n, P412419679271113385.a n = A079260 (n + 1)

end A079260

/-! ## A079260.P231937272232897271

`A353477(5*(n+1))`
-/

namespace A079260.P231937272232897271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353477 (5 * (n + 1))

end

end A079260.P231937272232897271

namespace A079260

/-- `A353477(5*(n+1))` -/
def P231937272232897271.Spec : Prop :=
  ∀ n, P231937272232897271.a n = A079260 (n + 1)

end A079260

/-! ## A079260.P15968286146376911055

`C(A055029(n+1), 2)`
-/

namespace A079260.P15968286146376911055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055029 (n + 1)).toNat 2

end

end A079260.P15968286146376911055

namespace A079260

/-- `C(A055029(n+1), 2)` -/
def P15968286146376911055.Spec : Prop :=
  ∀ n, (P15968286146376911055.a n : ℤ) = A079260 (n + 1)

end A079260

/-! ## A079260.P6732344232022451245

`C(A055028(n+1), 8)`
-/

namespace A079260.P6732344232022451245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055028 (n + 1)).toNat 8

end

end A079260.P6732344232022451245

namespace A079260

/-- `C(A055028(n+1), 8)` -/
def P6732344232022451245.Spec : Prop :=
  ∀ n, (P6732344232022451245.a n : ℤ) = A079260 (n + 1)

end A079260

/-! ## A079260.P9152355143776723671

`char[record[A163366(n+3)]]`
-/

namespace A079260.P9152355143776723671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163366 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079260.P9152355143776723671

namespace A079260

/-- `char[record[A163366(n+3)]]` -/
def P9152355143776723671.Spec : Prop :=
  ∀ n, (P9152355143776723671.a n : ℤ) = A079260 (n + 1)

end A079260

/-! ## A079260.P8220522417775520364

`char[A002144(n+1)-1]`
-/

namespace A079260.P8220522417775520364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079260.P8220522417775520364

namespace A079260

/-- `char[A002144(n+1)-1]` -/
def P8220522417775520364.Spec : Prop :=
  ∀ n, (P8220522417775520364.a n : ℤ) = A079260 (n + 1)

end A079260

/-! ## A079260.P10105594524203378101

`char[A280084(n+2)-1]`
-/

namespace A079260.P10105594524203378101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079260.P10105594524203378101

namespace A079260

/-- `char[A280084(n+2)-1]` -/
def P10105594524203378101.Spec : Prop :=
  ∀ n, (P10105594524203378101.a n : ℤ) = A079260 (n + 1)

end A079260

/-! ## A079260.P15079091356669742769

`C(A151763(n+1)+1, 2)`
-/

namespace A079260.P15079091356669742769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A151763 (n + 1) + 1).toNat 2

end

end A079260.P15079091356669742769

namespace A079260

/-- `C(A151763(n+1)+1, 2)` -/
def P15079091356669742769.Spec : Prop :=
  ∀ n, (P15079091356669742769.a n : ℤ) = A079260 (n + 1)

end A079260

/-! ## A079260.P16891053055285560570

`val(A324891(n+1), n+2)`
-/

namespace A079260.P16891053055285560570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324891 (n + 1)).toNat (n + 2)

end

end A079260.P16891053055285560570

namespace A079260

/-- `val(A324891(n+1), n+2)` -/
def P16891053055285560570.Spec : Prop :=
  ∀ n, (P16891053055285560570.a n : ℤ) = A079260 (n + 1)

end A079260

/-! ## A079260.P17131602053945993916

`C(A005078(n+1), n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079260

/-- `C(A005078(n+1), n+1)` -/
def P17131602053945993916.Spec : Prop :=
  ∀ n, (P17131602053945993916.a n : ℤ) = A079260 (n + 1)

theorem P17131602053945993916.correct : P17131602053945993916.Spec := by
  intro n
  simp only [A079260, Nat.add_sub_cancel]

end A079260

/-! ## A079260.P5178208567355789015

`val(A327122(n+1), n+3)`
-/

namespace A079260.P5178208567355789015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327122 (n + 1)).toNat (n + 3)

end

end A079260.P5178208567355789015

namespace A079260

/-- `val(A327122(n+1), n+3)` -/
def P5178208567355789015.Spec : Prop :=
  ∀ n, (P5178208567355789015.a n : ℤ) = A079260 (n + 1)

end A079260

/-! ## A079260.P13323400713164042092

`char[A163366(n+1)]-char[1]`
-/

namespace A079260.P13323400713164042092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163366 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A079260.P13323400713164042092

namespace A079260

/-- `char[A163366(n+1)]-char[1]` -/
def P13323400713164042092.Spec : Prop :=
  ∀ n, P13323400713164042092.a n = A079260 (n + 1)

end A079260

/-! ## A079260.P2446559063479965372

`C(2, xor(n, A093074(n+1)+1))`
-/

namespace A079260.P2446559063479965372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Int.xor (n : ℤ) (A093074 (n + 1) + 1)).toNat

end

end A079260.P2446559063479965372

namespace A079260

/-- `C(2, xor(n, A093074(n+1)+1))` -/
def P2446559063479965372.Spec : Prop :=
  ∀ n, (P2446559063479965372.a n : ℤ) = A079260 (n + 1)

end A079260

/-! ## A079260.P9980036086713792158

`val(xor(3, A000010(n+1)), n+3)`
-/

namespace A079260.P9980036086713792158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.xor 3 (A000010 (n + 1))).toNat (n + 3)

end

end A079260.P9980036086713792158

namespace A079260

/-- `val(xor(3, A000010(n+1)), n+3)` -/
def P9980036086713792158.Spec : Prop :=
  ∀ n, (P9980036086713792158.a n : ℤ) = A079260 (n + 1)

end A079260

/-! ## A079260.P5338923584995127115

`A005089(A118136(n))`
-/

namespace A079260.P5338923584995127115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (A118136 n).toNat

end

end A079260.P5338923584995127115

namespace A079260

/-- `A005089(A118136(n))` -/
def P5338923584995127115.Spec : Prop :=
  ∀ n, P5338923584995127115.a n = A079260 (n + 1)

end A079260

/-! ## A079260.P5648237588382674378

`A010051(A127932(n))`
-/

namespace A079260.P5648237588382674378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A127932 n).toNat

end

end A079260.P5648237588382674378

namespace A079260

/-- `A010051(A127932(n))` -/
def P5648237588382674378.Spec : Prop :=
  ∀ n, P5648237588382674378.a n = A079260 (n + 1)

end A079260

/-!
# A079261: Characteristic function of primes of form 4n+3 (1 if n is prime of form 4n+3, 0 otherwise).

The programs for A079261, the canonical program `A079261.P4898007176424435965` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079261 has offset 1).

The definition of A079261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079261.P4898007176424435965

`C(∑{e}[n+1, #], ∑{d}[n+1, #%or(3, #)]²)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079261

/-- `C(∑{e}[n+1, #], ∑{d}[n+1, #%or(3, #)]²)` -/
def P4898007176424435965.Spec : Prop :=
  ∀ n, (P4898007176424435965.a n : ℤ) = A079261 (n + 1)

theorem P4898007176424435965.correct : P4898007176424435965.Spec := by
  intro n
  simp only [A079261, Nat.add_sub_cancel]

end A079261

/-! ## A079261.P5449431801623678288

`floor(∑{e}[n+1, #]^(4-n))*char[or(n, n-1)+n]`
-/

namespace A079261.P5449431801623678288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) ^ (4 - (n : ℤ) : ℤ)⌋ * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A079261.P5449431801623678288

namespace A079261

/-- `floor(∑{e}[n+1, #]^(4-n))*char[or(n, n-1)+n]` -/
def P5449431801623678288.Spec : Prop :=
  ∀ n, P5449431801623678288.a n = A079261 (n + 1)

end A079261

/-! ## A079261.P7020337654591544674

`char[A281664(n+2)]`
-/

namespace A079261.P7020337654591544674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281664 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079261.P7020337654591544674

namespace A079261

/-- `char[A281664(n+2)]` -/
def P7020337654591544674.Spec : Prop :=
  ∀ n, (P7020337654591544674.a n : ℤ) = A079261 (n + 1)

end A079261

/-! ## A079261.P5401283380530995782

`A353477(3*(n+1))`
-/

namespace A079261.P5401283380530995782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353477 (3 * (n + 1))

end

end A079261.P5401283380530995782

namespace A079261

/-- `A353477(3*(n+1))` -/
def P5401283380530995782.Spec : Prop :=
  ∀ n, P5401283380530995782.a n = A079261 (n + 1)

end A079261

/-! ## A079261.P3596738062178199515

`A353479(5*(n+1))`
-/

namespace A079261.P3596738062178199515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353479 (5 * (n + 1))

end

end A079261.P3596738062178199515

namespace A079261

/-- `A353479(5*(n+1))` -/
def P3596738062178199515.Spec : Prop :=
  ∀ n, P3596738062178199515.a n = A079261 (n + 1)

end A079261

/-! ## A079261.P18328668675791205826

`char[record[A211173(n+1)]]`
-/

namespace A079261.P18328668675791205826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211173 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079261.P18328668675791205826

namespace A079261

/-- `char[record[A211173(n+1)]]` -/
def P18328668675791205826.Spec : Prop :=
  ∀ n, (P18328668675791205826.a n : ℤ) = A079261 (n + 1)

end A079261

/-! ## A079261.P15879802837124615218

`char[record[A326047(n+3)]]`
-/

namespace A079261.P15879802837124615218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326047 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079261.P15879802837124615218

namespace A079261

/-- `char[record[A326047(n+3)]]` -/
def P15879802837124615218.Spec : Prop :=
  ∀ n, (P15879802837124615218.a n : ℤ) = A079261 (n + 1)

end A079261

/-! ## A079261.P17014539935606840935

`char[record[A000010(or(3, n))]]`
-/

namespace A079261.P17014539935606840935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lor 3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079261.P17014539935606840935

namespace A079261

/-- `char[record[A000010(or(3, n))]]` -/
def P17014539935606840935.Spec : Prop :=
  ∀ n, (P17014539935606840935.a n : ℤ) = A079261 (n + 1)

end A079261

/-! ## A079261.P17693342247948530421

`char[A002145(n+1)-1]`
-/

namespace A079261.P17693342247948530421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079261.P17693342247948530421

namespace A079261

/-- `char[A002145(n+1)-1]` -/
def P17693342247948530421.Spec : Prop :=
  ∀ n, (P17693342247948530421.a n : ℤ) = A079261 (n + 1)

end A079261

/-! ## A079261.P1693291436023818500

`C(1-A151763(n+1), 2)`
-/

namespace A079261.P1693291436023818500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - A151763 (n + 1)).toNat 2

end

end A079261.P1693291436023818500

namespace A079261

/-- `C(1-A151763(n+1), 2)` -/
def P1693291436023818500.Spec : Prop :=
  ∀ n, (P1693291436023818500.a n : ℤ) = A079261 (n + 1)

end A079261

/-! ## A079261.P15449180559937253082

`and(2, A166260(n+1))/2`
-/

namespace A079261.P15449180559937253082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A166260 (n + 1)) : ℚ) / 2

end

end A079261.P15449180559937253082

namespace A079261

/-- `and(2, A166260(n+1))/2` -/
def P15449180559937253082.Spec : Prop :=
  ∀ n, P15449180559937253082.a n = (A079261 (n + 1) : ℚ)

end A079261

/-! ## A079261.P2771078781636287490

`C(C(2, A078458(n+1)), 2)`
-/

namespace A079261.P2771078781636287490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A078458 (n + 1)).toNat) 2

end

end A079261.P2771078781636287490

namespace A079261

/-- `C(C(2, A078458(n+1)), 2)` -/
def P2771078781636287490.Spec : Prop :=
  ∀ n, (P2771078781636287490.a n : ℤ) = A079261 (n + 1)

end A079261

/-! ## A079261.P15604116372929975536

`val(A227334(n+1), n+2)`
-/

namespace A079261.P15604116372929975536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A227334 (n + 1)).toNat (n + 2)

end

end A079261.P15604116372929975536

namespace A079261

/-- `val(A227334(n+1), n+2)` -/
def P15604116372929975536.Spec : Prop :=
  ∀ n, (P15604116372929975536.a n : ℤ) = A079261 (n + 1)

end A079261

/-! ## A079261.P1241580715151015606

`val(A235863(n+1), n+2)`
-/

namespace A079261.P1241580715151015606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A235863 (n + 1)).toNat (n + 2)

end

end A079261.P1241580715151015606

namespace A079261

/-- `val(A235863(n+1), n+2)` -/
def P1241580715151015606.Spec : Prop :=
  ∀ n, (P1241580715151015606.a n : ℤ) = A079261 (n + 1)

end A079261

/-! ## A079261.P8184416228769658135

`val(A324893(n+1), n+2)`
-/

namespace A079261.P8184416228769658135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324893 (n + 1)).toNat (n + 2)

end

end A079261.P8184416228769658135

namespace A079261

/-- `val(A324893(n+1), n+2)` -/
def P8184416228769658135.Spec : Prop :=
  ∀ n, (P8184416228769658135.a n : ℤ) = A079261 (n + 1)

end A079261

/-! ## A079261.P17848575668485385873

`C(A005082(n+1), n+1)`
-/

namespace A079261.P17848575668485385873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005082 (n + 1)).toNat (n + 1)

end

end A079261.P17848575668485385873

namespace A079261

/-- `C(A005082(n+1), n+1)` -/
def P17848575668485385873.Spec : Prop :=
  ∀ n, (P17848575668485385873.a n : ℤ) = A079261 (n + 1)

end A079261

/-! ## A079261.P10860359730275626174

`val(A000010(n+1), or(2, n))`
-/

namespace A079261.P10860359730275626174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (n + 1)).toNat (Nat.lor 2 n)

end

end A079261.P10860359730275626174

namespace A079261

/-- `val(A000010(n+1), or(2, n))` -/
def P10860359730275626174.Spec : Prop :=
  ∀ n, (P10860359730275626174.a n : ℤ) = A079261 (n + 1)

end A079261

/-! ## A079261.P1944191950078904663

`C(and(2, n), A000005(n+1))`
-/

namespace A079261.P1944191950078904663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 2 n) (A000005 (n + 1)).toNat

end

end A079261.P1944191950078904663

namespace A079261

/-- `C(and(2, n), A000005(n+1))` -/
def P1944191950078904663.Spec : Prop :=
  ∀ n, (P1944191950078904663.a n : ℤ) = A079261 (n + 1)

end A079261

/-! ## A079261.P1028144521649150564

`val(A006530(n+1), or(3, n))`
-/

namespace A079261.P1028144521649150564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (n + 1)).toNat (Nat.lor 3 n)

end

end A079261.P1028144521649150564

namespace A079261

/-- `val(A006530(n+1), or(3, n))` -/
def P1028144521649150564.Spec : Prop :=
  ∀ n, (P1028144521649150564.a n : ℤ) = A079261 (n + 1)

end A079261

/-! ## A079261.P16149594216600416858

`char[record[A037225(2*n+1)]]`
-/

namespace A079261.P16149594216600416858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079261.P16149594216600416858

namespace A079261

/-- `char[record[A037225(2*n+1)]]` -/
def P16149594216600416858.Spec : Prop :=
  ∀ n, (P16149594216600416858.a n : ℤ) = A079261 (n + 1)

end A079261

/-!
# A079262: Octanacci numbers: a(0)=a(1)=...=a(6)=0, a(7)=1; for n >= 8, a(n) = Sum_{i=1..8} a(n-i).

The programs for A079262, the canonical program `A079262.P2136821458848240640` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079262 has offset 0).

The definition of A079262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079262.P2136821458848240640

`2*a(n-1)-a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=1, a(8)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079262

/-- `2*a(n-1)-a(n-9)` -/
def P2136821458848240640.Spec : Prop :=
  ∀ n, P2136821458848240640.a n = A079262 n

theorem P2136821458848240640.correct : P2136821458848240640.Spec := by
  intro n
  simp only [A079262]

end A079262

/-! ## A079262.P17826622180353506573

`∑[A251672(abs(1-n))]`
-/

namespace A079262.P17826622180353506573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251672 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079262.P17826622180353506573

namespace A079262

/-- `∑[A251672(abs(1-n))]` -/
def P17826622180353506573.Spec : Prop :=
  ∀ n, P17826622180353506573.a n = A079262 n

end A079262

/-! ## A079262.P1508399381565045200

`A251745(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A079262.P1508399381565045200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A251745 (n + 1) - a (n - 1)

end

end A079262.P1508399381565045200

namespace A079262

/-- `A251745(n+1)-a(n-1)` -/
def P1508399381565045200.Spec : Prop :=
  ∀ n, P1508399381565045200.a n = A079262 n

end A079262

/-! ## A079262.P686948826726993226

`∑[A251672(n)]-A251672(n)`
-/

namespace A079262.P686948826726993226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A251672 n

end

end A079262.P686948826726993226

namespace A079262

/-- `∑[A251672(n)]-A251672(n)` -/
def P686948826726993226.Spec : Prop :=
  ∀ n, P686948826726993226.a n = A079262 n

end A079262

/-! ## A079262.P15924687798747481504

`A251672(n+1)-A251740(n)`
-/

namespace A079262.P15924687798747481504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251672 (n + 1) - A251740 n

end

end A079262.P15924687798747481504

namespace A079262

/-- `A251672(n+1)-A251740(n)` -/
def P15924687798747481504.Spec : Prop :=
  ∀ n, P15924687798747481504.a n = A079262 n

end A079262

/-! ## A079262.P11028340654500658260

`A251740(n+1)-A251741(n)`
-/

namespace A079262.P11028340654500658260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251740 (n + 1) - A251741 n

end

end A079262.P11028340654500658260

namespace A079262

/-- `A251740(n+1)-A251741(n)` -/
def P11028340654500658260.Spec : Prop :=
  ∀ n, P11028340654500658260.a n = A079262 n

end A079262

/-! ## A079262.P4009462523854872312

`A251741(n+1)-A251742(n)`
-/

namespace A079262.P4009462523854872312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251741 (n + 1) - A251742 n

end

end A079262.P4009462523854872312

namespace A079262

/-- `A251741(n+1)-A251742(n)` -/
def P4009462523854872312.Spec : Prop :=
  ∀ n, P4009462523854872312.a n = A079262 n

end A079262

/-! ## A079262.P7405577528642832883

`A251742(n+1)-A251744(n)`
-/

namespace A079262.P7405577528642832883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251742 (n + 1) - A251744 n

end

end A079262.P7405577528642832883

namespace A079262

/-- `A251742(n+1)-A251744(n)` -/
def P7405577528642832883.Spec : Prop :=
  ∀ n, P7405577528642832883.a n = A079262 n

end A079262

/-! ## A079262.P11147581317640027341

`A251744(n+1)-A251745(n)`
-/

namespace A079262.P11147581317640027341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251744 (n + 1) - A251745 n

end

end A079262.P11147581317640027341

namespace A079262

/-- `A251744(n+1)-A251745(n)` -/
def P11147581317640027341.Spec : Prop :=
  ∀ n, P11147581317640027341.a n = A079262 n

end A079262

/-! ## A079262.P9678006085722472513

`Δ[A123526(n+1)/7]`
-/

namespace A079262.P9678006085722472513
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123526 (n + 1) : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079262.P9678006085722472513

namespace A079262

/-- `Δ[A123526(n+1)/7]` -/
def P9678006085722472513.Spec : Prop :=
  ∀ n, P9678006085722472513.a n = (A079262 n : ℚ)

end A079262

/-!
# A079263: Number of constrained mixed models with n factors.

The programs for A079263, there is no canonical definition to state claims against.
-/

/-! ## A079263.P3859565430783408973

`A261231(8^n)+∑{d}[n+1, #]`
-/

namespace A079263.P3859565430783408973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261231 (8 ^ n) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A079263.P3859565430783408973

/-!
# A079265: Number of antisymmetric transitive binary relations on n unlabeled points.

The programs for A079265, there is no canonical definition to state claims against.
-/

/-! ## A079265.P11095057636163478350

`∑[A278288((2*n+1)*a(n-1))+n]` with `a(0)=1, a(1)=1`
-/

namespace A079265.P11095057636163478350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A278288 ((2 * n + 1 : ℤ) * f1 (n - 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079265.P11095057636163478350

/-! ## A079265.P17355198731662935112

`A003601(A144272(n))+A000045(n)`
-/

namespace A079265.P17355198731662935112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (A144272 n).toNat + A000045 n

end

end A079265.P17355198731662935112

/-!
# A079266: Subprimorials, extrapolation from primorials by analogy with subfactorials.

The programs for A079266, there is no canonical definition to state claims against.
-/

/-! ## A079266.P5170631332883212425

`round(∏[eq[n, ∏{d}[n, #]]]/e)`
-/

namespace A079266.P5170631332883212425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.exp 1)

end

end A079266.P5170631332883212425

/-! ## A079266.P10294603943187640825

`round(A002110(n)/e)`
-/

namespace A079266.P10294603943187640825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002110 n : ℝ) / Real.exp 1)

end

end A079266.P10294603943187640825

/-! ## A079266.P2845432842177328150

`round(∏[A008578(n+1)]/e)`
-/

namespace A079266.P2845432842177328150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) / Real.exp 1)

end

end A079266.P2845432842177328150

/-!
# A079267: d(n,s) = number of perfect matchings on {1, 2, ..., 2*n} with s short pairs.

The programs for A079267, there is no canonical definition to state claims against.
-/

/-! ## A079267.P7716124508863524055

`A193639(n)/A000165(∑[char[∑[n+1]]])`
-/

namespace A079267.P7716124508863524055
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193639 n : ℚ) / (A000165 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A079267.P7716124508863524055

/-!
# A079268: Triangle read by rows: d(n,k) = number of decreasing labeled trees with n nodes and largest leaf <= k, for 1 <= k <= n.

The programs for A079268, there is no canonical definition to state claims against.
-/

/-! ## A079268.P8880374435433155261

`or(A059718(n), A059753(A059718(n)))`
-/

namespace A079268.P8880374435433155261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059718 n) (A059753 (A059718 n).toNat)

end

end A079268.P8880374435433155261

/-! ## A079268.P2145876979993973376

`or(A172049(A193560(n)), A193560(n))`
-/

namespace A079268.P2145876979993973376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A172049 (A193560 n).toNat) (A193560 n)

end

end A079268.P2145876979993973376

/-!
# A079269: Define b by b(1) = 1 and for n>1, b(n) = b(n-1)+1/(1+1/b(n-1)); sequence gives numerator of b(n).

The programs for A079269, there is no canonical definition to state claims against.
-/

/-! ## A079269.P14962262142454648066

`A080582(n+1)-A079278(n+1)`
-/

namespace A079269.P14962262142454648066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080582 (n + 1) - A079278 (n + 1)

end

end A079269.P14962262142454648066

/-! ## A079269.P11907033260772627531

`A080581(n+1)-(A079278(n+1)+A079278(n+1))`
-/

namespace A079269.P11907033260772627531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080581 (n + 1) - (A079278 (n + 1) + A079278 (n + 1))

end

end A079269.P11907033260772627531

/-! ## A079269.P1355710118578032952

`∏[A080581(n+1)]/A080581(n+1)`
-/

namespace A079269.P1355710118578032952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080581 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A080581 (n + 1) : ℚ)

end

end A079269.P1355710118578032952

/-!
# A079271: a(n) = 4 * a(n-1) * (3^(2^(n-1))-a(n-1)) with a(0)=1.

The programs for A079271, the canonical program `A079271.P7618526179527269187` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079271 has offset 0).

The definition of A079271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079271.P7618526179527269187

`4*a(n-1)*(3^2^(n-1)-a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079271

/-- `4*a(n-1)*(3^2^(n-1)-a(n-1))` -/
def P7618526179527269187.Spec : Prop :=
  ∀ n, P7618526179527269187.a n = (A079271 n : ℝ)

end A079271

/-!
# A079272: a(n) = ((2n+1)*3^n - 1)/2.

The programs for A079272, the canonical program `A079272.P9604116405784123362` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079272 has offset 1).

The definition of A079272 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((2*(n+1)+1)*3^(n+1)-1)/2` (program `A079272.P10630378898295888850`, by `A079272.P10630378898295888850.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079272.P10630378898295888850

`((2*(n+1)+1)*3^(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A079272.P10630378898295888850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) + 1) * 3 ^ (n + 1) : ℤ) - 1 : ℚ) / 2

end

end A079272.P10630378898295888850

namespace A079272

/-- `((2*(n+1)+1)*3^(n+1)-1)/2` -/
def P10630378898295888850.Spec : Prop :=
  ∀ n, P10630378898295888850.a n = (A079272 (n + 1) : ℚ)

theorem P10630378898295888850.correct : P10630378898295888850.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A079272, Nat.add_sub_cancel, A079272.P10630378898295888850.a, A079272.P9604116405784123362.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A079272, Nat.add_sub_cancel, A079272.P10630378898295888850.a, A079272.P9604116405784123362.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A079272

/-! ## A079272.P9604116405784123362

`7*a(n-1)-15*a(n-2)+9*a(n-3)` with `a(0)=4, a(1)=22, a(2)=94`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079272

/-- `7*a(n-1)-15*a(n-2)+9*a(n-3)` -/
def P9604116405784123362.Spec : Prop :=
  ∀ n, P9604116405784123362.a n = A079272 (n + 1)

theorem P9604116405784123362.correct : P9604116405784123362.Spec := by
  intro n
  simp only [A079272, Nat.add_sub_cancel]

end A079272

/-! ## A079272.P17654179395752536971

`∑[ogf((4-6x)/(1-6x+9x^2))]`
-/

namespace A079272.P17654179395752536971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6] [1, -6, 9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079272.P17654179395752536971

namespace A079272

/-- `∑[ogf((4-6x)/(1-6x+9x^2))]` -/
def P17654179395752536971.Spec : Prop :=
  ∀ n, P17654179395752536971.a n = A079272 (n + 1)

end A079272

/-! ## A079272.P4802434304309254318

`ogf((4-6x)/(1-7x+15x^2-9x^3))`
-/

namespace A079272.P4802434304309254318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6] [1, -7, 15, -9] n

end

end A079272.P4802434304309254318

namespace A079272

/-- `ogf((4-6x)/(1-7x+15x^2-9x^3))` -/
def P4802434304309254318.Spec : Prop :=
  ∀ n, P4802434304309254318.a n = A079272 (n + 1)

end A079272

/-! ## A079272.P10062790455522089485

`∑[(n+2)*lcm(2, 3^n)]`
-/

namespace A079272.P10062790455522089485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.lcm 2 (3 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079272.P10062790455522089485

namespace A079272

/-- `∑[(n+2)*lcm(2, 3^n)]` -/
def P10062790455522089485.Spec : Prop :=
  ∀ n, (P10062790455522089485.a n : ℤ) = A079272 (n + 1)

end A079272

/-! ## A079272.P2388268962071766481

`∑[(n+2)*2*or(1, 3^n)]`
-/

namespace A079272.P2388268962071766481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (2 * Nat.lor 1 (3 ^ n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079272.P2388268962071766481

namespace A079272

/-- `∑[(n+2)*2*or(1, 3^n)]` -/
def P2388268962071766481.Spec : Prop :=
  ∀ n, (P2388268962071766481.a n : ℤ) = A079272 (n + 1)

end A079272

/-! ## A079272.P5144814512083929296

`∑[(n+2)*3^n/tan(acot(2))]`
-/

namespace A079272.P5144814512083929296
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) * ((3 ^ n : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ)))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079272.P5144814512083929296

namespace A079272

/-- `∑[(n+2)*3^n/tan(acot(2))]` -/
def P5144814512083929296.Spec : Prop :=
  ∀ n, P5144814512083929296.a n = (A079272 (n + 1) : ℝ)

end A079272

/-! ## A079272.P6668415682359979382

`3*(a(n-1)+3^n)+1` with `a(0)=4`
-/

namespace A079272.P6668415682359979382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  3 * (a (n - 1) + 3 ^ n) + 1

end

end A079272.P6668415682359979382

namespace A079272

/-- `3*(a(n-1)+3^n)+1` -/
def P6668415682359979382.Spec : Prop :=
  ∀ n, (P6668415682359979382.a n : ℤ) = A079272 (n + 1)

end A079272

/-! ## A079272.P10944851098060834479

`∑[(n+2)*xor(1, 2*3^n+1)]`
-/

namespace A079272.P10944851098060834479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.xor 1 (2 * 3 ^ n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079272.P10944851098060834479

namespace A079272

/-- `∑[(n+2)*xor(1, 2*3^n+1)]` -/
def P10944851098060834479.Spec : Prop :=
  ∀ n, (P10944851098060834479.a n : ℤ) = A079272 (n + 1)

end A079272

/-! ## A079272.P11589620059810643516

`4*∑[(3/(n+1)+3)*a(n-1)]` with `a(0)=1`
-/

namespace A079272.P11589620059810643516
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (3 / (n + 1 : ℚ) + 3) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079272.P11589620059810643516

namespace A079272

/-- `4*∑[(3/(n+1)+3)*a(n-1)]` -/
def P11589620059810643516.Spec : Prop :=
  ∀ n, P11589620059810643516.a n = (A079272 (n + 1) : ℚ)

end A079272

/-! ## A079272.P11677049345868665628

`∑[A027261(n+1)]`
-/

namespace A079272.P11677049345868665628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079272.P11677049345868665628

namespace A079272

/-- `∑[A027261(n+1)]` -/
def P11677049345868665628.Spec : Prop :=
  ∀ n, P11677049345868665628.a n = A079272 (n + 1)

end A079272

/-! ## A079272.P5555707220433626986

`∑[A159715(n+2)]`
-/

namespace A079272.P5555707220433626986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159715 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079272.P5555707220433626986

namespace A079272

/-- `∑[A159715(n+2)]` -/
def P5555707220433626986.Spec : Prop :=
  ∀ n, P5555707220433626986.a n = A079272 (n + 1)

end A079272

/-! ## A079272.P2075642716714686351

`floor(A124647(n+1)/2)`
-/

namespace A079272.P2075642716714686351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124647 (n + 1) : ℚ) / 2⌋

end

end A079272.P2075642716714686351

namespace A079272

/-- `floor(A124647(n+1)/2)` -/
def P2075642716714686351.Spec : Prop :=
  ∀ n, P2075642716714686351.a n = A079272 (n + 1)

end A079272

/-! ## A079272.P16017801239415889525

`∑[2*A288834(n+1)]`
-/

namespace A079272.P16017801239415889525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079272.P16017801239415889525

namespace A079272

/-- `∑[2*A288834(n+1)]` -/
def P16017801239415889525.Spec : Prop :=
  ∀ n, P16017801239415889525.a n = A079272 (n + 1)

end A079272

/-! ## A079272.P11190046082714770009

`∑[A212697(n+2)/3]`
-/

namespace A079272.P11190046082714770009
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212697 (n + 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079272.P11190046082714770009

namespace A079272

/-- `∑[A212697(n+2)/3]` -/
def P11190046082714770009.Spec : Prop :=
  ∀ n, P11190046082714770009.a n = (A079272 (n + 1) : ℚ)

end A079272

/-! ## A079272.P4151222090429434339

`Δ[n*A003462(n+1)]`
-/

namespace A079272.P4151222090429434339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079272.P4151222090429434339

namespace A079272

/-- `Δ[n*A003462(n+1)]` -/
def P4151222090429434339.Spec : Prop :=
  ∀ n, P4151222090429434339.a n = A079272 (n + 1)

end A079272

/-! ## A079272.P8556192670384758057

`∑[(n+2)*A008776(n)]`
-/

namespace A079272.P8556192670384758057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079272.P8556192670384758057

namespace A079272

/-- `∑[(n+2)*A008776(n)]` -/
def P8556192670384758057.Spec : Prop :=
  ∀ n, P8556192670384758057.a n = A079272 (n + 1)

end A079272

/-! ## A079272.P15795691230277925398

`Δ[n*A261547(n+1)]`
-/

namespace A079272.P15795691230277925398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A261547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079272.P15795691230277925398

namespace A079272

/-- `Δ[n*A261547(n+1)]` -/
def P15795691230277925398.Spec : Prop :=
  ∀ n, P15795691230277925398.a n = A079272 (n + 1)

end A079272

/-! ## A079272.P14544865891355225713

`∑[(n+2)*A025192(n+1)]`
-/

namespace A079272.P14544865891355225713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A025192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079272.P14544865891355225713

namespace A079272

/-- `∑[(n+2)*A025192(n+1)]` -/
def P14544865891355225713.Spec : Prop :=
  ∀ n, P14544865891355225713.a n = A079272 (n + 1)

end A079272

/-! ## A079272.P14603279837606986291

`2*∑[(n+2)*A000244(n)]`
-/

namespace A079272.P14603279837606986291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079272.P14603279837606986291

namespace A079272

/-- `2*∑[(n+2)*A000244(n)]` -/
def P14603279837606986291.Spec : Prop :=
  ∀ n, P14603279837606986291.a n = A079272 (n + 1)

end A079272

/-!
# A079273: Octo numbers (a polygonal sequence): a(n) = 5*n^2 - 6*n + 2 = (n-1)^2 + (2*n-1)^2.

The programs for A079273, the canonical program `A079273.P5421003371963778323` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079273 has offset 1).

The definition of A079273 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+(2*(n+1)-1)²` (program `A079273.P5421003371963778323`, by `A079273.P5421003371963778323.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079273.P16204996973899306994

`10*n+a(n-1)-1` with `a(0)=1`
-/

namespace A079273.P16204996973899306994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (10 * n : ℤ) + a (n - 1) - 1

end

end A079273.P16204996973899306994

namespace A079273

/-- `10*n+a(n-1)-1` -/
def P16204996973899306994.Spec : Prop :=
  ∀ n, P16204996973899306994.a n = A079273 (n + 1)

theorem P16204996973899306994.correct : P16204996973899306994.Spec := by
  intro n
  induction n with
  | zero => simp [A079273, A079273.P16204996973899306994.a, A079273.P5421003371963778323.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A079273, Nat.add_sub_cancel, A079273.P16204996973899306994.a, A079273.P5421003371963778323.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A079273

/-! ## A079273.P5421003371963778323

`n²+(2*(n+1)-1)²`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079273

/-- `n²+(2*(n+1)-1)²` -/
def P5421003371963778323.Spec : Prop :=
  ∀ n, P5421003371963778323.a n = A079273 (n + 1)

theorem P5421003371963778323.correct : P5421003371963778323.Spec := by
  intro n
  simp only [A079273, Nat.add_sub_cancel]

end A079273

/-! ## A079273.P3557209431374853797

`5*(n+1)²-6*(n+1)+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A079273.P3557209431374853797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) ^ 2 : ℤ) - (6 * (n + 1) : ℤ) + 2

end

end A079273.P3557209431374853797

namespace A079273

/-- `5*(n+1)²-6*(n+1)+2` -/
def P3557209431374853797.Spec : Prop :=
  ∀ n, P3557209431374853797.a n = A079273 (n + 1)

theorem P3557209431374853797.correct : P3557209431374853797.Spec := by
  intro n
  simp only [A079273, Nat.add_sub_cancel, A079273.P3557209431374853797.a, A079273.P5421003371963778323.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A079273

/-! ## A079273.P578338181580267966

`∑[a(n-1)+10]` with `a(0)=1, a(1)=9`
-/

namespace A079273.P578338181580267966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079273.P578338181580267966

namespace A079273

/-- `∑[a(n-1)+10]` -/
def P578338181580267966.Spec : Prop :=
  ∀ n, (P578338181580267966.a n : ℤ) = A079273 (n + 1)

end A079273

/-! ## A079273.P9629976416883208768

`∑[ogf((1+7x+2x^2)/(1-2x+x^2))]`
-/

namespace A079273.P9629976416883208768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079273.P9629976416883208768

namespace A079273

/-- `∑[ogf((1+7x+2x^2)/(1-2x+x^2))]` -/
def P9629976416883208768.Spec : Prop :=
  ∀ n, P9629976416883208768.a n = A079273 (n + 1)

end A079273

/-! ## A079273.P16101276216318280814

`ogf((1+7x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A079273.P16101276216318280814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 2] [1, -3, 3, -1] n

end

end A079273.P16101276216318280814

namespace A079273

/-- `ogf((1+7x+2x^2)/(1-3x+3x^2-x^3))` -/
def P16101276216318280814.Spec : Prop :=
  ∀ n, P16101276216318280814.a n = A079273 (n + 1)

end A079273

/-! ## A079273.P14987211111265818799

`(A016874(n)+1)/5`
-/

namespace A079273.P14987211111265818799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016874 n + 1 : ℚ) / 5

end

end A079273.P14987211111265818799

namespace A079273

/-- `(A016874(n)+1)/5` -/
def P14987211111265818799.Spec : Prop :=
  ∀ n, P14987211111265818799.a n = (A079273 (n + 1) : ℚ)

end A079273

/-! ## A079273.P16666073160798521502

`A027849(n)/(n+1)`
-/

namespace A079273.P16666073160798521502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027849 n : ℚ) / (n + 1 : ℚ)

end

end A079273.P16666073160798521502

namespace A079273

/-- `A027849(n)/(n+1)` -/
def P16666073160798521502.Spec : Prop :=
  ∀ n, P16666073160798521502.a n = (A079273 (n + 1) : ℚ)

end A079273

/-! ## A079273.P10403714982814281799

`A195029(n)%A001504(n)`
-/

namespace A079273.P10403714982814281799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195029 n) (A001504 n)

end

end A079273.P10403714982814281799

namespace A079273

/-- `A195029(n)%A001504(n)` -/
def P10403714982814281799.Spec : Prop :=
  ∀ n, P10403714982814281799.a n = A079273 (n + 1)

end A079273

/-! ## A079273.P8419110983046126676

`xor(A010684(n), A135705(n))`
-/

namespace A079273.P8419110983046126676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A135705 n)

end

end A079273.P8419110983046126676

namespace A079273

/-- `xor(A010684(n), A135705(n))` -/
def P8419110983046126676.Spec : Prop :=
  ∀ n, P8419110983046126676.a n = A079273 (n + 1)

end A079273

/-! ## A079273.P5060296014352158814

`A062938(n)%A229013(n+1)`
-/

namespace A079273.P5060296014352158814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062938 n) (A229013 (n + 1))

end

end A079273.P5060296014352158814

namespace A079273

/-- `A062938(n)%A229013(n+1)` -/
def P5060296014352158814.Spec : Prop :=
  ∀ n, P5060296014352158814.a n = A079273 (n + 1)

end A079273

/-! ## A079273.P15958885870929312818

`A175110(n)%A157914(n+1)`
-/

namespace A079273.P15958885870929312818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175110 n) (A157914 (n + 1))

end

end A079273.P15958885870929312818

namespace A079273

/-- `A175110(n)%A157914(n+1)` -/
def P15958885870929312818.Spec : Prop :=
  ∀ n, P15958885870929312818.a n = A079273 (n + 1)

end A079273

/-! ## A079273.P1487764563268451376

`A087348(n+1)%A134538(n+1)`
-/

namespace A079273.P1487764563268451376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087348 (n + 1)) (A134538 (n + 1))

end

end A079273.P1487764563268451376

namespace A079273

/-- `A087348(n+1)%A134538(n+1)` -/
def P1487764563268451376.Spec : Prop :=
  ∀ n, P1487764563268451376.a n = A079273 (n + 1)

end A079273

/-! ## A079273.P7986811836212840143

`A304381(n+1)%A157373(n+1)`
-/

namespace A079273.P7986811836212840143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304381 (n + 1)) (A157373 (n + 1))

end

end A079273.P7986811836212840143

namespace A079273

/-- `A304381(n+1)%A157373(n+1)` -/
def P7986811836212840143.Spec : Prop :=
  ∀ n, P7986811836212840143.a n = A079273 (n + 1)

end A079273

/-! ## A079273.P12078435582752382153

`A062317(Δ[n²])`
-/

namespace A079273.P12078435582752382153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062317 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A079273.P12078435582752382153

namespace A079273

/-- `A062317(Δ[n²])` -/
def P12078435582752382153.Spec : Prop :=
  ∀ n, P12078435582752382153.a n = A079273 (n + 1)

end A079273

/-! ## A079273.P907327579480645544

`A145995(2*(n+1))/4`
-/

namespace A079273.P907327579480645544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145995 (2 * (n + 1)) : ℚ) / 4

end

end A079273.P907327579480645544

namespace A079273

/-- `A145995(2*(n+1))/4` -/
def P907327579480645544.Spec : Prop :=
  ∀ n, P907327579480645544.a n = (A079273 (n + 1) : ℚ)

end A079273

/-! ## A079273.P10034892505870278305

`record[Δ[A295286(n+1)]]`
-/

namespace A079273.P10034892505870278305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295286 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079273.P10034892505870278305

namespace A079273

/-- `record[Δ[A295286(n+1)]]` -/
def P10034892505870278305.Spec : Prop :=
  ∀ n, P10034892505870278305.a n = A079273 (n + 1)

end A079273

/-! ## A079273.P7995633142690288667

`A008738(A016873(n))`
-/

namespace A079273.P7995633142690288667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 (A016873 n).toNat

end

end A079273.P7995633142690288667

namespace A079273

/-- `A008738(A016873(n))` -/
def P7995633142690288667.Spec : Prop :=
  ∀ n, P7995633142690288667.a n = A079273 (n + 1)

end A079273

/-! ## A079273.P17313789843898211272

`A231056(A016897(n))`
-/

namespace A079273.P17313789843898211272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231056 (A016897 n).toNat

end

end A079273.P17313789843898211272

namespace A079273

/-- `A231056(A016897(n))` -/
def P17313789843898211272.Spec : Prop :=
  ∀ n, P17313789843898211272.a n = A079273 (n + 1)

end A079273

/-! ## A079273.P2902807294464632535

`A008738(A016885(n)-1)`
-/

namespace A079273.P2902807294464632535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 (A016885 n - 1).toNat

end

end A079273.P2902807294464632535

namespace A079273

/-- `A008738(A016885(n)-1)` -/
def P2902807294464632535.Spec : Prop :=
  ∀ n, P2902807294464632535.a n = A079273 (n + 1)

end A079273

/-!
# A079274: Number of divisors associated with the cyclic cases within the n-th group of least prime signatures.

The programs for A079274, there is no canonical definition to state claims against.
-/

/-! ## A079274.P14047869995500830928

`A079308(∑[n+1]+2)/3`
-/

namespace A079274.P14047869995500830928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079308 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 3

end

end A079274.P14047869995500830928

/-!
# A079275: Number of divisors of n that are semiprimes with distinct factors.

The programs for A079275, the canonical program `A079275.P14331674641797174913` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079275 has offset 1).

The definition of A079275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079275.P14331674641797174913

`C(∑{p}[n+1, gcd(n, #)], 2)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079275

/-- `C(∑{p}[n+1, gcd(n, #)], 2)` -/
def P14331674641797174913.Spec : Prop :=
  ∀ n, (P14331674641797174913.a n : ℤ) = A079275 (n + 1)

theorem P14331674641797174913.correct : P14331674641797174913.Spec := by
  intro n
  simp only [A079275, Nat.add_sub_cancel]

end A079275

/-! ## A079275.P15076196734988541101

`C(∑{p}[n+1, (n+2)%#], 2)`
-/

namespace A079275.P15076196734988541101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), (n + 2) % p) 2

end

end A079275.P15076196734988541101

namespace A079275

/-- `C(∑{p}[n+1, (n+2)%#], 2)` -/
def P15076196734988541101.Spec : Prop :=
  ∀ n, (P15076196734988541101.a n : ℤ) = A079275 (n + 1)

end A079275

/-! ## A079275.P13384608062085188173

`C(A001221(n+1), 2)`
-/

namespace A079275.P13384608062085188173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001221 (n + 1)).toNat 2

end

end A079275.P13384608062085188173

namespace A079275

/-- `C(A001221(n+1), 2)` -/
def P13384608062085188173.Spec : Prop :=
  ∀ n, (P13384608062085188173.a n : ℤ) = A079275 (n + 1)

end A079275

/-! ## A079275.P1748059360875891738

`C(A087624(n+1), 2)`
-/

namespace A079275.P1748059360875891738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A087624 (n + 1)).toNat 2

end

end A079275.P1748059360875891738

namespace A079275

/-- `C(A087624(n+1), 2)` -/
def P1748059360875891738.Spec : Prop :=
  ∀ n, (P1748059360875891738.a n : ℤ) = A079275 (n + 1)

end A079275

/-! ## A079275.P6430200692939863206

`∑{d}[n+1, A280710(#)]`
-/

namespace A079275.P6430200692939863206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A280710 d

end

end A079275.P6430200692939863206

namespace A079275

/-- `∑{d}[n+1, A280710(#)]` -/
def P6430200692939863206.Spec : Prop :=
  ∀ n, P6430200692939863206.a n = A079275 (n + 1)

end A079275

/-! ## A079275.P8351423413120125327

`A086971(∏{p}[n+1, #])`
-/

namespace A079275.P8351423413120125327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A079275.P8351423413120125327

namespace A079275

/-- `A086971(∏{p}[n+1, #])` -/
def P8351423413120125327.Spec : Prop :=
  ∀ n, P8351423413120125327.a n = A079275 (n + 1)

end A079275

/-! ## A079275.P3278218873326688557

`A345446(∏{p}[n+1, #])`
-/

namespace A079275.P3278218873326688557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345446 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A079275.P3278218873326688557

namespace A079275

/-- `A345446(∏{p}[n+1, #])` -/
def P3278218873326688557.Spec : Prop :=
  ∀ n, P3278218873326688557.a n = A079275 (n + 1)

end A079275

/-! ## A079275.P7050951766494087269

`A351416(∏{p}[n+1, #])`
-/

namespace A079275.P7050951766494087269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351416 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A079275.P7050951766494087269

namespace A079275

/-- `A351416(∏{p}[n+1, #])` -/
def P7050951766494087269.Spec : Prop :=
  ∀ n, P7050951766494087269.a n = A079275 (n + 1)

end A079275

/-! ## A079275.P6389149450742515728

`A367098(∏{p}[n+1, #])`
-/

namespace A079275.P6389149450742515728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367098 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A079275.P6389149450742515728

namespace A079275

/-- `A367098(∏{p}[n+1, #])` -/
def P6389149450742515728.Spec : Prop :=
  ∀ n, P6389149450742515728.a n = A079275 (n + 1)

end A079275

/-! ## A079275.P13798176680529467216

`C(A297155(n+1)+1, 2)`
-/

namespace A079275.P13798176680529467216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A297155 (n + 1) + 1).toNat 2

end

end A079275.P13798176680529467216

namespace A079275

/-- `C(A297155(n+1)+1, 2)` -/
def P13798176680529467216.Spec : Prop :=
  ∀ n, (P13798176680529467216.a n : ℤ) = A079275 (n + 1)

end A079275

/-! ## A079275.P5213083962508327766

`C(A083399(n+1)-1, 2)`
-/

namespace A079275.P5213083962508327766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083399 (n + 1) - 1).toNat 2

end

end A079275.P5213083962508327766

namespace A079275

/-- `C(A083399(n+1)-1, 2)` -/
def P5213083962508327766.Spec : Prop :=
  ∀ n, (P5213083962508327766.a n : ℤ) = A079275 (n + 1)

end A079275

/-! ## A079275.P13657566851637634426

`C(∑{p}[n+1, A001222(#)], 2)`
-/

namespace A079275.P13657566851637634426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), A001222 p).toNat 2

end

end A079275.P13657566851637634426

namespace A079275

/-- `C(∑{p}[n+1, A001222(#)], 2)` -/
def P13657566851637634426.Spec : Prop :=
  ∀ n, (P13657566851637634426.a n : ℤ) = A079275 (n + 1)

end A079275

/-! ## A079275.P4108034883938274288

`C(A001222(∏{p}[n+1, #]), 2)`
-/

namespace A079275.P4108034883938274288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat 2

end

end A079275.P4108034883938274288

namespace A079275

/-- `C(A001222(∏{p}[n+1, #]), 2)` -/
def P4108034883938274288.Spec : Prop :=
  ∀ n, (P4108034883938274288.a n : ℤ) = A079275 (n + 1)

end A079275

/-! ## A079275.P15134608366693951785

`C(log2(A000005(∏{p}[n+1, #])), 2)`
-/

namespace A079275.P15134608366693951785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ))).toNat 2

end

end A079275.P15134608366693951785

namespace A079275

/-- `C(log2(A000005(∏{p}[n+1, #])), 2)` -/
def P15134608366693951785.Spec : Prop :=
  ∀ n, (P15134608366693951785.a n : ℤ) = A079275 (n + 1)

end A079275

/-! ## A079275.P15684428656111170225

`A086971(A007947(n+1))`
-/

namespace A079275.P15684428656111170225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A007947 (n + 1)).toNat

end

end A079275.P15684428656111170225

namespace A079275

/-- `A086971(A007947(n+1))` -/
def P15684428656111170225.Spec : Prop :=
  ∀ n, P15684428656111170225.a n = A079275 (n + 1)

end A079275

/-! ## A079275.P9949419190303741096

`A086165(A034444(n+1))`
-/

namespace A079275.P9949419190303741096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086165 (A034444 (n + 1)).toNat

end

end A079275.P9949419190303741096

namespace A079275

/-- `A086165(A034444(n+1))` -/
def P9949419190303741096.Spec : Prop :=
  ∀ n, P9949419190303741096.a n = A079275 (n + 1)

end A079275

/-! ## A079275.P13066647653126744366

`A086971(n+1)-A056170(n+1)`
-/

namespace A079275.P13066647653126744366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1) - A056170 (n + 1)

end

end A079275.P13066647653126744366

namespace A079275

/-- `A086971(n+1)-A056170(n+1)` -/
def P13066647653126744366.Spec : Prop :=
  ∀ n, P13066647653126744366.a n = A079275 (n + 1)

end A079275

/-! ## A079275.P117584316670895750

`A001221(n+1)/2*A297155(n+1)`
-/

namespace A079275.P117584316670895750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℚ) / 2 * (A297155 (n + 1) : ℚ)

end

end A079275.P117584316670895750

namespace A079275

/-- `A001221(n+1)/2*A297155(n+1)` -/
def P117584316670895750.Spec : Prop :=
  ∀ n, P117584316670895750.a n = (A079275 (n + 1) : ℚ)

end A079275

/-! ## A079275.P9753206812694760460

`C(A000005(n+1)-A033273(n+1), 2)`
-/

namespace A079275.P9753206812694760460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1) - A033273 (n + 1)).toNat 2

end

end A079275.P9753206812694760460

namespace A079275

/-- `C(A000005(n+1)-A033273(n+1), 2)` -/
def P9753206812694760460.Spec : Prop :=
  ∀ n, (P9753206812694760460.a n : ℤ) = A079275 (n + 1)

end A079275

/-! ## A079275.P6374539645000791

`C(A106404(2*(n+1)), 2)`
-/

namespace A079275.P6374539645000791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A106404 (2 * (n + 1))).toNat 2

end

end A079275.P6374539645000791

namespace A079275

/-- `C(A106404(2*(n+1)), 2)` -/
def P6374539645000791.Spec : Prop :=
  ∀ n, (P6374539645000791.a n : ℤ) = A079275 (n + 1)

end A079275

/-!
# A079276: Multiplicative inverse in the finite field F(prime(n)) of the product of the first n-1 primes modulo prime(n).

The programs for A079276, there is no canonical definition to state claims against.
-/

/-! ## A079276.P18079388211147213782

`A000040(n+1)-A081617(A028310(n))`
-/

namespace A079276.P18079388211147213782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A081617 (A028310 n).toNat

end

end A079276.P18079388211147213782

/-! ## A079276.P2647972356679531092

`A000040(n+1)-A081617(A000007(n)+n)`
-/

namespace A079276.P2647972356679531092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A081617 (A000007 n + (n : ℤ)).toNat

end

end A079276.P2647972356679531092

/-! ## A079276.P4898521900231206375

`A000040(n+1)-A081617(A004273(n)+1-n)`
-/

namespace A079276.P4898521900231206375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A081617 (A004273 n + (1 - (n : ℤ))).toNat

end

end A079276.P4898521900231206375

/-! ## A079276.P13322770102453928824

`A008578(n+2)-A081617(A028310(n))`
-/

namespace A079276.P13322770102453928824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A081617 (A028310 n).toNat

end

end A079276.P13322770102453928824

/-! ## A079276.P9756661038335100875

`record[A006530(n+2)]-A081617(A028310(n))`
-/

namespace A079276.P9756661038335100875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A081617 (A028310 n).toNat

end

end A079276.P9756661038335100875

/-! ## A079276.P14501550074092520164

`record[A020639(n+2)]-A081617(A028310(n))`
-/

namespace A079276.P14501550074092520164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A081617 (A028310 n).toNat

end

end A079276.P14501550074092520164

/-! ## A079276.P7310491432571777044

`record[A006530(n+2)]-A081617(A000007(n)+n)`
-/

namespace A079276.P7310491432571777044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A081617 (A000007 n + (n : ℤ)).toNat

end

end A079276.P7310491432571777044

/-! ## A079276.P6648932511058228103

`record[A020639(n+2)]-A081617(A000007(n)+n)`
-/

namespace A079276.P6648932511058228103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A081617 (A000007 n + (n : ℤ)).toNat

end

end A079276.P6648932511058228103

/-! ## A079276.P1332675266630049290

`record[A014963(n+2)]-A081617(A028310(n))`
-/

namespace A079276.P1332675266630049290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A081617 (A028310 n).toNat

end

end A079276.P1332675266630049290

/-! ## A079276.P451708168361211940

`record[A014963(n+2)]-A081617(A000007(n)+n)`
-/

namespace A079276.P451708168361211940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A081617 (A000007 n + (n : ℤ)).toNat

end

end A079276.P451708168361211940

/-!
# A079277: Largest integer k < n such that any prime factor of k is also a prime factor of n.

The programs for A079277, there is no canonical definition to state claims against.
-/

/-! ## A079277.P14968833621495409750

`A387788(n+2)/(n+1)`
-/

namespace A079277.P14968833621495409750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387788 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A079277.P14968833621495409750

/-! ## A079277.P10576538604740441533

`2-A285699(n+2)+n`
-/

namespace A079277.P10576538604740441533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A285699 (n + 2) + (n : ℤ)

end

end A079277.P10576538604740441533

/-! ## A079277.P4048518538863795270

`ceil(A206242(n+2)/(n+2))`
-/

namespace A079277.P4048518538863795270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A206242 (n + 2) : ℚ) / (n + 2 : ℚ)⌉

end

end A079277.P4048518538863795270

/-! ## A079277.P8020351455424130575

`A285709(n+2)+A051953(n+2)`
-/

namespace A079277.P8020351455424130575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285709 (n + 2) + A051953 (n + 2)

end

end A079277.P8020351455424130575

/-! ## A079277.P3259800852385993867

`n+2+A285709(n+2)-A000010(n+2)`
-/

namespace A079277.P3259800852385993867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + (A285709 (n + 2) - A000010 (n + 2))

end

end A079277.P3259800852385993867

/-! ## A079277.P11586534726173535973

`A162306(∑[A010846(n+2)])`
-/

namespace A079277.P11586534726173535973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079277.P11586534726173535973

/-! ## A079277.P3044040350180064034

`A162306(eq[A162306(n+2), A280269(n+1)])`
-/

namespace A079277.P3044040350180064034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A079277.P3044040350180064034

/-! ## A079277.P3991467211443620432

`gcd(A038610(n+1), A206242(n+2))`
-/

namespace A079277.P3991467211443620432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038610 (n + 1)) (A206242 (n + 2))

end

end A079277.P3991467211443620432

/-! ## A079277.P5455320138801531661

`A003557(A285328((n+2)*A007947(n+2)))`
-/

namespace A079277.P5455320138801531661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A285328 ((n + 2 : ℤ) * A007947 (n + 2)).toNat).toNat

end

end A079277.P5455320138801531661

/-!
# A079278: Define a rational sequence {b(n)} as b(1) = 1, b(n) = b(n-1) + 1/(1 + 1/b(n-1)) for n > 1; a(n) is the denominator of b(n).

The programs for A079278, there is no canonical definition to state claims against.
-/

/-! ## A079278.P12158269037929817000

`(A079269(n)+a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A079278.P12158269037929817000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A079269 n + a (n - 1)) * a (n - 1)

end

end A079278.P12158269037929817000

/-! ## A079278.P13346814956252565702

`A080582(n+1)-A079269(n+1)`
-/

namespace A079278.P13346814956252565702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080582 (n + 1) - A079269 (n + 1)

end

end A079278.P13346814956252565702

/-! ## A079278.P16265169457193737185

`A080581(n+1)-A080582(n+1)`
-/

namespace A079278.P16265169457193737185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080581 (n + 1) - A080582 (n + 1)

end

end A079278.P16265169457193737185

/-! ## A079278.P7810325965620483916

`(A080581(n+1)-A079269(n+1))/2`
-/

namespace A079278.P7810325965620483916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080581 (n + 1) - A079269 (n + 1) : ℚ) / 2

end

end A079278.P7810325965620483916

/-!
# A079279: a(n)=n for n<=3; for n>3, a(n) is next integer sharing common factors with 1 or 2 of previous 3 terms.

The programs for A079279, there is no canonical definition to state claims against.
-/

/-! ## A079279.P9099086678721546347

`eq[A010135(n), A020639(A035294(n))]`
-/

namespace A079279.P9099086678721546347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010135 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A035294 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079279.P9099086678721546347

/-! ## A079279.P17584071055894473598

`lt[A283726(A071202(2*(n+1))), A281862(n)]`
-/

namespace A079279.P17584071055894473598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A071202 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079279.P17584071055894473598

/-! ## A079279.P11142643805859508148

`eq[Δ[A103221(n)!], A010894(n)]`
-/

namespace A079279.P11142643805859508148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A103221 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 21)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A079279.P11142643805859508148

/-! ## A079279.P9737103338461091602

`lt[A272834(n), Δ[A231675(n)]]`
-/

namespace A079279.P9737103338461091602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079279.P9737103338461091602

/-! ## A079279.P2724982269168111975

`lt[A029494(n+1), A004213(A053827(n+1))]`
-/

namespace A079279.P2724982269168111975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004213 (A053827 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079279.P2724982269168111975

/-!
# A079280: Number of log-concave paths of length n starting from the origin (0,0) with steps from {N=(0,1), E=(1,0) and S=(0,-1)} that stay in the second octant and never touch the line y=x except possibly at the beginning or the end.

The programs for A079280, the canonical program `A079280.P5015006494245718984` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079280 has offset 1).

The definition of A079280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079280.P16325421851122935

`A126869((n-1)^(n%2))+A116406(n)`
-/

namespace A079280.P16325421851122935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (((n : ℤ) - 1) ^ (n % 2)).toNat + A116406 n

end

end A079280.P16325421851122935

namespace A079280

/-- `A126869((n-1)^(n%2))+A116406(n)` -/
def P16325421851122935.Spec : Prop :=
  ∀ n, P16325421851122935.a n = A079280 (n + 1)

end A079280

/-! ## A079280.P5015006494245718984

`A126869(A004442(n))+A116406(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079280

/-- `A126869(A004442(n))+A116406(n)` -/
def P5015006494245718984.Spec : Prop :=
  ∀ n, P5015006494245718984.a n = A079280 (n + 1)

theorem P5015006494245718984.correct : P5015006494245718984.Spec := by
  intro n
  simp only [A079280, Nat.add_sub_cancel]

end A079280

/-! ## A079280.P6058864070767021026

`A126869(A124625(n))+A116406(n)`
-/

namespace A079280.P6058864070767021026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A124625 n).toNat + A116406 n

end

end A079280.P6058864070767021026

namespace A079280

/-- `A126869(A124625(n))+A116406(n)` -/
def P6058864070767021026.Spec : Prop :=
  ∀ n, P6058864070767021026.a n = A079280 (n + 1)

end A079280

/-! ## A079280.P2787118836616459875

`A126869(A165754(n))+A116406(n)`
-/

namespace A079280.P2787118836616459875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A165754 n).toNat + A116406 n

end

end A079280.P2787118836616459875

namespace A079280

/-- `A126869(A165754(n))+A116406(n)` -/
def P2787118836616459875.Spec : Prop :=
  ∀ n, P2787118836616459875.a n = A079280 (n + 1)

end A079280

/-! ## A079280.P10962711304114548078

`A126869(abs(1-n))+A008949(A007590(n))`
-/

namespace A079280.P10962711304114548078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 |1 - (n : ℤ)|.toNat + A008949 (A007590 n).toNat

end

end A079280.P10962711304114548078

namespace A079280

/-- `A126869(abs(1-n))+A008949(A007590(n))` -/
def P10962711304114548078.Spec : Prop :=
  ∀ n, P10962711304114548078.a n = A079280 (n + 1)

end A079280

/-!
# A079281: Number of compositions of 2^n into distinct parts.

The programs for A079281, there is no canonical definition to state claims against.
-/

/-! ## A079281.P7995581447786421984

`A032020(A000079(n))`
-/

namespace A079281.P7995581447786421984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 (A000079 n).toNat

end

end A079281.P7995581447786421984

/-! ## A079281.P12124285102742212675

`A032020(2^n)`
-/

namespace A079281.P12124285102742212675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 (2 ^ n)

end

end A079281.P12124285102742212675

/-! ## A079281.P2045088003165622326

`∑[A332004(2^n)]`
-/

namespace A079281.P2045088003165622326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332004 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079281.P2045088003165622326

/-! ## A079281.P15459969707994003219

`A216695(2^n)+1`
-/

namespace A079281.P15459969707994003219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216695 (2 ^ n) + 1

end

end A079281.P15459969707994003219

/-! ## A079281.P7432672209266980899

`A332003(2^(n+1))`
-/

namespace A079281.P7432672209266980899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332003 (2 ^ (n + 1))

end

end A079281.P7432672209266980899

/-!
# A079282: Diagonal sums of triangle A055249.

The programs for A079282, the canonical program `A079282.P9213534698011007782` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079282 has offset 0).

The definition of A079282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079282.P9213534698011007782

`(n-1)*2^n+A000045(n+3)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079282

/-- `(n-1)*2^n+A000045(n+3)` -/
def P9213534698011007782.Spec : Prop :=
  ∀ n, P9213534698011007782.a n = A079282 n

theorem P9213534698011007782.correct : P9213534698011007782.Spec := by
  intro n
  simp only [A079282]

end A079282

/-! ## A079282.P14170500729641004818

`a(n-1)+A099036(n)+a(n-1)` with `a(0)=1`
-/

namespace A079282.P14170500729641004818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A099036 n + a (n - 1))

end

end A079282.P14170500729641004818

namespace A079282

/-- `a(n-1)+A099036(n)+a(n-1)` -/
def P14170500729641004818.Spec : Prop :=
  ∀ n, P14170500729641004818.a n = A079282 n

end A079282

/-! ## A079282.P10578067573193272157

`A048495(n)+A001911(n)`
-/

namespace A079282.P10578067573193272157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048495 n + A001911 n

end

end A079282.P10578067573193272157

namespace A079282

/-- `A048495(n)+A001911(n)` -/
def P10578067573193272157.Spec : Prop :=
  ∀ n, P10578067573193272157.a n = A079282 n

end A079282

/-! ## A079282.P13668187780603038924

`A002064(n)-A232580(n)`
-/

namespace A079282.P13668187780603038924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n - A232580 n

end

end A079282.P13668187780603038924

namespace A079282

/-- `A002064(n)-A232580(n)` -/
def P13668187780603038924.Spec : Prop :=
  ∀ n, P13668187780603038924.a n = A079282 n

end A079282

/-! ## A079282.P8755615683279045690

`A000337(n)+A001911(n)+1`
-/

namespace A079282.P8755615683279045690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 n + (A001911 n + 1)

end

end A079282.P8755615683279045690

namespace A079282

/-- `A000337(n)+A001911(n)+1` -/
def P8755615683279045690.Spec : Prop :=
  ∀ n, P8755615683279045690.a n = A079282 n

end A079282

/-! ## A079282.P2385818195785646650

`A099035(n+1)-A221719(n)`
-/

namespace A079282.P2385818195785646650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099035 (n + 1) - A221719 n

end

end A079282.P2385818195785646650

namespace A079282

/-- `A099035(n+1)-A221719(n)` -/
def P2385818195785646650.Spec : Prop :=
  ∀ n, P2385818195785646650.a n = A079282 n

end A079282

/-! ## A079282.P1182558053060099079

`A001787(n+1)-A008466(n+1)`
-/

namespace A079282.P1182558053060099079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - A008466 (n + 1)

end

end A079282.P1182558053060099079

namespace A079282

/-- `A001787(n+1)-A008466(n+1)` -/
def P1182558053060099079.Spec : Prop :=
  ∀ n, P1182558053060099079.a n = A079282 n

end A079282

/-! ## A079282.P557577779078621967

`A001792(n+1)-A027934(n+2)`
-/

namespace A079282.P557577779078621967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (n + 1) - A027934 (n + 2)

end

end A079282.P557577779078621967

namespace A079282

/-- `A001792(n+1)-A027934(n+2)` -/
def P557577779078621967.Spec : Prop :=
  ∀ n, P557577779078621967.a n = A079282 n

end A079282

/-! ## A079282.P8034002346724650009

`∑[A000045(n+1)+n*A011782(n)]`
-/

namespace A079282.P8034002346724650009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (n : ℤ) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079282.P8034002346724650009

namespace A079282

/-- `∑[A000045(n+1)+n*A011782(n)]` -/
def P8034002346724650009.Spec : Prop :=
  ∀ n, P8034002346724650009.a n = A079282 n

end A079282

/-! ## A079282.P17401955182273819225

`A000045(n+1)+A036289(n)-A008466(n)`
-/

namespace A079282.P17401955182273819225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A036289 n - A008466 n)

end

end A079282.P17401955182273819225

namespace A079282

/-- `A000045(n+1)+A036289(n)-A008466(n)` -/
def P17401955182273819225.Spec : Prop :=
  ∀ n, P17401955182273819225.a n = A079282 n

end A079282

/-! ## A079282.P3247733600274614857

`A001792(n+1)-(A008466(n+1)+A000079(n+1))`
-/

namespace A079282.P3247733600274614857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (n + 1) - (A008466 (n + 1) + A000079 (n + 1))

end

end A079282.P3247733600274614857

namespace A079282

/-- `A001792(n+1)-(A008466(n+1)+A000079(n+1))` -/
def P3247733600274614857.Spec : Prop :=
  ∀ n, P3247733600274614857.a n = A079282 n

end A079282

/-! ## A079282.P15876754024050855310

`A036289(n+1)/2-A008466(n+1)`
-/

namespace A079282.P15876754024050855310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036289 (n + 1) : ℚ) / 2 - (A008466 (n + 1) : ℚ)

end

end A079282.P15876754024050855310

namespace A079282

/-- `A036289(n+1)/2-A008466(n+1)` -/
def P15876754024050855310.Spec : Prop :=
  ∀ n, P15876754024050855310.a n = (A079282 n : ℚ)

end A079282

/-! ## A079282.P810732257736755208

`A020695(n)-A159964(n)`
-/

namespace A079282.P810732257736755208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A159964 n

end

end A079282.P810732257736755208

namespace A079282

/-- `A020695(n)-A159964(n)` -/
def P810732257736755208.Spec : Prop :=
  ∀ n, P810732257736755208.a n = A079282 n

end A079282

/-!
# A079284: Diagonal sums of triangle A008949.

The programs for A079284, the canonical program `A079284.P3745513152013179624` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079284 has offset 0).

The definition of A079284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079284.P9446283883727562693

`A079289(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A079284.P9446283883727562693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A079289 n + a (n - 2)

end

end A079284.P9446283883727562693

namespace A079284

/-- `A079289(n)+a(n-2)` -/
def P9446283883727562693.Spec : Prop :=
  ∀ n, P9446283883727562693.a n = A079284 n

end A079284

/-! ## A079284.P5801825066118825605

`A079285(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A079284.P5801825066118825605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079285 (n - 1) + a (n - 1)

end

end A079284.P5801825066118825605

namespace A079284

/-- `A079285(n-1)+a(n-1)` -/
def P5801825066118825605.Spec : Prop :=
  ∀ n, P5801825066118825605.a n = A079284 n

end A079284

/-! ## A079284.P3745513152013179624

`A000045(n)+2*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079284

/-- `A000045(n)+2*a(n-2)` -/
def P3745513152013179624.Spec : Prop :=
  ∀ n, P3745513152013179624.a n = A079284 n

theorem P3745513152013179624.correct : P3745513152013179624.Spec := by
  intro n
  simp only [A079284]

end A079284

/-! ## A079284.P12218722145719660931

`A174959(n)+A001595(n)`
-/

namespace A079284.P12218722145719660931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174959 n + A001595 n

end

end A079284.P12218722145719660931

namespace A079284

/-- `A174959(n)+A001595(n)` -/
def P12218722145719660931.Spec : Prop :=
  ∀ n, P12218722145719660931.a n = A079284 n

end A079284

/-! ## A079284.P8030509914820609093

`A192727(n)+A052952(n)`
-/

namespace A079284.P8030509914820609093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192727 n + A052952 n

end

end A079284.P8030509914820609093

namespace A079284

/-- `A192727(n)+A052952(n)` -/
def P8030509914820609093.Spec : Prop :=
  ∀ n, P8030509914820609093.a n = A079284 n

end A079284

/-! ## A079284.P11260251191095220977

`A295724(n)+A016116(n)`
-/

namespace A079284.P11260251191095220977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n + A016116 n

end

end A079284.P11260251191095220977

namespace A079284

/-- `A295724(n)+A016116(n)` -/
def P11260251191095220977.Spec : Prop :=
  ∀ n, P11260251191095220977.a n = A079284 n

end A079284

/-! ## A079284.P6297281561023625651

`A295723(n)+A212804(n)`
-/

namespace A079284.P6297281561023625651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 n + A212804 n

end

end A079284.P6297281561023625651

namespace A079284

/-- `A295723(n)+A212804(n)` -/
def P6297281561023625651.Spec : Prop :=
  ∀ n, P6297281561023625651.a n = A079284 n

end A079284

/-! ## A079284.P11634919328752664668

`A020695(n)-A060546(n)`
-/

namespace A079284.P11634919328752664668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A060546 n

end

end A079284.P11634919328752664668

namespace A079284

/-- `A020695(n)-A060546(n)` -/
def P11634919328752664668.Spec : Prop :=
  ∀ n, P11634919328752664668.a n = A079284 n

end A079284

/-! ## A079284.P16420525003602064541

`A295723(n)+Δ[A000045(n)]`
-/

namespace A079284.P16420525003602064541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 n + (f1 (n + 1) - f1 n)

end

end A079284.P16420525003602064541

namespace A079284

/-- `A295723(n)+Δ[A000045(n)]` -/
def P16420525003602064541.Spec : Prop :=
  ∀ n, P16420525003602064541.a n = A079284 n

end A079284

/-! ## A079284.P4528520336792787606

`A052551(n)+A005673(n+1)`
-/

namespace A079284.P4528520336792787606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n + A005673 (n + 1)

end

end A079284.P4528520336792787606

namespace A079284

/-- `A052551(n)+A005673(n+1)` -/
def P4528520336792787606.Spec : Prop :=
  ∀ n, P4528520336792787606.a n = A079284 n

end A079284

/-! ## A079284.P8735595642959678413

`A020695(n)-A016116(n+1)`
-/

namespace A079284.P8735595642959678413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A016116 (n + 1)

end

end A079284.P8735595642959678413

namespace A079284

/-- `A020695(n)-A016116(n+1)` -/
def P8735595642959678413.Spec : Prop :=
  ∀ n, P8735595642959678413.a n = A079284 n

end A079284

/-! ## A079284.P10300813447763066203

`A077957(n)+A005672(n+2)`
-/

namespace A079284.P10300813447763066203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n + A005672 (n + 2)

end

end A079284.P10300813447763066203

namespace A079284

/-- `A077957(n)+A005672(n+2)` -/
def P10300813447763066203.Spec : Prop :=
  ∀ n, P10300813447763066203.a n = A079284 n

end A079284

/-! ## A079284.P16453948663624279951

`A048577(n)-A051032(n+1)`
-/

namespace A079284.P16453948663624279951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n - A051032 (n + 1)

end

end A079284.P16453948663624279951

namespace A079284

/-- `A048577(n)-A051032(n+1)` -/
def P16453948663624279951.Spec : Prop :=
  ∀ n, P16453948663624279951.a n = A079284 n

end A079284

/-! ## A079284.P12307040027819915084

`A295727(n+2)+A295725(n)`
-/

namespace A079284.P12307040027819915084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 (n + 2) + A295725 n

end

end A079284.P12307040027819915084

namespace A079284

/-- `A295727(n+2)+A295725(n)` -/
def P12307040027819915084.Spec : Prop :=
  ∀ n, P12307040027819915084.a n = A079284 n

end A079284

/-! ## A079284.P15114385349031228985

`A295723(n)+A118658(n)/2`
-/

namespace A079284.P15114385349031228985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295723 n : ℚ) + (A118658 n : ℚ) / 2

end

end A079284.P15114385349031228985

namespace A079284

/-- `A295723(n)+A118658(n)/2` -/
def P15114385349031228985.Spec : Prop :=
  ∀ n, P15114385349031228985.a n = (A079284 n : ℚ)

end A079284

/-! ## A079284.P13126041410226385479

`∑[A028892(n+1)+A016116(n)]`
-/

namespace A079284.P13126041410226385479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 1) + A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079284.P13126041410226385479

namespace A079284

/-- `∑[A028892(n+1)+A016116(n)]` -/
def P13126041410226385479.Spec : Prop :=
  ∀ n, P13126041410226385479.a n = A079284 n

end A079284

/-! ## A079284.P11406022163105586271

`A005672(n+1)+A000045(n+1)`
-/

namespace A079284.P11406022163105586271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + A000045 (n + 1)

end

end A079284.P11406022163105586271

namespace A079284

/-- `A005672(n+1)+A000045(n+1)` -/
def P11406022163105586271.Spec : Prop :=
  ∀ n, P11406022163105586271.a n = A079284 n

end A079284

/-! ## A079284.P8256495724229769061

`A028892(n+1)+A000045(n+2)`
-/

namespace A079284.P8256495724229769061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 1) + A000045 (n + 2)

end

end A079284.P8256495724229769061

namespace A079284

/-- `A028892(n+1)+A000045(n+2)` -/
def P8256495724229769061.Spec : Prop :=
  ∀ n, P8256495724229769061.a n = A079284 n

end A079284

/-! ## A079284.P16002170249600910018

`A028892(n+3)+A016116(n+1)`
-/

namespace A079284.P16002170249600910018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 3) + A016116 (n + 1)

end

end A079284.P16002170249600910018

namespace A079284

/-- `A028892(n+3)+A016116(n+1)` -/
def P16002170249600910018.Spec : Prop :=
  ∀ n, P16002170249600910018.a n = A079284 n

end A079284

/-! ## A079284.P15853763668215201985

`A028892(n+1)+A000071(n+2)+1`
-/

namespace A079284.P15853763668215201985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 1) + (A000071 (n + 2) + 1)

end

end A079284.P15853763668215201985

namespace A079284

/-- `A028892(n+1)+A000071(n+2)+1` -/
def P15853763668215201985.Spec : Prop :=
  ∀ n, P15853763668215201985.a n = A079284 n

end A079284

/-!
# A079285: First differences of A079284.

The programs for A079285, the canonical program `A079285.P1716111026875183716` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079285 has offset 0).

The definition of A079285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079285.P1716111026875183716

`Δ[A000045(n)]+2*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079285

/-- `Δ[A000045(n)]+2*a(n-2)` -/
def P1716111026875183716.Spec : Prop :=
  ∀ n, P1716111026875183716.a n = A079285 n

theorem P1716111026875183716.correct : P1716111026875183716.Spec := by
  intro n
  simp only [A079285]

end A079285

/-! ## A079285.P7157347526487584186

`A000045(n+2)-Δ[2^ceil(n/2)]`
-/

namespace A079285.P7157347526487584186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) : ℚ) - (f1 (n + 1) - f1 n)

end

end A079285.P7157347526487584186

namespace A079285

/-- `A000045(n+2)-Δ[2^ceil(n/2)]` -/
def P7157347526487584186.Spec : Prop :=
  ∀ n, P7157347526487584186.a n = (A079285 n : ℚ)

end A079285

/-! ## A079285.P10615300114602164929

`A097896(n+1)+A028892(n)`
-/

namespace A079285.P10615300114602164929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097896 (n + 1) + A028892 n

end

end A079285.P10615300114602164929

namespace A079285

/-- `A097896(n+1)+A028892(n)` -/
def P10615300114602164929.Spec : Prop :=
  ∀ n, P10615300114602164929.a n = A079285 n

end A079285

/-! ## A079285.P18128138354208076799

`A295725(n)+2*A000045(n)`
-/

namespace A079285.P18128138354208076799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295725 n + 2 * A000045 n

end

end A079285.P18128138354208076799

namespace A079285

/-- `A295725(n)+2*A000045(n)` -/
def P18128138354208076799.Spec : Prop :=
  ∀ n, P18128138354208076799.a n = A079285 n

end A079285

/-! ## A079285.P6967210686034276277

`A077957(n+1)+A005672(n+1)`
-/

namespace A079285.P6967210686034276277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 1) + A005672 (n + 1)

end

end A079285.P6967210686034276277

namespace A079285

/-- `A077957(n+1)+A005672(n+1)` -/
def P6967210686034276277.Spec : Prop :=
  ∀ n, P6967210686034276277.a n = A079285 n

end A079285

/-! ## A079285.P1088675160691996539

`A192727(n+1)+A106624(n+1)`
-/

namespace A079285.P1088675160691996539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192727 (n + 1) + A106624 (n + 1)

end

end A079285.P1088675160691996539

namespace A079285

/-- `A192727(n+1)+A106624(n+1)` -/
def P1088675160691996539.Spec : Prop :=
  ∀ n, P1088675160691996539.a n = A079285 n

end A079285

/-! ## A079285.P16675125035836425191

`A028892(n+2)+A016116(n+1)`
-/

namespace A079285.P16675125035836425191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 2) + A016116 (n + 1)

end

end A079285.P16675125035836425191

namespace A079285

/-- `A028892(n+2)+A016116(n+1)` -/
def P16675125035836425191.Spec : Prop :=
  ∀ n, P16675125035836425191.a n = A079285 n

end A079285

/-! ## A079285.P1195632575712277277

`abs(A000045(n+2)-A131575(n+1))`
-/

namespace A079285.P1195632575712277277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000045 (n + 2) - A131575 (n + 1)|

end

end A079285.P1195632575712277277

namespace A079285

/-- `abs(A000045(n+2)-A131575(n+1))` -/
def P1195632575712277277.Spec : Prop :=
  ∀ n, P1195632575712277277.a n = A079285 n

end A079285

/-! ## A079285.P16358075796723502083

`Δ[A028892(n+1)]+A000045(n+1)`
-/

namespace A079285.P16358075796723502083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000045 (n + 1)

end

end A079285.P16358075796723502083

namespace A079285

/-- `Δ[A028892(n+1)]+A000045(n+1)` -/
def P16358075796723502083.Spec : Prop :=
  ∀ n, P16358075796723502083.a n = A079285 n

end A079285

/-! ## A079285.P18163340696530139000

`A005672(n+1)+A052551(n+1)-A052551(n)`
-/

namespace A079285.P18163340696530139000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A052551 (n + 1) - A052551 n)

end

end A079285.P18163340696530139000

namespace A079285

/-- `A005672(n+1)+A052551(n+1)-A052551(n)` -/
def P18163340696530139000.Spec : Prop :=
  ∀ n, P18163340696530139000.a n = A079285 n

end A079285

/-! ## A079285.P10650404433844465014

`A016116(n+1)+A192727(n+1)-A000035(n+1)`
-/

namespace A079285.P10650404433844465014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) + (A192727 (n + 1) - A000035 (n + 1))

end

end A079285.P10650404433844465014

namespace A079285

/-- `A016116(n+1)+A192727(n+1)-A000035(n+1)` -/
def P10650404433844465014.Spec : Prop :=
  ∀ n, P10650404433844465014.a n = A079285 n

end A079285

/-! ## A079285.P4557947125222313800

`ogf((2x-x^2-2x^3)/(1-x-3x^2+2x^3+2x^4))`
-/

namespace A079285.P4557947125222313800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, -2] [1, -1, -3, 2, 2] n

end

end A079285.P4557947125222313800

namespace A079285

/-- `ogf((2x-x^2-2x^3)/(1-x-3x^2+2x^3+2x^4))` -/
def P4557947125222313800.Spec : Prop :=
  ∀ n, P4557947125222313800.a n = A079285 n

end A079285

/-! ## A079285.P11945865098700069742

`A295723(n)-A295725(n+1)`
-/

namespace A079285.P11945865098700069742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 n - A295725 (n + 1)

end

end A079285.P11945865098700069742

namespace A079285

/-- `A295723(n)-A295725(n+1)` -/
def P11945865098700069742.Spec : Prop :=
  ∀ n, P11945865098700069742.a n = A079285 n

end A079285

/-! ## A079285.P18390269922426155912

`Δ[A079284(n)]`
-/

namespace A079285.P18390269922426155912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079285.P18390269922426155912

namespace A079285

/-- `Δ[A079284(n)]` -/
def P18390269922426155912.Spec : Prop :=
  ∀ n, P18390269922426155912.a n = A079285 n

end A079285

/-! ## A079285.P3724250601024189618

`Δ[A000045(n+3)-2^floor((n+1)/2)]`
-/

namespace A079285.P3724250601024189618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 3) : ℚ) - (2 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079285.P3724250601024189618

namespace A079285

/-- `Δ[A000045(n+3)-2^floor((n+1)/2)]` -/
def P3724250601024189618.Spec : Prop :=
  ∀ n, P3724250601024189618.a n = (A079285 n : ℚ)

end A079285

/-! ## A079285.P7064490481450395854

`A079284(n+1)-A079284(n)`
-/

namespace A079285.P7064490481450395854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079284 (n + 1) - A079284 n

end

end A079285.P7064490481450395854

namespace A079285

/-- `A079284(n+1)-A079284(n)` -/
def P7064490481450395854.Spec : Prop :=
  ∀ n, P7064490481450395854.a n = A079285 n

end A079285

/-! ## A079285.P7114014642838821457

`Δ[A295723(n)+Δ[A000045(n)]]`
-/

namespace A079285.P7114014642838821457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079285.P7114014642838821457

namespace A079285

/-- `Δ[A295723(n)+Δ[A000045(n)]]` -/
def P7114014642838821457.Spec : Prop :=
  ∀ n, P7114014642838821457.a n = A079285 n

end A079285

/-! ## A079285.P17654627987627184430

`Δ[A020695(n)-A016116(n+1)]`
-/

namespace A079285.P17654627987627184430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A016116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079285.P17654627987627184430

namespace A079285

/-- `Δ[A020695(n)-A016116(n+1)]` -/
def P17654627987627184430.Spec : Prop :=
  ∀ n, P17654627987627184430.a n = A079285 n

end A079285

/-! ## A079285.P4511100749055168665

`A005672(n+1)+A295728(n+1)-A295733(n+1)`
-/

namespace A079285.P4511100749055168665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295728 (n + 1) - A295733 (n + 1))

end

end A079285.P4511100749055168665

namespace A079285

/-- `A005672(n+1)+A295728(n+1)-A295733(n+1)` -/
def P4511100749055168665.Spec : Prop :=
  ∀ n, P4511100749055168665.a n = A079285 n

end A079285

/-! ## A079285.P15097196230941473076

`A295727(n+1)+A295728(n+1)-A295730(n+1)`
-/

namespace A079285.P15097196230941473076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 (n + 1) + (A295728 (n + 1) - A295730 (n + 1))

end

end A079285.P15097196230941473076

namespace A079285

/-- `A295727(n+1)+A295728(n+1)-A295730(n+1)` -/
def P15097196230941473076.Spec : Prop :=
  ∀ n, P15097196230941473076.a n = A079285 n

end A079285

/-!
# A079289: For even n, a(n) = a(n-2) + a(n-1) + 2^(n/2-2), n>2. For odd n, a(n) = a(n-2) + a(n-1).

The programs for A079289, the canonical program `A079289.P5619972351746509760` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079289 has offset 0).

The definition of A079289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079289.P5619972351746509760

`a(n-2)+a(n-1)+floor(2^(n/2-2))*(1-(-1)^(n+1))/2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079289

/-- `a(n-2)+a(n-1)+floor(2^(n/2-2))*(1-(-1)^(n+1))/2` -/
def P5619972351746509760.Spec : Prop :=
  ∀ n, P5619972351746509760.a n = (A079289 n : ℚ)

end A079289

/-! ## A079289.P14852316507333528184

`A000045(n-1)+2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A079289.P14852316507333528184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000045 (n - 1) + 2 * a (n - 2)

end

end A079289.P14852316507333528184

namespace A079289

/-- `A000045(n-1)+2*a(n-2)` -/
def P14852316507333528184.Spec : Prop :=
  ∀ n, P14852316507333528184.a n = A079289 n

end A079289

/-! ## A079289.P4994525180058807330

`record[A247309(n)]-A131577(A110654(n))`
-/

namespace A079289.P4994525180058807330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A131577 (A110654 n).toNat

end

end A079289.P4994525180058807330

namespace A079289

/-- `record[A247309(n)]-A131577(A110654(n))` -/
def P4994525180058807330.Spec : Prop :=
  ∀ n, P4994525180058807330.a n = A079289 n

end A079289

/-! ## A079289.P7900369128603858027

`A000045(n+2)-A131577(A110654(n))`
-/

namespace A079289.P7900369128603858027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A131577 (A110654 n).toNat

end

end A079289.P7900369128603858027

namespace A079289

/-- `A000045(n+2)-A131577(A110654(n))` -/
def P7900369128603858027.Spec : Prop :=
  ∀ n, P7900369128603858027.a n = A079289 n

end A079289

/-! ## A079289.P4831802312147871678

`A212804(n+3)-A131577(A004526(n+1))`
-/

namespace A079289.P4831802312147871678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 3) - A131577 (A004526 (n + 1)).toNat

end

end A079289.P4831802312147871678

namespace A079289

/-- `A212804(n+3)-A131577(A004526(n+1))` -/
def P4831802312147871678.Spec : Prop :=
  ∀ n, P4831802312147871678.a n = A079289 n

end A079289

/-! ## A079289.P7334896569548605859

`Δ[A071679(n+1)-A029744(n+1)]`
-/

namespace A079289.P7334896569548605859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 1) - A029744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079289.P7334896569548605859

namespace A079289

/-- `Δ[A071679(n+1)-A029744(n+1)]` -/
def P7334896569548605859.Spec : Prop :=
  ∀ n, P7334896569548605859.a n = A079289 n

end A079289

/-! ## A079289.P12280484408099116244

`Δ[A295724(n)+A131577(A110654(n))]`
-/

namespace A079289.P12280484408099116244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n + A131577 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079289.P12280484408099116244

namespace A079289

/-- `Δ[A295724(n)+A131577(A110654(n))]` -/
def P12280484408099116244.Spec : Prop :=
  ∀ n, P12280484408099116244.a n = A079289 n

end A079289

/-! ## A079289.P15708666517380702394

`Δ[A001911(n)-A209726(A028310(n))]`
-/

namespace A079289.P15708666517380702394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n - A209726 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079289.P15708666517380702394

namespace A079289

/-- `Δ[A001911(n)-A209726(A028310(n))]` -/
def P15708666517380702394.Spec : Prop :=
  ∀ n, P15708666517380702394.a n = A079289 n

end A079289

/-! ## A079289.P11526840381125193789

`Δ[A020695(n)]-A131577(A110654(n))`
-/

namespace A079289.P11526840381125193789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A131577 (A110654 n).toNat

end

end A079289.P11526840381125193789

namespace A079289

/-- `Δ[A020695(n)]-A131577(A110654(n))` -/
def P11526840381125193789.Spec : Prop :=
  ∀ n, P11526840381125193789.a n = A079289 n

end A079289

/-! ## A079289.P1378435945942764287

`Δ[A071679(n+1)]-A011782(A110654(n))`
-/

namespace A079289.P1378435945942764287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A011782 (A110654 n).toNat

end

end A079289.P1378435945942764287

namespace A079289

/-- `Δ[A071679(n+1)]-A011782(A110654(n))` -/
def P1378435945942764287.Spec : Prop :=
  ∀ n, P1378435945942764287.a n = A079289 n

end A079289

/-! ## A079289.P11458596500986408306

`A295724(log2(A011782(n)))+A016116(n)`
-/

namespace A079289.P11458596500986408306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + A016116 n

end

end A079289.P11458596500986408306

namespace A079289

/-- `A295724(log2(A011782(n)))+A016116(n)` -/
def P11458596500986408306.Spec : Prop :=
  ∀ n, P11458596500986408306.a n = A079289 n

end A079289

/-! ## A079289.P8098914989645867400

`A354294(n)-A008466(n)`
-/

namespace A079289.P8098914989645867400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354294 n - A008466 n

end

end A079289.P8098914989645867400

namespace A079289

/-- `A354294(n)-A008466(n)` -/
def P8098914989645867400.Spec : Prop :=
  ∀ n, P8098914989645867400.a n = A079289 n

end A079289

/-! ## A079289.P16458120096900207647

`A005674(n)+A011782(n)-A005674(n+1)`
-/

namespace A079289.P16458120096900207647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005674 n + (A011782 n - A005674 (n + 1))

end

end A079289.P16458120096900207647

namespace A079289

/-- `A005674(n)+A011782(n)-A005674(n+1)` -/
def P16458120096900207647.Spec : Prop :=
  ∀ n, P16458120096900207647.a n = A079289 n

end A079289

/-!
# A079290: Composite numbers satisfying A073078(n)=(n+1)/2.

The programs for A079290, there is no canonical definition to state claims against.
-/

/-! ## A079290.P18229903883616390477

`A244623(abs(round((n-2)/a(n-1))-n)+1)` with `a(0)=9, a(1)=15`
-/

namespace A079290.P18229903883616390477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 15] fun n a =>
  A244623 (|SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) / (a (n - 1) : ℚ)) - (n : ℤ)| + 1).toNat

end

end A079290.P18229903883616390477

/-!
# A079291: Squares of Pell numbers.

The programs for A079291, the canonical program `A079291.P10024746228279506186` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079291 has offset 0).

The definition of A079291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079291.P10024746228279506186

`A000129(n)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079291

/-- `A000129(n)²` -/
def P10024746228279506186.Spec : Prop :=
  ∀ n, P10024746228279506186.a n = A079291 n

theorem P10024746228279506186.correct : P10024746228279506186.Spec := by
  intro n
  simp only [A079291]

end A079291

/-! ## A079291.P3171144663094944582

`1/8*(A002203(2*n)-2*(-1)^n)`
-/

namespace A079291.P3171144663094944582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * (A002203 (2 * n) - 2 * (-1) ^ n : ℚ)

end

end A079291.P3171144663094944582

namespace A079291

/-- `1/8*(A002203(2*n)-2*(-1)^n)` -/
def P3171144663094944582.Spec : Prop :=
  ∀ n, P3171144663094944582.a n = (A079291 n : ℚ)

end A079291

/-! ## A079291.P13927380381624510019

`((-1)^(n+1)+A001109(n+1)-3*A001109(n))/4`
-/

namespace A079291.P13927380381624510019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (n + 1) + A001109 (n + 1) - 3 * A001109 n : ℚ) / 4

end

end A079291.P13927380381624510019

namespace A079291

/-- `((-1)^(n+1)+A001109(n+1)-3*A001109(n))/4` -/
def P13927380381624510019.Spec : Prop :=
  ∀ n, P13927380381624510019.a n = (A079291 n : ℚ)

end A079291

/-! ## A079291.P4338684471817281743

`ogf((x-x^2)/(1-5x-5x^2+x^3))`
-/

namespace A079291.P4338684471817281743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -5, -5, 1] n

end

end A079291.P4338684471817281743

namespace A079291

/-- `ogf((x-x^2)/(1-5x-5x^2+x^3))` -/
def P4338684471817281743.Spec : Prop :=
  ∀ n, P4338684471817281743.a n = A079291 n

end A079291

/-! ## A079291.P15575390770417288128

`Δ[floor((sqrt(2)+1)*a(n-1))]²` with `a(0)=1, a(1)=1`
-/

namespace A079291.P15575390770417288128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌊(Real.sqrt (2 : ℝ) + 1) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A079291.P15575390770417288128

namespace A079291

/-- `Δ[floor((sqrt(2)+1)*a(n-1))]²` -/
def P15575390770417288128.Spec : Prop :=
  ∀ n, P15575390770417288128.a n = A079291 n

end A079291

/-! ## A079291.P3903362776638231818

`∑[a(n-2)+2*a(n-1)]²` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A079291.P3903362776638231818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A079291.P3903362776638231818

namespace A079291

/-- `∑[a(n-2)+2*a(n-1)]²` -/
def P3903362776638231818.Spec : Prop :=
  ∀ n, (P3903362776638231818.a n : ℤ) = A079291 n

end A079291

/-! ## A079291.P9000760267505840572

`∑[a(n-2)+lcm(2, a(n-1))]²` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A079291.P9000760267505840572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 2) + Nat.lcm 2 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A079291.P9000760267505840572

namespace A079291

/-- `∑[a(n-2)+lcm(2, a(n-1))]²` -/
def P9000760267505840572.Spec : Prop :=
  ∀ n, (P9000760267505840572.a n : ℤ) = A079291 n

end A079291

/-! ## A079291.P9620428279858524893

`5*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A079291.P9620428279858524893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  5 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A079291.P9620428279858524893

namespace A079291

/-- `5*(a(n-1)+a(n-2))-a(n-3)` -/
def P9620428279858524893.Spec : Prop :=
  ∀ n, P9620428279858524893.a n = A079291 n

end A079291

/-! ## A079291.P6213178484871835985

`∑[a(n-1)+a(n-1)+a(n-2)]²` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A079291.P6213178484871835985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A079291.P6213178484871835985

namespace A079291

/-- `∑[a(n-1)+a(n-1)+a(n-2)]²` -/
def P6213178484871835985.Spec : Prop :=
  ∀ n, (P6213178484871835985.a n : ℤ) = A079291 n

end A079291

/-! ## A079291.P17603407272045849560

`∑[a(n-2)-a(n-1)-a(n-1)]²` with `a(0)=0, a(1)=-1, a(2)=3`
-/

namespace A079291.P17603407272045849560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 3] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A079291.P17603407272045849560

namespace A079291

/-- `∑[a(n-2)-a(n-1)-a(n-1)]²` -/
def P17603407272045849560.Spec : Prop :=
  ∀ n, P17603407272045849560.a n = A079291 n

end A079291

/-! ## A079291.P6311344426395482184

`6*a(n-1)-a(n-2)-2*(-1)^n` with `a(0)=0, a(1)=1`
-/

namespace A079291.P6311344426395482184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  6 * a (n - 1) - a (n - 2) - 2 * (-1) ^ n

end

end A079291.P6311344426395482184

namespace A079291

/-- `6*a(n-1)-a(n-2)-2*(-1)^n` -/
def P6311344426395482184.Spec : Prop :=
  ∀ n, P6311344426395482184.a n = A079291 n

end A079291

/-! ## A079291.P3613843400555639453

`((((1-sqrt(2))^n+(1+sqrt(2))^n)/2)²+(-1)^(n+1))/2`
-/

namespace A079291.P3613843400555639453
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((1 - Real.sqrt (2 : ℝ)) ^ n + (1 + Real.sqrt (2 : ℝ)) ^ n) / 2) ^ 2 + ((-1) ^ (n + 1) : ℝ)) / 2

end

end A079291.P3613843400555639453

namespace A079291

/-- `((((1-sqrt(2))^n+(1+sqrt(2))^n)/2)²+(-1)^(n+1))/2` -/
def P3613843400555639453.Spec : Prop :=
  ∀ n, P3613843400555639453.a n = (A079291 n : ℝ)

end A079291

/-! ## A079291.P10006350963630546621

`Δ[A171842(n)]²`
-/

namespace A079291.P10006350963630546621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A079291.P10006350963630546621

namespace A079291

/-- `Δ[A171842(n)]²` -/
def P10006350963630546621.Spec : Prop :=
  ∀ n, P10006350963630546621.a n = A079291 n

end A079291

/-! ## A079291.P3332928051237511533

`A176981(n+1)²`
-/

namespace A079291.P3332928051237511533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (n + 1) ^ 2

end

end A079291.P3332928051237511533

namespace A079291

/-- `A176981(n+1)²` -/
def P3332928051237511533.Spec : Prop :=
  ∀ n, P3332928051237511533.a n = A079291 n

end A079291

/-! ## A079291.P1223910218041668312

`(1-A174191(n))²`
-/

namespace A079291.P1223910218041668312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A174191 n) ^ 2

end

end A079291.P1223910218041668312

namespace A079291

/-- `(1-A174191(n))²` -/
def P1223910218041668312.Spec : Prop :=
  ∀ n, P1223910218041668312.a n = A079291 n

end A079291

/-! ## A079291.P8260655670955257467

`A215936(n+2)²`
-/

namespace A079291.P8260655670955257467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 2) ^ 2

end

end A079291.P8260655670955257467

namespace A079291

/-- `A215936(n+2)²` -/
def P8260655670955257467.Spec : Prop :=
  ∀ n, P8260655670955257467.a n = A079291 n

end A079291

/-! ## A079291.P2212093551272141426

`A002965(2*n)²`
-/

namespace A079291.P2212093551272141426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n) ^ 2

end

end A079291.P2212093551272141426

namespace A079291

/-- `A002965(2*n)²` -/
def P2212093551272141426.Spec : Prop :=
  ∀ n, P2212093551272141426.a n = A079291 n

end A079291

/-! ## A079291.P8730001742961464764

`A116558(2*n)²`
-/

namespace A079291.P8730001742961464764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 (2 * n) ^ 2

end

end A079291.P8730001742961464764

namespace A079291

/-- `A116558(2*n)²` -/
def P8730001742961464764.Spec : Prop :=
  ∀ n, P8730001742961464764.a n = A079291 n

end A079291

/-! ## A079291.P1118232972750844025

`A135153(2*n)²`
-/

namespace A079291.P1118232972750844025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (2 * n) ^ 2

end

end A079291.P1118232972750844025

namespace A079291

/-- `A135153(2*n)²` -/
def P1118232972750844025.Spec : Prop :=
  ∀ n, P1118232972750844025.a n = A079291 n

end A079291

/-! ## A079291.P8772424043049994619

`A249576(3*n)²`
-/

namespace A079291.P8772424043049994619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n) ^ 2

end

end A079291.P8772424043049994619

namespace A079291

/-- `A249576(3*n)²` -/
def P8772424043049994619.Spec : Prop :=
  ∀ n, P8772424043049994619.a n = A079291 n

end A079291

/-!
# A079292: Near twin primes of order 12: twin primes p,p+2 such that p+12 and p+14 are primes.

The programs for A079292, there is no canonical definition to state claims against.
-/

/-! ## A079292.P15157030555046116524

`∩[A046135(n+1), A153417(n+1)]`
-/

namespace A079292.P15157030555046116524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079292.P15157030555046116524

/-! ## A079292.P9237298591425678832

`∩[A046133(n+1)-2, A046133(n+1)]`
-/

namespace A079292.P9237298591425678832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079292.P9237298591425678832

/-! ## A079292.P7301165256887679064

`A140564(4*n+1)`
-/

namespace A079292.P7301165256887679064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140564 (4 * n + 1)

end

end A079292.P7301165256887679064

/-! ## A079292.P11957819907782955306

`p?[A140564(xor(1, 4*n))]`
-/

namespace A079292.P11957819907782955306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140564 (Nat.xor 1 (4 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079292.P11957819907782955306

/-! ## A079292.P16004588661026622161

`A140564(record[xor(3, n)])-12`
-/

namespace A079292.P16004588661026622161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140564 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - 12

end

end A079292.P16004588661026622161

/-! ## A079292.P7068658329161044833

`A140564(xor(2, 4*n))-2`
-/

namespace A079292.P7068658329161044833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140564 (Nat.xor 2 (4 * n)) - 2

end

end A079292.P7068658329161044833

/-! ## A079292.P9383000437807488321

`p?[A140564(Δ[C(2*n, 2)])]`
-/

namespace A079292.P9383000437807488321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140564 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079292.P9383000437807488321

/-! ## A079292.P12145010786246436588

`p?[A140564(n+1)-n%4]`
-/

namespace A079292.P12145010786246436588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140564 (n + 1) - ((n % 4 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079292.P12145010786246436588

/-! ## A079292.P4801603208177478852

`record[A140564(A086970(n))]`
-/

namespace A079292.P4801603208177478852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140564 (A086970 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079292.P4801603208177478852

/-! ## A079292.P980544373819688708

`p?[A140564(A016813(n))]`
-/

namespace A079292.P980544373819688708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140564 (A016813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079292.P980544373819688708

/-! ## A079292.P3370867417524472423

`A140564(A016825(n))-2`
-/

namespace A079292.P3370867417524472423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140564 (A016825 n).toNat - 2

end

end A079292.P3370867417524472423

/-! ## A079292.P7069748278708141360

`p?[A140564(Δ[A000384(n)])]`
-/

namespace A079292.P7069748278708141360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140564 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079292.P7069748278708141360

/-! ## A079292.P5146126487172911377

`p?[A140564(A005408(2*n))]`
-/

namespace A079292.P5146126487172911377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140564 (A005408 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079292.P5146126487172911377

/-! ## A079292.P8711873411261667054

`p?[A140564(n+1)-A007877(n)]`
-/

namespace A079292.P8711873411261667054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140564 (n + 1) - A007877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079292.P8711873411261667054

/-! ## A079292.P2045331658032714210

`p?[A140564(n+1)-A010873(n)]`
-/

namespace A079292.P2045331658032714210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140564 (n + 1) - A010873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079292.P2045331658032714210

/-! ## A079292.P17159621685959166282

`p?[A140564(n+1)-A126773(n+1)]`
-/

namespace A079292.P17159621685959166282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140564 (n + 1) - A126773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079292.P17159621685959166282

/-! ## A079292.P2402899849529057462

`p?[A140564(n+1)-A277698(n+1)]`
-/

namespace A079292.P2402899849529057462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140564 (n + 1) - A277698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079292.P2402899849529057462

/-! ## A079292.P937397389866992164

`A140564(A016813(n))/A178334(A002024(n+1))`
-/

namespace A079292.P937397389866992164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140564 (A016813 n).toNat : ℚ) / (A178334 (A002024 (n + 1)).toNat : ℚ)

end

end A079292.P937397389866992164

/-! ## A079292.P5599794471865867015

`A140564(A016813(n))+A015539(A059008(n+1))`
-/

namespace A079292.P5599794471865867015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140564 (A016813 n).toNat + A015539 (A059008 (n + 1)).toNat

end

end A079292.P5599794471865867015

/-!
# A079295: (D(p)-6)/(12p) where D(p) denotes the denominator of the 2p-th Bernoulli number and p runs through the primes.

The programs for A079295, the canonical program `A079295.P17127191197915102483` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079295 has offset 1).

The definition of A079295 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A101264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079295.P17127191197915102483

`A101264(A000040(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079295

/-- `A101264(A000040(n+1))` -/
def P17127191197915102483.Spec : Prop :=
  ∀ n, P17127191197915102483.a n = A079295 (n + 1)

theorem P17127191197915102483.correct : P17127191197915102483.Spec := by
  intro n
  simp only [A079295, Nat.add_sub_cancel]

end A079295

/-! ## A079295.P11567065032845153803

`A248597(n+1)%2`
-/

namespace A079295.P11567065032845153803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248597 (n + 1)) 2

end

end A079295.P11567065032845153803

namespace A079295

/-- `A248597(n+1)%2` -/
def P11567065032845153803.Spec : Prop :=
  ∀ n, P11567065032845153803.a n = A079295 (n + 1)

end A079295

/-! ## A079295.P11429251052695576311

`val(A248596(n+1), 2)`
-/

namespace A079295.P11429251052695576311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A248596 (n + 1)).toNat 2

end

end A079295.P11429251052695576311

namespace A079295

/-- `val(A248596(n+1), 2)` -/
def P11429251052695576311.Spec : Prop :=
  ∀ n, (P11429251052695576311.a n : ℤ) = A079295 (n + 1)

end A079295

/-! ## A079295.P9938361343080340522

`C(2, A072056(n+1))`
-/

namespace A079295.P9938361343080340522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A072056 (n + 1)).toNat

end

end A079295.P9938361343080340522

namespace A079295

/-- `C(2, A072056(n+1))` -/
def P9938361343080340522.Spec : Prop :=
  ∀ n, (P9938361343080340522.a n : ℤ) = A079295 (n + 1)

end A079295

/-! ## A079295.P7736378853391309863

`C(2, A266225(n+1))`
-/

namespace A079295.P7736378853391309863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A266225 (n + 1)).toNat

end

end A079295.P7736378853391309863

namespace A079295

/-- `C(2, A266225(n+1))` -/
def P7736378853391309863.Spec : Prop :=
  ∀ n, (P7736378853391309863.a n : ℤ) = A079295 (n + 1)

end A079295

/-! ## A079295.P1013184886339519063

`C(2, A278230(n+1))`
-/

namespace A079295.P1013184886339519063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A278230 (n + 1)).toNat

end

end A079295.P1013184886339519063

namespace A079295

/-- `C(2, A278230(n+1))` -/
def P1013184886339519063.Spec : Prop :=
  ∀ n, (P1013184886339519063.a n : ℤ) = A079295 (n + 1)

end A079295

/-! ## A079295.P11984151919018299540

`61%A181697(n+1)`
-/

namespace A079295.P11984151919018299540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 61 (A181697 (n + 1))

end

end A079295.P11984151919018299540

namespace A079295

/-- `61%A181697(n+1)` -/
def P11984151919018299540.Spec : Prop :=
  ∀ n, P11984151919018299540.a n = A079295 (n + 1)

end A079295

/-! ## A079295.P8459362578133481394

`floor(atan(A058888(n+1)))`
-/

namespace A079295.P8459362578133481394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A058888 (n + 1) : ℝ)⌋

end

end A079295.P8459362578133481394

namespace A079295

/-- `floor(atan(A058888(n+1)))` -/
def P8459362578133481394.Spec : Prop :=
  ∀ n, P8459362578133481394.a n = A079295 (n + 1)

end A079295

/-! ## A079295.P4240371300104259765

`floor(1/A023595(n+1))`
-/

namespace A079295.P4240371300104259765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A023595 (n + 1) : ℚ)⌋

end

end A079295.P4240371300104259765

namespace A079295

/-- `floor(1/A023595(n+1))` -/
def P4240371300104259765.Spec : Prop :=
  ∀ n, P4240371300104259765.a n = A079295 (n + 1)

end A079295

/-! ## A079295.P11115039233236702877

`floor(1/A059787(n+1))`
-/

namespace A079295.P11115039233236702877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A059787 (n + 1) : ℚ)⌋

end

end A079295.P11115039233236702877

namespace A079295

/-- `floor(1/A059787(n+1))` -/
def P11115039233236702877.Spec : Prop :=
  ∀ n, P11115039233236702877.a n = A079295 (n + 1)

end A079295

/-! ## A079295.P15528562103439889587

`round(1/A035096(n+1))`
-/

namespace A079295.P15528562103439889587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A035096 (n + 1) : ℚ))

end

end A079295.P15528562103439889587

namespace A079295

/-- `round(1/A035096(n+1))` -/
def P15528562103439889587.Spec : Prop :=
  ∀ n, P15528562103439889587.a n = A079295 (n + 1)

end A079295

/-! ## A079295.P14928694627057581789

`round(A071629(n+1)/5)`
-/

namespace A079295.P14928694627057581789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A071629 (n + 1) : ℚ) / 5)

end

end A079295.P14928694627057581789

namespace A079295

/-- `round(A071629(n+1)/5)` -/
def P14928694627057581789.Spec : Prop :=
  ∀ n, P14928694627057581789.a n = A079295 (n + 1)

end A079295

/-! ## A079295.P1314196049276095469

`char[A072192(n+1)-1]`
-/

namespace A079295.P1314196049276095469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072192 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079295.P1314196049276095469

namespace A079295

/-- `char[A072192(n+1)-1]` -/
def P1314196049276095469.Spec : Prop :=
  ∀ n, (P1314196049276095469.a n : ℤ) = A079295 (n + 1)

end A079295

/-! ## A079295.P9773906611630559939

`A011662(A071630(n+1))`
-/

namespace A079295.P9773906611630559939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011662 (A071630 (n + 1)).toNat

end

end A079295.P9773906611630559939

namespace A079295

/-- `A011662(A071630(n+1))` -/
def P9773906611630559939.Spec : Prop :=
  ∀ n, P9773906611630559939.a n = A079295 (n + 1)

end A079295

/-! ## A079295.P17127564505432787728

`A000089(A219433(n+1))`
-/

namespace A079295.P17127564505432787728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A219433 (n + 1)).toNat

end

end A079295.P17127564505432787728

namespace A079295

/-- `A000089(A219433(n+1))` -/
def P17127564505432787728.Spec : Prop :=
  ∀ n, P17127564505432787728.a n = A079295 (n + 1)

end A079295

/-! ## A079295.P11569699891192093799

`A000035(A248597(n+1))`
-/

namespace A079295.P11569699891192093799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A248597 (n + 1)).toNat

end

end A079295.P11569699891192093799

namespace A079295

/-- `A000035(A248597(n+1))` -/
def P11569699891192093799.Spec : Prop :=
  ∀ n, P11569699891192093799.a n = A079295 (n + 1)

end A079295

/-! ## A079295.P8543371958572773374

`A208575(A248596(n+1)+1)`
-/

namespace A079295.P8543371958572773374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208575 (A248596 (n + 1) + 1).toNat

end

end A079295.P8543371958572773374

namespace A079295

/-- `A208575(A248596(n+1)+1)` -/
def P8543371958572773374.Spec : Prop :=
  ∀ n, P8543371958572773374.a n = A079295 (n + 1)

end A079295

/-! ## A079295.P15250407141516616036

`and(A016760(n), A248597(n+1))`
-/

namespace A079295.P15250407141516616036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A248597 (n + 1))

end

end A079295.P15250407141516616036

namespace A079295

/-- `and(A016760(n), A248597(n+1))` -/
def P15250407141516616036.Spec : Prop :=
  ∀ n, P15250407141516616036.a n = A079295 (n + 1)

end A079295

/-! ## A079295.P3308120489753430909

`and(A016820(n), A248597(n+1))`
-/

namespace A079295.P3308120489753430909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A248597 (n + 1))

end

end A079295.P3308120489753430909

namespace A079295

/-- `and(A016820(n), A248597(n+1))` -/
def P3308120489753430909.Spec : Prop :=
  ∀ n, P3308120489753430909.a n = A079295 (n + 1)

end A079295

/-! ## A079295.P13052582459941917324

`A359550((A248596(n+1)+1)²)`
-/

namespace A079295.P13052582459941917324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 ((A248596 (n + 1) + 1) ^ 2).toNat

end

end A079295.P13052582459941917324

namespace A079295

/-- `A359550((A248596(n+1)+1)²)` -/
def P13052582459941917324.Spec : Prop :=
  ∀ n, P13052582459941917324.a n = A079295 (n + 1)

end A079295

/-!
# A079297: Triangle read by rows: the k-th column is an arithmetic progression with difference 2k-1 and the top entry is the hexagonal number k*(2*k-1) (A000384).

The programs for A079297, the canonical program `A079297.P18389843083038880635` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079297 has offset 1).

The definition of A079297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079297.P10087540439353548373

`(2*(n-C(∑[char[∑[n]]], 2))+1)*∑[char[∑[n]]]`
-/

namespace A079297.P10087540439353548373
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 1) * ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A079297.P10087540439353548373

namespace A079297

/-- `(2*(n-C(∑[char[∑[n]]], 2))+1)*∑[char[∑[n]]]` -/
def P10087540439353548373.Spec : Prop :=
  ∀ n, P10087540439353548373.a n = A079297 (n + 1)

end A079297

/-! ## A079297.P4766152275898265008

`∑[char[∑[n]]]*A158405(n+1)`
-/

namespace A079297.P4766152275898265008
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A158405 (n + 1)

end

end A079297.P4766152275898265008

namespace A079297

/-- `∑[char[∑[n]]]*A158405(n+1)` -/
def P4766152275898265008.Spec : Prop :=
  ∀ n, P4766152275898265008.a n = A079297 (n + 1)

end A079297

/-! ## A079297.P10712420874417732936

`2*A075362(n+1)-∑[char[∑[n]]]`
-/

namespace A079297.P10712420874417732936
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075362 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A079297.P10712420874417732936

namespace A079297

/-- `2*A075362(n+1)-∑[char[∑[n]]]` -/
def P10712420874417732936.Spec : Prop :=
  ∀ n, P10712420874417732936.a n = A079297 (n + 1)

end A079297

/-! ## A079297.P11173314186290117455

`(2*A002262(n)+1)*∑[char[∑[n]]]`
-/

namespace A079297.P11173314186290117455
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A002262 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A079297.P11173314186290117455

namespace A079297

/-- `(2*A002262(n)+1)*∑[char[∑[n]]]` -/
def P11173314186290117455.Spec : Prop :=
  ∀ n, P11173314186290117455.a n = A079297 (n + 1)

end A079297

/-! ## A079297.P18389843083038880635

`A151890(n)+A002260(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A079297

/-- `A151890(n)+A002260(n+1)` -/
def P18389843083038880635.Spec : Prop :=
  ∀ n, P18389843083038880635.a n = A079297 (n + 1)

theorem P18389843083038880635.correct : P18389843083038880635.Spec := by
  intro n
  simp only [A079297, Nat.add_sub_cancel]

end A079297

/-! ## A079297.P16804812511347376262

`A244418(n+1)+A002262(n)`
-/

namespace A079297.P16804812511347376262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244418 (n + 1) + A002262 n

end

end A079297.P16804812511347376262

namespace A079297

/-- `A244418(n+1)+A002262(n)` -/
def P16804812511347376262.Spec : Prop :=
  ∀ n, P16804812511347376262.a n = A079297 (n + 1)

end A079297

/-! ## A079297.P10670509673057376048

`A127780(n+1)-A025581(n)`
-/

namespace A079297.P10670509673057376048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127780 (n + 1) - A025581 n

end

end A079297.P10670509673057376048

namespace A079297

/-- `A127780(n+1)-A025581(n)` -/
def P10670509673057376048.Spec : Prop :=
  ∀ n, P10670509673057376048.a n = A079297 (n + 1)

end A079297

/-! ## A079297.P1980440826011195500

`(A127948(n)+A003056(n))*A002024(n+1)`
-/

namespace A079297.P1980440826011195500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127948 n + A003056 n) * A002024 (n + 1)

end

end A079297.P1980440826011195500

namespace A079297

/-- `(A127948(n)+A003056(n))*A002024(n+1)` -/
def P1980440826011195500.Spec : Prop :=
  ∀ n, P1980440826011195500.a n = A079297 (n + 1)

end A079297

/-! ## A079297.P11111860499941960438

`A158405(n+1)+A003056(n)*A158405(n+1)`
-/

namespace A079297.P11111860499941960438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) + A003056 n * A158405 (n + 1)

end

end A079297.P11111860499941960438

namespace A079297

/-- `A158405(n+1)+A003056(n)*A158405(n+1)` -/
def P11111860499941960438.Spec : Prop :=
  ∀ n, P11111860499941960438.a n = A079297 (n + 1)

end A079297

/-! ## A079297.P6121704452226125705

`A002024(n+1)*A143218(n+1)/A131507(n)`
-/

namespace A079297.P6121704452226125705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) * A143218 (n + 1) : ℚ) / (A131507 n : ℚ)

end

end A079297.P6121704452226125705

namespace A079297

/-- `A002024(n+1)*A143218(n+1)/A131507(n)` -/
def P6121704452226125705.Spec : Prop :=
  ∀ n, P6121704452226125705.a n = (A079297 (n + 1) : ℚ)

end A079297

/-! ## A079297.P6281748653679653808

`A075362(n+1)+A075362(n+1)-A002024(n+1)`
-/

namespace A079297.P6281748653679653808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + (A075362 (n + 1) - A002024 (n + 1))

end

end A079297.P6281748653679653808

namespace A079297

/-- `A075362(n+1)+A075362(n+1)-A002024(n+1)` -/
def P6281748653679653808.Spec : Prop :=
  ∀ n, P6281748653679653808.a n = A079297 (n + 1)

end A079297

/-! ## A079297.P2635689168594181413

`A215631(n+1)-(A215630(n+1)+A002024(n+1))`
-/

namespace A079297.P2635689168594181413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215631 (n + 1) - (A215630 (n + 1) + A002024 (n + 1))

end

end A079297.P2635689168594181413

namespace A079297

/-- `A215631(n+1)-(A215630(n+1)+A002024(n+1))` -/
def P2635689168594181413.Spec : Prop :=
  ∀ n, P2635689168594181413.a n = A079297 (n + 1)

end A079297

/-! ## A079297.P18350138827498134700

`A327724(A001614(n+1))`
-/

namespace A079297.P18350138827498134700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327724 (A001614 (n + 1)).toNat

end

end A079297.P18350138827498134700

namespace A079297

/-- `A327724(A001614(n+1))` -/
def P18350138827498134700.Spec : Prop :=
  ∀ n, P18350138827498134700.a n = A079297 (n + 1)

end A079297

/-! ## A079297.P17871878832885403626

`∑[char[∑[n]]]*A074294(2*n+1)`
-/

namespace A079297.P17871878832885403626
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A074294 (2 * n + 1)

end

end A079297.P17871878832885403626

namespace A079297

/-- `∑[char[∑[n]]]*A074294(2*n+1)` -/
def P17871878832885403626.Spec : Prop :=
  ∀ n, P17871878832885403626.a n = A079297 (n + 1)

end A079297

/-! ## A079297.P11211615889391850893

`∑[char[∑[n]]]*A171173(2*(n+1))`
-/

namespace A079297.P11211615889391850893
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A171173 (2 * (n + 1))

end

end A079297.P11211615889391850893

namespace A079297

/-- `∑[char[∑[n]]]*A171173(2*(n+1))` -/
def P11211615889391850893.Spec : Prop :=
  ∀ n, P11211615889391850893.a n = A079297 (n + 1)

end A079297

/-! ## A079297.P5873434703155268179

`A101447(A245300(n))`
-/

namespace A079297.P5873434703155268179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 (A245300 n).toNat

end

end A079297.P5873434703155268179

namespace A079297

/-- `A101447(A245300(n))` -/
def P5873434703155268179.Spec : Prop :=
  ∀ n, P5873434703155268179.a n = A079297 (n + 1)

end A079297

/-!
# A079298: Binomial numbers: of the form a^k +- b^k for k >= 2.

The programs for A079298, there is no canonical definition to state claims against.
-/

/-! ## A079298.P11320721293367483623

`comp[A079299(n+1)]`
-/

namespace A079298.P11320721293367483623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A079298.P11320721293367483623

/-! ## A079298.P13016796335808736690

`lt[n, A196387(A000265(2*(n+2)))]`
-/

namespace A079298.P13016796335808736690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196387 (A000265 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079298.P13016796335808736690

/-! ## A079298.P6683000880305309575

`lt[A001316(A070260(n+1)), A229305(n+1)]`
-/

namespace A079298.P6683000880305309575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A070260 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229305 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079298.P6683000880305309575

/-!
# A079299: Not a binomial number: not of form a^k +- b^k for k >= 2.

The programs for A079299, there is no canonical definition to state claims against.
-/

/-! ## A079299.P8406802479426042665

`comp[A079298(n+1)]`
-/

namespace A079299.P8406802479426042665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A079299.P8406802479426042665

/-! ## A079299.P6889272943665714026

`eq[A010686(A033638(n)), A260728(n)]`
-/

namespace A079299.P6889272943665714026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 (A033638 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079299.P6889272943665714026

/-! ## A079299.P10781133760237818402

`eq[A165326(A002620(n)), A260728(n)]`
-/

namespace A079299.P10781133760237818402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A002620 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079299.P10781133760237818402

/-! ## A079299.P174561762821618856

`eq[A010686(A004116(n+1)), A260728(n)]`
-/

namespace A079299.P174561762821618856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 (A004116 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079299.P174561762821618856

/-! ## A079299.P9552579546491346886

`A005843(eq[A020639(n+1), A260728(n²)])`
-/

namespace A079299.P9552579546491346886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A079299.P9552579546491346886

