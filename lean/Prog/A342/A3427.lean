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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A342700: For any number n with binary expansion (b(1), b(2), ..., b(k)), the binary expansion of a(n) is (1-floor((b(k)+b(1)+b(2))/2), 1-floor((b(1)+b(2)+b(3))/2), ..., 1-floor((b(k-1)+b(k)+b(1))/2)).

The programs for A342700, there is no canonical definition to state claims against.
-/

/-! ## A342700.P225511879983292533

`A003817(n)-A342698(n)`
-/

namespace A342700.P225511879983292533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A342698 n

end

end A342700.P225511879983292533

/-! ## A342700.P13397451415390050158

`A062383(n)-(A342698(n)+1)`
-/

namespace A342700.P13397451415390050158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n - (A342698 n + 1)

end

end A342700.P13397451415390050158

/-! ## A342700.P5078502337356929957

`A092323(2*n+1)-A342698(n)`
-/

namespace A342700.P5078502337356929957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092323 (2 * n + 1) - A342698 n

end

end A342700.P5078502337356929957

/-! ## A342700.P14440265746186826359

`A035327(A062383(n))-A342698(n)`
-/

namespace A342700.P14440265746186826359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A062383 n).toNat - A342698 n

end

end A342700.P14440265746186826359

/-! ## A342700.P14051148421954728328

`xor(A003817(A053644(n)), A342698(n))`
-/

namespace A342700.P14051148421954728328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 (A053644 n).toNat) (A342698 n)

end

end A342700.P14051148421954728328

/-! ## A342700.P8125383238791191950

`A342698(A062383(n)-1)-A342698(n)`
-/

namespace A342700.P8125383238791191950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342698 (A062383 n - 1).toNat - A342698 n

end

end A342700.P8125383238791191950

/-! ## A342700.P17392513527625394691

`A086099(2*n)-A342698(n)`
-/

namespace A342700.P17392513527625394691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (2 * n) - A342698 n

end

end A342700.P17392513527625394691

/-! ## A342700.P2839182392476269506

`A035327(A342698(n)+A062383(n))`
-/

namespace A342700.P2839182392476269506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A342698 n + A062383 n).toNat

end

end A342700.P2839182392476269506

/-! ## A342700.P2216366670230258088

`A035327(or(A062383(n), A342698(n)))`
-/

namespace A342700.P2216366670230258088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.lor (A062383 n) (A342698 n)).toNat

end

end A342700.P2216366670230258088

/-!
# A342702: Indices of records of A007015.

The programs for A342702, there is no canonical definition to state claims against.
-/

/-! ## A342702.P14218429296246179687

`lt[A124757(A000217(n)), A276094(n)]`
-/

namespace A342702.P14218429296246179687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (A000217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342702.P14218429296246179687

/-! ## A342702.P10721545526828734758

`record[gcd(A014573(n), A109832(n+2))]`
-/

namespace A342702.P10721545526828734758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014573 n) (A109832 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342702.P10721545526828734758

/-! ## A342702.P2664543347831075528

`eq[A119981(n+1), A299161(n)]`
-/

namespace A342702.P2664543347831075528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342702.P2664543347831075528

/-! ## A342702.P17787315695998072800

`record[A328024(A060682(2*n+3))*A328025(n+1)]`
-/

namespace A342702.P17787315695998072800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328024 (A060682 (2 * n + 3)).toNat * A328025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342702.P17787315695998072800

/-! ## A342702.P8901045355681017021

`lt[n/2, A276330(n²)]`
-/

namespace A342702.P8901045355681017021
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276330 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A342702.P8901045355681017021

/-!
# A342703: If n is odd then a(n)/a(n+1) = (digit sum of a(n))/(digit sum of a(n+1)) = (digit product of a(n))/(digit product of a(n+1)).

The programs for A342703, there is no canonical definition to state claims against.
-/

/-! ## A342703.P9417130780587049259

`A368591(A045506(n+1))`
-/

namespace A342703.P9417130780587049259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368591 (A045506 (n + 1)).toNat

end

end A342703.P9417130780587049259

/-! ## A342703.P14421944692820749397

`∏{e}[A285828(n+3), #]`
-/

namespace A342703.P14421944692820749397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285828 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A342703.P14421944692820749397

/-! ## A342703.P9824903776418582755

`dr(Δ[lt[A297823(n+1), n]])`
-/

namespace A342703.P9824903776418582755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A342703.P9824903776418582755

/-! ## A342703.P2514180151562453562

`∏{e}[Δ[A133259(A133257(n+3))], #]`
-/

namespace A342703.P2514180151562453562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (A133257 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A342703.P2514180151562453562

/-!
# A342704: Characteristic function of base-2 lunar primes: a(n) = 1 if n is a base-2 lunar prime, otherwise 0.

The programs for A342704, there is no canonical definition to state claims against.
-/

/-! ## A342704.P5362289024238930374

`char[eq[2, A067399(n+1)]]`
-/

namespace A342704.P5362289024238930374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067399 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A342704.P5362289024238930374

/-! ## A342704.P15775194193174277261

`A185012(A067399(n+1))`
-/

namespace A342704.P15775194193174277261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (A067399 (n + 1)).toNat

end

end A342704.P15775194193174277261

/-! ## A342704.P16228210786802782748

`A000007(xor(2, A067399(n+1)))`
-/

namespace A342704.P16228210786802782748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 2 (A067399 (n + 1))).toNat

end

end A342704.P16228210786802782748

/-! ## A342704.P11881119887660819869

`A063524(A066376(n+1))`
-/

namespace A342704.P11881119887660819869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A066376 (n + 1)).toNat

end

end A342704.P11881119887660819869

/-! ## A342704.P12445033754917877939

`A000007(xor(1, A066376(n+1)))`
-/

namespace A342704.P12445033754917877939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 1 (A066376 (n + 1))).toNat

end

end A342704.P12445033754917877939

/-! ## A342704.P5819553500223662792

`∑{d}[A066376(n+1), A008683(#)]`
-/

namespace A342704.P5819553500223662792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A342704.P5819553500223662792

/-! ## A342704.P9550104233668160858

`A379480((1-A066376(n+1))²)`
-/

namespace A342704.P9550104233668160858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 ((1 - A066376 (n + 1)) ^ 2).toNat

end

end A342704.P9550104233668160858

/-! ## A342704.P14161463053953221668

`A010058(A066376(n+1)²)`
-/

namespace A342704.P14161463053953221668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010058 (A066376 (n + 1) ^ 2).toNat

end

end A342704.P14161463053953221668

/-! ## A342704.P1909305876830718458

`A000007((1-A066376(n+1))²)`
-/

namespace A342704.P1909305876830718458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((1 - A066376 (n + 1)) ^ 2).toNat

end

end A342704.P1909305876830718458

/-! ## A342704.P4440597948966178335

`A000007((2-A067399(n+1))²)`
-/

namespace A342704.P4440597948966178335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((2 - A067399 (n + 1)) ^ 2).toNat

end

end A342704.P4440597948966178335

/-! ## A342704.P5227227728229303539

`A010051(2^A066376(n+1))`
-/

namespace A342704.P5227227728229303539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A066376 (n + 1) : ℤ))).toNat

end

end A342704.P5227227728229303539

/-!
# A342705: Primes p such that (p^2 - p*q + q^2)/3 is prime, where q is the next prime after p.

The programs for A342705, there is no canonical definition to state claims against.
-/

/-! ## A342705.P4733563261421488158

`A182986(lt[A138785(n+1), A010888(n)])`
-/

namespace A342705.P4733563261421488158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A342705.P4733563261421488158

/-!
# A342706: Primes of the form (p^2 - p*q + q^2)/3, where p and q are consecutive primes.

The programs for A342706, there is no canonical definition to state claims against.
-/

/-! ## A342706.P14409675235813159765

`p?[A133419(A069484(n+1)-A006094(n+1))]`
-/

namespace A342706.P14409675235813159765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133419 (A069484 (n + 1) - A006094 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342706.P14409675235813159765

/-!
# A342707: T(n, k) is the result of replacing 2's by k's in the hereditary base-2 expansion of n; square array T(n, k) read by antidiagonals upwards, n, k >= 0.

The programs for A342707, there is no canonical definition to state claims against.
-/

/-! ## A342707.P8217116707070129619

`A048881(A180378(n+1)%A152293(2*(n+1)))`
-/

namespace A342707.P8217116707070129619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (Int.tmod (A180378 (n + 1)) (A152293 (2 * (n + 1)))).toNat

end

end A342707.P8217116707070129619

/-! ## A342707.P17191927095518543867

`and(A048881(A180378(n+1)), A152293(2*n+1))`
-/

namespace A342707.P17191927095518543867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048881 (A180378 (n + 1)).toNat) (A152293 (2 * n + 1))

end

end A342707.P17191927095518543867

/-! ## A342707.P1017797200217819690

`A010051(A056909(n+1))*A048881(A180378(n+1))`
-/

namespace A342707.P1017797200217819690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A056909 (n + 1)).toNat * A048881 (A180378 (n + 1)).toNat

end

end A342707.P1017797200217819690

/-! ## A342707.P15593111395755066431

`A151933(A016471(n+1))+A048881(A180378(n+1))`
-/

namespace A342707.P15593111395755066431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (A016471 (n + 1)).toNat + A048881 (A180378 (n + 1)).toNat

end

end A342707.P15593111395755066431

/-! ## A342707.P12023984745998360125

`A169989(A201780(n)+1)`
-/

namespace A342707.P12023984745998360125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169989 (A201780 n + 1).toNat

end

end A342707.P12023984745998360125

/-!
# A342708: Triangle read by rows with n >= 1, 0 <= k <= n-1: in general T(n,k) = T(n-1,k-1) - T(n-k,k), except T(1,0)=1, T(n,0)=0 for n>=2; T(n,k) = 0 for k>=n.

The programs for A342708, there is no canonical definition to state claims against.
-/

/-! ## A342708.P421305719805406583

`A119282(A244925(n+1))^A285321(n+1)`
-/

namespace A342708.P421305719805406583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119282 (A244925 (n + 1)).toNat : ℚ) ^ (A285321 (n + 1) : ℤ)

end

end A342708.P421305719805406583

/-! ## A342708.P18151436369922205106

`and(A008683(A168549(n)), A177978(n+1))`
-/

namespace A342708.P18151436369922205106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A168549 n).toNat) (A177978 (n + 1))

end

end A342708.P18151436369922205106

/-! ## A342708.P17133995307899201495

`A091337(A055237(n)-A344612(n))`
-/

namespace A342708.P17133995307899201495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A055237 n - A344612 n).toNat

end

end A342708.P17133995307899201495

/-! ## A342708.P6821019102810999044

`A244895(A106262(n)^7)`
-/

namespace A342708.P6821019102810999044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A106262 n ^ 7).toNat

end

end A342708.P6821019102810999044

/-! ## A342708.P4858558862357267191

`A080891(A106262(n)^A103703(n+1))`
-/

namespace A342708.P4858558862357267191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (SequenceMachineLib.roundAway ((A106262 n : ℚ) ^ (A103703 (n + 1) : ℤ))).toNat

end

end A342708.P4858558862357267191

/-!
# A342709: 12-gonal (dodecagonal) square numbers.

The programs for A342709, the canonical program `A342709.P10944230336865583226` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342709 has offset 1).

The definition of A342709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342709.P11912316891003569893

`A033890(n)²`
-/

namespace A342709.P11912316891003569893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033890 n ^ 2

end

end A342709.P11912316891003569893

namespace A342709

/-- `A033890(n)²` -/
def P11912316891003569893.Spec : Prop :=
  ∀ n, P11912316891003569893.a n = A342709 (n + 1)

end A342709

/-! ## A342709.P10944230336865583226

`9*A161582(n+1)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A342709

/-- `9*A161582(n+1)+1` -/
def P10944230336865583226.Spec : Prop :=
  ∀ n, P10944230336865583226.a n = A342709 (n + 1)

theorem P10944230336865583226.correct : P10944230336865583226.Spec := by
  intro n
  simp only [A342709, Nat.add_sub_cancel]

end A342709

/-! ## A342709.P6836822715410092660

`ceil(∑[ϕ^(4*n)])²`
-/

namespace A342709.P6836822715410092660
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ ^ 2

end

end A342709.P6836822715410092660

namespace A342709

/-- `ceil(∑[ϕ^(4*n)])²` -/
def P6836822715410092660.Spec : Prop :=
  ∀ n, P6836822715410092660.a n = A342709 (n + 1)

end A342709

/-! ## A342709.P14208359470504645403

`A049684(Δ[n²])`
-/

namespace A342709.P14208359470504645403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049684 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A342709.P14208359470504645403

namespace A342709

/-- `A049684(Δ[n²])` -/
def P14208359470504645403.Spec : Prop :=
  ∀ n, P14208359470504645403.a n = A342709 (n + 1)

end A342709

/-! ## A342709.P1480999817308222788

`∑[A097134(4*n)]`
-/

namespace A342709.P1480999817308222788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097134 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342709.P1480999817308222788

namespace A342709

/-- `∑[A097134(4*n)]` -/
def P1480999817308222788.Spec : Prop :=
  ∀ n, P1480999817308222788.a n = A342709 (n + 1)

end A342709

/-! ## A342709.P9722636075692886689

`A295672(8*(n+1))`
-/

namespace A342709.P9722636075692886689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295672 (8 * (n + 1))

end

end A342709.P9722636075692886689

namespace A342709

/-- `A295672(8*(n+1))` -/
def P9722636075692886689.Spec : Prop :=
  ∀ n, P9722636075692886689.a n = A342709 (n + 1)

end A342709

/-! ## A342709.P1157966313797106901

`A152192(8*n+4)`
-/

namespace A342709.P1157966313797106901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152192 (8 * n + 4)

end

end A342709.P1157966313797106901

namespace A342709

/-- `A152192(8*n+4)` -/
def P1157966313797106901.Spec : Prop :=
  ∀ n, P1157966313797106901.a n = A342709 (n + 1)

end A342709

/-! ## A342709.P8848207753881776223

`A357553(8*n+4)`
-/

namespace A342709.P8848207753881776223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357553 (8 * n + 4)

end

end A342709.P8848207753881776223

namespace A342709

/-- `A357553(8*n+4)` -/
def P8848207753881776223.Spec : Prop :=
  ∀ n, P8848207753881776223.a n = A342709 (n + 1)

end A342709

/-! ## A342709.P4071297975899260146

`A007598(2*(2*n+1))`
-/

namespace A342709.P4071297975899260146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (2 * (2 * n + 1))

end

end A342709.P4071297975899260146

namespace A342709

/-- `A007598(2*(2*n+1))` -/
def P4071297975899260146.Spec : Prop :=
  ∀ n, P4071297975899260146.a n = A342709 (n + 1)

end A342709

/-! ## A342709.P9356799067544541043

`A152189(2*(2*n+1))`
-/

namespace A342709.P9356799067544541043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152189 (2 * (2 * n + 1))

end

end A342709.P9356799067544541043

namespace A342709

/-- `A152189(2*(2*n+1))` -/
def P9356799067544541043.Spec : Prop :=
  ∀ n, P9356799067544541043.a n = A342709 (n + 1)

end A342709

/-!
# A342710: Solutions x to the Pell-Fermat equation x^2 - 5*y^2 = 4.

The programs for A342710, the canonical program `A342710.P15072906245465407337` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342710 has offset 0).

The definition of A342710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342710.P15072906245465407337

`7*a(n-1)-a(n-2)` with `a(0)=3, a(1)=18`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A342710

/-- `7*a(n-1)-a(n-2)` -/
def P15072906245465407337.Spec : Prop :=
  ∀ n, P15072906245465407337.a n = A342710 n

theorem P15072906245465407337.correct : P15072906245465407337.Spec := by
  intro n
  simp only [A342710]

end A342710

/-! ## A342710.P16663881866358640098

`ogf((3-3x)/(1-7x+x^2))`
-/

namespace A342710.P16663881866358640098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3] [1, -7, 1] n

end

end A342710.P16663881866358640098

namespace A342710

/-- `ogf((3-3x)/(1-7x+x^2))` -/
def P16663881866358640098.Spec : Prop :=
  ∀ n, P16663881866358640098.a n = A342710 n

end A342710

/-! ## A342710.P12486197993849874499

`ceil(∑[ϕ^(2*n)])²+2`
-/

namespace A342710.P12486197993849874499
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ ^ 2 + 2

end

end A342710.P12486197993849874499

namespace A342710

/-- `ceil(∑[ϕ^(2*n)])²+2` -/
def P12486197993849874499.Spec : Prop :=
  ∀ n, P12486197993849874499.a n = A342710 n

end A342710

/-! ## A342710.P17174914204863859281

`or(2, floor(ϕ^(2*n+1))²)`
-/

namespace A342710.P17174914204863859281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (⌊Real.goldenRatio ^ (2 * n + 1)⌋ ^ 2)

end

end A342710.P17174914204863859281

namespace A342710

/-- `or(2, floor(ϕ^(2*n+1))²)` -/
def P17174914204863859281.Spec : Prop :=
  ∀ n, P17174914204863859281.a n = A342710 n

end A342710

/-! ## A342710.P9492384581304500571

`xor(2, floor(ϕ^(2*n+1))²)`
-/

namespace A342710.P9492384581304500571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (⌊Real.goldenRatio ^ (2 * n + 1)⌋ ^ 2)

end

end A342710.P9492384581304500571

namespace A342710

/-- `xor(2, floor(ϕ^(2*n+1))²)` -/
def P9492384581304500571.Spec : Prop :=
  ∀ n, P9492384581304500571.a n = A342710 n

end A342710

/-! ## A342710.P741858931113070344

`Δ[A033888(n)]`
-/

namespace A342710.P741858931113070344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342710.P741858931113070344

namespace A342710

/-- `Δ[A033888(n)]` -/
def P741858931113070344.Spec : Prop :=
  ∀ n, P741858931113070344.a n = A342710 n

end A342710

/-! ## A342710.P7603097153033666883

`Δ[A081002(n)]`
-/

namespace A342710.P7603097153033666883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342710.P7603097153033666883

namespace A342710

/-- `Δ[A081002(n)]` -/
def P7603097153033666883.Spec : Prop :=
  ∀ n, P7603097153033666883.a n = A342710 n

end A342710

/-! ## A342710.P11464134349615086674

`Δ[A081072(n)]`
-/

namespace A342710.P11464134349615086674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342710.P11464134349615086674

namespace A342710

/-- `Δ[A081072(n)]` -/
def P11464134349615086674.Spec : Prop :=
  ∀ n, P11464134349615086674.a n = A342710 n

end A342710

/-! ## A342710.P4726430412071514396

`3*A049685(n)`
-/

namespace A342710.P4726430412071514396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049685 n

end

end A342710.P4726430412071514396

namespace A342710

/-- `3*A049685(n)` -/
def P4726430412071514396.Spec : Prop :=
  ∀ n, P4726430412071514396.a n = A342710 n

end A342710

/-! ## A342710.P5770863604283365858

`A082587(8*n)`
-/

namespace A342710.P5770863604283365858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 (8 * n)

end

end A342710.P5770863604283365858

namespace A342710

/-- `A082587(8*n)` -/
def P5770863604283365858.Spec : Prop :=
  ∀ n, P5770863604283365858.a n = A342710 n

end A342710

/-! ## A342710.P7166484543947250925

`A005248(Δ[n²])`
-/

namespace A342710.P7166484543947250925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A342710.P7166484543947250925

namespace A342710

/-- `A005248(Δ[n²])` -/
def P7166484543947250925.Spec : Prop :=
  ∀ n, P7166484543947250925.a n = A342710 n

end A342710

/-! ## A342710.P9263090513516072575

`A201222(Δ[n²])`
-/

namespace A342710.P9263090513516072575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A342710.P9263090513516072575

namespace A342710

/-- `A201222(Δ[n²])` -/
def P9263090513516072575.Spec : Prop :=
  ∀ n, P9263090513516072575.a n = A342710 n

end A342710

/-! ## A342710.P17376471324708271138

`Δ[A001906(2*n)]`
-/

namespace A342710.P17376471324708271138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342710.P17376471324708271138

namespace A342710

/-- `Δ[A001906(2*n)]` -/
def P17376471324708271138.Spec : Prop :=
  ∀ n, P17376471324708271138.a n = A342710 n

end A342710

/-! ## A342710.P4527983040913090691

`Δ[A055588(2*n)]`
-/

namespace A342710.P4527983040913090691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342710.P4527983040913090691

namespace A342710

/-- `Δ[A055588(2*n)]` -/
def P4527983040913090691.Spec : Prop :=
  ∀ n, P4527983040913090691.a n = A342710 n

end A342710

/-! ## A342710.P5541233579324031122

`Δ[A249450(2*n)]`
-/

namespace A342710.P5541233579324031122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249450 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342710.P5541233579324031122

namespace A342710

/-- `Δ[A249450(2*n)]` -/
def P5541233579324031122.Spec : Prop :=
  ∀ n, P5541233579324031122.a n = A342710 n

end A342710

/-! ## A342710.P7869729328408503300

`Δ[A254884(2*n)]`
-/

namespace A342710.P7869729328408503300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254884 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342710.P7869729328408503300

namespace A342710

/-- `Δ[A254884(2*n)]` -/
def P7869729328408503300.Spec : Prop :=
  ∀ n, P7869729328408503300.a n = A342710 n

end A342710

/-! ## A342710.P12224591238512412564

`Δ[A142880(3*n)]`
-/

namespace A342710.P12224591238512412564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142880 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342710.P12224591238512412564

namespace A342710

/-- `Δ[A142880(3*n)]` -/
def P12224591238512412564.Spec : Prop :=
  ∀ n, P12224591238512412564.a n = A342710 n

end A342710

/-! ## A342710.P17354606146462440926

`Δ[A142881(3*n)]`
-/

namespace A342710.P17354606146462440926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142881 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342710.P17354606146462440926

namespace A342710

/-- `Δ[A142881(3*n)]` -/
def P17354606146462440926.Spec : Prop :=
  ∀ n, P17354606146462440926.a n = A342710 n

end A342710

/-! ## A342710.P2651550976862207271

`Δ[A000045(4*n)]`
-/

namespace A342710.P2651550976862207271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342710.P2651550976862207271

namespace A342710

/-- `Δ[A000045(4*n)]` -/
def P2651550976862207271.Spec : Prop :=
  ∀ n, P2651550976862207271.a n = A342710 n

end A342710

/-! ## A342710.P17504299327093603326

`Δ[A001611(4*n)]`
-/

namespace A342710.P17504299327093603326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342710.P17504299327093603326

namespace A342710

/-- `Δ[A001611(4*n)]` -/
def P17504299327093603326.Spec : Prop :=
  ∀ n, P17504299327093603326.a n = A342710 n

end A342710

/-!
# A342711: Partial sums of A000267.

The programs for A342711, the canonical program `A342711.P17745848643965089497` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342711 has offset 0).

The definition of A342711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342711.P10179135791771005210

`∑[floor(1/Δ[sqrt(n)])]`
-/

namespace A342711.P10179135791771005210
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (f2 (n + 1) - f2 n)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342711.P10179135791771005210

namespace A342711

/-- `∑[floor(1/Δ[sqrt(n)])]` -/
def P10179135791771005210.Spec : Prop :=
  ∀ n, P10179135791771005210.a n = A342711 n

end A342711

/-! ## A342711.P17409809831967790050

`∑[ceil(2/acot(sqrt(n)))]-(n+1)`
-/

namespace A342711.P17409809831967790050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (Real.sqrt (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A342711.P17409809831967790050

namespace A342711

/-- `∑[ceil(2/acot(sqrt(n)))]-(n+1)` -/
def P17409809831967790050.Spec : Prop :=
  ∀ n, P17409809831967790050.a n = A342711 n

end A342711

/-! ## A342711.P11794538460244869814

`a(n-1)+floor(1/Δ[sqrt(n)])` with `a(0)=1`
-/

namespace A342711.P11794538460244869814
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊1 / (f1 (n + 1) - f1 n)⌋

end

end A342711.P11794538460244869814

namespace A342711

/-- `a(n-1)+floor(1/Δ[sqrt(n)])` -/
def P11794538460244869814.Spec : Prop :=
  ∀ n, P11794538460244869814.a n = A342711 n

end A342711

/-! ## A342711.P6634863795069254799

`floor(a(n-1)+sqrt(4*n+1))` with `a(0)=1`
-/

namespace A342711.P6634863795069254799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.sqrt (4 * n + 1 : ℝ)⌋

end

end A342711.P6634863795069254799

namespace A342711

/-- `floor(a(n-1)+sqrt(4*n+1))` -/
def P6634863795069254799.Spec : Prop :=
  ∀ n, P6634863795069254799.a n = A342711 n

end A342711

/-! ## A342711.P17745848643965089497

`floor(∑[a(n-a(n-1))+2])` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A342711

/-- `floor(∑[a(n-a(n-1))+2])` -/
def P17745848643965089497.Spec : Prop :=
  ∀ n, (P17745848643965089497.a n : ℤ) = A342711 n

theorem P17745848643965089497.correct : P17745848643965089497.Spec := by
  intro n
  simp only [A342711]

end A342711

/-! ## A342711.P7298537702374494799

`ceil(∑[a(n-a(n-1))+2])` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A342711.P7298537702374494799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - f1 (n - 1)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342711.P7298537702374494799

namespace A342711

/-- `ceil(∑[a(n-a(n-1))+2])` -/
def P7298537702374494799.Spec : Prop :=
  ∀ n, (P7298537702374494799.a n : ℤ) = A342711 n

theorem P7298537702374494799.correct : P7298537702374494799.Spec := by
  intro n
  simp only [A342711, Nat.add_sub_cancel, A342711.P7298537702374494799.f1, A342711.P7298537702374494799.a, A342711.P17745848643965089497.f1, A342711.P17745848643965089497.a, SequenceMachineLib.memo_apply]

end A342711

/-! ## A342711.P14444913044520573737

`∑[A055086(n)]+n+1`
-/

namespace A342711.P14444913044520573737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A342711.P14444913044520573737

namespace A342711

/-- `∑[A055086(n)]+n+1` -/
def P14444913044520573737.Spec : Prop :=
  ∀ n, P14444913044520573737.a n = A342711 n

end A342711

/-! ## A342711.P5848274405939500187

`A000267(n)+a(n-1)` with `a(0)=1`
-/

namespace A342711.P5848274405939500187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000267 n + a (n - 1)

end

end A342711.P5848274405939500187

namespace A342711

/-- `A000267(n)+a(n-1)` -/
def P5848274405939500187.Spec : Prop :=
  ∀ n, P5848274405939500187.a n = A342711 n

end A342711

/-! ## A342711.P9697246764573700248

`∑[n+1]-A342712(n+1)`
-/

namespace A342711.P9697246764573700248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A342712 (n + 1)

end

end A342711.P9697246764573700248

namespace A342711

/-- `∑[n+1]-A342712(n+1)` -/
def P9697246764573700248.Spec : Prop :=
  ∀ n, P9697246764573700248.a n = A342711 n

end A342711

/-! ## A342711.P12369196334888852429

`(n+1)²-∑[A123663(n+1)]`
-/

namespace A342711.P12369196334888852429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342711.P12369196334888852429

namespace A342711

/-- `(n+1)²-∑[A123663(n+1)]` -/
def P12369196334888852429.Spec : Prop :=
  ∀ n, P12369196334888852429.a n = A342711 n

end A342711

/-! ## A342711.P10097678214299805616

`∑[char[A002620(n)]]+a(n-1)` with `a(0)=1`
-/

namespace A342711.P10097678214299805616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A342711.P10097678214299805616

namespace A342711

/-- `∑[char[A002620(n)]]+a(n-1)` -/
def P10097678214299805616.Spec : Prop :=
  ∀ n, (P10097678214299805616.a n : ℤ) = A342711 n

end A342711

/-! ## A342711.P14560880993955121253

`A167381(n+1)-A080344(n)`
-/

namespace A342711.P14560880993955121253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167381 (n + 1) - A080344 n

end

end A342711.P14560880993955121253

namespace A342711

/-- `A167381(n+1)-A080344(n)` -/
def P14560880993955121253.Spec : Prop :=
  ∀ n, P14560880993955121253.a n = A342711 n

end A342711

/-! ## A342711.P7611290052150372729

`A165453(n+1)+A022554(n)`
-/

namespace A342711.P7611290052150372729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165453 (n + 1) + A022554 n

end

end A342711.P7611290052150372729

namespace A342711

/-- `A165453(n+1)+A022554(n)` -/
def P7611290052150372729.Spec : Prop :=
  ∀ n, P7611290052150372729.a n = A342711 n

end A342711

/-! ## A342711.P6972573415761592087

`A165453(n+1)+A165453(n)-A080344(n)`
-/

namespace A342711.P6972573415761592087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165453 (n + 1) + (A165453 n - A080344 n)

end

end A342711.P6972573415761592087

namespace A342711

/-- `A165453(n+1)+A165453(n)-A080344(n)` -/
def P6972573415761592087.Spec : Prop :=
  ∀ n, P6972573415761592087.a n = A342711 n

end A342711

/-! ## A342711.P2001092038636873441

`A022554(n+1)+A080344(n+1)+A022554(n)`
-/

namespace A342711.P2001092038636873441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 (n + 1) + (A080344 (n + 1) + A022554 n)

end

end A342711.P2001092038636873441

namespace A342711

/-- `A022554(n+1)+A080344(n+1)+A022554(n)` -/
def P2001092038636873441.Spec : Prop :=
  ∀ n, P2001092038636873441.a n = A342711 n

end A342711

/-! ## A342711.P10373675528984354819

`A337134(2*(n+1))/2`
-/

namespace A342711.P10373675528984354819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337134 (2 * (n + 1)) : ℚ) / 2

end

end A342711.P10373675528984354819

namespace A342711

/-- `A337134(2*(n+1))/2` -/
def P10373675528984354819.Spec : Prop :=
  ∀ n, P10373675528984354819.a n = (A342711 n : ℚ)

end A342711

/-! ## A342711.P6294149949869496678

`eq[0, A209318(n)]`
-/

namespace A342711.P6294149949869496678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342711.P6294149949869496678

namespace A342711

/-- `eq[0, A209318(n)]` -/
def P6294149949869496678.Spec : Prop :=
  ∀ n, (P6294149949869496678.a n : ℤ) = A342711 n

end A342711

/-! ## A342711.P9819030256160081402

`A084464(2*n+3)-(n+1)`
-/

namespace A342711.P9819030256160081402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084464 (2 * n + 3) - (n + 1 : ℤ)

end

end A342711.P9819030256160081402

namespace A342711

/-- `A084464(2*n+3)-(n+1)` -/
def P9819030256160081402.Spec : Prop :=
  ∀ n, P9819030256160081402.a n = A342711 n

end A342711

/-!
# A342712: Partial sums of A248333.

The programs for A342712, the canonical program `A342712.P9390913467101347232` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342712 has offset 1).

The definition of A342712 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342711, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342712.P9390913467101347232

`A000217(n+1)-A342711(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A342712

/-- `A000217(n+1)-A342711(n)` -/
def P9390913467101347232.Spec : Prop :=
  ∀ n, P9390913467101347232.a n = A342712 (n + 1)

theorem P9390913467101347232.correct : P9390913467101347232.Spec := by
  intro n
  simp only [A342712, Nat.add_sub_cancel]

end A342712

/-! ## A342712.P17240489455749212306

`∑[floor((1-sqrt(n+1))²)]`
-/

namespace A342712.P17240489455749212306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - Real.sqrt (n + 1 : ℝ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342712.P17240489455749212306

namespace A342712

/-- `∑[floor((1-sqrt(n+1))²)]` -/
def P17240489455749212306.Spec : Prop :=
  ∀ n, P17240489455749212306.a n = A342712 (n + 1)

end A342712

/-! ## A342712.P10907350843813852675

`C(n+2, 2)-∑[floor(sqrt(4*n+1))]`
-/

namespace A342712.P10907350843813852675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A342712.P10907350843813852675

namespace A342712

/-- `C(n+2, 2)-∑[floor(sqrt(4*n+1))]` -/
def P10907350843813852675.Spec : Prop :=
  ∀ n, P10907350843813852675.a n = A342712 (n + 1)

end A342712

/-! ## A342712.P2407564175317956990

`a(n-1)+n-(floor(1/Δ[sqrt(n)])-1)` with `a(0)=0`
-/

namespace A342712.P2407564175317956990
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) - (⌊1 / (f1 (n + 1) - f1 n)⌋ - 1)

end

end A342712.P2407564175317956990

namespace A342712

/-- `a(n-1)+n-(floor(1/Δ[sqrt(n)])-1)` -/
def P2407564175317956990.Spec : Prop :=
  ∀ n, P2407564175317956990.a n = A342712 (n + 1)

end A342712

/-! ## A342712.P7797550810728835391

`n-(floor(1/Δ[sqrt(n)])-1-a(n-1))` with `a(0)=0`
-/

namespace A342712.P7797550810728835391
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (⌊1 / (f1 (n + 1) - f1 n)⌋ - 1 - a (n - 1))

end

end A342712.P7797550810728835391

namespace A342712

/-- `n-(floor(1/Δ[sqrt(n)])-1-a(n-1))` -/
def P7797550810728835391.Spec : Prop :=
  ∀ n, P7797550810728835391.a n = A342712 (n + 1)

end A342712

/-! ## A342712.P12600703465296733646

`∑[floor((a(a(n-1))-1+n)/2)]-3` with `a(0)=3, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A342712.P12600703465296733646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 0, 1, 1] fun n f1 =>
  ⌊(f1 (f1 (n - 1)).toNat - 1 + (n : ℤ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A342712.P12600703465296733646

namespace A342712

/-- `∑[floor((a(a(n-1))-1+n)/2)]-3` -/
def P12600703465296733646.Spec : Prop :=
  ∀ n, P12600703465296733646.a n = A342712 (n + 1)

end A342712

/-! ## A342712.P9028086484898058113

`abs(∑[n-A055086(n)])`
-/

namespace A342712.P9028086484898058113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A342712.P9028086484898058113

namespace A342712

/-- `abs(∑[n-A055086(n)])` -/
def P9028086484898058113.Spec : Prop :=
  ∀ n, P9028086484898058113.a n = A342712 (n + 1)

end A342712

/-! ## A342712.P729118729904048895

`abs(∑[1-A000267(n)+n])`
-/

namespace A342712.P729118729904048895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000267 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A342712.P729118729904048895

namespace A342712

/-- `abs(∑[1-A000267(n)+n])` -/
def P729118729904048895.Spec : Prop :=
  ∀ n, P729118729904048895.a n = A342712 (n + 1)

end A342712

/-! ## A342712.P17318586642934694313

`∑[n+2]-∑[A027434(n+1)]`
-/

namespace A342712.P17318586642934694313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A342712.P17318586642934694313

namespace A342712

/-- `∑[n+2]-∑[A027434(n+1)]` -/
def P17318586642934694313.Spec : Prop :=
  ∀ n, P17318586642934694313.a n = A342712 (n + 1)

end A342712

/-! ## A342712.P16134403977553462699

`A000217(n+1)-∑[A172471(2*n+1)]`
-/

namespace A342712.P16134403977553462699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342712.P16134403977553462699

namespace A342712

/-- `A000217(n+1)-∑[A172471(2*n+1)]` -/
def P16134403977553462699.Spec : Prop :=
  ∀ n, P16134403977553462699.a n = A342712 (n + 1)

end A342712

/-!
# A342713: Partition the integers from 1 to n into three groups with consecutive numbers, then a(n) is the maximum value of the sum of the numbers in the second group multiplied by the minimum of the sum of the numbers in the first and third groups.

The programs for A342713, there is no canonical definition to state claims against.
-/

/-! ## A342713.P8161748964236153827

`A352827(∑[∑[A239537(n+1)]])`
-/

namespace A342713.P8161748964236153827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352827 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342713.P8161748964236153827

/-! ## A342713.P14917770815734861250

`A124866(or(A008245(n), A336138(n)))`
-/

namespace A342713.P14917770815734861250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124866 (Int.lor (A008245 n) (A336138 n)).toNat

end

end A342713.P14917770815734861250

/-!
# A342715: Frobenius number of the lower Wythoff sequence (A000201), starting with the n-th term.

The programs for A342715, there is no canonical definition to state claims against.
-/

/-! ## A342715.P4189606990533216582

`or(A161915(3*n+4)+2, A189993(n+1))`
-/

namespace A342715.P4189606990533216582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161915 (3 * n + 4) + 2) (A189993 (n + 1))

end

end A342715.P4189606990533216582

/-! ## A342715.P9485660841298434032

`A246355(A284395(n+1)+A284394(n+1))`
-/

namespace A342715.P9485660841298434032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246355 (A284395 (n + 1) + A284394 (n + 1)).toNat

end

end A342715.P9485660841298434032

/-!
# A342717: Primes q such that 15*q-4, 15*q-2, 15*q+2 and 15*q+4 are all primes.

The programs for A342717, there is no canonical definition to state claims against.
-/

/-! ## A342717.P15095084551894693688

`p?[A112540(n+1)]`
-/

namespace A342717.P15095084551894693688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342717.P15095084551894693688

/-! ## A342717.P6559684950296612537

`ceil(A177032(n+1)/15)`
-/

namespace A342717.P6559684950296612537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A177032 (n + 1) : ℚ) / 15⌉

end

end A342717.P6559684950296612537

/-! ## A342717.P873051245793794153

`A001748(A176002(n+1))/3`
-/

namespace A342717.P873051245793794153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A176002 (n + 1)).toNat : ℚ) / 3

end

end A342717.P873051245793794153

/-!
# A342718: a(1) = 0; for n >= 2, a(n) is the number of iterations needed for the map x -> A000203(x)/A000005(x) to reach a number that is not an integer, when starting from x = n.

The programs for A342718, there is no canonical definition to state claims against.
-/

/-! ## A342718.P4767892353119239874

`A001222(∑[A338899(n+1)%A133970(2*n+3)])`
-/

namespace A342718.P4767892353119239874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338899 (n + 1)) (A133970 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342718.P4767892353119239874

/-!
# A342719: Array read by ascending antidiagonals: T(k, n) is the sum of the consecutive positive integers from 1 to (n - 1)*k placed along the perimeter of an n-th order perimeter-magic k-gon.

The programs for A342719, there is no canonical definition to state claims against.
-/

/-! ## A342719.P15390853537569125021

`C(A173395(comp[∑[n]])+1, 2)`
-/

namespace A342719.P15390853537569125021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A173395 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat 2

end

end A342719.P15390853537569125021

/-! ## A342719.P13554702831660324005

`A000217(A173395(comp[∑[n]]))`
-/

namespace A342719.P13554702831660324005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A173395 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A342719.P13554702831660324005

/-! ## A342719.P4758099716977722260

`A253145(A173395(n+1)+A002260(n+1))`
-/

namespace A342719.P4758099716977722260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A173395 (n + 1) + A002260 (n + 1)).toNat

end

end A342719.P4758099716977722260

/-! ## A342719.P4228799684877089547

`A000096(A173395(n+1)+A002260(n+1))+1`
-/

namespace A342719.P4228799684877089547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A173395 (n + 1) + A002260 (n + 1)).toNat + 1

end

end A342719.P4228799684877089547

/-! ## A342719.P13588322014517410172

`A000217(A002260(n+1)+A173395(n+1)+1)`
-/

namespace A342719.P13588322014517410172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1) + (A173395 (n + 1) + 1)).toNat

end

end A342719.P13588322014517410172

/-!
# A342720: a(n) is the number of concave integer quadrilaterals (up to congruence) with integer side lengths a,b,c,d with n=Max(a,b,c,d) and integer diagonals e,f.

The programs for A342720, there is no canonical definition to state claims against.
-/

/-! ## A342720.P1032284159491787724

`A344528(n+1)-A342722(n+1)`
-/

namespace A342720.P1032284159491787724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344528 (n + 1) - A342722 (n + 1)

end

end A342720.P1032284159491787724

/-!
# A342721: a(n) is the number of concave integer quadrilaterals (up to congruence) with integer side lengths a,b,c,d with n=Max(a,b,c,d), integer diagonals e,f and integer area.

The programs for A342721, there is no canonical definition to state claims against.
-/

/-! ## A342721.P10190840164511291773

`A344529(n+1)-A342723(n+1)`
-/

namespace A342721.P10190840164511291773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344529 (n + 1) - A342723 (n + 1)

end

end A342721.P10190840164511291773

/-!
# A342722: a(n) is the number of convex integer quadrilaterals (up to congruence) with integer side lengths a,b,c,d with n=Max(a,b,c,d) and integer diagonals e,f.

The programs for A342722, there is no canonical definition to state claims against.
-/

/-! ## A342722.P16932707468885739601

`A344528(n+1)-A342720(n+1)`
-/

namespace A342722.P16932707468885739601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344528 (n + 1) - A342720 (n + 1)

end

end A342722.P16932707468885739601

/-! ## A342722.P4576504031452869817

`A344528(n+1)-A342721(n+1)^n!`
-/

namespace A342722.P4576504031452869817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344528 (n + 1) - A342721 (n + 1) ^ Nat.factorial n

end

end A342722.P4576504031452869817

/-! ## A342722.P1261587877378190653

`A344528(n+1)-A277165(A001045(n))`
-/

namespace A342722.P1261587877378190653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344528 (n + 1) - A277165 (A001045 n).toNat

end

end A342722.P1261587877378190653

/-! ## A342722.P12075381911766754284

`A344528(n+1)-A079978(A219555(n))`
-/

namespace A342722.P12075381911766754284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344528 (n + 1) - A079978 (A219555 n).toNat

end

end A342722.P12075381911766754284

/-! ## A342722.P9250910219384938158

`A344528(n+1)+A016232(A223041(n+1))`
-/

namespace A342722.P9250910219384938158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344528 (n + 1) + A016232 (A223041 (n + 1)).toNat

end

end A342722.P9250910219384938158

/-!
# A342723: a(n) is the number of convex integer quadrilaterals (up to congruence) with integer side lengths a,b,c,d with n=Max(a,b,c,d), integer diagonals e,f and integer area.

The programs for A342723, there is no canonical definition to state claims against.
-/

/-! ## A342723.P5913106156998176990

`A344529(n+1)-A342721(n+1)`
-/

namespace A342723.P5913106156998176990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344529 (n + 1) - A342721 (n + 1)

end

end A342723.P5913106156998176990

/-! ## A342723.P18188379603247307633

`A102669(A316355(n)^A344529(n+1))`
-/

namespace A342723.P18188379603247307633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (SequenceMachineLib.roundAway ((A316355 n : ℚ) ^ (A344529 (n + 1) : ℤ))).toNat

end

end A342723.P18188379603247307633

/-! ## A342723.P2666472445657276596

`A102669(A000720(n+1)^A344529(n+1))`
-/

namespace A342723.P2666472445657276596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (SequenceMachineLib.roundAway ((A000720 (n + 1) : ℚ) ^ (A344529 (n + 1) : ℤ))).toNat

end

end A342723.P2666472445657276596

/-! ## A342723.P4515036792909047604

`A055640(A344529(n+1)^A167430(n+1))`
-/

namespace A342723.P4515036792909047604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway ((A344529 (n + 1) : ℚ) ^ (A167430 (n + 1) : ℤ))).toNat

end

end A342723.P4515036792909047604

/-! ## A342723.P6553484477774450703

`A055640(A344529(n+1)^A342087(n+1))`
-/

namespace A342723.P6553484477774450703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway ((A344529 (n + 1) : ℚ) ^ (A342087 (n + 1) : ℤ))).toNat

end

end A342723.P6553484477774450703

/-!
# A342724: a(n) = Sum_{primes p <= 2n} of g(frac(n/p)), where g(t) = [0 if t = 0, -1 if 0 < t < 1/2, 1 if t >= 1/2], and where frac(x) denotes the fractional part.

The programs for A342724, there is no canonical definition to state claims against.
-/

/-! ## A342724.P14821084072250085692

`A165074(xor(A057499(n+1), A136467(n)))`
-/

namespace A342724.P14821084072250085692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165074 (Int.xor (A057499 (n + 1)) (A136467 n)).toNat

end

end A342724.P14821084072250085692

/-! ## A342724.P14637071907348628678

`A300655(A016116(n)+(n+1)/2^val(n+1, 2))`
-/

namespace A342724.P14637071907348628678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300655 (SequenceMachineLib.roundAway ((A016116 n : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A342724.P14637071907348628678

/-! ## A342724.P11035225480522835872

`A300655(A016116(n)+(n+1)/(or(n, n+1)-n))`
-/

namespace A342724.P11035225480522835872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300655 (SequenceMachineLib.roundAway ((A016116 n : ℚ) + (n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A342724.P11035225480522835872

/-! ## A342724.P6003398974241707345

`A300655(A016116(n)+(n+1)/xor(n, or(n, n+1)))`
-/

namespace A342724.P6003398974241707345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300655 (SequenceMachineLib.roundAway ((A016116 n : ℚ) + (n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

end

end A342724.P6003398974241707345

/-! ## A342724.P4352321552123081226

`A300655(A016116(n)+(n+1)*2^-val(n+1, 2))`
-/

namespace A342724.P4352321552123081226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300655 (SequenceMachineLib.roundAway ((A016116 n : ℚ) + (n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat

end

end A342724.P4352321552123081226

/-!
# A342725: Numbers that are palindromic in base i-1.

The programs for A342725, there is no canonical definition to state claims against.
-/

/-! ## A342725.P11154419308670175587

`A351537((n+2)*n!)%A000079(n)²`
-/

namespace A342725.P11154419308670175587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351537 ((n + 2) * Nat.factorial n)) (A000079 n ^ 2)

end

end A342725.P11154419308670175587

/-! ## A342725.P368632351755391367

`A379040(A268339(n+1)+A002828(n))`
-/

namespace A342725.P368632351755391367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379040 (A268339 (n + 1) + A002828 n).toNat

end

end A342725.P368632351755391367

/-!
# A342726: Niven numbers in base i-1: numbers that are divisible by the sum of their digits in base i-1.

The programs for A342726, there is no canonical definition to state claims against.
-/

/-! ## A342726.P2709931370122356675

`eq[lcm(n, A066323(n)), A028310(n)]`
-/

namespace A342726.P2709931370122356675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A066323 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342726.P2709931370122356675

/-! ## A342726.P14023711275524873870

`record[A008611(A088226(A085900(n)))]`
-/

namespace A342726.P14023711275524873870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A088226 (A085900 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342726.P14023711275524873870

/-!
# A342728: a(n) is the least number k such that A066323(k) = n.

The programs for A342728, the canonical program `A342728.P4587133903875537906` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342728 has offset 0).

The definition of A342728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342728.P4587133903875537906

`a(n-1)+16*a(n-6)-16*a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A342728

/-- `a(n-1)+16*a(n-6)-16*a(n-7)` -/
def P4587133903875537906.Spec : Prop :=
  ∀ n, P4587133903875537906.a n = A342728 n

theorem P4587133903875537906.correct : P4587133903875537906.Spec := by
  intro n
  simp only [A342728]

end A342728

/-! ## A342728.P13928820396534621295

`lt[n, A090987(val(n+1, 2)+2)+1]`
-/

namespace A342728.P13928820396534621295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090987 (SequenceMachineLib.valuation (n + 1) 2 + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A342728.P13928820396534621295

namespace A342728

/-- `lt[n, A090987(val(n+1, 2)+2)+1]` -/
def P13928820396534621295.Spec : Prop :=
  ∀ n, (P13928820396534621295.a n : ℤ) = A342728 n

end A342728

/-! ## A342728.P12699232861897036500

`∑[∑[A037213(A327552(n))]]`
-/

namespace A342728.P12699232861897036500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A327552 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342728.P12699232861897036500

namespace A342728

/-- `∑[∑[A037213(A327552(n))]]` -/
def P12699232861897036500.Spec : Prop :=
  ∀ n, P12699232861897036500.a n = A342728 n

end A342728

/-! ## A342728.P3078903086631280597

`eq[A228298(n+1), A384049(n+1)]`
-/

namespace A342728.P3078903086631280597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342728.P3078903086631280597

namespace A342728

/-- `eq[A228298(n+1), A384049(n+1)]` -/
def P3078903086631280597.Spec : Prop :=
  ∀ n, (P3078903086631280597.a n : ℤ) = A342728 n

end A342728

/-! ## A342728.P11709262269891833671

`eq[A110011(n+1), A375931(n+1)]`
-/

namespace A342728.P11709262269891833671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342728.P11709262269891833671

namespace A342728

/-- `eq[A110011(n+1), A375931(n+1)]` -/
def P11709262269891833671.Spec : Prop :=
  ∀ n, (P11709262269891833671.a n : ℤ) = A342728 n

end A342728

/-!
# A342729: Self numbers in base i-1: numbers not of the form k + A066323(k).

The programs for A342729, there is no canonical definition to state claims against.
-/

/-! ## A342729.P8781541290549602654

`∑[A276132(A319990(n+1))]-1`
-/

namespace A342729.P8781541290549602654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276132 (A319990 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A342729.P8781541290549602654

/-! ## A342729.P6855012567129897327

`record[A339826(n+1)-A214516(n+1)]`
-/

namespace A342729.P6855012567129897327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339826 (n + 1) - A214516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342729.P6855012567129897327

/-! ## A342729.P10397692022191418570

`∑[A000001(A034017(n+2)²)]`
-/

namespace A342729.P10397692022191418570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A034017 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342729.P10397692022191418570

/-! ## A342729.P7903963962586342031

`∑[A040740(∑[A002905(n+1)])]`
-/

namespace A342729.P7903963962586342031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002905 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040740 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342729.P7903963962586342031

/-! ## A342729.P8137358616565512737

`∑[A375446(∑{e}[A074854(2*n+1)+1, #])]`
-/

namespace A342729.P8137358616565512737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074854 (2 * n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375446 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342729.P8137358616565512737

/-!
# A342733: Positions of words in A341334 in which #0's < #1's.

The programs for A342733, there is no canonical definition to state claims against.
-/

/-! ## A342733.P9510182693970893099

`∑[A123564(A283406(n))]`
-/

namespace A342733.P9510182693970893099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123564 (A283406 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342733.P9510182693970893099

/-! ## A342733.P1791195569782258214

`A001511(A205108(2*n+1)+1)+2*n`
-/

namespace A342733.P1791195569782258214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A205108 (2 * n + 1) + 1).toNat + (2 * n : ℤ)

end

end A342733.P1791195569782258214

/-! ## A342733.P17174292085981206577

`A175077(A011972(n))+A005408(n)`
-/

namespace A342733.P17174292085981206577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175077 (A011972 n).toNat + A005408 n

end

end A342733.P17174292085981206577

/-! ## A342733.P17597665281027664793

`A103517(n)+A080339(A062092(n))`
-/

namespace A342733.P17597665281027664793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + A080339 (A062092 n).toNat

end

end A342733.P17597665281027664793

/-! ## A342733.P17489843958887549194

`A103517(n)+A008683(A089275(n+1))`
-/

namespace A342733.P17489843958887549194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + A008683 (A089275 (n + 1)).toNat

end

end A342733.P17489843958887549194

/-!
# A342734: Positions of words in A341334 in which #0's > #1's.

The programs for A342734, there is no canonical definition to state claims against.
-/

/-! ## A342734.P2083664250166117534

`eq[A001285(n+2), A124794(A184155(2*(n+1)))]`
-/

namespace A342734.P2083664250166117534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A184155 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342734.P2083664250166117534

/-!
# A342735: Positions of words in A341334 in which first digit = last digit.

The programs for A342735, there is no canonical definition to state claims against.
-/

/-! ## A342735.P17229078637666360851

`∪[A342742(n+1), A342745(n+1)]`
-/

namespace A342735.P17229078637666360851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342735.P17229078637666360851

/-! ## A342735.P11058986635242710690

`∪[3*comp[A342741(n+1)]+1, A342745(n+1)]`
-/

namespace A342735.P11058986635242710690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342741 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A342735.P11058986635242710690

/-! ## A342735.P16654891937621019223

`eq[1, and(1, A342749(n+1))]+1`
-/

namespace A342735.P16654891937621019223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A342749 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A342735.P16654891937621019223

/-! ## A342735.P11808229990062212789

`record[and(1, A342749(n+1))*A000027(n+1)]`
-/

namespace A342735.P11808229990062212789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A342749 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342735.P11808229990062212789

/-! ## A342735.P8221798989557045843

`record[and(1, A342749(n+1))*A008619(2*n)]`
-/

namespace A342735.P8221798989557045843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A342749 (n + 1)) * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342735.P8221798989557045843

/-!
# A342736: Positions of words in A341334 in which first digit != last digit.

The programs for A342736, there is no canonical definition to state claims against.
-/

/-! ## A342736.P15665508035575111261

`comp[A342735(n+1)-1]+1`
-/

namespace A342736.P15665508035575111261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342735 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A342736.P15665508035575111261

/-! ## A342736.P5704853627387149657

`∪[A342743(n+1), A342744(n+1)]`
-/

namespace A342736.P5704853627387149657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342736.P5704853627387149657

/-! ## A342736.P8624214979155304563

`comp[∪[A342735(n+1), A006003(n)²]]`
-/

namespace A342736.P8624214979155304563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342735 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A342736.P8624214979155304563

/-! ## A342736.P1447015292728142379

`comp[A342735(n+1)%A047417(n+5)]`
-/

namespace A342736.P1447015292728142379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342735 (n + 1)) (A047417 (n + 5))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A342736.P1447015292728142379

/-! ## A342736.P9099245719989977618

`comp[∪[A006003(2*n), A342735(n+1)]]`
-/

namespace A342736.P9099245719989977618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342735 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A342736.P9099245719989977618

/-! ## A342736.P4706026501598228771

`∪[3*A342741(n+1)+1, A342744(n+1)]`
-/

namespace A342736.P4706026501598228771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A342741 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342736.P4706026501598228771

/-! ## A342736.P3954588696006501431

`∪[ceil(3*(A342740(n+1)+1)/2), A342743(n+1)]`
-/

namespace A342736.P3954588696006501431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * (A342740 (n + 1) + 1) : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342736.P3954588696006501431

/-! ## A342736.P12692735370156254779

`∪[A016777(A342741(n+1)), A342744(n+1)]`
-/

namespace A342736.P12692735370156254779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A342741 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342736.P12692735370156254779

/-! ## A342736.P2637073949468947315

`∪[A114119(A342740(n+1)), A342743(n+1)]`
-/

namespace A342736.P2637073949468947315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 (A342740 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342736.P2637073949468947315

/-! ## A342736.P811766403875509694

`∪[A342744(n+1), A047234(A342745(n+2))]`
-/

namespace A342736.P811766403875509694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047234 (A342745 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342736.P811766403875509694

/-!
# A342737: Number of wedged n-spheres in the homotopy type of the neighborhood complex of Kneser graph KG_{3,n}.

The programs for A342737, the canonical program `A342737.P2412814470534479791` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342737 has offset 0).

The definition of A342737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342737.P2412814470534479791

`1+(n+1)*(n+3)*(n+4)*(n+6)/4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A342737

/-- `1+(n+1)*(n+3)*(n+4)*(n+6)/4` -/
def P2412814470534479791.Spec : Prop :=
  ∀ n, P2412814470534479791.a n = (A342737 n : ℚ)

end A342737

/-! ## A342737.P17474844845932876225

`or(1, ∑[A058794(n+1)])`
-/

namespace A342737.P17474844845932876225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A342737.P17474844845932876225

namespace A342737

/-- `or(1, ∑[A058794(n+1)])` -/
def P17474844845932876225.Spec : Prop :=
  ∀ n, P17474844845932876225.a n = A342737 n

end A342737

/-! ## A342737.P11093744571222351142

`abs(A104473(n)+Δ[A008778(n)])`
-/

namespace A342737.P11093744571222351142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104473 n + (f1 (n + 1) - f1 n)|

end

end A342737.P11093744571222351142

namespace A342737

/-- `abs(A104473(n)+Δ[A008778(n)])` -/
def P11093744571222351142.Spec : Prop :=
  ∀ n, P11093744571222351142.a n = A342737 n

end A342737

/-! ## A342737.P15355333228165129692

`∑[A058794(n+1)+A000007(n)]`
-/

namespace A342737.P15355333228165129692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058794 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342737.P15355333228165129692

namespace A342737

/-- `∑[A058794(n+1)+A000007(n)]` -/
def P15355333228165129692.Spec : Prop :=
  ∀ n, P15355333228165129692.a n = A342737 n

end A342737

/-! ## A342737.P1577555812747763933

`or(1, A104473(n)+A034856(n+2))`
-/

namespace A342737.P1577555812747763933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A104473 n + A034856 (n + 2))

end

end A342737.P1577555812747763933

namespace A342737

/-- `or(1, A104473(n)+A034856(n+2))` -/
def P1577555812747763933.Spec : Prop :=
  ∀ n, P1577555812747763933.a n = A342737 n

end A342737

/-! ## A342737.P12963307256673783431

`A028387(∑[n+3])`
-/

namespace A342737.P12963307256673783431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A342737.P12963307256673783431

namespace A342737

/-- `A028387(∑[n+3])` -/
def P12963307256673783431.Spec : Prop :=
  ∀ n, P12963307256673783431.a n = A342737 n

end A342737

/-! ## A342737.P2868130283689708653

`sqrt(A062938(∑[n+3]))`
-/

namespace A342737.P2868130283689708653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062938 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A342737.P2868130283689708653

namespace A342737

/-- `sqrt(A062938(∑[n+3]))` -/
def P2868130283689708653.Spec : Prop :=
  ∀ n, P2868130283689708653.a n = (A342737 n : ℝ)

end A342737

/-! ## A342737.P5990585690005096256

`A111802(∑[n+3]+2)`
-/

namespace A342737.P5990585690005096256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111802 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A342737.P5990585690005096256

namespace A342737

/-- `A111802(∑[n+3]+2)` -/
def P5990585690005096256.Spec : Prop :=
  ∀ n, P5990585690005096256.a n = A342737 n

end A342737

/-! ## A342737.P18376143076021111633

`A165900(∑[n+3]+2)`
-/

namespace A342737.P18376143076021111633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A342737.P18376143076021111633

namespace A342737

/-- `A165900(∑[n+3]+2)` -/
def P18376143076021111633.Spec : Prop :=
  ∀ n, P18376143076021111633.a n = A342737 n

end A342737

/-! ## A342737.P3711372768906965366

`A199972(∑[n+3]+2)`
-/

namespace A342737.P3711372768906965366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199972 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A342737.P3711372768906965366

namespace A342737

/-- `A199972(∑[n+3]+2)` -/
def P3711372768906965366.Spec : Prop :=
  ∀ n, P3711372768906965366.a n = A342737 n

end A342737

/-! ## A342737.P9983258686174243372

`A090288(∑[n+3])/2`
-/

namespace A342737.P9983258686174243372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090288 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A342737.P9983258686174243372

namespace A342737

/-- `A090288(∑[n+3])/2` -/
def P9983258686174243372.Spec : Prop :=
  ∀ n, P9983258686174243372.a n = (A342737 n : ℚ)

end A342737

/-! ## A342737.P14804851910579338516

`or(1, A028552(∑[n+3]))`
-/

namespace A342737.P14804851910579338516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A028552 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A342737.P14804851910579338516

namespace A342737

/-- `or(1, A028552(∑[n+3]))` -/
def P14804851910579338516.Spec : Prop :=
  ∀ n, P14804851910579338516.a n = A342737 n

end A342737

/-! ## A342737.P16631768990061382829

`(A139570(∑[n+3])+2)/2`
-/

namespace A342737.P16631768990061382829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139570 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 : ℚ) / 2

end

end A342737.P16631768990061382829

namespace A342737

/-- `(A139570(∑[n+3])+2)/2` -/
def P16631768990061382829.Spec : Prop :=
  ∀ n, P16631768990061382829.a n = (A342737 n : ℚ)

end A342737

/-! ## A342737.P13080369959225878922

`A211441(∑[n+3]+1)/3`
-/

namespace A342737.P13080369959225878922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211441 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 3

end

end A342737.P13080369959225878922

namespace A342737

/-- `A211441(∑[n+3]+1)/3` -/
def P13080369959225878922.Spec : Prop :=
  ∀ n, P13080369959225878922.a n = (A342737 n : ℚ)

end A342737

/-! ## A342737.P12780093160227588541

`round(sqrt(A052762(∑[n+3]+3)))`
-/

namespace A342737.P12780093160227588541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A052762 (∑ j ∈ Finset.range (n + 1), f1 j + 3) : ℝ))

end

end A342737.P12780093160227588541

namespace A342737

/-- `round(sqrt(A052762(∑[n+3]+3)))` -/
def P12780093160227588541.Spec : Prop :=
  ∀ n, P12780093160227588541.a n = A342737 n

end A342737

/-! ## A342737.P16099053596005818077

`or(1, A028387(A055998(n+1)))`
-/

namespace A342737.P16099053596005818077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A028387 (A055998 (n + 1)).toNat)

end

end A342737.P16099053596005818077

namespace A342737

/-- `or(1, A028387(A055998(n+1)))` -/
def P16099053596005818077.Spec : Prop :=
  ∀ n, P16099053596005818077.a n = A342737 n

end A342737

/-!
# A342738: Primes p such that A001414(p+1) = A001414(p-1) + 1.

The programs for A342738, there is no canonical definition to state claims against.
-/

/-! ## A342738.P18173051045762370946

`p?[2*A228126(n+1)+1]`
-/

namespace A342738.P18173051045762370946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228126 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342738.P18173051045762370946

/-! ## A342738.P12885997245703753387

`A045344(eq[A210936(n+1)+1, A210934(n+1)])`
-/

namespace A342738.P12885997245703753387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210936 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A342738.P12885997245703753387

/-! ## A342738.P5239860392718305176

`record[A088836(A228126(n+1))]`
-/

namespace A342738.P5239860392718305176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088836 (A228126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342738.P5239860392718305176

/-! ## A342738.P13960261764534101221

`record[A014963(2*A228126(n+1)+1)]`
-/

namespace A342738.P13960261764534101221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A228126 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342738.P13960261764534101221

/-!
# A342739: Length of n-th word in the ordering A341334 of all binary words.

The programs for A342739, there is no canonical definition to state claims against.
-/

/-! ## A342739.P2162301578045565444

`floor(log2(A254104(n+2)))`
-/

namespace A342739.P2162301578045565444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A254104 (n + 2)).toNat

end

end A342739.P2162301578045565444

/-! ## A342739.P4710076624176789547

`a(A009947(n-2))+1` with `a(0)=1, a(1)=1`
-/

namespace A342739.P4710076624176789547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A009947 (n - 2)).toNat + 1

end

end A342739.P4710076624176789547

/-! ## A342739.P7376134325093664661

`A000523(A254104(n+2))`
-/

namespace A342739.P7376134325093664661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A254104 (n + 2)).toNat

end

end A342739.P7376134325093664661

/-! ## A342739.P1480504838962504331

`A137734(n)+A059778((n+1)^3)`
-/

namespace A342739.P1480504838962504331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 n + A059778 ((n + 1) ^ 3)

end

end A342739.P1480504838962504331

/-! ## A342739.P15586688594540051138

`A137734(n)-A070109(A000032(n))`
-/

namespace A342739.P15586688594540051138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 n - A070109 (A000032 n).toNat

end

end A342739.P15586688594540051138

/-!
# A342740: Positions in A341334 of words that end with 0.

The programs for A342740, there is no canonical definition to state claims against.
-/

/-! ## A342740.P2495949165306578525

`comp[A342741(n+1)-1]+1`
-/

namespace A342740.P2495949165306578525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342741 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A342740.P2495949165306578525

/-! ## A342740.P221296875965909342

`comp[floor(A342743(n+1)/3)-1]+1`
-/

namespace A342740.P221296875965909342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342743 (n + 1) : ℚ) / 3⌋ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A342740.P221296875965909342

/-! ## A342740.P10271968123812311679

`∪[A342742(n+1), A342744(n+1)]`
-/

namespace A342740.P10271968123812311679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342740.P10271968123812311679

/-! ## A342740.P9577329124157819410

`comp[∪[A342743(n+1), A342745(n+1)]-1]+1`
-/

namespace A342740.P9577329124157819410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342743 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342745 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A342740.P9577329124157819410

/-! ## A342740.P7936265648361130112

`∪[3*comp[A342741(n+1)]+1, A342744(n+1)]`
-/

namespace A342740.P7936265648361130112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342741 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A342740.P7936265648361130112

/-! ## A342740.P17645369141570106115

`lt[A254104(n+1), A006068(A254104(n+1))]`
-/

namespace A342740.P17645369141570106115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A254104 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342740.P17645369141570106115

/-! ## A342740.P7818637146830086404

`∪[A342742(n+1), A080513(A342742(n+2))]`
-/

namespace A342740.P7818637146830086404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A342742 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342740.P7818637146830086404

/-! ## A342740.P4044256788549594186

`A004396(A342744(n+1))-1`
-/

namespace A342740.P4044256788549594186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A342744 (n + 1)).toNat - 1

end

end A342740.P4044256788549594186

/-! ## A342740.P477588056451449599

`A004523(A342744(n+1)-1)`
-/

namespace A342740.P477588056451449599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A342744 (n + 1) - 1).toNat

end

end A342740.P477588056451449599

/-! ## A342740.P14833227702643850830

`A002264(2*(A342744(n+1)-1))`
-/

namespace A342740.P14833227702643850830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * (A342744 (n + 1) - 1)).toNat

end

end A342740.P14833227702643850830

/-!
# A342741: Positions of words in A341334 that end with 1.

The programs for A342741, there is no canonical definition to state claims against.
-/

/-! ## A342741.P241039733889856181

`∪[A342743(n+1), A342745(n+1)]`
-/

namespace A342741.P241039733889856181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342741.P241039733889856181

/-! ## A342741.P12107141637363365278

`lt[A006068(A254104(n+1)), A254104(n+1)]`
-/

namespace A342741.P12107141637363365278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A254104 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342741.P12107141637363365278

/-! ## A342741.P18191517953787227718

`∪[A342745(n+1), A047234(A342745(n+2))]`
-/

namespace A342741.P18191517953787227718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047234 (A342745 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342741.P18191517953787227718

/-! ## A342741.P15416086419448303567

`∪[A342745(n+1), A004523(A342745(n+2)-1)]`
-/

namespace A342741.P15416086419448303567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A342745 (n + 2) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342741.P15416086419448303567

/-! ## A342741.P2662364498610578261

`A004396(A342745(n+2))-1`
-/

namespace A342741.P2662364498610578261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A342745 (n + 2)).toNat - 1

end

end A342741.P2662364498610578261

/-! ## A342741.P3737367991388983458

`A004523(A342745(n+2)-1)`
-/

namespace A342741.P3737367991388983458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A342745 (n + 2) - 1).toNat

end

end A342741.P3737367991388983458

/-! ## A342741.P10535914989869471878

`∑[A004396(Δ[A342745(n+1)])]`
-/

namespace A342741.P10535914989869471878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342745 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342741.P10535914989869471878

/-! ## A342741.P7131457788652385873

`∑[A005185(Δ[A342745(n+1)])]`
-/

namespace A342741.P7131457788652385873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342745 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342741.P7131457788652385873

/-! ## A342741.P6053059614020758828

`∑[A005206(Δ[A342745(n+1)])]`
-/

namespace A342741.P6053059614020758828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342745 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342741.P6053059614020758828

/-! ## A342741.P14459824731224420963

`∑[A123070(Δ[A342745(n+1)])]`
-/

namespace A342741.P14459824731224420963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342745 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123070 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342741.P14459824731224420963

/-!
# A342742: Positions of words in A341334 such that first digit = 0 and last digit = 0.

The programs for A342742, there is no canonical definition to state claims against.
-/

/-! ## A342742.P7033822733289687853

`3*comp[A342741(n+1)]+1`
-/

namespace A342742.P7033822733289687853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A342742.P7033822733289687853

/-! ## A342742.P15767189126972711440

`A016777(comp[A342741(n+1)])`
-/

namespace A342742.P15767189126972711440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342741 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A342742.P15767189126972711440

/-! ## A342742.P4101213328498960006

`A008585(comp[A342741(n+1)])+1`
-/

namespace A342742.P4101213328498960006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342741 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A342742.P4101213328498960006

/-! ## A342742.P5322785740857417940

`A016777(comp[floor(A342743(n+1)/3)])`
-/

namespace A342742.P5322785740857417940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342743 (n + 1) : ℚ) / 3⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A342742.P5322785740857417940

/-! ## A342742.P4854834659121052240

`∪[A060883(3*n), A016777(A342740(n+1))]`
-/

namespace A342742.P4854834659121052240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060883 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A342740 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342742.P4854834659121052240

/-! ## A342742.P14031792845753058356

`A016777(∪[A342740(n+1), n*A016777(n)])`
-/

namespace A342742.P14031792845753058356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016777 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A342742.P14031792845753058356

/-!
# A342743: Positions of words in A341334 such that first digit = 0 and last digit = 1.

The programs for A342743, there is no canonical definition to state claims against.
-/

/-! ## A342743.P7940167100538876505

`3*A342741(n+1)+1`
-/

namespace A342743.P7940167100538876505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A342741 (n + 1) + 1

end

end A342743.P7940167100538876505

/-! ## A342743.P1692850494179765565

`A016777(A342741(n+1))`
-/

namespace A342743.P1692850494179765565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A342741 (n + 1)).toNat

end

end A342743.P1692850494179765565

/-! ## A342743.P16972661358067804930

`A047234(A342745(n+2))`
-/

namespace A342743.P16972661358067804930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047234 (A342745 (n + 2)).toNat

end

end A342743.P16972661358067804930

/-! ## A342743.P5249299602182140356

`A026488(A342741(n+1)+2)`
-/

namespace A342743.P5249299602182140356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026488 (A342741 (n + 1) + 2).toNat

end

end A342743.P5249299602182140356

/-! ## A342743.P12122629606782349727

`A033627(A342741(n+1)+2)`
-/

namespace A342743.P12122629606782349727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A342741 (n + 1) + 2).toNat

end

end A342743.P12122629606782349727

/-! ## A342743.P6989755132105006033

`A112414(A342741(n+1)-2)`
-/

namespace A342743.P6989755132105006033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112414 (A342741 (n + 1) - 2).toNat

end

end A342743.P6989755132105006033

/-! ## A342743.P1201234893302509989

`A020725(3*A342741(n+1))`
-/

namespace A342743.P1201234893302509989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (3 * A342741 (n + 1)).toNat

end

end A342743.P1201234893302509989

/-! ## A342743.P2968646446658190066

`A030118(3*A342741(n+1))`
-/

namespace A342743.P2968646446658190066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030118 (3 * A342741 (n + 1)).toNat

end

end A342743.P2968646446658190066

/-! ## A342743.P7887204346070515437

`A065475(3*A342741(n+1))`
-/

namespace A342743.P7887204346070515437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (3 * A342741 (n + 1)).toNat

end

end A342743.P7887204346070515437

/-! ## A342743.P2856596631997498121

`A008619(6*A342741(n+1))`
-/

namespace A342743.P2856596631997498121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (6 * A342741 (n + 1)).toNat

end

end A342743.P2856596631997498121

/-!
# A342744: Positions of words in A341334 such that first digit = 1 and last digit = 0.

The programs for A342744, there is no canonical definition to state claims against.
-/

/-! ## A342744.P6095354682012430321

`ceil(3*(A342740(n+1)+1)/2)`
-/

namespace A342744.P6095354682012430321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * (A342740 (n + 1) + 1) : ℚ) / 2⌉

end

end A342744.P6095354682012430321

/-! ## A342744.P17296559607758743026

`A114119(A342740(n+1))`
-/

namespace A342744.P17296559607758743026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 (A342740 (n + 1)).toNat

end

end A342744.P17296559607758743026

/-! ## A342744.P15290221769356304508

`A007494(A342740(n+1)+1)`
-/

namespace A342744.P15290221769356304508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A342740 (n + 1) + 1).toNat

end

end A342744.P15290221769356304508

/-! ## A342744.P867752204853076709

`A267528(A342740(n+1)+2)`
-/

namespace A342744.P867752204853076709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (A342740 (n + 1) + 2).toNat

end

end A342744.P867752204853076709

/-! ## A342744.P9083563702988791582

`A266977(3*A342740(n+1))`
-/

namespace A342744.P9083563702988791582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (3 * A342740 (n + 1)).toNat

end

end A342744.P9083563702988791582

/-! ## A342744.P11998655781942227296

`A035936(A342740(n+1)²)+2`
-/

namespace A342744.P11998655781942227296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A342740 (n + 1) ^ 2).toNat + 2

end

end A342744.P11998655781942227296

/-! ## A342744.P13915831441982835535

`A001651(A342740(n+1)+1)+1`
-/

namespace A342744.P13915831441982835535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A342740 (n + 1) + 1).toNat + 1

end

end A342744.P13915831441982835535

/-! ## A342744.P4086684106021936478

`ceil(A008588(A342740(n+1)+1)/4)`
-/

namespace A342744.P4086684106021936478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008588 (A342740 (n + 1) + 1).toNat : ℚ) / 4⌉

end

end A342744.P4086684106021936478

/-! ## A342744.P9828833079246294436

`A008619(A022433(A342740(n+1)+1))`
-/

namespace A342744.P9828833079246294436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A022433 (A342740 (n + 1) + 1).toNat).toNat

end

end A342744.P9828833079246294436

/-! ## A342744.P13519615683410670489

`A080513(A008585(A342740(n+1))+1)`
-/

namespace A342744.P13519615683410670489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A008585 (A342740 (n + 1)).toNat + 1).toNat

end

end A342744.P13519615683410670489

/-!
# A342745: Positions of words in A341334 such that first digit = 1 and last digit = 1.

The programs for A342745, there is no canonical definition to state claims against.
-/

/-! ## A342745.P7178913815841993631

`filter[A342741(n+1), A204418(#)]`
-/

namespace A342745.P7178913815841993631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204418 (f1 j).toNat = 1) n)

end

end A342745.P7178913815841993631

/-! ## A342745.P16520024084725662891

`filter[A342741(n+1), A329682(#)]`
-/

namespace A342745.P16520024084725662891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329682 (f1 j).toNat = 1) n)

end

end A342745.P16520024084725662891

/-! ## A342745.P14715786683848473780

`eq[char[A342741(n+1)], A058281(n)]`
-/

namespace A342745.P14715786683848473780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342741 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A342745.P14715786683848473780

/-! ## A342745.P6585221726066401069

`filter[A342735(n+1), A204418(#)]`
-/

namespace A342745.P6585221726066401069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204418 (f1 j).toNat = 1) n)

end

end A342745.P6585221726066401069

/-! ## A342745.P450593475657019794

`filter[A342735(n+2), A329682(#)]`
-/

namespace A342745.P450593475657019794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342735 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329682 (f1 j).toNat = 1) n)

end

end A342745.P450593475657019794

/-!
# A342748: a(n) = sum of digits in the n-th word in A341334.

The programs for A342748, there is no canonical definition to state claims against.
-/

/-! ## A342748.P16574795883633580564

`∑{e}[A286631(n+2), #]-1`
-/

namespace A342748.P16574795883633580564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286631 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A342748.P16574795883633580564

/-! ## A342748.P8100875349697064340

`A252736(A286631(n+2))`
-/

namespace A342748.P8100875349697064340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A286631 (n + 2)).toNat

end

end A342748.P8100875349697064340

/-! ## A342748.P15416124961465654192

`A000120(A254104(n+2))-1`
-/

namespace A342748.P15416124961465654192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A254104 (n + 2)).toNat - 1

end

end A342748.P15416124961465654192

/-! ## A342748.P6997343826987850254

`A001222(A286631(n+2)/2)`
-/

namespace A342748.P6997343826987850254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A286631 (n + 2) : ℚ) / 2)).toNat

end

end A342748.P6997343826987850254

/-! ## A342748.P3015656936009182005

`A280193(2*n+1)+A001222(A286631(n+2))`
-/

namespace A342748.P3015656936009182005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A001222 (A286631 (n + 2)).toNat

end

end A342748.P3015656936009182005

/-!
# A342749: a(n) = number of runs in n-th word in A341334.

The programs for A342749, there is no canonical definition to state claims against.
-/

/-! ## A342749.P1218901310371654128

`A001221(A167706(4*n+1)+A113218(4*n+3))`
-/

namespace A342749.P1218901310371654128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A167706 (4 * n + 1) + A113218 (4 * n + 3)).toNat

end

end A342749.P1218901310371654128

/-! ## A342749.P11864096287508714855

`∑{e}[17-(64*n)², #]`
-/

namespace A342749.P11864096287508714855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - ((64 * n) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A342749.P11864096287508714855

/-! ## A342749.P13933017792496490064

`A064547(A089083(n+4))`
-/

namespace A342749.P13933017792496490064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A089083 (n + 4)).toNat

end

end A342749.P13933017792496490064

/-! ## A342749.P14379392779909717158

`A336691(10*A007533(n))`
-/

namespace A342749.P14379392779909717158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336691 (10 * A007533 n).toNat

end

end A342749.P14379392779909717158

/-! ## A342749.P16277222444484813952

`A000120(∑{e}[A078099(3*n+2), #])`
-/

namespace A342749.P16277222444484813952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078099 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A342749.P16277222444484813952

/-!
# A342751: Positions in A341334 of words in which #0's - #1's is odd.

The programs for A342751, there is no canonical definition to state claims against.
-/

/-! ## A342751.P13927708094245501045

`comp[A342752(n+1)-1]+1`
-/

namespace A342751.P13927708094245501045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342752 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A342751.P13927708094245501045

/-! ## A342751.P2035441443688583176

`eq[1, gcd(2, A342739(n+1))]+1`
-/

namespace A342751.P2035441443688583176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A342739 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A342751.P2035441443688583176

/-!
# A342752: Positions in A341334 of words in which #0's - #1's is even.

The programs for A342752, there is no canonical definition to state claims against.
-/

/-! ## A342752.P10841031484098927958

`eq[2, gcd(2, A342739(n+1))]+1`
-/

namespace A342752.P10841031484098927958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A342739 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A342752.P10841031484098927958

/-! ## A342752.P9712833345206512242

`eq[char[A342751(n+1)], A151622(n)]`
-/

namespace A342752.P9712833345206512242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342751 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A342752.P9712833345206512242

/-!
# A342753: Concatenation of all 01-words, in the order induced by A001651; see Comments.

The programs for A342753, there is no canonical definition to state claims against.
-/

/-! ## A342753.P8064712587816736775

`abs(A123192(A348553(n))^A028787(n+1))`
-/

namespace A342753.P8064712587816736775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A123192 (A348553 n).toNat : ℚ) ^ (A028787 (n + 1) : ℤ)|

end

end A342753.P8064712587816736775

/-! ## A342753.P9266206249617987024

`abs(A123192(A348553(n))^A192288(n+1))`
-/

namespace A342753.P9266206249617987024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A123192 (A348553 n).toNat : ℚ) ^ (A192288 (n + 1) : ℤ)|

end

end A342753.P9266206249617987024

/-! ## A342753.P15014898641247936868

`abs(A123192(A348553(n))^A192294(n+1))`
-/

namespace A342753.P15014898641247936868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A123192 (A348553 n).toNat : ℚ) ^ (A192294 (n + 1) : ℤ)|

end

end A342753.P15014898641247936868

/-! ## A342753.P7766665733197165736

`abs(A123192(A348553(n))^A276192(n+1))`
-/

namespace A342753.P7766665733197165736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A123192 (A348553 n).toNat : ℚ) ^ (A276192 (n + 1) : ℤ)|

end

end A342753.P7766665733197165736

/-! ## A342753.P2331202338206676389

`A123192(A348553(n))^A000005(A141056(n))`
-/

namespace A342753.P2331202338206676389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123192 (A348553 n).toNat : ℚ) ^ (A000005 (A141056 n).toNat : ℤ)

end

end A342753.P2331202338206676389

/-!
# A342757: Array read by ascending antidiagonals: T(k, n) is the minimum value of the magic constant in a perimeter-magic k-gon of order n.

The programs for A342757, there is no canonical definition to state claims against.
-/

/-! ## A342757.P10023515041002900636

`A342758(n+3)+1-A342819(n+3)`
-/

namespace A342757.P10023515041002900636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342758 (n + 3) + (1 - A342819 (n + 3))

end

end A342757.P10023515041002900636

/-! ## A342757.P223304309613171405

`A342758(n+3)+A024000(A342819(n+3))`
-/

namespace A342757.P223304309613171405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342758 (n + 3) + A024000 (A342819 (n + 3)).toNat

end

end A342757.P223304309613171405

/-! ## A342757.P6554730807073204690

`A020725(A342758(n+3)-A342819(n+3))`
-/

namespace A342757.P6554730807073204690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A342758 (n + 3) - A342819 (n + 3)).toNat

end

end A342757.P6554730807073204690

/-! ## A342757.P8466193393654652629

`A065475(A342758(n+3)-A342819(n+3))`
-/

namespace A342757.P8466193393654652629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A342758 (n + 3) - A342819 (n + 3)).toNat

end

end A342757.P8466193393654652629

/-!
# A342758: Array read by ascending antidiagonals: T(k, n) is the maximum value of the magic constant in a perimeter-magic k-gon of order n.

The programs for A342758, there is no canonical definition to state claims against.
-/

/-! ## A342758.P15285388121432859922

`A342757(n+3)+A342819(n+3)-1`
-/

namespace A342758.P15285388121432859922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342757 (n + 3) + (A342819 (n + 3) - 1)

end

end A342758.P15285388121432859922

/-! ## A342758.P15666047588011635592

`A342757(n+3)+A023443(A342819(n+3))`
-/

namespace A342758.P15666047588011635592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342757 (n + 3) + A023443 (A342819 (n + 3)).toNat

end

end A342758.P15666047588011635592

/-! ## A342758.P2959995652995365193

`A233583(A342819(n+3)+A342757(n+3))`
-/

namespace A342758.P2959995652995365193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A342819 (n + 3) + A342757 (n + 3)).toNat

end

end A342758.P2959995652995365193

/-! ## A342758.P11084139086259951425

`abs(A024000(A342819(n+3)+A342757(n+3)))`
-/

namespace A342758.P11084139086259951425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (A342819 (n + 3) + A342757 (n + 3)).toNat|

end

end A342758.P11084139086259951425

/-!
# A342759: Fold a square sheet of paper alternately vertically to the left and horizontally downwards; after each fold, draw a line along each inward crease; after n folds, the resulting graph has a(n) regions.

The programs for A342759, there is no canonical definition to state claims against.
-/

/-! ## A342759.P18370559489262629117

`A342761(n)+A342762(n)-A146528(n)`
-/

namespace A342759.P18370559489262629117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342761 n + (A342762 n - A146528 n)

end

end A342759.P18370559489262629117

/-! ## A342759.P13753871385988125425

`A322554(A017986(n))`
-/

namespace A342759.P13753871385988125425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (A017986 n).toNat

end

end A342759.P13753871385988125425

/-! ## A342759.P8819745237790955762

`A071626(A288914(n+1)+A056010(n))`
-/

namespace A342759.P8819745237790955762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A288914 (n + 1) + A056010 n).toNat

end

end A342759.P8819745237790955762

/-! ## A342759.P5576979475257564151

`∑[A007953(∏[floor(n/2)!])]`
-/

namespace A342759.P5576979475257564151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342759.P5576979475257564151

/-! ## A342759.P2979972261075730232

`A083375(A081293(n))`
-/

namespace A342759.P2979972261075730232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A081293 n).toNat

end

end A342759.P2979972261075730232

/-!
# A342761: Fold a square sheet of paper alternately vertically to the left and horizontally downwards; after each fold, draw a line along each inward crease; after n folds, the resulting graph has a(n) edges.

The programs for A342761, the canonical program `A342761.P17716036033640176323` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342761 has offset 0).

The definition of A342761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342761.P17716036033640176323

`∑[2*a(n-2)]+2^n` with `a(0)=3, a(1)=2, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A342761

/-- `∑[2*a(n-2)]+2^n` -/
def P17716036033640176323.Spec : Prop :=
  ∀ n, (P17716036033640176323.a n : ℤ) = A342761 n

theorem P17716036033640176323.correct : P17716036033640176323.Spec := by
  intro n
  simp only [A342761]

end A342761

/-! ## A342761.P7393519335926997780

`∑[2*a(n-1)+2*a(n-2)-4*a(n-3)]` with `a(0)=4, a(1)=3, a(2)=3, a(3)=5, a(4)=10`
-/

namespace A342761.P7393519335926997780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 3, 3, 5, 10] fun n f1 =>
  2 * f1 (n - 1) + 2 * f1 (n - 2) - 4 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342761.P7393519335926997780

namespace A342761

/-- `∑[2*a(n-1)+2*a(n-2)-4*a(n-3)]` -/
def P7393519335926997780.Spec : Prop :=
  ∀ n, P7393519335926997780.a n = A342761 n

end A342761

/-! ## A342761.P12915431395397370977

`A257418(ceil(sqrt(∑[2*n])))+2`
-/

namespace A342761.P12915431395397370977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257418 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat + 2

end

end A342761.P12915431395397370977

namespace A342761

/-- `A257418(ceil(sqrt(∑[2*n])))+2` -/
def P12915431395397370977.Spec : Prop :=
  ∀ n, P12915431395397370977.a n = A342761 n

end A342761

/-! ## A342761.P15031258969553189011

`∑[A001445(round(acot(n)+n))]+1`
-/

namespace A342761.P15031258969553189011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001445 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A342761.P15031258969553189011

namespace A342761

/-- `∑[A001445(round(acot(n)+n))]+1` -/
def P15031258969553189011.Spec : Prop :=
  ∀ n, P15031258969553189011.a n = A342761 n

end A342761

/-! ## A342761.P10528929223695436323

`A257418(n+1)+2-floor(acot(n))`
-/

namespace A342761.P10528929223695436323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257418 (n + 1) + 2 - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A342761.P10528929223695436323

namespace A342761

/-- `A257418(n+1)+2-floor(acot(n))` -/
def P10528929223695436323.Spec : Prop :=
  ∀ n, P10528929223695436323.a n = A342761 n

end A342761

/-!
# A342762: Fold a square sheet of paper alternately vertically to the left and horizontally downwards; after each fold, draw a line along each inward crease; after n folds, the resulting graph has a(n) connected components.

The programs for A342762, there is no canonical definition to state claims against.
-/

/-! ## A342762.P17480686898303707246

`A342759(n)-∑[round(2^round((n-3)/2))]`
-/

namespace A342762.P17480686898303707246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) / 2) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342759 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342762.P17480686898303707246

/-! ## A342762.P539385841450132067

`A342759(n)+1-A029744(n+1)`
-/

namespace A342762.P539385841450132067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342759 n + 1 - A029744 (n + 1)

end

end A342762.P539385841450132067

/-! ## A342762.P7909725580129684612

`A146528(n)+A342759(n)-A342761(n)`
-/

namespace A342762.P7909725580129684612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146528 n + (A342759 n - A342761 n)

end

end A342762.P7909725580129684612

/-! ## A342762.P15556937397248254901

`A177849(A168049(n)+∑[A288905(n)])`
-/

namespace A342762.P15556937397248254901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A168049 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342762.P15556937397248254901

/-! ## A342762.P17063431517286533395

`ceil(A123347(n)/A000040(A297663(n+2)))`
-/

namespace A342762.P17063431517286533395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123347 n : ℚ) / (A000040 (A297663 (n + 2)).toNat : ℚ)⌉

end

end A342762.P17063431517286533395

/-!
# A342763: Fold a square sheet of paper alternately vertically to the left and horizontally downwards; after each fold, draw a line along each inward crease; after n folds, the resulting graph has a(n) regions with minimal area.

The programs for A342763, there is no canonical definition to state claims against.
-/

/-! ## A342763.P6002570741044262876

`A018365(round(sqrt(A018369(n+2))))`
-/

namespace A342763.P6002570741044262876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018365 (SequenceMachineLib.roundAway (Real.sqrt (A018369 (n + 2) : ℝ))).toNat

end

end A342763.P6002570741044262876

/-! ## A342763.P4575129551383718734

`A079813(A099164(n))+A005169(n)`
-/

namespace A342763.P4575129551383718734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079813 (A099164 n).toNat + A005169 n

end

end A342763.P4575129551383718734

/-! ## A342763.P1207468400449293475

`A189014(A084075(n))+A005169(n)`
-/

namespace A342763.P1207468400449293475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189014 (A084075 n).toNat + A005169 n

end

end A342763.P1207468400449293475

/-! ## A342763.P7417255033807258740

`A161980(A246146(n)+A005169(n))`
-/

namespace A342763.P7417255033807258740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161980 (A246146 n + A005169 n).toNat

end

end A342763.P7417255033807258740

/-! ## A342763.P14952347696716767088

`A165211(A256226(n))+A005169(n)`
-/

namespace A342763.P14952347696716767088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165211 (A256226 n).toNat + A005169 n

end

end A342763.P14952347696716767088

/-!
# A342764: Fold a square sheet of paper alternately vertically to the left and horizontally downwards; after each fold, draw a line along each inward crease; after n folds, the largest region in the resulting graph occupies a(n)/2^n of the whole sheet.

The programs for A342764, there is no canonical definition to state claims against.
-/

/-! ## A342764.P10076913318165363981

`A054404(A344180(n)+A132736(n))`
-/

namespace A342764.P10076913318165363981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A344180 n + A132736 n).toNat

end

end A342764.P10076913318165363981

/-! ## A342764.P3401590230377639824

`A026819(or(A049131(n+2), A336009(n)))`
-/

namespace A342764.P3401590230377639824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (Int.lor (A049131 (n + 2)) (A336009 n)).toNat

end

end A342764.P3401590230377639824

/-! ## A342764.P12053230896759135926

`A194339(A148818(n))`
-/

namespace A342764.P12053230896759135926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194339 (A148818 n).toNat

end

end A342764.P12053230896759135926

/-! ## A342764.P6406994091733933634

`A316521(A026713(n))`
-/

namespace A342764.P6406994091733933634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316521 (A026713 n).toNat

end

end A342764.P6406994091733933634

/-! ## A342764.P860121190322219913

`A227568(A149849(n))`
-/

namespace A342764.P860121190322219913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A149849 n).toNat

end

end A342764.P860121190322219913

/-!
# A342765: Array T(n, k), n, k > 0, read by antidiagonals; T(n, k) = max(A006530(n), A006530(k)) * T(n/A006530(n), k/A006530(k)) with T(1, 1) = 1.

The programs for A342765, there is no canonical definition to state claims against.
-/

/-! ## A342765.P13075315563163977953

`C(A051125(n+1), A083888(A207997(n+1)))`
-/

namespace A342765.P13075315563163977953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051125 (n + 1)).toNat (A083888 (A207997 (n + 1)).toNat).toNat

end

end A342765.P13075315563163977953

/-! ## A342765.P210228701638100549

`A003990(n+1)/A185102(A146957(n)+1)`
-/

namespace A342765.P210228701638100549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (A185102 (A146957 n + 1).toNat : ℚ)

end

end A342765.P210228701638100549

/-! ## A342765.P9784813422491654886

`A344838(n)+A000188(A197648(n+1))`
-/

namespace A342765.P9784813422491654886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344838 n + A000188 (A197648 (n + 1)).toNat

end

end A342765.P9784813422491654886

/-! ## A342765.P16625429700716021059

`or(A051125(n+1), A082858(A258997(n)))`
-/

namespace A342765.P16625429700716021059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051125 (n + 1)) (A082858 (A258997 n).toNat)

end

end A342765.P16625429700716021059

/-! ## A342765.P17912322401587322735

`A003990(n+1)/A091237(A174119(n)+1)`
-/

namespace A342765.P17912322401587322735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (A091237 (A174119 n + 1).toNat : ℚ)

end

end A342765.P17912322401587322735

/-!
# A342766: a(1) = 1, for any n > 1, a(n) = A342765(a(n-1), n).

The programs for A342766, the canonical program `A342766.P12175838294366118229` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342766 has offset 1).

The definition of A342766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342766.P12175838294366118229

`∏[A014963(n+1)/A252463(A014963(n+1))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A342766

/-- `∏[A014963(n+1)/A252463(A014963(n+1))]` -/
def P12175838294366118229.Spec : Prop :=
  ∀ n, P12175838294366118229.a n = (A342766 (n + 1) : ℚ)

end A342766

/-! ## A342766.P1933129396352872127

`A181819(∏[A014963(A122111(n+1))])`
-/

namespace A342766.P1933129396352872127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A122111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342766.P1933129396352872127

namespace A342766

/-- `A181819(∏[A014963(A122111(n+1))])` -/
def P1933129396352872127.Spec : Prop :=
  ∀ n, P1933129396352872127.a n = A342766 (n + 1)

end A342766

/-! ## A342766.P13777900910521875067

`A181819(∏[A080305(A181819(n+1))])`
-/

namespace A342766.P13777900910521875067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (A181819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342766.P13777900910521875067

namespace A342766

/-- `A181819(∏[A080305(A181819(n+1))])` -/
def P13777900910521875067.Spec : Prop :=
  ∀ n, P13777900910521875067.a n = A342766 (n + 1)

end A342766

/-! ## A342766.P13911540144422701015

`A181819(∏[A089026(A181819(n+1))])`
-/

namespace A342766.P13911540144422701015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A181819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342766.P13911540144422701015

namespace A342766

/-- `A181819(∏[A089026(A181819(n+1))])` -/
def P13911540144422701015.Spec : Prop :=
  ∀ n, P13911540144422701015.a n = A342766 (n + 1)

end A342766

/-! ## A342766.P6687796624653791246

`A181819(∏[A194446(A181819(n+1))])`
-/

namespace A342766.P6687796624653791246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194446 (A181819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342766.P6687796624653791246

namespace A342766

/-- `A181819(∏[A194446(A181819(n+1))])` -/
def P6687796624653791246.Spec : Prop :=
  ∀ n, P6687796624653791246.a n = A342766 (n + 1)

end A342766

/-!
# A342767: Array T(n, k), n, k > 0, read by antidiagonals; a variant of lunar multiplication (A087062) based on prime factorizations of numbers (see Comments section for precise definition).

The programs for A342767, there is no canonical definition to state claims against.
-/

/-! ## A342767.P13890733810759490827

`A288569(A172991(n))`
-/

namespace A342767.P13890733810759490827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288569 (A172991 n).toNat

end

end A342767.P13890733810759490827

/-! ## A342767.P7180098588650654588

`A007302(A157211(n)+3)`
-/

namespace A342767.P7180098588650654588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A157211 n + 3).toNat

end

end A342767.P7180098588650654588

/-! ## A342767.P17978846015947995550

`A297889(A309876(n))%5`
-/

namespace A342767.P17978846015947995550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297889 (A309876 n).toNat) 5

end

end A342767.P17978846015947995550

/-! ## A342767.P7995604282395533956

`A001222(A322131(A022166(n)))`
-/

namespace A342767.P7995604282395533956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A322131 (A022166 n).toNat).toNat

end

end A342767.P7995604282395533956

/-! ## A342767.P11069949057094785672

`A000120(A000005(A144470(n)²))`
-/

namespace A342767.P11069949057094785672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000005 (A144470 n ^ 2).toNat).toNat

end

end A342767.P11069949057094785672

/-!
# A342768: a(n) = A342767(n, n).

The programs for A342768, the canonical program `A342768.P5246237002452470016` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342768 has offset 1).

The definition of A342768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342768.P361085064283062200

`ceil(A129597(n+1)/2)`
-/

namespace A342768.P361085064283062200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A129597 (n + 1) : ℚ) / 2⌉

end

end A342768.P361085064283062200

namespace A342768

/-- `ceil(A129597(n+1)/2)` -/
def P361085064283062200.Spec : Prop :=
  ∀ n, P361085064283062200.a n = A342768 (n + 1)

end A342768

/-! ## A342768.P7721038167240029122

`(n+1)*A052126(n+1)`
-/

namespace A342768.P7721038167240029122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052126 (n + 1)

end

end A342768.P7721038167240029122

namespace A342768

/-- `(n+1)*A052126(n+1)` -/
def P7721038167240029122.Spec : Prop :=
  ∀ n, P7721038167240029122.a n = A342768 (n + 1)

end A342768

/-! ## A342768.P2190967437156214823

`(n+1)²/A006530(n+1)`
-/

namespace A342768.P2190967437156214823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A006530 (n + 1) : ℚ)

end

end A342768.P2190967437156214823

namespace A342768

/-- `(n+1)²/A006530(n+1)` -/
def P2190967437156214823.Spec : Prop :=
  ∀ n, P2190967437156214823.a n = (A342768 (n + 1) : ℚ)

end A342768

/-! ## A342768.P24848516194338431

`(n+1)^3/A253560(n+1)`
-/

namespace A342768.P24848516194338431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (A253560 (n + 1) : ℚ)

end

end A342768.P24848516194338431

namespace A342768

/-- `(n+1)^3/A253560(n+1)` -/
def P24848516194338431.Spec : Prop :=
  ∀ n, P24848516194338431.a n = (A342768 (n + 1) : ℚ)

end A342768

/-! ## A342768.P5246237002452470016

`round((n+1)²/A111089(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A342768

/-- `round((n+1)²/A111089(n+1))` -/
def P5246237002452470016.Spec : Prop :=
  ∀ n, P5246237002452470016.a n = A342768 (n + 1)

theorem P5246237002452470016.correct : P5246237002452470016.Spec := by
  intro n
  simp only [A342768, Nat.add_sub_cancel]

end A342768

/-! ## A342768.P17564846889187178712

`(1-A171462(n+1)+n)*(n+1)`
-/

namespace A342768.P17564846889187178712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A171462 (n + 1) + (n : ℤ)) * (n + 1 : ℤ)

end

end A342768.P17564846889187178712

namespace A342768

/-- `(1-A171462(n+1)+n)*(n+1)` -/
def P17564846889187178712.Spec : Prop :=
  ∀ n, P17564846889187178712.a n = A342768 (n + 1)

end A342768

/-! ## A342768.P11135570612586993132

`(n+1)*(A335876(n+1)-(n+1))`
-/

namespace A342768.P11135570612586993132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A335876 (n + 1) - (n + 1 : ℤ))

end

end A342768.P11135570612586993132

namespace A342768

/-- `(n+1)*(A335876(n+1)-(n+1))` -/
def P11135570612586993132.Spec : Prop :=
  ∀ n, P11135570612586993132.a n = A342768 (n + 1)

end A342768

/-! ## A342768.P7062638801453033340

`(n+1)*(A269304(n+1)-(n+2))`
-/

namespace A342768.P7062638801453033340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A269304 (n + 1) - (n + 2 : ℤ))

end

end A342768.P7062638801453033340

namespace A342768

/-- `(n+1)*(A269304(n+1)-(n+2))` -/
def P7062638801453033340.Spec : Prop :=
  ∀ n, P7062638801453033340.a n = A342768 (n + 1)

end A342768

/-! ## A342768.P3285228446127769844

`(n+1)*(n+1)/A006530(C(n+1, n))`
-/

namespace A342768.P3285228446127769844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / (A006530 (Nat.choose (n + 1) n) : ℚ))

end

end A342768.P3285228446127769844

namespace A342768

/-- `(n+1)*(n+1)/A006530(C(n+1, n))` -/
def P3285228446127769844.Spec : Prop :=
  ∀ n, P3285228446127769844.a n = (A342768 (n + 1) : ℚ)

end A342768

/-! ## A342768.P18411286897779292304

`(n+1)*(n+1)/A006530(∏{p}[n+1, #])`
-/

namespace A342768.P18411286897779292304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / (A006530 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ))

end

end A342768.P18411286897779292304

namespace A342768

/-- `(n+1)*(n+1)/A006530(∏{p}[n+1, #])` -/
def P18411286897779292304.Spec : Prop :=
  ∀ n, P18411286897779292304.a n = (A342768 (n + 1) : ℚ)

end A342768

/-! ## A342768.P15287166815409782542

`(n+1)*floor((n+2)/A006530(2*(n+1)))`
-/

namespace A342768.P15287166815409782542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(n + 2 : ℚ) / (A006530 (2 * (n + 1)) : ℚ)⌋

end

end A342768.P15287166815409782542

namespace A342768

/-- `(n+1)*floor((n+2)/A006530(2*(n+1)))` -/
def P15287166815409782542.Spec : Prop :=
  ∀ n, P15287166815409782542.a n = A342768 (n + 1)

end A342768

/-! ## A342768.P17133752886990319012

`(n+1)*(n+1)/A006530(2*n+1-n)`
-/

namespace A342768.P17133752886990319012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / (A006530 (2 * n + 1 - n) : ℚ))

end

end A342768.P17133752886990319012

namespace A342768

/-- `(n+1)*(n+1)/A006530(2*n+1-n)` -/
def P17133752886990319012.Spec : Prop :=
  ∀ n, P17133752886990319012.a n = (A342768 (n + 1) : ℚ)

end A342768

/-! ## A342768.P12619828357805619229

`A032742(n+1)*A130065(n+1)`
-/

namespace A342768.P12619828357805619229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A130065 (n + 1)

end

end A342768.P12619828357805619229

namespace A342768

/-- `A032742(n+1)*A130065(n+1)` -/
def P12619828357805619229.Spec : Prop :=
  ∀ n, P12619828357805619229.a n = A342768 (n + 1)

end A342768

/-! ## A342768.P7076877899391829111

`A184628(n+1)/A129598(n+1)`
-/

namespace A342768.P7076877899391829111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184628 (n + 1) : ℚ) / (A129598 (n + 1) : ℚ)

end

end A342768.P7076877899391829111

namespace A342768

/-- `A184628(n+1)/A129598(n+1)` -/
def P7076877899391829111.Spec : Prop :=
  ∀ n, P7076877899391829111.a n = (A342768 (n + 1) : ℚ)

end A342768

/-! ## A342768.P11363119785932097974

`gcd(A129597(n+1), A140651(n+1))`
-/

namespace A342768.P11363119785932097974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129597 (n + 1)) (A140651 (n + 1))

end

end A342768.P11363119785932097974

namespace A342768

/-- `gcd(A129597(n+1), A140651(n+1))` -/
def P11363119785932097974.Spec : Prop :=
  ∀ n, (P11363119785932097974.a n : ℤ) = A342768 (n + 1)

end A342768

/-! ## A342768.P1900491109067984959

`floor(A005563(n)/A006530(n+1))+1`
-/

namespace A342768.P1900491109067984959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005563 n : ℚ) / (A006530 (n + 1) : ℚ)⌋ + 1

end

end A342768.P1900491109067984959

namespace A342768

/-- `floor(A005563(n)/A006530(n+1))+1` -/
def P1900491109067984959.Spec : Prop :=
  ∀ n, P1900491109067984959.a n = A342768 (n + 1)

end A342768

/-! ## A342768.P5563949088374722162

`∏{d}[A006530(n+1), (n+1)/A006530(#)]`
-/

namespace A342768.P5563949088374722162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (n + 1 : ℚ) / (A006530 d : ℚ)

end

end A342768.P5563949088374722162

namespace A342768

/-- `∏{d}[A006530(n+1), (n+1)/A006530(#)]` -/
def P5563949088374722162.Spec : Prop :=
  ∀ n, P5563949088374722162.a n = (A342768 (n + 1) : ℚ)

end A342768

/-! ## A342768.P13271730983634495053

`(n+1)*A028310(gcd(n+1, A171462(n+1)))`
-/

namespace A342768.P13271730983634495053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028310 (Int.gcd (n + 1 : ℤ) (A171462 (n + 1)))

end

end A342768.P13271730983634495053

namespace A342768

/-- `(n+1)*A028310(gcd(n+1, A171462(n+1)))` -/
def P13271730983634495053.Spec : Prop :=
  ∀ n, P13271730983634495053.a n = A342768 (n + 1)

end A342768

/-! ## A342768.P11946087068595230295

`(n+1)²*A032742(n+1)/A130064(n+1)`
-/

namespace A342768.P11946087068595230295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) * A032742 (n + 1) : ℚ) / (A130064 (n + 1) : ℚ)

end

end A342768.P11946087068595230295

namespace A342768

/-- `(n+1)²*A032742(n+1)/A130064(n+1)` -/
def P11946087068595230295.Spec : Prop :=
  ∀ n, P11946087068595230295.a n = (A342768 (n + 1) : ℚ)

end A342768

/-!
# A342769: Pairwise listing of the partitions of 2k into two parts, (s,t), with 0 < s <= t ordered by increasing values of s and where k = 1,2,... .

The programs for A342769, there is no canonical definition to state claims against.
-/

/-! ## A342769.P158524772199086043

`A342913(A103889(n+1))`
-/

namespace A342769.P158524772199086043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342913 (A103889 (n + 1)).toNat

end

end A342769.P158524772199086043

/-! ## A342769.P5159556000063342467

`A342913(abs(xor(n, -2)))`
-/

namespace A342769.P5159556000063342467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342913 |Int.xor (n : ℤ) (-2)|.toNat

end

end A342769.P5159556000063342467

/-! ## A342769.P14990086001180671172

`A342913(xor(1, n)+1)`
-/

namespace A342769.P14990086001180671172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342913 (Nat.xor 1 n + 1)

end

end A342769.P14990086001180671172

/-! ## A342769.P18358525939675539623

`A342913(2-xor(1, 1-n))`
-/

namespace A342769.P18358525939675539623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342913 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

end

end A342769.P18358525939675539623

/-! ## A342769.P3497264762370959324

`A342913(2*or(1, n)-n)`
-/

namespace A342769.P3497264762370959324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342913 (2 * Nat.lor 1 n - n)

end

end A342769.P3497264762370959324

/-! ## A342769.P9656668382585482153

`A342913(and(2, gcd(2, n))+n)`
-/

namespace A342769.P9656668382585482153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342913 (Nat.land 2 (Nat.gcd 2 n) + n)

end

end A342769.P9656668382585482153

/-! ## A342769.P18019705724015393734

`A342913(lcm(2, or(1, n))-n)`
-/

namespace A342769.P18019705724015393734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342913 (Nat.lcm 2 (Nat.lor 1 n) - n)

end

end A342769.P18019705724015393734

/-! ## A342769.P995395723009621220

`A342913(n+2-2*and(1, n))`
-/

namespace A342769.P995395723009621220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342913 (n + 2 - 2 * Nat.land 1 n)

end

end A342769.P995395723009621220

/-! ## A342769.P4360436939521470547

`2*round(sqrt(n+1))-A342913(n+1)`
-/

namespace A342769.P4360436939521470547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - A342913 (n + 1)

end

end A342769.P4360436939521470547

/-! ## A342769.P12682267238199991629

`A342913(A004442(n)+1)`
-/

namespace A342769.P12682267238199991629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342913 (A004442 n + 1).toNat

end

end A342769.P12682267238199991629

/-!
# A342770: T(n,k) is the number of rooted plane binary forests with n nodes and k trees: triangle read by rows.

The programs for A342770, there is no canonical definition to state claims against.
-/

/-! ## A342770.P17012788326794936280

`and(A004273(A237996(n)), A320341(n))`
-/

namespace A342770.P17012788326794936280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004273 (A237996 n).toNat) (A320341 n)

end

end A342770.P17012788326794936280

/-! ## A342770.P2936931429840361885

`and(A004273(A256041(n)), A320341(n))`
-/

namespace A342770.P2936931429840361885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004273 (A256041 n).toNat) (A320341 n)

end

end A342770.P2936931429840361885

/-! ## A342770.P3377053757473149742

`and(A000225(A272774(n)), A320341(n))`
-/

namespace A342770.P3377053757473149742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A272774 n).toNat) (A320341 n)

end

end A342770.P3377053757473149742

/-! ## A342770.P7116278454095694985

`A308967(A111594(n)+1)`
-/

namespace A342770.P7116278454095694985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (A111594 n + 1).toNat

end

end A342770.P7116278454095694985

/-! ## A342770.P5193263683168956639

`∑{e}[A137904(A147312(n)), #]`
-/

namespace A342770.P5193263683168956639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137904 (A147312 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A342770.P5193263683168956639

/-!
# A342772: Row sums of triangle A177028.

The programs for A342772, there is no canonical definition to state claims against.
-/

/-! ## A342772.P12190499378735308644

`A263579(A342805(n+3))+n`
-/

namespace A342772.P12190499378735308644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263579 (A342805 (n + 3)).toNat + (n : ℤ)

end

end A342772.P12190499378735308644

/-! ## A342772.P9790221367544684254

`A342843(A342805(n+3))+A191838(n+1)`
-/

namespace A342772.P9790221367544684254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342843 (A342805 (n + 3)).toNat + A191838 (n + 1)

end

end A342772.P9790221367544684254

/-!
# A342774: Length of n-th word in the ordering A342753 of all binary words.

The programs for A342774, there is no canonical definition to state claims against.
-/

/-! ## A342774.P15614718711785693060

`floor(log2(A259431(n+3)-1))`
-/

namespace A342774.P15614718711785693060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A259431 (n + 3) - 1).toNat

end

end A342774.P15614718711785693060

/-! ## A342774.P15002788845869733230

`A124769(eq[A023416(n), A124761(n)])`
-/

namespace A342774.P15002788845869733230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A342774.P15002788845869733230

/-! ## A342774.P10366780481371585570

`A272604(lt[A023416(n), A124766(n)])`
-/

namespace A342774.P10366780481371585570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A342774.P10366780481371585570

/-! ## A342774.P16433741760075167958

`A272604(lt[A080791(n), A124766(n)])`
-/

namespace A342774.P16433741760075167958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A342774.P16433741760075167958

/-! ## A342774.P8834051453420443275

`A275024(lcm(3, A268415(n+1)))`
-/

namespace A342774.P8834051453420443275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (Int.lcm 3 (A268415 (n + 1)))

end

end A342774.P8834051453420443275

/-!
# A342776: Positions of words in A342753 in which #0's < #1's.

The programs for A342776, there is no canonical definition to state claims against.
-/

/-! ## A342776.P12270252248230211288

`lt[A375494(n+1)², n]`
-/

namespace A342776.P12270252248230211288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375494 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A342776.P12270252248230211288

/-! ## A342776.P8702105213034200022

`lt[A173723(A375494(n+1)), A250120(n)]`
-/

namespace A342776.P8702105213034200022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173723 ((A375494 (n + 1)).toNat + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342776.P8702105213034200022

/-!
# A342777: Positions of words in A342753 in which #0's > #1's.

The programs for A342777, there is no canonical definition to state claims against.
-/

/-! ## A342777.P13726713665652242267

`comp[floor((A342776(n+1)-1)/3)]`
-/

namespace A342777.P13726713665652242267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342776 (n + 1) - 1 : ℚ) / 3⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A342777.P13726713665652242267

/-! ## A342777.P10664655937979151125

`lt[A002496(n+1), A001412(A375494(n+1))]`
-/

namespace A342777.P10664655937979151125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001412 (A375494 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342777.P10664655937979151125

/-!
# A342778: Positions of words in A342753 in which the last digit is 0.

The programs for A342778, there is no canonical definition to state claims against.
-/

/-! ## A342778.P15026327612615711847

`comp[A342779(n+1)-1]+1`
-/

namespace A342778.P15026327612615711847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342779 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A342778.P15026327612615711847

/-! ## A342778.P16633399856543163951

`eq[1, 2-a(A009947(n))]-1` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A342778.P16633399856543163951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1] fun n f2 =>
  2 - f2 (A009947 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A342778.P16633399856543163951

/-! ## A342778.P11530807736553619562

`lt[2, ceil(a(A009947(n+1)-1))]` with `a(0)=1, a(1)=35, a(2)=52`

`ceil` is left out, it is the identity on integers.
-/

namespace A342778.P11530807736553619562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 35, 52] fun n f2 =>
  f2 (A009947 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342778.P11530807736553619562

/-! ## A342778.P8853318628910238553

`comp[A267183(A342785(n+1))]`
-/

namespace A342778.P8853318628910238553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267183 (A342785 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A342778.P8853318628910238553

/-! ## A342778.P12122691842534427010

`∪[A342782(n+1), A342784(n+1)]`
-/

namespace A342778.P12122691842534427010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342778.P12122691842534427010

/-! ## A342778.P7155088189126840824

`lt[2, A069483(a(A009947(n+1)-1))]` with `a(0)=2, a(1)=3`
-/

namespace A342778.P7155088189126840824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  A069483 (f2 (A009947 (n + 1) - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A342778.P7155088189126840824

/-! ## A342778.P17948047008210162837

`lt[2, A000005(a(A009947(n+1)-1)+1)]` with `a(0)=2, a(1)=3`
-/

namespace A342778.P17948047008210162837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  A000005 (f2 (A009947 (n + 1) - 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A342778.P17948047008210162837

/-! ## A342778.P1929743732259239779

`A004523(A342782(n+2))`
-/

namespace A342778.P1929743732259239779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A342782 (n + 2)).toNat

end

end A342778.P1929743732259239779

/-! ## A342778.P14298877503820773789

`A004396(A342782(n+2)-1)`
-/

namespace A342778.P14298877503820773789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A342782 (n + 2) - 1).toNat

end

end A342778.P14298877503820773789

/-! ## A342778.P2747196618458379287

`A271484(8*A342782(n+2))`
-/

namespace A342778.P2747196618458379287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271484 (8 * A342782 (n + 2)).toNat

end

end A342778.P2747196618458379287

/-!
# A342779: Positions of words in A342753 in which the last digit is 1.

The programs for A342779, there is no canonical definition to state claims against.
-/

/-! ## A342779.P15266552920255425520

`eq[2, ceil(a(A009947(n+1)-1))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A342779.P15266552920255425520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2] fun n f2 =>
  f2 (A009947 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342779.P15266552920255425520

/-! ## A342779.P15010736619579465100

`∪[A342783(n+1), A342785(n+1)]`
-/

namespace A342779.P15010736619579465100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342779.P15010736619579465100

/-! ## A342779.P734565507768990593

`lt[2, A069483(a(A009947(n+1)-1))]` with `a(0)=1, a(1)=2`
-/

namespace A342779.P734565507768990593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A069483 (f2 (A009947 (n + 1) - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A342779.P734565507768990593

/-! ## A342779.P17261822010473013512

`eq[2, A082991(a(A009947(n+1)-1))]` with `a(0)=5, a(1)=4`
-/

namespace A342779.P17261822010473013512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 4] fun n f2 =>
  A082991 (f2 (A009947 (n + 1) - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342779.P17261822010473013512

/-! ## A342779.P17574870440954349825

`eq[1, A001222(a(A009947(n))+1)]-1` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A342779.P17574870440954349825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0] fun n f2 =>
  A001222 (f2 (A009947 n).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A342779.P17574870440954349825

/-! ## A342779.P4605168295256213878

`lt[2, A000005(a(A009947(n+1)-1)+1)]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=3, a(4)=1`
-/

namespace A342779.P4605168295256213878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1, 3, 1] fun n f2 =>
  A000005 (f2 (A009947 (n + 1) - 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A342779.P4605168295256213878

/-! ## A342779.P11555326604541426712

`A004523(A342783(n+1))`
-/

namespace A342779.P11555326604541426712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A342783 (n + 1)).toNat

end

end A342779.P11555326604541426712

/-! ## A342779.P1473772018271664701

`A004396(A342783(n+1)-1)`
-/

namespace A342779.P1473772018271664701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A342783 (n + 1) - 1).toNat

end

end A342779.P1473772018271664701

/-! ## A342779.P303506812167585432

`A092942(A342783(n+1)-1)`
-/

namespace A342779.P303506812167585432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (A342783 (n + 1) - 1).toNat

end

end A342779.P303506812167585432

/-! ## A342779.P5370084533876470807

`A002264(2*A342783(n+1))`
-/

namespace A342779.P5370084533876470807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * A342783 (n + 1)).toNat

end

end A342779.P5370084533876470807

/-!
# A342780: Positions of words in A342753 in which 1st digit = last digit.

The programs for A342780, there is no canonical definition to state claims against.
-/

/-! ## A342780.P12779031339439298673

`comp[A342781(n+1)-1]+1`
-/

namespace A342780.P12779031339439298673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342781 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A342780.P12779031339439298673

/-! ## A342780.P660189706187160155

`∪[A342782(n+1), A342785(n+1)]`
-/

namespace A342780.P660189706187160155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342780.P660189706187160155

/-! ## A342780.P3257405841304960736

`comp[∪[A342781(n+1), A008585(n)²]]`
-/

namespace A342780.P3257405841304960736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342781 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A342780.P3257405841304960736

/-! ## A342780.P4444215740605985134

`∪[A342785(A348553(n)), A342782(n+1)]`
-/

namespace A342780.P4444215740605985134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342785 (A348553 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342780.P4444215740605985134

/-! ## A342780.P12601592390185535203

`eq[1, A342789(n+1)%2]+1`
-/

namespace A342780.P12601592390185535203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342789 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A342780.P12601592390185535203

/-!
# A342781: Positions of words in A342753 in which 1st digit != last digit.

The programs for A342781, there is no canonical definition to state claims against.
-/

/-! ## A342781.P2467047288392034051

`∪[A342783(n+1), A342784(n+1)]`
-/

namespace A342781.P2467047288392034051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342781.P2467047288392034051

/-! ## A342781.P14954511551911846985

`eq[0, A342789(n+1)%2]+1`
-/

namespace A342781.P14954511551911846985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342789 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A342781.P14954511551911846985

/-! ## A342781.P9755724392411020958

`A020725(eq[0, A342789(n+1)%2])`
-/

namespace A342781.P9755724392411020958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342789 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342781.P9755724392411020958

/-! ## A342781.P6646845533058930856

`eq[char[A342780(n+1)], A151933(n)]`
-/

namespace A342781.P6646845533058930856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342780 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A342781.P6646845533058930856

/-! ## A342781.P558352148853239536

`eq[char[A342780(n+1)], A151622(n)]`
-/

namespace A342781.P558352148853239536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342780 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A342781.P558352148853239536

/-!
# A342782: Positions of words in A342753 having 1st digit 0 and last digit 0.

The programs for A342782, there is no canonical definition to state claims against.
-/

/-! ## A342782.P4651183219015496915

`comp[∪[3*n, A342783(n+1)]]`
-/

namespace A342782.P4651183219015496915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342783 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A342782.P4651183219015496915

/-! ## A342782.P8387845711259070685

`A032766(comp[A342779(n+1)])+1`
-/

namespace A342782.P8387845711259070685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342779 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A342782.P8387845711259070685

/-! ## A342782.P18166983471853238760

`comp[∪[A342779(n+1), A008585(n)]]`
-/

namespace A342782.P18166983471853238760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342779 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A342782.P18166983471853238760

/-! ## A342782.P17095561508250027416

`comp[∪[A342781(n+1), A008585(n)]]`
-/

namespace A342782.P17095561508250027416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342781 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A342782.P17095561508250027416

/-! ## A342782.P10901093711758546658

`eq[n²%3, A005117(a(A009947(n+1)-1))]` with `a(0)=2, a(1)=1`
-/

namespace A342782.P10901093711758546658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A005117 (f2 (A009947 (n + 1) - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342782.P10901093711758546658

/-! ## A342782.P5407148224057218369

`record[A038502(A342780(n+1))]`
-/

namespace A342782.P5407148224057218369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A342780 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342782.P5407148224057218369

/-! ## A342782.P4509345650367677930

`filter[A342780(n+1), A011655(#)]`
-/

namespace A342782.P4509345650367677930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A342782.P4509345650367677930

/-! ## A342782.P391008862262692036

`filter[A342780(n+1), A267208(#)]`
-/

namespace A342782.P391008862262692036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A342782.P391008862262692036

/-! ## A342782.P1140410035583802605

`record[A051176(A342780(-xor(n, -1)))]`
-/

namespace A342782.P1140410035583802605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A342780 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342782.P1140410035583802605

/-! ## A342782.P8570586772234975248

`record[A051176(A342780(abs(1-n)+2))]`
-/

namespace A342782.P8570586772234975248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A342780 (|1 - (n : ℤ)| + 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342782.P8570586772234975248

/-!
# A342783: Positions of words in A342753 having 1st digit 0 and last digit 1.

The programs for A342783, there is no canonical definition to state claims against.
-/

/-! ## A342783.P15523489376782498481

`A001651(A342779(n+1)+1)`
-/

namespace A342783.P15523489376782498481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A342779 (n + 1) + 1).toNat

end

end A342783.P15523489376782498481

/-! ## A342783.P11470492228432300799

`A133223(A342779(n+1)+1)`
-/

namespace A342783.P11470492228432300799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (A342779 (n + 1) + 1).toNat

end

end A342783.P11470492228432300799

/-! ## A342783.P8067493346079265096

`A037915(2*A342779(n+1))`
-/

namespace A342783.P8067493346079265096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (2 * A342779 (n + 1)).toNat

end

end A342783.P8067493346079265096

/-! ## A342783.P6701482228569006499

`A265428(2*A342779(n+1))`
-/

namespace A342783.P6701482228569006499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265428 (2 * A342779 (n + 1)).toNat

end

end A342783.P6701482228569006499

/-! ## A342783.P7739041628904149520

`A351412(2*A342779(n+1))`
-/

namespace A342783.P7739041628904149520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351412 (2 * A342779 (n + 1)).toNat

end

end A342783.P7739041628904149520

/-! ## A342783.P11245374377910862966

`A008619(3*A342779(n+1))`
-/

namespace A342783.P11245374377910862966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 * A342779 (n + 1)).toNat

end

end A342783.P11245374377910862966

/-! ## A342783.P14797903583324967369

`A008621(6*A342779(n+1))`
-/

namespace A342783.P14797903583324967369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (6 * A342779 (n + 1)).toNat

end

end A342783.P14797903583324967369

/-! ## A342783.P16698614030544157568

`A008624(6*A342779(n+1))`
-/

namespace A342783.P16698614030544157568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (6 * A342779 (n + 1)).toNat

end

end A342783.P16698614030544157568

/-! ## A342783.P17449907337855103522

`A103221(9*A342779(n+1))`
-/

namespace A342783.P17449907337855103522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (9 * A342779 (n + 1)).toNat

end

end A342783.P17449907337855103522

/-! ## A342783.P14683373294323189296

`eq[n²%3, A005117(a(A009947(n+1)-1))]` with `a(0)=1, a(1)=2`
-/

namespace A342783.P14683373294323189296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A005117 (f2 (A009947 (n + 1) - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342783.P14683373294323189296

/-!
# A342784: Positions of words in A342753 having 1st digit 1 and last digit 0.

The programs for A342784, there is no canonical definition to state claims against.
-/

/-! ## A342784.P5571072378679010525

`3*(A342778(n+1)+1)`
-/

namespace A342784.P5571072378679010525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A342778 (n + 1) + 1)

end

end A342784.P5571072378679010525

/-! ## A342784.P6122436786200575940

`3*(comp[A342779(n+1)-1]+2)`
-/

namespace A342784.P6122436786200575940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342779 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A342784.P6122436786200575940

/-! ## A342784.P17965043833631030779

`floor(3/acot(A342778(Δ[n²]-n)+1))`
-/

namespace A342784.P17965043833631030779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (A342778 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + 1 : ℝ)⌋

end

end A342784.P17965043833631030779

/-! ## A342784.P181816338370031887

`A136289(A342782(n+2))`
-/

namespace A342784.P181816338370031887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136289 (A342782 (n + 2)).toNat

end

end A342784.P181816338370031887

/-! ## A342784.P10503233349036206910

`A008486(A342778(n+1)+1)`
-/

namespace A342784.P10503233349036206910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A342778 (n + 1) + 1).toNat

end

end A342784.P10503233349036206910

/-! ## A342784.P10497608289622684977

`A008585(A342778(n+1)+1)`
-/

namespace A342784.P10497608289622684977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A342778 (n + 1) + 1).toNat

end

end A342784.P10497608289622684977

/-! ## A342784.P1031696323305723019

`A031193(A342778(n+1)+1)`
-/

namespace A342784.P1031696323305723019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031193 (A342778 (n + 1) + 1).toNat

end

end A342784.P1031696323305723019

/-! ## A342784.P10770490525335307324

`A016789(A342778(n+1)+1)-2`
-/

namespace A342784.P10770490525335307324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A342778 (n + 1) + 1).toNat - 2

end

end A342784.P10770490525335307324

/-! ## A342784.P14645756251877082704

`A008458(A342778(n+1)+1)/2`
-/

namespace A342784.P14645756251877082704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (A342778 (n + 1) + 1).toNat : ℚ) / 2

end

end A342784.P14645756251877082704

/-! ## A342784.P14272346017675333477

`3*A004396(A342782(n+2)+1)`
-/

namespace A342784.P14272346017675333477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004396 (A342782 (n + 2) + 1).toNat

end

end A342784.P14272346017675333477

/-!
# A342785: Positions of words in A342753 having 1st digit 1 and last digit 1.

The programs for A342785, there is no canonical definition to state claims against.
-/

/-! ## A342785.P6537388809477458827

`∩[3*n, A342779(n+1)]`
-/

namespace A342785.P6537388809477458827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342785.P6537388809477458827

/-! ## A342785.P12614485030733053448

`filter[A342779(n+1), A079978(#)]`
-/

namespace A342785.P12614485030733053448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A342785.P12614485030733053448

/-! ## A342785.P15073070322528257394

`filter[A342779(n+1), A173857(#)]`
-/

namespace A342785.P15073070322528257394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A342785.P15073070322528257394

/-! ## A342785.P15037937494542913017

`filter[A342779(n+1), A329680(#)]`
-/

namespace A342785.P15037937494542913017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A342785.P15037937494542913017

/-! ## A342785.P8880615301930492800

`∩[A342779(n+1), A008486(n)]`
-/

namespace A342785.P8880615301930492800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342785.P8880615301930492800

/-!
# A342786: a(n) = position in A342753 of the base-2 representation of n.

The programs for A342786, there is no canonical definition to state claims against.
-/

/-! ## A342786.P13449062925997792625

`3*A342793(n+1)%A342816(n+1)`
-/

namespace A342786.P13449062925997792625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.tmod (A342793 (n + 1)) (A342816 (n + 1))

end

end A342786.P13449062925997792625

/-! ## A342786.P275468345326462616

`or(3, A342910(3*n+2))*A342793(n+1)`
-/

namespace A342786.P275468345326462616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A342910 (3 * n + 2)) * A342793 (n + 1)

end

end A342786.P275468345326462616

/-! ## A342786.P16091649621690529250

`A010684(A085414(n+1))*A342793(n+1)`
-/

namespace A342786.P16091649621690529250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A085414 (n + 1)).toNat * A342793 (n + 1)

end

end A342786.P16091649621690529250

/-! ## A342786.P14243456194090879958

`A120275(A001358(n+1))*A342793(n+1)`
-/

namespace A342786.P14243456194090879958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120275 (A001358 (n + 1)).toNat * A342793 (n + 1)

end

end A342786.P14243456194090879958

/-! ## A342786.P13473162847393218748

`A120275(A069136(n+1))*A342793(n+1)`
-/

namespace A342786.P13473162847393218748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120275 (A069136 (n + 1)).toNat * A342793 (n + 1)

end

end A342786.P13473162847393218748

/-!
# A342788: a(n) = sum of the digits of n-th word in A342753.

The programs for A342788, there is no canonical definition to state claims against.
-/

/-! ## A342788.P7983841840852680823

`and(∑[A108329(n+1)], A108339(n+5))`
-/

namespace A342788.P7983841840852680823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A108339 (n + 5))

end

end A342788.P7983841840852680823

/-! ## A342788.P14960886512339904604

`A023416(eq[A023416(n), A124761(n)])`
-/

namespace A342788.P14960886512339904604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A342788.P14960886512339904604

/-! ## A342788.P17320983693996724081

`A023416(lt[A023416(n), A124766(n)])`
-/

namespace A342788.P17320983693996724081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A342788.P17320983693996724081

/-! ## A342788.P12916079764680779531

`A080791(lt[A080791(n), A124766(n)])`
-/

namespace A342788.P12916079764680779531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A342788.P12916079764680779531

/-! ## A342788.P13232094494619674117

`A086971(A345167(3*n+5)-A327929(n+1))`
-/

namespace A342788.P13232094494619674117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A345167 (3 * n + 5) - A327929 (n + 1)).toNat

end

end A342788.P13232094494619674117

/-!
# A342789: a(n) = runlength of n-th word in A342753.

The programs for A342789, there is no canonical definition to state claims against.
-/

/-! ## A342789.P8198196793679287218

`A001221(or(A206419(n+2), A268387(n+1)))`
-/

namespace A342789.P8198196793679287218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A206419 (n + 2)) (A268387 (n + 1))).toNat

end

end A342789.P8198196793679287218

/-! ## A342789.P14054349653204331915

`A001221(A350364(n+3)+2^n)`
-/

namespace A342789.P14054349653204331915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A350364 (n + 3) + (2 ^ n : ℤ)).toNat

end

end A342789.P14054349653204331915

/-! ## A342789.P6810782563058690430

`A001221(A267682(n+1)+A147419(n+1))`
-/

namespace A342789.P6810782563058690430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A267682 (n + 1) + A147419 (n + 1)).toNat

end

end A342789.P6810782563058690430

/-! ## A342789.P17622321888874150749

`A001221(or(A245978(n+4), A342222(n+3)))`
-/

namespace A342789.P17622321888874150749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A245978 (n + 4)) (A342222 (n + 3))).toNat

end

end A342789.P17622321888874150749

/-! ## A342789.P8135057837135578076

`A124769(A022298(round(n²/8)))`
-/

namespace A342789.P8135057837135578076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A022298 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8)).toNat).toNat

end

end A342789.P8135057837135578076

/-!
# A342790: Positions of palindromes in A342753.

The programs for A342790, there is no canonical definition to state claims against.
-/

/-! ## A342790.P522277835436515399

`eq[n, A342798(n^floor(atan(n)))]`
-/

namespace A342790.P522277835436515399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342798 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342790.P522277835436515399

/-! ## A342790.P11867936823483622458

`record[gcd(n+1, A342798(n+1))]`
-/

namespace A342790.P11867936823483622458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A342798 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342790.P11867936823483622458

/-! ## A342790.P9344268731439639277

`eq[n, A342798(round(sqrt(n²+1)))]`
-/

namespace A342790.P9344268731439639277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342798 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342790.P9344268731439639277

/-! ## A342790.P17762822720409228102

`eq[A000027(n+1), A342798(n+1)]+1`
-/

namespace A342790.P17762822720409228102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342798 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A342790.P17762822720409228102

/-! ## A342790.P2805865043013622332

`A052938(2*eq[n+1, A342798(n+1)])`
-/

namespace A342790.P2805865043013622332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342790.P2805865043013622332

/-!
# A342791: Positions in A342753 of words in which #0's - #1's is odd.

The programs for A342791, there is no canonical definition to state claims against.
-/

/-! ## A342791.P1146531454111186528

`comp[A342792(n+1)-1]+1`
-/

namespace A342791.P1146531454111186528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342792 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A342791.P1146531454111186528

/-! ## A342791.P6448051457000671588

`lt[-a(A009947(n)), 3]-1` with `a(0)=3, a(1)=3`
-/

namespace A342791.P6448051457000671588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  -f1 (A009947 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A342791.P6448051457000671588

/-! ## A342791.P9583916737608532126

`lt[0, 1-a(A009947(n+1)-1)]` with `a(0)=0`
-/

namespace A342791.P9583916737608532126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - f2 (A009947 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A342791.P9583916737608532126

/-! ## A342791.P15747775521589830923

`eq[2, 3-a(A339914(2*(n+1))-2)]` with `a(0)=1, a(1)=2`
-/

namespace A342791.P15747775521589830923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  3 - f2 (A339914 (2 * (n + 1)) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342791.P15747775521589830923

/-! ## A342791.P17209745425104395735

`eq[2, A039598(a(A009947(n+1)-1))]` with `a(0)=1`
-/

namespace A342791.P17209745425104395735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A039598 (f2 (A009947 (n + 1) - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342791.P17209745425104395735

/-! ## A342791.P9340684556064550808

`eq[3, A287556(a(A009947(n+1)-1)+1)]` with `a(0)=2`
-/

namespace A342791.P9340684556064550808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A287556 (f2 (A009947 (n + 1) - 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342791.P9340684556064550808

/-!
# A342792: Positions in A342753 of words in which #0's - #1's is even.

The programs for A342792, there is no canonical definition to state claims against.
-/

/-! ## A342792.P5827719380627406329

`lt[(a(A009947(n+1)-1)-1)², 1]` with `a(0)=2`
-/

namespace A342792.P5827719380627406329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (f1 (A009947 (n + 1) - 1).toNat - 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A342792.P5827719380627406329

/-! ## A342792.P14249802564215408751

`eq[1, A348364(a(A009947(n+1)-1)+1)]` with `a(0)=0`
-/

namespace A342792.P14249802564215408751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A348364 (f2 (A009947 (n + 1) - 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342792.P14249802564215408751

/-! ## A342792.P13631014003364239199

`eq[2, A004736(a(A009947(n+1)-1)+1)]` with `a(0)=0`
-/

namespace A342792.P13631014003364239199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A004736 (f2 (A009947 (n + 1) - 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342792.P13631014003364239199

/-! ## A342792.P524562215177786269

`eq[2, A124331(a(A009947(n+1)-1)+1)]` with `a(0)=0`
-/

namespace A342792.P524562215177786269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A124331 (f2 (A009947 (n + 1) - 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342792.P524562215177786269

/-! ## A342792.P13277082336912889893

`lt[2, A000005(a(A009947(n+1)-1)+2)]` with `a(0)=0`
-/

namespace A342792.P13277082336912889893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000005 (f2 (A009947 (n + 1) - 1).toNat + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A342792.P13277082336912889893

/-! ## A342792.P7104108802806299340

`eq[2, A278538((a(A009947(n+1)-1)+1)²+1)]` with `a(0)=0`
-/

namespace A342792.P7104108802806299340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A278538 ((f2 (A009947 (n + 1) - 1).toNat + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342792.P7104108802806299340

/-!
# A342793: a(n) = (1/3)*A342786(n).

The programs for A342793, there is no canonical definition to state claims against.
-/

/-! ## A342793.P15554411736907305064

`A342786(n+1)/3%A344162(2*(n+1))`
-/

namespace A342793.P15554411736907305064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342786 (n + 1) : ℚ) / (Int.tmod 3 (A344162 (2 * (n + 1))) : ℚ)

end

end A342793.P15554411736907305064

/-! ## A342793.P17555503700743710586

`A342786(n+1)/or(3, A342910(3*n+2))`
-/

namespace A342793.P17555503700743710586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342786 (n + 1) : ℚ) / (Int.lor 3 (A342910 (3 * n + 2)) : ℚ)

end

end A342793.P17555503700743710586

/-! ## A342793.P4103814727994078157

`A342786(n+1)/A010684(A085414(n+1))`
-/

namespace A342793.P4103814727994078157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342786 (n + 1) : ℚ) / (A010684 (A085414 (n + 1)).toNat : ℚ)

end

end A342793.P4103814727994078157

/-! ## A342793.P10056226377718154883

`A342786(n+1)/A120275(A001358(n+1))`
-/

namespace A342793.P10056226377718154883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342786 (n + 1) : ℚ) / (A120275 (A001358 (n + 1)).toNat : ℚ)

end

end A342793.P10056226377718154883

/-! ## A342793.P15662447378565422149

`A342786(n+1)/A120275(A069136(n+1))`
-/

namespace A342793.P15662447378565422149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342786 (n + 1) : ℚ) / (A120275 (A069136 (n + 1)).toNat : ℚ)

end

end A342793.P15662447378565422149

/-!
# A342795: a(n) is the number of core triads with n nodes up to isomorphism and transposition.

The programs for A342795, there is no canonical definition to state claims against.
-/

/-! ## A342795.P11583345612843387687

`A002064(n)-A363944(A000104(n))`
-/

namespace A342795.P11583345612843387687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n - A363944 (A000104 n).toNat

end

end A342795.P11583345612843387687

/-! ## A342795.P4656496442160891719

`A002064(n)-A294883(A249475(n))`
-/

namespace A342795.P4656496442160891719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n - A294883 (A249475 n).toNat

end

end A342795.P4656496442160891719

/-! ## A342795.P8048648432581628304

`A002064(n)-A234567(A335638(n))`
-/

namespace A342795.P8048648432581628304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n - A234567 (A335638 n).toNat

end

end A342795.P8048648432581628304

/-!
# A342799: Numbers m such that there are more 1s than 2s in {K(1), .., K(m)}, where K = A000002 (Kolakoski sequence).

The programs for A342799, there is no canonical definition to state claims against.
-/

/-! ## A342799.P11129234855048092197

`lt[0, A088568(n+1)]+1`
-/

namespace A342799.P11129234855048092197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A342799.P11129234855048092197

/-! ## A342799.P8807286428361074227

`lt[A294448(n+1), 0]+1`
-/

namespace A342799.P8807286428361074227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A342799.P8807286428361074227

/-! ## A342799.P4541713573613727550

`record[and(n+3, A294448(n+3))]`
-/

namespace A342799.P4541713573613727550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 3 : ℤ) (A294448 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342799.P4541713573613727550

/-! ## A342799.P6024070025321206195

`lt[A294448(n-a(2%n)), 0]` with `a(0)=0`
-/

namespace A342799.P6024070025321206195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A294448 ((n : ℤ) - f1 (2 % n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A342799.P6024070025321206195

/-! ## A342799.P7535693342544693922

`eq[1, round(A054353(n+1)/(n+1))]+1`
-/

namespace A342799.P7535693342544693922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A054353 (n + 1) : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A342799.P7535693342544693922

/-! ## A342799.P6926726405603711475

`lt[0, n+1-2*A074286(n+1)]+1`
-/

namespace A342799.P6926726405603711475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A074286 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A342799.P6926726405603711475

/-! ## A342799.P10982953432422312790

`lt[A294448(abs(1-n)-or(n-1, -n)), 0]`
-/

namespace A342799.P10982953432422312790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (|1 - (n : ℤ)| - Int.lor ((n : ℤ) - 1) (-(n : ℤ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A342799.P10982953432422312790

/-! ## A342799.P17116064184312716365

`eq[1, round((A216345(n+2)-1)/(n+1))]+1`
-/

namespace A342799.P17116064184312716365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A216345 (n + 2) - 1 : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A342799.P17116064184312716365

/-! ## A342799.P17224188612615547854

`eq[n, A131380(A216345(n+1))]`
-/

namespace A342799.P17224188612615547854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131380 (A216345 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342799.P17224188612615547854

/-! ## A342799.P1096651341319444068

`lt[(-1)^n, A088568(A028310(n))]`
-/

namespace A342799.P1096651341319444068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342799.P1096651341319444068

