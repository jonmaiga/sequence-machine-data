import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A319902: Unitary sociable numbers of order 4.

The programs for A319902, there is no canonical definition to state claims against.
-/

/-! ## A319902.P13015786109398208168

`A098188(∑[A082516(n+1)²])`
-/

namespace A319902.P13015786109398208168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082516 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098188 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319902.P13015786109398208168

/-! ## A319902.P953376902785417953

`A098188(A082516(n+1)²+n)`
-/

namespace A319902.P953376902785417953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098188 (A082516 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A319902.P953376902785417953

/-! ## A319902.P10516846789145034951

`record[A098188(n+1)/A082516(n+1)]`
-/

namespace A319902.P10516846789145034951
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098188 (n + 1) : ℚ) / (A082516 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319902.P10516846789145034951

/-! ## A319902.P16427077262460956262

`A098188(record[A318882(n+1)-2%(n+1)])`
-/

namespace A319902.P16427077262460956262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318882 (n + 1) - ((2 % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A319902.P16427077262460956262

/-! ## A319902.P16924124507496482584

`A098188(A032559(n+1)%A098194(n+1))`
-/

namespace A319902.P16924124507496482584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098188 (Int.tmod (A032559 (n + 1)) (A098194 (n + 1))).toNat

end

end A319902.P16924124507496482584

/-!
# A319903: Number of ordered pairs (i,j) with 0 < i < j < prime(n)/2 such that (i^8 mod prime(n)) > (j^8 mod prime(n)).

The programs for A319903, there is no canonical definition to state claims against.
-/

/-! ## A319903.P10174544255190828638

`A000217(A332275(n))%A331935(A073031(n))`
-/

namespace A319903.P10174544255190828638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A332275 n).toNat) (A331935 (A073031 n).toNat)

end

end A319903.P10174544255190828638

/-!
# A319906: Number of prime numbers of the form k^2 + k + 41 below 10^n.

The programs for A319906, there is no canonical definition to state claims against.
-/

/-! ## A319906.P2115138756000242648

`∑[A345916(A002940(n+1))-n]`
-/

namespace A319906.P2115138756000242648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345916 (A002940 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319906.P2115138756000242648

/-!
# A319907: Number of distinct integers that can be obtained by iteratively adding any two or multiplying any two non-1 parts of an integer partition until only one part remains, starting with the integer partition with Heinz number n.

The programs for A319907, there is no canonical definition to state claims against.
-/

/-! ## A319907.P16239497562384228152

`A371245(2*(n+1))!!!`
-/

namespace A319907.P16239497562384228152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (Nat.factorial (A371245 (2 * (n + 1))).toNat))

end

end A319907.P16239497562384228152

/-! ## A319907.P6211578368281837752

`A032556(A124794(n+1))`
-/

namespace A319907.P6211578368281837752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032556 (A124794 (n + 1)).toNat

end

end A319907.P6211578368281837752

/-! ## A319907.P5548578820424563740

`A036225(A349741(n+1))`
-/

namespace A319907.P5548578820424563740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 (A349741 (n + 1)).toNat

end

end A319907.P5548578820424563740

/-! ## A319907.P14954450578937318049

`A194673(A124794(n+1)+1)`
-/

namespace A319907.P14954450578937318049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194673 (A124794 (n + 1) + 1).toNat

end

end A319907.P14954450578937318049

/-!
# A319908: Lesser of twin primes pair p, such that the Mersenne numbers 2^p - 1 and 2^(p+2) - 1 have the same number of prime factors.

The programs for A319908, there is no canonical definition to state claims against.
-/

/-! ## A319908.P4533946943945574100

`A001359(∑[A054713(2*(n+2))^(A217599(2*(n+1))%2)])`
-/

namespace A319908.P4533946943945574100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054713 (2 * (n + 2)) : ℚ) ^ (Int.tmod (A217599 (2 * (n + 1))) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A319908.P4533946943945574100

/-! ## A319908.P14918530101578835592

`A038699(A380429(n+1))`
-/

namespace A319908.P14918530101578835592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038699 (A380429 (n + 1)).toNat

end

end A319908.P14918530101578835592

/-!
# A319909: Number of distinct positive integers that can be obtained by iteratively adding any two or multiplying any two non-1 parts of an integer partition until only one part remains, starting with 1^n.

The programs for A319909, there is no canonical definition to state claims against.
-/

/-! ## A319909.P5827437455164763333

`A048249(A028310(n))-abs(1-n)`
-/

namespace A319909.P5827437455164763333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048249 (A028310 n).toNat - |1 - (n : ℤ)|

end

end A319909.P5827437455164763333

/-! ## A319909.P16744887552842989498

`∑[A005421(A028310(n))]-A028310(n)`
-/

namespace A319909.P16744887552842989498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005421 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028310 n

end

end A319909.P16744887552842989498

/-! ## A319909.P3779283755632428336

`(A048249(A028310(n))-(n-1))%A266382(n)`
-/

namespace A319909.P3779283755632428336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048249 (A028310 n).toNat - ((n : ℤ) - 1)) (A266382 n)

end

end A319909.P3779283755632428336

/-! ## A319909.P5940047921439181967

`A048249(A028310(n))+A015488(A004016(n))-n`
-/

namespace A319909.P5940047921439181967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048249 (A028310 n).toNat + A015488 (A004016 n).toNat - (n : ℤ)

end

end A319909.P5940047921439181967

/-!
# A319911: Number of distinct pairs (m, y), where m >= 1 and y is an integer partition of n with no 1's, such that m can be obtained by iteratively adding or multiplying together parts of y until only one part (equal to m) remains.

The programs for A319911, there is no canonical definition to state claims against.
-/

/-! ## A319911.P13149845815000379454

`A318406(n)-A025442(A118067(n+1))`
-/

namespace A319911.P13149845815000379454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318406 n - A025442 (A118067 (n + 1)).toNat

end

end A319911.P13149845815000379454

/-! ## A319911.P13307456349997971701

`A029408(record[Δ[A222180(n)]])`
-/

namespace A319911.P13307456349997971701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222180 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029408 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A319911.P13307456349997971701

/-! ## A319911.P1890320258142430160

`A093321(A164090(n+3)+1)-1`
-/

namespace A319911.P1890320258142430160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093321 (A164090 (n + 3) + 1).toNat - 1

end

end A319911.P1890320258142430160

/-! ## A319911.P2650334149401949914

`A353024(round(sqrt(A143554(n)+n+1)))`
-/

namespace A319911.P2650334149401949914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353024 (SequenceMachineLib.roundAway (Real.sqrt (A143554 n + (n + 1 : ℤ) : ℝ))).toNat

end

end A319911.P2650334149401949914

/-! ## A319911.P8332458627118096063

`A242736(A391644(n+5)-A296612(n))`
-/

namespace A319911.P8332458627118096063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242736 (A391644 (n + 5) - A296612 n).toNat

end

end A319911.P8332458627118096063

/-!
# A319912: Number of distinct pairs (m, y), where m >= 1 and y is an integer partition of n, such that m can be obtained by iteratively adding any two or multiplying any two non-1 parts of y until only one part (equal to m) remains.

The programs for A319912, there is no canonical definition to state claims against.
-/

/-! ## A319912.P11640378111044494317

`A261104(A067646(n)*A317838(n+1))`
-/

namespace A319912.P11640378111044494317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A067646 n * A317838 (n + 1)).toNat

end

end A319912.P11640378111044494317

/-!
# A319913: Number of distinct integer partitions whose parts can be combined together using additions and multiplications to obtain n, with the exception that 1's can only be added and not multiplied with other parts.

The programs for A319913, there is no canonical definition to state claims against.
-/

/-! ## A319913.P818776352655263618

`A308627(or(A005728(n), A008578(n+1)))`
-/

namespace A319913.P818776352655263618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308627 (Int.lor (A005728 n) (A008578 (n + 1))).toNat

end

end A319913.P818776352655263618

/-! ## A319913.P13280158004439162298

`A048673(n+1)+A003002(A209399(n))`
-/

namespace A319913.P13280158004439162298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1) + A003002 (A209399 n).toNat

end

end A319913.P13280158004439162298

/-!
# A319918: Expansion of Product_{k>=1} 1/(1 - x^k)^(2^k-1).

The programs for A319918, there is no canonical definition to state claims against.
-/

/-! ## A319918.P14561283712336727210

`A350635(2*A253909(n))`
-/

namespace A319918.P14561283712336727210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350635 (2 * A253909 n).toNat

end

end A319918.P14561283712336727210

/-! ## A319918.P9467066480154479252

`A350635(A253909(n)+n²)`
-/

namespace A319918.P9467066480154479252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350635 (A253909 n + (n ^ 2 : ℤ)).toNat

end

end A319918.P9467066480154479252

/-! ## A319918.P13488699888657378532

`A350635((n+1)²+n²)`
-/

namespace A319918.P13488699888657378532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350635 ((n + 1) ^ 2 + n ^ 2)

end

end A319918.P13488699888657378532

/-! ## A319918.P6594405597232074893

`A350635(A001844(n))+A000007(n+1)`
-/

namespace A319918.P6594405597232074893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350635 (A001844 n).toNat + A000007 (n + 1)

end

end A319918.P6594405597232074893

/-! ## A319918.P1566044680817459095

`A328853(2^n)`
-/

namespace A319918.P1566044680817459095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328853 (2 ^ n)

end

end A319918.P1566044680817459095

/-!
# A319919: Expansion of Product_{k>=1} (1 + x^k)^(2^k-1).

The programs for A319919, there is no canonical definition to state claims against.
-/

/-! ## A319919.P17566125458370073908

`A328877(2^n)`
-/

namespace A319919.P17566125458370073908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328877 (2 ^ n)

end

end A319919.P17566125458370073908

/-! ## A319919.P911929067351491469

`A328877(A000079(n))*A333768(2*n+3)`
-/

namespace A319919.P911929067351491469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328877 (A000079 n).toNat * A333768 (2 * n + 3)

end

end A319919.P911929067351491469

/-! ## A319919.P2657099511310274138

`lcm(A009191(2*n+5), A328877(A000079(n)))`
-/

namespace A319919.P2657099511310274138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009191 (2 * n + 5)) (A328877 (A000079 n).toNat)

end

end A319919.P2657099511310274138

/-!
# A319920: Let f(1) = 1 + i (where i denotes the imaginary unit) and for n > 0, f(n+1) is the Gaussian prime in the first quadrant (with positive real part and nonnegative imaginary part) with least modulus that divides 1 + Product_{k=1..n} f(k) (in case of a tie minimize the imaginary part); a(n) is the square of the modulus of f(n).

The programs for A319920, there is no canonical definition to state claims against.
-/

/-! ## A319920.P10158111208748496252

`A320103(n+1)²+A320104(n+1)²`
-/

namespace A319920.P10158111208748496252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320103 (n + 1) ^ 2 + A320104 (n + 1) ^ 2

end

end A319920.P10158111208748496252

/-!
# A319923: Quasi-primes: composite numbers k such that the least prime factor is greater than k^(1/(log log k)^2).

The programs for A319923, there is no canonical definition to state claims against.
-/

/-! ## A319923.P8658132906765043785

`A038510(n+5)`
-/

namespace A319923.P8658132906765043785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 5)

end

end A319923.P8658132906765043785

/-! ## A319923.P13145921418891082433

`or(1, A038510(A020710(n)))`
-/

namespace A319923.P13145921418891082433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A038510 (A020710 n).toNat)

end

end A319923.P13145921418891082433

/-! ## A319923.P7403450556120999306

`record[A000265(A133635(n+12))]`
-/

namespace A319923.P7403450556120999306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A133635 (n + 12)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319923.P7403450556120999306

/-! ## A319923.P7289327356992831360

`or(1, A038510(5-A001489(n)))`
-/

namespace A319923.P7289327356992831360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A038510 (5 - A001489 n).toNat)

end

end A319923.P7289327356992831360

/-! ## A319923.P16738190499821896489

`∩[A038509(n+12), A070884(n)]`
-/

namespace A319923.P16738190499821896489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 12)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319923.P16738190499821896489

/-! ## A319923.P12768683637183127138

`A000265(A038510(5-A001489(n)))`
-/

namespace A319923.P12768683637183127138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A038510 (5 - A001489 n).toNat).toNat

end

end A319923.P12768683637183127138

/-! ## A319923.P10477329165089821765

`A007318(∑[n])*A038510(A020710(n))`
-/

namespace A319923.P10477329165089821765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A038510 (A020710 n).toNat

end

end A319923.P10477329165089821765

/-! ## A319923.P2953850871620834563

`A007318((n%2)^n)*A038510(5-A001489(n))`
-/

namespace A319923.P2953850871620834563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n % 2) ^ n) * A038510 (5 - A001489 n).toNat

end

end A319923.P2953850871620834563

/-!
# A319924: a(n) = A143565(2n,n) for n > 0, a(0) = 1.

The programs for A319924, the canonical program `A319924.P4321362157346301630` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319924 has offset 0).

The definition of A319924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319924.P18015334708907136411

`n*record[a(n-1)/(floor(n/2)/n-1)]+1` with `a(0)=1`
-/

namespace A319924.P18015334708907136411
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A319924.P18015334708907136411

namespace A319924

/-- `n*record[a(n-1)/(floor(n/2)/n-1)]+1` -/
def P18015334708907136411.Spec : Prop :=
  ∀ n, P18015334708907136411.a n = (A319924 n : ℚ)

end A319924

/-! ## A319924.P4321362157346301630

`A005430(n)+1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A319924

/-- `A005430(n)+1` -/
def P4321362157346301630.Spec : Prop :=
  ∀ n, P4321362157346301630.a n = A319924 n

theorem P4321362157346301630.correct : P4321362157346301630.Spec := by
  intro n
  simp only [A319924]

end A319924

/-! ## A319924.P4090300275646757385

`record[or(1, A212303(n))]`
-/

namespace A319924.P4090300275646757385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A212303 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319924.P4090300275646757385

namespace A319924

/-- `record[or(1, A212303(n))]` -/
def P4090300275646757385.Spec : Prop :=
  ∀ n, P4090300275646757385.a n = A319924 n

end A319924

/-! ## A319924.P8522122072468234545

`A100071(2*n)+1`
-/

namespace A319924.P8522122072468234545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (2 * n) + 1

end

end A319924.P8522122072468234545

namespace A319924

/-- `A100071(2*n)+1` -/
def P8522122072468234545.Spec : Prop :=
  ∀ n, P8522122072468234545.a n = A319924 n

end A319924

/-! ## A319924.P5034892962087659395

`A212303(2*n)+1`
-/

namespace A319924.P5034892962087659395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212303 (2 * n) + 1

end

end A319924.P5034892962087659395

namespace A319924

/-- `A212303(2*n)+1` -/
def P5034892962087659395.Spec : Prop :=
  ∀ n, P5034892962087659395.a n = A319924 n

end A319924

/-! ## A319924.P5328154113294857808

`A218073(2*n)+1`
-/

namespace A319924.P5328154113294857808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218073 (2 * n) + 1

end

end A319924.P5328154113294857808

namespace A319924

/-- `A218073(2*n)+1` -/
def P5328154113294857808.Spec : Prop :=
  ∀ n, P5328154113294857808.a n = A319924 n

end A319924

/-! ## A319924.P15732320493539645470

`2*A289719(n)-1`
-/

namespace A319924.P15732320493539645470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A289719 n - 1

end

end A319924.P15732320493539645470

namespace A319924

/-- `2*A289719(n)-1` -/
def P15732320493539645470.Spec : Prop :=
  ∀ n, P15732320493539645470.a n = A319924 n

end A319924

/-! ## A319924.P9019718310347995386

`n*A000984(n)+1`
-/

namespace A319924.P9019718310347995386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000984 n + 1

end

end A319924.P9019718310347995386

namespace A319924

/-- `n*A000984(n)+1` -/
def P9019718310347995386.Spec : Prop :=
  ∀ n, P9019718310347995386.a n = A319924 n

theorem P9019718310347995386.correct : P9019718310347995386.Spec := by
  intro n
  simp only [A319924, Nat.add_sub_cancel, A319924.P9019718310347995386.a, A319924.P4321362157346301630.a, A000984, A000984.P7946844122574426130.a, A005430, A005430.P3213108425417519818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319924

/-! ## A319924.P409625249494701645

`record[Δ[A275324(n)]+1]`
-/

namespace A319924.P409625249494701645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275324 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319924.P409625249494701645

namespace A319924

/-- `record[Δ[A275324(n)]+1]` -/
def P409625249494701645.Spec : Prop :=
  ∀ n, P409625249494701645.a n = A319924 n

end A319924

/-! ## A319924.P10864715844848843230

`∑[n]*A068875(n)+1`
-/

namespace A319924.P10864715844848843230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A068875 n + 1

end

end A319924.P10864715844848843230

namespace A319924

/-- `∑[n]*A068875(n)+1` -/
def P10864715844848843230.Spec : Prop :=
  ∀ n, P10864715844848843230.a n = A319924 n

end A319924

/-! ## A319924.P4301897920337487060

`n*record[A081668(n)]+1`
-/

namespace A319924.P4301897920337487060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A319924.P4301897920337487060

namespace A319924

/-- `n*record[A081668(n)]+1` -/
def P4301897920337487060.Spec : Prop :=
  ∀ n, P4301897920337487060.a n = A319924 n

end A319924

/-! ## A319924.P15095190655934395932

`n*record[A126869(n)]+1`
-/

namespace A319924.P15095190655934395932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A319924.P15095190655934395932

namespace A319924

/-- `n*record[A126869(n)]+1` -/
def P15095190655934395932.Spec : Prop :=
  ∀ n, P15095190655934395932.a n = A319924 n

end A319924

/-! ## A319924.P18079746906051262668

`n*record[A126930(n)]+1`
-/

namespace A319924.P18079746906051262668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A319924.P18079746906051262668

namespace A319924

/-- `n*record[A126930(n)]+1` -/
def P18079746906051262668.Spec : Prop :=
  ∀ n, P18079746906051262668.a n = A319924 n

end A319924

/-! ## A319924.P4098027784473989996

`(n+1)*A001791(n)+1`
-/

namespace A319924.P4098027784473989996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001791 n + 1

end

end A319924.P4098027784473989996

namespace A319924

/-- `(n+1)*A001791(n)+1` -/
def P4098027784473989996.Spec : Prop :=
  ∀ n, P4098027784473989996.a n = A319924 n

end A319924

/-! ## A319924.P13879590585361547985

`n*A001405(2*n)+1`
-/

namespace A319924.P13879590585361547985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001405 (2 * n) + 1

end

end A319924.P13879590585361547985

namespace A319924

/-- `n*A001405(2*n)+1` -/
def P13879590585361547985.Spec : Prop :=
  ∀ n, P13879590585361547985.a n = A319924 n

end A319924

/-! ## A319924.P9490896216557475477

`n*A056040(2*n)+1`
-/

namespace A319924.P9490896216557475477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056040 (2 * n) + 1

end

end A319924.P9490896216557475477

namespace A319924

/-- `n*A056040(2*n)+1` -/
def P9490896216557475477.Spec : Prop :=
  ∀ n, P9490896216557475477.a n = A319924 n

end A319924

/-! ## A319924.P421003163158742355

`n*A063886(2*n)+1`
-/

namespace A319924.P421003163158742355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063886 (2 * n) + 1

end

end A319924.P421003163158742355

namespace A319924

/-- `n*A063886(2*n)+1` -/
def P421003163158742355.Spec : Prop :=
  ∀ n, P421003163158742355.a n = A319924 n

end A319924

/-! ## A319924.P3686328979673313651

`n*A081668(2*n)+1`
-/

namespace A319924.P3686328979673313651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081668 (2 * n) + 1

end

end A319924.P3686328979673313651

namespace A319924

/-- `n*A081668(2*n)+1` -/
def P3686328979673313651.Spec : Prop :=
  ∀ n, P3686328979673313651.a n = A319924 n

end A319924

/-! ## A319924.P16416173510491291503

`n*A126869(2*n)+1`
-/

namespace A319924.P16416173510491291503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126869 (2 * n) + 1

end

end A319924.P16416173510491291503

namespace A319924

/-- `n*A126869(2*n)+1` -/
def P16416173510491291503.Spec : Prop :=
  ∀ n, P16416173510491291503.a n = A319924 n

end A319924

/-! ## A319924.P1110815468214054288

`n*A126930(2*n)+1`
-/

namespace A319924.P1110815468214054288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126930 (2 * n) + 1

end

end A319924.P1110815468214054288

namespace A319924

/-- `n*A126930(2*n)+1` -/
def P1110815468214054288.Spec : Prop :=
  ∀ n, P1110815468214054288.a n = A319924 n

end A319924

/-!
# A319927: Numbers k such that the sum of the squares of the odd non-unitary divisors of k divides the sum of the squares of the non-unitary divisors of k.

The programs for A319927, the canonical program `A319927.P17786843195982564548` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319927 has offset 1).

The definition of A319927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 708 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319927.P17786843195982564548

`eq[1, A189996(2*A105570(n))]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A319927

/-- `eq[1, A189996(2*A105570(n))]` -/
def P17786843195982564548.Spec : Prop :=
  ∀ n, (P17786843195982564548.a n : ℤ) = A319927 (n + 1)

theorem P17786843195982564548.correct : P17786843195982564548.Spec := by
  intro n
  simp only [A319927, Nat.add_sub_cancel]

end A319927

/-! ## A319927.P13344351744911870643

`eq[A249442(n), A257179(n*A249442(n))]`
-/

namespace A319927.P13344351744911870643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257179 ((n : ℤ) * A249442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319927.P13344351744911870643

namespace A319927

/-- `eq[A249442(n), A257179(n*A249442(n))]` -/
def P13344351744911870643.Spec : Prop :=
  ∀ n, (P13344351744911870643.a n : ℤ) = A319927 (n + 1)

end A319927

/-! ## A319927.P1403040145365329148

`eq[A225245(n), A264769(3*n)]`
-/

namespace A319927.P1403040145365329148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264769 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319927.P1403040145365329148

namespace A319927

/-- `eq[A225245(n), A264769(3*n)]` -/
def P1403040145365329148.Spec : Prop :=
  ∀ n, (P1403040145365329148.a n : ℤ) = A319927 (n + 1)

end A319927

/-! ## A319927.P14102871948369498188

`eq[1, A040204(A074206(n)+A040204(n))]`
-/

namespace A319927.P14102871948369498188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040204 (A074206 n + A040204 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319927.P14102871948369498188

namespace A319927

/-- `eq[1, A040204(A074206(n)+A040204(n))]` -/
def P14102871948369498188.Spec : Prop :=
  ∀ n, (P14102871948369498188.a n : ℤ) = A319927 (n + 1)

end A319927

/-! ## A319927.P12487919789886352444

`filter[A225353(n+1), A166486(#)]`
-/

namespace A319927.P12487919789886352444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A319927.P12487919789886352444

namespace A319927

/-- `filter[A225353(n+1), A166486(#)]` -/
def P12487919789886352444.Spec : Prop :=
  ∀ n, P12487919789886352444.a n = A319927 (n + 1)

end A319927

/-! ## A319927.P258629106537726107

`∩[A042968(n+1), A225353(n+1)]`
-/

namespace A319927.P258629106537726107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319927.P258629106537726107

namespace A319927

/-- `∩[A042968(n+1), A225353(n+1)]` -/
def P258629106537726107.Spec : Prop :=
  ∀ n, (P258629106537726107.a n : ℤ) = A319927 (n + 1)

end A319927

/-! ## A319927.P15175953341554539564

`eq[A010121(n), A249442(n*A010121(n))]`
-/

namespace A319927.P15175953341554539564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 ((n : ℤ) * A010121 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319927.P15175953341554539564

namespace A319927

/-- `eq[A010121(n), A249442(n*A010121(n))]` -/
def P15175953341554539564.Spec : Prop :=
  ∀ n, (P15175953341554539564.a n : ℤ) = A319927 (n + 1)

end A319927

/-! ## A319927.P3909002797551916252

`lt[1, A077896(A336551(n+1))]+1`
-/

namespace A319927.P3909002797551916252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (A336551 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A319927.P3909002797551916252

namespace A319927

/-- `lt[1, A077896(A336551(n+1))]+1` -/
def P3909002797551916252.Spec : Prop :=
  ∀ n, (P3909002797551916252.a n : ℤ) = A319927 (n + 1)

end A319927

/-! ## A319927.P2272102560623735348

`eq[A010130(n*A010130(n)), A249442(n)]`
-/

namespace A319927.P2272102560623735348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 ((n : ℤ) * A010130 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319927.P2272102560623735348

namespace A319927

/-- `eq[A010130(n*A010130(n)), A249442(n)]` -/
def P2272102560623735348.Spec : Prop :=
  ∀ n, (P2272102560623735348.a n : ℤ) = A319927 (n + 1)

end A319927

/-! ## A319927.P3342728293537059053

`lt[1, A001938(A292380(n+1))]+1`
-/

namespace A319927.P3342728293537059053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001938 (A292380 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A319927.P3342728293537059053

namespace A319927

/-- `lt[1, A001938(A292380(n+1))]+1` -/
def P3342728293537059053.Spec : Prop :=
  ∀ n, (P3342728293537059053.a n : ℤ) = A319927 (n + 1)

end A319927

/-! ## A319927.P2159099848716905504

`lt[A057979(A057979(n)), A309395(n+1)]+1`
-/

namespace A319927.P2159099848716905504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A057979 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A319927.P2159099848716905504

namespace A319927

/-- `lt[A057979(A057979(n)), A309395(n+1)]+1` -/
def P2159099848716905504.Spec : Prop :=
  ∀ n, (P2159099848716905504.a n : ℤ) = A319927 (n + 1)

end A319927

/-! ## A319927.P14071730494615676322

`eq[0, A260685(n+1)]+1`
-/

namespace A319927.P14071730494615676322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260685 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319927.P14071730494615676322

namespace A319927

/-- `eq[0, A260685(n+1)]+1` -/
def P14071730494615676322.Spec : Prop :=
  ∀ n, (P14071730494615676322.a n : ℤ) = A319927 (n + 1)

end A319927

/-!
# A319928: Numbers k such that there is no other m such that (Z/mZ)* is isomorphic to (Z/kZ)*, where (Z/kZ)* is the multiplicative group of integers modulo k.

The programs for A319928, there is no canonical definition to state claims against.
-/

/-! ## A319928.P14944573846271193849

`eq[1, A317993(n+1)]+1`
-/

namespace A319928.P14944573846271193849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319928.P14944573846271193849

/-! ## A319928.P16346669036360116452

`eq[1, A317993(A028310(n))]`
-/

namespace A319928.P16346669036360116452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317993 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319928.P16346669036360116452

/-! ## A319928.P15275408922840776999

`A065475(eq[1, A317993(n+1)])`
-/

namespace A319928.P15275408922840776999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319928.P15275408922840776999

/-! ## A319928.P8644282935776169586

`eq[A320045(n+1), A320046(n+1)]+1`
-/

namespace A319928.P8644282935776169586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320046 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319928.P8644282935776169586

/-! ## A319928.P9799308148904837180

`eq[1, A317993(A233583(n+1))]`
-/

namespace A319928.P9799308148904837180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317993 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319928.P9799308148904837180

/-!
# A319929: Minimal arithmetic table similar to multiplication with different rules for odd and even products, read by antidiagonals.

The programs for A319929, there is no canonical definition to state claims against.
-/

/-! ## A319929.P7824270649171960223

`2*A322630(n+1)-A003991(n+1)`
-/

namespace A319929.P7824270649171960223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322630 (n + 1) - A003991 (n + 1)

end

end A319929.P7824270649171960223

/-! ## A319929.P14807033855075752432

`A008486(A003991(n+1))-2*A322744(n+1)`
-/

namespace A319929.P14807033855075752432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A003991 (n + 1)).toNat - 2 * A322744 (n + 1)

end

end A319929.P14807033855075752432

/-! ## A319929.P550654533592111878

`A003991(n+1)+A322630(n+1)-A322744(n+1)`
-/

namespace A319929.P550654533592111878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A322630 (n + 1) - A322744 (n + 1))

end

end A319929.P550654533592111878

/-! ## A319929.P2280040937247105994

`A008486(A003991(n+1))-A005843(A322744(n+1))`
-/

namespace A319929.P2280040937247105994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A003991 (n + 1)).toNat - A005843 (A322744 (n + 1)).toNat

end

end A319929.P2280040937247105994

/-! ## A319929.P17493898031427622232

`A003991(n+1)-A005843(A322744(n+1)-A003991(n+1))`
-/

namespace A319929.P17493898031427622232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A005843 (A322744 (n + 1) - A003991 (n + 1)).toNat

end

end A319929.P17493898031427622232

/-! ## A319929.P1698494306648548770

`2*A003991(n+1)-A327259(n+1)`
-/

namespace A319929.P1698494306648548770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003991 (n + 1) - A327259 (n + 1)

end

end A319929.P1698494306648548770

/-! ## A319929.P17599401031901007134

`2*A334922(n+1)-A322744(n+1)`
-/

namespace A319929.P17599401031901007134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334922 (n + 1) - A322744 (n + 1)

end

end A319929.P17599401031901007134

/-! ## A319929.P10695041107959064084

`A098352(n+1)/2-A327259(n+1)`
-/

namespace A319929.P10695041107959064084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098352 (n + 1) : ℚ) / 2 - (A327259 (n + 1) : ℚ)

end

end A319929.P10695041107959064084

/-! ## A319929.P8412248371073693344

`A004277(A003991(n+1))-A327259(n+1)`
-/

namespace A319929.P8412248371073693344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A003991 (n + 1)).toNat - A327259 (n + 1)

end

end A319929.P8412248371073693344

/-! ## A319929.P12996289070504199400

`A001281(A098352(n+1))-A327259(n+1)`
-/

namespace A319929.P12996289070504199400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A098352 (n + 1)).toNat - A327259 (n + 1)

end

end A319929.P12996289070504199400

/-! ## A319929.P2243950604786136074

`A004277(A334922(n+1))-A322744(n+1)`
-/

namespace A319929.P2243950604786136074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A334922 (n + 1)).toNat - A322744 (n + 1)

end

end A319929.P2243950604786136074

/-! ## A319929.P4846939633336198126

`A322630(n+1)+A322744(n+1)-A327259(n+1)`
-/

namespace A319929.P4846939633336198126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322630 (n + 1) + (A322744 (n + 1) - A327259 (n + 1))

end

end A319929.P4846939633336198126

/-! ## A319929.P6528311309321471089

`A322630(n+1)+A334922(n+1)-A334923(n+1)`
-/

namespace A319929.P6528311309321471089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322630 (n + 1) + (A334922 (n + 1) - A334923 (n + 1))

end

end A319929.P6528311309321471089

/-! ## A319929.P15168420363594313948

`A334922(n+1)+A334923(n+1)-A327259(n+1)`
-/

namespace A319929.P15168420363594313948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334922 (n + 1) + (A334923 (n + 1) - A327259 (n + 1))

end

end A319929.P15168420363594313948

/-! ## A319929.P7140269110437001299

`A003991(n+1)+4*(A003991(n+1)-A334923(n+1))`
-/

namespace A319929.P7140269110437001299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + 4 * (A003991 (n + 1) - A334923 (n + 1))

end

end A319929.P7140269110437001299

/-! ## A319929.P1242376264260256078

`A008586(A334922(n+1))-A008486(A003991(n+1))`
-/

namespace A319929.P1242376264260256078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A334922 (n + 1)).toNat - A008486 (A003991 (n + 1)).toNat

end

end A319929.P1242376264260256078

/-! ## A319929.P3691499381798602831

`A004525(A098352(n+1))-A327259(A000027(n+1))`
-/

namespace A319929.P3691499381798602831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A098352 (n + 1)).toNat - A327259 (A000027 (n + 1)).toNat

end

end A319929.P3691499381798602831

/-! ## A319929.P12334544279208200956

`A003991(n+1)-A008586(A003991(n+1)-A334922(n+1))`
-/

namespace A319929.P12334544279208200956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A008586 (A003991 (n + 1) - A334922 (n + 1)).toNat

end

end A319929.P12334544279208200956

/-!
# A319930: a(n) = (1/24)*n*(n - 1)*(n - 3)*(n - 14).

The programs for A319930, the canonical program `A319930.P15752654091676764985` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319930 has offset 0).

The definition of A319930 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/24*n*(n-1)*(n-3)*(n-14)` (program `A319930.P1577308478842792782`, by `A319930.P1577308478842792782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A319930.P5461681617873556418

`n*(n-1)*(n-3)*(n-14)/24`
-/

namespace A319930.P5461681617873556418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 3) * ((n : ℤ) - 14) : ℚ) / 24

end

end A319930.P5461681617873556418

namespace A319930

/-- `n*(n-1)*(n-3)*(n-14)/24` -/
def P5461681617873556418.Spec : Prop :=
  ∀ n, P5461681617873556418.a n = (A319930 n : ℚ)

theorem P5461681617873556418.correct : P5461681617873556418.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A319930, Nat.add_sub_cancel, A319930.P5461681617873556418.a, A319930.P15752654091676764985.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A319930, Nat.add_sub_cancel, A319930.P5461681617873556418.a, A319930.P15752654091676764985.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A319930

/-! ## A319930.P1577308478842792782

`1/24*n*(n-1)*(n-3)*(n-14)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319930.P1577308478842792782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * (n : ℚ) * ((n : ℤ) - 1 : ℚ) * ((n : ℤ) - 3 : ℚ) * ((n : ℤ) - 14 : ℚ)

end

end A319930.P1577308478842792782

namespace A319930

/-- `1/24*n*(n-1)*(n-3)*(n-14)` -/
def P1577308478842792782.Spec : Prop :=
  ∀ n, P1577308478842792782.a n = (A319930 n : ℚ)

theorem P1577308478842792782.correct : P1577308478842792782.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A319930, Nat.add_sub_cancel, A319930.P1577308478842792782.a, A319930.P15752654091676764985.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A319930, Nat.add_sub_cancel, A319930.P1577308478842792782.a, A319930.P15752654091676764985.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A319930

/-! ## A319930.P15752654091676764985

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=-5`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319930

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P15752654091676764985.Spec : Prop :=
  ∀ n, P15752654091676764985.a n = A319930 n

theorem P15752654091676764985.correct : P15752654091676764985.Spec := by
  intro n
  simp only [A319930]

end A319930

/-! ## A319930.P16873847377226934650

`A014626(n)-A162607(n)`
-/

namespace A319930.P16873847377226934650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014626 n - A162607 n

end

end A319930.P16873847377226934650

namespace A319930

/-- `A014626(n)-A162607(n)` -/
def P16873847377226934650.Spec : Prop :=
  ∀ n, P16873847377226934650.a n = A319930 n

end A319930

/-! ## A319930.P2617242770244654993

`∑[A050407(n)]-A162607(n)`
-/

namespace A319930.P2617242770244654993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A162607 n

end

end A319930.P2617242770244654993

namespace A319930

/-- `∑[A050407(n)]-A162607(n)` -/
def P2617242770244654993.Spec : Prop :=
  ∀ n, P2617242770244654993.a n = A319930 n

end A319930

/-! ## A319930.P1818999578628949156

`A000332(n)-(n-3)*A161680(n)`
-/

namespace A319930.P1818999578628949156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n - ((n : ℤ) - 3) * A161680 n

end

end A319930.P1818999578628949156

namespace A319930

/-- `A000332(n)-(n-3)*A161680(n)` -/
def P1818999578628949156.Spec : Prop :=
  ∀ n, P1818999578628949156.a n = A319930 n

end A319930

/-! ## A319930.P10085799961600227030

`A000332(2*n)-A266395(n+2)`
-/

namespace A319930.P10085799961600227030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (2 * n) - A266395 (n + 2)

end

end A319930.P10085799961600227030

namespace A319930

/-- `A000332(2*n)-A266395(n+2)` -/
def P10085799961600227030.Spec : Prop :=
  ∀ n, P10085799961600227030.a n = A319930 n

end A319930

/-! ## A319930.P8370544960438105093

`gcd(A053526(2*n), A266395(2*n+1))-A266395(n+2)`
-/

namespace A319930.P8370544960438105093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A053526 (2 * n)) (A266395 (2 * n + 1)) : ℤ) - A266395 (n + 2)

end

end A319930.P8370544960438105093

namespace A319930

/-- `gcd(A053526(2*n), A266395(2*n+1))-A266395(n+2)` -/
def P8370544960438105093.Spec : Prop :=
  ∀ n, P8370544960438105093.a n = A319930 n

end A319930

/-! ## A319930.P2628183376888128540

`A286354(eq[4, A002262(n)])`
-/

namespace A319930.P2628183376888128540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319930.P2628183376888128540

namespace A319930

/-- `A286354(eq[4, A002262(n)])` -/
def P2628183376888128540.Spec : Prop :=
  ∀ n, P2628183376888128540.a n = A319930 n

end A319930

/-! ## A319930.P10287635667145732935

`A286354(A000124(n+4)+3)`
-/

namespace A319930.P10287635667145732935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A000124 (n + 4) + 3).toNat

end

end A319930.P10287635667145732935

namespace A319930

/-- `A286354(A000124(n+4)+3)` -/
def P10287635667145732935.Spec : Prop :=
  ∀ n, P10287635667145732935.a n = A319930 n

end A319930

/-! ## A319930.P10308341207662252703

`A286354(Δ[A023551(n+1)-n²])`
-/

namespace A319930.P10308341207662252703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (f1 (n + 1) - f1 n).toNat

end

end A319930.P10308341207662252703

namespace A319930

/-- `A286354(Δ[A023551(n+1)-n²])` -/
def P10308341207662252703.Spec : Prop :=
  ∀ n, P10308341207662252703.a n = A319930 n

end A319930

/-! ## A319930.P11781407170435829457

`A286354(Δ[A026054(n+3)-n²])`
-/

namespace A319930.P11781407170435829457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (f1 (n + 1) - f1 n).toNat

end

end A319930.P11781407170435829457

namespace A319930

/-- `A286354(Δ[A026054(n+3)-n²])` -/
def P11781407170435829457.Spec : Prop :=
  ∀ n, P11781407170435829457.a n = A319930 n

end A319930

/-!
# A319931: a(n) = -(1/120)*n*(n - 3)*(n - 6)*(n^2 - 21*n + 8).

The programs for A319931, the canonical program `A319931.P4359869937451958641` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319931 has offset 0).

The definition of A319931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319931.P4359869937451958641

`-(1/120)*n*(n-3)*(n-6)*(n²-21*n+8)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319931

/-- `-(1/120)*n*(n-3)*(n-6)*(n²-21*n+8)` -/
def P4359869937451958641.Spec : Prop :=
  ∀ n, P4359869937451958641.a n = (A319931 n : ℚ)

end A319931

/-! ## A319931.P2467002533589134874

`A286354(A167499(n+4))`
-/

namespace A319931.P2467002533589134874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A167499 (n + 4)).toNat

end

end A319931.P2467002533589134874

namespace A319931

/-- `A286354(A167499(n+4))` -/
def P2467002533589134874.Spec : Prop :=
  ∀ n, P2467002533589134874.a n = A319931 n

end A319931

/-! ## A319931.P12205128327143896876

`A286354(A056115(n)+20)`
-/

namespace A319931.P12205128327143896876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A056115 n + 20).toNat

end

end A319931.P12205128327143896876

namespace A319931

/-- `A286354(A056115(n)+20)` -/
def P12205128327143896876.Spec : Prop :=
  ∀ n, P12205128327143896876.a n = A319931 n

end A319931

/-! ## A319931.P5132069223873679753

`A286354(eq[5, A002262(n)])`
-/

namespace A319931.P5132069223873679753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319931.P5132069223873679753

namespace A319931

/-- `A286354(eq[5, A002262(n)])` -/
def P5132069223873679753.Spec : Prop :=
  ∀ n, P5132069223873679753.a n = A319931 n

end A319931

/-! ## A319931.P11223227322584415218

`A286354(A133263(n+5)+3)`
-/

namespace A319931.P11223227322584415218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A133263 (n + 5) + 3).toNat

end

end A319931.P11223227322584415218

namespace A319931

/-- `A286354(A133263(n+5)+3)` -/
def P11223227322584415218.Spec : Prop :=
  ∀ n, P11223227322584415218.a n = A319931 n

end A319931

/-! ## A319931.P10700682469359861814

`A286354(A000124(n+5)+4)`
-/

namespace A319931.P10700682469359861814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A000124 (n + 5) + 4).toNat

end

end A319931.P10700682469359861814

namespace A319931

/-- `A286354(A000124(n+5)+4)` -/
def P10700682469359861814.Spec : Prop :=
  ∀ n, P10700682469359861814.a n = A319931 n

end A319931

/-! ## A319931.P9819075923826037837

`A286354(Δ[A023545(n+1)]+9)`
-/

namespace A319931.P9819075923826037837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (f1 (n + 1) - f1 n + 9).toNat

end

end A319931.P9819075923826037837

namespace A319931

/-- `A286354(Δ[A023545(n+1)]+9)` -/
def P9819075923826037837.Spec : Prop :=
  ∀ n, P9819075923826037837.a n = A319931 n

end A319931

/-! ## A319931.P16139623890762209307

`A286354(Δ[A111396(n)]+9-A054977(n))`
-/

namespace A319931.P16139623890762209307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (f1 (n + 1) - f1 n + 9 - A054977 n).toNat

end

end A319931.P16139623890762209307

namespace A319931

/-- `A286354(Δ[A111396(n)]+9-A054977(n))` -/
def P16139623890762209307.Spec : Prop :=
  ∀ n, P16139623890762209307.a n = A319931 n

end A319931

/-! ## A319931.P12630714490413955065

`A286354(A167614(n+4)+3-A007318(∑[n]))`
-/

namespace A319931.P12630714490413955065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A167614 (n + 4) + 3 - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A319931.P12630714490413955065

namespace A319931

/-- `A286354(A167614(n+4)+3-A007318(∑[n]))` -/
def P12630714490413955065.Spec : Prop :=
  ∀ n, P12630714490413955065.a n = A319931 n

end A319931

/-!
# A319932: a(n) = (1/720)*n*(n - 10)*(n - 1)*(n^3 - 34*n^2 + 181*n - 144).

The programs for A319932, the canonical program `A319932.P5530558887183035172` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319932 has offset 0).

The definition of A319932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319932.P5530558887183035172

`n*(n-10)*(n-1)*(n^3-34*n²+181*n-144)/720`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319932

/-- `n*(n-10)*(n-1)*(n^3-34*n²+181*n-144)/720` -/
def P5530558887183035172.Spec : Prop :=
  ∀ n, P5530558887183035172.a n = (A319932 n : ℚ)

end A319932

/-! ## A319932.P2157365207391047712

`1/720*n*(n-10)*(n-1)*(n^3-34*n²+181*n-144)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319932.P2157365207391047712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 720 * (n : ℚ) * ((n : ℤ) - 10 : ℚ) * ((n : ℤ) - 1 : ℚ) * ((n ^ 3 : ℤ) - (34 * n ^ 2 : ℤ) + (181 * n : ℤ) - 144 : ℚ)

end

end A319932.P2157365207391047712

namespace A319932

/-- `1/720*n*(n-10)*(n-1)*(n^3-34*n²+181*n-144)` -/
def P2157365207391047712.Spec : Prop :=
  ∀ n, P2157365207391047712.a n = (A319932 n : ℚ)

end A319932

/-! ## A319932.P2402731961505558651

`A286354(A166136(n+5))`
-/

namespace A319932.P2402731961505558651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A166136 (n + 5)).toNat

end

end A319932.P2402731961505558651

namespace A319932

/-- `A286354(A166136(n+5))` -/
def P2402731961505558651.Spec : Prop :=
  ∀ n, P2402731961505558651.a n = A319932 n

end A319932

/-! ## A319932.P16387680466158305529

`A286354(A167499(n+5)+1)`
-/

namespace A319932.P16387680466158305529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A167499 (n + 5) + 1).toNat

end

end A319932.P16387680466158305529

namespace A319932

/-- `A286354(A167499(n+5)+1)` -/
def P16387680466158305529.Spec : Prop :=
  ∀ n, P16387680466158305529.a n = A319932 n

end A319932

/-! ## A319932.P12780781689837109315

`A286354(A000124(n+6)+5)`
-/

namespace A319932.P12780781689837109315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A000124 (n + 6) + 5).toNat

end

end A319932.P12780781689837109315

namespace A319932

/-- `A286354(A000124(n+6)+5)` -/
def P12780781689837109315.Spec : Prop :=
  ∀ n, P12780781689837109315.a n = A319932 n

end A319932

/-! ## A319932.P4588946688917625629

`A286354(A134869(n+6)+5)`
-/

namespace A319932.P4588946688917625629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A134869 (n + 6) + 5).toNat

end

end A319932.P4588946688917625629

namespace A319932

/-- `A286354(A134869(n+6)+5)` -/
def P4588946688917625629.Spec : Prop :=
  ∀ n, P4588946688917625629.a n = A319932 n

end A319932

/-! ## A319932.P15401263278289667152

`A286354(A000096(n+5)+7)`
-/

namespace A319932.P15401263278289667152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A000096 (n + 5) + 7).toNat

end

end A319932.P15401263278289667152

namespace A319932

/-- `A286354(A000096(n+5)+7)` -/
def P15401263278289667152.Spec : Prop :=
  ∀ n, P15401263278289667152.a n = A319932 n

end A319932

/-! ## A319932.P8435226893292117722

`A286354(A000217(n+6)+6)`
-/

namespace A319932.P8435226893292117722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A000217 (n + 6) + 6).toNat

end

end A319932.P8435226893292117722

namespace A319932

/-- `A286354(A000217(n+6)+6)` -/
def P8435226893292117722.Spec : Prop :=
  ∀ n, P8435226893292117722.a n = A319932 n

end A319932

/-! ## A319932.P2042348113803732207

`A286354(A055998(n+4)+9)`
-/

namespace A319932.P2042348113803732207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A055998 (n + 4) + 9).toNat

end

end A319932.P2042348113803732207

namespace A319932

/-- `A286354(A055998(n+4)+9)` -/
def P2042348113803732207.Spec : Prop :=
  ∀ n, P2042348113803732207.a n = A319932 n

end A319932

/-! ## A319932.P4992008456136625140

`A286354(A046691(n+4)+10)`
-/

namespace A319932.P4992008456136625140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A046691 (n + 4) + 10).toNat

end

end A319932.P4992008456136625140

namespace A319932

/-- `A286354(A046691(n+4)+10)` -/
def P4992008456136625140.Spec : Prop :=
  ∀ n, P4992008456136625140.a n = A319932 n

end A319932

/-! ## A319932.P12401210856251493116

`A286354(A038722(A052905(n+4)))`
-/

namespace A319932.P12401210856251493116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A038722 (A052905 (n + 4)).toNat).toNat

end

end A319932.P12401210856251493116

namespace A319932

/-- `A286354(A038722(A052905(n+4)))` -/
def P12401210856251493116.Spec : Prop :=
  ∀ n, P12401210856251493116.a n = A319932 n

end A319932

/-!
# A319933: A(n, k) = [x^k] DedekindEta(x)^n, square array read by descending antidiagonals, A(n, k) for n >= 0 and k >= 0.

The programs for A319933, there is no canonical definition to state claims against.
-/

/-! ## A319933.P4534898775764968775

`A286354(∑[2*n]%comp[∑[n]])`
-/

namespace A319933.P4534898775764968775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A319933.P4534898775764968775

/-! ## A319933.P6388107620652817296

`A286354(∑[char[∑[n]]]²-(n+1))`
-/

namespace A319933.P6388107620652817296
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A319933.P6388107620652817296

/-! ## A319933.P15126833111092598590

`A286354(A061579(n))%50`
-/

namespace A319933.P15126833111092598590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286354 (A061579 n).toNat) 50

end

end A319933.P15126833111092598590

/-! ## A319933.P10527005870151271127

`A286354(A038722(n+2))+(3*n)%3`
-/

namespace A319933.P10527005870151271127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A038722 (n + 2)).toNat + ((3 * n % 3 : ℕ) : ℤ)

end

end A319933.P10527005870151271127

/-! ## A319933.P17235206603445428412

`A286354(A038722(n+2)-char[1])-char[1]`
-/

namespace A319933.P17235206603445428412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A038722 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A319933.P17235206603445428412

/-! ## A319933.P12283144808527707965

`A286354(A061579(n))^A178334(n)`
-/

namespace A319933.P12283144808527707965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286354 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A319933.P12283144808527707965

/-! ## A319933.P16133162799858437180

`and(A260196(n), A286354(A061579(n)))`
-/

namespace A319933.P16133162799858437180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A286354 (A061579 n).toNat)

end

end A319933.P16133162799858437180

/-! ## A319933.P5455465435853295343

`or(A000007(n), A286354(A061579(n)))`
-/

namespace A319933.P5455465435853295343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A286354 (A061579 n).toNat)

end

end A319933.P5455465435853295343

/-! ## A319933.P9334777605709331672

`A007318(∑[n])*A286354(A061579(n))`
-/

namespace A319933.P9334777605709331672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A286354 (A061579 n).toNat

end

end A319933.P9334777605709331672

/-!
# A319934: Coefficients of the columns generating polynomials of the JacobiTheta3 array A319574 multiplied by n!, triangle read by rows, T(n,k) for 0 <= k <= n.

The programs for A319934, there is no canonical definition to state claims against.
-/

/-! ## A319934.P8152337744711092016

`A137312(n)*A167439(A171651(n))`
-/

namespace A319934.P8152337744711092016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137312 n * A167439 (A171651 n).toNat

end

end A319934.P8152337744711092016

/-! ## A319934.P12208806993134134468

`A048994(n)*A138224(2^n)`
-/

namespace A319934.P12208806993134134468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n * A138224 (2 ^ n)

end

end A319934.P12208806993134134468

/-! ## A319934.P6640625727591975532

`A000120(A058215(n))*A048994(n)`
-/

namespace A319934.P6640625727591975532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A058215 n).toNat * A048994 n

end

end A319934.P6640625727591975532

/-! ## A319934.P4335687887093900418

`A048994(n)*A068068(A051877(n)-A174002(n))`
-/

namespace A319934.P4335687887093900418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n * A068068 (A051877 n - A174002 n).toNat

end

end A319934.P4335687887093900418

/-! ## A319934.P16494268951058761258

`A048994(n)*A068068(A271567(n)-A266732(n))`
-/

namespace A319934.P16494268951058761258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n * A068068 (A271567 n - A266732 n).toNat

end

end A319934.P16494268951058761258

/-!
# A319935: T(n,k) = [x^n] JacobiTheta3(0,x)^k, for 0 <= k <= n, triangle read by rows.

The programs for A319935, there is no canonical definition to state claims against.
-/

/-! ## A319935.P8044311287655539781

`A319574(A245300(n))%p?[A010001(n)]`
-/

namespace A319935.P8044311287655539781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319574 (A245300 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A319935.P8044311287655539781

/-! ## A319935.P3230030478150446633

`A319574(A245300(n))+A008683(A344702(n+1))`
-/

namespace A319935.P3230030478150446633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A245300 n).toNat + A008683 (A344702 (n + 1)).toNat

end

end A319935.P3230030478150446633

/-! ## A319935.P14465757448565342221

`A056926(A108383(n+1))*A319574(A245300(n))`
-/

namespace A319935.P14465757448565342221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A108383 (n + 1)).toNat * A319574 (A245300 n).toNat

end

end A319935.P14465757448565342221

/-! ## A319935.P1120359082558498847

`A319574(A245300(n))+A000038(A247936(n))`
-/

namespace A319935.P1120359082558498847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A245300 n).toNat + A000038 (A247936 n).toNat

end

end A319935.P1120359082558498847

/-! ## A319935.P1190348325175151398

`A056926(A140998(n+2)²+1)*A319574(A245300(n))`
-/

namespace A319935.P1190348325175151398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A140998 (n + 2) ^ 2 + 1).toNat * A319574 (A245300 n).toNat

end

end A319935.P1190348325175151398

/-! ## A319935.P4246468047453263937

`A062157(A196353(n+1))*A319574(A245300(n))`
-/

namespace A319935.P4246468047453263937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A196353 (n + 1)).toNat * A319574 (A245300 n).toNat

end

end A319935.P4246468047453263937

/-! ## A319935.P17837324588972127086

`A319574(A245300(n))-A322581(A299929(n+1))`
-/

namespace A319935.P17837324588972127086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A245300 n).toNat - A322581 (A299929 (n + 1)).toNat

end

end A319935.P17837324588972127086

/-!
# A319938: O.g.f. A(x) satisfies [x^n] exp(-n*A(x)) / (1 - n*x) = 0, for n > 0.

The programs for A319938, there is no canonical definition to state claims against.
-/

/-! ## A319938.P3283795040438408935

`A020661(A220352(n)+1)`
-/

namespace A319938.P3283795040438408935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020661 (A220352 n + 1).toNat

end

end A319938.P3283795040438408935

/-!
# A319939: O.g.f. A(x) satisfies: [x^n] exp(-n^2*A(x)) / (1 - n*x)^n = 0, for n > 0.

The programs for A319939, there is no canonical definition to state claims against.
-/

/-! ## A319939.P17781370187649584112

`A098832(∏[n!])`
-/

namespace A319939.P17781370187649584112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098832 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A319939.P17781370187649584112

/-!
# A319945: G.f. A(x) satisfies: [x^n] 1/(1 - (n+1)*x) / A(x) = 0 for n >= 1.

The programs for A319945, there is no canonical definition to state claims against.
-/

/-! ## A319945.P2256853324377656384

`∑[(n-1)*A097992(18*a(n-1))+1]` with `a(0)=1`
-/

namespace A319945.P2256853324377656384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1) * A097992 (18 * f1 (n - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319945.P2256853324377656384

/-! ## A319945.P14472305047388839795

`∑[A141310((n-1)*A097992(18*a(n-1)))]` with `a(0)=1`
-/

namespace A319945.P14472305047388839795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A141310 (((n : ℤ) - 1) * A097992 (18 * f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319945.P14472305047388839795

/-!
# A319946: G.f. A(x) satisfies: [x^n] 1/(1 - (n+1)*x) / A(x)^2 = 0 for n >= 1.

The programs for A319946, there is no canonical definition to state claims against.
-/

/-! ## A319946.P759545237865370197

`A084242(record[(3/n-1)*4*a(n-2)])` with `a(0)=1, a(1)=0`
-/

namespace A319946.P759545237865370197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (3 / (n : ℚ) - 1) * (4 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084242 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A319946.P759545237865370197

/-! ## A319946.P3598330728104615961

`A023837(A262736(n²))`
-/

namespace A319946.P3598330728104615961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023837 (A262736 (n ^ 2)).toNat

end

end A319946.P3598330728104615961

/-!
# A319947: G.f.: Sum_{n>=0} ( 1/(1-x)^n - (1-x)^n )^n.

The programs for A319947, there is no canonical definition to state claims against.
-/

/-! ## A319947.P4326832938684701113

`∑[A062402(A110143(n)²)]`
-/

namespace A319947.P4326832938684701113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (A110143 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319947.P4326832938684701113

/-!
# A319948: a(n) = Product_{i=1..n} floor(3*i/2).

The programs for A319948, there is no canonical definition to state claims against.
-/

/-! ## A319948.P14952492023222672382

`∏[∑[n%2+1]]`
-/

namespace A319948.P14952492023222672382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319948.P14952492023222672382

/-! ## A319948.P2316021552054846089

`∏[∑[gcd(2, n+1)]]`
-/

namespace A319948.P2316021552054846089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319948.P2316021552054846089

/-! ## A319948.P8125137812915354511

`∏[∑[and(1, n)+1]]`
-/

namespace A319948.P8125137812915354511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319948.P8125137812915354511

/-! ## A319948.P6794172537592778397

`∏[∑[(2^n)%3]]`
-/

namespace A319948.P6794172537592778397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319948.P6794172537592778397

/-! ## A319948.P15103024105413885454

`∏[∑[2^and(1, n)]]`
-/

namespace A319948.P15103024105413885454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319948.P15103024105413885454

/-! ## A319948.P2117923100874660495

`∏[∑[Δ[or(1, n)]!]]`
-/

namespace A319948.P2117923100874660495
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319948.P2117923100874660495

/-! ## A319948.P11344482997886446882

`∏[val(8^(n+1), 4)]`
-/

namespace A319948.P11344482997886446882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (8 ^ (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319948.P11344482997886446882

/-! ## A319948.P553705557737701280

`∏[∑[and(3, n²-3)]]`
-/

namespace A319948.P553705557737701280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((n ^ 2 : ℤ) - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319948.P553705557737701280

/-! ## A319948.P5478872379721949976

`∏[∑[((2*n)%4)!]]`
-/

namespace A319948.P5478872379721949976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n % 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319948.P5478872379721949976

/-! ## A319948.P2139346818298800502

`∏[∑[(2*and(1, n))!]]`
-/

namespace A319948.P2139346818298800502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * Nat.land 1 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319948.P2139346818298800502

/-!
# A319949: a(n) = Product_{i=1..n} floor(4*i/3).

The programs for A319949, there is no canonical definition to state claims against.
-/

/-! ## A319949.P8711759612515042691

`∏[∑[(n%3)!]]`
-/

namespace A319949.P8711759612515042691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319949.P8711759612515042691

/-! ## A319949.P17657107405712342440

`∏[floor(4*(n+1)/3)]`
-/

namespace A319949.P17657107405712342440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((n + 1 : ℚ) / 3)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319949.P17657107405712342440

/-! ## A319949.P17156098990663099097

`floor(4*(n+1)/3)*a(n-1)` with `a(0)=1`
-/

namespace A319949.P17156098990663099097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊4 * ((n + 1 : ℚ) / 3)⌋ * a (n - 1)

end

end A319949.P17156098990663099097

/-! ## A319949.P16646515575877554616

`∏[sqrt(A322042(2*(n+1)))]²`
-/

namespace A319949.P16646515575877554616
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A322042 (2 * (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A319949.P16646515575877554616

/-! ## A319949.P12509705177465126137

`a(n-1)*∑[A177702(n)]` with `a(0)=1`
-/

namespace A319949.P12509705177465126137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319949.P12509705177465126137

/-! ## A319949.P6620914877870252806

`a(n-1)*A004773(n+1)` with `a(0)=1`
-/

namespace A319949.P6620914877870252806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A004773 (n + 1)

end

end A319949.P6620914877870252806

/-! ## A319949.P11363707681405653256

`a(n-1)*A318500(2*n)` with `a(0)=1`
-/

namespace A319949.P11363707681405653256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A318500 (2 * n)

end

end A319949.P11363707681405653256

/-! ## A319949.P10391749129428492991

`∏[A318500(2*(n+1))]/A318500(2*(n+1))`
-/

namespace A319949.P10391749129428492991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A318500 (2 * (n + 1)) : ℚ)

end

end A319949.P10391749129428492991

/-!
# A319950: a(n) = Product_{i=1..n} floor(5*i/3).

The programs for A319950, there is no canonical definition to state claims against.
-/

/-! ## A319950.P13572015382660221392

`∏[∑[(n²+1)%3]]`
-/

namespace A319950.P13572015382660221392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319950.P13572015382660221392

/-! ## A319950.P11375060733793167713

`∏[∑[2^(n²%3)]]`
-/

namespace A319950.P11375060733793167713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n ^ 2 % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319950.P11375060733793167713

/-! ## A319950.P12844166906375263134

`∏[∑[2-char[3*n]]]`
-/

namespace A319950.P12844166906375263134
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319950.P12844166906375263134

/-! ## A319950.P14462630379013618342

`a(n-1)*∑[(3-gcd(3, n))!]` with `a(0)=1`
-/

namespace A319950.P14462630379013618342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (3 - (Nat.gcd 3 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319950.P14462630379013618342

/-! ## A319950.P17116429757967609982

`floor(5*(n+1)/3)*a(n-1)` with `a(0)=1`
-/

namespace A319950.P17116429757967609982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊5 * ((n + 1 : ℚ) / 3)⌋ * a (n - 1)

end

end A319950.P17116429757967609982

/-! ## A319950.P5498079679978289782

`a(n-1)*∑[3-a(n-a(n-1))]` with `a(0)=1`
-/

namespace A319950.P5498079679978289782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 - f1 ((n : ℤ) - f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319950.P5498079679978289782

/-! ## A319950.P1730799211286352486

`abs(∏[∑[A131017(2*n)]])`
-/

namespace A319950.P1730799211286352486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131017 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A319950.P1730799211286352486

/-! ## A319950.P6559690089452874288

`a(n-1)*record[A065186(n+1)]` with `a(0)=1`
-/

namespace A319950.P6559690089452874288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319950.P6559690089452874288

/-! ## A319950.P15827842242426185276

`a(n-1)*A010761(2*(n+1))` with `a(0)=1`
-/

namespace A319950.P15827842242426185276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A010761 (2 * (n + 1))

end

end A319950.P15827842242426185276

/-! ## A319950.P3497507018230236877

`a(n-1)*A002264(5*(n+1))` with `a(0)=1`
-/

namespace A319950.P3497507018230236877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A002264 (5 * (n + 1))

end

end A319950.P3497507018230236877

/-!
# A319951: Take Golomb's sequence A001462 and extend all the runs by 1; prepend an initial 0.

The programs for A319951, the canonical program `A319951.P1222084147885741169` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319951 has offset 0).

The definition of A319951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319951.P1222084147885741169

`floor(n^sin(59))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319951

/-- `floor(n^sin(59))` -/
def P1222084147885741169.Spec : Prop :=
  ∀ n, P1222084147885741169.a n = A319951 n

theorem P1222084147885741169.correct : P1222084147885741169.Spec := by
  intro n
  simp only [A319951]

end A319951

/-! ## A319951.P14800815393797890241

`floor(n^(1/root(15, 6)))`
-/

namespace A319951.P14800815393797890241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ (1 / (15 : ℝ) ^ (1 / (6 : ℝ)))⌋

end

end A319951.P14800815393797890241

namespace A319951

/-- `floor(n^(1/root(15, 6)))` -/
def P14800815393797890241.Spec : Prop :=
  ∀ n, P14800815393797890241.a n = A319951 n

end A319951

/-! ## A319951.P9804809073614320915

`round((n*atan(1))^(2/3))`
-/

namespace A319951.P9804809073614320915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) * Real.arctan (1 : ℝ)) ^ ((2 : ℚ) / 3 : ℝ))

end

end A319951.P9804809073614320915

namespace A319951

/-- `round((n*atan(1))^(2/3))` -/
def P9804809073614320915.Spec : Prop :=
  ∀ n, P9804809073614320915.a n = A319951 n

end A319951

/-! ## A319951.P10790307714753392226

`ceil((n+2)^cot(1)-ϕ)`
-/

namespace A319951.P10790307714753392226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) ^ (Real.cot (1 : ℝ)) - Real.goldenRatio⌉

end

end A319951.P10790307714753392226

namespace A319951

/-- `ceil((n+2)^cot(1)-ϕ)` -/
def P10790307714753392226.Spec : Prop :=
  ∀ n, P10790307714753392226.a n = A319951 n

end A319951

/-! ## A319951.P10752910222066705415

`round((n²/ϕ)^cot(atan(3)))`
-/

namespace A319951.P10752910222066705415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 : ℝ) / Real.goldenRatio) ^ (Real.cot (Real.arctan (3 : ℝ))))

end

end A319951.P10752910222066705415

namespace A319951

/-- `round((n²/ϕ)^cot(atan(3)))` -/
def P10752910222066705415.Spec : Prop :=
  ∀ n, P10752910222066705415.a n = A319951 n

end A319951

/-! ## A319951.P13332480301623472939

`comp[∑[ceil(2*sqrt(n))]]%(n+1)`
-/

namespace A319951.P13332480301623472939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % (n + 1)

end

end A319951.P13332480301623472939

namespace A319951

/-- `comp[∑[ceil(2*sqrt(n))]]%(n+1)` -/
def P13332480301623472939.Spec : Prop :=
  ∀ n, (P13332480301623472939.a n : ℤ) = A319951 n

end A319951

/-! ## A319951.P11288384890368984934

`∑[char[∑[ceil(2/acot(sqrt(n)))]-(n+1)]]`
-/

namespace A319951.P11288384890368984934
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (Real.sqrt (n : ℝ))⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319951.P11288384890368984934

namespace A319951

/-- `∑[char[∑[ceil(2/acot(sqrt(n)))]-(n+1)]]` -/
def P11288384890368984934.Spec : Prop :=
  ∀ n, (P11288384890368984934.a n : ℤ) = A319951 n

end A319951

/-! ## A319951.P5211043987626958815

`∑[char[∑[(2-gcd(2, comp[∑[4*n]]))*∑[char[∑[n]]]]]]`
-/

namespace A319951.P5211043987626958815
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

open Classical in
def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n) : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f6 j : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319951.P5211043987626958815

namespace A319951

/-- `∑[char[∑[(2-gcd(2, comp[∑[4*n]]))*∑[char[∑[n]]]]]]` -/
def P5211043987626958815.Spec : Prop :=
  ∀ n, (P5211043987626958815.a n : ℤ) = A319951 n

end A319951

/-! ## A319951.P11430549421182073827

`∑[char[A342711(n)]]`
-/

namespace A319951.P11430549421182073827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342711 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319951.P11430549421182073827

namespace A319951

/-- `∑[char[A342711(n)]]` -/
def P11430549421182073827.Spec : Prop :=
  ∀ n, (P11430549421182073827.a n : ℤ) = A319951 n

end A319951

/-! ## A319951.P2756923752624465214

`∑[char[∑[A000267(n)]]]`
-/

namespace A319951.P2756923752624465214
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319951.P2756923752624465214

namespace A319951

/-- `∑[char[∑[A000267(n)]]]` -/
def P2756923752624465214.Spec : Prop :=
  ∀ n, (P2756923752624465214.a n : ℤ) = A319951 n

end A319951

/-! ## A319951.P13697796270959057687

`∑[char[A109512(n+1)]]`
-/

namespace A319951.P13697796270959057687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319951.P13697796270959057687

namespace A319951

/-- `∑[char[A109512(n+1)]]` -/
def P13697796270959057687.Spec : Prop :=
  ∀ n, (P13697796270959057687.a n : ℤ) = A319951 n

end A319951

/-! ## A319951.P14410032741291372581

`∑[char[A109512(n)]]-1`
-/

namespace A319951.P14410032741291372581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A319951.P14410032741291372581

namespace A319951

/-- `∑[char[A109512(n)]]-1` -/
def P14410032741291372581.Spec : Prop :=
  ∀ n, P14410032741291372581.a n = A319951 n

end A319951

/-! ## A319951.P2166957186150738855

`∑[char[∑[A055086(n)+1]]]`
-/

namespace A319951.P2166957186150738855
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319951.P2166957186150738855

namespace A319951

/-- `∑[char[∑[A055086(n)+1]]]` -/
def P2166957186150738855.Spec : Prop :=
  ∀ n, (P2166957186150738855.a n : ℤ) = A319951 n

end A319951

/-! ## A319951.P7134248891461497112

`∑[char[∑[A103128(2*(n+1))]]]`
-/

namespace A319951.P7134248891461497112
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319951.P7134248891461497112

namespace A319951

/-- `∑[char[∑[A103128(2*(n+1))]]]` -/
def P7134248891461497112.Spec : Prop :=
  ∀ n, (P7134248891461497112.a n : ℤ) = A319951 n

end A319951

/-! ## A319951.P17044829129756991969

`∑[char[∑[A000196(4*n+1)]]]`
-/

namespace A319951.P17044829129756991969
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (4 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319951.P17044829129756991969

namespace A319951

/-- `∑[char[∑[A000196(4*n+1)]]]` -/
def P17044829129756991969.Spec : Prop :=
  ∀ n, (P17044829129756991969.a n : ℤ) = A319951 n

end A319951

/-! ## A319951.P11411532169159664993

`∑[char[∑[1-A074239(n)+n]]]`
-/

namespace A319951.P11411532169159664993
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A074239 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319951.P11411532169159664993

namespace A319951

/-- `∑[char[∑[1-A074239(n)+n]]]` -/
def P11411532169159664993.Spec : Prop :=
  ∀ n, (P11411532169159664993.a n : ℤ) = A319951 n

end A319951

/-! ## A319951.P5620982617188181598

`∑[A000007(A209318(n))]`
-/

namespace A319951.P5620982617188181598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A209318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319951.P5620982617188181598

namespace A319951

/-- `∑[A000007(A209318(n))]` -/
def P5620982617188181598.Spec : Prop :=
  ∀ n, P5620982617188181598.a n = A319951 n

end A319951

/-! ## A319951.P3663174280874587264

`A003056(lt[A084938(n+2), A028263(n)])`
-/

namespace A319951.P3663174280874587264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A319951.P3663174280874587264

namespace A319951

/-- `A003056(lt[A084938(n+2), A028263(n)])` -/
def P3663174280874587264.Spec : Prop :=
  ∀ n, P3663174280874587264.a n = A319951 n

end A319951

/-!
# A319952: Let M = A022342(n) be the n-th number whose Zeckendorf representation is even; then a(n) = A129761(M).

The programs for A319952, there is no canonical definition to state claims against.
-/

/-! ## A319952.P18443859759028555237

`A129761(ceil(ϕ*n))`
-/

namespace A319952.P18443859759028555237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 ⌈Real.goldenRatio * (n : ℝ)⌉.toNat

end

end A319952.P18443859759028555237

/-! ## A319952.P7591818723855550316

`ceil(cosh(log(A085358(n))))`
-/

namespace A319952.P7591818723855550316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A085358 n : ℝ))⌉

end

end A319952.P7591818723855550316

/-! ## A319952.P6746247386926020712

`ceil(A319432(n+1)/2)`
-/

namespace A319952.P6746247386926020712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319432 (n + 1) : ℚ) / 2⌉

end

end A319952.P6746247386926020712

/-! ## A319952.P10164953234880103138

`ceil(2^A035612(n+1)/3)`
-/

namespace A319952.P10164953234880103138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (A035612 (n + 1) : ℤ) / 3⌉

end

end A319952.P10164953234880103138

/-! ## A319952.P2131975612208429528

`ceil(2^(A035614(n)+2)/6)`
-/

namespace A319952.P2131975612208429528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (A035614 n + 2 : ℤ) / 6⌉

end

end A319952.P2131975612208429528

/-! ## A319952.P10141769728196763235

`A008619(A085358(n))`
-/

namespace A319952.P10141769728196763235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A085358 n).toNat

end

end A319952.P10141769728196763235

/-! ## A319952.P577177168111603055

`A000975(A035614(n))+1`
-/

namespace A319952.P577177168111603055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A035614 n).toNat + 1

end

end A319952.P577177168111603055

/-! ## A319952.P7318706544623212069

`A005578(A035612(n+1))`
-/

namespace A319952.P7318706544623212069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A035612 (n + 1)).toNat

end

end A319952.P7318706544623212069

/-! ## A319952.P12621514733935532446

`A005578(A035614(n)+1)`
-/

namespace A319952.P12621514733935532446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A035614 n + 1).toNat

end

end A319952.P12621514733935532446

/-! ## A319952.P1971801521599754755

`A065033(A319432(n+1))`
-/

namespace A319952.P1971801521599754755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A319432 (n + 1)).toNat

end

end A319952.P1971801521599754755

/-!
# A319953: List of binary words of lengths 0, 1, 2, etc., including empty word, each prefixed by a 2.

The programs for A319953, the canonical program `A319953.P225455190191675646` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319953 has offset 0).

The definition of A319953 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319953.P225455190191675646

`A007088(n+1)+10^A000523(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A319953

/-- `A007088(n+1)+10^A000523(n+1)` -/
def P225455190191675646.Spec : Prop :=
  ∀ n, P225455190191675646.a n = (A319953 n : ℚ)

end A319953

/-! ## A319953.P13995183646132346247

`A007088(n+1)+A007088(A053644(n+1))`
-/

namespace A319953.P13995183646132346247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1) + A007088 (A053644 (n + 1)).toNat

end

end A319953.P13995183646132346247

namespace A319953

/-- `A007088(n+1)+A007088(A053644(n+1))` -/
def P13995183646132346247.Spec : Prop :=
  ∀ n, P13995183646132346247.a n = A319953 n

end A319953

/-! ## A319953.P18363867332138420336

`2*A007088(n+1)-A007088(A053645(n+1))`
-/

namespace A319953.P18363867332138420336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007088 (n + 1) - A007088 (A053645 (n + 1)).toNat

end

end A319953.P18363867332138420336

namespace A319953

/-- `2*A007088(n+1)-A007088(A053645(n+1))` -/
def P18363867332138420336.Spec : Prop :=
  ∀ n, P18363867332138420336.a n = A319953 n

end A319953

/-! ## A319953.P556421658184301080

`A007088(n+1)+A007088(A004754(n+1)-(n+1))`
-/

namespace A319953.P556421658184301080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1) + A007088 (A004754 (n + 1) - (n + 1 : ℤ)).toNat

end

end A319953.P556421658184301080

namespace A319953

/-- `A007088(n+1)+A007088(A004754(n+1)-(n+1))` -/
def P556421658184301080.Spec : Prop :=
  ∀ n, P556421658184301080.a n = A319953 n

end A319953

/-! ## A319953.P6152417545501919093

`A185544(A062383(n+1))+A007088(n+1)`
-/

namespace A319953.P6152417545501919093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A062383 (n + 1)).toNat + A007088 (n + 1)

end

end A319953.P6152417545501919093

namespace A319953

/-- `A185544(A062383(n+1))+A007088(n+1)` -/
def P6152417545501919093.Spec : Prop :=
  ∀ n, P6152417545501919093.a n = A319953 n

end A319953

/-! ## A319953.P7554406889956320716

`A185544(∏[A014963(2*(n+1))])+A007088(n+1)`
-/

namespace A319953.P7554406889956320716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + A007088 (n + 1)

end

end A319953.P7554406889956320716

namespace A319953

/-- `A185544(∏[A014963(2*(n+1))])+A007088(n+1)` -/
def P7554406889956320716.Spec : Prop :=
  ∀ n, P7554406889956320716.a n = A319953 n

end A319953

/-! ## A319953.P15726968955466723833

`A072998(A153775(n+1))`
-/

namespace A319953.P15726968955466723833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072998 (A153775 (n + 1)).toNat

end

end A319953.P15726968955466723833

namespace A319953

/-- `A072998(A153775(n+1))` -/
def P15726968955466723833.Spec : Prop :=
  ∀ n, P15726968955466723833.a n = A319953 n

end A319953

/-!
# A319954: Infinite word over {0,1,2} formed from list of binary words of lengths 0, 1, 2, etc., including empty word, each prefixed by a 2.

The programs for A319954, there is no canonical definition to state claims against.
-/

/-! ## A319954.P17285505462416320429

`A030190(n+1)+Δ[A030530(n)]`
-/

namespace A319954.P17285505462416320429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (n + 1) + (f1 (n + 1) - f1 n)

end

end A319954.P17285505462416320429

/-! ## A319954.P17832071227365597963

`A030302(n+1)+Δ[A030530(n)]`
-/

namespace A319954.P17832071227365597963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1) + (f1 (n + 1) - f1 n)

end

end A319954.P17832071227365597963

/-! ## A319954.P6141438434880041143

`A030302(n+1)+char[A001855(n+1)]`
-/

namespace A319954.P6141438434880041143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A319954.P6141438434880041143

/-! ## A319954.P17293033854129371535

`A030190(n+1)+A030530(n+1)-A030530(n)`
-/

namespace A319954.P17293033854129371535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (n + 1) + (A030530 (n + 1) - A030530 n)

end

end A319954.P17293033854129371535

/-! ## A319954.P14454668968608738888

`A030302(n+1)-(A030530(n)-A030530(n+1))`
-/

namespace A319954.P14454668968608738888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1) - (A030530 n - A030530 (n + 1))

end

end A319954.P14454668968608738888

/-! ## A319954.P14302297067435077039

`Δ[A030530(n)]+1-A030315(n+1)`
-/

namespace A319954.P14302297067435077039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 - A030315 (n + 1)

end

end A319954.P14302297067435077039

/-!
# A319956: Image of 3 under repeated application of the morphism 1 -> 1, 2 -> 22, 3 -> 312.

The programs for A319956, the canonical program `A319956.P2346561494383374932` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319956 has offset 0).

The definition of A319956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319956.P2346561494383374932

`char[comp[2^n+n]]+gcd(2, A004273(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A319956

/-- `char[comp[2^n+n]]+gcd(2, A004273(n))` -/
def P2346561494383374932.Spec : Prop :=
  ∀ n, (P2346561494383374932.a n : ℤ) = A319956 n

theorem P2346561494383374932.correct : P2346561494383374932.Spec := by
  intro n
  simp only [A319956]

end A319956

/-! ## A319956.P1674143607884735398

`char[floor(log2(n+1)+n+2)]+A000038(n)+1`
-/

namespace A319956.P1674143607884735398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (n + 1 : ℝ) + (n + 2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A000038 n + 1)

end

end A319956.P1674143607884735398

namespace A319956

/-- `char[floor(log2(n+1)+n+2)]+A000038(n)+1` -/
def P1674143607884735398.Spec : Prop :=
  ∀ n, P1674143607884735398.a n = A319956 n

end A319956

/-! ## A319956.P2975736613094869976

`A001285(a(A049455(n)))` with `a(0)=3`
-/

namespace A319956.P2975736613094869976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A001285 (a (A049455 n).toNat).toNat

end

end A319956.P2975736613094869976

namespace A319956

/-- `A001285(a(A049455(n)))` -/
def P2975736613094869976.Spec : Prop :=
  ∀ n, P2975736613094869976.a n = A319956 n

end A319956

/-! ## A319956.P1166964934281360623

`A051135(a(A049455(n)))` with `a(0)=3`
-/

namespace A319956.P1166964934281360623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A051135 (a (A049455 n).toNat).toNat

end

end A319956.P1166964934281360623

namespace A319956

/-- `A051135(a(A049455(n)))` -/
def P1166964934281360623.Spec : Prop :=
  ∀ n, P1166964934281360623.a n = A319956 n

end A319956

/-! ## A319956.P10448332904244166242

`A058914(a(A049455(n)))` with `a(0)=3`
-/

namespace A319956.P10448332904244166242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A058914 (a (A049455 n).toNat).toNat

end

end A319956.P10448332904244166242

namespace A319956

/-- `A058914(a(A049455(n)))` -/
def P10448332904244166242.Spec : Prop :=
  ∀ n, P10448332904244166242.a n = A319956 n

end A319956

/-! ## A319956.P16629855023595879012

`3-A000010(a(A049455(n)))` with `a(0)=3`
-/

namespace A319956.P16629855023595879012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 - A000010 (a (A049455 n).toNat).toNat

end

end A319956.P16629855023595879012

namespace A319956

/-- `3-A000010(a(A049455(n)))` -/
def P16629855023595879012.Spec : Prop :=
  ∀ n, P16629855023595879012.a n = A319956 n

end A319956

/-! ## A319956.P6635266141915951154

`3-A000045(a(A049455(n)))` with `a(0)=3`
-/

namespace A319956.P6635266141915951154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 - A000045 (a (A049455 n).toNat).toNat

end

end A319956.P6635266141915951154

namespace A319956

/-- `3-A000045(a(A049455(n)))` -/
def P6635266141915951154.Spec : Prop :=
  ∀ n, P6635266141915951154.a n = A319956 n

end A319956

/-! ## A319956.P9645256434776826399

`3-A000081(a(A049455(n)))` with `a(0)=3`
-/

namespace A319956.P9645256434776826399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 - A000081 (a (A049455 n).toNat).toNat

end

end A319956.P9645256434776826399

namespace A319956

/-- `3-A000081(a(A049455(n)))` -/
def P9645256434776826399.Spec : Prop :=
  ∀ n, P9645256434776826399.a n = A319956 n

end A319956

/-! ## A319956.P8574439333602509645

`3-A000105(a(A049455(n)))` with `a(0)=3`
-/

namespace A319956.P8574439333602509645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 - A000105 (a (A049455 n).toNat).toNat

end

end A319956.P8574439333602509645

namespace A319956

/-- `3-A000105(a(A049455(n)))` -/
def P8574439333602509645.Spec : Prop :=
  ∀ n, P8574439333602509645.a n = A319956 n

end A319956

/-! ## A319956.P11711401843350831101

`A007504(a(A049455(n)))%3` with `a(0)=3`
-/

namespace A319956.P11711401843350831101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.tmod (A007504 (a (A049455 n).toNat).toNat) 3

end

end A319956.P11711401843350831101

namespace A319956

/-- `A007504(a(A049455(n)))%3` -/
def P11711401843350831101.Spec : Prop :=
  ∀ n, P11711401843350831101.a n = A319956 n

end A319956

/-! ## A319956.P1217986768875449339

`A130706(n+1)+A288381(n+2)+1`
-/

namespace A319956.P1217986768875449339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (n + 1) + (A288381 (n + 2) + 1)

end

end A319956.P1217986768875449339

namespace A319956

/-- `A130706(n+1)+A288381(n+2)+1` -/
def P1217986768875449339.Spec : Prop :=
  ∀ n, P1217986768875449339.a n = A319956 n

end A319956

/-! ## A319956.P5634520615798093986

`A000720(Δ[A059983(2*n)])`
-/

namespace A319956.P5634520615798093986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059983 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A319956.P5634520615798093986

namespace A319956

/-- `A000720(Δ[A059983(2*n)])` -/
def P5634520615798093986.Spec : Prop :=
  ∀ n, P5634520615798093986.a n = A319956 n

end A319956

/-! ## A319956.P8938128122796176479

`A004525(Δ[A059983(2*n)])`
-/

namespace A319956.P8938128122796176479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059983 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A319956.P8938128122796176479

namespace A319956

/-- `A004525(Δ[A059983(2*n)])` -/
def P8938128122796176479.Spec : Prop :=
  ∀ n, P8938128122796176479.a n = A319956 n

end A319956

/-! ## A319956.P1017960153385380029

`A000005(Δ[A059983(2*n)]-1)`
-/

namespace A319956.P1017960153385380029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059983 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n - 1).toNat

end

end A319956.P1017960153385380029

namespace A319956

/-- `A000005(Δ[A059983(2*n)]-1)` -/
def P1017960153385380029.Spec : Prop :=
  ∀ n, P1017960153385380029.a n = A319956 n

end A319956

/-! ## A319956.P11184386048738442090

`A007318(Δ[A059983(Δ[n²])])`
-/

namespace A319956.P11184386048738442090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059983 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n).toNat

end

end A319956.P11184386048738442090

namespace A319956

/-- `A007318(Δ[A059983(Δ[n²])])` -/
def P11184386048738442090.Spec : Prop :=
  ∀ n, P11184386048738442090.a n = A319956 n

end A319956

/-! ## A319956.P11056036762325709168

`A000005(xor(3, Δ[A059983(2*n+1)]))`
-/

namespace A319956.P11056036762325709168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059983 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.xor 3 (f1 (n + 1) - f1 n)).toNat

end

end A319956.P11056036762325709168

namespace A319956

/-- `A000005(xor(3, Δ[A059983(2*n+1)]))` -/
def P11056036762325709168.Spec : Prop :=
  ∀ n, P11056036762325709168.a n = A319956 n

end A319956

/-!
# A319962: Number of lattice 3-polytopes of width 3 and size n.

The programs for A319962, there is no canonical definition to state claims against.
-/

/-! ## A319962.P5119309248910980860

`A115209(∑[2*(n-1)^n])`
-/

namespace A319962.P5119309248910980860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115209 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319962.P5119309248910980860

/-!
# A319965: Number of normal lattice 3-polytopes of width greater than 1 and size n.

The programs for A319965, there is no canonical definition to state claims against.
-/

/-! ## A319965.P9238957996816195096

`A005674(2*(n+2))-A118508(A181074(n))`
-/

namespace A319965.P9238957996816195096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005674 (2 * (n + 2)) - A118508 (A181074 n).toNat

end

end A319965.P9238957996816195096

/-!
# A319966: a(n) = A003144(A003146(n)).

The programs for A319966, the canonical program `A319966.P8768578910637306001` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319966 has offset 1).

The definition of A319966 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003146, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319966.P11171404312692001569

`A319968(n+1)+1`
-/

namespace A319966.P11171404312692001569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319968 (n + 1) + 1

end

end A319966.P11171404312692001569

namespace A319966

/-- `A319968(n+1)+1` -/
def P11171404312692001569.Spec : Prop :=
  ∀ n, P11171404312692001569.a n = A319966 (n + 1)

end A319966

/-! ## A319966.P8768578910637306001

`A003144(A003146(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A319966

/-- `A003144(A003146(n+1))` -/
def P8768578910637306001.Spec : Prop :=
  ∀ n, P8768578910637306001.a n = A319966 (n + 1)

theorem P8768578910637306001.correct : P8768578910637306001.Spec := by
  intro n
  simp only [A319966, Nat.add_sub_cancel]

end A319966

/-! ## A319966.P10905015574601402338

`A319970(n+1)+3`
-/

namespace A319966.P10905015574601402338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319970 (n + 1) + 3

end

end A319966.P10905015574601402338

namespace A319966

/-- `A319970(n+1)+3` -/
def P10905015574601402338.Spec : Prop :=
  ∀ n, P10905015574601402338.a n = A319966 (n + 1)

end A319966

/-! ## A319966.P6186703205993797821

`2*A278041(n)-n+1`
-/

namespace A319966.P6186703205993797821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278041 n - (n : ℤ) + 1

end

end A319966.P6186703205993797821

namespace A319966

/-- `2*A278041(n)-n+1` -/
def P6186703205993797821.Spec : Prop :=
  ∀ n, P6186703205993797821.a n = A319966 (n + 1)

end A319966

/-! ## A319966.P11540804240672010771

`∑[2*A275925(n+1)+1]`
-/

namespace A319966.P11540804240672010771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275925 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319966.P11540804240672010771

namespace A319966

/-- `∑[2*A275925(n+1)+1]` -/
def P11540804240672010771.Spec : Prop :=
  ∀ n, P11540804240672010771.a n = A319966 (n + 1)

end A319966

/-! ## A319966.P18410133564969149727

`A278041(A278039(n))+4`
-/

namespace A319966.P18410133564969149727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 (A278039 n).toNat + 4

end

end A319966.P18410133564969149727

namespace A319966

/-- `A278041(A278039(n))+4` -/
def P18410133564969149727.Spec : Prop :=
  ∀ n, P18410133564969149727.a n = A319966 (n + 1)

end A319966

/-! ## A319966.P7184741379178721293

`2*A278041(n)-A023443(n)`
-/

namespace A319966.P7184741379178721293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278041 n - A023443 n

end

end A319966.P7184741379178721293

namespace A319966

/-- `2*A278041(n)-A023443(n)` -/
def P7184741379178721293.Spec : Prop :=
  ∀ n, P7184741379178721293.a n = A319966 (n + 1)

end A319966

/-! ## A319966.P8144215831477800257

`A003146(n+1)+A278041(n)-n`
-/

namespace A319966.P8144215831477800257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1) + (A278041 n - (n : ℤ))

end

end A319966.P8144215831477800257

namespace A319966

/-- `A003146(n+1)+A278041(n)-n` -/
def P8144215831477800257.Spec : Prop :=
  ∀ n, P8144215831477800257.a n = A319966 (n + 1)

end A319966

/-! ## A319966.P15056530555171715082

`(A319969(n+1)+A003144(n+1))/2`
-/

namespace A319966.P15056530555171715082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319969 (n + 1) + A003144 (n + 1) : ℚ) / 2

end

end A319966.P15056530555171715082

namespace A319966

/-- `(A319969(n+1)+A003144(n+1))/2` -/
def P15056530555171715082.Spec : Prop :=
  ∀ n, P15056530555171715082.a n = (A319966 (n + 1) : ℚ)

end A319966

/-! ## A319966.P14156694461961331074

`2*(A003144(n+1)+A003145(n+1))+n+1`
-/

namespace A319966.P14156694461961331074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003144 (n + 1) + A003145 (n + 1)) + (n + 1 : ℤ)

end

end A319966.P14156694461961331074

namespace A319966

/-- `2*(A003144(n+1)+A003145(n+1))+n+1` -/
def P14156694461961331074.Spec : Prop :=
  ∀ n, P14156694461961331074.a n = A319966 (n + 1)

end A319966

/-! ## A319966.P4836507145514950971

`A140103(A003145(n+1))-A278040(n)`
-/

namespace A319966.P4836507145514950971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (A003145 (n + 1)).toNat - A278040 n

end

end A319966.P4836507145514950971

namespace A319966

/-- `A140103(A003145(n+1))-A278040(n)` -/
def P4836507145514950971.Spec : Prop :=
  ∀ n, P4836507145514950971.a n = A319966 (n + 1)

end A319966

/-! ## A319966.P3493608286738388703

`A140100(A003145(n+1))+A003146(n+1)`
-/

namespace A319966.P3493608286738388703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (A003145 (n + 1)).toNat + A003146 (n + 1)

end

end A319966.P3493608286738388703

namespace A319966

/-- `A140100(A003145(n+1))+A003146(n+1)` -/
def P3493608286738388703.Spec : Prop :=
  ∀ n, P3493608286738388703.a n = A319966 (n + 1)

end A319966

/-! ## A319966.P12371525489205622783

`A319969(n+1)-(A003146(n+1)+A003145(n+1))`
-/

namespace A319966.P12371525489205622783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319969 (n + 1) - (A003146 (n + 1) + A003145 (n + 1))

end

end A319966.P12371525489205622783

namespace A319966

/-- `A319969(n+1)-(A003146(n+1)+A003145(n+1))` -/
def P12371525489205622783.Spec : Prop :=
  ∀ n, P12371525489205622783.a n = A319966 (n + 1)

end A319966

/-! ## A319966.P5207160956063753517

`A003144(n+1)+A278040(A003144(n+1))+A278040(n)`
-/

namespace A319966.P5207160956063753517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1) + (A278040 (A003144 (n + 1)).toNat + A278040 n)

end

end A319966.P5207160956063753517

namespace A319966

/-- `A003144(n+1)+A278040(A003144(n+1))+A278040(n)` -/
def P5207160956063753517.Spec : Prop :=
  ∀ n, P5207160956063753517.a n = A319966 (n + 1)

end A319966

/-! ## A319966.P16270888909249394786

`2*A305373(n+1)+n+1`
-/

namespace A319966.P16270888909249394786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305373 (n + 1) + (n + 1 : ℤ)

end

end A319966.P16270888909249394786

namespace A319966

/-- `2*A305373(n+1)+n+1` -/
def P16270888909249394786.Spec : Prop :=
  ∀ n, P16270888909249394786.a n = A319966 (n + 1)

end A319966

/-! ## A319966.P11362329907876602420

`A305373(n+1)+A003146(n+1)`
-/

namespace A319966.P11362329907876602420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305373 (n + 1) + A003146 (n + 1)

end

end A319966.P11362329907876602420

namespace A319966

/-- `A305373(n+1)+A003146(n+1)` -/
def P11362329907876602420.Spec : Prop :=
  ∀ n, P11362329907876602420.a n = A319966 (n + 1)

end A319966

/-! ## A319966.P568870305069818704

`(A140103(A003146(n+1))-A140103(n+1))/2`
-/

namespace A319966.P568870305069818704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140103 (A003146 (n + 1)).toNat - A140103 (n + 1) : ℚ) / 2

end

end A319966.P568870305069818704

namespace A319966

/-- `(A140103(A003146(n+1))-A140103(n+1))/2` -/
def P568870305069818704.Spec : Prop :=
  ∀ n, P568870305069818704.a n = (A319966 (n + 1) : ℚ)

end A319966

/-! ## A319966.P17548634191110241206

`A278040(A278040(n))+2`
-/

namespace A319966.P17548634191110241206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A278040 n).toNat + 2

end

end A319966.P17548634191110241206

namespace A319966

/-- `A278040(A278040(n))+2` -/
def P17548634191110241206.Spec : Prop :=
  ∀ n, P17548634191110241206.a n = A319966 (n + 1)

end A319966

/-! ## A319966.P14968748625107274868

`A308200(A003144(n+1))`
-/

namespace A319966.P14968748625107274868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308200 (A003144 (n + 1)).toNat

end

end A319966.P14968748625107274868

namespace A319966

/-- `A308200(A003144(n+1))` -/
def P14968748625107274868.Spec : Prop :=
  ∀ n, P14968748625107274868.a n = A319966 (n + 1)

end A319966

/-! ## A319966.P14290180828541144938

`A308200(A278039(n)+1)`
-/

namespace A319966.P14290180828541144938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308200 (A278039 n + 1).toNat

end

end A319966.P14290180828541144938

namespace A319966

/-- `A308200(A278039(n)+1)` -/
def P14290180828541144938.Spec : Prop :=
  ∀ n, P14290180828541144938.a n = A319966 (n + 1)

end A319966

/-!
# A319967: a(n) = A003145(A003144(n)) where A003144 and A003145 are positions of '1' and '2' in the tribonacci word A092782.

The programs for A319967, the canonical program `A319967.P4287753706179414986` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319967 has offset 1).

The definition of A319967 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319967.P4287753706179414986

`A003145(A003144(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A319967

/-- `A003145(A003144(n+1))` -/
def P4287753706179414986.Spec : Prop :=
  ∀ n, P4287753706179414986.a n = A319967 (n + 1)

theorem P4287753706179414986.correct : P4287753706179414986.Spec := by
  intro n
  simp only [A319967, Nat.add_sub_cancel]

end A319967

/-! ## A319967.P10767338450007143333

`A278041(n)-1`
-/

namespace A319967.P10767338450007143333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n - 1

end

end A319967.P10767338450007143333

namespace A319967

/-- `A278041(n)-1` -/
def P10767338450007143333.Spec : Prop :=
  ∀ n, P10767338450007143333.a n = A319967 (n + 1)

end A319967

/-! ## A319967.P12215911780989248700

`A308200(n)+2`
-/

namespace A319967.P12215911780989248700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308200 n + 2

end

end A319967.P12215911780989248700

namespace A319967

/-- `A308200(n)+2` -/
def P12215911780989248700.Spec : Prop :=
  ∀ n, P12215911780989248700.a n = A319967 (n + 1)

end A319967

/-! ## A319967.P10004715609118482252

`A003146(n+1)-2`
-/

namespace A319967.P10004715609118482252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1) - 2

end

end A319967.P10004715609118482252

namespace A319967

/-- `A003146(n+1)-2` -/
def P10004715609118482252.Spec : Prop :=
  ∀ n, P10004715609118482252.a n = A319967 (n + 1)

end A319967

/-! ## A319967.P18223765014438962005

`(A319970(n+1)+n)/2`
-/

namespace A319967.P18223765014438962005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319970 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A319967.P18223765014438962005

namespace A319967

/-- `(A319970(n+1)+n)/2` -/
def P18223765014438962005.Spec : Prop :=
  ∀ n, P18223765014438962005.a n = (A319967 (n + 1) : ℚ)

end A319967

/-! ## A319967.P8499351978821774930

`A276792(n)+a(n-1)` with `a(0)=2`
-/

namespace A319967.P8499351978821774930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A276792 n + a (n - 1)

end

end A319967.P8499351978821774930

namespace A319967

/-- `A276792(n)+a(n-1)` -/
def P8499351978821774930.Spec : Prop :=
  ∀ n, P8499351978821774930.a n = A319967 (n + 1)

end A319967

/-! ## A319967.P2316060988923986881

`∑[A275925(n+1)+1]-2`
-/

namespace A319967.P2316060988923986881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A319967.P2316060988923986881

namespace A319967

/-- `∑[A275925(n+1)+1]-2` -/
def P2316060988923986881.Spec : Prop :=
  ∀ n, P2316060988923986881.a n = A319967 (n + 1)

end A319967

/-! ## A319967.P16023450848244055629

`(A319968(n+1)+n-2)/2`
-/

namespace A319967.P16023450848244055629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319968 (n + 1) + ((n : ℤ) - 2) : ℚ) / 2

end

end A319967.P16023450848244055629

namespace A319967

/-- `(A319968(n+1)+n-2)/2` -/
def P16023450848244055629.Spec : Prop :=
  ∀ n, P16023450848244055629.a n = (A319967 (n + 1) : ℚ)

end A319967

/-! ## A319967.P12137562218014978779

`A278040(A278039(n))+1`
-/

namespace A319967.P12137562218014978779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A278039 n).toNat + 1

end

end A319967.P12137562218014978779

namespace A319967

/-- `A278040(A278039(n))+1` -/
def P12137562218014978779.Spec : Prop :=
  ∀ n, P12137562218014978779.a n = A319967 (n + 1)

end A319967

/-! ## A319967.P8869320380541551542

`A140101(A278039(n)+1)+n`
-/

namespace A319967.P8869320380541551542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (A278039 n + 1).toNat + (n : ℤ)

end

end A319967.P8869320380541551542

namespace A319967

/-- `A140101(A278039(n)+1)+n` -/
def P8869320380541551542.Spec : Prop :=
  ∀ n, P8869320380541551542.a n = A319967 (n + 1)

end A319967

/-! ## A319967.P17797203641368452708

`2*A278040(n)-A276796(n)`
-/

namespace A319967.P17797203641368452708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278040 n - A276796 n

end

end A319967.P17797203641368452708

namespace A319967

/-- `2*A278040(n)-A276796(n)` -/
def P17797203641368452708.Spec : Prop :=
  ∀ n, P17797203641368452708.a n = A319967 (n + 1)

end A319967

/-! ## A319967.P8017280088679449208

`A140100(A003145(n+1))-1+n`
-/

namespace A319967.P8017280088679449208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (A003145 (n + 1)).toNat - 1 + (n : ℤ)

end

end A319967.P8017280088679449208

namespace A319967

/-- `A140100(A003145(n+1))-1+n` -/
def P8017280088679449208.Spec : Prop :=
  ∀ n, P8017280088679449208.a n = A319967 (n + 1)

end A319967

/-! ## A319967.P1451944840143978230

`A140103(n+1)+A278039(n)-1`
-/

namespace A319967.P1451944840143978230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1) + (A278039 n - 1)

end

end A319967.P1451944840143978230

namespace A319967

/-- `A140103(n+1)+A278039(n)-1` -/
def P1451944840143978230.Spec : Prop :=
  ∀ n, P1451944840143978230.a n = A319967 (n + 1)

end A319967

/-! ## A319967.P6438867375117796863

`A003144(n+1)+A278040(n)+n`
-/

namespace A319967.P6438867375117796863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1) + (A278040 n + (n : ℤ))

end

end A319967.P6438867375117796863

namespace A319967

/-- `A003144(n+1)+A278040(n)+n` -/
def P6438867375117796863.Spec : Prop :=
  ∀ n, P6438867375117796863.a n = A319967 (n + 1)

end A319967

/-! ## A319967.P5956051159880881975

`A003145(n+1)+A278039(n)+n`
-/

namespace A319967.P5956051159880881975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1) + (A278039 n + (n : ℤ))

end

end A319967.P5956051159880881975

namespace A319967

/-- `A003145(n+1)+A278039(n)+n` -/
def P5956051159880881975.Spec : Prop :=
  ∀ n, P5956051159880881975.a n = A319967 (n + 1)

end A319967

/-! ## A319967.P9814938327788774116

`A003144(n+1)+A140103(n+1)-2`
-/

namespace A319967.P9814938327788774116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1) + (A140103 (n + 1) - 2)

end

end A319967.P9814938327788774116

namespace A319967

/-- `A003144(n+1)+A140103(n+1)-2` -/
def P9814938327788774116.Spec : Prop :=
  ∀ n, P9814938327788774116.a n = A319967 (n + 1)

end A319967

/-! ## A319967.P2181992310931422160

`A278039(A003144(n+1))+A278039(n)+n`
-/

namespace A319967.P2181992310931422160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A003144 (n + 1)).toNat + (A278039 n + (n : ℤ))

end

end A319967.P2181992310931422160

namespace A319967

/-- `A278039(A003144(n+1))+A278039(n)+n` -/
def P2181992310931422160.Spec : Prop :=
  ∀ n, P2181992310931422160.a n = A319967 (n + 1)

end A319967

/-! ## A319967.P9375206356994164224

`A305373(n+1)-1+n`
-/

namespace A319967.P9375206356994164224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305373 (n + 1) - 1 + (n : ℤ)

end

end A319967.P9375206356994164224

namespace A319967

/-- `A305373(n+1)-1+n` -/
def P9375206356994164224.Spec : Prop :=
  ∀ n, P9375206356994164224.a n = A319967 (n + 1)

end A319967

/-! ## A319967.P17396807746406773235

`eq[0, A317193(n+2)]`
-/

namespace A319967.P17396807746406773235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317193 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319967.P17396807746406773235

namespace A319967

/-- `eq[0, A317193(n+2)]` -/
def P17396807746406773235.Spec : Prop :=
  ∀ n, (P17396807746406773235.a n : ℤ) = A319967 (n + 1)

end A319967

/-!
# A319968: a(n) = A003145(A003145(n)).

The programs for A319968, the canonical program `A319968.P16398350758420422133` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319968 has offset 1).

The definition of A319968 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319968.P124477632905404297

`2*A278041(n)-n`
-/

namespace A319968.P124477632905404297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278041 n - (n : ℤ)

end

end A319968.P124477632905404297

namespace A319968

/-- `2*A278041(n)-n` -/
def P124477632905404297.Spec : Prop :=
  ∀ n, P124477632905404297.a n = A319968 (n + 1)

end A319968

/-! ## A319968.P9640239154676960919

`2*A003146(n+1)-(n+2)`
-/

namespace A319968.P9640239154676960919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003146 (n + 1) - (n + 2 : ℤ)

end

end A319968.P9640239154676960919

namespace A319968

/-- `2*A003146(n+1)-(n+2)` -/
def P9640239154676960919.Spec : Prop :=
  ∀ n, P9640239154676960919.a n = A319968 (n + 1)

end A319968

/-! ## A319968.P9221957296770372392

`A278040(A278040(n))+1`
-/

namespace A319968.P9221957296770372392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A278040 n).toNat + 1

end

end A319968.P9221957296770372392

namespace A319968

/-- `A278040(A278040(n))+1` -/
def P9221957296770372392.Spec : Prop :=
  ∀ n, P9221957296770372392.a n = A319968 (n + 1)

end A319968

/-! ## A319968.P16398350758420422133

`A003145(A003145(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A319968

/-- `A003145(A003145(n+1))` -/
def P16398350758420422133.Spec : Prop :=
  ∀ n, P16398350758420422133.a n = A319968 (n + 1)

theorem P16398350758420422133.correct : P16398350758420422133.Spec := by
  intro n
  simp only [A319968, Nat.add_sub_cancel]

end A319968

/-! ## A319968.P6874368709717458904

`A319966(n+1)-1`
-/

namespace A319968.P6874368709717458904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319966 (n + 1) - 1

end

end A319968.P6874368709717458904

namespace A319968

/-- `A319966(n+1)-1` -/
def P6874368709717458904.Spec : Prop :=
  ∀ n, P6874368709717458904.a n = A319968 (n + 1)

end A319968

/-! ## A319968.P13220873351577072061

`A319970(n+1)+2`
-/

namespace A319968.P13220873351577072061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319970 (n + 1) + 2

end

end A319968.P13220873351577072061

namespace A319968

/-- `A319970(n+1)+2` -/
def P13220873351577072061.Spec : Prop :=
  ∀ n, P13220873351577072061.a n = A319968 (n + 1)

end A319968

/-! ## A319968.P1912383583813820932

`∑[2*A275925(n+1)]+n`
-/

namespace A319968.P1912383583813820932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A319968.P1912383583813820932

namespace A319968

/-- `∑[2*A275925(n+1)]+n` -/
def P1912383583813820932.Spec : Prop :=
  ∀ n, P1912383583813820932.a n = A319968 (n + 1)

end A319968

/-! ## A319968.P640437700871637536

`2*A319967(n+1)-(n-2)`
-/

namespace A319968.P640437700871637536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319967 (n + 1) - ((n : ℤ) - 2)

end

end A319968.P640437700871637536

namespace A319968

/-- `2*A319967(n+1)-(n-2)` -/
def P640437700871637536.Spec : Prop :=
  ∀ n, P640437700871637536.a n = A319968 (n + 1)

end A319968

/-! ## A319968.P15099248959846985723

`(A319971(n+1)+A003144(n+1))/2`
-/

namespace A319968.P15099248959846985723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319971 (n + 1) + A003144 (n + 1) : ℚ) / 2

end

end A319968.P15099248959846985723

namespace A319968

/-- `(A319971(n+1)+A003144(n+1))/2` -/
def P15099248959846985723.Spec : Prop :=
  ∀ n, P15099248959846985723.a n = (A319968 (n + 1) : ℚ)

end A319968

/-! ## A319968.P16626542030808304554

`A003146(n+1)+A319967(n+1)-n`
-/

namespace A319968.P16626542030808304554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1) + (A319967 (n + 1) - (n : ℤ))

end

end A319968.P16626542030808304554

namespace A319968

/-- `A003146(n+1)+A319967(n+1)-n` -/
def P16626542030808304554.Spec : Prop :=
  ∀ n, P16626542030808304554.a n = A319968 (n + 1)

end A319968

/-! ## A319968.P14343222526855553238

`A140101(A003144(n+1))+A003146(n+1)`
-/

namespace A319968.P14343222526855553238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (A003144 (n + 1)).toNat + A003146 (n + 1)

end

end A319968.P14343222526855553238

namespace A319968

/-- `A140101(A003144(n+1))+A003146(n+1)` -/
def P14343222526855553238.Spec : Prop :=
  ∀ n, P14343222526855553238.a n = A319968 (n + 1)

end A319968

/-! ## A319968.P1922136908288113585

`A140101(lt[5, A275925(n+1)])+A278041(n)+1`
-/

namespace A319968.P1922136908288113585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + (A278041 n + 1)

end

end A319968.P1922136908288113585

namespace A319968

/-- `A140101(lt[5, A275925(n+1)])+A278041(n)+1` -/
def P1922136908288113585.Spec : Prop :=
  ∀ n, P1922136908288113585.a n = A319968 (n + 1)

end A319968

/-! ## A319968.P18414139287827524464

`A140101(eq[1, A092782(n+1)]+1)+A278041(n)+1`
-/

namespace A319968.P18414139287827524464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + (A278041 n + 1)

end

end A319968.P18414139287827524464

namespace A319968

/-- `A140101(eq[1, A092782(n+1)]+1)+A278041(n)+1` -/
def P18414139287827524464.Spec : Prop :=
  ∀ n, P18414139287827524464.a n = A319968 (n + 1)

end A319968

/-! ## A319968.P13563869306967465143

`2*A305373(n+1)+n`
-/

namespace A319968.P13563869306967465143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305373 (n + 1) + (n : ℤ)

end

end A319968.P13563869306967465143

namespace A319968

/-- `2*A305373(n+1)+n` -/
def P13563869306967465143.Spec : Prop :=
  ∀ n, P13563869306967465143.a n = A319968 (n + 1)

end A319968

/-! ## A319968.P13347452080262061192

`2*eq[0, A317193(n+1)]-n`
-/

namespace A319968.P13347452080262061192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A319968.P13347452080262061192

namespace A319968

/-- `2*eq[0, A317193(n+1)]-n` -/
def P13347452080262061192.Spec : Prop :=
  ∀ n, P13347452080262061192.a n = A319968 (n + 1)

end A319968

/-! ## A319968.P10851380265646213022

`n-(A023443(n)-A278040(A278040(n)))`
-/

namespace A319968.P10851380265646213022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A278040 (A278040 n).toNat)

end

end A319968.P10851380265646213022

namespace A319968

/-- `n-(A023443(n)-A278040(A278040(n)))` -/
def P10851380265646213022.Spec : Prop :=
  ∀ n, P10851380265646213022.a n = A319968 (n + 1)

end A319968

/-! ## A319968.P439583181208271360

`A278041(A278040(n))-A278040(n)-A278041(n)`
-/

namespace A319968.P439583181208271360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 (A278040 n).toNat - A278040 n - A278041 n

end

end A319968.P439583181208271360

namespace A319968

/-- `A278041(A278040(n))-A278040(n)-A278041(n)` -/
def P439583181208271360.Spec : Prop :=
  ∀ n, P439583181208271360.a n = A319968 (n + 1)

end A319968

/-! ## A319968.P2021162256737074669

`A003146(A003144(n+1))+2`
-/

namespace A319968.P2021162256737074669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (A003144 (n + 1)).toNat + 2

end

end A319968.P2021162256737074669

namespace A319968

/-- `A003146(A003144(n+1))+2` -/
def P2021162256737074669.Spec : Prop :=
  ∀ n, P2021162256737074669.a n = A319968 (n + 1)

end A319968

/-!
# A319969: a(n) = A003145(A003146(n)).

The programs for A319969, the canonical program `A319969.P14966318444219165670` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319969 has offset 1).

The definition of A319969 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319969.P14966318444219165670

`3*A003144(n+1)+4*A003145(n+1)+2*(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A319969

/-- `3*A003144(n+1)+4*A003145(n+1)+2*(n+1)` -/
def P14966318444219165670.Spec : Prop :=
  ∀ n, P14966318444219165670.a n = A319969 (n + 1)

theorem P14966318444219165670.correct : P14966318444219165670.Spec := by
  intro n
  simp only [A319969, Nat.add_sub_cancel]

end A319969

/-! ## A319969.P17544525948393010706

`A003145(A003146(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319969.P17544525948393010706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (A003146 (n + 1)).toNat

end

end A319969.P17544525948393010706

namespace A319969

/-- `A003145(A003146(n+1))` -/
def P17544525948393010706.Spec : Prop :=
  ∀ n, P17544525948393010706.a n = A319969 (n + 1)

end A319969

/-! ## A319969.P6481921465728860671

`A319971(n+1)+2`
-/

namespace A319969.P6481921465728860671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319971 (n + 1) + 2

end

end A319969.P6481921465728860671

namespace A319969

/-- `A319971(n+1)+2` -/
def P6481921465728860671.Spec : Prop :=
  ∀ n, P6481921465728860671.a n = A319969 (n + 1)

theorem P6481921465728860671.correct : P6481921465728860671.Spec := by
  intro n
  simp only [A319969, Nat.add_sub_cancel, A319969.P6481921465728860671.a, A319969.P14966318444219165670.a, A003144, A003144.P14581909281585168490.f1, A003144.P14581909281585168490.f2, A003144.P14581909281585168490.a, A003145, A003145.P16204300471705086444.f1, A003145.P16204300471705086444.f2, A003145.P16204300471705086444.a, A319971, A319971.P17707355117856194328.a, A278045, A278045.P7038591754817271268.a, A317193, A317193.P13677178970524234186.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, A057078, A057078.P4951435475119423572.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319969

/-! ## A319969.P16864911834869191053

`A278041(A278040(n))+3`
-/

namespace A319969.P16864911834869191053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 (A278040 n).toNat + 3

end

end A319969.P16864911834869191053

namespace A319969

/-- `A278041(A278040(n))+3` -/
def P16864911834869191053.Spec : Prop :=
  ∀ n, P16864911834869191053.a n = A319969 (n + 1)

end A319969

/-! ## A319969.P2981123680821128566

`A278041(A003145(n+1))-3`
-/

namespace A319969.P2981123680821128566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 (A003145 (n + 1)).toNat - 3

end

end A319969.P2981123680821128566

namespace A319969

/-- `A278041(A003145(n+1))-3` -/
def P2981123680821128566.Spec : Prop :=
  ∀ n, P2981123680821128566.a n = A319969 (n + 1)

end A319969

/-! ## A319969.P5656971528360633046

`A319966(A003144(n+1))+6`
-/

namespace A319969.P5656971528360633046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319966 (A003144 (n + 1)).toNat + 6

end

end A319969.P5656971528360633046

namespace A319969

/-- `A319966(A003144(n+1))+6` -/
def P5656971528360633046.Spec : Prop :=
  ∀ n, P5656971528360633046.a n = A319969 (n + 1)

end A319969

/-! ## A319969.P9046061915452950324

`A278040(A319967(n+1))+5`
-/

namespace A319969.P9046061915452950324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A319967 (n + 1)).toNat + 5

end

end A319969.P9046061915452950324

namespace A319969

/-- `A278040(A319967(n+1))+5` -/
def P9046061915452950324.Spec : Prop :=
  ∀ n, P9046061915452950324.a n = A319969 (n + 1)

end A319969

/-! ## A319969.P8340211261585559621

`A003146(A278040(n)+1)+2`
-/

namespace A319969.P8340211261585559621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (A278040 n + 1).toNat + 2

end

end A319969.P8340211261585559621

namespace A319969

/-- `A003146(A278040(n)+1)+2` -/
def P8340211261585559621.Spec : Prop :=
  ∀ n, P8340211261585559621.a n = A319969 (n + 1)

end A319969

/-! ## A319969.P15442227041014638193

`A003146(A308199(n)+2)+2`
-/

namespace A319969.P15442227041014638193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (A308199 n + 2).toNat + 2

end

end A319969.P15442227041014638193

namespace A319969

/-- `A003146(A308199(n)+2)+2` -/
def P15442227041014638193.Spec : Prop :=
  ∀ n, P15442227041014638193.a n = A319969 (n + 1)

end A319969

/-! ## A319969.P5284238340286996286

`A308200(A003145(n+1))`
-/

namespace A319969.P5284238340286996286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308200 (A003145 (n + 1)).toNat

end

end A319969.P5284238340286996286

namespace A319969

/-- `A308200(A003145(n+1))` -/
def P5284238340286996286.Spec : Prop :=
  ∀ n, P5284238340286996286.a n = A319969 (n + 1)

end A319969

/-! ## A319969.P15481726268062456643

`A308200(A278040(n)+1)`
-/

namespace A319969.P15481726268062456643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308200 (A278040 n + 1).toNat

end

end A319969.P15481726268062456643

namespace A319969

/-- `A308200(A278040(n)+1)` -/
def P15481726268062456643.Spec : Prop :=
  ∀ n, P15481726268062456643.a n = A319969 (n + 1)

end A319969

/-! ## A319969.P4716390782472081735

`A308200(A308199(n)+2)`
-/

namespace A319969.P4716390782472081735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308200 (A308199 n + 2).toNat

end

end A319969.P4716390782472081735

namespace A319969

/-- `A308200(A308199(n)+2)` -/
def P4716390782472081735.Spec : Prop :=
  ∀ n, P4716390782472081735.a n = A319969 (n + 1)

end A319969

/-! ## A319969.P68895342853397808

`A319967(A003145(n+1)+1)-2`
-/

namespace A319969.P68895342853397808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319967 (A003145 (n + 1) + 1).toNat - 2

end

end A319969.P68895342853397808

namespace A319969

/-- `A319967(A003145(n+1)+1)-2` -/
def P68895342853397808.Spec : Prop :=
  ∀ n, P68895342853397808.a n = A319969 (n + 1)

end A319969

/-! ## A319969.P8909765263161652544

`A278039(A319966(n+1))`
-/

namespace A319969.P8909765263161652544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A319966 (n + 1)).toNat

end

end A319969.P8909765263161652544

namespace A319969

/-- `A278039(A319966(n+1))` -/
def P8909765263161652544.Spec : Prop :=
  ∀ n, P8909765263161652544.a n = A319969 (n + 1)

end A319969

/-! ## A319969.P11457193695439901269

`A278039(A319968(n+1)+1)`
-/

namespace A319969.P11457193695439901269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A319968 (n + 1) + 1).toNat

end

end A319969.P11457193695439901269

namespace A319969

/-- `A278039(A319968(n+1)+1)` -/
def P11457193695439901269.Spec : Prop :=
  ∀ n, P11457193695439901269.a n = A319969 (n + 1)

end A319969

/-! ## A319969.P14873175443621460834

`A278039(A319970(n+1)+2)+2`
-/

namespace A319969.P14873175443621460834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A319970 (n + 1) + 2).toNat + 2

end

end A319969.P14873175443621460834

namespace A319969

/-- `A278039(A319970(n+1)+2)+2` -/
def P14873175443621460834.Spec : Prop :=
  ∀ n, P14873175443621460834.a n = A319969 (n + 1)

end A319969

/-! ## A319969.P15052651281071597242

`A278039(∩[A278039(n)+1, A278039(n)])`
-/

namespace A319969.P15052651281071597242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A319969.P15052651281071597242

namespace A319969

/-- `A278039(∩[A278039(n)+1, A278039(n)])` -/
def P15052651281071597242.Spec : Prop :=
  ∀ n, P15052651281071597242.a n = A319969 (n + 1)

end A319969

/-! ## A319969.P10537752501597013968

`A003145(A278041(n)+1)`
-/

namespace A319969.P10537752501597013968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (A278041 n + 1).toNat

end

end A319969.P10537752501597013968

namespace A319969

/-- `A003145(A278041(n)+1)` -/
def P10537752501597013968.Spec : Prop :=
  ∀ n, P10537752501597013968.a n = A319969 (n + 1)

end A319969

/-! ## A319969.P10782382140537612075

`A003145(A319967(n+1)+2)`
-/

namespace A319969.P10782382140537612075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (A319967 (n + 1) + 2).toNat

end

end A319969.P10782382140537612075

namespace A319969

/-- `A003145(A319967(n+1)+2)` -/
def P10782382140537612075.Spec : Prop :=
  ∀ n, P10782382140537612075.a n = A319969 (n + 1)

end A319969

/-! ## A319969.P4765233978019603693

`A003145(A305373(n+1)+n+1)`
-/

namespace A319969.P4765233978019603693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (A305373 (n + 1) + (n + 1 : ℤ)).toNat

end

end A319969.P4765233978019603693

namespace A319969

/-- `A003145(A305373(n+1)+n+1)` -/
def P4765233978019603693.Spec : Prop :=
  ∀ n, P4765233978019603693.a n = A319969 (n + 1)

end A319969

/-!
# A319970: a(n) = A003146(A003144(n)).

The programs for A319970, the canonical program `A319970.P4505961506655571145` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319970 has offset 1).

The definition of A319970 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003146, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319970.P9398943651799546789

`2*(A278040(n)+A278039(n))+n+1+1`
-/

namespace A319970.P9398943651799546789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A278040 n + A278039 n) + (n + 1 : ℤ) + 1

end

end A319970.P9398943651799546789

namespace A319970

/-- `2*(A278040(n)+A278039(n))+n+1+1` -/
def P9398943651799546789.Spec : Prop :=
  ∀ n, P9398943651799546789.a n = A319970 (n + 1)

end A319970

/-! ## A319970.P8984946985372892273

`2*(A003144(n+1)+A003145(n+1))+n+1-3`
-/

namespace A319970.P8984946985372892273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003144 (n + 1) + A003145 (n + 1)) + (n + 1 : ℤ) - 3

end

end A319970.P8984946985372892273

namespace A319970

/-- `2*(A003144(n+1)+A003145(n+1))+n+1-3` -/
def P8984946985372892273.Spec : Prop :=
  ∀ n, P8984946985372892273.a n = A319970 (n + 1)

end A319970

/-! ## A319970.P4505961506655571145

`A003146(A003144(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A319970

/-- `A003146(A003144(n+1))` -/
def P4505961506655571145.Spec : Prop :=
  ∀ n, P4505961506655571145.a n = A319970 (n + 1)

theorem P4505961506655571145.correct : P4505961506655571145.Spec := by
  intro n
  simp only [A319970, Nat.add_sub_cancel]

end A319970

/-! ## A319970.P10078544455780697726

`A319968(n+1)-2`
-/

namespace A319970.P10078544455780697726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319968 (n + 1) - 2

end

end A319970.P10078544455780697726

namespace A319970

/-- `A319968(n+1)-2` -/
def P10078544455780697726.Spec : Prop :=
  ∀ n, P10078544455780697726.a n = A319970 (n + 1)

end A319970

/-! ## A319970.P8784499727198177912

`A319966(n+1)-3`
-/

namespace A319970.P8784499727198177912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319966 (n + 1) - 3

end

end A319970.P8784499727198177912

namespace A319970

/-- `A319966(n+1)-3` -/
def P8784499727198177912.Spec : Prop :=
  ∀ n, P8784499727198177912.a n = A319970 (n + 1)

end A319970

/-! ## A319970.P2373863634847018456

`2*A319967(n+1)-n`
-/

namespace A319970.P2373863634847018456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319967 (n + 1) - (n : ℤ)

end

end A319970.P2373863634847018456

namespace A319970

/-- `2*A319967(n+1)-n` -/
def P2373863634847018456.Spec : Prop :=
  ∀ n, P2373863634847018456.a n = A319970 (n + 1)

end A319970

/-! ## A319970.P8157381534551330090

`2*A278041(n)-(n+2)`
-/

namespace A319970.P8157381534551330090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278041 n - (n + 2 : ℤ)

end

end A319970.P8157381534551330090

namespace A319970

/-- `2*A278041(n)-(n+2)` -/
def P8157381534551330090.Spec : Prop :=
  ∀ n, P8157381534551330090.a n = A319970 (n + 1)

end A319970

/-! ## A319970.P10692777005935826927

`2*(A003146(n+1)-2)-n`
-/

namespace A319970.P10692777005935826927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003146 (n + 1) - 2) - (n : ℤ)

end

end A319970.P10692777005935826927

namespace A319970

/-- `2*(A003146(n+1)-2)-n` -/
def P10692777005935826927.Spec : Prop :=
  ∀ n, P10692777005935826927.a n = A319970 (n + 1)

end A319970

/-! ## A319970.P10432442690636443199

`A278041(A278039(n))+1`
-/

namespace A319970.P10432442690636443199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 (A278039 n).toNat + 1

end

end A319970.P10432442690636443199

namespace A319970

/-- `A278041(A278039(n))+1` -/
def P10432442690636443199.Spec : Prop :=
  ∀ n, P10432442690636443199.a n = A319970 (n + 1)

end A319970

/-! ## A319970.P11505818627729590241

`A278041(eq[1, A092782(n+1)])+1`
-/

namespace A319970.P11505818627729590241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A319970.P11505818627729590241

namespace A319970

/-- `A278041(eq[1, A092782(n+1)])+1` -/
def P11505818627729590241.Spec : Prop :=
  ∀ n, P11505818627729590241.a n = A319970 (n + 1)

end A319970

/-! ## A319970.P4803555953782947756

`A003146(n+1)+A308200(n)-n`
-/

namespace A319970.P4803555953782947756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1) + (A308200 n - (n : ℤ))

end

end A319970.P4803555953782947756

namespace A319970

/-- `A003146(n+1)+A308200(n)-n` -/
def P4803555953782947756.Spec : Prop :=
  ∀ n, P4803555953782947756.a n = A319970 (n + 1)

end A319970

/-! ## A319970.P7286821430288064963

`2*(A278040(n)+A278039(n))+n+2`
-/

namespace A319970.P7286821430288064963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A278040 n + A278039 n) + (n + 2 : ℤ)

end

end A319970.P7286821430288064963

namespace A319970

/-- `2*(A278040(n)+A278039(n))+n+2` -/
def P7286821430288064963.Spec : Prop :=
  ∀ n, P7286821430288064963.a n = A319970 (n + 1)

end A319970

/-! ## A319970.P7605263239043498359

`2*(A003144(n+1)+A003145(n+1))+n-2`
-/

namespace A319970.P7605263239043498359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003144 (n + 1) + A003145 (n + 1)) + ((n : ℤ) - 2)

end

end A319970.P7605263239043498359

namespace A319970

/-- `2*(A003144(n+1)+A003145(n+1))+n-2` -/
def P7605263239043498359.Spec : Prop :=
  ∀ n, P7605263239043498359.a n = A319970 (n + 1)

end A319970

/-! ## A319970.P7916327165918487882

`A319967(n+1)+A140101(lt[5, A275925(n+1)])`
-/

namespace A319970.P7916327165918487882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319967 (n + 1) + A140101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A319970.P7916327165918487882

namespace A319970

/-- `A319967(n+1)+A140101(lt[5, A275925(n+1)])` -/
def P7916327165918487882.Spec : Prop :=
  ∀ n, P7916327165918487882.a n = A319970 (n + 1)

end A319970

/-! ## A319970.P5079853225388682759

`A319967(n+1)+A140101(eq[1, A092782(n+1)]+1)`
-/

namespace A319970.P5079853225388682759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319967 (n + 1) + A140101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A319970.P5079853225388682759

namespace A319970

/-- `A319967(n+1)+A140101(eq[1, A092782(n+1)]+1)` -/
def P5079853225388682759.Spec : Prop :=
  ∀ n, P5079853225388682759.a n = A319970 (n + 1)

end A319970

/-! ## A319970.P14238041656378002041

`A140101(A003146(n+1)-1)-A003146(n+1)`
-/

namespace A319970.P14238041656378002041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (A003146 (n + 1) - 1).toNat - A003146 (n + 1)

end

end A319970.P14238041656378002041

namespace A319970

/-- `A140101(A003146(n+1)-1)-A003146(n+1)` -/
def P14238041656378002041.Spec : Prop :=
  ∀ n, P14238041656378002041.a n = A319970 (n + 1)

end A319970

/-! ## A319970.P8050555061079168714

`A278040(A278040(n))-1`
-/

namespace A319970.P8050555061079168714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A278040 n).toNat - 1

end

end A319970.P8050555061079168714

namespace A319970

/-- `A278040(A278040(n))-1` -/
def P8050555061079168714.Spec : Prop :=
  ∀ n, P8050555061079168714.a n = A319970 (n + 1)

end A319970

/-! ## A319970.P7964216614109925535

`A003146(A278039(n)+1)`
-/

namespace A319970.P7964216614109925535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (A278039 n + 1).toNat

end

end A319970.P7964216614109925535

namespace A319970

/-- `A003146(A278039(n)+1)` -/
def P7964216614109925535.Spec : Prop :=
  ∀ n, P7964216614109925535.a n = A319970 (n + 1)

theorem P7964216614109925535.correct : P7964216614109925535.Spec := by
  intro n
  simp only [A319970, Nat.add_sub_cancel, A319970.P7964216614109925535.a, A319970.P4505961506655571145.a, A003144, A003144.P14581909281585168490.f1, A003144.P14581909281585168490.f2, A003144.P14581909281585168490.a, A003146, A003146.P4319550854608353230.a, A278039, A278039.P16218767788797619260.a, A278045, A278045.P7038591754817271268.a, A308200, A308200.P11353778696816616322.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, A275925, A275925.P1014596103965212206.a, A000007, A000007.P6599383543502402472.a, A003796, A003796.P430726989961333611.f1, A003796.P430726989961333611.f2, A003796.P430726989961333611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319970

/-! ## A319970.P3100307140509675722

`A003146(A140101(n+1)-(n+1))`
-/

namespace A319970.P3100307140509675722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (A140101 (n + 1) - (n + 1 : ℤ)).toNat

end

end A319970.P3100307140509675722

namespace A319970

/-- `A003146(A140101(n+1)-(n+1))` -/
def P3100307140509675722.Spec : Prop :=
  ∀ n, P3100307140509675722.a n = A319970 (n + 1)

end A319970

/-!
# A319971: a(n) = A003146(A003145(n)).

The programs for A319971, the canonical program `A319971.P17707355117856194328` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319971 has offset 1).

The definition of A319971 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319971.P17707355117856194328

`3*A003144(n+1)+4*A003145(n+1)+2*n`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A319971

/-- `3*A003144(n+1)+4*A003145(n+1)+2*n` -/
def P17707355117856194328.Spec : Prop :=
  ∀ n, P17707355117856194328.a n = A319971 (n + 1)

theorem P17707355117856194328.correct : P17707355117856194328.Spec := by
  intro n
  simp only [A319971, Nat.add_sub_cancel]

end A319971

/-! ## A319971.P691390070584140446

`A003146(A003145(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319971.P691390070584140446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (A003145 (n + 1)).toNat

end

end A319971.P691390070584140446

namespace A319971

/-- `A003146(A003145(n+1))` -/
def P691390070584140446.Spec : Prop :=
  ∀ n, P691390070584140446.a n = A319971 (n + 1)

end A319971

/-! ## A319971.P13105197987281797321

`A319969(n+1)-2`
-/

namespace A319971.P13105197987281797321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319969 (n + 1) - 2

end

end A319971.P13105197987281797321

namespace A319971

/-- `A319969(n+1)-2` -/
def P13105197987281797321.Spec : Prop :=
  ∀ n, P13105197987281797321.a n = A319971 (n + 1)

theorem P13105197987281797321.correct : P13105197987281797321.Spec := by
  intro n
  simp only [A319971, Nat.add_sub_cancel, A319971.P13105197987281797321.a, A319971.P17707355117856194328.a, A003144, A003144.P14581909281585168490.f1, A003144.P14581909281585168490.f2, A003144.P14581909281585168490.a, A003145, A003145.P16204300471705086444.f1, A003145.P16204300471705086444.f2, A003145.P16204300471705086444.a, A319969, A319969.P14966318444219165670.a, A278045, A278045.P7038591754817271268.a, A317193, A317193.P13677178970524234186.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, A057078, A057078.P4951435475119423572.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319971

/-! ## A319971.P15689011642301889963

`2*A319968(n+1)-A003144(n+1)`
-/

namespace A319971.P15689011642301889963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319968 (n + 1) - A003144 (n + 1)

end

end A319971.P15689011642301889963

namespace A319971

/-- `2*A319968(n+1)-A003144(n+1)` -/
def P15689011642301889963.Spec : Prop :=
  ∀ n, P15689011642301889963.a n = A319971 (n + 1)

end A319971

/-! ## A319971.P13388886858651595834

`A278041(A278040(n))+1`
-/

namespace A319971.P13388886858651595834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 (A278040 n).toNat + 1

end

end A319971.P13388886858651595834

namespace A319971

/-- `A278041(A278040(n))+1` -/
def P13388886858651595834.Spec : Prop :=
  ∀ n, P13388886858651595834.a n = A319971 (n + 1)

end A319971

/-! ## A319971.P16676408282276129367

`A278041(A308199(n)+1)+1`
-/

namespace A319971.P16676408282276129367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 (A308199 n + 1).toNat + 1

end

end A319971.P16676408282276129367

namespace A319971

/-- `A278041(A308199(n)+1)+1` -/
def P16676408282276129367.Spec : Prop :=
  ∀ n, P16676408282276129367.a n = A319971 (n + 1)

end A319971

/-! ## A319971.P881648714921032038

`A319966(A003144(n+1))+4`
-/

namespace A319971.P881648714921032038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319966 (A003144 (n + 1)).toNat + 4

end

end A319971.P881648714921032038

namespace A319971

/-- `A319966(A003144(n+1))+4` -/
def P881648714921032038.Spec : Prop :=
  ∀ n, P881648714921032038.a n = A319971 (n + 1)

end A319971

/-! ## A319971.P5758225167194744074

`A278040(A278041(n))-1`
-/

namespace A319971.P5758225167194744074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A278041 n).toNat - 1

end

end A319971.P5758225167194744074

namespace A319971

/-- `A278040(A278041(n))-1` -/
def P5758225167194744074.Spec : Prop :=
  ∀ n, P5758225167194744074.a n = A319971 (n + 1)

end A319971

/-! ## A319971.P16710708652005981706

`A278040(A319967(n+1))+3`
-/

namespace A319971.P16710708652005981706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A319967 (n + 1)).toNat + 3

end

end A319971.P16710708652005981706

namespace A319971

/-- `A278040(A319967(n+1))+3` -/
def P16710708652005981706.Spec : Prop :=
  ∀ n, P16710708652005981706.a n = A319971 (n + 1)

end A319971

/-! ## A319971.P6862335169051318219

`A278040(A003146(n+1)-1)-1`
-/

namespace A319971.P6862335169051318219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A003146 (n + 1) - 1).toNat - 1

end

end A319971.P6862335169051318219

namespace A319971

/-- `A278040(A003146(n+1)-1)-1` -/
def P6862335169051318219.Spec : Prop :=
  ∀ n, P6862335169051318219.a n = A319971 (n + 1)

end A319971

/-! ## A319971.P14939118092097134646

`A003146(A278040(n)+1)`
-/

namespace A319971.P14939118092097134646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (A278040 n + 1).toNat

end

end A319971.P14939118092097134646

namespace A319971

/-- `A003146(A278040(n)+1)` -/
def P14939118092097134646.Spec : Prop :=
  ∀ n, P14939118092097134646.a n = A319971 (n + 1)

end A319971

/-! ## A319971.P8293510452946225171

`A003146(A308199(n)+2)`
-/

namespace A319971.P8293510452946225171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (A308199 n + 2).toNat

end

end A319971.P8293510452946225171

namespace A319971

/-- `A003146(A308199(n)+2)` -/
def P8293510452946225171.Spec : Prop :=
  ∀ n, P8293510452946225171.a n = A319971 (n + 1)

end A319971

/-! ## A319971.P2981024322098779824

`A003146(A140103(n+1)-(n+1))`
-/

namespace A319971.P2981024322098779824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (A140103 (n + 1) - (n + 1 : ℤ)).toNat

end

end A319971.P2981024322098779824

namespace A319971

/-- `A003146(A140103(n+1)-(n+1))` -/
def P2981024322098779824.Spec : Prop :=
  ∀ n, P2981024322098779824.a n = A319971 (n + 1)

end A319971

/-! ## A319971.P16805726802763585231

`A003146(A278039(A003144(n+1)))`
-/

namespace A319971.P16805726802763585231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (A278039 (A003144 (n + 1)).toNat).toNat

end

end A319971.P16805726802763585231

namespace A319971

/-- `A003146(A278039(A003144(n+1)))` -/
def P16805726802763585231.Spec : Prop :=
  ∀ n, P16805726802763585231.a n = A319971 (n + 1)

end A319971

/-! ## A319971.P1443392685546536963

`A003146(A140100(n+1)+A003144(n+1))`
-/

namespace A319971.P1443392685546536963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (A140100 (n + 1) + A003144 (n + 1)).toNat

end

end A319971.P1443392685546536963

namespace A319971

/-- `A003146(A140100(n+1)+A003144(n+1))` -/
def P1443392685546536963.Spec : Prop :=
  ∀ n, P1443392685546536963.a n = A319971 (n + 1)

end A319971

/-! ## A319971.P3002531963416622918

`A003146(A003146(n+1)-A140101(n+1))`
-/

namespace A319971.P3002531963416622918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (A003146 (n + 1) - A140101 (n + 1)).toNat

end

end A319971.P3002531963416622918

namespace A319971

/-- `A003146(A003146(n+1)-A140101(n+1))` -/
def P3002531963416622918.Spec : Prop :=
  ∀ n, P3002531963416622918.a n = A319971 (n + 1)

end A319971

/-! ## A319971.P869394539396666293

`A003146((A276796(n)+A003146(n+1))/2)`
-/

namespace A319971.P869394539396666293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (SequenceMachineLib.roundAway ((A276796 n + A003146 (n + 1) : ℚ) / 2)).toNat

end

end A319971.P869394539396666293

namespace A319971

/-- `A003146((A276796(n)+A003146(n+1))/2)` -/
def P869394539396666293.Spec : Prop :=
  ∀ n, P869394539396666293.a n = A319971 (n + 1)

end A319971

/-! ## A319971.P3843367705549128200

`2*A003145(A003145(n+1))-A003144(n+1)`
-/

namespace A319971.P3843367705549128200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003145 (A003145 (n + 1)).toNat - A003144 (n + 1)

end

end A319971.P3843367705549128200

namespace A319971

/-- `2*A003145(A003145(n+1))-A003144(n+1)` -/
def P3843367705549128200.Spec : Prop :=
  ∀ n, P3843367705549128200.a n = A319971 (n + 1)

end A319971

/-! ## A319971.P5133514026727362327

`A308200(A278040(n)+1)-2`
-/

namespace A319971.P5133514026727362327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308200 (A278040 n + 1).toNat - 2

end

end A319971.P5133514026727362327

namespace A319971

/-- `A308200(A278040(n)+1)-2` -/
def P5133514026727362327.Spec : Prop :=
  ∀ n, P5133514026727362327.a n = A319971 (n + 1)

end A319971

/-! ## A319971.P17921490116058488024

`A308200(A308199(n)+2)-2`
-/

namespace A319971.P17921490116058488024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308200 (A308199 n + 2).toNat - 2

end

end A319971.P17921490116058488024

namespace A319971

/-- `A308200(A308199(n)+2)-2` -/
def P17921490116058488024.Spec : Prop :=
  ∀ n, P17921490116058488024.a n = A319971 (n + 1)

end A319971

/-!
# A319972: a(n) = A003146(A003146(n)).

The programs for A319972, the canonical program `A319972.P7349616405294569184` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319972 has offset 1).

The definition of A319972 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A278040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319972.P7349616405294569184

`7*A278040(n)+6*A278039(n)+4*(n+1)+13`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A319972

/-- `7*A278040(n)+6*A278039(n)+4*(n+1)+13` -/
def P7349616405294569184.Spec : Prop :=
  ∀ n, P7349616405294569184.a n = A319972 (n + 1)

theorem P7349616405294569184.correct : P7349616405294569184.Spec := by
  intro n
  simp only [A319972, Nat.add_sub_cancel]

end A319972

/-! ## A319972.P12592597501783239013

`6*A003144(n+1)+7*A003145(n+1)+4*(n+1)`
-/

namespace A319972.P12592597501783239013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A003144 (n + 1) + 7 * A003145 (n + 1) + (4 * (n + 1) : ℤ)

end

end A319972.P12592597501783239013

namespace A319972

/-- `6*A003144(n+1)+7*A003145(n+1)+4*(n+1)` -/
def P12592597501783239013.Spec : Prop :=
  ∀ n, P12592597501783239013.a n = A319972 (n + 1)

theorem P12592597501783239013.correct : P12592597501783239013.Spec := by
  intro n
  simp only [A319972, Nat.add_sub_cancel, A319972.P12592597501783239013.a, A319972.P7349616405294569184.a, A003144, A003144.P14581909281585168490.f1, A003144.P14581909281585168490.f2, A003144.P14581909281585168490.a, A003145, A003145.P16204300471705086444.f1, A003145.P16204300471705086444.f2, A003145.P16204300471705086444.a, A278039, A278039.P16218767788797619260.a, A278040, A278040.P10650196326427599491.a, A278045, A278045.P7038591754817271268.a, A317193, A317193.P13677178970524234186.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, A057078, A057078.P4951435475119423572.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319972

/-! ## A319972.P1327411743140776358

`A003146(A003146(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319972.P1327411743140776358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (A003146 (n + 1)).toNat

end

end A319972.P1327411743140776358

namespace A319972

/-- `A003146(A003146(n+1))` -/
def P1327411743140776358.Spec : Prop :=
  ∀ n, P1327411743140776358.a n = A319972 (n + 1)

end A319972

/-! ## A319972.P2263334861732811548

`2*A319969(n+1)-A003145(n+1)`
-/

namespace A319972.P2263334861732811548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319969 (n + 1) - A003145 (n + 1)

end

end A319972.P2263334861732811548

namespace A319972

/-- `2*A319969(n+1)-A003145(n+1)` -/
def P2263334861732811548.Spec : Prop :=
  ∀ n, P2263334861732811548.a n = A319972 (n + 1)

theorem P2263334861732811548.correct : P2263334861732811548.Spec := by
  intro n
  simp only [A319972, Nat.add_sub_cancel, A319972.P2263334861732811548.a, A319972.P7349616405294569184.a, A003145, A003145.P16204300471705086444.f1, A003145.P16204300471705086444.f2, A003145.P16204300471705086444.a, A278039, A278039.P16218767788797619260.a, A278040, A278040.P10650196326427599491.a, A319969, A319969.P14966318444219165670.a, A003144, A003144.P14581909281585168490.f1, A003144.P14581909281585168490.f2, A003144.P14581909281585168490.a, A317193, A317193.P13677178970524234186.a, A057078, A057078.P4951435475119423572.a, A278045, A278045.P7038591754817271268.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319972

/-! ## A319972.P1778068940842137495

`A319971(A003144(n+1))+13`
-/

namespace A319972.P1778068940842137495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319971 (A003144 (n + 1)).toNat + 13

end

end A319972.P1778068940842137495

namespace A319972

/-- `A319971(A003144(n+1))+13` -/
def P1778068940842137495.Spec : Prop :=
  ∀ n, P1778068940842137495.a n = A319972 (n + 1)

end A319972

/-! ## A319972.P2392506991213646191

`A278041(A278041(n))+1`
-/

namespace A319972.P2392506991213646191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 (A278041 n).toNat + 1

end

end A319972.P2392506991213646191

namespace A319972

/-- `A278041(A278041(n))+1` -/
def P2392506991213646191.Spec : Prop :=
  ∀ n, P2392506991213646191.a n = A319972 (n + 1)

end A319972

/-! ## A319972.P15635652125035198661

`A319966(A278040(n))+17`
-/

namespace A319972.P15635652125035198661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319966 (A278040 n).toNat + 17

end

end A319972.P15635652125035198661

namespace A319972

/-- `A319966(A278040(n))+17` -/
def P15635652125035198661.Spec : Prop :=
  ∀ n, P15635652125035198661.a n = A319972 (n + 1)

end A319972

/-! ## A319972.P15590732309312606273

`A278040(A319968(n+1))+3`
-/

namespace A319972.P15590732309312606273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A319968 (n + 1)).toNat + 3

end

end A319972.P15590732309312606273

namespace A319972

/-- `A278040(A319968(n+1))+3` -/
def P15590732309312606273.Spec : Prop :=
  ∀ n, P15590732309312606273.a n = A319972 (n + 1)

end A319972

/-! ## A319972.P9230576024544815468

`A278040(A319970(n+1))+10`
-/

namespace A319972.P9230576024544815468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A319970 (n + 1)).toNat + 10

end

end A319972.P9230576024544815468

namespace A319972

/-- `A278040(A319970(n+1))+10` -/
def P9230576024544815468.Spec : Prop :=
  ∀ n, P9230576024544815468.a n = A319972 (n + 1)

end A319972

/-! ## A319972.P5968301319628199872

`A308200(A308200(n)+4)`
-/

namespace A319972.P5968301319628199872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308200 (A308200 n + 4).toNat

end

end A319972.P5968301319628199872

namespace A319972

/-- `A308200(A308200(n)+4)` -/
def P5968301319628199872.Spec : Prop :=
  ∀ n, P5968301319628199872.a n = A319972 (n + 1)

end A319972

/-! ## A319972.P3342068959711791674

`A319967(A319967(n+1)+2)+2`
-/

namespace A319972.P3342068959711791674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319967 (A319967 (n + 1) + 2).toNat + 2

end

end A319972.P3342068959711791674

namespace A319972

/-- `A319967(A319967(n+1)+2)+2` -/
def P3342068959711791674.Spec : Prop :=
  ∀ n, P3342068959711791674.a n = A319972 (n + 1)

end A319972

/-! ## A319972.P5260685975996999201

`A308200(A020705(n)-(n-A308200(n)))`
-/

namespace A319972.P5260685975996999201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308200 (A020705 n - ((n : ℤ) - A308200 n)).toNat

end

end A319972.P5260685975996999201

namespace A319972

/-- `A308200(A020705(n)-(n-A308200(n)))` -/
def P5260685975996999201.Spec : Prop :=
  ∀ n, P5260685975996999201.a n = A319972 (n + 1)

end A319972

/-! ## A319972.P17576459954288010654

`A278039(A319969(n+1))`
-/

namespace A319972.P17576459954288010654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A319969 (n + 1)).toNat

end

end A319972.P17576459954288010654

namespace A319972

/-- `A278039(A319969(n+1))` -/
def P17576459954288010654.Spec : Prop :=
  ∀ n, P17576459954288010654.a n = A319972 (n + 1)

end A319972

/-! ## A319972.P4677450453269464416

`A278039(A319971(n+1)+2)`
-/

namespace A319972.P4677450453269464416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A319971 (n + 1) + 2).toNat

end

end A319972.P4677450453269464416

namespace A319972

/-- `A278039(A319971(n+1)+2)` -/
def P4677450453269464416.Spec : Prop :=
  ∀ n, P4677450453269464416.a n = A319972 (n + 1)

end A319972

/-! ## A319972.P9800561316226749011

`A278039(A278039(A319966(n+1)))`
-/

namespace A319972.P9800561316226749011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A278039 (A319966 (n + 1)).toNat).toNat

end

end A319972.P9800561316226749011

namespace A319972

/-- `A278039(A278039(A319966(n+1)))` -/
def P9800561316226749011.Spec : Prop :=
  ∀ n, P9800561316226749011.a n = A319972 (n + 1)

end A319972

/-! ## A319972.P18105688653151028697

`A278039(A003145(A278039(A003145(n+1))))`
-/

namespace A319972.P18105688653151028697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A003145 (A278039 (A003145 (n + 1)).toNat).toNat).toNat

end

end A319972.P18105688653151028697

namespace A319972

/-- `A278039(A003145(A278039(A003145(n+1))))` -/
def P18105688653151028697.Spec : Prop :=
  ∀ n, P18105688653151028697.a n = A319972 (n + 1)

end A319972

/-! ## A319972.P1987068103951359245

`A003145(A319968(n+1)+1)+2`
-/

namespace A319972.P1987068103951359245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (A319968 (n + 1) + 1).toNat + 2

end

end A319972.P1987068103951359245

namespace A319972

/-- `A003145(A319968(n+1)+1)+2` -/
def P1987068103951359245.Spec : Prop :=
  ∀ n, P1987068103951359245.a n = A319972 (n + 1)

end A319972

/-! ## A319972.P12739349172479665373

`A003145(A319966(n+1)+1)-2`
-/

namespace A319972.P12739349172479665373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (A319966 (n + 1) + 1).toNat - 2

end

end A319972.P12739349172479665373

namespace A319972

/-- `A003145(A319966(n+1)+1)-2` -/
def P12739349172479665373.Spec : Prop :=
  ∀ n, P12739349172479665373.a n = A319972 (n + 1)

end A319972

/-! ## A319972.P10245366950433071079

`A316324(A319966(n+1))-A319970(n+1)`
-/

namespace A319972.P10245366950433071079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316324 (A319966 (n + 1)).toNat - A319970 (n + 1)

end

end A319972.P10245366950433071079

namespace A319972

/-- `A316324(A319966(n+1))-A319970(n+1)` -/
def P10245366950433071079.Spec : Prop :=
  ∀ n, P10245366950433071079.a n = A319972 (n + 1)

end A319972

/-! ## A319972.P17276928208667279101

`A308199(A319966(n+1))`
-/

namespace A319972.P17276928208667279101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308199 (A319966 (n + 1)).toNat

end

end A319972.P17276928208667279101

namespace A319972

/-- `A308199(A319966(n+1))` -/
def P17276928208667279101.Spec : Prop :=
  ∀ n, P17276928208667279101.a n = A319972 (n + 1)

end A319972

/-!
# A319973: Expansion of (1-x^5+x^8+x^10)/((1-x^4)*(1-x^5)*(1-x^6)).

The programs for A319973, the canonical program `A319973.P10670516954566269406` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319973 has offset 0).

The definition of A319973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^5+x^8+x^10)/(1-x^4-x^5-x^6+x^9+x^10+x^11-x^15))` (program `A319973.P10670516954566269406`, by `A319973.P10670516954566269406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A319973.P10670516954566269406

`ogf((1-x^5+x^8+x^10)/(1-x^4-x^5-x^6+x^9+x^10+x^11-x^15))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319973

/-- `ogf((1-x^5+x^8+x^10)/(1-x^4-x^5-x^6+x^9+x^10+x^11-x^15))` -/
def P10670516954566269406.Spec : Prop :=
  ∀ n, P10670516954566269406.a n = A319973 n

theorem P10670516954566269406.correct : P10670516954566269406.Spec := by
  intro n
  simp only [A319973]

end A319973

/-! ## A319973.P955136407571611456

`floor((n²+12*n+72)/120-n%2*n/6+(n²+2*n+2)%5/5)`
-/

namespace A319973.P955136407571611456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 + 12 * n + 72 : ℚ) / 120 - ((n % 2 * n : ℕ) : ℚ) / 6 + (((n ^ 2 + 2 * n + 2) % 5 : ℕ) : ℚ) / 5⌋

end

end A319973.P955136407571611456

namespace A319973

/-- `floor((n²+12*n+72)/120-n%2*n/6+(n²+2*n+2)%5/5)` -/
def P955136407571611456.Spec : Prop :=
  ∀ n, P955136407571611456.a n = A319973 n

end A319973

/-! ## A319973.P96671686183417

`A008680(n)-A142150(A008611(n))`
-/

namespace A319973.P96671686183417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 n - A142150 (A008611 n).toNat

end

end A319973.P96671686183417

namespace A319973

/-- `A008680(n)-A142150(A008611(n))` -/
def P96671686183417.Spec : Prop :=
  ∀ n, P96671686183417.a n = A319973 n

end A319973

/-! ## A319973.P15829495000388171907

`A008680(n)-A103221(A093178(n))`
-/

namespace A319973.P15829495000388171907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 n - A103221 (A093178 n).toNat

end

end A319973.P15829495000388171907

namespace A319973

/-- `A008680(n)-A103221(A093178(n))` -/
def P15829495000388171907.Spec : Prop :=
  ∀ n, P15829495000388171907.a n = A319973 n

end A319973

/-! ## A319973.P8737039193693108435

`A008680(n)-A260160(n+2)`
-/

namespace A319973.P8737039193693108435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 n - A260160 (n + 2)

end

end A319973.P8737039193693108435

namespace A319973

/-- `A008680(n)-A260160(n+2)` -/
def P8737039193693108435.Spec : Prop :=
  ∀ n, P8737039193693108435.a n = A319973 n

end A319973

/-! ## A319973.P15839193854524499895

`A008680(n)-A059841(n+1)*A103221(n)`
-/

namespace A319973.P15839193854524499895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 n - A059841 (n + 1) * A103221 n

end

end A319973.P15839193854524499895

namespace A319973

/-- `A008680(n)-A059841(n+1)*A103221(n)` -/
def P15839193854524499895.Spec : Prop :=
  ∀ n, P15839193854524499895.a n = A319973 n

end A319973

/-! ## A319973.P16519706042730136577

`A008680(n)-A008679(A266722(n))`
-/

namespace A319973.P16519706042730136577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 n - A008679 (A266722 n).toNat

end

end A319973.P16519706042730136577

namespace A319973

/-- `A008680(n)-A008679(A266722(n))` -/
def P16519706042730136577.Spec : Prop :=
  ∀ n, P16519706042730136577.a n = A319973 n

end A319973

/-!
# A319974: Expansion of (1-x^3+x^4+x^6)/(b(2)*b(3)*b(4)) where b(n) = 1-x^n.

The programs for A319974, the canonical program `A319974.P4036882474331244479` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319974 has offset 0).

The definition of A319974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319974.P4036882474331244479

`∑[A008679(n)-A001057(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A319974

/-- `∑[A008679(n)-A001057(n)]` -/
def P4036882474331244479.Spec : Prop :=
  ∀ n, P4036882474331244479.a n = A319974 n

theorem P4036882474331244479.correct : P4036882474331244479.Spec := by
  intro n
  simp only [A319974]

end A319974

/-! ## A319974.P5953396586489644452

`A025767(n)-∑[A001057(n)]`
-/

namespace A319974.P5953396586489644452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319974.P5953396586489644452

namespace A319974

/-- `A025767(n)-∑[A001057(n)]` -/
def P5953396586489644452.Spec : Prop :=
  ∀ n, P5953396586489644452.a n = A319974 n

end A319974

/-! ## A319974.P8627421154920109362

`A008797(n)-A005044(n+1)`
-/

namespace A319974.P8627421154920109362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 n - A005044 (n + 1)

end

end A319974.P8627421154920109362

namespace A319974

/-- `A008797(n)-A005044(n+1)` -/
def P8627421154920109362.Spec : Prop :=
  ∀ n, P8627421154920109362.a n = A319974 n

end A319974

/-! ## A319974.P2765273048238147784

`A025767(n)-A000217(n)%(n+1)`
-/

namespace A319974.P2765273048238147784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 n - Int.tmod (A000217 n) (n + 1 : ℤ)

end

end A319974.P2765273048238147784

namespace A319974

/-- `A025767(n)-A000217(n)%(n+1)` -/
def P2765273048238147784.Spec : Prop :=
  ∀ n, P2765273048238147784.a n = A319974 n

end A319974

/-! ## A319974.P2906309168126218880

`A008796(n)-(A005044(n+1)+A005044(n))`
-/

namespace A319974.P2906309168126218880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 n - (A005044 (n + 1) + A005044 n)

end

end A319974.P2906309168126218880

namespace A319974

/-- `A008796(n)-(A005044(n+1)+A005044(n))` -/
def P2906309168126218880.Spec : Prop :=
  ∀ n, P2906309168126218880.a n = A319974 n

end A319974

/-! ## A319974.P5709673272125106397

`A026923(A065168(n+1))`
-/

namespace A319974.P5709673272125106397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026923 (A065168 (n + 1)).toNat

end

end A319974.P5709673272125106397

namespace A319974

/-- `A026923(A065168(n+1))` -/
def P5709673272125106397.Spec : Prop :=
  ∀ n, P5709673272125106397.a n = A319974 n

end A319974

/-! ## A319974.P988227774425608014

`A026927(A065169(n+1))`
-/

namespace A319974.P988227774425608014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026927 (A065169 (n + 1)).toNat

end

end A319974.P988227774425608014

namespace A319974

/-- `A026927(A065169(n+1))` -/
def P988227774425608014.Spec : Prop :=
  ∀ n, P988227774425608014.a n = A319974 n

end A319974

/-! ## A319974.P14607064862476326827

`A025767(n)-A127739(A007590(n)+1)%(n+1)`
-/

namespace A319974.P14607064862476326827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 n - Int.tmod (A127739 (A007590 n + 1).toNat) (n + 1 : ℤ)

end

end A319974.P14607064862476326827

namespace A319974

/-- `A025767(n)-A127739(A007590(n)+1)%(n+1)` -/
def P14607064862476326827.Spec : Prop :=
  ∀ n, P14607064862476326827.a n = A319974 n

end A319974

/-! ## A319974.P5522836712025632225

`A025767(n)-A002262((n+1)*A049206(n+1))`
-/

namespace A319974.P5522836712025632225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 n - A002262 ((n + 1 : ℤ) * A049206 (n + 1)).toNat

end

end A319974.P5522836712025632225

namespace A319974

/-- `A025767(n)-A002262((n+1)*A049206(n+1))` -/
def P5522836712025632225.Spec : Prop :=
  ∀ n, P5522836712025632225.a n = A319974 n

end A319974

/-!
# A319975: Smallest number of complexity n with respect to the operations {1, shift, multiply}.

The programs for A319975, there is no canonical definition to state claims against.
-/

/-! ## A319975.P18256353404755710093

`∑[A133179(A005811(A024631(n)))]`
-/

namespace A319975.P18256353404755710093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (A005811 (A024631 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319975.P18256353404755710093

/-! ## A319975.P5835807247471933191

`record[gcd(n+1, A336493(A336470(n+1)))]`
-/

namespace A319975.P5835807247471933191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A336493 (A336470 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319975.P5835807247471933191

/-! ## A319975.P16415313218194193143

`lt[A184997(∑[n+1]), n+1]`
-/

namespace A319975.P16415313218194193143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184997 (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A319975.P16415313218194193143

/-!
# A319978: Denominators of the Matter numbers H_6n^6n.

The programs for A319978, there is no canonical definition to state claims against.
-/

/-! ## A319978.P12714136448950416933

`lcm(7, 2*lcm(3, n)+7)`
-/

namespace A319978.P12714136448950416933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 7 (2 * Nat.lcm 3 n + 7)

end

end A319978.P12714136448950416933

/-!
# A319981: a(n) is the number of integer partitions of n with largest part <= 3 for which the index of the seaweed algebra formed by the integer partition paired with its weight is 0.

The programs for A319981, the canonical program `A319981.P8145217756245707857` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319981 has offset 1).

The definition of A319981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319981.P8145217756245707857

`round((n+2)²/∑[n])-a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319981

/-- `round((n+2)²/∑[n])-a(n-1)` -/
def P8145217756245707857.Spec : Prop :=
  ∀ n, P8145217756245707857.a n = A319981 (n + 1)

theorem P8145217756245707857.correct : P8145217756245707857.Spec := by
  intro n
  simp only [A319981, Nat.add_sub_cancel]

end A319981

/-!
# A319982: a(n) is the number of integer partitions of n with largest part <= 4 for which the index of the seaweed algebra formed by the integer partition paired with its weight is 0.

The programs for A319982, there is no canonical definition to state claims against.
-/

/-! ## A319982.P4668217306755089026

`A023416(and(2*(2*n+1), A011565(n+1)))`
-/

namespace A319982.P4668217306755089026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.land (2 * (2 * n + 1) : ℤ) (A011565 (n + 1))).toNat

end

end A319982.P4668217306755089026

/-!
# A319983: Discriminants of imaginary quadratic fields with 2 classes per genus, negated.

The programs for A319983, there is no canonical definition to state claims against.
-/

/-! ## A319983.P10704705070664516009

`eq[A034444(n+1), A191410(n+1)]+1`
-/

namespace A319983.P10704705070664516009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319983.P10704705070664516009

/-! ## A319983.P7269654625409683862

`A020725(eq[A034444(n+1), A191410(n+1)])`
-/

namespace A319983.P7269654625409683862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A319983.P7269654625409683862

/-! ## A319983.P9763372868081609598

`A056699(eq[A034444(n+1), A191410(n+1)])`
-/

namespace A319983.P9763372868081609598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A319983.P9763372868081609598

/-! ## A319983.P4400304832177143623

`A020725(eq[2*A007875(n+1), A191410(n+1)])`
-/

namespace A319983.P4400304832177143623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A319983.P4400304832177143623

/-! ## A319983.P1465942067106572033

`A056699(eq[2*A007875(n+1), A191410(n+1)])`
-/

namespace A319983.P1465942067106572033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A319983.P1465942067106572033

/-! ## A319983.P2157019072528891893

`A065475(eq[2*A007875(n+1), A191410(n+1)])`
-/

namespace A319983.P2157019072528891893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A319983.P2157019072528891893

/-! ## A319983.P8768001860276110498

`A020725(eq[2, A191410(n+1)/A007875(n+1)])`
-/

namespace A319983.P8768001860276110498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191410 (n + 1) : ℚ) / (A007875 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A319983.P8768001860276110498

/-! ## A319983.P16753659851511685667

`A056699(eq[2, A191410(n+1)/A007875(n+1)])`
-/

namespace A319983.P16753659851511685667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191410 (n + 1) : ℚ) / (A007875 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A319983.P16753659851511685667

/-! ## A319983.P7188392388209938765

`A065475(eq[2, A191410(n+1)/A007875(n+1)])`
-/

namespace A319983.P7188392388209938765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191410 (n + 1) : ℚ) / (A007875 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A319983.P7188392388209938765

/-!
# A319985: Fully multiplicative with a(p^e) = prime(p mod 12)^e.

The programs for A319985, there is no canonical definition to state claims against.
-/

/-! ## A319985.P14067316174450431042

`A064988(n+1)%A262024(A312497(n))`
-/

namespace A319985.P14067316174450431042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064988 (n + 1)) (A262024 (A312497 n).toNat)

end

end A319985.P14067316174450431042

/-!
# A319986: Fully multiplicative with a(p^e) = prime(p mod 6)^e.

The programs for A319986, there is no canonical definition to state claims against.
-/

/-! ## A319986.P9255317760983524737

`A064988(n+1)%A018785(A148568(n))`
-/

namespace A319986.P9255317760983524737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064988 (n + 1)) (A018785 (A148568 n).toNat)

end

end A319986.P9255317760983524737

/-! ## A319986.P6705306014334649006

`A319985(n+1)%A018785(A148568(n))`
-/

namespace A319986.P6705306014334649006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319985 (n + 1)) (A018785 (A148568 n).toNat)

end

end A319986.P6705306014334649006

/-! ## A319986.P1880934240956892222

`A319987(n+1)%A018785(A148568(n))`
-/

namespace A319986.P1880934240956892222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319987 (n + 1)) (A018785 (A148568 n).toNat)

end

end A319986.P1880934240956892222

/-! ## A319986.P10873806992703302431

`A064988(n+1)-A289110(A289142(n+1))`
-/

namespace A319986.P10873806992703302431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1) - A289110 (A289142 (n + 1)).toNat

end

end A319986.P10873806992703302431

/-!
# A319987: Fully multiplicative with a(p^e) = prime(p mod 8)^e.

The programs for A319987, there is no canonical definition to state claims against.
-/

/-! ## A319987.P4627280783001433566

`A064988(n+1)%A000267(A167358(n+1))`
-/

namespace A319987.P4627280783001433566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064988 (n + 1)) (A000267 (A167358 (n + 1)).toNat)

end

end A319987.P4627280783001433566

/-! ## A319987.P7408877797560218963

`A166699(n+1)%A185032(A001498(n))`
-/

namespace A319987.P7408877797560218963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166699 (n + 1)) (A185032 (A001498 n).toNat)

end

end A319987.P7408877797560218963

/-! ## A319987.P9488657872601176765

`gcd(A064988(A108951(n+1)), A166699(n+1))`
-/

namespace A319987.P9488657872601176765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064988 (A108951 (n + 1)).toNat) (A166699 (n + 1))

end

end A319987.P9488657872601176765

/-!
# A319988: a(n) = 1 if n is divisible by the square of its largest prime factor, 0 otherwise.

The programs for A319988, the canonical program `A319988.P7589903780705495911` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319988 has offset 1).

The definition of A319988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319988.P753311169907910698

`char[A070003(n+1)-1]`
-/

namespace A319988.P753311169907910698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A319988.P753311169907910698

namespace A319988

/-- `char[A070003(n+1)-1]` -/
def P753311169907910698.Spec : Prop :=
  ∀ n, (P753311169907910698.a n : ℤ) = A319988 (n + 1)

end A319988

/-! ## A319988.P3943893676771789924

`char[A253560(n+2)-1]`
-/

namespace A319988.P3943893676771789924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A319988.P3943893676771789924

namespace A319988

/-- `char[A253560(n+2)-1]` -/
def P3943893676771789924.Spec : Prop :=
  ∀ n, (P3943893676771789924.a n : ℤ) = A319988 (n + 1)

end A319988

/-! ## A319988.P3566737935966166013

`char[lt[1, A071178(n+1)]]`
-/

namespace A319988.P3566737935966166013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A319988.P3566737935966166013

namespace A319988

/-- `char[lt[1, A071178(n+1)]]` -/
def P3566737935966166013.Spec : Prop :=
  ∀ n, (P3566737935966166013.a n : ℤ) = A319988 (n + 1)

end A319988

/-! ## A319988.P6137569037888426127

`(A329607(n+1)%(n+1))%2`
-/

namespace A319988.P6137569037888426127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A329607 (n + 1)) (n + 1 : ℤ)) 2

end

end A319988.P6137569037888426127

namespace A319988

/-- `(A329607(n+1)%(n+1))%2` -/
def P6137569037888426127.Spec : Prop :=
  ∀ n, P6137569037888426127.a n = A319988 (n + 1)

end A319988

/-! ## A319988.P13800742234226493697

`char[(n+2)*A006530(n+2)-1]`
-/

namespace A319988.P13800742234226493697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A006530 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A319988.P13800742234226493697

namespace A319988

/-- `char[(n+2)*A006530(n+2)-1]` -/
def P13800742234226493697.Spec : Prop :=
  ∀ n, (P13800742234226493697.a n : ℤ) = A319988 (n + 1)

end A319988

/-! ## A319988.P7589903780705495911

`C(n+1, lcm(n+1, A006530(2*(n+1))²))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A319988

/-- `C(n+1, lcm(n+1, A006530(2*(n+1))²))` -/
def P7589903780705495911.Spec : Prop :=
  ∀ n, (P7589903780705495911.a n : ℤ) = A319988 (n + 1)

theorem P7589903780705495911.correct : P7589903780705495911.Spec := by
  intro n
  simp only [A319988, Nat.add_sub_cancel]

end A319988

/-! ## A319988.P8530375196779296507

`A056170(A053585(n+1))`
-/

namespace A319988.P8530375196779296507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A053585 (n + 1)).toNat

end

end A319988.P8530375196779296507

namespace A319988

/-- `A056170(A053585(n+1))` -/
def P8530375196779296507.Spec : Prop :=
  ∀ n, P8530375196779296507.a n = A319988 (n + 1)

end A319988

/-! ## A319988.P4046923662238972392

`A056170(A323129(n+1))`
-/

namespace A319988.P4046923662238972392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A323129 (n + 1)).toNat

end

end A319988.P4046923662238972392

namespace A319988

/-- `A056170(A323129(n+1))` -/
def P4046923662238972392.Spec : Prop :=
  ∀ n, P4046923662238972392.a n = A319988 (n + 1)

end A319988

/-! ## A319988.P1434763947825515287

`A302048(A179312(n+1))`
-/

namespace A319988.P1434763947825515287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A179312 (n + 1)).toNat

end

end A319988.P1434763947825515287

namespace A319988

/-- `A302048(A179312(n+1))` -/
def P1434763947825515287.Spec : Prop :=
  ∀ n, P1434763947825515287.a n = A319988 (n + 1)

end A319988

/-! ## A319988.P12116897264869112097

`and(A057427(n), A243287(n+1))`
-/

namespace A319988.P12116897264869112097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A243287 (n + 1))

end

end A319988.P12116897264869112097

namespace A319988

/-- `and(A057427(n), A243287(n+1))` -/
def P12116897264869112097.Spec : Prop :=
  ∀ n, P12116897264869112097.a n = A319988 (n + 1)

end A319988

/-! ## A319988.P3522018670692700724

`A071178(∏{p}[A071178(n+1), #])`
-/

namespace A319988.P3522018670692700724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A319988.P3522018670692700724

namespace A319988

/-- `A071178(∏{p}[A071178(n+1), #])` -/
def P3522018670692700724.Spec : Prop :=
  ∀ n, P3522018670692700724.a n = A319988 (n + 1)

end A319988

/-! ## A319988.P10821172929859050547

`1-A008683(A348044(n+1))²`
-/

namespace A319988.P10821172929859050547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008683 (A348044 (n + 1)).toNat ^ 2

end

end A319988.P10821172929859050547

namespace A319988

/-- `1-A008683(A348044(n+1))²` -/
def P10821172929859050547.Spec : Prop :=
  ∀ n, P10821172929859050547.a n = A319988 (n + 1)

end A319988

/-! ## A319988.P16331057948332325177

`A352894(n+2-A243074(n+1))`
-/

namespace A319988.P16331057948332325177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352894 ((n + 2 : ℤ) - A243074 (n + 1)).toNat

end

end A319988.P16331057948332325177

namespace A319988

/-- `A352894(n+2-A243074(n+1))` -/
def P16331057948332325177.Spec : Prop :=
  ∀ n, P16331057948332325177.a n = A319988 (n + 1)

end A319988

/-! ## A319988.P9880090235162939596

`A107078((n+1)/A051119(n+1))`
-/

namespace A319988.P9880090235162939596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A051119 (n + 1) : ℚ))).toNat

end

end A319988.P9880090235162939596

namespace A319988

/-- `A107078((n+1)/A051119(n+1))` -/
def P9880090235162939596.Spec : Prop :=
  ∀ n, P9880090235162939596.a n = A319988 (n + 1)

end A319988

/-! ## A319988.P14275644454809630219

`A001221((n+1)/A243074(n+1))`
-/

namespace A319988.P14275644454809630219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A243074 (n + 1) : ℚ))).toNat

end

end A319988.P14275644454809630219

namespace A319988

/-- `A001221((n+1)/A243074(n+1))` -/
def P14275644454809630219.Spec : Prop :=
  ∀ n, P14275644454809630219.a n = A319988 (n + 1)

end A319988

/-! ## A319988.P7956594219335605954

`A286471((n+1)/A051119(n+1))`
-/

namespace A319988.P7956594219335605954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A051119 (n + 1) : ℚ))).toNat

end

end A319988.P7956594219335605954

namespace A319988

/-- `A286471((n+1)/A051119(n+1))` -/
def P7956594219335605954.Spec : Prop :=
  ∀ n, P7956594219335605954.a n = A319988 (n + 1)

end A319988

/-! ## A319988.P9925316194184279850

`A398302(A053585(2*n+1-n))`
-/

namespace A319988.P9925316194184279850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398302 (A053585 (2 * n + 1 - n)).toNat

end

end A319988.P9925316194184279850

namespace A319988

/-- `A398302(A053585(2*n+1-n))` -/
def P9925316194184279850.Spec : Prop :=
  ∀ n, P9925316194184279850.a n = A319988 (n + 1)

end A319988

/-!
# A319989: a(n) = A303757(A252463(n)).

The programs for A319989, there is no canonical definition to state claims against.
-/

/-! ## A319989.P6399771425124348464

`A303757(A252463(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319989.P6399771425124348464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303757 (A252463 (n + 1)).toNat

end

end A319989.P6399771425124348464

/-! ## A319989.P4552074874367016083

`A303757(A285727(2*(n+1))-A159075(n+1))`
-/

namespace A319989.P4552074874367016083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303757 (A285727 (2 * (n + 1)) - A159075 (n + 1)).toNat

end

end A319989.P4552074874367016083

/-! ## A319989.P1133113631176615139

`A303757(A285727(2*(n+1))+A159075(n+1)*A159075(n+1))`
-/

namespace A319989.P1133113631176615139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303757 (A285727 (2 * (n + 1)) + A159075 (n + 1) * A159075 (n + 1)).toNat

end

end A319989.P1133113631176615139

/-! ## A319989.P4068227470225435631

`A008619(A046079(n+1)^A062513(n+1))`
-/

namespace A319989.P4068227470225435631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A046079 (n + 1) : ℚ) ^ (A062513 (n + 1) : ℤ))).toNat

end

end A319989.P4068227470225435631

/-! ## A319989.P8718954124915397954

`A095791(A046079(n+1)%A175125(n+2))`
-/

namespace A319989.P8718954124915397954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (Int.tmod (A046079 (n + 1)) (A175125 (n + 2))).toNat

end

end A319989.P8718954124915397954

/-!
# A319990: a(n) = Product_{d|n, d

The programs for A319990, there is no canonical definition to state claims against.
-/

/-! ## A319990.P17238815681439045219

`A293214(n+1)/(A319991(n+1)*A319992(n+1))`
-/

namespace A319990.P17238815681439045219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293214 (n + 1) : ℚ) / (A319991 (n + 1) * A319992 (n + 1) : ℚ)

end

end A319990.P17238815681439045219

/-! ## A319990.P1567262141373694256

`A177558(∏{e}[A042371(n), #])`
-/

namespace A319990.P1567262141373694256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177558 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A319990.P1567262141373694256

/-! ## A319990.P4403866440930956586

`∏{e}[A287254(n), A000384(#)]`
-/

namespace A319990.P4403866440930956586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000384 (Nat.factorization (f1 n).natAbs p)

end

end A319990.P4403866440930956586

/-! ## A319990.P7001705018610507825

`A325392(A123910(n+1)²)`
-/

namespace A319990.P7001705018610507825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325392 (A123910 (n + 1) ^ 2).toNat

end

end A319990.P7001705018610507825

/-! ## A319990.P14828960333403468060

`A000680(∏{e}[xor(n, A361912(n)), #])`
-/

namespace A319990.P14828960333403468060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A361912 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A319990.P14828960333403468060

/-!
# A319991: a(n) = Product_{d|n, d

The programs for A319991, there is no canonical definition to state claims against.
-/

/-! ## A319991.P9365811632852002116

`A293214(n+1)/(A319990(n+1)*A319992(n+1))`
-/

namespace A319991.P9365811632852002116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293214 (n + 1) : ℚ) / (A319990 (n + 1) * A319992 (n + 1) : ℚ)

end

end A319991.P9365811632852002116

/-!
# A319992: a(n) = Product_{d|n, d

The programs for A319992, there is no canonical definition to state claims against.
-/

/-! ## A319992.P9534641375671781183

`A293214(n+1)/(A319990(n+1)*A319991(n+1))`
-/

namespace A319992.P9534641375671781183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293214 (n + 1) : ℚ) / (A319990 (n + 1) * A319991 (n + 1) : ℚ)

end

end A319992.P9534641375671781183

/-! ## A319992.P18202920633209627157

`A293442(3^A293898(n+1))`
-/

namespace A319992.P18202920633209627157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A293898 (n + 1) : ℤ))).toNat

end

end A319992.P18202920633209627157

/-! ## A319992.P17631844466737320987

`A019565(A048675(2^A293898(n+1)))`
-/

namespace A319992.P17631844466737320987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A048675 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A293898 (n + 1) : ℤ))).toNat).toNat

end

end A319992.P17631844466737320987

/-! ## A319992.P9595805385200720837

`A019565(A293898(n+1)%A121745(3*(n+1)))`
-/

namespace A319992.P9595805385200720837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Int.tmod (A293898 (n + 1)) (A121745 (3 * (n + 1)))).toNat

end

end A319992.P9595805385200720837

/-! ## A319992.P3423116471243468381

`A019565(A293898(n+1)%A121877(n+1))`
-/

namespace A319992.P3423116471243468381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Int.tmod (A293898 (n + 1)) (A121877 (n + 1))).toNat

end

end A319992.P3423116471243468381

/-!
# A319993: a(n) = A319997(n) / A173557(n).

The programs for A319993, the canonical program `A319993.P711255343025282325` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319993 has offset 1).

The definition of A319993 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A319997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319993.P711255343025282325

`A319997(n+1)/A173557(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A319993

/-- `A319997(n+1)/A173557(n+1)` -/
def P711255343025282325.Spec : Prop :=
  ∀ n, P711255343025282325.a n = (A319993 (n + 1) : ℚ)

end A319993

/-! ## A319993.P8448875640836712273

`(n+1)/∏{p}[n+1, #]*A008683(and(n+1, -(n+1)))`
-/

namespace A319993.P8448875640836712273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A008683 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat : ℚ)

end

end A319993.P8448875640836712273

namespace A319993

/-- `(n+1)/∏{p}[n+1, #]*A008683(and(n+1, -(n+1)))` -/
def P8448875640836712273.Spec : Prop :=
  ∀ n, P8448875640836712273.a n = (A319993 (n + 1) : ℚ)

end A319993

/-! ## A319993.P17111524073710294769

`A349444(n+1)/abs(A349431(n+1))`
-/

namespace A319993.P17111524073710294769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349444 (n + 1) : ℚ) / (|A349431 (n + 1)| : ℚ)

end

end A319993.P17111524073710294769

namespace A319993

/-- `A349444(n+1)/abs(A349431(n+1))` -/
def P17111524073710294769.Spec : Prop :=
  ∀ n, P17111524073710294769.a n = (A319993 (n + 1) : ℚ)

end A319993

/-! ## A319993.P3584632534403182122

`∑{d}[n+1, A097945(#)*A193356((n+1)/#)]`
-/

namespace A319993.P3584632534403182122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A097945 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319993.P3584632534403182122

namespace A319993

/-- `∑{d}[n+1, A097945(#)*A193356((n+1)/#)]` -/
def P3584632534403182122.Spec : Prop :=
  ∀ n, P3584632534403182122.a n = A319993 (n + 1)

end A319993

/-! ## A319993.P15962386335719749062

`∑{d}[n+1, A000593(#)*A341635((n+1)/#)]`
-/

namespace A319993.P15962386335719749062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A341635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319993.P15962386335719749062

namespace A319993

/-- `∑{d}[n+1, A000593(#)*A341635((n+1)/#)]` -/
def P15962386335719749062.Spec : Prop :=
  ∀ n, P15962386335719749062.a n = A319993 (n + 1)

end A319993

/-! ## A319993.P7045393646149748527

`∑{d}[n+1, A276833(#)*A319997((n+1)/#)]`
-/

namespace A319993.P7045393646149748527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276833 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319993.P7045393646149748527

namespace A319993

/-- `∑{d}[n+1, A276833(#)*A319997((n+1)/#)]` -/
def P7045393646149748527.Spec : Prop :=
  ∀ n, P7045393646149748527.a n = A319993 (n + 1)

end A319993

/-! ## A319993.P11974374430562617007

`∑{d}[n+1, A326306(#)*A361019((n+1)/#)]`
-/

namespace A319993.P11974374430562617007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326306 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319993.P11974374430562617007

namespace A319993

/-- `∑{d}[n+1, A326306(#)*A361019((n+1)/#)]` -/
def P11974374430562617007.Spec : Prop :=
  ∀ n, P11974374430562617007.a n = A319993 (n + 1)

end A319993

/-! ## A319993.P737962878508122224

`∑{d}[n+1, A033999(#-1)*A300717((n+1)/#)]`
-/

namespace A319993.P737962878508122224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A300717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319993.P737962878508122224

namespace A319993

/-- `∑{d}[n+1, A033999(#-1)*A300717((n+1)/#)]` -/
def P737962878508122224.Spec : Prop :=
  ∀ n, P737962878508122224.a n = A319993 (n + 1)

end A319993

/-! ## A319993.P4723637028422836847

`A319997(n+1)/A062570(A204455(n+1))`
-/

namespace A319993.P4723637028422836847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319997 (n + 1) : ℚ) / (A062570 (A204455 (n + 1)).toNat : ℚ)

end

end A319993.P4723637028422836847

namespace A319993

/-- `A319997(n+1)/A062570(A204455(n+1))` -/
def P4723637028422836847.Spec : Prop :=
  ∀ n, P4723637028422836847.a n = (A319993 (n + 1) : ℚ)

end A319993

/-! ## A319993.P12791589069729743187

`A003557(n+1)/A000010(n+1)*A319997(n+1)`
-/

namespace A319993.P12791589069729743187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A319997 (n + 1) : ℚ)

end

end A319993.P12791589069729743187

namespace A319993

/-- `A003557(n+1)/A000010(n+1)*A319997(n+1)` -/
def P12791589069729743187.Spec : Prop :=
  ∀ n, P12791589069729743187.a n = (A319993 (n + 1) : ℚ)

end A319993

/-!
# A319995: Number of divisors of n of the form 6*k + 5.

The programs for A319995, the canonical program `A319995.P426129462257340288` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319995 has offset 1).

The definition of A319995 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035218, A279060, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319995.P426129462257340288

`A035218(n+1)-A279060(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A319995

/-- `A035218(n+1)-A279060(n+1)` -/
def P426129462257340288.Spec : Prop :=
  ∀ n, P426129462257340288.a n = A319995 (n + 1)

theorem P426129462257340288.correct : P426129462257340288.Spec := by
  intro n
  simp only [A319995, Nat.add_sub_cancel]

end A319995

/-! ## A319995.P14983642102712833104

`∑{d}[n+1, C(#%6, 5)]`
-/

namespace A319995.P14983642102712833104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (d % 6) 5

end

end A319995.P14983642102712833104

namespace A319995

/-- `∑{d}[n+1, C(#%6, 5)]` -/
def P14983642102712833104.Spec : Prop :=
  ∀ n, (P14983642102712833104.a n : ℤ) = A319995 (n + 1)

end A319995

/-! ## A319995.P13746173065033944382

`A320005(2*(n+1))`
-/

namespace A319995.P13746173065033944382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (2 * (n + 1))

end

end A319995.P13746173065033944382

namespace A319995

/-- `A320005(2*(n+1))` -/
def P13746173065033944382.Spec : Prop :=
  ∀ n, P13746173065033944382.a n = A319995 (n + 1)

end A319995

/-! ## A319995.P258497295616921350

`val(A351092(n+1), 2)`
-/

namespace A319995.P258497295616921350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A351092 (n + 1)).toNat 2

end

end A319995.P258497295616921350

namespace A319995

/-- `val(A351092(n+1), 2)` -/
def P258497295616921350.Spec : Prop :=
  ∀ n, (P258497295616921350.a n : ℤ) = A319995 (n + 1)

end A319995

/-! ## A319995.P18012698427290025261

`A001822((n+1)/2^val(n+1, 2))`
-/

namespace A319995.P18012698427290025261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A319995.P18012698427290025261

namespace A319995

/-- `A001822((n+1)/2^val(n+1, 2))` -/
def P18012698427290025261.Spec : Prop :=
  ∀ n, P18012698427290025261.a n = A319995 (n + 1)

end A319995

/-! ## A319995.P14351552246119060458

`A001822(A000265(n+1))`
-/

namespace A319995.P14351552246119060458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (A000265 (n + 1)).toNat

end

end A319995.P14351552246119060458

namespace A319995

/-- `A001822(A000265(n+1))` -/
def P14351552246119060458.Spec : Prop :=
  ∀ n, P14351552246119060458.a n = A319995 (n + 1)

end A319995

/-! ## A319995.P998456093896256365

`A001822(A065330(n+1))`
-/

namespace A319995.P998456093896256365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (A065330 (n + 1)).toNat

end

end A319995.P998456093896256365

namespace A319995

/-- `A001822(A065330(n+1))` -/
def P998456093896256365.Spec : Prop :=
  ∀ n, P998456093896256365.a n = A319995 (n + 1)

end A319995

/-! ## A319995.P11992938509603894170

`A359325(A003602(n+1))`
-/

namespace A319995.P11992938509603894170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359325 (A003602 (n + 1)).toNat

end

end A319995.P11992938509603894170

namespace A319995

/-- `A359325(A003602(n+1))` -/
def P11992938509603894170.Spec : Prop :=
  ∀ n, P11992938509603894170.a n = A319995 (n + 1)

end A319995

/-! ## A319995.P15108018466024581719

`A279060(n+1)-A035178(n+1)`
-/

namespace A319995.P15108018466024581719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (n + 1) - A035178 (n + 1)

end

end A319995.P15108018466024581719

namespace A319995

/-- `A279060(n+1)-A035178(n+1)` -/
def P15108018466024581719.Spec : Prop :=
  ∀ n, P15108018466024581719.a n = A319995 (n + 1)

end A319995

/-! ## A319995.P4831203419375639760

`A035218(n+1)-A320001(2*(n+1))`
-/

namespace A319995.P4831203419375639760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (n + 1) - A320001 (2 * (n + 1))

end

end A319995.P4831203419375639760

namespace A319995

/-- `A035218(n+1)-A320001(2*(n+1))` -/
def P4831203419375639760.Spec : Prop :=
  ∀ n, P4831203419375639760.a n = A319995 (n + 1)

end A319995

/-! ## A319995.P6410782293147749989

`A293896(2*(n+1))-A293895(n+1)`
-/

namespace A319995.P6410782293147749989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293896 (2 * (n + 1)) - A293895 (n + 1)

end

end A319995.P6410782293147749989

namespace A319995

/-- `A293896(2*(n+1))-A293895(n+1)` -/
def P6410782293147749989.Spec : Prop :=
  ∀ n, P6410782293147749989.a n = A319995 (n + 1)

end A319995

/-! ## A319995.P17786468748566780091

`A320015(2*(n+1))-A279060(n+1)`
-/

namespace A319995.P17786468748566780091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320015 (2 * (n + 1)) - A279060 (n + 1)

end

end A319995.P17786468748566780091

namespace A319995

/-- `A320015(2*(n+1))-A279060(n+1)` -/
def P17786468748566780091.Spec : Prop :=
  ∀ n, P17786468748566780091.a n = A319995 (n + 1)

end A319995

/-! ## A319995.P9426876500044405262

`(A001822(n+1)-A364014(n+1))/2`
-/

namespace A319995.P9426876500044405262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001822 (n + 1) - A364014 (n + 1) : ℚ) / 2

end

end A319995.P9426876500044405262

namespace A319995

/-- `(A001822(n+1)-A364014(n+1))/2` -/
def P9426876500044405262.Spec : Prop :=
  ∀ n, P9426876500044405262.a n = (A319995 (n + 1) : ℚ)

end A319995

/-! ## A319995.P14118450299296910850

`A320015(2*(n+1))-A320001(2*(n+1))`
-/

namespace A319995.P14118450299296910850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320015 (2 * (n + 1)) - A320001 (2 * (n + 1))

end

end A319995.P14118450299296910850

namespace A319995

/-- `A320015(2*(n+1))-A320001(2*(n+1))` -/
def P14118450299296910850.Spec : Prop :=
  ∀ n, P14118450299296910850.a n = A319995 (n + 1)

end A319995

/-! ## A319995.P10070447104781378690

`A320015(n+1)+A232991(n)-A279060(n+1)`
-/

namespace A319995.P10070447104781378690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320015 (n + 1) + (A232991 n - A279060 (n + 1))

end

end A319995.P10070447104781378690

namespace A319995

/-- `A320015(n+1)+A232991(n)-A279060(n+1)` -/
def P10070447104781378690.Spec : Prop :=
  ∀ n, P10070447104781378690.a n = A319995 (n + 1)

end A319995

/-! ## A319995.P3615471892117734688

`val(A319992(2*(n+1)), 2)`
-/

namespace A319995.P3615471892117734688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319992 (2 * (n + 1))).toNat 2

end

end A319995.P3615471892117734688

namespace A319995

/-- `val(A319992(2*(n+1)), 2)` -/
def P3615471892117734688.Spec : Prop :=
  ∀ n, (P3615471892117734688.a n : ℤ) = A319995 (n + 1)

end A319995

/-! ## A319995.P2546024526748649945

`A001822(A028234(2*(n+1)))`
-/

namespace A319995.P2546024526748649945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (A028234 (2 * (n + 1))).toNat

end

end A319995.P2546024526748649945

namespace A319995

/-- `A001822(A028234(2*(n+1)))` -/
def P2546024526748649945.Spec : Prop :=
  ∀ n, P2546024526748649945.a n = A319995 (n + 1)

end A319995

/-! ## A319995.P9295231470182204422

`A001822(2*(n+1))-A001817(n+1)`
-/

namespace A319995.P9295231470182204422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (2 * (n + 1)) - A001817 (n + 1)

end

end A319995.P9295231470182204422

namespace A319995

/-- `A001822(2*(n+1))-A001817(n+1)` -/
def P9295231470182204422.Spec : Prop :=
  ∀ n, P9295231470182204422.a n = A319995 (n + 1)

end A319995

/-! ## A319995.P11653227440221369913

`A364204(n+1)-A364205(2*(n+1))`
-/

namespace A319995.P11653227440221369913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364204 (n + 1) - A364205 (2 * (n + 1))

end

end A319995.P11653227440221369913

namespace A319995

/-- `A364204(n+1)-A364205(2*(n+1))` -/
def P11653227440221369913.Spec : Prop :=
  ∀ n, P11653227440221369913.a n = A319995 (n + 1)

end A319995

/-! ## A319995.P7151506813229554942

`A293896(6*(n+1)/A006519(2*(n+1)))`
-/

namespace A319995.P7151506813229554942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293896 (SequenceMachineLib.roundAway ((6 * (n + 1) : ℚ) / (A006519 (2 * (n + 1)) : ℚ))).toNat

end

end A319995.P7151506813229554942

namespace A319995

/-- `A293896(6*(n+1)/A006519(2*(n+1)))` -/
def P7151506813229554942.Spec : Prop :=
  ∀ n, P7151506813229554942.a n = A319995 (n + 1)

end A319995

/-!
# A319997: a(n) = Sum_{d|n, d is odd} mu(n/d)*d, where mu(n) is Moebius function A008683.

The programs for A319997, the canonical program `A319997.P3728645225630001544` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319997 has offset 1).

The definition of A319997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319997.P3677419646567552614

`A000010(n+1)-A319998(n+1)`
-/

namespace A319997.P3677419646567552614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A319998 (n + 1)

end

end A319997.P3677419646567552614

namespace A319997

/-- `A000010(n+1)-A319998(n+1)` -/
def P3677419646567552614.Spec : Prop :=
  ∀ n, P3677419646567552614.a n = A319997 (n + 1)

theorem P3677419646567552614.correct : P3677419646567552614.Spec := by
  intro n
  simp only [A319997, Nat.add_sub_cancel, A319997.P3677419646567552614.a, A319997.P3728645225630001544.a, A000010, A000010.P4673923239450215316.a, A043529, A043529.P13978693915657788930.a, A319998, A319998.P4025482794031375230.a, A349444, A349444.P9210141452199048946.f1, A349444.P9210141452199048946.a, A003557, A003557.P6364735403900941810.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A036987, A036987.P1789601236562705309.a, A113415, A113415.P5418094861117166692.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A001511, A001511.P17146462531039486101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P18254306604665478110.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A349371, A349371.P16064680490200094377.f1, A349371.P16064680490200094377.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A006519, A006519.P10435570611646570274.a, A059841, A059841.P7264174615531153985.a, A088705, A088705.P12224062743589857877.f1, A088705.P12224062743589857877.a, A132971, A132971.P9197609016375066540.a, A140472, A140472.P15813874920454231005.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319997

/-! ## A319997.P10612794804607768085

`∑{d}[n+1, #*A361019((n+1)/#)]`
-/

namespace A319997.P10612794804607768085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319997.P10612794804607768085

namespace A319997

/-- `∑{d}[n+1, #*A361019((n+1)/#)]` -/
def P10612794804607768085.Spec : Prop :=
  ∀ n, P10612794804607768085.a n = A319997 (n + 1)

end A319997

/-! ## A319997.P8274069985833480111

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A008683(and(n+1, -(n+1)))`
-/

namespace A319997.P8274069985833480111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A008683 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat : ℚ)

end

end A319997.P8274069985833480111

namespace A319997

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A008683(and(n+1, -(n+1)))` -/
def P8274069985833480111.Spec : Prop :=
  ∀ n, P8274069985833480111.a n = (A319997 (n + 1) : ℚ)

end A319997

/-! ## A319997.P3728645225630001544

`A043529(n)*A349444(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A319997

/-- `A043529(n)*A349444(n+1)` -/
def P3728645225630001544.Spec : Prop :=
  ∀ n, P3728645225630001544.a n = A319997 (n + 1)

theorem P3728645225630001544.correct : P3728645225630001544.Spec := by
  intro n
  simp only [A319997, Nat.add_sub_cancel]

end A319997

/-! ## A319997.P6934082903132726005

`A152765(n)*A349444(n+1)`
-/

namespace A319997.P6934082903132726005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152765 n * A349444 (n + 1)

end

end A319997.P6934082903132726005

namespace A319997

/-- `A152765(n)*A349444(n+1)` -/
def P6934082903132726005.Spec : Prop :=
  ∀ n, P6934082903132726005.a n = A319997 (n + 1)

end A319997

/-! ## A319997.P16027726474488155673

`Δ[A002088(n)]-A319998(n+1)`
-/

namespace A319997.P16027726474488155673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A319998 (n + 1)

end

end A319997.P16027726474488155673

namespace A319997

/-- `Δ[A002088(n)]-A319998(n+1)` -/
def P16027726474488155673.Spec : Prop :=
  ∀ n, P16027726474488155673.a n = A319997 (n + 1)

end A319997

/-! ## A319997.P17915638286717963734

`Δ[A005728(n)]-A319998(n+1)`
-/

namespace A319997.P17915638286717963734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A319998 (n + 1)

end

end A319997.P17915638286717963734

namespace A319997

/-- `Δ[A005728(n)]-A319998(n+1)` -/
def P17915638286717963734.Spec : Prop :=
  ∀ n, P17915638286717963734.a n = A319997 (n + 1)

end A319997

/-! ## A319997.P4502964282727337178

`A325596(n+1)+A319998(n+1)`
-/

namespace A319997.P4502964282727337178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325596 (n + 1) + A319998 (n + 1)

end

end A319997.P4502964282727337178

namespace A319997

/-- `A325596(n+1)+A319998(n+1)` -/
def P4502964282727337178.Spec : Prop :=
  ∀ n, P4502964282727337178.a n = A319997 (n + 1)

theorem P4502964282727337178.correct : P4502964282727337178.Spec := by
  intro n
  simp only [A319997, Nat.add_sub_cancel, A319997.P4502964282727337178.a, A319997.P3728645225630001544.a, A043529, A043529.P13978693915657788930.a, A319998, A319998.P4025482794031375230.a, A325596, A325596.P461061139706742604.a, A349444, A349444.P9210141452199048946.f1, A349444.P9210141452199048946.a, A000010, A000010.P4673923239450215316.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A036987, A036987.P1789601236562705309.a, A113415, A113415.P5418094861117166692.a, A001511, A001511.P17146462531039486101.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P18254306604665478110.a, A173557, A173557.P15666735857375843373.a, A349371, A349371.P16064680490200094377.f1, A349371.P16064680490200094377.a, A001221, A001221.P10258181745752134128.a, A006519, A006519.P10435570611646570274.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A088705, A088705.P12224062743589857877.f1, A088705.P12224062743589857877.a, A132971, A132971.P9197609016375066540.a, A140472, A140472.P15813874920454231005.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319997

/-! ## A319997.P1523353864740704612

`A173557(n+1)*A319993(n+1)`
-/

namespace A319997.P1523353864740704612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A319993 (n + 1)

end

end A319997.P1523353864740704612

namespace A319997

/-- `A173557(n+1)*A319993(n+1)` -/
def P1523353864740704612.Spec : Prop :=
  ∀ n, P1523353864740704612.a n = A319997 (n + 1)

end A319997

/-! ## A319997.P14361703574117639335

`A185049(n+1)*A349444(n+1)`
-/

namespace A319997.P14361703574117639335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185049 (n + 1) * A349444 (n + 1)

end

end A319997.P14361703574117639335

namespace A319997

/-- `A185049(n+1)*A349444(n+1)` -/
def P14361703574117639335.Spec : Prop :=
  ∀ n, P14361703574117639335.a n = A319997 (n + 1)

end A319997

/-! ## A319997.P9329123812551085190

`(2-A036987(n))*A349444(n+1)`
-/

namespace A319997.P9329123812551085190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A036987 n) * A349444 (n + 1)

end

end A319997.P9329123812551085190

namespace A319997

/-- `(2-A036987(n))*A349444(n+1)` -/
def P9329123812551085190.Spec : Prop :=
  ∀ n, P9329123812551085190.a n = A319997 (n + 1)

end A319997

/-! ## A319997.P2418166799226469215

`A039649(n+1)-(A319998(n+1)+1)`
-/

namespace A319997.P2418166799226469215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A319998 (n + 1) + 1)

end

end A319997.P2418166799226469215

namespace A319997

/-- `A039649(n+1)-(A319998(n+1)+1)` -/
def P2418166799226469215.Spec : Prop :=
  ∀ n, P2418166799226469215.a n = A319997 (n + 1)

theorem P2418166799226469215.correct : P2418166799226469215.Spec := by
  intro n
  simp only [A319997, Nat.add_sub_cancel, A319997.P2418166799226469215.a, A319997.P3728645225630001544.a, A039649, A039649.P16717312505280968063.a, A043529, A043529.P13978693915657788930.a, A319998, A319998.P4025482794031375230.a, A349444, A349444.P9210141452199048946.f1, A349444.P9210141452199048946.a, A000010, A000010.P4673923239450215316.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A036987, A036987.P1789601236562705309.a, A113415, A113415.P5418094861117166692.a, A001511, A001511.P17146462531039486101.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P18254306604665478110.a, A173557, A173557.P15666735857375843373.a, A349371, A349371.P16064680490200094377.f1, A349371.P16064680490200094377.a, A001221, A001221.P10258181745752134128.a, A006519, A006519.P10435570611646570274.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A088705, A088705.P12224062743589857877.f1, A088705.P12224062743589857877.a, A132971, A132971.P9197609016375066540.a, A140472, A140472.P15813874920454231005.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319997

/-! ## A319997.P6963227482095840322

`(A325596(n+1)+A000010(n+1))/2`
-/

namespace A319997.P6963227482095840322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325596 (n + 1) + A000010 (n + 1) : ℚ) / 2

end

end A319997.P6963227482095840322

namespace A319997

/-- `(A325596(n+1)+A000010(n+1))/2` -/
def P6963227482095840322.Spec : Prop :=
  ∀ n, P6963227482095840322.a n = (A319997 (n + 1) : ℚ)

theorem P6963227482095840322.correct : P6963227482095840322.Spec := by
  intro n
  simp only [A319997, Nat.add_sub_cancel, A319997.P6963227482095840322.a, A319997.P3728645225630001544.a, A000010, A000010.P4673923239450215316.a, A043529, A043529.P13978693915657788930.a, A325596, A325596.P461061139706742604.a, A349444, A349444.P9210141452199048946.f1, A349444.P9210141452199048946.a, A003557, A003557.P6364735403900941810.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A036987, A036987.P1789601236562705309.a, A113415, A113415.P5418094861117166692.a, A173557, A173557.P15666735857375843373.a, A319998, A319998.P4025482794031375230.a, A001221, A001221.P10258181745752134128.a, A001511, A001511.P17146462531039486101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P18254306604665478110.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A349371, A349371.P16064680490200094377.f1, A349371.P16064680490200094377.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A006519, A006519.P10435570611646570274.a, A059841, A059841.P7264174615531153985.a, A088705, A088705.P12224062743589857877.f1, A088705.P12224062743589857877.a, A132971, A132971.P9197609016375066540.a, A140472, A140472.P15813874920454231005.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319997

/-! ## A319997.P9040859596997574103

`2*A326305(n+1)-A000010(n+1)`
-/

namespace A319997.P9040859596997574103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326305 (n + 1) - A000010 (n + 1)

end

end A319997.P9040859596997574103

namespace A319997

/-- `2*A326305(n+1)-A000010(n+1)` -/
def P9040859596997574103.Spec : Prop :=
  ∀ n, P9040859596997574103.a n = A319997 (n + 1)

end A319997

/-! ## A319997.P4244084377597174130

`2*A000010(n+1)-A345082(n+1)`
-/

namespace A319997.P4244084377597174130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1) - A345082 (n + 1)

end

end A319997.P4244084377597174130

namespace A319997

/-- `2*A000010(n+1)-A345082(n+1)` -/
def P4244084377597174130.Spec : Prop :=
  ∀ n, P4244084377597174130.a n = A319997 (n + 1)

theorem P4244084377597174130.correct : P4244084377597174130.Spec := by
  intro n
  simp only [A319997, Nat.add_sub_cancel, A319997.P4244084377597174130.a, A319997.P3728645225630001544.a, A000010, A000010.P4673923239450215316.a, A043529, A043529.P13978693915657788930.a, A345082, A345082.P16266768967040016348.a, A349444, A349444.P9210141452199048946.f1, A349444.P9210141452199048946.a, A003557, A003557.P6364735403900941810.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A036987, A036987.P1789601236562705309.a, A113415, A113415.P5418094861117166692.a, A173557, A173557.P15666735857375843373.a, A319998, A319998.P4025482794031375230.a, A001221, A001221.P10258181745752134128.a, A001511, A001511.P17146462531039486101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P18254306604665478110.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A349371, A349371.P16064680490200094377.f1, A349371.P16064680490200094377.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A006519, A006519.P10435570611646570274.a, A059841, A059841.P7264174615531153985.a, A088705, A088705.P12224062743589857877.f1, A088705.P12224062743589857877.a, A132971, A132971.P9197609016375066540.a, A140472, A140472.P15813874920454231005.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319997

/-! ## A319997.P16503865583984017652

`A319998(2*(n+1))-A345082(n+1)`
-/

namespace A319997.P16503865583984017652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (2 * (n + 1)) - A345082 (n + 1)

end

end A319997.P16503865583984017652

namespace A319997

/-- `A319998(2*(n+1))-A345082(n+1)` -/
def P16503865583984017652.Spec : Prop :=
  ∀ n, P16503865583984017652.a n = A319997 (n + 1)

end A319997

/-! ## A319997.P9025091318006915768

`A326305(n+1)-A319998(n+1)/2`
-/

namespace A319997.P9025091318006915768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326305 (n + 1) : ℚ) - (A319998 (n + 1) : ℚ) / 2

end

end A319997.P9025091318006915768

namespace A319997

/-- `A326305(n+1)-A319998(n+1)/2` -/
def P9025091318006915768.Spec : Prop :=
  ∀ n, P9025091318006915768.a n = (A319997 (n + 1) : ℚ)

end A319997

/-! ## A319997.P15891927707014284470

`A000010(n+1)*A008683(gcd(n+1, n-3))`
-/

namespace A319997.P15891927707014284470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A008683 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 3))

end

end A319997.P15891927707014284470

namespace A319997

/-- `A000010(n+1)*A008683(gcd(n+1, n-3))` -/
def P15891927707014284470.Spec : Prop :=
  ∀ n, P15891927707014284470.a n = A319997 (n + 1)

end A319997

/-! ## A319997.P8692050200472392949

`∑{d}[n+1, A000593(#)*A007427((n+1)/#)]`
-/

namespace A319997.P8692050200472392949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319997.P8692050200472392949

namespace A319997

/-- `∑{d}[n+1, A000593(#)*A007427((n+1)/#)]` -/
def P8692050200472392949.Spec : Prop :=
  ∀ n, P8692050200472392949.a n = A319997 (n + 1)

end A319997

/-! ## A319997.P12057600461332360533

`∑{d}[n+1, A007432(#)*A048272((n+1)/#)]`
-/

namespace A319997.P12057600461332360533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A048272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319997.P12057600461332360533

namespace A319997

/-- `∑{d}[n+1, A007432(#)*A048272((n+1)/#)]` -/
def P12057600461332360533.Spec : Prop :=
  ∀ n, P12057600461332360533.a n = A319997 (n + 1)

end A319997

/-!
# A319998: a(n) = Sum_{d|n, d is even} mu(n/d)*d, where mu(n) is Moebius function A008683.

The programs for A319998, the canonical program `A319998.P4025482794031375230` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319998 has offset 1).

The definition of A319998 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A319997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319998.P4025482794031375230

`A000010(n+1)-A319997(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A319998

/-- `A000010(n+1)-A319997(n+1)` -/
def P4025482794031375230.Spec : Prop :=
  ∀ n, P4025482794031375230.a n = A319998 (n + 1)

theorem P4025482794031375230.correct : P4025482794031375230.Spec := by
  intro n
  simp only [A319998, Nat.add_sub_cancel]

end A319998

/-! ## A319998.P1621608763443648611

`2*and(1, n)*A000010(floor(n/2)+1)`
-/

namespace A319998.P1621608763443648611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 n : ℤ) * A000010 (⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A319998.P1621608763443648611

namespace A319998

/-- `2*and(1, n)*A000010(floor(n/2)+1)` -/
def P1621608763443648611.Spec : Prop :=
  ∀ n, P1621608763443648611.a n = A319998 (n + 1)

end A319998

/-! ## A319998.P12222806077105446119

`A345082(n+1)-Δ[A002088(n)]`
-/

namespace A319998.P12222806077105446119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345082 (n + 1) - (f1 (n + 1) - f1 n)

end

end A319998.P12222806077105446119

namespace A319998

/-- `A345082(n+1)-Δ[A002088(n)]` -/
def P12222806077105446119.Spec : Prop :=
  ∀ n, P12222806077105446119.a n = A319998 (n + 1)

end A319998

/-! ## A319998.P460919916733584951

`A345082(n+1)-Δ[A005728(n)]`
-/

namespace A319998.P460919916733584951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345082 (n + 1) - (f1 (n + 1) - f1 n)

end

end A319998.P460919916733584951

namespace A319998

/-- `A345082(n+1)-Δ[A005728(n)]` -/
def P460919916733584951.Spec : Prop :=
  ∀ n, P460919916733584951.a n = A319998 (n + 1)

end A319998

/-! ## A319998.P1620035700647898675

`A062570(n+1)-A080736(n+1)`
-/

namespace A319998.P1620035700647898675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1) - A080736 (n + 1)

end

end A319998.P1620035700647898675

namespace A319998

/-- `A062570(n+1)-A080736(n+1)` -/
def P1620035700647898675.Spec : Prop :=
  ∀ n, P1620035700647898675.a n = A319998 (n + 1)

end A319998

/-! ## A319998.P10523457257981460629

`A345082(n+1)-A000010(n+1)`
-/

namespace A319998.P10523457257981460629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345082 (n + 1) - A000010 (n + 1)

end

end A319998.P10523457257981460629

namespace A319998

/-- `A345082(n+1)-A000010(n+1)` -/
def P10523457257981460629.Spec : Prop :=
  ∀ n, P10523457257981460629.a n = A319998 (n + 1)

theorem P10523457257981460629.correct : P10523457257981460629.Spec := by
  intro n
  simp only [A319998, Nat.add_sub_cancel, A319998.P10523457257981460629.a, A319998.P4025482794031375230.a, A000010, A000010.P4673923239450215316.a, A319997, A319997.P3728645225630001544.a, A345082, A345082.P16266768967040016348.a, A003557, A003557.P6364735403900941810.a, A043529, A043529.P13978693915657788930.a, A173557, A173557.P15666735857375843373.a, A349444, A349444.P9210141452199048946.f1, A349444.P9210141452199048946.a, A001221, A001221.P10258181745752134128.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A036987, A036987.P1789601236562705309.a, A113415, A113415.P5418094861117166692.a, A001511, A001511.P17146462531039486101.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008683, A008683.P18254306604665478110.a, A059841, A059841.P7264174615531153985.a, A349371, A349371.P16064680490200094377.f1, A349371.P16064680490200094377.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319998

/-! ## A319998.P17278635010927859239

`A126246(n+1)-A326305(n+1)`
-/

namespace A319998.P17278635010927859239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126246 (n + 1) - A326305 (n + 1)

end

end A319998.P17278635010927859239

namespace A319998

/-- `A126246(n+1)-A326305(n+1)` -/
def P17278635010927859239.Spec : Prop :=
  ∀ n, P17278635010927859239.a n = A319998 (n + 1)

end A319998

/-! ## A319998.P14305429535273345198

`A319997(n+1)-A325596(n+1)`
-/

namespace A319998.P14305429535273345198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (n + 1) - A325596 (n + 1)

end

end A319998.P14305429535273345198

namespace A319998

/-- `A319997(n+1)-A325596(n+1)` -/
def P14305429535273345198.Spec : Prop :=
  ∀ n, P14305429535273345198.a n = A319998 (n + 1)

theorem P14305429535273345198.correct : P14305429535273345198.Spec := by
  intro n
  simp only [A319998, Nat.add_sub_cancel, A319998.P14305429535273345198.a, A319998.P4025482794031375230.a, A000010, A000010.P4673923239450215316.a, A319997, A319997.P3728645225630001544.a, A325596, A325596.P461061139706742604.a, A003557, A003557.P6364735403900941810.a, A043529, A043529.P13978693915657788930.a, A173557, A173557.P15666735857375843373.a, A349444, A349444.P9210141452199048946.f1, A349444.P9210141452199048946.a, A001221, A001221.P10258181745752134128.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A036987, A036987.P1789601236562705309.a, A113415, A113415.P5418094861117166692.a, A001511, A001511.P17146462531039486101.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008683, A008683.P18254306604665478110.a, A059841, A059841.P7264174615531153985.a, A349371, A349371.P16064680490200094377.f1, A349371.P16064680490200094377.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319998

/-! ## A319998.P219025414836646145

`A000010(2*(n+1))-A080736(n+1)`
-/

namespace A319998.P219025414836646145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) - A080736 (n + 1)

end

end A319998.P219025414836646145

namespace A319998

/-- `A000010(2*(n+1))-A080736(n+1)` -/
def P219025414836646145.Spec : Prop :=
  ∀ n, P219025414836646145.a n = A319998 (n + 1)

end A319998

/-! ## A319998.P18120016978208108523

`2*(A126246(n+1)-A000010(n+1))`
-/

namespace A319998.P18120016978208108523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A126246 (n + 1) - A000010 (n + 1))

end

end A319998.P18120016978208108523

namespace A319998

/-- `2*(A126246(n+1)-A000010(n+1))` -/
def P18120016978208108523.Spec : Prop :=
  ∀ n, P18120016978208108523.a n = A319998 (n + 1)

end A319998

/-! ## A319998.P6756692507993052282

`2*(A000010(n+1)-A326305(n+1))`
-/

namespace A319998.P6756692507993052282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000010 (n + 1) - A326305 (n + 1))

end

end A319998.P6756692507993052282

namespace A319998

/-- `2*(A000010(n+1)-A326305(n+1))` -/
def P6756692507993052282.Spec : Prop :=
  ∀ n, P6756692507993052282.a n = A319998 (n + 1)

end A319998

/-! ## A319998.P5753887559045646147

`(A000010(n+1)-A325596(n+1))/2`
-/

namespace A319998.P5753887559045646147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - A325596 (n + 1) : ℚ) / 2

end

end A319998.P5753887559045646147

namespace A319998

/-- `(A000010(n+1)-A325596(n+1))/2` -/
def P5753887559045646147.Spec : Prop :=
  ∀ n, P5753887559045646147.a n = (A319998 (n + 1) : ℚ)

theorem P5753887559045646147.correct : P5753887559045646147.Spec := by
  intro n
  simp only [A319998, Nat.add_sub_cancel, A319998.P5753887559045646147.a, A319998.P4025482794031375230.a, A000010, A000010.P4673923239450215316.a, A319997, A319997.P3728645225630001544.a, A325596, A325596.P461061139706742604.a, A003557, A003557.P6364735403900941810.a, A043529, A043529.P13978693915657788930.a, A173557, A173557.P15666735857375843373.a, A349444, A349444.P9210141452199048946.f1, A349444.P9210141452199048946.a, A001221, A001221.P10258181745752134128.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A036987, A036987.P1789601236562705309.a, A113415, A113415.P5418094861117166692.a, A001511, A001511.P17146462531039486101.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008683, A008683.P18254306604665478110.a, A059841, A059841.P7264174615531153985.a, A349371, A349371.P16064680490200094377.f1, A349371.P16064680490200094377.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319998

/-! ## A319998.P6755295111829390990

`(A345082(n+1)-A319997(n+1))/2`
-/

namespace A319998.P6755295111829390990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345082 (n + 1) - A319997 (n + 1) : ℚ) / 2

end

end A319998.P6755295111829390990

namespace A319998

/-- `(A345082(n+1)-A319997(n+1))/2` -/
def P6755295111829390990.Spec : Prop :=
  ∀ n, P6755295111829390990.a n = (A319998 (n + 1) : ℚ)

theorem P6755295111829390990.correct : P6755295111829390990.Spec := by
  intro n
  simp only [A319998, Nat.add_sub_cancel, A319998.P6755295111829390990.a, A319998.P4025482794031375230.a, A000010, A000010.P4673923239450215316.a, A319997, A319997.P3728645225630001544.a, A345082, A345082.P16266768967040016348.a, A003557, A003557.P6364735403900941810.a, A043529, A043529.P13978693915657788930.a, A173557, A173557.P15666735857375843373.a, A349444, A349444.P9210141452199048946.f1, A349444.P9210141452199048946.a, A001221, A001221.P10258181745752134128.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A036987, A036987.P1789601236562705309.a, A113415, A113415.P5418094861117166692.a, A001511, A001511.P17146462531039486101.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008683, A008683.P18254306604665478110.a, A059841, A059841.P7264174615531153985.a, A349371, A349371.P16064680490200094377.f1, A349371.P16064680490200094377.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319998

/-! ## A319998.P13460204521713668811

`A000010(n+1)*A001222(gcd(n+3, 1-n))`
-/

namespace A319998.P13460204521713668811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001222 (Int.gcd (n + 3 : ℤ) (1 - (n : ℤ)))

end

end A319998.P13460204521713668811

namespace A319998

/-- `A000010(n+1)*A001222(gcd(n+3, 1-n))` -/
def P13460204521713668811.Spec : Prop :=
  ∀ n, P13460204521713668811.a n = A319998 (n + 1)

end A319998

/-! ## A319998.P11257322324516822070

`∑{d}[n+1, A007427(#)*A146076((n+1)/#)]`
-/

namespace A319998.P11257322324516822070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A146076 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319998.P11257322324516822070

namespace A319998

/-- `∑{d}[n+1, A007427(#)*A146076((n+1)/#)]` -/
def P11257322324516822070.Spec : Prop :=
  ∀ n, P11257322324516822070.a n = A319998 (n + 1)

end A319998

/-! ## A319998.P2307717750185270572

`∑{d}[n+1, A109043(#)*A292273((n+1)/#)]`
-/

namespace A319998.P2307717750185270572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109043 d * A292273 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319998.P2307717750185270572

namespace A319998

/-- `∑{d}[n+1, A109043(#)*A292273((n+1)/#)]` -/
def P2307717750185270572.Spec : Prop :=
  ∀ n, P2307717750185270572.a n = A319998 (n + 1)

end A319998

/-! ## A319998.P7201980856077986934

`(1-A008683(gcd(n+1, n-3)))*A000010(n+1)`
-/

namespace A319998.P7201980856077986934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A008683 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 3))) * A000010 (n + 1)

end

end A319998.P7201980856077986934

namespace A319998

/-- `(1-A008683(gcd(n+1, n-3)))*A000010(n+1)` -/
def P7201980856077986934.Spec : Prop :=
  ∀ n, P7201980856077986934.a n = A319998 (n + 1)

end A319998

/-! ## A319998.P11322445954050568921

`A000010(A262610(n+1))*A010673(n)`
-/

namespace A319998.P11322445954050568921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A262610 (n + 1)).toNat * A010673 n

end

end A319998.P11322445954050568921

namespace A319998

/-- `A000010(A262610(n+1))*A010673(n)` -/
def P11322445954050568921.Spec : Prop :=
  ∀ n, P11322445954050568921.a n = A319998 (n + 1)

end A319998

/-! ## A319998.P637112799159518115

`A003557(n+1)*A173557(n+1)-A319997(n+1)`
-/

namespace A319998.P637112799159518115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A173557 (n + 1) - A319997 (n + 1)

end

end A319998.P637112799159518115

namespace A319998

/-- `A003557(n+1)*A173557(n+1)-A319997(n+1)` -/
def P637112799159518115.Spec : Prop :=
  ∀ n, P637112799159518115.a n = A319998 (n + 1)

theorem P637112799159518115.correct : P637112799159518115.Spec := by
  intro n
  simp only [A319998, Nat.add_sub_cancel, A319998.P637112799159518115.a, A319998.P4025482794031375230.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A319997, A319997.P3728645225630001544.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A043529, A043529.P13978693915657788930.a, A349444, A349444.P9210141452199048946.f1, A349444.P9210141452199048946.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A036987, A036987.P1789601236562705309.a, A059841, A059841.P7264174615531153985.a, A113415, A113415.P5418094861117166692.a, A001511, A001511.P17146462531039486101.a, A008683, A008683.P18254306604665478110.a, A349371, A349371.P16064680490200094377.f1, A349371.P16064680490200094377.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319998

/-! ## A319998.P3515031028487380741

`(A003557(n+1)-A319993(n+1))*A173557(n+1)`
-/

namespace A319998.P3515031028487380741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) - A319993 (n + 1)) * A173557 (n + 1)

end

end A319998.P3515031028487380741

namespace A319998

/-- `(A003557(n+1)-A319993(n+1))*A173557(n+1)` -/
def P3515031028487380741.Spec : Prop :=
  ∀ n, P3515031028487380741.a n = A319998 (n + 1)

end A319998

