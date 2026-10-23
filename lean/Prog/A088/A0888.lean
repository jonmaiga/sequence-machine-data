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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A088802: Denominators of the coefficients of powers of n^(-1) in the Romanovsky series expansion of the mean of the standard deviation from a normal population.

The programs for A088802, the canonical program `A088802.P2722892999736587985` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088802 has offset 0).

The definition of A088802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088802.P2722892999736587985

`∏[gcd(4*n, 4^n)]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088802

/-- `∏[gcd(4*n, 4^n)]` -/
def P2722892999736587985.Spec : Prop :=
  ∀ n, (P2722892999736587985.a n : ℤ) = A088802 n

theorem P2722892999736587985.correct : P2722892999736587985.Spec := by
  intro n
  simp only [A088802]

end A088802

/-! ## A088802.P80199752317351865

`8*gcd(64, n)/2*a(n-1)` with `a(0)=1`
-/

namespace A088802.P80199752317351865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  8 * ((Nat.gcd 64 n : ℚ) / 2) * a (n - 1)

end

end A088802.P80199752317351865

namespace A088802

/-- `8*gcd(64, n)/2*a(n-1)` -/
def P80199752317351865.Spec : Prop :=
  ∀ n, P80199752317351865.a n = (A088802 n : ℚ)

end A088802

/-! ## A088802.P14552334000383244561

`2^∑[∑{e}[and(n, -n), #]]*4^n`
-/

namespace A088802.P14552334000383244561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) * 4 ^ n

end

end A088802.P14552334000383244561

namespace A088802

/-- `2^∑[∑{e}[and(n, -n), #]]*4^n` -/
def P14552334000383244561.Spec : Prop :=
  ∀ n, (P14552334000383244561.a n : ℤ) = A088802 n

end A088802

/-! ## A088802.P1561536260528890915

`2*floor(-(xor(n, -n)*a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A088802.P1561536260528890915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (-(Int.xor (n : ℤ) (-(n : ℤ)) * a (n - 1)))

end

end A088802.P1561536260528890915

namespace A088802

/-- `2*floor(-(xor(n, -n)*a(n-1)))` -/
def P1561536260528890915.Spec : Prop :=
  ∀ n, P1561536260528890915.a n = A088802 n

end A088802

/-! ## A088802.P14105556663943515502

`abs(xor(2*n, -(2*n)))*a(n-1)` with `a(0)=1`
-/

namespace A088802.P14105556663943515502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.xor (2 * n : ℤ) (-(2 * n : ℤ))| * a (n - 1)

end

end A088802.P14105556663943515502

namespace A088802

/-- `abs(xor(2*n, -(2*n)))*a(n-1)` -/
def P14105556663943515502.Spec : Prop :=
  ∀ n, P14105556663943515502.a n = A088802 n

end A088802

/-! ## A088802.P14685263398407661701

`-(xor(2*n, -(2*n))*a(n-1))` with `a(0)=1`
-/

namespace A088802.P14685263398407661701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(Int.xor (2 * n : ℤ) (-(2 * n : ℤ)) * a (n - 1))

end

end A088802.P14685263398407661701

namespace A088802

/-- `-(xor(2*n, -(2*n))*a(n-1))` -/
def P14685263398407661701.Spec : Prop :=
  ∀ n, P14685263398407661701.a n = A088802 n

end A088802

/-! ## A088802.P2325963244843608001

`2^A004134(n)`
-/

namespace A088802.P2325963244843608001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004134 n : ℤ)

end

end A088802.P2325963244843608001

namespace A088802

/-- `2^A004134(n)` -/
def P2325963244843608001.Spec : Prop :=
  ∀ n, P2325963244843608001.a n = (A088802 n : ℚ)

end A088802

/-! ## A088802.P12335026311512812467

`2^(A005187(n)+n)`
-/

namespace A088802.P12335026311512812467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005187 n + (n : ℤ) : ℤ)

end

end A088802.P12335026311512812467

namespace A088802

/-- `2^(A005187(n)+n)` -/
def P12335026311512812467.Spec : Prop :=
  ∀ n, P12335026311512812467.a n = (A088802 n : ℚ)

end A088802

/-! ## A088802.P5552479888495689719

`2^(A120738(n)-n)`
-/

namespace A088802.P5552479888495689719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A120738 n - (n : ℤ) : ℤ)

end

end A088802.P5552479888495689719

namespace A088802

/-- `2^(A120738(n)-n)` -/
def P5552479888495689719.Spec : Prop :=
  ∀ n, P5552479888495689719.a n = (A088802 n : ℚ)

end A088802

/-! ## A088802.P10161549279230265592

`2^n*A046161(n)`
-/

namespace A088802.P10161549279230265592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A046161 n

end

end A088802.P10161549279230265592

namespace A088802

/-- `2^n*A046161(n)` -/
def P10161549279230265592.Spec : Prop :=
  ∀ n, P10161549279230265592.a n = A088802 n

end A088802

/-! ## A088802.P16545238828856552684

`2^A007238(Δ[n²])`
-/

namespace A088802.P16545238828856552684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007238 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A088802.P16545238828856552684

namespace A088802

/-- `2^A007238(Δ[n²])` -/
def P16545238828856552684.Spec : Prop :=
  ∀ n, P16545238828856552684.a n = (A088802 n : ℚ)

end A088802

/-! ## A088802.P305814871712266343

`2^(A288933(n+1)-2)`
-/

namespace A088802.P305814871712266343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A288933 (n + 1) - 2 : ℤ)

end

end A088802.P305814871712266343

namespace A088802

/-- `2^(A288933(n+1)-2)` -/
def P305814871712266343.Spec : Prop :=
  ∀ n, P305814871712266343.a n = (A088802 n : ℚ)

end A088802

/-! ## A088802.P15900108934218462986

`2^(A101925(n)-1+n)`
-/

namespace A088802.P15900108934218462986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A101925 n - 1 + (n : ℤ) : ℤ)

end

end A088802.P15900108934218462986

namespace A088802

/-- `2^(A101925(n)-1+n)` -/
def P15900108934218462986.Spec : Prop :=
  ∀ n, P15900108934218462986.a n = (A088802 n : ℚ)

end A088802

/-! ## A088802.P663311498315188528

`2^(n-1)*A101926(n)`
-/

namespace A088802.P663311498315188528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A101926 n : ℚ)

end

end A088802.P663311498315188528

namespace A088802

/-- `2^(n-1)*A101926(n)` -/
def P663311498315188528.Spec : Prop :=
  ∀ n, P663311498315188528.a n = (A088802 n : ℚ)

end A088802

/-! ## A088802.P15595122278462925288

`2^(3*n-A000120(n))`
-/

namespace A088802.P15595122278462925288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((3 * n : ℤ) - A000120 n : ℤ)

end

end A088802.P15595122278462925288

namespace A088802

/-- `2^(3*n-A000120(n))` -/
def P15595122278462925288.Spec : Prop :=
  ∀ n, P15595122278462925288.a n = (A088802 n : ℚ)

end A088802

/-! ## A088802.P2062904227501888117

`a(n-1)*A059159(n)` with `a(0)=1`
-/

namespace A088802.P2062904227501888117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A059159 n

end

end A088802.P2062904227501888117

namespace A088802

/-- `a(n-1)*A059159(n)` -/
def P2062904227501888117.Spec : Prop :=
  ∀ n, P2062904227501888117.a n = A088802 n

end A088802

/-! ## A088802.P9993224139249618533

`2^(A086343(n+1)-(n+2))`
-/

namespace A088802.P9993224139249618533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A086343 (n + 1) - (n + 2 : ℤ) : ℤ)

end

end A088802.P9993224139249618533

namespace A088802

/-- `2^(A086343(n+1)-(n+2))` -/
def P9993224139249618533.Spec : Prop :=
  ∀ n, P9993224139249618533.a n = (A088802 n : ℚ)

end A088802

/-! ## A088802.P11659592617266061789

`a(n-1)*A297402(2*n)` with `a(0)=1`
-/

namespace A088802.P11659592617266061789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A297402 (2 * n)

end

end A088802.P11659592617266061789

namespace A088802

/-- `a(n-1)*A297402(2*n)` -/
def P11659592617266061789.Spec : Prop :=
  ∀ n, P11659592617266061789.a n = A088802 n

end A088802

/-! ## A088802.P2899035331909674116

`4*a(n-1)*A006519(n)` with `a(0)=1`
-/

namespace A088802.P2899035331909674116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (a (n - 1) * A006519 n)

end

end A088802.P2899035331909674116

namespace A088802

/-- `4*a(n-1)*A006519(n)` -/
def P2899035331909674116.Spec : Prop :=
  ∀ n, P2899035331909674116.a n = A088802 n

end A088802

/-! ## A088802.P7229983952767763887

`a(n-1)*A028233(4*n)` with `a(0)=1`
-/

namespace A088802.P7229983952767763887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A028233 (4 * n)

end

end A088802.P7229983952767763887

namespace A088802

/-- `a(n-1)*A028233(4*n)` -/
def P7229983952767763887.Spec : Prop :=
  ∀ n, P7229983952767763887.a n = A088802 n

end A088802

/-!
# A088803: a(n) gives the number of steps taken in a process which manipulates piles of tokens arranged in a line. There are 2n (or 2n+1) tokens in all. Initially they are all in one pile. At each step every pile with more than 1 token is divided into two and half the token are added to the pile on the left and half to the pile on the right. If a pile has an odd number of tokens, the token left over stays where it is. The redistributions in each step are done in parallel.

The programs for A088803, there is no canonical definition to state claims against.
-/

/-! ## A088803.P10684969827693461882

`A302648(2*n+1)+A003984(A007732(n+2))`
-/

namespace A088803.P10684969827693461882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302648 (2 * n + 1) + A003984 (A007732 (n + 2)).toNat

end

end A088803.P10684969827693461882

/-! ## A088803.P9143169574272918840

`or(1, A000196(∑[∑[∑[9*n-2]+3]]))`
-/

namespace A088803.P9143169574272918840
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A088803.P9143169574272918840

/-! ## A088803.P605075459328087272

`A118759(∑[A053196(n+1)])`
-/

namespace A088803.P605075459328087272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088803.P605075459328087272

/-! ## A088803.P18005046628684195328

`A000196(∑[A053196(n+1)]²)`
-/

namespace A088803.P18005046628684195328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A088803.P18005046628684195328

/-! ## A088803.P9576871933221566135

`A272679(∑[A053196(n+1)]²)`
-/

namespace A088803.P9576871933221566135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272679 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A088803.P9576871933221566135

/-!
# A088804: a(n) gives the number of steps taken in a process which manipulates piles of tokens arranged in a line. There are 2n (or 2n+1) tokens in all. Initially they are all in one pile. At each step, from each pile with more than 1 token, one token is taken and added to the pile on its left and one is taken and added to the pile on its right. The redistributions in each step are done in parallel.

The programs for A088804, there is no canonical definition to state claims against.
-/

/-! ## A088804.P14048651728485015115

`∑[A284359(floor((n+1)²/2))]`
-/

namespace A088804.P14048651728485015115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088804.P14048651728485015115

/-! ## A088804.P7918821895560669752

`A284359(A007590(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A088804.P7918821895560669752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284359 (A007590 (n + 1)).toNat + a (n - 1)

end

end A088804.P7918821895560669752

/-! ## A088804.P17870932929943519342

`A284359(A000982(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A088804.P17870932929943519342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284359 (A000982 n + (n : ℤ)).toNat + a (n - 1)

end

end A088804.P17870932929943519342

/-! ## A088804.P3293614904409268822

`∑[A284359(A007590(n+1))%A002975(n+1)]`
-/

namespace A088804.P3293614904409268822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284359 (A007590 (n + 1)).toNat) (A002975 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088804.P3293614904409268822

/-! ## A088804.P73770494501397714

`A276581(A002817(n+1))`
-/

namespace A088804.P73770494501397714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A002817 (n + 1)).toNat

end

end A088804.P73770494501397714

/-!
# A088805: 10^p + p for prime p.

The programs for A088805, there is no canonical definition to state claims against.
-/

/-! ## A088805.P11569578419275355679

`record[10^A006530(n+2)+n+2]`
-/

namespace A088805.P11569578419275355679
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A006530 (n + 2) : ℤ) + (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088805.P11569578419275355679

/-! ## A088805.P1824881508586580046

`record[10^A014963(n+2)+n+2]`
-/

namespace A088805.P1824881508586580046
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A014963 (n + 2) : ℤ) + (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088805.P1824881508586580046

/-! ## A088805.P13496477204701966133

`record[10^A020639(n+2)+n+2]`
-/

namespace A088805.P13496477204701966133
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A020639 (n + 2) : ℤ) + (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088805.P13496477204701966133

/-! ## A088805.P11929943717044647640

`A081551(A271511(n+1))`
-/

namespace A088805.P11929943717044647640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081551 (A271511 (n + 1)).toNat

end

end A088805.P11929943717044647640

/-! ## A088805.P928190300773489705

`A081552(A000040(n+1)+1)`
-/

namespace A088805.P928190300773489705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081552 (A000040 (n + 1) + 1).toNat

end

end A088805.P928190300773489705

/-!
# A088806: Number of non-Abelian nilpotent groups of order n.

The programs for A088806, there is no canonical definition to state claims against.
-/

/-! ## A088806.P9126314574698962327

`A066060(n+1)-A000688(n+1)`
-/

namespace A088806.P9126314574698962327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - A000688 (n + 1)

end

end A088806.P9126314574698962327

/-! ## A088806.P2123753617344687091

`A066060(n+1)-∏{e}[n+1, A000041(#)]`
-/

namespace A088806.P2123753617344687091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n), A000041 (Nat.factorization (f1 n) p)

end

end A088806.P2123753617344687091

/-! ## A088806.P12677896489185359783

`A066060(n+1)-∏{e}[n+1, A242699(#)]`
-/

namespace A088806.P12677896489185359783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n), A242699 (Nat.factorization (f1 n) p + 64)

end

end A088806.P12677896489185359783

/-! ## A088806.P1139318129327510335

`A066060(n+1)-∏{e}[n+1, A332746(#)]`
-/

namespace A088806.P1139318129327510335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n), A332746 (Nat.factorization (f1 n) p)

end

end A088806.P1139318129327510335

/-! ## A088806.P7076176873068898002

`A066060(n+1)-A101872(A026741(n+1))`
-/

namespace A088806.P7076176873068898002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - A101872 (A026741 (n + 1)).toNat

end

end A088806.P7076176873068898002

/-! ## A088806.P2465126496876465990

`A066060(n+1)-A050360(A101296(n+1))`
-/

namespace A088806.P2465126496876465990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - A050360 (A101296 (n + 1)).toNat

end

end A088806.P2465126496876465990

/-! ## A088806.P5604125970629974156

`A066060(n+1)-A238877(Δ[n²])`
-/

namespace A088806.P5604125970629974156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - A238877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A088806.P5604125970629974156

/-! ## A088806.P67945365370326688

`A066060(n+1)-A101872(A003961(n+1))`
-/

namespace A088806.P67945365370326688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - A101872 (A003961 (n + 1)).toNat

end

end A088806.P67945365370326688

/-! ## A088806.P580654384671088433

`A066060(n+1)-A101872(A064988(n+1))`
-/

namespace A088806.P580654384671088433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - A101872 (A064988 (n + 1)).toNat

end

end A088806.P580654384671088433

/-! ## A088806.P9915220622981288416

`A066060(n+1)-A035263(A008288(n))*A295879(n+1)`
-/

namespace A088806.P9915220622981288416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - A035263 (A008288 n).toNat * A295879 (n + 1)

end

end A088806.P9915220622981288416

/-! ## A088806.P10902331514641210542

`A066060(n+1)-A057427(A285112(n))*A295879(n+1)`
-/

namespace A088806.P10902331514641210542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - A057427 (A285112 n).toNat * A295879 (n + 1)

end

end A088806.P10902331514641210542

/-! ## A088806.P457930824041543262

`A066060(n+1)-A057427(A007434(n+1))*A295879(n+1)`
-/

namespace A088806.P457930824041543262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - A057427 (A007434 (n + 1)).toNat * A295879 (n + 1)

end

end A088806.P457930824041543262

/-! ## A088806.P9032595723562529205

`A066060(n+1)-A057427(A248891(n+1))*A295879(n+1)`
-/

namespace A088806.P9032595723562529205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - A057427 (A248891 (n + 1)).toNat * A295879 (n + 1)

end

end A088806.P9032595723562529205

/-!
# A088807: Number of distinct prime factors of p^p - 1 where p = prime(n).

The programs for A088807, there is no canonical definition to state claims against.
-/

/-! ## A088807.P11072981040216124942

`A344870(A000040(n+1))`
-/

namespace A088807.P11072981040216124942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344870 (A000040 (n + 1)).toNat

end

end A088807.P11072981040216124942

/-! ## A088807.P4800702629141198861

`A344870(Δ[A007504(n)])`
-/

namespace A088807.P4800702629141198861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344870 (f1 (n + 1) - f1 n).toNat

end

end A088807.P4800702629141198861

/-! ## A088807.P8382663314211685206

`A344870(A049551(n+1))`
-/

namespace A088807.P8382663314211685206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344870 (A049551 (n + 1)).toNat

end

end A088807.P8382663314211685206

/-! ## A088807.P17656296735471384851

`A344870(A049569(n+1))`
-/

namespace A088807.P17656296735471384851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344870 (A049569 (n + 1)).toNat

end

end A088807.P17656296735471384851

/-! ## A088807.P1914181900078875077

`A344870(A057448(n+1))`
-/

namespace A088807.P1914181900078875077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344870 (A057448 (n + 1)).toNat

end

end A088807.P1914181900078875077

/-!
# A088808: Number of subsets of {1, ..., n} that are not double-free.

The programs for A088808, there is no canonical definition to state claims against.
-/

/-! ## A088808.P636660876088024045

`2^n-A050291(n)`
-/

namespace A088808.P636660876088024045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A050291 n

end

end A088808.P636660876088024045

/-! ## A088808.P8067972463606495509

`abs(A000079(n)-A050291(n))`
-/

namespace A088808.P8067972463606495509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A050291 n|

end

end A088808.P8067972463606495509

/-! ## A088808.P3662912113472564376

`A000225(n)+1-A050291(n)`
-/

namespace A088808.P3662912113472564376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A050291 n)

end

end A088808.P3662912113472564376

/-! ## A088808.P69624352203896807

`A000918(n)+2-A050291(n)`
-/

namespace A088808.P69624352203896807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (2 - A050291 n)

end

end A088808.P69624352203896807

/-! ## A088808.P1388115856546063357

`A000079(n)-(A088810(n)+A007865(n))`
-/

namespace A088808.P1388115856546063357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A088810 n + A007865 n)

end

end A088808.P1388115856546063357

/-! ## A088808.P14508105680624639379

`A088812(n)+A088811(n)`
-/

namespace A088808.P14508105680624639379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088812 n + A088811 n

end

end A088808.P14508105680624639379

/-! ## A088808.P1976137393286301223

`A000079(n)+A088811(n)-A088813(n)`
-/

namespace A088808.P1976137393286301223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A088811 n - A088813 n)

end

end A088808.P1976137393286301223

/-! ## A088808.P7937590810336438515

`A085489(n)+A088812(n)-A007865(n)`
-/

namespace A088808.P7937590810336438515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 n + (A088812 n - A007865 n)

end

end A088808.P7937590810336438515

/-! ## A088808.P14661011994058348355

`A085489(n)+A088809(n)-A050291(n)`
-/

namespace A088808.P14661011994058348355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 n + (A088809 n - A050291 n)

end

end A088808.P14661011994058348355

/-! ## A088808.P12360708337623645302

`A088812(n)+A088813(n)-A050291(n)`
-/

namespace A088808.P12360708337623645302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088812 n + (A088813 n - A050291 n)

end

end A088808.P12360708337623645302

/-!
# A088809: Number of subsets of {1, ..., n} that are not sum-free.

The programs for A088809, there is no canonical definition to state claims against.
-/

/-! ## A088809.P11088875199593806656

`∑[A364756(n)]`
-/

namespace A088809.P11088875199593806656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088809.P11088875199593806656

/-! ## A088809.P14504226617568284167

`2^n-A085489(n)`
-/

namespace A088809.P14504226617568284167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A085489 n

end

end A088809.P14504226617568284167

/-! ## A088809.P2799160919858431062

`A088812(n)+A088810(n)`
-/

namespace A088809.P2799160919858431062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088812 n + A088810 n

end

end A088809.P2799160919858431062

/-! ## A088809.P10078752497428106111

`A000225(n)+1-A085489(n)`
-/

namespace A088809.P10078752497428106111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A085489 n)

end

end A088809.P10078752497428106111

/-! ## A088809.P13313239776895231764

`A052548(n)-(A085489(n)+2)`
-/

namespace A088809.P13313239776895231764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n - (A085489 n + 2)

end

end A088809.P13313239776895231764

/-! ## A088809.P15600040340502267606

`A050291(n)+A088812(n)-A007865(n)`
-/

namespace A088809.P15600040340502267606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050291 n + (A088812 n - A007865 n)

end

end A088809.P15600040340502267606

/-! ## A088809.P8040328773091924106

`A000079(n)+A088810(n)-A088813(n)`
-/

namespace A088809.P8040328773091924106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A088810 n - A088813 n)

end

end A088809.P8040328773091924106

/-! ## A088809.P4923309509787612020

`A050291(n)+A088808(n)-A085489(n)`
-/

namespace A088809.P4923309509787612020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050291 n + (A088808 n - A085489 n)

end

end A088809.P4923309509787612020

/-! ## A088809.P6949324956955913924

`A088812(n)+A088813(n)-A085489(n)`
-/

namespace A088809.P6949324956955913924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088812 n + (A088813 n - A085489 n)

end

end A088809.P6949324956955913924

/-! ## A088809.P17463165526874642716

`A088808(n)+A088810(n)-A088811(n)`
-/

namespace A088809.P17463165526874642716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088808 n + (A088810 n - A088811 n)

end

end A088809.P17463165526874642716

/-!
# A088810: Number of subsets of {1, ..., n} that are double-free but not sum-free.

The programs for A088810, there is no canonical definition to state claims against.
-/

/-! ## A088810.P12498476408316507729

`A050291(n)-A007865(n)`
-/

namespace A088810.P12498476408316507729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050291 n - A007865 n

end

end A088810.P12498476408316507729

/-! ## A088810.P6621728917321339088

`A088809(n)-A088812(n)`
-/

namespace A088810.P6621728917321339088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088809 n - A088812 n

end

end A088810.P6621728917321339088

/-! ## A088810.P4934195079172884675

`2^n-(A088808(n)+A007865(n))`
-/

namespace A088810.P4934195079172884675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A088808 n + A007865 n)

end

end A088810.P4934195079172884675

/-! ## A088810.P8055302992468223366

`A000079(n)-A007865(n)-A088808(n)`
-/

namespace A088810.P8055302992468223366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A007865 n - A088808 n

end

end A088810.P8055302992468223366

/-! ## A088810.P17144625836135914310

`A088813(n)-A085489(n)`
-/

namespace A088810.P17144625836135914310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088813 n - A085489 n

end

end A088810.P17144625836135914310

/-! ## A088810.P13466728422580931076

`A000079(n)-(A088812(n)+A085489(n))`
-/

namespace A088810.P13466728422580931076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A088812 n + A085489 n)

end

end A088810.P13466728422580931076

/-! ## A088810.P765112137104298359

`A088809(n)+A088813(n)-A000079(n)`
-/

namespace A088810.P765112137104298359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088809 n + (A088813 n - A000079 n)

end

end A088810.P765112137104298359

/-! ## A088810.P6585767625501812800

`A088813(n)-(A088811(n)+A007865(n))`
-/

namespace A088810.P6585767625501812800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088813 n - (A088811 n + A007865 n)

end

end A088810.P6585767625501812800

/-! ## A088810.P10197021709098613771

`A050291(n)+A088811(n)-A085489(n)`
-/

namespace A088810.P10197021709098613771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050291 n + (A088811 n - A085489 n)

end

end A088810.P10197021709098613771

/-! ## A088810.P1793728250328615078

`A088809(n)+A088811(n)-A088808(n)`
-/

namespace A088810.P1793728250328615078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088809 n + (A088811 n - A088808 n)

end

end A088810.P1793728250328615078

/-!
# A088811: Number of subsets of {1, ..., n} that are sum-free but not double-free.

The programs for A088811, there is no canonical definition to state claims against.
-/

/-! ## A088811.P12634618333004360293

`A085489(n)-A007865(n)`
-/

namespace A088811.P12634618333004360293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 n - A007865 n

end

end A088811.P12634618333004360293

/-! ## A088811.P7560414497705359345

`A088808(n)-A088812(n)`
-/

namespace A088811.P7560414497705359345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088808 n - A088812 n

end

end A088811.P7560414497705359345

/-! ## A088811.P2061133435473030820

`A088813(n)-A050291(n)`
-/

namespace A088811.P2061133435473030820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088813 n - A050291 n

end

end A088811.P2061133435473030820

/-! ## A088811.P9682348848161347873

`∑[A364755(n)]+1-A007865(n)`
-/

namespace A088811.P9682348848161347873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A007865 n

end

end A088811.P9682348848161347873

/-! ## A088811.P14913647025367008772

`A085489(n)-∑[A288728(abs(1-n)+1)]`
-/

namespace A088811.P14913647025367008772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288728 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088811.P14913647025367008772

/-! ## A088811.P14889190199942298707

`A000079(n)-(A088809(n)+A007865(n))`
-/

namespace A088811.P14889190199942298707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A088809 n + A007865 n)

end

end A088811.P14889190199942298707

/-! ## A088811.P2028412323170408165

`A000079(n)-(A088812(n)+A050291(n))`
-/

namespace A088811.P2028412323170408165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A088812 n + A050291 n)

end

end A088811.P2028412323170408165

/-! ## A088811.P5162517045839641855

`A088808(n)+A088813(n)-A000079(n)`
-/

namespace A088811.P5162517045839641855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088808 n + (A088813 n - A000079 n)

end

end A088811.P5162517045839641855

/-! ## A088811.P2300932368685722148

`A088813(n)-(A088810(n)+A007865(n))`
-/

namespace A088811.P2300932368685722148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088813 n - (A088810 n + A007865 n)

end

end A088811.P2300932368685722148

/-! ## A088811.P13094993513642888281

`A085489(n)+A088810(n)-A050291(n)`
-/

namespace A088811.P13094993513642888281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 n + (A088810 n - A050291 n)

end

end A088811.P13094993513642888281

/-!
# A088812: Number of subsets of {1, ..., n} that are neither double-free nor sum-free.

The programs for A088812, there is no canonical definition to state claims against.
-/

/-! ## A088812.P14174089533012141048

`2^n-A088813(n)`
-/

namespace A088812.P14174089533012141048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A088813 n

end

end A088812.P14174089533012141048

/-! ## A088812.P7402492056261859942

`A088808(n)-A088811(n)`
-/

namespace A088812.P7402492056261859942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088808 n - A088811 n

end

end A088812.P7402492056261859942

/-! ## A088812.P7459491449247684362

`A088809(n)-A088810(n)`
-/

namespace A088812.P7459491449247684362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088809 n - A088810 n

end

end A088812.P7459491449247684362

/-! ## A088812.P4988278201803219112

`abs(A000079(n)-A088813(n))`
-/

namespace A088812.P4988278201803219112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A088813 n|

end

end A088812.P4988278201803219112

/-! ## A088812.P12587116031638217763

`A000079(n)-(A088811(n)+A050291(n))`
-/

namespace A088812.P12587116031638217763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A088811 n + A050291 n)

end

end A088812.P12587116031638217763

/-! ## A088812.P2658741466156044588

`A007865(n)+A088809(n)-A050291(n)`
-/

namespace A088812.P2658741466156044588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 n + (A088809 n - A050291 n)

end

end A088812.P2658741466156044588

/-! ## A088812.P5708533978760525230

`A000079(n)-(A088810(n)+A085489(n))`
-/

namespace A088812.P5708533978760525230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A088810 n + A085489 n)

end

end A088812.P5708533978760525230

/-! ## A088812.P8860176184627690961

`A007865(n)+A088808(n)-A085489(n)`
-/

namespace A088812.P8860176184627690961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 n + (A088808 n - A085489 n)

end

end A088812.P8860176184627690961

/-! ## A088812.P11095743986200282682

`A085489(n)+A088809(n)-A088813(n)`
-/

namespace A088812.P11095743986200282682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 n + (A088809 n - A088813 n)

end

end A088812.P11095743986200282682

/-!
# A088813: Number of subsets of {1, ..., n} that are double-free or sum-free.

The programs for A088813, there is no canonical definition to state claims against.
-/

/-! ## A088813.P4174194748639623308

`2^n-A088812(n)`
-/

namespace A088813.P4174194748639623308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A088812 n

end

end A088813.P4174194748639623308

/-! ## A088813.P10165085462482775044

`A050291(n)+A085489(n)-A007865(n)`
-/

namespace A088813.P10165085462482775044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050291 n + A085489 n - A007865 n

end

end A088813.P10165085462482775044

/-! ## A088813.P10276675932655098949

`A088811(n)+A050291(n)`
-/

namespace A088813.P10276675932655098949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088811 n + A050291 n

end

end A088813.P10276675932655098949

/-! ## A088813.P17738024515960675164

`A088810(n)+A085489(n)`
-/

namespace A088813.P17738024515960675164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088810 n + A085489 n

end

end A088813.P17738024515960675164

/-! ## A088813.P10696163388279263430

`A052548(n)-(A088812(n)+2)`
-/

namespace A088813.P10696163388279263430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n - (A088812 n + 2)

end

end A088813.P10696163388279263430

/-! ## A088813.P2682999894887411646

`A007865(n)+A088811(n)+A088810(n)`
-/

namespace A088813.P2682999894887411646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 n + (A088811 n + A088810 n)

end

end A088813.P2682999894887411646

/-! ## A088813.P10274957573517322969

`A000079(n)+A088810(n)-A088809(n)`
-/

namespace A088813.P10274957573517322969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A088810 n - A088809 n)

end

end A088813.P10274957573517322969

/-! ## A088813.P9710439466751815247

`A000079(n)+A088811(n)-A088808(n)`
-/

namespace A088813.P9710439466751815247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A088811 n - A088808 n)

end

end A088813.P9710439466751815247

/-! ## A088813.P10105780222799743320

`A050291(n)+A088808(n)-A088812(n)`
-/

namespace A088813.P10105780222799743320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050291 n + (A088808 n - A088812 n)

end

end A088813.P10105780222799743320

/-! ## A088813.P1056998904381349999

`A085489(n)+A088809(n)-A088812(n)`
-/

namespace A088813.P1056998904381349999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 n + (A088809 n - A088812 n)

end

end A088813.P1056998904381349999

/-!
# A088814: Matrix product of unsigned Lah-triangle |A008297(n,k)| and Stirling2-triangle A008277(n,k).

The programs for A088814, there is no canonical definition to state claims against.
-/

/-! ## A088814.P3379737503665837099

`A256892(comp[∑[n]])`
-/

namespace A088814.P3379737503665837099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256892 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A088814.P3379737503665837099

/-! ## A088814.P7553660769289460420

`and(-1, A256892(A014132(n+1)))`
-/

namespace A088814.P7553660769289460420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A256892 (A014132 (n + 1)).toNat)

end

end A088814.P7553660769289460420

/-! ## A088814.P2578292445207582022

`or(char[1], A256892(A003057(n+2)+n))`
-/

namespace A088814.P2578292445207582022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A256892 (A003057 (n + 2) + (n : ℤ)).toNat)

end

end A088814.P2578292445207582022

/-! ## A088814.P17852279300225226957

`or(A000007(n), A256892(A014132(n+1)))`
-/

namespace A088814.P17852279300225226957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A256892 (A014132 (n + 1)).toNat)

end

end A088814.P17852279300225226957

/-! ## A088814.P1163584403633197038

`A256892(A014132(n+1))%A000225(n+4)`
-/

namespace A088814.P1163584403633197038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256892 (A014132 (n + 1)).toNat) (A000225 (n + 4))

end

end A088814.P1163584403633197038

/-!
# A088815: Expansion of e.g.f. (1-x)^(-1/(1+log(1-x))).

The programs for A088815, there is no canonical definition to state claims against.
-/

/-! ## A088815.P190464462721445154

`floor(A085722(A111529(n))/2)`
-/

namespace A088815.P190464462721445154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085722 (A111529 n).toNat : ℚ) / 2⌋

end

end A088815.P190464462721445154

/-! ## A088815.P15616479379079005393

`A052883(n)+A001096(n)!`
-/

namespace A088815.P15616479379079005393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052883 n + (Nat.factorial (A001096 n).toNat : ℤ)

end

end A088815.P15616479379079005393

/-!
# A088816: Numbers of the form p^p - 2 where p is prime.

The programs for A088816, there is no canonical definition to state claims against.
-/

/-! ## A088816.P331677745622719884

`A088731(n+1)+1`
-/

namespace A088816.P331677745622719884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088731 (n + 1) + 1

end

end A088816.P331677745622719884

/-! ## A088816.P12206492029511049143

`record[∑{p}[n+2, #^#-2]]`
-/

namespace A088816.P12206492029511049143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((p ^ p : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088816.P12206492029511049143

/-! ## A088816.P5937717585693950619

`p?[comp[n²]]^p?[comp[n²]]-2`
-/

namespace A088816.P5937717585693950619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 2

end

end A088816.P5937717585693950619

/-! ## A088816.P15982314013284176906

`A051674(n+1)-2`
-/

namespace A088816.P15982314013284176906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051674 (n + 1) - 2

end

end A088816.P15982314013284176906

/-! ## A088816.P970288116415538010

`∑{d}[A000040(n+1), #^#]-3`
-/

namespace A088816.P970288116415538010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ d : ℕ) : ℤ) - 3

end

end A088816.P970288116415538010

/-!
# A088817: Numbers k such that Cyclotomic(2k,k) is prime.

The programs for A088817, there is no canonical definition to state claims against.
-/

/-! ## A088817.P14182121804924810658

`∑[A192176(A146998(n+1))]`
-/

namespace A088817.P14182121804924810658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192176 (A146998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088817.P14182121804924810658

/-!
# A088818: Numbers k whose abundance-radius does not exceed log(log(k)), i.e., abs(sigma(k)-2*k) <= log(log(k)).

The programs for A088818, there is no canonical definition to state claims against.
-/

/-! ## A088818.P10607546123780262806

`A317306(n+5)-A000122(A007051(n))`
-/

namespace A088818.P10607546123780262806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317306 (n + 5) - A000122 (A007051 n).toNat

end

end A088818.P10607546123780262806

/-! ## A088818.P13118994973458750393

`A317306(n+5)-A151669(A006785(n+1))`
-/

namespace A088818.P13118994973458750393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317306 (n + 5) - A151669 (A006785 (n + 1)).toNat

end

end A088818.P13118994973458750393

/-!
# A088819: Expansion of e.g.f. (1+x)^(1/(1-log(1+x))).

The programs for A088819, there is no canonical definition to state claims against.
-/

/-! ## A088819.P9887881701432563479

`A087866(A124533(n)+A001006(n))`
-/

namespace A088819.P9887881701432563479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087866 (A124533 n + A001006 n).toNat

end

end A088819.P9887881701432563479

/-! ## A088819.P16688430983222699969

`A177523(n)-A059995(A241000(n))`
-/

namespace A088819.P16688430983222699969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177523 n - A059995 (A241000 n).toNat

end

end A088819.P16688430983222699969

/-! ## A088819.P16033926986367020714

`A376694(n)-A115869(A085748(n))`
-/

namespace A088819.P16033926986367020714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376694 n - A115869 (A085748 n).toNat

end

end A088819.P16033926986367020714

/-!
# A088821: a(n) is the sum of smallest prime factors of numbers from 1 to n.

The programs for A088821, there is no canonical definition to state claims against.
-/

/-! ## A088821.P5489522376555226962

`A046669(n+1)-1`
-/

namespace A088821.P5489522376555226962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046669 (n + 1) - 1

end

end A088821.P5489522376555226962

/-! ## A088821.P15617028728370454160

`∑[A020639(n+1)]-1`
-/

namespace A088821.P15617028728370454160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088821.P15617028728370454160

/-! ## A088821.P18175539635654992576

`∑[∑{p}[A028233(n+1), #]]`
-/

namespace A088821.P18175539635654992576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088821.P18175539635654992576

/-! ## A088821.P2336098074989957227

`∑[∑{p}[A068794(n+1), #]]`
-/

namespace A088821.P2336098074989957227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088821.P2336098074989957227

/-! ## A088821.P8159260942454033740

`∑[sqrt(A088377(n+1))]-1`
-/

namespace A088821.P8159260942454033740
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088377 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088821.P8159260942454033740

/-! ## A088821.P546034784537900931

`∑[A057237(n+1)+1]-2`
-/

namespace A088821.P546034784537900931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A088821.P546034784537900931

/-! ## A088821.P14138542770236454754

`∑[A159475(n+1)-(n+1)]`
-/

namespace A088821.P14138542770236454754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159475 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088821.P14138542770236454754

/-! ## A088821.P18037304261378863599

`∑[A020639(∏{p}[n+1, #])%Δ[n²]]`
-/

namespace A088821.P18037304261378863599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (∏ p ∈ Nat.primeFactors (f2 n), p)) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088821.P18037304261378863599

/-! ## A088821.P14263235072245250795

`A020639(2*n+1-n)+a(n-1)` with `a(0)=0`
-/

namespace A088821.P14263235072245250795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A020639 (2 * n + 1 - n) + a (n - 1)

end

end A088821.P14263235072245250795

/-! ## A088821.P18352749792636792258

`∑[A001414(A020639(n+1))]`
-/

namespace A088821.P18352749792636792258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088821.P18352749792636792258

/-! ## A088821.P4379297107219369157

`∑[A199969(A020639(n+1)+1)]`
-/

namespace A088821.P4379297107219369157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A020639 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088821.P4379297107219369157

/-! ## A088821.P3945839753920840161

`∑[A006530(A074828(n+1))]-1`
-/

namespace A088821.P3945839753920840161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088821.P3945839753920840161

/-! ## A088821.P3753894258501635144

`∑[A079068(A117367(n+1))]-1`
-/

namespace A088821.P3753894258501635144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A117367 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088821.P3753894258501635144

/-! ## A088821.P16793010210251555895

`∑[A006530(A304181(n+1))]-1`
-/

namespace A088821.P16793010210251555895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A304181 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088821.P16793010210251555895

/-! ## A088821.P10504619471533207858

`∑[A151800(A057237(n+1))]-2`
-/

namespace A088821.P10504619471533207858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A057237 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A088821.P10504619471533207858

/-! ## A088821.P11383013904665736827

`∑[∑{p}[A020639(n+1), A006530(#)]]`
-/

namespace A088821.P11383013904665736827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A006530 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088821.P11383013904665736827

/-! ## A088821.P7332243051610094820

`∑[∑{p}[A020639(n+1), A020639(#)]]`
-/

namespace A088821.P7332243051610094820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A020639 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088821.P7332243051610094820

/-! ## A088821.P6507397130807345052

`∑[A020639(n+1)%∑[A255054(n)]]`
-/

namespace A088821.P6507397130807345052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 1)) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088821.P6507397130807345052

/-!
# A088822: a(n) is the sum of largest prime factors of numbers from 1 to n.

The programs for A088822, the canonical program `A088822.P4468809582599686425` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088822 has offset 1).

The definition of A088822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088822.P15922878563740402128

`A046670(n+1)-1`
-/

namespace A088822.P15922878563740402128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046670 (n + 1) - 1

end

end A088822.P15922878563740402128

namespace A088822

/-- `A046670(n+1)-1` -/
def P15922878563740402128.Spec : Prop :=
  ∀ n, P15922878563740402128.a n = A088822 (n + 1)

end A088822

/-! ## A088822.P696397552943200223

`∑[A006530(n+1)]-1`
-/

namespace A088822.P696397552943200223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088822.P696397552943200223

namespace A088822

/-- `∑[A006530(n+1)]-1` -/
def P696397552943200223.Spec : Prop :=
  ∀ n, P696397552943200223.a n = A088822 (n + 1)

end A088822

/-! ## A088822.P12556074145245601538

`∑[A111089(n+1)]-2`
-/

namespace A088822.P12556074145245601538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A088822.P12556074145245601538

namespace A088822

/-- `∑[A111089(n+1)]-2` -/
def P12556074145245601538.Spec : Prop :=
  ∀ n, P12556074145245601538.a n = A088822 (n + 1)

end A088822

/-! ## A088822.P360494113163991374

`∑[∑{p}[A053585(n+1), #]]`
-/

namespace A088822.P360494113163991374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088822.P360494113163991374

namespace A088822

/-- `∑[∑{p}[A053585(n+1), #]]` -/
def P360494113163991374.Spec : Prop :=
  ∀ n, (P360494113163991374.a n : ℤ) = A088822 (n + 1)

end A088822

/-! ## A088822.P10883018502295911107

`∑[A070777(n+1)+1]-2`
-/

namespace A088822.P10883018502295911107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070777 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A088822.P10883018502295911107

namespace A088822

/-- `∑[A070777(n+1)+1]-2` -/
def P10883018502295911107.Spec : Prop :=
  ∀ n, P10883018502295911107.a n = A088822 (n + 1)

end A088822

/-! ## A088822.P4468809582599686425

`∑[A070229(n+1)-(n+1)]-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A088822

/-- `∑[A070229(n+1)-(n+1)]-1` -/
def P4468809582599686425.Spec : Prop :=
  ∀ n, P4468809582599686425.a n = A088822 (n + 1)

theorem P4468809582599686425.correct : P4468809582599686425.Spec := by
  intro n
  simp only [A088822, Nat.add_sub_cancel]

end A088822

/-! ## A088822.P10914438348524353251

`∑[gcd(n+1, A245486(n+1))]-1`
-/

namespace A088822.P10914438348524353251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A245486 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A088822.P10914438348524353251

namespace A088822

/-- `∑[gcd(n+1, A245486(n+1))]-1` -/
def P10914438348524353251.Spec : Prop :=
  ∀ n, P10914438348524353251.a n = A088822 (n + 1)

end A088822

/-! ## A088822.P17447105283940198363

`∑[A006530(2*(n+1))%(n+2)]`
-/

namespace A088822.P17447105283940198363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (2 * (n + 1))) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088822.P17447105283940198363

namespace A088822

/-- `∑[A006530(2*(n+1))%(n+2)]` -/
def P17447105283940198363.Spec : Prop :=
  ∀ n, P17447105283940198363.a n = A088822 (n + 1)

end A088822

/-! ## A088822.P7597630323561555019

`A006530(2*n+2)+a(n-1)` with `a(0)=0`
-/

namespace A088822.P7597630323561555019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A006530 (2 * n + 2) + a (n - 1)

end

end A088822.P7597630323561555019

namespace A088822

/-- `A006530(2*n+2)+a(n-1)` -/
def P7597630323561555019.Spec : Prop :=
  ∀ n, P7597630323561555019.a n = A088822 (n + 1)

end A088822

/-! ## A088822.P9920846286849810599

`n-∑[1-A006530(2*n-(n-1))]`
-/

namespace A088822.P9920846286849810599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006530 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088822.P9920846286849810599

namespace A088822

/-- `n-∑[1-A006530(2*n-(n-1))]` -/
def P9920846286849810599.Spec : Prop :=
  ∀ n, P9920846286849810599.a n = A088822 (n + 1)

end A088822

/-! ## A088822.P4230956996679120178

`floor(A006530(n+2+n)+a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A088822.P4230956996679120178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A006530 (n + 2 + n) + a (n - 1)

end

end A088822.P4230956996679120178

namespace A088822

/-- `floor(A006530(n+2+n)+a(n-1))` -/
def P4230956996679120178.Spec : Prop :=
  ∀ n, P4230956996679120178.a n = A088822 (n + 1)

end A088822

/-! ## A088822.P3426596190723444673

`∑[A001414(A006530(n+1))]`
-/

namespace A088822.P3426596190723444673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088822.P3426596190723444673

namespace A088822

/-- `∑[A001414(A006530(n+1))]` -/
def P3426596190723444673.Spec : Prop :=
  ∀ n, P3426596190723444673.a n = A088822 (n + 1)

end A088822

/-! ## A088822.P6424199907302512117

`∑[A199969(A006530(n+1)+1)]`
-/

namespace A088822.P6424199907302512117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A006530 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088822.P6424199907302512117

namespace A088822

/-- `∑[A199969(A006530(n+1)+1)]` -/
def P6424199907302512117.Spec : Prop :=
  ∀ n, P6424199907302512117.a n = A088822 (n + 1)

end A088822

/-! ## A088822.P575570054466589462

`∑[A002034(A007947(n+1))]-1`
-/

namespace A088822.P575570054466589462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088822.P575570054466589462

namespace A088822

/-- `∑[A002034(A007947(n+1))]-1` -/
def P575570054466589462.Spec : Prop :=
  ∀ n, P575570054466589462.a n = A088822 (n + 1)

end A088822

/-! ## A088822.P14048877735216637438

`∑[A002034(A088835(n+1))]-1`
-/

namespace A088822.P14048877735216637438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A088835 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088822.P14048877735216637438

namespace A088822

/-- `∑[A002034(A088835(n+1))]-1` -/
def P14048877735216637438.Spec : Prop :=
  ∀ n, P14048877735216637438.a n = A088822 (n + 1)

end A088822

/-! ## A088822.P9637658971024834638

`∑[A014963(A323129(n+1))]-1`
-/

namespace A088822.P9637658971024834638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A323129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088822.P9637658971024834638

namespace A088822

/-- `∑[A014963(A323129(n+1))]-1` -/
def P9637658971024834638.Spec : Prop :=
  ∀ n, P9637658971024834638.a n = A088822 (n + 1)

end A088822

/-! ## A088822.P4678043395926594169

`∑[A020639(A345941(n+1))]-1`
-/

namespace A088822.P4678043395926594169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A345941 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088822.P4678043395926594169

namespace A088822

/-- `∑[A020639(A345941(n+1))]-1` -/
def P4678043395926594169.Spec : Prop :=
  ∀ n, P4678043395926594169.a n = A088822 (n + 1)

end A088822

/-! ## A088822.P15171578619964794097

`∑[∑{p}[A006530(n+1), A006530(#)]]`
-/

namespace A088822.P15171578619964794097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A006530 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088822.P15171578619964794097

namespace A088822

/-- `∑[∑{p}[A006530(n+1), A006530(#)]]` -/
def P15171578619964794097.Spec : Prop :=
  ∀ n, P15171578619964794097.a n = A088822 (n + 1)

end A088822

/-! ## A088822.P13706423389046754888

`∑[A062157(n)²*A006530(n+1)]`
-/

namespace A088822.P13706423389046754888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n ^ 2 * A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088822.P13706423389046754888

namespace A088822

/-- `∑[A062157(n)²*A006530(n+1)]` -/
def P13706423389046754888.Spec : Prop :=
  ∀ n, P13706423389046754888.a n = A088822 (n + 1)

end A088822

/-! ## A088822.P11853122168745557672

`∑[A000040(A061395(2*(n+1)))]-2`
-/

namespace A088822.P11853122168745557672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A088822.P11853122168745557672

namespace A088822

/-- `∑[A000040(A061395(2*(n+1)))]-2` -/
def P11853122168745557672.Spec : Prop :=
  ∀ n, P11853122168745557672.a n = A088822 (n + 1)

end A088822

/-!
# A088823: a(n) is the GCD of the sum of largest prime factors of numbers from 1 to n and of the sum of smallest prime factors of numbers from 1 to n.

The programs for A088823, there is no canonical definition to state claims against.
-/

/-! ## A088823.P6134454624131261826

`gcd(A088821(n+1), A088822(n+1))`
-/

namespace A088823.P6134454624131261826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088821 (n + 1)) (A088822 (n + 1))

end

end A088823.P6134454624131261826

/-! ## A088823.P436088847588393786

`gcd(1-A046670(n+1), ∑[A046665(n+1)])`
-/

namespace A088823.P436088847588393786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A046670 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088823.P436088847588393786

/-! ## A088823.P14852225320663295666

`gcd(∑[A006530(n+1)]-1, A046669(n+1)-1)`
-/

namespace A088823.P14852225320663295666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j - 1) (A046669 (n + 1) - 1)

end

end A088823.P14852225320663295666

/-! ## A088823.P2594256167757499393

`gcd(∑[A020639(n+1)]-1, A046670(n+1)-1)`
-/

namespace A088823.P2594256167757499393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j - 1) (A046670 (n + 1) - 1)

end

end A088823.P2594256167757499393

/-! ## A088823.P1673890705255008905

`gcd(n-∑[1-A006530(2*n-(n-1))], ∑[A057237(n+1)+1]-2)`
-/

namespace A088823.P1673890705255008905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006530 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j - 2)

end

end A088823.P1673890705255008905

/-! ## A088823.P13597607081044278990

`gcd(1-A046669(n+1), A199969(A046670(n+1)))`
-/

namespace A088823.P13597607081044278990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A046669 (n + 1)) (A199969 (A046670 (n + 1)).toNat)

end

end A088823.P13597607081044278990

/-!
# A088824: Numbers n such that the sum of smallest prime factors of numbers from 1 to n is divisible by n.

The programs for A088824, there is no canonical definition to state claims against.
-/

/-! ## A088824.P1694840679040374408

`record[gcd(n+1, A088821(n+1))]`
-/

namespace A088824.P1694840679040374408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A088821 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088824.P1694840679040374408

/-! ## A088824.P8342708413070520823

`record[A341981(A340447(n))]`
-/

namespace A088824.P8342708413070520823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341981 ((A340447 n).toNat + 101)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088824.P8342708413070520823

/-!
# A088827: Even numbers with odd abundance: even squares or two times squares.

The programs for A088827, the canonical program `A088827.P16132540698734930391` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088827 has offset 1).

The definition of A088827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088827.P8937005216284699749

`2*∪[2*(n+1)², (n+1)²]`
-/

namespace A088827.P8937005216284699749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A088827.P8937005216284699749

namespace A088827

/-- `2*∪[2*(n+1)², (n+1)²]` -/
def P8937005216284699749.Spec : Prop :=
  ∀ n, (P8937005216284699749.a n : ℤ) = A088827 (n + 1)

end A088827

/-! ## A088827.P16132540698734930391

`2*A028982(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088827

/-- `2*A028982(n+1)` -/
def P16132540698734930391.Spec : Prop :=
  ∀ n, P16132540698734930391.a n = A088827 (n + 1)

theorem P16132540698734930391.correct : P16132540698734930391.Spec := by
  intro n
  simp only [A088827, Nat.add_sub_cancel]

end A088827

/-! ## A088827.P8107015746178113020

`∪[(2*(n+1))², A001105(n+1)]`
-/

namespace A088827.P8107015746178113020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088827.P8107015746178113020

namespace A088827

/-- `∪[(2*(n+1))², A001105(n+1)]` -/
def P8107015746178113020.Spec : Prop :=
  ∀ n, (P8107015746178113020.a n : ℤ) = A088827 (n + 1)

end A088827

/-! ## A088827.P5326911581077818379

`A028982(n+1)+A028982(Δ[n²]-n)`
-/

namespace A088827.P5326911581077818379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1) + A028982 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A088827.P5326911581077818379

namespace A088827

/-- `A028982(n+1)+A028982(Δ[n²]-n)` -/
def P5326911581077818379.Spec : Prop :=
  ∀ n, P5326911581077818379.a n = A088827 (n + 1)

end A088827

/-! ## A088827.P6484875073546837684

`A028982(n+1)+A028982(n+1)%A016970(n)`
-/

namespace A088827.P6484875073546837684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1) + Int.tmod (A028982 (n + 1)) (A016970 n)

end

end A088827.P6484875073546837684

namespace A088827

/-- `A028982(n+1)+A028982(n+1)%A016970(n)` -/
def P6484875073546837684.Spec : Prop :=
  ∀ n, P6484875073546837684.a n = A088827 (n + 1)

end A088827

/-! ## A088827.P14945878567437906187

`A028982(A001953(n+1))`
-/

namespace A088827.P14945878567437906187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A001953 (n + 1)).toNat

end

end A088827.P14945878567437906187

namespace A088827

/-- `A028982(A001953(n+1))` -/
def P14945878567437906187.Spec : Prop :=
  ∀ n, P14945878567437906187.a n = A088827 (n + 1)

end A088827

/-! ## A088827.P9325072229139788489

`A028982(∑[A080763(A001951(n+1))])`
-/

namespace A088827.P9325072229139788489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080763 (A001951 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088827.P9325072229139788489

namespace A088827

/-- `A028982(∑[A080763(A001951(n+1))])` -/
def P9325072229139788489.Spec : Prop :=
  ∀ n, P9325072229139788489.a n = A088827 (n + 1)

end A088827

/-! ## A088827.P12694681039188075374

`A028982(n+1)+A028982(n+1)+A010059(A000069(n+1))`
-/

namespace A088827.P12694681039188075374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1) + (A028982 (n + 1) + A010059 (A000069 (n + 1)).toNat)

end

end A088827.P12694681039188075374

namespace A088827

/-- `A028982(n+1)+A028982(n+1)+A010059(A000069(n+1))` -/
def P12694681039188075374.Spec : Prop :=
  ∀ n, P12694681039188075374.a n = A088827 (n + 1)

end A088827

/-! ## A088827.P582450824257917774

`2*∩[A372894(n+1), A083854(n)]`
-/

namespace A088827.P582450824257917774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088827.P582450824257917774

namespace A088827

/-- `2*∩[A372894(n+1), A083854(n)]` -/
def P582450824257917774.Spec : Prop :=
  ∀ n, (P582450824257917774.a n : ℤ) = A088827 (n + 1)

end A088827

/-! ## A088827.P11299571767333314896

`A360124(n+1)/4`
-/

namespace A088827.P11299571767333314896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360124 (n + 1) : ℚ) / 4

end

end A088827.P11299571767333314896

namespace A088827

/-- `A360124(n+1)/4` -/
def P11299571767333314896.Spec : Prop :=
  ∀ n, P11299571767333314896.a n = (A088827 (n + 1) : ℚ)

end A088827

/-! ## A088827.P6831334990860156755

`record[(A000203(n+1)%2+1)*(n+1)]`
-/

namespace A088827.P6831334990860156755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000203 (n + 1)) 2 + 1) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088827.P6831334990860156755

namespace A088827

/-- `record[(A000203(n+1)%2+1)*(n+1)]` -/
def P6831334990860156755.Spec : Prop :=
  ∀ n, P6831334990860156755.a n = A088827 (n + 1)

end A088827

/-! ## A088827.P7063365401699475991

`A028982(n+1)+∑{d}[A028982(n+1), A000010(#)]`
-/

namespace A088827.P7063365401699475991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1) + ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A088827.P7063365401699475991

namespace A088827

/-- `A028982(n+1)+∑{d}[A028982(n+1), A000010(#)]` -/
def P7063365401699475991.Spec : Prop :=
  ∀ n, P7063365401699475991.a n = A088827 (n + 1)

end A088827

/-! ## A088827.P7847843281157550082

`∩[A028982(n+1), A216781(n+1)]`
-/

namespace A088827.P7847843281157550082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088827.P7847843281157550082

namespace A088827

/-- `∩[A028982(n+1), A216781(n+1)]` -/
def P7847843281157550082.Spec : Prop :=
  ∀ n, (P7847843281157550082.a n : ℤ) = A088827 (n + 1)

end A088827

/-! ## A088827.P14514951158656847066

`2*(lt[val(A000203(n+1), 2), 1]+1)`
-/

namespace A088827.P14514951158656847066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A088827.P14514951158656847066

namespace A088827

/-- `2*(lt[val(A000203(n+1), 2), 1]+1)` -/
def P14514951158656847066.Spec : Prop :=
  ∀ n, (P14514951158656847066.a n : ℤ) = A088827 (n + 1)

end A088827

/-! ## A088827.P11310236895682432581

`2*(lt[gcd(2, A000203(2*(n+1))), 2]+1)`
-/

namespace A088827.P11310236895682432581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000203 (2 * (n + 1)))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A088827.P11310236895682432581

namespace A088827

/-- `2*(lt[gcd(2, A000203(2*(n+1))), 2]+1)` -/
def P11310236895682432581.Spec : Prop :=
  ∀ n, (P11310236895682432581.a n : ℤ) = A088827 (n + 1)

end A088827

/-! ## A088827.P3904675589099971359

`A028982(n+1)+lt[val(A000203(n+1), 2), 1]+1`
-/

namespace A088827.P3904675589099971359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1 : ℤ)

end

end A088827.P3904675589099971359

namespace A088827

/-- `A028982(n+1)+lt[val(A000203(n+1), 2), 1]+1` -/
def P3904675589099971359.Spec : Prop :=
  ∀ n, P3904675589099971359.a n = A088827 (n + 1)

end A088827

/-! ## A088827.P18320640766889324828

`2*∩[A035258(n+1), A083854(n)]`
-/

namespace A088827.P18320640766889324828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088827.P18320640766889324828

namespace A088827

/-- `2*∩[A035258(n+1), A083854(n)]` -/
def P18320640766889324828.Spec : Prop :=
  ∀ n, (P18320640766889324828.a n : ℤ) = A088827 (n + 1)

end A088827

/-! ## A088827.P5454287406698709942

`2*∩[A035251(n+1), A083854(n)]`
-/

namespace A088827.P5454287406698709942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088827.P5454287406698709942

namespace A088827

/-- `2*∩[A035251(n+1), A083854(n)]` -/
def P5454287406698709942.Spec : Prop :=
  ∀ n, (P5454287406698709942.a n : ℤ) = A088827 (n + 1)

end A088827

/-! ## A088827.P4396801334363346453

`2*∩[A035269(n+1), A083854(n)]`
-/

namespace A088827.P4396801334363346453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088827.P4396801334363346453

namespace A088827

/-- `2*∩[A035269(n+1), A083854(n)]` -/
def P4396801334363346453.Spec : Prop :=
  ∀ n, (P4396801334363346453.a n : ℤ) = A088827 (n + 1)

end A088827

/-! ## A088827.P16807373268707690699

`2*∩[A035248(n+1), A083854(n)]`
-/

namespace A088827.P16807373268707690699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088827.P16807373268707690699

namespace A088827

/-- `2*∩[A035248(n+1), A083854(n)]` -/
def P16807373268707690699.Spec : Prop :=
  ∀ n, (P16807373268707690699.a n : ℤ) = A088827 (n + 1)

end A088827

/-!
# A088828: Nonsquare positive odd numbers.

The programs for A088828, the canonical program `A088828.P3999209263796439479` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088828 has offset 1).

The definition of A088828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088828.P3999209263796439479

`or(1, comp[∑[n]]+n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088828

/-- `or(1, comp[∑[n]]+n)` -/
def P3999209263796439479.Spec : Prop :=
  ∀ n, (P3999209263796439479.a n : ℤ) = A088828 (n + 1)

theorem P3999209263796439479.correct : P3999209263796439479.Spec := by
  intro n
  simp only [A088828, Nat.add_sub_cancel]

end A088828

/-! ## A088828.P11943195593872835235

`comp[∪[2*n, n²]]`
-/

namespace A088828.P11943195593872835235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A088828.P11943195593872835235

namespace A088828

/-- `comp[∪[2*n, n²]]` -/
def P11943195593872835235.Spec : Prop :=
  ∀ n, (P11943195593872835235.a n : ℤ) = A088828 (n + 1)

end A088828

/-! ## A088828.P2834228325324391929

`comp[n^(n%2+1)]`
-/

namespace A088828.P2834228325324391929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2 + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A088828.P2834228325324391929

namespace A088828

/-- `comp[n^(n%2+1)]` -/
def P2834228325324391929.Spec : Prop :=
  ∀ n, (P2834228325324391929.a n : ℤ) = A088828 (n + 1)

end A088828

/-! ## A088828.P132738341045905601

`comp[n^gcd(2, n+1)]`
-/

namespace A088828.P132738341045905601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 2 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A088828.P132738341045905601

namespace A088828

/-- `comp[n^gcd(2, n+1)]` -/
def P132738341045905601.Spec : Prop :=
  ∀ n, (P132738341045905601.a n : ℤ) = A088828 (n + 1)

end A088828

/-! ## A088828.P14518144962296375559

`comp[n^(and(1, n)+1)]`
-/

namespace A088828.P14518144962296375559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (Nat.land 1 n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A088828.P14518144962296375559

namespace A088828

/-- `comp[n^(and(1, n)+1)]` -/
def P14518144962296375559.Spec : Prop :=
  ∀ n, (P14518144962296375559.a n : ℤ) = A088828 (n + 1)

end A088828

/-! ## A088828.P9524326896204184386

`comp[n^2^and(1, n)]`
-/

namespace A088828.P9524326896204184386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 ^ Nat.land 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A088828.P9524326896204184386

namespace A088828

/-- `comp[n^2^and(1, n)]` -/
def P9524326896204184386.Spec : Prop :=
  ∀ n, (P9524326896204184386.a n : ℤ) = A088828 (n + 1)

end A088828

/-! ## A088828.P17726289903716583592

`2*comp[2*(n²+n)]+1`
-/

namespace A088828.P17726289903716583592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A088828.P17726289903716583592

namespace A088828

/-- `2*comp[2*(n²+n)]+1` -/
def P17726289903716583592.Spec : Prop :=
  ∀ n, (P17726289903716583592.a n : ℤ) = A088828 (n + 1)

end A088828

/-! ## A088828.P6550581379694108247

`eq[0, A354034(n)]`
-/

namespace A088828.P6550581379694108247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088828.P6550581379694108247

namespace A088828

/-- `eq[0, A354034(n)]` -/
def P6550581379694108247.Spec : Prop :=
  ∀ n, (P6550581379694108247.a n : ℤ) = A088828 (n + 1)

end A088828

/-! ## A088828.P7019683153959498096

`xor(1, 2*comp[A046092(n)])`
-/

namespace A088828.P7019683153959498096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A088828.P7019683153959498096

namespace A088828

/-- `xor(1, 2*comp[A046092(n)])` -/
def P7019683153959498096.Spec : Prop :=
  ∀ n, (P7019683153959498096.a n : ℤ) = A088828 (n + 1)

end A088828

/-! ## A088828.P2506617684543699466

`∩[2*n+1, A374475(n+1)]`
-/

namespace A088828.P2506617684543699466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088828.P2506617684543699466

namespace A088828

/-- `∩[2*n+1, A374475(n+1)]` -/
def P2506617684543699466.Spec : Prop :=
  ∀ n, (P2506617684543699466.a n : ℤ) = A088828 (n + 1)

end A088828

/-! ## A088828.P6613618756860809118

`A000027(2*comp[∑[4*n]]+1)`
-/

namespace A088828.P6613618756860809118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A088828.P6613618756860809118

namespace A088828

/-- `A000027(2*comp[∑[4*n]]+1)` -/
def P6613618756860809118.Spec : Prop :=
  ∀ n, P6613618756860809118.a n = A088828 (n + 1)

end A088828

/-! ## A088828.P9947463937612660515

`eq[A061393(n), A067694(n)]`
-/

namespace A088828.P9947463937612660515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067694 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088828.P9947463937612660515

namespace A088828

/-- `eq[A061393(n), A067694(n)]` -/
def P9947463937612660515.Spec : Prop :=
  ∀ n, (P9947463937612660515.a n : ℤ) = A088828 (n + 1)

end A088828

/-! ## A088828.P6399287176687883321

`∪[A077425(n+1), A004767(n)]`
-/

namespace A088828.P6399287176687883321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088828.P6399287176687883321

namespace A088828

/-- `∪[A077425(n+1), A004767(n)]` -/
def P6399287176687883321.Spec : Prop :=
  ∀ n, (P6399287176687883321.a n : ℤ) = A088828 (n + 1)

end A088828

/-! ## A088828.P12317718664057680821

`A144396(A350757(n+2)-1)`
-/

namespace A088828.P12317718664057680821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A350757 (n + 2) - 1).toNat

end

end A088828.P12317718664057680821

namespace A088828

/-- `A144396(A350757(n+2)-1)` -/
def P12317718664057680821.Spec : Prop :=
  ∀ n, P12317718664057680821.a n = A088828 (n + 1)

end A088828

/-! ## A088828.P3874685203510427589

`filter[A144396(n+1), A049240(#)]`
-/

namespace A088828.P3874685203510427589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A088828.P3874685203510427589

namespace A088828

/-- `filter[A144396(n+1), A049240(#)]` -/
def P3874685203510427589.Spec : Prop :=
  ∀ n, P3874685203510427589.a n = A088828 (n + 1)

end A088828

/-! ## A088828.P1728277100076397990

`filter[A144396(n+1), A323158(#)]`
-/

namespace A088828.P1728277100076397990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A088828.P1728277100076397990

namespace A088828

/-- `filter[A144396(n+1), A323158(#)]` -/
def P1728277100076397990.Spec : Prop :=
  ∀ n, P1728277100076397990.a n = A088828 (n + 1)

end A088828

/-! ## A088828.P7926781557251378274

`filter[A144396(n+1), A324903(#)]`
-/

namespace A088828.P7926781557251378274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A088828.P7926781557251378274

namespace A088828

/-- `filter[A144396(n+1), A324903(#)]` -/
def P7926781557251378274.Spec : Prop :=
  ∀ n, P7926781557251378274.a n = A088828 (n + 1)

end A088828

/-! ## A088828.P5809221571682667531

`filter[A144396(n+1), A324908(#)]`
-/

namespace A088828.P5809221571682667531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A088828.P5809221571682667531

namespace A088828

/-- `filter[A144396(n+1), A324908(#)]` -/
def P5809221571682667531.Spec : Prop :=
  ∀ n, P5809221571682667531.a n = A088828 (n + 1)

end A088828

/-! ## A088828.P8108802788554307876

`filter[A144396(n+1), A374474(#)]`
-/

namespace A088828.P8108802788554307876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A088828.P8108802788554307876

namespace A088828

/-- `filter[A144396(n+1), A374474(#)]` -/
def P8108802788554307876.Spec : Prop :=
  ∀ n, P8108802788554307876.a n = A088828 (n + 1)

end A088828

/-!
# A088829: Even numbers with even abundance.

The programs for A088829, the canonical program `A088829.P7745772889989253992` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088829 has offset 1).

The definition of A088829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088829.P180611059592668370

`2*comp[∪[2*n², n²]]`
-/

namespace A088829.P180611059592668370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A088829.P180611059592668370

namespace A088829

/-- `2*comp[∪[2*n², n²]]` -/
def P180611059592668370.Spec : Prop :=
  ∀ n, (P180611059592668370.a n : ℤ) = A088829 (n + 1)

end A088829

/-! ## A088829.P12003820282904443230

`2*comp[floor(sqrt(n))²*gcd(2, n+1)]`
-/

namespace A088829.P12003820282904443230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n ^ 2 * Nat.gcd 2 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A088829.P12003820282904443230

namespace A088829

/-- `2*comp[floor(sqrt(n))²*gcd(2, n+1)]` -/
def P12003820282904443230.Spec : Prop :=
  ∀ n, (P12003820282904443230.a n : ℤ) = A088829 (n + 1)

end A088829

/-! ## A088829.P7745772889989253992

`2*A028983(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A088829

/-- `2*A028983(n+1)` -/
def P7745772889989253992.Spec : Prop :=
  ∀ n, P7745772889989253992.a n = A088829 (n + 1)

theorem P7745772889989253992.correct : P7745772889989253992.Spec := by
  intro n
  simp only [A088829, Nat.add_sub_cancel]

end A088829

/-! ## A088829.P15659816017284719076

`2*comp[A115881(n+1)]`
-/

namespace A088829.P15659816017284719076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A088829.P15659816017284719076

namespace A088829

/-- `2*comp[A115881(n+1)]` -/
def P15659816017284719076.Spec : Prop :=
  ∀ n, (P15659816017284719076.a n : ℤ) = A088829 (n + 1)

end A088829

/-! ## A088829.P15992865227791293842

`2*lt[2, A007913(n+1)]+2`
-/

namespace A088829.P15992865227791293842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A088829.P15992865227791293842

namespace A088829

/-- `2*lt[2, A007913(n+1)]+2` -/
def P15992865227791293842.Spec : Prop :=
  ∀ n, (P15992865227791293842.a n : ℤ) = A088829 (n + 1)

end A088829

/-! ## A088829.P11486510760249143900

`2*(lt[A000203(n+1)%2, 1]+1)`
-/

namespace A088829.P11486510760249143900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A088829.P11486510760249143900

namespace A088829

/-- `2*(lt[A000203(n+1)%2, 1]+1)` -/
def P11486510760249143900.Spec : Prop :=
  ∀ n, (P11486510760249143900.a n : ℤ) = A088829 (n + 1)

end A088829

/-! ## A088829.P6002135817933738627

`2*comp[lcm(n+1, and(1, A325635(n+1)))]`
-/

namespace A088829.P6002135817933738627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (Int.land 1 (A325635 (n + 1)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A088829.P6002135817933738627

namespace A088829

/-- `2*comp[lcm(n+1, and(1, A325635(n+1)))]` -/
def P6002135817933738627.Spec : Prop :=
  ∀ n, (P6002135817933738627.a n : ℤ) = A088829 (n + 1)

end A088829

/-! ## A088829.P1461255666140091721

`2*lt[val((A000203(abs(1-n)+1)+1)², 2), 1]`
-/

namespace A088829.P1461255666140091721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((A000203 (|1 - (n : ℤ)| + 1).toNat + 1) ^ 2).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088829.P1461255666140091721

namespace A088829

/-- `2*lt[val((A000203(abs(1-n)+1)+1)², 2), 1]` -/
def P1461255666140091721.Spec : Prop :=
  ∀ n, (P1461255666140091721.a n : ℤ) = A088829 (n + 1)

end A088829

/-! ## A088829.P16720796147199120600

`filter[A053869(n+1), A049240(#)]`
-/

namespace A088829.P16720796147199120600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A088829.P16720796147199120600

namespace A088829

/-- `filter[A053869(n+1), A049240(#)]` -/
def P16720796147199120600.Spec : Prop :=
  ∀ n, P16720796147199120600.a n = A088829 (n + 1)

end A088829

/-! ## A088829.P6664322115490836024

`filter[A348005(n+1), A049240(#)]`
-/

namespace A088829.P6664322115490836024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A088829.P6664322115490836024

namespace A088829

/-- `filter[A348005(n+1), A049240(#)]` -/
def P6664322115490836024.Spec : Prop :=
  ∀ n, P6664322115490836024.a n = A088829 (n + 1)

end A088829

/-! ## A088829.P15084039432746291220

`∩[A053869(n+1), A020739(n)]`
-/

namespace A088829.P15084039432746291220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088829.P15084039432746291220

namespace A088829

/-- `∩[A053869(n+1), A020739(n)]` -/
def P15084039432746291220.Spec : Prop :=
  ∀ n, (P15084039432746291220.a n : ℤ) = A088829 (n + 1)

end A088829

/-! ## A088829.P2883228778799886999

`2*lt[A093709(n), 1]`
-/

namespace A088829.P2883228778799886999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088829.P2883228778799886999

namespace A088829

/-- `2*lt[A093709(n), 1]` -/
def P2883228778799886999.Spec : Prop :=
  ∀ n, (P2883228778799886999.a n : ℤ) = A088829 (n + 1)

end A088829

/-! ## A088829.P15758939993138263209

`A004277(A028983(n+1))`
-/

namespace A088829.P15758939993138263209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A028983 (n + 1)).toNat

end

end A088829.P15758939993138263209

namespace A088829

/-- `A004277(A028983(n+1))` -/
def P15758939993138263209.Spec : Prop :=
  ∀ n, P15758939993138263209.a n = A088829 (n + 1)

end A088829

/-! ## A088829.P217542175074247777

`A005843(eq[0, A093709(n)])`
-/

namespace A088829.P217542175074247777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A088829.P217542175074247777

namespace A088829

/-- `A005843(eq[0, A093709(n)])` -/
def P217542175074247777.Spec : Prop :=
  ∀ n, P217542175074247777.a n = A088829 (n + 1)

end A088829

/-! ## A088829.P1197765724180158610

`2*eq[1, A000035(A069283(n))]`
-/

namespace A088829.P1197765724180158610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A069283 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088829.P1197765724180158610

namespace A088829

/-- `2*eq[1, A000035(A069283(n))]` -/
def P1197765724180158610.Spec : Prop :=
  ∀ n, (P1197765724180158610.a n : ℤ) = A088829 (n + 1)

end A088829

/-! ## A088829.P4122637880530752343

`2*eq[2, A049605(A028310(n))]`
-/

namespace A088829.P4122637880530752343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049605 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088829.P4122637880530752343

namespace A088829

/-- `2*eq[2, A049605(A028310(n))]` -/
def P4122637880530752343.Spec : Prop :=
  ∀ n, (P4122637880530752343.a n : ℤ) = A088829 (n + 1)

end A088829

/-! ## A088829.P8916542057430693349

`2*lt[2, A007913(A008574(n))]`
-/

namespace A088829.P8916542057430693349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088829.P8916542057430693349

namespace A088829

/-- `2*lt[2, A007913(A008574(n))]` -/
def P8916542057430693349.Spec : Prop :=
  ∀ n, (P8916542057430693349.a n : ℤ) = A088829 (n + 1)

end A088829

/-! ## A088829.P8426150489971326368

`2*eq[A000161(n), A025441(n)]`
-/

namespace A088829.P8426150489971326368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088829.P8426150489971326368

namespace A088829

/-- `2*eq[A000161(n), A025441(n)]` -/
def P8426150489971326368.Spec : Prop :=
  ∀ n, (P8426150489971326368.a n : ℤ) = A088829 (n + 1)

end A088829

/-! ## A088829.P12226079463733201653

`∩[A053869(n+1), A005843(n)]`
-/

namespace A088829.P12226079463733201653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088829.P12226079463733201653

namespace A088829

/-- `∩[A053869(n+1), A005843(n)]` -/
def P12226079463733201653.Spec : Prop :=
  ∀ n, (P12226079463733201653.a n : ℤ) = A088829 (n + 1)

end A088829

/-! ## A088829.P14112786043910925526

`A245092(A028983(n+1)+A028983(n+1))`
-/

namespace A088829.P14112786043910925526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A028983 (n + 1) + A028983 (n + 1)).toNat

end

end A088829.P14112786043910925526

namespace A088829

/-- `A245092(A028983(n+1)+A028983(n+1))` -/
def P14112786043910925526.Spec : Prop :=
  ∀ n, P14112786043910925526.a n = A088829 (n + 1)

end A088829

/-!
# A088831: Numbers k whose abundance is 2: sigma(k) - 2k = 2.

The programs for A088831, there is no canonical definition to state claims against.
-/

/-! ## A088831.P1640854711640269051

`A045768(n+2)`
-/

namespace A088831.P1640854711640269051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045768 (n + 2)

end

end A088831.P1640854711640269051

/-! ## A088831.P2148204731661925027

`record[A045768(∑[gcd(2, n)²-2])]`
-/

namespace A088831.P2148204731661925027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045768 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088831.P2148204731661925027

/-! ## A088831.P1215784303337643523

`record[A045768(A085058(n))]`
-/

namespace A088831.P1215784303337643523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045768 (A085058 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088831.P1215784303337643523

/-! ## A088831.P7048690609336984

`record[A045768(A104758(n))]`
-/

namespace A088831.P7048690609336984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045768 (A104758 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088831.P7048690609336984

/-! ## A088831.P15938845852060105681

`lcm(2, A045768(A030545(n)))`
-/

namespace A088831.P15938845852060105681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A045768 (A030545 n).toNat)

end

end A088831.P15938845852060105681

/-!
# A088832: Numbers k whose abundance is 4: sigma(k) - 2*k = 4.

The programs for A088832, there is no canonical definition to state claims against.
-/

/-! ## A088832.P12188137484454144684

`A045769(n+4)`
-/

namespace A088832.P12188137484454144684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045769 (n + 4)

end

end A088832.P12188137484454144684

/-! ## A088832.P14232981804992092317

`lcm(2, A045769(A020705(n)))`
-/

namespace A088832.P14232981804992092317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A045769 (A020705 n).toNat)

end

end A088832.P14232981804992092317

/-! ## A088832.P2104779585609111263

`A067702(and(comp[4*n^3], -1))`
-/

namespace A088832.P2104779585609111263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067702 (Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (-1)).toNat

end

end A088832.P2104779585609111263

/-! ## A088832.P6096452135312699698

`A067702(comp[Δ[A380229(n)]])`
-/

namespace A088832.P6096452135312699698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380229 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067702 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A088832.P6096452135312699698

/-! ## A088832.P898259005830380481

`A067702(comp[A045991(n)])`
-/

namespace A088832.P898259005830380481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067702 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A088832.P898259005830380481

/-!
# A088833: Numbers k whose abundance is 8: sigma(k) - 2*k = 8.

The programs for A088833, there is no canonical definition to state claims against.
-/

/-! ## A088833.P2956864570594057235

`A045770(n+5)`
-/

namespace A088833.P2956864570594057235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045770 (n + 5)

end

end A088833.P2956864570594057235

/-! ## A088833.P8840337227020045536

`∩[A088820(n+1), A274553(n+1)]`
-/

namespace A088833.P8840337227020045536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088833.P8840337227020045536

/-! ## A088833.P6233944259128097081

`∩[A088820(n+1), A109788(n+1)]`
-/

namespace A088833.P6233944259128097081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088833.P6233944259128097081

/-! ## A088833.P17162684716530628355

`∩[A109788(n+1), A274553(n+1)]`
-/

namespace A088833.P17162684716530628355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088833.P17162684716530628355

/-! ## A088833.P4672092221032005417

`∩[A088820(n+1), A109806(n+1)]`
-/

namespace A088833.P4672092221032005417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088833.P4672092221032005417

/-!
# A088835: a(n) = lcm(A020639(n), A006530(n)).

The programs for A088835, there is no canonical definition to state claims against.
-/

/-! ## A088835.P8797471939380599171

`lcm(A020639(n+1), A006530(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088835.P8797471939380599171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (n + 1)) (A006530 (n + 1))

end

end A088835.P8797471939380599171

/-! ## A088835.P8683987638148916110

`(n+1)/A073752(n+1)`
-/

namespace A088835.P8683987638148916110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A073752 (n + 1) : ℚ)

end

end A088835.P8683987638148916110

/-! ## A088835.P10157078088097858943

`gcd(A066048(n+1), A144845(n))`
-/

namespace A088835.P10157078088097858943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066048 (n + 1)) (A144845 n)

end

end A088835.P10157078088097858943

/-! ## A088835.P15443502485500221118

`A066048(n+1)/A014963(n+1)`
-/

namespace A088835.P15443502485500221118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066048 (n + 1) : ℚ) / (A014963 (n + 1) : ℚ)

end

end A088835.P15443502485500221118

/-! ## A088835.P10928983054907760012

`lcm((n+1)/A052126(n+1), A020639(∏{p}[n+1, #]))`
-/

namespace A088835.P10928983054907760012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))) (A020639 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A088835.P10928983054907760012

/-! ## A088835.P1847274933348419212

`A006530(A028234(n+1))*A020639(n+1)`
-/

namespace A088835.P1847274933348419212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028234 (n + 1)).toNat * A020639 (n + 1)

end

end A088835.P1847274933348419212

/-! ## A088835.P392741138162056149

`A006530(n+1)*A020639(A051119(n+1))`
-/

namespace A088835.P392741138162056149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A020639 (A051119 (n + 1)).toNat

end

end A088835.P392741138162056149

/-! ## A088835.P5574494194858889042

`A006530(n+1)*A020639(A293810(n+1))`
-/

namespace A088835.P5574494194858889042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A020639 (A293810 (n + 1)).toNat

end

end A088835.P5574494194858889042

/-! ## A088835.P14283669396300157229

`A006530(n+1)/A014963(n+1)*A020639(n+1)`
-/

namespace A088835.P14283669396300157229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) / (A014963 (n + 1) : ℚ) * (A020639 (n + 1) : ℚ)

end

end A088835.P14283669396300157229

/-! ## A088835.P200383553616396500

`(n+1)/A052126(n+1)*A020639(A051119(n+1))`
-/

namespace A088835.P200383553616396500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052126 (n + 1) : ℚ) * (A020639 (A051119 (n + 1)).toNat : ℚ)

end

end A088835.P200383553616396500

/-! ## A088835.P6910115755856132280

`A066048(n+1)*A340679(n+1)/A007947(n+1)`
-/

namespace A088835.P6910115755856132280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066048 (n + 1) * A340679 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A088835.P6910115755856132280

/-! ## A088835.P13306225464700072708

`lcm((n+1)/A052126(n+1), A014963(A028233(n+1)))`
-/

namespace A088835.P13306225464700072708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))) (A014963 (A028233 (n + 1)).toNat)

end

end A088835.P13306225464700072708

/-! ## A088835.P14576536692980964426

`(n+1)/gcd(n+1, A060681(n+1))*A006530(A028234(n+1))`
-/

namespace A088835.P14576536692980964426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A060681 (n + 1)) : ℚ) * (A006530 (A028234 (n + 1)).toNat : ℚ)

end

end A088835.P14576536692980964426

/-! ## A088835.P14971918472487898765

`A020639(A051119(n+1))*A020639(A053585(n+1))`
-/

namespace A088835.P14971918472487898765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051119 (n + 1)).toNat * A020639 (A053585 (n + 1)).toNat

end

end A088835.P14971918472487898765

/-! ## A088835.P9155755760959331641

`(A318884(n+1)-A318886(n+1))*A020639(A051119(n+1))`
-/

namespace A088835.P9155755760959331641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A318884 (n + 1) - A318886 (n + 1)) * A020639 (A051119 (n + 1)).toNat

end

end A088835.P9155755760959331641

/-! ## A088835.P838229325259685539

`(A051664(n+1)-A070536(n+1))*A020639(A051119(n+1))`
-/

namespace A088835.P838229325259685539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051664 (n + 1) - A070536 (n + 1)) * A020639 (A051119 (n + 1)).toNat

end

end A088835.P838229325259685539

/-! ## A088835.P17239629007324733694

`∏{p}[A066048(n+1), #]`
-/

namespace A088835.P17239629007324733694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A088835.P17239629007324733694

/-! ## A088835.P14446060884507632290

`∏{p}[A020639(n+1)*A053585(n+1), #]`
-/

namespace A088835.P14446060884507632290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A053585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A088835.P14446060884507632290

/-! ## A088835.P1453375599180850788

`∏{p}[A006530(n+1)*A068794(n+1), #]`
-/

namespace A088835.P1453375599180850788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A068794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A088835.P1453375599180850788

/-! ## A088835.P18046782458635289295

`∏{p}[A006530(n+1)*A020639(n+1), A006530(#)]`
-/

namespace A088835.P18046782458635289295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A088835.P18046782458635289295

/-!
# A088836: a(n) = (A020639(2n+1) + A006530(2n+1))/2, arithmetic mean of max and min prime factor applied to odd numbers (i.e., when this mean is an integer).

The programs for A088836, there is no canonical definition to state claims against.
-/

/-! ## A088836.P14421863941832527341

`(A020639(2*(n+1)+1)+A006530(2*(n+1)+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088836.P14421863941832527341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * (n + 1) + 1) + A006530 (2 * (n + 1) + 1) : ℚ) / 2

end

end A088836.P14421863941832527341

/-! ## A088836.P7952492288527099152

`A076690(2*n+3)`
-/

namespace A088836.P7952492288527099152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076690 (2 * n + 3)

end

end A088836.P7952492288527099152

/-! ## A088836.P2649150049992646907

`A074320(2*n+3)/2`
-/

namespace A088836.P2649150049992646907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074320 (2 * n + 3) : ℚ) / 2

end

end A088836.P2649150049992646907

/-! ## A088836.P7778853484366349841

`ceil(A074320(n+3+n)/2)`
-/

namespace A088836.P7778853484366349841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074320 (n + 3 + n) : ℚ) / 2⌉

end

end A088836.P7778853484366349841

/-! ## A088836.P5644744673446402729

`A175126(A074320(2*n+3))`
-/

namespace A088836.P5644744673446402729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A074320 (2 * n + 3)).toNat

end

end A088836.P5644744673446402729

/-! ## A088836.P14860387926657957868

`A004526(A074320(n+3+n))`
-/

namespace A088836.P14860387926657957868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A074320 (n + 3 + n)).toNat

end

end A088836.P14860387926657957868

/-! ## A088836.P4787496171043455675

`A001281(A074320(Δ[(n+1)²]))`
-/

namespace A088836.P4787496171043455675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A074320 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A088836.P4787496171043455675

/-! ## A088836.P10668711281083644218

`A001281(A074320(2*n+1)+Δ[A074320(2*n+1)])`
-/

namespace A088836.P10668711281083644218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A074320 (2 * n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A088836.P10668711281083644218

/-! ## A088836.P3780688118000026097

`A002265(2*A074320(2*n+3))`
-/

namespace A088836.P3780688118000026097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A074320 (2 * n + 3)).toNat

end

end A088836.P3780688118000026097

/-! ## A088836.P2180780272440092474

`or(A000007(n), A171181(A074320(2*n+3)))`
-/

namespace A088836.P2180780272440092474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A171181 (A074320 (2 * n + 3)).toNat)

end

end A088836.P2180780272440092474

/-! ## A088836.P16279618212406074624

`A171181(A074320(2*n+3)%A111592(n+1))`
-/

namespace A088836.P16279618212406074624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (Int.tmod (A074320 (2 * n + 3)) (A111592 (n + 1))).toNat

end

end A088836.P16279618212406074624

/-! ## A088836.P2346599746698942807

`A171181(A074320(2*n+3))%A000040(n+1)²`
-/

namespace A088836.P2346599746698942807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171181 (A074320 (2 * n + 3)).toNat) (A000040 (n + 1) ^ 2)

end

end A088836.P2346599746698942807

/-!
# A088837: Numerator of sigma(2*n)/sigma(n). Denominator see in A038712.

The programs for A088837, the canonical program `A088837.P13542131755671239569` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088837 has offset 1).

The definition of A088837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088837.P6550417833089615365

`xor(2*(n+1), 2*(n+1)-1)`
-/

namespace A088837.P6550417833089615365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * (n + 1) : ℤ) ((2 * (n + 1) : ℤ) - 1)

end

end A088837.P6550417833089615365

namespace A088837

/-- `xor(2*(n+1), 2*(n+1)-1)` -/
def P6550417833089615365.Spec : Prop :=
  ∀ n, P6550417833089615365.a n = A088837 (n + 1)

end A088837

/-! ## A088837.P2543016600462651922

`A059159(n+1)-1`
-/

namespace A088837.P2543016600462651922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059159 (n + 1) - 1

end

end A088837.P2543016600462651922

namespace A088837

/-- `A059159(n+1)-1` -/
def P2543016600462651922.Spec : Prop :=
  ∀ n, P2543016600462651922.a n = A088837 (n + 1)

end A088837

/-! ## A088837.P13542131755671239569

`2*A038712(n+1)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088837

/-- `2*A038712(n+1)+1` -/
def P13542131755671239569.Spec : Prop :=
  ∀ n, P13542131755671239569.a n = A088837 (n + 1)

theorem P13542131755671239569.correct : P13542131755671239569.Spec := by
  intro n
  simp only [A088837, Nat.add_sub_cancel]

end A088837

/-! ## A088837.P8037985826714027285

`4*A006519(n+1)-1`
-/

namespace A088837.P8037985826714027285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006519 (n + 1) - 1

end

end A088837.P8037985826714027285

namespace A088837

/-- `4*A006519(n+1)-1` -/
def P8037985826714027285.Spec : Prop :=
  ∀ n, P8037985826714027285.a n = A088837 (n + 1)

end A088837

/-! ## A088837.P17823616904854304910

`4*2^A007814(n+1)-1`
-/

namespace A088837.P17823616904854304910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (2 : ℚ) ^ (A007814 (n + 1) : ℤ) - 1

end

end A088837.P17823616904854304910

namespace A088837

/-- `4*2^A007814(n+1)-1` -/
def P17823616904854304910.Spec : Prop :=
  ∀ n, P17823616904854304910.a n = (A088837 (n + 1) : ℚ)

end A088837

/-! ## A088837.P1111689300742357327

`∑{d}[xor(n, -(n+2)), #]`
-/

namespace A088837.P1111689300742357327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n + 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A088837.P1111689300742357327

namespace A088837

/-- `∑{d}[xor(n, -(n+2)), #]` -/
def P1111689300742357327.Spec : Prop :=
  ∀ n, (P1111689300742357327.a n : ℤ) = A088837 (n + 1)

end A088837

/-! ## A088837.P10678877443999876021

`2*xor(n, n+1)+1`
-/

namespace A088837.P10678877443999876021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor n (n + 1) + 1

end

end A088837.P10678877443999876021

namespace A088837

/-- `2*xor(n, n+1)+1` -/
def P10678877443999876021.Spec : Prop :=
  ∀ n, (P10678877443999876021.a n : ℤ) = A088837 (n + 1)

end A088837

/-! ## A088837.P10885883898176304964

`lcm(2, xor(n, n+1))+1`
-/

namespace A088837.P10885883898176304964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.xor n (n + 1)) + 1

end

end A088837.P10885883898176304964

namespace A088837

/-- `lcm(2, xor(n, n+1))+1` -/
def P10885883898176304964.Spec : Prop :=
  ∀ n, (P10885883898176304964.a n : ℤ) = A088837 (n + 1)

end A088837

/-! ## A088837.P14224948766286298441

`∑{d}[xor(n, n+1)+1, #]`
-/

namespace A088837.P14224948766286298441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A088837.P14224948766286298441

namespace A088837

/-- `∑{d}[xor(n, n+1)+1, #]` -/
def P14224948766286298441.Spec : Prop :=
  ∀ n, (P14224948766286298441.a n : ℤ) = A088837 (n + 1)

end A088837

/-! ## A088837.P10954214988351165330

`4*and(n, -(n+2))+3`
-/

namespace A088837.P10954214988351165330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.land (n : ℤ) (-(n + 2 : ℤ)) + 3

end

end A088837.P10954214988351165330

namespace A088837

/-- `4*and(n, -(n+2))+3` -/
def P10954214988351165330.Spec : Prop :=
  ∀ n, P10954214988351165330.a n = A088837 (n + 1)

end A088837

/-! ## A088837.P10994813007630932807

`lcm(4, and(n, -(n+2)))+3`
-/

namespace A088837.P10994813007630932807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (Int.land (n : ℤ) (-(n + 2 : ℤ))) + 3

end

end A088837.P10994813007630932807

namespace A088837

/-- `lcm(4, and(n, -(n+2)))+3` -/
def P10994813007630932807.Spec : Prop :=
  ∀ n, (P10994813007630932807.a n : ℤ) = A088837 (n + 1)

end A088837

/-! ## A088837.P12184442506071634102

`4*(n-and(n, n+1))+3`
-/

namespace A088837.P12184442506071634102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) - (Nat.land n (n + 1) : ℤ)) + 3

end

end A088837.P12184442506071634102

namespace A088837

/-- `4*(n-and(n, n+1))+3` -/
def P12184442506071634102.Spec : Prop :=
  ∀ n, P12184442506071634102.a n = A088837 (n + 1)

end A088837

/-! ## A088837.P441828646992266928

`∑{d}[2*or(n+1, -(n+1)), #]`
-/

namespace A088837.P441828646992266928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A088837.P441828646992266928

namespace A088837

/-- `∑{d}[2*or(n+1, -(n+1)), #]` -/
def P441828646992266928.Spec : Prop :=
  ∀ n, (P441828646992266928.a n : ℤ) = A088837 (n + 1)

end A088837

/-! ## A088837.P14420133008002919112

`xor(n, n+1)-xor(n, -(n+2))`
-/

namespace A088837.P14420133008002919112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) : ℤ) - Int.xor (n : ℤ) (-(n + 2 : ℤ))

end

end A088837.P14420133008002919112

namespace A088837

/-- `xor(n, n+1)-xor(n, -(n+2))` -/
def P14420133008002919112.Spec : Prop :=
  ∀ n, P14420133008002919112.a n = A088837 (n + 1)

end A088837

/-! ## A088837.P1270080756460029620

`xor(n, n+1)+xor(n, n+1)+1`
-/

namespace A088837.P1270080756460029620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + (Nat.xor n (n + 1) + 1)

end

end A088837.P1270080756460029620

namespace A088837

/-- `xor(n, n+1)+xor(n, n+1)+1` -/
def P1270080756460029620.Spec : Prop :=
  ∀ n, (P1270080756460029620.a n : ℤ) = A088837 (n + 1)

end A088837

/-! ## A088837.P5098945706700041517

`A100892(n+1)+1`
-/

namespace A088837.P5098945706700041517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100892 (n + 1) + 1

end

end A088837.P5098945706700041517

namespace A088837

/-- `A100892(n+1)+1` -/
def P5098945706700041517.Spec : Prop :=
  ∀ n, P5098945706700041517.a n = A088837 (n + 1)

end A088837

/-! ## A088837.P5495744439819501365

`A393210(n+1)+2`
-/

namespace A088837.P5495744439819501365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393210 (n + 1) + 2

end

end A088837.P5495744439819501365

namespace A088837

/-- `A393210(n+1)+2` -/
def P5495744439819501365.Spec : Prop :=
  ∀ n, P5495744439819501365.a n = A088837 (n + 1)

end A088837

/-! ## A088837.P10698085922480535324

`A059161(n)/3-1`
-/

namespace A088837.P10698085922480535324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059161 n : ℚ) / 3 - 1

end

end A088837.P10698085922480535324

namespace A088837

/-- `A059161(n)/3-1` -/
def P10698085922480535324.Spec : Prop :=
  ∀ n, P10698085922480535324.a n = (A088837 (n + 1) : ℚ)

end A088837

/-! ## A088837.P13156629414856439524

`A059164(n)/4-1`
-/

namespace A088837.P13156629414856439524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059164 n : ℚ) / 4 - 1

end

end A088837.P13156629414856439524

namespace A088837

/-- `A059164(n)/4-1` -/
def P13156629414856439524.Spec : Prop :=
  ∀ n, P13156629414856439524.a n = (A088837 (n + 1) : ℚ)

end A088837

/-! ## A088837.P6523992265699369623

`4*A135481(n)+3`
-/

namespace A088837.P6523992265699369623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A135481 n + 3

end

end A088837.P6523992265699369623

namespace A088837

/-- `4*A135481(n)+3` -/
def P6523992265699369623.Spec : Prop :=
  ∀ n, P6523992265699369623.a n = A088837 (n + 1)

end A088837

/-!
# A088838: Numerator of the quotient sigma(3n)/sigma(n).

The programs for A088838, the canonical program `A088838.P14984780205107405931` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088838 has offset 1).

The definition of A088838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088838.P14984780205107405931

`(3^(2+A007949(n+1))-1)/2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088838

/-- `(3^(2+A007949(n+1))-1)/2` -/
def P14984780205107405931.Spec : Prop :=
  ∀ n, P14984780205107405931.a n = (A088838 (n + 1) : ℚ)

end A088838

/-! ## A088838.P2902530980404471455

`∑{d}[A074724(n+1), #]`
-/

namespace A088838.P2902530980404471455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074724 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A088838.P2902530980404471455

namespace A088838

/-- `∑{d}[A074724(n+1), #]` -/
def P2902530980404471455.Spec : Prop :=
  ∀ n, (P2902530980404471455.a n : ℤ) = A088838 (n + 1)

end A088838

/-! ## A088838.P4156787495993615807

`3*A080278(n+1)+1`
-/

namespace A088838.P4156787495993615807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A080278 (n + 1) + 1

end

end A088838.P4156787495993615807

namespace A088838

/-- `3*A080278(n+1)+1` -/
def P4156787495993615807.Spec : Prop :=
  ∀ n, P4156787495993615807.a n = A088838 (n + 1)

end A088838

/-! ## A088838.P10861639882833629159

`A000203(3^(val(n+1, 3)+1))`
-/

namespace A088838.P10861639882833629159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (3 ^ (SequenceMachineLib.valuation (n + 1) 3 + 1))

end

end A088838.P10861639882833629159

namespace A088838

/-- `A000203(3^(val(n+1, 3)+1))` -/
def P10861639882833629159.Spec : Prop :=
  ∀ n, P10861639882833629159.a n = A088838 (n + 1)

end A088838

/-! ## A088838.P11426333951312840346

`3*A000203(gcd(n+1, (2*n+5)²²²))+1`
-/

namespace A088838.P11426333951312840346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000203 (Nat.gcd (n + 1) ((((2 * n + 5) ^ 2) ^ 2) ^ 2)) + 1

end

end A088838.P11426333951312840346

namespace A088838

/-- `3*A000203(gcd(n+1, (2*n+5)²²²))+1` -/
def P11426333951312840346.Spec : Prop :=
  ∀ n, P11426333951312840346.a n = A088838 (n + 1)

end A088838

/-! ## A088838.P6248679760298351417

`A000203(A074724(n+1))`
-/

namespace A088838.P6248679760298351417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A074724 (n + 1)).toNat

end

end A088838.P6248679760298351417

namespace A088838

/-- `A000203(A074724(n+1))` -/
def P6248679760298351417.Spec : Prop :=
  ∀ n, P6248679760298351417.a n = A088838 (n + 1)

end A088838

/-! ## A088838.P12362854885254515631

`A008438(A080278(n+1))`
-/

namespace A088838.P12362854885254515631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (A080278 (n + 1)).toNat

end

end A088838.P12362854885254515631

namespace A088838

/-- `A008438(A080278(n+1))` -/
def P12362854885254515631.Spec : Prop :=
  ∀ n, P12362854885254515631.a n = A088838 (n + 1)

end A088838

/-! ## A088838.P18337536333712390893

`A125758(A038500(n+1))`
-/

namespace A088838.P18337536333712390893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (A038500 (n + 1)).toNat

end

end A088838.P18337536333712390893

namespace A088838

/-- `A125758(A038500(n+1))` -/
def P18337536333712390893.Spec : Prop :=
  ∀ n, P18337536333712390893.a n = A088838 (n + 1)

end A088838

/-! ## A088838.P8146118172999428801

`A003969(2*A318666(n+1))`
-/

namespace A088838.P8146118172999428801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003969 (2 * A318666 (n + 1)).toNat

end

end A088838.P8146118172999428801

namespace A088838

/-- `A003969(2*A318666(n+1))` -/
def P8146118172999428801.Spec : Prop :=
  ∀ n, P8146118172999428801.a n = A088838 (n + 1)

end A088838

/-! ## A088838.P580764904389063998

`A003973(2*A318666(n+1))`
-/

namespace A088838.P580764904389063998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (2 * A318666 (n + 1)).toNat

end

end A088838.P580764904389063998

namespace A088838

/-- `A003973(2*A318666(n+1))` -/
def P580764904389063998.Spec : Prop :=
  ∀ n, P580764904389063998.a n = A088838 (n + 1)

end A088838

/-! ## A088838.P17872585836446094903

`A000203(3*A038500(n+1))`
-/

namespace A088838.P17872585836446094903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (3 * A038500 (n + 1)).toNat

end

end A088838.P17872585836446094903

namespace A088838

/-- `A000203(3*A038500(n+1))` -/
def P17872585836446094903.Spec : Prop :=
  ∀ n, P17872585836446094903.a n = A088838 (n + 1)

end A088838

/-! ## A088838.P15852102510555389591

`A080278(n+1)+A074724(n+1)`
-/

namespace A088838.P15852102510555389591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080278 (n + 1) + A074724 (n + 1)

end

end A088838.P15852102510555389591

namespace A088838

/-- `A080278(n+1)+A074724(n+1)` -/
def P15852102510555389591.Spec : Prop :=
  ∀ n, P15852102510555389591.a n = A088838 (n + 1)

end A088838

/-! ## A088838.P16881206148978794034

`A144613(n+1)/A046913(n+1)`
-/

namespace A088838.P16881206148978794034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144613 (n + 1) : ℚ) / (A046913 (n + 1) : ℚ)

end

end A088838.P16881206148978794034

namespace A088838

/-- `A144613(n+1)/A046913(n+1)` -/
def P16881206148978794034.Spec : Prop :=
  ∀ n, P16881206148978794034.a n = (A088838 (n + 1) : ℚ)

end A088838

/-! ## A088838.P3551192446596756752

`A000203(sqrt(A001019(val(12*(n+1), 3))))`
-/

namespace A088838.P3551192446596756752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A001019 (SequenceMachineLib.valuation (12 * (n + 1)) 3) : ℝ))).toNat

end

end A088838.P3551192446596756752

namespace A088838

/-- `A000203(sqrt(A001019(val(12*(n+1), 3))))` -/
def P3551192446596756752.Spec : Prop :=
  ∀ n, P3551192446596756752.a n = A088838 (n + 1)

end A088838

/-! ## A088838.P4366960647838645734

`A272027(n+1)/A046913(n+1)+1`
-/

namespace A088838.P4366960647838645734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (n + 1) : ℚ) / (A046913 (n + 1) : ℚ) + 1

end

end A088838.P4366960647838645734

namespace A088838

/-- `A272027(n+1)/A046913(n+1)+1` -/
def P4366960647838645734.Spec : Prop :=
  ∀ n, P4366960647838645734.a n = (A088838 (n + 1) : ℚ)

end A088838

/-! ## A088838.P16404415588336159372

`3*∑{d}[A065331(A000265(n+1)), #]+1`
-/

namespace A088838.P16404415588336159372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A000265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ d ∈ Nat.divisors (f1 n).natAbs, d) + 1

end

end A088838.P16404415588336159372

namespace A088838

/-- `3*∑{d}[A065331(A000265(n+1)), #]+1` -/
def P16404415588336159372.Spec : Prop :=
  ∀ n, (P16404415588336159372.a n : ℤ) = A088838 (n + 1)

end A088838

/-! ## A088838.P773926069741405523

`A144613(n+1)/(A144613(n+1)-A272027(n+1))`
-/

namespace A088838.P773926069741405523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144613 (n + 1) : ℚ) / (A144613 (n + 1) - A272027 (n + 1) : ℚ)

end

end A088838.P773926069741405523

namespace A088838

/-- `A144613(n+1)/(A144613(n+1)-A272027(n+1))` -/
def P773926069741405523.Spec : Prop :=
  ∀ n, P773926069741405523.a n = (A088838 (n + 1) : ℚ)

end A088838

/-! ## A088838.P16100140533215992850

`A144613(n+1)/gcd(A143348(n+1), A144613(n+1))`
-/

namespace A088838.P16100140533215992850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144613 (n + 1) : ℚ) / (Int.gcd (A143348 (n + 1)) (A144613 (n + 1)) : ℚ)

end

end A088838.P16100140533215992850

namespace A088838

/-- `A144613(n+1)/gcd(A143348(n+1), A144613(n+1))` -/
def P16100140533215992850.Spec : Prop :=
  ∀ n, P16100140533215992850.a n = (A088838 (n + 1) : ℚ)

end A088838

/-! ## A088838.P16933946944819411486

`A327625(A074724(n+1))+A007949(A327625(n+1))`
-/

namespace A088838.P16933946944819411486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327625 (A074724 (n + 1)).toNat + A007949 (A327625 (n + 1)).toNat

end

end A088838.P16933946944819411486

namespace A088838

/-- `A327625(A074724(n+1))+A007949(A327625(n+1))` -/
def P16933946944819411486.Spec : Prop :=
  ∀ n, P16933946944819411486.a n = A088838 (n + 1)

end A088838

/-! ## A088838.P7634999201739638778

`A001651(3*3^val(n+1, 3))`
-/

namespace A088838.P7634999201739638778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (3 * 3 ^ SequenceMachineLib.valuation (n + 1) 3)

end

end A088838.P7634999201739638778

namespace A088838

/-- `A001651(3*3^val(n+1, 3))` -/
def P7634999201739638778.Spec : Prop :=
  ∀ n, P7634999201739638778.a n = A088838 (n + 1)

end A088838

/-!
# A088839: Numerator of sigma(4n)/sigma(n).

The programs for A088839, the canonical program `A088839.P2853129833780886676` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088839 has offset 1).

The definition of A088839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088839.P2853129833780886676

`(8*A006519(n+1)-1)/(1+2*A096268(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A088839

/-- `(8*A006519(n+1)-1)/(1+2*A096268(n))` -/
def P2853129833780886676.Spec : Prop :=
  ∀ n, P2853129833780886676.a n = (A088839 (n + 1) : ℚ)

end A088839

/-! ## A088839.P16532294145635187994

`A213243(A085058(n)+1)`
-/

namespace A088839.P16532294145635187994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213243 (A085058 n + 1).toNat

end

end A088839.P16532294145635187994

namespace A088839

/-- `A213243(A085058(n)+1)` -/
def P16532294145635187994.Spec : Prop :=
  ∀ n, P16532294145635187994.a n = A088839 (n + 1)

end A088839

/-! ## A088839.P13793794868903101467

`A213243(A090739(n+1))`
-/

namespace A088839.P13793794868903101467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213243 (A090739 (n + 1)).toNat

end

end A088839.P13793794868903101467

namespace A088839

/-- `A213243(A090739(n+1))` -/
def P13793794868903101467.Spec : Prop :=
  ∀ n, P13793794868903101467.a n = A088839 (n + 1)

end A088839

/-! ## A088839.P269390446217219206

`A213243(A001511(n+1)+2)`
-/

namespace A088839.P269390446217219206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213243 (A001511 (n + 1) + 2).toNat

end

end A088839.P269390446217219206

namespace A088839

/-- `A213243(A001511(n+1)+2)` -/
def P269390446217219206.Spec : Prop :=
  ∀ n, P269390446217219206.a n = A088839 (n + 1)

end A088839

/-! ## A088839.P6625065358397488927

`A213243(A089080(n+2)+1)`
-/

namespace A088839.P6625065358397488927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213243 (A089080 (n + 2) + 1).toNat

end

end A088839.P6625065358397488927

namespace A088839

/-- `A213243(A089080(n+2)+1)` -/
def P6625065358397488927.Spec : Prop :=
  ∀ n, P6625065358397488927.a n = A088839 (n + 1)

end A088839

/-! ## A088839.P11581841992736349859

`A060590(A001511(n+1)+2)/2`
-/

namespace A088839.P11581841992736349859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060590 (A001511 (n + 1) + 2).toNat : ℚ) / 2

end

end A088839.P11581841992736349859

namespace A088839

/-- `A060590(A001511(n+1)+2)/2` -/
def P11581841992736349859.Spec : Prop :=
  ∀ n, P11581841992736349859.a n = (A088839 (n + 1) : ℚ)

end A088839

/-! ## A088839.P7031555183295832997

`A088837(2*(n+1))/gcd(3, A088837(2*(n+1)))`
-/

namespace A088839.P7031555183295832997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088837 (2 * (n + 1)) : ℚ) / (Int.gcd 3 (A088837 (2 * (n + 1))) : ℚ)

end

end A088839.P7031555183295832997

namespace A088839

/-- `A088837(2*(n+1))/gcd(3, A088837(2*(n+1)))` -/
def P7031555183295832997.Spec : Prop :=
  ∀ n, P7031555183295832997.a n = (A088839 (n + 1) : ℚ)

end A088839

/-! ## A088839.P4423874744903398204

`A088840(A059159(n+1))`
-/

namespace A088839.P4423874744903398204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088840 (A059159 (n + 1)).toNat

end

end A088839.P4423874744903398204

namespace A088839

/-- `A088840(A059159(n+1))` -/
def P4423874744903398204.Spec : Prop :=
  ∀ n, P4423874744903398204.a n = A088839 (n + 1)

end A088839

/-! ## A088839.P15543584269981768504

`A088840(A088837(n+1)+1)`
-/

namespace A088839.P15543584269981768504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088840 (A088837 (n + 1) + 1).toNat

end

end A088839.P15543584269981768504

namespace A088839

/-- `A088840(A088837(n+1)+1)` -/
def P15543584269981768504.Spec : Prop :=
  ∀ n, P15543584269981768504.a n = A088839 (n + 1)

end A088839

/-! ## A088839.P11779004880943765030

`A088840(A100892(n+1)+2)`
-/

namespace A088839.P11779004880943765030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088840 (A100892 (n + 1) + 2).toNat

end

end A088839.P11779004880943765030

namespace A088839

/-- `A088840(A100892(n+1)+2)` -/
def P11779004880943765030.Spec : Prop :=
  ∀ n, P11779004880943765030.a n = A088839 (n + 1)

end A088839

/-! ## A088839.P2500794636277877711

`A088840(2*(A038712(n+1)+1))`
-/

namespace A088839.P2500794636277877711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088840 (2 * (A038712 (n + 1) + 1)).toNat

end

end A088839.P2500794636277877711

namespace A088839

/-- `A088840(2*(A038712(n+1)+1))` -/
def P2500794636277877711.Spec : Prop :=
  ∀ n, P2500794636277877711.a n = A088839 (n + 1)

end A088839

/-! ## A088839.P651360407482302141

`A088840(A038712(n+1)+A038712(n+1)+2)`
-/

namespace A088839.P651360407482302141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088840 (A038712 (n + 1) + (A038712 (n + 1) + 2)).toNat

end

end A088839.P651360407482302141

namespace A088839

/-- `A088840(A038712(n+1)+A038712(n+1)+2)` -/
def P651360407482302141.Spec : Prop :=
  ∀ n, P651360407482302141.a n = A088839 (n + 1)

end A088839

/-! ## A088839.P676983836513893029

`A088840(A297402(2*(n+1)))`
-/

namespace A088839.P676983836513893029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088840 (A297402 (2 * (n + 1))).toNat

end

end A088839.P676983836513893029

namespace A088839

/-- `A088840(A297402(2*(n+1)))` -/
def P676983836513893029.Spec : Prop :=
  ∀ n, P676983836513893029.a n = A088839 (n + 1)

end A088839

/-! ## A088839.P4094487470695701151

`A213243(A007814(2*(n+1))+2)`
-/

namespace A088839.P4094487470695701151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213243 (A007814 (2 * (n + 1)) + 2).toNat

end

end A088839.P4094487470695701151

namespace A088839

/-- `A213243(A007814(2*(n+1))+2)` -/
def P4094487470695701151.Spec : Prop :=
  ∀ n, P4094487470695701151.a n = A088839 (n + 1)

end A088839

/-! ## A088839.P17543736843604507115

`A088840(4*(n+1))`
-/

namespace A088839.P17543736843604507115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088840 (4 * (n + 1))

end

end A088839.P17543736843604507115

namespace A088839

/-- `A088840(4*(n+1))` -/
def P17543736843604507115.Spec : Prop :=
  ∀ n, P17543736843604507115.a n = A088839 (n + 1)

end A088839

/-! ## A088839.P6589736439690453664

`A146535(2*A006519(2*(n+1)))`
-/

namespace A088839.P6589736439690453664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (2 * A006519 (2 * (n + 1))).toNat

end

end A088839.P6589736439690453664

namespace A088839

/-- `A146535(2*A006519(2*(n+1)))` -/
def P6589736439690453664.Spec : Prop :=
  ∀ n, P6589736439690453664.a n = A088839 (n + 1)

end A088839

/-! ## A088839.P3529527500862059579

`A344696(2*2*A327512(n+1))`
-/

namespace A088839.P3529527500862059579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344696 (2 * (2 * A327512 (n + 1))).toNat

end

end A088839.P3529527500862059579

namespace A088839

/-- `A344696(2*2*A327512(n+1))` -/
def P3529527500862059579.Spec : Prop :=
  ∀ n, P3529527500862059579.a n = A088839 (n + 1)

end A088839

/-! ## A088839.P16562103376325072272

`filter[A088840(n+1), A014306(#)]`
-/

namespace A088839.P16562103376325072272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A088839.P16562103376325072272

namespace A088839

/-- `filter[A088840(n+1), A014306(#)]` -/
def P16562103376325072272.Spec : Prop :=
  ∀ n, P16562103376325072272.a n = A088839 (n + 1)

end A088839

/-! ## A088839.P14229059713549315622

`filter[A088840(n+1), A049240(#)]`
-/

namespace A088839.P14229059713549315622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A088839.P14229059713549315622

namespace A088839

/-- `filter[A088840(n+1), A049240(#)]` -/
def P14229059713549315622.Spec : Prop :=
  ∀ n, P14229059713549315622.a n = A088839 (n + 1)

end A088839

/-! ## A088839.P9329313948153993156

`filter[A088840(n+1), A053867(#)]`
-/

namespace A088839.P9329313948153993156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A088839.P9329313948153993156

namespace A088839

/-- `filter[A088840(n+1), A053867(#)]` -/
def P9329313948153993156.Spec : Prop :=
  ∀ n, P9329313948153993156.a n = A088839 (n + 1)

end A088839

/-!
# A088840: Denominator of sigma(4n)/sigma(n).

The programs for A088840, the canonical program `A088840.P2952349459098341905` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088840 has offset 1).

The definition of A088840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088840.P2952349459098341905

`A213243(A007814(n+1)+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A088840

/-- `A213243(A007814(n+1)+1)` -/
def P2952349459098341905.Spec : Prop :=
  ∀ n, P2952349459098341905.a n = A088840 (n + 1)

theorem P2952349459098341905.correct : P2952349459098341905.Spec := by
  intro n
  simp only [A088840, Nat.add_sub_cancel]

end A088840

/-! ## A088840.P13206867281986743697

`lcm(3, xor(n, n+1))/3`
-/

namespace A088840.P13206867281986743697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (Nat.xor n (n + 1)) : ℚ) / 3

end

end A088840.P13206867281986743697

namespace A088840

/-- `lcm(3, xor(n, n+1))/3` -/
def P13206867281986743697.Spec : Prop :=
  ∀ n, P13206867281986743697.a n = (A088840 (n + 1) : ℚ)

end A088840

/-! ## A088840.P13938608416004355403

`xor(n, n+1)/xor(n, n+1)%6`
-/

namespace A088840.P13938608416004355403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) : ℚ) / ((Nat.xor n (n + 1) % 6 : ℕ) : ℚ)

end

end A088840.P13938608416004355403

namespace A088840

/-- `xor(n, n+1)/xor(n, n+1)%6` -/
def P13938608416004355403.Spec : Prop :=
  ∀ n, P13938608416004355403.a n = (A088840 (n + 1) : ℚ)

end A088840

/-! ## A088840.P11795744396154606860

`A348504(2^val(n+1, 2))`
-/

namespace A088840.P11795744396154606860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348504 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A088840.P11795744396154606860

namespace A088840

/-- `A348504(2^val(n+1, 2))` -/
def P11795744396154606860.Spec : Prop :=
  ∀ n, P11795744396154606860.a n = A088840 (n + 1)

end A088840

/-! ## A088840.P8815986867531380188

`and(∑{d}[and(n+1, -(n+1)), #], A088839(n+1))`
-/

namespace A088840.P8815986867531380188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A088839 (n + 1))

end

end A088840.P8815986867531380188

namespace A088840

/-- `and(∑{d}[and(n+1, -(n+1)), #], A088839(n+1))` -/
def P8815986867531380188.Spec : Prop :=
  ∀ n, P8815986867531380188.a n = A088840 (n + 1)

end A088840

/-! ## A088840.P9296852294240829400

`A146535(A006519(n+1))`
-/

namespace A088840.P9296852294240829400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (A006519 (n + 1)).toNat

end

end A088840.P9296852294240829400

namespace A088840

/-- `A146535(A006519(n+1))` -/
def P9296852294240829400.Spec : Prop :=
  ∀ n, P9296852294240829400.a n = A088840 (n + 1)

end A088840

/-! ## A088840.P1312508014628734370

`A213243(A001511(n+1))`
-/

namespace A088840.P1312508014628734370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213243 (A001511 (n + 1)).toNat

end

end A088840.P1312508014628734370

namespace A088840

/-- `A213243(A001511(n+1))` -/
def P1312508014628734370.Spec : Prop :=
  ∀ n, P1312508014628734370.a n = A088840 (n + 1)

end A088840

/-! ## A088840.P7375054676375663769

`A344696(A327512(n+1))`
-/

namespace A088840.P7375054676375663769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344696 (A327512 (n + 1)).toNat

end

end A088840.P7375054676375663769

namespace A088840

/-- `A344696(A327512(n+1))` -/
def P7375054676375663769.Spec : Prop :=
  ∀ n, P7375054676375663769.a n = A088840 (n + 1)

end A088840

/-! ## A088840.P12121194832113779051

`A213243(A085058(n)-1)`
-/

namespace A088840.P12121194832113779051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213243 (A085058 n - 1).toNat

end

end A088840.P12121194832113779051

namespace A088840

/-- `A213243(A085058(n)-1)` -/
def P12121194832113779051.Spec : Prop :=
  ∀ n, P12121194832113779051.a n = A088840 (n + 1)

end A088840

/-! ## A088840.P16893953891230792833

`A213243(A089080(n+2)-1)`
-/

namespace A088840.P16893953891230792833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213243 (A089080 (n + 2) - 1).toNat

end

end A088840.P16893953891230792833

namespace A088840

/-- `A213243(A089080(n+2)-1)` -/
def P16893953891230792833.Spec : Prop :=
  ∀ n, P16893953891230792833.a n = A088840 (n + 1)

end A088840

/-! ## A088840.P10010158778912338582

`A213243(A090739(n+1)-2)`
-/

namespace A088840.P10010158778912338582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213243 (A090739 (n + 1) - 2).toNat

end

end A088840.P10010158778912338582

namespace A088840

/-- `A213243(A090739(n+1)-2)` -/
def P10010158778912338582.Spec : Prop :=
  ∀ n, P10010158778912338582.a n = A088840 (n + 1)

end A088840

/-! ## A088840.P6465396108708999929

`A088839(n+1)%A171977(n+1)`
-/

namespace A088840.P6465396108708999929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088839 (n + 1)) (A171977 (n + 1))

end

end A088840.P6465396108708999929

namespace A088840

/-- `A088839(n+1)%A171977(n+1)` -/
def P6465396108708999929.Spec : Prop :=
  ∀ n, P6465396108708999929.a n = A088840 (n + 1)

end A088840

/-! ## A088840.P2046969021679923854

`gcd(A038712(n+1), A296306(n+1))`
-/

namespace A088840.P2046969021679923854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038712 (n + 1)) (A296306 (n + 1))

end

end A088840.P2046969021679923854

namespace A088840

/-- `gcd(A038712(n+1), A296306(n+1))` -/
def P2046969021679923854.Spec : Prop :=
  ∀ n, (P2046969021679923854.a n : ℤ) = A088840 (n + 1)

end A088840

/-! ## A088840.P11377009382311148610

`and(A038712(n+1), A088839(n+1))`
-/

namespace A088840.P11377009382311148610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038712 (n + 1)) (A088839 (n + 1))

end

end A088840.P11377009382311148610

namespace A088840

/-- `and(A038712(n+1), A088839(n+1))` -/
def P11377009382311148610.Spec : Prop :=
  ∀ n, P11377009382311148610.a n = A088840 (n + 1)

end A088840

/-! ## A088840.P14508808290338547160

`A000203(n+1)/A000203(A065883(n+1))`
-/

namespace A088840.P14508808290338547160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A000203 (A065883 (n + 1)).toNat : ℚ)

end

end A088840.P14508808290338547160

namespace A088840

/-- `A000203(n+1)/A000203(A065883(n+1))` -/
def P14508808290338547160.Spec : Prop :=
  ∀ n, P14508808290338547160.a n = (A088840 (n + 1) : ℚ)

end A088840

/-! ## A088840.P15298153098599954881

`and(A324054(n)/A324056(n), A088839(n+1))`
-/

namespace A088840.P15298153098599954881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A324054 n : ℚ) / (A324056 n : ℚ))) (A088839 (n + 1))

end

end A088840.P15298153098599954881

namespace A088840

/-- `and(A324054(n)/A324056(n), A088839(n+1))` -/
def P15298153098599954881.Spec : Prop :=
  ∀ n, P15298153098599954881.a n = A088840 (n + 1)

end A088840

/-! ## A088840.P7948622594744570875

`A051176(xor(n, n+1))`
-/

namespace A088840.P7948622594744570875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (Nat.xor n (n + 1))

end

end A088840.P7948622594744570875

namespace A088840

/-- `A051176(xor(n, n+1))` -/
def P7948622594744570875.Spec : Prop :=
  ∀ n, P7948622594744570875.a n = A088840 (n + 1)

end A088840

/-! ## A088840.P6592861478216873673

`A051724(xor(n, n+1))`
-/

namespace A088840.P6592861478216873673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (Nat.xor n (n + 1))

end

end A088840.P6592861478216873673

namespace A088840

/-- `A051724(xor(n, n+1))` -/
def P6592861478216873673.Spec : Prop :=
  ∀ n, P6592861478216873673.a n = A088840 (n + 1)

end A088840

/-! ## A088840.P1229530876167712875

`A060789(xor(n, n+1))`
-/

namespace A088840.P1229530876167712875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (Nat.xor n (n + 1))

end

end A088840.P1229530876167712875

namespace A088840

/-- `A060789(xor(n, n+1))` -/
def P1229530876167712875.Spec : Prop :=
  ∀ n, P1229530876167712875.a n = A088840 (n + 1)

end A088840

/-! ## A088840.P14878667740298104849

`A237109(xor(n, n+1))`
-/

namespace A088840.P14878667740298104849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237109 (Nat.xor n (n + 1))

end

end A088840.P14878667740298104849

namespace A088840

/-- `A237109(xor(n, n+1))` -/
def P14878667740298104849.Spec : Prop :=
  ∀ n, P14878667740298104849.a n = A088840 (n + 1)

end A088840

/-!
# A088841: Numerator of the quotient sigma(7*n)/sigma(n).

The programs for A088841, the canonical program `A088841.P2753975684504278088` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088841 has offset 1).

The definition of A088841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088841.P2753975684504278088

`(49*A268354(n+1)-1)/6`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A088841

/-- `(49*A268354(n+1)-1)/6` -/
def P2753975684504278088.Spec : Prop :=
  ∀ n, P2753975684504278088.a n = (A088841 (n + 1) : ℚ)

end A088841

/-!
# A088842: Denominator of the quotient sigma(7n)/sigma(n).

The programs for A088842, the canonical program `A088842.P7248266099460611514` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088842 has offset 1).

The definition of A088842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088842.P7248266099460611514

`(7^(val(n+1, 7)+1)-1)/6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088842

/-- `(7^(val(n+1, 7)+1)-1)/6` -/
def P7248266099460611514.Spec : Prop :=
  ∀ n, P7248266099460611514.a n = (A088842 (n + 1) : ℚ)

end A088842

/-!
# A088843: Number of divisors of multiply-perfect numbers.

The programs for A088843, there is no canonical definition to state claims against.
-/

/-! ## A088843.P9364192496438170085

`A000005(A007691(n+1))`
-/

namespace A088843.P9364192496438170085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007691 (n + 1)).toNat

end

end A088843.P9364192496438170085

/-! ## A088843.P2486072684841866206

`∑{d}[A320024(n+1), A134665(n+1)-(-1)^#]`
-/

namespace A088843.P2486072684841866206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A134665 (n + 1) - (-1) ^ d)

end

end A088843.P2486072684841866206

/-! ## A088843.P289971852817359825

`∏{e}[A348031(n+1), #+1]`
-/

namespace A088843.P289971852817359825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348031 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A088843.P289971852817359825

/-! ## A088843.P18118179399138394305

`∏{e}[A089748(n+1)-floor(acot(n)), #+1]`
-/

namespace A088843.P18118179399138394305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089748 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A088843.P18118179399138394305

/-! ## A088843.P8573750389382164746

`∏{e}[A089748(n+1), A178334(n)+#]`
-/

namespace A088843.P8573750389382164746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A178334 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A088843.P8573750389382164746

/-!
# A088847: a(n) = sigma(A087979(n)) / phi(A087979(n)).

The programs for A088847, there is no canonical definition to state claims against.
-/

/-! ## A088847.P6733534439168062671

`xor(A014684(n+1), A132440(A262294(n+2)))`
-/

namespace A088847.P6733534439168062671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014684 (n + 1)) (A132440 (A262294 (n + 2)).toNat)

end

end A088847.P6733534439168062671

/-! ## A088847.P11601470756044295396

`A000203(A087979(n+1))/A000010(A087979(n+1))`
-/

namespace A088847.P11601470756044295396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A087979 (n + 1)).toNat : ℚ) / (A000010 (A087979 (n + 1)).toNat : ℚ)

end

end A088847.P11601470756044295396

/-! ## A088847.P1320565907154688784

`xor(A014684(n+1), A039964(A224173(n+1)))`
-/

namespace A088847.P1320565907154688784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014684 (n + 1)) (A039964 (A224173 (n + 1)).toNat)

end

end A088847.P1320565907154688784

/-! ## A088847.P15205183213284580203

`n+1-A307247((n+3)^3)`
-/

namespace A088847.P15205183213284580203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A307247 ((n + 3) ^ 3)

end

end A088847.P15205183213284580203

/-! ## A088847.P4512555644878573913

`A070032(A087979(n+1))`
-/

namespace A088847.P4512555644878573913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070032 (A087979 (n + 1)).toNat

end

end A088847.P4512555644878573913

/-!
# A088848: Number of prime factors, without multiplicity, of numbers that can be expressed as the sum of two distinct 4th powers in exactly two distinct ways.

The programs for A088848, there is no canonical definition to state claims against.
-/

/-! ## A088848.P13015737975224613191

`A088849(n+1)-A088918(A191852(n+4))`
-/

namespace A088848.P13015737975224613191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088849 (n + 1) - A088918 (A191852 (n + 4)).toNat

end

end A088848.P13015737975224613191

/-! ## A088848.P5532731193967313362

`A088849(n+1)-A297045(A260218(n+1))`
-/

namespace A088848.P5532731193967313362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088849 (n + 1) - A297045 (A260218 (n + 1)).toNat

end

end A088848.P5532731193967313362

/-! ## A088848.P11991079999333707147

`A088849(n+1)-A185284(A006519(2*(n+1)))`
-/

namespace A088848.P11991079999333707147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088849 (n + 1) - A185284 (A006519 (2 * (n + 1))).toNat

end

end A088848.P11991079999333707147

/-! ## A088848.P11487476722159889890

`A088849(or(A328617(n+1), A343180(n)))`
-/

namespace A088848.P11487476722159889890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088849 (Int.lor (A328617 (n + 1)) (A343180 n)).toNat

end

end A088848.P11487476722159889890

/-! ## A088848.P12507592312201673204

`A088849(n+1)-A088918(A088766(n+1))`
-/

namespace A088848.P12507592312201673204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088849 (n + 1) - A088918 (A088766 (n + 1)).toNat

end

end A088848.P12507592312201673204

/-!
# A088849: Number of prime factors, with multiplicity, of numbers that can be expressed as the sum of two distinct 4th powers in exactly two distinct ways.

The programs for A088849, there is no canonical definition to state claims against.
-/

/-! ## A088849.P7600744856616889862

`or(A088848(n+1), A101637(A048266(n+1)))`
-/

namespace A088849.P7600744856616889862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088848 (n + 1)) (A101637 (A048266 (n + 1)).toNat)

end

end A088849.P7600744856616889862

/-! ## A088849.P13370963942013012619

`or(A055641(A094670(n)), A088848(n+1))`
-/

namespace A088849.P13370963942013012619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A094670 n).toNat) (A088848 (n + 1))

end

end A088849.P13370963942013012619

/-! ## A088849.P6859323366063557762

`A088918(A191852(n+4))+A088848(n+1)`
-/

namespace A088849.P6859323366063557762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088918 (A191852 (n + 4)).toNat + A088848 (n + 1)

end

end A088849.P6859323366063557762

/-! ## A088849.P2240494698465508504

`A088848(Δ[A055645(n)]+n)`
-/

namespace A088849.P2240494698465508504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088848 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A088849.P2240494698465508504

/-! ## A088849.P18113120545414973625

`A297045(A260218(n+1))+A088848(n+1)`
-/

namespace A088849.P18113120545414973625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297045 (A260218 (n + 1)).toNat + A088848 (n + 1)

end

end A088849.P18113120545414973625

/-!
# A088850: Number of different values of k when A056239(k) = A056239(k+1) = n.

The programs for A088850, there is no canonical definition to state claims against.
-/

/-! ## A088850.P4592788866295461967

`A336525(A072480(n))%A000006(n+1)`
-/

namespace A088850.P4592788866295461967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336525 (A072480 n).toNat) (A000006 (n + 1))

end

end A088850.P4592788866295461967

/-! ## A088850.P2579746537735570593

`and(A001222(A073225(n)), A081702(n+1))`
-/

namespace A088850.P2579746537735570593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A073225 n).toNat) (A081702 (n + 1))

end

end A088850.P2579746537735570593

/-! ## A088850.P16469144597029267878

`A304038(A103314(n))%A304038(3*n+4)`
-/

namespace A088850.P16469144597029267878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304038 (A103314 n).toNat) (A304038 (3 * n + 4))

end

end A088850.P16469144597029267878

/-!
# A088852: Number of n X n matrices over GF(4) with characteristic polynomial x^(n-1) * (x-1).

The programs for A088852, the canonical program `A088852.P14421513276244280375` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088852 has offset 1).

The definition of A088852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088852.P14421513276244280375

`4/3*(4^((n+1)²-(n+1))-4^((n+1)²-2*(n+1)))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088852

/-- `4/3*(4^((n+1)²-(n+1))-4^((n+1)²-2*(n+1)))` -/
def P14421513276244280375.Spec : Prop :=
  ∀ n, P14421513276244280375.a n = (A088852 (n + 1) : ℚ)

end A088852

/-! ## A088852.P8141793811002727585

`A181666(A128091(n+1))`
-/

namespace A088852.P8141793811002727585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181666 (A128091 (n + 1)).toNat

end

end A088852.P8141793811002727585

namespace A088852

/-- `A181666(A128091(n+1))` -/
def P8141793811002727585.Spec : Prop :=
  ∀ n, P8141793811002727585.a n = A088852 (n + 1)

end A088852

/-! ## A088852.P9146051702309420765

`lcm((A131572(A005843(n))^n)², ∑[4^n])`
-/

namespace A088852.P9146051702309420765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((A131572 (A005843 n).toNat ^ n) ^ 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A088852.P9146051702309420765

namespace A088852

/-- `lcm((A131572(A005843(n))^n)², ∑[4^n])` -/
def P9146051702309420765.Spec : Prop :=
  ∀ n, (P9146051702309420765.a n : ℤ) = A088852 (n + 1)

end A088852

/-!
# A088853: Number of n X n matrices over GF(5) with characteristic polynomial x^(n-1) * (x-1).

The programs for A088853, the canonical program `A088853.P7056644555915492754` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088853 has offset 1).

The definition of A088853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088853.P7056644555915492754

`5/4*(5^((n+1)²-(n+1))-5^((n+1)²-2*(n+1)))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088853

/-- `5/4*(5^((n+1)²-(n+1))-5^((n+1)²-2*(n+1)))` -/
def P7056644555915492754.Spec : Prop :=
  ∀ n, P7056644555915492754.a n = (A088853 (n + 1) : ℚ)

end A088853

/-!
# A088854: a(n) = (2^(n-1))*(Integral_{x=0..1} (1+x^2)^n dx)/(Integral_{x=0..1} (1-x^2)^n dx).

The programs for A088854, the canonical program `A088854.P10746783587059510090` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088854 has offset 1).

The definition of A088854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088854.P10746783587059510090

`A001700(n)+2*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088854

/-- `A001700(n)+2*a(n-1)` -/
def P10746783587059510090.Spec : Prop :=
  ∀ n, P10746783587059510090.a n = A088854 (n + 1)

theorem P10746783587059510090.correct : P10746783587059510090.Spec := by
  intro n
  simp only [A088854, Nat.add_sub_cancel]

end A088854

/-! ## A088854.P4005071286644258155

`A088218(n+1)+2*a(n-1)` with `a(0)=2`
-/

namespace A088854.P4005071286644258155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A088218 (n + 1) + 2 * a (n - 1)

end

end A088854.P4005071286644258155

namespace A088854

/-- `A088218(n+1)+2*a(n-1)` -/
def P4005071286644258155.Spec : Prop :=
  ∀ n, P4005071286644258155.a n = A088854 (n + 1)

end A088854

/-! ## A088854.P14470596246838123832

`A001405(2*n+1)+2*a(n-1)` with `a(0)=2`
-/

namespace A088854.P14470596246838123832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001405 (2 * n + 1) + 2 * a (n - 1)

end

end A088854.P14470596246838123832

namespace A088854

/-- `A001405(2*n+1)+2*a(n-1)` -/
def P14470596246838123832.Spec : Prop :=
  ∀ n, P14470596246838123832.a n = A088854 (n + 1)

end A088854

/-! ## A088854.P14610808061683721916

`A082590(n)+A001700(n)`
-/

namespace A088854.P14610808061683721916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082590 n + A001700 n

end

end A088854.P14610808061683721916

namespace A088854

/-- `A082590(n)+A001700(n)` -/
def P14610808061683721916.Spec : Prop :=
  ∀ n, P14610808061683721916.a n = A088854 (n + 1)

end A088854

/-! ## A088854.P5079063223779432266

`A085781(n)+A014318(n)`
-/

namespace A088854.P5079063223779432266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085781 n + A014318 n

end

end A088854.P5079063223779432266

namespace A088854

/-- `A085781(n)+A014318(n)` -/
def P5079063223779432266.Spec : Prop :=
  ∀ n, P5079063223779432266.a n = A088854 (n + 1)

end A088854

/-! ## A088854.P15198974303172465063

`A134635(n)+A051944(n)`
-/

namespace A088854.P15198974303172465063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134635 n + A051944 n

end

end A088854.P15198974303172465063

namespace A088854

/-- `A134635(n)+A051944(n)` -/
def P15198974303172465063.Spec : Prop :=
  ∀ n, P15198974303172465063.a n = A088854 (n + 1)

end A088854

/-! ## A088854.P4256326355498839203

`A001700(n)+∑[A188622(n)]`
-/

namespace A088854.P4256326355498839203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088854.P4256326355498839203

namespace A088854

/-- `A001700(n)+∑[A188622(n)]` -/
def P4256326355498839203.Spec : Prop :=
  ∀ n, P4256326355498839203.a n = A088854 (n + 1)

end A088854

/-! ## A088854.P13600316164508380837

`A082590(n)+record[A057977(n)]`
-/

namespace A088854.P13600316164508380837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082590 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088854.P13600316164508380837

namespace A088854

/-- `A082590(n)+record[A057977(n)]` -/
def P13600316164508380837.Spec : Prop :=
  ∀ n, P13600316164508380837.a n = A088854 (n + 1)

end A088854

/-! ## A088854.P14261053848999392359

`A188622(n+1)-A001700(n)`
-/

namespace A088854.P14261053848999392359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188622 (n + 1) - A001700 n

end

end A088854.P14261053848999392359

namespace A088854

/-- `A188622(n+1)-A001700(n)` -/
def P14261053848999392359.Spec : Prop :=
  ∀ n, P14261053848999392359.a n = A088854 (n + 1)

end A088854

/-! ## A088854.P14416227283405726876

`A082590(n)+A001405(2*n+1)`
-/

namespace A088854.P14416227283405726876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082590 n + A001405 (2 * n + 1)

end

end A088854.P14416227283405726876

namespace A088854

/-- `A082590(n)+A001405(2*n+1)` -/
def P14416227283405726876.Spec : Prop :=
  ∀ n, P14416227283405726876.a n = A088854 (n + 1)

end A088854

/-! ## A088854.P10952650288041621579

`A082590(n)+A057977(2*n+1)`
-/

namespace A088854.P10952650288041621579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082590 n + A057977 (2 * n + 1)

end

end A088854.P10952650288041621579

namespace A088854

/-- `A082590(n)+A057977(2*n+1)` -/
def P10952650288041621579.Spec : Prop :=
  ∀ n, P10952650288041621579.a n = A088854 (n + 1)

end A088854

/-! ## A088854.P17280730449329713078

`A000984(n+1)-A126966(n+1)/2`
-/

namespace A088854.P17280730449329713078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) - (A126966 (n + 1) : ℚ) / 2

end

end A088854.P17280730449329713078

namespace A088854

/-- `A000984(n+1)-A126966(n+1)/2` -/
def P17280730449329713078.Spec : Prop :=
  ∀ n, P17280730449329713078.a n = (A088854 (n + 1) : ℚ)

end A088854

/-! ## A088854.P18063653303732258367

`A188622(n+1)-A000984(n+1)/2`
-/

namespace A088854.P18063653303732258367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188622 (n + 1) : ℚ) - (A000984 (n + 1) : ℚ) / 2

end

end A088854.P18063653303732258367

namespace A088854

/-- `A188622(n+1)-A000984(n+1)/2` -/
def P18063653303732258367.Spec : Prop :=
  ∀ n, P18063653303732258367.a n = (A088854 (n + 1) : ℚ)

end A088854

/-! ## A088854.P14508112305270924539

`A082590(n+1)/2`
-/

namespace A088854.P14508112305270924539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082590 (n + 1) : ℚ) / 2

end

end A088854.P14508112305270924539

namespace A088854

/-- `A082590(n+1)/2` -/
def P14508112305270924539.Spec : Prop :=
  ∀ n, P14508112305270924539.a n = (A088854 (n + 1) : ℚ)

end A088854

/-! ## A088854.P1880963128029709507

`(A162551(n+1)+A134635(n+1))/2`
-/

namespace A088854.P1880963128029709507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162551 (n + 1) + A134635 (n + 1) : ℚ) / 2

end

end A088854.P1880963128029709507

namespace A088854

/-- `(A162551(n+1)+A134635(n+1))/2` -/
def P1880963128029709507.Spec : Prop :=
  ∀ n, P1880963128029709507.a n = (A088854 (n + 1) : ℚ)

end A088854

/-! ## A088854.P9373701711892590554

`(A108958(n+2)+A014318(n+1))/2`
-/

namespace A088854.P9373701711892590554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108958 (n + 2) + A014318 (n + 1) : ℚ) / 2

end

end A088854.P9373701711892590554

namespace A088854

/-- `(A108958(n+2)+A014318(n+1))/2` -/
def P9373701711892590554.Spec : Prop :=
  ∀ n, P9373701711892590554.a n = (A088854 (n + 1) : ℚ)

end A088854

/-! ## A088854.P10145445824834369144

`(A028329(n+1)-A126966(n+1))/2`
-/

namespace A088854.P10145445824834369144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028329 (n + 1) - A126966 (n + 1) : ℚ) / 2

end

end A088854.P10145445824834369144

namespace A088854

/-- `(A028329(n+1)-A126966(n+1))/2` -/
def P10145445824834369144.Spec : Prop :=
  ∀ n, P10145445824834369144.a n = (A088854 (n + 1) : ℚ)

end A088854

/-! ## A088854.P14945602948623280097

`C(2*n+1, n)+2*a(n-1)` with `a(0)=2`
-/

namespace A088854.P14945602948623280097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.choose (2 * n + 1) n + 2 * a (n - 1)

end

end A088854.P14945602948623280097

namespace A088854

/-- `C(2*n+1, n)+2*a(n-1)` -/
def P14945602948623280097.Spec : Prop :=
  ∀ n, (P14945602948623280097.a n : ℤ) = A088854 (n + 1)

end A088854

/-!
# A088855: Triangle read by rows: number of symmetric Dyck paths of semilength n with k peaks.

The programs for A088855, there is no canonical definition to state claims against.
-/

/-! ## A088855.P2701296998496914317

`A172101(comp[∑[n]])`
-/

namespace A088855.P2701296998496914317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172101 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A088855.P2701296998496914317

/-! ## A088855.P1252851157174819118

`2*A209612(n+1)-A209805(n+1)`
-/

namespace A088855.P1252851157174819118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209612 (n + 1) - A209805 (n + 1)

end

end A088855.P1252851157174819118

/-! ## A088855.P1155064096054353991

`filter[A172101(n+1), A145568(#)]`
-/

namespace A088855.P1155064096054353991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A088855.P1155064096054353991

/-! ## A088855.P15748638944864209676

`A104856(n)/A001405(A003056(n))`
-/

namespace A088855.P15748638944864209676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104856 n : ℚ) / (A001405 (A003056 n).toNat : ℚ)

end

end A088855.P15748638944864209676

/-! ## A088855.P12124817067878619658

`A034851(n)-A353558(A305769(n+1))`
-/

namespace A088855.P12124817067878619658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 n - A353558 (A305769 (n + 1)).toNat

end

end A088855.P12124817067878619658

/-!
# A088856: Primes p such that cyclotomic(p,p-1) is prime.

The programs for A088856, there is no canonical definition to state claims against.
-/

/-! ## A088856.P15430977220128385591

`A101753(n+1)+1`
-/

namespace A088856.P15430977220128385591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101753 (n + 1) + 1

end

end A088856.P15430977220128385591

/-!
# A088857: Let Product[1+Sum[b(i,j) x^(i*j),{i,1,Infinity}],{j,1,Infinity}]=1+Sum[c(n) x^n,{n,1,Infinity}], where b(i,j) is plus or minus one and c(n) is plus or minus one or zero. Furthermore, let b(1,1)=1 (for definiteness). Then, for a given n, a(n) is the number of ways in which the coefficients b(i,j) i<=n, j<=n can be chosen.

The programs for A088857, there is no canonical definition to state claims against.
-/

/-! ## A088857.P860199155255602282

`A071383(n+1)+A013597(A330628(n))`
-/

namespace A088857.P860199155255602282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071383 (n + 1) + A013597 (A330628 n).toNat

end

end A088857.P860199155255602282

/-!
# A088858: Define a Fibonacci-type sequence to be one of the form s(0) = s_1 >= 1, s(1) = s_2 >= 1, s(n+2) = s(n+1) + s(n); then a(n) = maximal m such that n is the m-th term in some Fibonacci-type sequence.

The programs for A088858, there is no canonical definition to state claims against.
-/

/-! ## A088858.P3943618849421517166

`A088527(n+1)-1`
-/

namespace A088858.P3943618849421517166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088527 (n + 1) - 1

end

end A088858.P3943618849421517166

/-! ## A088858.P16723434612149013018

`A153881(n+2)+A088527(n+1)`
-/

namespace A088858.P16723434612149013018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A088527 (n + 1)

end

end A088858.P16723434612149013018

/-! ## A088858.P2197666192201344152

`A118830(or(1, n))+A088527(n+1)`
-/

namespace A088858.P2197666192201344152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (Nat.lor 1 n) + A088527 (n + 1)

end

end A088858.P2197666192201344152

/-! ## A088858.P750808757395430132

`A118830(Δ[n²])+A088527(n+1)`
-/

namespace A088858.P750808757395430132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A088527 (n + 1)

end

end A088858.P750808757395430132

/-! ## A088858.P7655897723524287793

`A001478(n+1)+A088527(n+1)+n`
-/

namespace A088858.P7655897723524287793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A088527 (n + 1) + (n : ℤ))

end

end A088858.P7655897723524287793

/-! ## A088858.P104965531755476440

`A002260(A088527(n+1)+A000096(n))`
-/

namespace A088858.P104965531755476440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A088527 (n + 1) + A000096 n).toNat

end

end A088858.P104965531755476440

/-! ## A088858.P16885362421671465612

`A002262(A088527(n+1)+A000096(n))`
-/

namespace A088858.P16885362421671465612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A088527 (n + 1) + A000096 n).toNat

end

end A088858.P16885362421671465612

/-! ## A088858.P5286376378871114129

`A291914(A000040(n+1))+A088527(n+1)`
-/

namespace A088858.P5286376378871114129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A000040 (n + 1)).toNat + A088527 (n + 1)

end

end A088858.P5286376378871114129

/-! ## A088858.P12222631491388637958

`A320836(A020639(2*(n+1)))+A088527(n+1)`
-/

namespace A088858.P12222631491388637958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320836 (A020639 (2 * (n + 1))).toNat + A088527 (n + 1)

end

end A088858.P12222631491388637958

/-!
# A088859: a(n) = L(n) + 2^n where L(n) = A000032(n) (the Lucas numbers).

The programs for A088859, the canonical program `A088859.P599114576272960011` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088859 has offset 0).

The definition of A088859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088859.P599114576272960011

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=3, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088859

/-- `3*a(n-1)-a(n-2)-2*a(n-3)` -/
def P599114576272960011.Spec : Prop :=
  ∀ n, P599114576272960011.a n = A088859 n

theorem P599114576272960011.correct : P599114576272960011.Spec := by
  intro n
  simp only [A088859]

end A088859

/-! ## A088859.P11493118573669600630

`ogf((3-6x+x^2)/(1-3x+x^2+2x^3))`
-/

namespace A088859.P11493118573669600630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, 1] [1, -3, 1, 2] n

end

end A088859.P11493118573669600630

namespace A088859

/-- `ogf((3-6x+x^2)/(1-3x+x^2+2x^3))` -/
def P11493118573669600630.Spec : Prop :=
  ∀ n, P11493118573669600630.a n = A088859 n

end A088859

/-! ## A088859.P9230865515556790812

`A000032(n)+2^n`
-/

namespace A088859.P9230865515556790812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (2 ^ n : ℤ)

end

end A088859.P9230865515556790812

namespace A088859

/-- `A000032(n)+2^n` -/
def P9230865515556790812.Spec : Prop :=
  ∀ n, P9230865515556790812.a n = A088859 n

end A088859

/-! ## A088859.P2603981887402276119

`A329723(n+2)+2^n`
-/

namespace A088859.P2603981887402276119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 2) + (2 ^ n : ℤ)

end

end A088859.P2603981887402276119

namespace A088859

/-- `A329723(n+2)+2^n` -/
def P2603981887402276119.Spec : Prop :=
  ∀ n, P2603981887402276119.a n = A088859 n

end A088859

/-! ## A088859.P10602372401984812963

`or(2^n, A000032(or(n, char[1])))`
-/

namespace A088859.P10602372401984812963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A000032 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0)))

end

end A088859.P10602372401984812963

namespace A088859

/-- `or(2^n, A000032(or(n, char[1])))` -/
def P10602372401984812963.Spec : Prop :=
  ∀ n, P10602372401984812963.a n = A088859 n

end A088859

/-! ## A088859.P16991319674620237899

`or(2^n, A000032(2*n-n))`
-/

namespace A088859.P16991319674620237899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A000032 (2 * n - n))

end

end A088859.P16991319674620237899

namespace A088859

/-- `or(2^n, A000032(2*n-n))` -/
def P16991319674620237899.Spec : Prop :=
  ∀ n, P16991319674620237899.a n = A088859 n

end A088859

/-! ## A088859.P8443521461796687579

`A000079(n)+A000032(n)`
-/

namespace A088859.P8443521461796687579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A000032 n

end

end A088859.P8443521461796687579

namespace A088859

/-- `A000079(n)+A000032(n)` -/
def P8443521461796687579.Spec : Prop :=
  ∀ n, P8443521461796687579.a n = A088859 n

end A088859

/-! ## A088859.P7905945812938078823

`A000918(n)+A000211(n)`
-/

namespace A088859.P7905945812938078823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + A000211 n

end

end A088859.P7905945812938078823

namespace A088859

/-- `A000918(n)+A000211(n)` -/
def P7905945812938078823.Spec : Prop :=
  ∀ n, P7905945812938078823.a n = A088859 n

end A088859

/-! ## A088859.P565466985107821147

`A001612(n)+A000225(n)`
-/

namespace A088859.P565466985107821147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n + A000225 n

end

end A088859.P565466985107821147

namespace A088859

/-- `A001612(n)+A000225(n)` -/
def P565466985107821147.Spec : Prop :=
  ∀ n, P565466985107821147.a n = A088859 n

end A088859

/-! ## A088859.P2136500289558088935

`A027934(n)+A013655(n)`
-/

namespace A088859.P2136500289558088935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 n + A013655 n

end

end A088859.P2136500289558088935

namespace A088859

/-- `A027934(n)+A013655(n)` -/
def P2136500289558088935.Spec : Prop :=
  ∀ n, P2136500289558088935.a n = A088859 n

end A088859

/-! ## A088859.P18080866441290329615

`A052531(n)+A014217(n)`
-/

namespace A088859.P18080866441290329615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052531 n + A014217 n

end

end A088859.P18080866441290329615

namespace A088859

/-- `A052531(n)+A014217(n)` -/
def P18080866441290329615.Spec : Prop :=
  ∀ n, P18080866441290329615.a n = A088859 n

end A088859

/-! ## A088859.P9297165506844039760

`A098600(n)+A014551(n)`
-/

namespace A088859.P9297165506844039760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 n + A014551 n

end

end A088859.P9297165506844039760

namespace A088859

/-- `A098600(n)+A014551(n)` -/
def P9297165506844039760.Spec : Prop :=
  ∀ n, P9297165506844039760.a n = A088859 n

end A088859

/-! ## A088859.P7637691404298954021

`A062724(n)+A051049(n)`
-/

namespace A088859.P7637691404298954021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062724 n + A051049 n

end

end A088859.P7637691404298954021

namespace A088859

/-- `A062724(n)+A051049(n)` -/
def P7637691404298954021.Spec : Prop :=
  ∀ n, P7637691404298954021.a n = A088859 n

end A088859

/-! ## A088859.P13331408029202784231

`A099430(n)+A020878(n)`
-/

namespace A088859.P13331408029202784231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099430 n + A020878 n

end

end A088859.P13331408029202784231

namespace A088859

/-- `A099430(n)+A020878(n)` -/
def P13331408029202784231.Spec : Prop :=
  ∀ n, P13331408029202784231.a n = A088859 n

end A088859

/-! ## A088859.P7079600905859743212

`A099925(n)+A062510(n)`
-/

namespace A088859.P7079600905859743212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099925 n + A062510 n

end

end A088859.P7079600905859743212

namespace A088859

/-- `A099925(n)+A062510(n)` -/
def P7079600905859743212.Spec : Prop :=
  ∀ n, P7079600905859743212.a n = A088859 n

end A088859

/-! ## A088859.P17789292305640372021

`A118658(n)+A117591(n)`
-/

namespace A088859.P17789292305640372021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A117591 n

end

end A088859.P17789292305640372021

namespace A088859

/-- `A118658(n)+A117591(n)` -/
def P17789292305640372021.Spec : Prop :=
  ∀ n, P17789292305640372021.a n = A088859 n

end A088859

/-! ## A088859.P10673043786874707736

`A232580(n)+A022403(n)`
-/

namespace A088859.P10673043786874707736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232580 n + A022403 n

end

end A088859.P10673043786874707736

namespace A088859

/-- `A232580(n)+A022403(n)` -/
def P10673043786874707736.Spec : Prop :=
  ∀ n, P10673043786874707736.a n = A088859 n

end A088859

/-! ## A088859.P12822994691425199061

`A212804(n)+A052956(n)`
-/

namespace A088859.P12822994691425199061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A052956 n

end

end A088859.P12822994691425199061

namespace A088859

/-- `A212804(n)+A052956(n)` -/
def P12822994691425199061.Spec : Prop :=
  ∀ n, P12822994691425199061.a n = A088859 n

end A088859

/-! ## A088859.P10267979915452264721

`∑[A011782(n)]+A000032(n)`
-/

namespace A088859.P10267979915452264721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000032 n

end

end A088859.P10267979915452264721

namespace A088859

/-- `∑[A011782(n)]+A000032(n)` -/
def P10267979915452264721.Spec : Prop :=
  ∀ n, P10267979915452264721.a n = A088859 n

end A088859

/-! ## A088859.P2016723399780547659

`A011782(n+1)+A000032(n)`
-/

namespace A088859.P2016723399780547659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + A000032 n

end

end A088859.P2016723399780547659

namespace A088859

/-- `A011782(n+1)+A000032(n)` -/
def P2016723399780547659.Spec : Prop :=
  ∀ n, P2016723399780547659.a n = A088859 n

end A088859

/-!
# A088860: Twice the primorials (first definition), 2*A002110(n).

The programs for A088860, there is no canonical definition to state claims against.
-/

/-! ## A088860.P14705598582404096707

`2*A002110(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088860.P14705598582404096707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002110 (n + 1)

end

end A088860.P14705598582404096707

/-! ## A088860.P4385153715221699347

`A097250(n+1)`
-/

namespace A088860.P4385153715221699347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097250 (n + 1)

end

end A088860.P4385153715221699347

/-! ## A088860.P15955532684300836721

`lcm(4, A231209(n))`
-/

namespace A088860.P15955532684300836721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A231209 n)

end

end A088860.P15955532684300836721

/-! ## A088860.P15601128501199577841

`A370134(∑[n+1])`
-/

namespace A088860.P15601128501199577841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370134 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088860.P15601128501199577841

/-! ## A088860.P5130732031223603160

`A370121(∑[n+2])`
-/

namespace A088860.P5130732031223603160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370121 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088860.P5130732031223603160

/-! ## A088860.P14147775117059553846

`Δ[2*A143293(n)]`
-/

namespace A088860.P14147775117059553846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088860.P14147775117059553846

/-! ## A088860.P15405902568184681006

`A282704(n+1)+1`
-/

namespace A088860.P15405902568184681006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282704 (n + 1) + 1

end

end A088860.P15405902568184681006

/-! ## A088860.P8403330094374841035

`(A228698(n)+1)/2`
-/

namespace A088860.P8403330094374841035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228698 n + 1 : ℚ) / 2

end

end A088860.P8403330094374841035

/-! ## A088860.P8824413730906352843

`4*A070826(n+1)`
-/

namespace A088860.P8824413730906352843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A070826 (n + 1)

end

end A088860.P8824413730906352843

/-! ## A088860.P9426759814331225269

`A102476(n+2)/2`
-/

namespace A088860.P9426759814331225269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102476 (n + 2) : ℚ) / 2

end

end A088860.P9426759814331225269

/-!
# A088861: Third column of triangle in A088643.

The programs for A088861, there is no canonical definition to state claims against.
-/

/-! ## A088861.P13399221416586297221

`A088643(∑[n+2]+4)`
-/

namespace A088861.P13399221416586297221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088643 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A088861.P13399221416586297221

/-! ## A088861.P8599949255418200745

`A088643(A167614(n+1))%73`
-/

namespace A088861.P8599949255418200745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088643 (A167614 (n + 1)).toNat) 73

end

end A088861.P8599949255418200745

/-! ## A088861.P6762118784418158030

`A088643(A046691(n)+7)%82`
-/

namespace A088861.P6762118784418158030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088643 (A046691 n + 7).toNat) 82

end

end A088861.P6762118784418158030

/-! ## A088861.P1580725048058000943

`or(char[2], A088643(A152950(n+3)))`
-/

namespace A088861.P1580725048058000943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A088643 (A152950 (n + 3)).toNat)

end

end A088861.P1580725048058000943

/-! ## A088861.P16143340060634957435

`n+3-A049711(A060265(n+3))`
-/

namespace A088861.P16143340060634957435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A049711 (A060265 (n + 3)).toNat

end

end A088861.P16143340060634957435

/-! ## A088861.P422716951167203974

`n+3-A049711(A060308(n+3))`
-/

namespace A088861.P422716951167203974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A049711 (A060308 (n + 3)).toNat

end

end A088861.P422716951167203974

/-! ## A088861.P9338322646949918897

`A088643(A055998(n)+6)%(n+2)`
-/

namespace A088861.P9338322646949918897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088643 (A055998 n + 6).toNat) (n + 2 : ℤ)

end

end A088861.P9338322646949918897

/-! ## A088861.P2891064178582265523

`A088643(A000217(n+2)+3)%(n+2)`
-/

namespace A088861.P2891064178582265523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088643 (A000217 (n + 2) + 3).toNat) (n + 2 : ℤ)

end

end A088861.P2891064178582265523

/-! ## A088861.P15591585647667753844

`∑{d}[A088643(A152950(n+3)), A000010(#)]`
-/

namespace A088861.P15591585647667753844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088643 (A152950 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A088861.P15591585647667753844

/-! ## A088861.P469428580963478632

`∑{d}[A088643(A046691(n)+7), A000010(#)]`
-/

namespace A088861.P469428580963478632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088643 (A046691 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A088861.P469428580963478632

/-!
# A088862: Smallest number with exactly n prime factors (possibly with repetitions) such that in binary representation the divisors >1 form a prefix code.

The programs for A088862, there is no canonical definition to state claims against.
-/

/-! ## A088862.P3076370326862238344

`(5^n)%(A071102(n+1)+1)`
-/

namespace A088862.P3076370326862238344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 ^ n : ℤ) (A071102 (n + 1) + 1)

end

end A088862.P3076370326862238344

/-! ## A088862.P12950327747791491930

`record[A328317(n)^(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A088862.P12950327747791491930
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328317 n : ℚ) ^ (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088862.P12950327747791491930

/-! ## A088862.P17939888291049665087

`A000027((A302254(n)+1)^n)`
-/

namespace A088862.P17939888291049665087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((A302254 n + 1) ^ n).toNat

end

end A088862.P17939888291049665087

/-!
# A088863: Number of prime factors of n-th Mersenne number M(p_n).

The programs for A088863, the canonical program `A088863.P3148194011983936159` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088863 has offset 1).

The definition of A088863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088863.P3148194011983936159

`A046051(p?[xor(1, n)])`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A088863

/-- `A046051(p?[xor(1, n)])` -/
def P3148194011983936159.Spec : Prop :=
  ∀ n, P3148194011983936159.a n = A088863 (n + 1)

theorem P3148194011983936159.correct : P3148194011983936159.Spec := by
  intro n
  simp only [A088863, Nat.add_sub_cancel]

end A088863

/-! ## A088863.P17960613890941205285

`A046800(p?[xor(1, n)])`
-/

namespace A088863.P17960613890941205285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088863.P17960613890941205285

namespace A088863

/-- `A046800(p?[xor(1, n)])` -/
def P17960613890941205285.Spec : Prop :=
  ∀ n, P17960613890941205285.a n = A088863 (n + 1)

end A088863

/-! ## A088863.P5850434984339799104

`A085021(p?[xor(1, n)])`
-/

namespace A088863.P5850434984339799104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085021 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088863.P5850434984339799104

namespace A088863

/-- `A085021(p?[xor(1, n)])` -/
def P5850434984339799104.Spec : Prop :=
  ∀ n, P5850434984339799104.a n = A088863 (n + 1)

end A088863

/-! ## A088863.P12210344284042880670

`A086251(p?[xor(1, n)])`
-/

namespace A088863.P12210344284042880670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088863.P12210344284042880670

namespace A088863

/-- `A086251(p?[xor(1, n)])` -/
def P12210344284042880670.Spec : Prop :=
  ∀ n, P12210344284042880670.a n = A088863 (n + 1)

end A088863

/-! ## A088863.P258925395349997351

`log2(A063982(p?[xor(1, n)+1]))`
-/

namespace A088863.P258925395349997351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A063982 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℝ)

end

end A088863.P258925395349997351

namespace A088863

/-- `log2(A063982(p?[xor(1, n)+1]))` -/
def P258925395349997351.Spec : Prop :=
  ∀ n, P258925395349997351.a n = (A088863 (n + 1) : ℝ)

end A088863

/-! ## A088863.P15493676848401120881

`A046800(p?[n-floor(n/5)])`
-/

namespace A088863.P15493676848401120881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088863.P15493676848401120881

namespace A088863

/-- `A046800(p?[n-floor(n/5)])` -/
def P15493676848401120881.Spec : Prop :=
  ∀ n, P15493676848401120881.a n = A088863 (n + 1)

end A088863

/-! ## A088863.P2537554560696919104

`∑{e}[A046801(p?[xor(1, n)+1]), #]`
-/

namespace A088863.P2537554560696919104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046801 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A088863.P2537554560696919104

namespace A088863

/-- `∑{e}[A046801(p?[xor(1, n)+1]), #]` -/
def P2537554560696919104.Spec : Prop :=
  ∀ n, (P2537554560696919104.a n : ℤ) = A088863 (n + 1)

end A088863

/-! ## A088863.P11793082156298993947

`A046051(Δ[A007504(n)])`
-/

namespace A088863.P11793082156298993947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (f1 (n + 1) - f1 n).toNat

end

end A088863.P11793082156298993947

namespace A088863

/-- `A046051(Δ[A007504(n)])` -/
def P11793082156298993947.Spec : Prop :=
  ∀ n, P11793082156298993947.a n = A088863 (n + 1)

end A088863

/-! ## A088863.P574373946309427208

`A046051(A000040(n+1))`
-/

namespace A088863.P574373946309427208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (A000040 (n + 1)).toNat

end

end A088863.P574373946309427208

namespace A088863

/-- `A046051(A000040(n+1))` -/
def P574373946309427208.Spec : Prop :=
  ∀ n, P574373946309427208.a n = A088863 (n + 1)

end A088863

/-! ## A088863.P17663128072142425804

`A046051(A008578(n+2))`
-/

namespace A088863.P17663128072142425804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (A008578 (n + 2)).toNat

end

end A088863.P17663128072142425804

namespace A088863

/-- `A046051(A008578(n+2))` -/
def P17663128072142425804.Spec : Prop :=
  ∀ n, P17663128072142425804.a n = A088863 (n + 1)

end A088863

/-! ## A088863.P5187963059088430366

`A085021(A116974(n+2))`
-/

namespace A088863.P5187963059088430366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085021 (A116974 (n + 2)).toNat

end

end A088863.P5187963059088430366

namespace A088863

/-- `A085021(A116974(n+2))` -/
def P5187963059088430366.Spec : Prop :=
  ∀ n, P5187963059088430366.a n = A088863 (n + 1)

end A088863

/-! ## A088863.P3494213371480633633

`A046051(A182986(n+2))`
-/

namespace A088863.P3494213371480633633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (A182986 (n + 2)).toNat

end

end A088863.P3494213371480633633

namespace A088863

/-- `A046051(A182986(n+2))` -/
def P3494213371480633633.Spec : Prop :=
  ∀ n, P3494213371480633633.a n = A088863 (n + 1)

end A088863

/-! ## A088863.P3816697322859280470

`A085021(A161428(n+2))`
-/

namespace A088863.P3816697322859280470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085021 (A161428 (n + 2)).toNat

end

end A088863.P3816697322859280470

namespace A088863

/-- `A085021(A161428(n+2))` -/
def P3816697322859280470.Spec : Prop :=
  ∀ n, P3816697322859280470.a n = A088863 (n + 1)

end A088863

/-! ## A088863.P16280725010709136866

`A085021(A162786(n+2))`
-/

namespace A088863.P16280725010709136866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085021 (A162786 (n + 2)).toNat

end

end A088863.P16280725010709136866

namespace A088863

/-- `A085021(A162786(n+2))` -/
def P16280725010709136866.Spec : Prop :=
  ∀ n, P16280725010709136866.a n = A088863 (n + 1)

end A088863

/-! ## A088863.P12396968094490687675

`A085021(A175787(n+2))`
-/

namespace A088863.P12396968094490687675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085021 (A175787 (n + 2)).toNat

end

end A088863.P12396968094490687675

namespace A088863

/-- `A085021(A175787(n+2))` -/
def P12396968094490687675.Spec : Prop :=
  ∀ n, P12396968094490687675.a n = A088863 (n + 1)

end A088863

/-! ## A088863.P18042797926289947540

`A046800(eq[1, A003415(n)])`
-/

namespace A088863.P18042797926289947540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A088863.P18042797926289947540

namespace A088863

/-- `A046800(eq[1, A003415(n)])` -/
def P18042797926289947540.Spec : Prop :=
  ∀ n, P18042797926289947540.a n = A088863 (n + 1)

end A088863

/-! ## A088863.P12659226950275107907

`A046800(eq[2, A007012(n)])`
-/

namespace A088863.P12659226950275107907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A088863.P12659226950275107907

namespace A088863

/-- `A046800(eq[2, A007012(n)])` -/
def P12659226950275107907.Spec : Prop :=
  ∀ n, P12659226950275107907.a n = A088863 (n + 1)

end A088863

/-! ## A088863.P10540268817326663561

`A046800(eq[2, A077462(n)])`
-/

namespace A088863.P10540268817326663561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A088863.P10540268817326663561

namespace A088863

/-- `A046800(eq[2, A077462(n)])` -/
def P10540268817326663561.Spec : Prop :=
  ∀ n, P10540268817326663561.a n = A088863 (n + 1)

end A088863

/-! ## A088863.P16417475341740898361

`A046800(eq[2, A092976(n)])`
-/

namespace A088863.P16417475341740898361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A088863.P16417475341740898361

namespace A088863

/-- `A046800(eq[2, A092976(n)])` -/
def P16417475341740898361.Spec : Prop :=
  ∀ n, P16417475341740898361.a n = A088863 (n + 1)

end A088863

/-! ## A088863.P12613012427549602551

`A046800(eq[2, A225244(n)])`
-/

namespace A088863.P12613012427549602551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A088863.P12613012427549602551

namespace A088863

/-- `A046800(eq[2, A225244(n)])` -/
def P12613012427549602551.Spec : Prop :=
  ∀ n, P12613012427549602551.a n = A088863 (n + 1)

end A088863

/-!
# A088864: Maximum of the products of left and right parts when splitting the binary representation of n.

The programs for A088864, there is no canonical definition to state claims against.
-/

/-! ## A088864.P12506879165563165079

`A330925(n+1)%A018502(n)`
-/

namespace A088864.P12506879165563165079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330925 (n + 1)) (A018502 n)

end

end A088864.P12506879165563165079

/-! ## A088864.P12294625862040940708

`A330925(C(A249817(n+1), n))`
-/

namespace A088864.P12294625862040940708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330925 (Nat.choose (A249817 (n + 1)).toNat n)

end

end A088864.P12294625862040940708

/-! ## A088864.P9995921549105617077

`A330925(C(A249818(n+1), n))`
-/

namespace A088864.P9995921549105617077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330925 (Nat.choose (A249818 (n + 1)).toNat n)

end

end A088864.P9995921549105617077

/-! ## A088864.P8120363006960497263

`∑[Δ[A330925(n)]%A216526(n+1)]`
-/

namespace A088864.P8120363006960497263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330925 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A216526 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088864.P8120363006960497263

/-! ## A088864.P17238183357418034889

`A330925(C(2, C(3, n²))+n)%A265630(2*n+5)`
-/

namespace A088864.P17238183357418034889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330925 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n)) (A265630 (2 * n + 5))

end

end A088864.P17238183357418034889

/-!
# A088865: (Sum of distinct prime factors)^(sum of prime exponents).

The programs for A088865, the canonical program `A088865.P6983350153569874486` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088865 has offset 1).

The definition of A088865 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088865.P6983350153569874486

`A008472(n+1)^A001222(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A088865

/-- `A008472(n+1)^A001222(n+1)` -/
def P6983350153569874486.Spec : Prop :=
  ∀ n, P6983350153569874486.a n = (A088865 (n + 1) : ℚ)

end A088865

/-! ## A088865.P8376914450819026063

`∑{p}[n+1, #]^∑{e}[n+1, #]`
-/

namespace A088865.P8376914450819026063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), p) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A088865.P8376914450819026063

namespace A088865

/-- `∑{p}[n+1, #]^∑{e}[n+1, #]` -/
def P8376914450819026063.Spec : Prop :=
  ∀ n, (P8376914450819026063.a n : ℤ) = A088865 (n + 1)

end A088865

/-! ## A088865.P5616332621398246670

`∑{p}[n+1, #]^∑{p}[n+1, val(n+1, #)]`
-/

namespace A088865.P5616332621398246670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), p) ^ (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (n + 1) p)

end

end A088865.P5616332621398246670

namespace A088865

/-- `∑{p}[n+1, #]^∑{p}[n+1, val(n+1, #)]` -/
def P5616332621398246670.Spec : Prop :=
  ∀ n, (P5616332621398246670.a n : ℤ) = A088865 (n + 1)

end A088865

/-! ## A088865.P14204497534797920612

`∑{p}[n+1, #]^Δ[A022559(n)]`
-/

namespace A088865.P14204497534797920612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

end

end A088865.P14204497534797920612

namespace A088865

/-- `∑{p}[n+1, #]^Δ[A022559(n)]` -/
def P14204497534797920612.Spec : Prop :=
  ∀ n, P14204497534797920612.a n = (A088865 (n + 1) : ℚ)

end A088865

/-! ## A088865.P7842848989144108460

`∑{p}[n+1, #]^val(A165825(n+1), 4)`
-/

namespace A088865.P7842848989144108460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), p) ^ SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4

end

end A088865.P7842848989144108460

namespace A088865

/-- `∑{p}[n+1, #]^val(A165825(n+1), 4)` -/
def P7842848989144108460.Spec : Prop :=
  ∀ n, (P7842848989144108460.a n : ℤ) = A088865 (n + 1)

end A088865

/-! ## A088865.P2096055153202484938

`A008475(∏{p}[n+1, #])^∑{e}[n+1, #]`
-/

namespace A088865.P2096055153202484938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A088865.P2096055153202484938

namespace A088865

/-- `A008475(∏{p}[n+1, #])^∑{e}[n+1, #]` -/
def P2096055153202484938.Spec : Prop :=
  ∀ n, P2096055153202484938.a n = A088865 (n + 1)

end A088865

/-! ## A088865.P2841577026516181838

`A023889(∏{p}[n+1, #])^A001222(n+1)`
-/

namespace A088865.P2841577026516181838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023889 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A088865.P2841577026516181838

namespace A088865

/-- `A023889(∏{p}[n+1, #])^A001222(n+1)` -/
def P2841577026516181838.Spec : Prop :=
  ∀ n, P2841577026516181838.a n = (A088865 (n + 1) : ℚ)

end A088865

/-! ## A088865.P12526953366961253043

`A001414(A007947(n+1))^A001222(n+1)`
-/

namespace A088865.P12526953366961253043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (A007947 (n + 1)).toNat : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A088865.P12526953366961253043

namespace A088865

/-- `A001414(A007947(n+1))^A001222(n+1)` -/
def P12526953366961253043.Spec : Prop :=
  ∀ n, P12526953366961253043.a n = (A088865 (n + 1) : ℚ)

end A088865

/-! ## A088865.P3931978984158917246

`A008472(n+1)^A051903(A061142(n+1))`
-/

namespace A088865.P3931978984158917246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℚ) ^ (A051903 (A061142 (n + 1)).toNat : ℤ)

end

end A088865.P3931978984158917246

namespace A088865

/-- `A008472(n+1)^A051903(A061142(n+1))` -/
def P3931978984158917246.Spec : Prop :=
  ∀ n, P3931978984158917246.a n = (A088865 (n + 1) : ℚ)

end A088865

/-! ## A088865.P230217700842404305

`(A344931(n+1)+A344908(n+1))^Δ[A022559(n)]`
-/

namespace A088865.P230217700842404305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344931 (n + 1) + A344908 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A088865.P230217700842404305

namespace A088865

/-- `(A344931(n+1)+A344908(n+1))^Δ[A022559(n)]` -/
def P230217700842404305.Spec : Prop :=
  ∀ n, P230217700842404305.a n = (A088865 (n + 1) : ℚ)

end A088865

/-! ## A088865.P10488033285980438623

`(A344931(n+1)+A344908(n+1))^A001222(n+1)`
-/

namespace A088865.P10488033285980438623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344931 (n + 1) + A344908 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A088865.P10488033285980438623

namespace A088865

/-- `(A344931(n+1)+A344908(n+1))^A001222(n+1)` -/
def P10488033285980438623.Spec : Prop :=
  ∀ n, P10488033285980438623.a n = (A088865 (n + 1) : ℚ)

end A088865

/-! ## A088865.P6516822339861712403

`(A344931(n+1)+A344908(n+1))^val(A165825(n+1), 4)`
-/

namespace A088865.P6516822339861712403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A344931 (n + 1) + A344908 (n + 1)) ^ SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4

end

end A088865.P6516822339861712403

namespace A088865

/-- `(A344931(n+1)+A344908(n+1))^val(A165825(n+1), 4)` -/
def P6516822339861712403.Spec : Prop :=
  ∀ n, P6516822339861712403.a n = A088865 (n + 1)

end A088865

/-! ## A088865.P1234701202027424609

`(A344931(n+1)+A344908(n+1))^(A057427(n)*A086436(n+1))`
-/

namespace A088865.P1234701202027424609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344931 (n + 1) + A344908 (n + 1) : ℚ) ^ (A057427 n * A086436 (n + 1) : ℤ)

end

end A088865.P1234701202027424609

namespace A088865

/-- `(A344931(n+1)+A344908(n+1))^(A057427(n)*A086436(n+1))` -/
def P1234701202027424609.Spec : Prop :=
  ∀ n, P1234701202027424609.a n = (A088865 (n + 1) : ℚ)

end A088865

/-! ## A088865.P9860613919338005115

`A280292(((n+1)/A003557(n+1))²)^A001222(n+1)`
-/

namespace A088865.P9860613919338005115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280292 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (A003557 (n + 1) : ℚ)) ^ 2)).toNat : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A088865.P9860613919338005115

namespace A088865

/-- `A280292(((n+1)/A003557(n+1))²)^A001222(n+1)` -/
def P9860613919338005115.Spec : Prop :=
  ∀ n, P9860613919338005115.a n = (A088865 (n + 1) : ℚ)

end A088865

/-! ## A088865.P4923582573422400183

`A008472(n+1)^A132896(A034856(n+1))`
-/

namespace A088865.P4923582573422400183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℚ) ^ (A132896 (A034856 (n + 1)).toNat : ℤ)

end

end A088865.P4923582573422400183

namespace A088865

/-- `A008472(n+1)^A132896(A034856(n+1))` -/
def P4923582573422400183.Spec : Prop :=
  ∀ n, P4923582573422400183.a n = (A088865 (n + 1) : ℚ)

end A088865

/-!
# A088866: Primes where flipping 6 and 9 is also prime.

The programs for A088866, there is no canonical definition to state claims against.
-/

/-! ## A088866.P7084288679543518267

`A222251(A180557(n+1))`
-/

namespace A088866.P7084288679543518267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A180557 (n + 1)).toNat

end

end A088866.P7084288679543518267

/-!
# A088869: Numbers n which are divisors of the number produced by concatenating (n-1), (n-2), ... (n-5) in that order.

The programs for A088869, there is no canonical definition to state claims against.
-/

/-! ## A088869.P4527487606751617941

`eq[5, A069862(A028310(n))]`
-/

namespace A088869.P4527487606751617941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069862 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088869.P4527487606751617941

/-! ## A088869.P1922815083136321333

`A109613(eq[5, A069862(n+1)])`
-/

namespace A088869.P1922815083136321333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A088869.P1922815083136321333

/-!
# A088873: Number of different values of A000005(d) where d is a divisor of n.

The programs for A088873, there is no canonical definition to state claims against.
-/

/-! ## A088873.P11726281404272245521

`round(log2(A319786((n+1)²)))+1`
-/

namespace A088873.P11726281404272245521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A319786 ((n + 1) ^ 2) : ℝ)) + 1

end

end A088873.P11726281404272245521

/-! ## A088873.P7884755794185110205

`A348553(round(log2(A319786((n+1)²))))`
-/

namespace A088873.P7884755794185110205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (SequenceMachineLib.roundAway (Real.logb 2 (A319786 ((n + 1) ^ 2) : ℝ))).toNat

end

end A088873.P7884755794185110205

/-! ## A088873.P16876889937046371876

`A345345(n+1)+A046951(A094548(n+1))`
-/

namespace A088873.P16876889937046371876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345345 (n + 1) + A046951 (A094548 (n + 1)).toNat

end

end A088873.P16876889937046371876

/-! ## A088873.P7208533310137604350

`A278055(A181796(n+1)%A191980(n+3))`
-/

namespace A088873.P7208533310137604350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278055 (Int.tmod (A181796 (n + 1)) (A191980 (n + 3))).toNat

end

end A088873.P7208533310137604350

/-! ## A088873.P14606996279340039826

`A319681(A181796(n+1))%A374253(n+1)`
-/

namespace A088873.P14606996279340039826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319681 (A181796 (n + 1)).toNat) (A374253 (n + 1))

end

end A088873.P14606996279340039826

/-!
# A088874: T(n, k) = [x^k] (2*n)! [z^(2*n)] 1/cos(z)^x, triangle read by rows, for 0 <= k <= n.

The programs for A088874, there is no canonical definition to state claims against.
-/

/-! ## A088874.P14117455280441471349

`abs(A318146(n))`
-/

namespace A088874.P14117455280441471349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A318146 n|

end

end A088874.P14117455280441471349

/-! ## A088874.P13303865937287255505

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A094665(n)`
-/

namespace A088874.P13303865937287255505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A094665 n : ℚ)

end

end A088874.P13303865937287255505

/-! ## A088874.P8825976922242999643

`A094665(n)*A130321(n)`
-/

namespace A088874.P8825976922242999643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 n * A130321 n

end

end A088874.P8825976922242999643

/-! ## A088874.P14042045470910463028

`A097807(n)*A318146(n)`
-/

namespace A088874.P14042045470910463028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A318146 n

end

end A088874.P14042045470910463028

/-! ## A088874.P15063803616297174962

`gcd(A000038(n), A318146(n))`
-/

namespace A088874.P15063803616297174962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A318146 n)

end

end A088874.P15063803616297174962

/-! ## A088874.P9571350313160391412

`lcm(A020985(n), A318146(n))`
-/

namespace A088874.P9571350313160391412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A318146 n)

end

end A088874.P9571350313160391412

/-! ## A088874.P4942870700585356883

`A057728(n+1)*A094665(n)`
-/

namespace A088874.P4942870700585356883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) * A094665 n

end

end A088874.P4942870700585356883

/-! ## A088874.P17014085997589998521

`A085734(n)/A083061(n)*A094665(n)`
-/

namespace A088874.P17014085997589998521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085734 n : ℚ) / (A083061 n : ℚ) * (A094665 n : ℚ)

end

end A088874.P17014085997589998521

/-!
# A088877: Numbers k that are divisors of the number formed by concatenating (k-1), k and (k+1), in that order.

The programs for A088877, there is no canonical definition to state claims against.
-/

/-! ## A088877.P3199406328734279406

`record[gcd(n+1, A001703(n))]`
-/

namespace A088877.P3199406328734279406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001703 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088877.P3199406328734279406

/-! ## A088877.P6666322656248396994

`record[gcd(A001703(n), A141310(n))]`
-/

namespace A088877.P6666322656248396994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001703 n) (A141310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088877.P6666322656248396994

/-! ## A088877.P13973715991264468668

`record[gcd(3*A074991(n), A000027(n+1))]`
-/

namespace A088877.P13973715991264468668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * A074991 n) (A000027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088877.P13973715991264468668

/-! ## A088877.P7106979982330705299

`record[gcd(A001703(2*n), A109613(2*n))]`
-/

namespace A088877.P7106979982330705299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001703 (2 * n)) (A109613 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088877.P7106979982330705299

/-!
# A088878: Prime numbers p such that 3p - 2 is a prime.

The programs for A088878, there is no canonical definition to state claims against.
-/

/-! ## A088878.P27062570564793988

`ceil(A091180(n+1)/3)`
-/

namespace A088878.P27062570564793988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A091180 (n + 1) : ℚ) / 3⌉

end

end A088878.P27062570564793988

/-! ## A088878.P18437815910832192408

`2*A174100(n+1)+1`
-/

namespace A088878.P18437815910832192408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174100 (n + 1) + 1

end

end A088878.P18437815910832192408

/-! ## A088878.P12833586132050558880

`A259677(n+1)/A091180(n+1)`
-/

namespace A088878.P12833586132050558880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259677 (n + 1) : ℚ) / (A091180 (n + 1) : ℚ)

end

end A088878.P12833586132050558880

/-! ## A088878.P13704120355287304474

`(p?[3*A000040(n+1)-2]+2)/3`
-/

namespace A088878.P13704120355287304474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2 : ℚ) / 3

end

end A088878.P13704120355287304474

/-! ## A088878.P501445009919706174

`A000040(A091179(n+1))`
-/

namespace A088878.P501445009919706174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091179 (n + 1)).toNat

end

end A088878.P501445009919706174

/-! ## A088878.P5027268844774321670

`A006005(A057427(n+1)*A091179(n+1))`
-/

namespace A088878.P5027268844774321670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A057427 (n + 1) * A091179 (n + 1)).toNat

end

end A088878.P5027268844774321670

/-! ## A088878.P17207549898448429841

`p?[A153183(n+1)]`
-/

namespace A088878.P17207549898448429841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088878.P17207549898448429841

/-! ## A088878.P6054619952595934665

`p?[A024892(n+1)+1]`
-/

namespace A088878.P6054619952595934665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088878.P6054619952595934665

/-! ## A088878.P9069562844196844549

`p?[A034936(n+1)+2]`
-/

namespace A088878.P9069562844196844549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088878.P9069562844196844549

/-! ## A088878.P8014719996578157272

`p?[A107303(n+1)-1]`
-/

namespace A088878.P8014719996578157272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107303 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088878.P8014719996578157272

/-! ## A088878.P11977454223259318831

`p?[2*A024899(n+1)+1]`
-/

namespace A088878.P11977454223259318831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024899 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088878.P11977454223259318831

/-! ## A088878.P2612885430065327934

`filter[A153183(n+1), A010051(#)]`
-/

namespace A088878.P2612885430065327934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A088878.P2612885430065327934

/-! ## A088878.P8857021925428635545

`filter[A153183(n+1), A365716(#)]`
-/

namespace A088878.P8857021925428635545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A088878.P8857021925428635545

/-! ## A088878.P727666274923374906

`filter[A153183(n+1), A379969(#)]`
-/

namespace A088878.P727666274923374906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A088878.P727666274923374906

/-! ## A088878.P4782791188526963448

`filter[A153183(n+1), A380467(#)]`
-/

namespace A088878.P4782791188526963448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A088878.P4782791188526963448

/-! ## A088878.P3892902596810863586

`record[A006530(A024892(n+1)+1)]`
-/

namespace A088878.P3892902596810863586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024892 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088878.P3892902596810863586

/-! ## A088878.P11615115374422048135

`record[A006530(A034936(n+1)+2)]`
-/

namespace A088878.P11615115374422048135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034936 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088878.P11615115374422048135

/-! ## A088878.P3579662763990819759

`∩[A000040(n+1), A153183(n+1)]`
-/

namespace A088878.P3579662763990819759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088878.P3579662763990819759

/-! ## A088878.P12961713911651756793

`∩[A006005(n+1), A153183(n+1)]`
-/

namespace A088878.P12961713911651756793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088878.P12961713911651756793

/-! ## A088878.P5403261442925681978

`∩[A008578(n+1), A153183(n+1)]`
-/

namespace A088878.P5403261442925681978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088878.P5403261442925681978

/-!
# A088879: Numbers n such that 3n + 5 is a prime.

The programs for A088879, the canonical program `A088879.P17861856931991418043` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088879 has offset 1).

The definition of A088879 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024893, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088879.P17861856931991418043

`A024893(n+1)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A088879

/-- `A024893(n+1)-1` -/
def P17861856931991418043.Spec : Prop :=
  ∀ n, P17861856931991418043.a n = A088879 (n + 1)

theorem P17861856931991418043.correct : P17861856931991418043.Spec := by
  intro n
  simp only [A088879, Nat.add_sub_cancel]

end A088879

/-! ## A088879.P8775527362309659668

`A087370(n+1)-2`
-/

namespace A088879.P8775527362309659668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1) - 2

end

end A088879.P8775527362309659668

namespace A088879

/-- `A087370(n+1)-2` -/
def P8775527362309659668.Spec : Prop :=
  ∀ n, P8775527362309659668.a n = A088879 (n + 1)

end A088879

/-! ## A088879.P11477618829636135310

`(p?[3*n-1]-5)/3`
-/

namespace A088879.P11477618829636135310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 5 : ℚ) / 3

end

end A088879.P11477618829636135310

namespace A088879

/-- `(p?[3*n-1]-5)/3` -/
def P11477618829636135310.Spec : Prop :=
  ∀ n, P11477618829636135310.a n = (A088879 (n + 1) : ℚ)

end A088879

/-! ## A088879.P6882435897875676461

`A228121(n+1)-3`
-/

namespace A088879.P6882435897875676461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) - 3

end

end A088879.P6882435897875676461

namespace A088879

/-- `A228121(n+1)-3` -/
def P6882435897875676461.Spec : Prop :=
  ∀ n, P6882435897875676461.a n = A088879 (n + 1)

end A088879

/-! ## A088879.P3977047507958918619

`(A034934(n+1)-3)/2`
-/

namespace A088879.P3977047507958918619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034934 (n + 1) - 3 : ℚ) / 2

end

end A088879.P3977047507958918619

namespace A088879

/-- `(A034934(n+1)-3)/2` -/
def P3977047507958918619.Spec : Prop :=
  ∀ n, P3977047507958918619.a n = (A088879 (n + 1) : ℚ)

end A088879

/-! ## A088879.P2525362185711639758

`(A003627(n+1)-5)/3`
-/

namespace A088879.P2525362185711639758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003627 (n + 1) - 5 : ℚ) / 3

end

end A088879.P2525362185711639758

namespace A088879

/-- `(A003627(n+1)-5)/3` -/
def P2525362185711639758.Spec : Prop :=
  ∀ n, P2525362185711639758.a n = (A088879 (n + 1) : ℚ)

end A088879

/-! ## A088879.P1978553889241240423

`xor(A024893(n+1), A158388(n))`
-/

namespace A088879.P1978553889241240423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024893 (n + 1)) (A158388 n)

end

end A088879.P1978553889241240423

namespace A088879

/-- `xor(A024893(n+1), A158388(n))` -/
def P1978553889241240423.Spec : Prop :=
  ∀ n, P1978553889241240423.a n = A088879 (n + 1)

end A088879

/-! ## A088879.P17254259656440614543

`A003627(n+1)-(A034934(n+1)+2)`
-/

namespace A088879.P17254259656440614543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) - (A034934 (n + 1) + 2)

end

end A088879.P17254259656440614543

namespace A088879

/-- `A003627(n+1)-(A034934(n+1)+2)` -/
def P17254259656440614543.Spec : Prop :=
  ∀ n, P17254259656440614543.a n = A088879 (n + 1)

end A088879

/-! ## A088879.P7174571931287056185

`A144769(A091177(n+1))-1`
-/

namespace A088879.P7174571931287056185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (A091177 (n + 1)).toNat - 1

end

end A088879.P7174571931287056185

namespace A088879

/-- `A144769(A091177(n+1))-1` -/
def P7174571931287056185.Spec : Prop :=
  ∀ n, P7174571931287056185.a n = A088879 (n + 1)

end A088879

/-! ## A088879.P2899232846946703150

`eq[1, A001222(3*n+2)]-1`
-/

namespace A088879.P2899232846946703150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A088879.P2899232846946703150

namespace A088879

/-- `eq[1, A001222(3*n+2)]-1` -/
def P2899232846946703150.Spec : Prop :=
  ∀ n, P2899232846946703150.a n = A088879 (n + 1)

end A088879

/-! ## A088879.P12431804383602012109

`eq[2, A000005(3*n+2)]-1`
-/

namespace A088879.P12431804383602012109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A088879.P12431804383602012109

namespace A088879

/-- `eq[2, A000005(3*n+2)]-1` -/
def P12431804383602012109.Spec : Prop :=
  ∀ n, P12431804383602012109.a n = A088879 (n + 1)

end A088879

/-! ## A088879.P11102813166633278617

`lt[n, A020639(3*n+2)]-1`
-/

namespace A088879.P11102813166633278617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A088879.P11102813166633278617

namespace A088879

/-- `lt[n, A020639(3*n+2)]-1` -/
def P11102813166633278617.Spec : Prop :=
  ∀ n, P11102813166633278617.a n = A088879 (n + 1)

end A088879

/-! ## A088879.P11058401257522738908

`lt[2*n, A006530(3*n+2)]-1`
-/

namespace A088879.P11058401257522738908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A088879.P11058401257522738908

namespace A088879

/-- `lt[2*n, A006530(3*n+2)]-1` -/
def P11058401257522738908.Spec : Prop :=
  ∀ n, P11058401257522738908.a n = A088879 (n + 1)

end A088879

/-! ## A088879.P3593857031359809746

`(record[A000010(2*n+n+2)-n]-3)/2`
-/

namespace A088879.P3593857031359809746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + (n + 2)) - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 3 : ℚ) / 2

end

end A088879.P3593857031359809746

namespace A088879

/-- `(record[A000010(2*n+n+2)-n]-3)/2` -/
def P3593857031359809746.Spec : Prop :=
  ∀ n, P3593857031359809746.a n = (A088879 (n + 1) : ℚ)

end A088879

/-! ## A088879.P15127905331752638277

`eq[1, A337135(3*n+2)]-1`
-/

namespace A088879.P15127905331752638277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337135 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A088879.P15127905331752638277

namespace A088879

/-- `eq[1, A337135(3*n+2)]-1` -/
def P15127905331752638277.Spec : Prop :=
  ∀ n, P15127905331752638277.a n = A088879 (n + 1)

end A088879

/-! ## A088879.P10285905787488826176

`record[2*n-A033686(n)]`
-/

namespace A088879.P10285905787488826176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A033686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088879.P10285905787488826176

namespace A088879

/-- `record[2*n-A033686(n)]` -/
def P10285905787488826176.Spec : Prop :=
  ∀ n, P10285905787488826176.a n = A088879 (n + 1)

end A088879

/-! ## A088879.P11092139519997446800

`record[∑{d}[3*n+2, #-(n+2)]]`
-/

namespace A088879.P11092139519997446800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - (n + 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088879.P11092139519997446800

namespace A088879

/-- `record[∑{d}[3*n+2, #-(n+2)]]` -/
def P11092139519997446800.Spec : Prop :=
  ∀ n, P11092139519997446800.a n = A088879 (n + 1)

end A088879

/-! ## A088879.P13391486494228330360

`record[∑{p}[2*n+n-1, #]-(2*n+1)]`
-/

namespace A088879.P13391486494228330360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, p : ℕ) : ℤ) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088879.P13391486494228330360

namespace A088879

/-- `record[∑{p}[2*n+n-1, #]-(2*n+1)]` -/
def P13391486494228330360.Spec : Prop :=
  ∀ n, P13391486494228330360.a n = A088879 (n + 1)

end A088879

/-! ## A088879.P12438750955138799284

`eq[1, A231776(n+1)]-1`
-/

namespace A088879.P12438750955138799284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A088879.P12438750955138799284

namespace A088879

/-- `eq[1, A231776(n+1)]-1` -/
def P12438750955138799284.Spec : Prop :=
  ∀ n, P12438750955138799284.a n = A088879 (n + 1)

end A088879

/-! ## A088879.P14305148331356575371

`eq[1, A363514(n+1)]-1`
-/

namespace A088879.P14305148331356575371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A088879.P14305148331356575371

namespace A088879

/-- `eq[1, A363514(n+1)]-1` -/
def P14305148331356575371.Spec : Prop :=
  ∀ n, P14305148331356575371.a n = A088879 (n + 1)

end A088879

/-!
# A088880: Number of different values of A000005(m) when A056239(m) is equal to n.

The programs for A088880, there is no canonical definition to state claims against.
-/

/-! ## A088880.P16722744880885364144

`A285524(A001043(n+1))-A026741(n)`
-/

namespace A088880.P16722744880885364144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285524 (A001043 (n + 1)).toNat - A026741 n

end

end A088880.P16722744880885364144

/-!
# A088881: If A056239(m) = n, then a(n) is the maximum value of A000005(m).

The programs for A088881, there is no canonical definition to state claims against.
-/

/-! ## A088881.P15857173958116695872

`∏{e}[A115387(n+1), #+1]`
-/

namespace A088881.P15857173958116695872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A088881.P15857173958116695872

/-! ## A088881.P3432891006315440887

`∑{d}[A115387(n+1), gcd(#, A000040(n+1))]`
-/

namespace A088881.P3432891006315440887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A000040 (n + 1))

end

end A088881.P3432891006315440887

/-! ## A088881.P15165714285595240087

`A000005(A115387(n+1))`
-/

namespace A088881.P15165714285595240087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A115387 (n + 1)).toNat

end

end A088881.P15165714285595240087

/-! ## A088881.P1860942016311539575

`A000005(A115386(n+2)/2)`
-/

namespace A088881.P1860942016311539575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A115386 (n + 2) : ℚ) / 2)).toNat

end

end A088881.P1860942016311539575

/-! ## A088881.P83466358859165022

`A002093(A052382(n+1)%A079928(n+1))`
-/

namespace A088881.P83466358859165022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (Int.tmod (A052382 (n + 1)) (A079928 (n + 1))).toNat

end

end A088881.P83466358859165022

/-!
# A088882: Nontrivial palindromes in base 10 (i.e., palindromes that are not RepDigits such as 3, 111, 22222, or 888888888).

The programs for A088882, there is no canonical definition to state claims against.
-/

/-! ## A088882.P8549891934771080784

`∩[A002113(n+1), A152054(n+1)]`
-/

namespace A088882.P8549891934771080784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088882.P8549891934771080784

/-! ## A088882.P17432574251783916315

`∩[A002113(n+1), A301516(n+1)]`
-/

namespace A088882.P17432574251783916315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088882.P17432574251783916315

/-! ## A088882.P4750624984942609237

`∩[A083158(n+1), A301516(n+1)]`
-/

namespace A088882.P4750624984942609237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088882.P4750624984942609237

/-! ## A088882.P8013653529224362529

`eq[A056965(n), A202022(n)]`
-/

namespace A088882.P8013653529224362529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088882.P8013653529224362529

/-! ## A088882.P410160268313953405

`eq[A064834(n), A202022(n)]`
-/

namespace A088882.P410160268313953405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088882.P410160268313953405

/-! ## A088882.P696517054109572309

`eq[A202022(n), A241173(n)]`
-/

namespace A088882.P696517054109572309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241173 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088882.P696517054109572309

/-! ## A088882.P16357089605588336865

`eq[A202022(n), A248327(n)]`
-/

namespace A088882.P16357089605588336865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088882.P16357089605588336865

/-! ## A088882.P11305288862194371182

`eq[A202022(n), A256756(n)]`
-/

namespace A088882.P11305288862194371182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088882.P11305288862194371182

/-! ## A088882.P6944400837916608070

`eq[A202022(n), A261424(n)]`
-/

namespace A088882.P6944400837916608070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088882.P6944400837916608070

/-! ## A088882.P11341946881950104143

`lt[A056965(n)², A283001(n)]`
-/

namespace A088882.P11341946881950104143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088882.P11341946881950104143

/-! ## A088882.P11502969517132621874

`lt[A004185(n)+A338827(n)², n]`
-/

namespace A088882.P11502969517132621874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n + A338827 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088882.P11502969517132621874

/-! ## A088882.P18138418215924196343

`eq[A000038(A108782(n)), A256756(n)]`
-/

namespace A088882.P18138418215924196343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A108782 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088882.P18138418215924196343

/-! ## A088882.P586750805907481139

`eq[A000038(A193581(n)), A256756(n)]`
-/

namespace A088882.P586750805907481139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A193581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088882.P586750805907481139

/-! ## A088882.P12082327752064028280

`filter[A328996(n+1), A136522(#)]`
-/

namespace A088882.P12082327752064028280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A088882.P12082327752064028280

/-! ## A088882.P5229632765252214832

`∩[A002113(n+1), A328996(n+1)]`
-/

namespace A088882.P5229632765252214832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088882.P5229632765252214832

/-! ## A088882.P14218914778918447058

`∩[A296712(n+1), A328996(n+1)]`
-/

namespace A088882.P14218914778918447058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088882.P14218914778918447058

/-!
# A088883: Primes which when concatenated with their reverse and incremented by 2 yield a new prime.

The programs for A088883, there is no canonical definition to state claims against.
-/

/-! ## A088883.P9216577300532478267

`A045979(A015843(n+5))%A123285(n+3)`
-/

namespace A088883.P9216577300532478267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045979 (A015843 (n + 5)).toNat) (A123285 (n + 3 + 21))

end

end A088883.P9216577300532478267

/-!
# A088884: Primes which when concatenated with their reverse and decremented by 2 yield a new prime.

The programs for A088884, there is no canonical definition to state claims against.
-/

/-! ## A088884.P8891925902326843966

`eq[n*A342014(A007089(n)+1), A252358(n)]`
-/

namespace A088884.P8891925902326843966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A342014 (A007089 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088884.P8891925902326843966

/-!
# A088886: Minimum number of consecutive previous nonnegative integers to n that must be concatenated together in ascending order such that n divides the concatenated term, or zero if n divides no such concatenation.

The programs for A088886, there is no canonical definition to state claims against.
-/

/-! ## A088886.P4332652172382328387

`and(A020639(A208872(n+1)), A090192(3*n+1))`
-/

namespace A088886.P4332652172382328387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (A208872 (n + 1)).toNat) (A090192 (3 * n + 1))

end

end A088886.P4332652172382328387

/-! ## A088886.P11642917478178947843

`and(A002211(A098419(3*n+5)), A090192(3*n+1))`
-/

namespace A088886.P11642917478178947843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002211 (A098419 (3 * n + 5)).toNat) (A090192 (3 * n + 1))

end

end A088886.P11642917478178947843

/-! ## A088886.P17853823610399080479

`A117776(A160595(3*(n+1)))+A008683(A016934(3*n+2))`
-/

namespace A088886.P17853823610399080479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117776 (A160595 (3 * (n + 1))).toNat + A008683 (A016934 (3 * n + 2)).toNat

end

end A088886.P17853823610399080479

/-! ## A088886.P14760807002736741955

`A063994(A130562(2*(n+1)))*A117776(A160595(3*(n+1)))`
-/

namespace A088886.P14760807002736741955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A130562 (2 * (n + 1))).toNat * A117776 (A160595 (3 * (n + 1))).toNat

end

end A088886.P14760807002736741955

/-! ## A088886.P8100266648601784500

`A138754(A283908(n))%A063994(n+5)`
-/

namespace A088886.P8100266648601784500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138754 (A283908 n).toNat) (A063994 (n + 5))

end

end A088886.P8100266648601784500

/-!
# A088887: Number of different prime signatures of the m values when A056239(m) is equal to n.

The programs for A088887, there is no canonical definition to state claims against.
-/

/-! ## A088887.P8615223512032687622

`A337584(∑[abs(1-9*n)])`
-/

namespace A088887.P8615223512032687622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (9 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337584 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088887.P8615223512032687622

/-! ## A088887.P16670990268929714881

`A337584(A064226(n))%A064226(n)`
-/

namespace A088887.P16670990268929714881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337584 (A064226 n).toNat) (A064226 n)

end

end A088887.P16670990268929714881

/-! ## A088887.P6578929643520151892

`A337584(A081267(n))%A081267(n+1)`
-/

namespace A088887.P6578929643520151892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337584 (A081267 n).toNat) (A081267 (n + 1))

end

end A088887.P6578929643520151892

/-! ## A088887.P7988527318512412359

`A337584(A064226(n))+A000007(2*(n+1))`
-/

namespace A088887.P7988527318512412359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337584 (A064226 n).toNat + A000007 (2 * (n + 1))

end

end A088887.P7988527318512412359

/-! ## A088887.P477377330535003565

`A337584(A081267(n))+A000007(2*(n+1))`
-/

namespace A088887.P477377330535003565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337584 (A081267 n).toNat + A000007 (2 * (n + 1))

end

end A088887.P477377330535003565

/-!
# A088889: Polynexus numbers of order 8.

The programs for A088889, the canonical program `A088889.P14492022840730792517` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088889 has offset 1).

The definition of A088889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088889.P14492022840730792517

`((n+1)^8-n^8-((n+1)^4-n^4))/240`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088889

/-- `((n+1)^8-n^8-((n+1)^4-n^4))/240` -/
def P14492022840730792517.Spec : Prop :=
  ∀ n, P14492022840730792517.a n = (A088889 (n + 1) : ℚ)

end A088889

/-! ## A088889.P15062702551850354485

`∑[n*A005900(n)]/2*(∑[n]+1)`
-/

namespace A088889.P15062702551850354485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005900 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℚ)

end

end A088889.P15062702551850354485

namespace A088889

/-- `∑[n*A005900(n)]/2*(∑[n]+1)` -/
def P15062702551850354485.Spec : Prop :=
  ∀ n, P15062702551850354485.a n = (A088889 (n + 1) : ℚ)

end A088889

/-! ## A088889.P1086271861025288383

`A000124(n)/4*∑[A187756(n)+n²]`
-/

namespace A088889.P1086271861025288383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187756 n + (n ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 n : ℚ) / 4 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A088889.P1086271861025288383

namespace A088889

/-- `A000124(n)/4*∑[A187756(n)+n²]` -/
def P1086271861025288383.Spec : Prop :=
  ∀ n, P1086271861025288383.a n = (A088889 (n + 1) : ℚ)

end A088889

/-! ## A088889.P17019781677975435327

`Δ[A078876(n)]`
-/

namespace A088889.P17019781677975435327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088889.P17019781677975435327

namespace A088889

/-- `Δ[A078876(n)]` -/
def P17019781677975435327.Spec : Prop :=
  ∀ n, P17019781677975435327.a n = A088889 (n + 1)

end A088889

/-! ## A088889.P10222409034459591710

`A078876(n+1)-A078876(n)`
-/

namespace A088889.P10222409034459591710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078876 (n + 1) - A078876 n

end

end A088889.P10222409034459591710

namespace A088889

/-- `A078876(n+1)-A078876(n)` -/
def P10222409034459591710.Spec : Prop :=
  ∀ n, P10222409034459591710.a n = A088889 (n + 1)

end A088889

/-! ## A088889.P4139045219806747824

`record[A078876(A078898(n))]-A078876(n)`
-/

namespace A088889.P4139045219806747824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078876 (A078898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A078876 n

end

end A088889.P4139045219806747824

namespace A088889

/-- `record[A078876(A078898(n))]-A078876(n)` -/
def P4139045219806747824.Spec : Prop :=
  ∀ n, P4139045219806747824.a n = A088889 (n + 1)

end A088889

/-! ## A088889.P3829262559882408951

`record[A078876(A051162(n))]-A078876(n)`
-/

namespace A088889.P3829262559882408951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078876 (A051162 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A078876 n

end

end A088889.P3829262559882408951

namespace A088889

/-- `record[A078876(A051162(n))]-A078876(n)` -/
def P3829262559882408951.Spec : Prop :=
  ∀ n, P3829262559882408951.a n = A088889 (n + 1)

end A088889

/-!
# A088890: Polynexus numbers of order 8.

The programs for A088890, the canonical program `A088890.P4183778906489784979` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088890 has offset 1).

The definition of A088890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088890.P4183778906489784979

`((n+1)^8-n^8-((n+1)²-n²))/252`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088890

/-- `((n+1)^8-n^8-((n+1)²-n²))/252` -/
def P4183778906489784979.Spec : Prop :=
  ∀ n, P4183778906489784979.a n = (A088890 (n + 1) : ℚ)

end A088890

/-! ## A088890.P17804275123313423848

`Δ[A006325(n+1)/7*A006325(n)]`
-/

namespace A088890.P17804275123313423848
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006325 (n + 1) : ℚ) / 7 * (A006325 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088890.P17804275123313423848

namespace A088890

/-- `Δ[A006325(n+1)/7*A006325(n)]` -/
def P17804275123313423848.Spec : Prop :=
  ∀ n, P17804275123313423848.a n = (A088890 (n + 1) : ℚ)

end A088890

/-!
# A088891: Polynexus numbers of order 9.

The programs for A088891, the canonical program `A088891.P7162689135689462476` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088891 has offset 1).

The definition of A088891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088891.P7162689135689462476

`((n+1)^9-n^9-((n+1)^3-n^3))/504`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088891

/-- `((n+1)^9-n^9-((n+1)^3-n^3))/504` -/
def P7162689135689462476.Spec : Prop :=
  ∀ n, P7162689135689462476.a n = (A088891 (n + 1) : ℚ)

end A088891

/-! ## A088891.P18066193173247434075

`∑[∑[n^6]-C(n^3, 2)]`
-/

namespace A088891.P18066193173247434075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.choose (n ^ 3) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088891.P18066193173247434075

namespace A088891

/-- `∑[∑[n^6]-C(n^3, 2)]` -/
def P18066193173247434075.Spec : Prop :=
  ∀ n, P18066193173247434075.a n = A088891 (n + 1)

end A088891

/-! ## A088891.P609628508846530224

`∑[A000540(n)-A085744(n)]`
-/

namespace A088891.P609628508846530224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 n - A085744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088891.P609628508846530224

namespace A088891

/-- `∑[A000540(n)-A085744(n)]` -/
def P609628508846530224.Spec : Prop :=
  ∀ n, P609628508846530224.a n = A088891 (n + 1)

end A088891

/-! ## A088891.P5447400597511349493

`∑[∑[A001014(n)]-A085744(n)]`
-/

namespace A088891.P5447400597511349493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A085744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088891.P5447400597511349493

namespace A088891

/-- `∑[∑[A001014(n)]-A085744(n)]` -/
def P5447400597511349493.Spec : Prop :=
  ∀ n, P5447400597511349493.a n = A088891 (n + 1)

end A088891

/-! ## A088891.P2412838581884742975

`round(A001296(A002378(n))/7)`
-/

namespace A088891.P2412838581884742975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001296 (A002378 n).toNat : ℚ) / 7)

end

end A088891.P2412838581884742975

namespace A088891

/-- `round(A001296(A002378(n))/7)` -/
def P2412838581884742975.Spec : Prop :=
  ∀ n, P2412838581884742975.a n = A088891 (n + 1)

end A088891

/-!
# A088896: Length of longest integral ladder that can be moved horizontally around the right angled corner where two hallway corridors of integral widths meet.

The programs for A088896, there is no canonical definition to state claims against.
-/

/-! ## A088896.P3087994508512543593

`A009003(n+1)^3`
-/

namespace A088896.P3087994508512543593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1) ^ 3

end

end A088896.P3087994508512543593

/-! ## A088896.P16202868214038022154

`lt[1, A063014(n)]^3`
-/

namespace A088896.P16202868214038022154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3

end

end A088896.P16202868214038022154

/-! ## A088896.P13238926454632199056

`lt[4, A046109(n)]^3`
-/

namespace A088896.P13238926454632199056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3

end

end A088896.P13238926454632199056

/-! ## A088896.P12443012576528529490

`sqrt(A134422(n+1)^3)`
-/

namespace A088896.P12443012576528529490
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A134422 (n + 1) ^ 3 : ℝ)

end

end A088896.P12443012576528529490

/-! ## A088896.P10763571518676297763

`lt[0, A025426(n²)]^3`
-/

namespace A088896.P10763571518676297763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3

end

end A088896.P10763571518676297763

/-!
# A088897: T(n,k) = number of ordered pairs of integers (x,y) with x^2/n^2 + y^2/k^2 <= 1, 1<=k<=n; triangular array, read by rows.

The programs for A088897, there is no canonical definition to state claims against.
-/

/-! ## A088897.P13424031913286582065

`A088899(n+1)+A088898(n+1)`
-/

namespace A088897.P13424031913286582065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088899 (n + 1) + A088898 (n + 1)

end

end A088897.P13424031913286582065

/-! ## A088897.P14172924022458158412

`A088898(n+1)+A046109(A050873(n+1))`
-/

namespace A088897.P14172924022458158412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088898 (n + 1) + A046109 (A050873 (n + 1)).toNat

end

end A088897.P14172924022458158412

/-! ## A088897.P13488317292194740681

`A088898(n+1)+A004018(A050873(n+1)²)`
-/

namespace A088897.P13488317292194740681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088898 (n + 1) + A004018 (A050873 (n + 1) ^ 2).toNat

end

end A088897.P13488317292194740681

/-! ## A088897.P3669620468618348533

`A088898(n+1)+A046109(∏{p}[A127448(n+1), #])`
-/

namespace A088897.P3669620468618348533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088898 (n + 1) + A046109 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A088897.P3669620468618348533

/-! ## A088897.P5048484555701231538

`A088898(n+1)+A004531((2*A050873(n+1))²)`
-/

namespace A088897.P5048484555701231538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088898 (n + 1) + A004531 ((2 * A050873 (n + 1)) ^ 2).toNat

end

end A088897.P5048484555701231538

/-! ## A088897.P11533690612765328254

`A088898(n+1)+A004018(gcd(A038722(n+1)+n, (n+1)²))`
-/

namespace A088897.P11533690612765328254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088898 (n + 1) + A004018 (Int.gcd (A038722 (n + 1) + (n : ℤ)) ((n + 1) ^ 2 : ℤ))

end

end A088897.P11533690612765328254

/-!
# A088898: T(n,k) = number of ordered pairs of integers (x,y) with x^2/n^2 + y^2/k^2 < 1, 1<=k<=n; triangular array, read by rows.

The programs for A088898, there is no canonical definition to state claims against.
-/

/-! ## A088898.P9894009313835804580

`A088897(n+1)-A088899(n+1)`
-/

namespace A088898.P9894009313835804580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088897 (n + 1) - A088899 (n + 1)

end

end A088898.P9894009313835804580

/-! ## A088898.P2034269636096996090

`A088897(n+1)-A046109(A050873(n+1))`
-/

namespace A088898.P2034269636096996090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088897 (n + 1) - A046109 (A050873 (n + 1)).toNat

end

end A088898.P2034269636096996090

/-! ## A088898.P3682342050468491424

`A088897(n+1)-A004018(A050873(n+1)²)`
-/

namespace A088898.P3682342050468491424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088897 (n + 1) - A004018 (A050873 (n + 1) ^ 2).toNat

end

end A088898.P3682342050468491424

/-! ## A088898.P8024853864782642156

`A088897(n+1)-A046109(∏{p}[A127448(n+1), #])`
-/

namespace A088898.P8024853864782642156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088897 (n + 1) - A046109 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A088898.P8024853864782642156

/-! ## A088898.P16344845791099485037

`A088897(n+1)-A004531((2*A050873(n+1))²)`
-/

namespace A088898.P16344845791099485037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088897 (n + 1) - A004531 ((2 * A050873 (n + 1)) ^ 2).toNat

end

end A088898.P16344845791099485037

/-! ## A088898.P3269025115000940313

`A088897(n+1)-A004018(gcd(A038722(n+1)+n, (n+1)²))`
-/

namespace A088898.P3269025115000940313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088897 (n + 1) - A004018 (Int.gcd (A038722 (n + 1) + (n : ℤ)) ((n + 1) ^ 2 : ℤ))

end

end A088898.P3269025115000940313

/-!
# A088899: T(n, k) = number of ordered pairs of integers (x,y) with x^2/n^2 + y^2/k^2 = 1, 1 <= k <= n; triangular array, read by rows.

The programs for A088899, the canonical program `A088899.P5292124785369287953` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088899 has offset 1).

The definition of A088899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088899.P15807456505896540840

`A088897(n+1)-A088898(n+1)`
-/

namespace A088899.P15807456505896540840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088897 (n + 1) - A088898 (n + 1)

end

end A088899.P15807456505896540840

namespace A088899

/-- `A088897(n+1)-A088898(n+1)` -/
def P15807456505896540840.Spec : Prop :=
  ∀ n, P15807456505896540840.a n = A088899 (n + 1)

end A088899

/-! ## A088899.P5416112879885338239

`A046109(A050873(n+1))`
-/

namespace A088899.P5416112879885338239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 (A050873 (n + 1)).toNat

end

end A088899.P5416112879885338239

namespace A088899

/-- `A046109(A050873(n+1))` -/
def P5416112879885338239.Spec : Prop :=
  ∀ n, P5416112879885338239.a n = A088899 (n + 1)

end A088899

/-! ## A088899.P7649899347783086714

`A046109(gcd(n+1, A002024(n+1)))`
-/

namespace A088899.P7649899347783086714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 (Int.gcd (n + 1 : ℤ) (A002024 (n + 1)))

end

end A088899.P7649899347783086714

namespace A088899

/-- `A046109(gcd(n+1, A002024(n+1)))` -/
def P7649899347783086714.Spec : Prop :=
  ∀ n, P7649899347783086714.a n = A088899 (n + 1)

end A088899

/-! ## A088899.P12412808610460290959

`A046109(gcd(A002260(n+1), A025581(n)))`
-/

namespace A088899.P12412808610460290959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 (Int.gcd (A002260 (n + 1)) (A025581 n))

end

end A088899.P12412808610460290959

namespace A088899

/-- `A046109(gcd(A002260(n+1), A025581(n)))` -/
def P12412808610460290959.Spec : Prop :=
  ∀ n, P12412808610460290959.a n = A088899 (n + 1)

end A088899

/-! ## A088899.P16167043823274330078

`A046109(gcd(A002024(n+1), A103517(n)))`
-/

namespace A088899.P16167043823274330078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 (Int.gcd (A002024 (n + 1)) (A103517 n))

end

end A088899.P16167043823274330078

namespace A088899

/-- `A046109(gcd(A002024(n+1), A103517(n)))` -/
def P16167043823274330078.Spec : Prop :=
  ∀ n, P16167043823274330078.a n = A088899 (n + 1)

end A088899

/-! ## A088899.P17219025084474584227

`A046109(gcd(A000265(n+1), A014132(n+1)))`
-/

namespace A088899.P17219025084474584227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 (Int.gcd (A000265 (n + 1)) (A014132 (n + 1)))

end

end A088899.P17219025084474584227

namespace A088899

/-- `A046109(gcd(A000265(n+1), A014132(n+1)))` -/
def P17219025084474584227.Spec : Prop :=
  ∀ n, P17219025084474584227.a n = A088899 (n + 1)

end A088899

/-! ## A088899.P2098527339780488890

`A004018(A050873(n+1)²)`
-/

namespace A088899.P2098527339780488890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A050873 (n + 1) ^ 2).toNat

end

end A088899.P2098527339780488890

namespace A088899

/-- `A004018(A050873(n+1)²)` -/
def P2098527339780488890.Spec : Prop :=
  ∀ n, P2098527339780488890.a n = A088899 (n + 1)

end A088899

/-! ## A088899.P8468204599680465058

`A004018(A050873(n+1)^2)`
-/

namespace A088899.P8468204599680465058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A050873 (n + 1) ^ 2).toNat

end

end A088899.P8468204599680465058

namespace A088899

/-- `A004018(A050873(n+1)^2)` -/
def P8468204599680465058.Spec : Prop :=
  ∀ n, P8468204599680465058.a n = A088899 (n + 1)

end A088899

/-! ## A088899.P5292124785369287953

`2*A105673(A050873(n+1)²)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A088899

/-- `2*A105673(A050873(n+1)²)` -/
def P5292124785369287953.Spec : Prop :=
  ∀ n, P5292124785369287953.a n = A088899 (n + 1)

theorem P5292124785369287953.correct : P5292124785369287953.Spec := by
  intro n
  simp only [A088899, Nat.add_sub_cancel]

end A088899

/-! ## A088899.P2529110446749942959

`A004018(gcd(A038722(n+1)+n, (n+1)²))`
-/

namespace A088899.P2529110446749942959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (Int.gcd (A038722 (n + 1) + (n : ℤ)) ((n + 1) ^ 2 : ℤ))

end

end A088899.P2529110446749942959

namespace A088899

/-- `A004018(gcd(A038722(n+1)+n, (n+1)²))` -/
def P2529110446749942959.Spec : Prop :=
  ∀ n, P2529110446749942959.a n = A088899 (n + 1)

end A088899

/-! ## A088899.P4455517036999637349

`A008574(A002654(A050873(n+1)²))`
-/

namespace A088899.P4455517036999637349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A002654 (A050873 (n + 1) ^ 2).toNat).toNat

end

end A088899.P4455517036999637349

namespace A088899

/-- `A008574(A002654(A050873(n+1)²))` -/
def P4455517036999637349.Spec : Prop :=
  ∀ n, P4455517036999637349.a n = A088899 (n + 1)

end A088899

/-! ## A088899.P842082110063088876

`A004277(A105673(A050873(n+1)²))`
-/

namespace A088899.P842082110063088876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A105673 (A050873 (n + 1) ^ 2).toNat).toNat

end

end A088899.P842082110063088876

namespace A088899

/-- `A004277(A105673(A050873(n+1)²))` -/
def P842082110063088876.Spec : Prop :=
  ∀ n, P842082110063088876.a n = A088899 (n + 1)

end A088899

/-! ## A088899.P11754649467008282938

`A008574(A163746(A050873(n+1)²))`
-/

namespace A088899.P11754649467008282938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A163746 (A050873 (n + 1) ^ 2).toNat).toNat

end

end A088899.P11754649467008282938

namespace A088899

/-- `A008574(A163746(A050873(n+1)²))` -/
def P11754649467008282938.Spec : Prop :=
  ∀ n, P11754649467008282938.a n = A088899 (n + 1)

end A088899

/-! ## A088899.P2737188719682772676

`A004018(2*A050873(n+1)*A050873(n+1))`
-/

namespace A088899.P2737188719682772676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (2 * A050873 (n + 1) * A050873 (n + 1)).toNat

end

end A088899.P2737188719682772676

namespace A088899

/-- `A004018(2*A050873(n+1)*A050873(n+1))` -/
def P2737188719682772676.Spec : Prop :=
  ∀ n, P2737188719682772676.a n = A088899 (n + 1)

end A088899

/-! ## A088899.P17609823096311498460

`A004531((2*A050873(n+1))²)`
-/

namespace A088899.P17609823096311498460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 ((2 * A050873 (n + 1)) ^ 2).toNat

end

end A088899.P17609823096311498460

namespace A088899

/-- `A004531((2*A050873(n+1))²)` -/
def P17609823096311498460.Spec : Prop :=
  ∀ n, P17609823096311498460.a n = A088899 (n + 1)

end A088899

/-! ## A088899.P8648961614579651540

`A004531(A008574(A050873(n+1)²))`
-/

namespace A088899.P8648961614579651540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (A008574 (A050873 (n + 1) ^ 2).toNat).toNat

end

end A088899.P8648961614579651540

namespace A088899

/-- `A004531(A008574(A050873(n+1)²))` -/
def P8648961614579651540.Spec : Prop :=
  ∀ n, P8648961614579651540.a n = A088899 (n + 1)

end A088899

/-! ## A088899.P3575761106892888862

`A256282(A008588(A050873(n+1))²)`
-/

namespace A088899.P3575761106892888862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256282 (A008588 (A050873 (n + 1)).toNat ^ 2).toNat

end

end A088899.P3575761106892888862

namespace A088899

/-- `A256282(A008588(A050873(n+1))²)` -/
def P3575761106892888862.Spec : Prop :=
  ∀ n, P3575761106892888862.a n = A088899 (n + 1)

end A088899

