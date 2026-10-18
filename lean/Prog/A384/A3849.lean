import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A384901: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384896.

The programs for A384901, there is no canonical definition to state claims against.
-/

/-! ## A384901.P2064505959783363331

`A384903(n)%A384867(2*(n+1))`
-/

namespace A384901.P2064505959783363331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384903 n) (A384867 (2 * (n + 1)))

end

end A384901.P2064505959783363331

/-! ## A384901.P10478268294144426975

`lcm(A008683(A291219(n)), A379599(n))`
-/

namespace A384901.P10478268294144426975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A291219 n).toNat) (A379599 n)

end

end A384901.P10478268294144426975

/-! ## A384901.P6106138667202331093

`A297328(n)%A075555(A380234(n+2))`
-/

namespace A384901.P6106138667202331093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297328 n) (A075555 (A380234 (n + 2)).toNat)

end

end A384901.P6106138667202331093

/-! ## A384901.P3239525746763051062

`A341935(A384681(n))%A341935(n+2)`
-/

namespace A384901.P3239525746763051062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341935 (A384681 n).toNat) (A341935 (n + 2))

end

end A384901.P3239525746763051062

/-! ## A384901.P8713863178364270674

`A255961(n)%A024785(A114463(n+4))`
-/

namespace A384901.P8713863178364270674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255961 n) (A024785 (A114463 (n + 4)).toNat)

end

end A384901.P8713863178364270674

/-!
# A384902: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384897.

The programs for A384902, there is no canonical definition to state claims against.
-/

/-! ## A384902.P12565369852874542982

`A384777(n)%A110760(A007947(3*n+2))`
-/

namespace A384902.P12565369852874542982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384777 n) (A110760 (A007947 (3 * n + 2)).toNat)

end

end A384902.P12565369852874542982

/-! ## A384902.P15628602876973011401

`A384903(n)/A030600(A316209(2*n+5))`
-/

namespace A384902.P15628602876973011401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384903 n : ℚ) / (A030600 (A316209 (2 * n + 5)).toNat : ℚ)

end

end A384902.P15628602876973011401

/-! ## A384902.P12188589528219543619

`A379599(n)%A030101(A094444(3*n+4))`
-/

namespace A384902.P12188589528219543619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379599 n) (A030101 (A094444 (3 * n + 4)).toNat)

end

end A384902.P12188589528219543619

/-! ## A384902.P3996001489058049850

`or(A321391(n), A341541(A008459(n)))`
-/

namespace A384902.P3996001489058049850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A321391 n) (A341541 (A008459 n).toNat)

end

end A384902.P3996001489058049850

/-! ## A384902.P12102940059566598611

`or(A341541(A008459(n)), A384901(n))`
-/

namespace A384902.P12102940059566598611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A341541 (A008459 n).toNat) (A384901 n)

end

end A384902.P12102940059566598611

/-!
# A384904: Number of integer partitions of n with all equal lengths of maximal runs of consecutive parts decreasing by 1 but not by 0.

The programs for A384904, there is no canonical definition to state claims against.
-/

/-! ## A384904.P14478856670919107376

`A226066(A171979(n))`
-/

namespace A384904.P14478856670919107376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226066 (A171979 n).toNat

end

end A384904.P14478856670919107376

/-!
# A384905: Triangle read by rows where T(n,k) is the number of strict integer partitions of n with k maximal anti-runs (decreasing by more than 1).

The programs for A384905, there is no canonical definition to state claims against.
-/

/-! ## A384905.P13989651383162271746

`and(A019988(n+1), A365721(A084938(n)))`
-/

namespace A384905.P13989651383162271746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A019988 (n + 1)) (A365721 (A084938 n).toNat)

end

end A384905.P13989651383162271746

/-! ## A384905.P16399363818846659744

`A345197(A002088(n)+A001877(n))`
-/

namespace A384905.P16399363818846659744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345197 (A002088 n + A001877 n).toNat

end

end A384905.P16399363818846659744

/-! ## A384905.P9854267296528604486

`A218757(n)%A163169(A157386(n+1))`
-/

namespace A384905.P9854267296528604486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218757 n) (A163169 (A157386 (n + 1)).toNat)

end

end A384905.P9854267296528604486

/-! ## A384905.P11907615412965968147

`A010872(A325188(n)^A003056(3*n+1))`
-/

namespace A384905.P11907615412965968147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (SequenceMachineLib.roundAway ((A325188 n : ℚ) ^ (A003056 (3 * n + 1) : ℤ))).toNat

end

end A384905.P11907615412965968147

/-! ## A384905.P5828096505709667434

`A172303(A361582(n))`
-/

namespace A384905.P5828096505709667434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172303 (A361582 n).toNat

end

end A384905.P5828096505709667434

/-!
# A384906: Number of maximal anti-runs of consecutive parts not increasing by 1 in the prime indices of n (with multiplicity).

The programs for A384906, there is no canonical definition to state claims against.
-/

/-! ## A384906.P102953179707353763

`A300820(n+1)%4`
-/

namespace A384906.P102953179707353763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300820 (n + 1)) 4

end

end A384906.P102953179707353763

/-! ## A384906.P13235850852177413459

`∑{p}[n+1, gcd(n, #)]-A073490(n+1)`
-/

namespace A384906.P13235850852177413459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ) - A073490 (n + 1)

end

end A384906.P13235850852177413459

/-! ## A384906.P6420860323513963531

`A330751(∏{p}[n+1, #])%∏{p}[n+1, #]`
-/

namespace A384906.P6420860323513963531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330751 (∏ p ∈ Nat.primeFactors (f1 n), p)) ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A384906.P6420860323513963531

/-! ## A384906.P8302679876428084403

`ceil(n/98)*A300820((n+1)*∏{p}[n+1, #])`
-/

namespace A384906.P8302679876428084403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 98⌉ * A300820 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A384906.P8302679876428084403

/-! ## A384906.P13375179696398804023

`A057945(A378819(n+1))`
-/

namespace A384906.P13375179696398804023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (A378819 (n + 1)).toNat

end

end A384906.P13375179696398804023

/-! ## A384906.P17046863127182431763

`A076411(A378819(n+1)+1)`
-/

namespace A384906.P17046863127182431763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (A378819 (n + 1) + 1).toNat

end

end A384906.P17046863127182431763

/-! ## A384906.P2020890009807343592

`gcd(A002378(n), A300820(n+1))`
-/

namespace A384906.P2020890009807343592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002378 n) (A300820 (n + 1))

end

end A384906.P2020890009807343592

/-! ## A384906.P12685813649006575929

`char[A035312(n)]*A300820(n+1)`
-/

namespace A384906.P12685813649006575929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035312 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A300820 (n + 1)

end

end A384906.P12685813649006575929

/-! ## A384906.P781085779278731074

`A001221(n+1)-A073490(n+1)`
-/

namespace A384906.P781085779278731074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A073490 (n + 1)

end

end A384906.P781085779278731074

/-! ## A384906.P14561547499418200583

`A300820(n+1)+char[A154270(n+1)]`
-/

namespace A384906.P14561547499418200583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154270 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300820 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A384906.P14561547499418200583

/-!
# A384912: The number of unordered factorizations of n into exponentially squarefree prime powers (A384419).

The programs for A384912, there is no canonical definition to state claims against.
-/

/-! ## A384912.P4174623801830746982

`∏{e}[n+1, A073576(#)]`
-/

namespace A384912.P4174623801830746982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A073576 (Nat.factorization (f1 n) p)

end

end A384912.P4174623801830746982

/-! ## A384912.P18041973389811760634

`∏{e}[(n+1)*∏{p}[n+1, #], A371178(#)]`
-/

namespace A384912.P18041973389811760634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A371178 (Nat.factorization (f1 n) p)

end

end A384912.P18041973389811760634

/-! ## A384912.P8734106597568066905

`∏{e}[A242415(n+1), A001935(#)]`
-/

namespace A384912.P8734106597568066905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001935 (Nat.factorization (f1 n).natAbs p)

end

end A384912.P8734106597568066905

/-! ## A384912.P3504259544142669377

`∏{e}[n+1, A325678(A132045(#))]`
-/

namespace A384912.P3504259544142669377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A325678 (A132045 (Nat.factorization (f1 n) p)).toNat

end

end A384912.P3504259544142669377

/-! ## A384912.P4153401760204858770

`A005428(A091050(n+1)%A252861(3*(n+1)))`
-/

namespace A384912.P4153401760204858770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 (Int.tmod (A091050 (n + 1)) (A252861 (3 * (n + 1)))).toNat

end

end A384912.P4153401760204858770

/-! ## A384912.P14895890822955649768

`A128166(A091050(n+1)%A245824(n+5))`
-/

namespace A384912.P14895890822955649768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128166 (Int.tmod (A091050 (n + 1)) (A245824 (n + 5))).toNat

end

end A384912.P14895890822955649768

/-! ## A384912.P11663186164986752142

`A128166(A091050(n+1))%A004438(n+4)`
-/

namespace A384912.P11663186164986752142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128166 (A091050 (n + 1)).toNat) (A004438 (n + 4))

end

end A384912.P11663186164986752142

/-! ## A384912.P1752410698654492419

`A091220(A046643(n+1))`
-/

namespace A384912.P1752410698654492419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091220 (A046643 (n + 1)).toNat

end

end A384912.P1752410698654492419

/-! ## A384912.P9889744826029402825

`A050430(A127707(n+1))`
-/

namespace A384912.P9889744826029402825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050430 (A127707 (n + 1)).toNat

end

end A384912.P9889744826029402825

/-!
# A384913: The number of unordered factorizations of n into exponentially Fibonacci powers of primes (A115975).

The programs for A384913, there is no canonical definition to state claims against.
-/

/-! ## A384913.P1226129069482313592

`∏{e}[n+1, A003107(#)]`
-/

namespace A384913.P1226129069482313592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A003107 (Nat.factorization (f1 n) p)

end

end A384913.P1226129069482313592

/-! ## A384913.P9113224083438720707

`A076982(A294875(n+1))`
-/

namespace A384913.P9113224083438720707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076982 (A294875 (n + 1)).toNat

end

end A384913.P9113224083438720707

/-! ## A384913.P17619716873312574917

`A241344(A005361(n+1)%A263619(n+1))`
-/

namespace A384913.P17619716873312574917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241344 (Int.tmod (A005361 (n + 1)) (A263619 (n + 1))).toNat

end

end A384913.P17619716873312574917

/-!
# A384915: The number of unordered factorizations of n into powers of primes of the form p^e where p is prime and 0 <= e <= p (A074583).

The programs for A384915, there is no canonical definition to state claims against.
-/

/-! ## A384915.P5316216616895226028

`∑{d}[n+1, A359552(#)*A384916((n+1)/#)]`
-/

namespace A384915.P5316216616895226028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359552 d * A384916 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384915.P5316216616895226028

/-! ## A384915.P6810796965282336413

`A046951((n+1)*A336651(n+1))`
-/

namespace A384915.P6810796965282336413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((n + 1 : ℤ) * A336651 (n + 1)).toNat

end

end A384915.P6810796965282336413

/-! ## A384915.P8628293881133616347

`A159631(A319525(n+1))`
-/

namespace A384915.P8628293881133616347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A319525 (n + 1)).toNat

end

end A384915.P8628293881133616347

/-! ## A384915.P3878518391771191839

`A159631(A003961(n+1))`
-/

namespace A384915.P3878518391771191839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A003961 (n + 1)).toNat

end

end A384915.P3878518391771191839

/-! ## A384915.P8886363879292135925

`A159631(A045965(n+1))`
-/

namespace A384915.P8886363879292135925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A045965 (n + 1)).toNat

end

end A384915.P8886363879292135925

/-! ## A384915.P9137503341440135383

`A159631(A064988(n+1))`
-/

namespace A384915.P9137503341440135383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A064988 (n + 1)).toNat

end

end A384915.P9137503341440135383

/-! ## A384915.P1101675496831639552

`A159631(A332818(n+1))`
-/

namespace A384915.P1101675496831639552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A332818 (n + 1)).toNat

end

end A384915.P1101675496831639552

/-! ## A384915.P1449517498510889850

`A005812(A127707(n+1))`
-/

namespace A384915.P1449517498510889850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A127707 (n + 1)).toNat

end

end A384915.P1449517498510889850

/-! ## A384915.P8585732866763313759

`A105111(A037291(n+1))`
-/

namespace A384915.P8585732866763313759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105111 (A037291 (n + 1)).toNat

end

end A384915.P8585732866763313759

/-!
# A384916: The number of unordered factorizations of n into powers of primes of the form p^e where p is prime and 0 <= e < p.

The programs for A384916, there is no canonical definition to state claims against.
-/

/-! ## A384916.P10822893827204790547

`A124765(A003557(n+1)*A062383(2*n+3))`
-/

namespace A384916.P10822893827204790547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A003557 (n + 1) * A062383 (2 * n + 3)).toNat

end

end A384916.P10822893827204790547

/-! ## A384916.P9370993175852417237

`and(A072828(n+1), A298735(n+1))`
-/

namespace A384916.P9370993175852417237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072828 (n + 1)) (A298735 (n + 1))

end

end A384916.P9370993175852417237

/-! ## A384916.P8261497292481110267

`A353929(∏{e}[n+1, #+1]*A380986(n+1))`
-/

namespace A384916.P8261497292481110267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353929 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A380986 (n + 1)).toNat

end

end A384916.P8261497292481110267

/-! ## A384916.P12515880891766205096

`A064547(A104272(n+1)*A336651(n+1))`
-/

namespace A384916.P12515880891766205096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A104272 (n + 1) * A336651 (n + 1)).toNat

end

end A384916.P12515880891766205096

/-! ## A384916.P3818779891758060197

`A298735(n+1)+A010051(A326782(n+5))`
-/

namespace A384916.P3818779891758060197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (n + 1) + A010051 (A326782 (n + 5)).toNat

end

end A384916.P3818779891758060197

/-! ## A384916.P11801621284547547898

`A064547(lcm(A104272(n+1), A336651(n+1)))`
-/

namespace A384916.P11801621284547547898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (Int.lcm (A104272 (n + 1)) (A336651 (n + 1)))

end

end A384916.P11801621284547547898

/-! ## A384916.P5598122764872940671

`A049240(A235615(2*n+3))*A298735(n+1)`
-/

namespace A384916.P5598122764872940671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (A235615 (2 * n + 3)).toNat * A298735 (n + 1)

end

end A384916.P5598122764872940671

/-! ## A384916.P2333167741293092353

`gcd(A106741(A007091(n+4)), A298735(n+1))`
-/

namespace A384916.P2333167741293092353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106741 (A007091 (n + 4)).toNat) (A298735 (n + 1))

end

end A384916.P2333167741293092353

/-! ## A384916.P8568492525736992487

`A050320(A001787(∏{p}[n+1, #^val(n+1, #²)]))`
-/

namespace A384916.P8568492525736992487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A001787 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))).toNat

end

end A384916.P8568492525736992487

/-! ## A384916.P11446189196116315786

`A322794(gcd(A000265(n+1), A008833(n+1)))`
-/

namespace A384916.P11446189196116315786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (Int.gcd (A000265 (n + 1)) (A008833 (n + 1)))

end

end A384916.P11446189196116315786

/-! ## A384916.P16816427692975197450

`A351307(n+1)%A115291(A136082(2*n+5))`
-/

namespace A384916.P16816427692975197450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351307 (n + 1)) (A115291 (A136082 (2 * n + 5)).toNat)

end

end A384916.P16816427692975197450

/-! ## A384916.P9425784583295300736

`and(A148524(n), A298735(n+1))`
-/

namespace A384916.P9425784583295300736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A148524 n) (A298735 (n + 1))

end

end A384916.P9425784583295300736

/-! ## A384916.P3131429592871750578

`and(A148528(n), A298735(n+1))`
-/

namespace A384916.P3131429592871750578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A148528 n) (A298735 (n + 1))

end

end A384916.P3131429592871750578

/-!
# A384922: a(n) is the first digit to the left of the decimal point in (3/2)^n.

The programs for A384922, the canonical program `A384922.P6445870207053674092` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384922 has offset 0).

The definition of A384922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 568 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384922.P6445870207053674092

`A002379(n)%10`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A384922

/-- `A002379(n)%10` -/
def P6445870207053674092.Spec : Prop :=
  ∀ n, P6445870207053674092.a n = A384922 n

theorem P6445870207053674092.correct : P6445870207053674092.Spec := by
  intro n
  simp only [A384922]

end A384922

/-! ## A384922.P13874353091735400385

`floor(3^n/2^n)%10`
-/

namespace A384922.P13874353091735400385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(3 ^ n : ℚ) / (2 ^ n : ℚ)⌋ 10

end

end A384922.P13874353091735400385

namespace A384922

/-- `floor(3^n/2^n)%10` -/
def P13874353091735400385.Spec : Prop :=
  ∀ n, P13874353091735400385.a n = A384922 n

end A384922

/-! ## A384922.P15514784071717344053

`A065881(floor(3^n/2^n))`
-/

namespace A384922.P15514784071717344053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 ⌊(3 ^ n : ℚ) / (2 ^ n : ℚ)⌋.toNat

end

end A384922.P15514784071717344053

namespace A384922

/-- `A065881(floor(3^n/2^n))` -/
def P15514784071717344053.Spec : Prop :=
  ∀ n, P15514784071717344053.a n = A384922 n

end A384922

/-! ## A384922.P13652302778755426969

`A010879(A002379(n))`
-/

namespace A384922.P13652302778755426969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A002379 n).toNat

end

end A384922.P13652302778755426969

namespace A384922

/-- `A010879(A002379(n))` -/
def P13652302778755426969.Spec : Prop :=
  ∀ n, P13652302778755426969.a n = A384922 n

end A384922

/-!
# A384923: a(n) is the smallest number of leading significant digits of the square root of the n-th nonsquare that includes all decimal digits.

The programs for A384923, there is no canonical definition to state claims against.
-/

/-! ## A384923.P14650063254514360062

`A343740(comp[n²])`
-/

namespace A384923.P14650063254514360062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343740 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A384923.P14650063254514360062

/-!
# A384924: a(n) is the position of the first occurrence of the digit 0 among the leading significant decimal digits of the square root of the n-th nonsquare.

The programs for A384924, there is no canonical definition to state claims against.
-/

/-! ## A384924.P7393737416364474148

`A084677(comp[n²])`
-/

namespace A384924.P7393737416364474148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084677 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A384924.P7393737416364474148

/-!
# A384927: a(n) is the maximum size of a subset S of {1, 2, ..., n} such that for any distinct elements t, u in S, t + u does not divide t*u.

The programs for A384927, there is no canonical definition to state claims against.
-/

/-! ## A384927.P13323857123180592124

`A163563(A025053(n+2))`
-/

namespace A384927.P13323857123180592124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (A025053 (n + 2)).toNat

end

end A384927.P13323857123180592124

/-! ## A384927.P9985025509172421768

`∑[A284939(A000043(n+1)-A001221(n+1))]`
-/

namespace A384927.P9985025509172421768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (A000043 (n + 1) - A001221 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384927.P9985025509172421768

/-! ## A384927.P4136150748905904228

`A163563(A008578(n+4)-A163563(2*n+5))`
-/

namespace A384927.P4136150748905904228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (A008578 (n + 4) - A163563 (2 * n + 5)).toNat

end

end A384927.P4136150748905904228

/-! ## A384927.P8808092577567798380

`∑[A316829(A278688(2*n+1))]`
-/

namespace A384927.P8808092577567798380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (A278688 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384927.P8808092577567798380

/-! ## A384927.P6879435613704158651

`A391592(n+1)+A074290(A391638(3*n+4))`
-/

namespace A384927.P6879435613704158651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391592 (n + 1) + A074290 (A391638 (3 * n + 4)).toNat

end

end A384927.P6879435613704158651

/-!
# A384928: Number of 2-dense sublists of divisors of the n-th triangular number.

The programs for A384928, there is no canonical definition to state claims against.
-/

/-! ## A384928.P15134553319442145766

`A237271(round(sqrt(∑[n]²+1)))`
-/

namespace A384928.P15134553319442145766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (SequenceMachineLib.roundAway (Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 : ℕ) : ℝ))).toNat

end

end A384928.P15134553319442145766

/-! ## A384928.P7341382700329021722

`A237271(A000217(n^A178334(n)))^A178334(n)`
-/

namespace A384928.P7341382700329021722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237271 (A000217 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A384928.P7341382700329021722

/-! ## A384928.P16396835341954380231

`A277543(A174316(n+1))`
-/

namespace A384928.P16396835341954380231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A174316 (n + 1)).toNat

end

end A384928.P16396835341954380231

/-! ## A384928.P10995709122608970642

`A000005(A238423(n)^A382773(n+1))`
-/

namespace A384928.P10995709122608970642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A238423 n : ℚ) ^ (A382773 (n + 1) : ℤ))).toNat

end

end A384928.P10995709122608970642

/-!
# A384930: Irregular triangle read by rows: T(n,k) is the sum of the terms of the (n-k+1)-th 2-dense sublist of divisors of n, with n >= 1, k >= 1.

The programs for A384930, there is no canonical definition to state claims against.
-/

/-! ## A384930.P5906746437737878325

`A237270(n+1)+A237270(n+1)-A384149(n+1)`
-/

namespace A384930.P5906746437737878325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (n + 1) + (A237270 (n + 1) - A384149 (n + 1))

end

end A384930.P5906746437737878325

/-!
# A384931: Number of 2-dense sublists of divisors of the number of partitions of n.

The programs for A384931, there is no canonical definition to state claims against.
-/

/-! ## A384931.P15693713247773747377

`A237271(A000041(n))`
-/

namespace A384931.P15693713247773747377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A000041 n).toNat

end

end A384931.P15693713247773747377

/-! ## A384931.P18423040449322323383

`A237271(A213598(n))`
-/

namespace A384931.P18423040449322323383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A213598 n).toNat

end

end A384931.P18423040449322323383

/-! ## A384931.P13427425806053190465

`A237271(A330643(n))`
-/

namespace A384931.P13427425806053190465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A330643 n).toNat

end

end A384931.P13427425806053190465

/-! ## A384931.P1805363286272250307

`A237271(sqrt(A001255(n)))`
-/

namespace A384931.P1805363286272250307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (SequenceMachineLib.roundAway (Real.sqrt (A001255 n : ℝ))).toNat

end

end A384931.P1805363286272250307

/-! ## A384931.P3349718938616218238

`A237271(∑[A002865(n)])`
-/

namespace A384931.P3349718938616218238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A384931.P3349718938616218238

/-!
# A384937: Number for rooted ordered trees with edge weights summing to n, where edge weights are all greater than zero, and the sequences of edge weights in all downward paths are weakly increasing.

The programs for A384937, there is no canonical definition to state claims against.
-/

/-! ## A384937.P11571035135862593798

`A119372(n)-A088950(A002464(n))`
-/

namespace A384937.P11571035135862593798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119372 n - A088950 (A002464 n).toNat

end

end A384937.P11571035135862593798

/-! ## A384937.P11837803167400486835

`A341594(A126580(n))+A317875(n+1)`
-/

namespace A384937.P11837803167400486835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341594 (A126580 n).toNat + A317875 (n + 1)

end

end A384937.P11837803167400486835

/-! ## A384937.P2035888134942097828

`A119372(n)-A088950(A141187(n+1))`
-/

namespace A384937.P2035888134942097828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119372 n - A088950 (A141187 (n + 1)).toNat

end

end A384937.P2035888134942097828

/-!
# A384938: Number for rooted ordered trees with edge weights summing to n, where edge weights are all greater than zero, and the sequences of edge weights in all downward paths are strictly increasing.

The programs for A384938, there is no canonical definition to state claims against.
-/

/-! ## A384938.P4067270160476824352

`A026819(A149948(n))`
-/

namespace A384938.P4067270160476824352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A149948 n).toNat

end

end A384938.P4067270160476824352

/-! ## A384938.P2041751656866582412

`A026819(A149949(n))`
-/

namespace A384938.P2041751656866582412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A149949 n).toNat

end

end A384938.P2041751656866582412

/-! ## A384938.P553742502368205505

`A026819(A149950(n))`
-/

namespace A384938.P553742502368205505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A149950 n).toNat

end

end A384938.P553742502368205505

/-! ## A384938.P14182277462573331690

`A108839(A092687(n))`
-/

namespace A384938.P14182277462573331690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108839 (A092687 n).toNat

end

end A384938.P14182277462573331690

/-!
# A384939: Maximum element in the continued fraction for (1/n) * Sum_{k>=0} 1/3^(2^k).

The programs for A384939, there is no canonical definition to state claims against.
-/

/-! ## A384939.P6766643996112099712

`A005843(3*(n+1))-A011744(A380661(3*n+5))`
-/

namespace A384939.P6766643996112099712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (3 * (n + 1)) - A011744 (A380661 (3 * n + 5)).toNat

end

end A384939.P6766643996112099712

/-! ## A384939.P4608890352385317127

`A008458(n+1)-A294821(A001224(n+1))`
-/

namespace A384939.P4608890352385317127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (n + 1) - A294821 (A001224 (n + 1)).toNat

end

end A384939.P4608890352385317127

/-! ## A384939.P7678040669745455519

`A001969(3*n+4)-A010060(A001998(n))`
-/

namespace A384939.P7678040669745455519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (3 * n + 4) - A010060 (A001998 n).toNat

end

end A384939.P7678040669745455519

/-! ## A384939.P9467772783869489404

`A004277(3*(n+1))-A353331(A095127(n+1))`
-/

namespace A384939.P9467772783869489404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (3 * (n + 1)) - A353331 (A095127 (n + 1)).toNat

end

end A384939.P9467772783869489404

/-! ## A384939.P12528215428797277425

`A026603(2*n+3)-A376567(A031938(n+5))`
-/

namespace A384939.P12528215428797277425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026603 (2 * n + 3) - A376567 (A031938 (n + 5)).toNat

end

end A384939.P12528215428797277425

/-!
# A384941: G.f. A(x) satisfies A(x) = 1 + x/A(-x*A(x))^4.

The programs for A384941, there is no canonical definition to state claims against.
-/

/-! ## A384941.P14376935122586905492

`A384944(∑[n+1]+n)`
-/

namespace A384941.P14376935122586905492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384944 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384941.P14376935122586905492

/-!
# A384942: G.f. A(x) satisfies A(x) = 1 + x/A(-x*A(x))^5.

The programs for A384942, there is no canonical definition to state claims against.
-/

/-! ## A384942.P11112873576896563375

`A384945(∑[n+1]+n)`
-/

namespace A384942.P11112873576896563375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384945 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384942.P11112873576896563375

/-!
# A384943: G.f. A(x) satisfies A(x) = 1 + x/A(-x*A(x))^6.

The programs for A384943, there is no canonical definition to state claims against.
-/

/-! ## A384943.P15383717043918034590

`A384946(∑[n+1]+n)`
-/

namespace A384943.P15383717043918034590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384946 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384943.P15383717043918034590

/-!
# A384945: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384942.

The programs for A384945, there is no canonical definition to state claims against.
-/

/-! ## A384945.P689882294840395108

`A385020(n)-A067168(A127194(n+1))`
-/

namespace A384945.P689882294840395108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385020 n - A067168 ((A127194 (n + 1)).toNat + 10)

end

end A384945.P689882294840395108

/-!
# A384948: Primes p == 3 (mod 4) such that 5 is a primitive root of integers modulo p, but 2+-i are not primitive roots of Gaussian integers modulo p.

The programs for A384948, there is no canonical definition to state claims against.
-/

/-! ## A384948.P14571337550023521321

`∩[A019335(n+1), A385168(n+1)]`
-/

namespace A384948.P14571337550023521321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384948.P14571337550023521321

/-! ## A384948.P690693425154780984

`∩[A167793(n+1), A385168(n+1)]`
-/

namespace A384948.P690693425154780984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384948.P690693425154780984

/-! ## A384948.P18183536062944248456

`∩[A385168(n+1), A297466(n)]`
-/

namespace A384948.P18183536062944248456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297466 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384948.P18183536062944248456

/-!
# A384950: a(n) = Sum_{k=0..n} 3^k * binomial(2*n+k-1,k).

The programs for A384950, there is no canonical definition to state claims against.
-/

/-! ## A384950.P9417686642237065747

`A193842(A022266(n))`
-/

namespace A384950.P9417686642237065747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A022266 n).toNat

end

end A384950.P9417686642237065747

/-! ## A384950.P4695457926450013618

`A193842(A062741(n)+n)`
-/

namespace A384950.P4695457926450013618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A062741 n + (n : ℤ)).toNat

end

end A384950.P4695457926450013618

/-! ## A384950.P5012961716420775850

`A193842(A004273(n)+C(3*n, 2)-(n-1))`
-/

namespace A384950.P5012961716420775850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A004273 n + ((Nat.choose (3 * n) 2 : ℤ) - ((n : ℤ) - 1))).toNat

end

end A384950.P5012961716420775850

/-! ## A384950.P1098217785066060296

`A119673(A062725(n))`
-/

namespace A384950.P1098217785066060296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A062725 n).toNat

end

end A384950.P1098217785066060296

/-! ## A384950.P4643374172324644952

`A119673(A062728(n)-n)`
-/

namespace A384950.P4643374172324644952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A062728 n - (n : ℤ)).toNat

end

end A384950.P4643374172324644952

/-!
# A384951: G.f. A(x) satisfies A(x) = 1 + x*A(x)/A(-x*A(x)).

The programs for A384951, there is no canonical definition to state claims against.
-/

/-! ## A384951.P16291294822482523837

`A384976(∑[n+1]+n)`
-/

namespace A384951.P16291294822482523837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384976 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384951.P16291294822482523837

/-!
# A384955: a(n) is the multinomial coefficient of the digits of n.

The programs for A384955, the canonical program `A384955.P6172935050039872195` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384955 has offset 0).

The definition of A384955 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066459, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A384955.P6172935050039872195

`A269221(n)/A066459(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A384955

/-- `A269221(n)/A066459(n)` -/
def P6172935050039872195.Spec : Prop :=
  ∀ n, P6172935050039872195.a n = (A384955 n : ℚ)

end A384955

/-! ## A384955.P10822438895606726279

`∑{digits}[n, #]!/∏{digits}[n, #!]`
-/

namespace A384955.P10822438895606726279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℚ) / ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).prod : ℕ) : ℚ)

end

end A384955.P10822438895606726279

namespace A384955

/-- `∑{digits}[n, #]!/∏{digits}[n, #!]` -/
def P10822438895606726279.Spec : Prop :=
  ∀ n, P10822438895606726279.a n = (A384955 n : ℚ)

end A384955

/-! ## A384955.P12982443343016850854

`A318762(A113581(n))`
-/

namespace A384955.P12982443343016850854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A113581 n).toNat

end

end A384955.P12982443343016850854

namespace A384955

/-- `A318762(A113581(n))` -/
def P12982443343016850854.Spec : Prop :=
  ∀ n, P12982443343016850854.a n = A384955 n

end A384955

/-! ## A384955.P8410679047072045069

`C(A093882(A118759(n))%23, A067082(n)-n)`
-/

namespace A384955.P8410679047072045069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod (A093882 (A118759 n).toNat) 23).toNat (A067082 n - (n : ℤ)).toNat

end

end A384955.P8410679047072045069

namespace A384955

/-- `C(A093882(A118759(n))%23, A067082(n)-n)` -/
def P8410679047072045069.Spec : Prop :=
  ∀ n, (P8410679047072045069.a n : ℤ) = A384955 n

end A384955

/-! ## A384955.P14954508749742733600

`C(A007953(n), A000030(A056142(n)))`
-/

namespace A384955.P14954508749742733600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007953 n).toNat (A000030 (A056142 n).toNat).toNat

end

end A384955.P14954508749742733600

namespace A384955

/-- `C(A007953(n), A000030(A056142(n)))` -/
def P14954508749742733600.Spec : Prop :=
  ∀ n, (P14954508749742733600.a n : ℤ) = A384955 n

end A384955

/-! ## A384955.P6189563143568332033

`A028310(C(A007953(n), A000030(n)))`
-/

namespace A384955.P6189563143568332033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.choose (A007953 n).toNat (A000030 n).toNat)

end

end A384955.P6189563143568332033

namespace A384955

/-- `A028310(C(A007953(n), A000030(n)))` -/
def P6189563143568332033.Spec : Prop :=
  ∀ n, P6189563143568332033.a n = A384955 n

end A384955

/-! ## A384955.P4959476512685597538

`A028310(C(A076314(n), A000030(n)))`
-/

namespace A384955.P4959476512685597538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.choose (A076314 n).toNat (A000030 n).toNat)

end

end A384955.P4959476512685597538

namespace A384955

/-- `A028310(C(A076314(n), A000030(n)))` -/
def P4959476512685597538.Spec : Prop :=
  ∀ n, P4959476512685597538.a n = A384955 n

end A384955

/-!
# A384956: Binary XOR of number of 1-bits in the binary representation of n and number of 0-bits in the binary representation of n, a(0) = 1.

The programs for A384956, the canonical program `A384956.P1572791689955752356` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384956 has offset 0).

The definition of A384956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384956.P1572791689955752356

`xor(A000120(n), A023416(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A384956

/-- `xor(A000120(n), A023416(n))` -/
def P1572791689955752356.Spec : Prop :=
  ∀ n, P1572791689955752356.a n = A384956 n

theorem P1572791689955752356.correct : P1572791689955752356.Spec := by
  intro n
  simp only [A384956]

end A384956

/-! ## A384956.P15780959570575578182

`xor(log2(A001316(n)), A023416(n))`
-/

namespace A384956.P15780959570575578182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))) (A023416 n)

end

end A384956.P15780959570575578182

namespace A384956

/-- `xor(log2(A001316(n)), A023416(n))` -/
def P15780959570575578182.Spec : Prop :=
  ∀ n, P15780959570575578182.a n = A384956 n

end A384956

/-! ## A384956.P5453195271915863237

`xor(∑[A088705(n)], A023416(n))`
-/

namespace A384956.P5453195271915863237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A023416 n)

end

end A384956.P5453195271915863237

namespace A384956

/-- `xor(∑[A088705(n)], A023416(n))` -/
def P5453195271915863237.Spec : Prop :=
  ∀ n, P5453195271915863237.a n = A384956 n

end A384956

/-! ## A384956.P9589984972575304569

`xor(val(A102377(n), 2), A023416(n))`
-/

namespace A384956.P9589984972575304569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.valuation (A102377 n).toNat 2 : ℤ) (A023416 n)

end

end A384956.P9589984972575304569

namespace A384956

/-- `xor(val(A102377(n), 2), A023416(n))` -/
def P9589984972575304569.Spec : Prop :=
  ∀ n, P9589984972575304569.a n = A384956 n

end A384956

/-! ## A384956.P10001006060443366760

`xor(A023416(n), A159918(A038573(n)))`
-/

namespace A384956.P10001006060443366760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A023416 n) (A159918 (A038573 n).toNat)

end

end A384956.P10001006060443366760

namespace A384956

/-- `xor(A023416(n), A159918(A038573(n)))` -/
def P10001006060443366760.Spec : Prop :=
  ∀ n, P10001006060443366760.a n = A384956 n

end A384956

/-! ## A384956.P1588689384121035210

`A268387(A176893(n))`
-/

namespace A384956.P1588689384121035210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268387 (A176893 n).toNat

end

end A384956.P1588689384121035210

namespace A384956

/-- `A268387(A176893(n))` -/
def P1588689384121035210.Spec : Prop :=
  ∀ n, P1588689384121035210.a n = A384956 n

end A384956

/-!
# A384965: Number of sensed simple planar maps with n vertices.

The programs for A384965, there is no canonical definition to state claims against.
-/

/-! ## A384965.P8234419884514131755

`A240557(A038149(n))`
-/

namespace A384965.P8234419884514131755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240557 (A038149 n).toNat

end

end A384965.P8234419884514131755

/-! ## A384965.P1714003644121375725

`A276946(A000009(∑[n]))`
-/

namespace A384965.P1714003644121375725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276946 (A000009 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A384965.P1714003644121375725

/-!
# A384966: Number of sensed simple planar maps with n vertices and 2 faces.

The programs for A384966, there is no canonical definition to state claims against.
-/

/-! ## A384966.P16500541598437352063

`A380237(n+1)-A001895(n+1)`
-/

namespace A384966.P16500541598437352063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380237 (n + 1) - A001895 (n + 1)

end

end A384966.P16500541598437352063

/-! ## A384966.P3766580265899200687

`2*A380239(n+1)-A380238(n+1)-A001895(n+1)`
-/

namespace A384966.P3766580265899200687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A380239 (n + 1) - A380238 (n + 1) - A001895 (n + 1)

end

end A384966.P3766580265899200687

/-! ## A384966.P11014489778230260754

`A105512(A149363(n))`
-/

namespace A384966.P11014489778230260754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105512 (A149363 n).toNat

end

end A384966.P11014489778230260754

/-! ## A384966.P15430882488602424200

`A105512(A391036(n))`
-/

namespace A384966.P15430882488602424200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105512 (A391036 n).toNat

end

end A384966.P15430882488602424200

/-!
# A384967: Number of unsensed simple planar maps with n vertices and 2 faces.

The programs for A384967, there is no canonical definition to state claims against.
-/

/-! ## A384967.P1490266154945887262

`A384850(∑[n+1]+n)`
-/

namespace A384967.P1490266154945887262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384850 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384967.P1490266154945887262

/-!
# A384968: Triangle read by rows: T(n,k) is the number of proper vertex colorings of the n-complete bipartite graph using exactly k interchangeable colors, 2 <= k <= 2*n.

The programs for A384968, there is no canonical definition to state claims against.
-/

/-! ## A384968.P4655790585289906911

`A274310(A007606(n+1))`
-/

namespace A384968.P4655790585289906911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274310 (A007606 (n + 1)).toNat

end

end A384968.P4655790585289906911

/-! ## A384968.P7556171412714754560

`A274310(A161983(n+1))`
-/

namespace A384968.P7556171412714754560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274310 (A161983 (n + 1)).toNat

end

end A384968.P7556171412714754560

/-!
# A384974: G.f. A(x) satisfies A(x) = 1 + x*A(x)/A(-x*A(x)^3)^2.

The programs for A384974, there is no canonical definition to state claims against.
-/

/-! ## A384974.P4287277209684564471

`A384977(∑[n+1]+n)`
-/

namespace A384974.P4287277209684564471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384977 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384974.P4287277209684564471

/-!
# A384975: G.f. A(x) satisfies A(x) = 1 + x*A(x)/A(-x*A(x)^5)^3.

The programs for A384975, there is no canonical definition to state claims against.
-/

/-! ## A384975.P4352834053850673615

`A384978(∑[n+1]+n)`
-/

namespace A384975.P4352834053850673615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384978 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384975.P4352834053850673615

/-! ## A384975.P8914723578162050890

`A189484(A221950(n))`
-/

namespace A384975.P8914723578162050890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189484 (A221950 n).toNat

end

end A384975.P8914723578162050890

/-!
# A384976: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384951.

The programs for A384976, there is no canonical definition to state claims against.
-/

/-! ## A384976.P6933441610722873686

`A144064(n)+A121373(A119896(n+1))`
-/

namespace A384976.P6933441610722873686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 n + A121373 (A119896 (n + 1)).toNat

end

end A384976.P6933441610722873686

/-! ## A384976.P18165518983269481197

`A336285(A144064(n)%A339657(2*n+1))`
-/

namespace A384976.P18165518983269481197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336285 (Int.tmod (A144064 n) (A339657 (2 * n + 1))).toNat

end

end A384976.P18165518983269481197

/-!
# A384977: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384974.

The programs for A384977, there is no canonical definition to state claims against.
-/

/-! ## A384977.P12002716090922419712

`A135385(A124460(n)+A010054(n))`
-/

namespace A384977.P12002716090922419712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135385 (A124460 n + A010054 n).toNat

end

end A384977.P12002716090922419712

/-! ## A384977.P10637016330080523249

`A384777(n)%A071673(A146212(n+3))`
-/

namespace A384977.P10637016330080523249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384777 n) (A071673 (A146212 (n + 3)).toNat)

end

end A384977.P10637016330080523249

/-!
# A384978: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384975.

The programs for A384978, there is no canonical definition to state claims against.
-/

/-! ## A384978.P11163795961491349495

`A123580(A384811(n))`
-/

namespace A384978.P11163795961491349495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A384811 n).toNat

end

end A384978.P11163795961491349495

/-! ## A384978.P12770745599475733457

`A123731(A396447(n))`
-/

namespace A384978.P12770745599475733457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (A396447 n).toNat

end

end A384978.P12770745599475733457

/-! ## A384978.P15763148369158219432

`A384944(n)^A381426(A060478(n+1))`
-/

namespace A384978.P15763148369158219432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384944 n : ℚ) ^ (A381426 (A060478 (n + 1)).toNat : ℤ)

end

end A384978.P15763148369158219432

/-! ## A384978.P11303389286540203772

`and(A118343(n), A250120(A000079(n)))`
-/

namespace A384978.P11303389286540203772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118343 n) (A250120 (A000079 n).toNat)

end

end A384978.P11303389286540203772

/-! ## A384978.P10184905053870960638

`and(A250120(A000079(n)), A378323(n))`
-/

namespace A384978.P10184905053870960638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A250120 (A000079 n).toNat) (A378323 n)

end

end A384978.P10184905053870960638

/-!
# A384979: a(n) is the smallest (n+2)-digit prime consisting of a string of n identical digits d sandwiched between two digits different from d, or -1 if no such prime exists.

The programs for A384979, there is no canonical definition to state claims against.
-/

/-! ## A384979.P12103334294021659067

`A099630(A004156(n))`
-/

namespace A384979.P12103334294021659067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099630 (A004156 n).toNat

end

end A384979.P12103334294021659067

/-! ## A384979.P14416604662898159674

`A003617(A073788(n+1)+1)`
-/

namespace A384979.P14416604662898159674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A073788 (n + 1) + 1).toNat

end

end A384979.P14416604662898159674

/-!
# A384980: Number of proper vertex colorings of the n-complete bipartite graph using exactly 4 interchangeable colors.

The programs for A384980, the canonical program `A384980.P3824832553157891283` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384980 has offset 1).

The definition of A384980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384980.P3824832553157891283

`2-2^(n+2)+3^n+4^n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A384980

/-- `2-2^(n+2)+3^n+4^n` -/
def P3824832553157891283.Spec : Prop :=
  ∀ n, P3824832553157891283.a n = A384980 (n + 1)

theorem P3824832553157891283.correct : P3824832553157891283.Spec := by
  intro n
  simp only [A384980, Nat.add_sub_cancel]

end A384980

/-!
# A384981: Number of proper vertex colorings of the n-complete bipartite graph using exactly 5 interchangeable colors.

The programs for A384981, there is no canonical definition to state claims against.
-/

/-! ## A384981.P1061310338265400701

`A080585(A103785(n+1))-(2*n+1)`
-/

namespace A384981.P1061310338265400701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080585 (A103785 (n + 1)).toNat - (2 * n + 1 : ℤ)

end

end A384981.P1061310338265400701

/-!
# A384982: E.g.f. A(x) satisfies A(x) = exp(x*A(x)/A(-x*A(x)^2)).

The programs for A384982, there is no canonical definition to state claims against.
-/

/-! ## A384982.P6793428030862907220

`A384985(∑[n+1]+n)`
-/

namespace A384982.P6793428030862907220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384985 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384982.P6793428030862907220

/-!
# A384983: E.g.f. A(x) satisfies A(x) = exp(x*A(x)/A(-x*A(x)^4)^2).

The programs for A384983, there is no canonical definition to state claims against.
-/

/-! ## A384983.P13735556751584860686

`A384986(∑[n+1]+n)`
-/

namespace A384983.P13735556751584860686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384986 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384983.P13735556751584860686

/-!
# A384984: E.g.f. A(x) satisfies A(x) = exp(x*A(x)/A(-x*A(x)^6)^3).

The programs for A384984, there is no canonical definition to state claims against.
-/

/-! ## A384984.P7203271508850421333

`A384987(∑[n+1]+n)`
-/

namespace A384984.P7203271508850421333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384987 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384984.P7203271508850421333

/-!
# A384987: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384984.

The programs for A384987, there is no canonical definition to state claims against.
-/

/-! ## A384987.P9888568760186049244

`A089866(A396588(n))`
-/

namespace A384987.P9888568760186049244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089866 (A396588 n).toNat

end

end A384987.P9888568760186049244

/-! ## A384987.P12127699657401120657

`A116447(A378240(n))`
-/

namespace A384987.P12127699657401120657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116447 (A378240 n).toNat

end

end A384987.P12127699657401120657

/-! ## A384987.P6118583474363638629

`A113221(A395148(n))`
-/

namespace A384987.P6118583474363638629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A395148 n).toNat

end

end A384987.P6118583474363638629

/-! ## A384987.P8405944321678137378

`A113221(A396502(n))`
-/

namespace A384987.P8405944321678137378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A396502 n).toNat

end

end A384987.P8405944321678137378

/-! ## A384987.P15219437948156478676

`A307404(A384751(n))`
-/

namespace A384987.P15219437948156478676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307404 (A384751 n).toNat

end

end A384987.P15219437948156478676

/-!
# A384988: a(n) = Stirling2(n,2)^2 + Stirling2(n,3).

The programs for A384988, the canonical program `A384988.P7265471971138611684` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384988 has offset 1).

The definition of A384988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384988.P7265471971138611684

`2^(2*(n+1)-2)+1/2*3^n-3*2^n+3/2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A384988

/-- `2^(2*(n+1)-2)+1/2*3^n-3*2^n+3/2` -/
def P7265471971138611684.Spec : Prop :=
  ∀ n, P7265471971138611684.a n = (A384988 (n + 1) : ℚ)

end A384988

/-!
# A384992: Positive numbers k whose prime factors together with their exponents are distinct.

The programs for A384992, there is no canonical definition to state claims against.
-/

/-! ## A384992.P9720687338388527175

`∪[A084111(n+1), A124438(n+1)]`
-/

namespace A384992.P9720687338388527175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384992.P9720687338388527175

/-! ## A384992.P5502843279675559770

`lt[A109080(A373982(n)), A324696(n+1)]`
-/

namespace A384992.P5502843279675559770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109080 (A373982 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324696 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A384992.P5502843279675559770

/-! ## A384992.P6519047031631487873

`eq[A005089(n+1), A029429(n)]`
-/

namespace A384992.P6519047031631487873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384992.P6519047031631487873

/-! ## A384992.P12228472099109622683

`eq[A029429(n), A046080(n+1)]`
-/

namespace A384992.P12228472099109622683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384992.P12228472099109622683

/-! ## A384992.P7960943065586030311

`eq[A029429(n), A083025(n+1)]`
-/

namespace A384992.P7960943065586030311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384992.P7960943065586030311

/-!
# A384993: Triangle read by rows: T(n,k) is the number of compositions (p_0,p_1,...,p_m) of n such that max(i + p_i) = k for 0 <= i <= m.

The programs for A384993, there is no canonical definition to state claims against.
-/

/-! ## A384993.P1780823755973381728

`A329362(A008480(n+1)*A122890(n))`
-/

namespace A384993.P1780823755973381728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (A008480 (n + 1) * A122890 n).toNat

end

end A384993.P1780823755973381728

/-! ## A384993.P192897566583560711

`A257261(A113129(n)^A007318(n))`
-/

namespace A384993.P192897566583560711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257261 (SequenceMachineLib.roundAway ((A113129 n : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A384993.P192897566583560711

/-! ## A384993.P10617410858344158041

`C(A055642(A050534(n)), A121420(n))`
-/

namespace A384993.P10617410858344158041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055642 (A050534 n).toNat).toNat (A121420 n).toNat

end

end A384993.P10617410858344158041

/-! ## A384993.P6940991553900822552

`C(A055642(A375405(2*n+1)), A126953(n))`
-/

namespace A384993.P6940991553900822552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055642 (A375405 (2 * n + 1)).toNat).toNat (A126953 n).toNat

end

end A384993.P6940991553900822552

/-! ## A384993.P17587341698829485226

`C(A055642(A001891(n)), A099375(n))`
-/

namespace A384993.P17587341698829485226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055642 (A001891 n).toNat).toNat (A099375 n).toNat

end

end A384993.P17587341698829485226

/-!
# A384994: Positive numbers whose prime indices of their prime factors, together with their exponents are distinct.

The programs for A384994, there is no canonical definition to state claims against.
-/

/-! ## A384994.P15425015738279029006

`record[A034684(A325131(n+1))]`
-/

namespace A384994.P15425015738279029006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A325131 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384994.P15425015738279029006

/-! ## A384994.P4183463442661811877

`filter[A325131(n+1), A010055(#)]`
-/

namespace A384994.P4183463442661811877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A384994.P4183463442661811877

/-! ## A384994.P12888330442260378536

`filter[A325131(n+1), A091862(#)]`
-/

namespace A384994.P12888330442260378536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A384994.P12888330442260378536

/-! ## A384994.P281739158411092753

`filter[A325131(n+1), A324290(#)]`
-/

namespace A384994.P281739158411092753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A384994.P281739158411092753

/-! ## A384994.P1778627754128993422

`filter[A325131(n+1), A351564(#)]`
-/

namespace A384994.P1778627754128993422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A384994.P1778627754128993422

/-!
# A384998: Total number of partitions of all numbers <= n with designated summands, n >= 0.

The programs for A384998, there is no canonical definition to state claims against.
-/

/-! ## A384998.P12496765813812153846

`∑[A077285(n)]`
-/

namespace A384998.P12496765813812153846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384998.P12496765813812153846

/-! ## A384998.P16210518023653008748

`∑[A290216(∑[4*n])]`
-/

namespace A384998.P16210518023653008748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290216 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384998.P16210518023653008748

/-! ## A384998.P12178639707355102922

`(A222045(2*n)+1)%A204620(n+1)`
-/

namespace A384998.P12178639707355102922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222045 (2 * n) + 1) (A204620 (n + 1))

end

end A384998.P12178639707355102922

/-! ## A384998.P1777184773116743133

`A160461(n)-A185284(A072642(n))`
-/

namespace A384998.P1777184773116743133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160461 n - A185284 (A072642 n).toNat

end

end A384998.P1777184773116743133

