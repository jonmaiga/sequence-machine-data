import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
import Seq.Opaque.C025

/-!
# A349502: Numbers k such that the continued fraction of the harmonic mean of the divisors of k contains distinct elements.

The programs for A349502, there is no canonical definition to state claims against.
-/

/-! ## A349502.P5363534137931622371

`∑[A136315(∑[A038020(n)])]`
-/

namespace A349502.P5363534137931622371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136315 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349502.P5363534137931622371

/-! ## A349502.P8496777062943264346

`∑[A338493(or(1, A058682(n)))]`
-/

namespace A349502.P8496777062943264346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338493 (Int.lor 1 (A058682 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349502.P8496777062943264346

/-!
# A349503: a(n) is the least number k such that the continued fraction of the harmonic mean of the divisors of k contains n elements that are all distinct.

The programs for A349503, there is no canonical definition to state claims against.
-/

/-! ## A349503.P4948813625808311053

`A045828((9*C(n, 2)+n)*(n²+2)/3*∑[n])`
-/

namespace A349503.P4948813625808311053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045828 (SequenceMachineLib.roundAway ((9 * Nat.choose n 2 + n : ℚ) * ((n ^ 2 + 2 : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)))).toNat

end

end A349503.P4948813625808311053

/-!
# A349504: E.g.f. satisfies: A(x) = (1 + x)^(A(x)^2).

The programs for A349504, there is no canonical definition to state claims against.
-/

/-! ## A349504.P9793909547958795695

`A088861(n!)²`
-/

namespace A349504.P9793909547958795695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088861 (Nat.factorial n) ^ 2

end

end A349504.P9793909547958795695

/-!
# A349505: E.g.f. satisfies: A(x) = (1 + x)^(A(x)^3).

The programs for A349505, there is no canonical definition to state claims against.
-/

/-! ## A349505.P1766552678540306234

`A333692(A305110(n))`
-/

namespace A349505.P1766552678540306234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333692 (A305110 n).toNat

end

end A349505.P1766552678540306234

/-!
# A349506: a(n) is the numerator of n!^(2*n)/(n^n^2).

The programs for A349506, there is no canonical definition to state claims against.
-/

/-! ## A349506.P14135743612036715574

`(A119619(n+1)^(n+1))²`
-/

namespace A349506.P14135743612036715574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A119619 (n + 1) ^ (n + 1)) ^ 2

end

end A349506.P14135743612036715574

/-! ## A349506.P16775894523714938523

`A000290(n!/A051190(n+1))^(n+1)`
-/

namespace A349506.P16775894523714938523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A051190 (n + 1) : ℚ))).toNat ^ (n + 1)

end

end A349506.P16775894523714938523

/-! ## A349506.P9599300937263015840

`A000290((n+1)!/A067911(n+1))^(n+1)`
-/

namespace A349506.P9599300937263015840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway ((Nat.factorial (n + 1) : ℚ) / (A067911 (n + 1) : ℚ))).toNat ^ (n + 1)

end

end A349506.P9599300937263015840

/-! ## A349506.P12980419155938419137

`A000290(∏[A028310(n)]/A051190(n+1))^(n+1)`
-/

namespace A349506.P12980419155938419137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A051190 (n + 1) : ℚ))).toNat ^ (n + 1)

end

end A349506.P12980419155938419137

/-!
# A349507: a(n) is the denominator of n!^(2*n)/(n^n^2).

The programs for A349507, there is no canonical definition to state claims against.
-/

/-! ## A349507.P16848446013183905923

`A308944(n+1)^(n+1)`
-/

namespace A349507.P16848446013183905923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308944 (n + 1) ^ (n + 1)

end

end A349507.P16848446013183905923

/-! ## A349507.P16311417777254995985

`A139051(3*n+1)^A139024(A139050(n+1))`
-/

namespace A349507.P16311417777254995985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139051 (3 * n + 1) : ℚ) ^ (A139024 (A139050 (n + 1)).toNat : ℤ)

end

end A349507.P16311417777254995985

/-!
# A349509: a(n) is the denominator of binomial(n^3 + 6*n^2 - 6*n + 2, n^3 - 1)/n^3.

The programs for A349509, there is no canonical definition to state claims against.
-/

/-! ## A349509.P7610014141364082525

`gcd(A075664(n+1), A105585(A014580(2*n+1)))`
-/

namespace A349509.P7610014141364082525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075664 (n + 1)) (A105585 (A014580 (2 * n + 1)).toNat)

end

end A349509.P7610014141364082525

/-! ## A349509.P9912272584706183410

`gcd(A001227(A316520(n+1)), A002061(n))`
-/

namespace A349509.P9912272584706183410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001227 (A316520 (n + 1)).toNat) (A002061 n)

end

end A349509.P9912272584706183410

/-! ## A349509.P17114532651036931406

`gcd(∏{p}[n+1, #], A207107(A144048(n+3)))`
-/

namespace A349509.P17114532651036931406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A207107 (A144048 (n + 3)).toNat)

end

end A349509.P17114532651036931406

/-! ## A349509.P14618748101329408156

`gcd(3, A051064(A136767(n+2)))`
-/

namespace A349509.P14618748101329408156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A051064 (A136767 (n + 2)).toNat)

end

end A349509.P14618748101329408156

/-! ## A349509.P17954314437507406523

`gcd(A001227(A136767(n+2)), A014209(n))`
-/

namespace A349509.P17954314437507406523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001227 (A136767 (n + 2)).toNat) (A014209 n)

end

end A349509.P17954314437507406523

/-! ## A349509.P4925521065258878019

`gcd(dr(A324371(n+1)), A098966(n+1))`
-/

namespace A349509.P4925521065258878019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.digitalRoot (A324371 (n + 1)) : ℤ) (A098966 (n + 1))

end

end A349509.P4925521065258878019

/-! ## A349509.P17659012195483053581

`gcd(A020735(A324388(n+1)), A180063(n))`
-/

namespace A349509.P17659012195483053581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020735 (A324388 (n + 1)).toNat) (A180063 n)

end

end A349509.P17659012195483053581

/-!
# A349513: a(n) = n! * Sum_{k=0..n} (2*k)! / (k!)^3.

The programs for A349513, there is no canonical definition to state claims against.
-/

/-! ## A349513.P9291138225846326861

`C(2*n, n)+n*a(n-1)` with `a(0)=1`
-/

namespace A349513.P9291138225846326861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (2 * n) n + n * a (n - 1)

end

end A349513.P9291138225846326861

/-! ## A349513.P9146187725569884470

`A000984(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A349513.P9146187725569884470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 n + (n : ℤ) * a (n - 1)

end

end A349513.P9146187725569884470

/-! ## A349513.P9068822835436138425

`record[A081668(n)]+n*a(n-1)` with `a(0)=1`
-/

namespace A349513.P9068822835436138425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ) * a (n - 1)

end

end A349513.P9068822835436138425

/-! ## A349513.P7296104081755422542

`(n+1)*A000108(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A349513.P7296104081755422542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A000108 n + (n : ℤ) * a (n - 1)

end

end A349513.P7296104081755422542

/-! ## A349513.P6634736596759017705

`A007318((n+1)*2*n)+n*a(n-1)` with `a(0)=1`
-/

namespace A349513.P6634736596759017705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 ((n + 1) * (2 * n)) + (n : ℤ) * a (n - 1)

end

end A349513.P6634736596759017705

/-!
# A349514: G.f. A(x) satisfies: A(x) = (1 + x * A(x)^3) / (1 - 3 * x).

The programs for A349514, there is no canonical definition to state claims against.
-/

/-! ## A349514.P12541699419961215943

`Δ[A095121(n)]*A192132(n)`
-/

namespace A349514.P12541699419961215943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A192132 n

end

end A349514.P12541699419961215943

/-! ## A349514.P5845620810037302800

`record[A143095(n)]*A192132(n)`
-/

namespace A349514.P5845620810037302800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A192132 n

end

end A349514.P5845620810037302800

/-! ## A349514.P16296204375474909703

`A151821(n+1)*A192132(n)`
-/

namespace A349514.P16296204375474909703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1) * A192132 n

end

end A349514.P16296204375474909703

/-! ## A349514.P5919066798136842338

`A000079(A087156(n+1))*A192132(n)`
-/

namespace A349514.P5919066798136842338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A087156 (n + 1)).toNat * A192132 n

end

end A349514.P5919066798136842338

/-!
# A349515: G.f. A(x) satisfies: A(x) = (1 + x * A(x)^3) / (1 - 4 * x).

The programs for A349515, there is no canonical definition to state claims against.
-/

/-! ## A349515.P5904491002383927164

`A007845(A308862(n)-A371271(n))`
-/

namespace A349515.P5904491002383927164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007845 (A308862 n - A371271 n).toNat

end

end A349515.P5904491002383927164

/-!
# A349516: G.f. A(x) satisfies: A(x) = (1 + 3 * x * A(x)^3) / (1 - x).

The programs for A349516, there is no canonical definition to state claims against.
-/

/-! ## A349516.P14623573269799848411

`and(-A238821(n), A290575(n))`
-/

namespace A349516.P14623573269799848411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A238821 n) (A290575 n)

end

end A349516.P14623573269799848411

/-!
# A349518: a(n)=x is the least prime with pi(x,4,3) - pi(x,4,1) = n-1 where pi(x,4,k) is the number of primes 4*j + k <= x.

The programs for A349518, there is no canonical definition to state claims against.
-/

/-! ## A349518.P5075332294201080102

`p?[∑[A234612(A101842(n+1))]]`
-/

namespace A349518.P5075332294201080102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A101842 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349518.P5075332294201080102

/-!
# A349520: Let S_k denote the list of pairs (1,k), (2,k), (3,k), ..., (k,k); sequence lists the pairs in S_1, S_2, S_3, ...

The programs for A349520, there is no canonical definition to state claims against.
-/

/-! ## A349520.P11310062956969223668

`A097285(n+1)-n%2`
-/

namespace A349520.P11310062956969223668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A349520.P11310062956969223668

/-! ## A349520.P5849251921971445787

`A097285(n+1)-A000035(n)`
-/

namespace A349520.P5849251921971445787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (n + 1) - A000035 n

end

end A349520.P5849251921971445787

/-! ## A349520.P11574715748427251394

`A097285(n+1)-A188510(n)²`
-/

namespace A349520.P11574715748427251394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (n + 1) - A188510 n ^ 2

end

end A349520.P11574715748427251394

/-! ## A349520.P8485071227135753804

`A097285(n+1)-Δ[A008619(n)]`
-/

namespace A349520.P8485071227135753804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (n + 1) - (f1 (n + 1) - f1 n)

end

end A349520.P8485071227135753804

/-! ## A349520.P17876778940854884809

`A097285(n+1)-char[A005408(n)]`
-/

namespace A349520.P17876778940854884809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A349520.P17876778940854884809

/-! ## A349520.P14824661960543683648

`A097285(n+1)-char[A109613(n)]`
-/

namespace A349520.P14824661960543683648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A349520.P14824661960543683648

/-! ## A349520.P12510279323544287282

`A097285(n+1)-and(1, A000290(n))`
-/

namespace A349520.P12510279323544287282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (n + 1) - Int.land 1 (A000290 n)

end

end A349520.P12510279323544287282

/-! ## A349520.P16077962242131817143

`A097285(n+1)-and(n, A257680(n))`
-/

namespace A349520.P16077962242131817143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (n + 1) - Int.land (n : ℤ) (A257680 n)

end

end A349520.P16077962242131817143

/-! ## A349520.P17038946064131603369

`A097285(n+1)+A056594(n)²-1`
-/

namespace A349520.P17038946064131603369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (n + 1) + (A056594 n ^ 2 - 1)

end

end A349520.P17038946064131603369

/-! ## A349520.P17698757990409142409

`A097285(n+1)-char[A006257(n+1)]`
-/

namespace A349520.P17698757990409142409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A349520.P17698757990409142409

/-! ## A349520.P8230198934428032857

`A097285(n+1)-A001222(Δ[A032766(n)])`
-/

namespace A349520.P8230198934428032857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (n + 1) - A001222 (f1 (n + 1) - f1 n).toNat

end

end A349520.P8230198934428032857

/-! ## A349520.P16911765590394734185

`A010054(A006519(n+1))+A097285(n+1)-1`
-/

namespace A349520.P16911765590394734185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A006519 (n + 1)).toNat + (A097285 (n + 1) - 1)

end

end A349520.P16911765590394734185

/-! ## A349520.P5944649418625230645

`A097285(n+1)-Δ[A004526(n)]`
-/

namespace A349520.P5944649418625230645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (n + 1) - (f1 (n + 1) - f1 n)

end

end A349520.P5944649418625230645

/-! ## A349520.P17692091782648683379

`A097285(n+1)-A010054(A006519(n+2))`
-/

namespace A349520.P17692091782648683379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (n + 1) - A010054 (A006519 (n + 2)).toNat

end

end A349520.P17692091782648683379

/-! ## A349520.P7234377047515129220

`A330709(xor(1, n))+1`
-/

namespace A349520.P7234377047515129220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (Nat.xor 1 n) + 1

end

end A349520.P7234377047515129220

/-! ## A349520.P18176556094232069862

`A330709(n+1)+1-A005369(n+1)`
-/

namespace A349520.P18176556094232069862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (n + 1) + (1 - A005369 (n + 1))

end

end A349520.P18176556094232069862

/-! ## A349520.P7507638954487478101

`A329949(∑[A267683(n+1)])`
-/

namespace A349520.P7507638954487478101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349520.P7507638954487478101

/-! ## A349520.P8832387189909033696

`A097285(n+1)+A056594(n²+1)`
-/

namespace A349520.P8832387189909033696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (n + 1) + A056594 (n ^ 2 + 1)

end

end A349520.P8832387189909033696

/-!
# A349521: Numbers k such that A348172(k) = 1.

The programs for A349521, there is no canonical definition to state claims against.
-/

/-! ## A349521.P9394407167736343717

`1+eq[1, A348172(n+1)]`
-/

namespace A349521.P9394407167736343717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349521.P9394407167736343717

/-! ## A349521.P9375957543804162632

`eq[1, A348172(A028310(n))]`
-/

namespace A349521.P9375957543804162632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348172 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349521.P9375957543804162632

/-! ## A349521.P2142074675025535641

`A014681(eq[1, A348172(n+1)])`
-/

namespace A349521.P2142074675025535641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349521.P2142074675025535641

/-! ## A349521.P17590985047297971328

`A092486(eq[1, A348172(n+1)])`
-/

namespace A349521.P17590985047297971328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349521.P17590985047297971328

/-! ## A349521.P2294907488602598322

`eq[1, A348172(A233583(n+1))]`
-/

namespace A349521.P2294907488602598322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348172 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349521.P2294907488602598322

/-! ## A349521.P13511849768204915022

`eq[1, A348172(A000038(n)+n)]`
-/

namespace A349521.P13511849768204915022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348172 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349521.P13511849768204915022

/-!
# A349523: a(n) = Sum_{k=1..n} A339399(k).

The programs for A349523, there is no canonical definition to state claims against.
-/

/-! ## A349523.P16016083994137897627

`∑[A339399(n+1)]`
-/

namespace A349523.P16016083994137897627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349523.P16016083994137897627

/-! ## A349523.P13420143538795554748

`∑[A339443(xor(1, n)+1)]`
-/

namespace A349523.P13420143538795554748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339443 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349523.P13420143538795554748

/-! ## A349523.P13523378144197119917

`∑[A339443(abs(xor(n, -2)))]`
-/

namespace A349523.P13523378144197119917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339443 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349523.P13523378144197119917

/-! ## A349523.P2376060765363340622

`∑[A339443(2-xor(1, 1-n))]`
-/

namespace A349523.P2376060765363340622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339443 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349523.P2376060765363340622

/-! ## A349523.P520900343480051633

`∑[A097283(n+1)-n%2]`
-/

namespace A349523.P520900343480051633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097283 (n + 1) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349523.P520900343480051633

/-! ## A349523.P334725546181001808

`∑[A339443(2*or(1, n)-n)]`
-/

namespace A349523.P334725546181001808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339443 (2 * Nat.lor 1 n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349523.P334725546181001808

/-! ## A349523.P13970321220378884145

`∑[A339443(lcm(2, or(1, n))-n)]`
-/

namespace A349523.P13970321220378884145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339443 (Nat.lcm 2 (Nat.lor 1 n) - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349523.P13970321220378884145

/-! ## A349523.P996277099604387644

`∑[A339443(A014681(n+1))]`
-/

namespace A349523.P996277099604387644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339443 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349523.P996277099604387644

/-! ## A349523.P2967091517688197918

`∑[A339443(A103889(n+1))]`
-/

namespace A349523.P2967091517688197918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339443 (A103889 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349523.P2967091517688197918

/-! ## A349523.P11115319543889613370

`∑[A097283(n+1)-A000035(n)]`
-/

namespace A349523.P11115319543889613370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097283 (n + 1) - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349523.P11115319543889613370

/-!
# A349524: a(n) = Sum_{k=0..n} (2*k+1)^(k-1) * Stirling2(n,k).

The programs for A349524, there is no canonical definition to state claims against.
-/

/-! ## A349524.P8212202153913389051

`floor((A008706(n!²)-1)/e)`
-/

namespace A349524.P8212202153913389051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008706 (Nat.factorial n ^ 2) - 1 : ℝ) / Real.exp 1⌋

end

end A349524.P8212202153913389051

/-!
# A349525: a(n) = Sum_{k=0..n} (3*k+1)^(k-1) * Stirling2(n,k).

The programs for A349525, there is no canonical definition to state claims against.
-/

/-! ## A349525.P17761368525070811120

`A209862(A339934(n)-n)`
-/

namespace A349525.P17761368525070811120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209862 (A339934 n - (n : ℤ)).toNat

end

end A349525.P17761368525070811120

/-!
# A349526: Modified lexicographic ordering of all pairs i,j with 1 <= i <= j; every pair i,j of positive integers occurs exactly once.

The programs for A349526, there is no canonical definition to state claims against.
-/

/-! ## A349526.P11182711088751624884

`A226005(n)+1`
-/

namespace A349526.P11182711088751624884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 n + 1

end

end A349526.P11182711088751624884

/-! ## A349526.P13140178047977763262

`A349520(comp[∑[2*n]])`
-/

namespace A349526.P13140178047977763262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A349526.P13140178047977763262

/-! ## A349526.P15442569020566828950

`A329949(floor(acot(n)+n))`
-/

namespace A349526.P15442569020566828950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A349526.P15442569020566828950

/-! ## A349526.P9743932158851814347

`A329949(n^floor(atan(n)))`
-/

namespace A349526.P9743932158851814347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A349526.P9743932158851814347

/-! ## A349526.P2598248800683675401

`A329949(or(n, floor(acot(n))))`
-/

namespace A349526.P2598248800683675401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A349526.P2598248800683675401

/-! ## A349526.P8155482208995722434

`A329949(xor(n, floor(acot(n))))`
-/

namespace A349526.P8155482208995722434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A349526.P8155482208995722434

/-! ## A349526.P4273536787546461842

`A005496(A226005(n))`
-/

namespace A349526.P4273536787546461842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A226005 n).toNat

end

end A349526.P4273536787546461842

/-! ## A349526.P9044545280892240253

`A329949(A028310(n))`
-/

namespace A349526.P9044545280892240253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 (A028310 n).toNat

end

end A349526.P9044545280892240253

/-! ## A349526.P9276230103860558945

`A097285(A127366(n)+1)`
-/

namespace A349526.P9276230103860558945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A127366 n + 1).toNat

end

end A349526.P9276230103860558945

/-! ## A349526.P678065836033499164

`A057059(A194033(n+1))`
-/

namespace A349526.P678065836033499164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057059 (A194033 (n + 1)).toNat

end

end A349526.P678065836033499164

/-!
# A349527: a(n) = Sum_{k=0..n} (-1)^(n-k) * (2*k+1)^(k-1) * Stirling2(n,k).

The programs for A349527, there is no canonical definition to state claims against.
-/

/-! ## A349527.P951218793882485890

`A260424(n²*a(n-1))` with `a(0)=1`
-/

namespace A349527.P951218793882485890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260424 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A349527.P951218793882485890

/-!
# A349528: a(n) = Sum_{k=0..n} (-1)^(n-k) * (3*k+1)^(k-1) * Stirling2(n,k).

The programs for A349528, there is no canonical definition to state claims against.
-/

/-! ## A349528.P1947089568212542470

`A137849(∑[n+1]^(n-1))`
-/

namespace A349528.P1947089568212542470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137849 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A349528.P1947089568212542470

/-!
# A349529: Number of permutations of the base-2 representations of 1, 2, ..., n that are unambiguous when written without delimiters.

The programs for A349529, there is no canonical definition to state claims against.
-/

/-! ## A349529.P4427722559677101048

`A354930(A365103(n))`
-/

namespace A349529.P4427722559677101048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354930 (A365103 n).toNat

end

end A349529.P4427722559677101048

/-! ## A349529.P17822680242357055656

`A220413(2*A120920(n))`
-/

namespace A349529.P17822680242357055656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (2 * A120920 n).toNat

end

end A349529.P17822680242357055656

/-!
# A349530: Least positive integer m such that the n numbers k*(k^4+1) (k=1..n) are pairwise distinct modulo m^2.

The programs for A349530, there is no canonical definition to state claims against.
-/

/-! ## A349530.P14917692901114805151

`5*a(floor(n/25))` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A349530.P14917692901114805151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  5 * a ⌊(n : ℚ) / 25⌋.toNat

end

end A349530.P14917692901114805151

/-! ## A349530.P7363429587711957244

`A133179(round(log(A107937(n+1))))`
-/

namespace A349530.P7363429587711957244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (SequenceMachineLib.roundAway (Real.log (A107937 (n + 1) : ℝ))).toNat

end

end A349530.P7363429587711957244

/-! ## A349530.P13797852947625845369

`A190733(round(log(A107937(n+1)))-4)`
-/

namespace A349530.P13797852947625845369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190733 (SequenceMachineLib.roundAway (Real.log (A107937 (n + 1) : ℝ)) - 4).toNat

end

end A349530.P13797852947625845369

/-!
# A349531: G.f. A(x) satisfies: A(x) = 1 + x * A(x)^3 / (1 - 3 * x).

The programs for A349531, there is no canonical definition to state claims against.
-/

/-! ## A349531.P16662264771186733388

`A265342(A198951(2*n))-A198951(2*n)`
-/

namespace A349531.P16662264771186733388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265342 (A198951 (2 * n)).toNat - A198951 (2 * n)

end

end A349531.P16662264771186733388

/-!
# A349532: G.f. A(x) satisfies: A(x) = 1 + x * A(x)^3 / (1 - 4 * x).

The programs for A349532, there is no canonical definition to state claims against.
-/

/-! ## A349532.P5707069831129164510

`A266193((10*n+6)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A349532.P5707069831129164510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A266193 ((10 * n + 6 : ℤ) * a (n - 1)).toNat

end

end A349532.P5707069831129164510

/-!
# A349533: G.f. A(x) satisfies A(x) = 1 / ((1 - 2 * x) * (1 - x * A(x)^2)).

The programs for A349533, there is no canonical definition to state claims against.
-/

/-! ## A349533.P8347993909630387214

`A074286(A228495(n+4)+A002076(2*(n+1)))`
-/

namespace A349533.P8347993909630387214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A228495 (n + 4) + A002076 (2 * (n + 1))).toNat

end

end A349533.P8347993909630387214

/-!
# A349534: G.f. A(x) satisfies A(x) = 1 / ((1 - 3 * x) * (1 - x * A(x)^2)).

The programs for A349534, there is no canonical definition to state claims against.
-/

/-! ## A349534.P2417254080161269290

`∑[A372477(∑[A391084(n)])]`
-/

namespace A349534.P2417254080161269290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391084 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372477 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349534.P2417254080161269290

/-!
# A349535: G.f. A(x) satisfies A(x) = 1 / ((1 - 4 * x) * (1 - x * A(x)^2)).

The programs for A349535, there is no canonical definition to state claims against.
-/

/-! ## A349535.P17874659417866118287

`A000720(A056116(n)+A018016(n))`
-/

namespace A349535.P17874659417866118287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A056116 n + A018016 n).toNat

end

end A349535.P17874659417866118287

/-!
# A349536: Consider a circle on the Z X Z lattice with radius equal to the Pythagorean hypotenuse h(n) (A009003); a(n) = number of Pythagorean triples inside a Pi/4 sector of the circle.

The programs for A349536, the canonical program `A349536.P8419380923453773288` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349536 has offset 1).

The definition of A349536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349536.P8419380923453773288

`record[A323239(A008797(n))+A224921(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A349536

/-- `record[A323239(A008797(n))+A224921(n+1)]` -/
def P8419380923453773288.Spec : Prop :=
  ∀ n, P8419380923453773288.a n = A349536 (n + 1)

theorem P8419380923453773288.correct : P8419380923453773288.Spec := by
  intro n
  simp only [A349536, Nat.add_sub_cancel]

end A349536

/-! ## A349536.P9299447473385606126

`record[A335379(2*(n+1))+A224921(n+2)]`
-/

namespace A349536.P9299447473385606126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335379 (2 * (n + 1)) + A224921 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349536.P9299447473385606126

namespace A349536

/-- `record[A335379(2*(n+1))+A224921(n+2)]` -/
def P9299447473385606126.Spec : Prop :=
  ∀ n, P9299447473385606126.a n = A349536 (n + 1)

end A349536

/-! ## A349536.P14827384273237983511

`record[A224921(n+1)+A036987(A002620(n))]`
-/

namespace A349536.P14827384273237983511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (n + 1) + A036987 (A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349536.P14827384273237983511

namespace A349536

/-- `record[A224921(n+1)+A036987(A002620(n))]` -/
def P14827384273237983511.Spec : Prop :=
  ∀ n, P14827384273237983511.a n = A349536 (n + 1)

end A349536

/-! ## A349536.P3723586440918496048

`record[A323239(A076921(n+1))+A224921(n+1)]`
-/

namespace A349536.P3723586440918496048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A076921 (n + 1)).toNat + A224921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349536.P3723586440918496048

namespace A349536

/-- `record[A323239(A076921(n+1))+A224921(n+1)]` -/
def P3723586440918496048.Spec : Prop :=
  ∀ n, P3723586440918496048.a n = A349536 (n + 1)

end A349536

/-! ## A349536.P3250700063053814255

`record[A224921(n+1)+A036987(n²)]`
-/

namespace A349536.P3250700063053814255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (n + 1) + A036987 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349536.P3250700063053814255

namespace A349536

/-- `record[A224921(n+1)+A036987(n²)]` -/
def P3250700063053814255.Spec : Prop :=
  ∀ n, P3250700063053814255.a n = A349536 (n + 1)

end A349536

/-! ## A349536.P6738723362494441127

`∑[A000005(A000005(A295554(n+1)))]`
-/

namespace A349536.P6738723362494441127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A295554 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349536.P6738723362494441127

namespace A349536

/-- `∑[A000005(A000005(A295554(n+1)))]` -/
def P6738723362494441127.Spec : Prop :=
  ∀ n, P6738723362494441127.a n = A349536 (n + 1)

end A349536

/-! ## A349536.P12188922206158346920

`A004526(∑[A266977(A295554(n+1))])`
-/

namespace A349536.P12188922206158346920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (A295554 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349536.P12188922206158346920

namespace A349536

/-- `A004526(∑[A266977(A295554(n+1))])` -/
def P12188922206158346920.Spec : Prop :=
  ∀ n, P12188922206158346920.a n = A349536 (n + 1)

end A349536

/-! ## A349536.P10669308503749172203

`∑[A054725(A123578(A295554(n+1)²))]`
-/

namespace A349536.P10669308503749172203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A123578 (A295554 (n + 1) ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349536.P10669308503749172203

namespace A349536

/-- `∑[A054725(A123578(A295554(n+1)²))]` -/
def P10669308503749172203.Spec : Prop :=
  ∀ n, P10669308503749172203.a n = A349536 (n + 1)

end A349536

/-!
# A349538: The number of pseudo-Pythagorean triples (which allow negative or 0 sides) on a 2D lattice that are on or inside a circle of radius n.

The programs for A349538, the canonical program `A349538.P8542054162756012247` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349538 has offset 0).

The definition of A349538 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046080, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349538.P8542054162756012247

`a(n-1)+4+8*A046080(n)` with `a(0)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A349538

/-- `a(n-1)+4+8*A046080(n)` -/
def P8542054162756012247.Spec : Prop :=
  ∀ n, P8542054162756012247.a n = A349538 n

theorem P8542054162756012247.correct : P8542054162756012247.Spec := by
  intro n
  simp only [A349538]

end A349538

/-! ## A349538.P4573939220482517793

`(A211432(n)+1)/2`
-/

namespace A349538.P4573939220482517793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211432 n + 1 : ℚ) / 2

end

end A349538.P4573939220482517793

namespace A349538

/-- `(A211432(n)+1)/2` -/
def P4573939220482517793.Spec : Prop :=
  ∀ n, P4573939220482517793.a n = (A349538 n : ℚ)

end A349538

/-! ## A349538.P8309570402248986819

`∑[A046109(n)]`
-/

namespace A349538.P8309570402248986819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349538.P8309570402248986819

namespace A349538

/-- `∑[A046109(n)]` -/
def P8309570402248986819.Spec : Prop :=
  ∀ n, P8309570402248986819.a n = A349538 n

end A349538

/-! ## A349538.P9423039924020638330

`a(n-1)+A046109(n)%A000040(n+1)` with `a(0)=1, a(1)=5`
-/

namespace A349538.P9423039924020638330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + Int.tmod (A046109 n) (A000040 (n + 1))

end

end A349538.P9423039924020638330

namespace A349538

/-- `a(n-1)+A046109(n)%A000040(n+1)` -/
def P9423039924020638330.Spec : Prop :=
  ∀ n, P9423039924020638330.a n = A349538 n

end A349538

/-! ## A349538.P11590816877448808950

`∑[A000328(n)-A051132(n)]`
-/

namespace A349538.P11590816877448808950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n - A051132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349538.P11590816877448808950

namespace A349538

/-- `∑[A000328(n)-A051132(n)]` -/
def P11590816877448808950.Spec : Prop :=
  ∀ n, P11590816877448808950.a n = A349538 n

end A349538

/-! ## A349538.P6740521595872577314

`∑[∑[A036693(n)]-A051132(n)]`
-/

namespace A349538.P6740521595872577314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A051132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349538.P6740521595872577314

namespace A349538

/-- `∑[∑[A036693(n)]-A051132(n)]` -/
def P6740521595872577314.Spec : Prop :=
  ∀ n, P6740521595872577314.a n = A349538 n

end A349538

/-! ## A349538.P16968110843018114898

`∑[A000328(n)-A053456(2*n)]`
-/

namespace A349538.P16968110843018114898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n - A053456 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349538.P16968110843018114898

namespace A349538

/-- `∑[A000328(n)-A053456(2*n)]` -/
def P16968110843018114898.Spec : Prop :=
  ∀ n, P16968110843018114898.a n = A349538 n

end A349538

/-! ## A349538.P6938221736680281233

`ceil(A211432(n)/2)`
-/

namespace A349538.P6938221736680281233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211432 n : ℚ) / 2⌉

end

end A349538.P6938221736680281233

namespace A349538

/-- `ceil(A211432(n)/2)` -/
def P6938221736680281233.Spec : Prop :=
  ∀ n, P6938221736680281233.a n = A349538 n

end A349538

/-! ## A349538.P11835817252908832449

`A000265(A211432(n)+1)`
-/

namespace A349538.P11835817252908832449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A211432 n + 1).toNat

end

end A349538.P11835817252908832449

namespace A349538

/-- `A000265(A211432(n)+1)` -/
def P11835817252908832449.Spec : Prop :=
  ∀ n, P11835817252908832449.a n = A349538 n

end A349538

/-! ## A349538.P12806648721905466994

`A000463(A211432(n))`
-/

namespace A349538.P12806648721905466994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A211432 n).toNat

end

end A349538.P12806648721905466994

namespace A349538

/-- `A000463(A211432(n))` -/
def P12806648721905466994.Spec : Prop :=
  ∀ n, P12806648721905466994.a n = A349538 n

end A349538

/-! ## A349538.P6317645403721966484

`A004525(A211432(n)+1)`
-/

namespace A349538.P6317645403721966484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A211432 n + 1).toNat

end

end A349538.P6317645403721966484

namespace A349538

/-- `A004525(A211432(n)+1)` -/
def P6317645403721966484.Spec : Prop :=
  ∀ n, P6317645403721966484.a n = A349538 n

end A349538

/-! ## A349538.P11893892281555992128

`A004525(or(1, A211432(n)))`
-/

namespace A349538.P11893892281555992128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lor 1 (A211432 n)).toNat

end

end A349538.P11893892281555992128

namespace A349538

/-- `A004525(or(1, A211432(n)))` -/
def P11893892281555992128.Spec : Prop :=
  ∀ n, P11893892281555992128.a n = A349538 n

end A349538

/-! ## A349538.P13895187096298936557

`∑[A302996(∑[n+3])]`
-/

namespace A349538.P13895187096298936557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302996 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349538.P13895187096298936557

namespace A349538

/-- `∑[A302996(∑[n+3])]` -/
def P13895187096298936557.Spec : Prop :=
  ∀ n, P13895187096298936557.a n = A349538 n

end A349538

/-! ## A349538.P18304513102525951275

`∑[A004018(n²)]`
-/

namespace A349538.P18304513102525951275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349538.P18304513102525951275

namespace A349538

/-- `∑[A004018(n²)]` -/
def P18304513102525951275.Spec : Prop :=
  ∀ n, P18304513102525951275.a n = A349538 n

end A349538

/-! ## A349538.P3765420350238233051

`∑[abs(A104794(n²))]`
-/

namespace A349538.P3765420350238233051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104794 (n ^ 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349538.P3765420350238233051

namespace A349538

/-- `∑[abs(A104794(n²))]` -/
def P3765420350238233051.Spec : Prop :=
  ∀ n, P3765420350238233051.a n = A349538 n

end A349538

/-! ## A349538.P2027577044707116823

`A004018(n*n)+a(n-1)` with `a(0)=1`
-/

namespace A349538.P2027577044707116823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004018 (n * n) + a (n - 1)

end

end A349538.P2027577044707116823

namespace A349538

/-- `A004018(n*n)+a(n-1)` -/
def P2027577044707116823.Spec : Prop :=
  ∀ n, P2027577044707116823.a n = A349538 n

end A349538

/-!
# A349539: Smallest number m in a set of at least three consecutive triangular numbers with three distinct prime factors.

The programs for A349539, there is no canonical definition to state claims against.
-/

/-! ## A349539.P3759325829389328943

`C(A221282(n+3), A020639(A221297(n+2)+1))`
-/

namespace A349539.P3759325829389328943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A221282 (n + 3)).toNat (A020639 (A221297 (n + 2) + 1).toNat).toNat

end

end A349539.P3759325829389328943

/-!
# A349540: E.g.f.: exp(x) * (BesselI(0,6*x) + BesselI(1,6*x)).

The programs for A349540, there is no canonical definition to state claims against.
-/

/-! ## A349540.P12795903813529403558

`A194403(A270787(n))`
-/

namespace A349540.P12795903813529403558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194403 (A270787 n).toNat

end

end A349540.P12795903813529403558

/-!
# A349541: E.g.f.: exp(x) * (BesselI(0,8*x) + BesselI(1,8*x)).

The programs for A349541, there is no canonical definition to state claims against.
-/

/-! ## A349541.P5787062865676147258

`A004273(2*floor(e^(1/2)*n!*2^n)-(2*n+1))`
-/

namespace A349541.P5787062865676147258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * ⌊Real.exp 1 ^ ((1 : ℚ) / 2 : ℝ) * (Nat.factorial n : ℝ) * (2 ^ n : ℝ)⌋ - (2 * n + 1 : ℤ)).toNat

end

end A349541.P5787062865676147258

/-!
# A349542: Number of partitions of n into distinct unitary divisors of n.

The programs for A349542, there is no canonical definition to state claims against.
-/

/-! ## A349542.P14672487916128701660

`A008669(and(A225245(n), A239136(n+1)))`
-/

namespace A349542.P14672487916128701660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008669 (Int.land (A225245 n) (A239136 (n + 1))).toNat

end

end A349542.P14672487916128701660

/-! ## A349542.P866442277394058157

`A008669(and(A225245(n), A324929(n+1)))`
-/

namespace A349542.P866442277394058157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008669 (Int.land (A225245 n) (A324929 (n + 1))).toNat

end

end A349542.P866442277394058157

/-! ## A349542.P15861651160114765157

`A000792(A225245(n)%A286003(n+1))`
-/

namespace A349542.P15861651160114765157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (Int.tmod (A225245 n) (A286003 (n + 1))).toNat

end

end A349542.P15861651160114765157

/-! ## A349542.P1545443981423687466

`A317491(A225245(n)^A320001(3*n+2))`
-/

namespace A349542.P1545443981423687466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317491 (SequenceMachineLib.roundAway ((A225245 n : ℚ) ^ (A320001 (3 * n + 2) : ℤ))).toNat

end

end A349542.P1545443981423687466

/-! ## A349542.P14143201307441601241

`A000793(A225245(n))%A351924(n+2)`
-/

namespace A349542.P14143201307441601241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000793 (A225245 n).toNat) (A351924 (n + 2))

end

end A349542.P14143201307441601241

/-! ## A349542.P15951813358520354779

`A051424(A225245(n))%A303016(3*n+5)`
-/

namespace A349542.P15951813358520354779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051424 (A225245 n).toNat) (A303016 (3 * n + 5))

end

end A349542.P15951813358520354779

/-! ## A349542.P10687342299061895337

`A051424(A225245(n))%A376456(n+1)`
-/

namespace A349542.P10687342299061895337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051424 (A225245 n).toNat) (A376456 (n + 1))

end

end A349542.P10687342299061895337

/-! ## A349542.P13790613234327420933

`A326046(gcd(A326069(n+1), A358307(n)))`
-/

namespace A349542.P13790613234327420933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326046 (Int.gcd (A326069 (n + 1)) (A358307 n))

end

end A349542.P13790613234327420933

/-! ## A349542.P6881746451689227264

`gcd(A033630(n), A090077(A330219(n+1)))`
-/

namespace A349542.P6881746451689227264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033630 n) (A090077 (A330219 (n + 1)).toNat)

end

end A349542.P6881746451689227264

/-!
# A349543: a(n) = A001414(A277272(n)).

The programs for A349543, there is no canonical definition to state claims against.
-/

/-! ## A349543.P12610778257121444525

`A001414(A277272(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349543.P12610778257121444525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A277272 (n + 1)).toNat

end

end A349543.P12610778257121444525

/-! ## A349543.P13348055099335934216

`∑{d}[A277272(n+1), A120007(#)]`
-/

namespace A349543.P13348055099335934216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A120007 d

end

end A349543.P13348055099335934216

/-! ## A349543.P6314758806771688487

`∑{d}[A277272(n+1), A008472(A014963(#))]`
-/

namespace A349543.P6314758806771688487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008472 (A014963 d).toNat

end

end A349543.P6314758806771688487

/-! ## A349543.P6057946890176714780

`A260196(n+2)+A036288(A277272(n+1))`
-/

namespace A349543.P6057946890176714780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A036288 (A277272 (n + 1)).toNat

end

end A349543.P6057946890176714780

/-!
# A349545: Triangular array read by rows: T(n,k) = A002884(k)*2^((n-k)(n-k-1)), n >= 0, 0 <= k <= n.

The programs for A349545, there is no canonical definition to state claims against.
-/

/-! ## A349545.P16187591183958580180

`A348958(n)/A296548(n)`
-/

namespace A349545.P16187591183958580180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348958 n : ℚ) / (A296548 n : ℚ)

end

end A349545.P16187591183958580180

/-! ## A349545.P16629150947009491532

`A348958(n)/(A022166(n)*A117401(n))`
-/

namespace A349545.P16629150947009491532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348958 n : ℚ) / (A022166 n * A117401 n : ℚ)

end

end A349545.P16629150947009491532

/-!
# A349548: First column of A348575.

The programs for A349548, there is no canonical definition to state claims against.
-/

/-! ## A349548.P11583533565377559107

`A349742(n+1)-A161680(A349547(n+1))`
-/

namespace A349548.P11583533565377559107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349742 (n + 1) - A161680 (A349547 (n + 1)).toNat

end

end A349548.P11583533565377559107

/-!
# A349550: Meta-Wythoff array based on A097285: M = (M(n,k)), by downward antidiagonals; every row of M is eventually a row of the Wythoff array, W = A035513, and every row of W is a row of M; see Comments.

The programs for A349550, there is no canonical definition to state claims against.
-/

/-! ## A349550.P1262639918859260863

`A120250(A095904(n)%A095499(n))`
-/

namespace A349550.P1262639918859260863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120250 (Int.tmod (A095904 n) (A095499 n)).toNat

end

end A349550.P1262639918859260863

/-! ## A349550.P12996536864390122894

`A341999(A005254(n+1))+A209434(n)`
-/

namespace A349550.P12996536864390122894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 (A005254 (n + 1)).toNat + A209434 n

end

end A349550.P12996536864390122894

/-! ## A349550.P17050364944647696119

`A341999(A005254(n+1))+A209435(A061579(n))`
-/

namespace A349550.P17050364944647696119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 (A005254 (n + 1)).toNat + A209435 (A061579 n).toNat

end

end A349550.P17050364944647696119

/-! ## A349550.P7199048252306746438

`A341999(A005254(n+1))+A209435(A278818(n+1))`
-/

namespace A349550.P7199048252306746438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 (A005254 (n + 1)).toNat + A209435 (A278818 (n + 1)).toNat

end

end A349550.P7199048252306746438

/-! ## A349550.P4044739706514338299

`A306717(A306730(n))+A122204(n)`
-/

namespace A349550.P4044739706514338299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306717 (A306730 n).toNat + A122204 n

end

end A349550.P4044739706514338299

/-!
# A349552: a(n) is the number of halving partitions of n (see Comments for definition).

The programs for A349552, there is no canonical definition to state claims against.
-/

/-! ## A349552.P7735798646372283871

`A293431(A332030(n))`
-/

namespace A349552.P7735798646372283871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293431 (A332030 n).toNat

end

end A349552.P7735798646372283871

/-! ## A349552.P8892317066746112047

`A001221(2*A332030(n))`
-/

namespace A349552.P8892317066746112047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A332030 n).toNat

end

end A349552.P8892317066746112047

/-! ## A349552.P18400653354386416494

`A106737(n)-A001221(2^n)`
-/

namespace A349552.P18400653354386416494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 n - A001221 (2 ^ n)

end

end A349552.P18400653354386416494

/-! ## A349552.P8921631036004392197

`A000120(n^∑{e}[∏{p}[A001792(n), #], #])`
-/

namespace A349552.P8921631036004392197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A349552.P8921631036004392197

/-! ## A349552.P11827189830748813810

`A106737(n)-A015161(A015161(n))`
-/

namespace A349552.P11827189830748813810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 n - A015161 (A015161 n).toNat

end

end A349552.P11827189830748813810

/-!
# A349554: a(n) = A054108(n) + 4*(-1)^n.

The programs for A349554, the canonical program `A349554.P15839873787135527783` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349554 has offset 1).

The definition of A349554 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054108, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349554.P15839873787135527783

`A054108(n+1)+4*(-1)^(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A349554

/-- `A054108(n+1)+4*(-1)^(n+1)` -/
def P15839873787135527783.Spec : Prop :=
  ∀ n, P15839873787135527783.a n = A349554 (n + 1)

theorem P15839873787135527783.correct : P15839873787135527783.Spec := by
  intro n
  simp only [A349554, Nat.add_sub_cancel]

end A349554

/-! ## A349554.P16904398901181551309

`C(2*(n+2), n+2)-a(n-1)` with `a(0)=1`
-/

namespace A349554.P16904398901181551309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 * (n + 2)) (n + 2) : ℤ) - a (n - 1)

end

end A349554.P16904398901181551309

namespace A349554

/-- `C(2*(n+2), n+2)-a(n-1)` -/
def P16904398901181551309.Spec : Prop :=
  ∀ n, P16904398901181551309.a n = A349554 (n + 1)

end A349554

/-! ## A349554.P5009737823077779588

`Δ[A054114(n)]-a(n-1)` with `a(0)=1`
-/

namespace A349554.P5009737823077779588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054114 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A349554.P5009737823077779588

namespace A349554

/-- `Δ[A054114(n)]-a(n-1)` -/
def P5009737823077779588.Spec : Prop :=
  ∀ n, P5009737823077779588.a n = A349554 (n + 1)

end A349554

/-! ## A349554.P16761027324282670034

`A000984(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A349554.P16761027324282670034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 (n + 2) - a (n - 1)

end

end A349554.P16761027324282670034

namespace A349554

/-- `A000984(n+2)-a(n-1)` -/
def P16761027324282670034.Spec : Prop :=
  ∀ n, P16761027324282670034.a n = A349554 (n + 1)

end A349554

/-! ## A349554.P14204115584982124515

`Δ[A006134(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A349554.P14204115584982124515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A349554.P14204115584982124515

namespace A349554

/-- `Δ[A006134(n+1)]-a(n-1)` -/
def P14204115584982124515.Spec : Prop :=
  ∀ n, P14204115584982124515.a n = A349554 (n + 1)

end A349554

/-! ## A349554.P17426571523243811324

`Δ[A066796(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A349554.P17426571523243811324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A349554.P17426571523243811324

namespace A349554

/-- `Δ[A066796(n+1)]-a(n-1)` -/
def P17426571523243811324.Spec : Prop :=
  ∀ n, P17426571523243811324.a n = A349554 (n + 1)

end A349554

/-!
# A349555: a(n) = Sum_{p<=n, p prime} p^floor(1/gcd(n/p)).

The programs for A349555, the canonical program `A349555.P9568767328218763309` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349555 has offset 1).

The definition of A349555 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A066911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349555.P9568767328218763309

`A001221(n+1)+A066911(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A349555

/-- `A001221(n+1)+A066911(n+1)` -/
def P9568767328218763309.Spec : Prop :=
  ∀ n, P9568767328218763309.a n = A349555 (n + 1)

theorem P9568767328218763309.correct : P9568767328218763309.Spec := by
  intro n
  simp only [A349555, Nat.add_sub_cancel]

end A349555

/-! ## A349555.P15078948505576639865

`∑[∑{p}[n+1, C(#, n)]]-∑{p}[n+1, #-1]`
-/

namespace A349555.P15078948505576639865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)

end

end A349555.P15078948505576639865

namespace A349555

/-- `∑[∑{p}[n+1, C(#, n)]]-∑{p}[n+1, #-1]` -/
def P15078948505576639865.Spec : Prop :=
  ∀ n, P15078948505576639865.a n = A349555 (n + 1)

end A349555

/-! ## A349555.P14708768515358746996

`∑[A061397(n+1)]-∑{p}[n+1, #-1]`
-/

namespace A349555.P14708768515358746996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)

end

end A349555.P14708768515358746996

namespace A349555

/-- `∑[A061397(n+1)]-∑{p}[n+1, #-1]` -/
def P14708768515358746996.Spec : Prop :=
  ∀ n, P14708768515358746996.a n = A349555 (n + 1)

end A349555

/-! ## A349555.P2138310117559071417

`∑[∑{p}[n+1, C(#, n)]]-A055631(n+1)`
-/

namespace A349555.P2138310117559071417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A055631 (n + 1)

end

end A349555.P2138310117559071417

namespace A349555

/-- `∑[∑{p}[n+1, C(#, n)]]-A055631(n+1)` -/
def P2138310117559071417.Spec : Prop :=
  ∀ n, P2138310117559071417.a n = A349555 (n + 1)

end A349555

/-! ## A349555.P13013505300768924707

`A034387(n+1)-A055631(n+1)`
-/

namespace A349555.P13013505300768924707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) - A055631 (n + 1)

end

end A349555.P13013505300768924707

namespace A349555

/-- `A034387(n+1)-A055631(n+1)` -/
def P13013505300768924707.Spec : Prop :=
  ∀ n, P13013505300768924707.a n = A349555 (n + 1)

end A349555

/-! ## A349555.P10731353473923375389

`A066911(n+1)+log2(A034444(n+1))`
-/

namespace A349555.P10731353473923375389
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066911 (n + 1) : ℝ) + Real.logb 2 (A034444 (n + 1) : ℝ)

end

end A349555.P10731353473923375389

namespace A349555

/-- `A066911(n+1)+log2(A034444(n+1))` -/
def P10731353473923375389.Spec : Prop :=
  ∀ n, P10731353473923375389.a n = (A349555 (n + 1) : ℝ)

end A349555

/-! ## A349555.P2603969690489299767

`A066911(n+1)+∑{p}[n+1, A001222(#)]`
-/

namespace A349555.P2603969690489299767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A349555.P2603969690489299767

namespace A349555

/-- `A066911(n+1)+∑{p}[n+1, A001222(#)]` -/
def P2603969690489299767.Spec : Prop :=
  ∀ n, P2603969690489299767.a n = A349555 (n + 1)

end A349555

/-! ## A349555.P7082038549790750822

`A034387(n+1)-∑{p}[n+1, A000010(#)]`
-/

namespace A349555.P7082038549790750822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n), A000010 p

end

end A349555.P7082038549790750822

namespace A349555

/-- `A034387(n+1)-∑{p}[n+1, A000010(#)]` -/
def P7082038549790750822.Spec : Prop :=
  ∀ n, P7082038549790750822.a n = A349555 (n + 1)

end A349555

/-! ## A349555.P9348558489040327233

`A066911(n+1)+A001222(∏{p}[n+1, #])`
-/

namespace A349555.P9348558489040327233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (n + 1) + A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A349555.P9348558489040327233

namespace A349555

/-- `A066911(n+1)+A001222(∏{p}[n+1, #])` -/
def P9348558489040327233.Spec : Prop :=
  ∀ n, P9348558489040327233.a n = A349555 (n + 1)

end A349555

/-!
# A349556: E.g.f. satisfies: A(x) = 1/(1 - x*A(x))^A(x).

The programs for A349556, there is no canonical definition to state claims against.
-/

/-! ## A349556.P15666579700533426944

`A315533((n-1)*a(n-1))` with `a(0)=1`
-/

namespace A349556.P15666579700533426944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A315533 (((n : ℤ) - 1) * a (n - 1)).toNat

end

end A349556.P15666579700533426944

/-!
# A349557: E.g.f. satisfies: log(A(x)) = (exp(x*A(x)) - 1) * A(x).

The programs for A349557, there is no canonical definition to state claims against.
-/

/-! ## A349557.P14904430920647636756

`A292763(6*a(n-1))` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A349557.P14904430920647636756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  A292763 (6 * a (n - 1)).toNat

end

end A349557.P14904430920647636756

/-!
# A349558: E.g.f. satisfies: log(A(x)) = (1 - exp(-x*A(x))) * A(x).

The programs for A349558, there is no canonical definition to state claims against.
-/

/-! ## A349558.P2734654676600010678

`round(sqrt(A322440(∑[n²]+2)))`
-/

namespace A349558.P2734654676600010678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A322440 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℝ))

end

end A349558.P2734654676600010678

/-!
# A349559: E.g.f. satisfies A(x) = 1/(1 - x*A(x))^x.

The programs for A349559, there is no canonical definition to state claims against.
-/

/-! ## A349559.P4140381410519761272

`A131173(A375688(n))`
-/

namespace A349559.P4140381410519761272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131173 (A375688 n).toNat

end

end A349559.P4140381410519761272

/-! ## A349559.P4094899981342646903

`A005143(n+2)-A004583(n+4)`
-/

namespace A349559.P4094899981342646903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005143 (n + 2) - A004583 (n + 4)

end

end A349559.P4094899981342646903

/-!
# A349560: E.g.f. satisfies log(A(x)) = (exp(x*A(x)) - 1) * x.

The programs for A349560, there is no canonical definition to state claims against.
-/

/-! ## A349560.P10074318486195032653

`A165190(lcm(3, floor(Δ[e*n!])))`
-/

namespace A349560.P10074318486195032653
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (Int.lcm 3 ⌊f1 (n + 1) - f1 n⌋)

end

end A349560.P10074318486195032653

/-! ## A349560.P8028084357017596112

`A018484(A000032(n))-1`
-/

namespace A349560.P8028084357017596112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018484 (A000032 n).toNat - 1

end

end A349560.P8028084357017596112

/-!
# A349562: Number of labeled rooted forests with 2-colored leaves.

The programs for A349562, there is no canonical definition to state claims against.
-/

/-! ## A349562.P14095287310295266892

`2^n*A007889(n)`
-/

namespace A349562.P14095287310295266892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007889 n

end

end A349562.P14095287310295266892

/-! ## A349562.P6136595581136639127

`2*A201595(n)-A000007(n)`
-/

namespace A349562.P6136595581136639127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A201595 n - A000007 n

end

end A349562.P6136595581136639127

/-! ## A349562.P15079325111211934499

`A216857(n+1)/(n+1)`
-/

namespace A349562.P15079325111211934499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216857 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A349562.P15079325111211934499

/-! ## A349562.P5820991985688268000

`abs(A007889(n)*A120617(n))`
-/

namespace A349562.P5820991985688268000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007889 n * A120617 n|

end

end A349562.P5820991985688268000

/-! ## A349562.P5899769431426994266

`A007889(n)*A336996(n²)`
-/

namespace A349562.P5899769431426994266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007889 n * A336996 (n ^ 2)

end

end A349562.P5899769431426994266

/-! ## A349562.P4919627668474157292

`A007889(n)*A011782(n+1)`
-/

namespace A349562.P4919627668474157292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007889 n * A011782 (n + 1)

end

end A349562.P4919627668474157292

/-! ## A349562.P17448340701925705346

`A007889(n)*A016116(2*n)`
-/

namespace A349562.P17448340701925705346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007889 n * A016116 (2 * n)

end

end A349562.P17448340701925705346

/-! ## A349562.P17564762677206543580

`(A065475(n+1)-n)*A201595(n)`
-/

namespace A349562.P17564762677206543580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065475 (n + 1) - (n : ℤ)) * A201595 n

end

end A349562.P17564762677206543580

/-! ## A349562.P17064843078720422751

`A006530(A001316(n))*A201595(n)`
-/

namespace A349562.P17064843078720422751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001316 n).toNat * A201595 n

end

end A349562.P17064843078720422751

/-!
# A349563: Dirichlet convolution of right-shifted Catalan numbers with A349452 (Dirichlet inverse of A011782, 2^(n-1)).

The programs for A349563, there is no canonical definition to state claims against.
-/

/-! ## A349563.P6922134764398553916

`∑{d}[n+1, A000108(#-1)*A349452((n+1)/#)]`
-/

namespace A349563.P6922134764398553916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000108 (d - 1) * A349452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349563.P6922134764398553916

/-!
# A349564: Dirichlet convolution of A011782 [2^(n-1)] with A349450 [Dirichlet inverse of right-shifted Catalan numbers].

The programs for A349564, there is no canonical definition to state claims against.
-/

/-! ## A349564.P12377974052138291471

`∑{d}[n+1, A000079(#-1)*A349450((n+1)/#)]`
-/

namespace A349564.P12377974052138291471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A349450 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349564.P12377974052138291471

/-!
# A349566: Dirichlet convolution of A011782 (2^(n-1)) with A349451 (Dirichlet inverse of Fibonacci numbers).

The programs for A349566, there is no canonical definition to state claims against.
-/

/-! ## A349566.P3995596130883318688

`∑{d}[n+1, A000079(#-1)*A349451((n+1)/#)]`
-/

namespace A349566.P3995596130883318688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A349451 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349566.P3995596130883318688

/-!
# A349567: Dirichlet convolution of A133494 [3^(n-1)] with A349452 (Dirichlet inverse of A011782, 2^(n-1)).

The programs for A349567, there is no canonical definition to state claims against.
-/

/-! ## A349567.P10720501117520625253

`∑{d}[n+1, A000244(#-1)*A349452((n+1)/#)]`
-/

namespace A349567.P10720501117520625253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000244 (d - 1) * A349452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349567.P10720501117520625253

/-! ## A349567.P7809995171560701051

`A097538(A001997(n))`
-/

namespace A349567.P7809995171560701051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097538 (A001997 n).toNat

end

end A349567.P7809995171560701051

/-!
# A349568: Dirichlet convolution of A011782 [2^(n-1)] with A349453 (Dirichlet inverse of A133494, 3^(n-1)).

The programs for A349568, there is no canonical definition to state claims against.
-/

/-! ## A349568.P12854191201091693319

`∑{d}[n+1, A000079(#-1)*A349453((n+1)/#)]`
-/

namespace A349568.P12854191201091693319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A349453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349568.P12854191201091693319

/-! ## A349568.P2211014780210275160

`A028246(n+1)-A002375(A075870(n+1))`
-/

namespace A349568.P2211014780210275160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (n + 1) - A002375 (A075870 (n + 1)).toNat

end

end A349568.P2211014780210275160

/-!
# A349569: Dirichlet convolution of A000027 (identity function) with A349452 (Dirichlet inverse of A011782, 2^(n-1)).

The programs for A349569, there is no canonical definition to state claims against.
-/

/-! ## A349569.P2939231651949567178

`∑{d}[n+1, #*A349452((n+1)/#)]`
-/

namespace A349569.P2939231651949567178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349569.P2939231651949567178

/-! ## A349569.P6073384254847116641

`A239690(n!)-2^n`
-/

namespace A349569.P6073384254847116641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239690 (Nat.factorial n) - (2 ^ n : ℤ)

end

end A349569.P6073384254847116641

/-! ## A349569.P10270322602414481695

`A205000(A000984(n))-2^n`
-/

namespace A349569.P10270322602414481695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205000 (A000984 n).toNat - (2 ^ n : ℤ)

end

end A349569.P10270322602414481695

/-! ## A349569.P6441143736635553301

`A239690(A000142(n))-2^n`
-/

namespace A349569.P6441143736635553301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239690 (A000142 n).toNat - (2 ^ n : ℤ)

end

end A349569.P6441143736635553301

/-!
# A349570: Dirichlet convolution of A011782 [2^(n-1)] with A055615 (Dirichlet inverse of n).

The programs for A349570, the canonical program `A349570.P17612151739237528463` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349570 has offset 1).

The definition of A349570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349570.P4461676887774689348

`∑{d}[n+1, A000740(#)*A023900((n+1)/#)]`
-/

namespace A349570.P4461676887774689348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349570.P4461676887774689348

namespace A349570

/-- `∑{d}[n+1, A000740(#)*A023900((n+1)/#)]` -/
def P4461676887774689348.Spec : Prop :=
  ∀ n, P4461676887774689348.a n = A349570 (n + 1)

end A349570

/-! ## A349570.P14469410195888800280

`∑{d}[n+1, A034729(#)*A046692((n+1)/#)]`
-/

namespace A349570.P14469410195888800280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034729 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349570.P14469410195888800280

namespace A349570

/-- `∑{d}[n+1, A034729(#)*A046692((n+1)/#)]` -/
def P14469410195888800280.Spec : Prop :=
  ∀ n, P14469410195888800280.a n = A349570 (n + 1)

end A349570

/-! ## A349570.P17612151739237528463

`∑{d}[n+1, A034738(#)*A101035((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A349570

/-- `∑{d}[n+1, A034738(#)*A101035((n+1)/#)]` -/
def P17612151739237528463.Spec : Prop :=
  ∀ n, P17612151739237528463.a n = A349570 (n + 1)

theorem P17612151739237528463.correct : P17612151739237528463.Spec := by
  intro n
  simp only [A349570, Nat.add_sub_cancel]

end A349570

/-! ## A349570.P1293484049559258056

`∑{d}[n+1, A034737(#)*A327960((n+1)/#)]`
-/

namespace A349570.P1293484049559258056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034737 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349570.P1293484049559258056

namespace A349570

/-- `∑{d}[n+1, A034737(#)*A327960((n+1)/#)]` -/
def P1293484049559258056.Spec : Prop :=
  ∀ n, P1293484049559258056.a n = A349570 (n + 1)

end A349570

/-! ## A349570.P4762533777491723306

`∑{d}[n+1, A130054(#)*A296302((n+1)/#)]`
-/

namespace A349570.P4762533777491723306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349570.P4762533777491723306

namespace A349570

/-- `∑{d}[n+1, A130054(#)*A296302((n+1)/#)]` -/
def P4762533777491723306.Spec : Prop :=
  ∀ n, P4762533777491723306.a n = A349570 (n + 1)

end A349570

/-! ## A349570.P4454561139740614288

`∑{d}[n+1, A327278(#)*A373275((n+1)/#)]`
-/

namespace A349570.P4454561139740614288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327278 d * A373275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349570.P4454561139740614288

namespace A349570

/-- `∑{d}[n+1, A327278(#)*A373275((n+1)/#)]` -/
def P4454561139740614288.Spec : Prop :=
  ∀ n, P4454561139740614288.a n = A349570 (n + 1)

end A349570

/-! ## A349570.P9989464047549967617

`∑{d}[n+1, A000079(#-1)*A055615((n+1)/#)]`
-/

namespace A349570.P9989464047549967617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349570.P9989464047549967617

namespace A349570

/-- `∑{d}[n+1, A000079(#-1)*A055615((n+1)/#)]` -/
def P9989464047549967617.Spec : Prop :=
  ∀ n, P9989464047549967617.a n = A349570 (n + 1)

end A349570

/-! ## A349570.P8470211924890322336

`∑{d}[n+1, A127804(#-1)*A359484((n+1)/#)]`
-/

namespace A349570.P8470211924890322336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A127804 (d - 1) * A359484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349570.P8470211924890322336

namespace A349570

/-- `∑{d}[n+1, A127804(#-1)*A359484((n+1)/#)]` -/
def P8470211924890322336.Spec : Prop :=
  ∀ n, P8470211924890322336.a n = A349570 (n + 1)

end A349570

/-! ## A349570.P3313682242038092446

`∑{d}[n+1, A317100(#)*A378217((n+1)/#)]`
-/

namespace A349570.P3313682242038092446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317100 d * A378217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349570.P3313682242038092446

namespace A349570

/-- `∑{d}[n+1, A317100(#)*A378217((n+1)/#)]` -/
def P3313682242038092446.Spec : Prop :=
  ∀ n, P3313682242038092446.a n = A349570 (n + 1)

end A349570

/-!
# A349571: Dirichlet convolution of A048673 with A055615 (Dirichlet inverse of n).

The programs for A349571, the canonical program `A349571.P582764414335137096` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349571 has offset 1).

The definition of A349571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349571.P3616059720956607614

`(A349387(n+1)+A023900(n+1))/2`
-/

namespace A349571.P3616059720956607614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349387 (n + 1) + A023900 (n + 1) : ℚ) / 2

end

end A349571.P3616059720956607614

namespace A349571

/-- `(A349387(n+1)+A023900(n+1))/2` -/
def P3616059720956607614.Spec : Prop :=
  ∀ n, P3616059720956607614.a n = (A349571 (n + 1) : ℚ)

end A349571

/-! ## A349571.P8705326385791190235

`∑{d}[n+1, A048673(#)*A055615((n+1)/#)]`
-/

namespace A349571.P8705326385791190235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048673 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349571.P8705326385791190235

namespace A349571

/-- `∑{d}[n+1, A048673(#)*A055615((n+1)/#)]` -/
def P8705326385791190235.Spec : Prop :=
  ∀ n, P8705326385791190235.a n = A349571 (n + 1)

end A349571

/-! ## A349571.P11203133982206261194

`∑{d}[n+1, A046692(#)*A336840((n+1)/#)]`
-/

namespace A349571.P11203133982206261194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A336840 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349571.P11203133982206261194

namespace A349571

/-- `∑{d}[n+1, A046692(#)*A336840((n+1)/#)]` -/
def P11203133982206261194.Spec : Prop :=
  ∀ n, P11203133982206261194.a n = A349571 (n + 1)

end A349571

/-! ## A349571.P2548091419782844252

`∑{d}[n+1, A023900(#)*A378521((n+1)/#)]`
-/

namespace A349571.P2548091419782844252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A378521 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349571.P2548091419782844252

namespace A349571

/-- `∑{d}[n+1, A023900(#)*A378521((n+1)/#)]` -/
def P2548091419782844252.Spec : Prop :=
  ∀ n, P2548091419782844252.a n = A349571 (n + 1)

end A349571

/-! ## A349571.P582764414335137096

`∑{d}[n+1, A349385(#)*A349387((n+1)/#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A349571

/-- `∑{d}[n+1, A349385(#)*A349387((n+1)/#)]` -/
def P582764414335137096.Spec : Prop :=
  ∀ n, P582764414335137096.a n = A349571 (n + 1)

theorem P582764414335137096.correct : P582764414335137096.Spec := by
  intro n
  simp only [A349571, Nat.add_sub_cancel]

end A349571

/-!
# A349572: Dirichlet convolution of A000027 (identity function) with the Dirichlet inverse of A048673.

The programs for A349572, there is no canonical definition to state claims against.
-/

/-! ## A349572.P3895382316465739018

`∑{d}[n+1, #*A323893((n+1)/#)]`
-/

namespace A349572.P3895382316465739018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A323893 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349572.P3895382316465739018

/-! ## A349572.P4338546208754036482

`∑{d}[n+1, A000203(#)*A378520((n+1)/#)]`
-/

namespace A349572.P4338546208754036482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A378520 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349572.P4338546208754036482

/-! ## A349572.P46296207899353033

`∑{d}[n+1, A349384(#)*A349388((n+1)/#)]`
-/

namespace A349572.P46296207899353033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349384 d * A349388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349572.P46296207899353033

/-! ## A349572.P6991828970625444051

`A182423(A014580(n+1))-A349571(n+1)`
-/

namespace A349572.P6991828970625444051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182423 (A014580 (n + 1)).toNat - A349571 (n + 1)

end

end A349572.P6991828970625444051

/-! ## A349572.P14536694686332426546

`A349348(2^n)*A349571(n+1)`
-/

namespace A349572.P14536694686332426546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349348 (2 ^ n) * A349571 (n + 1)

end

end A349572.P14536694686332426546

/-!
# A349573: a(n) = A048673(n) - n, where A048673(n) = (A003961(n)+1) / 2, and A003961(n) shifts the prime factorization of n one step towards larger primes.

The programs for A349573, the canonical program `A349573.P7179832196050588632` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349573 has offset 1).

The definition of A349573 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349573.P7179832196050588632

`A048673(n+1)-(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A349573

/-- `A048673(n+1)-(n+1)` -/
def P7179832196050588632.Spec : Prop :=
  ∀ n, P7179832196050588632.a n = A349573 (n + 1)

theorem P7179832196050588632.correct : P7179832196050588632.Spec := by
  intro n
  simp only [A349573, Nat.add_sub_cancel]

end A349573

/-! ## A349573.P1421075255141818801

`A108228(n+1)-n`
-/

namespace A349573.P1421075255141818801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108228 (n + 1) - (n : ℤ)

end

end A349573.P1421075255141818801

namespace A349573

/-- `A108228(n+1)-n` -/
def P1421075255141818801.Spec : Prop :=
  ∀ n, P1421075255141818801.a n = A349573 (n + 1)

end A349573

/-! ## A349573.P11365765505732085819

`A253885(n)/2-n`
-/

namespace A349573.P11365765505732085819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 n : ℚ) / 2 - (n : ℚ)

end

end A349573.P11365765505732085819

namespace A349573

/-- `A253885(n)/2-n` -/
def P11365765505732085819.Spec : Prop :=
  ∀ n, P11365765505732085819.a n = (A349573 (n + 1) : ℚ)

end A349573

/-! ## A349573.P17317007829503480320

`ceil(A252748(n+1)/2)`
-/

namespace A349573.P17317007829503480320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A252748 (n + 1) : ℚ) / 2⌉

end

end A349573.P17317007829503480320

namespace A349573

/-- `ceil(A252748(n+1)/2)` -/
def P17317007829503480320.Spec : Prop :=
  ∀ n, P17317007829503480320.a n = A349573 (n + 1)

end A349573

/-! ## A349573.P16549980976999347859

`(Δ[A252749(n)]+1)/2`
-/

namespace A349573.P16549980976999347859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252749 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A349573.P16549980976999347859

namespace A349573

/-- `(Δ[A252749(n)]+1)/2` -/
def P16549980976999347859.Spec : Prop :=
  ∀ n, P16549980976999347859.a n = (A349573 (n + 1) : ℚ)

end A349573

/-! ## A349573.P17645393034664076985

`(A336853(n+1)-n)/2`
-/

namespace A349573.P17645393034664076985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336853 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A349573.P17645393034664076985

namespace A349573

/-- `(A336853(n+1)-n)/2` -/
def P17645393034664076985.Spec : Prop :=
  ∀ n, P17645393034664076985.a n = (A349573 (n + 1) : ℚ)

end A349573

/-! ## A349573.P17325776604305227238

`floor(A003961(n+1)/2-n)`
-/

namespace A349573.P17325776604305227238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003961 (n + 1) : ℚ) / 2 - (n : ℚ)⌋

end

end A349573.P17325776604305227238

namespace A349573

/-- `floor(A003961(n+1)/2-n)` -/
def P17325776604305227238.Spec : Prop :=
  ∀ n, P17325776604305227238.a n = A349573 (n + 1)

end A349573

/-! ## A349573.P14539298542432977920

`floor(sinh(log(A045965(n+1)))-n)`
-/

namespace A349573.P14539298542432977920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A045965 (n + 1) : ℝ)) - (n : ℝ)⌋

end

end A349573.P14539298542432977920

namespace A349573

/-- `floor(sinh(log(A045965(n+1)))-n)` -/
def P14539298542432977920.Spec : Prop :=
  ∀ n, P14539298542432977920.a n = A349573 (n + 1)

end A349573

/-! ## A349573.P14568954990928292553

`A243501(n+1)/2-(n+1)`
-/

namespace A349573.P14568954990928292553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243501 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A349573.P14568954990928292553

namespace A349573

/-- `A243501(n+1)/2-(n+1)` -/
def P14568954990928292553.Spec : Prop :=
  ∀ n, P14568954990928292553.a n = (A349573 (n + 1) : ℚ)

end A349573

/-! ## A349573.P4820588644703482986

`A001489(n)+A253885(n)/2`
-/

namespace A349573.P4820588644703482986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 n : ℚ) + (A253885 n : ℚ) / 2

end

end A349573.P4820588644703482986

namespace A349573

/-- `A001489(n)+A253885(n)/2` -/
def P4820588644703482986.Spec : Prop :=
  ∀ n, P4820588644703482986.a n = (A349573 (n + 1) : ℚ)

end A349573

/-! ## A349573.P10824953943849645364

`A378747(n+1)+A033880(n+1)`
-/

namespace A349573.P10824953943849645364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378747 (n + 1) + A033880 (n + 1)

end

end A349573.P10824953943849645364

namespace A349573

/-- `A378747(n+1)+A033880(n+1)` -/
def P10824953943849645364.Spec : Prop :=
  ∀ n, P10824953943849645364.a n = A349573 (n + 1)

end A349573

/-! ## A349573.P2332329872886246914

`A001065(n+1)-A378751(n+1)`
-/

namespace A349573.P2332329872886246914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A378751 (n + 1)

end

end A349573.P2332329872886246914

namespace A349573

/-- `A001065(n+1)-A378751(n+1)` -/
def P2332329872886246914.Spec : Prop :=
  ∀ n, P2332329872886246914.a n = A349573 (n + 1)

end A349573

/-! ## A349573.P14681466491185574316

`A280692(2*(n+1))/6`
-/

namespace A349573.P14681466491185574316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280692 (2 * (n + 1)) : ℚ) / 6

end

end A349573.P14681466491185574316

namespace A349573

/-- `A280692(2*(n+1))/6` -/
def P14681466491185574316.Spec : Prop :=
  ∀ n, P14681466491185574316.a n = (A349573 (n + 1) : ℚ)

end A349573

/-! ## A349573.P12595435910067632404

`A245447(A064216(n+1))-(n+1)`
-/

namespace A349573.P12595435910067632404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245447 (A064216 (n + 1)).toNat - (n + 1 : ℤ)

end

end A349573.P12595435910067632404

namespace A349573

/-- `A245447(A064216(n+1))-(n+1)` -/
def P12595435910067632404.Spec : Prop :=
  ∀ n, P12595435910067632404.a n = A349573 (n + 1)

end A349573

/-! ## A349573.P10942883629955007209

`A245447(A064989(2*n+1))-(n+1)`
-/

namespace A349573.P10942883629955007209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245447 (A064989 (2 * n + 1)).toNat - (n + 1 : ℤ)

end

end A349573.P10942883629955007209

namespace A349573

/-- `A245447(A064989(2*n+1))-(n+1)` -/
def P10942883629955007209.Spec : Prop :=
  ∀ n, P10942883629955007209.a n = A349573 (n + 1)

end A349573

/-! ## A349573.P12448351532878424290

`A014682(A003961(n+1)-1)-n`
-/

namespace A349573.P12448351532878424290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A003961 (n + 1) - 1).toNat - (n : ℤ)

end

end A349573.P12448351532878424290

namespace A349573

/-- `A014682(A003961(n+1)-1)-n` -/
def P12448351532878424290.Spec : Prop :=
  ∀ n, P12448351532878424290.a n = A349573 (n + 1)

end A349573

/-! ## A349573.P643958838490013932

`A249820(2*(n+1))`
-/

namespace A349573.P643958838490013932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249820 (2 * (n + 1))

end

end A349573.P643958838490013932

namespace A349573

/-- `A249820(2*(n+1))` -/
def P643958838490013932.Spec : Prop :=
  ∀ n, P643958838490013932.a n = A349573 (n + 1)

end A349573

/-! ## A349573.P15999641277843479935

`A249810(2*(n+1))-(n+1)`
-/

namespace A349573.P15999641277843479935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A349573.P15999641277843479935

namespace A349573

/-- `A249810(2*(n+1))-(n+1)` -/
def P15999641277843479935.Spec : Prop :=
  ∀ n, P15999641277843479935.a n = A349573 (n + 1)

end A349573

/-! ## A349573.P253420642337193015

`A283464(2*(n+1))-(n+1)`
-/

namespace A349573.P253420642337193015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283464 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A349573.P253420642337193015

namespace A349573

/-- `A283464(2*(n+1))-(n+1)` -/
def P253420642337193015.Spec : Prop :=
  ∀ n, P253420642337193015.a n = A349573 (n + 1)

end A349573

/-! ## A349573.P9672026057898869222

`A283464(A103517(n))-1-n`
-/

namespace A349573.P9672026057898869222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283464 (A103517 n).toNat - 1 - (n : ℤ)

end

end A349573.P9672026057898869222

namespace A349573

/-- `A283464(A103517(n))-1-n` -/
def P9672026057898869222.Spec : Prop :=
  ∀ n, P9672026057898869222.a n = A349573 (n + 1)

end A349573

/-!
# A349574: Lexicographically earliest infinite sequence such that a(i) = a(j) => A344696(i) = A344696(j) and A344697(i) = A344697(j), for all i, j >= 1.

The programs for A349574, the canonical program `A349574.P16826535088259942307` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349574 has offset 1).

The definition of A349574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349574.P8424939415492174071

`A348018(A003557(n+1))%A067701(n+2)`
-/

namespace A349574.P8424939415492174071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348018 (A003557 (n + 1)).toNat) (A067701 (n + 2))

end

end A349574.P8424939415492174071

namespace A349574

/-- `A348018(A003557(n+1))%A067701(n+2)` -/
def P8424939415492174071.Spec : Prop :=
  ∀ n, P8424939415492174071.a n = A349574 (n + 1)

end A349574

/-! ## A349574.P9347972906576869831

`A348018(A003557(n+1))%A116541(A167499(n))`
-/

namespace A349574.P9347972906576869831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348018 (A003557 (n + 1)).toNat) (A116541 (A167499 n).toNat)

end

end A349574.P9347972906576869831

namespace A349574

/-- `A348018(A003557(n+1))%A116541(A167499(n))` -/
def P9347972906576869831.Spec : Prop :=
  ∀ n, P9347972906576869831.a n = A349574 (n + 1)

end A349574

/-! ## A349574.P3504089064549667239

`A348018(A003557(n+1)%A224651(n+1))`
-/

namespace A349574.P3504089064549667239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 (Int.tmod (A003557 (n + 1)) (A224651 (n + 1))).toNat

end

end A349574.P3504089064549667239

namespace A349574

/-- `A348018(A003557(n+1)%A224651(n+1))` -/
def P3504089064549667239.Spec : Prop :=
  ∀ n, P3504089064549667239.a n = A349574 (n + 1)

end A349574

/-! ## A349574.P4931304271781275752

`A000034(A014486(n))*A348018(A003557(n+1))`
-/

namespace A349574.P4931304271781275752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A014486 n).toNat * A348018 (A003557 (n + 1)).toNat

end

end A349574.P4931304271781275752

namespace A349574

/-- `A000034(A014486(n))*A348018(A003557(n+1))` -/
def P4931304271781275752.Spec : Prop :=
  ∀ n, P4931304271781275752.a n = A349574 (n + 1)

end A349574

/-! ## A349574.P10757787395468844615

`A217038(A057521(n+1))+A056671(A001694(n+1))`
-/

namespace A349574.P10757787395468844615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A057521 (n + 1)).toNat + A056671 (A001694 (n + 1)).toNat

end

end A349574.P10757787395468844615

namespace A349574

/-- `A217038(A057521(n+1))+A056671(A001694(n+1))` -/
def P10757787395468844615.Spec : Prop :=
  ∀ n, P10757787395468844615.a n = A349574 (n + 1)

end A349574

/-! ## A349574.P16826535088259942307

`A001222(A078722(n))*A348018(A003557(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A349574

/-- `A001222(A078722(n))*A348018(A003557(n+1))` -/
def P16826535088259942307.Spec : Prop :=
  ∀ n, P16826535088259942307.a n = A349574 (n + 1)

theorem P16826535088259942307.correct : P16826535088259942307.Spec := by
  intro n
  simp only [A349574, Nat.add_sub_cancel]

end A349574

/-!
# A349575: Triangle read by rows: T(w,h) (for w >= h >= 1) is the number of distinct sets of rectangles with integer sides that tile the w X h rectangle.

The programs for A349575, there is no canonical definition to state claims against.
-/

/-! ## A349575.P9135717177526860216

`A360629(n+1)-A086967(A361523(n))`
-/

namespace A349575.P9135717177526860216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360629 (n + 1) - A086967 (A361523 n).toNat

end

end A349575.P9135717177526860216

/-! ## A349575.P9292088370334689987

`A360629(n+1)-A325406(A138464(n+1))`
-/

namespace A349575.P9292088370334689987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360629 (n + 1) - A325406 (A138464 (n + 1)).toNat

end

end A349575.P9292088370334689987

/-! ## A349575.P4838162899331890536

`A360629(n+1)-A086015(A320160(n+3))`
-/

namespace A349575.P4838162899331890536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360629 (n + 1) - A086015 (A320160 (n + 3)).toNat

end

end A349575.P4838162899331890536

/-! ## A349575.P9352469480493524194

`A360629(n+1)-A157687(A056729(3*(n+1)))`
-/

namespace A349575.P9352469480493524194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360629 (n + 1) - A157687 (A056729 (3 * (n + 1))).toNat

end

end A349575.P9352469480493524194

/-! ## A349575.P10233075769874693802

`A360629(n+1)-A086015(A000129(n))`
-/

namespace A349575.P10233075769874693802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360629 (n + 1) - A086015 (A000129 n).toNat

end

end A349575.P10233075769874693802

/-!
# A349576: Recurrence a(1) = 1, a(2) = 5; a(n) = (a(n-1) + a(n-2))/GCD(a(n-1),a(n-2)) + 1.

The programs for A349576, the canonical program `A349576.P6391117878582066928` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349576 has offset 1).

The definition of A349576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349576.P6391117878582066928

`(a(n-1)+a(n-2))/gcd(a(n-1), a(n-2))+1` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A349576

/-- `(a(n-1)+a(n-2))/gcd(a(n-1), a(n-2))+1` -/
def P6391117878582066928.Spec : Prop :=
  ∀ n, P6391117878582066928.a n = (A349576 (n + 1) : ℚ)

end A349576

/-!
# A349581: G.f. A(x) satisfies: A(x) = 1 / (1 - 2*x) + x * (1 - 2*x)^2 * A(x)^4.

The programs for A349581, there is no canonical definition to state claims against.
-/

/-! ## A349581.P2519179399816012239

`A285329(A263187(n+2))+A263187(n+1)`
-/

namespace A349581.P2519179399816012239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285329 (A263187 (n + 2)).toNat + A263187 (n + 1)

end

end A349581.P2519179399816012239

/-!
# A349582: G.f. A(x) satisfies: A(x) = 1 / (1 - 2*x) + x * (1 - 2*x)^3 * A(x)^5.

The programs for A349582, there is no canonical definition to state claims against.
-/

/-! ## A349582.P13528249310174918091

`A343292(∏[2*n+1])`
-/

namespace A349582.P13528249310174918091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343292 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A349582.P13528249310174918091

/-!
# A349584: G.f. A(x) satisfies: A(x) = 1 / (1 - 2*x) + x * (1 - 2*x)^4 * A(x)^6.

The programs for A349584, there is no canonical definition to state claims against.
-/

/-! ## A349584.P2242315869450938763

`A054077(ceil(10^n/9)+n)`
-/

namespace A349584.P2242315869450938763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054077 (⌈(10 ^ n : ℚ) / 9⌉ + (n : ℤ)).toNat

end

end A349584.P2242315869450938763

/-!
# A349588: E.g.f. satisfies: A(x) * log(A(x)) = exp(x*A(x)) - 1.

The programs for A349588, there is no canonical definition to state claims against.
-/

/-! ## A349588.P4121453495934938291

`A248607(n*a(n-1)+2)-n` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A349588.P4121453495934938291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A248607 ((n : ℤ) * a (n - 1) + 2).toNat - (n : ℤ)

end

end A349588.P4121453495934938291

/-! ## A349588.P9758177773314550541

`A318238(A147790(n+2))`
-/

namespace A349588.P9758177773314550541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318238 (A147790 (n + 2)).toNat

end

end A349588.P9758177773314550541

/-!
# A349590: G.f. A(x) satisfies: A(x) = 1 / (1 - 2*x) + x * (1 - 2*x)^5 * A(x)^7.

The programs for A349590, there is no canonical definition to state claims against.
-/

/-! ## A349590.P16253769714005139509

`∑[A255421(n!*C(2*n, n))]`
-/

namespace A349590.P16253769714005139509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255421 (Nat.factorial n * Nat.choose (2 * n) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349590.P16253769714005139509

/-!
# A349591: G.f. A(x) satisfies: A(x) = 1 / (1 - 2*x) + x * (1 - 2*x)^6 * A(x)^8.

The programs for A349591, there is no canonical definition to state claims against.
-/

/-! ## A349591.P9010032570542865118

`A297111(xor(2^floor(n/2), A002276(n)))`
-/

namespace A349591.P9010032570542865118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (A002276 n)).toNat

end

end A349591.P9010032570542865118

/-!
# A349593: Square array read by downward diagonals: for n >= 0, k >= 1, T(n,k) is the period of {binomial(N,n) mod k: N in Z}.

The programs for A349593, there is no canonical definition to state claims against.
-/

/-! ## A349593.P14867761866766404641

`A053166(A022998(A009999(n))²)`
-/

namespace A349593.P14867761866766404641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A022998 (A009999 n).toNat ^ 2).toNat

end

end A349593.P14867761866766404641

/-! ## A349593.P778791705591156869

`A038388(A023122(n+1)^A002262(n))`
-/

namespace A349593.P778791705591156869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (SequenceMachineLib.roundAway ((A023122 (n + 1) : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A349593.P778791705591156869

/-! ## A349593.P2357126329018933578

`A193592(n)*A359233(A156883(n))`
-/

namespace A349593.P2357126329018933578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n * A359233 (A156883 n).toNat

end

end A349593.P2357126329018933578

/-! ## A349593.P17407619854123883391

`A193592(n)*A305936(A240783(n+1))`
-/

namespace A349593.P17407619854123883391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n * A305936 (A240783 (n + 1)).toNat

end

end A349593.P17407619854123883391

/-! ## A349593.P770489057701508600

`A374741(A008277(n+1)+2)`
-/

namespace A349593.P770489057701508600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374741 (A008277 (n + 1) + 2).toNat

end

end A349593.P770489057701508600

/-!
# A349594: Number of 2 X n mazes that can be navigated from the top left corner to the bottom right corner.

The programs for A349594, the canonical program `A349594.P4257607475680426906` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349594 has offset 1).

The definition of A349594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349594.P17074636327180483914

`2^(n-1)*A035508(n+1)`
-/

namespace A349594.P17074636327180483914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A035508 (n + 1) : ℚ)

end

end A349594.P17074636327180483914

namespace A349594

/-- `2^(n-1)*A035508(n+1)` -/
def P17074636327180483914.Spec : Prop :=
  ∀ n, P17074636327180483914.a n = (A349594 (n + 1) : ℚ)

end A349594

/-! ## A349594.P6077700361627656501

`Δ[2^(n-1)*A000071(2*n+1)]`
-/

namespace A349594.P6077700361627656501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000071 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349594.P6077700361627656501

namespace A349594

/-- `Δ[2^(n-1)*A000071(2*n+1)]` -/
def P6077700361627656501.Spec : Prop :=
  ∀ n, P6077700361627656501.a n = (A349594 (n + 1) : ℚ)

end A349594

/-! ## A349594.P4257607475680426906

`a(n-1)+A018903(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A349594

/-- `a(n-1)+A018903(n)+a(n-1)` -/
def P4257607475680426906.Spec : Prop :=
  ∀ n, P4257607475680426906.a n = A349594 (n + 1)

theorem P4257607475680426906.correct : P4257607475680426906.Spec := by
  intro n
  simp only [A349594, Nat.add_sub_cancel]

end A349594

/-! ## A349594.P6063109592967536665

`Δ[∑[A000045(2*n)]*A011782(n)]`
-/

namespace A349594.P6063109592967536665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349594.P6063109592967536665

namespace A349594

/-- `Δ[∑[A000045(2*n)]*A011782(n)]` -/
def P6063109592967536665.Spec : Prop :=
  ∀ n, P6063109592967536665.a n = A349594 (n + 1)

end A349594

/-! ## A349594.P8394765530701557572

`Δ[(A000045(2*n+1)-1)*A011782(n)]`
-/

namespace A349594.P8394765530701557572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n + 1) - 1) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349594.P8394765530701557572

namespace A349594

/-- `Δ[(A000045(2*n+1)-1)*A011782(n)]` -/
def P8394765530701557572.Spec : Prop :=
  ∀ n, P8394765530701557572.a n = A349594 (n + 1)

end A349594

/-!
# A349595: Number of self-counting sequences of length n (sequences indexed from 0 to (n-1) where a(i) is the number of times i appears in the sequence).

The programs for A349595, the canonical program `A349595.P11307546779151521266` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349595 has offset 1).

The definition of A349595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349595.P11307546779151521266

`(6%(n+1))%5`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A349595

/-- `(6%(n+1))%5` -/
def P11307546779151521266.Spec : Prop :=
  ∀ n, (P11307546779151521266.a n : ℤ) = A349595 (n + 1)

theorem P11307546779151521266.correct : P11307546779151521266.Spec := by
  intro n
  simp only [A349595, Nat.add_sub_cancel]

end A349595

/-!
# A349597: a(n) is the sum of digits of a(n-1)! with a(1) = 3.

The programs for A349597, there is no canonical definition to state claims against.
-/

/-! ## A349597.P11529754029956095606

`A004152(a(n-1))` with `a(0)=3`
-/

namespace A349597.P11529754029956095606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A004152 (a (n - 1)).toNat

end

end A349597.P11529754029956095606

/-! ## A349597.P10627867410420819359

`record[A004152(a(A318921(n)))]` with `a(0)=3`
-/

namespace A349597.P10627867410420819359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A004152 (f1 (A318921 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349597.P10627867410420819359

/-!
# A349598: E.g.f. satisfies: log(A(x)) = exp(x*A(x)^2) - 1.

The programs for A349598, there is no canonical definition to state claims against.
-/

/-! ## A349598.P1036765296195592307

`A381388(n)+A074290(A381388(n))`
-/

namespace A349598.P1036765296195592307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381388 n + A074290 (A381388 n).toNat

end

end A349598.P1036765296195592307

/-!
# A349599: E.g.f. satisfies: log(A(x)) = 1 - exp(-x*A(x)^2).

The programs for A349599, there is no canonical definition to state claims against.
-/

/-! ## A349599.P1902811339174485084

`A028242(xor(A005804(n+1), A068011(n)))`
-/

namespace A349599.P1902811339174485084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor (A005804 (n + 1)) (A068011 n)).toNat

end

end A349599.P1902811339174485084

