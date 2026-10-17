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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A068100: a(1) = 1; a(n+1) = n!*Sum_{k|n} a(k)/k!.

The programs for A068100, there is no canonical definition to state claims against.
-/

/-! ## A068100.P12007059190559184363

`A000265(∑[n!*∏{e}[n, #+1]])`
-/

namespace A068100.P12007059190559184363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A068100.P12007059190559184363

/-! ## A068100.P14473753123573576756

`A000265(∑[A323295(n)])`
-/

namespace A068100.P14473753123573576756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068100.P14473753123573576756

/-! ## A068100.P12624225052897544914

`A171435(∑[A323295(n)])`
-/

namespace A068100.P12624225052897544914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068100.P12624225052897544914

/-! ## A068100.P9608193562394747697

`A302042(∑[A323295(n)])`
-/

namespace A068100.P9608193562394747697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068100.P9608193562394747697

/-!
# A068101: a(n) = Sum_{k|n, k<=sqrt(n)} mu(k) where mu(k) is the Moebius function and the sum is over the positive divisors k of n with k <= sqrt(n).

The programs for A068101, there is no canonical definition to state claims against.
-/

/-! ## A068101.P8769242586274082879

`A134540(A003059(n+1)+A000217(n))`
-/

namespace A068101.P8769242586274082879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134540 (A003059 (n + 1) + A000217 n).toNat

end

end A068101.P8769242586274082879

/-! ## A068101.P17323010637434068154

`A049076(A061658(n+1))-A063962(n+1)`
-/

namespace A068101.P17323010637434068154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A061658 (n + 1)).toNat - A063962 (n + 1)

end

end A068101.P17323010637434068154

/-! ## A068101.P10729711631381762176

`A057427(A321451(n))-A063962(n+1)`
-/

namespace A068101.P10729711631381762176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A321451 n).toNat - A063962 (n + 1)

end

end A068101.P10729711631381762176

/-!
# A068102: a(n) = n! * 2^n * Sum_{i=1..n} 1/(i*2^i).

The programs for A068102, there is no canonical definition to state claims against.
-/

/-! ## A068102.P4405840061541812464

`n!+2*(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A068102.P4405840061541812464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial n + 2 * (n + 1) * a (n - 1)

end

end A068102.P4405840061541812464

/-! ## A068102.P5649743345271029283

`n!+2*A242091(n+1)`
-/

namespace A068102.P5649743345271029283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + 2 * A242091 (n + 1)

end

end A068102.P5649743345271029283

/-! ## A068102.P2422379888479956324

`A000142(n)+2*A242091(n+1)`
-/

namespace A068102.P2422379888479956324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + 2 * A242091 (n + 1)

end

end A068102.P2422379888479956324

/-! ## A068102.P14751593999573057971

`A242091(n+2)/(n+2)`
-/

namespace A068102.P14751593999573057971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242091 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A068102.P14751593999573057971

/-!
# A068103: Smallest prime starting with at least n 2s.

The programs for A068103, there is no canonical definition to state claims against.
-/

/-! ## A068103.P10742851935164466634

`A065585(C(A092885(n), A003961(n+1))+n)`
-/

namespace A068103.P10742851935164466634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065585 (Nat.choose (A092885 n).toNat (A003961 (n + 1)).toNat + n)

end

end A068103.P10742851935164466634

/-! ## A068103.P8456865489108928370

`A065585(A270436(n+1)-A348422(2*(n+1)))`
-/

namespace A068103.P8456865489108928370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065585 (A270436 (n + 1) - A348422 (2 * (n + 1))).toNat

end

end A068103.P8456865489108928370

/-!
# A068104: 

The programs for A068104, there is no canonical definition to state claims against.
-/

/-! ## A068104.P12746287051670184765

`A004086(A037059(n))-A102669(n)`
-/

namespace A068104.P12746287051670184765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A037059 n).toNat - A102669 n

end

end A068104.P12746287051670184765

/-!
# A068105: Smallest prime starting with n 5s.

The programs for A068105, there is no canonical definition to state claims against.
-/

/-! ## A068105.P10129481808573697039

`A065588(A029731(n+1))`
-/

namespace A068105.P10129481808573697039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065588 (A029731 (n + 1)).toNat

end

end A068105.P10129481808573697039

/-! ## A068105.P8586233463485947559

`A065588(record[n/A146879(n+1)])`
-/

namespace A068105.P8586233463485947559
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A146879 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065588 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A068105.P8586233463485947559

/-! ## A068105.P14136204135334427725

`record[root(A065588(n), A146879(n+1))]`
-/

namespace A068105.P14136204135334427725
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065588 n : ℝ) ^ (1 / (A146879 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068105.P14136204135334427725

/-! ## A068105.P8389253792319000516

`A065588(A062399(n)+A053392(n))`
-/

namespace A068105.P8389253792319000516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065588 (A062399 n + A053392 n).toNat

end

end A068105.P8389253792319000516

/-! ## A068105.P811700714846324239

`A065588(xor(A053392(n), A062399(n)))`
-/

namespace A068105.P811700714846324239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065588 (Int.xor (A053392 n) (A062399 n)).toNat

end

end A068105.P811700714846324239

/-!
# A068106: Euler's difference table: triangle read by rows, formed by starting with factorial numbers (A000142) and repeatedly taking differences. T(n,n) = n!, T(n,k) = T(n,k+1) - T(n-1,k).

The programs for A068106, there is no canonical definition to state claims against.
-/

/-! ## A068106.P18025846411210925963

`A086764(n)*A233543(n)`
-/

namespace A068106.P18025846411210925963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 n * A233543 n

end

end A068106.P18025846411210925963

/-! ## A068106.P11447309690561977850

`A002262(n)!*A086764(n)`
-/

namespace A068106.P11447309690561977850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A086764 n

end

end A068106.P11447309690561977850

/-! ## A068106.P2654239346582330739

`A047920(A061579(n))`
-/

namespace A068106.P2654239346582330739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A061579 n).toNat

end

end A068106.P2654239346582330739

/-! ## A068106.P16984719983160710959

`A047920(A114327(n)+n)`
-/

namespace A068106.P16984719983160710959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A114327 n + (n : ℤ)).toNat

end

end A068106.P16984719983160710959

/-! ## A068106.P11325929937438080706

`A047920(A038722(n+1)-1)`
-/

namespace A068106.P11325929937438080706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A038722 (n + 1) - 1).toNat

end

end A068106.P11325929937438080706

/-! ## A068106.P3025654544140146177

`A047920(A093995(n+1)-(n+1))`
-/

namespace A068106.P3025654544140146177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A068106.P3025654544140146177

/-! ## A068106.P5509778750686111901

`A047920(A057944(n)+A025581(n))`
-/

namespace A068106.P5509778750686111901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A057944 n + A025581 n).toNat

end

end A068106.P5509778750686111901

/-! ## A068106.P2689247659487390710

`A372723(n)/A007318(n)`
-/

namespace A068106.P2689247659487390710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372723 n : ℚ) / (A007318 n : ℚ)

end

end A068106.P2689247659487390710

/-!
# A068107: a(n) = n!*Sum_{k=1..n} mu(k)/k!, where mu(k) is the Moebius function.

The programs for A068107, there is no canonical definition to state claims against.
-/

/-! ## A068107.P1972195178119136710

`round(acot(∏{e}[n+1, -#]))+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A068107.P1972195178119136710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℝ)) + (n + 1 : ℤ) * a (n - 1)

end

end A068107.P1972195178119136710

/-! ## A068107.P2643307501239207761

`A008683(n+1)+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A068107.P2643307501239207761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008683 (n + 1) + (n + 1 : ℤ) * a (n - 1)

end

end A068107.P2643307501239207761

/-! ## A068107.P9545464803091320765

`a(n-1)*(n+1)-A157657(n+1)` with `a(0)=1`
-/

namespace A068107.P9545464803091320765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (n + 1 : ℤ) - A157657 (n + 1)

end

end A068107.P9545464803091320765

/-! ## A068107.P18379828175443644275

`a(n-1)*(n+1)-A157658(n+1)` with `a(0)=1`
-/

namespace A068107.P18379828175443644275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (n + 1 : ℤ) - A157658 (n + 1)

end

end A068107.P18379828175443644275

/-! ## A068107.P8536431727646507378

`a(n-1)*(n+1)+A007423(n+1)-1` with `a(0)=1`
-/

namespace A068107.P8536431727646507378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (n + 1 : ℤ) + (A007423 (n + 1) - 1)

end

end A068107.P8536431727646507378

/-! ## A068107.P13803466740949978881

`A326415(n+1)%2+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A068107.P13803466740949978881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A326415 (n + 1)) 2 + (n + 1 : ℤ) * a (n - 1)

end

end A068107.P13803466740949978881

/-!
# A068108: a(1) = 1; a(n+1) = sum{k|n k<=sqrt(n)} a(k) where sum is over the positive divisors k of n with k <= sqrt(n).

The programs for A068108, there is no canonical definition to state claims against.
-/

/-! ## A068108.P12982052754471704177

`A073093(A000041(A074206(n))^A335078(n+2))`
-/

namespace A068108.P12982052754471704177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (SequenceMachineLib.roundAway ((A000041 (A074206 n).toNat : ℚ) ^ (A335078 (n + 2) : ℤ))).toNat

end

end A068108.P12982052754471704177

/-! ## A068108.P9723807557382422690

`A038548(A332741(record[A128214(n)]))`
-/

namespace A068108.P9723807557382422690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A332741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A068108.P9723807557382422690

/-! ## A068108.P6447110871284016420

`A038548(A332741(A004277(n)+n))`
-/

namespace A068108.P6447110871284016420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A332741 (A004277 n + (n : ℤ)).toNat).toNat

end

end A068108.P6447110871284016420

/-! ## A068108.P1989917560811529934

`A320732(A233583(n+1)*A245936(3*n+4))`
-/

namespace A068108.P1989917560811529934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320732 (A233583 (n + 1) * A245936 (3 * n + 4)).toNat

end

end A068108.P1989917560811529934

/-! ## A068108.P2507671604795190458

`A038548(gcd(A003418(n), A135382(n+1)))`
-/

namespace A068108.P2507671604795190458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (Int.gcd (A003418 n) (A135382 (n + 1)))

end

end A068108.P2507671604795190458

/-!
# A068110: Denominators of coefficients in J0(i*sqrt(x))^2 power series where J0 denotes the ordinary Bessel function of order 0.

The programs for A068110, there is no canonical definition to state claims against.
-/

/-! ## A068110.P1041625409815024335

`lcm(a(n-1), A000010(C(4^n, 2)))` with `a(0)=1`
-/

namespace A068110.P1041625409815024335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A000010 (Nat.choose (4 ^ n) 2))

end

end A068110.P1041625409815024335

/-!
# A068111: Numerators of coefficients in J0(i*sqrt(x))^2, where J0 denotes the ordinary Bessel function of order 0.

The programs for A068111, the canonical program `A068111.P15408630498123714661` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068111 has offset 0).

The definition of A068111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068111.P10915530151486315235

`lcm(2, A261130(n))/2`
-/

namespace A068111.P10915530151486315235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A261130 n) : ℚ) / 2

end

end A068111.P10915530151486315235

namespace A068111

/-- `lcm(2, A261130(n))/2` -/
def P10915530151486315235.Spec : Prop :=
  ∀ n, P10915530151486315235.a n = (A068111 n : ℚ)

end A068111

/-! ## A068111.P5756696247913060664

`A212792(abs(1-2*n))`
-/

namespace A068111.P5756696247913060664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212792 |1 - (2 * n : ℤ)|.toNat

end

end A068111.P5756696247913060664

namespace A068111

/-- `A212792(abs(1-2*n))` -/
def P5756696247913060664.Spec : Prop :=
  ∀ n, P5756696247913060664.a n = A068111 n

end A068111

/-! ## A068111.P13377978274533925753

`A055773(2*n-char[1])`
-/

namespace A068111.P13377978274533925753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (2 * n - (if ∃ j, f1 j = n then 1 else 0))

end

end A068111.P13377978274533925753

namespace A068111

/-- `A055773(2*n-char[1])` -/
def P13377978274533925753.Spec : Prop :=
  ∀ n, P13377978274533925753.a n = A068111 n

end A068111

/-! ## A068111.P6439663635185442601

`A261130(A199969(n+1))`
-/

namespace A068111.P6439663635185442601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261130 (A199969 (n + 1)).toNat

end

end A068111.P6439663635185442601

namespace A068111

/-- `A261130(A199969(n+1))` -/
def P6439663635185442601.Spec : Prop :=
  ∀ n, P6439663635185442601.a n = A068111 n

end A068111

/-! ## A068111.P2149589647732311817

`A261130(A159075(n)+n)`
-/

namespace A068111.P2149589647732311817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261130 (A159075 n + (n : ℤ)).toNat

end

end A068111.P2149589647732311817

namespace A068111

/-- `A261130(A159075(n)+n)` -/
def P2149589647732311817.Spec : Prop :=
  ∀ n, P2149589647732311817.a n = A068111 n

end A068111

/-! ## A068111.P16245570097002658618

`A261130(n-A063524(n))`
-/

namespace A068111.P16245570097002658618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261130 ((n : ℤ) - A063524 n).toNat

end

end A068111.P16245570097002658618

namespace A068111

/-- `A261130(n-A063524(n))` -/
def P16245570097002658618.Spec : Prop :=
  ∀ n, P16245570097002658618.a n = A068111 n

end A068111

/-! ## A068111.P6488745693478539319

`A261130(n)/A373565(n)`
-/

namespace A068111.P6488745693478539319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261130 n : ℚ) / (A373565 n : ℚ)

end

end A068111.P6488745693478539319

namespace A068111

/-- `A261130(n)/A373565(n)` -/
def P6488745693478539319.Spec : Prop :=
  ∀ n, P6488745693478539319.a n = (A068111 n : ℚ)

end A068111

/-! ## A068111.P10172823578878567605

`gcd(A169585(n), A261130(n))`
-/

namespace A068111.P10172823578878567605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169585 n) (A261130 n)

end

end A068111.P10172823578878567605

namespace A068111

/-- `gcd(A169585(n), A261130(n))` -/
def P10172823578878567605.Spec : Prop :=
  ∀ n, (P10172823578878567605.a n : ℤ) = A068111 n

end A068111

/-! ## A068111.P6653790257737797200

`A261130(n-A159075(n)²)`
-/

namespace A068111.P6653790257737797200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261130 ((n : ℤ) - A159075 n ^ 2).toNat

end

end A068111.P6653790257737797200

namespace A068111

/-- `A261130(n-A159075(n)²)` -/
def P6653790257737797200.Spec : Prop :=
  ∀ n, P6653790257737797200.a n = A068111 n

end A068111

/-! ## A068111.P15479038474862357554

`(A089026(n+1)-char[1])*A144186(n)`
-/

namespace A068111.P15479038474862357554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089026 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A144186 n

end

end A068111.P15479038474862357554

namespace A068111

/-- `(A089026(n+1)-char[1])*A144186(n)` -/
def P15479038474862357554.Spec : Prop :=
  ∀ n, P15479038474862357554.a n = A068111 n

end A068111

/-! ## A068111.P15408630498123714661

`or(1, A055773(2*n)-A000035(2*n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A068111

/-- `or(1, A055773(2*n)-A000035(2*n+1))` -/
def P15408630498123714661.Spec : Prop :=
  ∀ n, P15408630498123714661.a n = A068111 n

theorem P15408630498123714661.correct : P15408630498123714661.Spec := by
  intro n
  simp only [A068111]

end A068111

/-! ## A068111.P15481540599216801559

`A055773(2*n)/gcd(A001222(n+1)+1, A055773(2*n))`
-/

namespace A068111.P15481540599216801559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055773 (2 * n) : ℚ) / (Int.gcd (A001222 (n + 1) + 1) (A055773 (2 * n)) : ℚ)

end

end A068111.P15481540599216801559

namespace A068111

/-- `A055773(2*n)/gcd(A001222(n+1)+1, A055773(2*n))` -/
def P15481540599216801559.Spec : Prop :=
  ∀ n, P15481540599216801559.a n = (A068111 n : ℚ)

end A068111

/-! ## A068111.P9427538410843501758

`A055773(2*n)/gcd(2, A055773(2*n+1))`
-/

namespace A068111.P9427538410843501758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055773 (2 * n) : ℚ) / (Int.gcd 2 (A055773 (2 * n + 1)) : ℚ)

end

end A068111.P9427538410843501758

namespace A068111

/-- `A055773(2*n)/gcd(2, A055773(2*n+1))` -/
def P9427538410843501758.Spec : Prop :=
  ∀ n, P9427538410843501758.a n = (A068111 n : ℚ)

end A068111

/-! ## A068111.P8024065827220247370

`A001790(n)/A356637(n)`
-/

namespace A068111.P8024065827220247370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n : ℚ) / (A356637 n : ℚ)

end

end A068111.P8024065827220247370

namespace A068111

/-- `A001790(n)/A356637(n)` -/
def P8024065827220247370.Spec : Prop :=
  ∀ n, P8024065827220247370.a n = (A068111 n : ℚ)

end A068111

/-! ## A068111.P11089586649048817219

`gcd(A001790(n), A073838(n+1))`
-/

namespace A068111.P11089586649048817219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001790 n) (A073838 (n + 1))

end

end A068111.P11089586649048817219

namespace A068111

/-- `gcd(A001790(n), A073838(n+1))` -/
def P11089586649048817219.Spec : Prop :=
  ∀ n, (P11089586649048817219.a n : ℤ) = A068111 n

end A068111

/-! ## A068111.P4975297892876354448

`A000984(n)/(A001316(n)*A356637(n))`
-/

namespace A068111.P4975297892876354448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A001316 n * A356637 n : ℚ)

end

end A068111.P4975297892876354448

namespace A068111

/-- `A000984(n)/(A001316(n)*A356637(n))` -/
def P4975297892876354448.Spec : Prop :=
  ∀ n, P4975297892876354448.a n = (A068111 n : ℚ)

end A068111

/-! ## A068111.P9730916042974557209

`A261130(n)/gcd(2, A337568(n+1))`
-/

namespace A068111.P9730916042974557209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261130 n : ℚ) / (Int.gcd 2 (A337568 (n + 1)) : ℚ)

end

end A068111.P9730916042974557209

namespace A068111

/-- `A261130(n)/gcd(2, A337568(n+1))` -/
def P9730916042974557209.Spec : Prop :=
  ∀ n, P9730916042974557209.a n = (A068111 n : ℚ)

end A068111

/-! ## A068111.P2554520656238984978

`A034386(2*n)/A186944(n+1)`
-/

namespace A068111.P2554520656238984978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (2 * n) : ℚ) / (A186944 (n + 1) : ℚ)

end

end A068111.P2554520656238984978

namespace A068111

/-- `A034386(2*n)/A186944(n+1)` -/
def P2554520656238984978.Spec : Prop :=
  ∀ n, P2554520656238984978.a n = (A068111 n : ℚ)

end A068111

/-! ## A068111.P17120805516880434230

`A186944(2*n+1)/A186944(n+1)`
-/

namespace A068111.P17120805516880434230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186944 (2 * n + 1) : ℚ) / (A186944 (n + 1) : ℚ)

end

end A068111.P17120805516880434230

namespace A068111

/-- `A186944(2*n+1)/A186944(n+1)` -/
def P17120805516880434230.Spec : Prop :=
  ∀ n, P17120805516880434230.a n = (A068111 n : ℚ)

end A068111

/-! ## A068111.P5734169436266742929

`A034386(A004273(n))/A034386(n)`
-/

namespace A068111.P5734169436266742929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (A004273 n).toNat : ℚ) / (A034386 n : ℚ)

end

end A068111.P5734169436266742929

namespace A068111

/-- `A034386(A004273(n))/A034386(n)` -/
def P5734169436266742929.Spec : Prop :=
  ∀ n, P5734169436266742929.a n = (A068111 n : ℚ)

end A068111

/-!
# A068113: Numerator of coefficient of (-x^2)^n in F(x)*F(-x) where F(x) = Sum_{k>=0} x^k/(k!)^3.

The programs for A068113, the canonical program `A068113.P2867666152825364727` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068113 has offset 0).

The definition of A068113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068113.P2867666152825364727

`gcd(A005809(n), A073838(2*n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A068113

/-- `gcd(A005809(n), A073838(2*n+1))` -/
def P2867666152825364727.Spec : Prop :=
  ∀ n, (P2867666152825364727.a n : ℤ) = A068113 n

theorem P2867666152825364727.correct : P2867666152825364727.Spec := by
  intro n
  simp only [A068113]

end A068113

/-! ## A068113.P1400118945141658786

`A034386(3*n)/A034386(2*n)`
-/

namespace A068113.P1400118945141658786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (3 * n) : ℚ) / (A034386 (2 * n) : ℚ)

end

end A068113.P1400118945141658786

namespace A068113

/-- `A034386(3*n)/A034386(2*n)` -/
def P1400118945141658786.Spec : Prop :=
  ∀ n, P1400118945141658786.a n = (A068113 n : ℚ)

end A068113

/-! ## A068113.P13573160200386637222

`A300951(A008458(n))/A034386(2*n)`
-/

namespace A068113.P13573160200386637222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 (A008458 n).toNat : ℚ) / (A034386 (2 * n) : ℚ)

end

end A068113.P13573160200386637222

namespace A068113

/-- `A300951(A008458(n))/A034386(2*n)` -/
def P13573160200386637222.Spec : Prop :=
  ∀ n, P13573160200386637222.a n = (A068113 n : ℚ)

end A068113

/-! ## A068113.P4379036766505065748

`gcd(A006480(n), A055773(4*n))`
-/

namespace A068113.P4379036766505065748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006480 n) (A055773 (4 * n))

end

end A068113.P4379036766505065748

namespace A068113

/-- `gcd(A006480(n), A055773(4*n))` -/
def P4379036766505065748.Spec : Prop :=
  ∀ n, (P4379036766505065748.a n : ℤ) = A068113 n

end A068113

/-! ## A068113.P8905345884815442461

`gcd(A005809(n)², A073838(A005408(n)))`
-/

namespace A068113.P8905345884815442461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005809 n ^ 2) (A073838 (A005408 n).toNat)

end

end A068113.P8905345884815442461

namespace A068113

/-- `gcd(A005809(n)², A073838(A005408(n)))` -/
def P8905345884815442461.Spec : Prop :=
  ∀ n, (P8905345884815442461.a n : ℤ) = A068113 n

end A068113

/-!
# A068114: Integers of the form phi(k!)/phi(k)!.

The programs for A068114, there is no canonical definition to state claims against.
-/

/-! ## A068114.P2178412038313732074

`lcm(n+1, A000010(∏[4*n+2]))`
-/

namespace A068114.P2178412038313732074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A000010 (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A068114.P2178412038313732074

/-!
# A068115: Continued fraction expansion for cos(1).

The programs for A068115, there is no canonical definition to state claims against.
-/

/-! ## A068115.P2197258022166464665

`A222481(char[1]+n)`
-/

namespace A068115.P2197258022166464665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222481 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A068115.P2197258022166464665

/-! ## A068115.P3810157361940425495

`A222481(n)-char[1]`
-/

namespace A068115.P3810157361940425495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222481 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A068115.P3810157361940425495

/-! ## A068115.P1047794123618915088

`A222481(n)/A141044(n)`
-/

namespace A068115.P1047794123618915088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222481 n : ℚ) / (A141044 n : ℚ)

end

end A068115.P1047794123618915088

/-! ## A068115.P15266499008399329112

`A222481(n)/A373565(n)`
-/

namespace A068115.P15266499008399329112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222481 n : ℚ) / (A373565 n : ℚ)

end

end A068115.P15266499008399329112

/-! ## A068115.P11445748947154821569

`gcd(A048298(n), A222481(n))`
-/

namespace A068115.P11445748947154821569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048298 n) (A222481 n)

end

end A068115.P11445748947154821569

/-! ## A068115.P15658148010186233595

`A222481(n)/(A063524(n)+1)`
-/

namespace A068115.P15658148010186233595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222481 n : ℚ) / (A063524 n + 1 : ℚ)

end

end A068115.P15658148010186233595

/-! ## A068115.P425850073812220798

`A222481(n)/(1-A159075(n))`
-/

namespace A068115.P425850073812220798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222481 n : ℚ) / (1 - A159075 n : ℚ)

end

end A068115.P425850073812220798

/-!
# A068119: Number of steps to reach an integer starting with n + 1/4 and iterating the map x -> x*ceiling(x).

The programs for A068119, there is no canonical definition to state claims against.
-/

/-! ## A068119.P2533582589924468277

`A073341(2*(n+1))`
-/

namespace A068119.P2533582589924468277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073341 (2 * (n + 1))

end

end A068119.P2533582589924468277

/-! ## A068119.P2405118730877341669

`A000027(A073341(n+2+n))`
-/

namespace A068119.P2405118730877341669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A073341 (n + 2 + n)).toNat

end

end A068119.P2405118730877341669

/-! ## A068119.P3363545108993288355

`A073890(A073341(n+2+n)²)`
-/

namespace A068119.P3363545108993288355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073890 (A073341 (n + 2 + n) ^ 2).toNat

end

end A068119.P3363545108993288355

/-! ## A068119.P3191893730713651332

`or(A000007(n), A073341(n+2+n))`
-/

namespace A068119.P3191893730713651332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A073341 (n + 2 + n))

end

end A068119.P3191893730713651332

/-! ## A068119.P8246786284021837662

`∑{d}[A073341(n+2+n), A000010(#)]`
-/

namespace A068119.P8246786284021837662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073341 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A068119.P8246786284021837662

/-! ## A068119.P11859636550895552936

`A073341(Δ[A048058(n)])-A000035(2*n)`
-/

namespace A068119.P11859636550895552936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073341 (f1 (n + 1) - f1 n).toNat - A000035 (2 * n)

end

end A068119.P11859636550895552936

/-! ## A068119.P9886066167941562780

`A074735(4*n+2)`
-/

namespace A068119.P9886066167941562780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074735 (4 * n + 2)

end

end A068119.P9886066167941562780

/-!
# A068120: Smallest prime beginning with exactly n n's.

The programs for A068120, there is no canonical definition to state claims against.
-/

/-! ## A068120.P11703325619010387505

`A088639(n+1)+floor(acot(n)²)`
-/

namespace A068120.P11703325619010387505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088639 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A068120.P11703325619010387505

/-! ## A068120.P17600079122504383961

`A088639(n+1)+A000038(n)`
-/

namespace A068120.P17600079122504383961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088639 (n + 1) + A000038 n

end

end A068120.P17600079122504383961

/-! ## A068120.P7457717058175014208

`A088639(n+1)+1-A158388(n)`
-/

namespace A068120.P7457717058175014208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088639 (n + 1) + 1 - A158388 n

end

end A068120.P7457717058175014208

/-! ## A068120.P7330102103373605248

`A099357(floor(1/(n+1)))+A088639(n+1)`
-/

namespace A068120.P7330102103373605248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099357 ⌊1 / (n + 1 : ℚ)⌋.toNat + A088639 (n + 1)

end

end A068120.P7330102103373605248

/-! ## A068120.P15490317621061804404

`or(1, A151909(n)+A088639(A077168(n)))`
-/

namespace A068120.P15490317621061804404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A151909 n + A088639 (A077168 n).toNat)

end

end A068120.P15490317621061804404

/-!
# A068121: Smallest n-th power beginning with the concatenation of first n natural numbers.

The programs for A068121, there is no canonical definition to state claims against.
-/

/-! ## A068121.P14106583984377285878

`A068122(n+1)^(n+1)`
-/

namespace A068121.P14106583984377285878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068122 (n + 1) ^ (n + 1)

end

end A068121.P14106583984377285878

/-!
# A068122: Smallest number whose n-th power begins with concatenation of first n numbers; n-th root of A068121.

The programs for A068122, there is no canonical definition to state claims against.
-/

/-! ## A068122.P14993609711941633539

`root(A068121(n+1), n+1)`
-/

namespace A068122.P14993609711941633539
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A068121 (n + 1) : ℝ) ^ (1 / (n + 1 : ℝ))

end

end A068122.P14993609711941633539

/-!
# A068123: 

The programs for A068123, there is no canonical definition to state claims against.
-/

/-! ## A068123.P9129859772152495384

`A068124(n+1)^(n+1)`
-/

namespace A068123.P9129859772152495384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068124 (n + 1) ^ (n + 1)

end

end A068123.P9129859772152495384

/-!
# A068125: Possible final digits of a triangular number.

The programs for A068125, there is no canonical definition to state claims against.
-/

/-! ## A068125.P5319036366828942922

`∪[eq[2, A277543((n+2)*(3*n+1))], A187126(n+3)]`
-/

namespace A068125.P5319036366828942922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 ((n + 2) * (3 * n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187126 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A068125.P5319036366828942922

/-! ## A068125.P9808865855053686350

`lt[A046523(n+1), A040914(A152741(n+4))]`
-/

namespace A068125.P9808865855053686350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040914 (A152741 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068125.P9808865855053686350

/-! ## A068125.P12306237869185460905

`lt[A000073(A068934(2*n+5)), A033764(n)]`
-/

namespace A068125.P12306237869185460905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A068934 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033764 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068125.P12306237869185460905

/-! ## A068125.P4124488805033739928

`lt[A343387(2*(n+2)), A040914(A152741(n+4))]`
-/

namespace A068125.P4124488805033739928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343387 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040914 (A152741 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068125.P4124488805033739928

/-! ## A068125.P14551593559110615595

`lt[A010874(A033638(2*(n+2))), A331104(3*n+1)]`
-/

namespace A068125.P14551593559110615595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A033638 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331104 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068125.P14551593559110615595

/-!
# A068127: Triangular numbers with sum of digits = 3.

The programs for A068127, there is no canonical definition to state claims against.
-/

/-! ## A068127.P8999394856152187982

`∩[A052217(n+1), A062099(n+1)]`
-/

namespace A068127.P8999394856152187982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068127.P8999394856152187982

/-! ## A068127.P6709702873472323092

`∩[A052217(n+1), A076713(n+1)]`
-/

namespace A068127.P6709702873472323092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068127.P6709702873472323092

/-! ## A068127.P5611455758439468985

`∩[A052217(n+1), A117512(n+1)]`
-/

namespace A068127.P5611455758439468985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068127.P5611455758439468985

/-! ## A068127.P7036395909273372289

`∩[A061909(n+1), A117512(n+1)]`
-/

namespace A068127.P7036395909273372289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068127.P7036395909273372289

/-! ## A068127.P7440626802290344546

`∩[A062099(n+1), A117512(n+1)]`
-/

namespace A068127.P7440626802290344546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068127.P7440626802290344546

/-!
# A068128: Triangular numbers with sum of digits = 6.

The programs for A068128, there is no canonical definition to state claims against.
-/

/-! ## A068128.P14684036675104207494

`∩[A052220(n+1), A117309(n)]`
-/

namespace A068128.P14684036675104207494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117309 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068128.P14684036675104207494

/-! ## A068128.P15793295269557674251

`∩[A052220(n+1), A061304(n+1)]`
-/

namespace A068128.P15793295269557674251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068128.P15793295269557674251

/-! ## A068128.P18108325681505518117

`∩[A052220(n+1), A062099(n+1)]`
-/

namespace A068128.P18108325681505518117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068128.P18108325681505518117

/-! ## A068128.P1087037991254761471

`∩[A052220(n+1), A242454(n+1)]`
-/

namespace A068128.P1087037991254761471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068128.P1087037991254761471

/-! ## A068128.P15600522415894582151

`∩[A052220(n+1), A152899(n+1)]`
-/

namespace A068128.P15600522415894582151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068128.P15600522415894582151

/-!
# A068129: Triangular numbers with sum of digits = 10.

The programs for A068129, there is no canonical definition to state claims against.
-/

/-! ## A068129.P12136671357917522809

`A000217(eq[10, A004157(n)])`
-/

namespace A068129.P12136671357917522809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068129.P12136671357917522809

/-! ## A068129.P13072663073355608727

`A000124(eq[10, A004157(n)])-1`
-/

namespace A068129.P13072663073355608727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A068129.P13072663073355608727

/-! ## A068129.P11070879850747638329

`A133263(eq[10, A004157(n)])-2`
-/

namespace A068129.P11070879850747638329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 2

end

end A068129.P11070879850747638329

/-! ## A068129.P8716266919981122049

`A002378(eq[10, A004157(n)])/2`
-/

namespace A068129.P8716266919981122049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A068129.P8716266919981122049

/-! ## A068129.P6557256390429282357

`∩[A052224(n+1), C(n+1, 2)]`
-/

namespace A068129.P6557256390429282357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A068129.P6557256390429282357

/-! ## A068129.P9104118042476309238

`∩[A052224(n+1), A000217(n)]`
-/

namespace A068129.P9104118042476309238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068129.P9104118042476309238

/-! ## A068129.P15032224172858978030

`∩[A052224(n+1), A001972(n)]`
-/

namespace A068129.P15032224172858978030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068129.P15032224172858978030

/-! ## A068129.P3267526870469731499

`∩[A052224(n+1), A122493(n)]`
-/

namespace A068129.P3267526870469731499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122493 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068129.P3267526870469731499

/-! ## A068129.P6533472917637092026

`∩[A052224(n+1), A253145(n)]`
-/

namespace A068129.P6533472917637092026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068129.P6533472917637092026

/-! ## A068129.P14308085600495841454

`∩[A003038(n+1), A052224(n+1)]`
-/

namespace A068129.P14308085600495841454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068129.P14308085600495841454

/-!
# A068130: Triangular numbers with sum of digits = 15.

The programs for A068130, the canonical program `A068130.P8380932321966618756` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068130 has offset 1).

The definition of A068130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068130.P8380932321966618756

`A000217(eq[15, A004157(n)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A068130

/-- `A000217(eq[15, A004157(n)])` -/
def P8380932321966618756.Spec : Prop :=
  ∀ n, P8380932321966618756.a n = A068130 (n + 1)

theorem P8380932321966618756.correct : P8380932321966618756.Spec := by
  intro n
  simp only [A068130, Nat.add_sub_cancel]

end A068130

/-! ## A068130.P2047866519884572114

`A000124(eq[15, A004157(n)])-1`
-/

namespace A068130.P2047866519884572114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A068130.P2047866519884572114

namespace A068130

/-- `A000124(eq[15, A004157(n)])-1` -/
def P2047866519884572114.Spec : Prop :=
  ∀ n, P2047866519884572114.a n = A068130 (n + 1)

end A068130

/-! ## A068130.P10246262927915967158

`∩[A235226(n+1), A000217(n)]`
-/

namespace A068130.P10246262927915967158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068130.P10246262927915967158

namespace A068130

/-- `∩[A235226(n+1), A000217(n)]` -/
def P10246262927915967158.Spec : Prop :=
  ∀ n, (P10246262927915967158.a n : ℤ) = A068130 (n + 1)

end A068130

/-! ## A068130.P4944296712220965110

`∩[A235226(n+1), A117309(n)]`
-/

namespace A068130.P4944296712220965110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117309 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068130.P4944296712220965110

namespace A068130

/-- `∩[A235226(n+1), A117309(n)]` -/
def P4944296712220965110.Spec : Prop :=
  ∀ n, (P4944296712220965110.a n : ℤ) = A068130 (n + 1)

end A068130

/-! ## A068130.P6945608831926631044

`∩[A235226(n+1), A122493(n)]`
-/

namespace A068130.P6945608831926631044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122493 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068130.P6945608831926631044

namespace A068130

/-- `∩[A235226(n+1), A122493(n)]` -/
def P6945608831926631044.Spec : Prop :=
  ∀ n, (P6945608831926631044.a n : ℤ) = A068130 (n + 1)

end A068130

/-! ## A068130.P6507334708007010372

`∩[A235226(n+1), A253145(n)]`
-/

namespace A068130.P6507334708007010372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068130.P6507334708007010372

namespace A068130

/-- `∩[A235226(n+1), A253145(n)]` -/
def P6507334708007010372.Spec : Prop :=
  ∀ n, (P6507334708007010372.a n : ℤ) = A068130 (n + 1)

end A068130

/-! ## A068130.P141948355267245024

`∩[A005214(n+1), A235226(n+1)]`
-/

namespace A068130.P141948355267245024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068130.P141948355267245024

namespace A068130

/-- `∩[A005214(n+1), A235226(n+1)]` -/
def P141948355267245024.Spec : Prop :=
  ∀ n, (P141948355267245024.a n : ℤ) = A068130 (n + 1)

end A068130

/-! ## A068130.P14375323173226281219

`∩[A062099(n+1), A235226(n+1)]`
-/

namespace A068130.P14375323173226281219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068130.P14375323173226281219

namespace A068130

/-- `∩[A062099(n+1), A235226(n+1)]` -/
def P14375323173226281219.Spec : Prop :=
  ∀ n, (P14375323173226281219.a n : ℤ) = A068130 (n + 1)

end A068130

/-! ## A068130.P7142738627733735327

`∩[A074134(n+1), A235226(n+1)]`
-/

namespace A068130.P7142738627733735327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068130.P7142738627733735327

namespace A068130

/-- `∩[A074134(n+1), A235226(n+1)]` -/
def P7142738627733735327.Spec : Prop :=
  ∀ n, (P7142738627733735327.a n : ℤ) = A068130 (n + 1)

end A068130

/-! ## A068130.P3930201554324707979

`∩[A082667(n+1), A235226(n+1)]`
-/

namespace A068130.P3930201554324707979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068130.P3930201554324707979

namespace A068130

/-- `∩[A082667(n+1), A235226(n+1)]` -/
def P3930201554324707979.Spec : Prop :=
  ∀ n, (P3930201554324707979.a n : ℤ) = A068130 (n + 1)

end A068130

/-!
# A068131: Triangular numbers with sum of digits = 21.

The programs for A068131, the canonical program `A068131.P296359315164383935` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068131 has offset 1).

The definition of A068131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068131.P5742431063687455239

`A117523(n+4)`
-/

namespace A068131.P5742431063687455239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117523 (n + 4)

end

end A068131.P5742431063687455239

namespace A068131

/-- `A117523(n+4)` -/
def P5742431063687455239.Spec : Prop :=
  ∀ n, P5742431063687455239.a n = A068131 (n + 1)

end A068131

/-! ## A068131.P16133006519825859643

`record[A117523(∑[1-a(n-1)])]` with `a(0)=4`
-/

namespace A068131.P16133006519825859643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117523 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068131.P16133006519825859643

namespace A068131

/-- `record[A117523(∑[1-a(n-1)])]` -/
def P16133006519825859643.Spec : Prop :=
  ∀ n, P16133006519825859643.a n = A068131 (n + 1)

end A068131

/-! ## A068131.P296359315164383935

`A000217(eq[21, A004157(n)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A068131

/-- `A000217(eq[21, A004157(n)])` -/
def P296359315164383935.Spec : Prop :=
  ∀ n, P296359315164383935.a n = A068131 (n + 1)

theorem P296359315164383935.correct : P296359315164383935.Spec := by
  intro n
  simp only [A068131, Nat.add_sub_cancel]

end A068131

/-! ## A068131.P15872910681255737087

`A000124(eq[21, A004157(n)])-1`
-/

namespace A068131.P15872910681255737087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A068131.P15872910681255737087

namespace A068131

/-- `A000124(eq[21, A004157(n)])-1` -/
def P15872910681255737087.Spec : Prop :=
  ∀ n, P15872910681255737087.a n = A068131 (n + 1)

end A068131

/-! ## A068131.P1019628545848386249

`A002378(eq[21, A004157(n)])/2`
-/

namespace A068131.P1019628545848386249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A068131.P1019628545848386249

namespace A068131

/-- `A002378(eq[21, A004157(n)])/2` -/
def P1019628545848386249.Spec : Prop :=
  ∀ n, P1019628545848386249.a n = (A068131 (n + 1) : ℚ)

end A068131

/-!
# A068132: Triangular numbers with sum of digits = 28.

The programs for A068132, the canonical program `A068132.P10501098146319111768` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068132 has offset 1).

The definition of A068132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068132.P10501098146319111768

`A000217(eq[28, A004157(n)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A068132

/-- `A000217(eq[28, A004157(n)])` -/
def P10501098146319111768.Spec : Prop :=
  ∀ n, P10501098146319111768.a n = A068132 (n + 1)

theorem P10501098146319111768.correct : P10501098146319111768.Spec := by
  intro n
  simp only [A068132, Nat.add_sub_cancel]

end A068132

/-! ## A068132.P16621742161470686719

`∩[A179865(3*n+2), A117309(n+4)]`
-/

namespace A068132.P16621742161470686719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117309 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068132.P16621742161470686719

namespace A068132

/-- `∩[A179865(3*n+2), A117309(n+4)]` -/
def P16621742161470686719.Spec : Prop :=
  ∀ n, (P16621742161470686719.a n : ℤ) = A068132 (n + 1)

end A068132

/-! ## A068132.P768211454300309491

`∩[A117309(n+4), A000217(A016777(n))]`
-/

namespace A068132.P768211454300309491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117309 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A016777 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068132.P768211454300309491

namespace A068132

/-- `∩[A117309(n+4), A000217(A016777(n))]` -/
def P768211454300309491.Spec : Prop :=
  ∀ n, (P768211454300309491.a n : ℤ) = A068132 (n + 1)

end A068132

/-!
# A068133: First triangular number with digit sum = n-th triangular number.

The programs for A068133, there is no canonical definition to state claims against.
-/

/-! ## A068133.P952448674039809264

`A000217(A068134(n))`
-/

namespace A068133.P952448674039809264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A068134 n).toNat

end

end A068133.P952448674039809264

/-! ## A068133.P13404108786282990473

`A062688(A000038(n)+∑[n])`
-/

namespace A068133.P13404108786282990473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062688 (A000038 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A068133.P13404108786282990473

/-! ## A068133.P17278763355533779244

`A062688(A135278(A000124(n)))`
-/

namespace A068133.P17278763355533779244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062688 (A135278 (A000124 n).toNat).toNat

end

end A068133.P17278763355533779244

/-! ## A068133.P6502638151728431130

`A062688(A000217(n)+A000038(n))`
-/

namespace A068133.P6502638151728431130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062688 (A000217 n + A000038 n).toNat

end

end A068133.P6502638151728431130

/-! ## A068133.P3301137568561469711

`A062688(xor(A000038(n), A000217(n)))`
-/

namespace A068133.P3301137568561469711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062688 (Int.xor (A000038 n) (A000217 n)).toNat

end

end A068133.P3301137568561469711

/-!
# A068134: Index of the smallest triangular number with digit sum = n-th triangular number.

The programs for A068134, there is no canonical definition to state claims against.
-/

/-! ## A068134.P14196852444942601399

`A003056(A068133(n))`
-/

namespace A068134.P14196852444942601399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A068133 n).toNat

end

end A068134.P14196852444942601399

/-! ## A068134.P3034396081642081107

`A003986(A320751(n+1)+A068133(n))`
-/

namespace A068134.P3034396081642081107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A320751 (n + 1) + A068133 n).toNat

end

end A068134.P3034396081642081107

/-! ## A068134.P14534752522839451516

`A261097(A188020(n+1)+A068133(n))`
-/

namespace A068134.P14534752522839451516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261097 (A188020 (n + 1) + A068133 n).toNat

end

end A068134.P14534752522839451516

/-! ## A068134.P7169639440149498814

`A261097(A068133(n)-A304818(n+1)+n)`
-/

namespace A068134.P7169639440149498814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261097 (A068133 n - A304818 (n + 1) + (n : ℤ)).toNat

end

end A068134.P7169639440149498814

/-!
# A068140: Smaller of two consecutive numbers each divisible by a cube greater than one.

The programs for A068140, the canonical program `A068140.P16002895801053887860` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068140 has offset 1).

The definition of A068140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 774 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068140.P16002895801053887860

`∩[A046099(n+1)-1, A046099(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A068140

/-- `∩[A046099(n+1)-1, A046099(n+1)]` -/
def P16002895801053887860.Spec : Prop :=
  ∀ n, (P16002895801053887860.a n : ℤ) = A068140 (n + 1)

theorem P16002895801053887860.correct : P16002895801053887860.Spec := by
  intro n
  simp only [A068140, Nat.add_sub_cancel]

end A068140

/-! ## A068140.P1466401463600700982

`∩[A046099(n+1), A023443(A046099(n+1))]`
-/

namespace A068140.P1466401463600700982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A046099 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068140.P1466401463600700982

namespace A068140

/-- `∩[A046099(n+1), A023443(A046099(n+1))]` -/
def P1466401463600700982.Spec : Prop :=
  ∀ n, (P1466401463600700982.a n : ℤ) = A068140 (n + 1)

end A068140

/-! ## A068140.P17838142761852623227

`A349234(A187829(n+1))+1`
-/

namespace A068140.P17838142761852623227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349234 (A187829 (n + 1)).toNat + 1

end

end A068140.P17838142761852623227

namespace A068140

/-- `A349234(A187829(n+1))+1` -/
def P17838142761852623227.Spec : Prop :=
  ∀ n, P17838142761852623227.a n = A068140 (n + 1)

end A068140

/-! ## A068140.P5993156834102918742

`A349234(n+1)+A028240(n)!`
-/

namespace A068140.P5993156834102918742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349234 (n + 1) + (Nat.factorial (A028240 n).toNat : ℤ)

end

end A068140.P5993156834102918742

namespace A068140

/-- `A349234(n+1)+A028240(n)!` -/
def P5993156834102918742.Spec : Prop :=
  ∀ n, P5993156834102918742.a n = A068140 (n + 1)

end A068140

/-! ## A068140.P13481769538195673827

`A349234(n+1)+A134279(3*n+4)%5`
-/

namespace A068140.P13481769538195673827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349234 (n + 1) + Int.tmod (A134279 (3 * n + 4)) 5

end

end A068140.P13481769538195673827

namespace A068140

/-- `A349234(n+1)+A134279(3*n+4)%5` -/
def P13481769538195673827.Spec : Prop :=
  ∀ n, P13481769538195673827.a n = A068140 (n + 1)

end A068140

/-!
# A068142: a(0) = 21; for n > 0, a(n) is the smallest triangular number which is a (proper) multiple of a(n-1).

The programs for A068142, there is no canonical definition to state claims against.
-/

/-! ## A068142.P11710284870409544210

`∩[A069499(n+1), A178863(n+1)]`
-/

namespace A068142.P11710284870409544210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068142.P11710284870409544210

/-!
# A068143: Triangular numbers which are products of triangular numbers larger than 1.

The programs for A068143, there is no canonical definition to state claims against.
-/

/-! ## A068143.P4948080166039227028

`A000217(A380825(n+1))`
-/

namespace A068143.P4948080166039227028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A380825 (n + 1)).toNat

end

end A068143.P4948080166039227028

/-! ## A068143.P13129126165556438707

`A374370(A167614(n+1))`
-/

namespace A068143.P13129126165556438707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374370 (A167614 (n + 1)).toNat

end

end A068143.P13129126165556438707

/-! ## A068143.P13536749534893675158

`A374370(A000217(n+3)-n)`
-/

namespace A068143.P13536749534893675158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374370 (A000217 (n + 3) - (n : ℤ)).toNat

end

end A068143.P13536749534893675158

/-!
# A068145: Primes of the form a^a + b^b where a and b are positive integers.

The programs for A068145, there is no canonical definition to state claims against.
-/

/-! ## A068145.P15089829615051658485

`p?[A066846(n)]`
-/

namespace A068145.P15089829615051658485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068145.P15089829615051658485

/-! ## A068145.P16869737515673019027

`p?[A218347(n+1)]`
-/

namespace A068145.P16869737515673019027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068145.P16869737515673019027

/-! ## A068145.P17677650533001142896

`p?[∑{e}[A100851(n), #^#]]`
-/

namespace A068145.P17677650533001142896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100851 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p ^ Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A068145.P17677650533001142896

/-!
# A068146: Primes of the form a^a - b^b.

The programs for A068146, there is no canonical definition to state claims against.
-/

/-! ## A068146.P8240587839975917035

`p?[A124076(n+1)]`
-/

namespace A068146.P8240587839975917035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068146.P8240587839975917035

/-!
# A068148: Primes in which neighboring digits differ at most by 1.

The programs for A068148, there is no canonical definition to state claims against.
-/

/-! ## A068148.P13043077898716211389

`p?[A376425(n+1)]`
-/

namespace A068148.P13043077898716211389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068148.P13043077898716211389

/-! ## A068148.P11709270465599666490

`∩[A076805(n+1), A376425(n+1)]`
-/

namespace A068148.P11709270465599666490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068148.P11709270465599666490

/-! ## A068148.P3439418129076525013

`∩[A000040(n+1), A376425(n+1)]`
-/

namespace A068148.P3439418129076525013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068148.P3439418129076525013

/-! ## A068148.P14736383713348947801

`∩[A070159(n+1), A376425(n+1)]`
-/

namespace A068148.P14736383713348947801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068148.P14736383713348947801

/-! ## A068148.P6514348254233744314

`∩[A079603(n+1), A376425(n+1)]`
-/

namespace A068148.P6514348254233744314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068148.P6514348254233744314

/-! ## A068148.P1955324662481378897

`∩[A182140(n+1), A376425(n+1)]`
-/

namespace A068148.P1955324662481378897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068148.P1955324662481378897

/-! ## A068148.P14982348329555489479

`filter[A376425(n+2), A010051(#)]`
-/

namespace A068148.P14982348329555489479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A068148.P14982348329555489479

/-!
# A068149: Triangular numbers in which neighboring digits differ at most by 1. Allowed neighbors of 9 are 0, 8 and 9.

The programs for A068149, there is no canonical definition to state claims against.
-/

/-! ## A068149.P8709455639345031281

`∩[A376425(n+1), ∑[n]]`
-/

namespace A068149.P8709455639345031281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A068149.P8709455639345031281

/-! ## A068149.P2990809377593026629

`∩[A000217(n), A376425(n+1)]`
-/

namespace A068149.P2990809377593026629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068149.P2990809377593026629

/-! ## A068149.P16751059260056262863

`filter[A376425(n+1), A010054(#)]`
-/

namespace A068149.P16751059260056262863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A068149.P16751059260056262863

/-! ## A068149.P12186512076718934777

`∩[A109811(n+1), A376425(n+1)]`
-/

namespace A068149.P12186512076718934777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068149.P12186512076718934777

/-! ## A068149.P9729122944119799948

`A000217(comp[9-A062740(n)])`
-/

namespace A068149.P9729122944119799948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A062740 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A068149.P9729122944119799948

/-!
# A068150: First of n consecutive primes == 7 mod 10.

The programs for A068150, there is no canonical definition to state claims against.
-/

/-! ## A068150.P17418993086853071004

`A057626(n+1)+5*A000007(n)`
-/

namespace A068150.P17418993086853071004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057626 (n + 1) + 5 * A000007 n

end

end A068150.P17418993086853071004

/-! ## A068150.P13226558473510382471

`A057626(n+1)+A033347(A003185(n))`
-/

namespace A068150.P13226558473510382471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057626 (n + 1) + A033347 (A003185 n).toNat

end

end A068150.P13226558473510382471

/-! ## A068150.P11037211517929126922

`or(A014963(A006504(n+1)), A057626(n+1))`
-/

namespace A068150.P11037211517929126922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014963 (A006504 (n + 1)).toNat) (A057626 (n + 1))

end

end A068150.P11037211517929126922

/-! ## A068150.P10564824492284509020

`A057637(A057602(3*(n+1)))+A057626(n+1)`
-/

namespace A068150.P10564824492284509020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A057602 (3 * (n + 1))).toNat + A057626 (n + 1)

end

end A068150.P10564824492284509020

/-! ## A068150.P9345830473125384326

`A057626(n+1)+A033347(A341383(n+1))`
-/

namespace A068150.P9345830473125384326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057626 (n + 1) + A033347 (A341383 (n + 1)).toNat

end

end A068150.P9345830473125384326

/-!
# A068155: Primes in increasing order with oscillating end digit pattern 1,3,7,9,7,3,1,3,7,9,7,3,1...

The programs for A068155, there is no canonical definition to state claims against.
-/

/-! ## A068155.P826154613453797809

`p?[A325270(n+2)-A071625(2*n+1)]`
-/

namespace A068155.P826154613453797809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325270 (n + 2) - A071625 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068155.P826154613453797809

/-! ## A068155.P12855418116156769686

`p?[A020742(n)*A335225(n+1)]`
-/

namespace A068155.P12855418116156769686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n * A335225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068155.P12855418116156769686

/-!
# A068156: G.f.: (x+2)*(x+1)/((x-1)*(x-2)) = Sum_{n>=0} a(n)*(x/2)^n.

The programs for A068156, the canonical program `A068156.P1770333181684600762` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068156 has offset 0).

The definition of A068156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068156.P14660392301088414531

`a(n-1)+3*2^(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A068156.P14660392301088414531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + 3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A068156.P14660392301088414531

namespace A068156

/-- `a(n-1)+3*2^(n-1)` -/
def P14660392301088414531.Spec : Prop :=
  ∀ n, P14660392301088414531.a n = (A068156 n : ℚ)

end A068156

/-! ## A068156.P1770333181684600762

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A068156

/-- `3*a(n-1)-2*a(n-2)` -/
def P1770333181684600762.Spec : Prop :=
  ∀ n, P1770333181684600762.a n = A068156 n

theorem P1770333181684600762.correct : P1770333181684600762.Spec := by
  intro n
  simp only [A068156]

end A068156

/-! ## A068156.P7654359276649663773

`A060482(1+2*n)`
-/

namespace A068156.P7654359276649663773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060482 (1 + 2 * n)

end

end A068156.P7654359276649663773

namespace A068156

/-- `A060482(1+2*n)` -/
def P7654359276649663773.Spec : Prop :=
  ∀ n, P7654359276649663773.a n = A068156 n

end A068156

/-! ## A068156.P18144420620701952294

`2*a(n-1)+3` with `a(0)=1, a(1)=3`
-/

namespace A068156.P18144420620701952294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + 3

end

end A068156.P18144420620701952294

namespace A068156

/-- `2*a(n-1)+3` -/
def P18144420620701952294.Spec : Prop :=
  ∀ n, (P18144420620701952294.a n : ℤ) = A068156 n

end A068156

/-! ## A068156.P2692241229070554746

`lcm(2, a(n-1))+3` with `a(0)=1, a(1)=3`
-/

namespace A068156.P2692241229070554746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lcm 2 (a (n - 1)) + 3

end

end A068156.P2692241229070554746

namespace A068156

/-- `lcm(2, a(n-1))+3` -/
def P2692241229070554746.Spec : Prop :=
  ∀ n, (P2692241229070554746.a n : ℤ) = A068156 n

end A068156

/-! ## A068156.P17812976698200912466

`∑[2*a(n-1)]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A068156.P17812976698200912466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068156.P17812976698200912466

namespace A068156

/-- `∑[2*a(n-1)]` -/
def P17812976698200912466.Spec : Prop :=
  ∀ n, (P17812976698200912466.a n : ℤ) = A068156 n

end A068156

/-! ## A068156.P15202603997239804980

`or(1, abs(3*2^n-4))`
-/

namespace A068156.P15202603997239804980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 |(3 * 2 ^ n : ℤ) - 4|

end

end A068156.P15202603997239804980

namespace A068156

/-- `or(1, abs(3*2^n-4))` -/
def P15202603997239804980.Spec : Prop :=
  ∀ n, P15202603997239804980.a n = A068156 n

end A068156

/-! ## A068156.P10099620262278650897

`record[2*a(n-1)]-3` with `a(0)=4, a(1)=3`
-/

namespace A068156.P10099620262278650897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 3

end

end A068156.P10099620262278650897

namespace A068156

/-- `record[2*a(n-1)]-3` -/
def P10099620262278650897.Spec : Prop :=
  ∀ n, P10099620262278650897.a n = A068156 n

end A068156

/-! ## A068156.P2926296980103560019

`5-2*(1-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A068156.P2926296980103560019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  5 - 2 * (1 - a (n - 1))

end

end A068156.P2926296980103560019

namespace A068156

/-- `5-2*(1-a(n-1))` -/
def P2926296980103560019.Spec : Prop :=
  ∀ n, P2926296980103560019.a n = A068156 n

end A068156

/-! ## A068156.P10634472836712407134

`2*∑[floor(3*2^(n-2))]+1`
-/

namespace A068156.P10634472836712407134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A068156.P10634472836712407134

namespace A068156

/-- `2*∑[floor(3*2^(n-2))]+1` -/
def P10634472836712407134.Spec : Prop :=
  ∀ n, P10634472836712407134.a n = A068156 n

end A068156

/-! ## A068156.P11551935868507282678

`∑[record[A072946(n)]]`
-/

namespace A068156.P11551935868507282678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068156.P11551935868507282678

namespace A068156

/-- `∑[record[A072946(n)]]` -/
def P11551935868507282678.Spec : Prop :=
  ∀ n, P11551935868507282678.a n = A068156 n

end A068156

/-! ## A068156.P1254464221531138621

`∑[A111286(n+1)]`
-/

namespace A068156.P1254464221531138621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068156.P1254464221531138621

namespace A068156

/-- `∑[A111286(n+1)]` -/
def P1254464221531138621.Spec : Prop :=
  ∀ n, P1254464221531138621.a n = A068156 n

end A068156

/-! ## A068156.P2601560068457369873

`∑[record[A308709(n+2)]]`
-/

namespace A068156.P2601560068457369873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308709 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068156.P2601560068457369873

namespace A068156

/-- `∑[record[A308709(n+2)]]` -/
def P2601560068457369873.Spec : Prop :=
  ∀ n, P2601560068457369873.a n = A068156 n

end A068156

/-! ## A068156.P5132199749172325758

`∑[A003945(n)-char[1]]`
-/

namespace A068156.P5132199749172325758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068156.P5132199749172325758

namespace A068156

/-- `∑[A003945(n)-char[1]]` -/
def P5132199749172325758.Spec : Prop :=
  ∀ n, P5132199749172325758.a n = A068156 n

end A068156

/-! ## A068156.P7616977286933895306

`abs(2-A290114(n+1))`
-/

namespace A068156.P7616977286933895306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A290114 (n + 1)|

end

end A068156.P7616977286933895306

namespace A068156

/-- `abs(2-A290114(n+1))` -/
def P7616977286933895306.Spec : Prop :=
  ∀ n, P7616977286933895306.a n = A068156 n

end A068156

/-! ## A068156.P265359302818865847

`abs(1-2*A055010(n))`
-/

namespace A068156.P265359302818865847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A055010 n|

end

end A068156.P265359302818865847

namespace A068156

/-- `abs(1-2*A055010(n))` -/
def P265359302818865847.Spec : Prop :=
  ∀ n, P265359302818865847.a n = A068156 n

end A068156

/-! ## A068156.P4046756206297655065

`abs(1-2*A083329(n))`
-/

namespace A068156.P4046756206297655065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A083329 n|

end

end A068156.P4046756206297655065

namespace A068156

/-- `abs(1-2*A083329(n))` -/
def P4046756206297655065.Spec : Prop :=
  ∀ n, P4046756206297655065.a n = A068156 n

end A068156

/-! ## A068156.P13028285749856581309

`∑[lcm(ceil(2^(n-1)), A110164(n))]`
-/

namespace A068156.P13028285749856581309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A110164 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068156.P13028285749856581309

namespace A068156

/-- `∑[lcm(ceil(2^(n-1)), A110164(n))]` -/
def P13028285749856581309.Spec : Prop :=
  ∀ n, (P13028285749856581309.a n : ℤ) = A068156 n

end A068156

/-! ## A068156.P13216134486873090341

`A136252(A004273(n))`
-/

namespace A068156.P13216134486873090341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 (A004273 n).toNat

end

end A068156.P13216134486873090341

namespace A068156

/-- `A136252(A004273(n))` -/
def P13216134486873090341.Spec : Prop :=
  ∀ n, P13216134486873090341.a n = A068156 n

end A068156

/-!
# A068159: a(n) = floor[ n/R(n) ], where R(n) (A004086) = Digit reversal of n.

The programs for A068159, there is no canonical definition to state claims against.
-/

/-! ## A068159.P17266087411796728534

`floor((n+1)/A004086(n+1))`
-/

namespace A068159.P17266087411796728534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A004086 (n + 1) : ℚ)⌋

end

end A068159.P17266087411796728534

/-! ## A068159.P13913491842849479698

`floor((n+1)²/A061205(n+1))`
-/

namespace A068159.P13913491842849479698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / (A061205 (n + 1) : ℚ)⌋

end

end A068159.P13913491842849479698

/-! ## A068159.P17745702842640470834

`floor((n+1)/∑[1-Δ[A056965(n)]])`
-/

namespace A068159.P17745702842640470834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A068159.P17745702842640470834

/-! ## A068159.P5222043335163055357

`floor((n+1)/(n+1-A056965(n+1)))`
-/

namespace A068159.P5222043335163055357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((n + 1 : ℤ) - A056965 (n + 1) : ℚ)⌋

end

end A068159.P5222043335163055357

/-! ## A068159.P17561120165440760562

`floor((n+1)/(A056964(n+1)-(n+1)))`
-/

namespace A068159.P17561120165440760562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A056964 (n + 1) - (n + 1 : ℤ) : ℚ)⌋

end

end A068159.P17561120165440760562

/-! ## A068159.P3487234406112426393

`floor((n+1)/A135020(2*(n+1)))`
-/

namespace A068159.P3487234406112426393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A135020 (2 * (n + 1)) : ℚ)⌋

end

end A068159.P3487234406112426393

/-!
# A068162: Smallest prime beginning and ending in at least n 7's.

The programs for A068162, there is no canonical definition to state claims against.
-/

/-! ## A068162.P12591310541479596893

`A083978(record[val(A250120(n)+1, 2)])`
-/

namespace A068162.P12591310541479596893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A250120 n + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083978 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A068162.P12591310541479596893

/-!
# A068164: Smallest prime obtained from n by inserting zero or more decimal digits.

The programs for A068164, there is no canonical definition to state claims against.
-/

/-! ## A068164.P5657072604728372518

`A000040(A088781(n+1))`
-/

namespace A068164.P5657072604728372518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A088781 (n + 1)).toNat

end

end A068164.P5657072604728372518

/-! ## A068164.P2164004765354417402

`A008578(A088781(n+1)+1)`
-/

namespace A068164.P2164004765354417402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A088781 (n + 1) + 1).toNat

end

end A068164.P2164004765354417402

/-! ## A068164.P1414521649906239890

`A000015(A062584(n+1))`
-/

namespace A068164.P1414521649906239890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A062584 (n + 1)).toNat

end

end A068164.P1414521649906239890

/-! ## A068164.P5481363534122446665

`A002034(p?[A062584(n+1)])`
-/

namespace A068164.P5481363534122446665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068164.P5481363534122446665

/-! ## A068164.P13441662248369027916

`A004151(p?[A062584(n+1)])`
-/

namespace A068164.P13441662248369027916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068164.P13441662248369027916

/-! ## A068164.P17277272899168869989

`A007918(p?[A062584(n+1)])`
-/

namespace A068164.P17277272899168869989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068164.P17277272899168869989

/-! ## A068164.P4806606154812401934

`A015052(p?[A062584(n+1)])`
-/

namespace A068164.P4806606154812401934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068164.P4806606154812401934

/-! ## A068164.P4076335983755415961

`A029579(p?[A062584(n+1)])`
-/

namespace A068164.P4076335983755415961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068164.P4076335983755415961

/-! ## A068164.P14015033419544860008

`A033677(p?[A062584(n+1)])`
-/

namespace A068164.P14015033419544860008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068164.P14015033419544860008

/-! ## A068164.P7201422136279733940

`A053590(p?[A062584(n+1)])`
-/

namespace A068164.P7201422136279733940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053590 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068164.P7201422136279733940

/-! ## A068164.P14147250099169476199

`A056192(p?[A062584(n+1)])`
-/

namespace A068164.P14147250099169476199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068164.P14147250099169476199

/-! ## A068164.P12644968067688499027

`A062584(p?[A062584(n+1)])`
-/

namespace A068164.P12644968067688499027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068164.P12644968067688499027

/-! ## A068164.P14469833785009720081

`A001281(2*A062584(n+1))`
-/

namespace A068164.P14469833785009720081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A062584 (n + 1)).toNat

end

end A068164.P14469833785009720081

/-! ## A068164.P2543097095356464979

`A004525(2*A062584(n+1))`
-/

namespace A068164.P2543097095356464979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A062584 (n + 1)).toNat

end

end A068164.P2543097095356464979

/-! ## A068164.P15496917751037011408

`A020513(2*A062584(n+1))`
-/

namespace A068164.P15496917751037011408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (2 * A062584 (n + 1)).toNat

end

end A068164.P15496917751037011408

/-! ## A068164.P14013936911620250429

`A039634(2*A062584(n+1))`
-/

namespace A068164.P14013936911620250429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (2 * A062584 (n + 1)).toNat

end

end A068164.P14013936911620250429

/-! ## A068164.P16054145784924460339

`A002264(3*A062584(n+1))`
-/

namespace A068164.P16054145784924460339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 * A062584 (n + 1)).toNat

end

end A068164.P16054145784924460339

/-! ## A068164.P2786944223531824009

`A006530(32*A062584(n+1))`
-/

namespace A068164.P2786944223531824009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (32 * A062584 (n + 1)).toNat

end

end A068164.P2786944223531824009

/-! ## A068164.P11284565029928638915

`A006530(lcm(32, A062584(n+1)))`
-/

namespace A068164.P11284565029928638915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 32 (A062584 (n + 1)))

end

end A068164.P11284565029928638915

/-! ## A068164.P2336569898533015477

`filter[A062584(n+1), A010055(#)]`
-/

namespace A068164.P2336569898533015477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A068164.P2336569898533015477

/-!
# A068165: Smallest square formed from n by inserting zero or more decimal digits.

The programs for A068165, there is no canonical definition to state claims against.
-/

/-! ## A068165.P10478468484141484656

`A091873(n+1)²`
-/

namespace A068165.P10478468484141484656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091873 (n + 1) ^ 2

end

end A068165.P10478468484141484656

/-! ## A068165.P1630090665863643988

`A091873(A000027(n+1))^2`
-/

namespace A068165.P1630090665863643988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091873 (A000027 (n + 1)).toNat ^ 2

end

end A068165.P1630090665863643988

/-! ## A068165.P15572083646411031047

`A091873(n+1)^A113827(Δ[round(ϕ*n)])`
-/

namespace A068165.P15572083646411031047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091873 (n + 1) : ℚ) ^ (A113827 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A068165.P15572083646411031047

/-! ## A068165.P17398383116766952706

`A000290(A091873(n+1)%A017509(n))`
-/

namespace A068165.P17398383116766952706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A091873 (n + 1)) (A017509 n)).toNat

end

end A068165.P17398383116766952706

/-! ## A068165.P9810552712226298817

`A000290(A019433(2*(n+1))*A091873(n+1))`
-/

namespace A068165.P9810552712226298817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A019433 (2 * (n + 1)) * A091873 (n + 1)).toNat

end

end A068165.P9810552712226298817

/-! ## A068165.P10903208694489857557

`A000290(A040001(2*n+3)*A091873(n+1))`
-/

namespace A068165.P10903208694489857557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A040001 (2 * n + 3) * A091873 (n + 1)).toNat

end

end A068165.P10903208694489857557

/-! ## A068165.P15444667925676113990

`A091873(n+1)^A348717(A049571(n+1))`
-/

namespace A068165.P15444667925676113990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091873 (n + 1) : ℚ) ^ (A348717 (A049571 (n + 1)).toNat : ℤ)

end

end A068165.P15444667925676113990

/-! ## A068165.P9565662542914612479

`A091873(n+1)^A348717(A005385(n+1))`
-/

namespace A068165.P9565662542914612479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091873 (n + 1) : ℚ) ^ (A348717 (A005385 (n + 1)).toNat : ℤ)

end

end A068165.P9565662542914612479

/-! ## A068165.P9736920378495160398

`A091873(n+1)^A000005(A019546(2*n+5))`
-/

namespace A068165.P9736920378495160398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091873 (n + 1) : ℚ) ^ (A000005 (A019546 (2 * n + 5)).toNat : ℤ)

end

end A068165.P9736920378495160398

/-! ## A068165.P12996896890564238428

`A091873(n+1)^A036453(A207642(2*(n+1)))`
-/

namespace A068165.P12996896890564238428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091873 (n + 1) : ℚ) ^ (A036453 (A207642 (2 * (n + 1))).toNat : ℤ)

end

end A068165.P12996896890564238428

/-!
# A068166: Define an increasing sequence as follows. Given the first term, called the seed (which need not share the property of the remaining terms), subsequent terms are obtained by inserting at least one digit in the previous term so as to obtain the smallest number with the specified property. This is the prime sequence with the seed a(1) = 1.

The programs for A068166, there is no canonical definition to state claims against.
-/

/-! ## A068166.P720516180207923490

`A068168(n+1)-2*A094497(n)`
-/

namespace A068166.P720516180207923490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068168 (n + 1) - 2 * A094497 n

end

end A068166.P720516180207923490

/-! ## A068166.P11621579025027141030

`A068168(n+1)-A000038(floor(n/3))`
-/

namespace A068166.P11621579025027141030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068168 (n + 1) - A000038 ⌊(n : ℚ) / 3⌋.toNat

end

end A068166.P11621579025027141030

/-! ## A068166.P10591661411329315240

`A068168(n+1)-A050871(A094497(n))`
-/

namespace A068166.P10591661411329315240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068168 (n + 1) - A050871 (A094497 n).toNat

end

end A068166.P10591661411329315240

/-! ## A068166.P12020682092273656971

`A068168(n+1)-A000122(A208355(n))`
-/

namespace A068166.P12020682092273656971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068168 (n + 1) - A000122 (A208355 n).toNat

end

end A068166.P12020682092273656971

/-!
# A068167: Define an increasing sequence as follows. Given the first term, called the seed (which need not share the property of the remaining terms), subsequent terms are obtained by inserting at least one digit in the previous term so as to obtain the smallest number with the specified property. This is the prime sequence with the seed a(1) = 2.

The programs for A068167, there is no canonical definition to state claims against.
-/

/-! ## A068167.P6368806625775381501

`A242904(A375283(n))`
-/

namespace A068167.P6368806625775381501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242904 (A375283 n).toNat

end

end A068167.P6368806625775381501

/-! ## A068167.P3532899581937740959

`A242904(∑[A146661(n+1)])`
-/

namespace A068167.P3532899581937740959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242904 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068167.P3532899581937740959

/-!
# A068168: Define an increasing sequence as follows. Given the first term called the seed (the seed need not have the property of the sequence.). Subsequent terms are defined as obtained by inserting/placing digits (at least one) in the previous term to obtain the smallest number with a given property. This is the growing prime sequence for the seed a(1) = 3.

The programs for A068168, there is no canonical definition to state claims against.
-/

/-! ## A068168.P13234260266045199695

`A068166(n+1)+2*A094497(n)`
-/

namespace A068168.P13234260266045199695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068166 (n + 1) + 2 * A094497 n

end

end A068168.P13234260266045199695

/-! ## A068168.P16208651844022195286

`A068166(n+1)+A000038(floor(n/3))`
-/

namespace A068168.P16208651844022195286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068166 (n + 1) + A000038 ⌊(n : ℚ) / 3⌋.toNat

end

end A068168.P16208651844022195286

/-! ## A068168.P12330238823183573364

`A068166(n+1)+A000122(A039822(n))`
-/

namespace A068168.P12330238823183573364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068166 (n + 1) + A000122 (A039822 n).toNat

end

end A068168.P12330238823183573364

/-! ## A068168.P122401344580288780

`A068166(n+1)+A000096(A094497(n))`
-/

namespace A068168.P122401344580288780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068166 (n + 1) + A000096 (A094497 n).toNat

end

end A068168.P122401344580288780

/-!
# A068169: Define an increasing sequence as follows. Given the first term called the seed (the seed need not have the property of the sequence.). Subsequent terms are defined as obtained by inserting/placing digits (at least one) in the previous term to obtain the smallest number with a given property. This is the growing prime sequence for the seed a(1) = 4.

The programs for A068169, there is no canonical definition to state claims against.
-/

/-! ## A068169.P11829278596334078182

`A385512(a(n-1))` with `a(0)=4`
-/

namespace A068169.P11829278596334078182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A385512 (a (n - 1)).toNat

end

end A068169.P11829278596334078182

/-!
# A068170: Define an increasing sequence as follows. Given the first term, called the seed (the seed need not have the property of the remaining terms of the sequence), subsequent terms are defined as obtained by inserting/placing digits (at least one) in the previous term to obtain the smallest number with a given property. This is the growing prime sequence for the seed a(1) = 5.

The programs for A068170, there is no canonical definition to state claims against.
-/

/-! ## A068170.P3516800956498932151

`A385512(a(n-1))` with `a(0)=5`
-/

namespace A068170.P3516800956498932151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A385512 (a (n - 1)).toNat

end

end A068170.P3516800956498932151

/-!
# A068171: Define an increasing sequence as follows: Given the first term called the seed (the seed need not have the property of the sequence.), subsequent terms are defined as obtained by inserting/placing digits (at least one) in the previous term to obtain the smallest number with a given property. This is the growing prime sequence for the seed a(1) = 6.

The programs for A068171, there is no canonical definition to state claims against.
-/

/-! ## A068171.P6808094795524277079

`A381606(a(n-1))` with `a(0)=6`
-/

namespace A068171.P6808094795524277079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A381606 (a (n - 1)).toNat

end

end A068171.P6808094795524277079

/-!
# A068172: Define an increasing sequence as follows. Given the first term called the seed (the seed need not have the property of the sequence.). Subsequent terms are defined as obtained by inserting/placing digits (at least one) in the previous term to obtain the smallest number with a given property. This is the growing prime sequence for the seed a(1) = 7.

The programs for A068172, there is no canonical definition to state claims against.
-/

/-! ## A068172.P1020012151496387761

`A242907(A222712(n+1))`
-/

namespace A068172.P1020012151496387761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242907 (A222712 (n + 1)).toNat

end

end A068172.P1020012151496387761

/-! ## A068172.P47461489212278014

`A242907(record[A009223(n+1)])`
-/

namespace A068172.P47461489212278014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242907 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068172.P47461489212278014

/-!
# A068173: Define an increasing sequence as follows. Given the first term called the seed (the seed need not have the property of the sequence.). Subsequent terms are defined as obtained by inserting/placing digits (at least one) in the previous term to obtain the smallest number with a given property. This is the growing prime sequence for the seed a(1) = 8.

The programs for A068173, there is no canonical definition to state claims against.
-/

/-! ## A068173.P4865227519531130161

`A385512(a(n-1))` with `a(0)=8`
-/

namespace A068173.P4865227519531130161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A385512 (a (n - 1)).toNat

end

end A068173.P4865227519531130161

/-!
# A068174: Define an increasing sequence as follows. Start with an initial term, the seed (which need not have the property of the sequence); subsequent terms are obtained by inserting/placing at least one digit in the previous term to obtain the smallest number with the given property. This is the prime sequence with the seed a(1) = 9.

The programs for A068174, there is no canonical definition to state claims against.
-/

/-! ## A068174.P5321944386206967360

`A266896(n)+A032553(A294052(n+4))%10`
-/

namespace A068174.P5321944386206967360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266896 n + Int.tmod (A032553 (A294052 (n + 4)).toNat) 10

end

end A068174.P5321944386206967360

/-!
# A068175: a(1) = 1; for n>1, a(n) is the smallest square > a(n-1) obtained by inserting digits into a(n-1).

The programs for A068175, there is no canonical definition to state claims against.
-/

/-! ## A068175.P2249728996477416299

`A067633(n+1)²`
-/

namespace A068175.P2249728996477416299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067633 (n + 1) ^ 2

end

end A068175.P2249728996477416299

/-! ## A068175.P663784305476791352

`record[A067633(A059127(n))²]`
-/

namespace A068175.P663784305476791352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067633 (A059127 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068175.P663784305476791352

/-! ## A068175.P10149153625526888972

`A067633(A000027(n+1))^2`
-/

namespace A068175.P10149153625526888972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067633 (A000027 (n + 1)).toNat ^ 2

end

end A068175.P10149153625526888972

/-! ## A068175.P4614554548725142190

`A067633(A000027(n+1))*A067633(n+1)`
-/

namespace A068175.P4614554548725142190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067633 (A000027 (n + 1)).toNat * A067633 (n + 1)

end

end A068175.P4614554548725142190

/-!
# A068176: a(1) = 2; for n>1, a(n) is the smallest square > a(n-1) obtained by inserting digits into a(n-1).

The programs for A068176, there is no canonical definition to state claims against.
-/

/-! ## A068176.P14373163443444930823

`A118962(∑{d}[n+1, #]*A335729(n+1))`
-/

namespace A068176.P14373163443444930823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118962 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A335729 (n + 1)).toNat

end

end A068176.P14373163443444930823

/-!
# A068178: a(1) = 4; for n>1, a(n) is the smallest square > a(n-1) obtained by inserting digits into a(n-1).

The programs for A068178, there is no canonical definition to state claims against.
-/

/-! ## A068178.P15524958315461551503

`A091877(n+1)²`
-/

namespace A068178.P15524958315461551503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091877 (n + 1) ^ 2

end

end A068178.P15524958315461551503

/-! ## A068178.P1314574972744836937

`record[A091877(A059127(n))²]`
-/

namespace A068178.P1314574972744836937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091877 (A059127 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068178.P1314574972744836937

/-! ## A068178.P2972016092328946371

`record[A091877(A134478(n))²]`
-/

namespace A068178.P2972016092328946371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091877 (A134478 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068178.P2972016092328946371

/-! ## A068178.P15459181494411815962

`A091877(n+1)^p?[A091853(n+1)]`
-/

namespace A068178.P15459181494411815962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091853 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091877 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A068178.P15459181494411815962

/-! ## A068178.P148652879084220995

`A091877(A067080(n+1))*A091877(n+1)`
-/

namespace A068178.P148652879084220995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091877 (A067080 (n + 1)).toNat * A091877 (n + 1)

end

end A068178.P148652879084220995

/-!
# A068179: Product_{i=1..3} (i+x) / Product_{i=1..3} (i-x) = Sum_{n>=0} (a(n)/b(n))*x^n.

The programs for A068179, the canonical program `A068179.P16842971898579560751` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068179 has offset 0).

The definition of A068179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068179.P16842971898579560751

`5*2^(n+1)+6^(n+1)-5*3^(n+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A068179

/-- `5*2^(n+1)+6^(n+1)-5*3^(n+1)` -/
def P16842971898579560751.Spec : Prop :=
  ∀ n, P16842971898579560751.a n = A068179 n

theorem P16842971898579560751.correct : P16842971898579560751.Spec := by
  intro n
  simp only [A068179]

end A068179

/-!
# A068181: a(n)=-1/b(2n) where 1/(e^y-e^(y/3))= sum(i=-1,inf,b(i)*y^i).

The programs for A068181, the canonical program `A068181.P6110322210593194977` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068181 has offset 0).

The definition of A068181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068181.P6110322210593194977

`A007661(6*n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A068181

/-- `A007661(6*n)` -/
def P6110322210593194977.Spec : Prop :=
  ∀ n, P6110322210593194977.a n = A068181 n

theorem P6110322210593194977.correct : P6110322210593194977.Spec := by
  intro n
  simp only [A068181]

end A068181

/-! ## A068181.P5336675077228087932

`9^n*(2*n)!`
-/

namespace A068181.P5336675077228087932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n * Nat.factorial (2 * n)

end

end A068181.P5336675077228087932

namespace A068181

/-- `9^n*(2*n)!` -/
def P5336675077228087932.Spec : Prop :=
  ∀ n, (P5336675077228087932.a n : ℤ) = A068181 n

end A068181

/-! ## A068181.P11871858365324656296

`record[-n*a(n-3)]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A068181.P11871858365324656296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  -((n : ℤ) * f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068181.P11871858365324656296

namespace A068181

/-- `record[-n*a(n-3)]` -/
def P11871858365324656296.Spec : Prop :=
  ∀ n, P11871858365324656296.a n = A068181 n

end A068181

/-! ## A068181.P345683699068711599

`record[3^n*∏[floor(acot(n)-n)]]`
-/

namespace A068181.P345683699068711599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068181.P345683699068711599

namespace A068181

/-- `record[3^n*∏[floor(acot(n)-n)]]` -/
def P345683699068711599.Spec : Prop :=
  ∀ n, P345683699068711599.a n = A068181 n

end A068181

/-! ## A068181.P3838663397055281921

`record[(n-4*n)*a(n-1)]` with `a(0)=1`
-/

namespace A068181.P3838663397055281921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - (4 * n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068181.P3838663397055281921

namespace A068181

/-- `record[(n-4*n)*a(n-1)]` -/
def P3838663397055281921.Spec : Prop :=
  ∀ n, P3838663397055281921.a n = A068181 n

end A068181

/-!
# A068183: Largest number without decimal digits equal to 1 whose product of digits gives n!.

The programs for A068183, there is no canonical definition to state claims against.
-/

/-! ## A068183.P14438786005468590867

`A068190((n+2)!)`
-/

namespace A068183.P14438786005468590867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068190 (Nat.factorial (n + 2))

end

end A068183.P14438786005468590867

/-! ## A068183.P16065912241553866172

`A084796((n+2)!)`
-/

namespace A068183.P16065912241553866172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (Nat.factorial (n + 2))

end

end A068183.P16065912241553866172

/-!
# A068184: Smallest number whose product of digits equals n!.

The programs for A068184, there is no canonical definition to state claims against.
-/

/-! ## A068184.P3702161175234216159

`∏{p}[A067106(round(sqrt(n²+1))), #]`
-/

namespace A068184.P3702161175234216159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067106 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A068184.P3702161175234216159

/-! ## A068184.P9907464719073997061

`A000027(A067106(round(sqrt(n²+1))))`
-/

namespace A068184.P9907464719073997061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A067106 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A068184.P9907464719073997061

/-! ## A068184.P4028914167126223803

`A068189(n!)`
-/

namespace A068184.P4028914167126223803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (Nat.factorial n)

end

end A068184.P4028914167126223803

/-! ## A068184.P4626894430150850910

`A068189(A000142(n))`
-/

namespace A068184.P4626894430150850910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (A000142 n).toNat

end

end A068184.P4626894430150850910

/-!
# A068187: a(n) is the smallest number such that the product of its decimal digits equals n^n, or 0 if no solutions exist.

The programs for A068187, there is no canonical definition to state claims against.
-/

/-! ## A068187.P7191048771947899617

`A068189((n+1)^(n+1))`
-/

namespace A068187.P7191048771947899617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 ((n + 1) ^ (n + 1))

end

end A068187.P7191048771947899617

/-!
# A068188: Tetradic primes (primes in A006072).

The programs for A068188, there is no canonical definition to state claims against.
-/

/-! ## A068188.P13311672511354968727

`∩[A007616(n+1), A370447(n+1)]`
-/

namespace A068188.P13311672511354968727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068188.P13311672511354968727

/-! ## A068188.P13449185557577978619

`∩[A006072(n+1), A007597(n+1)]`
-/

namespace A068188.P13449185557577978619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068188.P13449185557577978619

/-! ## A068188.P5767079523234215288

`∩[A006072(n+1), A007616(n+1)]`
-/

namespace A068188.P5767079523234215288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068188.P5767079523234215288

/-! ## A068188.P17096879505120879483

`∩[A007597(n+1), A007616(n+1)]`
-/

namespace A068188.P17096879505120879483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068188.P17096879505120879483

/-! ## A068188.P14588636461965665021

`∩[A006072(n+1), A370447(n+1)]`
-/

namespace A068188.P14588636461965665021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068188.P14588636461965665021

/-! ## A068188.P1103301049655276508

`∩[A007597(n+1), A370447(n+1)]`
-/

namespace A068188.P1103301049655276508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068188.P1103301049655276508

/-! ## A068188.P11337130085515507756

`∩[A006072(n+1), A083185(n+1)]`
-/

namespace A068188.P11337130085515507756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068188.P11337130085515507756

/-! ## A068188.P16171269412427271126

`∩[A007597(n+1), A083185(n+1)]`
-/

namespace A068188.P16171269412427271126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068188.P16171269412427271126

/-! ## A068188.P18211883093781660317

`∩[A007616(n+1), A083185(n+1)]`
-/

namespace A068188.P18211883093781660317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068188.P18211883093781660317

/-! ## A068188.P17298989454960699841

`∩[A006072(n+1), A199328(n+1)]`
-/

namespace A068188.P17298989454960699841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068188.P17298989454960699841

/-! ## A068188.P14946163194058409243

`∩[A007597(n+1), A199328(n+1)]`
-/

namespace A068188.P14946163194058409243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068188.P14946163194058409243

/-! ## A068188.P12093557410610885739

`∩[A007616(n+1), A199328(n+1)]`
-/

namespace A068188.P12093557410610885739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068188.P12093557410610885739

/-! ## A068188.P8732973312410993467

`∩[A083185(n+1), A199328(n+1)]`
-/

namespace A068188.P8732973312410993467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068188.P8732973312410993467

/-! ## A068188.P7963734069501053862

`∩[A199328(n+1), A370447(n+1)]`
-/

namespace A068188.P7963734069501053862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068188.P7963734069501053862

/-!
# A068189: Smallest positive number whose product of digits equals n, or a(n)=0 if no such number exists, i.e. when n has a prime divisor greater than 7.

The programs for A068189, there is no canonical definition to state claims against.
-/

/-! ## A068189.P13926615271784459303

`A086299(n+1)*A280249(A071604(n+1))`
-/

namespace A068189.P13926615271784459303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (n + 1) * A280249 (A071604 (n + 1)).toNat

end

end A068189.P13926615271784459303

/-! ## A068189.P9649379033600435221

`A086299(n+1)*A280249(∑[A086299(n+1)])`
-/

namespace A068189.P9649379033600435221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (n + 1) * A280249 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068189.P9649379033600435221

/-! ## A068189.P9543533782728145594

`A280249(A071604(n+1))%A016112(3*(n+1))`
-/

namespace A068189.P9543533782728145594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280249 (A071604 (n + 1)).toNat) (A016112 (3 * (n + 1)))

end

end A068189.P9543533782728145594

/-!
# A068190: Largest number whose digit product equals n; a(n)=0 if no such number exists, e.g., when n has a prime factor larger than 7; no digit=1 is permitted to avoid an infinite number of solutions.

The programs for A068190, there is no canonical definition to state claims against.
-/

/-! ## A068190.P16330151902461322747

`A067734(A006530(n+1))*A084796(n+1)`
-/

namespace A068190.P16330151902461322747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067734 (A006530 (n + 1)).toNat * A084796 (n + 1)

end

end A068190.P16330151902461322747

/-! ## A068190.P12114059540664398125

`A057427(A067734(n+1))*A084797(n+1)`
-/

namespace A068190.P12114059540664398125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A067734 (n + 1)).toNat * A084797 (n + 1)

end

end A068190.P12114059540664398125

/-! ## A068190.P5780814629495425643

`A084797(n+1)%A007771(n)`
-/

namespace A068190.P5780814629495425643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084797 (n + 1)) (A007771 n)

end

end A068190.P5780814629495425643

/-! ## A068190.P850999740758687454

`A084796(n+1)%A019273(n+1)`
-/

namespace A068190.P850999740758687454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084796 (n + 1)) (A019273 (n + 1))

end

end A068190.P850999740758687454

/-! ## A068190.P897280932949620559

`A057427(n²²)*A084797(n+1)`
-/

namespace A068190.P897280932949620559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n ^ 2) ^ 2) * A084797 (n + 1)

end

end A068190.P897280932949620559

/-!
# A068191: Numbers n such that A067734(n)=0; complement of A002473; at least one prime-factor of n is larger than 7, it has 2 decimal digits.

The programs for A068191, the canonical program `A068191.P1341936650613296810` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068191 has offset 1).

The definition of A068191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068191.P12449638609522786917

`comp[A343160(n+1)]`
-/

namespace A068191.P12449638609522786917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A068191.P12449638609522786917

namespace A068191

/-- `comp[A343160(n+1)]` -/
def P12449638609522786917.Spec : Prop :=
  ∀ n, (P12449638609522786917.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P1341936650613296810

`lt[4, A061395(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A068191

/-- `lt[4, A061395(n+1)]+1` -/
def P1341936650613296810.Spec : Prop :=
  ∀ n, (P1341936650613296810.a n : ℤ) = A068191 (n + 1)

theorem P1341936650613296810.correct : P1341936650613296810.Spec := by
  intro n
  simp only [A068191, Nat.add_sub_cancel]

end A068191

/-! ## A068191.P3297580444779271664

`lt[4, A332899(n+1)]+1`
-/

namespace A068191.P3297580444779271664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A068191.P3297580444779271664

namespace A068191

/-- `lt[4, A332899(n+1)]+1` -/
def P3297580444779271664.Spec : Prop :=
  ∀ n, (P3297580444779271664.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P3206808505534594701

`lt[7, A006530(n+1)]+1`
-/

namespace A068191.P3206808505534594701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A068191.P3206808505534594701

namespace A068191

/-- `lt[7, A006530(n+1)]+1` -/
def P3206808505534594701.Spec : Prop :=
  ∀ n, (P3206808505534594701.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P1722326310204892516

`comp[A002473(n+1)-1]+1`
-/

namespace A068191.P1722326310204892516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A068191.P1722326310204892516

namespace A068191

/-- `comp[A002473(n+1)-1]+1` -/
def P1722326310204892516.Spec : Prop :=
  ∀ n, (P1722326310204892516.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P5060245452782874149

`lt[2, A117370(2*(n+1))]+1`
-/

namespace A068191.P5060245452782874149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117370 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A068191.P5060245452782874149

namespace A068191

/-- `lt[2, A117370(2*(n+1))]+1` -/
def P5060245452782874149.Spec : Prop :=
  ∀ n, (P5060245452782874149.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P13326791034481436644

`eq[4, 4%A061395(n+2)]+2`
-/

namespace A068191.P13326791034481436644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A061395 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A068191.P13326791034481436644

namespace A068191

/-- `eq[4, 4%A061395(n+2)]+2` -/
def P13326791034481436644.Spec : Prop :=
  ∀ n, (P13326791034481436644.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P7005188144189877837

`lt[A118541(n), n]`
-/

namespace A068191.P7005188144189877837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A068191.P7005188144189877837

namespace A068191

/-- `lt[A118541(n), n]` -/
def P7005188144189877837.Spec : Prop :=
  ∀ n, (P7005188144189877837.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P758449863038682982

`lt[3, ∏{p}[n, A007318(#)]]`
-/

namespace A068191.P758449863038682982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), A007318 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068191.P758449863038682982

namespace A068191

/-- `lt[3, ∏{p}[n, A007318(#)]]` -/
def P758449863038682982.Spec : Prop :=
  ∀ n, (P758449863038682982.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P2158248174444604510

`lt[7, A006530(∏{p}[n, #])]`
-/

namespace A068191.P2158248174444604510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068191.P2158248174444604510

namespace A068191

/-- `lt[7, A006530(∏{p}[n, #])]` -/
def P2158248174444604510.Spec : Prop :=
  ∀ n, (P2158248174444604510.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P5007514467964760381

`lt[A068189(n+1), 1]+1`
-/

namespace A068191.P5007514467964760381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A068191.P5007514467964760381

namespace A068191

/-- `lt[A068189(n+1), 1]+1` -/
def P5007514467964760381.Spec : Prop :=
  ∀ n, (P5007514467964760381.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P4848661134886538424

`lt[A126789(n+1), 1]+1`
-/

namespace A068191.P4848661134886538424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126789 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A068191.P4848661134886538424

namespace A068191

/-- `lt[A126789(n+1), 1]+1` -/
def P4848661134886538424.Spec : Prop :=
  ∀ n, (P4848661134886538424.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P9592650319904156005

`lt[A071785(n+1), n]+1`
-/

namespace A068191.P9592650319904156005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A068191.P9592650319904156005

namespace A068191

/-- `lt[A071785(n+1), n]+1` -/
def P9592650319904156005.Spec : Prop :=
  ∀ n, (P9592650319904156005.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P2474498643285510033

`lt[7, A006530(A004277(n))]`
-/

namespace A068191.P2474498643285510033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068191.P2474498643285510033

namespace A068191

/-- `lt[7, A006530(A004277(n))]` -/
def P2474498643285510033.Spec : Prop :=
  ∀ n, (P2474498643285510033.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P615440577534308461

`lt[7, A006530(A028310(n))]`
-/

namespace A068191.P615440577534308461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068191.P615440577534308461

namespace A068191

/-- `lt[7, A006530(A028310(n))]` -/
def P615440577534308461.Spec : Prop :=
  ∀ n, (P615440577534308461.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P7581170453365068084

`lt[A256079(n), A085908(n+1)]+1`
-/

namespace A068191.P7581170453365068084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085908 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068191.P7581170453365068084

namespace A068191

/-- `lt[A256079(n), A085908(n+1)]+1` -/
def P7581170453365068084.Spec : Prop :=
  ∀ n, (P7581170453365068084.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P4277633558206508657

`eq[1, A016112(2*n)]`
-/

namespace A068191.P4277633558206508657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016112 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068191.P4277633558206508657

namespace A068191

/-- `eq[1, A016112(2*n)]` -/
def P4277633558206508657.Spec : Prop :=
  ∀ n, (P4277633558206508657.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P4511269220328144840

`lt[2, A117370(A028310(2*n))]`
-/

namespace A068191.P4511269220328144840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117370 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068191.P4511269220328144840

namespace A068191

/-- `lt[2, A117370(A028310(2*n))]` -/
def P4511269220328144840.Spec : Prop :=
  ∀ n, (P4511269220328144840.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P13057157730641209613

`eq[1, A086299(A008486(n))+1]`
-/

namespace A068191.P13057157730641209613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (A008486 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068191.P13057157730641209613

namespace A068191

/-- `eq[1, A086299(A008486(n))+1]` -/
def P13057157730641209613.Spec : Prop :=
  ∀ n, (P13057157730641209613.a n : ℤ) = A068191 (n + 1)

end A068191

/-! ## A068191.P17753121538379573487

`eq[1, A068189(A008574(n))+1]`
-/

namespace A068191.P17753121538379573487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (A008574 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068191.P17753121538379573487

namespace A068191

/-- `eq[1, A068189(A008574(n))+1]` -/
def P17753121538379573487.Spec : Prop :=
  ∀ n, (P17753121538379573487.a n : ℤ) = A068191 (n + 1)

end A068191

/-!
# A068192: Let a(1)=2, f(n) = 4*a(1)*a(2)*...*a(n-1) for n >= 1 and a(n) = f(n)-prevprime(f(n)-1) for n >= 2, where prevprime(x) is the largest prime < x.

The programs for A068192, there is no canonical definition to state claims against.
-/

/-! ## A068192.P5895805668195155566

`A000040(A068193(n+1))`
-/

namespace A068192.P5895805668195155566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A068193 (n + 1)).toNat

end

end A068192.P5895805668195155566

/-! ## A068192.P17019677268399476709

`A008578(A068193(n+1)+1)`
-/

namespace A068192.P17019677268399476709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A068193 (n + 1) + 1).toNat

end

end A068192.P17019677268399476709

/-! ## A068192.P8983874408697584371

`ratio[A066631(n+1)]`
-/

namespace A068192.P8983874408697584371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066631 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A068192.P8983874408697584371

/-! ## A068192.P12961852314945933949

`A066631(n+2)/A066631(n+1)`
-/

namespace A068192.P12961852314945933949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066631 (n + 2) : ℚ) / (A066631 (n + 1) : ℚ)

end

end A068192.P12961852314945933949

/-! ## A068192.P3874341615577444135

`A238853(A068193(n+1)%A195941(2*n+3))`
-/

namespace A068192.P3874341615577444135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238853 (Int.tmod (A068193 (n + 1)) (A195941 (2 * n + 3))).toNat

end

end A068192.P3874341615577444135

/-!
# A068193: The prime indices of sequence A068192. (That sequence is conjectured to contain only primes.).

The programs for A068193, there is no canonical definition to state claims against.
-/

/-! ## A068193.P17788948865754079157

`A000720(A068192(n+1))`
-/

namespace A068193.P17788948865754079157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A068192 (n + 1)).toNat

end

end A068193.P17788948865754079157

/-! ## A068193.P13441499411242012066

`A003963(p?[A068192(n+1)])`
-/

namespace A068193.P13441499411242012066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068193.P13441499411242012066

/-! ## A068193.P5954831705290814135

`A049084(p?[A068192(n+1)])`
-/

namespace A068193.P5954831705290814135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068193.P5954831705290814135

/-! ## A068193.P7141658116238002645

`A055396(p?[A068192(n+1)])`
-/

namespace A068193.P7141658116238002645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068193.P7141658116238002645

/-! ## A068193.P4157800872429215906

`A056239(p?[A068192(n+1)])`
-/

namespace A068193.P4157800872429215906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068193.P4157800872429215906

/-! ## A068193.P7704571955389722314

`A036234(A068192(n+1)-1)`
-/

namespace A068193.P7704571955389722314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A068192 (n + 1) - 1).toNat

end

end A068193.P7704571955389722314

/-! ## A068193.P3903055350625103194

`A003963(2*A068192(n+1))`
-/

namespace A068193.P3903055350625103194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A068192 (n + 1)).toNat

end

end A068193.P3903055350625103194

/-! ## A068193.P9313481368560618686

`∑{d}[A068192(n+1), A055396(#)]`
-/

namespace A068193.P9313481368560618686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A068193.P9313481368560618686

/-! ## A068193.P16403115076513584798

`A055396(∑{p}[A068192(n+1), #])`
-/

namespace A068193.P16403115076513584798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A068193.P16403115076513584798

/-! ## A068193.P1524390722410817190

`A055396(∏{p}[A068192(n+1), #])`
-/

namespace A068193.P1524390722410817190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A068193.P1524390722410817190

/-!
# A068194: Numbers k for which the only representation of k*(k+1)/2 as a sum of 2 or more consecutive positive integers is 1+2+...+k.

The programs for A068194, there is no canonical definition to state claims against.
-/

/-! ## A068194.P18047976465405604548

`floor(sqrt(2*A068195(n+1)))`
-/

namespace A068194.P18047976465405604548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A068195 (n + 1))

end

end A068194.P18047976465405604548

/-! ## A068194.P9857334612902829705

`A006549(A055642(2*n)+n)`
-/

namespace A068194.P9857334612902829705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006549 (A055642 (2 * n) + (n : ℤ)).toNat

end

end A068194.P9857334612902829705

/-! ## A068194.P1646041457597663374

`record[A006549(n+1)-A055766(A076709(n+1))]`
-/

namespace A068194.P1646041457597663374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006549 (n + 1) - A055766 (A076709 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068194.P1646041457597663374

/-! ## A068194.P4082436058922393898

`A006549(∑[A053669(n+1)-A055874(n+1)])`
-/

namespace A068194.P4082436058922393898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) - A055874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006549 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068194.P4082436058922393898

/-! ## A068194.P7693479794819936256

`record[A006549(n+1)-A010873(A118887(n+1))]`
-/

namespace A068194.P7693479794819936256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006549 (n + 1) - A010873 (A118887 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068194.P7693479794819936256

/-!
# A068195: Numbers of the form n(n+1)/2 whose only representation as a sum of 2 or more consecutive positive integers is 1+2+...+n.

The programs for A068195, there is no canonical definition to state claims against.
-/

/-! ## A068195.P9926286494316829466

`C(A068194(n+1)+1, 2)`
-/

namespace A068195.P9926286494316829466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A068194 (n + 1) + 1).toNat 2

end

end A068195.P9926286494316829466

/-! ## A068195.P11195713135967914962

`record[C(A120430(n+1), A049710(3*(n+1)))]`
-/

namespace A068195.P11195713135967914962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A120430 (n + 1)).toNat (A049710 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068195.P11195713135967914962

/-! ## A068195.P12767227128250882298

`∪[A000396(n+1), A056006(n+1)]`
-/

namespace A068195.P12767227128250882298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068195.P12767227128250882298

/-! ## A068195.P12053782922269278041

`∪[Δ[A185351(2^n)], A056006(n+1)]`
-/

namespace A068195.P12053782922269278041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185351 (2 ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A068195.P12053782922269278041

/-! ## A068195.P448830829196803825

`∪[A056006(n+1), A135627(n+1)+1]`
-/

namespace A068195.P448830829196803825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135627 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068195.P448830829196803825

/-!
# A068197: Number of squares (of another matrix) in M_2(n) - the ring of 2 X 2 matrices over Z_n.

The programs for A068197, there is no canonical definition to state claims against.
-/

/-! ## A068197.P5417055004172195735

`A027769(n+8)%A048250(A027769(n+8))`
-/

namespace A068197.P5417055004172195735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027769 (n + 8)) (A048250 (A027769 (n + 8)).toNat)

end

end A068197.P5417055004172195735

/-!
# A068199: One of a family of sequences that interpolates between the Bell numbers and the factorials.

The programs for A068199, there is no canonical definition to state claims against.
-/

/-! ## A068199.P6514937147286852447

`A000007(n)+2*A292860(A046691(n+1))`
-/

namespace A068199.P6514937147286852447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A292860 (A046691 (n + 1)).toNat

end

end A068199.P6514937147286852447

/-! ## A068199.P13090643418181190713

`record[A027710(A047983(n+1))*A152235(n+1)]`
-/

namespace A068199.P13090643418181190713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027710 (A047983 (n + 1)).toNat * A152235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068199.P13090643418181190713

/-! ## A068199.P18404856604580973103

`A002457(n)%2+2*A292860(A046691(n+1))`
-/

namespace A068199.P18404856604580973103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002457 n) 2 + 2 * A292860 (A046691 (n + 1)).toNat

end

end A068199.P18404856604580973103

/-! ## A068199.P16416162945528572755

`A027710(floor(n²/(n+1)))*A152235(A152235(n+1))`
-/

namespace A068199.P16416162945528572755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027710 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat * A152235 (A152235 (n + 1)).toNat

end

end A068199.P16416162945528572755

