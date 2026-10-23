import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A382000: E.g.f. A(x) satisfies A(x) = 1 + x*exp(2*x)*A(x)^5.

The programs for A382000, there is no canonical definition to state claims against.
-/

/-! ## A382000.P1261830304869174073

`A095116(A000364(n))-1`
-/

namespace A382000.P1261830304869174073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (A000364 n).toNat - 1

end

end A382000.P1261830304869174073

/-!
# A382014: Partial sums of A377225.

The programs for A382014, there is no canonical definition to state claims against.
-/

/-! ## A382014.P7155482692683535801

`∑[A377225(n)]`
-/

namespace A382014.P7155482692683535801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382014.P7155482692683535801

/-!
# A382015: E.g.f. A(x) satisfies A(x) = exp(x*B(x*A(x))), where B(x) = 1 + x*B(x)^3 is the g.f. of A001764.

The programs for A382015, there is no canonical definition to state claims against.
-/

/-! ## A382015.P2463010255154028292

`A248219(∑[∑{p}[n+1, gcd(n, #)]]!)`
-/

namespace A382015.P2463010255154028292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248219 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A382015.P2463010255154028292

/-!
# A382016: E.g.f. A(x) satisfies A(x) = exp(x*B(x*A(x))), where B(x) = 1 + x*B(x)^4 is the g.f. of A002293.

The programs for A382016, there is no canonical definition to state claims against.
-/

/-! ## A382016.P14599932237771698156

`A305419(∑[A383562(n)])`
-/

namespace A382016.P14599932237771698156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305419 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A382016.P14599932237771698156

/-!
# A382017: Record positions in A277847.

The programs for A382017, there is no canonical definition to state claims against.
-/

/-! ## A382017.P3600003630401041413

`record[A192420(A165413(n+1)+n)]`
-/

namespace A382017.P3600003630401041413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192420 (A165413 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382017.P3600003630401041413

/-! ## A382017.P6219758609346849268

`record[A192420(n+1)/A093178(n)]`
-/

namespace A382017.P6219758609346849268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192420 (n + 1) : ℚ) / (A093178 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382017.P6219758609346849268

/-! ## A382017.P643409212178269166

`A002384(2*n+1)-A335106(A002378(n))`
-/

namespace A382017.P643409212178269166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (2 * n + 1) - A335106 (A002378 n).toNat

end

end A382017.P643409212178269166

/-!
# A382018: Number of orbits under the action of the permutation group S(n) on the nonsingular n X n matrices over GF(2).

The programs for A382018, there is no canonical definition to state claims against.
-/

/-! ## A382018.P6371644006905493042

`n*A291280(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A382018.P6371644006905493042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * A291280 (a (n - 1)).toNat

end

end A382018.P6371644006905493042

/-!
# A382019: Number of zeros (counted with multiplicity) inside and on the unit circle of the polynomial P(n,z) = Sum_{k=0..n} T(n,k)*z^k where T(n,k) = A214292(n,k) is the first differences of rows in Pascal's triangle.

The programs for A382019, there is no canonical definition to state claims against.
-/

/-! ## A382019.P2217885085148333587

`2*n-lt[and(n+1, -n), 5]`
-/

namespace A382019.P2217885085148333587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A382019.P2217885085148333587

/-! ## A382019.P18002766690463701404

`a(n-6)+4` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6`
-/

namespace A382019.P18002766690463701404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 5, 6] fun n a =>
  a (n - 6) + 4

end

end A382019.P18002766690463701404

/-! ## A382019.P15339632382904769717

`((n-1)%6+2*n+1)/3`
-/

namespace A382019.P15339632382904769717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n : ℤ) - 1) 6 + (2 * n + 1 : ℤ) : ℚ) / 3

end

end A382019.P15339632382904769717

/-! ## A382019.P9500698613464869171

`2*n-lt[xor(n+1, n-1), 7]`
-/

namespace A382019.P9500698613464869171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A382019.P9500698613464869171

/-! ## A382019.P7314201981135235917

`A341311(n)+A158388(n)`
-/

namespace A382019.P7314201981135235917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341311 n + A158388 n

end

end A382019.P7314201981135235917

/-! ## A382019.P8211721811424470895

`A341311(n)-A153881(n+1)`
-/

namespace A382019.P8211721811424470895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341311 n - A153881 (n + 1)

end

end A382019.P8211721811424470895

/-! ## A382019.P15522203010605262301

`A163300(n+1)-A047563(n+1)`
-/

namespace A382019.P15522203010605262301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1) - A047563 (n + 1)

end

end A382019.P15522203010605262301

/-! ## A382019.P9495466940154878921

`n+2-A008611(A018837(2*n+1))`
-/

namespace A382019.P9495466940154878921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A008611 (A018837 (2 * n + 1)).toNat

end

end A382019.P9495466940154878921

/-!
# A382024: Maximum number of transversals in a Brown's diagonal Latin square of order 2n.

The programs for A382024, there is no canonical definition to state claims against.
-/

/-! ## A382024.P4027415015498303014

`A106189(n)*A203536(n+1)`
-/

namespace A382024.P4027415015498303014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106189 n * A203536 (n + 1)

end

end A382024.P4027415015498303014

/-!
# A382027: Primes whose decimal digits are in ascending order and also parity alternating.

The programs for A382027, there is no canonical definition to state claims against.
-/

/-! ## A382027.P4796316963691204725

`∩[A009993(n+1), A323578(n+1)]`
-/

namespace A382027.P4796316963691204725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382027.P4796316963691204725

/-! ## A382027.P14030800419626351187

`∩[A028864(n+1), A323578(n+1)]`
-/

namespace A382027.P14030800419626351187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382027.P14030800419626351187

/-! ## A382027.P10945555202993892325

`∩[A052015(n+1), A323578(n+1)]`
-/

namespace A382027.P10945555202993892325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382027.P10945555202993892325

/-! ## A382027.P6602309491970344704

`∩[A190218(n+1), A323578(n+1)]`
-/

namespace A382027.P6602309491970344704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382027.P6602309491970344704

/-! ## A382027.P6694630629767133187

`∩[A009993(n+1), A030144(n+1)]`
-/

namespace A382027.P6694630629767133187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382027.P6694630629767133187

/-!
# A382029: E.g.f. A(x) satisfies A(x) = exp(x*C(x*A(x)^2)), where C(x) = 1 + x*C(x)^2 is the g.f. of A000108.

The programs for A382029, there is no canonical definition to state claims against.
-/

/-! ## A382029.P14050001740694625463

`A004439(A243195(n))`
-/

namespace A382029.P14050001740694625463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004439 (A243195 n).toNat

end

end A382029.P14050001740694625463

/-!
# A382030: E.g.f. A(x) satisfies A(x) = exp(x*B(x*A(x)^2)), where B(x) = 1 + x*B(x)^3 is the g.f. of A001764.

The programs for A382030, there is no canonical definition to state claims against.
-/

/-! ## A382030.P11813724133107321607

`A321229(∑[∑[val(n+1, 2)]])`
-/

namespace A382030.P11813724133107321607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321229 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382030.P11813724133107321607

/-!
# A382031: E.g.f. A(x) satisfies A(x) = exp(x*B(x*A(x)^2)), where B(x) = 1 + x*B(x)^4 is the g.f. of A002293.

The programs for A382031, there is no canonical definition to state claims against.
-/

/-! ## A382031.P7316085573887146457

`A364498(n^∑{p}[n+1, gcd(n, #)])`
-/

namespace A382031.P7316085573887146457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364498 (n ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p))

end

end A382031.P7316085573887146457

/-!
# A382032: E.g.f. A(x) satisfies A(x) = exp(x*C(x*A(x))^2), where C(x) = 1 + x*C(x)^2 is the g.f. of A000108.

The programs for A382032, there is no canonical definition to state claims against.
-/

/-! ## A382032.P6235925499501776693

`A112509(A101052(n))`
-/

namespace A382032.P6235925499501776693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112509 (A101052 n).toNat

end

end A382032.P6235925499501776693

/-!
# A382033: E.g.f. A(x) satisfies A(x) = exp(x*B(x*A(x))^3), where B(x) = 1 + x*B(x)^3 is the g.f. of A001764.

The programs for A382033, there is no canonical definition to state claims against.
-/

/-! ## A382033.P16805252155061752971

`A260682(A007785(n))`
-/

namespace A382033.P16805252155061752971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (A007785 n).toNat

end

end A382033.P16805252155061752971

/-!
# A382034: E.g.f. A(x) satisfies A(x) = exp(x*B(x*A(x))^4), where B(x) = 1 + x*B(x)^4 is the g.f. of A002293.

The programs for A382034, there is no canonical definition to state claims against.
-/

/-! ## A382034.P6698602652952710678

`A271980(A347014(n)+A347003(n))`
-/

namespace A382034.P6698602652952710678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271980 (A347014 n + A347003 n).toNat

end

end A382034.P6698602652952710678

/-!
# A382036: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-x * C(x)^2) ), where C(x) = 1 + x*C(x)^2 is the g.f. of A000108.

The programs for A382036, there is no canonical definition to state claims against.
-/

/-! ## A382036.P2889926744713494497

`A064989(A305139(n)+A001006(n))`
-/

namespace A382036.P2889926744713494497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A305139 n + A001006 n).toNat

end

end A382036.P2889926744713494497

/-!
# A382037: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-x * B(x)^3) ), where B(x) = 1 + x*B(x)^3 is the g.f. of A001764.

The programs for A382037, there is no canonical definition to state claims against.
-/

/-! ## A382037.P920580906750150783

`A365016(n)-A316402(A060223(n))`
-/

namespace A382037.P920580906750150783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365016 n - A316402 (A060223 n).toNat

end

end A382037.P920580906750150783

/-!
# A382039: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - x*exp(3*x)) ).

The programs for A382039, there is no canonical definition to state claims against.
-/

/-! ## A382039.P12228655793099739417

`A337520(A095054(n+2))-A182114(2*n)`
-/

namespace A382039.P12228655793099739417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337520 (A095054 (n + 2)).toNat - A182114 (2 * n)

end

end A382039.P12228655793099739417

/-!
# A382042: E.g.f. A(x) satisfies A(x) = exp(x*C(x*A(x)^3)), where C(x) = 1 + x*C(x)^2 is the g.f. of A000108.

The programs for A382042, there is no canonical definition to state claims against.
-/

/-! ## A382042.P5785795337914451981

`A229511(A113130(n))`
-/

namespace A382042.P5785795337914451981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229511 (A113130 n).toNat

end

end A382042.P5785795337914451981

/-!
# A382043: E.g.f. A(x) satisfies A(x) = 1 + x*A(x)^3*exp(2*x*A(x)).

The programs for A382043, there is no canonical definition to state claims against.
-/

/-! ## A382043.P9633668548960047254

`A130714(A028345(n))`
-/

namespace A382043.P9633668548960047254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130714 (A028345 n).toNat

end

end A382043.P9633668548960047254

/-!
# A382044: E.g.f. A(x) satisfies A(x) = 1 + x*A(x)^4*exp(2*x*A(x)).

The programs for A382044, there is no canonical definition to state claims against.
-/

/-! ## A382044.P8575966557622493708

`A000010(A111286(n)*A309799(n+1))`
-/

namespace A382044.P8575966557622493708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A111286 n * A309799 (n + 1)).toNat

end

end A382044.P8575966557622493708

/-!
# A382048: Starting from n and decrement, d = 1 we repeatedly subtract d until we reach a multiple of d+1. Whereupon we set d := d+1 and continue the process. a(n) is the total number of subtractions required to reduce n to 0.

The programs for A382048, there is no canonical definition to state claims against.
-/

/-! ## A382048.P9751227771734471237

`A346699(A288814(n+4))`
-/

namespace A382048.P9751227771734471237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346699 (A288814 (n + 4)).toNat

end

end A382048.P9751227771734471237

/-! ## A382048.P1186308439413282775

`A003849(A052952(n))+A000720(n+1)`
-/

namespace A382048.P1186308439413282775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A052952 n).toNat + A000720 (n + 1)

end

end A382048.P1186308439413282775

/-! ## A382048.P7380430145166048747

`A063524(A087114(n))+A000720(n+1)`
-/

namespace A382048.P7380430145166048747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A087114 n).toNat + A000720 (n + 1)

end

end A382048.P7380430145166048747

/-! ## A382048.P15859965155083718521

`A121373(A147600(n))+A000720(n+1)`
-/

namespace A382048.P15859965155083718521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A147600 n).toNat + A000720 (n + 1)

end

end A382048.P15859965155083718521

/-! ## A382048.P15144469744712056702

`A010052(A333599(n))+A000720(n+1)`
-/

namespace A382048.P15144469744712056702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A333599 n).toNat + A000720 (n + 1)

end

end A382048.P15144469744712056702

/-!
# A382049: Numbers k such that k +- 2 and k +- 3 are all semiprimes.

The programs for A382049, there is no canonical definition to state claims against.
-/

/-! ## A382049.P4795844688783313864

`3*A014574(A194427(n+1))`
-/

namespace A382049.P4795844688783313864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014574 (A194427 (n + 1)).toNat

end

end A382049.P4795844688783313864

/-! ## A382049.P17752019314924296324

`∩[A008486(A014574(n+1)), A054735(n+1)]`
-/

namespace A382049.P17752019314924296324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A014574 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382049.P17752019314924296324

/-! ## A382049.P5606809494994467334

`∩[A054735(n+1), A324706(A108605(n+1))]`
-/

namespace A382049.P5606809494994467334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324706 (A108605 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382049.P5606809494994467334

/-! ## A382049.P8005968994706138132

`∩[A082496(n+1)+1, A324706(A108605(n+1))]`
-/

namespace A382049.P8005968994706138132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324706 (A108605 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382049.P8005968994706138132

/-! ## A382049.P6746698442109963247

`∩[A324706(A108605(n+1)), A176810(n+1)-2]`
-/

namespace A382049.P6746698442109963247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324706 (A108605 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176810 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382049.P6746698442109963247

/-!
# A382051: Primes prime(k) such that k*log(k)/prime(k) < (k-1)*log(k-1)/prime(k-1).

The programs for A382051, there is no canonical definition to state claims against.
-/

/-! ## A382051.P9888902548919682595

`A362017(n+5)+A000122(A162652(n+1))`
-/

namespace A382051.P9888902548919682595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362017 (n + 5) + A000122 (A162652 (n + 1)).toNat

end

end A382051.P9888902548919682595

/-! ## A382051.P15502491092251875879

`A286516(A208673(n)*A362017(n+5))`
-/

namespace A382051.P15502491092251875879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286516 (A208673 n * A362017 (n + 5)).toNat

end

end A382051.P15502491092251875879

/-! ## A382051.P3407624378734801088

`A362017(n+5)+A000122(A361996(3*n+5))`
-/

namespace A382051.P3407624378734801088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362017 (n + 5) + A000122 (A361996 (3 * n + 5)).toNat

end

end A382051.P3407624378734801088

/-! ## A382051.P13133656521541872618

`A361823(A382083(n+2))`
-/

namespace A382051.P13133656521541872618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361823 (A382083 (n + 2)).toNat

end

end A382051.P13133656521541872618

/-! ## A382051.P11463255494964760012

`∩[A331417(n), A361823(n+1)]`
-/

namespace A382051.P11463255494964760012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382051.P11463255494964760012

/-!
# A382052: Primes prime(k) such that k*log(k)/prime(k) > (k-1)*log(k-1)/prime(k-1).

The programs for A382052, there is no canonical definition to state claims against.
-/

/-! ## A382052.P8618707860698810630

`eq[A182256(n), A192227(n+1)]`
-/

namespace A382052.P8618707860698810630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382052.P8618707860698810630

/-! ## A382052.P2078499730507500428

`or(A000002(A002426(n)), A023229(n+1))`
-/

namespace A382052.P2078499730507500428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000002 (A002426 n).toNat) (A023229 (n + 1))

end

end A382052.P2078499730507500428

/-! ## A382052.P11020321937961721834

`or(A023229(n+1), A124010(A001333(n+3)))`
-/

namespace A382052.P11020321937961721834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023229 (n + 1)) (A124010 (A001333 (n + 3)).toNat)

end

end A382052.P11020321937961721834

/-! ## A382052.P7523816287687170103

`A064728(lt[A010815(n), A137513(3*n+5)])`
-/

namespace A382052.P7523816287687170103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137513 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A382052.P7523816287687170103

/-! ## A382052.P12245585940608124392

`or(A023229(n+1), A326674(A090835(2*n+1)))`
-/

namespace A382052.P12245585940608124392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023229 (n + 1)) (A326674 (A090835 (2 * n + 1)).toNat)

end

end A382052.P12245585940608124392

/-!
# A382053: Numbers k such that Fibonacci(k) has a Fibonacci number of 1's in its binary representation.

The programs for A382053, there is no canonical definition to state claims against.
-/

/-! ## A382053.P10029819013296015828

`eq[1, A010056(A011373(n))]`
-/

namespace A382053.P10029819013296015828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A011373 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382053.P10029819013296015828

/-!
# A382054: a(n) = least positive integer m such that when m*(m+1) is written in base n, it does not contain the digit n-1 and contains every single digit from 0 to n-2 exactly once, or 0 if no such number exists.

The programs for A382054, there is no canonical definition to state claims against.
-/

/-! ## A382054.P4111337979114833711

`A333654(A163932(n+2))`
-/

namespace A382054.P4111337979114833711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333654 (A163932 (n + 2)).toNat

end

end A382054.P4111337979114833711

/-! ## A382054.P2433751927777986910

`A077183(A045520(n+1)^A089839(n))`
-/

namespace A382054.P2433751927777986910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077183 (SequenceMachineLib.roundAway ((A045520 (n + 1) : ℚ) ^ (A089839 n : ℤ))).toNat

end

end A382054.P2433751927777986910

/-!
# A382055: a(n) = least positive integer m such that when m*(m+1) is written in base n, it does not contain the digits 0 or n-1 and contains every single digit from 1 to n-2 exactly once, or 0 if no such number exists.

The programs for A382055, there is no canonical definition to state claims against.
-/

/-! ## A382055.P2328503522544276621

`A003963(A260006(n+4))%A001700(n)`
-/

namespace A382055.P2328503522544276621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (A260006 (n + 4)).toNat) (A001700 n)

end

end A382055.P2328503522544276621

/-!
# A382056: Remove every copy of the largest digit of n; if any digits remain, return the number formed by arranging the remaining digits in nondecreasing order. If no digits remain, return 0.

The programs for A382056, there is no canonical definition to state claims against.
-/

/-! ## A382056.P8402278100976434457

`A382102(n+1)+A007814(ceil((n-1/2)²))`
-/

namespace A382056.P8402278100976434457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382102 (n + 1) + A007814 ⌈((n : ℚ) - (1 : ℚ) / 2) ^ 2⌉.toNat

end

end A382056.P8402278100976434457

/-! ## A382056.P8428904159436351028

`A054054(A056544(n+1)-A054055(n+1))`
-/

namespace A382056.P8428904159436351028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A056544 (n + 1) - A054055 (n + 1)).toNat

end

end A382056.P8428904159436351028

/-! ## A382056.P3413704886100202253

`A073730(n+1)%A054055(A056544(n+1))`
-/

namespace A382056.P3413704886100202253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073730 (n + 1)) (A054055 (A056544 (n + 1)).toNat)

end

end A382056.P3413704886100202253

/-! ## A382056.P17500774728689892512

`A382102(n+1)%∑[A104616(n+1)]`
-/

namespace A382056.P17500774728689892512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382102 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382056.P17500774728689892512

/-! ## A382056.P9410884948696167462

`A284254(A139501(3*n+5))*A382102(n+1)`
-/

namespace A382056.P9410884948696167462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284254 (A139501 (3 * n + 5)).toNat * A382102 (n + 1)

end

end A382056.P9410884948696167462

/-! ## A382056.P12770150039261578341

`∑{d}[n+1, A145459(#-1)*A382102((n+1)/#)]`
-/

namespace A382056.P12770150039261578341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A145459 (d - 1) * A382102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382056.P12770150039261578341

/-! ## A382056.P942111750707140286

`and(A121263(n), A382102(n+1))`
-/

namespace A382056.P942111750707140286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A121263 (n + 10)) (A382102 (n + 1))

end

end A382056.P942111750707140286

/-! ## A382056.P15767795980519397110

`and(A261322(n+1), A382102(n+1))`
-/

namespace A382056.P15767795980519397110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A261322 (n + 1)) (A382102 (n + 1))

end

end A382056.P15767795980519397110

/-! ## A382056.P17882577135385329109

`A088470(n+1)%9`
-/

namespace A382056.P17882577135385329109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088470 (n + 1)) 9

end

end A382056.P17882577135385329109

/-! ## A382056.P5947793459170337023

`A004184(A088470(n+1))`
-/

namespace A382056.P5947793459170337023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A088470 (n + 1)).toNat

end

end A382056.P5947793459170337023

/-!
# A382058: E.g.f. A(x) satisfies A(x) = exp(x*B(x*A(x))^2), where B(x) = 1 + x*B(x)^3 is the g.f. of A001764.

The programs for A382058, there is no canonical definition to state claims against.
-/

/-! ## A382058.P10122802422225295276

`A066255((2*n+1)^(n-1))`
-/

namespace A382058.P10122802422225295276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066255 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A382058.P10122802422225295276

/-!
# A382059: E.g.f. A(x) satisfies A(x) = exp(x*B(x*A(x))^3), where B(x) = 1 + x*B(x)^4 is the g.f. of A002293.

The programs for A382059, there is no canonical definition to state claims against.
-/

/-! ## A382059.P9230000105678363717

`A005117(A026636(n²))`
-/

namespace A382059.P9230000105678363717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A026636 (n ^ 2)).toNat

end

end A382059.P9230000105678363717

/-!
# A382060: Number of rooted ordered trees with n nodes such that the degree of each node is less than or equal to its depth plus one.

The programs for A382060, there is no canonical definition to state claims against.
-/

/-! ## A382060.P9107747415483507054

`A177849(A018039(n))`
-/

namespace A382060.P9107747415483507054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A018039 n).toNat

end

end A382060.P9107747415483507054

/-! ## A382060.P15642070737027409689

`A177849(A018040(n))`
-/

namespace A382060.P15642070737027409689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A018040 n).toNat

end

end A382060.P15642070737027409689

/-! ## A382060.P14828061988378533100

`A177849(A018041(n))`
-/

namespace A382060.P14828061988378533100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A018041 n).toNat

end

end A382060.P14828061988378533100

/-! ## A382060.P3859731364533860225

`A172152(A274882(n))`
-/

namespace A382060.P3859731364533860225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172152 (A274882 n).toNat

end

end A382060.P3859731364533860225

/-! ## A382060.P11047407914569158710

`A381434(A068031(n))`
-/

namespace A382060.P11047407914569158710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381434 (A068031 n).toNat

end

end A382060.P11047407914569158710

/-!
# A382061: Numbers whose number of divisors is divisible by their number of unitary divisors.

The programs for A382061, there is no canonical definition to state claims against.
-/

/-! ## A382061.P15215171903029951118

`lt[A348271(n+1), A349059(A071364(n+1))]+1`
-/

namespace A382061.P15215171903029951118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349059 (A071364 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A382061.P15215171903029951118

/-! ## A382061.P6156620570901597837

`eq[A134824(A005250(n+1)), A376139(n+1)]+1`
-/

namespace A382061.P6156620570901597837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A005250 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376139 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A382061.P6156620570901597837

/-!
# A382062: Powerful numbers whose number of divisors is divisible by their number of unitary divisors.

The programs for A382062, there is no canonical definition to state claims against.
-/

/-! ## A382062.P16143866080225557653

`∩[A001694(n+1), A382061(n+1)]`
-/

namespace A382062.P16143866080225557653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382062.P16143866080225557653

/-! ## A382062.P6598300904176840781

`∩[A377819(n+1), A382061(n+1)]`
-/

namespace A382062.P6598300904176840781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382062.P6598300904176840781

/-! ## A382062.P9454376271927146628

`∏{e}[A088862(n+1), A370786(#)]`
-/

namespace A382062.P9454376271927146628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A370786 (Nat.factorization (f1 n).natAbs p)

end

end A382062.P9454376271927146628

/-! ## A382062.P4484271239204346313

`∩[A060476(n+1), A366142(n+1)]`
-/

namespace A382062.P4484271239204346313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382062.P4484271239204346313

/-!
# A382067: Lexicographically earliest sequence of distinct positive integers such that the product of two consecutive terms is always a factorial number.

The programs for A382067, there is no canonical definition to state claims against.
-/

/-! ## A382067.P10209942975437632023

`(n+1)*A000027(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A382067.P10209942975437632023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1 : ℤ) * A000027 (a (n - 2)).toNat

end

end A382067.P10209942975437632023

/-! ## A382067.P3624019829542652572

`(n+1)*a(A046660(2^(n-1)))` with `a(0)=1`
-/

namespace A382067.P3624019829542652572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A046660 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat).toNat

end

end A382067.P3624019829542652572

/-! ## A382067.P4299063221975783959

`(n+1-val(n, A075978(n)))*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A382067.P4299063221975783959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n + 1 : ℤ) - (SequenceMachineLib.valuation n (A075978 n).toNat : ℤ)) * a (n - 2)

end

end A382067.P4299063221975783959

/-! ## A382067.P6583774672817074079

`(n+1)%A107722(3*n+1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A382067.P6583774672817074079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.tmod (n + 1 : ℤ) (A107722 (3 * n + 1)) * a (n - 2)

end

end A382067.P6583774672817074079

/-! ## A382067.P4947399265849749396

`record[A135876(A061579(n))]`
-/

namespace A382067.P4947399265849749396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135876 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382067.P4947399265849749396

/-!
# A382069: Row sums of the triangular array in A199408.

The programs for A382069, the canonical program `A382069.P7816256565130258159` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382069 has offset 1).

The definition of A382069 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382069.P7816256565130258159

`A000217(n+1)+A000290(n+1)-A018804(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A382069

/-- `A000217(n+1)+A000290(n+1)-A018804(n+1)` -/
def P7816256565130258159.Spec : Prop :=
  ∀ n, P7816256565130258159.a n = A382069 (n + 1)

theorem P7816256565130258159.correct : P7816256565130258159.Spec := by
  intro n
  simp only [A382069, Nat.add_sub_cancel]

end A382069

/-! ## A382069.P8655288634907300571

`A344485(n+1)+∑[n+1]`
-/

namespace A382069.P8655288634907300571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344485 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A382069.P8655288634907300571

namespace A382069

/-- `A344485(n+1)+∑[n+1]` -/
def P8655288634907300571.Spec : Prop :=
  ∀ n, P8655288634907300571.a n = A382069 (n + 1)

end A382069

/-! ## A382069.P17013958468882213117

`∑[A016777(n)]-A006579(n+1)`
-/

namespace A382069.P17013958468882213117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006579 (n + 1)

end

end A382069.P17013958468882213117

namespace A382069

/-- `∑[A016777(n)]-A006579(n+1)` -/
def P17013958468882213117.Spec : Prop :=
  ∀ n, P17013958468882213117.a n = A382069 (n + 1)

end A382069

/-! ## A382069.P11919975680725842261

`∑[A016789(n)]-A018804(n+1)`
-/

namespace A382069.P11919975680725842261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A018804 (n + 1)

end

end A382069.P11919975680725842261

namespace A382069

/-- `∑[A016789(n)]-A018804(n+1)` -/
def P11919975680725842261.Spec : Prop :=
  ∀ n, P11919975680725842261.a n = A382069 (n + 1)

end A382069

/-! ## A382069.P15373791067167741993

`A000326(n+1)-A006579(n+1)`
-/

namespace A382069.P15373791067167741993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) - A006579 (n + 1)

end

end A382069.P15373791067167741993

namespace A382069

/-- `A000326(n+1)-A006579(n+1)` -/
def P15373791067167741993.Spec : Prop :=
  ∀ n, P15373791067167741993.a n = A382069 (n + 1)

end A382069

/-! ## A382069.P11662221886410587155

`A049841(n+1)-A049829(n+1)`
-/

namespace A382069.P11662221886410587155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049841 (n + 1) - A049829 (n + 1)

end

end A382069.P11662221886410587155

namespace A382069

/-- `A049841(n+1)-A049829(n+1)` -/
def P11662221886410587155.Spec : Prop :=
  ∀ n, P11662221886410587155.a n = A382069 (n + 1)

end A382069

/-! ## A382069.P5554461186569874696

`A005448(n+1)-A268631(n+1)`
-/

namespace A382069.P5554461186569874696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1) - A268631 (n + 1)

end

end A382069.P5554461186569874696

namespace A382069

/-- `A005448(n+1)-A268631(n+1)` -/
def P5554461186569874696.Spec : Prop :=
  ∀ n, P5554461186569874696.a n = A382069 (n + 1)

end A382069

/-! ## A382069.P8722610127094089896

`∑{d}[n+1, A000010(#)*A059028((n+1)/#)]`
-/

namespace A382069.P8722610127094089896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A059028 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382069.P8722610127094089896

namespace A382069

/-- `∑{d}[n+1, A000010(#)*A059028((n+1)/#)]` -/
def P8722610127094089896.Spec : Prop :=
  ∀ n, P8722610127094089896.a n = A382069 (n + 1)

end A382069

/-! ## A382069.P15699938918663710845

`A064276(n)-A178881(n+1)`
-/

namespace A382069.P15699938918663710845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064276 n - A178881 (n + 1)

end

end A382069.P15699938918663710845

namespace A382069

/-- `A064276(n)-A178881(n+1)` -/
def P15699938918663710845.Spec : Prop :=
  ∀ n, P15699938918663710845.a n = A382069 (n + 1)

end A382069

/-!
# A382070: Semiperimeter of the unique primitive Pythagorean triple whose inradius is the n-th prime and whose short leg is an odd number.

The programs for A382070, the canonical program `A382070.P14318405017331208150` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382070 has offset 1).

The definition of A382070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382070.P14318405017331208150

`C(A089241(n+1), 2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A382070

/-- `C(A089241(n+1), 2)` -/
def P14318405017331208150.Spec : Prop :=
  ∀ n, (P14318405017331208150.a n : ℤ) = A382070 (n + 1)

theorem P14318405017331208150.correct : P14318405017331208150.Spec := by
  intro n
  simp only [A382070, Nat.add_sub_cancel]

end A382070

/-! ## A382070.P42190719811081620

`C(A072055(n+1)+1, 2)`
-/

namespace A382070.P42190719811081620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072055 (n + 1) + 1).toNat 2

end

end A382070.P42190719811081620

namespace A382070

/-- `C(A072055(n+1)+1, 2)` -/
def P42190719811081620.Spec : Prop :=
  ∀ n, (P42190719811081620.a n : ℤ) = A382070 (n + 1)

end A382070

/-! ## A382070.P18015035035322754110

`C(A100484(n+1)+2, 2)`
-/

namespace A382070.P18015035035322754110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A100484 (n + 1) + 2).toNat 2

end

end A382070.P18015035035322754110

namespace A382070

/-- `C(A100484(n+1)+2, 2)` -/
def P18015035035322754110.Spec : Prop :=
  ∀ n, (P18015035035322754110.a n : ℤ) = A382070 (n + 1)

end A382070

/-! ## A382070.P3992461342571833513

`C(A129069(n+1)-1, 2)`
-/

namespace A382070.P3992461342571833513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A129069 (n + 1) - 1).toNat 2

end

end A382070.P3992461342571833513

namespace A382070

/-- `C(A129069(n+1)-1, 2)` -/
def P3992461342571833513.Spec : Prop :=
  ∀ n, (P3992461342571833513.a n : ℤ) = A382070 (n + 1)

end A382070

/-! ## A382070.P17757481038399250019

`A110833(n+1)+A036690(n+1)`
-/

namespace A382070.P17757481038399250019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110833 (n + 1) + A036690 (n + 1)

end

end A382070.P17757481038399250019

namespace A382070

/-- `A110833(n+1)+A036690(n+1)` -/
def P17757481038399250019.Spec : Prop :=
  ∀ n, P17757481038399250019.a n = A382070 (n + 1)

end A382070

/-! ## A382070.P12606135223496435986

`A367573(n+1)+A008864(n+1)`
-/

namespace A382070.P12606135223496435986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367573 (n + 1) + A008864 (n + 1)

end

end A382070.P12606135223496435986

namespace A382070

/-- `A367573(n+1)+A008864(n+1)` -/
def P12606135223496435986.Spec : Prop :=
  ∀ n, P12606135223496435986.a n = A382070 (n + 1)

end A382070

/-! ## A382070.P12600843320989600486

`A382097(n+1)-A000040(n+1)`
-/

namespace A382070.P12600843320989600486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382097 (n + 1) - A000040 (n + 1)

end

end A382070.P12600843320989600486

namespace A382070

/-- `A382097(n+1)-A000040(n+1)` -/
def P12600843320989600486.Spec : Prop :=
  ∀ n, P12600843320989600486.a n = A382070 (n + 1)

end A382070

/-! ## A382070.P12124408251202518993

`A008864(n+1)*A072055(n+1)`
-/

namespace A382070.P12124408251202518993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A072055 (n + 1)

end

end A382070.P12124408251202518993

namespace A382070

/-- `A008864(n+1)*A072055(n+1)` -/
def P12124408251202518993.Spec : Prop :=
  ∀ n, P12124408251202518993.a n = A382070 (n + 1)

end A382070

/-! ## A382070.P17614790797136489332

`A098996(n+1)/A000040(n+1)`
-/

namespace A382070.P17614790797136489332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098996 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A382070.P17614790797136489332

namespace A382070

/-- `A098996(n+1)/A000040(n+1)` -/
def P17614790797136489332.Spec : Prop :=
  ∀ n, P17614790797136489332.a n = (A382070 (n + 1) : ℚ)

end A382070

/-! ## A382070.P646486784834741151

`A036690(n+1)+A036690(n+1)+A008864(n+1)`
-/

namespace A382070.P646486784834741151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) + (A036690 (n + 1) + A008864 (n + 1))

end

end A382070.P646486784834741151

namespace A382070

/-- `A036690(n+1)+A036690(n+1)+A008864(n+1)` -/
def P646486784834741151.Spec : Prop :=
  ∀ n, P646486784834741151.a n = A382070 (n + 1)

end A382070

/-! ## A382070.P11910308852190385231

`A060800(n+1)+A060800(n+1)+A006093(n+1)`
-/

namespace A382070.P11910308852190385231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) + (A060800 (n + 1) + A006093 (n + 1))

end

end A382070.P11910308852190385231

namespace A382070

/-- `A060800(n+1)+A060800(n+1)+A006093(n+1)` -/
def P11910308852190385231.Spec : Prop :=
  ∀ n, P11910308852190385231.a n = A382070 (n + 1)

end A382070

/-! ## A382070.P10265653698962510316

`A110833(n+1)+A110833(n+1)-A008864(n+1)`
-/

namespace A382070.P10265653698962510316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110833 (n + 1) + (A110833 (n + 1) - A008864 (n + 1))

end

end A382070.P10265653698962510316

namespace A382070

/-- `A110833(n+1)+A110833(n+1)-A008864(n+1)` -/
def P10265653698962510316.Spec : Prop :=
  ∀ n, P10265653698962510316.a n = A382070 (n + 1)

end A382070

/-! ## A382070.P5109860704962846608

`(A008864(n+1)+A000040(n+1))*A008864(n+1)`
-/

namespace A382070.P5109860704962846608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) + A000040 (n + 1)) * A008864 (n + 1)

end

end A382070.P5109860704962846608

namespace A382070

/-- `(A008864(n+1)+A000040(n+1))*A008864(n+1)` -/
def P5109860704962846608.Spec : Prop :=
  ∀ n, P5109860704962846608.a n = A382070 (n + 1)

end A382070

/-! ## A382070.P17837900301981539144

`(A028815(n+1)+A000040(n+1))*A028815(n+1)`
-/

namespace A382070.P17837900301981539144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028815 (n + 1) + A000040 (n + 1)) * A028815 (n + 1)

end

end A382070.P17837900301981539144

namespace A382070

/-- `(A028815(n+1)+A000040(n+1))*A028815(n+1)` -/
def P17837900301981539144.Spec : Prop :=
  ∀ n, P17837900301981539144.a n = A382070 (n + 1)

end A382070

/-! ## A382070.P4116735642867184268

`A008864(n+1)+A008864(n+1)*A100484(n+1)`
-/

namespace A382070.P4116735642867184268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A008864 (n + 1) * A100484 (n + 1)

end

end A382070.P4116735642867184268

namespace A382070

/-- `A008864(n+1)+A008864(n+1)*A100484(n+1)` -/
def P4116735642867184268.Spec : Prop :=
  ∀ n, P4116735642867184268.a n = A382070 (n + 1)

end A382070

/-! ## A382070.P6015767870461683892

`A028815(n+1)*A089241(n+1)-A028815(n+1)`
-/

namespace A382070.P6015767870461683892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) * A089241 (n + 1) - A028815 (n + 1)

end

end A382070.P6015767870461683892

namespace A382070

/-- `A028815(n+1)*A089241(n+1)-A028815(n+1)` -/
def P6015767870461683892.Spec : Prop :=
  ∀ n, P6015767870461683892.a n = A382070 (n + 1)

end A382070

/-! ## A382070.P405419062730650510

`(A008864(n+1)+A008578(n+2))*A008864(n+1)`
-/

namespace A382070.P405419062730650510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) + A008578 (n + 2)) * A008864 (n + 1)

end

end A382070.P405419062730650510

namespace A382070

/-- `(A008864(n+1)+A008578(n+2))*A008864(n+1)` -/
def P405419062730650510.Spec : Prop :=
  ∀ n, P405419062730650510.a n = A382070 (n + 1)

end A382070

/-! ## A382070.P5201782354395802803

`A000203(A000040(n+1))*A072055(n+1)`
-/

namespace A382070.P5201782354395802803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000040 (n + 1)).toNat * A072055 (n + 1)

end

end A382070.P5201782354395802803

namespace A382070

/-- `A000203(A000040(n+1))*A072055(n+1)` -/
def P5201782354395802803.Spec : Prop :=
  ∀ n, P5201782354395802803.a n = A382070 (n + 1)

end A382070

/-! ## A382070.P10361804172613571654

`A000217(A072055(n+1))`
-/

namespace A382070.P10361804172613571654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A072055 (n + 1)).toNat

end

end A382070.P10361804172613571654

namespace A382070

/-- `A000217(A072055(n+1))` -/
def P10361804172613571654.Spec : Prop :=
  ∀ n, P10361804172613571654.a n = A382070 (n + 1)

end A382070

/-! ## A382070.P10954848094002844016

`A000217(A100484(n+1)+1)`
-/

namespace A382070.P10954848094002844016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A100484 (n + 1) + 1).toNat

end

end A382070.P10954848094002844016

namespace A382070

/-- `A000217(A100484(n+1)+1)` -/
def P10954848094002844016.Spec : Prop :=
  ∀ n, P10954848094002844016.a n = A382070 (n + 1)

end A382070

/-!
# A382073: Semiprimes with sum of digits 4.

The programs for A382073, there is no canonical definition to state claims against.
-/

/-! ## A382073.P5604991727984918145

`∩[A052218(n+1), A118691(n+1)]`
-/

namespace A382073.P5604991727984918145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382073.P5604991727984918145

/-! ## A382073.P5913652434840836764

`∩[A052218(n+1), A244863(n+1)]`
-/

namespace A382073.P5913652434840836764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382073.P5913652434840836764

/-! ## A382073.P578826480733599229

`∩[A028838(n+1), A118688(n+1)]`
-/

namespace A382073.P578826480733599229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382073.P578826480733599229

/-! ## A382073.P5752342963080682796

`∩[A028838(n+1), A118691(n+1)]`
-/

namespace A382073.P5752342963080682796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382073.P5752342963080682796

/-! ## A382073.P17934945648026841060

`∩[A052218(n+1), A118688(n+1)]`
-/

namespace A382073.P17934945648026841060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382073.P17934945648026841060

/-!
# A382074: a(n) is the number of solutions to phi(x) + phi(n-x) = phi(n) where 1 <= x <= floor(n/2).

The programs for A382074, there is no canonical definition to state claims against.
-/

/-! ## A382074.P5864147103512278107

`ceil(A110174(n+1)/2)`
-/

namespace A382074.P5864147103512278107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110174 (n + 1) : ℚ) / 2⌉

end

end A382074.P5864147103512278107

/-! ## A382074.P509576971059745248

`A110654(A110174(n+1))`
-/

namespace A382074.P509576971059745248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110174 (n + 1)).toNat

end

end A382074.P509576971059745248

/-! ## A382074.P4383140126639165231

`A004526(A110174(n+1)+1)`
-/

namespace A382074.P4383140126639165231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A110174 (n + 1) + 1).toNat

end

end A382074.P4383140126639165231

/-! ## A382074.P4587499794788287138

`A004111(A110174(n+1)%A374679(n+3))`
-/

namespace A382074.P4587499794788287138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (Int.tmod (A110174 (n + 1)) (A374679 (n + 3))).toNat

end

end A382074.P4587499794788287138

/-! ## A382074.P11157289651159980864

`A004111(A110174(n+1))%A327321(2*n+1)`
-/

namespace A382074.P11157289651159980864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004111 (A110174 (n + 1)).toNat) (A327321 (2 * n + 1))

end

end A382074.P11157289651159980864

/-!
# A382076: Number of integer partitions of n whose run-sums are not all equal.

The programs for A382076, there is no canonical definition to state claims against.
-/

/-! ## A382076.P8527735265919413857

`A000041(n)-A304442(n)`
-/

namespace A382076.P8527735265919413857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A304442 n

end

end A382076.P8527735265919413857

/-! ## A382076.P14729879039374802260

`A213598(n)-A304442(n)`
-/

namespace A382076.P14729879039374802260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A304442 n

end

end A382076.P14729879039374802260

/-! ## A382076.P6069887969402998671

`∑[A002865(n)]-A304442(n)`
-/

namespace A382076.P6069887969402998671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A304442 n

end

end A382076.P6069887969402998671

/-! ## A382076.P1772227369544149436

`A035363(2*n)-A304442(n)`
-/

namespace A382076.P1772227369544149436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A304442 n

end

end A382076.P1772227369544149436

/-! ## A382076.P2765071016818365815

`A119620(2*n)-A304442(n)`
-/

namespace A382076.P2765071016818365815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A304442 n

end

end A382076.P2765071016818365815

/-!
# A382077: Number of integer partitions of n that can be partitioned into a set of sets.

The programs for A382077, there is no canonical definition to state claims against.
-/

/-! ## A382077.P2227799080837676477

`A000041(n)-A382078(n)`
-/

namespace A382077.P2227799080837676477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A382078 n

end

end A382077.P2227799080837676477

/-! ## A382077.P7801059804701588746

`∑[A002865(n)]-A382078(n)`
-/

namespace A382077.P7801059804701588746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A382078 n

end

end A382077.P7801059804701588746

/-! ## A382077.P7010681789712692811

`A240305(n)+A240308(n)-A382078(n)`
-/

namespace A382077.P7010681789712692811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240305 n + (A240308 n - A382078 n)

end

end A382077.P7010681789712692811

/-! ## A382077.P5416910619320373851

`A240306(n)+A240309(n)-A382078(n)`
-/

namespace A382077.P5416910619320373851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240306 n + (A240309 n - A382078 n)

end

end A382077.P5416910619320373851

/-! ## A382077.P7216409978732150069

`A381992(n)+A185284(2*n+3)`
-/

namespace A382077.P7216409978732150069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381992 n + A185284 (2 * n + 3)

end

end A382077.P7216409978732150069

/-!
# A382078: Number of integer partitions of n that cannot be partitioned into a set of sets.

The programs for A382078, there is no canonical definition to state claims against.
-/

/-! ## A382078.P13867433541495585200

`A000041(n)-A382077(n)`
-/

namespace A382078.P13867433541495585200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A382077 n

end

end A382078.P13867433541495585200

/-! ## A382078.P11745259097180268852

`∑[A002865(n)]-A382077(n)`
-/

namespace A382078.P11745259097180268852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A382077 n

end

end A382078.P11745259097180268852

/-! ## A382078.P15252248413065007813

`A238121(A000217(n))-A382077(n)`
-/

namespace A382078.P15252248413065007813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A000217 n).toNat - A382077 n

end

end A382078.P15252248413065007813

/-! ## A382078.P3841007017615606553

`A240305(n)+A240308(n)-A382077(n)`
-/

namespace A382078.P3841007017615606553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240305 n + (A240308 n - A382077 n)

end

end A382078.P3841007017615606553

/-! ## A382078.P3013863789963533411

`A240306(n)+A240309(n)-A382077(n)`
-/

namespace A382078.P3013863789963533411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240306 n + (A240309 n - A382077 n)

end

end A382078.P3013863789963533411

/-!
# A382080: Number of ways to partition the prime indices of n into sets with a common sum.

The programs for A382080, there is no canonical definition to state claims against.
-/

/-! ## A382080.P4383857766426686175

`A346418(n+1)-A363127(n+1)`
-/

namespace A382080.P4383857766426686175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346418 (n + 1) - A363127 (n + 1)

end

end A382080.P4383857766426686175

/-! ## A382080.P5763402117024739626

`A346418(n+1)*A384667(n+1)`
-/

namespace A382080.P5763402117024739626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346418 (n + 1) * A384667 (n + 1)

end

end A382080.P5763402117024739626

/-! ## A382080.P14647338293593498820

`and(A335550(n+1), A346418(n+1))`
-/

namespace A382080.P14647338293593498820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A335550 (n + 1)) (A346418 (n + 1))

end

end A382080.P14647338293593498820

/-! ## A382080.P16230989854453621478

`A217605(A281116(n+1))^A048993(n)`
-/

namespace A382080.P16230989854453621478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217605 (A281116 (n + 1)).toNat : ℚ) ^ (A048993 n : ℤ)

end

end A382080.P16230989854453621478

/-! ## A382080.P3401258283549900583

`A317675(A351945(n+1))^A092107(n)`
-/

namespace A382080.P3401258283549900583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317675 (A351945 (n + 1)).toNat : ℚ) ^ (A092107 n : ℤ)

end

end A382080.P3401258283549900583

/-!
# A382081: a(n) = binomial(n,3) + 6*binomial(n,4) + 15*binomial(n,5) + 15*binomial(n,6).

The programs for A382081, the canonical program `A382081.P16347205408547733036` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382081 has offset 0).

The definition of A382081 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 3)+6*C(n, 4)+15*C(n, 5)+15*C(n, 6)` (program `A382081.P16347205408547733036`, by `A382081.P16347205408547733036.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A382081.P16347205408547733036

`C(n, 3)+6*C(n, 4)+15*C(n, 5)+15*C(n, 6)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A382081

/-- `C(n, 3)+6*C(n, 4)+15*C(n, 5)+15*C(n, 6)` -/
def P16347205408547733036.Spec : Prop :=
  ∀ n, (P16347205408547733036.a n : ℤ) = A382081 n

theorem P16347205408547733036.correct : P16347205408547733036.Spec := by
  intro n
  simp only [A382081]

end A382081

/-! ## A382081.P1270244790301346318

`(n-2)*(n-1)*n*(n^3-6*n²+17*n-16)/48`
-/

namespace A382081.P1270244790301346318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * ((n : ℤ) - 1) * (n : ℤ) * ((n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (17 * n : ℤ) - 16) : ℚ) / 48

end

end A382081.P1270244790301346318

namespace A382081

/-- `(n-2)*(n-1)*n*(n^3-6*n²+17*n-16)/48` -/
def P1270244790301346318.Spec : Prop :=
  ∀ n, P1270244790301346318.a n = (A382081 n : ℚ)

end A382081

/-! ## A382081.P15662168193956463130

`A320312(A292884(n+1)-A052823(n))`
-/

namespace A382081.P15662168193956463130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320312 (A292884 (n + 1) - A052823 n).toNat

end

end A382081.P15662168193956463130

namespace A382081

/-- `A320312(A292884(n+1)-A052823(n))` -/
def P15662168193956463130.Spec : Prop :=
  ∀ n, P15662168193956463130.a n = A382081 n

end A382081

/-!
# A382082: F(k) such that F(k) + (F(k) reversed) is a palindrome, where F(k) is a Fibonacci number.

The programs for A382082, there is no canonical definition to state claims against.
-/

/-! ## A382082.P2489871602082370640

`∩[A142881(n), A293292(n+1)]`
-/

namespace A382082.P2489871602082370640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382082.P2489871602082370640

/-! ## A382082.P5015558455331359066

`A000045(A205647(n+1)^A053632(n))`
-/

namespace A382082.P5015558455331359066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A205647 (n + 1) : ℚ) ^ (A053632 n : ℤ))).toNat

end

end A382082.P5015558455331359066

/-! ## A382082.P6134735170939182492

`A000045(A205647(n+1))%A099300(n+3)`
-/

namespace A382082.P6134735170939182492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A205647 (n + 1)).toNat) (A099300 (n + 3))

end

end A382082.P6134735170939182492

/-! ## A382082.P16631041619278609508

`A000045(lt[A246080(n+1), A319652(3*n+2)])`
-/

namespace A382082.P16631041619278609508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A382082.P16631041619278609508

/-! ## A382082.P13938867446389381989

`filter[A007091(n), A010056(#)]`
-/

namespace A382082.P13938867446389381989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A382082.P13938867446389381989

/-!
# A382083: a(n) is the ratio between A382067(n) and A382067(n+2).

The programs for A382083, there is no canonical definition to state claims against.
-/

/-! ## A382083.P3858172976788196375

`A126762(A090106(2*(n+1)))-n`
-/

namespace A382083.P3858172976788196375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126762 (A090106 (2 * (n + 1))).toNat - (n : ℤ)

end

end A382083.P3858172976788196375

/-!
# A382084: a(n) = 90*binomial(n,6) + 18*binomial(n,4) + 3*binomial(n,2) + 1.

The programs for A382084, the canonical program `A382084.P17271633145304171838` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382084 has offset 0).

The definition of A382084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `90*C(n, 6)+18*C(n, 4)+3*C(n, 2)+1` (program `A382084.P17271633145304171838`, by `A382084.P17271633145304171838.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A382084.P17271633145304171838

`90*C(n, 6)+18*C(n, 4)+3*C(n, 2)+1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A382084

/-- `90*C(n, 6)+18*C(n, 4)+3*C(n, 2)+1` -/
def P17271633145304171838.Spec : Prop :=
  ∀ n, (P17271633145304171838.a n : ℤ) = A382084 n

theorem P17271633145304171838.correct : P17271633145304171838.Spec := by
  intro n
  simp only [A382084]

end A382084

/-!
# A382086: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-x * C(x)) ), where C(x) = 1 + x*C(x)^2 is the g.f. of A000108.

The programs for A382086, there is no canonical definition to state claims against.
-/

/-! ## A382086.P10196588080544528911

`A127450(n!²)`
-/

namespace A382086.P10196588080544528911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127450 (Nat.factorial n ^ 2)

end

end A382086.P10196588080544528911

/-!
# A382087: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-x * B(x)^2) ), where B(x) = 1 + x*B(x)^3 is the g.f. of A001764.

The programs for A382087, there is no canonical definition to state claims against.
-/

/-! ## A382087.P2972861623154265798

`A025505(A050719(a(n-1)+a(n-2)+1))` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A382087.P2972861623154265798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  A025505 (A050719 (a (n - 1) + a (n - 2) + 1).toNat).toNat

end

end A382087.P2972861623154265798

/-!
# A382088: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-x * B(x)^3) ), where B(x) = 1 + x*B(x)^4 is the g.f. of A002293.

The programs for A382088, there is no canonical definition to state claims against.
-/

/-! ## A382088.P3582530187570242161

`A345930(A361283(n)+A158836(n))`
-/

namespace A382088.P3582530187570242161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345930 (A361283 n + A158836 n).toNat

end

end A382088.P3582530187570242161

/-!
# A382092: Values taken by gcd(a^2 + b^2 + c^2, a*b*c), where a, b, c are positive integers.

The programs for A382092, there is no canonical definition to state claims against.
-/

/-! ## A382092.P6588042237834417224

`lt[A255248(2*n+1), A319362(A244543(2*n))]`
-/

namespace A382092.P6588042237834417224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255248 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319362 (A244543 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382092.P6588042237834417224

/-! ## A382092.P11628594141066198022

`lt[A194449(A325353(n)), A004018(n)]`
-/

namespace A382092.P11628594141066198022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194449 (A325353 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382092.P11628594141066198022

/-! ## A382092.P5691799022214746974

`lt[A014594(A014557(2*(n+2))), A004018(n)]`
-/

namespace A382092.P5691799022214746974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014594 (A014557 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382092.P5691799022214746974

/-! ## A382092.P8122577423241260249

`lt[A040534(A098151(n)), A079314(n)]`
-/

namespace A382092.P8122577423241260249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040534 (A098151 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079314 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382092.P8122577423241260249

/-! ## A382092.P7585564549170110858

`lt[A245474(n), A002828(A094009(n+1))]`
-/

namespace A382092.P7585564549170110858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245474 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A094009 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382092.P7585564549170110858

/-!
# A382093: Sequence where k is appended after every (k-1)! occurrences of 1, with multiple values following a 1 listed in order.

The programs for A382093, there is no canonical definition to state claims against.
-/

/-! ## A382093.P2203172735159259547

`A080237(lt[A215788(3*n+2), A244125(2*n+3)])`
-/

namespace A382093.P2203172735159259547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244125 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A382093.P2203172735159259547

/-!
# A382094: Integers k such that k*2^k + 3 is prime.

The programs for A382094, there is no canonical definition to state claims against.
-/

/-! ## A382094.P12574369682037570805

`eq[A108437(n+1), A331128(n)]`
-/

namespace A382094.P12574369682037570805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382094.P12574369682037570805

/-! ## A382094.P10066027429707698138

`eq[A320086(A320086(2*(n+2))), A348500(3*n+4)]`
-/

namespace A382094.P10066027429707698138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320086 (A320086 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348500 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382094.P10066027429707698138

/-!
# A382096: Number of rooted ordered trees with node weights summing to n, where the root has weight 0, non-root node weights are in {1,2,3}, and no nodes have the same weight as their parent node.

The programs for A382096, there is no canonical definition to state claims against.
-/

/-! ## A382096.P18186575068267821767

`A227911(round(exp(n)))`
-/

namespace A382096.P18186575068267821767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227911 (SequenceMachineLib.roundAway (Real.exp (n : ℝ))).toNat

end

end A382096.P18186575068267821767

/-! ## A382096.P15967163825068872827

`A297571(A059529(n))`
-/

namespace A382096.P15967163825068872827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297571 (A059529 n).toNat

end

end A382096.P15967163825068872827

/-! ## A382096.P18141020968935486917

`A378117(A150791(n))`
-/

namespace A382096.P18141020968935486917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378117 (A150791 n).toNat

end

end A382096.P18141020968935486917

/-!
# A382097: Sum of the legs of the unique primitive Pythagorean triple whose inradius is the n-th prime and whose short leg is an odd number.

The programs for A382097, the canonical program `A382097.P16883226550991024872` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382097 has offset 1).

The definition of A382097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382097.P16883226550991024872

`2*A110833(n+1)-1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A382097

/-- `2*A110833(n+1)-1` -/
def P16883226550991024872.Spec : Prop :=
  ∀ n, P16883226550991024872.a n = A382097 (n + 1)

theorem P16883226550991024872.correct : P16883226550991024872.Spec := by
  intro n
  simp only [A382097, Nat.add_sub_cancel]

end A382097

/-! ## A382097.P13427011202236137248

`2*A008864(n+1)²-1`
-/

namespace A382097.P13427011202236137248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008864 (n + 1) ^ 2 - 1

end

end A382097.P13427011202236137248

namespace A382097

/-- `2*A008864(n+1)²-1` -/
def P13427011202236137248.Spec : Prop :=
  ∀ n, P13427011202236137248.a n = A382097 (n + 1)

end A382097

/-! ## A382097.P15008946249922245685

`2*(A000040(n+1)+1)²-1`
-/

namespace A382097.P15008946249922245685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (n + 1) + 1) ^ 2 - 1

end

end A382097.P15008946249922245685

namespace A382097

/-- `2*(A000040(n+1)+1)²-1` -/
def P15008946249922245685.Spec : Prop :=
  ∀ n, P15008946249922245685.a n = A382097 (n + 1)

end A382097

/-! ## A382097.P4131030801283038327

`A153480(n)+A129070(n+1)`
-/

namespace A382097.P4131030801283038327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153480 n + A129070 (n + 1)

end

end A382097.P4131030801283038327

namespace A382097

/-- `A153480(n)+A129070(n+1)` -/
def P4131030801283038327.Spec : Prop :=
  ∀ n, P4131030801283038327.a n = A382097 (n + 1)

end A382097

/-! ## A382097.P5171283132060328363

`A382070(n+1)+A000040(n+1)`
-/

namespace A382097.P5171283132060328363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382070 (n + 1) + A000040 (n + 1)

end

end A382097.P5171283132060328363

namespace A382097

/-- `A382070(n+1)+A000040(n+1)` -/
def P5171283132060328363.Spec : Prop :=
  ∀ n, P5171283132060328363.a n = A382097 (n + 1)

end A382097

/-! ## A382097.P10692493046951199036

`A367573(n+1)+A072055(n+1)`
-/

namespace A382097.P10692493046951199036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367573 (n + 1) + A072055 (n + 1)

end

end A382097.P10692493046951199036

namespace A382097

/-- `A367573(n+1)+A072055(n+1)` -/
def P10692493046951199036.Spec : Prop :=
  ∀ n, P10692493046951199036.a n = A382097 (n + 1)

end A382097

/-! ## A382097.P5393922323155364560

`A078612(n+1)-A048974(n+1)`
-/

namespace A382097.P5393922323155364560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078612 (n + 1) - A048974 (n + 1)

end

end A382097.P5393922323155364560

namespace A382097

/-- `A078612(n+1)-A048974(n+1)` -/
def P5393922323155364560.Spec : Prop :=
  ∀ n, P5393922323155364560.a n = A382097 (n + 1)

end A382097

/-! ## A382097.P5369139475919539130

`A000040(n+1)+A110833(n+1)+A036690(n+1)`
-/

namespace A382097.P5369139475919539130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A110833 (n + 1) + A036690 (n + 1))

end

end A382097.P5369139475919539130

namespace A382097

/-- `A000040(n+1)+A110833(n+1)+A036690(n+1)` -/
def P5369139475919539130.Spec : Prop :=
  ∀ n, P5369139475919539130.a n = A382097 (n + 1)

end A382097

/-! ## A382097.P18396133831191460690

`A072055(n+1)+A000040(n+1)*A089241(n+1)`
-/

namespace A382097.P18396133831191460690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + A000040 (n + 1) * A089241 (n + 1)

end

end A382097.P18396133831191460690

namespace A382097

/-- `A072055(n+1)+A000040(n+1)*A089241(n+1)` -/
def P18396133831191460690.Spec : Prop :=
  ∀ n, P18396133831191460690.a n = A382097 (n + 1)

end A382097

/-! ## A382097.P4036998980290299579

`A382070(n+1)+A098996(n+1)/A382070(n+1)`
-/

namespace A382097.P4036998980290299579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382070 (n + 1) : ℚ) + (A098996 (n + 1) : ℚ) / (A382070 (n + 1) : ℚ)

end

end A382097.P4036998980290299579

namespace A382097

/-- `A382070(n+1)+A098996(n+1)/A382070(n+1)` -/
def P4036998980290299579.Spec : Prop :=
  ∀ n, P4036998980290299579.a n = (A382097 (n + 1) : ℚ)

end A382097

/-! ## A382097.P8800258870428060512

`2*((A008578(n+2)+1)²+1)-3`
-/

namespace A382097.P8800258870428060512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((A008578 (n + 2) + 1) ^ 2 + 1) - 3

end

end A382097.P8800258870428060512

namespace A382097

/-- `2*((A008578(n+2)+1)²+1)-3` -/
def P8800258870428060512.Spec : Prop :=
  ∀ n, P8800258870428060512.a n = A382097 (n + 1)

end A382097

/-! ## A382097.P9056489923594752278

`2*(record[A014963(n+2)]+1)²-1`
-/

namespace A382097.P9056489923594752278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) ^ 2 - 1

end

end A382097.P9056489923594752278

namespace A382097

/-- `2*(record[A014963(n+2)]+1)²-1` -/
def P9056489923594752278.Spec : Prop :=
  ∀ n, P9056489923594752278.a n = A382097 (n + 1)

end A382097

/-! ## A382097.P17106290839722763506

`A056220(A008864(n+1))`
-/

namespace A382097.P17106290839722763506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A008864 (n + 1)).toNat

end

end A382097.P17106290839722763506

namespace A382097

/-- `A056220(A008864(n+1))` -/
def P17106290839722763506.Spec : Prop :=
  ∀ n, P17106290839722763506.a n = A382097 (n + 1)

end A382097

/-! ## A382097.P3105301008333138589

`A056220(A028815(n+1))`
-/

namespace A382097.P3105301008333138589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A028815 (n + 1)).toNat

end

end A382097.P3105301008333138589

namespace A382097

/-- `A056220(A028815(n+1))` -/
def P3105301008333138589.Spec : Prop :=
  ∀ n, P3105301008333138589.a n = A382097 (n + 1)

end A382097

/-! ## A382097.P15504831782823522354

`A056220(A299763(n+2))`
-/

namespace A382097.P15504831782823522354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A299763 (n + 2)).toNat

end

end A382097.P15504831782823522354

namespace A382097

/-- `A056220(A299763(n+2))` -/
def P15504831782823522354.Spec : Prop :=
  ∀ n, P15504831782823522354.a n = A382097 (n + 1)

end A382097

/-! ## A382097.P11595191042952399688

`A047838(A089241(n+1))`
-/

namespace A382097.P11595191042952399688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (A089241 (n + 1)).toNat

end

end A382097.P11595191042952399688

namespace A382097

/-- `A047838(A089241(n+1))` -/
def P11595191042952399688.Spec : Prop :=
  ∀ n, P11595191042952399688.a n = A382097 (n + 1)

end A382097

/-! ## A382097.P11605177452368722034

`A074148(A072055(n+1))`
-/

namespace A382097.P11605177452368722034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (A072055 (n + 1)).toNat

end

end A382097.P11605177452368722034

namespace A382097

/-- `A074148(A072055(n+1))` -/
def P11605177452368722034.Spec : Prop :=
  ∀ n, P11605177452368722034.a n = A382097 (n + 1)

end A382097

/-! ## A382097.P8715517071152316201

`A326658(A100484(n+1))`
-/

namespace A382097.P8715517071152316201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326658 (A100484 (n + 1)).toNat

end

end A382097.P8715517071152316201

namespace A382097

/-- `A326658(A100484(n+1))` -/
def P8715517071152316201.Spec : Prop :=
  ∀ n, P8715517071152316201.a n = A382097 (n + 1)

end A382097

/-! ## A382097.P10034959396273371927

`A326658(A001747(n+2))`
-/

namespace A382097.P10034959396273371927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326658 (A001747 (n + 2)).toNat

end

end A382097.P10034959396273371927

namespace A382097

/-- `A326658(A001747(n+2))` -/
def P10034959396273371927.Spec : Prop :=
  ∀ n, P10034959396273371927.a n = A382097 (n + 1)

end A382097

/-! ## A382097.P5327673888881542060

`A213037(A076274(n+2)+2)`
-/

namespace A382097.P5327673888881542060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 (A076274 (n + 2) + 2).toNat

end

end A382097.P5327673888881542060

namespace A382097

/-- `A213037(A076274(n+2)+2)` -/
def P5327673888881542060.Spec : Prop :=
  ∀ n, P5327673888881542060.a n = A382097 (n + 1)

end A382097

/-!
# A382098: a(n) is the numerator of the square of the n-th Lagrange number.

The programs for A382098, there is no canonical definition to state claims against.
-/

/-! ## A382098.P2335061124621605747

`lcm(A324250(n+1)+4, A324250(n+1))`
-/

namespace A382098.P2335061124621605747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A324250 (n + 1) + 4) (A324250 (n + 1))

end

end A382098.P2335061124621605747

/-! ## A382098.P6724357366148968302

`A305312(n+1)/A297402(A002559(n+1))`
-/

namespace A382098.P6724357366148968302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305312 (n + 1) : ℚ) / (A297402 (A002559 (n + 1)).toNat : ℚ)

end

end A382098.P6724357366148968302

/-! ## A382098.P17105547558787502028

`A171621(A086326(n+1))`
-/

namespace A382098.P17105547558787502028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171621 (A086326 (n + 1)).toNat

end

end A382098.P17105547558787502028

/-!
# A382099: a(n) is the denominator of the square of the n-th Lagrange number.

The programs for A382099, there is no canonical definition to state claims against.
-/

/-! ## A382099.P7484341908686482607

`A000265(A002559(n+1))²`
-/

namespace A382099.P7484341908686482607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002559 (n + 1)).toNat ^ 2

end

end A382099.P7484341908686482607

/-! ## A382099.P14985848080154041771

`A328621(A002559(n+1))`
-/

namespace A382099.P14985848080154041771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328621 (A002559 (n + 1)).toNat

end

end A382099.P14985848080154041771

/-! ## A382099.P6700494666159185408

`A002620(lcm(2, A002559(n+1)))`
-/

namespace A382099.P6700494666159185408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (Int.lcm 2 (A002559 (n + 1)))

end

end A382099.P6700494666159185408

/-! ## A382099.P1547874212740620513

`A262397(A086326(n+1))`
-/

namespace A382099.P1547874212740620513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262397 (A086326 (n + 1)).toNat

end

end A382099.P1547874212740620513

/-! ## A382099.P9923825550760572312

`A000265(A002559(n+1)*A002559(n+1))`
-/

namespace A382099.P9923825550760572312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002559 (n + 1) * A002559 (n + 1)).toNat

end

end A382099.P9923825550760572312

