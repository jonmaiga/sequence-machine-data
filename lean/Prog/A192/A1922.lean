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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A192200: Monotonic ordering of nonnegative differences 9^i-5^j, for 40>= i>=0, j>=0.

The programs for A192200, there is no canonical definition to state claims against.
-/

/-! ## A192200.P15839447926535662172

`filter[A192149(n+1), A121262(#)]`
-/

namespace A192200.P15839447926535662172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A192200.P15839447926535662172

/-! ## A192200.P5789299399695069807

`filter[A192149(n+1), A152822(#)]`
-/

namespace A192200.P5789299399695069807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A192200.P5789299399695069807

/-! ## A192200.P10365220238347318183

`filter[A192149(n+1), A353494(#)]`
-/

namespace A192200.P10365220238347318183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A192200.P10365220238347318183

/-! ## A192200.P3031002276829486510

`filter[A192149(n+1), A358680(#)]`
-/

namespace A192200.P3031002276829486510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A192200.P3031002276829486510

/-! ## A192200.P15655059057314540780

`filter[A192149(n+1), A374036(#)]`
-/

namespace A192200.P15655059057314540780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A192200.P15655059057314540780

/-!
# A192201: Monotonic ordering of nonnegative differences 5^i-10^j, for 40>= i>=0, j>=0.

The programs for A192201, there is no canonical definition to state claims against.
-/

/-! ## A192201.P7125440768338525965

`xor(A007954(A083147(n+1)), A080900(n+1))`
-/

namespace A192201.P7125440768338525965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007954 (A083147 (n + 1)).toNat) (A080900 (n + 1))

end

end A192201.P7125440768338525965

/-!
# A192203: Numbers k such that k, k+1, and k+2 are each the product of exactly 5 distinct primes.

The programs for A192203, there is no canonical definition to state claims against.
-/

/-! ## A192203.P13637380541153092690

`A248204(A061147(n+1))-1`
-/

namespace A192203.P13637380541153092690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248204 (A061147 (n + 1)).toNat - 1

end

end A192203.P13637380541153092690

/-! ## A192203.P4777337139966234858

`A248204(A062003(n+1))-1`
-/

namespace A192203.P4777337139966234858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248204 (A062003 (n + 1)).toNat - 1

end

end A192203.P4777337139966234858

/-! ## A192203.P3768418347369246088

`A248204(A066638(n+1))-1`
-/

namespace A192203.P3768418347369246088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248204 (A066638 (n + 1)).toNat - 1

end

end A192203.P3768418347369246088

/-! ## A192203.P12707976747941007845

`A248204(n+1)-∏{e}[A237785(n+1)+1, root(#, 5)]`
-/

namespace A192203.P12707976747941007845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237785 (n + 1) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A248204 (n + 1) : ℝ) - ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℝ) ^ (1 / (5 : ℝ))

end

end A192203.P12707976747941007845

/-! ## A192203.P1795508045643147066

`A248204(n+1)+A099837(A000085(n))`
-/

namespace A192203.P1795508045643147066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248204 (n + 1) + A099837 (A000085 n).toNat

end

end A192203.P1795508045643147066

/-!
# A192204: G.f.: A(x) = exp( Sum_{n>=1} (Sum_{k=0..n} C(n,k)^4*A(x)^k) * x^n/n ).

The programs for A192204, there is no canonical definition to state claims against.
-/

/-! ## A192204.P15103174940187927686

`A189441(a(n-1))+6` with `a(0)=1, a(1)=2`
-/

namespace A192204.P15103174940187927686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A189441 (a (n - 1)).toNat + 6

end

end A192204.P15103174940187927686

/-!
# A192205: a(n) = sum of absolute values of coefficients in (1-x-x^2+x^3)^n.

The programs for A192205, there is no canonical definition to state claims against.
-/

/-! ## A192205.P14844189015644310669

`A108954(3^n*2*(n+1))`
-/

namespace A192205.P14844189015644310669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (3 ^ n * (2 * (n + 1)))

end

end A192205.P14844189015644310669

/-! ## A192205.P16503510930907467612

`A259400(n)+A007570(A007570(n))`
-/

namespace A192205.P16503510930907467612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259400 n + A007570 (A007570 n).toNat

end

end A192205.P16503510930907467612

/-!
# A192206: G.f. satisfies: A(x) = 1 + Sum_{n>=1} x^n*A(x)^n/(1 - x^n*A(x)^n).

The programs for A192206, there is no canonical definition to state claims against.
-/

/-! ## A192206.P17293744118418963294

`A350348(A052872(n))`
-/

namespace A192206.P17293744118418963294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A052872 n).toNat

end

end A192206.P17293744118418963294

/-! ## A192206.P3977132196068200926

`A137588(A151135(n)+3)`
-/

namespace A192206.P3977132196068200926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A151135 n + 3).toNat

end

end A192206.P3977132196068200926

/-! ## A192206.P1248593100607127028

`Δ[A204892(∑[A089387(n)])]`
-/

namespace A192206.P1248593100607127028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089387 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192206.P1248593100607127028

/-!
# A192207: G.f. A(x) satisfies A(x) = 1 + Sum_{n>=1} A(x)^n*x^n/(1 - x^n).

The programs for A192207, there is no canonical definition to state claims against.
-/

/-! ## A192207.P15068154473429821210

`A083382((n+1)*3^n+1)-char[5]`
-/

namespace A192207.P15068154473429821210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 ((n + 1) * 3 ^ n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A192207.P15068154473429821210

/-! ## A192207.P10087779780998692342

`A193832(A035350(n)²)`
-/

namespace A192207.P10087779780998692342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A035350 n ^ 2).toNat

end

end A192207.P10087779780998692342

/-! ## A192207.P6666683872410545103

`A156562(A317800(n+2))`
-/

namespace A192207.P6666683872410545103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A317800 (n + 2)).toNat

end

end A192207.P6666683872410545103

/-!
# A192208: Number of n-step prudent self-avoiding walks on hexagonal [= triangular] lattice.

The programs for A192208, there is no canonical definition to state claims against.
-/

/-! ## A192208.P1400196686683486094

`Δ[or(A005061(n), A241470(n+4))]`
-/

namespace A192208.P1400196686683486094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005061 n) (A241470 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192208.P1400196686683486094

/-! ## A192208.P1091813402743647823

`A028310(A291111(n)+Δ[4^n-3^n])`
-/

namespace A192208.P1091813402743647823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A291111 n + (f1 (n + 1) - f1 n)).toNat

end

end A192208.P1091813402743647823

/-!
# A192209: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^(n^2)/(1 - x*A(x)^n)^n.

The programs for A192209, there is no canonical definition to state claims against.
-/

/-! ## A192209.P4000085072435545190

`A161127(n+1)+A000378(A062569(n))`
-/

namespace A192209.P4000085072435545190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161127 (n + 1) + A000378 (A062569 n).toNat

end

end A192209.P4000085072435545190

/-! ## A192209.P14965687381158722741

`round((A006923(3*n+1)+1)^(1/5))`
-/

namespace A192209.P14965687381158722741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006923 (3 * n + 1) + 1 : ℝ) ^ ((1 : ℚ) / 5 : ℝ))

end

end A192209.P14965687381158722741

/-!
# A192210: a(n) = sum of unsigned coefficients in (1+x+x^2-x^3)^n.

The programs for A192210, there is no canonical definition to state claims against.
-/

/-! ## A192210.P1034507808303640697

`A390306(A301104(n))`
-/

namespace A192210.P1034507808303640697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390306 (A301104 n).toNat

end

end A192210.P1034507808303640697

/-! ## A192210.P12014515562459873610

`A248116(A001096(n))+A061579(n)`
-/

namespace A192210.P12014515562459873610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248116 ((A001096 n).toNat + 13) + A061579 n

end

end A192210.P12014515562459873610

/-!
# A192211: Number of zero trace primitive elements in Galois field GF(2^n).

The programs for A192211, there is no canonical definition to state claims against.
-/

/-! ## A192211.P3484942591487120232

`(n+1)*A152049(n+1)`
-/

namespace A192211.P3484942591487120232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A152049 (n + 1)

end

end A192211.P3484942591487120232

/-! ## A192211.P14377808993114201461

`A004442(n)*A056811(A280532(n+1))`
-/

namespace A192211.P14377808993114201461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n * A056811 (A280532 (n + 1)).toNat

end

end A192211.P14377808993114201461

/-!
# A192212: Number of zero trace primitive elements in Galois field GF(3^n).

The programs for A192212, there is no canonical definition to state claims against.
-/

/-! ## A192212.P965380463052587195

`(n+1)*A192507(n+1)`
-/

namespace A192212.P965380463052587195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A192507 (n + 1)

end

end A192212.P965380463052587195

/-! ## A192212.P12586732660385848685

`A192507(n+1)*A348553(n)`
-/

namespace A192212.P12586732660385848685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192507 (n + 1) * A348553 n

end

end A192212.P12586732660385848685

/-! ## A192212.P2001246517953918646

`A192507(A371092(2*n))*A371092(2*n)`
-/

namespace A192212.P2001246517953918646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192507 (A371092 (2 * n)).toNat * A371092 (2 * n)

end

end A192212.P2001246517953918646

/-! ## A192212.P3092636384515359072

`A295503(n+1)%(A192507(n+1)-A295497(n+1))`
-/

namespace A192212.P3092636384515359072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295503 (n + 1)) (A192507 (n + 1) - A295497 (n + 1))

end

end A192212.P3092636384515359072

/-!
# A192213: Number of zero trace primitive elements in Galois field GF(5^n).

The programs for A192213, there is no canonical definition to state claims against.
-/

/-! ## A192213.P9733582228751508820

`(n+1)*A192508(n+1)`
-/

namespace A192213.P9733582228751508820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A192508 (n + 1)

end

end A192213.P9733582228751508820

/-! ## A192213.P8169684305504645884

`A192508(n+1)*A348553(n)`
-/

namespace A192213.P8169684305504645884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192508 (n + 1) * A348553 n

end

end A192213.P8169684305504645884

/-! ## A192213.P1682638271435016854

`A192508(A199343(n))*A199343(n)`
-/

namespace A192213.P1682638271435016854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192508 (A199343 n).toNat * A199343 n

end

end A192213.P1682638271435016854

/-! ## A192213.P9546781096380200720

`A192508(A199344(n))*A199344(n)`
-/

namespace A192213.P9546781096380200720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192508 (A199344 n).toNat * A199344 n

end

end A192213.P9546781096380200720

/-!
# A192214: Number of zero trace primitive elements in Galois field GF(7^n).

The programs for A192214, there is no canonical definition to state claims against.
-/

/-! ## A192214.P15907557484192458148

`(n+1)*A192509(n+1)`
-/

namespace A192214.P15907557484192458148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A192509 (n + 1)

end

end A192214.P15907557484192458148

/-! ## A192214.P9922057822732549258

`(n+1)*A350356(A076864(n))*A178860(n+1)`
-/

namespace A192214.P9922057822732549258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A350356 (A076864 n).toNat * A178860 (n + 1)

end

end A192214.P9922057822732549258

/-!
# A192215: Number of zero trace primitive elements in Galois field GF(11^n).

The programs for A192215, there is no canonical definition to state claims against.
-/

/-! ## A192215.P12662180499801609980

`(n+1)*A192510(n+1)`
-/

namespace A192215.P12662180499801609980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A192510 (n + 1)

end

end A192215.P12662180499801609980

/-! ## A192215.P9925205937004236913

`A192510(n+1)*A256079(n)`
-/

namespace A192215.P9925205937004236913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192510 (n + 1) * A256079 n

end

end A192215.P9925205937004236913

/-! ## A192215.P87356056116689038

`A192510(n+1)*A291769(n)`
-/

namespace A192215.P87356056116689038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192510 (n + 1) * A291769 n

end

end A192215.P87356056116689038

/-! ## A192215.P16897861926328426586

`A192510(A199343(n))*A199343(n)`
-/

namespace A192215.P16897861926328426586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192510 (A199343 n).toNat * A199343 n

end

end A192215.P16897861926328426586

/-! ## A192215.P11350671743516560166

`A192510(A199344(n))*A199344(n)`
-/

namespace A192215.P11350671743516560166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192510 (A199344 n).toNat * A199344 n

end

end A192215.P11350671743516560166

/-!
# A192216: Number of zero trace primitive elements in Galois field GF(13^n).

The programs for A192216, there is no canonical definition to state claims against.
-/

/-! ## A192216.P1917715742236457682

`(n+1)*A192511(n+1)`
-/

namespace A192216.P1917715742236457682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A192511 (n + 1)

end

end A192216.P1917715742236457682

/-!
# A192217: a(1)=1; a(n) = n*lcm(n, a(n-1)) for n > 1.

The programs for A192217, the canonical program `A192217.P1760210183882373129` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192217 has offset 1).

The definition of A192217 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*lcm(n+1, a(n-1))` (program `A192217.P1760210183882373129`, by `A192217.P1760210183882373129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A192217.P1760210183882373129

`(n+1)*lcm(n+1, a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192217

/-- `(n+1)*lcm(n+1, a(n-1))` -/
def P1760210183882373129.Spec : Prop :=
  ∀ n, (P1760210183882373129.a n : ℤ) = A192217 (n + 1)

theorem P1760210183882373129.correct : P1760210183882373129.Spec := by
  intro n
  simp only [A192217, Nat.add_sub_cancel]

end A192217

/-! ## A192217.P13682924905874936740

`A000142(n+1)*A034386(n+1)`
-/

namespace A192217.P13682924905874936740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A034386 (n + 1)

end

end A192217.P13682924905874936740

namespace A192217

/-- `A000142(n+1)*A034386(n+1)` -/
def P13682924905874936740.Spec : Prop :=
  ∀ n, P13682924905874936740.a n = A192217 (n + 1)

end A192217

/-! ## A192217.P7420919544414805752

`∏[gcd((n+1)!+n+1, (n+1)²)]`
-/

namespace A192217.P7420919544414805752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.factorial (n + 1) + (n + 1)) ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A192217.P7420919544414805752

namespace A192217

/-- `∏[gcd((n+1)!+n+1, (n+1)²)]` -/
def P7420919544414805752.Spec : Prop :=
  ∀ n, (P7420919544414805752.a n : ℤ) = A192217 (n + 1)

end A192217

/-! ## A192217.P14400662720411168934

`∏[(n+1)*∏{d}[∑{p}[n+1, C(#, n)], #]]`
-/

namespace A192217.P14400662720411168934
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A192217.P14400662720411168934

namespace A192217

/-- `∏[(n+1)*∏{d}[∑{p}[n+1, C(#, n)], #]]` -/
def P14400662720411168934.Spec : Prop :=
  ∀ n, (P14400662720411168934.a n : ℤ) = A192217 (n + 1)

end A192217

/-! ## A192217.P17313369268132895532

`∏[(n+1)*∏{p}[C(∑{p}[n+1, #], n), #]]`
-/

namespace A192217.P17313369268132895532
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f3 n), p) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A192217.P17313369268132895532

namespace A192217

/-- `∏[(n+1)*∏{p}[C(∑{p}[n+1, #], n), #]]` -/
def P17313369268132895532.Spec : Prop :=
  ∀ n, (P17313369268132895532.a n : ℤ) = A192217 (n + 1)

end A192217

/-! ## A192217.P2693337736390550605

`∏[(n+1)*(n*char[p?[xor(3, n)]-1]+1)]`
-/

namespace A192217.P2693337736390550605
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A192217.P2693337736390550605

namespace A192217

/-- `∏[(n+1)*(n*char[p?[xor(3, n)]-1]+1)]` -/
def P2693337736390550605.Spec : Prop :=
  ∀ n, (P2693337736390550605.a n : ℤ) = A192217 (n + 1)

end A192217

/-! ## A192217.P1307421517616049312

`∏[(n+1)*(n*char[p?[∏{p}[n, #]]-1]+1)]`
-/

namespace A192217.P1307421517616049312
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A192217.P1307421517616049312

namespace A192217

/-- `∏[(n+1)*(n*char[p?[∏{p}[n, #]]-1]+1)]` -/
def P1307421517616049312.Spec : Prop :=
  ∀ n, (P1307421517616049312.a n : ℤ) = A192217 (n + 1)

end A192217

/-! ## A192217.P5632964690100272749

`(n+1)²/gcd(n+1, a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A192217.P5632964690100272749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) * a (n - 1)

end

end A192217.P5632964690100272749

namespace A192217

/-- `(n+1)²/gcd(n+1, a(n-1))*a(n-1)` -/
def P5632964690100272749.Spec : Prop :=
  ∀ n, P5632964690100272749.a n = (A192217 (n + 1) : ℚ)

end A192217

/-! ## A192217.P7171280397243839141

`∏[A103164(n+1)]`
-/

namespace A192217.P7171280397243839141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A192217.P7171280397243839141

namespace A192217

/-- `∏[A103164(n+1)]` -/
def P7171280397243839141.Spec : Prop :=
  ∀ n, P7171280397243839141.a n = A192217 (n + 1)

end A192217

/-! ## A192217.P2791188003392770949

`∏[(n+1)*A089026(n+1)]`
-/

namespace A192217.P2791188003392770949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A192217.P2791188003392770949

namespace A192217

/-- `∏[(n+1)*A089026(n+1)]` -/
def P2791188003392770949.Spec : Prop :=
  ∀ n, P2791188003392770949.a n = A192217 (n + 1)

end A192217

/-!
# A192218: Numbers k such that the number of distinct prime divisors of k divides phi(k).

The programs for A192218, there is no canonical definition to state claims against.
-/

/-! ## A192218.P5560146812416307328

`A085736(comp[A029040(n+1)²-(n+1)²]+1)`
-/

namespace A192218.P5560146812416307328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029040 (n + 1) ^ 2 - ((n + 1) ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A192218.P5560146812416307328

/-! ## A192218.P16169093659174963934

`record[(n+2)%A000041(A109258(n+2))]`
-/

namespace A192218.P16169093659174963934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A000041 (A109258 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192218.P16169093659174963934

/-! ## A192218.P8697685548788494451

`comp[lcm(A010894(n), A045506(n))]`
-/

namespace A192218.P8697685548788494451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010894 (n + 21)) (A045506 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A192218.P8697685548788494451

/-! ## A192218.P12898918116700128530

`comp[A062513(n+1)%A100081(n)]`
-/

namespace A192218.P12898918116700128530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062513 (n + 1)) (A100081 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A192218.P12898918116700128530

/-! ## A192218.P9944209544407812422

`A262988(A327822(n+1))+n+1`
-/

namespace A192218.P9944209544407812422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (A327822 (n + 1)).toNat + (n + 1 : ℤ)

end

end A192218.P9944209544407812422

/-! ## A192218.P12349291807776155849

`A033810(A109413(n))`
-/

namespace A192218.P12349291807776155849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033810 (A109413 n).toNat

end

end A192218.P12349291807776155849

/-!
# A192219: Numbers m such that set of divisors of m is equal to set of reversals of divisors of m but all divisors of m are not palindromic.

The programs for A192219, there is no canonical definition to state claims against.
-/

/-! ## A192219.P8068454289744353709

`A161730(A088949(n+1)+A088939(n+1))`
-/

namespace A192219.P8068454289744353709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161730 (A088949 (n + 1) + A088939 (n + 1)).toNat

end

end A192219.P8068454289744353709

/-!
# A192220: Semiprimes s such that tau(s-1) = tau(s+1) where tau = A000005.

The programs for A192220, the canonical program `A192220.P11344392399367857652` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192220 has offset 1).

The definition of A192220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192220.P11344392399367857652

`∩[A001358(n+1), A067888(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A192220

/-- `∩[A001358(n+1), A067888(n+1)]` -/
def P11344392399367857652.Spec : Prop :=
  ∀ n, (P11344392399367857652.a n : ℤ) = A192220 (n + 1)

theorem P11344392399367857652.correct : P11344392399367857652.Spec := by
  intro n
  simp only [A192220, Nat.add_sub_cancel]

end A192220

/-! ## A192220.P14154735780128358470

`filter[A067888(n+1), A064911(#)]`
-/

namespace A192220.P14154735780128358470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A192220.P14154735780128358470

namespace A192220

/-- `filter[A067888(n+1), A064911(#)]` -/
def P14154735780128358470.Spec : Prop :=
  ∀ n, P14154735780128358470.a n = A192220 (n + 1)

end A192220

/-! ## A192220.P9614417195762141304

`∩[A067888(n+1), A176540(n+1)]`
-/

namespace A192220.P9614417195762141304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192220.P9614417195762141304

namespace A192220

/-- `∩[A067888(n+1), A176540(n+1)]` -/
def P9614417195762141304.Spec : Prop :=
  ∀ n, (P9614417195762141304.a n : ℤ) = A192220 (n + 1)

end A192220

/-! ## A192220.P16176112674879820784

`∩[A062832(n+1), A186621(n+1)]+1`
-/

namespace A192220.P16176112674879820784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A192220.P16176112674879820784

namespace A192220

/-- `∩[A062832(n+1), A186621(n+1)]+1` -/
def P16176112674879820784.Spec : Prop :=
  ∀ n, (P16176112674879820784.a n : ℤ) = A192220 (n + 1)

end A192220

/-! ## A192220.P13652047511993858063

`∩[A067888(n+1), A186621(n+1)+1]`
-/

namespace A192220.P13652047511993858063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192220.P13652047511993858063

namespace A192220

/-- `∩[A067888(n+1), A186621(n+1)+1]` -/
def P13652047511993858063.Spec : Prop :=
  ∀ n, (P13652047511993858063.a n : ℤ) = A192220 (n + 1)

end A192220

/-! ## A192220.P6143938409075428808

`∩[A067888(n+1), A088707(n+1)-1]`
-/

namespace A192220.P6143938409075428808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192220.P6143938409075428808

namespace A192220

/-- `∩[A067888(n+1), A088707(n+1)-1]` -/
def P6143938409075428808.Spec : Prop :=
  ∀ n, (P6143938409075428808.a n : ℤ) = A192220 (n + 1)

end A192220

/-! ## A192220.P3430980241492317980

`∩[A000040(n+1)-A065870(n+1), A067888(n+1)]`
-/

namespace A192220.P3430980241492317980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A065870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192220.P3430980241492317980

namespace A192220

/-- `∩[A000040(n+1)-A065870(n+1), A067888(n+1)]` -/
def P3430980241492317980.Spec : Prop :=
  ∀ n, (P3430980241492317980.a n : ℤ) = A192220 (n + 1)

end A192220

/-! ## A192220.P16698116639031815281

`∩[A000040(n+1)-A065870(n+1), A062832(n+1)+1]`
-/

namespace A192220.P16698116639031815281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A065870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192220.P16698116639031815281

namespace A192220

/-- `∩[A000040(n+1)-A065870(n+1), A062832(n+1)+1]` -/
def P16698116639031815281.Spec : Prop :=
  ∀ n, (P16698116639031815281.a n : ℤ) = A192220 (n + 1)

end A192220

/-!
# A192221: Numbers k such that phi(k-2)=phi(k+2) where phi=A000010.

The programs for A192221, there is no canonical definition to state claims against.
-/

/-! ## A192221.P12678856043669422148

`A179186(n+1)+2`
-/

namespace A192221.P12678856043669422148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179186 (n + 1) + 2

end

end A192221.P12678856043669422148

/-! ## A192221.P14682363052207774474

`record[A273943(A179202(n+2))+2]`
-/

namespace A192221.P14682363052207774474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A179202 (n + 2)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192221.P14682363052207774474

/-! ## A192221.P10459364660188161343

`record[A318518(A179202(abs(1-n)+1))+2]`
-/

namespace A192221.P10459364660188161343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A179202 (|1 - (n : ℤ)| + 1).toNat).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192221.P10459364660188161343

/-! ## A192221.P11678058423478044496

`record[A318518(A179202(ceil(n/3)+2))]+2`
-/

namespace A192221.P11678058423478044496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A179202 (⌈(n : ℚ) / 3⌉ + 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2

end

end A192221.P11678058423478044496

/-! ## A192221.P11446876025569560399

`record[(A318518(A179202(n+2))+2)*A033999(n)²]`
-/

namespace A192221.P11446876025569560399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A318518 (A179202 (n + 2)).toNat + 2) * A033999 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192221.P11446876025569560399

/-! ## A192221.P13365858123901838952

`record[A000035(2*n)+A318518(A179202(n+2))+2]`
-/

namespace A192221.P13365858123901838952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + (A318518 (A179202 (n + 2)).toNat + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192221.P13365858123901838952

/-! ## A192221.P5250086259361108975

`record[(A318518(A179202(n+2))+2)%A030686(n+1)]`
-/

namespace A192221.P5250086259361108975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318518 (A179202 (n + 2)).toNat + 2) (A030686 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192221.P5250086259361108975

/-! ## A192221.P15506850904234165558

`A014963(6*(n+1))*record[A318518(A179202(n+2))+2]`
-/

namespace A192221.P15506850904234165558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A179202 (n + 2)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192221.P15506850904234165558

/-! ## A192221.P4725777895442670035

`A009056(A179186(n+1))`
-/

namespace A192221.P4725777895442670035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A179186 (n + 1)).toNat

end

end A192221.P4725777895442670035

/-!
# A192222: a(n) = Fibonacci(2^n + 1).

The programs for A192222, the canonical program `A192222.P11342052387966784639` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192222 has offset 0).

The definition of A192222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192222.P11342052387966784639

`A000045(2^n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192222

/-- `A000045(2^n+1)` -/
def P11342052387966784639.Spec : Prop :=
  ∀ n, P11342052387966784639.a n = A192222 n

theorem P11342052387966784639.correct : P11342052387966784639.Spec := by
  intro n
  simp only [A192222]

end A192222

/-! ## A192222.P17832088078654264284

`A094967(2^n)`
-/

namespace A192222.P17832088078654264284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (2 ^ n)

end

end A192222.P17832088078654264284

namespace A192222

/-- `A094967(2^n)` -/
def P17832088078654264284.Spec : Prop :=
  ∀ n, P17832088078654264284.a n = A192222 n

end A192222

/-! ## A192222.P14338750336613754155

`A097131(2^n)`
-/

namespace A192222.P14338750336613754155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097131 (2 ^ n)

end

end A192222.P14338750336613754155

namespace A192222

/-- `A097131(2^n)` -/
def P14338750336613754155.Spec : Prop :=
  ∀ n, P14338750336613754155.a n = A192222 n

end A192222

/-! ## A192222.P6020878684531417688

`A133585(2^n)`
-/

namespace A192222.P6020878684531417688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133585 (2 ^ n)

end

end A192222.P6020878684531417688

namespace A192222

/-- `A133585(2^n)` -/
def P6020878684531417688.Spec : Prop :=
  ∀ n, P6020878684531417688.a n = A192222 n

end A192222

/-! ## A192222.P2953591172996950947

`A178766(2^n)`
-/

namespace A192222.P2953591172996950947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178766 (2 ^ n)

end

end A192222.P2953591172996950947

namespace A192222

/-- `A178766(2^n)` -/
def P2953591172996950947.Spec : Prop :=
  ∀ n, P2953591172996950947.a n = A192222 n

end A192222

/-!
# A192223: a(n) = Lucas(2^n + 1).

The programs for A192223, the canonical program `A192223.P13999089944796610971` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192223 has offset 0).

The definition of A192223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192223.P10840224714753955460

`floor(1/ϕ*a(n-1)²)+2` with `a(0)=3, a(1)=4`
-/

namespace A192223.P10840224714753955460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  ⌊1 / Real.goldenRatio * (a (n - 1) ^ 2 : ℝ)⌋ + 2

end

end A192223.P10840224714753955460

namespace A192223

/-- `floor(1/ϕ*a(n-1)²)+2` -/
def P10840224714753955460.Spec : Prop :=
  ∀ n, P10840224714753955460.a n = A192223 n

end A192223

/-! ## A192223.P13999089944796610971

`A000032(2^n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192223

/-- `A000032(2^n+1)` -/
def P13999089944796610971.Spec : Prop :=
  ∀ n, P13999089944796610971.a n = A192223 n

theorem P13999089944796610971.correct : P13999089944796610971.Spec := by
  intro n
  simp only [A192223]

end A192223

/-! ## A192223.P7388238771554369338

`round(ϕ^(2^n+1))`
-/

namespace A192223.P7388238771554369338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (2 ^ n + 1))

end

end A192223.P7388238771554369338

namespace A192223

/-- `round(ϕ^(2^n+1))` -/
def P7388238771554369338.Spec : Prop :=
  ∀ n, P7388238771554369338.a n = A192223 n

end A192223

/-! ## A192223.P16068290792345534595

`A000204(2^n+1)`
-/

namespace A192223.P16068290792345534595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 ^ n + 1)

end

end A192223.P16068290792345534595

namespace A192223

/-- `A000204(2^n+1)` -/
def P16068290792345534595.Spec : Prop :=
  ∀ n, P16068290792345534595.a n = A192223 n

end A192223

/-! ## A192223.P2157351811007859516

`A001610(2^n)+1`
-/

namespace A192223.P2157351811007859516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (2 ^ n) + 1

end

end A192223.P2157351811007859516

namespace A192223

/-- `A001610(2^n)+1` -/
def P2157351811007859516.Spec : Prop :=
  ∀ n, P2157351811007859516.a n = A192223 n

end A192223

/-!
# A192226: Numbers k such that all integers in the interval (k-2*sqrt(sqrt(k)), k] are composite.

The programs for A192226, there is no canonical definition to state claims against.
-/

/-! ## A192226.P46820776043627330

`eq[A000034(A000124(n)), A226350(n)]`
-/

namespace A192226.P46820776043627330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000124 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226350 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192226.P46820776043627330

/-! ## A192226.P1488049930171448020

`eq[A000034(A034856(n+1)), A226350(n)]`
-/

namespace A192226.P1488049930171448020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A034856 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226350 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192226.P1488049930171448020

/-!
# A192229: Indices of records in A087669.

The programs for A192229, there is no canonical definition to state claims against.
-/

/-! ## A192229.P1853789472862357964

`∪[A078024(2*n), A002267(A000040(n+1))]`
-/

namespace A192229.P1853789472862357964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (A000040 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192229.P1853789472862357964

/-! ## A192229.P5947708412481122811

`∪[A078024(2*n), A002267(A002267(n+1))]`
-/

namespace A192229.P5947708412481122811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (A002267 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192229.P5947708412481122811

/-! ## A192229.P17965063343664626521

`eq[A285869(n), A379835(n)]`
-/

namespace A192229.P17965063343664626521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379835 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192229.P17965063343664626521

/-! ## A192229.P13271539673509835662

`A083892(A047087(n+1))+A052955(n)`
-/

namespace A192229.P13271539673509835662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083892 (A047087 (n + 1)).toNat + A052955 n

end

end A192229.P13271539673509835662

/-!
# A192230: Records in A087669.

The programs for A192230, there is no canonical definition to state claims against.
-/

/-! ## A192230.P3355208060711971519

`A087669(A192229(n+1))`
-/

namespace A192230.P3355208060711971519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087669 (A192229 (n + 1)).toNat

end

end A192230.P3355208060711971519

/-! ## A192230.P12622433585846935803

`record[A087669(n+1)]`
-/

namespace A192230.P12622433585846935803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192230.P12622433585846935803

/-! ## A192230.P13511978901894764161

`record[A060576(n)*A087669(A028310(n))]`
-/

namespace A192230.P13511978901894764161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A087669 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192230.P13511978901894764161

/-! ## A192230.P406500085720538915

`record[A087669(A008619(n))%A000124(n)]`
-/

namespace A192230.P406500085720538915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087669 (A008619 n).toNat) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192230.P406500085720538915

/-! ## A192230.P9464275438233235309

`record[A087669(A008619(n))]%A001628(n)`
-/

namespace A192230.P9464275438233235309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087669 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A001628 n)

end

end A192230.P9464275438233235309

/-!
# A192232: Constant term of the reduction of n-th Fibonacci polynomial by x^2 -> x+1. (See Comments.)

The programs for A192232, the canonical program `A192232.P9148846508517543057` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192232 has offset 1).

The definition of A192232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192232.P3671162820300511905

`ogf((1-x-x^2)/(1-x-3x^2+x^3+x^4))`
-/

namespace A192232.P3671162820300511905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -1, -3, 1, 1] n

end

end A192232.P3671162820300511905

namespace A192232

/-- `ogf((1-x-x^2)/(1-x-3x^2+x^3+x^4))` -/
def P3671162820300511905.Spec : Prop :=
  ∀ n, P3671162820300511905.a n = A192232 (n + 1)

end A192232

/-! ## A192232.P9148846508517543057

`∑[A112576(n-1)-a(n-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192232

/-- `∑[A112576(n-1)-a(n-1)]` -/
def P9148846508517543057.Spec : Prop :=
  ∀ n, P9148846508517543057.a n = A192232 (n + 1)

theorem P9148846508517543057.correct : P9148846508517543057.Spec := by
  intro n
  simp only [A192232, Nat.add_sub_cancel]

end A192232

/-! ## A192232.P1343435467321451140

`A131322(n)-A112576(n)`
-/

namespace A192232.P1343435467321451140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 n - A112576 n

end

end A192232.P1343435467321451140

namespace A192232

/-- `A131322(n)-A112576(n)` -/
def P1343435467321451140.Spec : Prop :=
  ∀ n, P1343435467321451140.a n = A192232 (n + 1)

end A192232

/-! ## A192232.P16346580607309627143

`A289846(n)-2*A112576(n)`
-/

namespace A192232.P16346580607309627143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289846 n - 2 * A112576 n

end

end A192232.P16346580607309627143

namespace A192232

/-- `A289846(n)-2*A112576(n)` -/
def P16346580607309627143.Spec : Prop :=
  ∀ n, P16346580607309627143.a n = A192232 (n + 1)

end A192232

/-! ## A192232.P2293659230629766267

`2*A131322(n)-A289846(n)`
-/

namespace A192232.P2293659230629766267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131322 n - A289846 n

end

end A192232.P2293659230629766267

namespace A192232

/-- `2*A131322(n)-A289846(n)` -/
def P2293659230629766267.Spec : Prop :=
  ∀ n, P2293659230629766267.a n = A192232 (n + 1)

end A192232

/-! ## A192232.P14119706476701021645

`∑[Δ[A131322(n+1)]-A131322(n+1)]`
-/

namespace A192232.P14119706476701021645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A131322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192232.P14119706476701021645

namespace A192232

/-- `∑[Δ[A131322(n+1)]-A131322(n+1)]` -/
def P14119706476701021645.Spec : Prop :=
  ∀ n, P14119706476701021645.a n = A192232 (n + 1)

end A192232

/-! ## A192232.P11275104426879134315

`A289846(n+5)%(A289846(n+4)+A112576(n+1))`
-/

namespace A192232.P11275104426879134315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289846 (n + 5)) (A289846 (n + 4) + A112576 (n + 1))

end

end A192232.P11275104426879134315

namespace A192232

/-- `A289846(n+5)%(A289846(n+4)+A112576(n+1))` -/
def P11275104426879134315.Spec : Prop :=
  ∀ n, P11275104426879134315.a n = A192232 (n + 1)

end A192232

/-! ## A192232.P15997750493280720216

`A192386(n+1)/2^n`
-/

namespace A192232.P15997750493280720216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192386 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A192232.P15997750493280720216

namespace A192232

/-- `A192386(n+1)/2^n` -/
def P15997750493280720216.Spec : Prop :=
  ∀ n, P15997750493280720216.a n = (A192232 (n + 1) : ℚ)

end A192232

/-! ## A192232.P6757779404858936710

`A112576(n+1)/A192388(n+2)*A192386(n+1)`
-/

namespace A192232.P6757779404858936710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112576 (n + 1) : ℚ) / (A192388 (n + 2) : ℚ) * (A192386 (n + 1) : ℚ)

end

end A192232.P6757779404858936710

namespace A192232

/-- `A112576(n+1)/A192388(n+2)*A192386(n+1)` -/
def P6757779404858936710.Spec : Prop :=
  ∀ n, P6757779404858936710.a n = (A192232 (n + 1) : ℚ)

end A192232

/-!
# A192234: a(n) = 2*(a(n-1) + a(n-2) + a(n-3)) - a(n-4) for n >= 4, with initial terms 0,1,0,1.

The programs for A192234, the canonical program `A192234.P10508118589342059501` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192234 has offset 0).

The definition of A192234 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` (program `A192234.P10508118589342059501`, by `A192234.P10508118589342059501.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A192234.P10508118589342059501

`2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192234

/-- `2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` -/
def P10508118589342059501.Spec : Prop :=
  ∀ n, P10508118589342059501.a n = A192234 n

theorem P10508118589342059501.correct : P10508118589342059501.Spec := by
  intro n
  simp only [A192234]

end A192234

/-! ## A192234.P4793965333187010448

`ogf((-x+2x^2+x^3)/(-1+2x+2x^2+2x^3-x^4))`
-/

namespace A192234.P4793965333187010448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, -1] [1, -2, -2, -2, 1] n

end

end A192234.P4793965333187010448

namespace A192234

/-- `ogf((-x+2x^2+x^3)/(-1+2x+2x^2+2x^3-x^4))` -/
def P4793965333187010448.Spec : Prop :=
  ∀ n, P4793965333187010448.a n = A192234 n

end A192234

/-! ## A192234.P11000331504602201529

`A317976(n+1)-A192237(n)`
-/

namespace A192234.P11000331504602201529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317976 (n + 1) - A192237 n

end

end A192234.P11000331504602201529

namespace A192234

/-- `A317976(n+1)-A192237(n)` -/
def P11000331504602201529.Spec : Prop :=
  ∀ n, P11000331504602201529.a n = A192234 n

end A192234

/-! ## A192234.P13000568529914455158

`A192237(n)-(A317976(n)-A317975(n))`
-/

namespace A192234.P13000568529914455158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192237 n - (A317976 n - A317975 n)

end

end A192234.P13000568529914455158

namespace A192234

/-- `A192237(n)-(A317976(n)-A317975(n))` -/
def P13000568529914455158.Spec : Prop :=
  ∀ n, P13000568529914455158.a n = A192234 n

end A192234

/-! ## A192234.P15061609756322510734

`A317976(n+1)+A317976(n)-A317974(n)`
-/

namespace A192234.P15061609756322510734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317976 (n + 1) + (A317976 n - A317974 n)

end

end A192234.P15061609756322510734

namespace A192234

/-- `A317976(n+1)+A317976(n)-A317974(n)` -/
def P15061609756322510734.Spec : Prop :=
  ∀ n, P15061609756322510734.a n = A192234 n

end A192234

/-! ## A192234.P1669544961437845274

`A138573(n)-(A192237(n+1)+A192237(n+1))`
-/

namespace A192234.P1669544961437845274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 n - (A192237 (n + 1) + A192237 (n + 1))

end

end A192234.P1669544961437845274

namespace A192234

/-- `A138573(n)-(A192237(n+1)+A192237(n+1))` -/
def P1669544961437845274.Spec : Prop :=
  ∀ n, P1669544961437845274.a n = A192234 n

end A192234

/-! ## A192234.P90759423748635822

`A317974(n+1)-(A192237(n+1)+A192237(n))`
-/

namespace A192234.P90759423748635822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317974 (n + 1) - (A192237 (n + 1) + A192237 n)

end

end A192234.P90759423748635822

namespace A192234

/-- `A317974(n+1)-(A192237(n+1)+A192237(n))` -/
def P90759423748635822.Spec : Prop :=
  ∀ n, P90759423748635822.a n = A192234 n

end A192234

/-! ## A192234.P8332692908383180605

`A138573(n)+A389120(n)-A387018(n)`
-/

namespace A192234.P8332692908383180605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 n + (A389120 n - A387018 n)

end

end A192234.P8332692908383180605

namespace A192234

/-- `A138573(n)+A389120(n)-A387018(n)` -/
def P8332692908383180605.Spec : Prop :=
  ∀ n, P8332692908383180605.a n = A192234 n

end A192234

/-! ## A192234.P7278487458408802117

`A138573(n+1)+A138573(n)-A389120(n+1)`
-/

namespace A192234.P7278487458408802117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 (n + 1) + (A138573 n - A389120 (n + 1))

end

end A192234.P7278487458408802117

namespace A192234

/-- `A138573(n+1)+A138573(n)-A389120(n+1)` -/
def P7278487458408802117.Spec : Prop :=
  ∀ n, P7278487458408802117.a n = A192234 n

end A192234

/-! ## A192234.P1510100627103465574

`A387018(n+1)-(A389120(n+1)+A387018(n))`
-/

namespace A192234.P1510100627103465574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387018 (n + 1) - (A389120 (n + 1) + A387018 n)

end

end A192234.P1510100627103465574

namespace A192234

/-- `A387018(n+1)-(A389120(n+1)+A387018(n))` -/
def P1510100627103465574.Spec : Prop :=
  ∀ n, P1510100627103465574.a n = A192234 n

end A192234

/-!
# A192235: Constant term of the reduction of the n-th 2nd-kind Chebyshev polynomial by x^2 -> x+1.

The programs for A192235, the canonical program `A192235.P9275297466154159459` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192235 has offset 1).

The definition of A192235 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192235.P9275297466154159459

`2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` with `a(0)=0, a(1)=3, a(2)=8, a(3)=21`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192235

/-- `2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` -/
def P9275297466154159459.Spec : Prop :=
  ∀ n, P9275297466154159459.a n = A192235 (n + 1)

theorem P9275297466154159459.correct : P9275297466154159459.Spec := by
  intro n
  simp only [A192235, Nat.add_sub_cancel]

end A192235

/-! ## A192235.P655642909116617158

`ogf((3x+2x^2-x^3)/(1-2x-2x^2-2x^3+x^4))`
-/

namespace A192235.P655642909116617158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2, -1] [1, -2, -2, -2, 1] n

end

end A192235.P655642909116617158

namespace A192235

/-- `ogf((3x+2x^2-x^3)/(1-2x-2x^2-2x^3+x^4))` -/
def P655642909116617158.Spec : Prop :=
  ∀ n, P655642909116617158.a n = A192235 (n + 1)

end A192235

/-! ## A192235.P4992781856117838711

`A138573(n)+∑[2*A138573(n)]`
-/

namespace A192235.P4992781856117838711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192235.P4992781856117838711

namespace A192235

/-- `A138573(n)+∑[2*A138573(n)]` -/
def P4992781856117838711.Spec : Prop :=
  ∀ n, P4992781856117838711.a n = A192235 (n + 1)

end A192235

/-! ## A192235.P7084721417363651238

`A317976(n+3)+A192237(n+2)`
-/

namespace A192235.P7084721417363651238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317976 (n + 3) + A192237 (n + 2)

end

end A192235.P7084721417363651238

namespace A192235

/-- `A317976(n+3)+A192237(n+2)` -/
def P7084721417363651238.Spec : Prop :=
  ∀ n, P7084721417363651238.a n = A192235 (n + 1)

end A192235

/-! ## A192235.P1152829646397315495

`A138573(n+1)+Δ[A192234(n+1)]`
-/

namespace A192235.P1152829646397315495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 (n + 1) + (f1 (n + 1) - f1 n)

end

end A192235.P1152829646397315495

namespace A192235

/-- `A138573(n+1)+Δ[A192234(n+1)]` -/
def P1152829646397315495.Spec : Prop :=
  ∀ n, P1152829646397315495.a n = A192235 (n + 1)

end A192235

/-! ## A192235.P15517742073643658142

`A138573(n)+A387018(n)+A138573(n)`
-/

namespace A192235.P15517742073643658142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 n + (A387018 n + A138573 n)

end

end A192235.P15517742073643658142

namespace A192235

/-- `A138573(n)+A387018(n)+A138573(n)` -/
def P15517742073643658142.Spec : Prop :=
  ∀ n, P15517742073643658142.a n = A192235 (n + 1)

end A192235

/-! ## A192235.P3751218349094824297

`Δ[ogf((-1+x)/(-1+2x+2x^2+2x^3-x^4))]`
-/

namespace A192235.P3751218349094824297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -2, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192235.P3751218349094824297

namespace A192235

/-- `Δ[ogf((-1+x)/(-1+2x+2x^2+2x^3-x^4))]` -/
def P3751218349094824297.Spec : Prop :=
  ∀ n, P3751218349094824297.a n = A192235 (n + 1)

end A192235

/-! ## A192235.P952979875405668980

`Δ[A317974(n+2)]`
-/

namespace A192235.P952979875405668980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317974 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192235.P952979875405668980

namespace A192235

/-- `Δ[A317974(n+2)]` -/
def P952979875405668980.Spec : Prop :=
  ∀ n, P952979875405668980.a n = A192235 (n + 1)

end A192235

/-! ## A192235.P12075619603732770842

`Δ[Δ[A192237(n+2)]]`
-/

namespace A192235.P12075619603732770842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192237 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192235.P12075619603732770842

namespace A192235

/-- `Δ[Δ[A192237(n+2)]]` -/
def P12075619603732770842.Spec : Prop :=
  ∀ n, P12075619603732770842.a n = A192235 (n + 1)

end A192235

/-! ## A192235.P13317469610200809768

`A138574(n+1)-A192234(n+1)`
-/

namespace A192235.P13317469610200809768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138574 (n + 1) - A192234 (n + 1)

end

end A192235.P13317469610200809768

namespace A192235

/-- `A138574(n+1)-A192234(n+1)` -/
def P13317469610200809768.Spec : Prop :=
  ∀ n, P13317469610200809768.a n = A192235 (n + 1)

end A192235

/-! ## A192235.P4866024400102259606

`A192234(n+3)-A045821(n+1)`
-/

namespace A192235.P4866024400102259606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192234 (n + 3) - A045821 (n + 1)

end

end A192235.P4866024400102259606

namespace A192235

/-- `A192234(n+3)-A045821(n+1)` -/
def P4866024400102259606.Spec : Prop :=
  ∀ n, P4866024400102259606.a n = A192235 (n + 1)

end A192235

/-! ## A192235.P2532026961292830572

`A317975(n+3)-A317974(n+1)`
-/

namespace A192235.P2532026961292830572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317975 (n + 3) - A317974 (n + 1)

end

end A192235.P2532026961292830572

namespace A192235

/-- `A317975(n+3)-A317974(n+1)` -/
def P2532026961292830572.Spec : Prop :=
  ∀ n, P2532026961292830572.a n = A192235 (n + 1)

end A192235

/-! ## A192235.P11755298502829679963

`A112835(2*n)-A138573(n+1)`
-/

namespace A192235.P11755298502829679963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112835 (2 * n) - A138573 (n + 1)

end

end A192235.P11755298502829679963

namespace A192235

/-- `A112835(2*n)-A138573(n+1)` -/
def P11755298502829679963.Spec : Prop :=
  ∀ n, P11755298502829679963.a n = A192235 (n + 1)

end A192235

/-! ## A192235.P4364250206497828003

`A317974(n+3)-A317974(n+2)`
-/

namespace A192235.P4364250206497828003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317974 (n + 3) - A317974 (n + 2)

end

end A192235.P4364250206497828003

namespace A192235

/-- `A317974(n+3)-A317974(n+2)` -/
def P4364250206497828003.Spec : Prop :=
  ∀ n, P4364250206497828003.a n = A192235 (n + 1)

end A192235

/-! ## A192235.P12960543061612985316

`A206625(2*n+3)-A138573(n+1)`
-/

namespace A192235.P12960543061612985316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206625 (2 * n + 3) - A138573 (n + 1)

end

end A192235.P12960543061612985316

namespace A192235

/-- `A206625(2*n+3)-A138573(n+1)` -/
def P12960543061612985316.Spec : Prop :=
  ∀ n, P12960543061612985316.a n = A192235 (n + 1)

end A192235

/-! ## A192235.P614925628723972025

`A206625(2*n+3)-A206625(2*(n+1))`
-/

namespace A192235.P614925628723972025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206625 (2 * n + 3) - A206625 (2 * (n + 1))

end

end A192235.P614925628723972025

namespace A192235

/-- `A206625(2*n+3)-A206625(2*(n+1))` -/
def P614925628723972025.Spec : Prop :=
  ∀ n, P614925628723972025.a n = A192235 (n + 1)

end A192235

/-! ## A192235.P6373635544912860677

`A071101(n)-A071100(n)`
-/

namespace A192235.P6373635544912860677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071101 n - A071100 n

end

end A192235.P6373635544912860677

namespace A192235

/-- `A071101(n)-A071100(n)` -/
def P6373635544912860677.Spec : Prop :=
  ∀ n, P6373635544912860677.a n = A192235 (n + 1)

end A192235

/-! ## A192235.P886537749962393892

`A138573(n+3)-A071100(n)`
-/

namespace A192235.P886537749962393892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 (n + 3) - A071100 n

end

end A192235.P886537749962393892

namespace A192235

/-- `A138573(n+3)-A071100(n)` -/
def P886537749962393892.Spec : Prop :=
  ∀ n, P886537749962393892.a n = A192235 (n + 1)

end A192235

/-!
# A192236: Coefficient of x in the reduction of the n-th 2nd-kind Chebyshev polynomial by x^2 -> x+1.

The programs for A192236, the canonical program `A192236.P11419255833161946010` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192236 has offset 1).

The definition of A192236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192236.P11419255833161946010

`2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` with `a(0)=2, a(1)=4, a(2)=12, a(3)=36`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192236

/-- `2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` -/
def P11419255833161946010.Spec : Prop :=
  ∀ n, P11419255833161946010.a n = A192236 (n + 1)

theorem P11419255833161946010.correct : P11419255833161946010.Spec := by
  intro n
  simp only [A192236, Nat.add_sub_cancel]

end A192236

/-! ## A192236.P11787683852800998046

`2*A192237(n+3)`
-/

namespace A192236.P11787683852800998046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192237 (n + 3)

end

end A192236.P11787683852800998046

namespace A192236

/-- `2*A192237(n+3)` -/
def P11787683852800998046.Spec : Prop :=
  ∀ n, P11787683852800998046.a n = A192236 (n + 1)

end A192236

/-! ## A192236.P14760660010987523607

`ogf(2/(1-2x-2x^2-2x^3+x^4))`
-/

namespace A192236.P14760660010987523607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -2, -2, -2, 1] n

end

end A192236.P14760660010987523607

namespace A192236

/-- `ogf(2/(1-2x-2x^2-2x^3+x^4))` -/
def P14760660010987523607.Spec : Prop :=
  ∀ n, P14760660010987523607.a n = A192236 (n + 1)

end A192236

/-! ## A192236.P8849396755832069765

`∑[2*A317974(n+2)]`
-/

namespace A192236.P8849396755832069765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317974 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192236.P8849396755832069765

namespace A192236

/-- `∑[2*A317974(n+2)]` -/
def P8849396755832069765.Spec : Prop :=
  ∀ n, P8849396755832069765.a n = A192236 (n + 1)

end A192236

/-! ## A192236.P5395846839211634726

`A038989(n+1)-A138573(n)`
-/

namespace A192236.P5395846839211634726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038989 (n + 1) - A138573 n

end

end A192236.P5395846839211634726

namespace A192236

/-- `A038989(n+1)-A138573(n)` -/
def P5395846839211634726.Spec : Prop :=
  ∀ n, P5395846839211634726.a n = A192236 (n + 1)

end A192236

/-! ## A192236.P5734078522333906558

`A389120(n+1)+A138573(n+1)`
-/

namespace A192236.P5734078522333906558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389120 (n + 1) + A138573 (n + 1)

end

end A192236.P5734078522333906558

namespace A192236

/-- `A389120(n+1)+A138573(n+1)` -/
def P5734078522333906558.Spec : Prop :=
  ∀ n, P5734078522333906558.a n = A192236 (n + 1)

end A192236

/-! ## A192236.P7998222197394023272

`A138573(n+2)-A192234(n+2)`
-/

namespace A192236.P7998222197394023272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 (n + 2) - A192234 (n + 2)

end

end A192236.P7998222197394023272

namespace A192236

/-- `A138573(n+2)-A192234(n+2)` -/
def P7998222197394023272.Spec : Prop :=
  ∀ n, P7998222197394023272.a n = A192236 (n + 1)

end A192236

/-! ## A192236.P13056353001894480021

`A192235(n+2)-A192234(n+3)`
-/

namespace A192236.P13056353001894480021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192235 (n + 2) - A192234 (n + 3)

end

end A192236.P13056353001894480021

namespace A192236

/-- `A192235(n+2)-A192234(n+3)` -/
def P13056353001894480021.Spec : Prop :=
  ∀ n, P13056353001894480021.a n = A192236 (n + 1)

end A192236

/-! ## A192236.P16180558519554766415

`A112835(2*n+1)-A192234(n+2)`
-/

namespace A192236.P16180558519554766415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112835 (2 * n + 1) - A192234 (n + 2)

end

end A192236.P16180558519554766415

namespace A192236

/-- `A112835(2*n+1)-A192234(n+2)` -/
def P16180558519554766415.Spec : Prop :=
  ∀ n, P16180558519554766415.a n = A192236 (n + 1)

end A192236

/-! ## A192236.P6902197676020058575

`A138573(n+1)+A138574(n+1)-A138573(n)`
-/

namespace A192236.P6902197676020058575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 (n + 1) + (A138574 (n + 1) - A138573 n)

end

end A192236.P6902197676020058575

namespace A192236

/-- `A138573(n+1)+A138574(n+1)-A138573(n)` -/
def P6902197676020058575.Spec : Prop :=
  ∀ n, P6902197676020058575.a n = A192236 (n + 1)

end A192236

/-! ## A192236.P16567498311314949510

`A038989(n+1)-(A317974(n+1)+A317974(n))`
-/

namespace A192236.P16567498311314949510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038989 (n + 1) - (A317974 (n + 1) + A317974 n)

end

end A192236.P16567498311314949510

namespace A192236

/-- `A038989(n+1)-(A317974(n+1)+A317974(n))` -/
def P16567498311314949510.Spec : Prop :=
  ∀ n, P16567498311314949510.a n = A192236 (n + 1)

end A192236

/-! ## A192236.P18024427197891076858

`Δ[A206625(2*n+3)/2]`
-/

namespace A192236.P18024427197891076858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206625 (2 * n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192236.P18024427197891076858

namespace A192236

/-- `Δ[A206625(2*n+3)/2]` -/
def P18024427197891076858.Spec : Prop :=
  ∀ n, P18024427197891076858.a n = (A192236 (n + 1) : ℚ)

end A192236

/-! ## A192236.P1426158843231959075

`A071100(n)-A138574(n+2)`
-/

namespace A192236.P1426158843231959075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071100 n - A138574 (n + 2)

end

end A192236.P1426158843231959075

namespace A192236

/-- `A071100(n)-A138574(n+2)` -/
def P1426158843231959075.Spec : Prop :=
  ∀ n, P1426158843231959075.a n = A192236 (n + 1)

end A192236

/-! ## A192236.P9371772822417115582

`A387018(n+2)-A389120(n+2)`
-/

namespace A192236.P9371772822417115582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387018 (n + 2) - A389120 (n + 2)

end

end A192236.P9371772822417115582

namespace A192236

/-- `A387018(n+2)-A389120(n+2)` -/
def P9371772822417115582.Spec : Prop :=
  ∀ n, P9371772822417115582.a n = A192236 (n + 1)

end A192236

/-! ## A192236.P1933287746274753416

`A138574(n+2)-A112835(2*n)`
-/

namespace A192236.P1933287746274753416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138574 (n + 2) - A112835 (2 * n)

end

end A192236.P1933287746274753416

namespace A192236

/-- `A138574(n+2)-A112835(2*n)` -/
def P1933287746274753416.Spec : Prop :=
  ∀ n, P1933287746274753416.a n = A192236 (n + 1)

end A192236

/-! ## A192236.P3977733186234713842

`A138574(n+2)-A206625(2*n+3)`
-/

namespace A192236.P3977733186234713842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138574 (n + 2) - A206625 (2 * n + 3)

end

end A192236.P3977733186234713842

namespace A192236

/-- `A138574(n+2)-A206625(2*n+3)` -/
def P3977733186234713842.Spec : Prop :=
  ∀ n, P3977733186234713842.a n = A192236 (n + 1)

end A192236

/-!
# A192237: a(n) = 2*(a(n-1) + a(n-2) + a(n-3)) - a(n-4) for n >= 4, with initial terms 0,0,0,1.

The programs for A192237, the canonical program `A192237.P10270650698501474730` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192237 has offset 0).

The definition of A192237 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` (program `A192237.P10270650698501474730`, by `A192237.P10270650698501474730.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A192237.P10270650698501474730

`2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192237

/-- `2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` -/
def P10270650698501474730.Spec : Prop :=
  ∀ n, P10270650698501474730.a n = A192237 n

theorem P10270650698501474730.correct : P10270650698501474730.Spec := by
  intro n
  simp only [A192237]

end A192237

/-! ## A192237.P11286764258827055582

`ogf(x^3/(1-2x-2x^2-2x^3+x^4))`
-/

namespace A192237.P11286764258827055582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -2, -2, -2, 1] n

end

end A192237.P11286764258827055582

namespace A192237

/-- `ogf(x^3/(1-2x-2x^2-2x^3+x^4))` -/
def P11286764258827055582.Spec : Prop :=
  ∀ n, P11286764258827055582.a n = A192237 n

end A192237

/-! ## A192237.P5321758923986730703

`∑[A317974(abs(1-n))]`
-/

namespace A192237.P5321758923986730703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317974 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192237.P5321758923986730703

namespace A192237

/-- `∑[A317974(abs(1-n))]` -/
def P5321758923986730703.Spec : Prop :=
  ∀ n, P5321758923986730703.a n = A192237 n

end A192237

/-! ## A192237.P16930534016262180468

`A317974(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A192237.P16930534016262180468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A317974 (n - 1) + a (n - 1)

end

end A192237.P16930534016262180468

namespace A192237

/-- `A317974(n-1)+a(n-1)` -/
def P16930534016262180468.Spec : Prop :=
  ∀ n, P16930534016262180468.a n = A192237 n

end A192237

/-! ## A192237.P11831189485716513426

`A317974(n)-A317976(n)`
-/

namespace A192237.P11831189485716513426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317974 n - A317976 n

end

end A192237.P11831189485716513426

namespace A192237

/-- `A317974(n)-A317976(n)` -/
def P11831189485716513426.Spec : Prop :=
  ∀ n, P11831189485716513426.a n = A192237 n

end A192237

/-! ## A192237.P1129048531269455905

`A317976(n+1)-A192234(n)`
-/

namespace A192237.P1129048531269455905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317976 (n + 1) - A192234 n

end

end A192237.P1129048531269455905

namespace A192237

/-- `A317976(n+1)-A192234(n)` -/
def P1129048531269455905.Spec : Prop :=
  ∀ n, P1129048531269455905.a n = A192237 n

end A192237

/-! ## A192237.P5226508040201435262

`A192234(n)-(A317975(n)-A317976(n))`
-/

namespace A192237.P5226508040201435262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192234 n - (A317975 n - A317976 n)

end

end A192237.P5226508040201435262

namespace A192237

/-- `A192234(n)-(A317975(n)-A317976(n))` -/
def P5226508040201435262.Spec : Prop :=
  ∀ n, P5226508040201435262.a n = A192237 n

end A192237

/-! ## A192237.P1852885057382619147

`∑[A138574(n)-∑[A138573(n)]]`
-/

namespace A192237.P1852885057382619147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138574 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192237.P1852885057382619147

namespace A192237

/-- `∑[A138574(n)-∑[A138573(n)]]` -/
def P1852885057382619147.Spec : Prop :=
  ∀ n, P1852885057382619147.a n = A192237 n

end A192237

/-!
# A192238: Constant term in the reduction of the polynomial x(x+1)(x+2)...(x+n-1) by x^2 -> x+1.

The programs for A192238, there is no canonical definition to state claims against.
-/

/-! ## A192238.P14906944645318754435

`abs(A192936(n)-A306183(n))`
-/

namespace A192238.P14906944645318754435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A192936 n - A306183 n|

end

end A192238.P14906944645318754435

/-! ## A192238.P4767104854005857596

`A000038(n)+A306183(n)-A192936(n)`
-/

namespace A192238.P4767104854005857596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A306183 n - A192936 n)

end

end A192238.P4767104854005857596

/-! ## A192238.P12537956722466653108

`A192936(n+1)%A192936(A233583(n+1))`
-/

namespace A192238.P12537956722466653108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192936 (n + 1)) (A192936 (A233583 (n + 1)).toNat)

end

end A192238.P12537956722466653108

/-! ## A192238.P17737759570873311501

`lcm(A192936(n)-A306183(n), A001511(n²+1))`
-/

namespace A192238.P17737759570873311501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A192936 n - A306183 n) (A001511 (n ^ 2 + 1))

end

end A192238.P17737759570873311501

/-! ## A192238.P4867833186815172721

`A000007(n)+A000007(n)-(A192936(n)-A306183(n))`
-/

namespace A192238.P4867833186815172721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A000007 n - (A192936 n - A306183 n))

end

end A192238.P4867833186815172721

/-!
# A192239: Coefficient of x in the reduction of the polynomial x(x+1)(x+2)...(x+n-1) by x^2 -> x+1.

The programs for A192239, the canonical program `A192239.P15616604318798725104` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192239 has offset 1).

The definition of A192239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192239.P15616604318798725104

`2*n*a(n-1)-((n+1)²-3*(n+1)+1)*a(n-2)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192239

/-- `2*n*a(n-1)-((n+1)²-3*(n+1)+1)*a(n-2)` -/
def P15616604318798725104.Spec : Prop :=
  ∀ n, P15616604318798725104.a n = A192239 (n + 1)

theorem P15616604318798725104.correct : P15616604318798725104.Spec := by
  intro n
  simp only [A192239, Nat.add_sub_cancel]

end A192239

/-! ## A192239.P8897038844565062070

`A192936(n)-A000007(n)`
-/

namespace A192239.P8897038844565062070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192936 n - A000007 n

end

end A192239.P8897038844565062070

namespace A192239

/-- `A192936(n)-A000007(n)` -/
def P8897038844565062070.Spec : Prop :=
  ∀ n, P8897038844565062070.a n = A192239 (n + 1)

end A192239

/-! ## A192239.P17835033916310802207

`A057427(n)*A192936(n)`
-/

namespace A192239.P17835033916310802207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A192936 n

end

end A192239.P17835033916310802207

namespace A192239

/-- `A057427(n)*A192936(n)` -/
def P17835033916310802207.Spec : Prop :=
  ∀ n, P17835033916310802207.a n = A192239 (n + 1)

end A192239

/-! ## A192239.P9205812575630910401

`A192936(n)-A000038(n)/2`
-/

namespace A192239.P9205812575630910401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192936 n : ℚ) - (A000038 n : ℚ) / 2

end

end A192239.P9205812575630910401

namespace A192239

/-- `A192936(n)-A000038(n)/2` -/
def P9205812575630910401.Spec : Prop :=
  ∀ n, P9205812575630910401.a n = (A192239 (n + 1) : ℚ)

end A192239

/-! ## A192239.P16227002559599097091

`char[A000463(n+1)]*A192936(n)`
-/

namespace A192239.P16227002559599097091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A192936 n

end

end A192239.P16227002559599097091

namespace A192239

/-- `char[A000463(n+1)]*A192936(n)` -/
def P16227002559599097091.Spec : Prop :=
  ∀ n, P16227002559599097091.a n = A192239 (n + 1)

end A192239

/-! ## A192239.P9989908537495973249

`A192936(n)-val(A000040(n+1), 2)`
-/

namespace A192239.P9989908537495973249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192936 n - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A192239.P9989908537495973249

namespace A192239

/-- `A192936(n)-val(A000040(n+1), 2)` -/
def P9989908537495973249.Spec : Prop :=
  ∀ n, P9989908537495973249.a n = A192239 (n + 1)

end A192239

/-! ## A192239.P17766537873763045721

`A192936(n)-A000035(A001316(n))`
-/

namespace A192239.P17766537873763045721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192936 n - A000035 (A001316 n).toNat

end

end A192239.P17766537873763045721

namespace A192239

/-- `A192936(n)-A000035(A001316(n))` -/
def P17766537873763045721.Spec : Prop :=
  ∀ n, P17766537873763045721.a n = A192239 (n + 1)

end A192239

/-! ## A192239.P14916664972434596091

`A192936(n)-A015836(A167132(n+1))`
-/

namespace A192239.P14916664972434596091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192936 n - A015836 (A167132 (n + 1)).toNat

end

end A192239.P14916664972434596091

namespace A192239

/-- `A192936(n)-A015836(A167132(n+1))` -/
def P14916664972434596091.Spec : Prop :=
  ∀ n, P14916664972434596091.a n = A192239 (n + 1)

end A192239

/-! ## A192239.P16931526156557446115

`A001222(A076396(n+1))*A192936(n)`
-/

namespace A192239.P16931526156557446115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A076396 (n + 1)).toNat * A192936 n

end

end A192239.P16931526156557446115

namespace A192239

/-- `A001222(A076396(n+1))*A192936(n)` -/
def P16931526156557446115.Spec : Prop :=
  ∀ n, P16931526156557446115.a n = A192239 (n + 1)

end A192239

/-! ## A192239.P10646564600123124853

`(A006530(A003817(n)+1)-1)*A192936(n)`
-/

namespace A192239.P10646564600123124853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006530 (A003817 n + 1).toNat - 1) * A192936 n

end

end A192239.P10646564600123124853

namespace A192239

/-- `(A006530(A003817(n)+1)-1)*A192936(n)` -/
def P10646564600123124853.Spec : Prop :=
  ∀ n, P10646564600123124853.a n = A192239 (n + 1)

end A192239

/-!
# A192240: Constant term in the reduction of the polynomial (x+3)^n by x^2 -> x+1.

The programs for A192240, the canonical program `A192240.P3080824631891854294` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192240 has offset 0).

The definition of A192240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192240.P18309168258177896986

`ogf((1-4x)/(1-7x+11x^2))`
-/

namespace A192240.P18309168258177896986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -7, 11] n

end

end A192240.P18309168258177896986

namespace A192240

/-- `ogf((1-4x)/(1-7x+11x^2))` -/
def P18309168258177896986.Spec : Prop :=
  ∀ n, P18309168258177896986.a n = A192240 n

end A192240

/-! ## A192240.P3080824631891854294

`7*a(n-1)-11*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192240

/-- `7*a(n-1)-11*a(n-2)` -/
def P3080824631891854294.Spec : Prop :=
  ∀ n, P3080824631891854294.a n = A192240 n

theorem P3080824631891854294.correct : P3080824631891854294.Spec := by
  intro n
  simp only [A192240]

end A192240

/-! ## A192240.P2798891027150374892

`2*A081568(n)-A289783(n)`
-/

namespace A192240.P2798891027150374892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081568 n - A289783 n

end

end A192240.P2798891027150374892

namespace A192240

/-- `2*A081568(n)-A289783(n)` -/
def P2798891027150374892.Spec : Prop :=
  ∀ n, P2798891027150374892.a n = A192240 n

end A192240

/-! ## A192240.P5999960580496916815

`5*A081568(n)-A081568(n+1)`
-/

namespace A192240.P5999960580496916815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A081568 n - A081568 (n + 1)

end

end A192240.P5999960580496916815

namespace A192240

/-- `5*A081568(n)-A081568(n+1)` -/
def P5999960580496916815.Spec : Prop :=
  ∀ n, P5999960580496916815.a n = A192240 n

end A192240

/-! ## A192240.P9995297641713235139

`A081568(n)-A081576(A056000(n)+6)`
-/

namespace A192240.P9995297641713235139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081568 n - A081576 (A056000 n + 6).toNat

end

end A192240.P9995297641713235139

namespace A192240

/-- `A081568(n)-A081576(A056000(n)+6)` -/
def P9995297641713235139.Spec : Prop :=
  ∀ n, P9995297641713235139.a n = A192240 n

end A192240

/-!
# A192241: Primes in Dana Scott's sequence (A048736).

The programs for A192241, there is no canonical definition to state claims against.
-/

/-! ## A192241.P8566103387351507420

`A048736(A192242(n+1))`
-/

namespace A192241.P8566103387351507420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048736 (A192242 (n + 1)).toNat

end

end A192241.P8566103387351507420

/-! ## A192241.P17945751882642763423

`p?[A048736(n)]`
-/

namespace A192241.P17945751882642763423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192241.P17945751882642763423

/-! ## A192241.P15913351555497971402

`filter[A048736(n), A010051(#)]`
-/

namespace A192241.P15913351555497971402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A192241.P15913351555497971402

/-! ## A192241.P8274337379522780229

`filter[A048736(n), A354817(#)]`
-/

namespace A192241.P8274337379522780229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354817 (f1 j).toNat = 1) n)

end

end A192241.P8274337379522780229

/-!
# A192243: 0-sequence of reduction of Lucas sequence by x^2 -> x+1.

The programs for A192243, the canonical program `A192243.P3785277376584996397` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192243 has offset 1).

The definition of A192243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192243.P3785277376584996397

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=12`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192243

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P3785277376584996397.Spec : Prop :=
  ∀ n, P3785277376584996397.a n = A192243 (n + 1)

theorem P3785277376584996397.correct : P3785277376584996397.Spec := by
  intro n
  simp only [A192243, Nat.add_sub_cancel]

end A192243

/-! ## A192243.P11345370796291759785

`ogf((1-2x+2x^2)/(1-3x+3x^3-x^4))`
-/

namespace A192243.P11345370796291759785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -3, 0, 3, -1] n

end

end A192243.P11345370796291759785

namespace A192243

/-- `ogf((1-2x+2x^2)/(1-3x+3x^3-x^4))` -/
def P11345370796291759785.Spec : Prop :=
  ∀ n, P11345370796291759785.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P4492348009153659946

`floor(ϕ^(2*n)-a(n-1))` with `a(0)=1`
-/

namespace A192243.P4492348009153659946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio ^ (2 * n) - (a (n - 1) : ℝ)⌋

end

end A192243.P4492348009153659946

namespace A192243

/-- `floor(ϕ^(2*n)-a(n-1))` -/
def P4492348009153659946.Spec : Prop :=
  ∀ n, P4492348009153659946.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P7018757433544345454

`-ceil(a(n-1)-ϕ^(2*n))` with `a(0)=1`
-/

namespace A192243.P7018757433544345454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -⌈(a (n - 1) : ℝ) - Real.goldenRatio ^ (2 * n)⌉

end

end A192243.P7018757433544345454

namespace A192243

/-- `-ceil(a(n-1)-ϕ^(2*n))` -/
def P7018757433544345454.Spec : Prop :=
  ∀ n, P7018757433544345454.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P13037222813612061376

`A122367(n)-and(1, n)`
-/

namespace A192243.P13037222813612061376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - (Nat.land 1 n : ℤ)

end

end A192243.P13037222813612061376

namespace A192243

/-- `A122367(n)-and(1, n)` -/
def P13037222813612061376.Spec : Prop :=
  ∀ n, P13037222813612061376.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P9223046409191903945

`A027941(n)+char[2*n]`
-/

namespace A192243.P9223046409191903945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A192243.P9223046409191903945

namespace A192243

/-- `A027941(n)+char[2*n]` -/
def P9223046409191903945.Spec : Prop :=
  ∀ n, P9223046409191903945.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P3621645861232337328

`A005592(n)-a(n-1)` with `a(0)=1`
-/

namespace A192243.P3621645861232337328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005592 n - a (n - 1)

end

end A192243.P3621645861232337328

namespace A192243

/-- `A005592(n)-a(n-1)` -/
def P3621645861232337328.Spec : Prop :=
  ∀ n, P3621645861232337328.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P9389964567159532374

`A000045(Δ[n²])-n%2`
-/

namespace A192243.P9389964567159532374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ((n % 2 : ℕ) : ℤ)

end

end A192243.P9389964567159532374

namespace A192243

/-- `A000045(Δ[n²])-n%2` -/
def P9389964567159532374.Spec : Prop :=
  ∀ n, P9389964567159532374.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P17378971138063441051

`Δ[A000045(2*n)]-and(1, n)`
-/

namespace A192243.P17378971138063441051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.land 1 n : ℤ)

end

end A192243.P17378971138063441051

namespace A192243

/-- `Δ[A000045(2*n)]-and(1, n)` -/
def P17378971138063441051.Spec : Prop :=
  ∀ n, P17378971138063441051.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P14706111480288426328

`A000045(record[xor(1, n)])-and(1, n)`
-/

namespace A192243.P14706111480288426328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - (Nat.land 1 n : ℤ)

end

end A192243.P14706111480288426328

namespace A192243

/-- `A000045(record[xor(1, n)])-and(1, n)` -/
def P14706111480288426328.Spec : Prop :=
  ∀ n, P14706111480288426328.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P17185875269692304538

`floor(ϕ^n*A000045(n+1))`
-/

namespace A192243.P17185875269692304538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ n * (A000045 (n + 1) : ℝ)⌋

end

end A192243.P17185875269692304538

namespace A192243

/-- `floor(ϕ^n*A000045(n+1))` -/
def P17185875269692304538.Spec : Prop :=
  ∀ n, P17185875269692304538.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P7653987228923720369

`A000045(2*n+1)-and(1, n)`
-/

namespace A192243.P7653987228923720369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) - (Nat.land 1 n : ℤ)

end

end A192243.P7653987228923720369

namespace A192243

/-- `A000045(2*n+1)-and(1, n)` -/
def P7653987228923720369.Spec : Prop :=
  ∀ n, P7653987228923720369.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P12491051731220834542

`A000032(2*n)-(a(n-1)+1)` with `a(0)=1`
-/

namespace A192243.P12491051731220834542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000032 (2 * n) - (a (n - 1) + 1)

end

end A192243.P12491051731220834542

namespace A192243

/-- `A000032(2*n)-(a(n-1)+1)` -/
def P12491051731220834542.Spec : Prop :=
  ∀ n, P12491051731220834542.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P522841296667242094

`A000045(comp[2*n])-char[2*n+1]`
-/

namespace A192243.P522841296667242094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A192243.P522841296667242094

namespace A192243

/-- `A000045(comp[2*n])-char[2*n+1]` -/
def P522841296667242094.Spec : Prop :=
  ∀ n, P522841296667242094.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P11113769605016840261

`A000032(n-1+n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A192243.P11113769605016840261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000032 ((n : ℤ) - 1 + (n : ℤ)).toNat + a (n - 2)

end

end A192243.P11113769605016840261

namespace A192243

/-- `A000032(n-1+n)+a(n-2)` -/
def P11113769605016840261.Spec : Prop :=
  ∀ n, P11113769605016840261.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P11921130379370949903

`∑[A000032(2*n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A192243.P11921130379370949903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000032 (2 * n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192243.P11921130379370949903

namespace A192243

/-- `∑[A000032(2*n-1)-a(n-1)]` -/
def P11921130379370949903.Spec : Prop :=
  ∀ n, P11921130379370949903.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P18149542538960860671

`A000032(lcm(2, 2*n))-1-a(n-1)` with `a(0)=1`
-/

namespace A192243.P18149542538960860671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000032 (Nat.lcm 2 (2 * n)) - 1 - a (n - 1)

end

end A192243.P18149542538960860671

namespace A192243

/-- `A000032(lcm(2, 2*n))-1-a(n-1)` -/
def P18149542538960860671.Spec : Prop :=
  ∀ n, P18149542538960860671.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P2366380279133094583

`A163227(A047468(n+1))`
-/

namespace A192243.P2366380279133094583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (A047468 (n + 1)).toNat

end

end A192243.P2366380279133094583

namespace A192243

/-- `A163227(A047468(n+1))` -/
def P2366380279133094583.Spec : Prop :=
  ∀ n, P2366380279133094583.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P7122847047354381266

`A059841(n)+A027941(n)`
-/

namespace A192243.P7122847047354381266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A027941 n

end

end A192243.P7122847047354381266

namespace A192243

/-- `A059841(n)+A027941(n)` -/
def P7122847047354381266.Spec : Prop :=
  ∀ n, P7122847047354381266.a n = A192243 (n + 1)

end A192243

/-! ## A192243.P2525021140701136240

`A122367(n)-A000035(n)`
-/

namespace A192243.P2525021140701136240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - A000035 n

end

end A192243.P2525021140701136240

namespace A192243

/-- `A122367(n)-A000035(n)` -/
def P2525021140701136240.Spec : Prop :=
  ∀ n, P2525021140701136240.a n = A192243 (n + 1)

end A192243

/-!
# A192244: 0-sequence of reduction of triangular number sequence by x^2 -> x+1.

The programs for A192244, the canonical program `A192244.P14465842331784357705` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192244 has offset 1).

The definition of A192244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192244.P9777289870127342566

`∑[∑[n+1]*A212804(n)]`
-/

namespace A192244.P9777289870127342566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192244.P9777289870127342566

namespace A192244

/-- `∑[∑[n+1]*A212804(n)]` -/
def P9777289870127342566.Spec : Prop :=
  ∀ n, P9777289870127342566.a n = A192244 (n + 1)

end A192244

/-! ## A192244.P14465842331784357705

`∑[∑[n+1]*Δ[A000045(n)]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192244

/-- `∑[∑[n+1]*Δ[A000045(n)]]` -/
def P14465842331784357705.Spec : Prop :=
  ∀ n, P14465842331784357705.a n = A192244 (n + 1)

theorem P14465842331784357705.correct : P14465842331784357705.Spec := by
  intro n
  simp only [A192244, Nat.add_sub_cancel]

end A192244

/-! ## A192244.P13130174289046632569

`∑[A000045(abs(1-n))*∑[n+1]]`
-/

namespace A192244.P13130174289046632569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192244.P13130174289046632569

namespace A192244

/-- `∑[A000045(abs(1-n))*∑[n+1]]` -/
def P13130174289046632569.Spec : Prop :=
  ∀ n, P13130174289046632569.a n = A192244 (n + 1)

end A192244

/-! ## A192244.P11108665664121483090

`∑[Δ[A000045(n)]*A008795(2*n)]`
-/

namespace A192244.P11108665664121483090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A008795 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192244.P11108665664121483090

namespace A192244

/-- `∑[Δ[A000045(n)]*A008795(2*n)]` -/
def P11108665664121483090.Spec : Prop :=
  ∀ n, P11108665664121483090.a n = A192244 (n + 1)

end A192244

/-! ## A192244.P4441781211014649920

`∑[A000217(n+1)*A247049(3*n)]`
-/

namespace A192244.P4441781211014649920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A247049 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192244.P4441781211014649920

namespace A192244

/-- `∑[A000217(n+1)*A247049(3*n)]` -/
def P4441781211014649920.Spec : Prop :=
  ∀ n, P4441781211014649920.a n = A192244 (n + 1)

end A192244

/-!
# A192245: 1-sequence of reduction of triangular number sequence by x^2 -> x+1.

The programs for A192245, the canonical program `A192245.P7575187329844493871` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192245 has offset 1).

The definition of A192245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192245.P2130430873708250009

`∑[round(ϕ^n/sqrt(5))*∑[n+1]]`
-/

namespace A192245.P2130430873708250009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192245.P2130430873708250009

namespace A192245

/-- `∑[round(ϕ^n/sqrt(5))*∑[n+1]]` -/
def P2130430873708250009.Spec : Prop :=
  ∀ n, P2130430873708250009.a n = A192245 (n + 1)

end A192245

/-! ## A192245.P7575187329844493871

`abs(∑[(A001611(n)-1)*∑[n+1]])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192245

/-- `abs(∑[(A001611(n)-1)*∑[n+1]])` -/
def P7575187329844493871.Spec : Prop :=
  ∀ n, P7575187329844493871.a n = A192245 (n + 1)

theorem P7575187329844493871.correct : P7575187329844493871.Spec := by
  intro n
  simp only [A192245, Nat.add_sub_cancel]

end A192245

/-! ## A192245.P18063357331755583452

`abs(∑[(A157725(n)-2)*∑[n+1]])`
-/

namespace A192245.P18063357331755583452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157725 n - 2) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A192245.P18063357331755583452

namespace A192245

/-- `abs(∑[(A157725(n)-2)*∑[n+1]])` -/
def P18063357331755583452.Spec : Prop :=
  ∀ n, P18063357331755583452.a n = A192245 (n + 1)

end A192245

/-! ## A192245.P16656711531525834162

`abs(∑[(A157726(n)-3)*∑[n+1]])`
-/

namespace A192245.P16656711531525834162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157726 n - 3) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A192245.P16656711531525834162

namespace A192245

/-- `abs(∑[(A157726(n)-3)*∑[n+1]])` -/
def P16656711531525834162.Spec : Prop :=
  ∀ n, P16656711531525834162.a n = A192245 (n + 1)

end A192245

/-! ## A192245.P1067348043127944216

`A086926(n+2)-A014286(n+1)`
-/

namespace A192245.P1067348043127944216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086926 (n + 2) - A014286 (n + 1)

end

end A192245.P1067348043127944216

namespace A192245

/-- `A086926(n+2)-A014286(n+1)` -/
def P1067348043127944216.Spec : Prop :=
  ∀ n, P1067348043127944216.a n = A192245 (n + 1)

end A192245

/-! ## A192245.P4721483441708185663

`A192142(n+1)-A117152(n)`
-/

namespace A192245.P4721483441708185663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192142 (n + 1) - A117152 n

end

end A192245.P4721483441708185663

namespace A192245

/-- `A192142(n+1)-A117152(n)` -/
def P4721483441708185663.Spec : Prop :=
  ∀ n, P4721483441708185663.a n = A192245 (n + 1)

theorem P4721483441708185663.correct : P4721483441708185663.Spec := by
  intro n
  simp only [A192245, Nat.add_sub_cancel, A192245.P4721483441708185663.a, A192245.P7575187329844493871.f2, A192245.P7575187329844493871.f1, A192245.P7575187329844493871.a, A001611, A001611.P2764665205649475385.a, A117152, A117152.P11692183672418118795.f1, A117152.P11692183672418118795.a, A192142, A192142.P14644412906987799282.a, A086926, A086926.P11568517746438091352.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192245

/-! ## A192245.P4916872411697460966

`A192255(n+1)-(A117152(n)+A014286(n))`
-/

namespace A192245.P4916872411697460966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192255 (n + 1) - (A117152 n + A014286 n)

end

end A192245.P4916872411697460966

namespace A192245

/-- `A192255(n+1)-(A117152(n)+A014286(n))` -/
def P4916872411697460966.Spec : Prop :=
  ∀ n, P4916872411697460966.a n = A192245 (n + 1)

end A192245

/-! ## A192245.P16343344543425070557

`2*A192255(n+1)-A192146(n+1)`
-/

namespace A192245.P16343344543425070557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192255 (n + 1) - A192146 (n + 1)

end

end A192245.P16343344543425070557

namespace A192245

/-- `2*A192255(n+1)-A192146(n+1)` -/
def P16343344543425070557.Spec : Prop :=
  ∀ n, P16343344543425070557.a n = A192245 (n + 1)

theorem P16343344543425070557.correct : P16343344543425070557.Spec := by
  intro n
  simp only [A192245, Nat.add_sub_cancel, A192245.P16343344543425070557.a, A192245.P7575187329844493871.f2, A192245.P7575187329844493871.f1, A192245.P7575187329844493871.a, A001611, A001611.P2764665205649475385.a, A192146, A192146.P11104704368216114941.a, A192255, A192255.P15495661104029478180.f1, A192255.P15495661104029478180.a, A001511, A001511.P17146462531039486101.a, A157726, A157726.P9748439790048040918.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192245

/-!
# A192246: 0-sequence of reduction of tetrahedral number sequence by x^2 -> x+1.

The programs for A192246, the canonical program `A192246.P7079708184768822987` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192246 has offset 1).

The definition of A192246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192246.P5439107159199816540

`∑[C(n+3, 3)*A212804(n)]`
-/

namespace A192246.P5439107159199816540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192246.P5439107159199816540

namespace A192246

/-- `∑[C(n+3, 3)*A212804(n)]` -/
def P5439107159199816540.Spec : Prop :=
  ∀ n, P5439107159199816540.a n = A192246 (n + 1)

end A192246

/-! ## A192246.P7079708184768822987

`∑[C(n+3, 3)*Δ[A000045(n)]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192246

/-- `∑[C(n+3, 3)*Δ[A000045(n)]]` -/
def P7079708184768822987.Spec : Prop :=
  ∀ n, P7079708184768822987.a n = A192246 (n + 1)

theorem P7079708184768822987.correct : P7079708184768822987.Spec := by
  intro n
  simp only [A192246, Nat.add_sub_cancel]

end A192246

/-! ## A192246.P3584641908384147417

`∑[C(n+3, 3)*A000045(abs(1-n))]`
-/

namespace A192246.P3584641908384147417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192246.P3584641908384147417

namespace A192246

/-- `∑[C(n+3, 3)*A000045(abs(1-n))]` -/
def P3584641908384147417.Spec : Prop :=
  ∀ n, P3584641908384147417.a n = A192246 (n + 1)

end A192246

/-! ## A192246.P10768439890608708333

`a(n-1)+C(n+3, 3)*A000045(n-1)` with `a(0)=1`
-/

namespace A192246.P10768439890608708333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.choose (n + 3) 3 : ℤ) * A000045 (n - 1)

end

end A192246.P10768439890608708333

namespace A192246

/-- `a(n-1)+C(n+3, 3)*A000045(n-1)` -/
def P10768439890608708333.Spec : Prop :=
  ∀ n, P10768439890608708333.a n = A192246 (n + 1)

end A192246

/-! ## A192246.P9257978676761283527

`∑[A000292(n+1)*A212804(n)]`
-/

namespace A192246.P9257978676761283527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192246.P9257978676761283527

namespace A192246

/-- `∑[A000292(n+1)*A212804(n)]` -/
def P9257978676761283527.Spec : Prop :=
  ∀ n, P9257978676761283527.a n = A192246 (n + 1)

end A192246

/-!
# A192247: 1-sequence of reduction of tetrahedral number sequence by x^2 -> x+1.

The programs for A192247, the canonical program `A192247.P8336674393211516399` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192247 has offset 1).

The definition of A192247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192247.P8336674393211516399

`∑[C(n+3, 3)*A000045(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192247

/-- `∑[C(n+3, 3)*A000045(n)]` -/
def P8336674393211516399.Spec : Prop :=
  ∀ n, P8336674393211516399.a n = A192247 (n + 1)

theorem P8336674393211516399.correct : P8336674393211516399.Spec := by
  intro n
  simp only [A192247, Nat.add_sub_cancel]

end A192247

/-! ## A192247.P16844098263368998292

`∑[C(n+3, 3)*A212804(n+1)]`
-/

namespace A192247.P16844098263368998292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192247.P16844098263368998292

namespace A192247

/-- `∑[C(n+3, 3)*A212804(n+1)]` -/
def P16844098263368998292.Spec : Prop :=
  ∀ n, P16844098263368998292.a n = A192247 (n + 1)

end A192247

/-! ## A192247.P14303512638667694111

`∑[A000045(2*n-n)*∑[∑[n+1]]]`
-/

namespace A192247.P14303512638667694111
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n - n) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192247.P14303512638667694111

namespace A192247

/-- `∑[A000045(2*n-n)*∑[∑[n+1]]]` -/
def P14303512638667694111.Spec : Prop :=
  ∀ n, P14303512638667694111.a n = A192247 (n + 1)

end A192247

/-! ## A192247.P16644908525212828739

`∑[sqrt(A007598(n))*C(n+3, 3)]`
-/

namespace A192247.P16644908525212828739
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 n : ℝ) * (Nat.choose (n + 3) 3 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192247.P16644908525212828739

namespace A192247

/-- `∑[sqrt(A007598(n))*C(n+3, 3)]` -/
def P16644908525212828739.Spec : Prop :=
  ∀ n, P16644908525212828739.a n = (A192247 (n + 1) : ℝ)

end A192247

/-!
# A192248: 0-sequence of reduction of binomial coefficient sequence B(n,4)=A000332 by x^2 -> x+1.

The programs for A192248, the canonical program `A192248.P9724838278687975576` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192248 has offset 1).

The definition of A192248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192248.P15784334089492665084

`∑[C(n+4, 4)*A212804(n)]`
-/

namespace A192248.P15784334089492665084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192248.P15784334089492665084

namespace A192248

/-- `∑[C(n+4, 4)*A212804(n)]` -/
def P15784334089492665084.Spec : Prop :=
  ∀ n, P15784334089492665084.a n = A192248 (n + 1)

end A192248

/-! ## A192248.P9724838278687975576

`∑[C(n+4, 4)*Δ[A000045(n)]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192248

/-- `∑[C(n+4, 4)*Δ[A000045(n)]]` -/
def P9724838278687975576.Spec : Prop :=
  ∀ n, P9724838278687975576.a n = A192248 (n + 1)

theorem P9724838278687975576.correct : P9724838278687975576.Spec := by
  intro n
  simp only [A192248, Nat.add_sub_cancel]

end A192248

/-! ## A192248.P57327194667199008

`∑[C(n+4, 4)*A000045(abs(1-n))]`
-/

namespace A192248.P57327194667199008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) * A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192248.P57327194667199008

namespace A192248

/-- `∑[C(n+4, 4)*A000045(abs(1-n))]` -/
def P57327194667199008.Spec : Prop :=
  ∀ n, P57327194667199008.a n = A192248 (n + 1)

end A192248

/-! ## A192248.P4069775395318853983

`a(n-1)+C(n+4, 4)*A000045(n-1)` with `a(0)=1`
-/

namespace A192248.P4069775395318853983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.choose (n + 4) 4 : ℤ) * A000045 (n - 1)

end

end A192248.P4069775395318853983

namespace A192248

/-- `a(n-1)+C(n+4, 4)*A000045(n-1)` -/
def P4069775395318853983.Spec : Prop :=
  ∀ n, P4069775395318853983.a n = A192248 (n + 1)

end A192248

/-! ## A192248.P2186157747733351883

`∑[A328610(A052905(n+1)+9)]`
-/

namespace A192248.P2186157747733351883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328610 (A052905 (n + 1) + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192248.P2186157747733351883

namespace A192248

/-- `∑[A328610(A052905(n+1)+9)]` -/
def P2186157747733351883.Spec : Prop :=
  ∀ n, P2186157747733351883.a n = A192248 (n + 1)

end A192248

/-!
# A192249: 1-sequence of reduction of binomial coefficient sequence B(n,4)=A000332 by x^2 -> x+1.

The programs for A192249, the canonical program `A192249.P14476901547365329932` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192249 has offset 1).

The definition of A192249 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192069, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A192249.P14476901547365329932

`5*A192069(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A192249

/-- `5*A192069(n+1)` -/
def P14476901547365329932.Spec : Prop :=
  ∀ n, P14476901547365329932.a n = A192249 (n + 1)

theorem P14476901547365329932.correct : P14476901547365329932.Spec := by
  intro n
  simp only [A192249, Nat.add_sub_cancel]

end A192249

/-! ## A192249.P14070223752649728074

`∑[C(n+4, 4)*round(ϕ^n/sqrt(5))]`
-/

namespace A192249.P14070223752649728074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192249.P14070223752649728074

namespace A192249

/-- `∑[C(n+4, 4)*round(ϕ^n/sqrt(5))]` -/
def P14070223752649728074.Spec : Prop :=
  ∀ n, P14070223752649728074.a n = A192249 (n + 1)

end A192249

/-! ## A192249.P16095759589423902307

`∑[(A001611(n)-1)*C(n+4, 4)]`
-/

namespace A192249.P16095759589423902307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * (Nat.choose (n + 4) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192249.P16095759589423902307

namespace A192249

/-- `∑[(A001611(n)-1)*C(n+4, 4)]` -/
def P16095759589423902307.Spec : Prop :=
  ∀ n, P16095759589423902307.a n = A192249 (n + 1)

end A192249

/-! ## A192249.P16332910579499256801

`∑[(A157726(n)-3)*C(n+4, 4)]`
-/

namespace A192249.P16332910579499256801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157726 n - 3) * (Nat.choose (n + 4) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192249.P16332910579499256801

namespace A192249

/-- `∑[(A157726(n)-3)*C(n+4, 4)]` -/
def P16332910579499256801.Spec : Prop :=
  ∀ n, P16332910579499256801.a n = A192249 (n + 1)

end A192249

/-! ## A192249.P7877804232349203333

`∑[sqrt(A288876(n))*A000045(n)]`
-/

namespace A192249.P7877804232349203333
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A288876 n : ℝ) * (A000045 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192249.P7877804232349203333

namespace A192249

/-- `∑[sqrt(A288876(n))*A000045(n)]` -/
def P7877804232349203333.Spec : Prop :=
  ∀ n, P7877804232349203333.a n = (A192249 (n + 1) : ℝ)

end A192249

/-!
# A192250: 0-sequence of reduction of central binomial coefficient sequence by x^2 -> x+1.

The programs for A192250, there is no canonical definition to state claims against.
-/

/-! ## A192250.P1568598368034489627

`∑[C(2*n, n)*A212804(n)]`
-/

namespace A192250.P1568598368034489627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192250.P1568598368034489627

/-! ## A192250.P9702414917372966207

`a(n-1)+C(2*n, n)*A000045(n-1)` with `a(0)=1`
-/

namespace A192250.P9702414917372966207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.choose (2 * n) n : ℤ) * A000045 (n - 1)

end

end A192250.P9702414917372966207

/-! ## A192250.P10229434964200106326

`∑[Δ[A000045(n)]*A000984(n)]`
-/

namespace A192250.P10229434964200106326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192250.P10229434964200106326

/-! ## A192250.P14074110654831173239

`∑[(n+1)*A000108(n)*A212804(n)]`
-/

namespace A192250.P14074110654831173239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192250.P14074110654831173239

/-! ## A192250.P10977016545470240004

`∑[A007318((n+1)*2*n)*A212804(n)]`
-/

namespace A192250.P10977016545470240004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n + 1) * (2 * n)) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192250.P10977016545470240004

/-!
# A192251: 1-sequence of reduction of central binomial coefficient sequence by x^2 -> x+1.

The programs for A192251, the canonical program `A192251.P14492476938057793827` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192251 has offset 1).

The definition of A192251 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192070, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A192251.P14492476938057793827

`2*A192070(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A192251

/-- `2*A192070(n+1)` -/
def P14492476938057793827.Spec : Prop :=
  ∀ n, P14492476938057793827.a n = A192251 (n + 1)

theorem P14492476938057793827.correct : P14492476938057793827.Spec := by
  intro n
  simp only [A192251, Nat.add_sub_cancel]

end A192251

/-! ## A192251.P3945769682937070865

`∑[A119692(n)]`
-/

namespace A192251.P3945769682937070865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192251.P3945769682937070865

namespace A192251

/-- `∑[A119692(n)]` -/
def P3945769682937070865.Spec : Prop :=
  ∀ n, P3945769682937070865.a n = A192251 (n + 1)

end A192251

/-! ## A192251.P819710905950111955

`∑[2*A119693(n)]`
-/

namespace A192251.P819710905950111955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192251.P819710905950111955

namespace A192251

/-- `∑[2*A119693(n)]` -/
def P819710905950111955.Spec : Prop :=
  ∀ n, P819710905950111955.a n = A192251 (n + 1)

end A192251

/-! ## A192251.P13391080039425740642

`∑[C(2*n, n)*A000045(n)]`
-/

namespace A192251.P13391080039425740642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192251.P13391080039425740642

namespace A192251

/-- `∑[C(2*n, n)*A000045(n)]` -/
def P13391080039425740642.Spec : Prop :=
  ∀ n, P13391080039425740642.a n = A192251 (n + 1)

end A192251

/-! ## A192251.P13463187127145078255

`∑[A000045(n)*A000984(n)]`
-/

namespace A192251.P13463187127145078255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192251.P13463187127145078255

namespace A192251

/-- `∑[A000045(n)*A000984(n)]` -/
def P13463187127145078255.Spec : Prop :=
  ∀ n, P13463187127145078255.a n = A192251 (n + 1)

end A192251

/-!
# A192252: 0-sequence of reduction of (n!) by x^2 -> x+1.

The programs for A192252, there is no canonical definition to state claims against.
-/

/-! ## A192252.P11077078591751119042

`∑[n*(a(n-1)+(n-1)*a(n-2))]` with `a(0)=1, a(1)=0`
-/

namespace A192252.P11077078591751119042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) + ((n : ℤ) - 1) * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192252.P11077078591751119042

/-! ## A192252.P16342674113587154651

`∑[A052554(n)]`
-/

namespace A192252.P16342674113587154651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192252.P16342674113587154651

/-! ## A192252.P12858753418185291819

`∑[n!*A212804(n)]`
-/

namespace A192252.P12858753418185291819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192252.P12858753418185291819

/-! ## A192252.P8279283697600677651

`∑[n!*Δ[A000045(n)]]`
-/

namespace A192252.P8279283697600677651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192252.P8279283697600677651

/-! ## A192252.P9066791995543096496

`∑[n!*A000045(abs(1-n))]`
-/

namespace A192252.P9066791995543096496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192252.P9066791995543096496

/-! ## A192252.P17249738047386014941

`a(n-1)+n!*A000045(n-1)` with `a(0)=1`
-/

namespace A192252.P17249738047386014941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.factorial n : ℤ) * A000045 (n - 1)

end

end A192252.P17249738047386014941

/-! ## A192252.P16569470660528965716

`∑[A000142(n)*A212804(n)]`
-/

namespace A192252.P16569470660528965716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192252.P16569470660528965716

/-! ## A192252.P8667487845820675136

`∑[(A000045(n+1)-A000045(n))*n!]`
-/

namespace A192252.P8667487845820675136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) - A000045 n) * (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192252.P8667487845820675136

/-! ## A192252.P3731090935057223010

`∑[A005442(n)-A005443(n)]`
-/

namespace A192252.P3731090935057223010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005442 n - A005443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192252.P3731090935057223010

/-!
# A192253: 1-sequence of reduction of (n!) by x^2 -> x+1.

The programs for A192253, there is no canonical definition to state claims against.
-/

/-! ## A192253.P15046443547906046114

`∑[n*(a(n-1)+(n-1)*a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A192253.P15046443547906046114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) + ((n : ℤ) - 1) * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192253.P15046443547906046114

/-! ## A192253.P12956788241982757034

`∑[n*(a(n-1)-(a(n-2)-n*a(n-2)))]` with `a(0)=0, a(1)=1`
-/

namespace A192253.P12956788241982757034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - (f1 (n - 2) - (n : ℤ) * f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192253.P12956788241982757034

/-! ## A192253.P3807271737580347171

`∑[A005443(n)]`
-/

namespace A192253.P3807271737580347171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192253.P3807271737580347171

/-! ## A192253.P3213907745958742067

`∑[n!*A000045(n)]`
-/

namespace A192253.P3213907745958742067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192253.P3213907745958742067

/-! ## A192253.P16714552368293667512

`∑[abs(n!*A236191(n))]`
-/

namespace A192253.P16714552368293667512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) * A236191 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192253.P16714552368293667512

/-! ## A192253.P16415106500263810378

`∑[n!*A212804(n+1)]`
-/

namespace A192253.P16415106500263810378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192253.P16415106500263810378

/-! ## A192253.P4513741492205243900

`∑[A000045(n)*A000142(n)]`
-/

namespace A192253.P4513741492205243900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192253.P4513741492205243900

/-! ## A192253.P6861706965621444164

`∑[A000045(n)*∏[A028310(n)]]`
-/

namespace A192253.P6861706965621444164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192253.P6861706965621444164

/-! ## A192253.P11203420642434362338

`∑[A000045(n)*∏[n+3-A157532(n+1)]]`
-/

namespace A192253.P11203420642434362338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A157532 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192253.P11203420642434362338

/-!
# A192254: 0-sequence of reduction of (n^2) by x^2 -> x+1.

The programs for A192254, the canonical program `A192254.P12313021086416489678` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192254 has offset 1).

The definition of A192254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192254.P735425813430187162

`∑[(n+1)²*Δ[round(ϕ^n/sqrt(5))]]`
-/

namespace A192254.P735425813430187162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192254.P735425813430187162

namespace A192254

/-- `∑[(n+1)²*Δ[round(ϕ^n/sqrt(5))]]` -/
def P735425813430187162.Spec : Prop :=
  ∀ n, P735425813430187162.a n = A192254 (n + 1)

end A192254

/-! ## A192254.P12313021086416489678

`a(n-1)+(n+1)²*A000045(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192254

/-- `a(n-1)+(n+1)²*A000045(n-1)` -/
def P12313021086416489678.Spec : Prop :=
  ∀ n, P12313021086416489678.a n = A192254 (n + 1)

theorem P12313021086416489678.correct : P12313021086416489678.Spec := by
  intro n
  simp only [A192254, Nat.add_sub_cancel]

end A192254

/-! ## A192254.P4058812556331566494

`A192299(n+1)+A122491(n+1)`
-/

namespace A192254.P4058812556331566494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192299 (n + 1) + A122491 (n + 1)

end

end A192254.P4058812556331566494

namespace A192254

/-- `A192299(n+1)+A122491(n+1)` -/
def P4058812556331566494.Spec : Prop :=
  ∀ n, P4058812556331566494.a n = A192254 (n + 1)

end A192254

/-! ## A192254.P15400579251694161067

`∑[floor(A212804(n)*A229154(3*(n+1))/3)]+1`
-/

namespace A192254.P15400579251694161067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212804 n * A229154 (3 * (n + 1)) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A192254.P15400579251694161067

namespace A192254

/-- `∑[floor(A212804(n)*A229154(3*(n+1))/3)]+1` -/
def P15400579251694161067.Spec : Prop :=
  ∀ n, P15400579251694161067.a n = A192254 (n + 1)

end A192254

/-!
# A192255: 1-sequence of reduction of (n^2) by x^2 -> x+1.

The programs for A192255, the canonical program `A192255.P15495661104029478180` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192255 has offset 1).

The definition of A192255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192255.P4364999399818500883

`∑[(n+1)²*round(ϕ^n/sqrt(5))]`
-/

namespace A192255.P4364999399818500883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192255.P4364999399818500883

namespace A192255

/-- `∑[(n+1)²*round(ϕ^n/sqrt(5))]` -/
def P4364999399818500883.Spec : Prop :=
  ∀ n, P4364999399818500883.a n = A192255 (n + 1)

end A192255

/-! ## A192255.P10592557404867954995

`A192142(n+1)+A014286(n)`
-/

namespace A192255.P10592557404867954995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192142 (n + 1) + A014286 n

end

end A192255.P10592557404867954995

namespace A192255

/-- `A192142(n+1)+A014286(n)` -/
def P10592557404867954995.Spec : Prop :=
  ∀ n, P10592557404867954995.a n = A192255 (n + 1)

end A192255

/-! ## A192255.P15495661104029478180

`∑[(A157726(n)-3)*(n+1)²]*A001511(2*n+5)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A192255

/-- `∑[(A157726(n)-3)*(n+1)²]*A001511(2*n+5)` -/
def P15495661104029478180.Spec : Prop :=
  ∀ n, P15495661104029478180.a n = A192255 (n + 1)

theorem P15495661104029478180.correct : P15495661104029478180.Spec := by
  intro n
  simp only [A192255, Nat.add_sub_cancel]

end A192255

/-! ## A192255.P13248743146430118458

`A117152(n+1)+A000045(n)*A000217(n+1)`
-/

namespace A192255.P13248743146430118458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117152 (n + 1) + A000045 n * A000217 (n + 1)

end

end A192255.P13248743146430118458

namespace A192255

/-- `A117152(n+1)+A000045(n)*A000217(n+1)` -/
def P13248743146430118458.Spec : Prop :=
  ∀ n, P13248743146430118458.a n = A192255 (n + 1)

end A192255

/-! ## A192255.P1796401464746331156

`(A192245(n+1)+A192146(n+1))/2`
-/

namespace A192255.P1796401464746331156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192245 (n + 1) + A192146 (n + 1) : ℚ) / 2

end

end A192255.P1796401464746331156

namespace A192255

/-- `(A192245(n+1)+A192146(n+1))/2` -/
def P1796401464746331156.Spec : Prop :=
  ∀ n, P1796401464746331156.a n = (A192255 (n + 1) : ℚ)

theorem P1796401464746331156.correct : P1796401464746331156.Spec := by
  intro n
  simp only [A192255, Nat.add_sub_cancel, A192255.P1796401464746331156.a, A192255.P15495661104029478180.f1, A192255.P15495661104029478180.a, A001511, A001511.P17146462531039486101.a, A157726, A157726.P9748439790048040918.a, A192146, A192146.P11104704368216114941.a, A192245, A192245.P7575187329844493871.f2, A192245.P7575187329844493871.f1, A192245.P7575187329844493871.a, A001611, A001611.P2764665205649475385.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192255

/-!
# A192256: 0-sequence of reduction of (n^3) by x^2 -> x+1.

The programs for A192256, the canonical program `A192256.P1968022842526090405` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192256 has offset 1).

The definition of A192256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 442 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192256.P6334298628093387667

`∑[Δ[∑[n]²]*A212804(n)]`
-/

namespace A192256.P6334298628093387667
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192256.P6334298628093387667

namespace A192256

/-- `∑[Δ[∑[n]²]*A212804(n)]` -/
def P6334298628093387667.Spec : Prop :=
  ∀ n, P6334298628093387667.a n = A192256 (n + 1)

end A192256

/-! ## A192256.P1968022842526090405

`∑[(n+1)²*A006490(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192256

/-- `∑[(n+1)²*A006490(n+1)]` -/
def P1968022842526090405.Spec : Prop :=
  ∀ n, P1968022842526090405.a n = A192256 (n + 1)

theorem P1968022842526090405.correct : P1968022842526090405.Spec := by
  intro n
  simp only [A192256, Nat.add_sub_cancel]

end A192256

/-! ## A192256.P667465317016765556

`∑[(n+1)^3*Δ[A000045(n)]]`
-/

namespace A192256.P667465317016765556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192256.P667465317016765556

namespace A192256

/-- `∑[(n+1)^3*Δ[A000045(n)]]` -/
def P667465317016765556.Spec : Prop :=
  ∀ n, P667465317016765556.a n = A192256 (n + 1)

end A192256

/-! ## A192256.P5232239731990187219

`∑[(n+1)^3*A000045(abs(1-n))]`
-/

namespace A192256.P5232239731990187219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192256.P5232239731990187219

namespace A192256

/-- `∑[(n+1)^3*A000045(abs(1-n))]` -/
def P5232239731990187219.Spec : Prop :=
  ∀ n, P5232239731990187219.a n = A192256 (n + 1)

end A192256

/-! ## A192256.P6121112114919745624

`∑[Δ[A000045(n)]*A000578(n+1)]`
-/

namespace A192256.P6121112114919745624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192256.P6121112114919745624

namespace A192256

/-- `∑[Δ[A000045(n)]*A000578(n+1)]` -/
def P6121112114919745624.Spec : Prop :=
  ∀ n, P6121112114919745624.a n = A192256 (n + 1)

end A192256

/-!
# A192257: 1-sequence of reduction of (n^3) by x^2 -> x+1.

The programs for A192257, the canonical program `A192257.P6952243731285704318` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192257 has offset 1).

The definition of A192257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 441 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192257.P2881578816379132992

`∑[(n+1)^3*round(ϕ^n/sqrt(5))]`
-/

namespace A192257.P2881578816379132992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192257.P2881578816379132992

namespace A192257

/-- `∑[(n+1)^3*round(ϕ^n/sqrt(5))]` -/
def P2881578816379132992.Spec : Prop :=
  ∀ n, P2881578816379132992.a n = A192257 (n + 1)

end A192257

/-! ## A192257.P6952243731285704318

`abs(∑[(A157725(n)-2)*(n+1)^3])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192257

/-- `abs(∑[(A157725(n)-2)*(n+1)^3])` -/
def P6952243731285704318.Spec : Prop :=
  ∀ n, P6952243731285704318.a n = A192257 (n + 1)

theorem P6952243731285704318.correct : P6952243731285704318.Spec := by
  intro n
  simp only [A192257, Nat.add_sub_cancel]

end A192257

/-! ## A192257.P2856025053583769721

`A014682(∑[A000045(n)*A033431(n+1)])`
-/

namespace A192257.P2856025053583769721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A033431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192257.P2856025053583769721

namespace A192257

/-- `A014682(∑[A000045(n)*A033431(n+1)])` -/
def P2856025053583769721.Spec : Prop :=
  ∀ n, P2856025053583769721.a n = A192257 (n + 1)

end A192257

/-!
# A192258: Number of n X n symmetric binary matrices with each element either the sum mod 2 of its horizontal neighbors or the sum mod 2 of its vertical neighbors.

The programs for A192258, there is no canonical definition to state claims against.
-/

/-! ## A192258.P2934203169131902438

`A097882(∑[8*a(n-1)-a(n-2)])` with `a(0)=3, a(1)=1`
-/

namespace A192258.P2934203169131902438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  8 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192258.P2934203169131902438

/-! ## A192258.P10394653099687589341

`A337567(A111586(n))`
-/

namespace A192258.P10394653099687589341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337567 (A111586 n).toNat

end

end A192258.P10394653099687589341

/-!
# A192259: G.f. satisfies: A(x) = Sum_{n>=0} x^n * (1 + A(x))^n * A(x)^(n*(n+1)/2).

The programs for A192259, there is no canonical definition to state claims against.
-/

/-! ## A192259.P48874053089126950

`A263342(A017948(n))`
-/

namespace A192259.P48874053089126950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263342 (A017948 n).toNat

end

end A192259.P48874053089126950

/-!
# A192261: Numbers k such that 4k+1 is a palindromic prime.

The programs for A192261, there is no canonical definition to state claims against.
-/

/-! ## A192261.P3341228725697441062

`floor(A002385(eq[1, A002385(n+1)%4]+1)/4)`
-/

namespace A192261.P3341228725697441062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002385 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 4⌋

end

end A192261.P3341228725697441062

/-! ## A192261.P14177967907714934170

`floor(A081220(n+1)/4)`
-/

namespace A192261.P14177967907714934170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081220 (n + 1) : ℚ) / 4⌋

end

end A192261.P14177967907714934170

/-! ## A192261.P7225358520509409614

`round(A081220(Δ[n²]-n)/4)`
-/

namespace A192261.P7225358520509409614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A081220 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 4)

end

end A192261.P7225358520509409614

/-! ## A192261.P16363113734966944512

`or(round(A081220(n+1)/4), A000007(n))`
-/

namespace A192261.P16363113734966944512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A081220 (n + 1) : ℚ) / 4)) (A000007 n)

end

end A192261.P16363113734966944512

/-! ## A192261.P4544239368524058987

`gcd(A000010(n+2)%2, round(A081220(n+1)/4))`
-/

namespace A192261.P4544239368524058987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A000010 (n + 2)) 2) (SequenceMachineLib.roundAway ((A081220 (n + 1) : ℚ) / 4))

end

end A192261.P4544239368524058987

/-! ## A192261.P9911804256919500371

`(A081220(n+1)-A007318(∑[n]))/4`
-/

namespace A192261.P9911804256919500371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081220 (n + 1) - A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A192261.P9911804256919500371

/-! ## A192261.P17483193272689831447

`(A260196(A044809(n+1))+A081220(n+1))/4`
-/

namespace A192261.P17483193272689831447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260196 (A044809 (n + 1)).toNat + A081220 (n + 1) : ℚ) / 4

end

end A192261.P17483193272689831447

/-! ## A192261.P6937939550591118162

`A003958(p?[A081220(n+1)])/4`
-/

namespace A192261.P6937939550591118162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081220 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 4

end

end A192261.P6937939550591118162

/-! ## A192261.P13225633289491529516

`A000010(A000010(A081220(n+1))+1)/4`
-/

namespace A192261.P13225633289491529516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000010 (A081220 (n + 1)).toNat + 1).toNat : ℚ) / 4

end

end A192261.P13225633289491529516

/-!
# A192263: a(n) = abs(a(n-1) - 3*a(n-2)) with a(1)=a(2)=1.

The programs for A192263, the canonical program `A192263.P1002425022273296396` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192263 has offset 1).

The definition of A192263 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(a(n-1)-3*a(n-2))` (program `A192263.P1002425022273296396`, by `A192263.P1002425022273296396.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A192263.P1002425022273296396

`abs(a(n-1)-3*a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192263

/-- `abs(a(n-1)-3*a(n-2))` -/
def P1002425022273296396.Spec : Prop :=
  ∀ n, P1002425022273296396.a n = A192263 (n + 1)

theorem P1002425022273296396.correct : P1002425022273296396.Spec := by
  intro n
  simp only [A192263, Nat.add_sub_cancel]

end A192263

/-! ## A192263.P1479641398036567938

`abs(lcm(3, a(n-2))-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A192263.P1479641398036567938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |(Int.lcm 3 (a (n - 2)) : ℤ) - a (n - 1)|

end

end A192263.P1479641398036567938

namespace A192263

/-- `abs(lcm(3, a(n-2))-a(n-1))` -/
def P1479641398036567938.Spec : Prop :=
  ∀ n, P1479641398036567938.a n = A192263 (n + 1)

end A192263

/-! ## A192263.P18338750034409208281

`gcd(3*a(n-2)-a(n-1), n%-1)` with `a(0)=1, a(1)=1`
-/

namespace A192263.P18338750034409208281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.gcd ((3 * a (n - 2) : ℤ) - (a (n - 1) : ℤ)) (Int.tmod (n : ℤ) (-1))

end

end A192263.P18338750034409208281

namespace A192263

/-- `gcd(3*a(n-2)-a(n-1), n%-1)` -/
def P18338750034409208281.Spec : Prop :=
  ∀ n, (P18338750034409208281.a n : ℤ) = A192263 (n + 1)

end A192263

/-! ## A192263.P1780208261710981853

`gcd(a(n-1)-3*a(n-2), 2-4/2)` with `a(0)=1, a(1)=1`
-/

namespace A192263.P1780208261710981853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.gcd ((a (n - 1) : ℤ) - (3 * a (n - 2) : ℤ)) (SequenceMachineLib.roundAway (2 - (4 : ℚ) / 2))

end

end A192263.P1780208261710981853

namespace A192263

/-- `gcd(a(n-1)-3*a(n-2), 2-4/2)` -/
def P1780208261710981853.Spec : Prop :=
  ∀ n, (P1780208261710981853.a n : ℤ) = A192263 (n + 1)

end A192263

/-! ## A192263.P972040214358789716

`(3*a(n-2)-a(n-1))²^(1/2)` with `a(0)=1, a(1)=1`
-/

namespace A192263.P972040214358789716
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((3 * a (n - 2) - a (n - 1)) ^ 2) ^ ((1 : ℚ) / 2 : ℝ)

end

end A192263.P972040214358789716

namespace A192263

/-- `(3*a(n-2)-a(n-1))²^(1/2)` -/
def P972040214358789716.Spec : Prop :=
  ∀ n, P972040214358789716.a n = (A192263 (n + 1) : ℝ)

end A192263

/-!
# A192264: a(1)=1, a(2)=2; a(n) = abs((n-1)*a(n-1) - n*a(n-2)), n > 2.

The programs for A192264, the canonical program `A192264.P1384517801726646663` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192264 has offset 1).

The definition of A192264 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(n*a(n-1)-(n+1)*a(n-2))` (program `A192264.P1384517801726646663`, by `A192264.P1384517801726646663.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A192264.P1384517801726646663

`abs(n*a(n-1)-(n+1)*a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192264

/-- `abs(n*a(n-1)-(n+1)*a(n-2))` -/
def P1384517801726646663.Spec : Prop :=
  ∀ n, P1384517801726646663.a n = A192264 (n + 1)

theorem P1384517801726646663.correct : P1384517801726646663.Spec := by
  intro n
  simp only [A192264, Nat.add_sub_cancel]

end A192264

/-! ## A192264.P13089743808201615717

`n*a(n-1)-(n+1)*a(n-2)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192264.P13089743808201615717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 5] fun n a =>
  (n : ℤ) * a (n - 1) - (n + 1 : ℤ) * a (n - 2)

end

end A192264.P13089743808201615717

namespace A192264

/-- `n*a(n-1)-(n+1)*a(n-2)` -/
def P13089743808201615717.Spec : Prop :=
  ∀ n, P13089743808201615717.a n = A192264 (n + 1)

end A192264

/-! ## A192264.P15197482767303244796

`A188003(A188003(a(n-1)))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A192264.P15197482767303244796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  A188003 (A188003 (a (n - 1)).toNat).toNat

end

end A192264.P15197482767303244796

namespace A192264

/-- `A188003(A188003(a(n-1)))` -/
def P15197482767303244796.Spec : Prop :=
  ∀ n, P15197482767303244796.a n = A192264 (n + 1)

end A192264

/-!
# A192267: Anti-deficient numbers.

The programs for A192267, there is no canonical definition to state claims against.
-/

/-! ## A192267.P1335127627585661871

`lt[A066417(abs(1-n)+1), n]`
-/

namespace A192267.P1335127627585661871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A192267.P1335127627585661871

/-! ## A192267.P14479933473515833568

`lt[A066417(n+1), n+1]+1`
-/

namespace A192267.P14479933473515833568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A192267.P14479933473515833568

/-! ## A192267.P18438176606018148495

`lt[A058838(n+1), n+2]+1`
-/

namespace A192267.P18438176606018148495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058838 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A192267.P18438176606018148495

/-! ## A192267.P3581796235056010544

`lt[A058838(A028310(n)), n+1]`
-/

namespace A192267.P3581796235056010544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058838 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A192267.P3581796235056010544

/-! ## A192267.P14041095358082310551

`lt[0, n-A066417(A233583(n+1))]`
-/

namespace A192267.P14041095358082310551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A066417 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A192267.P14041095358082310551

/-!
# A192268: Anti-abundant numbers.

The programs for A192268, there is no canonical definition to state claims against.
-/

/-! ## A192268.P15533593415640422024

`record[(n+7)%A066417(n+7)]`
-/

namespace A192268.P15533593415640422024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 7 : ℤ) (A066417 (n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192268.P15533593415640422024

/-! ## A192268.P7721175333696441437

`lt[n+1, A066417(n+1)]+1`
-/

namespace A192268.P7721175333696441437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A192268.P7721175333696441437

/-! ## A192268.P711358230170410687

`lt[n, A066417(A028310(n))]`
-/

namespace A192268.P711358230170410687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A192268.P711358230170410687

/-! ## A192268.P17817457224156265441

`A020725(lt[n+1, A066417(n+1)])`
-/

namespace A192268.P17817457224156265441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A192268.P17817457224156265441

/-! ## A192268.P12963530751925753783

`lt[n, A066417(A233583(n+1))]`
-/

namespace A192268.P12963530751925753783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A192268.P12963530751925753783

/-!
# A192269: Super anti-abundant numbers.

The programs for A192269, there is no canonical definition to state claims against.
-/

/-! ## A192269.P16395809132185577594

`eq[char[A309940(n+1)], A309896(2*n+1)]`
-/

namespace A192269.P16395809132185577594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309940 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309896 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A192269.P16395809132185577594

/-! ## A192269.P15121748893284788591

`lt[A222679(2*n+3)+1, A005105(n+1)]`
-/

namespace A192269.P15121748893284788591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (2 * n + 3) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005105 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192269.P15121748893284788591

/-! ## A192269.P8525491860936809187

`lt[A222573(2*n+3), ∑[A193820(2*(n+1))]]`
-/

namespace A192269.P8525491860936809187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (2 * n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192269.P8525491860936809187

/-!
# A192270: Pseudo anti-perfect numbers.

The programs for A192270, there is no canonical definition to state claims against.
-/

/-! ## A192270.P7387077349851632036

`∪[A192285(A037336(n+1)), A192273(n+1)]`
-/

namespace A192270.P7387077349851632036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192285 (A037336 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192270.P7387077349851632036

/-! ## A192270.P611029565120712193

`∪[A192285(A037443(n+1)), A192273(n+1)]`
-/

namespace A192270.P611029565120712193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192285 (A037443 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192270.P611029565120712193

/-! ## A192270.P317988306779773696

`∪[A192285(A029965(n+2)), A192273(n+2)]`
-/

namespace A192270.P317988306779773696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192285 (A029965 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192273 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192270.P317988306779773696

/-!
# A192271: Anti-weird numbers.

The programs for A192271, there is no canonical definition to state claims against.
-/

/-! ## A192271.P13061054960465793973

`∩[A192268(n+1), comp[A192270(n+1)]]`
-/

namespace A192271.P13061054960465793973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192268 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192270 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A192271.P13061054960465793973

/-!
# A192272: Harmonic anti-divisor numbers.

The programs for A192272, there is no canonical definition to state claims against.
-/

/-! ## A192272.P3455408726793316116

`A305932(3*n+2)+A117153(A100462(2*n+1))`
-/

namespace A192272.P3455408726793316116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305932 (3 * n + 2) + A117153 (A100462 (2 * n + 1)).toNat

end

end A192272.P3455408726793316116

/-!
# A192273: Zumkeller numbers using anti-divisors (or anti-Zumkeller numbers).

The programs for A192273, there is no canonical definition to state claims against.
-/

/-! ## A192273.P15944529446866250893

`A192270(n+3)-A010054(A254716(n))`
-/

namespace A192273.P15944529446866250893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192270 (n + 3) - A010054 (A254716 n).toNat

end

end A192273.P15944529446866250893

/-! ## A192273.P17684134650136665069

`A192270(n+3)-A000007(A171676(n+1))`
-/

namespace A192273.P17684134650136665069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192270 (n + 3) - A000007 (A171676 (n + 1)).toNat

end

end A192273.P17684134650136665069

/-!
# A192274: Numbers which are both Zumkeller numbers and anti-Zumkeller numbers.

The programs for A192274, there is no canonical definition to state claims against.
-/

/-! ## A192274.P16729743394289514814

`∩[A083207(n+1), A192273(n+1)]`
-/

namespace A192274.P16729743394289514814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192274.P16729743394289514814

/-! ## A192274.P4134706119914277378

`∩[A175582(n+1)-A175591(n+1), A192273(n+1)]`
-/

namespace A192274.P4134706119914277378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175582 (n + 1) - A175591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192274.P4134706119914277378

/-! ## A192274.P4748917388458029348

`∩[lt[A103977(n+1), 1]+1, A192273(n+1)]`
-/

namespace A192274.P4748917388458029348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A192274.P4748917388458029348

/-! ## A192274.P14695843794885730875

`filter[A192273(n+1), A179527(#)]`
-/

namespace A192274.P14695843794885730875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A192274.P14695843794885730875

/-! ## A192274.P4427195589781585180

`∩[eq[1, A179527(n+1)]+1, A192273(n+1)]`
-/

namespace A192274.P4427195589781585180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A192274.P4427195589781585180

/-!
# A192276: Numbers k such that the number of anti-divisors of k divides k.

The programs for A192276, there is no canonical definition to state claims against.
-/

/-! ## A192276.P7672871050713846621

`eq[n+1, lcm(n+1, A066272(n+1))]+1`
-/

namespace A192276.P7672871050713846621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A066272 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A192276.P7672871050713846621

/-!
# A192277: Impossible values for both sum of proper divisors of k and sum of anti-divisors of k.

The programs for A192277, there is no canonical definition to state claims against.
-/

/-! ## A192277.P10198850879057835668

`∩[A005114(n+1), A074898(n+1)]`
-/

namespace A192277.P10198850879057835668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192277.P10198850879057835668

/-!
# A192278: Numbers k whose product of their anti-divisors divides the product of their divisors.

The programs for A192278, there is no canonical definition to state claims against.
-/

/-! ## A192278.P4560730348965026822

`eq[A261351(n+1), A285704(n+1)]`
-/

namespace A192278.P4560730348965026822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192278.P4560730348965026822

/-! ## A192278.P8740566299601576986

`∩[A040040(n+1), A008458(A004277(n))]`
-/

namespace A192278.P8740566299601576986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A004277 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192278.P8740566299601576986

/-! ## A192278.P15951989885908397510

`∩[A168497(n+1), A008458(A004277(n))]`
-/

namespace A192278.P15951989885908397510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A004277 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192278.P15951989885908397510

/-! ## A192278.P2826935550842694235

`∩[A168497(n+2), A008458(A004275(n))]`
-/

namespace A192278.P2826935550842694235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A004275 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192278.P2826935550842694235

/-! ## A192278.P8905733082478794381

`∩[A040040(n+1), A004277(A004277(n)+2)]`
-/

namespace A192278.P8905733082478794381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A004277 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192278.P8905733082478794381

/-!
# A192280: Characteristic function of numbers that are the product of consecutive primes.

The programs for A192280, the canonical program `A192280.P15229704503069968207` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192280 has offset 1).

The definition of A192280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192280.P15229704503069968207

`char[A073485(n+1)-1]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A192280

/-- `char[A073485(n+1)-1]` -/
def P15229704503069968207.Spec : Prop :=
  ∀ n, (P15229704503069968207.a n : ℤ) = A192280 (n + 1)

theorem P15229704503069968207.correct : P15229704503069968207.Spec := by
  intro n
  simp only [A192280, Nat.add_sub_cancel]

end A192280

/-! ## A192280.P13648820423468262370

`C(A053590(n+1), n+1)`
-/

namespace A192280.P13648820423468262370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053590 (n + 1)).toNat (n + 1)

end

end A192280.P13648820423468262370

namespace A192280

/-- `C(A053590(n+1), n+1)` -/
def P13648820423468262370.Spec : Prop :=
  ∀ n, (P13648820423468262370.a n : ℤ) = A192280 (n + 1)

end A192280

/-! ## A192280.P13269069750076067224

`A080339(A319626(n+1))`
-/

namespace A192280.P13269069750076067224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A319626 (n + 1)).toNat

end

end A192280.P13269069750076067224

namespace A192280

/-- `A080339(A319626(n+1))` -/
def P13269069750076067224.Spec : Prop :=
  ∀ n, P13269069750076067224.a n = A192280 (n + 1)

end A192280

/-! ## A192280.P10585640098990625726

`A080339(A348990(n+1))`
-/

namespace A192280.P10585640098990625726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A348990 (n + 1)).toNat

end

end A192280.P10585640098990625726

namespace A192280

/-- `A080339(A348990(n+1))` -/
def P10585640098990625726.Spec : Prop :=
  ∀ n, P10585640098990625726.a n = A192280 (n + 1)

end A192280

/-! ## A192280.P8310458986096702867

`A389449(A089247(n+1))`
-/

namespace A192280.P8310458986096702867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389449 (A089247 (n + 1)).toNat

end

end A192280.P8310458986096702867

namespace A192280

/-- `A389449(A089247(n+1))` -/
def P8310458986096702867.Spec : Prop :=
  ∀ n, P8310458986096702867.a n = A192280 (n + 1)

end A192280

/-! ## A192280.P15265412384628303461

`and(A002033(n), A137794(n+1))`
-/

namespace A192280.P15265412384628303461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002033 n) (A137794 (n + 1))

end

end A192280.P15265412384628303461

namespace A192280

/-- `and(A002033(n), A137794(n+1))` -/
def P15265412384628303461.Spec : Prop :=
  ∀ n, P15265412384628303461.a n = A192280 (n + 1)

end A192280

/-! ## A192280.P1597543683752980210

`and(A137794(n+1), A195588(n))`
-/

namespace A192280.P1597543683752980210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137794 (n + 1)) (A195588 n)

end

end A192280.P1597543683752980210

namespace A192280

/-- `and(A137794(n+1), A195588(n))` -/
def P1597543683752980210.Spec : Prop :=
  ∀ n, P1597543683752980210.a n = A192280 (n + 1)

end A192280

/-! ## A192280.P13434579746014622934

`and(A002033(n), A389449(n+1))`
-/

namespace A192280.P13434579746014622934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002033 n) (A389449 (n + 1))

end

end A192280.P13434579746014622934

namespace A192280

/-- `and(A002033(n), A389449(n+1))` -/
def P13434579746014622934.Spec : Prop :=
  ∀ n, P13434579746014622934.a n = A192280 (n + 1)

end A192280

/-! ## A192280.P13249959285194551522

`and(A195588(n), A389449(n+1))`
-/

namespace A192280.P13249959285194551522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195588 n) (A389449 (n + 1))

end

end A192280.P13249959285194551522

namespace A192280

/-- `and(A195588(n), A389449(n+1))` -/
def P13249959285194551522.Spec : Prop :=
  ∀ n, P13249959285194551522.a n = A192280 (n + 1)

end A192280

/-! ## A192280.P15985194380349171204

`A000007(1-A053590(n+1)+n)`
-/

namespace A192280.P15985194380349171204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (1 - A053590 (n + 1) + (n : ℤ)).toNat

end

end A192280.P15985194380349171204

namespace A192280

/-- `A000007(1-A053590(n+1)+n)` -/
def P15985194380349171204.Spec : Prop :=
  ∀ n, P15985194380349171204.a n = A192280 (n + 1)

end A192280

/-! ## A192280.P7460021818894239928

`A008966(n+1)*A137794(n+1)`
-/

namespace A192280.P7460021818894239928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A137794 (n + 1)

end

end A192280.P7460021818894239928

namespace A192280

/-- `A008966(n+1)*A137794(n+1)` -/
def P7460021818894239928.Spec : Prop :=
  ∀ n, P7460021818894239928.a n = A192280 (n + 1)

end A192280

/-! ## A192280.P15061791033532838082

`A008966(n+1)*A389449(n+1)`
-/

namespace A192280.P15061791033532838082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A389449 (n + 1)

end

end A192280.P15061791033532838082

namespace A192280

/-- `A008966(n+1)*A389449(n+1)` -/
def P15061791033532838082.Spec : Prop :=
  ∀ n, P15061791033532838082.a n = A192280 (n + 1)

end A192280

/-! ## A192280.P9411494122996502612

`A323154(n+1)*A389449(n+1)`
-/

namespace A192280.P9411494122996502612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323154 (n + 1) * A389449 (n + 1)

end

end A192280.P9411494122996502612

namespace A192280

/-- `A323154(n+1)*A389449(n+1)` -/
def P9411494122996502612.Spec : Prop :=
  ∀ n, P9411494122996502612.a n = A192280 (n + 1)

end A192280

/-! ## A192280.P13850588098928322380

`A353519(n+1)*A389449(n+1)`
-/

namespace A192280.P13850588098928322380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353519 (n + 1) * A389449 (n + 1)

end

end A192280.P13850588098928322380

namespace A192280

/-- `A353519(n+1)*A389449(n+1)` -/
def P13850588098928322380.Spec : Prop :=
  ∀ n, P13850588098928322380.a n = A192280 (n + 1)

end A192280

/-! ## A192280.P2652293119979237399

`A353559(n+1)*A389449(n+1)`
-/

namespace A192280.P2652293119979237399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353559 (n + 1) * A389449 (n + 1)

end

end A192280.P2652293119979237399

namespace A192280

/-- `A353559(n+1)*A389449(n+1)` -/
def P2652293119979237399.Spec : Prop :=
  ∀ n, P2652293119979237399.a n = A192280 (n + 1)

end A192280

/-! ## A192280.P3171252834407602480

`A353627(n+1)*A389449(n+1)`
-/

namespace A192280.P3171252834407602480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n + 1) * A389449 (n + 1)

end

end A192280.P3171252834407602480

namespace A192280

/-- `A353627(n+1)*A389449(n+1)` -/
def P3171252834407602480.Spec : Prop :=
  ∀ n, P3171252834407602480.a n = A192280 (n + 1)

end A192280

/-! ## A192280.P12501789506405641452

`A353628(n+1)*A389449(n+1)`
-/

namespace A192280.P12501789506405641452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353628 (n + 1) * A389449 (n + 1)

end

end A192280.P12501789506405641452

namespace A192280

/-- `A353628(n+1)*A389449(n+1)` -/
def P12501789506405641452.Spec : Prop :=
  ∀ n, P12501789506405641452.a n = A192280 (n + 1)

end A192280

/-! ## A192280.P7729437804226997115

`A359834(n+1)*A389449(n+1)`
-/

namespace A192280.P7729437804226997115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359834 (n + 1) * A389449 (n + 1)

end

end A192280.P7729437804226997115

namespace A192280

/-- `A359834(n+1)*A389449(n+1)` -/
def P7729437804226997115.Spec : Prop :=
  ∀ n, P7729437804226997115.a n = A192280 (n + 1)

end A192280

/-! ## A192280.P5492665357271574111

`A080339((n+1)/A322361(n+1))`
-/

namespace A192280.P5492665357271574111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A322361 (n + 1) : ℚ))).toNat

end

end A192280.P5492665357271574111

namespace A192280

/-- `A080339((n+1)/A322361(n+1))` -/
def P5492665357271574111.Spec : Prop :=
  ∀ n, P5492665357271574111.a n = A192280 (n + 1)

end A192280

/-! ## A192280.P4994772820471475074

`C(A006530(n+1), A319626(n+1))`
-/

namespace A192280.P4994772820471475074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat (A319626 (n + 1)).toNat

end

end A192280.P4994772820471475074

namespace A192280

/-- `C(A006530(n+1), A319626(n+1))` -/
def P4994772820471475074.Spec : Prop :=
  ∀ n, (P4994772820471475074.a n : ℤ) = A192280 (n + 1)

end A192280

/-!
# A192281: Prime numbers whose anti-divisors are all prime numbers.

The programs for A192281, there is no canonical definition to state claims against.
-/

/-! ## A192281.P1465766299526897008

`p?[A242965(n+2)]`
-/

namespace A192281.P1465766299526897008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192281.P1465766299526897008

/-! ## A192281.P11552950401101418349

`A110300(n+5)/2`
-/

namespace A192281.P11552950401101418349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110300 (n + 5) : ℚ) / 2

end

end A192281.P11552950401101418349

/-! ## A192281.P13943658536111311024

`A006530(A110300(n+5))`
-/

namespace A192281.P13943658536111311024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A110300 (n + 5)).toNat

end

end A192281.P13943658536111311024

/-! ## A192281.P7021298925493686189

`record[A000265(A110300(n+3))]`
-/

namespace A192281.P7021298925493686189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A110300 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192281.P7021298925493686189

/-! ## A192281.P11799903111267404815

`record[A006530(A242965(n+3))]`
-/

namespace A192281.P11799903111267404815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A242965 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192281.P11799903111267404815

/-! ## A192281.P4597259563836568941

`A008619(A110300(n+5)-1)`
-/

namespace A192281.P4597259563836568941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A110300 (n + 5) - 1).toNat

end

end A192281.P4597259563836568941

/-! ## A192281.P997906745905991682

`filter[A242965(n+1), A171387(#)]`
-/

namespace A192281.P997906745905991682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A192281.P997906745905991682

/-! ## A192281.P13794615481247086201

`filter[A242965(n+1), A266611(#)]`
-/

namespace A192281.P13794615481247086201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A192281.P13794615481247086201

/-! ## A192281.P4033297251656468750

`filter[A242965(n+1), A320106(#)]`
-/

namespace A192281.P4033297251656468750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A192281.P4033297251656468750

/-! ## A192281.P14415649885141674381

`filter[A242965(n+1), A323511(#)]`
-/

namespace A192281.P14415649885141674381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A192281.P14415649885141674381

/-!
# A192282: Numbers k such that k and k+1 have same sum of anti-divisors.

The programs for A192282, there is no canonical definition to state claims against.
-/

/-! ## A192282.P10066459073407272507

`A057354(A000032(n+1)*A014602(2*n+1))`
-/

namespace A192282.P10066459073407272507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A000032 (n + 1) * A014602 (2 * n + 1)).toNat

end

end A192282.P10066459073407272507

/-!
# A192284: Numbers k such that the average of the anti-divisors of k is an integer.

The programs for A192284, there is no canonical definition to state claims against.
-/

/-! ## A192284.P8251184392367932538

`A123064(n+2)+A000035(A182818(n+1))`
-/

namespace A192284.P8251184392367932538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123064 (n + 2) + A000035 (A182818 (n + 1)).toNat

end

end A192284.P8251184392367932538

/-!
# A192286: Antiharmonic numbers using anti-divisors: numbers n such that sigma*(n) divides sigma*_2(n), where sigma*(n) is the sum of anti-divisors of n and sigma*_2(n) the sum of squares of anti-divisors of n.

The programs for A192286, there is no canonical definition to state claims against.
-/

/-! ## A192286.P16930210042914904742

`A242028(A082743(n))`
-/

namespace A192286.P16930210042914904742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242028 (A082743 n).toNat

end

end A192286.P16930210042914904742

/-! ## A192286.P11224879507099577790

`A242028(A381225(n))`
-/

namespace A192286.P11224879507099577790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242028 (A381225 n).toNat

end

end A192286.P11224879507099577790

/-! ## A192286.P6087649888631841969

`A242028(A001104(n+1))`
-/

namespace A192286.P6087649888631841969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242028 (A001104 (n + 1)).toNat

end

end A192286.P6087649888631841969

/-! ## A192286.P73857799428711939

`A242028(A002998(n+1))`
-/

namespace A192286.P73857799428711939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242028 (A002998 (n + 1)).toNat

end

end A192286.P73857799428711939

/-! ## A192286.P2094899687515725482

`A242028(A023106(n+1))`
-/

namespace A192286.P2094899687515725482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242028 (A023106 (n + 1)).toNat

end

end A192286.P2094899687515725482

/-!
# A192287: Quasi-antiperfect numbers.

The programs for A192287, there is no canonical definition to state claims against.
-/

/-! ## A192287.P3417707704059170889

`eq[n+1, A066417(A028310(n))]`
-/

namespace A192287.P3417707704059170889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192287.P3417707704059170889

/-!
# A192288: Almost anti-perfect numbers.

The programs for A192288, there is no canonical definition to state claims against.
-/

/-! ## A192288.P14643558035114495499

`eq[n+1, A066417(n+2)]+2`
-/

namespace A192288.P14643558035114495499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A192288.P14643558035114495499

/-! ## A192288.P5733105940581086662

`eq[A058838(n+1), A087156(n+1)]+1`
-/

namespace A192288.P5733105940581086662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A192288.P5733105940581086662

/-! ## A192288.P17870345691867602587

`A020725(eq[A028310(n), A066417(n+1)])`
-/

namespace A192288.P17870345691867602587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A192288.P17870345691867602587

/-! ## A192288.P1429066796713241384

`A065475(eq[A028310(n), A066417(n+1)])`
-/

namespace A192288.P1429066796713241384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A192288.P1429066796713241384

/-! ## A192288.P6943680812391025008

`A020725(eq[A058838(n+1), A087156(n+1)])`
-/

namespace A192288.P6943680812391025008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A192288.P6943680812391025008

/-!
# A192289: Number of Langford pairings of order n, as n runs through the positive numbers congruent to -1 or 0 mod 4.

The programs for A192289, there is no canonical definition to state claims against.
-/

/-! ## A192289.P7977667800838408394

`A268536(n+1)/2`
-/

namespace A192289.P7977667800838408394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268536 (n + 1) : ℚ) / 2

end

end A192289.P7977667800838408394

/-! ## A192289.P14082577394268546791

`A014552(A014601(n+1))`
-/

namespace A192289.P14082577394268546791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014552 (A014601 (n + 1)).toNat

end

end A192289.P14082577394268546791

/-! ## A192289.P2734576355586496165

`A014552(A154708(n+1))`
-/

namespace A192289.P2734576355586496165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014552 (A154708 (n + 1)).toNat

end

end A192289.P2734576355586496165

/-! ## A192289.P13812513091614171731

`A014552(A042948(n)+3)`
-/

namespace A192289.P13812513091614171731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014552 (A042948 n + 3).toNat

end

end A192289.P13812513091614171731

/-! ## A192289.P13658258018618604616

`A176127(record[A092486(n)])/2`
-/

namespace A192289.P13658258018618604616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176127 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A192289.P13658258018618604616

/-!
# A192291: Couple of numbers a, b for which sigma*(a)=b and sigma(b)-b=a, where sigma*(n) is the sum of the anti-divisors of n.

The programs for A192291, there is no canonical definition to state claims against.
-/

/-! ## A192291.P6303813762106837484

`A058320(A117161(n+3))+2`
-/

namespace A192291.P6303813762106837484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058320 (A117161 (n + 3)).toNat + 2

end

end A192291.P6303813762106837484

/-!
# A192294: Numbers n such that Sum(1/d*_n)>Sum(1/d*_m) for all m

The programs for A192294, there is no canonical definition to state claims against.
-/

/-! ## A192294.P15147223717722371817

`p?[A003056(∑[A023495(n)])]`
-/

namespace A192294.P15147223717722371817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023495 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192294.P15147223717722371817

/-! ## A192294.P16976222864368271617

`p?[A003056(∑[A297667(n+1)])]`
-/

namespace A192294.P16976222864368271617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297667 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192294.P16976222864368271617

/-! ## A192294.P10572937168522333111

`p?[∑[A220104(A220221(n+1))]]`
-/

namespace A192294.P10572937168522333111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 (A220221 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192294.P10572937168522333111

/-!
# A192296: Number of ternary words of length 2n obtained by self-shuffling.

The programs for A192296, there is no canonical definition to state claims against.
-/

/-! ## A192296.P13234527167350523606

`A003602(3^n+7^n)`
-/

namespace A192296.P13234527167350523606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (3 ^ n + 7 ^ n)

end

end A192296.P13234527167350523606

/-!
# A192299: 0-sequence of reduction of (n^2+n+1) by x^2 -> x+1.

The programs for A192299, the canonical program `A192299.P12572402272600155914` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192299 has offset 1).

The definition of A192299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192299.P17367836011712739019

`∑[(∑[2*n]+1)*A212804(n)]`
-/

namespace A192299.P17367836011712739019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192299.P17367836011712739019

namespace A192299

/-- `∑[(∑[2*n]+1)*A212804(n)]` -/
def P17367836011712739019.Spec : Prop :=
  ∀ n, P17367836011712739019.a n = A192299 (n + 1)

end A192299

/-! ## A192299.P12572402272600155914

`∑[(∑[2*n]+1)*Δ[A000045(n)]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192299

/-- `∑[(∑[2*n]+1)*Δ[A000045(n)]]` -/
def P12572402272600155914.Spec : Prop :=
  ∀ n, P12572402272600155914.a n = A192299 (n + 1)

theorem P12572402272600155914.correct : P12572402272600155914.Spec := by
  intro n
  simp only [A192299, Nat.add_sub_cancel]

end A192299

/-! ## A192299.P1230544095275662561

`∑[(∑[2*n]+1)*A000045(abs(1-n))]`
-/

namespace A192299.P1230544095275662561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) * A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192299.P1230544095275662561

namespace A192299

/-- `∑[(∑[2*n]+1)*A000045(abs(1-n))]` -/
def P1230544095275662561.Spec : Prop :=
  ∀ n, P1230544095275662561.a n = A192299 (n + 1)

end A192299

/-! ## A192299.P10088958088495831480

`∑[Δ[A000045(n)]*A002061(n+1)]`
-/

namespace A192299.P10088958088495831480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A002061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192299.P10088958088495831480

namespace A192299

/-- `∑[Δ[A000045(n)]*A002061(n+1)]` -/
def P10088958088495831480.Spec : Prop :=
  ∀ n, P10088958088495831480.a n = A192299 (n + 1)

end A192299

/-! ## A192299.P9220152105803562453

`∑[A000045(abs(1-n))*A002061(n+1)]`
-/

namespace A192299.P9220152105803562453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat * A002061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192299.P9220152105803562453

namespace A192299

/-- `∑[A000045(abs(1-n))*A002061(n+1)]` -/
def P9220152105803562453.Spec : Prop :=
  ∀ n, P9220152105803562453.a n = A192299 (n + 1)

end A192299

