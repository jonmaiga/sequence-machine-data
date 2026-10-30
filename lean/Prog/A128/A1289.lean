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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A128901: Number of degree n polynomials over GF(2) (with nonzero constant term) at Hamming distance 1 from some irreducible polynomial.

The programs for A128901, there is no canonical definition to state claims against.
-/

/-! ## A128901.P2886588981846070668

`A000079(n)-(A128903(n+1)+A000010(A000079(n)))`
-/

namespace A128901.P2886588981846070668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A128903 (n + 1) + A000010 (A000079 n).toNat)

end

end A128901.P2886588981846070668

/-! ## A128901.P15302742800561229931

`A003188(A000225(n))-A128903(n+1)`
-/

namespace A128901.P15302742800561229931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A000225 n).toNat - A128903 (n + 1)

end

end A128901.P15302742800561229931

/-! ## A128901.P9945923796546703028

`A065620(A131577(n))-A128903(n+1)`
-/

namespace A128901.P9945923796546703028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A131577 n).toNat - A128903 (n + 1)

end

end A128901.P9945923796546703028

/-! ## A128901.P205422969782897968

`Δ[A000010(A000079(n))]-A128903(n+1)`
-/

namespace A128901.P205422969782897968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A128903 (n + 1)

end

end A128901.P205422969782897968

/-! ## A128901.P11455092121321606147

`A175126(2^n)-A128903(n+1)`
-/

namespace A128901.P11455092121321606147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (2 ^ n) - A128903 (n + 1)

end

end A128901.P11455092121321606147

/-!
# A128902: Number of degree n polynomials over GF(2) (with nonzero constant term) at Hamming distance 2 from some irreducible polynomial.

The programs for A128902, there is no canonical definition to state claims against.
-/

/-! ## A128902.P4731310398293752298

`ceil(2^(n-1)-A059966(n+1))`
-/

namespace A128902.P4731310398293752298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A059966 (n + 1) : ℚ)⌉

end

end A128902.P4731310398293752298

/-! ## A128902.P5621007833222864833

`A058766(n+1)%ceil(2^(n-1))`
-/

namespace A128902.P5621007833222864833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058766 (n + 1)) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A128902.P5621007833222864833

/-! ## A128902.P6952201462063630238

`ceil(2^(n-1))-A001037(ceil(sqrt(∑[2*n])))`
-/

namespace A128902.P6952201462063630238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A001037 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat

end

end A128902.P6952201462063630238

/-! ## A128902.P7994058980187569817

`and(-2, 2^n)%(A001037(n+1)+ceil(2^(n-1)))`
-/

namespace A128902.P7994058980187569817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (-2) (2 ^ n : ℤ)) (A001037 (n + 1) + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉)

end

end A128902.P7994058980187569817

/-! ## A128902.P17411566932761085659

`abs(ceil(2^(n-1))-A001037(floor(2*n/(n+1))+n))`
-/

namespace A128902.P17411566932761085659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A001037 (⌊(2 * n : ℚ) / (n + 1 : ℚ)⌋ + (n : ℤ)).toNat|

end

end A128902.P17411566932761085659

/-!
# A128903: Number of degree n polynomials over GF(2) (with nonzero constant term) at Hamming distance 3 from some irreducible polynomial.

The programs for A128903, there is no canonical definition to state claims against.
-/

/-! ## A128903.P12121483499831478698

`A175126(A000079(n)-2*A128901(n+1))`
-/

namespace A128903.P12121483499831478698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A000079 n - 2 * A128901 (n + 1)).toNat

end

end A128903.P12121483499831478698

/-! ## A128903.P5745168774146515974

`A175126(A000079(n)-A128901(n+1)-A128901(n+1))`
-/

namespace A128903.P5745168774146515974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A000079 n - A128901 (n + 1) - A128901 (n + 1)).toNat

end

end A128903.P5745168774146515974

/-! ## A128903.P3322317962657347552

`A003188(A000225(n))-A128901(n+1)`
-/

namespace A128903.P3322317962657347552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A000225 n).toNat - A128901 (n + 1)

end

end A128903.P3322317962657347552

/-! ## A128903.P4132482926920584121

`Δ[A000010(A000079(n))]-A128901(n+1)`
-/

namespace A128903.P4132482926920584121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A128901 (n + 1)

end

end A128903.P4132482926920584121

/-! ## A128903.P16466591283202833039

`A301572(A128901(n+1))`
-/

namespace A128903.P16466591283202833039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301572 (A128901 (n + 1)).toNat

end

end A128903.P16466591283202833039

/-!
# A128905: Numbers k such that the k-th triangular number has exactly four distinct prime factors.

The programs for A128905, there is no canonical definition to state claims against.
-/

/-! ## A128905.P6067285113780072164

`row(A333771(n+1))`
-/

namespace A128905.P6067285113780072164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A333771 (n + 1)).toNat

end

end A128905.P6067285113780072164

/-! ## A128905.P9079563185948039212

`eq[28, A077462(A000217(n))]`
-/

namespace A128905.P9079563185948039212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A000217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128905.P9079563185948039212

/-! ## A128905.P5926614959730874782

`A294317(A333771(n+1)-2)`
-/

namespace A128905.P5926614959730874782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (A333771 (n + 1) - 2).toNat

end

end A128905.P5926614959730874782

/-! ## A128905.P17281250197701623951

`filter[A114435(n+1), A175608(#)]`
-/

namespace A128905.P17281250197701623951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175608 (f1 j).toNat = 1) n)

end

end A128905.P17281250197701623951

/-! ## A128905.P9221574207938864872

`∩[A114435(n+1), A215726(n+1)]`
-/

namespace A128905.P9221574207938864872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128905.P9221574207938864872

/-! ## A128905.P9772807227365782171

`round(A008683(12*n+8)+sqrt(2*A333771(n+1)))`
-/

namespace A128905.P9772807227365782171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008683 (12 * n + 8) : ℝ) + Real.sqrt (2 * A333771 (n + 1) : ℝ))

end

end A128905.P9772807227365782171

/-! ## A128905.P7710992582639034269

`A294317(A333771(n+1))/A020639(2*(n+1))`
-/

namespace A128905.P7710992582639034269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294317 (A333771 (n + 1)).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A128905.P7710992582639034269

/-! ## A128905.P4841022254120887817

`A294317(A333771(n+1))/A000034(A001844(n))`
-/

namespace A128905.P4841022254120887817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294317 (A333771 (n + 1)).toNat : ℚ) / (A000034 (A001844 n).toNat : ℚ)

end

end A128905.P4841022254120887817

/-! ## A128905.P5422990988395679897

`A294317(A333771(n+1))/A000005(A062584(n))`
-/

namespace A128905.P5422990988395679897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294317 (A333771 (n + 1)).toNat : ℚ) / (A000005 (A062584 n).toNat : ℚ)

end

end A128905.P5422990988395679897

/-!
# A128906: Difference between the greatest primitive root and the least primitive root of the n-th prime.

The programs for A128906, there is no canonical definition to state claims against.
-/

/-! ## A128906.P10508226728437354963

`A071894(n+1)-A001918(n+1)`
-/

namespace A128906.P10508226728437354963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071894 (n + 1) - A001918 (n + 1)

end

end A128906.P10508226728437354963

/-! ## A128906.P3217335755856437838

`A000040(n+1)-(A002199(n+1)+A001918(n+1))`
-/

namespace A128906.P3217335755856437838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A002199 (n + 1) + A001918 (n + 1))

end

end A128906.P3217335755856437838

/-! ## A128906.P3052861268625625988

`A071894(n+1)-A046145(Δ[A007504(n)])`
-/

namespace A128906.P3052861268625625988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071894 (n + 1) - A046145 (f1 (n + 1) - f1 n).toNat

end

end A128906.P3052861268625625988

/-! ## A128906.P16291254589746919440

`A071894(n+1)-A111076(Δ[A007504(n)])`
-/

namespace A128906.P16291254589746919440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071894 (n + 1) - A111076 (f1 (n + 1) - f1 n).toNat

end

end A128906.P16291254589746919440

/-! ## A128906.P17294768620119869371

`A046146(A000040(n+1))-A001918(n+1)`
-/

namespace A128906.P17294768620119869371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (A000040 (n + 1)).toNat - A001918 (n + 1)

end

end A128906.P17294768620119869371

/-! ## A128906.P11858601244882267417

`A071894(n+1)-A046145(A000040(n+1))`
-/

namespace A128906.P11858601244882267417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071894 (n + 1) - A046145 (A000040 (n + 1)).toNat

end

end A128906.P11858601244882267417

/-! ## A128906.P5929287421147986734

`A071894(n+1)-A111076(A006005(n+1))`
-/

namespace A128906.P5929287421147986734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071894 (n + 1) - A111076 (A006005 (n + 1)).toNat

end

end A128906.P5929287421147986734

/-! ## A128906.P842844602322698138

`A071894(n+1)-A046145(A008578(n+2))`
-/

namespace A128906.P842844602322698138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071894 (n + 1) - A046145 (A008578 (n + 2)).toNat

end

end A128906.P842844602322698138

/-! ## A128906.P9813452791451021064

`abs(A046145(A182986(n+2))-A071894(n+1))`
-/

namespace A128906.P9813452791451021064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A046145 (A182986 (n + 2)).toNat - A071894 (n + 1)|

end

end A128906.P9813452791451021064

/-! ## A128906.P3012016184448031030

`A071894(n+1)-A046145(record[A111089(n+1)])`
-/

namespace A128906.P3012016184448031030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071894 (n + 1) - A046145 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A128906.P3012016184448031030

/-! ## A128906.P7254265775906553006

`A071894(n+1)-A046145(record[A006530(n+2)])`
-/

namespace A128906.P7254265775906553006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071894 (n + 1) - A046145 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A128906.P7254265775906553006

/-! ## A128906.P12412005941313706982

`A071894(n+1)-A046145(record[A020639(n+2)])`
-/

namespace A128906.P12412005941313706982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071894 (n + 1) - A046145 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A128906.P12412005941313706982

/-! ## A128906.P1309740028232626502

`A071894(n+1)-A111076(record[A006530(n+2)])`
-/

namespace A128906.P1309740028232626502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071894 (n + 1) - A111076 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A128906.P1309740028232626502

/-!
# A128907: Semiprimes pq such that p, q are odd primes and p < q <= 4p+11.

The programs for A128907, there is no canonical definition to state claims against.
-/

/-! ## A128907.P9393739530017809866

`∩[A272592(n+1), A362910(n+1)]`
-/

namespace A128907.P9393739530017809866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128907.P9393739530017809866

/-! ## A128907.P2386542272468561993

`∩[A348748(n+1), A362910(n+1)]`
-/

namespace A128907.P2386542272468561993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128907.P2386542272468561993

/-! ## A128907.P3039224503788073599

`∩[A306102(n+1), A362910(n+1)]`
-/

namespace A128907.P3039224503788073599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128907.P3039224503788073599

/-! ## A128907.P4047891233145469611

`∩[A265128(n+1), A362910(n+1)]`
-/

namespace A128907.P4047891233145469611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128907.P4047891233145469611

/-! ## A128907.P16487777719408190836

`A326679(A137316(n+1))+A046388(n+1)`
-/

namespace A128907.P16487777719408190836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326679 (A137316 (n + 1)).toNat + A046388 (n + 1)

end

end A128907.P16487777719408190836

/-!
# A128908: Riordan array (1, x/(1-x)^2).

The programs for A128908, the canonical program `A128908.P1795975994181905866` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128908 has offset 0).

The definition of A128908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128908.P5462617559761870047

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A128908.P5462617559761870047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0] fun n a =>
  2 * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n

end

end A128908.P5462617559761870047

namespace A128908

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)` -/
def P5462617559761870047.Spec : Prop :=
  ∀ n, P5462617559761870047.a n = A128908 n

end A128908

/-! ## A128908.P4831835360206876241

`T(n-1,k)+T(n-1,k-1)+T(n-1,k)-T(n-2,k)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A128908.P4831835360206876241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2 a n)

end

end A128908.P4831835360206876241

namespace A128908

/-- `T(n-1,k)+T(n-1,k-1)+T(n-1,k)-T(n-2,k)` -/
def P4831835360206876241.Spec : Prop :=
  ∀ n, P4831835360206876241.a n = A128908 n

end A128908

/-! ## A128908.P1795975994181905866

`A236376(n-1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A128908

/-- `A236376(n-1)-a(n-1)` -/
def P1795975994181905866.Spec : Prop :=
  ∀ n, P1795975994181905866.a n = A128908 n

theorem P1795975994181905866.correct : P1795975994181905866.Spec := by
  intro n
  simp only [A128908]

end A128908

/-! ## A128908.P13331817039258066779

`C(A134478(n)-1, A025581(n))`
-/

namespace A128908.P13331817039258066779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134478 n - 1).toNat (A025581 n).toNat

end

end A128908.P13331817039258066779

namespace A128908

/-- `C(A134478(n)-1, A025581(n))` -/
def P13331817039258066779.Spec : Prop :=
  ∀ n, (P13331817039258066779.a n : ℤ) = A128908 n

end A128908

/-! ## A128908.P12522527460950813974

`A000007(n)+A085478(n)-A165253(n)`
-/

namespace A128908.P12522527460950813974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A085478 n - A165253 n)

end

end A128908.P12522527460950813974

namespace A128908

/-- `A000007(n)+A085478(n)-A165253(n)` -/
def P12522527460950813974.Spec : Prop :=
  ∀ n, P12522527460950813974.a n = A128908 n

end A128908

/-! ## A128908.P8599061336434545572

`A085478(n)+A236376(n)-A078812(n)`
-/

namespace A128908.P8599061336434545572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n + (A236376 n - A078812 n)

end

end A128908.P8599061336434545572

namespace A128908

/-- `A085478(n)+A236376(n)-A078812(n)` -/
def P8599061336434545572.Spec : Prop :=
  ∀ n, P8599061336434545572.a n = A128908 n

end A128908

/-! ## A128908.P8842719565130404406

`A078812(n)+A236376(n)-A111125(n)`
-/

namespace A128908.P8842719565130404406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n + (A236376 n - A111125 n)

end

end A128908.P8842719565130404406

namespace A128908

/-- `A078812(n)+A236376(n)-A111125(n)` -/
def P8842719565130404406.Spec : Prop :=
  ∀ n, P8842719565130404406.a n = A128908 n

end A128908

/-! ## A128908.P11305621481539090693

`A165253(n+1)+A236376(n)-A085478(n+1)`
-/

namespace A128908.P11305621481539090693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165253 (n + 1) + (A236376 n - A085478 (n + 1))

end

end A128908.P11305621481539090693

namespace A128908

/-- `A165253(n+1)+A236376(n)-A085478(n+1)` -/
def P11305621481539090693.Spec : Prop :=
  ∀ n, P11305621481539090693.a n = A128908 n

end A128908

/-! ## A128908.P18155155182254394035

`A097805(A245300(n)+A002262(n))`
-/

namespace A128908.P18155155182254394035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A245300 n + A002262 n).toNat

end

end A128908.P18155155182254394035

namespace A128908

/-- `A097805(A245300(n)+A002262(n))` -/
def P18155155182254394035.Spec : Prop :=
  ∀ n, P18155155182254394035.a n = A128908 n

end A128908

/-! ## A128908.P13680357520999007214

`A153764(A185870(n+1)-3)`
-/

namespace A128908.P13680357520999007214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (A185870 (n + 1) - 3).toNat

end

end A128908.P13680357520999007214

namespace A128908

/-- `A153764(A185870(n+1)-3)` -/
def P13680357520999007214.Spec : Prop :=
  ∀ n, P13680357520999007214.a n = A128908 n

end A128908

/-! ## A128908.P10285290774562636740

`A153764(A061579(n)+A008486(n))`
-/

namespace A128908.P10285290774562636740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (A061579 n + A008486 n).toNat

end

end A128908.P10285290774562636740

namespace A128908

/-- `A153764(A061579(n)+A008486(n))` -/
def P10285290774562636740.Spec : Prop :=
  ∀ n, P10285290774562636740.a n = A128908 n

end A128908

/-! ## A128908.P9777088877962311244

`A153764(A061579(n)+A008585(n))`
-/

namespace A128908.P9777088877962311244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (A061579 n + A008585 n).toNat

end

end A128908.P9777088877962311244

namespace A128908

/-- `A153764(A061579(n)+A008585(n))` -/
def P9777088877962311244.Spec : Prop :=
  ∀ n, P9777088877962311244.a n = A128908 n

end A128908

/-! ## A128908.P441477869964601570

`A153764(A093995(n+1)+A004273(n))`
-/

namespace A128908.P441477869964601570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (A093995 (n + 1) + A004273 n).toNat

end

end A128908.P441477869964601570

namespace A128908

/-- `A153764(A093995(n+1)+A004273(n))` -/
def P441477869964601570.Spec : Prop :=
  ∀ n, P441477869964601570.a n = A128908 n

end A128908

/-!
# A128910: Similar to A057835 except using K * X / log(X), K=1.022.

The programs for A128910, there is no canonical definition to state claims against.
-/

/-! ## A128910.P16371661554293317589

`or((n+2)!-(n+2), A001222((2*n)!))`
-/

namespace A128910.P16371661554293317589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((Nat.factorial (n + 2) : ℤ) - (n + 2 : ℤ)) (A001222 (Nat.factorial (2 * n)))

end

end A128910.P16371661554293317589

/-!
# A128911: Square tribonacci numbers.

The programs for A128911, there is no canonical definition to state claims against.
-/

/-! ## A128911.P2397119701168602002

`A240562(n+1)²`
-/

namespace A128911.P2397119701168602002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240562 (n + 1) ^ 2

end

end A128911.P2397119701168602002

/-!
# A128912: Numbers m of the form (sum of digits of m)^k, k > 1.

The programs for A128912, there is no canonical definition to state claims against.
-/

/-! ## A128912.P12901172821079517674

`A023106(comp[A129513(n+1)])`
-/

namespace A128912.P12901172821079517674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129513 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023106 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A128912.P12901172821079517674

/-! ## A128912.P13131609244437700396

`A023106(and(n+8, A198275(n+2)))`
-/

namespace A128912.P13131609244437700396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023106 (Int.land (n + 8 : ℤ) (A198275 (n + 2))).toNat

end

end A128912.P13131609244437700396

/-! ## A128912.P17771218493701011438

`record[A023106(n)^A055017(A061470(n+1))]`
-/

namespace A128912.P17771218493701011438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023106 n : ℚ) ^ (A055017 (A061470 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128912.P17771218493701011438

/-! ## A128912.P4796183584054650212

`A023106(n+8)%A023106(record[A309503(n+10)])`
-/

namespace A128912.P4796183584054650212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309503 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023106 (n + 8)) (A023106 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A128912.P4796183584054650212

/-!
# A128913: a(n) = n*pi(n).

The programs for A128913, the canonical program `A128913.P17301333717528200460` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128913 has offset 1).

The definition of A128913 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000720(n+1)` (program `A128913.P17301333717528200460`, by `A128913.P17301333717528200460.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128913.P17301333717528200460

`(n+1)*A000720(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A128913

/-- `(n+1)*A000720(n+1)` -/
def P17301333717528200460.Spec : Prop :=
  ∀ n, P17301333717528200460.a n = A128913 (n + 1)

theorem P17301333717528200460.correct : P17301333717528200460.Spec := by
  intro n
  simp only [A128913, Nat.add_sub_cancel]

end A128913

/-! ## A128913.P1920093236707833237

`(n+1)*∑[C(C(2, ∑{e}[n+1, #]), 2)]`
-/

namespace A128913.P1920093236707833237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128913.P1920093236707833237

namespace A128913

/-- `(n+1)*∑[C(C(2, ∑{e}[n+1, #]), 2)]` -/
def P1920093236707833237.Spec : Prop :=
  ∀ n, (P1920093236707833237.a n : ℤ) = A128913 (n + 1)

theorem P1920093236707833237.correct : P1920093236707833237.Spec := by
  intro n
  simp only [A128913, Nat.add_sub_cancel, A128913.P1920093236707833237.f2, A128913.P1920093236707833237.f1, A128913.P1920093236707833237.a, A128913.P17301333717528200460.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128913

/-! ## A128913.P10792107712960091251

`(n+1)*∑[∑{p}[n+1, val(#, n+1)]]`
-/

namespace A128913.P10792107712960091251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128913.P10792107712960091251

namespace A128913

/-- `(n+1)*∑[∑{p}[n+1, val(#, n+1)]]` -/
def P10792107712960091251.Spec : Prop :=
  ∀ n, (P10792107712960091251.a n : ℤ) = A128913 (n + 1)

end A128913

/-! ## A128913.P1162481209628122146

`(n+1)*∑[∑{p}[n+1, C(#, n+1)]]`
-/

namespace A128913.P1162481209628122146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128913.P1162481209628122146

namespace A128913

/-- `(n+1)*∑[∑{p}[n+1, C(#, n+1)]]` -/
def P1162481209628122146.Spec : Prop :=
  ∀ n, (P1162481209628122146.a n : ℤ) = A128913 (n + 1)

end A128913

/-! ## A128913.P7689871946368056266

`(n+1)*∑[C(n, ∏{e}[n+1, n*#])]`
-/

namespace A128913.P7689871946368056266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f2 n), n * Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128913.P7689871946368056266

namespace A128913

/-- `(n+1)*∑[C(n, ∏{e}[n+1, n*#])]` -/
def P7689871946368056266.Spec : Prop :=
  ∀ n, (P7689871946368056266.a n : ℤ) = A128913 (n + 1)

end A128913

/-! ## A128913.P13574948640883099463

`(n+1)*∑[∑{p}[n+1, floor(#/(n+1))]]`
-/

namespace A128913.P13574948640883099463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128913.P13574948640883099463

namespace A128913

/-- `(n+1)*∑[∑{p}[n+1, floor(#/(n+1))]]` -/
def P13574948640883099463.Spec : Prop :=
  ∀ n, P13574948640883099463.a n = A128913 (n + 1)

end A128913

/-! ## A128913.P6096982379748978167

`(n+1)*(∑[∏{p}[n+1, val(#, n+1)]]-1)`
-/

namespace A128913.P6096982379748978167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A128913.P6096982379748978167

namespace A128913

/-- `(n+1)*(∑[∏{p}[n+1, val(#, n+1)]]-1)` -/
def P6096982379748978167.Spec : Prop :=
  ∀ n, P6096982379748978167.a n = A128913 (n + 1)

end A128913

/-! ## A128913.P3350913169266552967

`(n+1)*∑[A010051(n+1)]`
-/

namespace A128913.P3350913169266552967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128913.P3350913169266552967

namespace A128913

/-- `(n+1)*∑[A010051(n+1)]` -/
def P3350913169266552967.Spec : Prop :=
  ∀ n, P3350913169266552967.a n = A128913 (n + 1)

end A128913

/-! ## A128913.P5543129371896714926

`(n+1)*(A036234(n+1)-1)`
-/

namespace A128913.P5543129371896714926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A036234 (n + 1) - 1)

end

end A128913.P5543129371896714926

namespace A128913

/-- `(n+1)*(A036234(n+1)-1)` -/
def P5543129371896714926.Spec : Prop :=
  ∀ n, P5543129371896714926.a n = A128913 (n + 1)

theorem P5543129371896714926.correct : P5543129371896714926.Spec := by
  intro n
  simp only [A128913, Nat.add_sub_cancel, A128913.P5543129371896714926.a, A128913.P17301333717528200460.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128913

/-! ## A128913.P11013086592152974113

`(n+1)*(n-A065855(n+1))`
-/

namespace A128913.P11013086592152974113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - A065855 (n + 1))

end

end A128913.P11013086592152974113

namespace A128913

/-- `(n+1)*(n-A065855(n+1))` -/
def P11013086592152974113.Spec : Prop :=
  ∀ n, P11013086592152974113.a n = A128913 (n + 1)

theorem P11013086592152974113.correct : P11013086592152974113.Spec := by
  intro n
  simp only [A128913, Nat.add_sub_cancel, A128913.P11013086592152974113.a, A128913.P17301333717528200460.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065855, A065855.P16805213270251966039.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128913

/-! ## A128913.P4904395536877744849

`(n+1)*∑[A129950(n+1)²]`
-/

namespace A128913.P4904395536877744849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128913.P4904395536877744849

namespace A128913

/-- `(n+1)*∑[A129950(n+1)²]` -/
def P4904395536877744849.Spec : Prop :=
  ∀ n, P4904395536877744849.a n = A128913 (n + 1)

end A128913

/-! ## A128913.P1544232216674893746

`(n+1)*∑[A227625(n+1)²]`
-/

namespace A128913.P1544232216674893746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227625 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128913.P1544232216674893746

namespace A128913

/-- `(n+1)*∑[A227625(n+1)²]` -/
def P1544232216674893746.Spec : Prop :=
  ∀ n, P1544232216674893746.a n = A128913 (n + 1)

end A128913

/-! ## A128913.P10839025118730124022

`(n+1)*∑[char[record[A000010(n+1)]]]`
-/

namespace A128913.P10839025118730124022
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128913.P10839025118730124022

namespace A128913

/-- `(n+1)*∑[char[record[A000010(n+1)]]]` -/
def P10839025118730124022.Spec : Prop :=
  ∀ n, (P10839025118730124022.a n : ℤ) = A128913 (n + 1)

end A128913

/-! ## A128913.P4249132461124398700

`(n+1)*∑[floor(atan(A089026(n+1)))]`
-/

namespace A128913.P4249132461124398700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A089026 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128913.P4249132461124398700

namespace A128913

/-- `(n+1)*∑[floor(atan(A089026(n+1)))]` -/
def P4249132461124398700.Spec : Prop :=
  ∀ n, P4249132461124398700.a n = A128913 (n + 1)

end A128913

/-! ## A128913.P1425006620727969323

`(n+1)*(n+1-A062298(n+1))`
-/

namespace A128913.P1425006620727969323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A062298 (n + 1))

end

end A128913.P1425006620727969323

namespace A128913

/-- `(n+1)*(n+1-A062298(n+1))` -/
def P1425006620727969323.Spec : Prop :=
  ∀ n, P1425006620727969323.a n = A128913 (n + 1)

theorem P1425006620727969323.correct : P1425006620727969323.Spec := by
  intro n
  simp only [A128913, Nat.add_sub_cancel, A128913.P1425006620727969323.a, A128913.P17301333717528200460.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128913

/-! ## A128913.P4020640530334617787

`(n+1)*∑[char[A000040(n+1)-1]]`
-/

namespace A128913.P4020640530334617787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128913.P4020640530334617787

namespace A128913

/-- `(n+1)*∑[char[A000040(n+1)-1]]` -/
def P4020640530334617787.Spec : Prop :=
  ∀ n, (P4020640530334617787.a n : ℤ) = A128913 (n + 1)

end A128913

/-! ## A128913.P3687066113018550053

`(n+1)*∑[char[A006530(n+2)-1]]`
-/

namespace A128913.P3687066113018550053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128913.P3687066113018550053

namespace A128913

/-- `(n+1)*∑[char[A006530(n+2)-1]]` -/
def P3687066113018550053.Spec : Prop :=
  ∀ n, (P3687066113018550053.a n : ℤ) = A128913 (n + 1)

end A128913

/-! ## A128913.P5294102130118489059

`(n+1)*∑[char[A020639(n+2)-1]]`
-/

namespace A128913.P5294102130118489059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128913.P5294102130118489059

namespace A128913

/-- `(n+1)*∑[char[A020639(n+2)-1]]` -/
def P5294102130118489059.Spec : Prop :=
  ∀ n, (P5294102130118489059.a n : ℤ) = A128913 (n + 1)

end A128913

/-! ## A128913.P10701692852845844990

`(n+1)*∑[char[eq[1, A001222(n+1)]]]`
-/

namespace A128913.P10701692852845844990
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128913.P10701692852845844990

namespace A128913

/-- `(n+1)*∑[char[eq[1, A001222(n+1)]]]` -/
def P10701692852845844990.Spec : Prop :=
  ∀ n, (P10701692852845844990.a n : ℤ) = A128913 (n + 1)

end A128913

/-! ## A128913.P12255593401487128666

`(n+1)*∑[char[comp[A018252(n+1)]-1]]`
-/

namespace A128913.P12255593401487128666
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128913.P12255593401487128666

namespace A128913

/-- `(n+1)*∑[char[comp[A018252(n+1)]-1]]` -/
def P12255593401487128666.Spec : Prop :=
  ∀ n, (P12255593401487128666.a n : ℤ) = A128913 (n + 1)

end A128913

/-!
# A128914: Number of uniform polyhedra with 2n vertices.

The programs for A128914, there is no canonical definition to state claims against.
-/

/-! ## A128914.P8495549977024129446

`A128114(2*(n+1))`
-/

namespace A128914.P8495549977024129446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128114 (2 * (n + 1))

end

end A128914.P8495549977024129446

/-! ## A128914.P3371401586501527328

`A128114(record[2-xor(1, -n)])%98`
-/

namespace A128914.P3371401586501527328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128114 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 98

end

end A128914.P3371401586501527328

/-! ## A128914.P6013040669037808991

`A128114(Δ[n²]+1)%Δ[n²]`
-/

namespace A128914.P6013040669037808991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128114 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A128914.P6013040669037808991

/-!
# A128915: Triangle read by rows: row n gives coefficients (lowest degree first) of P_n(x), where P_0(x) = P_1(x) = 1; P_n(x) = P_{n-1}(x) + x^n*P_{n-2}(x).

The programs for A128915, there is no canonical definition to state claims against.
-/

/-! ## A128915.P7023665868434747458

`A034374(gcd(A114711(n+1), A327067(n)))`
-/

namespace A128915.P7023665868434747458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034374 (Int.gcd (A114711 (n + 1)) (A327067 n))

end

end A128915.P7023665868434747458

/-! ## A128915.P17121073141507955340

`A071038(xor(A057732(n+1), A181859(n)))`
-/

namespace A128915.P17121073141507955340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071038 (Int.xor (A057732 (n + 1)) (A181859 n)).toNat

end

end A128915.P17121073141507955340

/-! ## A128915.P1331154879944818025

`ceil(A171846(n+1)/A171823(n+1))`
-/

namespace A128915.P1331154879944818025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A171846 (n + 1) : ℚ) / (A171823 (n + 1) : ℚ)⌉

end

end A128915.P1331154879944818025

/-! ## A128915.P15472192099474231341

`A245656((A167614(n+3)-n+1)*(n+1)+1)`
-/

namespace A128915.P15472192099474231341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245656 ((A167614 (n + 3) - (n : ℤ) + 1) * (n + 1 : ℤ) + 1).toNat

end

end A128915.P15472192099474231341

/-! ## A128915.P14659705123626626753

`A285274(A287058(n+2)+A035294(n))`
-/

namespace A128915.P14659705123626626753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285274 (A287058 (n + 2) + A035294 n).toNat

end

end A128915.P14659705123626626753

/-!
# A128916: a(n) = A121296(n) - A121295(n).

The programs for A128916, there is no canonical definition to state claims against.
-/

/-! ## A128916.P5820456535983439659

`A121296(n)-A121295(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128916.P5820456535983439659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121296 (n + 10) - A121295 (n + 10)

end

end A128916.P5820456535983439659

/-! ## A128916.P2793056275050337914

`A131012(n)+A127744(n)`
-/

namespace A128916.P2793056275050337914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131012 n + A127744 (n + 10)

end

end A128916.P2793056275050337914

/-! ## A128916.P10035986185148250668

`A130287(n)-A131011(n)`
-/

namespace A128916.P10035986185148250668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130287 (n + 10) - A131011 (n + 10)

end

end A128916.P10035986185148250668

/-! ## A128916.P10713225039432293500

`A121296(n)+A127744(n)-A121265(n)`
-/

namespace A128916.P10713225039432293500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121296 (n + 10) + (A127744 (n + 10) - A121265 (n + 10))

end

end A128916.P10713225039432293500

/-! ## A128916.P2025756847883175390

`A121263(n)+A130287(n)-A121295(n)`
-/

namespace A128916.P2025756847883175390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121263 (n + 10) + (A130287 (n + 10) - A121295 (n + 10))

end

end A128916.P2025756847883175390

/-!
# A128917: Pentagonal numbers (A000326) which are also centered pentagonal numbers (A005891).

The programs for A128917, there is no canonical definition to state claims against.
-/

/-! ## A128917.P14717028475213383822

`50*A180926(n+1)+1`
-/

namespace A128917.P14717028475213383822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  50 * A180926 (n + 1) + 1

end

end A128917.P14717028475213383822

/-! ## A128917.P8650567680546281256

`A302329(n)-floor(A302329(n)/6)`
-/

namespace A128917.P8650567680546281256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302329 n - ⌊(A302329 n : ℚ) / 6⌋

end

end A128917.P8650567680546281256

/-!
# A128918: a(n) = n*(n+1)/2 if n is odd, otherwise (n-1)*n/2 + 1.

The programs for A128918, the canonical program `A128918.P8575397873609176070` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128918 has offset 0).

The definition of A128918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128918.P3806676707352064163

`ogf((1-x^2+4x^3)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A128918.P3806676707352064163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 4] [1, -1, -2, 2, 1, -1] n

end

end A128918.P3806676707352064163

namespace A128918

/-- `ogf((1-x^2+4x^3)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P3806676707352064163.Spec : Prop :=
  ∀ n, P3806676707352064163.a n = A128918 n

end A128918

/-! ## A128918.P8575397873609176070

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128918

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P8575397873609176070.Spec : Prop :=
  ∀ n, P8575397873609176070.a n = A128918 n

theorem P8575397873609176070.correct : P8575397873609176070.Spec := by
  intro n
  simp only [A128918]

end A128918

/-! ## A128918.P9044005278721991155

`C(n, 2)+n^(n%2)`
-/

namespace A128918.P9044005278721991155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ (n % 2)

end

end A128918.P9044005278721991155

namespace A128918

/-- `C(n, 2)+n^(n%2)` -/
def P9044005278721991155.Spec : Prop :=
  ∀ n, (P9044005278721991155.a n : ℤ) = A128918 n

end A128918

/-! ## A128918.P6851100394567681697

`n^and(1, n)+C(n, 2)`
-/

namespace A128918.P6851100394567681697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 n + Nat.choose n 2

end

end A128918.P6851100394567681697

namespace A128918

/-- `n^and(1, n)+C(n, 2)` -/
def P6851100394567681697.Spec : Prop :=
  ∀ n, (P6851100394567681697.a n : ℤ) = A128918 n

end A128918

/-! ## A128918.P12769085004150725222

`C(n, 2)+gcd(n, or(1, n))`
-/

namespace A128918.P12769085004150725222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + Nat.gcd n (Nat.lor 1 n)

end

end A128918.P12769085004150725222

namespace A128918

/-- `C(n, 2)+gcd(n, or(1, n))` -/
def P12769085004150725222.Spec : Prop :=
  ∀ n, (P12769085004150725222.a n : ℤ) = A128918 n

end A128918

/-! ## A128918.P12191551829150358352

`C(n, and(1, n))+C(n, 2)`
-/

namespace A128918.P12191551829150358352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land 1 n) + Nat.choose n 2

end

end A128918.P12191551829150358352

namespace A128918

/-- `C(n, and(1, n))+C(n, 2)` -/
def P12191551829150358352.Spec : Prop :=
  ∀ n, (P12191551829150358352.a n : ℤ) = A128918 n

end A128918

/-! ## A128918.P7608693575435509411

`∑[(2*(n-1))^and(1, n)]`
-/

namespace A128918.P7608693575435509411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) - 1)) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128918.P7608693575435509411

namespace A128918

/-- `∑[(2*(n-1))^and(1, n)]` -/
def P7608693575435509411.Spec : Prop :=
  ∀ n, P7608693575435509411.a n = A128918 n

end A128918

/-! ## A128918.P15325822084995546731

`∑[abs(Δ[lcm(2, n)]-n)-1]`
-/

namespace A128918.P15325822084995546731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128918.P15325822084995546731

namespace A128918

/-- `∑[abs(Δ[lcm(2, n)]-n)-1]` -/
def P15325822084995546731.Spec : Prop :=
  ∀ n, P15325822084995546731.a n = A128918 n

end A128918

/-! ## A128918.P3341241063269258583

`∑[n]+(1-n)*char[2*n]`
-/

namespace A128918.P3341241063269258583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (n : ℤ)) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A128918.P3341241063269258583

namespace A128918

/-- `∑[n]+(1-n)*char[2*n]` -/
def P3341241063269258583.Spec : Prop :=
  ∀ n, P3341241063269258583.a n = A128918 n

end A128918

/-! ## A128918.P845475266583626151

`∑[n-Δ[(n-2)*and(1, n)]]`
-/

namespace A128918.P845475266583626151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (Nat.land 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128918.P845475266583626151

namespace A128918

/-- `∑[n-Δ[(n-2)*and(1, n)]]` -/
def P845475266583626151.Spec : Prop :=
  ∀ n, P845475266583626151.a n = A128918 n

end A128918

/-! ## A128918.P2483853450201311771

`∑[gcd(2*(1-n), (n+1)%2)]`
-/

namespace A128918.P2483853450201311771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (1 - (n : ℤ))) (((n + 1) % 2 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128918.P2483853450201311771

namespace A128918

/-- `∑[gcd(2*(1-n), (n+1)%2)]` -/
def P2483853450201311771.Spec : Prop :=
  ∀ n, (P2483853450201311771.a n : ℤ) = A128918 n

end A128918

/-! ## A128918.P11926916840858471916

`∑[gcd(2*(n-1), and(1, n+1))]`
-/

namespace A128918.P11926916840858471916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * ((n : ℤ) - 1)) (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128918.P11926916840858471916

namespace A128918

/-- `∑[gcd(2*(n-1), and(1, n+1))]` -/
def P11926916840858471916.Spec : Prop :=
  ∀ n, (P11926916840858471916.a n : ℤ) = A128918 n

end A128918

/-! ## A128918.P9522634355601644825

`∑[2*n-xor(3, a(n-1))]` with `a(0)=1`
-/

namespace A128918.P9522634355601644825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * n : ℤ) - Int.xor 3 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128918.P9522634355601644825

namespace A128918

/-- `∑[2*n-xor(3, a(n-1))]` -/
def P9522634355601644825.Spec : Prop :=
  ∀ n, P9522634355601644825.a n = A128918 n

end A128918

/-! ## A128918.P16445347439972558442

`∑[ogf((1-x^2+4x^3)/(1-2x^2+x^4))]`
-/

namespace A128918.P16445347439972558442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 4] [1, 0, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128918.P16445347439972558442

namespace A128918

/-- `∑[ogf((1-x^2+4x^3)/(1-2x^2+x^4))]` -/
def P16445347439972558442.Spec : Prop :=
  ∀ n, P16445347439972558442.a n = A128918 n

end A128918

/-! ## A128918.P10322892247222505284

`∑[a(n-2)+4*and(1, n)]` with `a(0)=1, a(1)=0`
-/

namespace A128918.P10322892247222505284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + 4 * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128918.P10322892247222505284

namespace A128918

/-- `∑[a(n-2)+4*and(1, n)]` -/
def P10322892247222505284.Spec : Prop :=
  ∀ n, (P10322892247222505284.a n : ℤ) = A128918 n

end A128918

/-! ## A128918.P11851512607441930556

`∑[gcd(2-2*n, and(1, n-1)²)]`
-/

namespace A128918.P11851512607441930556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - (2 * n : ℤ)) (Int.land 1 ((n : ℤ) - 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128918.P11851512607441930556

namespace A128918

/-- `∑[gcd(2-2*n, and(1, n-1)²)]` -/
def P11851512607441930556.Spec : Prop :=
  ∀ n, (P11851512607441930556.a n : ℤ) = A128918 n

end A128918

/-! ## A128918.P10259088352147468396

`∑[2*a(n-2)-a(n-4)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A128918.P10259088352147468396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 4] fun n f1 =>
  2 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128918.P10259088352147468396

namespace A128918

/-- `∑[2*a(n-2)-a(n-4)]` -/
def P10259088352147468396.Spec : Prop :=
  ∀ n, P10259088352147468396.a n = A128918 n

end A128918

/-! ## A128918.P1178078335814924002

`∑[a(n-2)+a(n-2)-a(n-4)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A128918.P1178078335814924002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 4] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) - f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128918.P1178078335814924002

namespace A128918

/-- `∑[a(n-2)+a(n-2)-a(n-4)]` -/
def P1178078335814924002.Spec : Prop :=
  ∀ n, P1178078335814924002.a n = A128918 n

end A128918

/-! ## A128918.P8721445476979106848

`∑[A265722(n)]`
-/

namespace A128918.P8721445476979106848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128918.P8721445476979106848

namespace A128918

/-- `∑[A265722(n)]` -/
def P8721445476979106848.Spec : Prop :=
  ∀ n, P8721445476979106848.a n = A128918 n

end A128918

/-! ## A128918.P16869206361221037521

`∑[abs(2-A267352(n))]`
-/

namespace A128918.P16869206361221037521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A267352 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128918.P16869206361221037521

namespace A128918

/-- `∑[abs(2-A267352(n))]` -/
def P16869206361221037521.Spec : Prop :=
  ∀ n, P16869206361221037521.a n = A128918 n

end A128918

/-!
# A128919: Numbers which are both heptagonal and centered heptagonal.

The programs for A128919, the canonical program `A128919.P9722881867610151478` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128919 has offset 1).

The definition of A128919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128919.P9722881867610151478

`142*a(n-1)-a(n-2)+7` with `a(0)=1, a(1)=148`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128919

/-- `142*a(n-1)-a(n-2)+7` -/
def P9722881867610151478.Spec : Prop :=
  ∀ n, P9722881867610151478.a n = A128919 (n + 1)

theorem P9722881867610151478.correct : P9722881867610151478.Spec := by
  intro n
  simp only [A128919, Nat.add_sub_cancel]

end A128919

/-! ## A128919.P1623071792915481689

`A098299(2*n+1)-C(∑[A023038(n)], 2)`
-/

namespace A128919.P1623071792915481689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098299 (2 * n + 1) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 : ℤ)

end

end A128919.P1623071792915481689

namespace A128919

/-- `A098299(2*n+1)-C(∑[A023038(n)], 2)` -/
def P1623071792915481689.Spec : Prop :=
  ∀ n, P1623071792915481689.a n = A128919 (n + 1)

end A128919

/-!
# A128921: Palindromes m such that reverse of m^2 is also a square.

The programs for A128921, there is no canonical definition to state claims against.
-/

/-! ## A128921.P216309600489597067

`∩[A002113(n+1), A102859(n+1)]`
-/

namespace A128921.P216309600489597067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128921.P216309600489597067

/-! ## A128921.P1852868712440267454

`sqrt(A319483(n+1))`
-/

namespace A128921.P1852868712440267454
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A319483 (n + 1) : ℝ)

end

end A128921.P1852868712440267454

/-! ## A128921.P9197681896932443925

`A319483(n+1)^(A046661(n+1)/A002900(n+1))`
-/

namespace A128921.P9197681896932443925
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A319483 (n + 1) : ℝ) ^ ((A046661 (n + 1) : ℚ) / (A002900 (n + 1) : ℚ) : ℝ)

end

end A128921.P9197681896932443925

/-! ## A128921.P13680519424768649575

`filter[A102859(n+1), A136522(#)]`
-/

namespace A128921.P13680519424768649575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A128921.P13680519424768649575

/-!
# A128922: Numbers simultaneously 10-gonal and centered 10-gonal.

The programs for A128922, there is no canonical definition to state claims against.
-/

/-! ## A128922.P2780757440550013859

`10*A201004(n)+1`
-/

namespace A128922.P2780757440550013859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A201004 n + 1

end

end A128922.P2780757440550013859

/-! ## A128922.P15102289137630873980

`A246642(n)*A280070(n+1)`
-/

namespace A128922.P15102289137630873980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246642 n * A280070 (n + 1)

end

end A128922.P15102289137630873980

/-! ## A128922.P1821605760051649525

`A157093(n)/4*A246642(n)`
-/

namespace A128922.P1821605760051649525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157093 n : ℚ) / 4 * (A246642 n : ℚ)

end

end A128922.P1821605760051649525

/-! ## A128922.P8806054037577470181

`(10*A049664(n)+1)*A246642(n)`
-/

namespace A128922.P8806054037577470181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * A049664 n + 1) * A246642 n

end

end A128922.P8806054037577470181

/-! ## A128922.P16668426028606958222

`(A007805(n)-6*A049664(n))*A246642(n)`
-/

namespace A128922.P16668426028606958222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007805 n - 6 * A049664 n) * A246642 n

end

end A128922.P16668426028606958222

/-!
# A128925: Primes p such that at least one of the two numbers p^2 - 6, p^2 + 6 is prime.

The programs for A128925, there is no canonical definition to state claims against.
-/

/-! ## A128925.P2915342860331887543

`∪[A062718(n+1), A137270(n+1)]`
-/

namespace A128925.P2915342860331887543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A128925.P2915342860331887543

/-! ## A128925.P6785907748473673792

`p?[A008621(A324701(n+1)+A248520(n+1))]`
-/

namespace A128925.P6785907748473673792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A324701 (n + 1) + A248520 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128925.P6785907748473673792

/-! ## A128925.P17164913452157191857

`p?[∑[A251717(A207269(n+1))]]`
-/

namespace A128925.P17164913452157191857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251717 (A207269 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128925.P17164913452157191857

/-! ## A128925.P10735990141181394003

`A000040(lt[A351110(n+1), A126953(2*n)])`
-/

namespace A128925.P10735990141181394003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126953 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A128925.P10735990141181394003

/-! ## A128925.P8260962312562645655

`A346153(A385175(n+2))`
-/

namespace A128925.P8260962312562645655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346153 (A385175 (n + 2)).toNat

end

end A128925.P8260962312562645655

/-!
# A128926: Smaller member p of a pair of consecutive primes (p,q) such that either q^2-p^2+1 or q^2-p^2-1 is also prime.

The programs for A128926, there is no canonical definition to state claims against.
-/

/-! ## A128926.P11596709343521296107

`record[A104199(n+4)/A115588(n+2)]`
-/

namespace A128926.P11596709343521296107
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104199 (n + 4) : ℚ) / (A115588 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128926.P11596709343521296107

/-! ## A128926.P186578705424449250

`record[A014963(A104199(n+4)*A115588(n+2))]`
-/

namespace A128926.P186578705424449250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A104199 (n + 4) * A115588 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128926.P186578705424449250

/-! ## A128926.P8701420841274272902

`record[A020639(A104199(n+4)*A115588(n+2))]`
-/

namespace A128926.P8701420841274272902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A104199 (n + 4) * A115588 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128926.P8701420841274272902

/-! ## A128926.P66600997957060902

`record[A020639(A339772(n+1)+A080224(n+1)+3+n)]`
-/

namespace A128926.P66600997957060902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A339772 (n + 1) + A080224 (n + 1) + 3 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128926.P66600997957060902

/-! ## A128926.P13467882032442338292

`A000040(lt[A108299(n), A378199(n+1)])`
-/

namespace A128926.P13467882032442338292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A128926.P13467882032442338292

/-!
# A128927: Primes which are the sum of the first k nonprimes for some k >= 2.

The programs for A128927, there is no canonical definition to state claims against.
-/

/-! ## A128927.P11591232528512510489

`A051349(A060697(n+1)+1)`
-/

namespace A128927.P11591232528512510489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (A060697 (n + 1) + 1).toNat

end

end A128927.P11591232528512510489

/-! ## A128927.P9347998216071786571

`A057427(n+1)+A053767(A060697(n+1))`
-/

namespace A128927.P9347998216071786571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + A053767 (A060697 (n + 1)).toNat

end

end A128927.P9347998216071786571

/-! ## A128927.P701714891702392236

`A053767(A060697(n+1))+A000041(n*char[1])`
-/

namespace A128927.P701714891702392236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A060697 (n + 1)).toNat + A000041 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A128927.P701714891702392236

/-! ## A128927.P10832285473102131551

`A053767(A060697(n+1))+A001222(A151800(n))`
-/

namespace A128927.P10832285473102131551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A060697 (n + 1)).toNat + A001222 (A151800 n).toNat

end

end A128927.P10832285473102131551

/-! ## A128927.P13402103020756521179

`p?[∑[comp[p?[comp[n²]]]]]`
-/

namespace A128927.P13402103020756521179
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A128927.P13402103020756521179

/-! ## A128927.P5938440752879185986

`p?[A051349(n)]`
-/

namespace A128927.P5938440752879185986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128927.P5938440752879185986

/-! ## A128927.P11320250705247776675

`p?[A053767(n)+1]`
-/

namespace A128927.P11320250705247776675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128927.P11320250705247776675

/-! ## A128927.P17056700384002239709

`p?[∑[comp[A151800(n)]]]`
-/

namespace A128927.P17056700384002239709
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A128927.P17056700384002239709

/-! ## A128927.P6601151042860327585

`p?[∑[A018252(n+1)]]`
-/

namespace A128927.P6601151042860327585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128927.P6601151042860327585

/-! ## A128927.P5548658089251041966

`p?[∑[A141468(n+1)]]`
-/

namespace A128927.P5548658089251041966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128927.P5548658089251041966

/-! ## A128927.P11443641407744589539

`p?[A175967(n+1)-1]`
-/

namespace A128927.P11443641407744589539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128927.P11443641407744589539

/-! ## A128927.P2226686884341768275

`p?[∑[comp[A000040(n+1)]]]`
-/

namespace A128927.P2226686884341768275
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A128927.P2226686884341768275

/-! ## A128927.P4629361139563003601

`p?[∑[comp[A006530(n+2)]]]`
-/

namespace A128927.P4629361139563003601
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A128927.P4629361139563003601

/-! ## A128927.P14137431638506327809

`p?[∑[comp[A020639(n+2)]]]`
-/

namespace A128927.P14137431638506327809
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A128927.P14137431638506327809

/-! ## A128927.P14061997768973920536

`p?[∑[A002808(n+1)]+1]`
-/

namespace A128927.P14061997768973920536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128927.P14061997768973920536

/-! ## A128927.P16936297449808018418

`p?[∑[A065090(n+1)]-2]`
-/

namespace A128927.P16936297449808018418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128927.P16936297449808018418

/-! ## A128927.P6480352053336406698

`p?[∑[A073846(2*n+1)]]`
-/

namespace A128927.P6480352053336406698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128927.P6480352053336406698

/-! ## A128927.P18381615219610577506

`p?[∑[A222307(2*n+1)]]`
-/

namespace A128927.P18381615219610577506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128927.P18381615219610577506

/-! ## A128927.P13913073083194996119

`p?[A101203(Δ[A101203(n)])]`
-/

namespace A128927.P13913073083194996119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128927.P13913073083194996119

/-!
# A128928: Smallest member p of a triple of primes (p,p+8,p+20).

The programs for A128928, there is no canonical definition to state claims against.
-/

/-! ## A128928.P8771364641668827095

`p?[A015917(n+1)-8]`
-/

namespace A128928.P8771364641668827095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128928.P8771364641668827095

/-! ## A128928.P11312910040536761503

`p?[A046133(n+1)-8]`
-/

namespace A128928.P11312910040536761503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128928.P11312910040536761503

/-! ## A128928.P16215062539416960451

`p?[A087681(n+1)-14]`
-/

namespace A128928.P16215062539416960451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128928.P16215062539416960451

/-! ## A128928.P15877875255318863401

`p?[A092216(n+1)-20]`
-/

namespace A128928.P15877875255318863401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128928.P15877875255318863401

/-! ## A128928.P14755748447442439858

`p?[A156323(2*n+1)-8]`
-/

namespace A128928.P14755748447442439858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156323 (2 * n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128928.P14755748447442439858

/-! ## A128928.P14463370743845459265

`p?[A014963(A056775(n+1))-8]`
-/

namespace A128928.P14463370743845459265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A056775 (n + 1)).toNat - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128928.P14463370743845459265

/-! ## A128928.P68850356245633018

`record[A006530(A046133(n+3)-8)]`
-/

namespace A128928.P68850356245633018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046133 (n + 3) - 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128928.P68850356245633018

/-! ## A128928.P3286113805902041090

`record[A006530(A087681(n+4)-14)]`
-/

namespace A128928.P3286113805902041090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087681 (n + 4) - 14).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128928.P3286113805902041090

/-! ## A128928.P6137091816643068909

`record[A006530(abs(A015917(n+1)-8))]`
-/

namespace A128928.P6137091816643068909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |A015917 (n + 1) - 8|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128928.P6137091816643068909

/-! ## A128928.P16981673301085689893

`record[A020639(abs(A046133(n+1)-8))]`
-/

namespace A128928.P16981673301085689893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 |A046133 (n + 1) - 8|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128928.P16981673301085689893

/-!
# A128929: Diameter of a special type of regular graph of degree 4 whose order maintain an increase in form of an arithmetic progression.

The programs for A128929, the canonical program `A128929.P7424391661163183655` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128929 has offset 4).

The definition of A128929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128929.P7424391661163183655

`round(n/4)+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128929

/-- `round(n/4)+1` -/
def P7424391661163183655.Spec : Prop :=
  ∀ n, P7424391661163183655.a n = A128929 (n + 4)

theorem P7424391661163183655.correct : P7424391661163183655.Spec := by
  intro n
  simp only [A128929, Nat.add_sub_cancel]

end A128929

/-! ## A128929.P3415746713742267751

`∑[char[record[lcm(2, n)]]]`
-/

namespace A128929.P3415746713742267751
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128929.P3415746713742267751

namespace A128929

/-- `∑[char[record[lcm(2, n)]]]` -/
def P3415746713742267751.Spec : Prop :=
  ∀ n, (P3415746713742267751.a n : ℤ) = A128929 (n + 4)

end A128929

/-! ## A128929.P15214272795430712651

`ceil(cos(1)+n/4)`
-/

namespace A128929.P15214272795430712651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (1 : ℝ) + ((n : ℚ) / 4 : ℝ)⌉

end

end A128929.P15214272795430712651

namespace A128929

/-- `ceil(cos(1)+n/4)` -/
def P15214272795430712651.Spec : Prop :=
  ∀ n, P15214272795430712651.a n = A128929 (n + 4)

end A128929

/-! ## A128929.P15229657925793682959

`floor(acos(0)+n/4)`
-/

namespace A128929.P15229657925793682959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos (0 : ℝ) + ((n : ℚ) / 4 : ℝ)⌋

end

end A128929.P15229657925793682959

namespace A128929

/-- `floor(acos(0)+n/4)` -/
def P15229657925793682959.Spec : Prop :=
  ∀ n, P15229657925793682959.a n = A128929 (n + 4)

end A128929

/-! ## A128929.P11490232660788624312

`floor(tan(1)+n/4)`
-/

namespace A128929.P11490232660788624312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (1 : ℝ) + ((n : ℚ) / 4 : ℝ)⌋

end

end A128929.P11490232660788624312

namespace A128929

/-- `floor(tan(1)+n/4)` -/
def P11490232660788624312.Spec : Prop :=
  ∀ n, P11490232660788624312.a n = A128929 (n + 4)

end A128929

/-! ## A128929.P2582520396091308673

`floor(asin(1)+n/4)`
-/

namespace A128929.P2582520396091308673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin (1 : ℝ) + ((n : ℚ) / 4 : ℝ)⌋

end

end A128929.P2582520396091308673

namespace A128929

/-- `floor(asin(1)+n/4)` -/
def P2582520396091308673.Spec : Prop :=
  ∀ n, P2582520396091308673.a n = A128929 (n + 4)

end A128929

/-! ## A128929.P2605494728079405089

`ceil((n-tan(2))/4)`
-/

namespace A128929.P2605494728079405089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.tan (2 : ℝ)) / 4⌉

end

end A128929.P2605494728079405089

namespace A128929

/-- `ceil((n-tan(2))/4)` -/
def P2605494728079405089.Spec : Prop :=
  ∀ n, P2605494728079405089.a n = A128929 (n + 4)

end A128929

/-! ## A128929.P12985463871559703686

`ceil(n/4-cos(4))`
-/

namespace A128929.P12985463871559703686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 4 : ℝ) - Real.cos (4 : ℝ)⌉

end

end A128929.P12985463871559703686

namespace A128929

/-- `ceil(n/4-cos(4))` -/
def P12985463871559703686.Spec : Prop :=
  ∀ n, P12985463871559703686.a n = A128929 (n + 4)

end A128929

/-! ## A128929.P10282671650512384506

`floor(cosh(1)+n/4)`
-/

namespace A128929.P10282671650512384506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (1 : ℝ) + ((n : ℚ) / 4 : ℝ)⌋

end

end A128929.P10282671650512384506

namespace A128929

/-- `floor(cosh(1)+n/4)` -/
def P10282671650512384506.Spec : Prop :=
  ∀ n, P10282671650512384506.a n = A128929 (n + 4)

end A128929

/-! ## A128929.P5623433816475343741

`ceil(sin(7)+n/4)`
-/

namespace A128929.P5623433816475343741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (7 : ℝ) + ((n : ℚ) / 4 : ℝ)⌉

end

end A128929.P5623433816475343741

namespace A128929

/-- `ceil(sin(7)+n/4)` -/
def P5623433816475343741.Spec : Prop :=
  ∀ n, P5623433816475343741.a n = A128929 (n + 4)

end A128929

/-! ## A128929.P3118947966448665109

`ceil(cot(1)+n/4)`
-/

namespace A128929.P3118947966448665109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (1 : ℝ) + ((n : ℚ) / 4 : ℝ)⌉

end

end A128929.P3118947966448665109

namespace A128929

/-- `ceil(cot(1)+n/4)` -/
def P3118947966448665109.Spec : Prop :=
  ∀ n, P3118947966448665109.a n = A128929 (n + 4)

end A128929

/-! ## A128929.P10483861452835161464

`floor((n-tan(8))/4)`
-/

namespace A128929.P10483861452835161464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) - Real.tan (8 : ℝ)) / 4⌋

end

end A128929.P10483861452835161464

namespace A128929

/-- `floor((n-tan(8))/4)` -/
def P10483861452835161464.Spec : Prop :=
  ∀ n, P10483861452835161464.a n = A128929 (n + 4)

end A128929

/-! ## A128929.P12084697668867019495

`ceil(tan(10)+n/4)`
-/

namespace A128929.P12084697668867019495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (10 : ℝ) + ((n : ℚ) / 4 : ℝ)⌉

end

end A128929.P12084697668867019495

namespace A128929

/-- `ceil(tan(10)+n/4)` -/
def P12084697668867019495.Spec : Prop :=
  ∀ n, P12084697668867019495.a n = A128929 (n + 4)

end A128929

/-! ## A128929.P1401985803355201034

`ceil(n/4-sin(10))`
-/

namespace A128929.P1401985803355201034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 4 : ℝ) - Real.sin (10 : ℝ)⌉

end

end A128929.P1401985803355201034

namespace A128929

/-- `ceil(n/4-sin(10))` -/
def P1401985803355201034.Spec : Prop :=
  ∀ n, P1401985803355201034.a n = A128929 (n + 4)

end A128929

/-! ## A128929.P6209747652736004357

`floor(cot(4/(n+7)))`
-/

namespace A128929.P6209747652736004357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (4 / (n + 7 : ℚ) : ℝ)⌋

end

end A128929.P6209747652736004357

namespace A128929

/-- `floor(cot(4/(n+7)))` -/
def P6209747652736004357.Spec : Prop :=
  ∀ n, P6209747652736004357.a n = A128929 (n + 4)

end A128929

/-! ## A128929.P5671706017830678372

`ceil((n-cot(9))/4)`
-/

namespace A128929.P5671706017830678372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.cot (9 : ℝ)) / 4⌉

end

end A128929.P5671706017830678372

namespace A128929

/-- `ceil((n-cot(9))/4)` -/
def P5671706017830678372.Spec : Prop :=
  ∀ n, P5671706017830678372.a n = A128929 (n + 4)

end A128929

/-! ## A128929.P10490976364765762382

`ceil((cosh(ϕ)+n)/4)`
-/

namespace A128929.P10490976364765762382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cosh Real.goldenRatio + (n : ℝ)) / 4⌉

end

end A128929.P10490976364765762382

namespace A128929

/-- `ceil((cosh(ϕ)+n)/4)` -/
def P10490976364765762382.Spec : Prop :=
  ∀ n, P10490976364765762382.a n = A128929 (n + 4)

end A128929

/-! ## A128929.P10537656436729881135

`ceil((sinh(ϕ)+n)/4)`
-/

namespace A128929.P10537656436729881135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sinh Real.goldenRatio + (n : ℝ)) / 4⌉

end

end A128929.P10537656436729881135

namespace A128929

/-- `ceil((sinh(ϕ)+n)/4)` -/
def P10537656436729881135.Spec : Prop :=
  ∀ n, P10537656436729881135.a n = A128929 (n + 4)

end A128929

/-! ## A128929.P8462999972930506597

`ceil(acot(ϕ)+n/4)`
-/

namespace A128929.P8462999972930506597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot Real.goldenRatio + ((n : ℚ) / 4 : ℝ)⌉

end

end A128929.P8462999972930506597

namespace A128929

/-- `ceil(acot(ϕ)+n/4)` -/
def P8462999972930506597.Spec : Prop :=
  ∀ n, P8462999972930506597.a n = A128929 (n + 4)

end A128929

/-! ## A128929.P10080244743771515047

`ceil(or(1, n+2)/4)`
-/

namespace A128929.P10080244743771515047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (n + 2) : ℚ) / 4⌉

end

end A128929.P10080244743771515047

namespace A128929

/-- `ceil(or(1, n+2)/4)` -/
def P10080244743771515047.Spec : Prop :=
  ∀ n, P10080244743771515047.a n = A128929 (n + 4)

end A128929

/-!
# A128930: a(n) = prime(n) * pi(n).

The programs for A128930, the canonical program `A128930.P1867037653900788446` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128930 has offset 1).

The definition of A128930 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)*A000720(n+1)` (program `A128930.P1867037653900788446`, by `A128930.P1867037653900788446.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128930.P1867037653900788446

`A000040(n+1)*A000720(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A128930

/-- `A000040(n+1)*A000720(n+1)` -/
def P1867037653900788446.Spec : Prop :=
  ∀ n, P1867037653900788446.a n = A128930 (n + 1)

theorem P1867037653900788446.correct : P1867037653900788446.Spec := by
  intro n
  simp only [A128930, Nat.add_sub_cancel]

end A128930

/-! ## A128930.P2282588821497152883

`∑[∑{p}[n+1, val(#, n+1)]]*A000040(n+1)`
-/

namespace A128930.P2282588821497152883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000040 (n + 1)

end

end A128930.P2282588821497152883

namespace A128930

/-- `∑[∑{p}[n+1, val(#, n+1)]]*A000040(n+1)` -/
def P2282588821497152883.Spec : Prop :=
  ∀ n, P2282588821497152883.a n = A128930 (n + 1)

end A128930

/-! ## A128930.P11610252072476808832

`(A006093(n+1)+1)*∑[∑{p}[n+1, val(#, n+1)]]`
-/

namespace A128930.P11610252072476808832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A128930.P11610252072476808832

namespace A128930

/-- `(A006093(n+1)+1)*∑[∑{p}[n+1, val(#, n+1)]]` -/
def P11610252072476808832.Spec : Prop :=
  ∀ n, P11610252072476808832.a n = A128930 (n + 1)

end A128930

/-! ## A128930.P11357383189273859980

`(A008864(n+1)-1)*∑[∑{p}[n+1, val(#, n+1)]]`
-/

namespace A128930.P11357383189273859980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A128930.P11357383189273859980

namespace A128930

/-- `(A008864(n+1)-1)*∑[∑{p}[n+1, val(#, n+1)]]` -/
def P11357383189273859980.Spec : Prop :=
  ∀ n, P11357383189273859980.a n = A128930 (n + 1)

end A128930

/-! ## A128930.P5753031404816817005

`Δ[A007504(n)]*A000720(n+1)`
-/

namespace A128930.P5753031404816817005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000720 (n + 1)

end

end A128930.P5753031404816817005

namespace A128930

/-- `Δ[A007504(n)]*A000720(n+1)` -/
def P5753031404816817005.Spec : Prop :=
  ∀ n, P5753031404816817005.a n = A128930 (n + 1)

end A128930

/-! ## A128930.P18285496923455782577

`lcm(Δ[A022837(n)], A000720(n+1))`
-/

namespace A128930.P18285496923455782577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A000720 (n + 1))

end

end A128930.P18285496923455782577

namespace A128930

/-- `lcm(Δ[A022837(n)], A000720(n+1))` -/
def P18285496923455782577.Spec : Prop :=
  ∀ n, (P18285496923455782577.a n : ℤ) = A128930 (n + 1)

end A128930

/-! ## A128930.P10226284014601674805

`A000720(n+1)*A006005(n+1)`
-/

namespace A128930.P10226284014601674805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A006005 (n + 1)

end

end A128930.P10226284014601674805

namespace A128930

/-- `A000720(n+1)*A006005(n+1)` -/
def P10226284014601674805.Spec : Prop :=
  ∀ n, P10226284014601674805.a n = A128930 (n + 1)

end A128930

/-! ## A128930.P17621957548316434021

`abs(Δ[A117128(n)]*A000720(n+1))`
-/

namespace A128930.P17621957548316434021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A000720 (n + 1)|

end

end A128930.P17621957548316434021

namespace A128930

/-- `abs(Δ[A117128(n)]*A000720(n+1))` -/
def P17621957548316434021.Spec : Prop :=
  ∀ n, P17621957548316434021.a n = A128930 (n + 1)

end A128930

/-! ## A128930.P9804174564139322160

`∑[A010051(n+1)]*Δ[A007504(n)]`
-/

namespace A128930.P9804174564139322160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A128930.P9804174564139322160

namespace A128930

/-- `∑[A010051(n+1)]*Δ[A007504(n)]` -/
def P9804174564139322160.Spec : Prop :=
  ∀ n, P9804174564139322160.a n = A128930 (n + 1)

end A128930

/-! ## A128930.P302172309716761312

`sqrt(A001248(n+1))*A000720(n+1)`
-/

namespace A128930.P302172309716761312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A000720 (n + 1) : ℝ)

end

end A128930.P302172309716761312

namespace A128930

/-- `sqrt(A001248(n+1))*A000720(n+1)` -/
def P302172309716761312.Spec : Prop :=
  ∀ n, P302172309716761312.a n = (A128930 (n + 1) : ℝ)

end A128930

/-! ## A128930.P16733357435182853276

`A000040(n+1)*∑[A010051(n+1)]`
-/

namespace A128930.P16733357435182853276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128930.P16733357435182853276

namespace A128930

/-- `A000040(n+1)*∑[A010051(n+1)]` -/
def P16733357435182853276.Spec : Prop :=
  ∀ n, P16733357435182853276.a n = A128930 (n + 1)

end A128930

/-! ## A128930.P7936366090585283945

`(A006093(n+1)+1)*A000720(n+1)`
-/

namespace A128930.P7936366090585283945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A000720 (n + 1)

end

end A128930.P7936366090585283945

namespace A128930

/-- `(A006093(n+1)+1)*A000720(n+1)` -/
def P7936366090585283945.Spec : Prop :=
  ∀ n, P7936366090585283945.a n = A128930 (n + 1)

theorem P7936366090585283945.correct : P7936366090585283945.Spec := by
  intro n
  simp only [A128930, Nat.add_sub_cancel, A128930.P7936366090585283945.a, A128930.P1867037653900788446.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128930

/-! ## A128930.P3877915156730781301

`(A008864(n+1)-1)*A000720(n+1)`
-/

namespace A128930.P3877915156730781301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A000720 (n + 1)

end

end A128930.P3877915156730781301

namespace A128930

/-- `(A008864(n+1)-1)*A000720(n+1)` -/
def P3877915156730781301.Spec : Prop :=
  ∀ n, P3877915156730781301.a n = A128930 (n + 1)

theorem P3877915156730781301.correct : P3877915156730781301.Spec := by
  intro n
  simp only [A128930, Nat.add_sub_cancel, A128930.P3877915156730781301.a, A128930.P1867037653900788446.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128930

/-! ## A128930.P885419048117991965

`(A036234(n+1)-1)*A000040(n+1)`
-/

namespace A128930.P885419048117991965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036234 (n + 1) - 1) * A000040 (n + 1)

end

end A128930.P885419048117991965

namespace A128930

/-- `(A036234(n+1)-1)*A000040(n+1)` -/
def P885419048117991965.Spec : Prop :=
  ∀ n, P885419048117991965.a n = A128930 (n + 1)

theorem P885419048117991965.correct : P885419048117991965.Spec := by
  intro n
  simp only [A128930, Nat.add_sub_cancel, A128930.P885419048117991965.a, A128930.P1867037653900788446.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128930

/-! ## A128930.P2765674881809984661

`(A040976(n+1)+2)*A000720(n+1)`
-/

namespace A128930.P2765674881809984661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A000720 (n + 1)

end

end A128930.P2765674881809984661

namespace A128930

/-- `(A040976(n+1)+2)*A000720(n+1)` -/
def P2765674881809984661.Spec : Prop :=
  ∀ n, P2765674881809984661.a n = A128930 (n + 1)

theorem P2765674881809984661.correct : P2765674881809984661.Spec := by
  intro n
  simp only [A128930, Nat.add_sub_cancel, A128930.P2765674881809984661.a, A128930.P1867037653900788446.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128930

/-! ## A128930.P17972001774161785036

`(A036234(n+1)-1)*A006005(n+1)`
-/

namespace A128930.P17972001774161785036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036234 (n + 1) - 1) * A006005 (n + 1)

end

end A128930.P17972001774161785036

namespace A128930

/-- `(A036234(n+1)-1)*A006005(n+1)` -/
def P17972001774161785036.Spec : Prop :=
  ∀ n, P17972001774161785036.a n = A128930 (n + 1)

end A128930

/-! ## A128930.P13902333788021407468

`(A055670(n+1)-1)*A000720(n+1)`
-/

namespace A128930.P13902333788021407468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055670 (n + 1) - 1) * A000720 (n + 1)

end

end A128930.P13902333788021407468

namespace A128930

/-- `(A055670(n+1)-1)*A000720(n+1)` -/
def P13902333788021407468.Spec : Prop :=
  ∀ n, P13902333788021407468.a n = A128930 (n + 1)

end A128930

/-! ## A128930.P12446156355920482994

`A000720(n+1)/2*A100484(n+1)`
-/

namespace A128930.P12446156355920482994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 1) : ℚ) / 2 * (A100484 (n + 1) : ℚ)

end

end A128930.P12446156355920482994

namespace A128930

/-- `A000720(n+1)/2*A100484(n+1)` -/
def P12446156355920482994.Spec : Prop :=
  ∀ n, P12446156355920482994.a n = (A128930 (n + 1) : ℚ)

theorem P12446156355920482994.correct : P12446156355920482994.Spec := by
  intro n
  simp only [A128930, Nat.add_sub_cancel, A128930.P12446156355920482994.a, A128930.P1867037653900788446.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128930

/-! ## A128930.P2863628856081614652

`(n-A065855(n+1))*A000040(n+1)`
-/

namespace A128930.P2863628856081614652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A065855 (n + 1)) * A000040 (n + 1)

end

end A128930.P2863628856081614652

namespace A128930

/-- `(n-A065855(n+1))*A000040(n+1)` -/
def P2863628856081614652.Spec : Prop :=
  ∀ n, P2863628856081614652.a n = A128930 (n + 1)

theorem P2863628856081614652.correct : P2863628856081614652.Spec := by
  intro n
  simp only [A128930, Nat.add_sub_cancel, A128930.P2863628856081614652.a, A128930.P1867037653900788446.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065855, A065855.P16805213270251966039.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128930

/-! ## A128930.P3543827427270284436

`A000040(n+1)*∑[char[A006093(n+1)]]`
-/

namespace A128930.P3543827427270284436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A128930.P3543827427270284436

namespace A128930

/-- `A000040(n+1)*∑[char[A006093(n+1)]]` -/
def P3543827427270284436.Spec : Prop :=
  ∀ n, P3543827427270284436.a n = A128930 (n + 1)

end A128930

/-!
# A128933: A103828(n) + 1.

The programs for A128933, there is no canonical definition to state claims against.
-/

/-! ## A128933.P6322782612783183426

`A103828(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128933.P6322782612783183426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103828 (n + 1) + 1

end

end A128933.P6322782612783183426

/-! ## A128933.P3346593425031261719

`ceil(A115760(n+1)/2)`
-/

namespace A128933.P3346593425031261719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A115760 (n + 1) : ℚ) / 2⌉

end

end A128933.P3346593425031261719

/-! ## A128933.P12352830257848966145

`(A262681(n)+A115760(n+1))/2`
-/

namespace A128933.P12352830257848966145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262681 n + A115760 (n + 1) : ℚ) / 2

end

end A128933.P12352830257848966145

/-! ## A128933.P12753694574640216122

`floor((A115760(n+1)+A025451(n))/2)`
-/

namespace A128933.P12753694574640216122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115760 (n + 1) + A025451 n : ℚ) / 2⌋

end

end A128933.P12753694574640216122

/-! ## A128933.P14451119024068476725

`(A115760(n+1)+1)/A040000(n+4)`
-/

namespace A128933.P14451119024068476725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115760 (n + 1) + 1 : ℚ) / (A040000 (n + 4) : ℚ)

end

end A128933.P14451119024068476725

/-!
# A128936: a(n) = binomial(n, sum_digits_n).

The programs for A128936, the canonical program `A128936.P7498908394709636250` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128936 has offset 0).

The definition of A128936 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A128936.P7498908394709636250

`C(n, A007953(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128936

/-- `C(n, A007953(n))` -/
def P7498908394709636250.Spec : Prop :=
  ∀ n, (P7498908394709636250.a n : ℤ) = A128936 n

theorem P7498908394709636250.correct : P7498908394709636250.Spec := by
  intro n
  simp only [A128936]

end A128936

/-! ## A128936.P15415849888271389426

`C(n, ∑{digits}[n, #])`
-/

namespace A128936.P15415849888271389426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A128936.P15415849888271389426

namespace A128936

/-- `C(n, ∑{digits}[n, #])` -/
def P15415849888271389426.Spec : Prop :=
  ∀ n, (P15415849888271389426.a n : ℤ) = A128936 n

end A128936

/-! ## A128936.P10808542395240700345

`C(n, val(∏{digits}[n, 2^#], 2))`
-/

namespace A128936.P10808542395240700345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod 2)

end

end A128936.P10808542395240700345

namespace A128936

/-- `C(n, val(∏{digits}[n, 2^#], 2))` -/
def P10808542395240700345.Spec : Prop :=
  ∀ n, (P10808542395240700345.a n : ℤ) = A128936 n

end A128936

/-! ## A128936.P10244028796457914350

`C(n, A066568(n))`
-/

namespace A128936.P10244028796457914350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A066568 n).toNat

end

end A128936.P10244028796457914350

namespace A128936

/-- `C(n, A066568(n))` -/
def P10244028796457914350.Spec : Prop :=
  ∀ n, (P10244028796457914350.a n : ℤ) = A128936 n

end A128936

/-! ## A128936.P18149712123229718308

`C(n, log2(A329562(n)))`
-/

namespace A128936.P18149712123229718308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.roundAway (Real.logb 2 (A329562 n : ℝ))).toNat

end

end A128936.P18149712123229718308

namespace A128936

/-- `C(n, log2(A329562(n)))` -/
def P18149712123229718308.Spec : Prop :=
  ∀ n, (P18149712123229718308.a n : ℤ) = A128936 n

end A128936

/-! ## A128936.P2379179099086948136

`C(n, A169805(n)/2)`
-/

namespace A128936.P2379179099086948136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

end

end A128936.P2379179099086948136

namespace A128936

/-- `C(n, A169805(n)/2)` -/
def P2379179099086948136.Spec : Prop :=
  ∀ n, (P2379179099086948136.a n : ℤ) = A128936 n

end A128936

/-! ## A128936.P17656852229997908578

`C(n, A062028(n)-n)`
-/

namespace A128936.P17656852229997908578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A062028 n - (n : ℤ)).toNat

end

end A128936.P17656852229997908578

namespace A128936

/-- `C(n, A062028(n)-n)` -/
def P17656852229997908578.Spec : Prop :=
  ∀ n, (P17656852229997908578.a n : ℤ) = A128936 n

theorem P17656852229997908578.correct : P17656852229997908578.Spec := by
  intro n
  simp only [A128936, Nat.add_sub_cancel, A128936.P17656852229997908578.a, A128936.P7498908394709636250.a, A007953, A007953.P3472751987379697826.a, A062028, A062028.P8420805724104474199.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128936

/-! ## A128936.P13184357839775193778

`C(n, A160941(n+1)-1)`
-/

namespace A128936.P13184357839775193778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A160941 (n + 1) - 1).toNat

end

end A128936.P13184357839775193778

namespace A128936

/-- `C(n, A160941(n+1)-1)` -/
def P13184357839775193778.Spec : Prop :=
  ∀ n, (P13184357839775193778.a n : ℤ) = A128936 n

end A128936

/-! ## A128936.P9252226116138570833

`C(n, (A062028(n)+n)%A004277(n))`
-/

namespace A128936.P9252226116138570833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Int.tmod (A062028 n + (n : ℤ)) (A004277 n)).toNat

end

end A128936.P9252226116138570833

namespace A128936

/-- `C(n, (A062028(n)+n)%A004277(n))` -/
def P9252226116138570833.Spec : Prop :=
  ∀ n, (P9252226116138570833.a n : ℤ) = A128936 n

end A128936

/-! ## A128936.P448854643211993181

`C(n, A171181(2*n+1))`
-/

namespace A128936.P448854643211993181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A171181 (2 * n + 1)).toNat

end

end A128936.P448854643211993181

namespace A128936

/-- `C(n, A171181(2*n+1))` -/
def P448854643211993181.Spec : Prop :=
  ∀ n, (P448854643211993181.a n : ℤ) = A128936 n

end A128936

/-! ## A128936.P15622988590129452771

`A074909(∑[n]-A007953(n))`
-/

namespace A128936.P15622988590129452771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A007953 n).toNat

end

end A128936.P15622988590129452771

namespace A128936

/-- `A074909(∑[n]-A007953(n))` -/
def P15622988590129452771.Spec : Prop :=
  ∀ n, P15622988590129452771.a n = A128936 n

end A128936

/-! ## A128936.P12167242415474565079

`A007318(∑{digits}[n, #]+∑[n])`
-/

namespace A128936.P12167242415474565079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A128936.P12167242415474565079

namespace A128936

/-- `A007318(∑{digits}[n, #]+∑[n])` -/
def P12167242415474565079.Spec : Prop :=
  ∀ n, P12167242415474565079.a n = A128936 n

end A128936

/-!
# A128937: Triangle formed by reading A039598 mod 2.

The programs for A128937, the canonical program `A128937.P8237969011932924957` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128937 has offset 0).

The definition of A128937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128937.P1918114931462978617

`xor(T(n-1,k+1), T(n-1,k-1))` with `a(0)=1`
-/

namespace A128937.P1918114931462978617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (SequenceMachineLib.triUpRight a n) (SequenceMachineLib.triUpLeft a n)

end

end A128937.P1918114931462978617

namespace A128937

/-- `xor(T(n-1,k+1), T(n-1,k-1))` -/
def P1918114931462978617.Spec : Prop :=
  ∀ n, (P1918114931462978617.a n : ℤ) = A128937 n

end A128937

/-! ## A128937.P4974092664680986022

`(T(n-1,k-1)-T(n-1,k+1))²` with `a(0)=1`
-/

namespace A128937.P4974092664680986022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUpRight a n) ^ 2

end

end A128937.P4974092664680986022

namespace A128937

/-- `(T(n-1,k-1)-T(n-1,k+1))²` -/
def P4974092664680986022.Spec : Prop :=
  ∀ n, P4974092664680986022.a n = A128937 n

end A128937

/-! ## A128937.P16522700362135100653

`(T(n-1,k-1)+T(n-1,k+1))%2` with `a(0)=1`
-/

namespace A128937.P16522700362135100653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUpRight a n) % 2

end

end A128937.P16522700362135100653

namespace A128937

/-- `(T(n-1,k-1)+T(n-1,k+1))%2` -/
def P16522700362135100653.Spec : Prop :=
  ∀ n, (P16522700362135100653.a n : ℤ) = A128937 n

end A128937

/-! ## A128937.P18370760072870591082

`and(1, T(n-1,k-1)+T(n-1,k+1))` with `a(0)=1`
-/

namespace A128937.P18370760072870591082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 1 (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUpRight a n)

end

end A128937.P18370760072870591082

namespace A128937

/-- `and(1, T(n-1,k-1)+T(n-1,k+1))` -/
def P18370760072870591082.Spec : Prop :=
  ∀ n, (P18370760072870591082.a n : ℤ) = A128937 n

end A128937

/-! ## A128937.P16200465615428447016

`1-T(T(n-1,k+1), T(n-1,k-1))` with `a(0)=1`
-/

namespace A128937.P16200465615428447016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - SequenceMachineLib.triAt a (SequenceMachineLib.triUpRight a n) (SequenceMachineLib.triUpLeft a n)

end

end A128937.P16200465615428447016

namespace A128937

/-- `1-T(T(n-1,k+1), T(n-1,k-1))` -/
def P16200465615428447016.Spec : Prop :=
  ∀ n, P16200465615428447016.a n = A128937 n

end A128937

/-! ## A128937.P7420308980131570953

`1-a(T(n-1,k-1)+T(n-1,k+1))` with `a(0)=1`
-/

namespace A128937.P7420308980131570953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUpRight a n).toNat

end

end A128937.P7420308980131570953

namespace A128937

/-- `1-a(T(n-1,k-1)+T(n-1,k+1))` -/
def P7420308980131570953.Spec : Prop :=
  ∀ n, P7420308980131570953.a n = A128937 n

end A128937

/-! ## A128937.P690444232114658485

`(T(n-1,k+1)-T(n-1,k-1))*(T(n-1,k+1)-T(n-1,k-1))` with `a(0)=1`
-/

namespace A128937.P690444232114658485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUpRight a n - SequenceMachineLib.triUpLeft a n) * (SequenceMachineLib.triUpRight a n - SequenceMachineLib.triUpLeft a n)

end

end A128937.P690444232114658485

namespace A128937

/-- `(T(n-1,k+1)-T(n-1,k-1))*(T(n-1,k+1)-T(n-1,k-1))` -/
def P690444232114658485.Spec : Prop :=
  ∀ n, P690444232114658485.a n = A128937 n

end A128937

/-! ## A128937.P6779144651643187725

`T(T(T(n-1,k+1), T(n-1,k-1)), 2*T(n-1,k))` with `a(0)=1`
-/

namespace A128937.P6779144651643187725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) : ℕ) : ℤ) (2 * SequenceMachineLib.triUp a n : ℤ)

end

end A128937.P6779144651643187725

namespace A128937

/-- `T(T(T(n-1,k+1), T(n-1,k-1)), 2*T(n-1,k))` -/
def P6779144651643187725.Spec : Prop :=
  ∀ n, (P6779144651643187725.a n : ℤ) = A128937 n

end A128937

/-! ## A128937.P631152339032028719

`T(T(n-1,k+1), T(T(n-1,k-1), 2*T(n-1,k-1)))` with `a(0)=1`
-/

namespace A128937.P631152339032028719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) (2 * SequenceMachineLib.triUpLeft a n : ℤ) : ℕ) : ℤ)

end

end A128937.P631152339032028719

namespace A128937

/-- `T(T(n-1,k+1), T(T(n-1,k-1), 2*T(n-1,k-1)))` -/
def P631152339032028719.Spec : Prop :=
  ∀ n, (P631152339032028719.a n : ℤ) = A128937 n

end A128937

/-! ## A128937.P10809201867816018749

`T(T(n-1,k+1), T(T(n-1,k+1), T(n-1,k-1)+T(n-1,k+1)))` with `a(0)=1`
-/

namespace A128937.P10809201867816018749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUpRight a n : ℤ) : ℕ) : ℤ)

end

end A128937.P10809201867816018749

namespace A128937

/-- `T(T(n-1,k+1), T(T(n-1,k+1), T(n-1,k-1)+T(n-1,k+1)))` -/
def P10809201867816018749.Spec : Prop :=
  ∀ n, (P10809201867816018749.a n : ℤ) = A128937 n

end A128937

/-! ## A128937.P7232464404231831085

`T(T(T(n-1,k+1), 2), T(T(n-1,k+1), T(n-1,k-1)))` with `a(0)=1`
-/

namespace A128937.P7232464404231831085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) 2 : ℕ) : ℤ) ((SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) : ℕ) : ℤ)

end

end A128937.P7232464404231831085

namespace A128937

/-- `T(T(T(n-1,k+1), 2), T(T(n-1,k+1), T(n-1,k-1)))` -/
def P7232464404231831085.Spec : Prop :=
  ∀ n, (P7232464404231831085.a n : ℤ) = A128937 n

end A128937

/-! ## A128937.P11488732234611164097

`A039598(n)%2`
-/

namespace A128937.P11488732234611164097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039598 n) 2

end

end A128937.P11488732234611164097

namespace A128937

/-- `A039598(n)%2` -/
def P11488732234611164097.Spec : Prop :=
  ∀ n, P11488732234611164097.a n = A128937 n

end A128937

/-! ## A128937.P2781977218924937427

`A053121(n)%2`
-/

namespace A128937.P2781977218924937427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053121 n) 2

end

end A128937.P2781977218924937427

namespace A128937

/-- `A053121(n)%2` -/
def P2781977218924937427.Spec : Prop :=
  ∀ n, P2781977218924937427.a n = A128937 n

end A128937

/-! ## A128937.P15745951072921608364

`A065600(n)%2`
-/

namespace A128937.P15745951072921608364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065600 n) 2

end

end A128937.P15745951072921608364

namespace A128937

/-- `A065600(n)%2` -/
def P15745951072921608364.Spec : Prop :=
  ∀ n, P15745951072921608364.a n = A128937 n

end A128937

/-! ## A128937.P8237969011932924957

`A117178(n)%2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A128937

/-- `A117178(n)%2` -/
def P8237969011932924957.Spec : Prop :=
  ∀ n, P8237969011932924957.a n = A128937 n

theorem P8237969011932924957.correct : P8237969011932924957.Spec := by
  intro n
  simp only [A128937]

end A128937

/-! ## A128937.P14463779272054249152

`A124392(n)%2`
-/

namespace A128937.P14463779272054249152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124392 n) 2

end

end A128937.P14463779272054249152

namespace A128937

/-- `A124392(n)%2` -/
def P14463779272054249152.Spec : Prop :=
  ∀ n, P14463779272054249152.a n = A128937 n

end A128937

/-! ## A128937.P13262168979335989870

`A126075(n)%2`
-/

namespace A128937.P13262168979335989870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126075 n) 2

end

end A128937.P13262168979335989870

namespace A128937

/-- `A126075(n)%2` -/
def P13262168979335989870.Spec : Prop :=
  ∀ n, P13262168979335989870.a n = A128937 n

end A128937

/-! ## A128937.P9804412298706695351

`A126093(n)%2`
-/

namespace A128937.P9804412298706695351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126093 n) 2

end

end A128937.P9804412298706695351

namespace A128937

/-- `A126093(n)%2` -/
def P9804412298706695351.Spec : Prop :=
  ∀ n, P9804412298706695351.a n = A128937 n

end A128937

/-! ## A128937.P4268480293018908189

`A126222(n)%2`
-/

namespace A128937.P4268480293018908189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126222 n) 2

end

end A128937.P4268480293018908189

namespace A128937

/-- `A126222(n)%2` -/
def P4268480293018908189.Spec : Prop :=
  ∀ n, P4268480293018908189.a n = A128937 n

end A128937

/-! ## A128937.P12247849303811359634

`A213600(n)%2`
-/

namespace A128937.P12247849303811359634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213600 n) 2

end

end A128937.P12247849303811359634

namespace A128937

/-- `A213600(n)%2` -/
def P12247849303811359634.Spec : Prop :=
  ∀ n, P12247849303811359634.a n = A128937 n

end A128937

/-!
# A128938: Numbers n such that n(n+1) plus the n-th prime is a prime.

The programs for A128938, there is no canonical definition to state claims against.
-/

/-! ## A128938.P4679008225235081677

`lt[A001222(A000040(n+1)+(n+1)²+n+1), 2]+1`
-/

namespace A128938.P4679008225235081677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) + ((n + 1) ^ 2 + n : ℤ) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A128938.P4679008225235081677

/-! ## A128938.P17816160374970292119

`eq[1, A001222(A008578(n+1)+A002378(n))]`
-/

namespace A128938.P17816160374970292119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1) + A002378 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128938.P17816160374970292119

/-! ## A128938.P11976762517957034281

`eq[1, A046645(A008578(n+1)+A002378(n))]`
-/

namespace A128938.P11976762517957034281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A008578 (n + 1) + A002378 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128938.P11976762517957034281

/-! ## A128938.P16988421185116021989

`eq[2, A000005(A008578(n+1)+A002378(n))]`
-/

namespace A128938.P16988421185116021989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1) + A002378 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128938.P16988421185116021989

/-! ## A128938.P4289799164058794878

`eq[2, A300835(A008578(n+1)+A002378(n))]`
-/

namespace A128938.P4289799164058794878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300835 (A008578 (n + 1) + A002378 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128938.P4289799164058794878

/-!
# A128939: Maximal product over partitions of n into parts of the form 3k+1.

The programs for A128939, there is no canonical definition to state claims against.
-/

/-! ## A128939.P4180899114799493261

`4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=4, a(5)=4, a(6)=7`
-/

namespace A128939.P4180899114799493261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 4, 4, 4, 7] fun n a =>
  4 * a (n - 4)

end

end A128939.P4180899114799493261

/-! ## A128939.P8316282783573120791

`A133600(A301729(n)%A233583(n+1))`
-/

namespace A128939.P8316282783573120791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133600 (Int.tmod (A301729 n) (A233583 (n + 1))).toNat

end

end A128939.P8316282783573120791

/-! ## A128939.P12469418024682239695

`A006984(∏[A130658(n)])`
-/

namespace A128939.P12469418024682239695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006984 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128939.P12469418024682239695

/-!
# A128940: List of triples of primes with common difference 6.

The programs for A128940, there is no canonical definition to state claims against.
-/

/-! ## A128940.P10601234530042094326

`A117646(n+4)%A117631(3*n+2)`
-/

namespace A128940.P10601234530042094326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117646 (n + 4)) (A117631 (3 * n + 2))

end

end A128940.P10601234530042094326

/-! ## A128940.P8413719811685635301

`or(A117621(A117643(n)), A117646(n+4))`
-/

namespace A128940.P8413719811685635301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117621 (A117643 n).toNat) (A117646 (n + 4))

end

end A128940.P8413719811685635301

/-! ## A128940.P4665298383866481680

`or(A117646(n+4), A117648(A117639(n+1)))`
-/

namespace A128940.P4665298383866481680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117646 (n + 4)) (A117648 (A117639 (n + 1)).toNat)

end

end A128940.P4665298383866481680

/-! ## A128940.P7268213677959182555

`A117646(n+4)+A000007(A117608(n+1))`
-/

namespace A128940.P7268213677959182555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117646 (n + 4) + A000007 (A117608 (n + 1)).toNat

end

end A128940.P7268213677959182555

/-!
# A128941: Cardinality of the free modular lattice generated by two elements and a chain of length n.

The programs for A128941, there is no canonical definition to state claims against.
-/

/-! ## A128941.P12574197228943332819

`A137400(n)-2`
-/

namespace A128941.P12574197228943332819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137400 n - 2

end

end A128941.P12574197228943332819

/-! ## A128941.P16119733146735122218

`A106513(A005408((n+3)²))-2`
-/

namespace A128941.P16119733146735122218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106513 (A005408 ((n + 3) ^ 2)).toNat - 2

end

end A128941.P16119733146735122218

/-! ## A128941.P15872267788802924203

`A106513(A267872((n+3)²))-2`
-/

namespace A128941.P15872267788802924203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106513 (A267872 ((n + 3) ^ 2)).toNat - 2

end

end A128941.P15872267788802924203

/-! ## A128941.P17835226944684556103

`A227573(A152847(n))+A137400(n)`
-/

namespace A128941.P17835226944684556103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227573 (A152847 n).toNat + A137400 n

end

end A128941.P17835226944684556103

/-! ## A128941.P6920201097784030300

`A227573(A059197(n+1))+A137400(n)`
-/

namespace A128941.P6920201097784030300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227573 (A059197 (n + 1)).toNat + A137400 n

end

end A128941.P6920201097784030300

/-!
# A128942: Numbers n such that the next prime exceeding 10^n is a twin prime member.

The programs for A128942, there is no canonical definition to state claims against.
-/

/-! ## A128942.P915975748719684444

`A375181(a(n-1))+n` with `a(0)=1`
-/

namespace A128942.P915975748719684444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A375181 (a (n - 1)).toNat + (n : ℤ)

end

end A128942.P915975748719684444

/-!
# A128943: a(n) = Sum_{k=0..n} (-1)^(n-k)*k^n*Stirling1(n,k).

The programs for A128943, there is no canonical definition to state claims against.
-/

/-! ## A128943.P16245040596826158991

`A276347(Δ[n²]^(n-1))`
-/

namespace A128943.P16245040596826158991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276347 (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A128943.P16245040596826158991

/-!
# A128944: Numbers n such that the smallest prime > 2^n is a twin prime member.

The programs for A128944, there is no canonical definition to state claims against.
-/

/-! ## A128944.P9402402458739283947

`eq[A013597(n), A173937(n)]`
-/

namespace A128944.P9402402458739283947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128944.P9402402458739283947

/-! ## A128944.P8603309165146721339

`eq[A037035(n)+1, A173937(n)]`
-/

namespace A128944.P8603309165146721339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037035 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128944.P8603309165146721339

/-! ## A128944.P706279526889458489

`eq[A004442(A037035(n)), A173937(n)]`
-/

namespace A128944.P706279526889458489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A037035 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128944.P706279526889458489

/-! ## A128944.P14055914517292541576

`eq[A092131(A233583(n+1)), A173937(n)]`
-/

namespace A128944.P14055914517292541576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128944.P14055914517292541576

/-! ## A128944.P15822078596029983476

`floor(log2(A128949(n+1)))`
-/

namespace A128944.P15822078596029983476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A128949 (n + 1)).toNat

end

end A128944.P15822078596029983476

/-!
# A128948: Primes p for which the period length of 1/p is a perfect power, A001597.

The programs for A128948, there is no canonical definition to state claims against.
-/

/-! ## A128948.P15893944796833362759

`A152451(lt[A152459(3*n+4), 1])`
-/

namespace A128948.P15893944796833362759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152459 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152451 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A128948.P15893944796833362759

/-! ## A128948.P8567913782180042015

`A156284(A163777(n+1)-A114225(n+3))`
-/

namespace A128948.P8567913782180042015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156284 (A163777 (n + 1) - A114225 (n + 3)).toNat

end

end A128948.P8567913782180042015

/-!
# A128949: Smallest primes > 2^n that are twin prime members.

The programs for A128949, there is no canonical definition to state claims against.
-/

/-! ## A128949.P12743838213606535394

`A014210(A128944(n+1))`
-/

namespace A128949.P12743838213606535394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (A128944 (n + 1)).toNat

end

end A128949.P12743838213606535394

/-! ## A128949.P7383113066100691331

`A203074(A128944(n+1)+1)`
-/

namespace A128949.P7383113066100691331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 (A128944 (n + 1) + 1).toNat

end

end A128949.P7383113066100691331

/-! ## A128949.P8874084699822731418

`∩[A208572(n+1), A014210(n)]`
-/

namespace A128949.P8874084699822731418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128949.P8874084699822731418

/-! ## A128949.P5757651044045114704

`∩[A208572(n+1), A203074(n)]`
-/

namespace A128949.P5757651044045114704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128949.P5757651044045114704

/-! ## A128949.P1898783414517646570

`A014210(eq[A013597(n), A173937(n)])`
-/

namespace A128949.P1898783414517646570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A128949.P1898783414517646570

/-!
# A128950: a(n) is equal to the number of positive integers m less than or equal to 10^n such that m is not divisible by the prime 7 and is not divisible by at least one of the primes 2, 3 and 5.

The programs for A128950, the canonical program `A128950.P13267437941998899562` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128950 has offset 2).

The definition of A128950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128950.P13267437941998899562

`10^(n+2)-floor(10^(n+2)/7)-floor(10^(n+2)/30)+floor(10^(n+2)/210)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128950

/-- `10^(n+2)-floor(10^(n+2)/7)-floor(10^(n+2)/30)+floor(10^(n+2)/210)` -/
def P13267437941998899562.Spec : Prop :=
  ∀ n, P13267437941998899562.a n = A128950 (n + 2)

theorem P13267437941998899562.correct : P13267437941998899562.Spec := by
  intro n
  simp only [A128950, Nat.add_sub_cancel]

end A128950

/-!
# A128951: a(n) is equal to the number of positive integers m less than or equal to 10^n such that m is not divisible by the prime 5 and is not divisible by at least one of the primes 2, 3 and 7.

The programs for A128951, the canonical program `A128951.P10048559546446563731` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128951 has offset 2).

The definition of A128951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128951.P10048559546446563731

`10^(n+2)-floor(10^(n+2)/5)-floor(10^(n+2)/42)+floor(10^(n+2)/210)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128951

/-- `10^(n+2)-floor(10^(n+2)/5)-floor(10^(n+2)/42)+floor(10^(n+2)/210)` -/
def P10048559546446563731.Spec : Prop :=
  ∀ n, P10048559546446563731.a n = A128951 (n + 2)

theorem P10048559546446563731.correct : P10048559546446563731.Spec := by
  intro n
  simp only [A128951, Nat.add_sub_cancel]

end A128951

/-!
# A128952: a(n) is equal to the number of positive integers m less than or equal to 10^n such that m is not divisible by the prime 3 and is not divisible by at least one of the primes 2, 5 and 7.

The programs for A128952, the canonical program `A128952.P3605870546283273992` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128952 has offset 2).

The definition of A128952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128952.P2126962769265483362

`ogf((66-69x+71x^2-76x^3+69x^4-70x^5)/(1-11x+11x^2-11x^3+11x^4-11x^5+10x^6))`
-/

namespace A128952.P2126962769265483362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [66, -69, 71, -76, 69, -70] [1, -11, 11, -11, 11, -11, 10] n

end

end A128952.P2126962769265483362

namespace A128952

/-- `ogf((66-69x+71x^2-76x^3+69x^4-70x^5)/(1-11x+11x^2-11x^3+11x^4-11x^5+10x^6))` -/
def P2126962769265483362.Spec : Prop :=
  ∀ n, P2126962769265483362.a n = A128952 (n + 2)

end A128952

/-! ## A128952.P3605870546283273992

`10^(n+2)-floor(10^(n+2)/3)-floor(10^(n+2)/70)+floor(10^(n+2)/210)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128952

/-- `10^(n+2)-floor(10^(n+2)/3)-floor(10^(n+2)/70)+floor(10^(n+2)/210)` -/
def P3605870546283273992.Spec : Prop :=
  ∀ n, P3605870546283273992.a n = A128952 (n + 2)

theorem P3605870546283273992.correct : P3605870546283273992.Spec := by
  intro n
  simp only [A128952, Nat.add_sub_cancel]

end A128952

/-!
# A128953: Number of 3-connected bipartite graphs on n unlabeled nodes.

The programs for A128953, there is no canonical definition to state claims against.
-/

/-! ## A128953.P10001172410319222571

`A038567(A221546(2*n+1))-A038586(n+1)`
-/

namespace A128953.P10001172410319222571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A221546 (2 * n + 1)).toNat - A038586 (n + 1)

end

end A128953.P10001172410319222571

/-!
# A128954: a(n) is equal to the number of positive integers m less than or equal to 10^n such that m is not divisible by the prime 2 and is not divisible by at least one of the primes 3, 5 and 7.

The programs for A128954, the canonical program `A128954.P12834042148121734655` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128954 has offset 2).

The definition of A128954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128954.P12834042148121734655

`10^(n+2)/2-floor(10^(n+2)/105)+floor(10^(n+2)/210)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128954

/-- `10^(n+2)/2-floor(10^(n+2)/105)+floor(10^(n+2)/210)` -/
def P12834042148121734655.Spec : Prop :=
  ∀ n, P12834042148121734655.a n = (A128954 (n + 2) : ℚ)

end A128954

/-!
# A128955: Numbers n such that n+(n+1)^3 is prime.

The programs for A128955, there is no canonical definition to state claims against.
-/

/-! ## A128955.P12552842004689229582

`A236475(n+1)-1`
-/

namespace A128955.P12552842004689229582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1) - 1

end

end A128955.P12552842004689229582

/-! ## A128955.P7833875608137040357

`floor(root(A182332(n+1), 3))-1`
-/

namespace A128955.P7833875608137040357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182332 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋ - 1

end

end A128955.P7833875608137040357

/-! ## A128955.P17841553139179046710

`round(root(A182332(Δ[n²]-n), 3))-1`
-/

namespace A128955.P17841553139179046710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182332 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (3 : ℝ))) - 1

end

end A128955.P17841553139179046710

/-! ## A128955.P16132171159451989129

`A023443(A236475(n+1))`
-/

namespace A128955.P16132171159451989129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A236475 (n + 1)).toNat

end

end A128955.P16132171159451989129

/-! ## A128955.P2754623604159760866

`record[A236475(A331300(n))-1]`
-/

namespace A128955.P2754623604159760866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (A331300 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128955.P2754623604159760866

/-! ## A128955.P14476792125037543831

`record[A236475(A341440(n))-1]`
-/

namespace A128955.P14476792125037543831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (A341440 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128955.P14476792125037543831

/-! ## A128955.P2130052352149585334

`A023444(A236475(n+1)+1)`
-/

namespace A128955.P2130052352149585334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A236475 (n + 1) + 1).toNat

end

end A128955.P2130052352149585334

/-! ## A128955.P54118131533494235

`A023443(floor(root(A182332(n+1), 3)))`
-/

namespace A128955.P54118131533494235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌊(A182332 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋.toNat

end

end A128955.P54118131533494235

/-! ## A128955.P6403667936263962959

`A182332(n+1)%A236475(n+1)`
-/

namespace A128955.P6403667936263962959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182332 (n + 1)) (A236475 (n + 1))

end

end A128955.P6403667936263962959

/-! ## A128955.P15549917534517831452

`A001478(n+1)+A236475(n+1)+n`
-/

namespace A128955.P15549917534517831452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A236475 (n + 1) + (n : ℤ))

end

end A128955.P15549917534517831452

/-!
# A128956: a(n) is equal to the number of positive integers m less than or equal to 10^n such that m is not divisible by at least one of the primes 2,7 and is not divisible by at least one of the primes 3,5.

The programs for A128956, the canonical program `A128956.P7869995292113478266` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128956 has offset 2).

The definition of A128956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128956.P7869995292113478266

`10^(n+2)-floor(10^(n+2)/14)-floor(10^(n+2)/15)+floor(10^(n+2)/210)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128956

/-- `10^(n+2)-floor(10^(n+2)/14)-floor(10^(n+2)/15)+floor(10^(n+2)/210)` -/
def P7869995292113478266.Spec : Prop :=
  ∀ n, P7869995292113478266.a n = A128956 (n + 2)

theorem P7869995292113478266.correct : P7869995292113478266.Spec := by
  intro n
  simp only [A128956, Nat.add_sub_cancel]

end A128956

/-!
# A128957: a(n) is equal to the number of positive integers m less than or equal to 10^n such that m is not divisible by at least one of the primes 2,5 and is not divisible by at least one of the primes 3,7.

The programs for A128957, the canonical program `A128957.P6492978866388365869` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128957 has offset 2).

The definition of A128957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128957.P6492978866388365869

`10^(n+2)-floor(10^(n+2)/10)-floor(10^(n+2)/21)+floor(10^(n+2)/210)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128957

/-- `10^(n+2)-floor(10^(n+2)/10)-floor(10^(n+2)/21)+floor(10^(n+2)/210)` -/
def P6492978866388365869.Spec : Prop :=
  ∀ n, P6492978866388365869.a n = A128957 (n + 2)

theorem P6492978866388365869.correct : P6492978866388365869.Spec := by
  intro n
  simp only [A128957, Nat.add_sub_cancel]

end A128957

/-! ## A128957.P7610088318053225435

`ogf((86+83x+84x^2+89x^3+81x^4+90x^5)/(1-9x-9x^2-9x^3-9x^4-9x^5-10x^6))`
-/

namespace A128957.P7610088318053225435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [86, 83, 84, 89, 81, 90] [1, -9, -9, -9, -9, -9, -10] n

end

end A128957.P7610088318053225435

namespace A128957

/-- `ogf((86+83x+84x^2+89x^3+81x^4+90x^5)/(1-9x-9x^2-9x^3-9x^4-9x^5-10x^6))` -/
def P7610088318053225435.Spec : Prop :=
  ∀ n, P7610088318053225435.a n = A128957 (n + 2)

end A128957

/-!
# A128958: Numbers k such that k^2 + (k + 1)^3 is prime.

The programs for A128958, there is no canonical definition to state claims against.
-/

/-! ## A128958.P13361754993713566081

`A093707(1+n)-1`
-/

namespace A128958.P13361754993713566081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093707 (1 + n) - 1

end

end A128958.P13361754993713566081

/-! ## A128958.P3760254542659830548

`floor(root(A155933(n+1), 3))-1`
-/

namespace A128958.P3760254542659830548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155933 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋ - 1

end

end A128958.P3760254542659830548

/-! ## A128958.P15230004398819613055

`A057428(n+1)+floor(root(A155933(n+1), 3))`
-/

namespace A128958.P15230004398819613055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + ⌊(A155933 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A128958.P15230004398819613055

/-! ## A128958.P646674785437384865

`round(root(A155933(n+1), 3))-A008836(n+1)²`
-/

namespace A128958.P646674785437384865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155933 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) - A008836 (n + 1) ^ 2

end

end A128958.P646674785437384865

/-! ## A128958.P16817230806475559401

`A033999(2*n+1)+floor(root(A155933(n+1), 3))`
-/

namespace A128958.P16817230806475559401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + ⌊(A155933 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A128958.P16817230806475559401

/-! ## A128958.P6013708670470707924

`A023443(A093707(n+1))`
-/

namespace A128958.P6013708670470707924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A093707 (n + 1)).toNat

end

end A128958.P6013708670470707924

/-! ## A128958.P4824314574167683690

`A023443(floor(root(A155933(n+1), 3)))`
-/

namespace A128958.P4824314574167683690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌊(A155933 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋.toNat

end

end A128958.P4824314574167683690

/-! ## A128958.P16167693347524525811

`-A024000(floor(root(A155933(n+1), 3)))`
-/

namespace A128958.P16167693347524525811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A024000 ⌊(A155933 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋.toNat

end

end A128958.P16167693347524525811

/-! ## A128958.P10853846320283864538

`A233583(floor(root(A155933(n+1), 3)))`
-/

namespace A128958.P10853846320283864538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 ⌊(A155933 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋.toNat

end

end A128958.P10853846320283864538

/-!
# A128959: a(n) is equal to the number of positive integers m less than or equal to 10^n such that m is not divisible by at least one of the primes 2,3 and is not divisible by at least one of the primes 5,7.

The programs for A128959, the canonical program `A128959.P14187685015722780005` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128959 has offset 2).

The definition of A128959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128959.P5277971052583670780

`ogf((82-92x+88x^2-95x^3+89x^4-90x^5)/(1-11x+11x^2-11x^3+11x^4-11x^5+10x^6))`
-/

namespace A128959.P5277971052583670780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [82, -92, 88, -95, 89, -90] [1, -11, 11, -11, 11, -11, 10] n

end

end A128959.P5277971052583670780

namespace A128959

/-- `ogf((82-92x+88x^2-95x^3+89x^4-90x^5)/(1-11x+11x^2-11x^3+11x^4-11x^5+10x^6))` -/
def P5277971052583670780.Spec : Prop :=
  ∀ n, P5277971052583670780.a n = A128959 (n + 2)

end A128959

/-! ## A128959.P14187685015722780005

`10^(n+2)-floor(10^(n+2)/6)-floor(10^(n+2)/35)+floor(10^(n+2)/210)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128959

/-- `10^(n+2)-floor(10^(n+2)/6)-floor(10^(n+2)/35)+floor(10^(n+2)/210)` -/
def P14187685015722780005.Spec : Prop :=
  ∀ n, P14187685015722780005.a n = A128959 (n + 2)

theorem P14187685015722780005.correct : P14187685015722780005.Spec := by
  intro n
  simp only [A128959, Nat.add_sub_cancel]

end A128959

/-!
# A128960: a(n) = (n^3 - n)*2^n.

The programs for A128960, the canonical program `A128960.P17672098471833153486` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128960 has offset 1).

The definition of A128960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1))*2^(n+1)` (program `A128960.P17672098471833153486`, by `A128960.P17672098471833153486.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128960.P12369443729574921153

`3*C(n+2, 3)*2^(n+2)`
-/

namespace A128960.P12369443729574921153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (n + 2) 3 * 2 ^ (n + 2)

end

end A128960.P12369443729574921153

namespace A128960

/-- `3*C(n+2, 3)*2^(n+2)` -/
def P12369443729574921153.Spec : Prop :=
  ∀ n, (P12369443729574921153.a n : ℤ) = A128960 (n + 1)

theorem P12369443729574921153.correct : P12369443729574921153.Spec := by
  intro n
  simp only [A128960, Nat.add_sub_cancel, A128960.P12369443729574921153.a, A128960.P17672098471833153486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128960

/-! ## A128960.P17672098471833153486

`((n+1)^3-(n+1))*2^(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128960

/-- `((n+1)^3-(n+1))*2^(n+1)` -/
def P17672098471833153486.Spec : Prop :=
  ∀ n, P17672098471833153486.a n = A128960 (n + 1)

theorem P17672098471833153486.correct : P17672098471833153486.Spec := by
  intro n
  simp only [A128960, Nat.add_sub_cancel]

end A128960

/-! ## A128960.P16418398152566376019

`ogf(24x/(1-8x+24x^2-32x^3+16x^4))`
-/

namespace A128960.P16418398152566376019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 24] [1, -8, 24, -32, 16] n

end

end A128960.P16418398152566376019

namespace A128960

/-- `ogf(24x/(1-8x+24x^2-32x^3+16x^4))` -/
def P16418398152566376019.Spec : Prop :=
  ∀ n, P16418398152566376019.a n = A128960 (n + 1)

end A128960

/-! ## A128960.P6764439025100002691

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=24, a(2)=192, a(3)=960`
-/

namespace A128960.P6764439025100002691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 24, 192, 960] fun n a =>
  8 * a (n - 1) - 24 * a (n - 2) + 32 * a (n - 3) - 16 * a (n - 4)

end

end A128960.P6764439025100002691

namespace A128960

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P6764439025100002691.Spec : Prop :=
  ∀ n, P6764439025100002691.a n = A128960 (n + 1)

theorem P6764439025100002691.correct : P6764439025100002691.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A128960, Nat.add_sub_cancel, A128960.P6764439025100002691.a, A128960.P17672098471833153486.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A128960, Nat.add_sub_cancel, A128960.P6764439025100002691.a, A128960.P17672098471833153486.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A128960

/-! ## A128960.P12140938646858859327

`∑[∑[n]*A079859(n+5)]`
-/

namespace A128960.P12140938646858859327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A079859 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128960.P12140938646858859327

namespace A128960

/-- `∑[∑[n]*A079859(n+5)]` -/
def P12140938646858859327.Spec : Prop :=
  ∀ n, P12140938646858859327.a n = A128960 (n + 1)

end A128960

/-! ## A128960.P8695803092910667170

`∑[A002378(n)*A196410(n+5)]`
-/

namespace A128960.P8695803092910667170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n * A196410 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128960.P8695803092910667170

namespace A128960

/-- `∑[A002378(n)*A196410(n+5)]` -/
def P8695803092910667170.Spec : Prop :=
  ∀ n, P8695803092910667170.a n = A128960 (n + 1)

end A128960

/-! ## A128960.P14021829335636138763

`A128985(n+1)+A128796(n+1)`
-/

namespace A128960.P14021829335636138763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128985 (n + 1) + A128796 (n + 1)

end

end A128960.P14021829335636138763

namespace A128960

/-- `A128985(n+1)+A128796(n+1)` -/
def P14021829335636138763.Spec : Prop :=
  ∀ n, P14021829335636138763.a n = A128960 (n + 1)

theorem P14021829335636138763.correct : P14021829335636138763.Spec := by
  intro n
  simp only [A128960, Nat.add_sub_cancel, A128960.P14021829335636138763.a, A128960.P17672098471833153486.a, A128796, A128796.P2345555735138113176.a, A128985, A128985.P12184313217683518671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128960

/-! ## A128960.P6972816683190088362

`A128789(n+1)-A036289(n+1)`
-/

namespace A128960.P6972816683190088362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128789 (n + 1) - A036289 (n + 1)

end

end A128960.P6972816683190088362

namespace A128960

/-- `A128789(n+1)-A036289(n+1)` -/
def P6972816683190088362.Spec : Prop :=
  ∀ n, P6972816683190088362.a n = A128960 (n + 1)

theorem P6972816683190088362.correct : P6972816683190088362.Spec := by
  intro n
  simp only [A128960, Nat.add_sub_cancel, A128960.P6972816683190088362.a, A128960.P17672098471833153486.a, A036289, A036289.P13525419631139213940.a, A128789, A128789.P13129381073551512114.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128960

/-! ## A128960.P2083557358206597875

`A128789(n+1)-A134401(n+1)`
-/

namespace A128960.P2083557358206597875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128789 (n + 1) - A134401 (n + 1)

end

end A128960.P2083557358206597875

namespace A128960

/-- `A128789(n+1)-A134401(n+1)` -/
def P2083557358206597875.Spec : Prop :=
  ∀ n, P2083557358206597875.a n = A128960 (n + 1)

end A128960

/-! ## A128960.P403577685340838007

`A128789(n+1)-A097064(n+2)`
-/

namespace A128960.P403577685340838007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128789 (n + 1) - A097064 (n + 2)

end

end A128960.P403577685340838007

namespace A128960

/-- `A128789(n+1)-A097064(n+2)` -/
def P403577685340838007.Spec : Prop :=
  ∀ n, P403577685340838007.a n = A128960 (n + 1)

end A128960

/-! ## A128960.P12295675006960501296

`A159964(n+1)+n*A276041(n+1)`
-/

namespace A128960.P12295675006960501296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159964 (n + 1) + (n : ℤ) * A276041 (n + 1)

end

end A128960.P12295675006960501296

namespace A128960

/-- `A159964(n+1)+n*A276041(n+1)` -/
def P12295675006960501296.Spec : Prop :=
  ∀ n, P12295675006960501296.a n = A128960 (n + 1)

theorem P12295675006960501296.correct : P12295675006960501296.Spec := by
  intro n
  simp only [A128960, Nat.add_sub_cancel, A128960.P12295675006960501296.a, A128960.P17672098471833153486.a, A159964, A159964.P12711502051530852782.a, A276041, A276041.P16318605907472583512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128960

/-! ## A128960.P17316865911034778446

`A000217(n)+A000217(n)*A003261(n+2)`
-/

namespace A128960.P17316865911034778446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A000217 n * A003261 (n + 2)

end

end A128960.P17316865911034778446

namespace A128960

/-- `A000217(n)+A000217(n)*A003261(n+2)` -/
def P17316865911034778446.Spec : Prop :=
  ∀ n, P17316865911034778446.a n = A128960 (n + 1)

theorem P17316865911034778446.correct : P17316865911034778446.Spec := by
  intro n
  simp only [A128960, Nat.add_sub_cancel, A128960.P17316865911034778446.a, A128960.P17672098471833153486.a, A000217, A000217.P10269402890581615239.a, A003261, A003261.P10775905742820185947.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128960

/-! ## A128960.P13393525092770230108

`A001788(n+1)*A016813(n)-A001788(n+1)`
-/

namespace A128960.P13393525092770230108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1) * A016813 n - A001788 (n + 1)

end

end A128960.P13393525092770230108

namespace A128960

/-- `A001788(n+1)*A016813(n)-A001788(n+1)` -/
def P13393525092770230108.Spec : Prop :=
  ∀ n, P13393525092770230108.a n = A128960 (n + 1)

end A128960

/-! ## A128960.P12233846589324094334

`A129002(n+1)-(A036289(n+1)+A007758(n+1))`
-/

namespace A128960.P12233846589324094334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129002 (n + 1) - (A036289 (n + 1) + A007758 (n + 1))

end

end A128960.P12233846589324094334

namespace A128960

/-- `A129002(n+1)-(A036289(n+1)+A007758(n+1))` -/
def P12233846589324094334.Spec : Prop :=
  ∀ n, P12233846589324094334.a n = A128960 (n + 1)

theorem P12233846589324094334.correct : P12233846589324094334.Spec := by
  intro n
  simp only [A128960, Nat.add_sub_cancel, A128960.P12233846589324094334.a, A128960.P17672098471833153486.a, A007758, A007758.P17176775618145894956.a, A036289, A036289.P13525419631139213940.a, A129002, A129002.P2751204566084846886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128960

/-! ## A128960.P127007525501232213

`A119635(n+1)-(A036289(n+1)+A036289(n+1))`
-/

namespace A128960.P127007525501232213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119635 (n + 1) - (A036289 (n + 1) + A036289 (n + 1))

end

end A128960.P127007525501232213

namespace A128960

/-- `A119635(n+1)-(A036289(n+1)+A036289(n+1))` -/
def P127007525501232213.Spec : Prop :=
  ∀ n, P127007525501232213.a n = A128960 (n + 1)

theorem P127007525501232213.correct : P127007525501232213.Spec := by
  intro n
  simp only [A128960, Nat.add_sub_cancel, A128960.P127007525501232213.a, A128960.P17672098471833153486.a, A036289, A036289.P13525419631139213940.a, A119635, A119635.P9144609565879921146.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128960

/-! ## A128960.P1344832977858812064

`A128985(n+1)+A129002(n+1)-A119635(n+1)`
-/

namespace A128960.P1344832977858812064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128985 (n + 1) + (A129002 (n + 1) - A119635 (n + 1))

end

end A128960.P1344832977858812064

namespace A128960

/-- `A128985(n+1)+A129002(n+1)-A119635(n+1)` -/
def P1344832977858812064.Spec : Prop :=
  ∀ n, P1344832977858812064.a n = A128960 (n + 1)

theorem P1344832977858812064.correct : P1344832977858812064.Spec := by
  intro n
  simp only [A128960, Nat.add_sub_cancel, A128960.P1344832977858812064.a, A128960.P17672098471833153486.a, A119635, A119635.P9144609565879921146.a, A128985, A128985.P12184313217683518671.a, A129002, A129002.P2751204566084846886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128960

/-! ## A128960.P7717745379114020229

`A000217(n+1)*A036799(n+1)-A002378(n+1)`
-/

namespace A128960.P7717745379114020229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A036799 (n + 1) - A002378 (n + 1)

end

end A128960.P7717745379114020229

namespace A128960

/-- `A000217(n+1)*A036799(n+1)-A002378(n+1)` -/
def P7717745379114020229.Spec : Prop :=
  ∀ n, P7717745379114020229.a n = A128960 (n + 1)

theorem P7717745379114020229.correct : P7717745379114020229.Spec := by
  intro n
  simp only [A128960, Nat.add_sub_cancel, A128960.P7717745379114020229.a, A128960.P17672098471833153486.a, A000217, A000217.P10269402890581615239.a, A002378, A002378.P6342434596694243671.a, A036799, A036799.P11890976520549442909.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128960

/-! ## A128960.P14246016657724490903

`3*A290031(n+2)/2`
-/

namespace A128960.P14246016657724490903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A290031 (n + 2) : ℚ) / 2

end

end A128960.P14246016657724490903

namespace A128960

/-- `3*A290031(n+2)/2` -/
def P14246016657724490903.Spec : Prop :=
  ∀ n, P14246016657724490903.a n = (A128960 (n + 1) : ℚ)

theorem P14246016657724490903.correct : P14246016657724490903.Spec := by
  intro n
  simp only [A128960, Nat.add_sub_cancel, A128960.P14246016657724490903.a, A128960.P17672098471833153486.a, A290031, A290031.P11188334914464403451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128960

/-! ## A128960.P8862337534517597854

`n*A128796(n+2)/2`
-/

namespace A128960.P8862337534517597854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A128796 (n + 2) : ℚ) / 2

end

end A128960.P8862337534517597854

namespace A128960

/-- `n*A128796(n+2)/2` -/
def P8862337534517597854.Spec : Prop :=
  ∀ n, P8862337534517597854.a n = (A128960 (n + 1) : ℚ)

theorem P8862337534517597854.correct : P8862337534517597854.Spec := by
  intro n
  simp only [A128960, Nat.add_sub_cancel, A128960.P8862337534517597854.a, A128960.P17672098471833153486.a, A128796, A128796.P2345555735138113176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128960

/-! ## A128960.P5747491984350488794

`Δ[A036827(n)-A036799(n)]`
-/

namespace A128960.P5747491984350488794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036827 n - A036799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128960.P5747491984350488794

namespace A128960

/-- `Δ[A036827(n)-A036799(n)]` -/
def P5747491984350488794.Spec : Prop :=
  ∀ n, P5747491984350488794.a n = A128960 (n + 1)

theorem P5747491984350488794.correct : P5747491984350488794.Spec := by
  intro n
  simp only [A128960, Nat.add_sub_cancel, A128960.P5747491984350488794.f1, A128960.P5747491984350488794.a, A128960.P17672098471833153486.a, A036799, A036799.P11890976520549442909.a, A036827, A036827.P11394607514665482824.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128960

/-!
# A128961: a(n) = (n^3 - n)*3^n.

The programs for A128961, the canonical program `A128961.P10564603461446401338` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128961 has offset 1).

The definition of A128961 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1))*3^(n+1)` (program `A128961.P10564603461446401338`, by `A128961.P10564603461446401338.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128961.P10564603461446401338

`((n+1)^3-(n+1))*3^(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128961

/-- `((n+1)^3-(n+1))*3^(n+1)` -/
def P10564603461446401338.Spec : Prop :=
  ∀ n, P10564603461446401338.a n = A128961 (n + 1)

theorem P10564603461446401338.correct : P10564603461446401338.Spec := by
  intro n
  simp only [A128961, Nat.add_sub_cancel]

end A128961

/-! ## A128961.P13438610946773709720

`3*A007531(n+2)/3^-n`
-/

namespace A128961.P13438610946773709720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A007531 (n + 2) : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A128961.P13438610946773709720

namespace A128961

/-- `3*A007531(n+2)/3^-n` -/
def P13438610946773709720.Spec : Prop :=
  ∀ n, P13438610946773709720.a n = (A128961 (n + 1) : ℚ)

theorem P13438610946773709720.correct : P13438610946773709720.Spec := by
  intro n
  simp only [A128961, Nat.add_sub_cancel, A128961.P13438610946773709720.a, A128961.P10564603461446401338.a, A007531, A007531.P15538264737483534371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128961

/-! ## A128961.P5936523572920057111

`A128986(n+1)+A128797(n+1)`
-/

namespace A128961.P5936523572920057111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128986 (n + 1) + A128797 (n + 1)

end

end A128961.P5936523572920057111

namespace A128961

/-- `A128986(n+1)+A128797(n+1)` -/
def P5936523572920057111.Spec : Prop :=
  ∀ n, P5936523572920057111.a n = A128961 (n + 1)

theorem P5936523572920057111.correct : P5936523572920057111.Spec := by
  intro n
  simp only [A128961, Nat.add_sub_cancel, A128961.P5936523572920057111.a, A128961.P10564603461446401338.a, A128797, A128797.P16414781802524646076.a, A128986, A128986.P16423680130297360657.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128961

/-! ## A128961.P3512074171796111777

`A129003(n+1)-A116138(n+1)`
-/

namespace A128961.P3512074171796111777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129003 (n + 1) - A116138 (n + 1)

end

end A128961.P3512074171796111777

namespace A128961

/-- `A129003(n+1)-A116138(n+1)` -/
def P3512074171796111777.Spec : Prop :=
  ∀ n, P3512074171796111777.a n = A128961 (n + 1)

theorem P3512074171796111777.correct : P3512074171796111777.Spec := by
  intro n
  simp only [A128961, Nat.add_sub_cancel, A128961.P3512074171796111777.a, A128961.P10564603461446401338.a, A116138, A116138.P12016771194482355886.a, A129003, A129003.P4245029837086348436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128961

/-! ## A128961.P16537577497057955192

`A000007(n+1)+n*A116138(n+1)`
-/

namespace A128961.P16537577497057955192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (n : ℤ) * A116138 (n + 1)

end

end A128961.P16537577497057955192

namespace A128961

/-- `A000007(n+1)+n*A116138(n+1)` -/
def P16537577497057955192.Spec : Prop :=
  ∀ n, P16537577497057955192.a n = A128961 (n + 1)

theorem P16537577497057955192.correct : P16537577497057955192.Spec := by
  intro n
  simp only [A128961, Nat.add_sub_cancel, A128961.P16537577497057955192.a, A128961.P10564603461446401338.a, A000007, A000007.P6599383543502402472.a, A116138, A116138.P12016771194482355886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128961

/-! ## A128961.P7760533685372658504

`A016921(n)*A027472(n+3)-A027472(n+3)`
-/

namespace A128961.P7760533685372658504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n * A027472 (n + 3) - A027472 (n + 3)

end

end A128961.P7760533685372658504

namespace A128961

/-- `A016921(n)*A027472(n+3)-A027472(n+3)` -/
def P7760533685372658504.Spec : Prop :=
  ∀ n, P7760533685372658504.a n = A128961 (n + 1)

end A128961

/-! ## A128961.P10492964254041551352

`A128797(n+1)+A121607(n+1)-A116138(n+1)`
-/

namespace A128961.P10492964254041551352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128797 (n + 1) + (A121607 (n + 1) - A116138 (n + 1))

end

end A128961.P10492964254041551352

namespace A128961

/-- `A128797(n+1)+A121607(n+1)-A116138(n+1)` -/
def P10492964254041551352.Spec : Prop :=
  ∀ n, P10492964254041551352.a n = A128961 (n + 1)

theorem P10492964254041551352.correct : P10492964254041551352.Spec := by
  intro n
  simp only [A128961, Nat.add_sub_cancel, A128961.P10492964254041551352.a, A128961.P10564603461446401338.a, A116138, A116138.P12016771194482355886.a, A121607, A121607.P12777103385746461110.a, A128797, A128797.P16414781802524646076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128961

/-! ## A128961.P11779616617249026333

`A128797(n+1)+∑[(2*n+1)*A000096(n)*A025192(n+1)]`
-/

namespace A128961.P11779616617249026333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (A000096 n * A025192 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128797 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128961.P11779616617249026333

namespace A128961

/-- `A128797(n+1)+∑[(2*n+1)*A000096(n)*A025192(n+1)]` -/
def P11779616617249026333.Spec : Prop :=
  ∀ n, P11779616617249026333.a n = A128961 (n + 1)

end A128961

/-! ## A128961.P17525469899878595530

`n*A128797(n+2)/3`
-/

namespace A128961.P17525469899878595530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A128797 (n + 2) : ℚ) / 3

end

end A128961.P17525469899878595530

namespace A128961

/-- `n*A128797(n+2)/3` -/
def P17525469899878595530.Spec : Prop :=
  ∀ n, P17525469899878595530.a n = (A128961 (n + 1) : ℚ)

theorem P17525469899878595530.correct : P17525469899878595530.Spec := by
  intro n
  simp only [A128961, Nat.add_sub_cancel, A128961.P17525469899878595530.a, A128961.P10564603461446401338.a, A128797, A128797.P16414781802524646076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128961

/-! ## A128961.P9233777928527762925

`n*A129003(n+1)/(n+1)`
-/

namespace A128961.P9233777928527762925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A129003 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A128961.P9233777928527762925

namespace A128961

/-- `n*A129003(n+1)/(n+1)` -/
def P9233777928527762925.Spec : Prop :=
  ∀ n, P9233777928527762925.a n = (A128961 (n + 1) : ℚ)

theorem P9233777928527762925.correct : P9233777928527762925.Spec := by
  intro n
  simp only [A128961, Nat.add_sub_cancel, A128961.P9233777928527762925.a, A128961.P10564603461446401338.a, A129003, A129003.P4245029837086348436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128961

/-! ## A128961.P8044780573819987947

`A128964(n+1)/2^(n+1)`
-/

namespace A128961.P8044780573819987947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128964 (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A128961.P8044780573819987947

namespace A128961

/-- `A128964(n+1)/2^(n+1)` -/
def P8044780573819987947.Spec : Prop :=
  ∀ n, P8044780573819987947.a n = (A128961 (n + 1) : ℚ)

end A128961

/-! ## A128961.P214281332085431499

`A116138(n+1)*A128796(n+1)/A036289(n+1)`
-/

namespace A128961.P214281332085431499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116138 (n + 1) * A128796 (n + 1) : ℚ) / (A036289 (n + 1) : ℚ)

end

end A128961.P214281332085431499

namespace A128961

/-- `A116138(n+1)*A128796(n+1)/A036289(n+1)` -/
def P214281332085431499.Spec : Prop :=
  ∀ n, P214281332085431499.a n = (A128961 (n + 1) : ℚ)

theorem P214281332085431499.correct : P214281332085431499.Spec := by
  intro n
  simp only [A128961, Nat.add_sub_cancel, A128961.P214281332085431499.a, A128961.P10564603461446401338.a, A036289, A036289.P13525419631139213940.a, A116138, A116138.P12016771194482355886.a, A128796, A128796.P2345555735138113176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128961

/-! ## A128961.P15871583602848150413

`A121607(n+1)*A128960(n+1)/A119635(n+1)`
-/

namespace A128961.P15871583602848150413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121607 (n + 1) * A128960 (n + 1) : ℚ) / (A119635 (n + 1) : ℚ)

end

end A128961.P15871583602848150413

namespace A128961

/-- `A121607(n+1)*A128960(n+1)/A119635(n+1)` -/
def P15871583602848150413.Spec : Prop :=
  ∀ n, P15871583602848150413.a n = (A128961 (n + 1) : ℚ)

theorem P15871583602848150413.correct : P15871583602848150413.Spec := by
  intro n
  simp only [A128961, Nat.add_sub_cancel, A128961.P15871583602848150413.a, A128961.P10564603461446401338.a, A119635, A119635.P9144609565879921146.a, A121607, A121607.P12777103385746461110.a, A128960, A128960.P17672098471833153486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128961

/-!
# A128962: a(n) = (n^3 - n)*4^n.

The programs for A128962, the canonical program `A128962.P185823510760706890` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128962 has offset 1).

The definition of A128962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1))*4^(n+1)` (program `A128962.P185823510760706890`, by `A128962.P185823510760706890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128962.P185823510760706890

`((n+1)^3-(n+1))*4^(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128962

/-- `((n+1)^3-(n+1))*4^(n+1)` -/
def P185823510760706890.Spec : Prop :=
  ∀ n, P185823510760706890.a n = A128962 (n + 1)

theorem P185823510760706890.correct : P185823510760706890.Spec := by
  intro n
  simp only [A128962, Nat.add_sub_cancel]

end A128962

/-! ## A128962.P2299868340463429989

`abs(n*(sin(acos(0))+n)*A049610(2*n+4))`
-/

namespace A128962.P2299868340463429989
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |(n : ℝ) * (Real.sin (Real.arccos (0 : ℝ)) + (n : ℝ)) * (A049610 (2 * n + 4) : ℝ)|

end

end A128962.P2299868340463429989

namespace A128962

/-- `abs(n*(sin(acos(0))+n)*A049610(2*n+4))` -/
def P2299868340463429989.Spec : Prop :=
  ∀ n, P2299868340463429989.a n = (A128962 (n + 1) : ℝ)

end A128962

/-! ## A128962.P10075673271738863068

`A128987(n+1)+A128798(n+1)`
-/

namespace A128962.P10075673271738863068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128987 (n + 1) + A128798 (n + 1)

end

end A128962.P10075673271738863068

namespace A128962

/-- `A128987(n+1)+A128798(n+1)` -/
def P10075673271738863068.Spec : Prop :=
  ∀ n, P10075673271738863068.a n = A128962 (n + 1)

theorem P10075673271738863068.correct : P10075673271738863068.Spec := by
  intro n
  simp only [A128962, Nat.add_sub_cancel, A128962.P10075673271738863068.a, A128962.P185823510760706890.a, A128798, A128798.P11634242177375116821.a, A128987, A128987.P6165647653934997466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128962

/-! ## A128962.P9768729468245493198

`A128790(n+1)-A018215(n+1)`
-/

namespace A128962.P9768729468245493198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128790 (n + 1) - A018215 (n + 1)

end

end A128962.P9768729468245493198

namespace A128962

/-- `A128790(n+1)-A018215(n+1)` -/
def P9768729468245493198.Spec : Prop :=
  ∀ n, P9768729468245493198.a n = A128962 (n + 1)

theorem P9768729468245493198.correct : P9768729468245493198.Spec := by
  intro n
  simp only [A128962, Nat.add_sub_cancel, A128962.P9768729468245493198.a, A128962.P185823510760706890.a, A018215, A018215.P2890906494214168874.a, A128790, A128790.P18260975557873993254.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128962

/-! ## A128962.P9396554277477733392

`A129004(n+1)-A116144(n+1)`
-/

namespace A128962.P9396554277477733392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129004 (n + 1) - A116144 (n + 1)

end

end A128962.P9396554277477733392

namespace A128962

/-- `A129004(n+1)-A116144(n+1)` -/
def P9396554277477733392.Spec : Prop :=
  ∀ n, P9396554277477733392.a n = A128962 (n + 1)

theorem P9396554277477733392.correct : P9396554277477733392.Spec := by
  intro n
  simp only [A128962, Nat.add_sub_cancel, A128962.P9396554277477733392.a, A128962.P185823510760706890.a, A116144, A116144.P18441866221327377996.a, A129004, A129004.P16620639643151888085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128962

/-! ## A128962.P11088510733526761428

`A128987(n+1)+A000079(n+1)*A128796(n+1)`
-/

namespace A128962.P11088510733526761428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128987 (n + 1) + A000079 (n + 1) * A128796 (n + 1)

end

end A128962.P11088510733526761428

namespace A128962

/-- `A128987(n+1)+A000079(n+1)*A128796(n+1)` -/
def P11088510733526761428.Spec : Prop :=
  ∀ n, P11088510733526761428.a n = A128962 (n + 1)

end A128962

/-! ## A128962.P15439712150489125412

`A128798(n+1)+lcm(A128782(n+1), A128798(n+1))`
-/

namespace A128962.P15439712150489125412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128798 (n + 1) + (Int.lcm (A128782 (n + 1)) (A128798 (n + 1)) : ℤ)

end

end A128962.P15439712150489125412

namespace A128962

/-- `A128798(n+1)+lcm(A128782(n+1), A128798(n+1))` -/
def P15439712150489125412.Spec : Prop :=
  ∀ n, P15439712150489125412.a n = A128962 (n + 1)

end A128962

/-! ## A128962.P7118289030456036213

`n*A129004(n+1)/(n+1)`
-/

namespace A128962.P7118289030456036213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A129004 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A128962.P7118289030456036213

namespace A128962

/-- `n*A129004(n+1)/(n+1)` -/
def P7118289030456036213.Spec : Prop :=
  ∀ n, P7118289030456036213.a n = (A128962 (n + 1) : ℚ)

theorem P7118289030456036213.correct : P7118289030456036213.Spec := by
  intro n
  simp only [A128962, Nat.add_sub_cancel, A128962.P7118289030456036213.a, A128962.P185823510760706890.a, A129004, A129004.P16620639643151888085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128962

/-! ## A128962.P2855420471650052429

`A128967(n+1)/A000079(n+1)`
-/

namespace A128962.P2855420471650052429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128967 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A128962.P2855420471650052429

namespace A128962

/-- `A128967(n+1)/A000079(n+1)` -/
def P2855420471650052429.Spec : Prop :=
  ∀ n, P2855420471650052429.a n = (A128962 (n + 1) : ℚ)

end A128962

/-! ## A128962.P16357500649420078968

`A116144(n+1)*A128796(n+1)/A036289(n+1)`
-/

namespace A128962.P16357500649420078968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116144 (n + 1) * A128796 (n + 1) : ℚ) / (A036289 (n + 1) : ℚ)

end

end A128962.P16357500649420078968

namespace A128962

/-- `A116144(n+1)*A128796(n+1)/A036289(n+1)` -/
def P16357500649420078968.Spec : Prop :=
  ∀ n, P16357500649420078968.a n = (A128962 (n + 1) : ℚ)

theorem P16357500649420078968.correct : P16357500649420078968.Spec := by
  intro n
  simp only [A128962, Nat.add_sub_cancel, A128962.P16357500649420078968.a, A128962.P185823510760706890.a, A036289, A036289.P13525419631139213940.a, A116144, A116144.P18441866221327377996.a, A128796, A128796.P2345555735138113176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128962

/-!
# A128963: a(n) = (n^3 - n)*5^n.

The programs for A128963, the canonical program `A128963.P2708232228213665168` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128963 has offset 1).

The definition of A128963 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1))*5^(n+1)` (program `A128963.P2708232228213665168`, by `A128963.P2708232228213665168.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128963.P2708232228213665168

`((n+1)^3-(n+1))*5^(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128963

/-- `((n+1)^3-(n+1))*5^(n+1)` -/
def P2708232228213665168.Spec : Prop :=
  ∀ n, P2708232228213665168.a n = A128963 (n + 1)

theorem P2708232228213665168.correct : P2708232228213665168.Spec := by
  intro n
  simp only [A128963, Nat.add_sub_cancel]

end A128963

/-! ## A128963.P1081251955909723815

`lcm(3, n*A116156(n+1))`
-/

namespace A128963.P1081251955909723815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ((n : ℤ) * A116156 (n + 1))

end

end A128963.P1081251955909723815

namespace A128963

/-- `lcm(3, n*A116156(n+1))` -/
def P1081251955909723815.Spec : Prop :=
  ∀ n, (P1081251955909723815.a n : ℤ) = A128963 (n + 1)

end A128963

/-! ## A128963.P3155647949613982063

`lcm(2, (n+2)*A128799(n+1))`
-/

namespace A128963.P3155647949613982063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n + 2 : ℤ) * A128799 (n + 1))

end

end A128963.P3155647949613982063

namespace A128963

/-- `lcm(2, (n+2)*A128799(n+1))` -/
def P3155647949613982063.Spec : Prop :=
  ∀ n, (P3155647949613982063.a n : ℤ) = A128963 (n + 1)

end A128963

/-! ## A128963.P3044353651260495081

`A007531(n+2)/5^-(n+1)`
-/

namespace A128963.P3044353651260495081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 (n + 2) : ℚ) / (5 : ℚ) ^ (-(n + 1 : ℤ) : ℤ)

end

end A128963.P3044353651260495081

namespace A128963

/-- `A007531(n+2)/5^-(n+1)` -/
def P3044353651260495081.Spec : Prop :=
  ∀ n, P3044353651260495081.a n = (A128963 (n + 1) : ℚ)

theorem P3044353651260495081.correct : P3044353651260495081.Spec := by
  intro n
  simp only [A128963, Nat.add_sub_cancel, A128963.P3044353651260495081.a, A128963.P2708232228213665168.a, A007531, A007531.P15538264737483534371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128963

/-! ## A128963.P4601611076271354255

`A128988(n+1)+A128799(n+1)`
-/

namespace A128963.P4601611076271354255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128988 (n + 1) + A128799 (n + 1)

end

end A128963.P4601611076271354255

namespace A128963

/-- `A128988(n+1)+A128799(n+1)` -/
def P4601611076271354255.Spec : Prop :=
  ∀ n, P4601611076271354255.a n = A128963 (n + 1)

theorem P4601611076271354255.correct : P4601611076271354255.Spec := by
  intro n
  simp only [A128963, Nat.add_sub_cancel, A128963.P4601611076271354255.a, A128963.P2708232228213665168.a, A128799, A128799.P2138756944582292063.a, A128988, A128988.P9951450378729425466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128963

/-! ## A128963.P16410741655410663221

`A128791(n+1)-A036291(n+1)`
-/

namespace A128963.P16410741655410663221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128791 (n + 1) - A036291 (n + 1)

end

end A128963.P16410741655410663221

namespace A128963

/-- `A128791(n+1)-A036291(n+1)` -/
def P16410741655410663221.Spec : Prop :=
  ∀ n, P16410741655410663221.a n = A128963 (n + 1)

theorem P16410741655410663221.correct : P16410741655410663221.Spec := by
  intro n
  simp only [A128963, Nat.add_sub_cancel, A128963.P16410741655410663221.a, A128963.P2708232228213665168.a, A036291, A036291.P15305288486312192511.a, A128791, A128791.P4585751115799897645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128963

/-! ## A128963.P9688034327794516046

`A128799(n+1)+lcm(A128784(n+1), A128799(n+1))`
-/

namespace A128963.P9688034327794516046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128799 (n + 1) + (Int.lcm (A128784 (n + 1)) (A128799 (n + 1)) : ℤ)

end

end A128963.P9688034327794516046

namespace A128963

/-- `A128799(n+1)+lcm(A128784(n+1), A128799(n+1))` -/
def P9688034327794516046.Spec : Prop :=
  ∀ n, P9688034327794516046.a n = A128963 (n + 1)

end A128963

/-! ## A128963.P16970840575096684603

`A128799(n+1)*A129002(n+1)/A007758(n+1)`
-/

namespace A128963.P16970840575096684603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128799 (n + 1) * A129002 (n + 1) : ℚ) / (A007758 (n + 1) : ℚ)

end

end A128963.P16970840575096684603

namespace A128963

/-- `A128799(n+1)*A129002(n+1)/A007758(n+1)` -/
def P16970840575096684603.Spec : Prop :=
  ∀ n, P16970840575096684603.a n = (A128963 (n + 1) : ℚ)

theorem P16970840575096684603.correct : P16970840575096684603.Spec := by
  intro n
  simp only [A128963, Nat.add_sub_cancel, A128963.P16970840575096684603.a, A128963.P2708232228213665168.a, A007758, A007758.P17176775618145894956.a, A128799, A128799.P2138756944582292063.a, A129002, A129002.P2751204566084846886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128963

/-! ## A128963.P14309094895276737738

`A128013(n+1)*A128960(n+1)/A119635(n+1)`
-/

namespace A128963.P14309094895276737738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128013 (n + 1) * A128960 (n + 1) : ℚ) / (A119635 (n + 1) : ℚ)

end

end A128963.P14309094895276737738

namespace A128963

/-- `A128013(n+1)*A128960(n+1)/A119635(n+1)` -/
def P14309094895276737738.Spec : Prop :=
  ∀ n, P14309094895276737738.a n = (A128963 (n + 1) : ℚ)

theorem P14309094895276737738.correct : P14309094895276737738.Spec := by
  intro n
  simp only [A128963, Nat.add_sub_cancel, A128963.P14309094895276737738.a, A128963.P2708232228213665168.a, A119635, A119635.P9144609565879921146.a, A128013, A128013.P1693886840437840183.a, A128960, A128960.P17672098471833153486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128963

/-!
# A128964: a(n) = (n^3-n)*6^n.

The programs for A128964, the canonical program `A128964.P12795609918730376211` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128964 has offset 1).

The definition of A128964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1))*6^(n+1)` (program `A128964.P12795609918730376211`, by `A128964.P12795609918730376211.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128964.P12795609918730376211

`((n+1)^3-(n+1))*6^(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128964

/-- `((n+1)^3-(n+1))*6^(n+1)` -/
def P12795609918730376211.Spec : Prop :=
  ∀ n, P12795609918730376211.a n = A128964 (n + 1)

theorem P12795609918730376211.correct : P12795609918730376211.Spec := by
  intro n
  simp only [A128964, Nat.add_sub_cancel]

end A128964

/-! ## A128964.P10208254253445853069

`6^(n+2)*C(n+2, 3)`
-/

namespace A128964.P10208254253445853069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (n + 2) * Nat.choose (n + 2) 3

end

end A128964.P10208254253445853069

namespace A128964

/-- `6^(n+2)*C(n+2, 3)` -/
def P10208254253445853069.Spec : Prop :=
  ∀ n, (P10208254253445853069.a n : ℤ) = A128964 (n + 1)

theorem P10208254253445853069.correct : P10208254253445853069.Spec := by
  intro n
  simp only [A128964, Nat.add_sub_cancel, A128964.P10208254253445853069.a, A128964.P12795609918730376211.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128964

/-! ## A128964.P3640108561348802681

`∑[∑[72*n]]*A000400(n)/2`
-/

namespace A128964.P3640108561348802681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000400 n : ℚ) / 2

end

end A128964.P3640108561348802681

namespace A128964

/-- `∑[∑[72*n]]*A000400(n)/2` -/
def P3640108561348802681.Spec : Prop :=
  ∀ n, P3640108561348802681.a n = (A128964 (n + 1) : ℚ)

end A128964

/-! ## A128964.P457509112730588472

`A128989(n+1)+A128800(n+1)`
-/

namespace A128964.P457509112730588472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128989 (n + 1) + A128800 (n + 1)

end

end A128964.P457509112730588472

namespace A128964

/-- `A128989(n+1)+A128800(n+1)` -/
def P457509112730588472.Spec : Prop :=
  ∀ n, P457509112730588472.a n = A128964 (n + 1)

theorem P457509112730588472.correct : P457509112730588472.Spec := by
  intro n
  simp only [A128964, Nat.add_sub_cancel, A128964.P457509112730588472.a, A128964.P12795609918730376211.a, A128800, A128800.P8865242343372732918.a, A128989, A128989.P6692638102023814226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128964

/-! ## A128964.P11053498671815867274

`lcm(A128960(n+1), A128961(n+1))`
-/

namespace A128964.P11053498671815867274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128960 (n + 1)) (A128961 (n + 1))

end

end A128964.P11053498671815867274

namespace A128964

/-- `lcm(A128960(n+1), A128961(n+1))` -/
def P11053498671815867274.Spec : Prop :=
  ∀ n, (P11053498671815867274.a n : ℤ) = A128964 (n + 1)

end A128964

/-! ## A128964.P14283623384114057249

`A128800(n+1)+A036289(n+1)*A128797(n+1)`
-/

namespace A128964.P14283623384114057249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128800 (n + 1) + A036289 (n + 1) * A128797 (n + 1)

end

end A128964.P14283623384114057249

namespace A128964

/-- `A128800(n+1)+A036289(n+1)*A128797(n+1)` -/
def P14283623384114057249.Spec : Prop :=
  ∀ n, P14283623384114057249.a n = A128964 (n + 1)

end A128964

/-! ## A128964.P1793436696522145060

`(n+2)*A000400(n)*A003154(n+1)-(n+2)*A000400(n)`
-/

namespace A128964.P1793436696522145060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000400 n * A003154 (n + 1) - (n + 2 : ℤ) * A000400 n

end

end A128964.P1793436696522145060

namespace A128964

/-- `(n+2)*A000400(n)*A003154(n+1)-(n+2)*A000400(n)` -/
def P1793436696522145060.Spec : Prop :=
  ∀ n, P1793436696522145060.a n = A128964 (n + 1)

theorem P1793436696522145060.correct : P1793436696522145060.Spec := by
  intro n
  simp only [A128964, Nat.add_sub_cancel, A128964.P1793436696522145060.a, A128964.P12795609918730376211.a, A000400, A000400.P10889281521385558416.a, A003154, A003154.P12292724974289202885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128964

/-! ## A128964.P14610491120240895946

`n*A129006(n+1)/(n+1)`
-/

namespace A128964.P14610491120240895946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A129006 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A128964.P14610491120240895946

namespace A128964

/-- `n*A129006(n+1)/(n+1)` -/
def P14610491120240895946.Spec : Prop :=
  ∀ n, P14610491120240895946.a n = (A128964 (n + 1) : ℚ)

theorem P14610491120240895946.correct : P14610491120240895946.Spec := by
  intro n
  simp only [A128964, Nat.add_sub_cancel, A128964.P14610491120240895946.a, A128964.P12795609918730376211.a, A129006, A129006.P2654830530449585545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128964

/-! ## A128964.P6687449566698471377

`A128797(n+1)*A129004(n+1)/A007758(n+1)`
-/

namespace A128964.P6687449566698471377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128797 (n + 1) * A129004 (n + 1) : ℚ) / (A007758 (n + 1) : ℚ)

end

end A128964.P6687449566698471377

namespace A128964

/-- `A128797(n+1)*A129004(n+1)/A007758(n+1)` -/
def P6687449566698471377.Spec : Prop :=
  ∀ n, P6687449566698471377.a n = (A128964 (n + 1) : ℚ)

end A128964

/-! ## A128964.P12068891890941612642

`A128043(n+1)*A128960(n+1)/A119635(n+1)`
-/

namespace A128964.P12068891890941612642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128043 (n + 1) * A128960 (n + 1) : ℚ) / (A119635 (n + 1) : ℚ)

end

end A128964.P12068891890941612642

namespace A128964

/-- `A128043(n+1)*A128960(n+1)/A119635(n+1)` -/
def P12068891890941612642.Spec : Prop :=
  ∀ n, P12068891890941612642.a n = (A128964 (n + 1) : ℚ)

theorem P12068891890941612642.correct : P12068891890941612642.Spec := by
  intro n
  simp only [A128964, Nat.add_sub_cancel, A128964.P12068891890941612642.a, A128964.P12795609918730376211.a, A119635, A119635.P9144609565879921146.a, A128043, A128043.P14865577018167597184.a, A128960, A128960.P17672098471833153486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128964

/-!
# A128965: a(n) = (n^3 - n)*7^n.

The programs for A128965, the canonical program `A128965.P10724283648106750513` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128965 has offset 1).

The definition of A128965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1))*7^(n+1)` (program `A128965.P10724283648106750513`, by `A128965.P10724283648106750513.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128965.P10724283648106750513

`((n+1)^3-(n+1))*7^(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128965

/-- `((n+1)^3-(n+1))*7^(n+1)` -/
def P10724283648106750513.Spec : Prop :=
  ∀ n, P10724283648106750513.a n = A128965 (n + 1)

theorem P10724283648106750513.correct : P10724283648106750513.Spec := by
  intro n
  simp only [A128965, Nat.add_sub_cancel]

end A128965

/-! ## A128965.P13286129526900169109

`A128990(n+1)+A128801(n+1)`
-/

namespace A128965.P13286129526900169109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128990 (n + 1) + A128801 (n + 1)

end

end A128965.P13286129526900169109

namespace A128965

/-- `A128990(n+1)+A128801(n+1)` -/
def P13286129526900169109.Spec : Prop :=
  ∀ n, P13286129526900169109.a n = A128965 (n + 1)

theorem P13286129526900169109.correct : P13286129526900169109.Spec := by
  intro n
  simp only [A128965, Nat.add_sub_cancel, A128965.P13286129526900169109.a, A128965.P10724283648106750513.a, A128801, A128801.P617593162747398871.a, A128990, A128990.P10836331386635318470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128965

/-! ## A128965.P7006999350343552904

`A129007(n+1)-A116165(n+1)`
-/

namespace A128965.P7006999350343552904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129007 (n + 1) - A116165 (n + 1)

end

end A128965.P7006999350343552904

namespace A128965

/-- `A129007(n+1)-A116165(n+1)` -/
def P7006999350343552904.Spec : Prop :=
  ∀ n, P7006999350343552904.a n = A128965 (n + 1)

theorem P7006999350343552904.correct : P7006999350343552904.Spec := by
  intro n
  simp only [A128965, Nat.add_sub_cancel, A128965.P7006999350343552904.a, A128965.P10724283648106750513.a, A116165, A116165.P322017445968686295.a, A129007, A129007.P367520848224931029.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128965

/-! ## A128965.P10840813371204809321

`A128990(n+1)+7*A116165(n)`
-/

namespace A128965.P10840813371204809321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128990 (n + 1) + 7 * A116165 n

end

end A128965.P10840813371204809321

namespace A128965

/-- `A128990(n+1)+7*A116165(n)` -/
def P10840813371204809321.Spec : Prop :=
  ∀ n, P10840813371204809321.a n = A128965 (n + 1)

theorem P10840813371204809321.correct : P10840813371204809321.Spec := by
  intro n
  simp only [A128965, Nat.add_sub_cancel, A128965.P10840813371204809321.a, A128965.P10724283648106750513.a, A116165, A116165.P322017445968686295.a, A128990, A128990.P10836331386635318470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128965

/-! ## A128965.P15745156946243233160

`lcm((n+2)*A128801(n+1), A014963(4*n+2))`
-/

namespace A128965.P15745156946243233160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 2 : ℤ) * A128801 (n + 1)) (A014963 (4 * n + 2))

end

end A128965.P15745156946243233160

namespace A128965

/-- `lcm((n+2)*A128801(n+1), A014963(4*n+2))` -/
def P15745156946243233160.Spec : Prop :=
  ∀ n, (P15745156946243233160.a n : ℤ) = A128965 (n + 1)

end A128965

/-! ## A128965.P9969233644940078433

`n*A129007(n+1)/(n+1)`
-/

namespace A128965.P9969233644940078433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A129007 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A128965.P9969233644940078433

namespace A128965

/-- `n*A129007(n+1)/(n+1)` -/
def P9969233644940078433.Spec : Prop :=
  ∀ n, P9969233644940078433.a n = (A128965 (n + 1) : ℚ)

theorem P9969233644940078433.correct : P9969233644940078433.Spec := by
  intro n
  simp only [A128965, Nat.add_sub_cancel, A128965.P9969233644940078433.a, A128965.P10724283648106750513.a, A129007, A129007.P367520848224931029.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128965

/-! ## A128965.P15577426165918892470

`A128051(n+1)*A128960(n+1)/A119635(n+1)`
-/

namespace A128965.P15577426165918892470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128051 (n + 1) * A128960 (n + 1) : ℚ) / (A119635 (n + 1) : ℚ)

end

end A128965.P15577426165918892470

namespace A128965

/-- `A128051(n+1)*A128960(n+1)/A119635(n+1)` -/
def P15577426165918892470.Spec : Prop :=
  ∀ n, P15577426165918892470.a n = (A128965 (n + 1) : ℚ)

theorem P15577426165918892470.correct : P15577426165918892470.Spec := by
  intro n
  simp only [A128965, Nat.add_sub_cancel, A128965.P15577426165918892470.a, A128965.P10724283648106750513.a, A119635, A119635.P9144609565879921146.a, A128051, A128051.P17154078098800671309.a, A128960, A128960.P17672098471833153486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128965

/-!
# A128966: Triangle read by rows of coefficients of polynomials P[n](x) defined by P[0]=0, P[1]=x+1; for n >= 2, P[n]=(x+1)*P[n-1]+x*P[n-2].

The programs for A128966, the canonical program `A128966.P10286333981013904752` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128966 has offset 0).

The definition of A128966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128966.P10286333981013904752

`T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128966

/-- `T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)` -/
def P10286333981013904752.Spec : Prop :=
  ∀ n, (P10286333981013904752.a n : ℤ) = A128966 n

theorem P10286333981013904752.correct : P10286333981013904752.Spec := by
  intro n
  simp only [A128966]

end A128966

/-! ## A128966.P3778499537759532948

`A035607(n)-A122542(n)`
-/

namespace A128966.P3778499537759532948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n - A122542 n

end

end A128966.P3778499537759532948

namespace A128966

/-- `A035607(n)-A122542(n)` -/
def P3778499537759532948.Spec : Prop :=
  ∀ n, P3778499537759532948.a n = A128966 n

end A128966

/-! ## A128966.P1530698253426858068

`A113413(n)-A266213(n)`
-/

namespace A128966.P1530698253426858068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 n - A266213 n

end

end A128966.P1530698253426858068

namespace A128966

/-- `A113413(n)-A266213(n)` -/
def P1530698253426858068.Spec : Prop :=
  ∀ n, P1530698253426858068.a n = A128966 n

end A128966

/-! ## A128966.P18194683048603312349

`A035607(n)-A266213(A061579(n))`
-/

namespace A128966.P18194683048603312349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n - A266213 (A061579 n).toNat

end

end A128966.P18194683048603312349

namespace A128966

/-- `A035607(n)-A266213(A061579(n))` -/
def P18194683048603312349.Spec : Prop :=
  ∀ n, P18194683048603312349.a n = A128966 n

end A128966

/-! ## A128966.P17831898545861728076

`A266213(A007401(n+1))-A122542(n)`
-/

namespace A128966.P17831898545861728076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A007401 (n + 1)).toNat - A122542 n

end

end A128966.P17831898545861728076

namespace A128966

/-- `A266213(A007401(n+1))-A122542(n)` -/
def P17831898545861728076.Spec : Prop :=
  ∀ n, P17831898545861728076.a n = A128966 n

end A128966

/-! ## A128966.P17018756402823456714

`A122542(A014132(n+1))-A266213(n)`
-/

namespace A128966.P17018756402823456714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A014132 (n + 1)).toNat - A266213 n

end

end A128966.P17018756402823456714

namespace A128966

/-- `A122542(A014132(n+1))-A266213(n)` -/
def P17018756402823456714.Spec : Prop :=
  ∀ n, P17018756402823456714.a n = A128966 n

end A128966

/-! ## A128966.P4002655926135999036

`A266213(A099375(n)+n)-A266213(n)`
-/

namespace A128966.P4002655926135999036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A099375 n + (n : ℤ)).toNat - A266213 n

end

end A128966.P4002655926135999036

namespace A128966

/-- `A266213(A099375(n)+n)-A266213(n)` -/
def P4002655926135999036.Spec : Prop :=
  ∀ n, P4002655926135999036.a n = A128966 n

end A128966

/-! ## A128966.P12257060423911600339

`A266213(A007401(n+1))-A266213(A061579(n))`
-/

namespace A128966.P12257060423911600339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A007401 (n + 1)).toNat - A266213 (A061579 n).toNat

end

end A128966.P12257060423911600339

namespace A128966

/-- `A266213(A007401(n+1))-A266213(A061579(n))` -/
def P12257060423911600339.Spec : Prop :=
  ∀ n, P12257060423911600339.a n = A128966 n

end A128966

/-!
# A128967: a(n) = (n^3-n)*8^n.

The programs for A128967, the canonical program `A128967.P11710880792767149310` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128967 has offset 1).

The definition of A128967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1))*8^(n+1)` (program `A128967.P11710880792767149310`, by `A128967.P11710880792767149310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128967.P11710880792767149310

`((n+1)^3-(n+1))*8^(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128967

/-- `((n+1)^3-(n+1))*8^(n+1)` -/
def P11710880792767149310.Spec : Prop :=
  ∀ n, P11710880792767149310.a n = A128967 (n + 1)

theorem P11710880792767149310.correct : P11710880792767149310.Spec := by
  intro n
  simp only [A128967, Nat.add_sub_cancel]

end A128967

/-! ## A128967.P5776470292573346273

`A000051(n+1)*A128962(n+1)-A128962(n+1)`
-/

namespace A128967.P5776470292573346273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) * A128962 (n + 1) - A128962 (n + 1)

end

end A128967.P5776470292573346273

namespace A128967

/-- `A000051(n+1)*A128962(n+1)-A128962(n+1)` -/
def P5776470292573346273.Spec : Prop :=
  ∀ n, P5776470292573346273.a n = A128967 (n + 1)

end A128967

/-! ## A128967.P15678567126206722179

`n*A129008(n+1)/(n+1)`
-/

namespace A128967.P15678567126206722179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A129008 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A128967.P15678567126206722179

namespace A128967

/-- `n*A129008(n+1)/(n+1)` -/
def P15678567126206722179.Spec : Prop :=
  ∀ n, P15678567126206722179.a n = (A128967 (n + 1) : ℚ)

theorem P15678567126206722179.correct : P15678567126206722179.Spec := by
  intro n
  simp only [A128967, Nat.add_sub_cancel, A128967.P15678567126206722179.a, A128967.P11710880792767149310.a, A129008, A129008.P890738851736368271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128967

/-! ## A128967.P3078084603019403449

`A128048(n+1)*A128960(n+1)/A119635(n+1)`
-/

namespace A128967.P3078084603019403449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128048 (n + 1) * A128960 (n + 1) : ℚ) / (A119635 (n + 1) : ℚ)

end

end A128967.P3078084603019403449

namespace A128967

/-- `A128048(n+1)*A128960(n+1)/A119635(n+1)` -/
def P3078084603019403449.Spec : Prop :=
  ∀ n, P3078084603019403449.a n = (A128967 (n + 1) : ℚ)

theorem P3078084603019403449.correct : P3078084603019403449.Spec := by
  intro n
  simp only [A128967, Nat.add_sub_cancel, A128967.P3078084603019403449.a, A128967.P11710880792767149310.a, A119635, A119635.P9144609565879921146.a, A128048, A128048.P94914982982816563.a, A128960, A128960.P17672098471833153486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128967

/-! ## A128967.P365680579709130539

`A116166(n+1)*A128963(n+1)/A116156(n+1)`
-/

namespace A128967.P365680579709130539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116166 (n + 1) * A128963 (n + 1) : ℚ) / (A116156 (n + 1) : ℚ)

end

end A128967.P365680579709130539

namespace A128967

/-- `A116166(n+1)*A128963(n+1)/A116156(n+1)` -/
def P365680579709130539.Spec : Prop :=
  ∀ n, P365680579709130539.a n = (A128967 (n + 1) : ℚ)

end A128967

/-!
# A128968: a(n) is the n-th prime of the form x^2+n.

The programs for A128968, there is no canonical definition to state claims against.
-/

/-! ## A128968.P2477535758828668422

`A046026(∑[A306022(n)]²)`
-/

namespace A128968.P2477535758828668422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046026 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A128968.P2477535758828668422

/-!
# A128969: a(n) = (n^3 - n)*9^n.

The programs for A128969, the canonical program `A128969.P5506366293102074918` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128969 has offset 1).

The definition of A128969 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1))*9^(n+1)` (program `A128969.P5506366293102074918`, by `A128969.P5506366293102074918.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128969.P5506366293102074918

`((n+1)^3-(n+1))*9^(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128969

/-- `((n+1)^3-(n+1))*9^(n+1)` -/
def P5506366293102074918.Spec : Prop :=
  ∀ n, P5506366293102074918.a n = A128969 (n + 1)

theorem P5506366293102074918.correct : P5506366293102074918.Spec := by
  intro n
  simp only [A128969, Nat.add_sub_cancel]

end A128969

/-! ## A128969.P9968121653540175358

`A128795(n+1)-A158749(n+1)`
-/

namespace A128969.P9968121653540175358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128795 (n + 1) - A158749 (n + 1)

end

end A128969.P9968121653540175358

namespace A128969

/-- `A128795(n+1)-A158749(n+1)` -/
def P9968121653540175358.Spec : Prop :=
  ∀ n, P9968121653540175358.a n = A128969 (n + 1)

theorem P9968121653540175358.correct : P9968121653540175358.Spec := by
  intro n
  simp only [A128969, Nat.add_sub_cancel, A128969.P9968121653540175358.a, A128969.P5506366293102074918.a, A128795, A128795.P16103889940377404626.a, A158749, A158749.P15906001908003361684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128969

/-! ## A128969.P17133388659275875128

`A128795(n+1)+A128803(n+1)-A128788(n+1)`
-/

namespace A128969.P17133388659275875128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128795 (n + 1) + (A128803 (n + 1) - A128788 (n + 1))

end

end A128969.P17133388659275875128

namespace A128969

/-- `A128795(n+1)+A128803(n+1)-A128788(n+1)` -/
def P17133388659275875128.Spec : Prop :=
  ∀ n, P17133388659275875128.a n = A128969 (n + 1)

theorem P17133388659275875128.correct : P17133388659275875128.Spec := by
  intro n
  simp only [A128969, Nat.add_sub_cancel, A128969.P17133388659275875128.a, A128969.P5506366293102074918.a, A128788, A128788.P5167137184545089802.a, A128795, A128795.P16103889940377404626.a, A128803, A128803.P4280394860633928794.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128969

/-! ## A128969.P2757869307270541245

`n*A129009(n+1)/(n+1)`
-/

namespace A128969.P2757869307270541245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A129009 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A128969.P2757869307270541245

namespace A128969

/-- `n*A129009(n+1)/(n+1)` -/
def P2757869307270541245.Spec : Prop :=
  ∀ n, P2757869307270541245.a n = (A128969 (n + 1) : ℚ)

theorem P2757869307270541245.correct : P2757869307270541245.Spec := by
  intro n
  simp only [A128969, Nat.add_sub_cancel, A128969.P2757869307270541245.a, A128969.P5506366293102074918.a, A129009, A129009.P1493963812986752788.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128969

/-! ## A128969.P8800339453558568809

`A128800(n+1)*A129003(n+1)/A007758(n+1)`
-/

namespace A128969.P8800339453558568809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128800 (n + 1) * A129003 (n + 1) : ℚ) / (A007758 (n + 1) : ℚ)

end

end A128969.P8800339453558568809

namespace A128969

/-- `A128800(n+1)*A129003(n+1)/A007758(n+1)` -/
def P8800339453558568809.Spec : Prop :=
  ∀ n, P8800339453558568809.a n = (A128969 (n + 1) : ℚ)

end A128969

/-! ## A128969.P1639383613383758108

`A121607(n+1)*A128964(n+1)/A119635(n+1)`
-/

namespace A128969.P1639383613383758108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121607 (n + 1) * A128964 (n + 1) : ℚ) / (A119635 (n + 1) : ℚ)

end

end A128969.P1639383613383758108

namespace A128969

/-- `A121607(n+1)*A128964(n+1)/A119635(n+1)` -/
def P1639383613383758108.Spec : Prop :=
  ∀ n, P1639383613383758108.a n = (A128969 (n + 1) : ℚ)

end A128969

/-! ## A128969.P16689097982342240092

`A128074(n+1)*A128960(n+1)/A119635(n+1)`
-/

namespace A128969.P16689097982342240092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128074 (n + 1) * A128960 (n + 1) : ℚ) / (A119635 (n + 1) : ℚ)

end

end A128969.P16689097982342240092

namespace A128969

/-- `A128074(n+1)*A128960(n+1)/A119635(n+1)` -/
def P16689097982342240092.Spec : Prop :=
  ∀ n, P16689097982342240092.a n = (A128969 (n + 1) : ℚ)

theorem P16689097982342240092.correct : P16689097982342240092.Spec := by
  intro n
  simp only [A128969, Nat.add_sub_cancel, A128969.P16689097982342240092.a, A128969.P5506366293102074918.a, A119635, A119635.P9144609565879921146.a, A128074, A128074.P3953472624472269561.a, A128960, A128960.P17672098471833153486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128969

/-!
# A128971: A130125 * A000012.

The programs for A128971, the canonical program `A128971.P8661958015488978352` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128971 has offset 0).

The definition of A128971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128971.P12457619619834605479

`2^(row(n)+1)-2^col(n)-T(n-1,k)` with `a(0)=1`
-/

namespace A128971.P12457619619834605479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ (SequenceMachineLib.triRow n + 1) : ℤ) - (2 ^ SequenceMachineLib.triCol n : ℤ) - SequenceMachineLib.triUp a n

end

end A128971.P12457619619834605479

namespace A128971

/-- `2^(row(n)+1)-2^col(n)-T(n-1,k)` -/
def P12457619619834605479.Spec : Prop :=
  ∀ n, P12457619619834605479.a n = A128971 n

end A128971

/-! ## A128971.P11869554155129268567

`or(2*T(n-1,k)+2*T(n-1,k-1)-4*T(n-2,k-1), T(n-2,k))` with `a(0)=1`
-/

namespace A128971.P11869554155129268567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * SequenceMachineLib.triUp a n + 2 * SequenceMachineLib.triUpLeft a n - 4 * SequenceMachineLib.triUp2Left a n) (SequenceMachineLib.triUp2 a n)

end

end A128971.P11869554155129268567

namespace A128971

/-- `or(2*T(n-1,k)+2*T(n-1,k-1)-4*T(n-2,k-1), T(n-2,k))` -/
def P11869554155129268567.Spec : Prop :=
  ∀ n, P11869554155129268567.a n = A128971 n

end A128971

/-! ## A128971.P15530720631697601612

`A130328(n)-T(n-1,k)` with `a(0)=1`
-/

namespace A128971.P15530720631697601612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130328 n - SequenceMachineLib.triUp a n

end

end A128971.P15530720631697601612

namespace A128971

/-- `A130328(n)-T(n-1,k)` -/
def P15530720631697601612.Spec : Prop :=
  ∀ n, P15530720631697601612.a n = A128971 n

end A128971

/-! ## A128971.P6626883166980211470

`A137688(n)+T(n-2,k)` with `a(0)=1`
-/

namespace A128971.P6626883166980211470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A137688 n + SequenceMachineLib.triUp2 a n

end

end A128971.P6626883166980211470

namespace A128971

/-- `A137688(n)+T(n-2,k)` -/
def P6626883166980211470.Spec : Prop :=
  ∀ n, P6626883166980211470.a n = A128971 n

end A128971

/-! ## A128971.P8214000682931030152

`2^col(n)*A000975(row(n)+1-col(n))`
-/

namespace A128971.P8214000682931030152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n : ℤ) * A000975 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n)

end

end A128971.P8214000682931030152

namespace A128971

/-- `2^col(n)*A000975(row(n)+1-col(n))` -/
def P8214000682931030152.Spec : Prop :=
  ∀ n, P8214000682931030152.a n = A128971 n

end A128971

/-! ## A128971.P8661958015488978352

`2^(n-C(∑[char[∑[n]]], 2))*A000975(C(comp[∑[n]]-n, 2)-n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A128971

/-- `2^(n-C(∑[char[∑[n]]], 2))*A000975(C(comp[∑[n]]-n, 2)-n)` -/
def P8661958015488978352.Spec : Prop :=
  ∀ n, P8661958015488978352.a n = (A128971 n : ℚ)

end A128971

/-! ## A128971.P1040950718990461544

`A115216(A375779(n+1))`
-/

namespace A128971.P1040950718990461544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115216 (A375779 (n + 1)).toNat

end

end A128971.P1040950718990461544

namespace A128971

/-- `A115216(A375779(n+1))` -/
def P1040950718990461544.Spec : Prop :=
  ∀ n, P1040950718990461544.a n = A128971 n

end A128971

/-! ## A128971.P7432724701222909379

`A115216(A057028(n+1)-1)`
-/

namespace A128971.P7432724701222909379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115216 (A057028 (n + 1) - 1).toNat

end

end A128971.P7432724701222909379

namespace A128971

/-- `A115216(A057028(n+1)-1)` -/
def P7432724701222909379.Spec : Prop :=
  ∀ n, P7432724701222909379.a n = A128971 n

end A128971

/-! ## A128971.P2599536920106915081

`A115216(A209293(n+1)-1)`
-/

namespace A128971.P2599536920106915081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115216 (A209293 (n + 1) - 1).toNat

end

end A128971.P2599536920106915081

namespace A128971

/-- `A115216(A209293(n+1)-1)` -/
def P2599536920106915081.Spec : Prop :=
  ∀ n, P2599536920106915081.a n = A128971 n

end A128971

/-! ## A128971.P3770370431108309838

`A004773(A130321(n))*A059268(n)`
-/

namespace A128971.P3770370431108309838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A130321 n).toNat * A059268 n

end

end A128971.P3770370431108309838

namespace A128971

/-- `A004773(A130321(n))*A059268(n)` -/
def P3770370431108309838.Spec : Prop :=
  ∀ n, P3770370431108309838.a n = A128971 n

end A128971

/-!
# A128972: n^3 - 1 divided by its largest cube divisor.

The programs for A128972, there is no canonical definition to state claims against.
-/

/-! ## A128972.P13289893121298612162

`A050985((n+2)^3-1)`
-/

namespace A128972.P13289893121298612162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 ((n + 2) ^ 3 - 1)

end

end A128972.P13289893121298612162

/-! ## A128972.P13235834914982654482

`A050985(A135300(n+2))+char[24]`
-/

namespace A128972.P13235834914982654482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A135300 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A128972.P13235834914982654482

/-! ## A128972.P7674868808391138489

`A050985(∑[A003215(n+1)])+char[31]`
-/

namespace A128972.P7674868808391138489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A128972.P7674868808391138489

/-! ## A128972.P6909581892797248219

`lcm(A050985(A068601(n+2)), A053164(n+1))`
-/

namespace A128972.P6909581892797248219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050985 (A068601 (n + 2)).toNat) (A053164 (n + 1))

end

end A128972.P6909581892797248219

/-! ## A128972.P16369455176392621381

`A007318(C(2, n))*A050985(A135300(n+2))`
-/

namespace A128972.P16369455176392621381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A050985 (A135300 (n + 2)).toNat

end

end A128972.P16369455176392621381

/-!
# A128973: Triangle formed by reading A038622 mod 2 .

The programs for A128973, the canonical program `A128973.P16940010440497344122` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128973 has offset 0).

The definition of A128973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128973.P16940010440497344122

`T(T(n-1,k+1), T(col(n)*T(T(n-1,k-1), T(n-1,k)), col(n)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128973

/-- `T(T(n-1,k+1), T(col(n)*T(T(n-1,k-1), T(n-1,k)), col(n)))` -/
def P16940010440497344122.Spec : Prop :=
  ∀ n, (P16940010440497344122.a n : ℤ) = A128973 n

theorem P16940010440497344122.correct : P16940010440497344122.Spec := by
  intro n
  simp only [A128973]

end A128973

/-! ## A128973.P2345799718599483613

`T(T(T(n-1,k+1), T(T(n-1,k)-1, col(n))+T(n-1,k-1)), T(n-1,k))` with `a(0)=1`
-/

namespace A128973.P2345799718599483613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) (SequenceMachineLib.triAt a (((SequenceMachineLib.triUp a n : ℕ) : ℤ) - 1) (SequenceMachineLib.triCol n : ℤ) + SequenceMachineLib.triUpLeft a n : ℤ) : ℕ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A128973.P2345799718599483613

namespace A128973

/-- `T(T(T(n-1,k+1), T(T(n-1,k)-1, col(n))+T(n-1,k-1)), T(n-1,k))` -/
def P2345799718599483613.Spec : Prop :=
  ∀ n, (P2345799718599483613.a n : ℤ) = A128973 n

end A128973

/-! ## A128973.P47798649255151200

`T(T(n-1,k+1)-T(T(n-1,k)-1, col(n)), T(T(n-1,k-1), T(n-1,k)))` with `a(0)=1`
-/

namespace A128973.P47798649255151200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) - ((SequenceMachineLib.triAt a (((SequenceMachineLib.triUp a n : ℕ) : ℤ) - 1) (SequenceMachineLib.triCol n : ℤ) : ℕ) : ℤ)) ((SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ) : ℕ) : ℤ)

end

end A128973.P47798649255151200

namespace A128973

/-- `T(T(n-1,k+1)-T(T(n-1,k)-1, col(n)), T(T(n-1,k-1), T(n-1,k)))` -/
def P47798649255151200.Spec : Prop :=
  ∀ n, (P47798649255151200.a n : ℤ) = A128973 n

end A128973

/-! ## A128973.P9526454320860816505

`A038622(n)%2`
-/

namespace A128973.P9526454320860816505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038622 n) 2

end

end A128973.P9526454320860816505

namespace A128973

/-- `A038622(n)%2` -/
def P9526454320860816505.Spec : Prop :=
  ∀ n, P9526454320860816505.a n = A128973 n

end A128973

/-! ## A128973.P8320540321622743065

`A089942(n)%2`
-/

namespace A128973.P8320540321622743065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089942 n) 2

end

end A128973.P8320540321622743065

namespace A128973

/-- `A089942(n)%2` -/
def P8320540321622743065.Spec : Prop :=
  ∀ n, P8320540321622743065.a n = A128973 n

end A128973

/-! ## A128973.P6287199636062578775

`A126791(n)%2`
-/

namespace A128973.P6287199636062578775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126791 n) 2

end

end A128973.P6287199636062578775

namespace A128973

/-- `A126791(n)%2` -/
def P6287199636062578775.Spec : Prop :=
  ∀ n, P6287199636062578775.a n = A128973 n

end A128973

/-! ## A128973.P7154140717101949575

`A126970(n)%2`
-/

namespace A128973.P7154140717101949575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126970 n) 2

end

end A128973.P7154140717101949575

namespace A128973

/-- `A126970(n)%2` -/
def P7154140717101949575.Spec : Prop :=
  ∀ n, P7154140717101949575.a n = A128973 n

end A128973

/-! ## A128973.P6897336489173218611

`A124733(n+1)%2`
-/

namespace A128973.P6897336489173218611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124733 (n + 1)) 2

end

end A128973.P6897336489173218611

namespace A128973

/-- `A124733(n+1)%2` -/
def P6897336489173218611.Spec : Prop :=
  ∀ n, P6897336489173218611.a n = A128973 n

end A128973

/-! ## A128973.P10048255465027082715

`and(1, A038622(n*(char[2]+1)))`
-/

namespace A128973.P10048255465027082715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A038622 (n * ((if ∃ j, f1 j = n then 1 else 0) + 1)))

end

end A128973.P10048255465027082715

namespace A128973

/-- `and(1, A038622(n*(char[2]+1)))` -/
def P10048255465027082715.Spec : Prop :=
  ∀ n, P10048255465027082715.a n = A128973 n

end A128973

/-! ## A128973.P18155014210276515844

`and(A038622(n), A060576(n))`
-/

namespace A128973.P18155014210276515844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038622 n) (A060576 n)

end

end A128973.P18155014210276515844

namespace A128973

/-- `and(A038622(n), A060576(n))` -/
def P18155014210276515844.Spec : Prop :=
  ∀ n, P18155014210276515844.a n = A128973 n

end A128973

/-! ## A128973.P11538154731319885074

`and(A060576(n), A089942(n))`
-/

namespace A128973.P11538154731319885074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A089942 n)

end

end A128973.P11538154731319885074

namespace A128973

/-- `and(A060576(n), A089942(n))` -/
def P11538154731319885074.Spec : Prop :=
  ∀ n, P11538154731319885074.a n = A128973 n

end A128973

/-! ## A128973.P5315652614857843574

`and(and(1, A064189(n))!, A089942(n))`
-/

namespace A128973.P5315652614857843574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (Int.land 1 (A064189 n)).toNat : ℤ) (A089942 n)

end

end A128973.P5315652614857843574

namespace A128973

/-- `and(and(1, A064189(n))!, A089942(n))` -/
def P5315652614857843574.Spec : Prop :=
  ∀ n, P5315652614857843574.a n = A128973 n

end A128973

/-! ## A128973.P16340313724752513242

`and(A126791(n), A126795(A126773(n+1)))`
-/

namespace A128973.P16340313724752513242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126791 n) (A126795 (A126773 (n + 1)).toNat)

end

end A128973.P16340313724752513242

namespace A128973

/-- `and(A126791(n), A126795(A126773(n+1)))` -/
def P16340313724752513242.Spec : Prop :=
  ∀ n, P16340313724752513242.a n = A128973 n

end A128973

/-! ## A128973.P8184990218930040223

`and(A001222(A126990(n+1)), A126970(n))`
-/

namespace A128973.P8184990218930040223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A126990 (n + 1)).toNat) (A126970 n)

end

end A128973.P8184990218930040223

namespace A128973

/-- `and(A001222(A126990(n+1)), A126970(n))` -/
def P8184990218930040223.Spec : Prop :=
  ∀ n, P8184990218930040223.a n = A128973 n

end A128973

/-! ## A128973.P9023137750496599964

`A126331(n)%2`
-/

namespace A128973.P9023137750496599964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126331 n) 2

end

end A128973.P9023137750496599964

namespace A128973

/-- `A126331(n)%2` -/
def P9023137750496599964.Spec : Prop :=
  ∀ n, P9023137750496599964.a n = A128973 n

end A128973

/-! ## A128973.P9339647120021196989

`A000007(or(1, A126331(n))-A126331(n))`
-/

namespace A128973.P9339647120021196989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.lor 1 (A126331 n) - A126331 n).toNat

end

end A128973.P9339647120021196989

namespace A128973

/-- `A000007(or(1, A126331(n))-A126331(n))` -/
def P9339647120021196989.Spec : Prop :=
  ∀ n, P9339647120021196989.a n = A128973 n

end A128973

/-! ## A128973.P2247896594155952288

`and(A001222(A127003(n)), A126970(n))`
-/

namespace A128973.P2247896594155952288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A127003 n).toNat) (A126970 n)

end

end A128973.P2247896594155952288

namespace A128973

/-- `and(A001222(A127003(n)), A126970(n))` -/
def P2247896594155952288.Spec : Prop :=
  ∀ n, P2247896594155952288.a n = A128973 n

end A128973

/-! ## A128973.P6807614645930728647

`and(A001222(A126961(n+1)), A126970(n))`
-/

namespace A128973.P6807614645930728647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A126961 (n + 1)).toNat) (A126970 n)

end

end A128973.P6807614645930728647

namespace A128973

/-- `and(A001222(A126961(n+1)), A126970(n))` -/
def P6807614645930728647.Spec : Prop :=
  ∀ n, P6807614645930728647.a n = A128973 n

end A128973

/-! ## A128973.P8673282150814871276

`and(A077860(n), A089942(n))`
-/

namespace A128973.P8673282150814871276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077860 n) (A089942 n)

end

end A128973.P8673282150814871276

namespace A128973

/-- `and(A077860(n), A089942(n))` -/
def P8673282150814871276.Spec : Prop :=
  ∀ n, P8673282150814871276.a n = A128973 n

end A128973

/-! ## A128973.P3740995765147650469

`and(A077924(n), A089942(n))`
-/

namespace A128973.P3740995765147650469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077924 n) (A089942 n)

end

end A128973.P3740995765147650469

namespace A128973

/-- `and(A077924(n), A089942(n))` -/
def P3740995765147650469.Spec : Prop :=
  ∀ n, P3740995765147650469.a n = A128973 n

end A128973

/-!
# A128974: Numbers k such that 12k does not divide Fibonacci(12k).

The programs for A128974, there is no canonical definition to state claims against.
-/

/-! ## A128974.P7998493399826655524

`eq[char[A072378(n+1)], A000007(n)]`
-/

namespace A128974.P7998493399826655524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A128974.P7998493399826655524

/-! ## A128974.P15069117093015866992

`eq[char[A072378(n+1)], A000038(n)]`
-/

namespace A128974.P15069117093015866992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A128974.P15069117093015866992

/-! ## A128974.P6417118035307852819

`eq[char[A072378(n+1)], A036987(2*n)]`
-/

namespace A128974.P6417118035307852819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A128974.P6417118035307852819

/-! ## A128974.P12850995966735393568

`eq[char[A072378(n+1)], A108069(2*n+1)]`
-/

namespace A128974.P12850995966735393568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108069 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A128974.P12850995966735393568

/-! ## A128974.P4884746659210000447

`lt[A104714(A008594(n)), 2*n]`
-/

namespace A128974.P4884746659210000447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (A008594 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A128974.P4884746659210000447

/-! ## A128974.P3320338157741630515

`lt[A104714(A008594(n))+1, A004277(n)]`
-/

namespace A128974.P3320338157741630515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (A008594 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128974.P3320338157741630515

/-! ## A128974.P1802898755861075216

`eq[char[A072378(n+1)], A182492(2*n)]`
-/

namespace A128974.P1802898755861075216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A128974.P1802898755861075216

/-!
# A128975: a(n) = the number of unordered triples of integers (a,b,c) with a+b+c=n, whose bitwise XOR is zero. Equivalently, the number of three-heap nim games with n stones which are in a losing position for the first player.

The programs for A128975, the canonical program `A128975.P3355518548198694362` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128975 has offset 1).

The definition of A128975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128975.P3355518548198694362

`A079318(∑[n]%(n+1))-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A128975

/-- `A079318(∑[n]%(n+1))-1` -/
def P3355518548198694362.Spec : Prop :=
  ∀ n, P3355518548198694362.a n = A128975 (n + 1)

theorem P3355518548198694362.correct : P3355518548198694362.Spec := by
  intro n
  simp only [A128975, Nat.add_sub_cancel]

end A128975

/-! ## A128975.P7540234994555427801

`A005836(A048896(A093178(n)))`
-/

namespace A128975.P7540234994555427801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A048896 (A093178 n).toNat).toNat

end

end A128975.P7540234994555427801

namespace A128975

/-- `A005836(A048896(A093178(n)))` -/
def P7540234994555427801.Spec : Prop :=
  ∀ n, P7540234994555427801.a n = A128975 (n + 1)

end A128975

/-! ## A128975.P13004151135394055526

`A005836(A048896(n*A000035(n)))`
-/

namespace A128975.P13004151135394055526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A048896 ((n : ℤ) * A000035 n).toNat).toNat

end

end A128975.P13004151135394055526

namespace A128975

/-- `A005836(A048896(n*A000035(n)))` -/
def P13004151135394055526.Spec : Prop :=
  ∀ n, P13004151135394055526.a n = A128975 (n + 1)

end A128975

/-! ## A128975.P5228924698300432644

`A004526(A147610(Δ[A004526(n)²]+2))`
-/

namespace A128975.P5228924698300432644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A147610 (f1 (n + 1) - f1 n + 2).toNat).toNat

end

end A128975.P5228924698300432644

namespace A128975

/-- `A004526(A147610(Δ[A004526(n)²]+2))` -/
def P5228924698300432644.Spec : Prop :=
  ∀ n, P5228924698300432644.a n = A128975 (n + 1)

end A128975

/-! ## A128975.P8362963996013732599

`A004526(Δ[A004526(n)]*A147610(n+2))`
-/

namespace A128975.P8362963996013732599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((f1 (n + 1) - f1 n) * A147610 (n + 2)).toNat

end

end A128975.P8362963996013732599

namespace A128975

/-- `A004526(Δ[A004526(n)]*A147610(n+2))` -/
def P8362963996013732599.Spec : Prop :=
  ∀ n, P8362963996013732599.a n = A128975 (n + 1)

end A128975

/-! ## A128975.P14972755151273636853

`A004526(and(1, n)*A160417(n+1))`
-/

namespace A128975.P14972755151273636853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((Nat.land 1 n : ℤ) * A160417 (n + 1)).toNat

end

end A128975.P14972755151273636853

namespace A128975

/-- `A004526(and(1, n)*A160417(n+1))` -/
def P14972755151273636853.Spec : Prop :=
  ∀ n, P14972755151273636853.a n = A128975 (n + 1)

end A128975

/-! ## A128975.P10685163624583981952

`A004526(and(A280193(n)-1, A160417(n+1)))`
-/

namespace A128975.P10685163624583981952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.land (A280193 n - 1) (A160417 (n + 1))).toNat

end

end A128975.P10685163624583981952

namespace A128975

/-- `A004526(and(A280193(n)-1, A160417(n+1)))` -/
def P10685163624583981952.Spec : Prop :=
  ∀ n, P10685163624583981952.a n = A128975 (n + 1)

end A128975

/-! ## A128975.P9090744633879199869

`A002265(Δ[A151917(A008619(n))])`
-/

namespace A128975.P9090744633879199869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151917 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A128975.P9090744633879199869

namespace A128975

/-- `A002265(Δ[A151917(A008619(n))])` -/
def P9090744633879199869.Spec : Prop :=
  ∀ n, P9090744633879199869.a n = A128975 (n + 1)

end A128975

/-! ## A128975.P2602440064929090127

`A002265(Δ[A183060(A008619(n))])`
-/

namespace A128975.P2602440064929090127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183060 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A128975.P2602440064929090127

namespace A128975

/-- `A002265(Δ[A183060(A008619(n))])` -/
def P2602440064929090127.Spec : Prop :=
  ∀ n, P2602440064929090127.a n = A128975 (n + 1)

end A128975

/-! ## A128975.P11988099188712573069

`A253092(A048883(Δ[A135276(n)]))`
-/

namespace A128975.P11988099188712573069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253092 (A048883 (f1 (n + 1) - f1 n).toNat).toNat

end

end A128975.P11988099188712573069

namespace A128975

/-- `A253092(A048883(Δ[A135276(n)]))` -/
def P11988099188712573069.Spec : Prop :=
  ∀ n, P11988099188712573069.a n = A128975 (n + 1)

end A128975

/-! ## A128975.P43846398295648037

`A004526(A160417(n+1)%A128268(n))`
-/

namespace A128975.P43846398295648037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A160417 (n + 1)) (A128268 n)).toNat

end

end A128975.P43846398295648037

namespace A128975

/-- `A004526(A160417(n+1)%A128268(n))` -/
def P43846398295648037.Spec : Prop :=
  ∀ n, P43846398295648037.a n = A128975 (n + 1)

end A128975

/-!
# A128977: a(0)=a(1)=1; a(n) = lcm(a(n-1) + a(n-2), n).

The programs for A128977, the canonical program `A128977.P17198762731475697816` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128977 has offset 0).

The definition of A128977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(a(n-1)+a(n-2), n)` (program `A128977.P17198762731475697816`, by `A128977.P17198762731475697816.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128977.P17198762731475697816

`lcm(a(n-1)+a(n-2), n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128977

/-- `lcm(a(n-1)+a(n-2), n)` -/
def P17198762731475697816.Spec : Prop :=
  ∀ n, (P17198762731475697816.a n : ℤ) = A128977 n

theorem P17198762731475697816.correct : P17198762731475697816.Spec := by
  intro n
  simp only [A128977]

end A128977

/-! ## A128977.P9472835801110332848

`lcm(a(n-1)-ceil(-a(n-2)), n-2*n)` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A128977.P9472835801110332848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm ((a (n - 1) : ℤ) - (-(a (n - 2) : ℤ))) ((n : ℤ) - (2 * n : ℤ))

end

end A128977.P9472835801110332848

namespace A128977

/-- `lcm(a(n-1)-ceil(-a(n-2)), n-2*n)` -/
def P9472835801110332848.Spec : Prop :=
  ∀ n, (P9472835801110332848.a n : ℤ) = A128977 n

end A128977

/-! ## A128977.P12436132714506836109

`lcm(2-(4/2-a(n-1)-a(n-2)), A028310(n))` with `a(0)=1, a(1)=1`
-/

namespace A128977.P12436132714506836109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway (2 - ((4 : ℚ) / 2 - (a (n - 1) : ℚ) - (a (n - 2) : ℚ)))) (A028310 n)

end

end A128977.P12436132714506836109

namespace A128977

/-- `lcm(2-(4/2-a(n-1)-a(n-2)), A028310(n))` -/
def P12436132714506836109.Spec : Prop :=
  ∀ n, (P12436132714506836109.a n : ℤ) = A128977 n

end A128977

/-!
# A128978: a(1) = 1, a(2) = 1 and a(n) = number of terms among (a(1),a(2),...a(n-1)) which divide (a(n-1)+a(n-2)).

The programs for A128978, there is no canonical definition to state claims against.
-/

/-! ## A128978.P9485579264357304861

`A033999(A000031(n))+A003417(n)`
-/

namespace A128978.P9485579264357304861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000031 n).toNat + A003417 n

end

end A128978.P9485579264357304861

/-! ## A128978.P7970068835118591548

`A141310(A072222(n)%A128598(n))`
-/

namespace A128978.P7970068835118591548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (Int.tmod (A072222 n) (A128598 n)).toNat

end

end A128978.P7970068835118591548

/-! ## A128978.P227467926226188426

`A003417(n)%A151800(A049933(n+1))+1`
-/

namespace A128978.P227467926226188426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003417 n) (A151800 (A049933 (n + 1)).toNat) + 1

end

end A128978.P227467926226188426

/-!
# A128979: Least exponent k such that p_n*(2^k) - 1 is prime.

The programs for A128979, there is no canonical definition to state claims against.
-/

/-! ## A128979.P5067016911302391611

`A040081(2*p?[xor(1, n)+1])+1`
-/

namespace A128979.P5067016911302391611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A128979.P5067016911302391611

/-! ## A128979.P10939715911718933043

`A050412(p?[a(n-1)+2]-1)` with `a(0)=2, a(1)=1`
-/

namespace A128979.P10939715911718933043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A128979.P10939715911718933043

/-! ## A128979.P1157014857356630892

`A050412(record[A037225(n)])`
-/

namespace A128979.P1157014857356630892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A128979.P1157014857356630892

/-! ## A128979.P9250911584898263952

`A050412(A006093(n+1))`
-/

namespace A128979.P9250911584898263952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A006093 (n + 1)).toNat

end

end A128979.P9250911584898263952

/-! ## A128979.P2769202524181630604

`A050412(A039915(n+1))`
-/

namespace A128979.P2769202524181630604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A039915 (n + 1)).toNat

end

end A128979.P2769202524181630604

/-! ## A128979.P6158218611283833103

`A050412(A156037(n+1))`
-/

namespace A128979.P6158218611283833103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A156037 (n + 1)).toNat

end

end A128979.P6158218611283833103

/-! ## A128979.P14002234462045558980

`A108129(A130291(n+1))`
-/

namespace A128979.P14002234462045558980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108129 (A130291 (n + 1)).toNat

end

end A128979.P14002234462045558980

/-! ## A128979.P15893732384580984071

`A050412(A068499(n+2))`
-/

namespace A128979.P15893732384580984071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A068499 (n + 2)).toNat

end

end A128979.P15893732384580984071

/-! ## A128979.P18277006706045733513

`A050412(eq[1, A013632(n)])`
-/

namespace A128979.P18277006706045733513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128979.P18277006706045733513

/-! ## A128979.P3335028852297716140

`A050412(Δ[A007504(n)]-1)`
-/

namespace A128979.P3335028852297716140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (f1 (n + 1) - f1 n - 1).toNat

end

end A128979.P3335028852297716140

/-! ## A128979.P4652922535825589752

`A050412(record[A000010(n+1)])`
-/

namespace A128979.P4652922535825589752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A128979.P4652922535825589752

/-! ## A128979.P6287987458206880292

`A050412(A000040(n+1)-1)`
-/

namespace A128979.P6287987458206880292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A000040 (n + 1) - 1).toNat

end

end A128979.P6287987458206880292

/-! ## A128979.P17025825358130538138

`A050412(A216886(n+1)-1)`
-/

namespace A128979.P17025825358130538138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A216886 (n + 1) - 1).toNat

end

end A128979.P17025825358130538138

/-! ## A128979.P7839126596185736442

`A050412(A008578(n+2)-1)`
-/

namespace A128979.P7839126596185736442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A008578 (n + 2) - 1).toNat

end

end A128979.P7839126596185736442

/-! ## A128979.P2351696001076161780

`A050412(A182986(n+2)-1)`
-/

namespace A128979.P2351696001076161780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A182986 (n + 2) - 1).toNat

end

end A128979.P2351696001076161780

/-! ## A128979.P11322744149963957418

`A050412(xor(1, A000040(n+1)))`
-/

namespace A128979.P11322744149963957418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (Int.xor 1 (A000040 (n + 1))).toNat

end

end A128979.P11322744149963957418

/-! ## A128979.P10758210069723853904

`A050412(eq[1, A001222(n+1)])`
-/

namespace A128979.P10758210069723853904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128979.P10758210069723853904

/-! ## A128979.P4664196291478627925

`A050412(eq[1, A010051(n+1)])`
-/

namespace A128979.P4664196291478627925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128979.P4664196291478627925

/-! ## A128979.P292460628962543864

`A050412(eq[2, A000005(n+1)])`
-/

namespace A128979.P292460628962543864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128979.P292460628962543864

/-! ## A128979.P11744223474463151460

`A050412(eq[n, A000010(n+1)])`
-/

namespace A128979.P11744223474463151460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128979.P11744223474463151460

/-!
# A128980: A054525 * A129691(unsigned).

The programs for A128980, the canonical program `A128980.P8498659622662109189` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128980 has offset 1).

The definition of A128980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128980.P8498659622662109189

`A007431(abs(A127139(n+1)))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A128980

/-- `A007431(abs(A127139(n+1)))` -/
def P8498659622662109189.Spec : Prop :=
  ∀ n, P8498659622662109189.a n = A128980 (n + 1)

theorem P8498659622662109189.correct : P8498659622662109189.Spec := by
  intro n
  simp only [A128980, Nat.add_sub_cancel]

end A128980

/-! ## A128980.P17011929510783298466

`A007431(lcm(3, A127139(n+1)))`
-/

namespace A128980.P17011929510783298466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (Int.lcm 3 (A127139 (n + 1)))

end

end A128980.P17011929510783298466

namespace A128980

/-- `A007431(lcm(3, A127139(n+1)))` -/
def P17011929510783298466.Spec : Prop :=
  ∀ n, P17011929510783298466.a n = A128980 (n + 1)

end A128980

/-! ## A128980.P6448272582917135178

`abs(∑{d}[A127139(n+1), A023900(#)])`
-/

namespace A128980.P6448272582917135178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n).natAbs, A023900 d|

end

end A128980.P6448272582917135178

namespace A128980

/-- `abs(∑{d}[A127139(n+1), A023900(#)])` -/
def P6448272582917135178.Spec : Prop :=
  ∀ n, P6448272582917135178.a n = A128980 (n + 1)

end A128980

/-! ## A128980.P1780244089983417753

`lcm(A054525(n+1), A143276(n+1))`
-/

namespace A128980.P1780244089983417753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054525 (n + 1)) (A143276 (n + 1))

end

end A128980.P1780244089983417753

namespace A128980

/-- `lcm(A054525(n+1), A143276(n+1))` -/
def P1780244089983417753.Spec : Prop :=
  ∀ n, (P1780244089983417753.a n : ℤ) = A128980 (n + 1)

end A128980

/-! ## A128980.P10525719694596911107

`lcm(A129360(n+1), A129558(n+1))`
-/

namespace A128980.P10525719694596911107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129360 (n + 1)) (A129558 (n + 1))

end

end A128980.P10525719694596911107

namespace A128980

/-- `lcm(A129360(n+1), A129558(n+1))` -/
def P10525719694596911107.Spec : Prop :=
  ∀ n, (P10525719694596911107.a n : ℤ) = A128980 (n + 1)

end A128980

/-! ## A128980.P8186321515732676252

`A129360(n+1)²*A143276(n+1)`
-/

namespace A128980.P8186321515732676252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129360 (n + 1) ^ 2 * A143276 (n + 1)

end

end A128980.P8186321515732676252

namespace A128980

/-- `A129360(n+1)²*A143276(n+1)` -/
def P8186321515732676252.Spec : Prop :=
  ∀ n, P8186321515732676252.a n = A128980 (n + 1)

end A128980

/-! ## A128980.P17727602445974316262

`A054525(n+1)*A129360(n+1)*A129558(n+1)`
-/

namespace A128980.P17727602445974316262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A129360 (n + 1) * A129558 (n + 1)

end

end A128980.P17727602445974316262

namespace A128980

/-- `A054525(n+1)*A129360(n+1)*A129558(n+1)` -/
def P17727602445974316262.Spec : Prop :=
  ∀ n, P17727602445974316262.a n = A128980 (n + 1)

end A128980

/-! ## A128980.P9372535239722296614

`A103994(n+1)*A129360(n+1)*A129558(n+1)`
-/

namespace A128980.P9372535239722296614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103994 (n + 1) * A129360 (n + 1) * A129558 (n + 1)

end

end A128980.P9372535239722296614

namespace A128980

/-- `A103994(n+1)*A129360(n+1)*A129558(n+1)` -/
def P9372535239722296614.Spec : Prop :=
  ∀ n, P9372535239722296614.a n = A128980 (n + 1)

end A128980

/-!
# A128981: Numbers k such that k divides Sum_{j=1..k} j^j = A001923(k).

The programs for A128981, there is no canonical definition to state claims against.
-/

/-! ## A128981.P3923576204576936674

`eq[0, A343932(n+1)]+1`
-/

namespace A128981.P3923576204576936674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A128981.P3923576204576936674

/-! ## A128981.P4969089327977794748

`eq[A000007(n), A343932(A028310(n))]`
-/

namespace A128981.P4969089327977794748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343932 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128981.P4969089327977794748

/-! ## A128981.P12601992503350408190

`eq[A000038(n), A343932(A028310(n))]`
-/

namespace A128981.P12601992503350408190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343932 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128981.P12601992503350408190

/-! ## A128981.P15768258099221859390

`lt[A343932(A028310(n)), A057427(n)]`
-/

namespace A128981.P15768258099221859390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343932 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128981.P15768258099221859390

/-!
# A128982: If in a line of n persons every n-th person is eliminated until only one person is left, which position P should one assume in the original lineup to avoid being eliminated?

The programs for A128982, there is no canonical definition to state claims against.
-/

/-! ## A128982.P18415298777925389988

`gcd(∑[2*n], A070320(A187829(n+1)))`
-/

namespace A128982.P18415298777925389988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A070320 (A187829 (n + 1)).toNat)

end

end A128982.P18415298777925389988

/-! ## A128982.P10803571689932184350

`A327979(A187829(n+1)+A132411(n))`
-/

namespace A128982.P10803571689932184350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327979 (A187829 (n + 1) + A132411 n).toNat

end

end A128982.P10803571689932184350

/-! ## A128982.P15007148654235039504

`A327979(A028310(n)*A187829(n+1))`
-/

namespace A128982.P15007148654235039504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327979 (A028310 n * A187829 (n + 1)).toNat

end

end A128982.P15007148654235039504

/-! ## A128982.P12242302919976094804

`A327979(lcm(A028310(n), A187829(n+1)))`
-/

namespace A128982.P12242302919976094804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327979 (Int.lcm (A028310 n) (A187829 (n + 1)))

end

end A128982.P12242302919976094804

/-! ## A128982.P18066207330024176863

`A327979(A101279(2*n+1)*A187829(n+1))`
-/

namespace A128982.P18066207330024176863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327979 (A101279 (2 * n + 1) * A187829 (n + 1)).toNat

end

end A128982.P18066207330024176863

/-!
# A128984: Degree of the special subgraph of Cayley graph constructed using the special (123)-avoiding and (132)-avoiding permutation patterns as generators.

The programs for A128984, there is no canonical definition to state claims against.
-/

/-! ## A128984.P14415560794087832240

`lt[A110756(A102048(n+1)), A001055(3*n+2)]`
-/

namespace A128984.P14415560794087832240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110756 (A102048 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128984.P14415560794087832240

/-! ## A128984.P7877135894810048836

`lt[A001222(A355505(n+2)), A355531(n+1)]`
-/

namespace A128984.P7877135894810048836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A355505 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128984.P7877135894810048836

/-! ## A128984.P11467302103930170436

`eq[A000065(A301598(n+1)), A318808(n+1)]`
-/

namespace A128984.P11467302103930170436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A301598 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128984.P11467302103930170436

/-! ## A128984.P15591128201022448593

`lt[A001358(A212624(n+1)), A266724(3*n+2)]`
-/

namespace A128984.P15591128201022448593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A212624 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128984.P15591128201022448593

/-! ## A128984.P9133154415824981875

`lt[A328859(A000005(n+1)), A326662(n+1)]`
-/

namespace A128984.P9133154415824981875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328859 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326662 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128984.P9133154415824981875

/-!
# A128985: a(n) = (n^3 - n^2)*2^n.

The programs for A128985, the canonical program `A128985.P12184313217683518671` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128985 has offset 1).

The definition of A128985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1)²)*2^(n+1)` (program `A128985.P12184313217683518671`, by `A128985.P12184313217683518671.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128985.P12184313217683518671

`((n+1)^3-(n+1)²)*2^(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128985

/-- `((n+1)^3-(n+1)²)*2^(n+1)` -/
def P12184313217683518671.Spec : Prop :=
  ∀ n, P12184313217683518671.a n = A128985 (n + 1)

theorem P12184313217683518671.correct : P12184313217683518671.Spec := by
  intro n
  simp only [A128985, Nat.add_sub_cancel]

end A128985

/-! ## A128985.P16909825321132543059

`ogf((16x+16x^2)/(1-8x+24x^2-32x^3+16x^4))`
-/

namespace A128985.P16909825321132543059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 16, 16] [1, -8, 24, -32, 16] n

end

end A128985.P16909825321132543059

namespace A128985

/-- `ogf((16x+16x^2)/(1-8x+24x^2-32x^3+16x^4))` -/
def P16909825321132543059.Spec : Prop :=
  ∀ n, P16909825321132543059.a n = A128985 (n + 1)

end A128985

/-! ## A128985.P87434787901067663

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=16, a(2)=144, a(3)=768`
-/

namespace A128985.P87434787901067663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 16, 144, 768] fun n a =>
  8 * a (n - 1) - 24 * a (n - 2) + 32 * a (n - 3) - 16 * a (n - 4)

end

end A128985.P87434787901067663

namespace A128985

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P87434787901067663.Spec : Prop :=
  ∀ n, P87434787901067663.a n = A128985 (n + 1)

theorem P87434787901067663.correct : P87434787901067663.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A128985, Nat.add_sub_cancel, A128985.P87434787901067663.a, A128985.P12184313217683518671.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A128985, Nat.add_sub_cancel, A128985.P87434787901067663.a, A128985.P12184313217683518671.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A128985

/-! ## A128985.P14976887447789041519

`∑[n*A076616(n+3)]`
-/

namespace A128985.P14976887447789041519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A076616 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128985.P14976887447789041519

namespace A128985

/-- `∑[n*A076616(n+3)]` -/
def P14976887447789041519.Spec : Prop :=
  ∀ n, P14976887447789041519.a n = A128985 (n + 1)

end A128985

/-! ## A128985.P9385488824605714697

`∑[2*n*A100312(n)]`
-/

namespace A128985.P9385488824605714697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A100312 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128985.P9385488824605714697

namespace A128985

/-- `∑[2*n*A100312(n)]` -/
def P9385488824605714697.Spec : Prop :=
  ∀ n, P9385488824605714697.a n = A128985 (n + 1)

end A128985

/-! ## A128985.P153084941104012999

`A128789(n+1)-A007758(n+1)`
-/

namespace A128985.P153084941104012999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128789 (n + 1) - A007758 (n + 1)

end

end A128985.P153084941104012999

namespace A128985

/-- `A128789(n+1)-A007758(n+1)` -/
def P153084941104012999.Spec : Prop :=
  ∀ n, P153084941104012999.a n = A128985 (n + 1)

theorem P153084941104012999.correct : P153084941104012999.Spec := by
  intro n
  simp only [A128985, Nat.add_sub_cancel, A128985.P153084941104012999.a, A128985.P12184313217683518671.a, A007758, A007758.P17176775618145894956.a, A128789, A128789.P13129381073551512114.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128985

/-! ## A128985.P16350159465729634760

`A128960(n+1)-A128796(n+1)`
-/

namespace A128985.P16350159465729634760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128960 (n + 1) - A128796 (n + 1)

end

end A128985.P16350159465729634760

namespace A128985

/-- `A128960(n+1)-A128796(n+1)` -/
def P16350159465729634760.Spec : Prop :=
  ∀ n, P16350159465729634760.a n = A128985 (n + 1)

theorem P16350159465729634760.correct : P16350159465729634760.Spec := by
  intro n
  simp only [A128985, Nat.add_sub_cancel, A128985.P16350159465729634760.a, A128985.P12184313217683518671.a, A128796, A128796.P2345555735138113176.a, A128960, A128960.P17672098471833153486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128985

/-! ## A128985.P10367571260423098757

`A290031(n+1)+A290031(n+2)`
-/

namespace A128985.P10367571260423098757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290031 (n + 1) + A290031 (n + 2)

end

end A128985.P10367571260423098757

namespace A128985

/-- `A290031(n+1)+A290031(n+2)` -/
def P10367571260423098757.Spec : Prop :=
  ∀ n, P10367571260423098757.a n = A128985 (n + 1)

theorem P10367571260423098757.correct : P10367571260423098757.Spec := by
  intro n
  simp only [A128985, Nat.add_sub_cancel, A128985.P10367571260423098757.a, A128985.P12184313217683518671.a, A290031, A290031.P11188334914464403451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128985

/-! ## A128985.P5214029513071981303

`lcm(A007758(n+1), A058922(n+1))`
-/

namespace A128985.P5214029513071981303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007758 (n + 1)) (A058922 (n + 1))

end

end A128985.P5214029513071981303

namespace A128985

/-- `lcm(A007758(n+1), A058922(n+1))` -/
def P5214029513071981303.Spec : Prop :=
  ∀ n, (P5214029513071981303.a n : ℤ) = A128985 (n + 1)

end A128985

/-! ## A128985.P8578346364999937616

`lcm(A132344(n+1)², A132344(2*n))`
-/

namespace A128985.P8578346364999937616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132344 (n + 1) ^ 2) (A132344 (2 * n))

end

end A128985.P8578346364999937616

namespace A128985

/-- `lcm(A132344(n+1)², A132344(2*n))` -/
def P8578346364999937616.Spec : Prop :=
  ∀ n, (P8578346364999937616.a n : ℤ) = A128985 (n + 1)

end A128985

/-! ## A128985.P16026841722112528289

`A036289(n)+A036289(n)*A056220(n+1)`
-/

namespace A128985.P16026841722112528289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + A036289 n * A056220 (n + 1)

end

end A128985.P16026841722112528289

namespace A128985

/-- `A036289(n)+A036289(n)*A056220(n+1)` -/
def P16026841722112528289.Spec : Prop :=
  ∀ n, P16026841722112528289.a n = A128985 (n + 1)

theorem P16026841722112528289.correct : P16026841722112528289.Spec := by
  intro n
  simp only [A128985, Nat.add_sub_cancel, A128985.P16026841722112528289.a, A128985.P12184313217683518671.a, A036289, A036289.P13525419631139213940.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128985

/-! ## A128985.P2309078471776430059

`A001787(n+1)*A001844(n)-A001787(n+1)`
-/

namespace A128985.P2309078471776430059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) * A001844 n - A001787 (n + 1)

end

end A128985.P2309078471776430059

namespace A128985

/-- `A001787(n+1)*A001844(n)-A001787(n+1)` -/
def P2309078471776430059.Spec : Prop :=
  ∀ n, P2309078471776430059.a n = A128985 (n + 1)

end A128985

/-! ## A128985.P7879917684988371096

`A000051(n)*A035006(n+1)-A035006(n+1)`
-/

namespace A128985.P7879917684988371096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A035006 (n + 1) - A035006 (n + 1)

end

end A128985.P7879917684988371096

namespace A128985

/-- `A000051(n)*A035006(n+1)-A035006(n+1)` -/
def P7879917684988371096.Spec : Prop :=
  ∀ n, P7879917684988371096.a n = A128985 (n + 1)

theorem P7879917684988371096.correct : P7879917684988371096.Spec := by
  intro n
  simp only [A128985, Nat.add_sub_cancel, A128985.P7879917684988371096.a, A128985.P12184313217683518671.a, A000051, A000051.P14067217022188782580.a, A035006, A035006.P8233523708171598530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128985

/-! ## A128985.P16459515668850957412

`A119635(n+1)+A128960(n+1)-A129002(n+1)`
-/

namespace A128985.P16459515668850957412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119635 (n + 1) + (A128960 (n + 1) - A129002 (n + 1))

end

end A128985.P16459515668850957412

namespace A128985

/-- `A119635(n+1)+A128960(n+1)-A129002(n+1)` -/
def P16459515668850957412.Spec : Prop :=
  ∀ n, P16459515668850957412.a n = A128985 (n + 1)

theorem P16459515668850957412.correct : P16459515668850957412.Spec := by
  intro n
  simp only [A128985, Nat.add_sub_cancel, A128985.P16459515668850957412.a, A128985.P12184313217683518671.a, A119635, A119635.P9144609565879921146.a, A128960, A128960.P17672098471833153486.a, A129002, A129002.P2751204566084846886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128985

/-! ## A128985.P2686647724546424925

`A129002(n+1)-A007758(n+1)-A007758(n+1)`
-/

namespace A128985.P2686647724546424925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129002 (n + 1) - A007758 (n + 1) - A007758 (n + 1)

end

end A128985.P2686647724546424925

namespace A128985

/-- `A129002(n+1)-A007758(n+1)-A007758(n+1)` -/
def P2686647724546424925.Spec : Prop :=
  ∀ n, P2686647724546424925.a n = A128985 (n + 1)

theorem P2686647724546424925.correct : P2686647724546424925.Spec := by
  intro n
  simp only [A128985, Nat.add_sub_cancel, A128985.P2686647724546424925.a, A128985.P12184313217683518671.a, A007758, A007758.P17176775618145894956.a, A129002, A129002.P2751204566084846886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128985

/-! ## A128985.P15407586019268873254

`Δ[A036827(n)-A036800(n)]`
-/

namespace A128985.P15407586019268873254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036827 n - A036800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128985.P15407586019268873254

namespace A128985

/-- `Δ[A036827(n)-A036800(n)]` -/
def P15407586019268873254.Spec : Prop :=
  ∀ n, P15407586019268873254.a n = A128985 (n + 1)

theorem P15407586019268873254.correct : P15407586019268873254.Spec := by
  intro n
  simp only [A128985, Nat.add_sub_cancel, A128985.P15407586019268873254.f1, A128985.P15407586019268873254.a, A128985.P12184313217683518671.a, A036800, A036800.P2795999232829827059.a, A036827, A036827.P11394607514665482824.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128985

/-! ## A128985.P5497582812915717774

`A352847(n+2)/(n+2)`
-/

namespace A128985.P5497582812915717774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352847 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A128985.P5497582812915717774

namespace A128985

/-- `A352847(n+2)/(n+2)` -/
def P5497582812915717774.Spec : Prop :=
  ∀ n, P5497582812915717774.a n = (A128985 (n + 1) : ℚ)

theorem P5497582812915717774.correct : P5497582812915717774.Spec := by
  intro n
  simp only [A128985, Nat.add_sub_cancel, A128985.P5497582812915717774.a, A128985.P12184313217683518671.a, A352847, A352847.P13827146680008513960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128985

/-! ## A128985.P17884926823410028804

`n*A128789(n+1)/(n+1)`
-/

namespace A128985.P17884926823410028804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A128789 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A128985.P17884926823410028804

namespace A128985

/-- `n*A128789(n+1)/(n+1)` -/
def P17884926823410028804.Spec : Prop :=
  ∀ n, P17884926823410028804.a n = (A128985 (n + 1) : ℚ)

theorem P17884926823410028804.correct : P17884926823410028804.Spec := by
  intro n
  simp only [A128985, Nat.add_sub_cancel, A128985.P17884926823410028804.a, A128985.P12184313217683518671.a, A128789, A128789.P13129381073551512114.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128985

/-! ## A128985.P13913245616037906195

`n*A129002(n+1)/(n+2)`
-/

namespace A128985.P13913245616037906195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A129002 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A128985.P13913245616037906195

namespace A128985

/-- `n*A129002(n+1)/(n+2)` -/
def P13913245616037906195.Spec : Prop :=
  ∀ n, P13913245616037906195.a n = (A128985 (n + 1) : ℚ)

theorem P13913245616037906195.correct : P13913245616037906195.Spec := by
  intro n
  simp only [A128985, Nat.add_sub_cancel, A128985.P13913245616037906195.a, A128985.P12184313217683518671.a, A129002, A129002.P2751204566084846886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128985

/-! ## A128985.P6189312789048905744

`A036289(n)*A141046(n+1)/A001105(n+1)`
-/

namespace A128985.P6189312789048905744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036289 n * A141046 (n + 1) : ℚ) / (A001105 (n + 1) : ℚ)

end

end A128985.P6189312789048905744

namespace A128985

/-- `A036289(n)*A141046(n+1)/A001105(n+1)` -/
def P6189312789048905744.Spec : Prop :=
  ∀ n, P6189312789048905744.a n = (A128985 (n + 1) : ℚ)

theorem P6189312789048905744.correct : P6189312789048905744.Spec := by
  intro n
  simp only [A128985, Nat.add_sub_cancel, A128985.P6189312789048905744.a, A128985.P12184313217683518671.a, A001105, A001105.P6098599260439307493.a, A036289, A036289.P13525419631139213940.a, A141046, A141046.P17031355750207900223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128985

/-!
# A128986: a(n) = (n^3 - n^2)*3^n.

The programs for A128986, the canonical program `A128986.P16423680130297360657` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128986 has offset 1).

The definition of A128986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1)²)*3^(n+1)` (program `A128986.P16423680130297360657`, by `A128986.P16423680130297360657.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128986.P16423680130297360657

`((n+1)^3-(n+1)²)*3^(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128986

/-- `((n+1)^3-(n+1)²)*3^(n+1)` -/
def P16423680130297360657.Spec : Prop :=
  ∀ n, P16423680130297360657.a n = A128986 (n + 1)

theorem P16423680130297360657.correct : P16423680130297360657.Spec := by
  intro n
  simp only [A128986, Nat.add_sub_cancel]

end A128986

/-! ## A128986.P16539432413478476613

`lcm(2, (n+1)*A128797(n+1))`
-/

namespace A128986.P16539432413478476613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n + 1 : ℤ) * A128797 (n + 1))

end

end A128986.P16539432413478476613

namespace A128986

/-- `lcm(2, (n+1)*A128797(n+1))` -/
def P16539432413478476613.Spec : Prop :=
  ∀ n, (P16539432413478476613.a n : ℤ) = A128986 (n + 1)

end A128986

/-! ## A128986.P7711255539353160594

`A121607(n+1)-A116138(n+1)`
-/

namespace A128986.P7711255539353160594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121607 (n + 1) - A116138 (n + 1)

end

end A128986.P7711255539353160594

namespace A128986

/-- `A121607(n+1)-A116138(n+1)` -/
def P7711255539353160594.Spec : Prop :=
  ∀ n, P7711255539353160594.a n = A128986 (n + 1)

theorem P7711255539353160594.correct : P7711255539353160594.Spec := by
  intro n
  simp only [A128986, Nat.add_sub_cancel, A128986.P7711255539353160594.a, A128986.P16423680130297360657.a, A116138, A116138.P12016771194482355886.a, A121607, A121607.P12777103385746461110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128986

/-! ## A128986.P16845100704813514999

`A128961(n+1)-A128961(n+1)/(n+2)`
-/

namespace A128986.P16845100704813514999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128961 (n + 1) : ℚ) - (A128961 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A128986.P16845100704813514999

namespace A128986

/-- `A128961(n+1)-A128961(n+1)/(n+2)` -/
def P16845100704813514999.Spec : Prop :=
  ∀ n, P16845100704813514999.a n = (A128986 (n + 1) : ℚ)

theorem P16845100704813514999.correct : P16845100704813514999.Spec := by
  intro n
  simp only [A128986, Nat.add_sub_cancel, A128986.P16845100704813514999.a, A128986.P16423680130297360657.a, A128961, A128961.P10564603461446401338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128986

/-! ## A128986.P8674609447893569064

`∑[(2*n+1)*A000096(n)*A025192(n+1)]`
-/

namespace A128986.P8674609447893569064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (A000096 n * A025192 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128986.P8674609447893569064

namespace A128986

/-- `∑[(2*n+1)*A000096(n)*A025192(n+1)]` -/
def P8674609447893569064.Spec : Prop :=
  ∀ n, P8674609447893569064.a n = A128986 (n + 1)

end A128986

/-! ## A128986.P5800339978148038967

`record[A028242(n)*A128797(A028242(n))]`
-/

namespace A128986.P5800339978148038967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n * A128797 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128986.P5800339978148038967

namespace A128986

/-- `record[A028242(n)*A128797(A028242(n))]` -/
def P5800339978148038967.Spec : Prop :=
  ∀ n, P5800339978148038967.a n = A128986 (n + 1)

end A128986

/-! ## A128986.P5016287510738588270

`A002378(n)+A002378(n)*A060352(n+1)`
-/

namespace A128986.P5016287510738588270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + A002378 n * A060352 (n + 1)

end

end A128986.P5016287510738588270

namespace A128986

/-- `A002378(n)+A002378(n)*A060352(n+1)` -/
def P5016287510738588270.Spec : Prop :=
  ∀ n, P5016287510738588270.a n = A128986 (n + 1)

theorem P5016287510738588270.correct : P5016287510738588270.Spec := by
  intro n
  simp only [A128986, Nat.add_sub_cancel, A128986.P5016287510738588270.a, A128986.P16423680130297360657.a, A002378, A002378.P6342434596694243671.a, A060352, A060352.P6117980345836579755.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128986

/-! ## A128986.P1110801413503652533

`∑[A000096(n)*A025192(n+1)*A005408(n)]`
-/

namespace A128986.P1110801413503652533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n * A025192 (n + 1) * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128986.P1110801413503652533

namespace A128986

/-- `∑[A000096(n)*A025192(n+1)*A005408(n)]` -/
def P1110801413503652533.Spec : Prop :=
  ∀ n, P1110801413503652533.a n = A128986 (n + 1)

end A128986

/-! ## A128986.P3164237207815503248

`n*A062074(n+1)/(n+1)`
-/

namespace A128986.P3164237207815503248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A062074 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A128986.P3164237207815503248

namespace A128986

/-- `n*A062074(n+1)/(n+1)` -/
def P3164237207815503248.Spec : Prop :=
  ∀ n, P3164237207815503248.a n = (A128986 (n + 1) : ℚ)

theorem P3164237207815503248.correct : P3164237207815503248.Spec := by
  intro n
  simp only [A128986, Nat.add_sub_cancel, A128986.P3164237207815503248.a, A128986.P16423680130297360657.a, A062074, A062074.P4538995313456586985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128986

/-! ## A128986.P7111227547454452692

`A128989(n+1)/A000079(n+1)`
-/

namespace A128986.P7111227547454452692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128989 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A128986.P7111227547454452692

namespace A128986

/-- `A128989(n+1)/A000079(n+1)` -/
def P7111227547454452692.Spec : Prop :=
  ∀ n, P7111227547454452692.a n = (A128986 (n + 1) : ℚ)

end A128986

/-! ## A128986.P14351432797472543210

`A128989(n+1)/A011782(n+2)`
-/

namespace A128986.P14351432797472543210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128989 (n + 1) : ℚ) / (A011782 (n + 2) : ℚ)

end

end A128986.P14351432797472543210

namespace A128986

/-- `A128989(n+1)/A011782(n+2)` -/
def P14351432797472543210.Spec : Prop :=
  ∀ n, P14351432797472543210.a n = (A128986 (n + 1) : ℚ)

end A128986

/-! ## A128986.P16791538181038486168

`A128989(n+1)/A131577(n+2)`
-/

namespace A128986.P16791538181038486168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128989 (n + 1) : ℚ) / (A131577 (n + 2) : ℚ)

end

end A128986.P16791538181038486168

namespace A128986

/-- `A128989(n+1)/A131577(n+2)` -/
def P16791538181038486168.Spec : Prop :=
  ∀ n, P16791538181038486168.a n = (A128986 (n + 1) : ℚ)

end A128986

/-! ## A128986.P12447399194386237584

`A007758(n+1)*A128797(n+1)/A036289(n+1)`
-/

namespace A128986.P12447399194386237584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007758 (n + 1) * A128797 (n + 1) : ℚ) / (A036289 (n + 1) : ℚ)

end

end A128986.P12447399194386237584

namespace A128986

/-- `A007758(n+1)*A128797(n+1)/A036289(n+1)` -/
def P12447399194386237584.Spec : Prop :=
  ∀ n, P12447399194386237584.a n = (A128986 (n + 1) : ℚ)

end A128986

/-! ## A128986.P9104981129533182354

`A128789(n+1)*A128797(n+1)/A007758(n+1)`
-/

namespace A128986.P9104981129533182354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128789 (n + 1) * A128797 (n + 1) : ℚ) / (A007758 (n + 1) : ℚ)

end

end A128986.P9104981129533182354

namespace A128986

/-- `A128789(n+1)*A128797(n+1)/A007758(n+1)` -/
def P9104981129533182354.Spec : Prop :=
  ∀ n, P9104981129533182354.a n = (A128986 (n + 1) : ℚ)

end A128986

/-! ## A128986.P5680496262034230764

`A121607(n+1)*A128985(n+1)/A119635(n+1)`
-/

namespace A128986.P5680496262034230764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121607 (n + 1) * A128985 (n + 1) : ℚ) / (A119635 (n + 1) : ℚ)

end

end A128986.P5680496262034230764

namespace A128986

/-- `A121607(n+1)*A128985(n+1)/A119635(n+1)` -/
def P5680496262034230764.Spec : Prop :=
  ∀ n, P5680496262034230764.a n = (A128986 (n + 1) : ℚ)

theorem P5680496262034230764.correct : P5680496262034230764.Spec := by
  intro n
  simp only [A128986, Nat.add_sub_cancel, A128986.P5680496262034230764.a, A128986.P16423680130297360657.a, A119635, A119635.P9144609565879921146.a, A121607, A121607.P12777103385746461110.a, A128985, A128985.P12184313217683518671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128986

/-!
# A128987: a(n) = (n^3 - n^2)*4^n.

The programs for A128987, the canonical program `A128987.P6165647653934997466` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128987 has offset 1).

The definition of A128987 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1)²)*4^(n+1)` (program `A128987.P6165647653934997466`, by `A128987.P6165647653934997466.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128987.P6165647653934997466

`((n+1)^3-(n+1)²)*4^(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128987

/-- `((n+1)^3-(n+1)²)*4^(n+1)` -/
def P6165647653934997466.Spec : Prop :=
  ∀ n, P6165647653934997466.a n = A128987 (n + 1)

theorem P6165647653934997466.correct : P6165647653934997466.Spec := by
  intro n
  simp only [A128987, Nat.add_sub_cancel]

end A128987

/-! ## A128987.P8200409703943711634

`record[(n+2)²*A085750(n+1)]`
-/

namespace A128987.P8200409703943711634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A085750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128987.P8200409703943711634

namespace A128987

/-- `record[(n+2)²*A085750(n+1)]` -/
def P8200409703943711634.Spec : Prop :=
  ∀ n, P8200409703943711634.a n = A128987 (n + 1)

end A128987

/-! ## A128987.P8016861068612003802

`record[(A004526(n)-1)*A168251(n)]`
-/

namespace A128987.P8016861068612003802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n - 1) * A168251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128987.P8016861068612003802

namespace A128987

/-- `record[(A004526(n)-1)*A168251(n)]` -/
def P8016861068612003802.Spec : Prop :=
  ∀ n, P8016861068612003802.a n = A128987 (n + 1)

end A128987

/-! ## A128987.P6714111005363927787

`record[A004526(n)*A168251(n+2)]`
-/

namespace A128987.P6714111005363927787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A168251 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128987.P6714111005363927787

namespace A128987

/-- `record[A004526(n)*A168251(n+2)]` -/
def P6714111005363927787.Spec : Prop :=
  ∀ n, P6714111005363927787.a n = A128987 (n + 1)

end A128987

/-! ## A128987.P671489155548035975

`A128790(n+1)-A128782(n+1)`
-/

namespace A128987.P671489155548035975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128790 (n + 1) - A128782 (n + 1)

end

end A128987.P671489155548035975

namespace A128987

/-- `A128790(n+1)-A128782(n+1)` -/
def P671489155548035975.Spec : Prop :=
  ∀ n, P671489155548035975.a n = A128987 (n + 1)

theorem P671489155548035975.correct : P671489155548035975.Spec := by
  intro n
  simp only [A128987, Nat.add_sub_cancel, A128987.P671489155548035975.a, A128987.P6165647653934997466.a, A128782, A128782.P8267303298175215525.a, A128790, A128790.P18260975557873993254.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128987

/-! ## A128987.P4504324752000182220

`lcm(A128782(n+1), A128798(n+1))`
-/

namespace A128987.P4504324752000182220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128782 (n + 1)) (A128798 (n + 1))

end

end A128987.P4504324752000182220

namespace A128987

/-- `lcm(A128782(n+1), A128798(n+1))` -/
def P4504324752000182220.Spec : Prop :=
  ∀ n, (P4504324752000182220.a n : ℤ) = A128987 (n + 1)

end A128987

/-! ## A128987.P12543421457655394118

`A128790(n+1)-A036289(n+1)²`
-/

namespace A128987.P12543421457655394118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128790 (n + 1) - A036289 (n + 1) ^ 2

end

end A128987.P12543421457655394118

namespace A128987

/-- `A128790(n+1)-A036289(n+1)²` -/
def P12543421457655394118.Spec : Prop :=
  ∀ n, P12543421457655394118.a n = A128987 (n + 1)

end A128987

/-! ## A128987.P9687370442518020388

`abs(2*n*Δ[A000225(n)]*(n+1)²*A131577(n+2))`
-/

namespace A128987.P9687370442518020388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) * (f1 (n + 1) - f1 n) * ((n + 1) ^ 2 : ℤ) * A131577 (n + 2)|

end

end A128987.P9687370442518020388

namespace A128987

/-- `abs(2*n*Δ[A000225(n)]*(n+1)²*A131577(n+2))` -/
def P9687370442518020388.Spec : Prop :=
  ∀ n, P9687370442518020388.a n = A128987 (n + 1)

end A128987

/-! ## A128987.P10627076239844623943

`A128790(n+1)+A128790(n+1)-A129004(n+1)`
-/

namespace A128987.P10627076239844623943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128790 (n + 1) + (A128790 (n + 1) - A129004 (n + 1))

end

end A128987.P10627076239844623943

namespace A128987

/-- `A128790(n+1)+A128790(n+1)-A129004(n+1)` -/
def P10627076239844623943.Spec : Prop :=
  ∀ n, P10627076239844623943.a n = A128987 (n + 1)

theorem P10627076239844623943.correct : P10627076239844623943.Spec := by
  intro n
  simp only [A128987, Nat.add_sub_cancel, A128987.P10627076239844623943.a, A128987.P6165647653934997466.a, A128790, A128790.P18260975557873993254.a, A129004, A129004.P16620639643151888085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128987

/-! ## A128987.P5118253659206788457

`n*A014477(2*n+1)/2`
-/

namespace A128987.P5118253659206788457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A014477 (2 * n + 1) : ℚ) / 2

end

end A128987.P5118253659206788457

namespace A128987

/-- `n*A014477(2*n+1)/2` -/
def P5118253659206788457.Spec : Prop :=
  ∀ n, P5118253659206788457.a n = (A128987 (n + 1) : ℚ)

end A128987

/-! ## A128987.P3791426881163605941

`16*A000217(n)*A002697(n+1)/2`
-/

namespace A128987.P3791426881163605941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 * A000217 n * A002697 (n + 1) : ℚ) / 2

end

end A128987.P3791426881163605941

namespace A128987

/-- `16*A000217(n)*A002697(n+1)/2` -/
def P3791426881163605941.Spec : Prop :=
  ∀ n, P3791426881163605941.a n = (A128987 (n + 1) : ℚ)

end A128987

/-! ## A128987.P16246451021875852909

`n*A129004(n+1)/(n+2)`
-/

namespace A128987.P16246451021875852909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A129004 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A128987.P16246451021875852909

namespace A128987

/-- `n*A129004(n+1)/(n+2)` -/
def P16246451021875852909.Spec : Prop :=
  ∀ n, P16246451021875852909.a n = (A128987 (n + 1) : ℚ)

theorem P16246451021875852909.correct : P16246451021875852909.Spec := by
  intro n
  simp only [A128987, Nat.add_sub_cancel, A128987.P16246451021875852909.a, A128987.P6165647653934997466.a, A129004, A129004.P16620639643151888085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128987

/-! ## A128987.P97265960922609095

`A128796(n+1)²/A028310(n)`
-/

namespace A128987.P97265960922609095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128796 (n + 1) ^ 2 : ℚ) / (A028310 n : ℚ)

end

end A128987.P97265960922609095

namespace A128987

/-- `A128796(n+1)²/A028310(n)` -/
def P97265960922609095.Spec : Prop :=
  ∀ n, P97265960922609095.a n = (A128987 (n + 1) : ℚ)

end A128987

/-! ## A128987.P2312347356999755937

`A002378(n)*A116144(n+1)/(n+2)`
-/

namespace A128987.P2312347356999755937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 n * A116144 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A128987.P2312347356999755937

namespace A128987

/-- `A002378(n)*A116144(n+1)/(n+2)` -/
def P2312347356999755937.Spec : Prop :=
  ∀ n, P2312347356999755937.a n = (A128987 (n + 1) : ℚ)

theorem P2312347356999755937.correct : P2312347356999755937.Spec := by
  intro n
  simp only [A128987, Nat.add_sub_cancel, A128987.P2312347356999755937.a, A128987.P6165647653934997466.a, A002378, A002378.P6342434596694243671.a, A116144, A116144.P18441866221327377996.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128987

/-! ## A128987.P7072671469994695219

`A036289(2*n)*A141046(n+1)/A001105(n+1)`
-/

namespace A128987.P7072671469994695219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036289 (2 * n) * A141046 (n + 1) : ℚ) / (A001105 (n + 1) : ℚ)

end

end A128987.P7072671469994695219

namespace A128987

/-- `A036289(2*n)*A141046(n+1)/A001105(n+1)` -/
def P7072671469994695219.Spec : Prop :=
  ∀ n, P7072671469994695219.a n = (A128987 (n + 1) : ℚ)

end A128987

/-! ## A128987.P14698849511163562496

`A128991(n+1)/A000079(n+1)`
-/

namespace A128987.P14698849511163562496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128991 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A128987.P14698849511163562496

namespace A128987

/-- `A128991(n+1)/A000079(n+1)` -/
def P14698849511163562496.Spec : Prop :=
  ∀ n, P14698849511163562496.a n = (A128987 (n + 1) : ℚ)

end A128987

/-! ## A128987.P9446138669894441755

`A036289(n+1)*A128798(n+1)/A000079(n+1)`
-/

namespace A128987.P9446138669894441755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036289 (n + 1) * A128798 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A128987.P9446138669894441755

namespace A128987

/-- `A036289(n+1)*A128798(n+1)/A000079(n+1)` -/
def P9446138669894441755.Spec : Prop :=
  ∀ n, P9446138669894441755.a n = (A128987 (n + 1) : ℚ)

end A128987

/-! ## A128987.P18012920646293736389

`abs(A036289(n+1)²*A196199(n²))`
-/

namespace A128987.P18012920646293736389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036289 (n + 1) ^ 2 * A196199 (n ^ 2)|

end

end A128987.P18012920646293736389

namespace A128987

/-- `abs(A036289(n+1)²*A196199(n²))` -/
def P18012920646293736389.Spec : Prop :=
  ∀ n, P18012920646293736389.a n = A128987 (n + 1)

end A128987

/-!
# A128988: a(n) = (n^3 - n^2)*5^n.

The programs for A128988, the canonical program `A128988.P9951450378729425466` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128988 has offset 1).

The definition of A128988 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1)²)*5^(n+1)` (program `A128988.P9951450378729425466`, by `A128988.P9951450378729425466.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128988.P9951450378729425466

`((n+1)^3-(n+1)²)*5^(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128988

/-- `((n+1)^3-(n+1)²)*5^(n+1)` -/
def P9951450378729425466.Spec : Prop :=
  ∀ n, P9951450378729425466.a n = A128988 (n + 1)

theorem P9951450378729425466.correct : P9951450378729425466.Spec := by
  intro n
  simp only [A128988, Nat.add_sub_cancel]

end A128988

/-! ## A128988.P1129720713071480114

`lcm(n, n*A128784(n+1))`
-/

namespace A128988.P1129720713071480114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * A128784 (n + 1))

end

end A128988.P1129720713071480114

namespace A128988

/-- `lcm(n, n*A128784(n+1))` -/
def P1129720713071480114.Spec : Prop :=
  ∀ n, (P1129720713071480114.a n : ℤ) = A128988 (n + 1)

end A128988

/-! ## A128988.P14051572438393827620

`A128791(n+1)-A128784(n+1)`
-/

namespace A128988.P14051572438393827620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128791 (n + 1) - A128784 (n + 1)

end

end A128988.P14051572438393827620

namespace A128988

/-- `A128791(n+1)-A128784(n+1)` -/
def P14051572438393827620.Spec : Prop :=
  ∀ n, P14051572438393827620.a n = A128988 (n + 1)

theorem P14051572438393827620.correct : P14051572438393827620.Spec := by
  intro n
  simp only [A128988, Nat.add_sub_cancel, A128988.P14051572438393827620.a, A128988.P9951450378729425466.a, A128784, A128784.P7871800214283789235.a, A128791, A128791.P4585751115799897645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128988

/-! ## A128988.P934988104690102009

`A128963(n+1)-A128799(n+1)`
-/

namespace A128988.P934988104690102009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128963 (n + 1) - A128799 (n + 1)

end

end A128988.P934988104690102009

namespace A128988

/-- `A128963(n+1)-A128799(n+1)` -/
def P934988104690102009.Spec : Prop :=
  ∀ n, P934988104690102009.a n = A128988 (n + 1)

theorem P934988104690102009.correct : P934988104690102009.Spec := by
  intro n
  simp only [A128988, Nat.add_sub_cancel, A128988.P934988104690102009.a, A128988.P9951450378729425466.a, A128799, A128799.P2138756944582292063.a, A128963, A128963.P2708232228213665168.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128988

/-! ## A128988.P6667810242114740914

`lcm(A128784(n+1), A128799(n+1))`
-/

namespace A128988.P6667810242114740914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128784 (n + 1)) (A128799 (n + 1))

end

end A128988.P6667810242114740914

namespace A128988

/-- `lcm(A128784(n+1), A128799(n+1))` -/
def P6667810242114740914.Spec : Prop :=
  ∀ n, (P6667810242114740914.a n : ℤ) = A128988 (n + 1)

end A128988

/-! ## A128988.P12919721511223673561

`2*A128791(n+1)-A129005(n+1)`
-/

namespace A128988.P12919721511223673561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128791 (n + 1) - A129005 (n + 1)

end

end A128988.P12919721511223673561

namespace A128988

/-- `2*A128791(n+1)-A129005(n+1)` -/
def P12919721511223673561.Spec : Prop :=
  ∀ n, P12919721511223673561.a n = A128988 (n + 1)

theorem P12919721511223673561.correct : P12919721511223673561.Spec := by
  intro n
  simp only [A128988, Nat.add_sub_cancel, A128988.P12919721511223673561.a, A128988.P9951450378729425466.a, A128791, A128791.P4585751115799897645.a, A129005, A129005.P12135094817087894389.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128988

/-! ## A128988.P10629019657036850695

`Δ[a(n-1)+A000351(n)*A045991(n)]` with `a(0)=3`
-/

namespace A128988.P10629019657036850695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + A000351 n * A045991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128988.P10629019657036850695

namespace A128988

/-- `Δ[a(n-1)+A000351(n)*A045991(n)]` -/
def P10629019657036850695.Spec : Prop :=
  ∀ n, P10629019657036850695.a n = A128988 (n + 1)

end A128988

/-! ## A128988.P14650679143132634036

`record[A028242(n)*A128799(A028242(n))]`
-/

namespace A128988.P14650679143132634036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n * A128799 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128988.P14650679143132634036

namespace A128988

/-- `record[A028242(n)*A128799(A028242(n))]` -/
def P14650679143132634036.Spec : Prop :=
  ∀ n, P14650679143132634036.a n = A128988 (n + 1)

end A128988

/-! ## A128988.P13201104929270488162

`A007758(n+1)*A128799(n+1)/A036289(n+1)`
-/

namespace A128988.P13201104929270488162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007758 (n + 1) * A128799 (n + 1) : ℚ) / (A036289 (n + 1) : ℚ)

end

end A128988.P13201104929270488162

namespace A128988

/-- `A007758(n+1)*A128799(n+1)/A036289(n+1)` -/
def P13201104929270488162.Spec : Prop :=
  ∀ n, P13201104929270488162.a n = (A128988 (n + 1) : ℚ)

end A128988

/-! ## A128988.P2248122912900142462

`A128013(n+1)*A128985(n+1)/A119635(n+1)`
-/

namespace A128988.P2248122912900142462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128013 (n + 1) * A128985 (n + 1) : ℚ) / (A119635 (n + 1) : ℚ)

end

end A128988.P2248122912900142462

namespace A128988

/-- `A128013(n+1)*A128985(n+1)/A119635(n+1)` -/
def P2248122912900142462.Spec : Prop :=
  ∀ n, P2248122912900142462.a n = (A128988 (n + 1) : ℚ)

theorem P2248122912900142462.correct : P2248122912900142462.Spec := by
  intro n
  simp only [A128988, Nat.add_sub_cancel, A128988.P2248122912900142462.a, A128988.P9951450378729425466.a, A119635, A119635.P9144609565879921146.a, A128013, A128013.P1693886840437840183.a, A128985, A128985.P12184313217683518671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128988

/-!
# A128989: a(n) = (n^3 - n^2)*6^n.

The programs for A128989, the canonical program `A128989.P6692638102023814226` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128989 has offset 1).

The definition of A128989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1)²)*6^(n+1)` (program `A128989.P6692638102023814226`, by `A128989.P6692638102023814226.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128989.P6692638102023814226

`((n+1)^3-(n+1)²)*6^(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128989

/-- `((n+1)^3-(n+1)²)*6^(n+1)` -/
def P6692638102023814226.Spec : Prop :=
  ∀ n, P6692638102023814226.a n = A128989 (n + 1)

theorem P6692638102023814226.correct : P6692638102023814226.Spec := by
  intro n
  simp only [A128989, Nat.add_sub_cancel]

end A128989

/-! ## A128989.P5519775924021081559

`lcm(2, n*A128785(n+1))`
-/

namespace A128989.P5519775924021081559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * A128785 (n + 1))

end

end A128989.P5519775924021081559

namespace A128989

/-- `lcm(2, n*A128785(n+1))` -/
def P5519775924021081559.Spec : Prop :=
  ∀ n, (P5519775924021081559.a n : ℤ) = A128989 (n + 1)

end A128989

/-! ## A128989.P11074749452007352159

`abs(A001489(n)*A128785(n+1))`
-/

namespace A128989.P11074749452007352159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n * A128785 (n + 1)|

end

end A128989.P11074749452007352159

namespace A128989

/-- `abs(A001489(n)*A128785(n+1))` -/
def P11074749452007352159.Spec : Prop :=
  ∀ n, P11074749452007352159.a n = A128989 (n + 1)

end A128989

/-! ## A128989.P14728442458210948337

`A128792(n+1)-A128785(n+1)`
-/

namespace A128989.P14728442458210948337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128792 (n + 1) - A128785 (n + 1)

end

end A128989.P14728442458210948337

namespace A128989

/-- `A128792(n+1)-A128785(n+1)` -/
def P14728442458210948337.Spec : Prop :=
  ∀ n, P14728442458210948337.a n = A128989 (n + 1)

theorem P14728442458210948337.correct : P14728442458210948337.Spec := by
  intro n
  simp only [A128989, Nat.add_sub_cancel, A128989.P14728442458210948337.a, A128989.P6692638102023814226.a, A128785, A128785.P13046394259781789652.a, A128792, A128792.P7863353324319674705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128989

/-! ## A128989.P2332300796980054242

`lcm(A128985(n+1), A128986(n+1))`
-/

namespace A128989.P2332300796980054242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128985 (n + 1)) (A128986 (n + 1))

end

end A128989.P2332300796980054242

namespace A128989

/-- `lcm(A128985(n+1), A128986(n+1))` -/
def P2332300796980054242.Spec : Prop :=
  ∀ n, (P2332300796980054242.a n : ℤ) = A128989 (n + 1)

end A128989

/-! ## A128989.P455147306597153688

`A128964(n+1)-A128964(n+1)/(n+2)`
-/

namespace A128989.P455147306597153688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128964 (n + 1) : ℚ) - (A128964 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A128989.P455147306597153688

namespace A128989

/-- `A128964(n+1)-A128964(n+1)/(n+2)` -/
def P455147306597153688.Spec : Prop :=
  ∀ n, P455147306597153688.a n = (A128989 (n + 1) : ℚ)

theorem P455147306597153688.correct : P455147306597153688.Spec := by
  intro n
  simp only [A128989, Nat.add_sub_cancel, A128989.P455147306597153688.a, A128989.P6692638102023814226.a, A128964, A128964.P12795609918730376211.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128989

/-! ## A128989.P3618664328332422787

`record[A065648(n)*A128800(A065648(n))]`
-/

namespace A128989.P3618664328332422787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n * A128800 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128989.P3618664328332422787

namespace A128989

/-- `record[A065648(n)*A128800(A065648(n))]` -/
def P3618664328332422787.Spec : Prop :=
  ∀ n, P3618664328332422787.a n = A128989 (n + 1)

end A128989

/-! ## A128989.P9473165979779895217

`record[A128800(A344180(n))*A344180(n)]`
-/

namespace A128989.P9473165979779895217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128800 (A344180 n).toNat * A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128989.P9473165979779895217

namespace A128989

/-- `record[A128800(A344180(n))*A344180(n)]` -/
def P9473165979779895217.Spec : Prop :=
  ∀ n, P9473165979779895217.a n = A128989 (n + 1)

end A128989

/-! ## A128989.P745421198363614555

`A128792(n+1)+A128792(n+1)-A129006(n+1)`
-/

namespace A128989.P745421198363614555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128792 (n + 1) + (A128792 (n + 1) - A129006 (n + 1))

end

end A128989.P745421198363614555

namespace A128989

/-- `A128792(n+1)+A128792(n+1)-A129006(n+1)` -/
def P745421198363614555.Spec : Prop :=
  ∀ n, P745421198363614555.a n = A128989 (n + 1)

theorem P745421198363614555.correct : P745421198363614555.Spec := by
  intro n
  simp only [A128989, Nat.add_sub_cancel, A128989.P745421198363614555.a, A128989.P6692638102023814226.a, A128792, A128792.P7863353324319674705.a, A129006, A129006.P2654830530449585545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128989

/-! ## A128989.P17282590541501339259

`A002064(n+1)*A128797(n+1)-A128797(n+1)`
-/

namespace A128989.P17282590541501339259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 (n + 1) * A128797 (n + 1) - A128797 (n + 1)

end

end A128989.P17282590541501339259

namespace A128989

/-- `A002064(n+1)*A128797(n+1)-A128797(n+1)` -/
def P17282590541501339259.Spec : Prop :=
  ∀ n, P17282590541501339259.a n = A128989 (n + 1)

end A128989

/-!
# A128990: a(n) = (n^3 - n^2)*7^n.

The programs for A128990, the canonical program `A128990.P10836331386635318470` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128990 has offset 1).

The definition of A128990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1)²)*7^(n+1)` (program `A128990.P10836331386635318470`, by `A128990.P10836331386635318470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128990.P10836331386635318470

`((n+1)^3-(n+1)²)*7^(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128990

/-- `((n+1)^3-(n+1)²)*7^(n+1)` -/
def P10836331386635318470.Spec : Prop :=
  ∀ n, P10836331386635318470.a n = A128990 (n + 1)

theorem P10836331386635318470.correct : P10836331386635318470.Spec := by
  intro n
  simp only [A128990, Nat.add_sub_cancel]

end A128990

/-! ## A128990.P1099951588332740107

`lcm(2, (n+1)*A128801(n+1))`
-/

namespace A128990.P1099951588332740107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n + 1 : ℤ) * A128801 (n + 1))

end

end A128990.P1099951588332740107

namespace A128990

/-- `lcm(2, (n+1)*A128801(n+1))` -/
def P1099951588332740107.Spec : Prop :=
  ∀ n, (P1099951588332740107.a n : ℤ) = A128990 (n + 1)

end A128990

/-! ## A128990.P1130969201086031889

`A128051(n+1)-A116165(n+1)`
-/

namespace A128990.P1130969201086031889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128051 (n + 1) - A116165 (n + 1)

end

end A128990.P1130969201086031889

namespace A128990

/-- `A128051(n+1)-A116165(n+1)` -/
def P1130969201086031889.Spec : Prop :=
  ∀ n, P1130969201086031889.a n = A128990 (n + 1)

theorem P1130969201086031889.correct : P1130969201086031889.Spec := by
  intro n
  simp only [A128990, Nat.add_sub_cancel, A128990.P1130969201086031889.a, A128990.P10836331386635318470.a, A116165, A116165.P322017445968686295.a, A128051, A128051.P17154078098800671309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128990

/-! ## A128990.P13542818291077158910

`A128793(n+1)-A128786(n+1)`
-/

namespace A128990.P13542818291077158910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128793 (n + 1) - A128786 (n + 1)

end

end A128990.P13542818291077158910

namespace A128990

/-- `A128793(n+1)-A128786(n+1)` -/
def P13542818291077158910.Spec : Prop :=
  ∀ n, P13542818291077158910.a n = A128990 (n + 1)

theorem P13542818291077158910.correct : P13542818291077158910.Spec := by
  intro n
  simp only [A128990, Nat.add_sub_cancel, A128990.P13542818291077158910.a, A128990.P10836331386635318470.a, A128786, A128786.P9666995029026690429.a, A128793, A128793.P3269818969368987692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128990

/-! ## A128990.P10123922789000984561

`A128793(n+1)+A128793(n+1)-A129007(n+1)`
-/

namespace A128990.P10123922789000984561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128793 (n + 1) + (A128793 (n + 1) - A129007 (n + 1))

end

end A128990.P10123922789000984561

namespace A128990

/-- `A128793(n+1)+A128793(n+1)-A129007(n+1)` -/
def P10123922789000984561.Spec : Prop :=
  ∀ n, P10123922789000984561.a n = A128990 (n + 1)

theorem P10123922789000984561.correct : P10123922789000984561.Spec := by
  intro n
  simp only [A128990, Nat.add_sub_cancel, A128990.P10123922789000984561.a, A128990.P10836331386635318470.a, A128793, A128793.P3269818969368987692.a, A129007, A129007.P367520848224931029.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128990

/-! ## A128990.P13595156075951585026

`n*A129007(n+1)/(n+2)`
-/

namespace A128990.P13595156075951585026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A129007 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A128990.P13595156075951585026

namespace A128990

/-- `n*A129007(n+1)/(n+2)` -/
def P13595156075951585026.Spec : Prop :=
  ∀ n, P13595156075951585026.a n = (A128990 (n + 1) : ℚ)

theorem P13595156075951585026.correct : P13595156075951585026.Spec := by
  intro n
  simp only [A128990, Nat.add_sub_cancel, A128990.P13595156075951585026.a, A128990.P10836331386635318470.a, A129007, A129007.P367520848224931029.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128990

/-! ## A128990.P14610158372454259387

`A128791(n+1)*A128965(n+1)/A129005(n+1)`
-/

namespace A128990.P14610158372454259387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128791 (n + 1) * A128965 (n + 1) : ℚ) / (A129005 (n + 1) : ℚ)

end

end A128990.P14610158372454259387

namespace A128990

/-- `A128791(n+1)*A128965(n+1)/A129005(n+1)` -/
def P14610158372454259387.Spec : Prop :=
  ∀ n, P14610158372454259387.a n = (A128990 (n + 1) : ℚ)

theorem P14610158372454259387.correct : P14610158372454259387.Spec := by
  intro n
  simp only [A128990, Nat.add_sub_cancel, A128990.P14610158372454259387.a, A128990.P10836331386635318470.a, A128791, A128791.P4585751115799897645.a, A128965, A128965.P10724283648106750513.a, A129005, A129005.P12135094817087894389.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128990

/-!
# A128991: a(n) = (n^3 - n^2)*8^n.

The programs for A128991, the canonical program `A128991.P7058989883864134918` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128991 has offset 1).

The definition of A128991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1)²)*8^(n+1)` (program `A128991.P7058989883864134918`, by `A128991.P7058989883864134918.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128991.P7058989883864134918

`((n+1)^3-(n+1)²)*8^(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128991

/-- `((n+1)^3-(n+1)²)*8^(n+1)` -/
def P7058989883864134918.Spec : Prop :=
  ∀ n, P7058989883864134918.a n = A128991 (n + 1)

theorem P7058989883864134918.correct : P7058989883864134918.Spec := by
  intro n
  simp only [A128991, Nat.add_sub_cancel]

end A128991

/-! ## A128991.P2856933740812780532

`record[A111384(n)*A152166(3*n)]`
-/

namespace A128991.P2856933740812780532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 n * A152166 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128991.P2856933740812780532

namespace A128991

/-- `record[A111384(n)*A152166(3*n)]` -/
def P2856933740812780532.Spec : Prop :=
  ∀ n, P2856933740812780532.a n = A128991 (n + 1)

end A128991

/-! ## A128991.P6404037715839402905

`A128794(n+1)-A128787(n+1)`
-/

namespace A128991.P6404037715839402905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128794 (n + 1) - A128787 (n + 1)

end

end A128991.P6404037715839402905

namespace A128991

/-- `A128794(n+1)-A128787(n+1)` -/
def P6404037715839402905.Spec : Prop :=
  ∀ n, P6404037715839402905.a n = A128991 (n + 1)

theorem P6404037715839402905.correct : P6404037715839402905.Spec := by
  intro n
  simp only [A128991, Nat.add_sub_cancel, A128991.P6404037715839402905.a, A128991.P7058989883864134918.a, A128787, A128787.P2077013603776167473.a, A128794, A128794.P2230672432098309614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128991

/-! ## A128991.P13601457652647893401

`A000007(n+1)+n*A128787(n+1)`
-/

namespace A128991.P13601457652647893401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (n : ℤ) * A128787 (n + 1)

end

end A128991.P13601457652647893401

namespace A128991

/-- `A000007(n+1)+n*A128787(n+1)` -/
def P13601457652647893401.Spec : Prop :=
  ∀ n, P13601457652647893401.a n = A128991 (n + 1)

theorem P13601457652647893401.correct : P13601457652647893401.Spec := by
  intro n
  simp only [A128991, Nat.add_sub_cancel, A128991.P13601457652647893401.a, A128991.P7058989883864134918.a, A000007, A000007.P6599383543502402472.a, A128787, A128787.P2077013603776167473.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128991

/-! ## A128991.P2199113774116002542

`A036289(n+1)*A128782(n+1)-A128787(n+1)`
-/

namespace A128991.P2199113774116002542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (n + 1) * A128782 (n + 1) - A128787 (n + 1)

end

end A128991.P2199113774116002542

namespace A128991

/-- `A036289(n+1)*A128782(n+1)-A128787(n+1)` -/
def P2199113774116002542.Spec : Prop :=
  ∀ n, P2199113774116002542.a n = A128991 (n + 1)

end A128991

/-! ## A128991.P8673869241738216519

`n*A129008(n+1)/(n+2)`
-/

namespace A128991.P8673869241738216519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A129008 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A128991.P8673869241738216519

namespace A128991

/-- `n*A129008(n+1)/(n+2)` -/
def P8673869241738216519.Spec : Prop :=
  ∀ n, P8673869241738216519.a n = (A128991 (n + 1) : ℚ)

theorem P8673869241738216519.correct : P8673869241738216519.Spec := by
  intro n
  simp only [A128991, Nat.add_sub_cancel, A128991.P8673869241738216519.a, A128991.P7058989883864134918.a, A129008, A129008.P890738851736368271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128991

/-! ## A128991.P17479343571230590248

`A128048(n+1)*A128985(n+1)/A119635(n+1)`
-/

namespace A128991.P17479343571230590248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128048 (n + 1) * A128985 (n + 1) : ℚ) / (A119635 (n + 1) : ℚ)

end

end A128991.P17479343571230590248

namespace A128991

/-- `A128048(n+1)*A128985(n+1)/A119635(n+1)` -/
def P17479343571230590248.Spec : Prop :=
  ∀ n, P17479343571230590248.a n = (A128991 (n + 1) : ℚ)

theorem P17479343571230590248.correct : P17479343571230590248.Spec := by
  intro n
  simp only [A128991, Nat.add_sub_cancel, A128991.P17479343571230590248.a, A128991.P7058989883864134918.a, A119635, A119635.P9144609565879921146.a, A128048, A128048.P94914982982816563.a, A128985, A128985.P12184313217683518671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128991

/-! ## A128991.P11544356145463653341

`A116144(2*n+1)*A128796(n+1)/A036289(2*n+1)`
-/

namespace A128991.P11544356145463653341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116144 (2 * n + 1) * A128796 (n + 1) : ℚ) / (A036289 (2 * n + 1) : ℚ)

end

end A128991.P11544356145463653341

namespace A128991

/-- `A116144(2*n+1)*A128796(n+1)/A036289(2*n+1)` -/
def P11544356145463653341.Spec : Prop :=
  ∀ n, P11544356145463653341.a n = (A128991 (n + 1) : ℚ)

end A128991

/-! ## A128991.P8042133420899592129

`A128791(n+1)*A128967(n+1)/A129005(n+1)`
-/

namespace A128991.P8042133420899592129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128791 (n + 1) * A128967 (n + 1) : ℚ) / (A129005 (n + 1) : ℚ)

end

end A128991.P8042133420899592129

namespace A128991

/-- `A128791(n+1)*A128967(n+1)/A129005(n+1)` -/
def P8042133420899592129.Spec : Prop :=
  ∀ n, P8042133420899592129.a n = (A128991 (n + 1) : ℚ)

theorem P8042133420899592129.correct : P8042133420899592129.Spec := by
  intro n
  simp only [A128991, Nat.add_sub_cancel, A128991.P8042133420899592129.a, A128991.P7058989883864134918.a, A128791, A128791.P4585751115799897645.a, A128967, A128967.P11710880792767149310.a, A129005, A129005.P12135094817087894389.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128991

/-! ## A128991.P2923328170723604026

`A128792(n+1)*A128967(n+1)/A129006(n+1)`
-/

namespace A128991.P2923328170723604026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128792 (n + 1) * A128967 (n + 1) : ℚ) / (A129006 (n + 1) : ℚ)

end

end A128991.P2923328170723604026

namespace A128991

/-- `A128792(n+1)*A128967(n+1)/A129006(n+1)` -/
def P2923328170723604026.Spec : Prop :=
  ∀ n, P2923328170723604026.a n = (A128991 (n + 1) : ℚ)

theorem P2923328170723604026.correct : P2923328170723604026.Spec := by
  intro n
  simp only [A128991, Nat.add_sub_cancel, A128991.P2923328170723604026.a, A128991.P7058989883864134918.a, A128792, A128792.P7863353324319674705.a, A128967, A128967.P11710880792767149310.a, A129006, A129006.P2654830530449585545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128991

/-!
# A128992: a(n) = (n^3 - n^2)*9^n.

The programs for A128992, the canonical program `A128992.P5234131587371795924` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128992 has offset 1).

The definition of A128992 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1)²)*9^(n+1)` (program `A128992.P5234131587371795924`, by `A128992.P5234131587371795924.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128992.P5234131587371795924

`((n+1)^3-(n+1)²)*9^(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128992

/-- `((n+1)^3-(n+1)²)*9^(n+1)` -/
def P5234131587371795924.Spec : Prop :=
  ∀ n, P5234131587371795924.a n = A128992 (n + 1)

theorem P5234131587371795924.correct : P5234131587371795924.Spec := by
  intro n
  simp only [A128992, Nat.add_sub_cancel]

end A128992

/-! ## A128992.P6398079395093699715

`A128795(n+1)-A128788(n+1)`
-/

namespace A128992.P6398079395093699715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128795 (n + 1) - A128788 (n + 1)

end

end A128992.P6398079395093699715

namespace A128992

/-- `A128795(n+1)-A128788(n+1)` -/
def P6398079395093699715.Spec : Prop :=
  ∀ n, P6398079395093699715.a n = A128992 (n + 1)

theorem P6398079395093699715.correct : P6398079395093699715.Spec := by
  intro n
  simp only [A128992, Nat.add_sub_cancel, A128992.P6398079395093699715.a, A128992.P5234131587371795924.a, A128788, A128788.P5167137184545089802.a, A128795, A128795.P16103889940377404626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128992

/-! ## A128992.P689791587273318883

`A128969(n+1)-A128803(n+1)`
-/

namespace A128992.P689791587273318883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128969 (n + 1) - A128803 (n + 1)

end

end A128992.P689791587273318883

namespace A128992

/-- `A128969(n+1)-A128803(n+1)` -/
def P689791587273318883.Spec : Prop :=
  ∀ n, P689791587273318883.a n = A128992 (n + 1)

theorem P689791587273318883.correct : P689791587273318883.Spec := by
  intro n
  simp only [A128992, Nat.add_sub_cancel, A128992.P689791587273318883.a, A128992.P5234131587371795924.a, A128803, A128803.P4280394860633928794.a, A128969, A128969.P5506366293102074918.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128992

/-! ## A128992.P17988334439856312871

`n*A129009(n+1)/(n+2)`
-/

namespace A128992.P17988334439856312871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A129009 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A128992.P17988334439856312871

namespace A128992

/-- `n*A129009(n+1)/(n+2)` -/
def P17988334439856312871.Spec : Prop :=
  ∀ n, P17988334439856312871.a n = (A128992 (n + 1) : ℚ)

theorem P17988334439856312871.correct : P17988334439856312871.Spec := by
  intro n
  simp only [A128992, Nat.add_sub_cancel, A128992.P17988334439856312871.a, A128992.P5234131587371795924.a, A129009, A129009.P1493963812986752788.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128992

/-! ## A128992.P16477943878508917874

`A127960(n+1)*A128800(n+1)/A036289(n+1)`
-/

namespace A128992.P16477943878508917874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127960 (n + 1) * A128800 (n + 1) : ℚ) / (A036289 (n + 1) : ℚ)

end

end A128992.P16477943878508917874

namespace A128992

/-- `A127960(n+1)*A128800(n+1)/A036289(n+1)` -/
def P16477943878508917874.Spec : Prop :=
  ∀ n, P16477943878508917874.a n = (A128992 (n + 1) : ℚ)

end A128992

/-! ## A128992.P4727945577521084463

`A128074(n+1)*A128985(n+1)/A119635(n+1)`
-/

namespace A128992.P4727945577521084463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128074 (n + 1) * A128985 (n + 1) : ℚ) / (A119635 (n + 1) : ℚ)

end

end A128992.P4727945577521084463

namespace A128992

/-- `A128074(n+1)*A128985(n+1)/A119635(n+1)` -/
def P4727945577521084463.Spec : Prop :=
  ∀ n, P4727945577521084463.a n = (A128992 (n + 1) : ℚ)

theorem P4727945577521084463.correct : P4727945577521084463.Spec := by
  intro n
  simp only [A128992, Nat.add_sub_cancel, A128992.P4727945577521084463.a, A128992.P5234131587371795924.a, A119635, A119635.P9144609565879921146.a, A128074, A128074.P3953472624472269561.a, A128985, A128985.P12184313217683518671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128992

/-! ## A128992.P14923303416521715498

`A128792(n+1)*A128969(n+1)/A129006(n+1)`
-/

namespace A128992.P14923303416521715498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128792 (n + 1) * A128969 (n + 1) : ℚ) / (A129006 (n + 1) : ℚ)

end

end A128992.P14923303416521715498

namespace A128992

/-- `A128792(n+1)*A128969(n+1)/A129006(n+1)` -/
def P14923303416521715498.Spec : Prop :=
  ∀ n, P14923303416521715498.a n = (A128992 (n + 1) : ℚ)

theorem P14923303416521715498.correct : P14923303416521715498.Spec := by
  intro n
  simp only [A128992, Nat.add_sub_cancel, A128992.P14923303416521715498.a, A128992.P5234131587371795924.a, A128792, A128792.P7863353324319674705.a, A128969, A128969.P5506366293102074918.a, A129006, A129006.P2654830530449585545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A128992

/-!
# A128994: First of three consecutive pairwise coprime numbers such that the product of any two plus the third is a prime.

The programs for A128994, there is no canonical definition to state claims against.
-/

/-! ## A128994.P49352448291452957

`record[A134666(n)]-A035443(n+1)`
-/

namespace A128994.P49352448291452957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A035443 (n + 1)

end

end A128994.P49352448291452957

/-! ## A128994.P9085657637910095694

`eq[A065712(n), A230398(A377869(n+1))]`
-/

namespace A128994.P9085657637910095694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (A377869 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128994.P9085657637910095694

/-! ## A128994.P13760570498725568215

`record[and(A090034(n), A342246(n+1))]`
-/

namespace A128994.P13760570498725568215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090034 n) (A342246 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128994.P13760570498725568215

/-! ## A128994.P5756904514774446043

`eq[A029231(A029100(n)), A029330(n)]`
-/

namespace A128994.P5756904514774446043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029231 (A029100 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128994.P5756904514774446043

/-!
# A128996: Intersection of A061068 and A064270.

The programs for A128996, there is no canonical definition to state claims against.
-/

/-! ## A128996.P4149037655983813174

`∩[A061068(n+1), A064270(n+1)]`
-/

namespace A128996.P4149037655983813174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128996.P4149037655983813174

/-! ## A128996.P10954191310692502916

`∩[A061068(n+1), A141101(n+1)]`
-/

namespace A128996.P10954191310692502916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128996.P10954191310692502916

/-! ## A128996.P2207689022748211013

`∩[A014688(n+1), A064270(n+1)]`
-/

namespace A128996.P2207689022748211013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128996.P2207689022748211013

/-! ## A128996.P13439563807802267197

`∩[A064270(n+1), A167136(n+1)]`
-/

namespace A128996.P13439563807802267197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128996.P13439563807802267197

/-! ## A128996.P2372245595666479778

`∩[A061068(n+1), A168285(n+1)]`
-/

namespace A128996.P2372245595666479778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128996.P2372245595666479778

/-!
# A128997: indices k such that A063670(k) differs from A005420(k).

The programs for A128997, there is no canonical definition to state claims against.
-/

/-! ## A128997.P5646057012884247467

`∪[A140452(n+1), A346608(n+1)]`
-/

namespace A128997.P5646057012884247467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A128997.P5646057012884247467

/-! ## A128997.P18321130249183503366

`lt[A005420(n+2), A063670(n+2)]+2`
-/

namespace A128997.P18321130249183503366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063670 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A128997.P18321130249183503366

/-! ## A128997.P6092685517235024802

`lt[A005420(A233583(n+1)), A063696(n)]`
-/

namespace A128997.P6092685517235024802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063696 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128997.P6092685517235024802

/-!
# A128998: Length of shortest addition-subtraction chain for n.

The programs for A128998, there is no canonical definition to state claims against.
-/

/-! ## A128998.P13713514614911996215

`floor((A353058(n+1)+A003313(n+1))/2)`
-/

namespace A128998.P13713514614911996215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A353058 (n + 1) + A003313 (n + 1) : ℚ) / 2⌋

end

end A128998.P13713514614911996215

/-! ## A128998.P6262182962548159725

`floor((A353058(n+1)+A137813(n+1))/2)`
-/

namespace A128998.P6262182962548159725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A353058 (n + 1) + A137813 (n + 1) : ℚ) / 2⌋

end

end A128998.P6262182962548159725

/-! ## A128998.P200190277681962374

`A004526(A353058(n+1)+A003313(n+1))`
-/

namespace A128998.P200190277681962374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A353058 (n + 1) + A003313 (n + 1)).toNat

end

end A128998.P200190277681962374

/-! ## A128998.P17161417351393500247

`A004526(A353058(n+1)+A137813(n+1))`
-/

namespace A128998.P17161417351393500247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A353058 (n + 1) + A137813 (n + 1)).toNat

end

end A128998.P17161417351393500247

/-! ## A128998.P13769868610639096568

`A000194(A003313(n+1)*A353058(n+1))`
-/

namespace A128998.P13769868610639096568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A003313 (n + 1) * A353058 (n + 1)).toNat

end

end A128998.P13769868610639096568

/-! ## A128998.P1168562139592382047

`A000194(A137813(n+1)*A353058(n+1))`
-/

namespace A128998.P1168562139592382047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A137813 (n + 1) * A353058 (n + 1)).toNat

end

end A128998.P1168562139592382047

/-! ## A128998.P16712228918478947120

`A004526(A003313(n+1)+A061339(n+1)-1)`
-/

namespace A128998.P16712228918478947120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003313 (n + 1) + (A061339 (n + 1) - 1)).toNat

end

end A128998.P16712228918478947120

/-! ## A128998.P10313276226971729991

`A004526(A137813(n+1)+A061339(n+1)-1)`
-/

namespace A128998.P10313276226971729991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A137813 (n + 1) + (A061339 (n + 1) - 1)).toNat

end

end A128998.P10313276226971729991

/-! ## A128998.P8547176748785800862

`A000194((A061339(n+1)-1)*A137813(n+1))`
-/

namespace A128998.P8547176748785800862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((A061339 (n + 1) - 1) * A137813 (n + 1)).toNat

end

end A128998.P8547176748785800862

/-! ## A128998.P6631827885038868071

`A004526(A137813(n+1)+A153881(n+2)+A061339(n+1))`
-/

namespace A128998.P6631827885038868071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A137813 (n + 1) + (A153881 (n + 2) + A061339 (n + 1))).toNat

end

end A128998.P6631827885038868071

/-!
# A128999: Start with an integer (in this case 1). First, add 5 or 6 if the integer is odd or even, respectively. Then divide by 2.

The programs for A128999, the canonical program `A128999.P15426547416032813701` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128999 has offset 1).

The definition of A128999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128999.P15426547416032813701

`a(n-1)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128999

/-- `a(n-1)` -/
def P15426547416032813701.Spec : Prop :=
  ∀ n, (P15426547416032813701.a n : ℤ) = A128999 (n + 1)

theorem P15426547416032813701.correct : P15426547416032813701.Spec := by
  intro n
  simp only [A128999, Nat.add_sub_cancel]

end A128999

