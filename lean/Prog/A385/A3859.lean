import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A385903: Expansion of e.g.f. log((1-x)^4 / (x^4 - 5*x^3 + 6*x^2 - 4*x + 1)).

The programs for A385903, there is no canonical definition to state claims against.
-/

/-! ## A385903.P4441192403130405424

`A124010(A000984(n))*A387264(n)`
-/

namespace A385903.P4441192403130405424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A000984 n).toNat * A387264 n

end

end A385903.P4441192403130405424

/-! ## A385903.P11327600800890139339

`A124010(A011970(n))*A387264(n)`
-/

namespace A385903.P11327600800890139339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A011970 n).toNat * A387264 n

end

end A385903.P11327600800890139339

/-! ## A385903.P12699088650103122167

`A387264(n)%A007931(A258466(n))`
-/

namespace A385903.P12699088650103122167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387264 n) (A007931 (A258466 n).toNat)

end

end A385903.P12699088650103122167

/-! ## A385903.P7381155071386630143

`A073089(A330504(n+1))*A387264(n)`
-/

namespace A385903.P7381155071386630143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (A330504 (n + 1)).toNat * A387264 n

end

end A385903.P7381155071386630143

/-!
# A385905: Numbers k >= 1 such that digsum(k-r) + ... + digsum(k-1) = digsum(k+1) + ... + digsum(k+r) for some r >= 1 where digsum(i) is the digital sum of i (A007953).

The programs for A385905, there is no canonical definition to state claims against.
-/

/-! ## A385905.P12952813267358305006

`∑[A040345(2^n)]`
-/

namespace A385905.P12952813267358305006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040345 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385905.P12952813267358305006

/-! ## A385905.P11448117524766577783

`lt[n, A118765(n)]-1`
-/

namespace A385905.P11448117524766577783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A385905.P11448117524766577783

/-! ## A385905.P8866982810541315586

`∑[A040430(2^n)²]`
-/

namespace A385905.P8866982810541315586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040430 (2 ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385905.P8866982810541315586

/-! ## A385905.P2263129617113094617

`∑[A132951(2^n)²]`
-/

namespace A385905.P2263129617113094617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132951 (2 ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385905.P2263129617113094617

/-! ## A385905.P3942509165176155714

`∑[A167373(2^n)²]`
-/

namespace A385905.P3942509165176155714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167373 (2 ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385905.P3942509165176155714

/-!
# A385906: G.f. satisfies A(x) = Sum_{n>=0} x^n * Product_{k=0..n} (1 + a(1)*x + a(2)*x^2 + a(3)*x^3 + ... + a(k)*x^k).

The programs for A385906, there is no canonical definition to state claims against.
-/

/-! ## A385906.P8595356663562515950

`A001462(A279553(n)+A163000(n))`
-/

namespace A385906.P8595356663562515950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A279553 n + A163000 n).toNat

end

end A385906.P8595356663562515950

/-! ## A385906.P10157070881759195988

`A276581(A000110(n))+2^((n-1)%(n+1))-A317137(A383765(n))`
-/

namespace A385906.P10157070881759195988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276581 (A000110 n).toNat : ℚ) + ((2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ) - (A317137 (A383765 n).toNat : ℚ))

end

end A385906.P10157070881759195988

/-!
# A385907: E.g.f. A(x) satisfies: 1 = Sum_{n>=0} (1/(1-x)^n - A(x))^n / n!.

The programs for A385907, there is no canonical definition to state claims against.
-/

/-! ## A385907.P1425402656263624020

`A360244(a(n-2)+n²)` with `a(0)=1, a(1)=1`
-/

namespace A385907.P1425402656263624020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A360244 (a (n - 2) + (n ^ 2 : ℤ)).toNat

end

end A385907.P1425402656263624020

/-!
# A385909: Expansion of g.f. A(x) satisfying 0 = Sum_{n=-oo..+oo} x^n * (x^(2*n) - A(x))^(3*n+1).

The programs for A385909, there is no canonical definition to state claims against.
-/

/-! ## A385909.P8048656313991165619

`A026806(A304628(n+1))`
-/

namespace A385909.P8048656313991165619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A304628 (n + 1)).toNat

end

end A385909.P8048656313991165619

/-! ## A385909.P11984603096126669658

`A008615(A173921(2*n+1)+A026559(n+1))`
-/

namespace A385909.P11984603096126669658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A173921 (2 * n + 1) + A026559 (n + 1)).toNat

end

end A385909.P11984603096126669658

/-! ## A385909.P15196405562854716781

`A187188(A144700(2*n+3)+A008578(n+3))`
-/

namespace A385909.P15196405562854716781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A144700 (2 * n + 3) + A008578 (n + 3)).toNat

end

end A385909.P15196405562854716781

/-!
# A385911: If n = 2^b*3^c, then a(n) = (-1)^b * binomial(b+c, b), else a(n) = 0, for n >= 1.

The programs for A385911, there is no canonical definition to state claims against.
-/

/-! ## A385911.P14552769058578086959

`Δ[A061984(n)]*A343785(n+1)`
-/

namespace A385911.P14552769058578086959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A343785 (n + 1)

end

end A385911.P14552769058578086959

/-! ## A385911.P1278194820167670537

`∑{d}[n+1, A364249(#)*A374134((n+1)/#)]`
-/

namespace A385911.P1278194820167670537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A364249 d * A374134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385911.P1278194820167670537

/-! ## A385911.P17948179757314752439

`∑{d}[n+1, A059841(#-1)*A364249((n+1)/#)]`
-/

namespace A385911.P17948179757314752439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A364249 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385911.P17948179757314752439

/-! ## A385911.P13925318407027217918

`A385910(∑[n+1]+2)`
-/

namespace A385911.P13925318407027217918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385910 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A385911.P13925318407027217918

/-!
# A385912: A diagonal (unsigned) of triangle A385910; a(n) = -A385910(n+2,n) for n >= 1.

The programs for A385912, there is no canonical definition to state claims against.
-/

/-! ## A385912.P16308593975471726965

`A199332(A218481(2*n+1))-A130020(n)`
-/

namespace A385912.P16308593975471726965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199332 (A218481 (2 * n + 1)).toNat - A130020 n

end

end A385912.P16308593975471726965

/-!
# A385913: G.f. satisfies 1 = Sum_{n>=0} x^n * (1 + x*A(x)^n)^n / A(x)^(n+1).

The programs for A385913, there is no canonical definition to state claims against.
-/

/-! ## A385913.P17238202523638664484

`A000957(n)+A000120(A353453(n))`
-/

namespace A385913.P17238202523638664484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 n + A000120 (A353453 n).toNat

end

end A385913.P17238202523638664484

/-! ## A385913.P6213696522906609462

`A000267(A002816(n+1)*A156301(n))`
-/

namespace A385913.P6213696522906609462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A002816 (n + 1) * A156301 n).toNat

end

end A385913.P6213696522906609462

/-! ## A385913.P16201813981142091317

`A000267(lcm(A002816(n+1), A156301(n)))`
-/

namespace A385913.P16201813981142091317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (Int.lcm (A002816 (n + 1)) (A156301 n))

end

end A385913.P16201813981142091317

/-!
# A385914: G.f. A(x) satisfies 1 = Sum_{n>=0} x^n * (1 + x*A(x)^(n+1))^n / A(x)^(n+1).

The programs for A385914, there is no canonical definition to state claims against.
-/

/-! ## A385914.P7295727230414497008

`A023193(A056272(n))`
-/

namespace A385914.P7295727230414497008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A056272 n).toNat

end

end A385914.P7295727230414497008

/-! ## A385914.P11306846259119100953

`A126337(A285459(n))`
-/

namespace A385914.P11306846259119100953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126337 (A285459 n).toNat

end

end A385914.P11306846259119100953

/-! ## A385914.P13972589868972156945

`A209037(A382990(n))`
-/

namespace A385914.P13972589868972156945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209037 (A382990 n).toNat

end

end A385914.P13972589868972156945

/-! ## A385914.P2709494635489117360

`A153206(A048093(n+1))`
-/

namespace A385914.P2709494635489117360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153206 (A048093 (n + 1)).toNat

end

end A385914.P2709494635489117360

/-!
# A385917: Hexagonal numbers that are one-sixth of another hexagonal number.

The programs for A385917, there is no canonical definition to state claims against.
-/

/-! ## A385917.P15312814660154226134

`A077289(A008574(n)-A122553(n))`
-/

namespace A385917.P15312814660154226134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077289 (A008574 n - A122553 n).toNat

end

end A385917.P15312814660154226134

/-!
# A385920: E.g.f. A(x) satisfies A(x) = exp(x*A(x) + x^3*A''(x)).

The programs for A385920, there is no canonical definition to state claims against.
-/

/-! ## A385920.P14885733816666734249

`A037144(A348943(n!))`
-/

namespace A385920.P14885733816666734249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (A348943 (Nat.factorial n)).toNat

end

end A385920.P14885733816666734249

/-!
# A385921: E.g.f. A(x) satisfies A(x) = exp(x*A(x) + x^4*A'''(x)).

The programs for A385921, there is no canonical definition to state claims against.
-/

/-! ## A385921.P3270447364514918824

`A043706(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A385921.P3270447364514918824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A043706 (a (n - 1) ^ 2).toNat

end

end A385921.P3270447364514918824

/-!
# A385922: E.g.f. A(x) satisfies A(x) = exp(x*A(x) + x^5*A''''(x)).

The programs for A385922, there is no canonical definition to state claims against.
-/

/-! ## A385922.P2838213021418922608

`∏{e}[∑[n²]^n, #+1]`
-/

namespace A385922.P2838213021418922608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A385922.P2838213021418922608

/-!
# A385923: E.g.f. A(x) satisfies A(x) = exp(x*A(x) + x^6*A'''''(x)).

The programs for A385923, there is no canonical definition to state claims against.
-/

/-! ## A385923.P13764636048277170603

`(n+1)^((n-4)^a(n-1)+3)` with `a(0)=1`
-/

namespace A385923.P13764636048277170603
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℝ) ^ (((n : ℤ) - 4 : ℝ) ^ (a (n - 1)) + 3)

end

end A385923.P13764636048277170603

/-! ## A385923.P2828354315387095129

`A365623(2*n²)`
-/

namespace A385923.P2828354315387095129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365623 (2 * n ^ 2)

end

end A385923.P2828354315387095129

/-!
# A385927: a(n) = numerator m of the fraction m/n that is most closely approximated by a prime-fraction p/q, under conditions stated in A385925.

The programs for A385927, there is no canonical definition to state claims against.
-/

/-! ## A385927.P1176104582734656601

`A385926(n+3)+A124010(A327899(n+2))`
-/

namespace A385927.P1176104582734656601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385926 (n + 3) + A124010 (A327899 (n + 2)).toNat

end

end A385927.P1176104582734656601

/-! ## A385927.P17960706891212225383

`A378682(A237425(n))`
-/

namespace A385927.P17960706891212225383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378682 (A237425 n).toNat

end

end A385927.P17960706891212225383

/-! ## A385927.P9940512152757847095

`A256660(A200062(n+2))`
-/

namespace A385927.P9940512152757847095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256660 (A200062 (n + 2)).toNat

end

end A385927.P9940512152757847095

/-! ## A385927.P11900533045983407362

`A361197(A115123(n+2))`
-/

namespace A385927.P11900533045983407362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361197 (A115123 (n + 2)).toNat

end

end A385927.P11900533045983407362

/-! ## A385927.P17532697402584854964

`A371572(A140047(n+2))`
-/

namespace A385927.P17532697402584854964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371572 (A140047 (n + 2)).toNat

end

end A385927.P17532697402584854964

/-!
# A385929: Number of simple, undirected, prime graphs G on n unlabeled vertices with no degree-1 vertex in G or its complement, as well as having no induced P5 in G or in its complement.

The programs for A385929, there is no canonical definition to state claims against.
-/

/-! ## A385929.P10549148021410934985

`A237666(A138882(n+1))`
-/

namespace A385929.P10549148021410934985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237666 (A138882 (n + 1)).toNat

end

end A385929.P10549148021410934985

/-! ## A385929.P15182235351345296644

`A161031(A325008(n+1))`
-/

namespace A385929.P15182235351345296644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161031 (A325008 (n + 1)).toNat

end

end A385929.P15182235351345296644

/-! ## A385929.P11418407688046020065

`A296057(n+1)-A127967(n)`
-/

namespace A385929.P11418407688046020065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296057 (n + 1) - A127967 n

end

end A385929.P11418407688046020065

/-! ## A385929.P14961311791676440438

`A296057(n+1)-A171846(n)`
-/

namespace A385929.P14961311791676440438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296057 (n + 1) - A171846 n

end

end A385929.P14961311791676440438

/-! ## A385929.P207049505141491551

`A296057(n+1)-A351322(n)`
-/

namespace A385929.P207049505141491551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296057 (n + 1) - A351322 n

end

end A385929.P207049505141491551

/-!
# A385931: a(n) is the least integer such that there is an n-element set of integers between 0 and a(n) such that the sums of any three distinct elements are all distinct.

The programs for A385931, there is no canonical definition to state claims against.
-/

/-! ## A385931.P3072588216545152463

`A303852(n)-A245368(n)`
-/

namespace A385931.P3072588216545152463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303852 n - A245368 n

end

end A385931.P3072588216545152463

/-! ## A385931.P16144845732446773952

`A193286(A137803(n+1))-A130091(n+1)`
-/

namespace A385931.P16144845732446773952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193286 (A137803 (n + 1)).toNat - A130091 (n + 1)

end

end A385931.P16144845732446773952

/-! ## A385931.P4253597564099611621

`A027868(A374942(2*n+5)+A367218(2*n+1))`
-/

namespace A385931.P4253597564099611621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A374942 (2 * n + 5) + A367218 (2 * n + 1)).toNat

end

end A385931.P4253597564099611621

/-! ## A385931.P11979059206600118560

`A171948(A327010(n+1))`
-/

namespace A385931.P11979059206600118560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171948 (A327010 (n + 1)).toNat

end

end A385931.P11979059206600118560

/-! ## A385931.P8841763403827016322

`A259361(A382171(n+1))`
-/

namespace A385931.P8841763403827016322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A382171 (n + 1)).toNat

end

end A385931.P8841763403827016322

/-!
# A385933: Number of ways to tile a "central bump" strip of length n with 1 X 1 squares and 1 X 3 rectangles.

The programs for A385933, the canonical program `A385933.P2515231745291431757` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385933 has offset 0).

The definition of A385933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385933.P2515231745291431757

`a(n-1)+a(n-3)-a(n-4)+a(n-5)+a(n-6)-a(n-9)` with `a(0)=4, a(1)=9, a(2)=13, a(3)=25, a(4)=30, a(5)=35, a(6)=52, a(7)=78, a(8)=121`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A385933

/-- `a(n-1)+a(n-3)-a(n-4)+a(n-5)+a(n-6)-a(n-9)` -/
def P2515231745291431757.Spec : Prop :=
  ∀ n, P2515231745291431757.a n = A385933 n

theorem P2515231745291431757.correct : P2515231745291431757.Spec := by
  intro n
  simp only [A385933]

end A385933

/-!
# A385934: Numbers that are one greater than terms of A055932, and also prime.

The programs for A385934, the canonical program `A385934.P15917893729798165172` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385934 has offset 1).

The definition of A385934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385934.P10458069502082641514

`∩[A000040(n+1), A055932(n+1)+1]`
-/

namespace A385934.P10458069502082641514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385934.P10458069502082641514

namespace A385934

/-- `∩[A000040(n+1), A055932(n+1)+1]` -/
def P10458069502082641514.Spec : Prop :=
  ∀ n, (P10458069502082641514.a n : ℤ) = A385934 (n + 1)

end A385934

/-! ## A385934.P12234015544285941392

`∩[A055932(n+1)+1, A268391(n+1)]`
-/

namespace A385934.P12234015544285941392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385934.P12234015544285941392

namespace A385934

/-- `∩[A055932(n+1)+1, A268391(n+1)]` -/
def P12234015544285941392.Spec : Prop :=
  ∀ n, (P12234015544285941392.a n : ℤ) = A385934 (n + 1)

end A385934

/-! ## A385934.P13167197614016999775

`record[A001414(A055932(n+1)+1)]`
-/

namespace A385934.P13167197614016999775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A055932 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385934.P13167197614016999775

namespace A385934

/-- `record[A001414(A055932(n+1)+1)]` -/
def P13167197614016999775.Spec : Prop :=
  ∀ n, P13167197614016999775.a n = A385934 (n + 1)

end A385934

/-! ## A385934.P9382058629345491721

`record[A006530(A055932(n+1)+1)]`
-/

namespace A385934.P9382058629345491721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A055932 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385934.P9382058629345491721

namespace A385934

/-- `record[A006530(A055932(n+1)+1)]` -/
def P9382058629345491721.Spec : Prop :=
  ∀ n, P9382058629345491721.a n = A385934 (n + 1)

end A385934

/-! ## A385934.P7885817887336595322

`record[A020639(A055932(n+1)+1)]`
-/

namespace A385934.P7885817887336595322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A055932 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385934.P7885817887336595322

namespace A385934

/-- `record[A020639(A055932(n+1)+1)]` -/
def P7885817887336595322.Spec : Prop :=
  ∀ n, P7885817887336595322.a n = A385934 (n + 1)

end A385934

/-! ## A385934.P15917893729798165172

`∩[A000040(n+1), A073491(n+1)+1]`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A385934

/-- `∩[A000040(n+1), A073491(n+1)+1]` -/
def P15917893729798165172.Spec : Prop :=
  ∀ n, (P15917893729798165172.a n : ℤ) = A385934 (n + 1)

theorem P15917893729798165172.correct : P15917893729798165172.Spec := by
  intro n
  simp only [A385934, Nat.add_sub_cancel]

end A385934

/-! ## A385934.P1193868581219807932

`record[A166333(A055932(n+1))]`
-/

namespace A385934.P1193868581219807932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A055932 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385934.P1193868581219807932

namespace A385934

/-- `record[A166333(A055932(n+1))]` -/
def P1193868581219807932.Spec : Prop :=
  ∀ n, P1193868581219807932.a n = A385934 (n + 1)

end A385934

/-! ## A385934.P4735097487014241348

`record[A002034(A055932(n+1)+1)]`
-/

namespace A385934.P4735097487014241348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A055932 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385934.P4735097487014241348

namespace A385934

/-- `record[A002034(A055932(n+1)+1)]` -/
def P4735097487014241348.Spec : Prop :=
  ∀ n, P4735097487014241348.a n = A385934 (n + 1)

end A385934

/-!
# A385935: Numbers that are one less than terms of A055932, and also prime.

The programs for A385935, there is no canonical definition to state claims against.
-/

/-! ## A385935.P14039487651345168587

`p?[∑[A376690(n+1)]]`
-/

namespace A385935.P14039487651345168587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376690 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A385935.P14039487651345168587

/-! ## A385935.P12818705549345943010

`eq[A055672(n), A071364(n+1)]`
-/

namespace A385935.P12818705549345943010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385935.P12818705549345943010

/-! ## A385935.P769799121031407636

`eq[A055672(n), A074044(n+1)]`
-/

namespace A385935.P769799121031407636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074044 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385935.P769799121031407636

/-! ## A385935.P7095003975991764154

`eq[A071364(n+1), A129283(n)]`
-/

namespace A385935.P7095003975991764154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385935.P7095003975991764154

/-! ## A385935.P16718885594813917833

`eq[A083259(n+1), A129283(n)]`
-/

namespace A385935.P16718885594813917833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385935.P16718885594813917833

/-! ## A385935.P714074780174918204

`eq[A071364(n+1), A181549(n)]`
-/

namespace A385935.P714074780174918204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181549 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385935.P714074780174918204

/-! ## A385935.P4407036043689579113

`eq[A083259(n+1), A181549(n)]`
-/

namespace A385935.P4407036043689579113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181549 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385935.P4407036043689579113

/-! ## A385935.P13142024248166336341

`eq[A003415(n), A341629(n+1)]`
-/

namespace A385935.P13142024248166336341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385935.P13142024248166336341

/-! ## A385935.P8352122807568107061

`eq[A018783(n), A341629(n+1)]`
-/

namespace A385935.P8352122807568107061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385935.P8352122807568107061

/-! ## A385935.P17172577353830153764

`eq[A032741(n), A341629(n+1)]`
-/

namespace A385935.P17172577353830153764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385935.P17172577353830153764

/-!
# A385938: a(n) = 2*n/3 if n == 0 (mod 3), (2*n+1)/3 if n == 1 (mod 3), (7*n+1)/3 if n == 2 (mod 3).

The programs for A385938, the canonical program `A385938.P15670182765899731212` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385938 has offset 0).

The definition of A385938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385938.P15670182765899731212

`A318972(A004772(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A385938

/-- `A318972(A004772(n+1))` -/
def P15670182765899731212.Spec : Prop :=
  ∀ n, P15670182765899731212.a n = A385938 n

theorem P15670182765899731212.correct : P15670182765899731212.Spec := by
  intro n
  simp only [A385938]

end A385938

/-! ## A385938.P16651939738165208330

`A117910(10*n+2)-(n+1)`
-/

namespace A385938.P16651939738165208330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (10 * n + 2) - (n + 1 : ℤ)

end

end A385938.P16651939738165208330

namespace A385938

/-- `A117910(10*n+2)-(n+1)` -/
def P16651939738165208330.Spec : Prop :=
  ∀ n, P16651939738165208330.a n = A385938 n

end A385938

/-!
# A385944: a(n) = denominator of rational number Im(P(x))/Pi, x in interval (1/A005117(n+1),1/A005117(n)), where P(x) is the prime zeta function.

The programs for A385944, there is no canonical definition to state claims against.
-/

/-! ## A385944.P3007574088011194470

`A070889(A005117(n+1))`
-/

namespace A385944.P3007574088011194470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070889 (A005117 (n + 1)).toNat

end

end A385944.P3007574088011194470

/-! ## A385944.P16466210569717187076

`A070889(A077377(n+1))`
-/

namespace A385944.P16466210569717187076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070889 (A077377 (n + 1)).toNat

end

end A385944.P16466210569717187076

/-! ## A385944.P5901019797050215321

`A070889(A348506(n+1))`
-/

namespace A385944.P5901019797050215321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070889 (A348506 (n + 1)).toNat

end

end A385944.P5901019797050215321

/-! ## A385944.P6572732920504953859

`A070889(A367801(n+1))`
-/

namespace A385944.P6572732920504953859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070889 (A367801 (n + 1)).toNat

end

end A385944.P6572732920504953859

/-! ## A385944.P4847104299202968244

`A070889(A076144(n+2))`
-/

namespace A385944.P4847104299202968244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070889 (A076144 (n + 2)).toNat

end

end A385944.P4847104299202968244

/-!
# A385945: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(k+3,3) * binomial(n-1,k) * a(k) * a(n-1-k).

The programs for A385945, there is no canonical definition to state claims against.
-/

/-! ## A385945.P9938987746200280870

`A175298(A000364(n))`
-/

namespace A385945.P9938987746200280870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (A000364 n).toNat

end

end A385945.P9938987746200280870

/-!
# A385949: Number of digits in 7^(n!).

The programs for A385949, there is no canonical definition to state claims against.
-/

/-! ## A385949.P14435030421231165318

`A210062(n!)`
-/

namespace A385949.P14435030421231165318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210062 (Nat.factorial n)

end

end A385949.P14435030421231165318

/-! ## A385949.P6222714006065012481

`A210062(A000142(n))`
-/

namespace A385949.P6222714006065012481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210062 (A000142 n).toNat

end

end A385949.P6222714006065012481

/-! ## A385949.P2097848075648147493

`A210062(A033646(n))`
-/

namespace A385949.P2097848075648147493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210062 (A033646 n).toNat

end

end A385949.P2097848075648147493

/-!
# A385950: Number of digits in 3^(n!).

The programs for A385950, there is no canonical definition to state claims against.
-/

/-! ## A385950.P7615650115328593698

`A034888(n!)`
-/

namespace A385950.P7615650115328593698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (Nat.factorial n)

end

end A385950.P7615650115328593698

/-! ## A385950.P13320544464686176494

`A034888(A000142(n))`
-/

namespace A385950.P13320544464686176494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A000142 n).toNat

end

end A385950.P13320544464686176494

/-! ## A385950.P14379051252994090511

`A034888(A033646(n))`
-/

namespace A385950.P14379051252994090511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A033646 n).toNat

end

end A385950.P14379051252994090511

/-! ## A385950.P6271426300692233310

`A034888(A033647(n))`
-/

namespace A385950.P6271426300692233310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A033647 n).toNat

end

end A385950.P6271426300692233310

/-!
# A385951: Number of digits in 5^(n!).

The programs for A385951, there is no canonical definition to state claims against.
-/

/-! ## A385951.P14311223797955598387

`A210435(n!)`
-/

namespace A385951.P14311223797955598387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 (Nat.factorial n)

end

end A385951.P14311223797955598387

/-! ## A385951.P17671249592973152714

`A210435(A000142(n))`
-/

namespace A385951.P17671249592973152714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 (A000142 n).toNat

end

end A385951.P17671249592973152714

/-! ## A385951.P651268077850208939

`A210435(A033646(n))`
-/

namespace A385951.P651268077850208939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 (A033646 n).toNat

end

end A385951.P651268077850208939

/-! ## A385951.P11687741393765208724

`A210435(A033647(n))`
-/

namespace A385951.P11687741393765208724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 (A033647 n).toNat

end

end A385951.P11687741393765208724

/-!
# A385952: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(k+3,3) * a(k) * a(n-1-k).

The programs for A385952, there is no canonical definition to state claims against.
-/

/-! ## A385952.P1123848402413948615

`A344616(A000638(3*n))+gcd(2, ∏{p}[n, #])`
-/

namespace A385952.P1123848402413948615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A000638 (3 * n)).toNat + (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)

end

end A385952.P1123848402413948615

/-!
# A385953: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(k+4,4) * a(k) * a(n-1-k).

The programs for A385953, there is no canonical definition to state claims against.
-/

/-! ## A385953.P4715426866227062076

`A373803(A237593(n+1)+A081135(n))`
-/

namespace A385953.P4715426866227062076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373803 (A237593 (n + 1) + A081135 n).toNat

end

end A385953.P4715426866227062076

/-!
# A385956: Intersection of A025487 and A002378.

The programs for A385956, there is no canonical definition to state claims against.
-/

/-! ## A385956.P10966527898977136641

`∩[(n+1)*(n+2), A025487(n+2)]`
-/

namespace A385956.P10966527898977136641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385956.P10966527898977136641

/-! ## A385956.P16825919693258099407

`∩[A025487(n+1), A002378(n)]`
-/

namespace A385956.P16825919693258099407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385956.P16825919693258099407

/-! ## A385956.P3856047843830045061

`∩[A025487(n+1), A226023(n)]`
-/

namespace A385956.P3856047843830045061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385956.P3856047843830045061

/-! ## A385956.P1213526189185924047

`∩[A025487(n+1), A253913(n+1)]`
-/

namespace A385956.P1213526189185924047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385956.P1213526189185924047

/-! ## A385956.P11335646417313851679

`∩[A025487(n+1), A339267(n+1)]`
-/

namespace A385956.P11335646417313851679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385956.P11335646417313851679

/-!
# A385957: Prime(n) is the a(n)-th prime having its distinct digits.

The programs for A385957, there is no canonical definition to state claims against.
-/

/-! ## A385957.P14214404347115349809

`A287957(A321201(n+2)+A096852(n+1))`
-/

namespace A385957.P14214404347115349809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287957 (A321201 (n + 2) + A096852 (n + 1)).toNat

end

end A385957.P14214404347115349809

/-!
# A385958: a(n) is the largest prime p such that b(n) = b(n-1)*(p+1)/(p-1) is an integer (A385959), where b(0) = 1.

The programs for A385958, there is no canonical definition to state claims against.
-/

/-! ## A385958.P14654569979748300988

`A073409(A385959(n))`
-/

namespace A385958.P14654569979748300988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073409 (A385959 n).toNat

end

end A385958.P14654569979748300988

/-! ## A385958.P2445609466903012448

`A108077(2*A385959(n))`
-/

namespace A385958.P2445609466903012448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108077 (2 * A385959 n).toNat

end

end A385958.P2445609466903012448

/-! ## A385958.P9765343190488461585

`A166333(2*A385959(n))`
-/

namespace A385958.P9765343190488461585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * A385959 n).toNat

end

end A385958.P9765343190488461585

/-! ## A385958.P777991218539318329

`A108077(A385959(n)+A385959(n))`
-/

namespace A385958.P777991218539318329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108077 (A385959 n + A385959 n).toNat

end

end A385958.P777991218539318329

/-! ## A385958.P2240720315705739360

`A166333(A385959(n)+A385959(n))`
-/

namespace A385958.P2240720315705739360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A385959 n + A385959 n).toNat

end

end A385958.P2240720315705739360

/-!
# A385970: a(n) is the minimum number of powers needed to obtain the n-th term of sequence A385969.

The programs for A385970, there is no canonical definition to state claims against.
-/

/-! ## A385970.P3946311807393276465

`A099910(A127611(n+2))`
-/

namespace A385970.P3946311807393276465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099910 (A127611 (n + 2)).toNat

end

end A385970.P3946311807393276465

/-! ## A385970.P15599142929897492521

`A353849(A379310(n+1)+A100292(n+1))`
-/

namespace A385970.P15599142929897492521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (A379310 (n + 1) + A100292 (n + 1)).toNat

end

end A385970.P15599142929897492521

/-! ## A385970.P7033599852785357284

`A043537(xor(A083166(n+4), A303362(2*(n+1))))`
-/

namespace A385970.P7033599852785357284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (Int.xor (A083166 (n + 4)) (A303362 (2 * (n + 1)))).toNat

end

end A385970.P7033599852785357284

/-!
# A385972: The long legs of the triangles defined in A365577.

The programs for A385972, there is no canonical definition to state claims against.
-/

/-! ## A385972.P8899342614662935251

`Δ[2^(2^n+1)]`
-/

namespace A385972.P8899342614662935251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (2 ^ n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A385972.P8899342614662935251

/-! ## A385972.P8538962050404271884

`2*Δ[a(n-1)²]` with `a(0)=2`
-/

namespace A385972.P8538962050404271884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A385972.P8538962050404271884

/-! ## A385972.P1304247247337197773

`A286866(2^(n+1))`
-/

namespace A385972.P1304247247337197773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286866 (2 ^ (n + 1))

end

end A385972.P1304247247337197773

/-! ## A385972.P16446033968104649453

`A267816(A000079(n))+1`
-/

namespace A385972.P16446033968104649453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267816 (A000079 n).toNat + 1

end

end A385972.P16446033968104649453

/-!
# A385973: The hypotenuses of the triangles defined in A365577.

The programs for A385973, there is no canonical definition to state claims against.
-/

/-! ## A385973.P3187850202020352317

`2*Δ[a(n-1)²]+1` with `a(0)=2`
-/

namespace A385973.P3187850202020352317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1

end

end A385973.P3187850202020352317

/-! ## A385973.P768135257496080894

`A092440(2^n)`
-/

namespace A385973.P768135257496080894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092440 (2 ^ n)

end

end A385973.P768135257496080894

/-! ## A385973.P2311120641689556786

`A385972(n+1)+1`
-/

namespace A385973.P2311120641689556786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385972 (n + 1) + 1

end

end A385973.P2311120641689556786

/-!
# A385975: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(2*k,n-k).

The programs for A385975, there is no canonical definition to state claims against.
-/

/-! ## A385975.P17347988656612340109

`A247908(A247173(n))`
-/

namespace A385975.P17347988656612340109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A247173 n).toNat

end

end A385975.P17347988656612340109

/-! ## A385975.P11684111235913057302

`A357627(A000108(n))+∑{d}[n+1, #%2]`
-/

namespace A385975.P11684111235913057302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357627 (A000108 n).toNat + ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ)

end

end A385975.P11684111235913057302

/-!
# A385977: Length of the long leg of the triangles defined in A377725.

The programs for A385977, the canonical program `A385977.P16877403268120504790` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385977 has offset 0).

The definition of A385977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385977.P12067659224639727280

`4*A377016(n)`
-/

namespace A385977.P12067659224639727280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A377016 n

end

end A385977.P12067659224639727280

namespace A385977

/-- `4*A377016(n)` -/
def P12067659224639727280.Spec : Prop :=
  ∀ n, P12067659224639727280.a n = A385977 n

end A385977

/-! ## A385977.P16877403268120504790

`2*A002315(n)*(A002315(n)+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A385977

/-- `2*A002315(n)*(A002315(n)+1)` -/
def P16877403268120504790.Spec : Prop :=
  ∀ n, P16877403268120504790.a n = A385977 n

theorem P16877403268120504790.correct : P16877403268120504790.Spec := by
  intro n
  simp only [A385977]

end A385977

/-! ## A385977.P9043284840830536012

`A379508(n)+A377725(n)`
-/

namespace A385977.P9043284840830536012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379508 n + A377725 n

end

end A385977.P9043284840830536012

namespace A385977

/-- `A379508(n)+A377725(n)` -/
def P9043284840830536012.Spec : Prop :=
  ∀ n, P9043284840830536012.a n = A385977 n

end A385977

/-! ## A385977.P17728961505061518597

`A379509(n)-A377725(n)`
-/

namespace A385977.P17728961505061518597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379509 n - A377725 n

end

end A385977.P17728961505061518597

namespace A385977

/-- `A379509(n)-A377725(n)` -/
def P17728961505061518597.Spec : Prop :=
  ∀ n, P17728961505061518597.a n = A385977 n

end A385977

/-! ## A385977.P2566908499119202052

`A129744(2*n+1)+A082639(2*(n+1))`
-/

namespace A385977.P2566908499119202052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129744 (2 * n + 1) + A082639 (2 * (n + 1))

end

end A385977.P2566908499119202052

namespace A385977

/-- `A129744(2*n+1)+A082639(2*(n+1))` -/
def P2566908499119202052.Spec : Prop :=
  ∀ n, P2566908499119202052.a n = A385977 n

end A385977

/-! ## A385977.P5880255290378114811

`A362545(n)+A377726(n)+A377725(n)`
-/

namespace A385977.P5880255290378114811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362545 n + (A377726 n + A377725 n)

end

end A385977.P5880255290378114811

namespace A385977

/-- `A362545(n)+A377726(n)+A377725(n)` -/
def P5880255290378114811.Spec : Prop :=
  ∀ n, P5880255290378114811.a n = A385977 n

end A385977

/-! ## A385977.P9384950315660461726

`A002315(n)+A378380(n)-A377725(n)`
-/

namespace A385977.P9384950315660461726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n + (A378380 n - A377725 n)

end

end A385977.P9384950315660461726

namespace A385977

/-- `A002315(n)+A378380(n)-A377725(n)` -/
def P9384950315660461726.Spec : Prop :=
  ∀ n, P9384950315660461726.a n = A385977 n

end A385977

/-! ## A385977.P7138717223187384258

`(A005319(n+1)+A005319(n))*A182435(n+1)`
-/

namespace A385977.P7138717223187384258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005319 (n + 1) + A005319 n) * A182435 (n + 1)

end

end A385977.P7138717223187384258

namespace A385977

/-- `(A005319(n+1)+A005319(n))*A182435(n+1)` -/
def P7138717223187384258.Spec : Prop :=
  ∀ n, P7138717223187384258.a n = A385977 n

end A385977

/-!
# A385978: Number of trailing zeros in (10*n)^(10*n).

The programs for A385978, the canonical program `A385978.P3328352931588530026` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385978 has offset 1).

The definition of A385978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385978.P3328352931588530026

`10*(n+1)*(val(n+1, 10)+1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A385978

/-- `10*(n+1)*(val(n+1, 10)+1)` -/
def P3328352931588530026.Spec : Prop :=
  ∀ n, (P3328352931588530026.a n : ℤ) = A385978 (n + 1)

theorem P3328352931588530026.correct : P3328352931588530026.Spec := by
  intro n
  simp only [A385978, Nat.add_sub_cancel]

end A385978

/-! ## A385978.P4767756646897959645

`10*(n+1)*(A122840(n+1)+1)`
-/

namespace A385978.P4767756646897959645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ((n + 1 : ℤ) * (A122840 (n + 1) + 1))

end

end A385978.P4767756646897959645

namespace A385978

/-- `10*(n+1)*(A122840(n+1)+1)` -/
def P4767756646897959645.Spec : Prop :=
  ∀ n, P4767756646897959645.a n = A385978 (n + 1)

end A385978

/-! ## A385978.P15824375166695496927

`(n+1)*a(val(n+1, 10))` with `a(0)=10`
-/

namespace A385978.P15824375166695496927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  (n + 1) * a (SequenceMachineLib.valuation (n + 1) 10)

end

end A385978.P15824375166695496927

namespace A385978

/-- `(n+1)*a(val(n+1, 10))` -/
def P15824375166695496927.Spec : Prop :=
  ∀ n, (P15824375166695496927.a n : ℤ) = A385978 (n + 1)

end A385978

/-! ## A385978.P11244116428629609507

`10*(n+1)*A160094(n+1)`
-/

namespace A385978.P11244116428629609507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ((n + 1 : ℤ) * A160094 (n + 1))

end

end A385978.P11244116428629609507

namespace A385978

/-- `10*(n+1)*A160094(n+1)` -/
def P11244116428629609507.Spec : Prop :=
  ∀ n, P11244116428629609507.a n = A385978 (n + 1)

end A385978

/-! ## A385978.P616350263390972875

`(n+1)*a(A122840(n+1))` with `a(0)=10`
-/

namespace A385978.P616350263390972875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  (n + 1) * a (A122840 (n + 1)).toNat

end

end A385978.P616350263390972875

namespace A385978

/-- `(n+1)*a(A122840(n+1))` -/
def P616350263390972875.Spec : Prop :=
  ∀ n, (P616350263390972875.a n : ℤ) = A385978 (n + 1)

end A385978

/-! ## A385978.P10167831805145431602

`A008592((n+1)*A122840(A008592(n+1)))`
-/

namespace A385978.P10167831805145431602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 ((n + 1 : ℤ) * A122840 (A008592 (n + 1)).toNat).toNat

end

end A385978.P10167831805145431602

namespace A385978

/-- `A008592((n+1)*A122840(A008592(n+1)))` -/
def P10167831805145431602.Spec : Prop :=
  ∀ n, P10167831805145431602.a n = A385978 (n + 1)

end A385978

/-!
# A385983: a(0) = 1; a(n) = Sum_{k=0..n-1} 3^k * binomial(n-1,k) * a(k) * a(n-1-k).

The programs for A385983, there is no canonical definition to state claims against.
-/

/-! ## A385983.P17523639495459056066

`A351976(A115294(n))`
-/

namespace A385983.P17523639495459056066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351976 (A115294 n).toNat

end

end A385983.P17523639495459056066

/-!
# A385987: Prime numbers of the form A385986(1) + ... + A385986(k) for some k > 0.

The programs for A385987, there is no canonical definition to state claims against.
-/

/-! ## A385987.P5464129579935749506

`p?[∑[A385986(n+1)]]`
-/

namespace A385987.P5464129579935749506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385986 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A385987.P5464129579935749506

/-! ## A385987.P18224612936439786820

`∩[A000040(n+1), ∑[A385986(n+1)]]`
-/

namespace A385987.P18224612936439786820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385987.P18224612936439786820

/-! ## A385987.P6919349625212643126

`A211777(A032061(n))`
-/

namespace A385987.P6919349625212643126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211777 (A032061 n).toNat

end

end A385987.P6919349625212643126

/-!
# A385989: a(n) is the least m > n such that 2^n and 2^m are congruent modulo n.

The programs for A385989, there is no canonical definition to state claims against.
-/

/-! ## A385989.P11362061063658095912

`n+1+A007733(n+1)`
-/

namespace A385989.P11362061063658095912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A007733 (n + 1)

end

end A385989.P11362061063658095912

/-! ## A385989.P14722353732512301245

`A002326(A025480(n))+n+1`
-/

namespace A385989.P14722353732512301245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A025480 n).toNat + (n + 1 : ℤ)

end

end A385989.P14722353732512301245

/-! ## A385989.P6643279341835276976

`A054703(A000265(n+1))+n+1`
-/

namespace A385989.P6643279341835276976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (A000265 (n + 1)).toNat + (n + 1 : ℤ)

end

end A385989.P6643279341835276976

/-! ## A385989.P15478599050178837745

`A336843(A064989(n+1))+n+1`
-/

namespace A385989.P15478599050178837745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (A064989 (n + 1)).toNat + (n + 1 : ℤ)

end

end A385989.P15478599050178837745

/-! ## A385989.P8796938424841612919

`A024222(A171435(2*(n+1))+1)+n+1`
-/

namespace A385989.P8796938424841612919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (A171435 (2 * (n + 1)) + 1).toNat + (n + 1 : ℤ)

end

end A385989.P8796938424841612919

/-! ## A385989.P9402443112323775184

`A204987((n+1)/2^val(n+1, 2))+n`
-/

namespace A385989.P9402443112323775184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat + (n : ℤ)

end

end A385989.P9402443112323775184

/-! ## A385989.P16379887415686079906

`A204987((n+1)/(or(n, n+1)-n))+n`
-/

namespace A385989.P16379887415686079906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat + (n : ℤ)

end

end A385989.P16379887415686079906

/-! ## A385989.P15335020862148988159

`A204987(-(n+1)/or(n+1, -(n+1)))+n`
-/

namespace A385989.P15335020862148988159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (SequenceMachineLib.roundAway (-((n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))).toNat + (n : ℤ)

end

end A385989.P15335020862148988159

/-! ## A385989.P15184988530351917869

`A204987((n+1)/xor(n+1, and(n, n+1)))+n`
-/

namespace A385989.P15184988530351917869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor (n + 1) (Nat.land n (n + 1)) : ℚ))).toNat + (n : ℤ)

end

end A385989.P15184988530351917869

/-! ## A385989.P13832511215665028247

`A204987(A153733(n)+1)+n`
-/

namespace A385989.P13832511215665028247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (A153733 n + 1).toNat + (n : ℤ)

end

end A385989.P13832511215665028247

/-! ## A385989.P10051900941536438745

`A204987(2*A003602(n+1)-1)+n`
-/

namespace A385989.P10051900941536438745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (2 * A003602 (n + 1) - 1).toNat + (n : ℤ)

end

end A385989.P10051900941536438745

/-!
# A385991: a(n) is the number of distinct values among A002487(0), ..., A002487(n).

The programs for A385991, there is no canonical definition to state claims against.
-/

/-! ## A385991.P9829939633961500458

`∑[char[A020946(n)]]`
-/

namespace A385991.P9829939633961500458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385991.P9829939633961500458

/-! ## A385991.P6726847566541317427

`∑[char[A091945(n+1)]]`
-/

namespace A385991.P6726847566541317427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091945 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385991.P6726847566541317427

/-! ## A385991.P11816094598893294695

`∑[char[A091926(n+1)]]+1`
-/

namespace A385991.P11816094598893294695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091926 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A385991.P11816094598893294695

/-! ## A385991.P5290384729201313126

`∑[char[A020950(n+1)+1]]+1`
-/

namespace A385991.P5290384729201313126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020950 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A385991.P5290384729201313126

/-! ## A385991.P4368897854084771736

`∑[A000007(A091948(n)-1)]`
-/

namespace A385991.P4368897854084771736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A091948 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385991.P4368897854084771736

/-!
# A385994: Lexicographically greatest increasing expansion Pi = Sum_{n>=0} a(n)/10^n, where a(n+1) >= a(n).

The programs for A385994, there is no canonical definition to state claims against.
-/

/-! ## A385994.P10808280390801123455

`∑[A229939(n)]`
-/

namespace A385994.P10808280390801123455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385994.P10808280390801123455

/-!
# A385995: a(n) is the first value appearing n times in A002487.

The programs for A385995, there is no canonical definition to state claims against.
-/

/-! ## A385995.P14811938430466879561

`A002487(A385996(n+1))`
-/

namespace A385995.P14811938430466879561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A385996 (n + 1)).toNat

end

end A385995.P14811938430466879561

/-! ## A385995.P1919686623918123408

`∑{d}[A385996(n+1), A317839(#)]`
-/

namespace A385995.P1919686623918123408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A317839 d

end

end A385995.P1919686623918123408

/-! ## A385995.P2629749366646032268

`A283976(2*A385996(n+1))`
-/

namespace A385995.P2629749366646032268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * A385996 (n + 1)).toNat

end

end A385995.P2629749366646032268

/-! ## A385995.P904377680871738436

`A283977(2*A385996(n+1))`
-/

namespace A385995.P904377680871738436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (2 * A385996 (n + 1)).toNat

end

end A385995.P904377680871738436

/-! ## A385995.P11960438496648275263

`A283976(A385996(n+1))%A331913(n+1)`
-/

namespace A385995.P11960438496648275263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283976 (A385996 (n + 1)).toNat) (A331913 (n + 1))

end

end A385995.P11960438496648275263

/-! ## A385995.P1884703473028344796

`A309014(A385996(n+1)+2)`
-/

namespace A385995.P1884703473028344796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309014 (A385996 (n + 1) + 2).toNat

end

end A385995.P1884703473028344796

/-!
# A385998: Numbers that are divisible by an equal number of distinct primes and squares.

The programs for A385998, the canonical program `A385998.P16754963175489702644` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385998 has offset 1).

The definition of A385998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385998.P16754963175489702644

`eq[A001221(n+1), A046951(n+1)]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A385998

/-- `eq[A001221(n+1), A046951(n+1)]+1` -/
def P16754963175489702644.Spec : Prop :=
  ∀ n, (P16754963175489702644.a n : ℤ) = A385998 (n + 1)

theorem P16754963175489702644.correct : P16754963175489702644.Spec := by
  intro n
  simp only [A385998, Nat.add_sub_cancel]

end A385998

/-! ## A385998.P13807186686928107382

`∩[A340657(n+1), A362618(n+1)]`
-/

namespace A385998.P13807186686928107382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385998.P13807186686928107382

namespace A385998

/-- `∩[A340657(n+1), A362618(n+1)]` -/
def P13807186686928107382.Spec : Prop :=
  ∀ n, (P13807186686928107382.a n : ℤ) = A385998 (n + 1)

end A385998

/-! ## A385998.P12626295144550164233

`∩[A340657(n+1), A359908(n+1)]`
-/

namespace A385998.P12626295144550164233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385998.P12626295144550164233

namespace A385998

/-- `∩[A340657(n+1), A359908(n+1)]` -/
def P12626295144550164233.Spec : Prop :=
  ∀ n, (P12626295144550164233.a n : ℤ) = A385998 (n + 1)

end A385998

/-! ## A385998.P4553501247188355677

`∩[A340657(n+1), A359913(n+1)]`
-/

namespace A385998.P4553501247188355677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385998.P4553501247188355677

namespace A385998

/-- `∩[A340657(n+1), A359913(n+1)]` -/
def P4553501247188355677.Spec : Prop :=
  ∀ n, (P4553501247188355677.a n : ℤ) = A385998 (n + 1)

end A385998

/-! ## A385998.P6649594701605290096

`∩[A068938(n+1), A316793(n+1)]`
-/

namespace A385998.P6649594701605290096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385998.P6649594701605290096

namespace A385998

/-- `∩[A068938(n+1), A316793(n+1)]` -/
def P6649594701605290096.Spec : Prop :=
  ∀ n, (P6649594701605290096.a n : ℤ) = A385998 (n + 1)

end A385998

/-!
# A385999: Least k such that every group of order n embeds into a group of order k*n.

The programs for A385999, there is no canonical definition to state claims against.
-/

/-! ## A385999.P14990318450112384670

`A340514(n+1)/(n+1)`
-/

namespace A385999.P14990318450112384670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340514 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A385999.P14990318450112384670

/-! ## A385999.P182948159878007540

`gcd(A236924(n), A396079(n+1))`
-/

namespace A385999.P182948159878007540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236924 n) (A396079 (n + 1))

end

end A385999.P182948159878007540

/-! ## A385999.P13914179027885994408

`gcd(n+1, A000010(A247291(n)))`
-/

namespace A385999.P13914179027885994408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000010 (A247291 n).toNat)

end

end A385999.P13914179027885994408

/-! ## A385999.P15330295594347874972

`A009195(n+1)*A124766(A174125(n+1))`
-/

namespace A385999.P15330295594347874972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1) * A124766 (A174125 (n + 1)).toNat

end

end A385999.P15330295594347874972

/-! ## A385999.P13599997269203202962

`gcd(A226978(A000009(n)), A253908(n))`
-/

namespace A385999.P13599997269203202962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A226978 (A000009 n).toNat) (A253908 n)

end

end A385999.P13599997269203202962

