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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A323100: Square array read by ascending antidiagonals: T(p,q) is the number of bases e such that e^2 = -1 in Clifford algebra Cl(p,q)(R).

The programs for A323100, there is no canonical definition to state claims against.
-/

/-! ## A323100.P17684788895247615571

`A137688(n)-A323346(n)`
-/

namespace A323100.P17684788895247615571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n - A323346 n

end

end A323100.P17684788895247615571

/-! ## A323100.P3943044488326474624

`Δ[A007664(n)]-A323346(n)`
-/

namespace A323100.P3943044488326474624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A323346 n

end

end A323100.P3943044488326474624

/-! ## A323100.P8259861186407697093

`A000079(A003056(n))-A323346(n)`
-/

namespace A323100.P8259861186407697093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A003056 n).toNat - A323346 n

end

end A323100.P8259861186407697093

/-! ## A323100.P5613803248929929173

`A131816(A057944(n))-A323346(n)`
-/

namespace A323100.P5613803248929929173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 (A057944 n).toNat - A323346 n

end

end A323100.P5613803248929929173

/-! ## A323100.P13071988956822104566

`A011782(A002024(n+1))-A323346(n)`
-/

namespace A323100.P13071988956822104566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002024 (n + 1)).toNat - A323346 n

end

end A323100.P13071988956822104566

/-! ## A323100.P4252811162380372746

`A166444(A003057(n+2))-A323346(n)`
-/

namespace A323100.P4252811162380372746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A003057 (n + 2)).toNat - A323346 n

end

end A323100.P4252811162380372746

/-!
# A323102: Numbers k such that 405*2^k+1 is prime.

The programs for A323102, there is no canonical definition to state claims against.
-/

/-! ## A323102.P14775270102189460792

`A333423(n+1)+A195838(A163493(n))`
-/

namespace A323102.P14775270102189460792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333423 (n + 1) + A195838 (A163493 n).toNat

end

end A323102.P14775270102189460792

/-!
# A323103: Numbers k such that 407*2^k+1 is prime.

The programs for A323103, there is no canonical definition to state claims against.
-/

/-! ## A323103.P17135521709460506135

`eq[A208510(A325096(n)), A228826(n)]`
-/

namespace A323103.P17135521709460506135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (A325096 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323103.P17135521709460506135

/-!
# A323104: Numbers k such that 409*2^k+1 is prime.

The programs for A323104, there is no canonical definition to state claims against.
-/

/-! ## A323104.P15680886091535212085

`A286636(A230656(n))`
-/

namespace A323104.P15680886091535212085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286636 (A230656 n).toNat

end

end A323104.P15680886091535212085

/-!
# A323106: Numbers k such that 413*2^k+1 is prime.

The programs for A323106, there is no canonical definition to state claims against.
-/

/-! ## A323106.P11599989021214490962

`A296007(A186890(n+2))`
-/

namespace A323106.P11599989021214490962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296007 (A186890 (n + 2)).toNat

end

end A323106.P11599989021214490962

/-! ## A323106.P14744145732199674560

`∑[A160721(∑[A350492(n)])]`
-/

namespace A323106.P14744145732199674560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350492 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160721 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323106.P14744145732199674560

/-! ## A323106.P17477152103711069004

`A325129(record[A084795(n+1)])`
-/

namespace A323106.P17477152103711069004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325129 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323106.P17477152103711069004

/-!
# A323111: Number of compositions of 2n where the difference between largest and smallest parts equals n.

The programs for A323111, there is no canonical definition to state claims against.
-/

/-! ## A323111.P2991811997993990520

`A097941(n+1)-A105039(n+1)`
-/

namespace A323111.P2991811997993990520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097941 (n + 1) - A105039 (n + 1)

end

end A323111.P2991811997993990520

/-! ## A323111.P9096757202905907149

`A097941(n+1)-A238342(∑[n+1]+1)`
-/

namespace A323111.P9096757202905907149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097941 (n + 1) - A238342 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A323111.P9096757202905907149

/-! ## A323111.P1750390178954564359

`A214258(2*(n+1)²+1)`
-/

namespace A323111.P1750390178954564359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (2 * (n + 1) ^ 2 + 1)

end

end A323111.P1750390178954564359

/-! ## A323111.P780970416790095855

`lcm(A033999(n), A214258(A058331(n+1)))`
-/

namespace A323111.P780970416790095855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A214258 (A058331 (n + 1)).toNat)

end

end A323111.P780970416790095855

/-! ## A323111.P11383773575872459838

`char[A106466(n)]*A214258(A058331(n+1))`
-/

namespace A323111.P11383773575872459838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A214258 (A058331 (n + 1)).toNat

end

end A323111.P11383773575872459838

/-! ## A323111.P4755458560786173286

`A214258(A058331(n+1))+A000035(4*n)`
-/

namespace A323111.P4755458560786173286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A058331 (n + 1)).toNat + A000035 (4 * n)

end

end A323111.P4755458560786173286

/-! ## A323111.P9294734165021947128

`and(A000225(2*n), A214258(A006137(n+1)))`
-/

namespace A323111.P9294734165021947128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (2 * n)) (A214258 (A006137 (n + 1)).toNat)

end

end A323111.P9294734165021947128

/-! ## A323111.P11021657710305215668

`A014963(4*n+2)*A214258(A006137(n+1))`
-/

namespace A323111.P11021657710305215668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A214258 (A006137 (n + 1)).toNat

end

end A323111.P11021657710305215668

/-! ## A323111.P11487891683762069536

`floor(A214258(A064226(n))+ϕ/A000040(n+1)²)`
-/

namespace A323111.P11487891683762069536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A214258 (A064226 n).toNat : ℝ) + Real.goldenRatio / (A000040 (n + 1) ^ 2 : ℝ)⌋

end

end A323111.P11487891683762069536

/-!
# A323113: Numbers k such that 425*2^k+1 is prime.

The programs for A323113, there is no canonical definition to state claims against.
-/

/-! ## A323113.P14900308421609739798

`A360114(A175414(n+1)+A000108(n))`
-/

namespace A323113.P14900308421609739798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360114 (A175414 (n + 1) + A000108 n).toNat

end

end A323113.P14900308421609739798

/-!
# A323114: Numbers k such that 427*2^k+1 is prime.

The programs for A323114, there is no canonical definition to state claims against.
-/

/-! ## A323114.P10769430034544607930

`eq[A225800(n+2), A290079(n+1)]+1`
-/

namespace A323114.P10769430034544607930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225800 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A323114.P10769430034544607930

/-! ## A323114.P1226470907847723220

`eq[A225800(n+1), A290079(A028310(n))]`
-/

namespace A323114.P1226470907847723220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323114.P1226470907847723220

/-!
# A323115: Numbers k such that 429*2^k+1 is prime.

The programs for A323115, there is no canonical definition to state claims against.
-/

/-! ## A323115.P11256608527316254111

`eq[A091813(A091813(n+1)), A181940(n)]`
-/

namespace A323115.P11256608527316254111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091813 (A091813 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181940 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323115.P11256608527316254111

/-! ## A323115.P2984248923082950549

`A366331(A303027(n+1))+A237685(n+3)`
-/

namespace A323115.P2984248923082950549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366331 (A303027 (n + 1)).toNat + A237685 (n + 3)

end

end A323115.P2984248923082950549

/-!
# A323116: Fixed point of the morphism 1->221, 2->2211.

The programs for A323116, there is no canonical definition to state claims against.
-/

/-! ## A323116.P5435139686920944786

`Δ[A284015(n+1)]`
-/

namespace A323116.P5435139686920944786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323116.P5435139686920944786

/-! ## A323116.P11832512793456029678

`A284015(n+2)-A284015(n+1)`
-/

namespace A323116.P11832512793456029678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284015 (n + 2) - A284015 (n + 1)

end

end A323116.P11832512793456029678

/-! ## A323116.P17114819349592313326

`and(3, Δ[A283967(2*(n+1))])`
-/

namespace A323116.P17114819349592313326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283967 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (f1 (n + 1) - f1 n)

end

end A323116.P17114819349592313326

/-! ## A323116.P13501184923405546429

`A001221(Δ[A283967(Δ[n²])])`
-/

namespace A323116.P13501184923405546429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283967 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A323116.P13501184923405546429

/-! ## A323116.P16435295032141974314

`A001222(Δ[A283967(Δ[n²])])`
-/

namespace A323116.P16435295032141974314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283967 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A323116.P16435295032141974314

/-! ## A323116.P5075910885243767723

`A283988(Δ[A283967(Δ[n²])])`
-/

namespace A323116.P5075910885243767723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283967 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283988 (f1 (n + 1) - f1 n).toNat

end

end A323116.P5075910885243767723

/-! ## A323116.P12473689716813580764

`A283993(Δ[A283967(Δ[n²])])`
-/

namespace A323116.P12473689716813580764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283967 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283993 (f1 (n + 1) - f1 n).toNat

end

end A323116.P12473689716813580764

/-!
# A323117: a(n) = T_{n}(n-1) where T_{n}(x) is a Chebyshev polynomial of the first kind.

The programs for A323117, there is no canonical definition to state claims against.
-/

/-! ## A323117.P16564178391922865302

`A322836(2*n²)`
-/

namespace A323117.P16564178391922865302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (2 * n ^ 2)

end

end A323117.P16564178391922865302

/-! ## A323117.P17156792585737240316

`abs(A322836(A001105(n)))`
-/

namespace A323117.P17156792585737240316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A322836 (A001105 n).toNat|

end

end A323117.P17156792585737240316

/-! ## A323117.P7472992936299468874

`or(A000007(n), A322836(A001105(n)))`
-/

namespace A323117.P7472992936299468874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A322836 (A001105 n).toNat)

end

end A323117.P7472992936299468874

/-! ## A323117.P14367095769687968375

`A322836(A001105(n))+A000007(n+1)`
-/

namespace A323117.P14367095769687968375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A001105 n).toNat + A000007 (n + 1)

end

end A323117.P14367095769687968375

/-! ## A323117.P18279367280994369235

`A101124(A004273(n²))`
-/

namespace A323117.P18279367280994369235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A004273 (n ^ 2)).toNat

end

end A323117.P18279367280994369235

/-!
# A323118: a(n) = U_{n}(n) where U_{n}(x) is a Chebyshev polynomial of the second kind.

The programs for A323118, there is no canonical definition to state claims against.
-/

/-! ## A323118.P882570690723541864

`(n+1)*A318192(n)`
-/

namespace A323118.P882570690723541864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A318192 n

end

end A323118.P882570690723541864

/-! ## A323118.P4499789114793692321

`A228161(∑[4*n])`
-/

namespace A323118.P4499789114793692321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323118.P4499789114793692321

/-! ## A323118.P18241211493676226392

`A323182(∑[4*n])`
-/

namespace A323118.P18241211493676226392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323118.P18241211493676226392

/-! ## A323118.P13749611387266525585

`abs(A323182(A046092(n)))`
-/

namespace A323118.P13749611387266525585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323182 (A046092 n).toNat|

end

end A323118.P13749611387266525585

/-! ## A323118.P1296877017889691042

`abs(A228161(∑[A008586(n)]))`
-/

namespace A323118.P1296877017889691042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A228161 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A323118.P1296877017889691042

/-!
# A323119: Number of compositions of n where the difference between largest and smallest parts equals two.

The programs for A323119, there is no canonical definition to state claims against.
-/

/-! ## A323119.P476596638151103328

`A214258(∑[round(acot(n)+n)+1])`
-/

namespace A323119.P476596638151103328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323119.P476596638151103328

/-! ## A323119.P17921418559427073542

`A214258(A253145(n)+3)`
-/

namespace A323119.P17921418559427073542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A253145 n + 3).toNat

end

end A323119.P17921418559427073542

/-! ## A323119.P5374234173702813704

`A214258(A134869(n+1)+2)`
-/

namespace A323119.P5374234173702813704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A134869 (n + 1) + 2).toNat

end

end A323119.P5374234173702813704

/-! ## A323119.P6920420824328915685

`A214258(A133263(n)+2+n)`
-/

namespace A323119.P6920420824328915685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A133263 n + 2 + (n : ℤ)).toNat

end

end A323119.P6920420824328915685

/-! ## A323119.P1891910451851677636

`A214258(A167614(round(sqrt(n²+1))))`
-/

namespace A323119.P1891910451851677636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A167614 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A323119.P1891910451851677636

/-! ## A323119.P15600712540477135307

`A214258(∑[n+1]+3)%A000079(n)`
-/

namespace A323119.P15600712540477135307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214258 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) (A000079 n)

end

end A323119.P15600712540477135307

/-! ## A323119.P10633687500908027644

`A214258(A167499(n)-(A000007(n)+2))`
-/

namespace A323119.P10633687500908027644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A167499 n - (A000007 n + 2)).toNat

end

end A323119.P10633687500908027644

/-! ## A323119.P2163360668726325608

`A214258(A167499(n)-2-A000007(n))`
-/

namespace A323119.P2163360668726325608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A167499 n - 2 - A000007 n).toNat

end

end A323119.P2163360668726325608

/-! ## A323119.P3008474368693491102

`A057427(n)*A214258(A167499(n)-2)`
-/

namespace A323119.P3008474368693491102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A214258 (A167499 n - 2).toNat

end

end A323119.P3008474368693491102

/-! ## A323119.P17423018750937906212

`A214258(A167499(n)-A057427(n)-A057427(n))`
-/

namespace A323119.P17423018750937906212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A167499 n - A057427 n - A057427 n).toNat

end

end A323119.P17423018750937906212

/-!
# A323120: Number of compositions of n where the difference between largest and smallest parts equals three.

The programs for A323120, there is no canonical definition to state claims against.
-/

/-! ## A323120.P8347927215599758794

`A214258(A134869(n+1)+n+5)`
-/

namespace A323120.P8347927215599758794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A134869 (n + 1) + (n + 5 : ℤ)).toNat

end

end A323120.P8347927215599758794

/-! ## A323120.P10391543820398502824

`A214258(A167614(n+1)+A057427(n))`
-/

namespace A323120.P10391543820398502824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A167614 (n + 1) + A057427 n).toNat

end

end A323120.P10391543820398502824

/-! ## A323120.P8873125273211046560

`A214258(A167614(n+1)-A057428(n))`
-/

namespace A323120.P8873125273211046560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A167614 (n + 1) - A057428 n).toNat

end

end A323120.P8873125273211046560

/-! ## A323120.P13783298562786848322

`A214258(A057427(n)+A167499(n)+n)`
-/

namespace A323120.P13783298562786848322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A057427 n + (A167499 n + (n : ℤ))).toNat

end

end A323120.P13783298562786848322

/-! ## A323120.P6021394917542103039

`A214258(A167614(n+1)+A057428(n)²)`
-/

namespace A323120.P6021394917542103039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A167614 (n + 1) + A057428 n ^ 2).toNat

end

end A323120.P6021394917542103039

/-! ## A323120.P1659453887057162530

`A214258(A167614(n+1)+A122458(A046092(n)))`
-/

namespace A323120.P1659453887057162530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A167614 (n + 1) + A122458 (A046092 n).toNat).toNat

end

end A323120.P1659453887057162530

/-!
# A323121: Number of compositions of n where the difference between largest and smallest parts equals four.

The programs for A323121, there is no canonical definition to state claims against.
-/

/-! ## A323121.P3864796931454719405

`A214258(A052905(n)+A040020(n))`
-/

namespace A323121.P3864796931454719405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A052905 n + A040020 n).toNat

end

end A323121.P3864796931454719405

/-! ## A323121.P1354853816794496070

`A214258(A000124(n+4)-A028310(n))`
-/

namespace A323121.P1354853816794496070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A000124 (n + 4) - A028310 n).toNat

end

end A323121.P1354853816794496070

/-! ## A323121.P4962092318161432890

`A214258(A134869(n+1)+Δ[A028566(n)])`
-/

namespace A323121.P4962092318161432890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A134869 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A323121.P4962092318161432890

/-! ## A323121.P13817165621440145345

`A214258(A020715(2*n+1)+A134869(n+1)+2)`
-/

namespace A323121.P13817165621440145345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A020715 (2 * n + 1) + (A134869 (n + 1) + 2)).toNat

end

end A323121.P13817165621440145345

/-!
# A323122: Number of compositions of n where the difference between largest and smallest parts equals five.

The programs for A323122, there is no canonical definition to state claims against.
-/

/-! ## A323122.P5631080416206668068

`A214258(A057427(n)+A056000(n)+15)`
-/

namespace A323122.P5631080416206668068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A057427 n + (A056000 n + 15)).toNat

end

end A323122.P5631080416206668068

/-! ## A323122.P17130548367416759653

`A214258(A056000(n)+15-A057428(n))`
-/

namespace A323122.P17130548367416759653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A056000 n + 15 - A057428 n).toNat

end

end A323122.P17130548367416759653

/-! ## A323122.P8372297166997876661

`A214258(char[A001057(n+1)]+A155212(n)+13)`
-/

namespace A323122.P8372297166997876661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A155212 n + 13)).toNat

end

end A323122.P8372297166997876661

/-! ## A323122.P9280911129513118109

`A214258(char[A255553(n+1)]+A000124(n+4)+4)`
-/

namespace A323122.P9280911129513118109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255553 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A000124 (n + 4) + 4)).toNat

end

end A323122.P9280911129513118109

/-!
# A323123: Number of compositions of n where the difference between largest and smallest parts equals six.

The programs for A323123, there is no canonical definition to state claims against.
-/

/-! ## A323123.P3381666349264297837

`A214258(A000124(n+6)-A028310(n))`
-/

namespace A323123.P3381666349264297837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A000124 (n + 6) - A028310 n).toNat

end

end A323123.P3381666349264297837

/-! ## A323123.P2888381811457155339

`A214258(A167499(n+4)+2-A000007(n))`
-/

namespace A323123.P2888381811457155339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A167499 (n + 4) + (2 - A000007 n)).toNat

end

end A323123.P2888381811457155339

/-! ## A323123.P4812999983235020421

`A214258(A057427(n)+A046691(n+3)+10)`
-/

namespace A323123.P4812999983235020421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A057427 n + (A046691 (n + 3) + 10)).toNat

end

end A323123.P4812999983235020421

/-! ## A323123.P11714180266433599367

`A214258(A057427(n)+A055999(n+2)+12)`
-/

namespace A323123.P11714180266433599367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A057427 n + (A055999 (n + 2) + 12)).toNat

end

end A323123.P11714180266433599367

/-!
# A323124: Number of compositions of n where the difference between largest and smallest parts equals seven.

The programs for A323124, there is no canonical definition to state claims against.
-/

/-! ## A323124.P1803776052704743805

`A214258(A000124(n+7)-A028310(n))`
-/

namespace A323124.P1803776052704743805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A000124 (n + 7) - A028310 n).toNat

end

end A323124.P1803776052704743805

/-! ## A323124.P5792483487156637384

`A214258(A057427(n)+A167499(n+5)+2)`
-/

namespace A323124.P5792483487156637384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A057427 n + (A167499 (n + 5) + 2)).toNat

end

end A323124.P5792483487156637384

/-! ## A323124.P12247876844817117794

`A214258(A027379(n+6)-4-A004277(n))`
-/

namespace A323124.P12247876844817117794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A027379 (n + 6) - 4 - A004277 n).toNat

end

end A323124.P12247876844817117794

/-! ## A323124.P552512786306020653

`A214258(A055998(n+4)+10-A057428(n))`
-/

namespace A323124.P552512786306020653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A055998 (n + 4) + 10 - A057428 n).toNat

end

end A323124.P552512786306020653

/-! ## A323124.P1962564819038080074

`A214258(A046691(n+4)+11-A057428(n))`
-/

namespace A323124.P1962564819038080074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A046691 (n + 4) + 11 - A057428 n).toNat

end

end A323124.P1962564819038080074

/-!
# A323125: Number of compositions of n where the difference between largest and smallest parts equals eight.

The programs for A323125, there is no canonical definition to state claims against.
-/

/-! ## A323125.P14930165580658180368

`A214258(A000124(n+7)+7-A057428(n))`
-/

namespace A323125.P14930165580658180368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A000124 (n + 7) + 7 - A057428 n).toNat

end

end A323125.P14930165580658180368

/-! ## A323125.P3037470949628147289

`A323127(A004895(n+1))-A323127(A334739(n+1))`
-/

namespace A323125.P3037470949628147289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323127 ((A004895 (n + 1)).toNat + 10) - A323127 ((A334739 (n + 1)).toNat + 10)

end

end A323125.P3037470949628147289

/-! ## A323125.P3908753836303721367

`A323127(A004906(n+1))-A323127(A334739(n+1))`
-/

namespace A323125.P3908753836303721367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323127 ((A004906 (n + 1)).toNat + 10) - A323127 ((A334739 (n + 1)).toNat + 10)

end

end A323125.P3908753836303721367

/-! ## A323125.P4513494099542456483

`A323127(A062399(n))`
-/

namespace A323125.P4513494099542456483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323127 ((A062399 n).toNat + 10)

end

end A323125.P4513494099542456483

/-! ## A323125.P11088560056469737212

`A323127(A120126(n))`
-/

namespace A323125.P11088560056469737212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323127 ((A120126 n).toNat + 10)

end

end A323125.P11088560056469737212

/-!
# A323126: Number of compositions of n where the difference between largest and smallest parts equals nine.

The programs for A323126, there is no canonical definition to state claims against.
-/

/-! ## A323126.P11219150082257207380

`A214258(A000217(n+8)+9-A057428(n))`
-/

namespace A323126.P11219150082257207380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A000217 (n + 8) + 9 - A057428 n).toNat

end

end A323126.P11219150082257207380

/-! ## A323126.P3641421021750680588

`A323111(n^A184828(n+1))-C(A184828(n+2), 2)`
-/

namespace A323126.P3641421021750680588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323111 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A184828 (n + 1) : ℤ))).toNat - (Nat.choose (A184828 (n + 2)).toNat 2 : ℤ)

end

end A323126.P3641421021750680588

/-! ## A323126.P14958419054080176824

`A323111(n^A184828(n+1))-A323127(A184828(n+2))`
-/

namespace A323126.P14958419054080176824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323111 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A184828 (n + 1) : ℤ))).toNat - A323127 ((A184828 (n + 2)).toNat + 10)

end

end A323126.P14958419054080176824

/-! ## A323126.P9510990277114225532

`A323127(A004895(n+1))`
-/

namespace A323126.P9510990277114225532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323127 ((A004895 (n + 1)).toNat + 10)

end

end A323126.P9510990277114225532

/-!
# A323127: Number of compositions of n where the difference between largest and smallest parts equals ten.

The programs for A323127, there is no canonical definition to state claims against.
-/

/-! ## A323127.P7775582297789284261

`∑{e}[A000244(n), A323111(#)]`
-/

namespace A323127.P7775582297789284261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A323111 (Nat.factorization (f1 n).natAbs p)

end

end A323127.P7775582297789284261

/-! ## A323127.P15350015438726457551

`A323111(n^A184828(n+1))`
-/

namespace A323127.P15350015438726457551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323111 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A184828 (n + 1) : ℤ))).toNat

end

end A323127.P15350015438726457551

/-! ## A323127.P7273371682275981779

`A323111(C(n, A184828(n+1)))`
-/

namespace A323127.P7273371682275981779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323111 (Nat.choose n (A184828 (n + 1)).toNat)

end

end A323127.P7273371682275981779

/-! ## A323127.P12379739207917315309

`A323111(A028310(n)^A214268(n))`
-/

namespace A323127.P12379739207917315309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323111 (SequenceMachineLib.roundAway ((A028310 n : ℚ) ^ (A214268 n : ℤ))).toNat

end

end A323127.P12379739207917315309

/-! ## A323127.P16309833836976722824

`A214258(A006137(n))%A057152(n)`
-/

namespace A323127.P16309833836976722824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214258 (A006137 n).toNat) (A057152 n)

end

end A323127.P16309833836976722824

/-!
# A323128: Number T(n,k) of colored set partitions of [n] where elements of subsets have distinct colors and exactly k colors are used; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A323128, there is no canonical definition to state claims against.
-/

/-! ## A323128.P6776383938218060563

`A130685(A108456(n)*A256116(n))`
-/

namespace A323128.P6776383938218060563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130685 (A108456 n * A256116 n).toNat

end

end A323128.P6776383938218060563

/-! ## A323128.P772671591156796017

`A351870(A108456(n)*A256116(n))`
-/

namespace A323128.P772671591156796017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A108456 n * A256116 n).toNat

end

end A323128.P772671591156796017

/-! ## A323128.P15339056350871417405

`A257783(n)*A324662(A256311(n))`
-/

namespace A323128.P15339056350871417405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 n * A324662 (A256311 n).toNat

end

end A323128.P15339056350871417405

/-!
# A323129: a(1) = 1, and for any n > 1, let p be the greatest prime factor of n, and e be its exponent, then a(n) = p^a(e).

The programs for A323129, the canonical program `A323129.P8612268773223338994` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323129 has offset 1).

The definition of A323129 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A071178, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323129.P8612268773223338994

`A006530(n+1)^a(A071178(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A323129

/-- `A006530(n+1)^a(A071178(n+1)-1)` -/
def P8612268773223338994.Spec : Prop :=
  ∀ n, P8612268773223338994.a n = (A323129 (n + 1) : ℝ)

end A323129

/-! ## A323129.P14855038353574932358

`A053585(n+1)%A243540(A243519(n+3))`
-/

namespace A323129.P14855038353574932358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053585 (n + 1)) (A243540 (A243519 (n + 3)).toNat)

end

end A323129.P14855038353574932358

namespace A323129

/-- `A053585(n+1)%A243540(A243519(n+3))` -/
def P14855038353574932358.Spec : Prop :=
  ∀ n, P14855038353574932358.a n = A323129 (n + 1)

end A323129

/-! ## A323129.P2710562817406296150

`A053585(n+1)/A291168(A117957(A008833(n+1)))`
-/

namespace A323129.P2710562817406296150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053585 (n + 1) : ℚ) / (A291168 (A117957 (A008833 (n + 1)).toNat).toNat : ℚ)

end

end A323129.P2710562817406296150

namespace A323129

/-- `A053585(n+1)/A291168(A117957(A008833(n+1)))` -/
def P2710562817406296150.Spec : Prop :=
  ∀ n, P2710562817406296150.a n = (A323129 (n + 1) : ℚ)

end A323129

/-!
# A323130: a(1) = 1, and for any n > 1, let p be the least prime factor of n, and e be its exponent, then a(n) = p^a(e).

The programs for A323130, there is no canonical definition to state claims against.
-/

/-! ## A323130.P11607457055739153508

`A020639(n+1)^a(A067029(n+1)-1)` with `a(0)=1`
-/

namespace A323130.P11607457055739153508
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A020639 (n + 1) : ℝ) ^ (a (A067029 (n + 1) - 1).toNat)

end

end A323130.P11607457055739153508

/-! ## A323130.P11574431992981284344

`A028233(n+1)%A223838(A036554(n+1))`
-/

namespace A323130.P11574431992981284344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028233 (n + 1)) (A223838 (A036554 (n + 1)).toNat)

end

end A323130.P11574431992981284344

/-!
# A323131: Number of uncrossed rooted knight's paths of length n on an infinite board.

The programs for A323131, there is no canonical definition to state claims against.
-/

/-! ## A323131.P11375357522938660270

`∑[A007614(A000073(3*n+4))]`
-/

namespace A323131.P11375357522938660270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007614 (A000073 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323131.P11375357522938660270

/-!
# A323132: Number of uncrossed unrooted knight's paths of length n on an infinite board.

The programs for A323132, there is no canonical definition to state claims against.
-/

/-! ## A323132.P3420128954403255468

`A351004(A351017(2*n))+A093357(n+1)`
-/

namespace A323132.P3420128954403255468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351004 (A351017 (2 * n)).toNat + A093357 (n + 1)

end

end A323132.P3420128954403255468

/-!
# A323133: Number of symmetric uncrossed unrooted knight's paths of length n on an infinite board.

The programs for A323133, there is no canonical definition to state claims against.
-/

/-! ## A323133.P1112240136319967960

`or(A000010(A018353(n+1)), A018305(n+1))`
-/

namespace A323133.P1112240136319967960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000010 (A018353 (n + 1)).toNat) (A018305 (n + 1))

end

end A323133.P1112240136319967960

/-! ## A323133.P9758197833835356677

`or(A000010(A018353(n+1)), A018396(n+1))`
-/

namespace A323133.P9758197833835356677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000010 (A018353 (n + 1)).toNat) (A018396 (n + 1))

end

end A323133.P9758197833835356677

/-!
# A323134: Number of polygons made of uncrossed knight's paths of length 2*n on an infinite board.

The programs for A323134, there is no canonical definition to state claims against.
-/

/-! ## A323134.P10817569042107108811

`A034448(A228513(n))-A291844(n)`
-/

namespace A323134.P10817569042107108811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A228513 n).toNat - A291844 n

end

end A323134.P10817569042107108811

/-!
# A323135: a(n) is the least number of iterations that n requires to reach a power of a prime under the map x -> A070229(x), or -1 if we never reach a power of a prime.

The programs for A323135, there is no canonical definition to state claims against.
-/

/-! ## A323135.P11982594278415899578

`((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)%A114538(A344971(n+1))`
-/

namespace A323135.P11982594278415899578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1)) (A114538 (A344971 (n + 1)).toNat)

end

end A323135.P11982594278415899578

/-! ## A323135.P16137948069310735113

`A213911(A030032(n)*A243055(n+1))`
-/

namespace A323135.P16137948069310735113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A030032 n * A243055 (n + 1)).toNat

end

end A323135.P16137948069310735113

/-! ## A323135.P6093509366026764845

`A124767(A242411(n+1)*A334271(n))`
-/

namespace A323135.P6093509366026764845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A242411 (n + 1) * A334271 n).toNat

end

end A323135.P6093509366026764845

/-! ## A323135.P13328974839417249721

`A284051(A119288(n+1)^A000700(n))`
-/

namespace A323135.P13328974839417249721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284051 (SequenceMachineLib.roundAway ((A119288 (n + 1) : ℚ) ^ (A000700 n : ℤ))).toNat

end

end A323135.P13328974839417249721

/-! ## A323135.P2233912878539727475

`A004273(A006053(n))%A340677(n+1)`
-/

namespace A323135.P2233912878539727475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (A006053 n).toNat) (A340677 (n + 1))

end

end A323135.P2233912878539727475

/-!
# A323136: a(n) is the least power of a prime that n reaches under the map x -> A070229(x), or -1 if we never reach a power of a prime.

The programs for A323136, there is no canonical definition to state claims against.
-/

/-! ## A323136.P4536705131791664084

`A068795(n+1)-A046660(A008965(n+1))`
-/

namespace A323136.P4536705131791664084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068795 (n + 1) - A046660 (A008965 (n + 1)).toNat

end

end A323136.P4536705131791664084

/-! ## A323136.P9670379450332033294

`A068795(n+1)-A084099(A000799(n+1))`
-/

namespace A323136.P9670379450332033294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068795 (n + 1) - A084099 (A000799 (n + 1)).toNat

end

end A323136.P9670379450332033294

/-! ## A323136.P10685790401598885848

`A130064(n+1)+A004788(A134409(A349933(n)))`
-/

namespace A323136.P10685790401598885848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130064 (n + 1) + A004788 (A134409 (A349933 n).toNat).toNat

end

end A323136.P10685790401598885848

/-! ## A323136.P17261132731630584610

`A130064(or(A034684(n+1), A187829(n+1)))`
-/

namespace A323136.P17261132731630584610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130064 (Int.lor (A034684 (n + 1)) (A187829 (n + 1))).toNat

end

end A323136.P17261132731630584610

/-!
# A323137: Largest prime that is both left-truncatable and right-truncatable in base n.

The programs for A323137, there is no canonical definition to state claims against.
-/

/-! ## A323137.P4241189030550873851

`A323396(∑[A323390(n+3)]+2)`
-/

namespace A323137.P4241189030550873851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323390 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323396 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A323137.P4241189030550873851

/-! ## A323137.P1109744495343735530

`p?[2-Δ[A323396(n+3)]]`
-/

namespace A323137.P1109744495343735530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323396 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A323137.P1109744495343735530

/-!
# A323139: Integers that are not multiples of 6 and are the sum of two consecutive primes.

The programs for A323139, the canonical program `A323139.P7464966325480586250` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323139 has offset 1).

The definition of A323139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4021 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323139.P7464966325480586250

`A001043(eq[1, gcd(3, A001043(n+1))]+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A323139

/-- `A001043(eq[1, gcd(3, A001043(n+1))]+1)` -/
def P7464966325480586250.Spec : Prop :=
  ∀ n, P7464966325480586250.a n = A323139 (n + 1)

theorem P7464966325480586250.correct : P7464966325480586250.Spec := by
  intro n
  simp only [A323139, Nat.add_sub_cancel]

end A323139

/-! ## A323139.P7639193729032205235

`∩[A001043(n+1), A005004(n+1)]`
-/

namespace A323139.P7639193729032205235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323139.P7639193729032205235

namespace A323139

/-- `∩[A001043(n+1), A005004(n+1)]` -/
def P7639193729032205235.Spec : Prop :=
  ∀ n, (P7639193729032205235.a n : ℤ) = A323139 (n + 1)

end A323139

/-! ## A323139.P6394853782227169146

`∩[A005004(n+1), A011974(n+1)]`
-/

namespace A323139.P6394853782227169146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323139.P6394853782227169146

namespace A323139

/-- `∩[A005004(n+1), A011974(n+1)]` -/
def P6394853782227169146.Spec : Prop :=
  ∀ n, (P6394853782227169146.a n : ℤ) = A323139 (n + 1)

end A323139

/-! ## A323139.P16332747662058976989

`∩[A001043(n+1), A276706(n+1)]`
-/

namespace A323139.P16332747662058976989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323139.P16332747662058976989

namespace A323139

/-- `∩[A001043(n+1), A276706(n+1)]` -/
def P16332747662058976989.Spec : Prop :=
  ∀ n, (P16332747662058976989.a n : ℤ) = A323139 (n + 1)

end A323139

/-! ## A323139.P14800542082591235507

`filter[A001043(n+1), A097325(#)]`
-/

namespace A323139.P14800542082591235507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A323139.P14800542082591235507

namespace A323139

/-- `filter[A001043(n+1), A097325(#)]` -/
def P14800542082591235507.Spec : Prop :=
  ∀ n, P14800542082591235507.a n = A323139 (n + 1)

end A323139

/-! ## A323139.P4115379063006488484

`filter[A011974(n+2), A097325(#)]`
-/

namespace A323139.P4115379063006488484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A323139.P4115379063006488484

namespace A323139

/-- `filter[A011974(n+2), A097325(#)]` -/
def P4115379063006488484.Spec : Prop :=
  ∀ n, P4115379063006488484.a n = A323139 (n + 1)

end A323139

/-! ## A323139.P17046903751980937192

`filter[A069102(n+3), A097325(#)]`
-/

namespace A323139.P17046903751980937192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069102 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A323139.P17046903751980937192

namespace A323139

/-- `filter[A069102(n+3), A097325(#)]` -/
def P17046903751980937192.Spec : Prop :=
  ∀ n, P17046903751980937192.a n = A323139 (n + 1)

end A323139

/-! ## A323139.P15286213157010295752

`filter[A164653(n+3), A097325(#)]`
-/

namespace A323139.P15286213157010295752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A323139.P15286213157010295752

namespace A323139

/-- `filter[A164653(n+3), A097325(#)]` -/
def P15286213157010295752.Spec : Prop :=
  ∀ n, P15286213157010295752.a n = A323139 (n + 1)

end A323139

/-! ## A323139.P436674339294319842

`A013635(A327748(n+1))`
-/

namespace A323139.P436674339294319842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (A327748 (n + 1)).toNat

end

end A323139.P436674339294319842

namespace A323139

/-- `A013635(A327748(n+1))` -/
def P436674339294319842.Spec : Prop :=
  ∀ n, P436674339294319842.a n = A323139 (n + 1)

end A323139

/-! ## A323139.P3295699546776354247

`∩[A001043(n+1), A047261(n+1)]`
-/

namespace A323139.P3295699546776354247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323139.P3295699546776354247

namespace A323139

/-- `∩[A001043(n+1), A047261(n+1)]` -/
def P3295699546776354247.Spec : Prop :=
  ∀ n, (P3295699546776354247.a n : ℤ) = A323139 (n + 1)

end A323139

/-! ## A323139.P207985201505346797

`∩[A047261(n+1), A164653(n+1)]`
-/

namespace A323139.P207985201505346797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323139.P207985201505346797

namespace A323139

/-- `∩[A047261(n+1), A164653(n+1)]` -/
def P207985201505346797.Spec : Prop :=
  ∀ n, (P207985201505346797.a n : ℤ) = A323139 (n + 1)

end A323139

/-! ## A323139.P5755096636269143412

`∩[A001043(n+1), A134191(n+1)]`
-/

namespace A323139.P5755096636269143412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323139.P5755096636269143412

namespace A323139

/-- `∩[A001043(n+1), A134191(n+1)]` -/
def P5755096636269143412.Spec : Prop :=
  ∀ n, (P5755096636269143412.a n : ℤ) = A323139 (n + 1)

end A323139

/-! ## A323139.P5377196210474541913

`∩[A134191(n+1), A164653(n+1)]`
-/

namespace A323139.P5377196210474541913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323139.P5377196210474541913

namespace A323139

/-- `∩[A134191(n+1), A164653(n+1)]` -/
def P5377196210474541913.Spec : Prop :=
  ∀ n, (P5377196210474541913.a n : ℤ) = A323139 (n + 1)

end A323139

/-! ## A323139.P10219230065286555413

`∩[A001043(n+1), A001651(n+1)]`
-/

namespace A323139.P10219230065286555413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323139.P10219230065286555413

namespace A323139

/-- `∩[A001043(n+1), A001651(n+1)]` -/
def P10219230065286555413.Spec : Prop :=
  ∀ n, (P10219230065286555413.a n : ℤ) = A323139 (n + 1)

end A323139

/-! ## A323139.P15837656466836257990

`∩[A001043(n+1), A047247(n+1)]`
-/

namespace A323139.P15837656466836257990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323139.P15837656466836257990

namespace A323139

/-- `∩[A001043(n+1), A047247(n+1)]` -/
def P15837656466836257990.Spec : Prop :=
  ∀ n, (P15837656466836257990.a n : ℤ) = A323139 (n + 1)

end A323139

/-! ## A323139.P4569716629387010879

`∩[A001043(n+1), A047253(n+1)]`
-/

namespace A323139.P4569716629387010879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323139.P4569716629387010879

namespace A323139

/-- `∩[A001043(n+1), A047253(n+1)]` -/
def P4569716629387010879.Spec : Prop :=
  ∀ n, (P4569716629387010879.a n : ℤ) = A323139 (n + 1)

end A323139

/-! ## A323139.P17118969486318826027

`record[A091684(A001043(n+1))]`
-/

namespace A323139.P17118969486318826027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A001043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323139.P17118969486318826027

namespace A323139

/-- `record[A091684(A001043(n+1))]` -/
def P17118969486318826027.Spec : Prop :=
  ∀ n, P17118969486318826027.a n = A323139 (n + 1)

end A323139

/-! ## A323139.P15461997557712031081

`record[A091684(A011974(n+2))]`
-/

namespace A323139.P15461997557712031081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A011974 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323139.P15461997557712031081

namespace A323139

/-- `record[A091684(A011974(n+2))]` -/
def P15461997557712031081.Spec : Prop :=
  ∀ n, P15461997557712031081.a n = A323139 (n + 1)

end A323139

/-! ## A323139.P18415030748573434946

`filter[A001043(n+1), A011655(#)]`
-/

namespace A323139.P18415030748573434946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A323139.P18415030748573434946

namespace A323139

/-- `filter[A001043(n+1), A011655(#)]` -/
def P18415030748573434946.Spec : Prop :=
  ∀ n, P18415030748573434946.a n = A323139 (n + 1)

end A323139

/-! ## A323139.P7700469330097480109

`filter[A001043(n+1), A131735(#)]`
-/

namespace A323139.P7700469330097480109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131735 (f1 j).toNat = 1) n)

end

end A323139.P7700469330097480109

namespace A323139

/-- `filter[A001043(n+1), A131735(#)]` -/
def P7700469330097480109.Spec : Prop :=
  ∀ n, P7700469330097480109.a n = A323139 (n + 1)

end A323139

/-!
# A323140: Number of uncrossed king's paths of length n, reduced for symmetry, A272773/8.

The programs for A323140, there is no canonical definition to state claims against.
-/

/-! ## A323140.P4137997882570402682

`A272773(n+1)/8`
-/

namespace A323140.P4137997882570402682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272773 (n + 1) : ℚ) / 8

end

end A323140.P4137997882570402682

/-! ## A323140.P998778718642745592

`record[ratio[A272773(A193592(n))]]`
-/

namespace A323140.P998778718642745592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272773 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323140.P998778718642745592

/-! ## A323140.P4645223265244323724

`record[ratio[A272773(A253641(n))]]`
-/

namespace A323140.P4645223265244323724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272773 (A253641 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323140.P4645223265244323724

/-! ## A323140.P6635087773142668401

`record[ratio[A272773(A200370(n+1))]]`
-/

namespace A323140.P6635087773142668401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272773 (A200370 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323140.P6635087773142668401

/-!
# A323141: Number of self-trapped uncrossed king's paths on an infinite board after n steps, reduced for symmetry.

The programs for A323141, there is no canonical definition to state claims against.
-/

/-! ## A323141.P17010299804069445534

`∑[A001617(A012718(n)+n)]`
-/

namespace A323141.P17010299804069445534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A012718 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323141.P17010299804069445534

/-! ## A323141.P2523929333068456092

`floor(A326351(n)/17)`
-/

namespace A323141.P2523929333068456092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326351 n : ℚ) / 17⌋

end

end A323141.P2523929333068456092

/-! ## A323141.P6125564796854666414

`∑{p}[A212804(C(n, 3)), #]`
-/

namespace A323141.P6125564796854666414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (Nat.choose n 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A323141.P6125564796854666414

/-!
# A323152: a(n) = 1 if sigma(n) is divisible by all proper divisors of n, 0 otherwise.

The programs for A323152, the canonical program `A323152.P11338555144213092166` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323152 has offset 1).

The definition of A323152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323152.P18075245384139301816

`char[lt[A054024(n+1), 2]]`
-/

namespace A323152.P18075245384139301816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A323152.P18075245384139301816

namespace A323152

/-- `char[lt[A054024(n+1), 2]]` -/
def P18075245384139301816.Spec : Prop :=
  ∀ n, (P18075245384139301816.a n : ℤ) = A323152 (n + 1)

end A323152

/-! ## A323152.P16188398055436997133

`C(2, 2*A173438(n+1))`
-/

namespace A323152.P16188398055436997133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A173438 (n + 1)).toNat

end

end A323152.P16188398055436997133

namespace A323152

/-- `C(2, 2*A173438(n+1))` -/
def P16188398055436997133.Spec : Prop :=
  ∀ n, (P16188398055436997133.a n : ℤ) = A323152 (n + 1)

end A323152

/-! ## A323152.P12043791342505168233

`C(2, 2*A000203(n+1)%(n+1))`
-/

namespace A323152.P12043791342505168233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * Int.tmod (A000203 (n + 1)) (n + 1 : ℤ)).toNat

end

end A323152.P12043791342505168233

namespace A323152

/-- `C(2, 2*A000203(n+1)%(n+1))` -/
def P12043791342505168233.Spec : Prop :=
  ∀ n, (P12043791342505168233.a n : ℤ) = A323152 (n + 1)

end A323152

/-! ## A323152.P10397021891902357277

`A000089(∑{d}[n+1, #]%(n+1)+1)%2`
-/

namespace A323152.P10397021891902357277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000089 ((∑ d ∈ Nat.divisors (f1 n), d) % (n + 1) + 1)) 2

end

end A323152.P10397021891902357277

namespace A323152

/-- `A000089(∑{d}[n+1, #]%(n+1)+1)%2` -/
def P10397021891902357277.Spec : Prop :=
  ∀ n, P10397021891902357277.a n = A323152 (n + 1)

end A323152

/-! ## A323152.P2507196396365111479

`A019590(A054024(n+1)+1)`
-/

namespace A323152.P2507196396365111479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A054024 (n + 1) + 1).toNat

end

end A323152.P2507196396365111479

namespace A323152

/-- `A019590(A054024(n+1)+1)` -/
def P2507196396365111479.Spec : Prop :=
  ∀ n, P2507196396365111479.a n = A323152 (n + 1)

end A323152

/-! ## A323152.P12692175188986776260

`A316341(or(1, A054024(n+1)))`
-/

namespace A323152.P12692175188986776260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (Int.lor 1 (A054024 (n + 1))).toNat

end

end A323152.P12692175188986776260

namespace A323152

/-- `A316341(or(1, A054024(n+1)))` -/
def P12692175188986776260.Spec : Prop :=
  ∀ n, P12692175188986776260.a n = A323152 (n + 1)

end A323152

/-! ## A323152.P11338555144213092166

`A000045(C(2, A054024(n+1)²))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A323152

/-- `A000045(C(2, A054024(n+1)²))` -/
def P11338555144213092166.Spec : Prop :=
  ∀ n, P11338555144213092166.a n = A323152 (n + 1)

theorem P11338555144213092166.correct : P11338555144213092166.Spec := by
  intro n
  simp only [A323152, Nat.add_sub_cancel]

end A323152

/-! ## A323152.P11726540221277044073

`A000045(C(2, A054024(n+1)+1))`
-/

namespace A323152.P11726540221277044073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A054024 (n + 1) + 1).toNat)

end

end A323152.P11726540221277044073

namespace A323152

/-- `A000045(C(2, A054024(n+1)+1))` -/
def P11726540221277044073.Spec : Prop :=
  ∀ n, P11726540221277044073.a n = A323152 (n + 1)

end A323152

/-! ## A323152.P16524546055339002432

`A243473(C(2, A243473(n+1))+1)`
-/

namespace A323152.P16524546055339002432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243473 (Nat.choose 2 (A243473 (n + 1)).toNat + 1)

end

end A323152.P16524546055339002432

namespace A323152

/-- `A243473(C(2, A243473(n+1))+1)` -/
def P16524546055339002432.Spec : Prop :=
  ∀ n, P16524546055339002432.a n = A323152 (n + 1)

end A323152

/-! ## A323152.P9285059766524943680

`C(A001222(n+1), A173438(n+1)²²)`
-/

namespace A323152.P9285059766524943680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat ((A173438 (n + 1) ^ 2) ^ 2).toNat

end

end A323152.P9285059766524943680

namespace A323152

/-- `C(A001222(n+1), A173438(n+1)²²)` -/
def P9285059766524943680.Spec : Prop :=
  ∀ n, (P9285059766524943680.a n : ℤ) = A323152 (n + 1)

end A323152

/-! ## A323152.P406567927347237905

`C(A006530(n+1), (n+1)*A326194(n+1))`
-/

namespace A323152.P406567927347237905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat ((n + 1 : ℤ) * A326194 (n + 1)).toNat

end

end A323152.P406567927347237905

namespace A323152

/-- `C(A006530(n+1), (n+1)*A326194(n+1))` -/
def P406567927347237905.Spec : Prop :=
  ∀ n, (P406567927347237905.a n : ℤ) = A323152 (n + 1)

end A323152

/-! ## A323152.P11197931289770061902

`C(A054024(A151800(n)), A054024(n+1))`
-/

namespace A323152.P11197931289770061902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A054024 (A151800 n).toNat).toNat (A054024 (n + 1)).toNat

end

end A323152.P11197931289770061902

namespace A323152

/-- `C(A054024(A151800(n)), A054024(n+1))` -/
def P11197931289770061902.Spec : Prop :=
  ∀ n, (P11197931289770061902.a n : ℤ) = A323152 (n + 1)

end A323152

/-! ## A323152.P12486643159958153401

`∏{p}[A054024(n+1), A054024(A054024(#))]`
-/

namespace A323152.P12486643159958153401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A054024 (A054024 p).toNat

end

end A323152.P12486643159958153401

namespace A323152

/-- `∏{p}[A054024(n+1), A054024(A054024(#))]` -/
def P12486643159958153401.Spec : Prop :=
  ∀ n, P12486643159958153401.a n = A323152 (n + 1)

end A323152

/-! ## A323152.P11777609030619708091

`A004530((A173438(n+1)-1)*A173438(n+1))`
-/

namespace A323152.P11777609030619708091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 ((A173438 (n + 1) - 1) * A173438 (n + 1)).toNat

end

end A323152.P11777609030619708091

namespace A323152

/-- `A004530((A173438(n+1)-1)*A173438(n+1))` -/
def P11777609030619708091.Spec : Prop :=
  ∀ n, P11777609030619708091.a n = A323152 (n + 1)

end A323152

/-! ## A323152.P2951814159414316726

`C(A001222(A001222(n+1)+1), A173438(n+1))`
-/

namespace A323152.P2951814159414316726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A001222 (n + 1) + 1).toNat).toNat (A173438 (n + 1)).toNat

end

end A323152.P2951814159414316726

namespace A323152

/-- `C(A001222(A001222(n+1)+1), A173438(n+1))` -/
def P2951814159414316726.Spec : Prop :=
  ∀ n, (P2951814159414316726.a n : ℤ) = A323152 (n + 1)

end A323152

/-! ## A323152.P11119663839672797410

`C(A173438(A173438(n+1)+1), A173438(n+1))`
-/

namespace A323152.P11119663839672797410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A173438 (A173438 (n + 1) + 1).toNat).toNat (A173438 (n + 1)).toNat

end

end A323152.P11119663839672797410

namespace A323152

/-- `C(A173438(A173438(n+1)+1), A173438(n+1))` -/
def P11119663839672797410.Spec : Prop :=
  ∀ n, (P11119663839672797410.a n : ℤ) = A323152 (n + 1)

end A323152

/-! ## A323152.P15569780295892016285

`C(A001222(A002144(n+1)), A054024(n+1))`
-/

namespace A323152.P15569780295892016285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A002144 (n + 1)).toNat).toNat (A054024 (n + 1)).toNat

end

end A323152.P15569780295892016285

namespace A323152

/-- `C(A001222(A002144(n+1)), A054024(n+1))` -/
def P15569780295892016285.Spec : Prop :=
  ∀ n, (P15569780295892016285.a n : ℤ) = A323152 (n + 1)

end A323152

/-! ## A323152.P14859737427507144771

`C(A001222(A031157(n+1)), A054024(n+1))`
-/

namespace A323152.P14859737427507144771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A031157 (n + 1)).toNat).toNat (A054024 (n + 1)).toNat

end

end A323152.P14859737427507144771

namespace A323152

/-- `C(A001222(A031157(n+1)), A054024(n+1))` -/
def P14859737427507144771.Spec : Prop :=
  ∀ n, (P14859737427507144771.a n : ℤ) = A323152 (n + 1)

end A323152

/-! ## A323152.P1896349387026576140

`C(A089840(A292587(n+1)), A054024(n+1))`
-/

namespace A323152.P1896349387026576140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A089840 (A292587 (n + 1)).toNat).toNat (A054024 (n + 1)).toNat

end

end A323152.P1896349387026576140

namespace A323152

/-- `C(A089840(A292587(n+1)), A054024(n+1))` -/
def P1896349387026576140.Spec : Prop :=
  ∀ n, (P1896349387026576140.a n : ℤ) = A323152 (n + 1)

end A323152

/-! ## A323152.P4839870710680386783

`A097806(A024816(n+1)+n)`
-/

namespace A323152.P4839870710680386783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (A024816 (n + 1) + (n : ℤ)).toNat

end

end A323152.P4839870710680386783

namespace A323152

/-- `A097806(A024816(n+1)+n)` -/
def P4839870710680386783.Spec : Prop :=
  ∀ n, P4839870710680386783.a n = A323152 (n + 1)

end A323152

/-!
# A323153: a(n) = 1 if n is either a prime or a perfect number, 0 otherwise.

The programs for A323153, the canonical program `A323153.P4915408121958090859` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323153 has offset 1).

The definition of A323153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323153.P4915408121958090859

`char[A053813(n+1)-1]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A323153

/-- `char[A053813(n+1)-1]` -/
def P4915408121958090859.Spec : Prop :=
  ∀ n, (P4915408121958090859.a n : ℤ) = A323153 (n + 1)

theorem P4915408121958090859.correct : P4915408121958090859.Spec := by
  intro n
  simp only [A323153, Nat.add_sub_cancel]

end A323153

/-! ## A323153.P10909087759267506845

`char[eq[1, A325826(n+1)]]`
-/

namespace A323153.P10909087759267506845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325826 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A323153.P10909087759267506845

namespace A323153

/-- `char[eq[1, A325826(n+1)]]` -/
def P10909087759267506845.Spec : Prop :=
  ∀ n, (P10909087759267506845.a n : ℤ) = A323153 (n + 1)

end A323153

/-! ## A323153.P7010336457095133008

`char[eq[1, A325969(n+1)]]`
-/

namespace A323153.P7010336457095133008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325969 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A323153.P7010336457095133008

namespace A323153

/-- `char[eq[1, A325969(n+1)]]` -/
def P7010336457095133008.Spec : Prop :=
  ∀ n, (P7010336457095133008.a n : ℤ) = A323153 (n + 1)

end A323153

/-! ## A323153.P3429642211149130146

`char[record[gcd(n, A033879(n+1))]]`
-/

namespace A323153.P3429642211149130146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A033879 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A323153.P3429642211149130146

namespace A323153

/-- `char[record[gcd(n, A033879(n+1))]]` -/
def P3429642211149130146.Spec : Prop :=
  ∀ n, (P3429642211149130146.a n : ℤ) = A323153 (n + 1)

end A323153

/-! ## A323153.P10345715746429206873

`C(A166260(n+1), abs(2*n+2-∑{d}[n+1, #]))`
-/

namespace A323153.P10345715746429206873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A166260 (n + 1)).toNat |(2 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))|.toNat

end

end A323153.P10345715746429206873

namespace A323153

/-- `C(A166260(n+1), abs(2*n+2-∑{d}[n+1, #]))` -/
def P10345715746429206873.Spec : Prop :=
  ∀ n, (P10345715746429206873.a n : ℤ) = A323153 (n + 1)

end A323153

/-! ## A323153.P6109869208047614532

`A063524(A325969(n+1))`
-/

namespace A323153.P6109869208047614532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A325969 (n + 1)).toNat

end

end A323153.P6109869208047614532

namespace A323153

/-- `A063524(A325969(n+1))` -/
def P6109869208047614532.Spec : Prop :=
  ∀ n, P6109869208047614532.a n = A323153 (n + 1)

end A323153

/-! ## A323153.P17997496863642221823

`∑{d}[A243473(n+1), A008683(#)]`
-/

namespace A323153.P17997496863642221823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A323153.P17997496863642221823

namespace A323153

/-- `∑{d}[A243473(n+1), A008683(#)]` -/
def P17997496863642221823.Spec : Prop :=
  ∀ n, P17997496863642221823.a n = A323153 (n + 1)

end A323153

/-! ## A323153.P4597942997695412156

`A001222(A089026(n+1))^A318507(n+1)`
-/

namespace A323153.P4597942997695412156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A089026 (n + 1)).toNat : ℚ) ^ (A318507 (n + 1) : ℤ)

end

end A323153.P4597942997695412156

namespace A323153

/-- `A001222(A089026(n+1))^A318507(n+1)` -/
def P4597942997695412156.Spec : Prop :=
  ∀ n, P4597942997695412156.a n = (A323153 (n + 1) : ℚ)

end A323153

/-! ## A323153.P4872306512329019346

`C(A001221(A100994(n+1)), A318507(n+1))`
-/

namespace A323153.P4872306512329019346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001221 (A100994 (n + 1)).toNat).toNat (A318507 (n + 1)).toNat

end

end A323153.P4872306512329019346

namespace A323153

/-- `C(A001221(A100994(n+1)), A318507(n+1))` -/
def P4872306512329019346.Spec : Prop :=
  ∀ n, (P4872306512329019346.a n : ℤ) = A323153 (n + 1)

end A323153

/-! ## A323153.P13484203416368744002

`∏{d}[1-A243473(n+1), A243473(#)]`
-/

namespace A323153.P13484203416368744002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A243473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A243473 d

end

end A323153.P13484203416368744002

namespace A323153

/-- `∏{d}[1-A243473(n+1), A243473(#)]` -/
def P13484203416368744002.Spec : Prop :=
  ∀ n, P13484203416368744002.a n = A323153 (n + 1)

end A323153

/-! ## A323153.P7532859260022181534

`val(A000040(n+2), A000040(A325969(n+1)+n+1))`
-/

namespace A323153.P7532859260022181534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 2)).toNat (A000040 (A325969 (n + 1) + (n : ℤ) + 1).toNat).toNat

end

end A323153.P7532859260022181534

namespace A323153

/-- `val(A000040(n+2), A000040(A325969(n+1)+n+1))` -/
def P7532859260022181534.Spec : Prop :=
  ∀ n, (P7532859260022181534.a n : ℤ) = A323153 (n + 1)

end A323153

/-! ## A323153.P7541501974398990815

`val(A067747(A325969(n+1)+n+1), A067747(n+2))`
-/

namespace A323153.P7541501974398990815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A067747 (A325969 (n + 1) + (n : ℤ) + 1).toNat).toNat (A067747 (n + 2)).toNat

end

end A323153.P7541501974398990815

namespace A323153

/-- `val(A067747(A325969(n+1)+n+1), A067747(n+2))` -/
def P7541501974398990815.Spec : Prop :=
  ∀ n, (P7541501974398990815.a n : ℤ) = A323153 (n + 1)

end A323153

/-! ## A323153.P10504402610007628692

`(1/A243500(A325969(n+1)+1))^A254845(n+1)`
-/

namespace A323153.P10504402610007628692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / (A243500 (A325969 (n + 1) + 1).toNat : ℚ)) ^ (A254845 (n + 1) : ℤ)

end

end A323153.P10504402610007628692

namespace A323153

/-- `(1/A243500(A325969(n+1)+1))^A254845(n+1)` -/
def P10504402610007628692.Spec : Prop :=
  ∀ n, P10504402610007628692.a n = (A323153 (n + 1) : ℚ)

end A323153

/-! ## A323153.P13437923376573416024

`∏{d}[1-A003023(n+1), A003023(#)]`
-/

namespace A323153.P13437923376573416024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A003023 d

end

end A323153.P13437923376573416024

namespace A323153

/-- `∏{d}[1-A003023(n+1), A003023(#)]` -/
def P13437923376573416024.Spec : Prop :=
  ∀ n, P13437923376573416024.a n = A323153 (n + 1)

end A323153

/-! ## A323153.P13624933991842892637

`and(A025259(A323152(n+1)+n), A323152(n+1))`
-/

namespace A323153.P13624933991842892637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025259 (A323152 (n + 1) + (n : ℤ)).toNat) (A323152 (n + 1))

end

end A323153.P13624933991842892637

namespace A323153

/-- `and(A025259(A323152(n+1)+n), A323152(n+1))` -/
def P13624933991842892637.Spec : Prop :=
  ∀ n, P13624933991842892637.a n = A323153 (n + 1)

end A323153

/-! ## A323153.P2638321245624304952

`and(A025259(n+1), A323152(n+1))`
-/

namespace A323153.P2638321245624304952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025259 (n + 1)) (A323152 (n + 1))

end

end A323153.P2638321245624304952

namespace A323153

/-- `and(A025259(n+1), A323152(n+1))` -/
def P2638321245624304952.Spec : Prop :=
  ∀ n, P2638321245624304952.a n = A323153 (n + 1)

end A323153

/-! ## A323153.P1297387502048231099

`and(A025242(A323152(n+1)+n), A323152(n+1))`
-/

namespace A323153.P1297387502048231099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025242 (A323152 (n + 1) + (n : ℤ)).toNat) (A323152 (n + 1))

end

end A323153.P1297387502048231099

namespace A323153

/-- `and(A025242(A323152(n+1)+n), A323152(n+1))` -/
def P1297387502048231099.Spec : Prop :=
  ∀ n, P1297387502048231099.a n = A323153 (n + 1)

end A323153

/-! ## A323153.P11480409912126533576

`and(A025242(n+1), A323152(n+1))`
-/

namespace A323153.P11480409912126533576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025242 (n + 1)) (A323152 (n + 1))

end

end A323153.P11480409912126533576

namespace A323153

/-- `and(A025242(n+1), A323152(n+1))` -/
def P11480409912126533576.Spec : Prop :=
  ∀ n, P11480409912126533576.a n = A323153 (n + 1)

end A323153

/-! ## A323153.P12398320914514542191

`A004530(A000032(A003023(n+1)))`
-/

namespace A323153.P12398320914514542191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A000032 (A003023 (n + 1)).toNat).toNat

end

end A323153.P12398320914514542191

namespace A323153

/-- `A004530(A000032(A003023(n+1)))` -/
def P12398320914514542191.Spec : Prop :=
  ∀ n, P12398320914514542191.a n = A323153 (n + 1)

end A323153

/-! ## A323153.P13863109393505758713

`and(A076051(n+1), A323152(n+1))`
-/

namespace A323153.P13863109393505758713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076051 (n + 1)) (A323152 (n + 1))

end

end A323153.P13863109393505758713

namespace A323153

/-- `and(A076051(n+1), A323152(n+1))` -/
def P13863109393505758713.Spec : Prop :=
  ∀ n, P13863109393505758713.a n = A323153 (n + 1)

end A323153

/-!
# A323154: a(n) = 1 if n divides A048146(n) = (sigma(n)-usigma(n)), 0 otherwise.

The programs for A323154, the canonical program `A323154.P14116477510633869356` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323154 has offset 1).

The definition of A323154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323154.P8864596810513302792

`floor(acot(A048146(n+1)%(n+1)))`
-/

namespace A323154.P8864596810513302792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.tmod (A048146 (n + 1)) (n + 1 : ℤ) : ℝ)⌋

end

end A323154.P8864596810513302792

namespace A323154

/-- `floor(acot(A048146(n+1)%(n+1)))` -/
def P8864596810513302792.Spec : Prop :=
  ∀ n, P8864596810513302792.a n = A323154 (n + 1)

end A323154

/-! ## A323154.P14116477510633869356

`A000007(A048146(n+1)%(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A323154

/-- `A000007(A048146(n+1)%(n+1))` -/
def P14116477510633869356.Spec : Prop :=
  ∀ n, P14116477510633869356.a n = A323154 (n + 1)

theorem P14116477510633869356.correct : P14116477510633869356.Spec := by
  intro n
  simp only [A323154, Nat.add_sub_cancel]

end A323154

/-! ## A323154.P16210740875901194044

`C(gcd(n+1, A348732(n+1)-A348029(n+1)), n+1)`
-/

namespace A323154.P16210740875901194044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd (n + 1 : ℤ) (A348732 (n + 1) - A348029 (n + 1))) (n + 1)

end

end A323154.P16210740875901194044

namespace A323154

/-- `C(gcd(n+1, A348732(n+1)-A348029(n+1)), n+1)` -/
def P16210740875901194044.Spec : Prop :=
  ∀ n, (P16210740875901194044.a n : ℤ) = A323154 (n + 1)

end A323154

/-! ## A323154.P10416391111028190880

`A000007((2*A325974(n+1)-A162296(n+1))%A061019(n+1))`
-/

namespace A323154.P10416391111028190880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (2 * A325974 (n + 1) - A162296 (n + 1)) (A061019 (n + 1))).toNat

end

end A323154.P10416391111028190880

namespace A323154

/-- `A000007((2*A325974(n+1)-A162296(n+1))%A061019(n+1))` -/
def P10416391111028190880.Spec : Prop :=
  ∀ n, P10416391111028190880.a n = A323154 (n + 1)

end A323154

/-! ## A323154.P11616002195547747632

`val(A020205(n+1), A020205(A007947(n+1)))`
-/

namespace A323154.P11616002195547747632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020205 (n + 1)).toNat (A020205 (A007947 (n + 1)).toNat).toNat

end

end A323154.P11616002195547747632

namespace A323154

/-- `val(A020205(n+1), A020205(A007947(n+1)))` -/
def P11616002195547747632.Spec : Prop :=
  ∀ n, (P11616002195547747632.a n : ℤ) = A323154 (n + 1)

end A323154

/-! ## A323154.P11792654510149701297

`∏{d}[A048146(n+1)*A325814(n+1), A048146(#)]`
-/

namespace A323154.P11792654510149701297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1) * A325814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A048146 d

end

end A323154.P11792654510149701297

namespace A323154

/-- `∏{d}[A048146(n+1)*A325814(n+1), A048146(#)]` -/
def P11792654510149701297.Spec : Prop :=
  ∀ n, P11792654510149701297.a n = A323154 (n + 1)

end A323154

/-! ## A323154.P14069207482259409037

`A073424(A325814(n+1)+∑[n])`
-/

namespace A323154.P14069207482259409037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A325814 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A323154.P14069207482259409037

namespace A323154

/-- `A073424(A325814(n+1)+∑[n])` -/
def P14069207482259409037.Spec : Prop :=
  ∀ n, P14069207482259409037.a n = A323154 (n + 1)

end A323154

/-! ## A323154.P10046009863920185176

`∏{d}[A162296(n+1)*A325814(n+1), A162296(#)]`
-/

namespace A323154.P10046009863920185176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1) * A325814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A162296 d

end

end A323154.P10046009863920185176

namespace A323154

/-- `∏{d}[A162296(n+1)*A325814(n+1), A162296(#)]` -/
def P10046009863920185176.Spec : Prop :=
  ∀ n, P10046009863920185176.a n = A323154 (n + 1)

end A323154

/-! ## A323154.P14940778350813111999

`∏{d}[A325814(n+1)*A325974(n+1), A325974(#)]`
-/

namespace A323154.P14940778350813111999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1) * A325974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A325974 d

end

end A323154.P14940778350813111999

namespace A323154

/-- `∏{d}[A325814(n+1)*A325974(n+1), A325974(#)]` -/
def P14940778350813111999.Spec : Prop :=
  ∀ n, P14940778350813111999.a n = A323154 (n + 1)

end A323154

/-! ## A323154.P2797482528148165490

`∏{d}[A325814(n+1), A048146(#+1)^A048146(n+1)]`
-/

namespace A323154.P2797482528148165490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (A048146 (d + 1) : ℚ) ^ (A048146 (n + 1) : ℤ)

end

end A323154.P2797482528148165490

namespace A323154

/-- `∏{d}[A325814(n+1), A048146(#+1)^A048146(n+1)]` -/
def P2797482528148165490.Spec : Prop :=
  ∀ n, P2797482528148165490.a n = (A323154 (n + 1) : ℚ)

end A323154

/-! ## A323154.P13243289556499465618

`A133100((n-2)*A066503(n+1))`
-/

namespace A323154.P13243289556499465618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133100 (((n : ℤ) - 2) * A066503 (n + 1)).toNat

end

end A323154.P13243289556499465618

namespace A323154

/-- `A133100((n-2)*A066503(n+1))` -/
def P13243289556499465618.Spec : Prop :=
  ∀ n, P13243289556499465618.a n = A323154 (n + 1)

end A323154

/-! ## A323154.P15286072345825947696

`A000161((A007913(n+1)-n)²-1)`
-/

namespace A323154.P15286072345825947696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 ((A007913 (n + 1) - (n : ℤ)) ^ 2 - 1).toNat

end

end A323154.P15286072345825947696

namespace A323154

/-- `A000161((A007913(n+1)-n)²-1)` -/
def P15286072345825947696.Spec : Prop :=
  ∀ n, P15286072345825947696.a n = A323154 (n + 1)

end A323154

/-! ## A323154.P1309061360225778775

`A133100(A066503(n+1)+A066503(n+1)²)`
-/

namespace A323154.P1309061360225778775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133100 (A066503 (n + 1) + A066503 (n + 1) ^ 2).toNat

end

end A323154.P1309061360225778775

namespace A323154

/-- `A133100(A066503(n+1)+A066503(n+1)²)` -/
def P1309061360225778775.Spec : Prop :=
  ∀ n, P1309061360225778775.a n = A323154 (n + 1)

end A323154

/-! ## A323154.P8047910014732732079

`(A157658(n+1)^(A179752(n)-A106493(A305419(n+2))))²`
-/

namespace A323154.P8047910014732732079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A157658 (n + 1) : ℚ) ^ (A179752 n - A106493 (A305419 (n + 2)).toNat : ℤ)) ^ 2

end

end A323154.P8047910014732732079

namespace A323154

/-- `(A157658(n+1)^(A179752(n)-A106493(A305419(n+2))))²` -/
def P8047910014732732079.Spec : Prop :=
  ∀ n, P8047910014732732079.a n = (A323154 (n + 1) : ℚ)

end A323154

/-!
# A323156: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = A323155(n) for all n, except f(1) = 0.

The programs for A323156, there is no canonical definition to state claims against.
-/

/-! ## A323156.P8149879494067535791

`A323157(n+1)+A051903(A322702(n+1))`
-/

namespace A323156.P8149879494067535791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323157 (n + 1) + A051903 (A322702 (n + 1)).toNat

end

end A323156.P8149879494067535791

/-!
# A323157: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = A000265(A323155(n)) for all n, except with f(1) = 0.

The programs for A323157, there is no canonical definition to state claims against.
-/

/-! ## A323157.P2557917029476159535

`A233583(A323156(n*a(n-1)-n+1))` with `a(0)=1`
-/

namespace A323157.P2557917029476159535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A233583 (A323156 ((n : ℤ) * a (n - 1) - (n : ℤ) + 1).toNat).toNat

end

end A323157.P2557917029476159535

/-! ## A323157.P13875666910330974130

`A003056(A007590(A323156(n+1))+1)`
-/

namespace A323157.P13875666910330974130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A007590 (A323156 (n + 1)).toNat + 1).toNat

end

end A323157.P13875666910330974130

/-! ## A323157.P16716995080323006345

`A003056(A008619(A323156(n+1)²))`
-/

namespace A323157.P16716995080323006345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A008619 (A323156 (n + 1) ^ 2).toNat).toNat

end

end A323157.P16716995080323006345

/-! ## A323157.P2877188817433249727

`A233583(A323156(n+1))^A052409(n²+1)`
-/

namespace A323157.P2877188817433249727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (A323156 (n + 1)).toNat : ℚ) ^ (A052409 (n ^ 2 + 1) : ℤ)

end

end A323157.P2877188817433249727

/-! ## A323157.P1504455841373756363

`A233583(A323156(n+1))-A209229(n²+2)`
-/

namespace A323157.P1504455841373756363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A323156 (n + 1)).toNat - A209229 (n ^ 2 + 2)

end

end A323157.P1504455841373756363

/-! ## A323157.P11166424128366682017

`A233583(A323156(n+1))-A000007(n²)`
-/

namespace A323157.P11166424128366682017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A323156 (n + 1)).toNat - A000007 (n ^ 2)

end

end A323157.P11166424128366682017

/-!
# A323158: If n is a square, a(n) = 1-(n mod 2), otherwise a(n) = (n mod 2); a(n) = A049820(n) mod 2, where A049820(n) = n - number of divisors of n.

The programs for A323158, the canonical program `A323158.P16175357172864216776` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323158 has offset 1).

The definition of A323158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323158.P16175357172864216776

`A049820(n+1)%2`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A323158

/-- `A049820(n+1)%2` -/
def P16175357172864216776.Spec : Prop :=
  ∀ n, P16175357172864216776.a n = A323158 (n + 1)

theorem P16175357172864216776.correct : P16175357172864216776.Spec := by
  intro n
  simp only [A323158, Nat.add_sub_cancel]

end A323158

/-! ## A323158.P6272620192863403123

`(n+1-A000005(n+1))%2`
-/

namespace A323158.P6272620192863403123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - A000005 (n + 1)) 2

end

end A323158.P6272620192863403123

namespace A323158

/-- `(n+1-A000005(n+1))%2` -/
def P6272620192863403123.Spec : Prop :=
  ∀ n, P6272620192863403123.a n = A323158 (n + 1)

end A323158

/-! ## A323158.P4533736055224082463

`A000035(A049820(n+1))`
-/

namespace A323158.P4533736055224082463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A049820 (n + 1)).toNat

end

end A323158.P4533736055224082463

namespace A323158

/-- `A000035(A049820(n+1))` -/
def P4533736055224082463.Spec : Prop :=
  ∀ n, P4533736055224082463.a n = A323158 (n + 1)

end A323158

/-! ## A323158.P7411935421760829263

`A000035(n+1+A010052(n+1))`
-/

namespace A323158.P7411935421760829263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n + 1 : ℤ) + A010052 (n + 1)).toNat

end

end A323158.P7411935421760829263

namespace A323158

/-- `A000035(n+1+A010052(n+1))` -/
def P7411935421760829263.Spec : Prop :=
  ∀ n, P7411935421760829263.a n = A323158 (n + 1)

end A323158

/-! ## A323158.P4139389227689837132

`1-and(1, Δ[floor(sqrt(n))]-n)`
-/

namespace A323158.P4139389227689837132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ))

end

end A323158.P4139389227689837132

namespace A323158

/-- `1-and(1, Δ[floor(sqrt(n))]-n)` -/
def P4139389227689837132.Spec : Prop :=
  ∀ n, P4139389227689837132.a n = A323158 (n + 1)

end A323158

/-! ## A323158.P12916794917843621695

`∑{d}[n+1, 2%#/2]%2`
-/

namespace A323158.P12916794917843621695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), ((2 % d : ℕ) : ℚ) / 2)) 2

end

end A323158.P12916794917843621695

namespace A323158

/-- `∑{d}[n+1, 2%#/2]%2` -/
def P12916794917843621695.Spec : Prop :=
  ∀ n, P12916794917843621695.a n = A323158 (n + 1)

end A323158

/-! ## A323158.P10359102935129698204

`(n+1-char[n²-1])%2`
-/

namespace A323158.P10359102935129698204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) 2

end

end A323158.P10359102935129698204

namespace A323158

/-- `(n+1-char[n²-1])%2` -/
def P10359102935129698204.Spec : Prop :=
  ∀ n, P10359102935129698204.a n = A323158 (n + 1)

end A323158

/-! ## A323158.P17522783260290051265

`and(1, A023645(n+1))`
-/

namespace A323158.P17522783260290051265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A023645 (n + 1))

end

end A323158.P17522783260290051265

namespace A323158

/-- `and(1, A023645(n+1))` -/
def P17522783260290051265.Spec : Prop :=
  ∀ n, P17522783260290051265.a n = A323158 (n + 1)

end A323158

/-! ## A323158.P13480204234616794223

`and(1, A062249(n+1))`
-/

namespace A323158.P13480204234616794223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A062249 (n + 1))

end

end A323158.P13480204234616794223

namespace A323158

/-- `and(1, A062249(n+1))` -/
def P13480204234616794223.Spec : Prop :=
  ∀ n, P13480204234616794223.a n = A323158 (n + 1)

end A323158

/-! ## A323158.P5758849524686461077

`and(1, A316355(n)+n)`
-/

namespace A323158.P5758849524686461077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A316355 n + (n : ℤ))

end

end A323158.P5758849524686461077

namespace A323158

/-- `and(1, A316355(n)+n)` -/
def P5758849524686461077.Spec : Prop :=
  ∀ n, P5758849524686461077.a n = A323158 (n + 1)

end A323158

/-! ## A323158.P12458938561865061809

`gcd(2, A062968(n+1))-1`
-/

namespace A323158.P12458938561865061809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A062968 (n + 1)) : ℤ) - 1

end

end A323158.P12458938561865061809

namespace A323158

/-- `gcd(2, A062968(n+1))-1` -/
def P12458938561865061809.Spec : Prop :=
  ∀ n, P12458938561865061809.a n = A323158 (n + 1)

end A323158

/-! ## A323158.P18223231905033178611

`and(1, A076984(n+1)+1)`
-/

namespace A323158.P18223231905033178611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A076984 (n + 1) + 1)

end

end A323158.P18223231905033178611

namespace A323158

/-- `and(1, A076984(n+1)+1)` -/
def P18223231905033178611.Spec : Prop :=
  ∀ n, P18223231905033178611.a n = A323158 (n + 1)

end A323158

/-! ## A323158.P1507080074580458413

`and(1, A007445(n+1)+n)`
-/

namespace A323158.P1507080074580458413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007445 (n + 1) + (n : ℤ))

end

end A323158.P1507080074580458413

namespace A323158

/-- `and(1, A007445(n+1)+n)` -/
def P1507080074580458413.Spec : Prop :=
  ∀ n, P1507080074580458413.a n = A323158 (n + 1)

end A323158

/-! ## A323158.P17426311074775865195

`and(1, A023049(n+1)+n)`
-/

namespace A323158.P17426311074775865195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A023049 (n + 1) + (n : ℤ))

end

end A323158.P17426311074775865195

namespace A323158

/-- `and(1, A023049(n+1)+n)` -/
def P17426311074775865195.Spec : Prop :=
  ∀ n, P17426311074775865195.a n = A323158 (n + 1)

end A323158

/-! ## A323158.P9178959987704884552

`and(1, A037852(n+1)+n)`
-/

namespace A323158.P9178959987704884552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A037852 (n + 1) + (n : ℤ))

end

end A323158.P9178959987704884552

namespace A323158

/-- `and(1, A037852(n+1)+n)` -/
def P9178959987704884552.Spec : Prop :=
  ∀ n, P9178959987704884552.a n = A323158 (n + 1)

end A323158

/-! ## A323158.P226282788428778989

`and(1, A049240(n+1)+n)`
-/

namespace A323158.P226282788428778989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A049240 (n + 1) + (n : ℤ))

end

end A323158.P226282788428778989

namespace A323158

/-- `and(1, A049240(n+1)+n)` -/
def P226282788428778989.Spec : Prop :=
  ∀ n, P226282788428778989.a n = A323158 (n + 1)

end A323158

/-! ## A323158.P13905605522422345669

`and(1, A052409(n+1)+n)`
-/

namespace A323158.P13905605522422345669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A052409 (n + 1) + (n : ℤ))

end

end A323158.P13905605522422345669

namespace A323158

/-- `and(1, A052409(n+1)+n)` -/
def P13905605522422345669.Spec : Prop :=
  ∀ n, P13905605522422345669.a n = A323158 (n + 1)

end A323158

/-! ## A323158.P1110285511812445729

`and(1, A084115(n+1)+n)`
-/

namespace A323158.P1110285511812445729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A084115 (n + 1) + (n : ℤ))

end

end A323158.P1110285511812445729

namespace A323158

/-- `and(1, A084115(n+1)+n)` -/
def P1110285511812445729.Spec : Prop :=
  ∀ n, P1110285511812445729.a n = A323158 (n + 1)

end A323158

/-! ## A323158.P4388226661089131455

`and(1, A158052(n+1)+n)`
-/

namespace A323158.P4388226661089131455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A158052 (n + 1) + (n : ℤ))

end

end A323158.P4388226661089131455

namespace A323158

/-- `and(1, A158052(n+1)+n)` -/
def P4388226661089131455.Spec : Prop :=
  ∀ n, P4388226661089131455.a n = A323158 (n + 1)

end A323158

/-!
# A323159: Greatest common divisor of product (1+(p^e)) and product (1+p), where p ranges over prime factors of n, with e corresponding exponent; a(n) = gcd(A034448(n), A048250(n)).

The programs for A323159, the canonical program `A323159.P15063359225251792079` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323159 has offset 1).

The definition of A323159 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323159.P15063359225251792079

`gcd(A034448(n+1), A048250(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A323159

/-- `gcd(A034448(n+1), A048250(n+1))` -/
def P15063359225251792079.Spec : Prop :=
  ∀ n, (P15063359225251792079.a n : ℤ) = A323159 (n + 1)

theorem P15063359225251792079.correct : P15063359225251792079.Spec := by
  intro n
  simp only [A323159, Nat.add_sub_cancel]

end A323159

/-! ## A323159.P5731114062272202659

`gcd(∏{p}[n+1, #+1]-(n+1)-A034460(n+1), ∏{p}[n+1, #+1])`
-/

namespace A323159.P5731114062272202659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) - (n + 1 : ℤ) - A034460 (n + 1)) ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)

end

end A323159.P5731114062272202659

namespace A323159

/-- `gcd(∏{p}[n+1, #+1]-(n+1)-A034460(n+1), ∏{p}[n+1, #+1])` -/
def P5731114062272202659.Spec : Prop :=
  ∀ n, (P5731114062272202659.a n : ℤ) = A323159 (n + 1)

end A323159

/-! ## A323159.P3265990703706889747

`A034448(n+1)/A389074(n+1)`
-/

namespace A323159.P3265990703706889747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A389074 (n + 1) : ℚ)

end

end A323159.P3265990703706889747

namespace A323159

/-- `A034448(n+1)/A389074(n+1)` -/
def P3265990703706889747.Spec : Prop :=
  ∀ n, P3265990703706889747.a n = (A323159 (n + 1) : ℚ)

end A323159

/-! ## A323159.P8120752062374790994

`A048250(n+1)/A389075(n+1)`
-/

namespace A323159.P8120752062374790994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A389075 (n + 1) : ℚ)

end

end A323159.P8120752062374790994

namespace A323159

/-- `A048250(n+1)/A389075(n+1)` -/
def P8120752062374790994.Spec : Prop :=
  ∀ n, P8120752062374790994.a n = (A323159 (n + 1) : ℚ)

end A323159

/-! ## A323159.P6721470531224218712

`gcd(A323363(n+1), A348732(n+1))`
-/

namespace A323159.P6721470531224218712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323363 (n + 1)) (A348732 (n + 1))

end

end A323159.P6721470531224218712

namespace A323159

/-- `gcd(A323363(n+1), A348732(n+1))` -/
def P6721470531224218712.Spec : Prop :=
  ∀ n, (P6721470531224218712.a n : ℤ) = A323159 (n + 1)

end A323159

/-! ## A323159.P18032365488427549581

`gcd(2*A048250(n+1), A348733(n+1))`
-/

namespace A323159.P18032365488427549581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A048250 (n + 1)) (A348733 (n + 1))

end

end A323159.P18032365488427549581

namespace A323159

/-- `gcd(2*A048250(n+1), A348733(n+1))` -/
def P18032365488427549581.Spec : Prop :=
  ∀ n, (P18032365488427549581.a n : ℤ) = A323159 (n + 1)

end A323159

/-! ## A323159.P13772447431160999657

`A034448(n+1)/A158274(A003557(n+1))`
-/

namespace A323159.P13772447431160999657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A158274 (A003557 (n + 1)).toNat : ℚ)

end

end A323159.P13772447431160999657

namespace A323159

/-- `A034448(n+1)/A158274(A003557(n+1))` -/
def P13772447431160999657.Spec : Prop :=
  ∀ n, P13772447431160999657.a n = (A323159 (n + 1) : ℚ)

end A323159

/-! ## A323159.P10469861905637445169

`gcd(A048250(A000027(n+1)), A348733(n+1))`
-/

namespace A323159.P10469861905637445169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048250 (A000027 (n + 1)).toNat) (A348733 (n + 1))

end

end A323159.P10469861905637445169

namespace A323159

/-- `gcd(A048250(A000027(n+1)), A348733(n+1))` -/
def P10469861905637445169.Spec : Prop :=
  ∀ n, (P10469861905637445169.a n : ℤ) = A323159 (n + 1)

end A323159

/-! ## A323159.P7534807733756851164

`(A389162(n+1)+A048250(n+1))/A389074(n+1)`
-/

namespace A323159.P7534807733756851164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389162 (n + 1) + A048250 (n + 1) : ℚ) / (A389074 (n + 1) : ℚ)

end

end A323159.P7534807733756851164

namespace A323159

/-- `(A389162(n+1)+A048250(n+1))/A389074(n+1)` -/
def P7534807733756851164.Spec : Prop :=
  ∀ n, P7534807733756851164.a n = (A323159 (n + 1) : ℚ)

end A323159

/-! ## A323159.P9805858659610897346

`(A034448(n+1)-A389162(n+1))/A389075(n+1)`
-/

namespace A323159.P9805858659610897346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) - A389162 (n + 1) : ℚ) / (A389075 (n + 1) : ℚ)

end

end A323159.P9805858659610897346

namespace A323159

/-- `(A034448(n+1)-A389162(n+1))/A389075(n+1)` -/
def P9805858659610897346.Spec : Prop :=
  ∀ n, P9805858659610897346.a n = (A323159 (n + 1) : ℚ)

end A323159

/-! ## A323159.P17546959220742198951

`A348733(n+1)*A348735(n+1)/A389074(n+1)`
-/

namespace A323159.P17546959220742198951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348733 (n + 1) * A348735 (n + 1) : ℚ) / (A389074 (n + 1) : ℚ)

end

end A323159.P17546959220742198951

namespace A323159

/-- `A348733(n+1)*A348735(n+1)/A389074(n+1)` -/
def P17546959220742198951.Spec : Prop :=
  ∀ n, P17546959220742198951.a n = (A323159 (n + 1) : ℚ)

end A323159

/-! ## A323159.P1887085415470714661

`gcd(A034460(n+1)+1+n, A028310(A048250(n+1)))`
-/

namespace A323159.P1887085415470714661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034460 (n + 1) + 1 + (n : ℤ)) (A028310 (A048250 (n + 1)).toNat)

end

end A323159.P1887085415470714661

namespace A323159

/-- `gcd(A034460(n+1)+1+n, A028310(A048250(n+1)))` -/
def P1887085415470714661.Spec : Prop :=
  ∀ n, (P1887085415470714661.a n : ℤ) = A323159 (n + 1)

end A323159

/-! ## A323159.P8629300379764565044

`gcd(A345451(n+1)+1, A000203(A336643((n+1)²)))`
-/

namespace A323159.P8629300379764565044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A345451 (n + 1) + 1) (A000203 (A336643 ((n + 1) ^ 2)).toNat)

end

end A323159.P8629300379764565044

namespace A323159

/-- `gcd(A345451(n+1)+1, A000203(A336643((n+1)²)))` -/
def P8629300379764565044.Spec : Prop :=
  ∀ n, (P8629300379764565044.a n : ℤ) = A323159 (n + 1)

end A323159

/-! ## A323159.P6635522497929996910

`gcd(A074400(n+1), A295295((n+1)²))`
-/

namespace A323159.P6635522497929996910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074400 (n + 1)) (A295295 ((n + 1) ^ 2))

end

end A323159.P6635522497929996910

namespace A323159

/-- `gcd(A074400(n+1), A295295((n+1)²))` -/
def P6635522497929996910.Spec : Prop :=
  ∀ n, (P6635522497929996910.a n : ℤ) = A323159 (n + 1)

end A323159

/-! ## A323159.P17234419029624300456

`gcd(A107749(n+1), A323363(A181797(n+1)))`
-/

namespace A323159.P17234419029624300456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107749 (n + 1)) (A323363 (A181797 (n + 1)).toNat)

end

end A323159.P17234419029624300456

namespace A323159

/-- `gcd(A107749(n+1), A323363(A181797(n+1)))` -/
def P17234419029624300456.Spec : Prop :=
  ∀ n, (P17234419029624300456.a n : ℤ) = A323159 (n + 1)

end A323159

/-! ## A323159.P8104939236635299634

`gcd(A048250((n+1)²), A049417(n+1))`
-/

namespace A323159.P8104939236635299634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048250 ((n + 1) ^ 2)) (A049417 (n + 1))

end

end A323159.P8104939236635299634

namespace A323159

/-- `gcd(A048250((n+1)²), A049417(n+1))` -/
def P8104939236635299634.Spec : Prop :=
  ∀ n, (P8104939236635299634.a n : ℤ) = A323159 (n + 1)

end A323159

/-! ## A323159.P17886915018395683445

`A348733(A066990(n+1)%A227649(n+1))`
-/

namespace A323159.P17886915018395683445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348733 (Int.tmod (A066990 (n + 1)) (A227649 (n + 1))).toNat

end

end A323159.P17886915018395683445

namespace A323159

/-- `A348733(A066990(n+1)%A227649(n+1))` -/
def P17886915018395683445.Spec : Prop :=
  ∀ n, P17886915018395683445.a n = A323159 (n + 1)

end A323159

/-!
# A323160: a(n) = gcd(n, A323159(n)) = gcd(n, A034448(n), A048250(n)).

The programs for A323160, the canonical program `A323160.P16832328256614807770` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323160 has offset 1).

The definition of A323160 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323159, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323160.P16832328256614807770

`gcd(n+1, A323159(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A323160

/-- `gcd(n+1, A323159(n+1))` -/
def P16832328256614807770.Spec : Prop :=
  ∀ n, (P16832328256614807770.a n : ℤ) = A323160 (n + 1)

theorem P16832328256614807770.correct : P16832328256614807770.Spec := by
  intro n
  simp only [A323160, Nat.add_sub_cancel]

end A323160

/-! ## A323160.P4725552022672182099

`gcd(A048250(n+1), A323166(n+1))`
-/

namespace A323160.P4725552022672182099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048250 (n + 1)) (A323166 (n + 1))

end

end A323160.P4725552022672182099

namespace A323160

/-- `gcd(A048250(n+1), A323166(n+1))` -/
def P4725552022672182099.Spec : Prop :=
  ∀ n, (P4725552022672182099.a n : ℤ) = A323160 (n + 1)

end A323160

/-! ## A323160.P5436671948875161942

`gcd(A034448(n+1), A126795(n+1))`
-/

namespace A323160.P5436671948875161942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034448 (n + 1)) (A126795 (n + 1))

end

end A323160.P5436671948875161942

namespace A323160

/-- `gcd(A034448(n+1), A126795(n+1))` -/
def P5436671948875161942.Spec : Prop :=
  ∀ n, (P5436671948875161942.a n : ℤ) = A323160 (n + 1)

end A323160

/-! ## A323160.P15597498997929120991

`gcd(2*A325973(n+1), A323166(1-(n-2*n)))`
-/

namespace A323160.P15597498997929120991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A325973 (n + 1)) (A323166 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A323160.P15597498997929120991

namespace A323160

/-- `gcd(2*A325973(n+1), A323166(1-(n-2*n)))` -/
def P15597498997929120991.Spec : Prop :=
  ∀ n, (P15597498997929120991.a n : ℤ) = A323160 (n + 1)

end A323160

/-! ## A323160.P5644767130048692770

`gcd(A063919(n+1), A126795(A000027(n+1)))`
-/

namespace A323160.P5644767130048692770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063919 (n + 1)) (A126795 (A000027 (n + 1)).toNat)

end

end A323160.P5644767130048692770

namespace A323160

/-- `gcd(A063919(n+1), A126795(A000027(n+1)))` -/
def P5644767130048692770.Spec : Prop :=
  ∀ n, (P5644767130048692770.a n : ℤ) = A323160 (n + 1)

end A323160

/-! ## A323160.P12639651147101982498

`gcd(2*A325973(n+1), A000027(A323166(n+1)))`
-/

namespace A323160.P12639651147101982498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A325973 (n + 1)) (A000027 (A323166 (n + 1)).toNat)

end

end A323160.P12639651147101982498

namespace A323160

/-- `gcd(2*A325973(n+1), A000027(A323166(n+1)))` -/
def P12639651147101982498.Spec : Prop :=
  ∀ n, (P12639651147101982498.a n : ℤ) = A323160 (n + 1)

end A323160

/-! ## A323160.P16917007920859212374

`lcm(A111616(n+1), A325975(n+1))`
-/

namespace A323160.P16917007920859212374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A111616 (n + 1)) (A325975 (n + 1))

end

end A323160.P16917007920859212374

namespace A323160

/-- `lcm(A111616(n+1), A325975(n+1))` -/
def P16917007920859212374.Spec : Prop :=
  ∀ n, (P16917007920859212374.a n : ℤ) = A323160 (n + 1)

end A323160

/-! ## A323160.P16887175010507869275

`gcd(A131209(n), A348733(n+1))`
-/

namespace A323160.P16887175010507869275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131209 n) (A348733 (n + 1))

end

end A323160.P16887175010507869275

namespace A323160

/-- `gcd(A131209(n), A348733(n+1))` -/
def P16887175010507869275.Spec : Prop :=
  ∀ n, (P16887175010507869275.a n : ℤ) = A323160 (n + 1)

end A323160

/-!
# A323161: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j) for all i, j, where f(n<=3) = -n, f(n) = 0 if n-1 is an odd prime, and f(n) = floor((n-1)/2) for all other numbers.

The programs for A323161, there is no canonical definition to state claims against.
-/

/-! ## A323161.P10059884484547602730

`A322809(A028310(n))+A057427(n)`
-/

namespace A323161.P10059884484547602730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (A028310 n).toNat + A057427 n

end

end A323161.P10059884484547602730

/-! ## A323161.P1672437892948803073

`A322809(A028310(n))-A057428(n)`
-/

namespace A323161.P1672437892948803073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (A028310 n).toNat - A057428 n

end

end A323161.P1672437892948803073

/-! ## A323161.P18260168858774667449

`A322809(n)+a(A278648(A014963(n)))` with `a(0)=1`
-/

namespace A323161.P18260168858774667449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322809 n + a (A278648 (A014963 n).toNat).toNat

end

end A323161.P18260168858774667449

/-! ## A323161.P5925089992993675023

`A322809(A000007(n)+n)+A057427(n)`
-/

namespace A323161.P5925089992993675023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (A000007 n + (n : ℤ)).toNat + A057427 n

end

end A323161.P5925089992993675023

/-! ## A323161.P16111791309428225892

`A322809(A028310(n))+char[A322809(n+1)]`
-/

namespace A323161.P16111791309428225892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323161.P16111791309428225892

/-! ## A323161.P13494985786466980860

`A322809(A028310(n))+A005171(2*(n+1))`
-/

namespace A323161.P13494985786466980860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (A028310 n).toNat + A005171 (2 * (n + 1))

end

end A323161.P13494985786466980860

/-! ## A323161.P18217625321460461578

`A322809(A028310(n))+A046675(floor(1/(n+1)))`
-/

namespace A323161.P18217625321460461578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (A028310 n).toNat + A046675 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A323161.P18217625321460461578

/-! ## A323161.P12609967942626103926

`A322809(A028310(n))+A001221(A001316(n))`
-/

namespace A323161.P12609967942626103926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (A028310 n).toNat + A001221 (A001316 n).toNat

end

end A323161.P12609967942626103926

/-! ## A323161.P12546162629291948652

`A322809(A028310(n))+A001222(A006005(n+1))`
-/

namespace A323161.P12546162629291948652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (A028310 n).toNat + A001222 (A006005 (n + 1)).toNat

end

end A323161.P12546162629291948652

/-!
# A323162: a(n) = 1 if both n and n-1 are composite, 0 otherwise.

The programs for A323162, the canonical program `A323162.P4199434762193306250` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323162 has offset 1).

The definition of A323162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323162.P9317155540137546535

`A055976(or(1, n))`
-/

namespace A323162.P9317155540137546535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055976 (Nat.lor 1 n)

end

end A323162.P9317155540137546535

namespace A323162

/-- `A055976(or(1, n))` -/
def P9317155540137546535.Spec : Prop :=
  ∀ n, P9317155540137546535.a n = A323162 (n + 1)

end A323162

/-! ## A323162.P4199434762193306250

`A066247(or(1, n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A323162

/-- `A066247(or(1, n))` -/
def P4199434762193306250.Spec : Prop :=
  ∀ n, P4199434762193306250.a n = A323162 (n + 1)

theorem P4199434762193306250.correct : P4199434762193306250.Spec := by
  intro n
  simp only [A323162, Nat.add_sub_cancel]

end A323162

/-! ## A323162.P8531144078718008642

`A202238(or(1, n))`
-/

namespace A323162.P8531144078718008642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202238 (Nat.lor 1 n)

end

end A323162.P8531144078718008642

namespace A323162

/-- `A202238(or(1, n))` -/
def P8531144078718008642.Spec : Prop :=
  ∀ n, P8531144078718008642.a n = A323162 (n + 1)

end A323162

/-! ## A323162.P16776735726769956710

`char[A068780(n+1)]`
-/

namespace A323162.P16776735726769956710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323162.P16776735726769956710

namespace A323162

/-- `char[A068780(n+1)]` -/
def P16776735726769956710.Spec : Prop :=
  ∀ n, (P16776735726769956710.a n : ℤ) = A323162 (n + 1)

end A323162

/-! ## A323162.P5748266390903804056

`1-A080339(or(1, n))`
-/

namespace A323162.P5748266390903804056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080339 (Nat.lor 1 n)

end

end A323162.P5748266390903804056

namespace A323162

/-- `1-A080339(or(1, n))` -/
def P5748266390903804056.Spec : Prop :=
  ∀ n, P5748266390903804056.a n = A323162 (n + 1)

end A323162

/-! ## A323162.P12738635991163430584

`1-A080545(or(1, n))`
-/

namespace A323162.P12738635991163430584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080545 (Nat.lor 1 n)

end

end A323162.P12738635991163430584

namespace A323162

/-- `1-A080545(or(1, n))` -/
def P12738635991163430584.Spec : Prop :=
  ∀ n, P12738635991163430584.a n = A323162 (n + 1)

end A323162

/-! ## A323162.P3567992751761756687

`A095248(or(1, n))-1`
-/

namespace A323162.P3567992751761756687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095248 (Nat.lor 1 n) - 1

end

end A323162.P3567992751761756687

namespace A323162

/-- `A095248(or(1, n))-1` -/
def P3567992751761756687.Spec : Prop :=
  ∀ n, P3567992751761756687.a n = A323162 (n + 1)

end A323162

/-! ## A323162.P9659228860890218632

`1-A323152(or(1, n))`
-/

namespace A323162.P9659228860890218632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A323152 (Nat.lor 1 n)

end

end A323162.P9659228860890218632

namespace A323162

/-- `1-A323152(or(1, n))` -/
def P9659228860890218632.Spec : Prop :=
  ∀ n, P9659228860890218632.a n = A323162 (n + 1)

end A323162

/-! ## A323162.P5659638939739732464

`floor(atan(A001222(or(1, n))))`
-/

namespace A323162.P5659638939739732464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A001222 (Nat.lor 1 n) : ℝ)⌋

end

end A323162.P5659638939739732464

namespace A323162

/-- `floor(atan(A001222(or(1, n))))` -/
def P5659638939739732464.Spec : Prop :=
  ∀ n, P5659638939739732464.a n = A323162 (n + 1)

end A323162

/-! ## A323162.P11527412636478208424

`floor(A121561(n+1)/2)`
-/

namespace A323162.P11527412636478208424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121561 (n + 1) : ℚ) / 2⌋

end

end A323162.P11527412636478208424

namespace A323162

/-- `floor(A121561(n+1)/2)` -/
def P11527412636478208424.Spec : Prop :=
  ∀ n, P11527412636478208424.a n = A323162 (n + 1)

end A323162

/-! ## A323162.P9817772745261972213

`char[lt[2, A175851(n+1)]]`
-/

namespace A323162.P9817772745261972213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A323162.P9817772745261972213

namespace A323162

/-- `char[lt[2, A175851(n+1)]]` -/
def P9817772745261972213.Spec : Prop :=
  ∀ n, (P9817772745261972213.a n : ℤ) = A323162 (n + 1)

end A323162

/-! ## A323162.P16068996644257220585

`char[lt[n, n*A007920(n)]]`
-/

namespace A323162.P16068996644257220585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007920 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A323162.P16068996644257220585

namespace A323162

/-- `char[lt[n, n*A007920(n)]]` -/
def P16068996644257220585.Spec : Prop :=
  ∀ n, (P16068996644257220585.a n : ℤ) = A323162 (n + 1)

end A323162

/-! ## A323162.P8939348367931242667

`1-C(2, A076290(or(1, n)))`
-/

namespace A323162.P8939348367931242667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (A076290 (Nat.lor 1 n)).toNat : ℤ)

end

end A323162.P8939348367931242667

namespace A323162

/-- `1-C(2, A076290(or(1, n)))` -/
def P8939348367931242667.Spec : Prop :=
  ∀ n, P8939348367931242667.a n = A323162 (n + 1)

end A323162

/-! ## A323162.P15873647560558944678

`A292438(a(n-1)+n)` with `a(0)=0, a(1)=0`
-/

namespace A323162.P15873647560558944678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A292438 (a (n - 1) + (n : ℤ)).toNat

end

end A323162.P15873647560558944678

namespace A323162

/-- `A292438(a(n-1)+n)` -/
def P15873647560558944678.Spec : Prop :=
  ∀ n, P15873647560558944678.a n = A323162 (n + 1)

end A323162

/-! ## A323162.P15442663010665233864

`floor(atan(A001222(char[2*n]+n)))`
-/

namespace A323162.P15442663010665233864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A001222 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℝ)⌋

end

end A323162.P15442663010665233864

namespace A323162

/-- `floor(atan(A001222(char[2*n]+n)))` -/
def P15442663010665233864.Spec : Prop :=
  ∀ n, P15442663010665233864.a n = A323162 (n + 1)

end A323162

/-! ## A323162.P9482883022651104796

`A055976(A109613(n))`
-/

namespace A323162.P9482883022651104796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055976 (A109613 n).toNat

end

end A323162.P9482883022651104796

namespace A323162

/-- `A055976(A109613(n))` -/
def P9482883022651104796.Spec : Prop :=
  ∀ n, P9482883022651104796.a n = A323162 (n + 1)

end A323162

/-! ## A323162.P6330499496810311234

`A005171(A085885(n+2))`
-/

namespace A323162.P6330499496810311234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A085885 (n + 2)).toNat

end

end A323162.P6330499496810311234

namespace A323162

/-- `A005171(A085885(n+2))` -/
def P6330499496810311234.Spec : Prop :=
  ∀ n, P6330499496810311234.a n = A323162 (n + 1)

end A323162

/-! ## A323162.P15567379462899236615

`A157928(A078772(n+2))`
-/

namespace A323162.P15567379462899236615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A078772 (n + 2)).toNat

end

end A323162.P15567379462899236615

namespace A323162

/-- `A157928(A078772(n+2))` -/
def P15567379462899236615.Spec : Prop :=
  ∀ n, P15567379462899236615.a n = A323162 (n + 1)

end A323162

/-! ## A323162.P5051342430623813267

`A005171(A267458(n)+2)`
-/

namespace A323162.P5051342430623813267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A267458 n + 2).toNat

end

end A323162.P5051342430623813267

namespace A323162

/-- `A005171(A267458(n)+2)` -/
def P5051342430623813267.Spec : Prop :=
  ∀ n, P5051342430623813267.a n = A323162 (n + 1)

end A323162

/-! ## A323162.P5751917973119405362

`A066247(A059841(n)+n)`
-/

namespace A323162.P5751917973119405362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A059841 n + (n : ℤ)).toNat

end

end A323162.P5751917973119405362

namespace A323162

/-- `A066247(A059841(n)+n)` -/
def P5751917973119405362.Spec : Prop :=
  ∀ n, P5751917973119405362.a n = A323162 (n + 1)

end A323162

/-!
# A323163: Greatest common divisor of product (1+(p^e)) and product p^(e-1), where p ranges over prime factors of n, with e corresponding exponent; a(n) = gcd(A034448(n), A003557(n)).

The programs for A323163, the canonical program `A323163.P4975270130842201010` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323163 has offset 1).

The definition of A323163 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323163.P12798868881291010320

`gcd(A003557(n+1), A034448(n+1))`
-/

namespace A323163.P12798868881291010320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003557 (n + 1)) (A034448 (n + 1))

end

end A323163.P12798868881291010320

namespace A323163

/-- `gcd(A003557(n+1), A034448(n+1))` -/
def P12798868881291010320.Spec : Prop :=
  ∀ n, (P12798868881291010320.a n : ℤ) = A323163 (n + 1)

end A323163

/-! ## A323163.P4975270130842201010

`gcd(A034448(n+1), A003557(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A323163

/-- `gcd(A034448(n+1), A003557(n+1))` -/
def P4975270130842201010.Spec : Prop :=
  ∀ n, (P4975270130842201010.a n : ℤ) = A323163 (n + 1)

theorem P4975270130842201010.correct : P4975270130842201010.Spec := by
  intro n
  simp only [A323163, Nat.add_sub_cancel]

end A323163

/-! ## A323163.P1312201353918271352

`gcd((n+1)/∏{p}[n+1, #], A034460(n+1))`
-/

namespace A323163.P1312201353918271352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A034460 (n + 1))

end

end A323163.P1312201353918271352

namespace A323163

/-- `gcd((n+1)/∏{p}[n+1, #], A034460(n+1))` -/
def P1312201353918271352.Spec : Prop :=
  ∀ n, (P1312201353918271352.a n : ℤ) = A323163 (n + 1)

end A323163

/-! ## A323163.P4181825360590932683

`gcd(ceil((n+1)/∏{p}[n+1, #]), A063919(n+1))`
-/

namespace A323163.P4181825360590932683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌉ (A063919 (n + 1))

end

end A323163.P4181825360590932683

namespace A323163

/-- `gcd(ceil((n+1)/∏{p}[n+1, #]), A063919(n+1))` -/
def P4181825360590932683.Spec : Prop :=
  ∀ n, (P4181825360590932683.a n : ℤ) = A323163 (n + 1)

end A323163

/-! ## A323163.P14191000597821007141

`A003557(n+1)/A003557(A332883(n+1))`
-/

namespace A323163.P14191000597821007141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) / (A003557 (A332883 (n + 1)).toNat : ℚ)

end

end A323163.P14191000597821007141

namespace A323163

/-- `A003557(n+1)/A003557(A332883(n+1))` -/
def P14191000597821007141.Spec : Prop :=
  ∀ n, P14191000597821007141.a n = (A323163 (n + 1) : ℚ)

end A323163

/-! ## A323163.P17925852596830715065

`gcd(A000027(A003557(n+1)), A129468(n+1))`
-/

namespace A323163.P17925852596830715065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A003557 (n + 1)).toNat) (A129468 (n + 1))

end

end A323163.P17925852596830715065

namespace A323163

/-- `gcd(A000027(A003557(n+1)), A129468(n+1))` -/
def P17925852596830715065.Spec : Prop :=
  ∀ n, (P17925852596830715065.a n : ℤ) = A323163 (n + 1)

end A323163

/-! ## A323163.P10931855393960975728

`A098008(A029081(A322318(n+1)²))`
-/

namespace A323163.P10931855393960975728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (A029081 (A322318 (n + 1) ^ 2).toNat).toNat

end

end A323163.P10931855393960975728

namespace A323163

/-- `A098008(A029081(A322318(n+1)²))` -/
def P10931855393960975728.Spec : Prop :=
  ∀ n, P10931855393960975728.a n = A323163 (n + 1)

end A323163

/-! ## A323163.P4213318131884128479

`A322318(n+1)%A259930(7*A322318(n+1))`
-/

namespace A323163.P4213318131884128479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322318 (n + 1)) (A259930 (7 * A322318 (n + 1)).toNat)

end

end A323163.P4213318131884128479

namespace A323163

/-- `A322318(n+1)%A259930(7*A322318(n+1))` -/
def P4213318131884128479.Spec : Prop :=
  ∀ n, P4213318131884128479.a n = A323163 (n + 1)

end A323163

/-! ## A323163.P14127177297418621957

`A322318(n+1)%A063997(A064189(n))`
-/

namespace A323163.P14127177297418621957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322318 (n + 1)) (A063997 (A064189 n).toNat)

end

end A323163.P14127177297418621957

namespace A323163

/-- `A322318(n+1)%A063997(A064189(n))` -/
def P14127177297418621957.Spec : Prop :=
  ∀ n, P14127177297418621957.a n = A323163 (n + 1)

end A323163

/-!
# A323164: a(n) = A000720(A323075(n)).

The programs for A323164, there is no canonical definition to state claims against.
-/

/-! ## A323164.P14620412416377133180

`A000720(A323075(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323164.P14620412416377133180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A323075 (n + 1)).toNat

end

end A323164.P14620412416377133180

/-! ## A323164.P1404298850633755581

`∑{d}[A323075(n+1), A230980(#)]`
-/

namespace A323164.P1404298850633755581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A230980 d

end

end A323164.P1404298850633755581

/-! ## A323164.P17171011128747910348

`A230980(A323075(n+1)+char[2])`
-/

namespace A323164.P17171011128747910348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A323075 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A323164.P17171011128747910348

/-! ## A323164.P17394930425760780556

`A230980(A323075(n+1)%A010015(n))`
-/

namespace A323164.P17394930425760780556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.tmod (A323075 (n + 1)) (A010015 n)).toNat

end

end A323164.P17394930425760780556

/-! ## A323164.P1913417991727643849

`A230980(A323075(n+1))%A016783(n)`
-/

namespace A323164.P1913417991727643849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230980 (A323075 (n + 1)).toNat) (A016783 n)

end

end A323164.P1913417991727643849

/-! ## A323164.P16638761830306344791

`A230980(2*A323075(n+1)-A323075(n+1))`
-/

namespace A323164.P16638761830306344791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (2 * A323075 (n + 1) - A323075 (n + 1)).toNat

end

end A323164.P16638761830306344791

/-! ## A323164.P7111845102962828153

`A061395(A323075(n+1)²)`
-/

namespace A323164.P7111845102962828153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A323075 (n + 1) ^ 2).toNat

end

end A323164.P7111845102962828153

/-!
# A323165: Ordinal transform of A323075 (and also of A323164).

The programs for A323165, there is no canonical definition to state claims against.
-/

/-! ## A323165.P2447472912936221662

`A001222(A175851(n+1)+A174500(n+1))`
-/

namespace A323165.P2447472912936221662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A175851 (n + 1) + A174500 (n + 1)).toNat

end

end A323165.P2447472912936221662

/-! ## A323165.P3759392677459244631

`A275024(A321738(3*n+1)+A321738(n+1))`
-/

namespace A323165.P3759392677459244631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (A321738 (3 * n + 1) + A321738 (n + 1)).toNat

end

end A323165.P3759392677459244631

/-! ## A323165.P6923507382273078029

`A235124(A126286(n+1))`
-/

namespace A323165.P6923507382273078029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235124 (A126286 (n + 1)).toNat

end

end A323165.P6923507382273078029

/-! ## A323165.P4163871253429924469

`A332202(A107754(n+1))`
-/

namespace A323165.P4163871253429924469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332202 (A107754 (n + 1)).toNat

end

end A323165.P4163871253429924469

/-! ## A323165.P5290408165361223807

`A307319(A264859(n+1))`
-/

namespace A323165.P5290408165361223807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307319 (A264859 (n + 1)).toNat

end

end A323165.P5290408165361223807

/-!
# A323166: Greatest common divisor of Product (1+(p_i^e_i)) and n, when n = Product (p_i^e_i); a(n) = gcd(A034448(n), n).

The programs for A323166, the canonical program `A323166.P16503976483329097000` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323166 has offset 1).

The definition of A323166 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323166.P16142621323895947341

`gcd(n+1, A034448(n+1))`
-/

namespace A323166.P16142621323895947341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A034448 (n + 1))

end

end A323166.P16142621323895947341

namespace A323166

/-- `gcd(n+1, A034448(n+1))` -/
def P16142621323895947341.Spec : Prop :=
  ∀ n, (P16142621323895947341.a n : ℤ) = A323166 (n + 1)

end A323166

/-! ## A323166.P16503976483329097000

`gcd(A034448(n+1), n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A323166

/-- `gcd(A034448(n+1), n+1)` -/
def P16503976483329097000.Spec : Prop :=
  ∀ n, (P16503976483329097000.a n : ℤ) = A323166 (n + 1)

theorem P16503976483329097000.correct : P16503976483329097000.Spec := by
  intro n
  simp only [A323166, Nat.add_sub_cancel]

end A323166

/-! ## A323166.P16172056544364858060

`(n+1)/A332883(n+1)`
-/

namespace A323166.P16172056544364858060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A332883 (n + 1) : ℚ)

end

end A323166.P16172056544364858060

namespace A323166

/-- `(n+1)/A332883(n+1)` -/
def P16172056544364858060.Spec : Prop :=
  ∀ n, P16172056544364858060.a n = (A323166 (n + 1) : ℚ)

end A323166

/-! ## A323166.P16074861586958223594

`gcd(A345451(n+1)+1, C(n+1, n))`
-/

namespace A323166.P16074861586958223594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A345451 (n + 1) + 1) (Nat.choose (n + 1) n : ℤ)

end

end A323166.P16074861586958223594

namespace A323166

/-- `gcd(A345451(n+1)+1, C(n+1, n))` -/
def P16074861586958223594.Spec : Prop :=
  ∀ n, (P16074861586958223594.a n : ℤ) = A323166 (n + 1)

end A323166

/-! ## A323166.P1674603284577222638

`gcd(A063919(n+1), A071262(n))`
-/

namespace A323166.P1674603284577222638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063919 (n + 1)) (A071262 n)

end

end A323166.P1674603284577222638

namespace A323166

/-- `gcd(A063919(n+1), A071262(n))` -/
def P1674603284577222638.Spec : Prop :=
  ∀ n, (P1674603284577222638.a n : ℤ) = A323166 (n + 1)

end A323166

/-! ## A323166.P11145231167872313918

`gcd(A129468(n+1), A153152(n))`
-/

namespace A323166.P11145231167872313918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129468 (n + 1)) (A153152 n)

end

end A323166.P11145231167872313918

namespace A323166

/-- `gcd(A129468(n+1), A153152(n))` -/
def P11145231167872313918.Spec : Prop :=
  ∀ n, (P11145231167872313918.a n : ℤ) = A323166 (n + 1)

end A323166

/-! ## A323166.P3025794828527979225

`A034448(n+1)/A332882(n+1)`
-/

namespace A323166.P3025794828527979225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A332882 (n + 1) : ℚ)

end

end A323166.P3025794828527979225

namespace A323166

/-- `A034448(n+1)/A332882(n+1)` -/
def P3025794828527979225.Spec : Prop :=
  ∀ n, P3025794828527979225.a n = (A323166 (n + 1) : ℚ)

end A323166

/-! ## A323166.P10211458266036933192

`gcd(A014683(n+1), A034460(n+1))`
-/

namespace A323166.P10211458266036933192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014683 (n + 1)) (A034460 (n + 1))

end

end A323166.P10211458266036933192

namespace A323166

/-- `gcd(A014683(n+1), A034460(n+1))` -/
def P10211458266036933192.Spec : Prop :=
  ∀ n, (P10211458266036933192.a n : ℤ) = A323166 (n + 1)

end A323166

/-! ## A323166.P6193974763310818830

`gcd(A345451(n+1)+1, A000027(n+1))`
-/

namespace A323166.P6193974763310818830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A345451 (n + 1) + 1) (A000027 (n + 1))

end

end A323166.P6193974763310818830

namespace A323166

/-- `gcd(A345451(n+1)+1, A000027(n+1))` -/
def P6193974763310818830.Spec : Prop :=
  ∀ n, (P6193974763310818830.a n : ℤ) = A323166 (n + 1)

end A323166

/-! ## A323166.P9467804108278822318

`gcd(n*A129468(n+1), A048671(n+1))`
-/

namespace A323166.P9467804108278822318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A129468 (n + 1)) (A048671 (n + 1))

end

end A323166.P9467804108278822318

namespace A323166

/-- `gcd(n*A129468(n+1), A048671(n+1))` -/
def P9467804108278822318.Spec : Prop :=
  ∀ n, (P9467804108278822318.a n : ℤ) = A323166 (n + 1)

end A323166

/-! ## A323166.P579864050578727076

`gcd(A034460(n+1)+1+n, A345451(n+1)-n)`
-/

namespace A323166.P579864050578727076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034460 (n + 1) + 1 + (n : ℤ)) (A345451 (n + 1) - (n : ℤ))

end

end A323166.P579864050578727076

namespace A323166

/-- `gcd(A034460(n+1)+1+n, A345451(n+1)-n)` -/
def P579864050578727076.Spec : Prop :=
  ∀ n, (P579864050578727076.a n : ℤ) = A323166 (n + 1)

end A323166

/-! ## A323166.P11125147341418052805

`gcd(A048671(n+1), A129468(A048671(n+1)))`
-/

namespace A323166.P11125147341418052805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048671 (n + 1)) (A129468 (A048671 (n + 1)).toNat)

end

end A323166.P11125147341418052805

namespace A323166

/-- `gcd(A048671(n+1), A129468(A048671(n+1)))` -/
def P11125147341418052805.Spec : Prop :=
  ∀ n, (P11125147341418052805.a n : ℤ) = A323166 (n + 1)

end A323166

/-! ## A323166.P9106977718451281877

`A348733(n+1)/A332882(n+1)*A348735(n+1)`
-/

namespace A323166.P9106977718451281877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348733 (n + 1) : ℚ) / (A332882 (n + 1) : ℚ) * (A348735 (n + 1) : ℚ)

end

end A323166.P9106977718451281877

namespace A323166

/-- `A348733(n+1)/A332882(n+1)*A348735(n+1)` -/
def P9106977718451281877.Spec : Prop :=
  ∀ n, P9106977718451281877.a n = (A323166 (n + 1) : ℚ)

end A323166

/-! ## A323166.P17169404125467608019

`gcd(A034460(n+1)+1+n, A000027(A000027(n+1)))`
-/

namespace A323166.P17169404125467608019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034460 (n + 1) + 1 + (n : ℤ)) (A000027 (A000027 (n + 1)).toNat)

end

end A323166.P17169404125467608019

namespace A323166

/-- `gcd(A034460(n+1)+1+n, A000027(A000027(n+1)))` -/
def P17169404125467608019.Spec : Prop :=
  ∀ n, (P17169404125467608019.a n : ℤ) = A323166 (n + 1)

end A323166

/-! ## A323166.P9836675661588225109

`gcd(A345451(n+1)-n, A028310(A345451(n+1)+1))`
-/

namespace A323166.P9836675661588225109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A345451 (n + 1) - (n : ℤ)) (A028310 (A345451 (n + 1) + 1).toNat)

end

end A323166.P9836675661588225109

namespace A323166

/-- `gcd(A345451(n+1)-n, A028310(A345451(n+1)+1))` -/
def P9836675661588225109.Spec : Prop :=
  ∀ n, (P9836675661588225109.a n : ℤ) = A323166 (n + 1)

end A323166

/-!
# A323167: a(n) = A294898(A122111(n)).

The programs for A323167, the canonical program `A323167.P15577593642405642438` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323167 has offset 1).

The definition of A323167 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323167.P14409540158063155273

`A323174(n+1)-A322867(n+1)`
-/

namespace A323167.P14409540158063155273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323174 (n + 1) - A322867 (n + 1)

end

end A323167.P14409540158063155273

namespace A323167

/-- `A323174(n+1)-A322867(n+1)` -/
def P14409540158063155273.Spec : Prop :=
  ∀ n, P14409540158063155273.a n = A323167 (n + 1)

end A323167

/-! ## A323167.P15577593642405642438

`A294898(A122111(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A323167

/-- `A294898(A122111(n+1))` -/
def P15577593642405642438.Spec : Prop :=
  ∀ n, P15577593642405642438.a n = A323167 (n + 1)

theorem P15577593642405642438.correct : P15577593642405642438.Spec := by
  intro n
  simp only [A323167, Nat.add_sub_cancel]

end A323167

/-! ## A323167.P6846875496438454429

`2*A122111(n+1)-A323173(n+1)-A322867(n+1)`
-/

namespace A323167.P6846875496438454429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122111 (n + 1) - A323173 (n + 1) - A322867 (n + 1)

end

end A323167.P6846875496438454429

namespace A323167

/-- `2*A122111(n+1)-A323173(n+1)-A322867(n+1)` -/
def P6846875496438454429.Spec : Prop :=
  ∀ n, P6846875496438454429.a n = A323167 (n + 1)

end A323167

/-! ## A323167.P5248810288902926411

`A323174(n+1)-A000120(A322865(n+1))`
-/

namespace A323167.P5248810288902926411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323174 (n + 1) - A000120 (A322865 (n + 1)).toNat

end

end A323167.P5248810288902926411

namespace A323167

/-- `A323174(n+1)-A000120(A322865(n+1))` -/
def P5248810288902926411.Spec : Prop :=
  ∀ n, P5248810288902926411.a n = A323167 (n + 1)

end A323167

/-! ## A323167.P8026686160461668934

`A323174(n+1)-∑{d}[A322865(n+1), A297115(#)]`
-/

namespace A323167.P8026686160461668934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323174 (n + 1) - ∑ d ∈ Nat.divisors (f1 n).natAbs, A297115 d

end

end A323167.P8026686160461668934

namespace A323167

/-- `A323174(n+1)-∑{d}[A322865(n+1), A297115(#)]` -/
def P8026686160461668934.Spec : Prop :=
  ∀ n, P8026686160461668934.a n = A323167 (n + 1)

end A323167

/-! ## A323167.P12711756926015420236

`2*A122111(n+1)-A323173(n+1)-A000120(A322865(n+1))`
-/

namespace A323167.P12711756926015420236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122111 (n + 1) - A323173 (n + 1) - A000120 (A322865 (n + 1)).toNat

end

end A323167.P12711756926015420236

namespace A323167

/-- `2*A122111(n+1)-A323173(n+1)-A000120(A322865(n+1))` -/
def P12711756926015420236.Spec : Prop :=
  ∀ n, P12711756926015420236.a n = A323167 (n + 1)

end A323167

/-! ## A323167.P15681495474593291454

`A323174(n+1)-A001222(A322863(n+1))`
-/

namespace A323167.P15681495474593291454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323174 (n + 1) - A001222 (A322863 (n + 1)).toNat

end

end A323167.P15681495474593291454

namespace A323167

/-- `A323174(n+1)-A001222(A322863(n+1))` -/
def P15681495474593291454.Spec : Prop :=
  ∀ n, P15681495474593291454.a n = A323167 (n + 1)

end A323167

/-! ## A323167.P11561645797553439085

`A323248(A322863(n+1))`
-/

namespace A323167.P11561645797553439085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323248 (A322863 (n + 1)).toNat

end

end A323167.P11561645797553439085

namespace A323167

/-- `A323248(A322863(n+1))` -/
def P11561645797553439085.Spec : Prop :=
  ∀ n, P11561645797553439085.a n = A323167 (n + 1)

end A323167

/-! ## A323167.P4332950689966425690

`A324185(A253566(n+1))-A322867(n+1)`
-/

namespace A323167.P4332950689966425690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324185 (A253566 (n + 1)).toNat - A322867 (n + 1)

end

end A323167.P4332950689966425690

namespace A323167

/-- `A324185(A253566(n+1))-A322867(n+1)` -/
def P4332950689966425690.Spec : Prop :=
  ∀ n, P4332950689966425690.a n = A323167 (n + 1)

end A323167

/-!
# A323168: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = [A322867(n), A323174(n)] for n > 1, and f(1) = 0.

The programs for A323168, there is no canonical definition to state claims against.
-/

/-! ## A323168.P17019157580582755578

`A115871(A305800(n+1))*A290106(A022169(n))`
-/

namespace A323168.P17019157580582755578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115871 (A305800 (n + 1)).toNat * A290106 (A022169 n).toNat

end

end A323168.P17019157580582755578

/-! ## A323168.P6775148851431465418

`A115871(A305800(n+1))/A326674(A022169(n+1))`
-/

namespace A323168.P6775148851431465418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115871 (A305800 (n + 1)).toNat : ℚ) / (A326674 (A022169 (n + 1)).toNat : ℚ)

end

end A323168.P6775148851431465418

/-! ## A323168.P5322936259128808604

`A115871(A305800(A187829(n+1)))`
-/

namespace A323168.P5322936259128808604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115871 (A305800 (A187829 (n + 1)).toNat).toNat

end

end A323168.P5322936259128808604

/-! ## A323168.P15672353624139195102

`A115871(A305800(n+1)*A340365(n+1))`
-/

namespace A323168.P15672353624139195102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115871 (A305800 (n + 1) * A340365 (n + 1)).toNat

end

end A323168.P15672353624139195102

/-!
# A323169: Greatest common divisor of the set of solutions to phi(x) = n, or 0 if n is not a totient.

The programs for A323169, there is no canonical definition to state claims against.
-/

/-! ## A323169.P17517310191072980033

`A049283(n+1)%A163497(A300330(n+1))`
-/

namespace A323169.P17517310191072980033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049283 (n + 1)) (A163497 (A300330 (n + 1)).toNat)

end

end A323169.P17517310191072980033

/-! ## A323169.P6029584676591486904

`gcd(A004530(A361058(n+1)), A049283(n+1))`
-/

namespace A323169.P6029584676591486904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004530 (A361058 (n + 1)).toNat) (A049283 (n + 1))

end

end A323169.P6029584676591486904

/-! ## A323169.P5739074000808152196

`and(A020985(A182564(n)), A049283(n+1))`
-/

namespace A323169.P5739074000808152196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020985 (A182564 n).toNat) (A049283 (n + 1))

end

end A323169.P5739074000808152196

/-! ## A323169.P18211528673917296015

`and(A049283(n+1), A318576(A257088(n)))`
-/

namespace A323169.P18211528673917296015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049283 (n + 1)) (A318576 (A257088 n).toNat)

end

end A323169.P18211528673917296015

/-! ## A323169.P13602941111730301317

`and(A049283(n+1), A049347(A114069(n+1)))`
-/

namespace A323169.P13602941111730301317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049283 (n + 1)) (A049347 (A114069 (n + 1)).toNat)

end

end A323169.P13602941111730301317

/-!
# A323170: a(n) = 1 if (2*phi(n)) < n, 0 otherwise, where phi is Euler totient function (A000010).

The programs for A323170, the canonical program `A323170.P15452251001344224909` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323170 has offset 1).

The definition of A323170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323170.P15452251001344224909

`round(floor(n/4)/((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A323170

/-- `round(floor(n/4)/((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))` -/
def P15452251001344224909.Spec : Prop :=
  ∀ n, P15452251001344224909.a n = A323170 (n + 1)

theorem P15452251001344224909.correct : P15452251001344224909.Spec := by
  intro n
  simp only [A323170, Nat.add_sub_cancel]

end A323170

/-! ## A323170.P9674387234613897515

`round((1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)/(n+3))`
-/

namespace A323170.P9674387234613897515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)) / (n + 3 : ℚ))

end

end A323170.P9674387234613897515

namespace A323170

/-- `round((1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)/(n+3))` -/
def P9674387234613897515.Spec : Prop :=
  ∀ n, P9674387234613897515.a n = A323170 (n + 1)

end A323170

/-! ## A323170.P15278857376366672355

`char[A054741(n+1)-1]`
-/

namespace A323170.P15278857376366672355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054741 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323170.P15278857376366672355

namespace A323170

/-- `char[A054741(n+1)-1]` -/
def P15278857376366672355.Spec : Prop :=
  ∀ n, (P15278857376366672355.a n : ℤ) = A323170 (n + 1)

end A323170

/-! ## A323170.P17396197588750560335

`char[lt[A035532(n+1), n]]`
-/

namespace A323170.P17396197588750560335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035532 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A323170.P17396197588750560335

namespace A323170

/-- `char[lt[A035532(n+1), n]]` -/
def P17396197588750560335.Spec : Prop :=
  ∀ n, (P17396197588750560335.a n : ℤ) = A323170 (n + 1)

end A323170

/-! ## A323170.P4067450739995607642

`char[lt[A140434(n+1), n]]`
-/

namespace A323170.P4067450739995607642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A323170.P4067450739995607642

namespace A323170

/-- `char[lt[A140434(n+1), n]]` -/
def P4067450739995607642.Spec : Prop :=
  ∀ n, (P4067450739995607642.a n : ℤ) = A323170 (n + 1)

end A323170

/-! ## A323170.P11445663459594382274

`char[lt[2*A000010(n+1), n]]`
-/

namespace A323170.P11445663459594382274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A323170.P11445663459594382274

namespace A323170

/-- `char[lt[2*A000010(n+1), n]]` -/
def P11445663459594382274.Spec : Prop :=
  ∀ n, (P11445663459594382274.a n : ℤ) = A323170 (n + 1)

end A323170

/-! ## A323170.P11366637314352992031

`abs(round((A039649(n+1)-1)/(n+1))-1)`
-/

namespace A323170.P11366637314352992031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway ((A039649 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)) - 1|

end

end A323170.P11366637314352992031

namespace A323170

/-- `abs(round((A039649(n+1)-1)/(n+1))-1)` -/
def P11366637314352992031.Spec : Prop :=
  ∀ n, P11366637314352992031.a n = A323170 (n + 1)

end A323170

/-! ## A323170.P14443974544337103813

`A267442(n)-A374134(n+1)`
-/

namespace A323170.P14443974544337103813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267442 n - A374134 (n + 1)

end

end A323170.P14443974544337103813

namespace A323170

/-- `A267442(n)-A374134(n+1)` -/
def P14443974544337103813.Spec : Prop :=
  ∀ n, P14443974544337103813.a n = A323170 (n + 1)

end A323170

/-! ## A323170.P350905775773912658

`char[lt[A000010(n+1), A008619(n)]]`
-/

namespace A323170.P350905775773912658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A323170.P350905775773912658

namespace A323170

/-- `char[lt[A000010(n+1), A008619(n)]]` -/
def P350905775773912658.Spec : Prop :=
  ∀ n, (P350905775773912658.a n : ℤ) = A323170 (n + 1)

end A323170

/-! ## A323170.P4518655897514960458

`floor(sqrt(A000217(n)/A002618(n+1)))`
-/

namespace A323170.P4518655897514960458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A000217 n : ℚ) / (A002618 (n + 1) : ℚ) : ℝ)⌋

end

end A323170.P4518655897514960458

namespace A323170

/-- `floor(sqrt(A000217(n)/A002618(n+1)))` -/
def P4518655897514960458.Spec : Prop :=
  ∀ n, P4518655897514960458.a n = A323170 (n + 1)

end A323170

/-! ## A323170.P14363267528972839963

`A274923(floor(n/A000010(n+1))+1)`
-/

namespace A323170.P14363267528972839963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (⌊(n : ℚ) / (A000010 (n + 1) : ℚ)⌋ + 1).toNat

end

end A323170.P14363267528972839963

namespace A323170

/-- `A274923(floor(n/A000010(n+1))+1)` -/
def P14363267528972839963.Spec : Prop :=
  ∀ n, P14363267528972839963.a n = A323170 (n + 1)

end A323170

/-! ## A323170.P9242215613390084755

`A233795(floor(n/A000010(n+1))+2)`
-/

namespace A323170.P9242215613390084755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233795 (⌊(n : ℚ) / (A000010 (n + 1) : ℚ)⌋ + 2).toNat

end

end A323170.P9242215613390084755

namespace A323170

/-- `A233795(floor(n/A000010(n+1))+2)` -/
def P9242215613390084755.Spec : Prop :=
  ∀ n, P9242215613390084755.a n = A323170 (n + 1)

end A323170

/-! ## A323170.P4026534514871154217

`A054251(round(A000010(n+1)/(n+1)))`
-/

namespace A323170.P4026534514871154217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054251 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A323170.P4026534514871154217

namespace A323170

/-- `A054251(round(A000010(n+1)/(n+1)))` -/
def P4026534514871154217.Spec : Prop :=
  ∀ n, P4026534514871154217.a n = A323170 (n + 1)

end A323170

/-! ## A323170.P82584432593767021

`A000120(floor(n/(2*A000010(n+1))))`
-/

namespace A323170.P82584432593767021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ⌊(n : ℚ) / (2 * A000010 (n + 1) : ℚ)⌋.toNat

end

end A323170.P82584432593767021

namespace A323170

/-- `A000120(floor(n/(2*A000010(n+1))))` -/
def P82584432593767021.Spec : Prop :=
  ∀ n, P82584432593767021.a n = A323170 (n + 1)

end A323170

/-! ## A323170.P3020589188376944438

`∑{d}[n+1, A008683(#)*A318875((n+1)/#)]`
-/

namespace A323170.P3020589188376944438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A318875 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323170.P3020589188376944438

namespace A323170

/-- `∑{d}[n+1, A008683(#)*A318875((n+1)/#)]` -/
def P3020589188376944438.Spec : Prop :=
  ∀ n, P3020589188376944438.a n = A323170 (n + 1)

end A323170

/-! ## A323170.P10961611098684466369

`round(n/Δ[A171503(n)])`
-/

namespace A323170.P10961611098684466369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A323170.P10961611098684466369

namespace A323170

/-- `round(n/Δ[A171503(n)])` -/
def P10961611098684466369.Spec : Prop :=
  ∀ n, P10961611098684466369.a n = A323170 (n + 1)

end A323170

/-! ## A323170.P590309978788550588

`and(A088041(A028236(n+1))², A028236(n+1))`
-/

namespace A323170.P590309978788550588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088041 (A028236 (n + 1)).toNat ^ 2) (A028236 (n + 1))

end

end A323170.P590309978788550588

namespace A323170

/-- `and(A088041(A028236(n+1))², A028236(n+1))` -/
def P590309978788550588.Spec : Prop :=
  ∀ n, P590309978788550588.a n = A323170 (n + 1)

end A323170

/-! ## A323170.P15879542008059369310

`val(A000079(n), A000079(A000010(n+1))²)`
-/

namespace A323170.P15879542008059369310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 n).toNat (A000079 (A000010 (n + 1)).toNat ^ 2).toNat

end

end A323170.P15879542008059369310

namespace A323170

/-- `val(A000079(n), A000079(A000010(n+1))²)` -/
def P15879542008059369310.Spec : Prop :=
  ∀ n, (P15879542008059369310.a n : ℤ) = A323170 (n + 1)

end A323170

/-! ## A323170.P16393357832830577110

`A326731(n)%2`
-/

namespace A323170.P16393357832830577110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326731 n) 2

end

end A323170.P16393357832830577110

namespace A323170

/-- `A326731(n)%2` -/
def P16393357832830577110.Spec : Prop :=
  ∀ n, P16393357832830577110.a n = A323170 (n + 1)

end A323170

/-! ## A323170.P3750521803998187376

`and(A027608(n), A326731(n))`
-/

namespace A323170.P3750521803998187376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027608 n) (A326731 n)

end

end A323170.P3750521803998187376

namespace A323170

/-- `and(A027608(n), A326731(n))` -/
def P3750521803998187376.Spec : Prop :=
  ∀ n, P3750521803998187376.a n = A323170 (n + 1)

end A323170

/-!
# A323171: Numerator of the average of distinct prime factors of n (A008472(n)/A001221(n)).

The programs for A323171, the canonical program `A323171.P17163858999531441399` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323171 has offset 2).

The definition of A323171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323171.P17163858999531441399

`A123528(∏{p}[n+2, #])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A323171

/-- `A123528(∏{p}[n+2, #])` -/
def P17163858999531441399.Spec : Prop :=
  ∀ n, P17163858999531441399.a n = A323171 (n + 2)

theorem P17163858999531441399.correct : P17163858999531441399.Spec := by
  intro n
  simp only [A323171, Nat.add_sub_cancel]

end A323171

/-! ## A323171.P7110887036888588429

`A123528(A007947(n+2))`
-/

namespace A323171.P7110887036888588429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123528 (A007947 (n + 2)).toNat

end

end A323171.P7110887036888588429

namespace A323171

/-- `A123528(A007947(n+2))` -/
def P7110887036888588429.Spec : Prop :=
  ∀ n, P7110887036888588429.a n = A323171 (n + 2)

end A323171

/-! ## A323171.P16124917839705400832

`A008472(n+2)/A001221(n+2)*A323172(n+2)`
-/

namespace A323171.P16124917839705400832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 2) : ℚ) / (A001221 (n + 2) : ℚ) * (A323172 (n + 2) : ℚ)

end

end A323171.P16124917839705400832

namespace A323171

/-- `A008472(n+2)/A001221(n+2)*A323172(n+2)` -/
def P16124917839705400832.Spec : Prop :=
  ∀ n, P16124917839705400832.a n = (A323171 (n + 2) : ℚ)

end A323171

/-! ## A323171.P4153427026048623878

`A123528(A062759(n+2))`
-/

namespace A323171.P4153427026048623878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123528 (A062759 (n + 2)).toNat

end

end A323171.P4153427026048623878

namespace A323171

/-- `A123528(A062759(n+2))` -/
def P4153427026048623878.Spec : Prop :=
  ∀ n, P4153427026048623878.a n = A323171 (n + 2)

end A323171

/-! ## A323171.P10538728556737661528

`A123528(sqrt(A078615(n+2)))`
-/

namespace A323171.P10538728556737661528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123528 (SequenceMachineLib.roundAway (Real.sqrt (A078615 (n + 2) : ℝ))).toNat

end

end A323171.P10538728556737661528

namespace A323171

/-- `A123528(sqrt(A078615(n+2)))` -/
def P10538728556737661528.Spec : Prop :=
  ∀ n, P10538728556737661528.a n = A323171 (n + 2)

end A323171

/-! ## A323171.P14412839079029392649

`A326567(A328878(n+2))`
-/

namespace A323171.P14412839079029392649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326567 (A328878 (n + 2)).toNat

end

end A323171.P14412839079029392649

namespace A323171

/-- `A326567(A328878(n+2))` -/
def P14412839079029392649.Spec : Prop :=
  ∀ n, P14412839079029392649.a n = A323171 (n + 2)

end A323171

/-! ## A323171.P18294660542420241046

`A123528(A166140(n+2))`
-/

namespace A323171.P18294660542420241046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123528 (A166140 (n + 2)).toNat

end

end A323171.P18294660542420241046

namespace A323171

/-- `A123528(A166140(n+2))` -/
def P18294660542420241046.Spec : Prop :=
  ∀ n, P18294660542420241046.a n = A323171 (n + 2)

end A323171

/-! ## A323171.P11419180453543016718

`A123528(A078615(n+2))`
-/

namespace A323171.P11419180453543016718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123528 (A078615 (n + 2)).toNat

end

end A323171.P11419180453543016718

namespace A323171

/-- `A123528(A078615(n+2))` -/
def P11419180453543016718.Spec : Prop :=
  ∀ n, P11419180453543016718.a n = A323171 (n + 2)

end A323171

/-! ## A323171.P4127572187992429995

`A123528(A066638(n+2))`
-/

namespace A323171.P4127572187992429995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123528 (A066638 (n + 2)).toNat

end

end A323171.P4127572187992429995

namespace A323171

/-- `A123528(A066638(n+2))` -/
def P4127572187992429995.Spec : Prop :=
  ∀ n, P4127572187992429995.a n = A323171 (n + 2)

end A323171

/-! ## A323171.P7083090554533752668

`A123528(A087321(n+2))`
-/

namespace A323171.P7083090554533752668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123528 (A087321 (n + 2)).toNat

end

end A323171.P7083090554533752668

namespace A323171

/-- `A123528(A087321(n+2))` -/
def P7083090554533752668.Spec : Prop :=
  ∀ n, P7083090554533752668.a n = A323171 (n + 2)

end A323171

/-!
# A323172: Denominator of the average of distinct prime factors of n (A008472(n)/A001221(n)).

The programs for A323172, the canonical program `A323172.P1211456420547319738` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323172 has offset 2).

The definition of A323172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323172.P1211456420547319738

`A001221(n+2)/A008472(n+2)*A323171(n+2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A323172

/-- `A001221(n+2)/A008472(n+2)*A323171(n+2)` -/
def P1211456420547319738.Spec : Prop :=
  ∀ n, P1211456420547319738.a n = (A323172 (n + 2) : ℚ)

end A323172

/-! ## A323172.P4805098307737644577

`A123529(∏{p}[n+2, #])`
-/

namespace A323172.P4805098307737644577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123529 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A323172.P4805098307737644577

namespace A323172

/-- `A123529(∏{p}[n+2, #])` -/
def P4805098307737644577.Spec : Prop :=
  ∀ n, P4805098307737644577.a n = A323172 (n + 2)

end A323172

/-! ## A323172.P2830493099743246826

`A123529(A007947(n+2))`
-/

namespace A323172.P2830493099743246826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123529 (A007947 (n + 2)).toNat

end

end A323172.P2830493099743246826

namespace A323172

/-- `A123529(A007947(n+2))` -/
def P2830493099743246826.Spec : Prop :=
  ∀ n, P2830493099743246826.a n = A323172 (n + 2)

end A323172

/-! ## A323172.P6641947307933004567

`A123529(A062759(n+2))`
-/

namespace A323172.P6641947307933004567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123529 (A062759 (n + 2)).toNat

end

end A323172.P6641947307933004567

namespace A323172

/-- `A123529(A062759(n+2))` -/
def P6641947307933004567.Spec : Prop :=
  ∀ n, P6641947307933004567.a n = A323172 (n + 2)

end A323172

/-! ## A323172.P4814752215448668243

`A123529(sqrt(A078615(n+2)))`
-/

namespace A323172.P4814752215448668243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123529 (SequenceMachineLib.roundAway (Real.sqrt (A078615 (n + 2) : ℝ))).toNat

end

end A323172.P4814752215448668243

namespace A323172

/-- `A123529(sqrt(A078615(n+2)))` -/
def P4814752215448668243.Spec : Prop :=
  ∀ n, P4814752215448668243.a n = A323172 (n + 2)

end A323172

/-! ## A323172.P2759173109512276794

`A326620(A318885(n+2))`
-/

namespace A323172.P2759173109512276794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326620 (A318885 (n + 2)).toNat

end

end A323172.P2759173109512276794

namespace A323172

/-- `A326620(A318885(n+2))` -/
def P2759173109512276794.Spec : Prop :=
  ∀ n, P2759173109512276794.a n = A323172 (n + 2)

end A323172

/-! ## A323172.P17893226160989785669

`A326620(A290641(n+2))`
-/

namespace A323172.P17893226160989785669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326620 (A290641 (n + 2)).toNat

end

end A323172.P17893226160989785669

namespace A323172

/-- `A326620(A290641(n+2))` -/
def P17893226160989785669.Spec : Prop :=
  ∀ n, P17893226160989785669.a n = A323172 (n + 2)

end A323172

/-! ## A323172.P17143551919842128050

`A326620(A064988(n+2))`
-/

namespace A323172.P17143551919842128050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326620 (A064988 (n + 2)).toNat

end

end A323172.P17143551919842128050

namespace A323172

/-- `A326620(A064988(n+2))` -/
def P17143551919842128050.Spec : Prop :=
  ∀ n, P17143551919842128050.a n = A323172 (n + 2)

end A323172

/-! ## A323172.P3015186141803947839

`A123529(A066638(n+2))`
-/

namespace A323172.P3015186141803947839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123529 (A066638 (n + 2)).toNat

end

end A323172.P3015186141803947839

namespace A323172

/-- `A123529(A066638(n+2))` -/
def P3015186141803947839.Spec : Prop :=
  ∀ n, P3015186141803947839.a n = A323172 (n + 2)

end A323172

/-! ## A323172.P15598733187929826570

`A123529(A166140(n+2))`
-/

namespace A323172.P15598733187929826570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123529 (A166140 (n + 2)).toNat

end

end A323172.P15598733187929826570

namespace A323172

/-- `A123529(A166140(n+2))` -/
def P15598733187929826570.Spec : Prop :=
  ∀ n, P15598733187929826570.a n = A323172 (n + 2)

end A323172

/-!
# A323173: Sum of divisors computed for conjugated prime factorization: a(n) = A000203(A122111(n)).

The programs for A323173, the canonical program `A323173.P6026643427823167400` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323173 has offset 1).

The definition of A323173 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323173.P9658446160839971310

`2*A122111(n+1)-A323174(n+1)`
-/

namespace A323173.P9658446160839971310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122111 (n + 1) - A323174 (n + 1)

end

end A323173.P9658446160839971310

namespace A323173

/-- `2*A122111(n+1)-A323174(n+1)` -/
def P9658446160839971310.Spec : Prop :=
  ∀ n, P9658446160839971310.a n = A323173 (n + 1)

end A323173

/-! ## A323173.P6026643427823167400

`A000203(A122111(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A323173

/-- `A000203(A122111(n+1))` -/
def P6026643427823167400.Spec : Prop :=
  ∀ n, P6026643427823167400.a n = A323173 (n + 1)

theorem P6026643427823167400.correct : P6026643427823167400.Spec := by
  intro n
  simp only [A323173, Nat.add_sub_cancel]

end A323173

/-! ## A323173.P2361555299697458726

`A322819(n+1)*A038712(A122111(n+1))`
-/

namespace A323173.P2361555299697458726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322819 (n + 1) * A038712 (A122111 (n + 1)).toNat

end

end A323173.P2361555299697458726

namespace A323173

/-- `A322819(n+1)*A038712(A122111(n+1))` -/
def P2361555299697458726.Spec : Prop :=
  ∀ n, P2361555299697458726.a n = A323173 (n + 1)

end A323173

/-! ## A323173.P13979956346543852334

`∑{d}[∑{d}[n+1, A329034(#)], #]`
-/

namespace A323173.P13979956346543852334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A329034 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A323173.P13979956346543852334

namespace A323173

/-- `∑{d}[∑{d}[n+1, A329034(#)], #]` -/
def P13979956346543852334.Spec : Prop :=
  ∀ n, (P13979956346543852334.a n : ℤ) = A323173 (n + 1)

end A323173

/-! ## A323173.P10975189721246832337

`∑{d}[A243070(∑[4*n]+1), #]`
-/

namespace A323173.P10975189721246832337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A323173.P10975189721246832337

namespace A323173

/-- `∑{d}[A243070(∑[4*n]+1), #]` -/
def P10975189721246832337.Spec : Prop :=
  ∀ n, (P10975189721246832337.a n : ℤ) = A323173 (n + 1)

end A323173

/-! ## A323173.P7777613144836314604

`∑{d}[1-A352491(n+1)+n, #]`
-/

namespace A323173.P7777613144836314604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A352491 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A323173.P7777613144836314604

namespace A323173

/-- `∑{d}[1-A352491(n+1)+n, #]` -/
def P7777613144836314604.Spec : Prop :=
  ∀ n, (P7777613144836314604.a n : ℤ) = A323173 (n + 1)

end A323173

/-! ## A323173.P14812757832370061515

`∑{d}[A279352(A249817(n+1)), #]`
-/

namespace A323173.P14812757832370061515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279352 (A249817 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A323173.P14812757832370061515

namespace A323173

/-- `∑{d}[A279352(A249817(n+1)), #]` -/
def P14812757832370061515.Spec : Prop :=
  ∀ n, (P14812757832370061515.a n : ℤ) = A323173 (n + 1)

end A323173

/-! ## A323173.P5637699824235779288

`∑{d}[A354866(n+1)-A354867(n+1), #]`
-/

namespace A323173.P5637699824235779288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354866 (n + 1) - A354867 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A323173.P5637699824235779288

namespace A323173

/-- `∑{d}[A354866(n+1)-A354867(n+1), #]` -/
def P5637699824235779288.Spec : Prop :=
  ∀ n, (P5637699824235779288.a n : ℤ) = A323173 (n + 1)

end A323173

/-! ## A323173.P13377182924677365632

`∑{d}[A181821(n+1)/A181821(A052126(n+1)), #]`
-/

namespace A323173.P13377182924677365632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181821 (n + 1) : ℚ) / (A181821 (A052126 (n + 1)).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A323173.P13377182924677365632

namespace A323173

/-- `∑{d}[A181821(n+1)/A181821(A052126(n+1)), #]` -/
def P13377182924677365632.Spec : Prop :=
  ∀ n, (P13377182924677365632.a n : ℤ) = A323173 (n + 1)

end A323173

/-! ## A323173.P11221147988958369505

`A323243(A322863(n+1))`
-/

namespace A323173.P11221147988958369505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (A322863 (n + 1)).toNat

end

end A323173.P11221147988958369505

namespace A323173

/-- `A323243(A322863(n+1))` -/
def P11221147988958369505.Spec : Prop :=
  ∀ n, P11221147988958369505.a n = A323173 (n + 1)

end A323173

/-!
# A323174: Deficiency computed for conjugated prime factorization: a(n) = A033879(A122111(n)).

The programs for A323174, the canonical program `A323174.P10462648127159723099` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323174 has offset 1).

The definition of A323174 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323174.P5866651605337364872

`2*A122111(n+1)-A323173(n+1)`
-/

namespace A323174.P5866651605337364872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122111 (n + 1) - A323173 (n + 1)

end

end A323174.P5866651605337364872

namespace A323174

/-- `2*A122111(n+1)-A323173(n+1)` -/
def P5866651605337364872.Spec : Prop :=
  ∀ n, P5866651605337364872.a n = A323174 (n + 1)

end A323174

/-! ## A323174.P10462648127159723099

`A033879(A122111(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A323174

/-- `A033879(A122111(n+1))` -/
def P10462648127159723099.Spec : Prop :=
  ∀ n, P10462648127159723099.a n = A323174 (n + 1)

theorem P10462648127159723099.correct : P10462648127159723099.Spec := by
  intro n
  simp only [A323174, Nat.add_sub_cancel]

end A323174

/-! ## A323174.P9483640902390571795

`A323167(n+1)+A322867(n+1)`
-/

namespace A323174.P9483640902390571795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323167 (n + 1) + A322867 (n + 1)

end

end A323174.P9483640902390571795

namespace A323174

/-- `A323167(n+1)+A322867(n+1)` -/
def P9483640902390571795.Spec : Prop :=
  ∀ n, P9483640902390571795.a n = A323174 (n + 1)

end A323174

/-! ## A323174.P11527652556453543100

`A323167(n+1)+A000120(A322865(n+1))`
-/

namespace A323174.P11527652556453543100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323167 (n + 1) + A000120 (A322865 (n + 1)).toNat

end

end A323174.P11527652556453543100

namespace A323174

/-- `A323167(n+1)+A000120(A322865(n+1))` -/
def P11527652556453543100.Spec : Prop :=
  ∀ n, P11527652556453543100.a n = A323174 (n + 1)

end A323174

/-! ## A323174.P4420312340517653798

`A323167(n+1)+∑{d}[A322865(n+1), A297115(#)]`
-/

namespace A323174.P4420312340517653798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323167 (n + 1) + ∑ d ∈ Nat.divisors (f1 n).natAbs, A297115 d

end

end A323174.P4420312340517653798

namespace A323174

/-- `A323167(n+1)+∑{d}[A322865(n+1), A297115(#)]` -/
def P4420312340517653798.Spec : Prop :=
  ∀ n, P4420312340517653798.a n = A323174 (n + 1)

end A323174

/-! ## A323174.P17577493245733280447

`A323167(n+1)+dr(A139709(2*A322865(n+1)))`
-/

namespace A323174.P17577493245733280447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323167 (n + 1) + (SequenceMachineLib.digitalRoot (A139709 (2 * A322865 (n + 1)).toNat) : ℤ)

end

end A323174.P17577493245733280447

namespace A323174

/-- `A323167(n+1)+dr(A139709(2*A322865(n+1)))` -/
def P17577493245733280447.Spec : Prop :=
  ∀ n, P17577493245733280447.a n = A323174 (n + 1)

end A323174

/-! ## A323174.P14741277184343990958

`A323167(n+1)+∑{e}[A322863(n+1), #]`
-/

namespace A323174.P14741277184343990958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323167 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A323174.P14741277184343990958

namespace A323174

/-- `A323167(n+1)+∑{e}[A322863(n+1), #]` -/
def P14741277184343990958.Spec : Prop :=
  ∀ n, P14741277184343990958.a n = A323174 (n + 1)

end A323174

/-! ## A323174.P8934970696580770611

`-A033880(A122111(A135684(n+1)))`
-/

namespace A323174.P8934970696580770611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A033880 (A122111 (A135684 (n + 1)).toNat).toNat

end

end A323174.P8934970696580770611

namespace A323174

/-- `-A033880(A122111(A135684(n+1)))` -/
def P8934970696580770611.Spec : Prop :=
  ∀ n, P8934970696580770611.a n = A323174 (n + 1)

end A323174

/-! ## A323174.P10992830294388236001

`A323244(A322863(n+1))`
-/

namespace A323174.P10992830294388236001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (A322863 (n + 1)).toNat

end

end A323174.P10992830294388236001

namespace A323174

/-- `A323244(A322863(n+1))` -/
def P10992830294388236001.Spec : Prop :=
  ∀ n, P10992830294388236001.a n = A323174 (n + 1)

end A323174

/-! ## A323174.P10514549495678661538

`A324185(A253566(n+1))`
-/

namespace A323174.P10514549495678661538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324185 (A253566 (n + 1)).toNat

end

end A323174.P10514549495678661538

namespace A323174

/-- `A324185(A253566(n+1))` -/
def P10514549495678661538.Spec : Prop :=
  ∀ n, P10514549495678661538.a n = A323174 (n + 1)

end A323174

/-!
# A323178: a(n) = 1 + 100*n^2 for n >= 0.

The programs for A323178, the canonical program `A323178.P2135116130192440510` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323178 has offset 0).

The definition of A323178 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+100*n²` (program `A323178.P2135116130192440510`, by `A323178.P2135116130192440510.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A323178.P2135116130192440510

`1+100*n²`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A323178

/-- `1+100*n²` -/
def P2135116130192440510.Spec : Prop :=
  ∀ n, (P2135116130192440510.a n : ℤ) = A323178 n

theorem P2135116130192440510.correct : P2135116130192440510.Spec := by
  intro n
  simp only [A323178]

end A323178

/-! ## A323178.P8219325450976895898

`A261327(A008602(n))`
-/

namespace A323178.P8219325450976895898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 (A008602 n).toNat

end

end A323178.P8219325450976895898

namespace A323178

/-- `A261327(A008602(n))` -/
def P8219325450976895898.Spec : Prop :=
  ∀ n, P8219325450976895898.a n = A323178 n

end A323178

/-! ## A323178.P4853888944387825673

`or(1, (10*n)²)`
-/

namespace A323178.P4853888944387825673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((10 * n) ^ 2)

end

end A323178.P4853888944387825673

namespace A323178

/-- `or(1, (10*n)²)` -/
def P4853888944387825673.Spec : Prop :=
  ∀ n, (P4853888944387825673.a n : ℤ) = A323178 n

end A323178

/-! ## A323178.P101045105218055602

`xor(1, (10*n)²)`
-/

namespace A323178.P101045105218055602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((10 * n) ^ 2)

end

end A323178.P101045105218055602

namespace A323178

/-- `xor(1, (10*n)²)` -/
def P101045105218055602.Spec : Prop :=
  ∀ n, (P101045105218055602.a n : ℤ) = A323178 n

end A323178

/-! ## A323178.P9648734341394939978

`ceil(1/acot((10*n)²))`
-/

namespace A323178.P9648734341394939978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot ((10 * n) ^ 2 : ℝ)⌉

end

end A323178.P9648734341394939978

namespace A323178

/-- `ceil(1/acot((10*n)²))` -/
def P9648734341394939978.Spec : Prop :=
  ∀ n, P9648734341394939978.a n = A323178 n

end A323178

/-! ## A323178.P1567685986810596188

`abs(A008602(n)-A017282(n))`
-/

namespace A323178.P1567685986810596188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008602 n - A017282 n|

end

end A323178.P1567685986810596188

namespace A323178

/-- `abs(A008602(n)-A017282(n))` -/
def P1567685986810596188.Spec : Prop :=
  ∀ n, P1567685986810596188.a n = A323178 n

end A323178

/-! ## A323178.P7394832140296329710

`(A008592(n)²+1)%Δ[A000578(n+1)²]`
-/

namespace A323178.P7394832140296329710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008592 n ^ 2 + 1) (f1 (n + 1) - f1 n)

end

end A323178.P7394832140296329710

namespace A323178

/-- `(A008592(n)²+1)%Δ[A000578(n+1)²]` -/
def P7394832140296329710.Spec : Prop :=
  ∀ n, P7394832140296329710.a n = A323178 n

end A323178

/-! ## A323178.P8297179100567041800

`lcm(2, 25*A000290(2*n)+1)/2`
-/

namespace A323178.P8297179100567041800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (25 * A000290 (2 * n) + 1) : ℚ) / 2

end

end A323178.P8297179100567041800

namespace A323178

/-- `lcm(2, 25*A000290(2*n)+1)/2` -/
def P8297179100567041800.Spec : Prop :=
  ∀ n, P8297179100567041800.a n = (A323178 n : ℚ)

end A323178

/-! ## A323178.P15284856245729348047

`A053755(5*n)`
-/

namespace A323178.P15284856245729348047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (5 * n)

end

end A323178.P15284856245729348047

namespace A323178

/-- `A053755(5*n)` -/
def P15284856245729348047.Spec : Prop :=
  ∀ n, P15284856245729348047.a n = A323178 n

theorem P15284856245729348047.correct : P15284856245729348047.Spec := by
  intro n
  simp only [A323178, Nat.add_sub_cancel, A323178.P15284856245729348047.a, A323178.P2135116130192440510.a, A053755, A053755.P11748163540145338459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323178

/-! ## A323178.P7772332753414898592

`A002522(10*n)`
-/

namespace A323178.P7772332753414898592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (10 * n)

end

end A323178.P7772332753414898592

namespace A323178

/-- `A002522(10*n)` -/
def P7772332753414898592.Spec : Prop :=
  ∀ n, P7772332753414898592.a n = A323178 n

theorem P7772332753414898592.correct : P7772332753414898592.Spec := by
  intro n
  simp only [A323178, Nat.add_sub_cancel, A323178.P7772332753414898592.a, A323178.P2135116130192440510.a, A002522, A002522.P3778392011853271743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323178

/-! ## A323178.P18192702692913633842

`A081345(10*n)`
-/

namespace A323178.P18192702692913633842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081345 (10 * n)

end

end A323178.P18192702692913633842

namespace A323178

/-- `A081345(10*n)` -/
def P18192702692913633842.Spec : Prop :=
  ∀ n, P18192702692913633842.a n = A323178 n

end A323178

/-! ## A323178.P8780211657903199329

`A098748(10*n)`
-/

namespace A323178.P8780211657903199329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098748 (10 * n)

end

end A323178.P8780211657903199329

namespace A323178

/-- `A098748(10*n)` -/
def P8780211657903199329.Spec : Prop :=
  ∀ n, P8780211657903199329.a n = A323178 n

end A323178

/-! ## A323178.P15536985777403139351

`A228564(10*n)`
-/

namespace A323178.P15536985777403139351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 (10 * n)

end

end A323178.P15536985777403139351

namespace A323178

/-- `A228564(10*n)` -/
def P15536985777403139351.Spec : Prop :=
  ∀ n, P15536985777403139351.a n = A323178 n

end A323178

/-! ## A323178.P12225445742443663682

`A160457(10*n+1)`
-/

namespace A323178.P12225445742443663682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160457 (10 * n + 1)

end

end A323178.P12225445742443663682

namespace A323178

/-- `A160457(10*n+1)` -/
def P12225445742443663682.Spec : Prop :=
  ∀ n, P12225445742443663682.a n = A323178 n

theorem P12225445742443663682.correct : P12225445742443663682.Spec := by
  intro n
  simp only [A323178, Nat.add_sub_cancel, A323178.P12225445742443663682.a, A323178.P2135116130192440510.a, A160457, A160457.P13231799295759563819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323178

/-! ## A323178.P2510188967991945975

`A098749(A017281(n))`
-/

namespace A323178.P2510188967991945975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098749 (A017281 n).toNat

end

end A323178.P2510188967991945975

namespace A323178

/-- `A098749(A017281(n))` -/
def P2510188967991945975.Spec : Prop :=
  ∀ n, P2510188967991945975.a n = A323178 n

end A323178

/-! ## A323178.P16825166405137494725

`A349803(A008597(n))`
-/

namespace A323178.P16825166405137494725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349803 (A008597 n).toNat

end

end A323178.P16825166405137494725

namespace A323178

/-- `A349803(A008597(n))` -/
def P16825166405137494725.Spec : Prop :=
  ∀ n, P16825166405137494725.a n = A323178 n

end A323178

/-! ## A323178.P15757025122201889185

`A137224(A215145(n))`
-/

namespace A323178.P15757025122201889185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137224 (A215145 n).toNat

end

end A323178.P15757025122201889185

namespace A323178

/-- `A137224(A215145(n))` -/
def P15757025122201889185.Spec : Prop :=
  ∀ n, P15757025122201889185.a n = A323178 n

end A323178

/-! ## A323178.P18198281089711138530

`A261327(A008592(2*n))`
-/

namespace A323178.P18198281089711138530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 (A008592 (2 * n)).toNat

end

end A323178.P18198281089711138530

namespace A323178

/-- `A261327(A008592(2*n))` -/
def P18198281089711138530.Spec : Prop :=
  ∀ n, P18198281089711138530.a n = A323178 n

end A323178

/-! ## A323178.P13772841312156533415

`A261327(A146763(4*n))`
-/

namespace A323178.P13772841312156533415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 (A146763 (4 * n)).toNat

end

end A323178.P13772841312156533415

namespace A323178

/-- `A261327(A146763(4*n))` -/
def P13772841312156533415.Spec : Prop :=
  ∀ n, P13772841312156533415.a n = A323178 n

end A323178

/-! ## A323178.P16193408950260915140

`A261327(A017281(2*n)-1)`
-/

namespace A323178.P16193408950260915140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 (A017281 (2 * n) - 1).toNat

end

end A323178.P16193408950260915140

namespace A323178

/-- `A261327(A017281(2*n)-1)` -/
def P16193408950260915140.Spec : Prop :=
  ∀ n, P16193408950260915140.a n = A323178 n

end A323178

/-!
# A323181: a(n) = U_{2*n-1}(n)/(2*n) where U_{n}(x) is a Chebyshev polynomial of the second kind.

The programs for A323181, there is no canonical definition to state claims against.
-/

/-! ## A323181.P13393507685094681774

`A097691(2*(n+1))/(2*(n+1))`
-/

namespace A323181.P13393507685094681774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097691 (2 * (n + 1)) : ℚ) / (2 * (n + 1) : ℚ)

end

end A323181.P13393507685094681774

/-! ## A323181.P14942675380046434617

`A228161(A022266(n+1))/A005843(n+1)`
-/

namespace A323181.P14942675380046434617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228161 (A022266 (n + 1)).toNat : ℚ) / (A005843 (n + 1) : ℚ)

end

end A323181.P14942675380046434617

/-!
# A323182: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) is Chebyshev polynomial of the second kind U_{n}(x), evaluated at x=k.

The programs for A323182, there is no canonical definition to state claims against.
-/

/-! ## A323182.P16854010751502492208

`A228161(A061579(n))`
-/

namespace A323182.P16854010751502492208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (A061579 n).toNat

end

end A323182.P16854010751502492208

/-! ## A323182.P11150871661539051742

`A228161(A038722(n+1)-1)`
-/

namespace A323182.P11150871661539051742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (A038722 (n + 1) - 1).toNat

end

end A323182.P11150871661539051742

/-! ## A323182.P8584300050102946388

`A228161(A002024(n+1)²-(n+1))`
-/

namespace A323182.P8584300050102946388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A323182.P8584300050102946388

/-! ## A323182.P1922424287578539292

`A228161((A003056(n)+1)²-(n+1))`
-/

namespace A323182.P1922424287578539292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 ((A003056 n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A323182.P1922424287578539292

/-! ## A323182.P5154598482540790292

`A228161(A185869(n+1)-A016789(n))`
-/

namespace A323182.P5154598482540790292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (A185869 (n + 1) - A016789 n).toNat

end

end A323182.P5154598482540790292

/-! ## A323182.P4841156038901939760

`A228161(A185869(n+1)%A016789(n))`
-/

namespace A323182.P4841156038901939760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (Int.tmod (A185869 (n + 1)) (A016789 n)).toNat

end

end A323182.P4841156038901939760

/-!
# A323184: Numerators of rationals whose continued fraction representations show the prime factors of n (for n>1) in nondecreasing order.

The programs for A323184, there is no canonical definition to state claims against.
-/

/-! ## A323184.P12366971244865396272

`A323185(2*(n+2))%A323185(n+2)`
-/

namespace A323184.P12366971244865396272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323185 (2 * (n + 2))) (A323185 (n + 2))

end

end A323184.P12366971244865396272

/-! ## A323184.P2647200729009462442

`A323185(2*n+4)-2*A323185(n+2)`
-/

namespace A323184.P2647200729009462442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323185 (2 * n + 4) - 2 * A323185 (n + 2)

end

end A323184.P2647200729009462442

/-! ## A323184.P239008654017716019

`A266580(n+2)%(n+2)`
-/

namespace A323184.P239008654017716019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266580 (n + 2)) (n + 2 : ℤ)

end

end A323184.P239008654017716019

/-! ## A323184.P5385867145091262168

`A391214(A074736(n+2))`
-/

namespace A323184.P5385867145091262168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391214 (A074736 (n + 2)).toNat

end

end A323184.P5385867145091262168

/-! ## A323184.P14578539358579673588

`A274011(A328898(n+2))`
-/

namespace A323184.P14578539358579673588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274011 (A328898 (n + 2)).toNat

end

end A323184.P14578539358579673588

/-!
# A323185: Denominators of rationals whose continued fraction representations show the prime factors of n (for n > 1) in nondecreasing order.

The programs for A323185, there is no canonical definition to state claims against.
-/

/-! ## A323185.P376355185938915257

`A323184(2*(n+2))`
-/

namespace A323185.P376355185938915257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323184 (2 * (n + 2))

end

end A323185.P376355185938915257

/-! ## A323185.P15417750807877211605

`floor(A266580(n+2)/(n+2))`
-/

namespace A323185.P15417750807877211605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266580 (n + 2) : ℚ) / (n + 2 : ℚ)⌋

end

end A323185.P15417750807877211605

/-! ## A323185.P11855296076601866807

`A266580(2*(n+2))%(2*(n+2))`
-/

namespace A323185.P11855296076601866807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266580 (2 * (n + 2))) (2 * (n + 2) : ℤ)

end

end A323185.P11855296076601866807

/-! ## A323185.P8760604705079402509

`A000120(C(A281113(n+2)+5, 5))-(n-2*n)`
-/

namespace A323185.P8760604705079402509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A281113 (n + 2) + 5).toNat 5) - ((n : ℤ) - (2 * n : ℤ))

end

end A323185.P8760604705079402509

/-! ## A323185.P17210029079384410273

`A326198(A077570(n+2))`
-/

namespace A323185.P17210029079384410273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326198 (A077570 (n + 2)).toNat

end

end A323185.P17210029079384410273

/-!
# A323186: a(0) = 0, a'(0) = 0, a''(0) = 1, a''(1) = -1, a(n) = a(n-1) + a'(n), a'(n) = a'(n-1) + a''(n), a''(n) = -a''(n-1) if a(n-2) = 0, or else a''(n-1).

The programs for A323186, the canonical program `A323186.P15018472701164865408` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323186 has offset 0).

The definition of A323186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323186.P15479324737823080969

`∑[-A329116(n)]`
-/

namespace A323186.P15479324737823080969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A329116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323186.P15479324737823080969

namespace A323186

/-- `∑[-A329116(n)]` -/
def P15479324737823080969.Spec : Prop :=
  ∀ n, P15479324737823080969.a n = A323186 n

end A323186

/-! ## A323186.P3521023211418752919

`∑[-A359216(2*n)]`
-/

namespace A323186.P3521023211418752919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A359216 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323186.P3521023211418752919

namespace A323186

/-- `∑[-A359216(2*n)]` -/
def P3521023211418752919.Spec : Prop :=
  ∀ n, P3521023211418752919.a n = A323186 n

end A323186

/-! ## A323186.P4997321177189682707

`∑[-A255175(abs(1-n))]`
-/

namespace A323186.P4997321177189682707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A255175 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323186.P4997321177189682707

namespace A323186

/-- `∑[-A255175(abs(1-n))]` -/
def P4997321177189682707.Spec : Prop :=
  ∀ n, P4997321177189682707.a n = A323186 n

end A323186

/-! ## A323186.P3955160388187303063

`a(n-1)-A255175(n-1)` with `a(0)=0`
-/

namespace A323186.P3955160388187303063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A255175 (n - 1)

end

end A323186.P3955160388187303063

namespace A323186

/-- `a(n-1)-A255175(n-1)` -/
def P3955160388187303063.Spec : Prop :=
  ∀ n, P3955160388187303063.a n = A323186 n

end A323186

/-! ## A323186.P15018472701164865408

`∑[∑[2*A266982(n+1)]-n]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A323186

/-- `∑[∑[2*A266982(n+1)]-n]` -/
def P15018472701164865408.Spec : Prop :=
  ∀ n, P15018472701164865408.a n = A323186 n

theorem P15018472701164865408.correct : P15018472701164865408.Spec := by
  intro n
  simp only [A323186]

end A323186

/-! ## A323186.P5626965995968441222

`A255175(n)-∑[A255175(n)]`
-/

namespace A323186.P5626965995968441222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255175 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323186.P5626965995968441222

namespace A323186

/-- `A255175(n)-∑[A255175(n)]` -/
def P5626965995968441222.Spec : Prop :=
  ∀ n, P5626965995968441222.a n = A323186 n

end A323186

/-! ## A323186.P7719069659651786810

`∑[-(A196199(n)*A339265(n))]`
-/

namespace A323186.P7719069659651786810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A196199 n * A339265 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323186.P7719069659651786810

namespace A323186

/-- `∑[-(A196199(n)*A339265(n))]` -/
def P7719069659651786810.Spec : Prop :=
  ∀ n, P7719069659651786810.a n = A323186 n

end A323186

/-! ## A323186.P7175529187715661826

`∑[A220604(n+1)-A220603(n+1)]`
-/

namespace A323186.P7175529187715661826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220604 (n + 1) - A220603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323186.P7175529187715661826

namespace A323186

/-- `∑[A220604(n+1)-A220603(n+1)]` -/
def P7175529187715661826.Spec : Prop :=
  ∀ n, P7175529187715661826.a n = A323186 n

end A323186

/-! ## A323186.P160749743692228262

`∑[A274923(n+1)-A174344(n+1)]`
-/

namespace A323186.P160749743692228262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (n + 1) - A174344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323186.P160749743692228262

namespace A323186

/-- `∑[A274923(n+1)-A174344(n+1)]` -/
def P160749743692228262.Spec : Prop :=
  ∀ n, P160749743692228262.a n = A323186 n

end A323186

/-! ## A323186.P7762137944405654700

`A329116(n+1)-∑[A329116(n+1)]`
-/

namespace A323186.P7762137944405654700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323186.P7762137944405654700

namespace A323186

/-- `A329116(n+1)-∑[A329116(n+1)]` -/
def P7762137944405654700.Spec : Prop :=
  ∀ n, P7762137944405654700.a n = A323186 n

end A323186

/-! ## A323186.P7685688584785224744

`∑[A296030(2*(n+1))-A174344(n+1)]`
-/

namespace A323186.P7685688584785224744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * (n + 1)) - A174344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323186.P7685688584785224744

namespace A323186

/-- `∑[A296030(2*(n+1))-A174344(n+1)]` -/
def P7685688584785224744.Spec : Prop :=
  ∀ n, P7685688584785224744.a n = A323186 n

end A323186

/-! ## A323186.P13588868291632454387

`∑[A274923(n+1)-A296030(2*n+1)]`
-/

namespace A323186.P13588868291632454387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (n + 1) - A296030 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323186.P13588868291632454387

namespace A323186

/-- `∑[A274923(n+1)-A296030(2*n+1)]` -/
def P13588868291632454387.Spec : Prop :=
  ∀ n, P13588868291632454387.a n = A323186 n

end A323186

/-! ## A323186.P16692172091705324225

`∑[A319514(2*n)-A319514(2*n+1)]`
-/

namespace A323186.P16692172091705324225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319514 (2 * n) - A319514 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323186.P16692172091705324225

namespace A323186

/-- `∑[A319514(2*n)-A319514(2*n+1)]` -/
def P16692172091705324225.Spec : Prop :=
  ∀ n, P16692172091705324225.a n = A323186 n

end A323186

/-! ## A323186.P3370562472958094348

`∑[A296030(2*(n+1))-A296030(2*n+1)]`
-/

namespace A323186.P3370562472958094348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * (n + 1)) - A296030 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323186.P3370562472958094348

namespace A323186

/-- `∑[A296030(2*(n+1))-A296030(2*n+1)]` -/
def P3370562472958094348.Spec : Prop :=
  ∀ n, P3370562472958094348.a n = A323186 n

end A323186

/-! ## A323186.P9477575830400486298

`A359216(2*(n+1))-∑[A359216(2*(n+1))]`
-/

namespace A323186.P9477575830400486298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359216 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359216 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323186.P9477575830400486298

namespace A323186

/-- `A359216(2*(n+1))-∑[A359216(2*(n+1))]` -/
def P9477575830400486298.Spec : Prop :=
  ∀ n, P9477575830400486298.a n = A323186 n

end A323186

/-!
# A323187: Partial sums of A323183.

The programs for A323187, there is no canonical definition to state claims against.
-/

/-! ## A323187.P14942920755603975210

`∑[A323183(n)]`
-/

namespace A323187.P14942920755603975210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323187.P14942920755603975210

/-! ## A323187.P5574683549057550411

`A323183(n)+a(n-A178334(n))` with `a(0)=1`
-/

namespace A323187.P5574683549057550411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A323183 n + a ((n : ℤ) - A178334 n).toNat

end

end A323187.P5574683549057550411

/-! ## A323187.P2935750230658071327

`A323183(n)+A002251(A002251(a(n-1)))` with `a(0)=1`
-/

namespace A323187.P2935750230658071327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A323183 n + A002251 (A002251 (a (n - 1)).toNat).toNat

end

end A323187.P2935750230658071327

/-! ## A323187.P2241767165294014666

`∑{d}[A000079(n), A323183(A001222(#))]`
-/

namespace A323187.P2241767165294014666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323183 (A001222 d).toNat

end

end A323187.P2241767165294014666

/-!
# A323188: Number of n-step mirror-symmetrical self-avoiding walks on the square lattice.

The programs for A323188, there is no canonical definition to state claims against.
-/

/-! ## A323188.P9979432193760350307

`16*A037245(n+1)-8*A151538(n+1)-4`
-/

namespace A323188.P9979432193760350307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A037245 (n + 1) - 8 * A151538 (n + 1) - 4

end

end A323188.P9979432193760350307

/-!
# A323189: Number of n-step point-symmetrical self-avoiding walks on the square lattice.

The programs for A323189, there is no canonical definition to state claims against.
-/

/-! ## A323189.P17088863240555990752

`8*A151538(n+1)-A001411(n+1)`
-/

namespace A323189.P17088863240555990752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A151538 (n + 1) - A001411 (n + 1)

end

end A323189.P17088863240555990752

/-! ## A323189.P5861862506465289793

`A001411(A034178(3^n))`
-/

namespace A323189.P5861862506465289793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001411 (A034178 (3 ^ n)).toNat

end

end A323189.P5861862506465289793

/-! ## A323189.P14771593208692597778

`A001411(A038548(3^n))`
-/

namespace A323189.P14771593208692597778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001411 (A038548 (3 ^ n)).toNat

end

end A323189.P14771593208692597778

/-! ## A323189.P973718965271523250

`A001411(A046951(3^n))`
-/

namespace A323189.P973718965271523250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001411 (A046951 (3 ^ n)).toNat

end

end A323189.P973718965271523250

/-! ## A323189.P15526470976177125350

`A336988(A074148(n+1)+2)`
-/

namespace A323189.P15526470976177125350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336988 (A074148 (n + 1) + 2).toNat

end

end A323189.P15526470976177125350

/-!
# A323190: Integers k for which there exists an integer j such that s(k) + j + reversal(s(k) + j) = k where s(k) is the sum of digits of k.

The programs for A323190, there is no canonical definition to state claims against.
-/

/-! ## A323190.P3523860147879079070

`A067030(n+4)%∑[n+8]`
-/

namespace A323190.P3523860147879079070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067030 (n + 4)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A323190.P3523860147879079070

/-! ## A323190.P12785390870118540519

`A067030(and(n+4, floor(acot(n))-1))`
-/

namespace A323190.P12785390870118540519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (Int.land (n + 4 : ℤ) (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A323190.P12785390870118540519

/-! ## A323190.P5004260368111860427

`A067030(comp[a(n-1)+2]-n)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=1`
-/

namespace A323190.P5004260368111860427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 1] fun n f1 =>
  f1 (n - 1) + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A323190.P5004260368111860427

/-! ## A323190.P8795181226378966792

`A057427(n)*A067030(n+4)`
-/

namespace A323190.P8795181226378966792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A067030 (n + 4)

end

end A323190.P8795181226378966792

/-! ## A323190.P12695564119215496812

`A067030(n+4)*A178334(n)`
-/

namespace A323190.P12695564119215496812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (n + 4) * A178334 n

end

end A323190.P12695564119215496812

/-! ## A323190.P8729041219736712442

`A057428(n)²*A067030(n+4)`
-/

namespace A323190.P8729041219736712442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A067030 (n + 4)

end

end A323190.P8729041219736712442

/-! ## A323190.P5732081087832239404

`A000040(n+1)%2*A067030(n+4)`
-/

namespace A323190.P5732081087832239404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A067030 (n + 4)

end

end A323190.P5732081087832239404

/-! ## A323190.P8888466355896174913

`A000045(n²%(n+1))*A067030(n+4)`
-/

namespace A323190.P8888466355896174913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n ^ 2 % (n + 1)) * A067030 (n + 4)

end

end A323190.P8888466355896174913

/-! ## A323190.P3320153656126471827

`(A000005(n²+1)+1)%2*A067030(n+4)`
-/

namespace A323190.P3320153656126471827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n ^ 2 + 1) + 1) 2 * A067030 (n + 4)

end

end A323190.P3320153656126471827

/-!
# A323191: Expansion of (1 - x^5) / ((1 + x) * (1 + x^4)) in powers of x.

The programs for A323191, the canonical program `A323191.P3242644865636642946` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323191 has offset 0).

The definition of A323191 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^5)/(1+x+x^4+x^5))` (program `A323191.P3242644865636642946`, by `A323191.P3242644865636642946.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A323191.P3242644865636642946

`ogf((1-x^5)/(1+x+x^4+x^5))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A323191

/-- `ogf((1-x^5)/(1+x+x^4+x^5))` -/
def P3242644865636642946.Spec : Prop :=
  ∀ n, P3242644865636642946.a n = A323191 n

theorem P3242644865636642946.correct : P3242644865636642946.Spec := by
  intro n
  simp only [A323191]

end A323191

/-!
# A323192: Numbers x such that the binary complement of x is larger than the binary complement of x^2: A035327(x) > A035327(x^2).

The programs for A323192, there is no canonical definition to state claims against.
-/

/-! ## A323192.P9405206337944738919

`A144932(A222432(n+1)+A058005(n+1))`
-/

namespace A323192.P9405206337944738919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144932 (A222432 (n + 1) + A058005 (n + 1)).toNat

end

end A323192.P9405206337944738919

/-!
# A323197: Numbers k such that 455*2^k+1 is prime.

The programs for A323197, there is no canonical definition to state claims against.
-/

/-! ## A323197.P15655353665347502549

`A234300(A357998(n+8)+A155372(n+5))`
-/

namespace A323197.P15655353665347502549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (A357998 (n + 8) + A155372 (n + 5)).toNat

end

end A323197.P15655353665347502549

/-! ## A323197.P14645141033008351691

`A234300(A357998(n+8)+A155373(n+5))`
-/

namespace A323197.P14645141033008351691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (A357998 (n + 8) + A155373 (n + 5)).toNat

end

end A323197.P14645141033008351691

