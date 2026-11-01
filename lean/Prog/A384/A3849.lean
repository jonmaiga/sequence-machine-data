import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

/-!
# A384901: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384896.

The programs for A384901, there is no canonical definition to state claims against.
-/

/-! ## A384901.P11992880195340373492

`A384944(n)+A000523(2^A392378(n))-A384899(n)`
-/

namespace A384901.P11992880195340373492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384944 n + A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A392378 n : ℤ))).toNat - A384899 n

end

end A384901.P11992880195340373492

/-! ## A384901.P2064505959783363331

`A384903(n)%A384867(2*(n+1))`
-/

namespace A384901.P2064505959783363331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384903 n) (A384867 (2 * (n + 1)))

end

end A384901.P2064505959783363331

/-! ## A384901.P7445088488516979572

`A394047(C(A392379(n)+2, n+1)+n)`
-/

namespace A384901.P7445088488516979572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394047 (Nat.choose (A392379 n + 2).toNat (n + 1) + n)

end

end A384901.P7445088488516979572

/-! ## A384901.P6590262293040374616

`A011655(A000712(n))*A255961(n)`
-/

namespace A384901.P6590262293040374616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A000712 n).toNat * A255961 n

end

end A384901.P6590262293040374616

/-! ## A384901.P8995004984990955010

`A011655(A000712(n))*A378289(n)`
-/

namespace A384901.P8995004984990955010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A000712 n).toNat * A378289 n

end

end A384901.P8995004984990955010

/-!
# A384902: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384897.

The programs for A384902, there is no canonical definition to state claims against.
-/

/-! ## A384902.P6564620165257028136

`A384681(n)%A372713(A214899(n))`
-/

namespace A384902.P6564620165257028136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384681 n) (A372713 (A214899 n).toNat)

end

end A384902.P6564620165257028136

/-! ## A384902.P12443740071822168656

`A394047(n)%A372713(A214899(n))`
-/

namespace A384902.P12443740071822168656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394047 n) (A372713 (A214899 n).toNat)

end

end A384902.P12443740071822168656

/-! ## A384902.P10934797293213996009

`2*A144064(n)-A000523(2^A392378(n))`
-/

namespace A384902.P10934797293213996009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144064 n - A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A392378 n : ℤ))).toNat

end

end A384902.P10934797293213996009

/-! ## A384902.P6768951888224609509

`2*A384976(n)-A000523(2^A392378(n))`
-/

namespace A384902.P6768951888224609509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A384976 n - A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A392378 n : ℤ))).toNat

end

end A384902.P6768951888224609509

/-! ## A384902.P437244318128239866

`2*A144064(n)-A001222(3^A392378(n))`
-/

namespace A384902.P437244318128239866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144064 n - A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A392378 n : ℤ))).toNat

end

end A384902.P437244318128239866

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

/-! ## A384905.P8727067477830708052

`A385814(C(n, A388711(n)))`
-/

namespace A384905.P8727067477830708052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385814 (Nat.choose n (A388711 n).toNat)

end

end A384905.P8727067477830708052

/-! ## A384905.P16731206975898633958

`A212974(A322278(n+1))%3`
-/

namespace A384905.P16731206975898633958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212974 (A322278 (n + 1)).toNat) 3

end

end A384905.P16731206975898633958

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

/-! ## A384906.P14216511045891019991

`col(A378819(n+1)+1)`
-/

namespace A384906.P14216511045891019991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A378819 (n + 1) + 1).toNat

end

end A384906.P14216511045891019991

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
# A384907: Number of permutations of {1..n} with all distinct lengths of maximal anti-runs (not increasing by 1).

The programs for A384907, there is no canonical definition to state claims against.
-/

/-! ## A384907.P16495898801793782328

`A147206(3*n+4)+1-A147190(2*n+1)`
-/

namespace A384907.P16495898801793782328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147206 (3 * n + 4) + 1 - A147190 (2 * n + 1)

end

end A384907.P16495898801793782328

/-! ## A384907.P11885123185682863057

`A026482(A006252(n)*A239312(n))`
-/

namespace A384907.P11885123185682863057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026482 (A006252 n * A239312 n).toNat

end

end A384907.P11885123185682863057

/-! ## A384907.P3500729286937873720

`A000142(n)-A237049(A288983(3*n))`
-/

namespace A384907.P3500729286937873720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A237049 (A288983 (3 * n)).toNat

end

end A384907.P3500729286937873720

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

/-! ## A384913.P14861807254356783971

`A253248(A000688(n+1))%A013646(A293780(n+1))`
-/

namespace A384913.P14861807254356783971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253248 (A000688 (n + 1)).toNat) (A013646 (A293780 (n + 1)).toNat)

end

end A384913.P14861807254356783971

/-! ## A384913.P3545274015673406352

`A000688(A112789(n+1))*A253248(A000688(n+1))`
-/

namespace A384913.P3545274015673406352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A112789 (n + 1)).toNat * A253248 (A000688 (n + 1)).toNat

end

end A384913.P3545274015673406352

/-! ## A384913.P15704786679159604498

`A236912(A275812(n+1)%A122927(3*n+4))`
-/

namespace A384913.P15704786679159604498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236912 (Int.tmod (A275812 (n + 1)) (A122927 (3 * n + 4))).toNat

end

end A384913.P15704786679159604498

/-! ## A384913.P14142662879832966592

`∏{e}[A102510(n+1), A039500(#)]`
-/

namespace A384913.P14142662879832966592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A039500 (Nat.factorization (f1 n).natAbs p)

end

end A384913.P14142662879832966592

/-! ## A384913.P5941642441468223356

`A349607(A005361(n+1)%A278981(n+2))`
-/

namespace A384913.P5941642441468223356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349607 (Int.tmod (A005361 (n + 1)) (A278981 (n + 2))).toNat

end

end A384913.P5941642441468223356

/-! ## A384913.P11425767205478772537

`A064150(A005361(n+1))%A049445(A000290(2*n+3))`
-/

namespace A384913.P11425767205478772537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064150 (A005361 (n + 1)).toNat) (A049445 (A000290 (2 * n + 3)).toNat)

end

end A384913.P11425767205478772537

/-! ## A384913.P4671761679316330414

`A368385(∏{e}[n+1, #]%A359908(n+1))`
-/

namespace A384913.P4671761679316330414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368385 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A359908 (n + 1))).toNat

end

end A384913.P4671761679316330414

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

The programs for A384915, the canonical program `A384915.P5316216616895226028` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384915 has offset 1).

The definition of A384915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384915.P5316216616895226028

`∑{d}[n+1, A359552(#)*A384916((n+1)/#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A384915

/-- `∑{d}[n+1, A359552(#)*A384916((n+1)/#)]` -/
def P5316216616895226028.Spec : Prop :=
  ∀ n, P5316216616895226028.a n = A384915 (n + 1)

theorem P5316216616895226028.correct : P5316216616895226028.Spec := by
  intro n
  simp only [A384915, Nat.add_sub_cancel]

end A384915

/-! ## A384915.P6810796965282336413

`A046951((n+1)*A336651(n+1))`
-/

namespace A384915.P6810796965282336413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((n + 1 : ℤ) * A336651 (n + 1)).toNat

end

end A384915.P6810796965282336413

namespace A384915

/-- `A046951((n+1)*A336651(n+1))` -/
def P6810796965282336413.Spec : Prop :=
  ∀ n, P6810796965282336413.a n = A384915 (n + 1)

end A384915

/-! ## A384915.P5518511713915804576

`A159631(A319525(1+n))`
-/

namespace A384915.P5518511713915804576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A319525 (1 + n)).toNat

end

end A384915.P5518511713915804576

namespace A384915

/-- `A159631(A319525(1+n))` -/
def P5518511713915804576.Spec : Prop :=
  ∀ n, P5518511713915804576.a n = A384915 (n + 1)

end A384915

/-! ## A384915.P3878518391771191839

`A159631(A003961(n+1))`
-/

namespace A384915.P3878518391771191839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A003961 (n + 1)).toNat

end

end A384915.P3878518391771191839

namespace A384915

/-- `A159631(A003961(n+1))` -/
def P3878518391771191839.Spec : Prop :=
  ∀ n, P3878518391771191839.a n = A384915 (n + 1)

end A384915

/-! ## A384915.P8886363879292135925

`A159631(A045965(n+1))`
-/

namespace A384915.P8886363879292135925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A045965 (n + 1)).toNat

end

end A384915.P8886363879292135925

namespace A384915

/-- `A159631(A045965(n+1))` -/
def P8886363879292135925.Spec : Prop :=
  ∀ n, P8886363879292135925.a n = A384915 (n + 1)

end A384915

/-! ## A384915.P9137503341440135383

`A159631(A064988(n+1))`
-/

namespace A384915.P9137503341440135383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A064988 (n + 1)).toNat

end

end A384915.P9137503341440135383

namespace A384915

/-- `A159631(A064988(n+1))` -/
def P9137503341440135383.Spec : Prop :=
  ∀ n, P9137503341440135383.a n = A384915 (n + 1)

end A384915

/-! ## A384915.P1101675496831639552

`A159631(A332818(n+1))`
-/

namespace A384915.P1101675496831639552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A332818 (n + 1)).toNat

end

end A384915.P1101675496831639552

namespace A384915

/-- `A159631(A332818(n+1))` -/
def P1101675496831639552.Spec : Prop :=
  ∀ n, P1101675496831639552.a n = A384915 (n + 1)

end A384915

/-! ## A384915.P1449517498510889850

`A005812(A127707(n+1))`
-/

namespace A384915.P1449517498510889850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A127707 (n + 1)).toNat

end

end A384915.P1449517498510889850

namespace A384915

/-- `A005812(A127707(n+1))` -/
def P1449517498510889850.Spec : Prop :=
  ∀ n, P1449517498510889850.a n = A384915 (n + 1)

end A384915

/-! ## A384915.P8585732866763313759

`A105111(A037291(n+1))`
-/

namespace A384915.P8585732866763313759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105111 (A037291 (n + 1)).toNat

end

end A384915.P8585732866763313759

namespace A384915

/-- `A105111(A037291(n+1))` -/
def P8585732866763313759.Spec : Prop :=
  ∀ n, P8585732866763313759.a n = A384915 (n + 1)

end A384915

/-!
# A384916: The number of unordered factorizations of n into powers of primes of the form p^e where p is prime and 0 <= e < p.

The programs for A384916, the canonical program `A384916.P9309222834282099284` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384916 has offset 1).

The definition of A384916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 370 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384916.P9309222834282099284

`A056626(9*A000265(3*(n+1)))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A384916

/-- `A056626(9*A000265(3*(n+1)))` -/
def P9309222834282099284.Spec : Prop :=
  ∀ n, P9309222834282099284.a n = A384916 (n + 1)

theorem P9309222834282099284.correct : P9309222834282099284.Spec := by
  intro n
  simp only [A384916, Nat.add_sub_cancel]

end A384916

/-! ## A384916.P12829880616194625195

`A124765((n+1)/∏{p}[n+1, #]*∏{e}[n+1, ceil(2/#)]*256)`
-/

namespace A384916.P12829880616194625195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ⌈2 / (Nat.factorization (f2 n) p : ℚ)⌉ : ℤ) : ℚ) * 256)).toNat

end

end A384916.P12829880616194625195

namespace A384916

/-- `A124765((n+1)/∏{p}[n+1, #]*∏{e}[n+1, ceil(2/#)]*256)` -/
def P12829880616194625195.Spec : Prop :=
  ∀ n, P12829880616194625195.a n = A384916 (n + 1)

end A384916

/-! ## A384916.P10822893827204790547

`A124765(A003557(n+1)*A062383(2*n+3))`
-/

namespace A384916.P10822893827204790547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A003557 (n + 1) * A062383 (2 * n + 3)).toNat

end

end A384916.P10822893827204790547

namespace A384916

/-- `A124765(A003557(n+1)*A062383(2*n+3))` -/
def P10822893827204790547.Spec : Prop :=
  ∀ n, P10822893827204790547.a n = A384916 (n + 1)

end A384916

/-! ## A384916.P9370993175852417237

`and(A072828(n+1), A298735(n+1))`
-/

namespace A384916.P9370993175852417237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072828 (n + 1)) (A298735 (n + 1))

end

end A384916.P9370993175852417237

namespace A384916

/-- `and(A072828(n+1), A298735(n+1))` -/
def P9370993175852417237.Spec : Prop :=
  ∀ n, P9370993175852417237.a n = A384916 (n + 1)

end A384916

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

namespace A384916

/-- `A353929(∏{e}[n+1, #+1]*A380986(n+1))` -/
def P8261497292481110267.Spec : Prop :=
  ∀ n, P8261497292481110267.a n = A384916 (n + 1)

end A384916

/-! ## A384916.P12515880891766205096

`A064547(A104272(n+1)*A336651(n+1))`
-/

namespace A384916.P12515880891766205096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A104272 (n + 1) * A336651 (n + 1)).toNat

end

end A384916.P12515880891766205096

namespace A384916

/-- `A064547(A104272(n+1)*A336651(n+1))` -/
def P12515880891766205096.Spec : Prop :=
  ∀ n, P12515880891766205096.a n = A384916 (n + 1)

end A384916

/-! ## A384916.P3818779891758060197

`A298735(n+1)+A010051(A326782(n+5))`
-/

namespace A384916.P3818779891758060197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (n + 1) + A010051 (A326782 (n + 5)).toNat

end

end A384916.P3818779891758060197

namespace A384916

/-- `A298735(n+1)+A010051(A326782(n+5))` -/
def P3818779891758060197.Spec : Prop :=
  ∀ n, P3818779891758060197.a n = A384916 (n + 1)

end A384916

/-! ## A384916.P11801621284547547898

`A064547(lcm(A104272(n+1), A336651(n+1)))`
-/

namespace A384916.P11801621284547547898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (Int.lcm (A104272 (n + 1)) (A336651 (n + 1)))

end

end A384916.P11801621284547547898

namespace A384916

/-- `A064547(lcm(A104272(n+1), A336651(n+1)))` -/
def P11801621284547547898.Spec : Prop :=
  ∀ n, P11801621284547547898.a n = A384916 (n + 1)

end A384916

/-! ## A384916.P5598122764872940671

`A049240(A235615(2*n+3))*A298735(n+1)`
-/

namespace A384916.P5598122764872940671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (A235615 (2 * n + 3)).toNat * A298735 (n + 1)

end

end A384916.P5598122764872940671

namespace A384916

/-- `A049240(A235615(2*n+3))*A298735(n+1)` -/
def P5598122764872940671.Spec : Prop :=
  ∀ n, P5598122764872940671.a n = A384916 (n + 1)

end A384916

/-! ## A384916.P2333167741293092353

`gcd(A106741(A007091(n+4)), A298735(n+1))`
-/

namespace A384916.P2333167741293092353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106741 (A007091 (n + 4)).toNat) (A298735 (n + 1))

end

end A384916.P2333167741293092353

namespace A384916

/-- `gcd(A106741(A007091(n+4)), A298735(n+1))` -/
def P2333167741293092353.Spec : Prop :=
  ∀ n, (P2333167741293092353.a n : ℤ) = A384916 (n + 1)

end A384916

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

namespace A384916

/-- `A050320(A001787(∏{p}[n+1, #^val(n+1, #²)]))` -/
def P8568492525736992487.Spec : Prop :=
  ∀ n, P8568492525736992487.a n = A384916 (n + 1)

end A384916

/-! ## A384916.P11446189196116315786

`A322794(gcd(A000265(n+1), A008833(n+1)))`
-/

namespace A384916.P11446189196116315786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (Int.gcd (A000265 (n + 1)) (A008833 (n + 1)))

end

end A384916.P11446189196116315786

namespace A384916

/-- `A322794(gcd(A000265(n+1), A008833(n+1)))` -/
def P11446189196116315786.Spec : Prop :=
  ∀ n, P11446189196116315786.a n = A384916 (n + 1)

end A384916

/-! ## A384916.P16816427692975197450

`A351307(n+1)%A115291(A136082(2*n+5))`
-/

namespace A384916.P16816427692975197450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351307 (n + 1)) (A115291 (A136082 (2 * n + 5)).toNat)

end

end A384916.P16816427692975197450

namespace A384916

/-- `A351307(n+1)%A115291(A136082(2*n+5))` -/
def P16816427692975197450.Spec : Prop :=
  ∀ n, P16816427692975197450.a n = A384916 (n + 1)

end A384916

/-! ## A384916.P9425784583295300736

`and(A148524(n), A298735(n+1))`
-/

namespace A384916.P9425784583295300736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A148524 n) (A298735 (n + 1))

end

end A384916.P9425784583295300736

namespace A384916

/-- `and(A148524(n), A298735(n+1))` -/
def P9425784583295300736.Spec : Prop :=
  ∀ n, P9425784583295300736.a n = A384916 (n + 1)

end A384916

/-! ## A384916.P3131429592871750578

`and(A148528(n), A298735(n+1))`
-/

namespace A384916.P3131429592871750578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A148528 n) (A298735 (n + 1))

end

end A384916.P3131429592871750578

namespace A384916

/-- `and(A148528(n), A298735(n+1))` -/
def P3131429592871750578.Spec : Prop :=
  ∀ n, P3131429592871750578.a n = A384916 (n + 1)

end A384916

/-!
# A384921: Number of permutations [p_1, p_2, ..., p_n], for n >= 1, with |p_{i+1} - p_i| >= 2, for i = 1..n-1, and |p_n - p_1| = 0 or 1.

The programs for A384921, there is no canonical definition to state claims against.
-/

/-! ## A384921.P16403510712507500154

`A002464(n+1)-A237420(A002493(n+1))`
-/

namespace A384921.P16403510712507500154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002464 (n + 1) - A237420 (A002493 (n + 1)).toNat

end

end A384921.P16403510712507500154

/-! ## A384921.P13718156908069371375

`A352829(A182717(n)+A056230(n+1))`
-/

namespace A384921.P13718156908069371375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352829 (A182717 n + A056230 (n + 1)).toNat

end

end A384921.P13718156908069371375

/-! ## A384921.P8236779484275143684

`A185334(n)*A210671(A320296(n+1))`
-/

namespace A384921.P8236779484275143684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185334 n * A210671 (A320296 (n + 1)).toNat

end

end A384921.P8236779484275143684

/-!
# A384922: a(n) is the first digit to the left of the decimal point in (3/2)^n.

The programs for A384922, the canonical program `A384922.P6445870207053674092` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384922 has offset 0).

The definition of A384922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384922.P6445870207053674092

`A002379(n)%10`

The canonical program, it is in `Seq.B001.C014`.
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

/-! ## A384922.P15550077800477526278

`A010879(floor(3^n/2^n))`
-/

namespace A384922.P15550077800477526278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ⌊(3 ^ n : ℚ) / (2 ^ n : ℚ)⌋.toNat

end

end A384922.P15550077800477526278

namespace A384922

/-- `A010879(floor(3^n/2^n))` -/
def P15550077800477526278.Spec : Prop :=
  ∀ n, P15550077800477526278.a n = A384922 n

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

/-! ## A384922.P14652881396682970023

`A010879(A002379(n)-1)+1`
-/

namespace A384922.P14652881396682970023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A002379 n - 1).toNat + 1

end

end A384922.P14652881396682970023

namespace A384922

/-- `A010879(A002379(n)-1)+1` -/
def P14652881396682970023.Spec : Prop :=
  ∀ n, P14652881396682970023.a n = A384922 n

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

/-! ## A384924.P4331481733726533388

`A124600(lt[1, A124609(n)])`
-/

namespace A384924.P4331481733726533388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A384924.P4331481733726533388

/-!
# A384926: Number of partitions of n with six designated summands.

The programs for A384926, there is no canonical definition to state claims against.
-/

/-! ## A384926.P14223361269197379685

`record[A029840(2*n)*A290105(A301918(3*(n+1)))]`
-/

namespace A384926.P14223361269197379685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029840 (2 * n) * A290105 (A301918 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384926.P14223361269197379685

/-! ## A384926.P8876293720929516303

`record[A029840(2*n)/A059233(A000055(n)+3)]`
-/

namespace A384926.P8876293720929516303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029840 (2 * n) : ℚ) / (A059233 (A000055 n + 3).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384926.P8876293720929516303

/-! ## A384926.P18284760823005824073

`record[A029840(2*n)*A290105(A340706(n+5))]`
-/

namespace A384926.P18284760823005824073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029840 (2 * n) * A290105 (A340706 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384926.P18284760823005824073

/-! ## A384926.P17068993623109694580

`A029840(4*n)*A345952(A058622(2*n+3))`
-/

namespace A384926.P17068993623109694580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029840 (4 * n) * A345952 (A058622 (2 * n + 3)).toNat

end

end A384926.P17068993623109694580

/-!
# A384927: a(n) is the maximum size of a subset S of {1, 2, ..., n} such that for any distinct elements t, u in S, t + u does not divide t*u.

The programs for A384927, there is no canonical definition to state claims against.
-/

/-! ## A384927.P17893514054743887237

`∑[A036297(A239657(n+1)*n)]`
-/

namespace A384927.P17893514054743887237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036297 (A239657 (n + 1) * (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384927.P17893514054743887237

/-! ## A384927.P2157433527376890283

`A398582(n+1)%A359085(n+1)`
-/

namespace A384927.P2157433527376890283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398582 (n + 1)) (A359085 (n + 1))

end

end A384927.P2157433527376890283

/-! ## A384927.P10283340439420030684

`∑[A384230(A384230(n+1)*n+1)]`
-/

namespace A384927.P10283340439420030684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384230 (A384230 (n + 1) * (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384927.P10283340439420030684

/-! ## A384927.P6123683385011724396

`∑[A319574(A270417(n+1)^(n+2))]`
-/

namespace A384927.P6123683385011724396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A270417 (n + 1) ^ (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384927.P6123683385011724396

/-! ## A384927.P481616064960219107

`∑[A323497(A270417(n+1)^(n+2))]`
-/

namespace A384927.P481616064960219107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323497 (A270417 (n + 1) ^ (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384927.P481616064960219107

/-!
# A384928: Number of 2-dense sublists of divisors of the n-th triangular number.

The programs for A384928, there is no canonical definition to state claims against.
-/

/-! ## A384928.P15993109728700086158

`A237271(1+abs(1-∑[n]))`
-/

namespace A384928.P15993109728700086158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (1 + |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|).toNat

end

end A384928.P15993109728700086158

/-! ## A384928.P2933531635817878832

`A237271(A179865(n+1))%38`
-/

namespace A384928.P2933531635817878832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237271 (A179865 (n + 1)).toNat) 38

end

end A384928.P2933531635817878832

/-! ## A384928.P8002884372194413544

`A237271(A000007(n)+∑[n])%60`
-/

namespace A384928.P8002884372194413544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237271 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat) 60

end

end A384928.P8002884372194413544

/-! ## A384928.P15611743110266787568

`lcm(A033999(n), A237271(A179865(n+1)))`
-/

namespace A384928.P15611743110266787568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A237271 (A179865 (n + 1)).toNat)

end

end A384928.P15611743110266787568

/-! ## A384928.P5473253832407720194

`or(A185013(n), A237271(A179865(n+1)))`
-/

namespace A384928.P5473253832407720194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185013 n) (A237271 (A179865 (n + 1)).toNat)

end

end A384928.P5473253832407720194

/-! ## A384928.P1031309326891913657

`or(A237271(A179865(n+1)), A382972(n))`
-/

namespace A384928.P1031309326891913657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A237271 (A179865 (n + 1)).toNat) (A382972 n)

end

end A384928.P1031309326891913657

/-! ## A384928.P9770999888783627331

`A237271(A179865(n+1))+A159075(n+2)`
-/

namespace A384928.P9770999888783627331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A179865 (n + 1)).toNat + A159075 (n + 2)

end

end A384928.P9770999888783627331

/-! ## A384928.P7095180907294521054

`A237271(A179865(n+1))+A000038(n+4)`
-/

namespace A384928.P7095180907294521054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A179865 (n + 1)).toNat + A000038 (n + 4)

end

end A384928.P7095180907294521054

/-! ## A384928.P8947010783829957902

`A060576(n+2)*A237271(A179865(n+1))`
-/

namespace A384928.P8947010783829957902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 2) * A237271 (A179865 (n + 1)).toNat

end

end A384928.P8947010783829957902

/-! ## A384928.P14786756201985570077

`A237271(A179865(n+1))+A000035(2*(n+2))`
-/

namespace A384928.P14786756201985570077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A179865 (n + 1)).toNat + A000035 (2 * (n + 2))

end

end A384928.P14786756201985570077

/-! ## A384928.P1141934167907692985

`A237271(A179865(n+1))+A010051(2*(n+2))`
-/

namespace A384928.P1141934167907692985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A179865 (n + 1)).toNat + A010051 (2 * (n + 2))

end

end A384928.P1141934167907692985

/-! ## A384928.P8817427186371034939

`A237271(A179865(n+1))+A006927(A000120(n))`
-/

namespace A384928.P8817427186371034939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A179865 (n + 1)).toNat + A006927 (A000120 n).toNat

end

end A384928.P8817427186371034939

/-! ## A384928.P3797651532633473060

`A237271(A179865(n+1))+A006927(A178786(n))`
-/

namespace A384928.P3797651532633473060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A179865 (n + 1)).toNat + A006927 (A178786 n).toNat

end

end A384928.P3797651532633473060

/-! ## A384928.P17379782268810517839

`A237271(A174973(n+1))*A237271(A179865(n+1))`
-/

namespace A384928.P17379782268810517839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A174973 (n + 1)).toNat * A237271 (A179865 (n + 1)).toNat

end

end A384928.P17379782268810517839

/-! ## A384928.P11837603512624745388

`A237271(A179865(n+1))*A237271(A244971(n+1))`
-/

namespace A384928.P11837603512624745388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A179865 (n + 1)).toNat * A237271 (A244971 (n + 1)).toNat

end

end A384928.P11837603512624745388

/-! ## A384928.P7853279427000427735

`A237271(A179865(n+1))^A237271(A000005(n+1))`
-/

namespace A384928.P7853279427000427735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237271 (A179865 (n + 1)).toNat : ℚ) ^ (A237271 (A000005 (n + 1)).toNat : ℤ)

end

end A384928.P7853279427000427735

/-! ## A384928.P1254224377147679364

`A026747(A179865(n+4))*A237271(A179865(n+1))`
-/

namespace A384928.P1254224377147679364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A179865 (n + 4)).toNat * A237271 (A179865 (n + 1)).toNat

end

end A384928.P1254224377147679364

/-! ## A384928.P7341382700329021722

`A237271(A000217(n^A178334(n)))^A178334(n)`
-/

namespace A384928.P7341382700329021722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237271 (A000217 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A384928.P7341382700329021722

/-!
# A384929: a(n) = (1/2) * Sum_{k=1..n} (n+k)! / k!.

The programs for A384929, the canonical program `A384929.P12774579286931403902` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384929 has offset 1).

The definition of A384929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384929.P2376711830384540273

`1/2*∑{#}[n, (n+1+#+1)!/(#+1)!]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384929.P2376711830384540273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (n + 1 + (k + 1)) : ℚ) / (Nat.factorial (k + 1) : ℚ))

end

end A384929.P2376711830384540273

namespace A384929

/-- `1/2*∑{#}[n, (n+1+#+1)!/(#+1)!]` -/
def P2376711830384540273.Spec : Prop :=
  ∀ n, P2376711830384540273.a n = (A384929 (n + 1) : ℚ)

end A384929

/-! ## A384929.P12774579286931403902

`((2*(n+1)+1)!/(n+2)!-(n+1)!)/2`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384929

/-- `((2*(n+1)+1)!/(n+2)!-(n+1)!)/2` -/
def P12774579286931403902.Spec : Prop :=
  ∀ n, P12774579286931403902.a n = (A384929 (n + 1) : ℚ)

end A384929

/-!
# A384930: Irregular triangle read by rows: T(n,k) is the sum of the terms of the (n-k+1)-th 2-dense sublist of divisors of n, with n >= 1, k >= 1.

The programs for A384930, there is no canonical definition to state claims against.
-/

/-! ## A384930.P4629200078390335693

`A004277(A237270(n+1))-(A390495(n+1)+A390494(n+1))`
-/

namespace A384930.P4629200078390335693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A237270 (n + 1)).toNat - (A390495 (n + 1) + A390494 (n + 1))

end

end A384930.P4629200078390335693

/-! ## A384930.P16687768310915310323

`A005843(A237270(n+1))-A384149(n+1)`
-/

namespace A384930.P16687768310915310323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A237270 (n + 1)).toNat - A384149 (n + 1)

end

end A384930.P16687768310915310323

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
# A384936: a(n) = Sum_{k=1..n} floor( log(A002110(n)) / log(prime(k)) ).

The programs for A384936, the canonical program `A384936.P17740286076774317705` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384936 has offset 0).

The definition of A384936 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, floor(log(A002110(n))/log(A000040(#+1)))]` (program `A384936.P17740286076774317705`, by `A384936.P17740286076774317705.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384936.P17740286076774317705

`∑{#}[n-1, floor(log(A002110(n))/log(A000040(#+1)))]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A384936

/-- `∑{#}[n-1, floor(log(A002110(n))/log(A000040(#+1)))]` -/
def P17740286076774317705.Spec : Prop :=
  ∀ n, P17740286076774317705.a n = A384936 n

theorem P17740286076774317705.correct : P17740286076774317705.Spec := by
  intro n
  simp only [A384936]

end A384936

/-! ## A384936.P11531389031041588395

`A325456(∑[A007599(3*n)])-1`
-/

namespace A384936.P11531389031041588395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325456 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A384936.P11531389031041588395

namespace A384936

/-- `A325456(∑[A007599(3*n)])-1` -/
def P11531389031041588395.Spec : Prop :=
  ∀ n, P11531389031041588395.a n = A384936 n

end A384936

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

/-! ## A384937.P3726771975560573302

`A194640(A149936(n))-A000078(n)`
-/

namespace A384937.P3726771975560573302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A149936 n).toNat - A000078 n

end

end A384937.P3726771975560573302

/-! ## A384937.P11308017567803813727

`A194640(A149936(n))-A351293(n)`
-/

namespace A384937.P11308017567803813727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A149936 n).toNat - A351293 n

end

end A384937.P11308017567803813727

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

/-! ## A384938.P10194705998804686004

`A294472(A102726(n))`
-/

namespace A384938.P10194705998804686004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294472 (A102726 n).toNat

end

end A384938.P10194705998804686004

/-!
# A384939: Maximum element in the continued fraction for (1/n) * Sum_{k>=0} 1/3^(2^k).

The programs for A384939, there is no canonical definition to state claims against.
-/

/-! ## A384939.P10283324538205363076

`A118070(3*n+4)-A185334(A113263(n+1))`
-/

namespace A384939.P10283324538205363076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118070 (3 * n + 4) - A185334 (A113263 (n + 1)).toNat

end

end A384939.P10283324538205363076

/-! ## A384939.P6766643996112099712

`A005843(3*(n+1))-A011744(A380661(3*n+5))`
-/

namespace A384939.P6766643996112099712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (3 * (n + 1)) - A011744 (A380661 (3 * n + 5)).toNat

end

end A384939.P6766643996112099712

/-! ## A384939.P3275493786792830535

`A279387(A225499(2*(n+2)))+A005843(3*n+2)`
-/

namespace A384939.P3275493786792830535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279387 (A225499 (2 * (n + 2))).toNat + A005843 (3 * n + 2)

end

end A384939.P3275493786792830535

/-! ## A384939.P5553337320576541533

`A079498(2*n+3)-A000005(A033451(3*(n+1)))`
-/

namespace A384939.P5553337320576541533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079498 (2 * n + 3) - A000005 (A033451 (3 * (n + 1))).toNat

end

end A384939.P5553337320576541533

/-! ## A384939.P4608890352385317127

`A008458(n+1)-A294821(A001224(n+1))`
-/

namespace A384939.P4608890352385317127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (n + 1) - A294821 (A001224 (n + 1)).toNat

end

end A384939.P4608890352385317127

/-!
# A384941: G.f. A(x) satisfies A(x) = 1 + x/A(-x*A(x))^4.

The programs for A384941, there is no canonical definition to state claims against.
-/

/-! ## A384941.P3321010679096767051

`A384944(∑[n+2]-1)`
-/

namespace A384941.P3321010679096767051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384944 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384941.P3321010679096767051

/-! ## A384941.P13321153979808707566

`A384944(A034856(n+1))+A000007(2*n+3)`
-/

namespace A384941.P13321153979808707566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384944 (A034856 (n + 1)).toNat + A000007 (2 * n + 3)

end

end A384941.P13321153979808707566

/-! ## A384941.P8396619518443747542

`A384944(A034856(n+1))%A069589(n+1)`
-/

namespace A384941.P8396619518443747542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384944 (A034856 (n + 1)).toNat) (A069589 (n + 1))

end

end A384941.P8396619518443747542

/-!
# A384942: G.f. A(x) satisfies A(x) = 1 + x/A(-x*A(x))^5.

The programs for A384942, there is no canonical definition to state claims against.
-/

/-! ## A384942.P6907371673855010889

`A384945(∑[1+n]+n)`
-/

namespace A384942.P6907371673855010889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384945 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384942.P6907371673855010889

/-!
# A384943: G.f. A(x) satisfies A(x) = 1 + x/A(-x*A(x))^6.

The programs for A384943, there is no canonical definition to state claims against.
-/

/-! ## A384943.P11824644640408698945

`A384946(∑[1+n]+n)`
-/

namespace A384943.P11824644640408698945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384946 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384943.P11824644640408698945

/-!
# A384944: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384941.

The programs for A384944, there is no canonical definition to state claims against.
-/

/-! ## A384944.P15375183141398412732

`A384901(n)+A384899(n)-A000523(2^A392378(n))`
-/

namespace A384944.P15375183141398412732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384901 n + A384899 n - A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A392378 n : ℤ))).toNat

end

end A384944.P15375183141398412732

/-! ## A384944.P18157987495659809222

`A384901(n)+A384899(n)-A001222(3^A392378(n))`
-/

namespace A384944.P18157987495659809222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384901 n + A384899 n - A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A392378 n : ℤ))).toNat

end

end A384944.P18157987495659809222

/-!
# A384945: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384942.

The programs for A384945, there is no canonical definition to state claims against.
-/

/-! ## A384945.P8078681412089370921

`A384811(n)-A255067(A185213(n))`
-/

namespace A384945.P8078681412089370921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384811 n - A255067 (A185213 n).toNat

end

end A384945.P8078681412089370921

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

The programs for A384950, the canonical program `A384950.P4073942426591518297` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384950 has offset 0).

The definition of A384950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384950.P4073942426591518297

`∑{#}[n, 3^#*(-2)^(n-#)*C(3*n, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384950

/-- `∑{#}[n, 3^#*(-2)^(n-#)*C(3*n, #)]` -/
def P4073942426591518297.Spec : Prop :=
  ∀ n, P4073942426591518297.a n = (A384950 n : ℚ)

end A384950

/-! ## A384950.P9417686642237065747

`A193842(A022266(n))`
-/

namespace A384950.P9417686642237065747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A022266 n).toNat

end

end A384950.P9417686642237065747

namespace A384950

/-- `A193842(A022266(n))` -/
def P9417686642237065747.Spec : Prop :=
  ∀ n, P9417686642237065747.a n = A384950 n

end A384950

/-! ## A384950.P4695457926450013618

`A193842(A062741(n)+n)`
-/

namespace A384950.P4695457926450013618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A062741 n + (n : ℤ)).toNat

end

end A384950.P4695457926450013618

namespace A384950

/-- `A193842(A062741(n)+n)` -/
def P4695457926450013618.Spec : Prop :=
  ∀ n, P4695457926450013618.a n = A384950 n

end A384950

/-! ## A384950.P5012961716420775850

`A193842(A004273(n)+C(3*n, 2)-(n-1))`
-/

namespace A384950.P5012961716420775850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A004273 n + ((Nat.choose (3 * n) 2 : ℤ) - ((n : ℤ) - 1))).toNat

end

end A384950.P5012961716420775850

namespace A384950

/-- `A193842(A004273(n)+C(3*n, 2)-(n-1))` -/
def P5012961716420775850.Spec : Prop :=
  ∀ n, P5012961716420775850.a n = A384950 n

end A384950

/-! ## A384950.P1098217785066060296

`A119673(A062725(n))`
-/

namespace A384950.P1098217785066060296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A062725 n).toNat

end

end A384950.P1098217785066060296

namespace A384950

/-- `A119673(A062725(n))` -/
def P1098217785066060296.Spec : Prop :=
  ∀ n, P1098217785066060296.a n = A384950 n

end A384950

/-!
# A384951: G.f. A(x) satisfies A(x) = 1 + x*A(x)/A(-x*A(x)).

The programs for A384951, there is no canonical definition to state claims against.
-/

/-! ## A384951.P497300023180964258

`A384976(∑[n+2]-1)`
-/

namespace A384951.P497300023180964258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384976 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384951.P497300023180964258

/-! ## A384951.P6637878304820915504

`A384976(A034856(n+1))+A000007(2*(n+1))`
-/

namespace A384951.P6637878304820915504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384976 (A034856 (n + 1)).toNat + A000007 (2 * (n + 1))

end

end A384951.P6637878304820915504

/-! ## A384951.P17259748742698564485

`A384976(A034856(n+1))%A134490(n)`
-/

namespace A384951.P17259748742698564485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384976 (A034856 (n + 1)).toNat) (A134490 n)

end

end A384951.P17259748742698564485

/-!
# A384955: a(n) is the multinomial coefficient of the digits of n.

The programs for A384955, the canonical program `A384955.P6172935050039872195` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384955 has offset 0).

The definition of A384955 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066459, A269221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A384955.P6172935050039872195

`A269221(n)/A066459(n)`

The canonical program, it is in `Seq.B003.C005`.
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

The programs for A384956, the canonical program `A384956.P1572791689955752356` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384956 has offset 0).

The definition of A384956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384956.P1572791689955752356

`xor(A000120(n), A023416(n))`

The canonical program, it is in `Seq.B003.C005`.
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

/-! ## A384966.P9257358888029443526

`A380237(1+n)-A001895(n+1)`
-/

namespace A384966.P9257358888029443526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380237 (1 + n) - A001895 (n + 1)

end

end A384966.P9257358888029443526

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

/-! ## A384967.P15277984648466456658

`A384850(∑[n+2]-1)`
-/

namespace A384967.P15277984648466456658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384850 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384967.P15277984648466456658

/-! ## A384967.P4438680363006478176

`A105519(A384631(n+5)+A343386(n))`
-/

namespace A384967.P4438680363006478176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (A384631 (n + 5) + A343386 n).toNat

end

end A384967.P4438680363006478176

/-! ## A384967.P625437318842485396

`A381349(A102366(n+1))-A000045(A382324(n+1))`
-/

namespace A384967.P625437318842485396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381349 (A102366 (n + 1)).toNat - A000045 (A382324 (n + 1)).toNat

end

end A384967.P625437318842485396

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

/-! ## A384974.P11790511988535163848

`A384977(∑[1+n]+n)`
-/

namespace A384974.P11790511988535163848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384977 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384974.P11790511988535163848

/-! ## A384974.P16013034647988761317

`A384977(C(n+3, 2)-2)%A181131(2*n+3)`
-/

namespace A384974.P16013034647988761317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384977 (Nat.choose (n + 3) 2 - 2)) (A181131 (2 * n + 3))

end

end A384974.P16013034647988761317

/-! ## A384974.P4431068279532135277

`A384977(C(n+3, 2)-2)%A034687(n+3)`
-/

namespace A384974.P4431068279532135277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384977 (Nat.choose (n + 3) 2 - 2)) (A034687 (n + 3))

end

end A384974.P4431068279532135277

/-!
# A384975: G.f. A(x) satisfies A(x) = 1 + x*A(x)/A(-x*A(x)^5)^3.

The programs for A384975, there is no canonical definition to state claims against.
-/

/-! ## A384975.P8020296648483766809

`A384978(∑[1+n]+n)`
-/

namespace A384975.P8020296648483766809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384978 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384975.P8020296648483766809

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

/-! ## A384976.P17642191922972119017

`A144064(n)-val(A119896(n+1), A339657(n+4))`
-/

namespace A384976.P17642191922972119017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 n - (SequenceMachineLib.valuation (A119896 (n + 1)).toNat (A339657 (n + 4)).toNat : ℤ)

end

end A384976.P17642191922972119017

/-! ## A384976.P12170986680404840976

`A336285(A144064(n)%A119896(n+4))`
-/

namespace A384976.P12170986680404840976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336285 (Int.tmod (A144064 n) (A119896 (n + 4))).toNat

end

end A384976.P12170986680404840976

/-! ## A384976.P14953430542977224225

`A144064(n)-A293162(A384901(n+4)²)`
-/

namespace A384976.P14953430542977224225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 n - A293162 (A384901 (n + 4) ^ 2).toNat

end

end A384976.P14953430542977224225

/-! ## A384976.P2780263939314077161

`A336285(A144064(n))%A225729(3*(n+1))`
-/

namespace A384976.P2780263939314077161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336285 (A144064 n).toNat) (A225729 (3 * (n + 1)))

end

end A384976.P2780263939314077161

/-!
# A384977: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384974.

The programs for A384977, there is no canonical definition to state claims against.
-/

/-! ## A384977.P2902879336943317868

`A341935(A091063(n))+A144064(n)-A291652(n)`
-/

namespace A384977.P2902879336943317868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (A091063 n).toNat + A144064 n - A291652 n

end

end A384977.P2902879336943317868

/-! ## A384977.P417968890991024163

`A341935(A091063(n))+A144064(n)-A378320(n)`
-/

namespace A384977.P417968890991024163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (A091063 n).toNat + A144064 n - A378320 n

end

end A384977.P417968890991024163

/-! ## A384977.P960922918720206656

`A341935(A091063(n))+A144064(n)-A381566(n)`
-/

namespace A384977.P960922918720206656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (A091063 n).toNat + A144064 n - A381566 n

end

end A384977.P960922918720206656

/-! ## A384977.P9079227429723851724

`A341935(A091063(n))+A144064(n)-A384864(n)`
-/

namespace A384977.P9079227429723851724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (A091063 n).toNat + A144064 n - A384864 n

end

end A384977.P9079227429723851724

/-! ## A384977.P3624838488402581152

`A384976(n)+A341935(A091063(n))-A291652(n)`
-/

namespace A384977.P3624838488402581152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384976 n + A341935 (A091063 n).toNat - A291652 n

end

end A384977.P3624838488402581152

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

/-! ## A384978.P14398716228262020607

`A394901(n)%A289283(A163508(n+1))`
-/

namespace A384978.P14398716228262020607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394901 n) (A289283 (A163508 (n + 1)).toNat)

end

end A384978.P14398716228262020607

/-! ## A384978.P3796343423503306852

`and(A393685(A368607(n+1)), A394901(n))`
-/

namespace A384978.P3796343423503306852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A393685 (A368607 (n + 1)).toNat) (A394901 n)

end

end A384978.P3796343423503306852

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

/-! ## A384979.P5439369509011827231

`A003617(A100793(n)+1)`
-/

namespace A384979.P5439369509011827231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A100793 n + 1).toNat

end

end A384979.P5439369509011827231

/-!
# A384980: Number of proper vertex colorings of the n-complete bipartite graph using exactly 4 interchangeable colors.

The programs for A384980, the canonical program `A384980.P3824832553157891283` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384980 has offset 1).

The definition of A384980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384980.P3824832553157891283

`2-2^(n+2)+3^n+4^n`

The canonical program, it is in `Seq.B000.C049`.
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

/-! ## A384981.P2641855596520951961

`∑[A079684(A018030(n)²)]`
-/

namespace A384981.P2641855596520951961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079684 (A018030 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384981.P2641855596520951961

/-!
# A384982: E.g.f. A(x) satisfies A(x) = exp(x*A(x)/A(-x*A(x)^2)).

The programs for A384982, there is no canonical definition to state claims against.
-/

/-! ## A384982.P8555592986604539765

`A384985(∑[1+n]+n)`
-/

namespace A384982.P8555592986604539765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384985 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384982.P8555592986604539765

/-! ## A384982.P8506332804627574476

`C(A384985(A034856(n+1)), A384999(3*n+2))`
-/

namespace A384982.P8506332804627574476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A384985 (A034856 (n + 1)).toNat).toNat (A384999 (3 * n + 2)).toNat

end

end A384982.P8506332804627574476

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
# A384985: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384982.

The programs for A384985, there is no canonical definition to state claims against.
-/

/-! ## A384985.P10189840788189439020

`A004526(A384811(n)+A384718(n))`
-/

namespace A384985.P10189840788189439020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A384811 n + A384718 n).toNat

end

end A384985.P10189840788189439020

/-! ## A384985.P7485805517299686647

`A142150(A384811(n)+A384718(n))`
-/

namespace A384985.P7485805517299686647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A384811 n + A384718 n).toNat

end

end A384985.P7485805517299686647

/-! ## A384985.P4935380640904572384

`(A384811(n)+A005843(A379168(n))-A384721(n))/2`
-/

namespace A384985.P4935380640904572384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384811 n + (A005843 (A379168 n).toNat - A384721 n) : ℚ) / 2

end

end A384985.P4935380640904572384

/-!
# A384986: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384983.

The programs for A384986, there is no canonical definition to state claims against.
-/

/-! ## A384986.P2556774316256134515

`A005843(A384718(n))-(A072088(A384802(n)+1)-1)`
-/

namespace A384986.P2556774316256134515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A384718 n).toNat - (A072088 (A384802 n + 1).toNat - 1)

end

end A384986.P2556774316256134515

/-! ## A384986.P10305823159075037698

`A384813(n)+A072088(A379168(n))-A380178(n)`
-/

namespace A384986.P10305823159075037698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384813 n + A072088 (A379168 n).toNat - A380178 n

end

end A384986.P10305823159075037698

/-! ## A384986.P356778213265166119

`A384985(n)+A072088(A379168(n))-A380178(n)`
-/

namespace A384986.P356778213265166119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384985 n + A072088 (A379168 n).toNat - A380178 n

end

end A384986.P356778213265166119

/-! ## A384986.P4838243793389357217

`A384718(n)+A072088(A379168(n))-A384742(n)`
-/

namespace A384986.P4838243793389357217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384718 n + A072088 (A379168 n).toNat - A384742 n

end

end A384986.P4838243793389357217

/-! ## A384986.P6543238584564504552

`A384811(n)+A384692(n)-A072088(A379168(n))`
-/

namespace A384986.P6543238584564504552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384811 n + A384692 n - A072088 (A379168 n).toNat

end

end A384986.P6543238584564504552

/-!
# A384987: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384984.

The programs for A384987, there is no canonical definition to state claims against.
-/

/-! ## A384987.P743604916469787945

`A384690(n)+A072088(A379168(n))-A384742(n)`
-/

namespace A384987.P743604916469787945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384690 n + A072088 (A379168 n).toNat - A384742 n

end

end A384987.P743604916469787945

/-! ## A384987.P1721540043739519775

`A384986(n)+A384722(n)-A072088(A379168(n))`
-/

namespace A384987.P1721540043739519775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384986 n + A384722 n - A072088 (A379168 n).toNat

end

end A384987.P1721540043739519775

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

/-!
# A384988: a(n) = Stirling2(n,2)^2 + Stirling2(n,3).

The programs for A384988, the canonical program `A384988.P7265471971138611684` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384988 has offset 1).

The definition of A384988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384988.P7265471971138611684

`2^(2*(n+1)-2)+1/2*3^n-3*2^n+3/2`

The canonical program, it is in `Seq.B000.C049`.
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

/-! ## A384992.P11020843071352257579

`eq[A008474(n+1), A381202(n+1)]+1`
-/

namespace A384992.P11020843071352257579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381202 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A384992.P11020843071352257579

/-! ## A384992.P15656203004533844961

`record[A381431(n+1)%A201847(A381431(2*n+5))]`
-/

namespace A384992.P15656203004533844961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381431 (n + 1)) (A201847 (A381431 (2 * n + 5)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384992.P15656203004533844961

/-! ## A384992.P6617131765804984930

`lt[and(A353853(A348973(n+1)), 60*n), 3]+1`
-/

namespace A384992.P6617131765804984930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A353853 (A348973 (n + 1)).toNat) (60 * n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A384992.P6617131765804984930

/-! ## A384992.P13420124387522180062

`lt[A182850(n+1), A341774(3*n+4)+2]+1`
-/

namespace A384992.P13420124387522180062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341774 (3 * n + 4) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A384992.P13420124387522180062

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

/-! ## A384993.P5599266927709539929

`A069010(A103294(n)*A188048(n))`
-/

namespace A384993.P5599266927709539929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A103294 n * A188048 n).toNat

end

end A384993.P5599266927709539929

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

/-! ## A384993.P2392052510458627442

`C(A043561(A001911(n)), A345123(n))`
-/

namespace A384993.P2392052510458627442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A043561 (A001911 n).toNat).toNat (A345123 n).toNat

end

end A384993.P2392052510458627442

/-!
# A384994: Positive numbers whose prime indices of their prime factors, together with their exponents are distinct.

The programs for A384994, there is no canonical definition to state claims against.
-/

/-! ## A384994.P14314316503359567092

`∩[A325130(n+1), A354928(n+1)]`
-/

namespace A384994.P14314316503359567092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384994.P14314316503359567092

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

/-! ## A384994.P3952178956558811151

`filter[A325131(n+1), A028234(#)]`
-/

namespace A384994.P3952178956558811151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A028234 (f1 j).toNat = 1) n)

end

end A384994.P3952178956558811151

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

/-!
# A384996: Numbers m such that phi(m) is a hexagonal number.

The programs for A384996, there is no canonical definition to state claims against.
-/

/-! ## A384996.P3143153819708815570

`eq[1, A355342(sqrt(A127473(n+1)))]+1`
-/

namespace A384996.P3143153819708815570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355342 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A384996.P3143153819708815570

/-! ## A384996.P11438276525413350713

`eq[1, A355342(n+1-A051953(n+1))]+1`
-/

namespace A384996.P11438276525413350713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355342 ((n + 1 : ℤ) - A051953 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A384996.P11438276525413350713

/-! ## A384996.P14923446891194729968

`eq[1, A090214(A000010(n+1))]+1`
-/

namespace A384996.P14923446891194729968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090214 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A384996.P14923446891194729968

/-! ## A384996.P13616848869914280339

`eq[1, A338479(A319998(2*(n+1))/2)]+1`
-/

namespace A384996.P13616848869914280339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338479 (SequenceMachineLib.roundAway ((A319998 (2 * (n + 1)) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A384996.P13616848869914280339

/-! ## A384996.P1498939781145023084

`eq[1, A338479(A002618(n+1)/(n+1))]+1`
-/

namespace A384996.P1498939781145023084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338479 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A384996.P1498939781145023084

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

/-! ## A384998.P3903839455142733487

`A077285(n)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A384998.P3903839455142733487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077285 n + a (A000027 (n + 1) - 2).toNat

end

end A384998.P3903839455142733487

/-! ## A384998.P13872642322779577876

`∑[A290216(2*n²)+n]`
-/

namespace A384998.P13872642322779577876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290216 (2 * n ^ 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384998.P13872642322779577876

/-! ## A384998.P6163712472978179372

`∑[abs(A001489(n)-A290216(2*n²))]`
-/

namespace A384998.P6163712472978179372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A290216 (2 * n ^ 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384998.P6163712472978179372

/-! ## A384998.P15668847139223886227

`∑[∑[A010673(n)]-(n%2-A290216(2*n²))]`
-/

namespace A384998.P15668847139223886227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (((n % 2 : ℕ) : ℤ) - A290216 (2 * n ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384998.P15668847139223886227

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

/-! ## A384998.P8976109711723607899

`∑[A290216(A046092(n))%A000032(n+2)]`
-/

namespace A384998.P8976109711723607899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290216 (A046092 n).toNat) (A000032 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384998.P8976109711723607899

