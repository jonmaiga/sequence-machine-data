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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A094600: G.f. satisfies: a(2*n) equals coefficient of x^n in A(x)^(n+1) and a(2*n+1) equals coefficient of x^(n+1) in A(x)^(n+1), for n>=0, with a(0)=1.

The programs for A094600, there is no canonical definition to state claims against.
-/

/-! ## A094600.P14895093867155404995

`A072979(n+1)+A072966(A147387(n+1))`
-/

namespace A094600.P14895093867155404995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072979 (n + 1) + A072966 (A147387 (n + 1)).toNat

end

end A094600.P14895093867155404995

/-!
# A094601: G.f. satisfies: A(x) = F(x*A(x)), where F(x) is the g.f. of A094600.

The programs for A094601, there is no canonical definition to state claims against.
-/

/-! ## A094601.P18013170055626111516

`A094600(2*n)/(n+1)`
-/

namespace A094601.P18013170055626111516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094600 (2 * n) : ℚ) / (n + 1 : ℚ)

end

end A094601.P18013170055626111516

/-! ## A094601.P10736904924419032005

`floor(A094600(2*n)/A008620(3*n))`
-/

namespace A094601.P10736904924419032005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094600 (2 * n) : ℚ) / (A008620 (3 * n) : ℚ)⌋

end

end A094601.P10736904924419032005

/-! ## A094601.P15510022742460138778

`(n+1)^A008683(A020483(n))*A094600(2*n)`
-/

namespace A094601.P15510022742460138778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A094600 (2 * n) : ℚ)

end

end A094601.P15510022742460138778

/-!
# A094602: Total number of edges in all connected unlabeled graphs on n nodes.

The programs for A094602, there is no canonical definition to state claims against.
-/

/-! ## A094602.P17632197588564322797

`A215090(A000165(n))-A020129(n)`
-/

namespace A094602.P17632197588564322797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A000165 n).toNat - A020129 n

end

end A094602.P17632197588564322797

/-! ## A094602.P9546692358754499194

`xor(A055748(A118341(n)), A324752(n))`
-/

namespace A094602.P9546692358754499194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055748 (A118341 n).toNat) (A324752 n)

end

end A094602.P9546692358754499194

/-!
# A094603: a(n) is the length of the maximal sequence of rightmost black cells in the n-th row of Rule 30 (begun from an initial black cell).

The programs for A094603, there is no canonical definition to state claims against.
-/

/-! ## A094603.P11691871015621036190

`A094604(val(n+1, 2))`
-/

namespace A094603.P11691871015621036190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094604 (SequenceMachineLib.valuation (n + 1) 2)

end

end A094603.P11691871015621036190

/-! ## A094603.P1005282595657485389

`A094604(A007814(n+1))`
-/

namespace A094603.P1005282595657485389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094604 (A007814 (n + 1)).toNat

end

end A094603.P1005282595657485389

/-! ## A094603.P2422366923862239559

`A094604(2*n-A101921(n+1))`
-/

namespace A094603.P2422366923862239559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094604 ((2 * n : ℤ) - A101921 (n + 1)).toNat

end

end A094603.P2422366923862239559

/-! ## A094603.P359642348377938666

`A094604(n-A101921(n+1)+n)`
-/

namespace A094603.P359642348377938666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094604 ((n : ℤ) - A101921 (n + 1) + (n : ℤ)).toNat

end

end A094603.P359642348377938666

/-! ## A094603.P4867106311661907043

`A094604(A000120(n)+1-A000120(n+1))`
-/

namespace A094603.P4867106311661907043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094604 (A000120 n + (1 - A000120 (n + 1))).toNat

end

end A094603.P4867106311661907043

/-! ## A094603.P433775403377065362

`A100053(or(n, n+1)-n)+1`
-/

namespace A094603.P433775403377065362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100053 (Nat.lor n (n + 1) - n) + 1

end

end A094603.P433775403377065362

/-! ## A094603.P10551632346309894529

`A100053(n+1-and(n, n+1))+1`
-/

namespace A094603.P10551632346309894529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100053 (n + 1 - Nat.land n (n + 1)) + 1

end

end A094603.P10551632346309894529

/-! ## A094603.P13957442785938164574

`val(A110240(n)+1, 2)`
-/

namespace A094603.P13957442785938164574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A110240 n + 1).toNat 2

end

end A094603.P13957442785938164574

/-! ## A094603.P17405480697015948273

`val(A265697(n+1), 2)`
-/

namespace A094603.P17405480697015948273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A265697 (n + 1)).toNat 2

end

end A094603.P17405480697015948273

/-! ## A094603.P9179084330102134439

`A226481(∑[A226482(n)]-1)`
-/

namespace A094603.P9179084330102134439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226481 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A094603.P9179084330102134439

/-!
# A094604: Largest number (up to that point) of consecutive rightmost black cells in the rows of Rule 30 (begun from an initial black cell). a(n) = b(2^n), where b(m) is sequence A094603.

The programs for A094604, there is no canonical definition to state claims against.
-/

/-! ## A094604.P12346847987773942263

`eq[1, Δ[A094606(A028310(n))]]`
-/

namespace A094604.P12346847987773942263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094606 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094604.P12346847987773942263

/-! ## A094604.P14333094403711547810

`record[Δ[A094606(n+1)]*A000027(n+1)]`
-/

namespace A094604.P14333094403711547810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094606 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094604.P14333094403711547810

/-! ## A094604.P11750682675973228878

`record[Δ[A094606(n+1)]*A008619(2*n)]`
-/

namespace A094604.P11750682675973228878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094606 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094604.P11750682675973228878

/-! ## A094604.P11713626684949562715

`record[Δ[A094606(n+1)]*A028242(2*n)]`
-/

namespace A094604.P11713626684949562715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094606 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A028242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094604.P11713626684949562715

/-!
# A094605: a(n) is the period of the n-th diagonal, from the right, of Rule 30 (begun from an initial black cell).

The programs for A094605, there is no canonical definition to state claims against.
-/

/-! ## A094605.P9473499718810541776

`2^A094606(n+1)`
-/

namespace A094605.P9473499718810541776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A094606 (n + 1) : ℤ)

end

end A094605.P9473499718810541776

/-! ## A094605.P8254700118633348122

`A000079(A094606(n+1))`
-/

namespace A094605.P8254700118633348122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A094606 (n + 1)).toNat

end

end A094605.P8254700118633348122

/-! ## A094605.P9954769925327469901

`A336996(A094606(n+1)²)`
-/

namespace A094605.P9954769925327469901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336996 (A094606 (n + 1) ^ 2).toNat

end

end A094605.P9954769925327469901

/-! ## A094605.P9918302994526106239

`A011782(A094606(n+1)+1)`
-/

namespace A094605.P9918302994526106239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A094606 (n + 1) + 1).toNat

end

end A094605.P9918302994526106239

/-! ## A094605.P4917587153685511910

`A131577(A094606(n+1)+1)`
-/

namespace A094605.P4917587153685511910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A094606 (n + 1) + 1).toNat

end

end A094605.P4917587153685511910

/-!
# A094606: Base-2 logarithm of A094605.

The programs for A094606, there is no canonical definition to state claims against.
-/

/-! ## A094606.P10317508281132180851

`∑[char[A094604(n)]]`
-/

namespace A094606.P10317508281132180851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094604 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094606.P10317508281132180851

/-! ## A094606.P15085233268371385946

`log2(A094605(n+1))`
-/

namespace A094606.P15085233268371385946
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A094605 (n + 1) : ℝ)

end

end A094606.P15085233268371385946

/-! ## A094606.P5227809628552737811

`∑{e}[A094605(2*n+1-n), #]`
-/

namespace A094606.P5227809628552737811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094605 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A094606.P5227809628552737811

/-! ## A094606.P9019088183798178244

`val(A094605(A000027(n+1)), 2)`
-/

namespace A094606.P9019088183798178244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094605 (A000027 (n + 1)).toNat).toNat 2

end

end A094606.P9019088183798178244

/-! ## A094606.P17404233543173309229

`val(A094605(n+1), A262079(n+1)+1)`
-/

namespace A094606.P17404233543173309229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094605 (n + 1)).toNat (A262079 (n + 1) + 1).toNat

end

end A094606.P17404233543173309229

/-!
# A094607: Rectangular array T by antidiagonals: row n consists of the positive integers k for which there are exactly n sets of Fibonacci numbers whose sum is k.

The programs for A094607, there is no canonical definition to state claims against.
-/

/-! ## A094607.P1195957326637646857

`A094608(n+1)+A175004(n+1)-A035513(n+1)`
-/

namespace A094607.P1195957326637646857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094608 (n + 1) + (A175004 (n + 1) - A035513 (n + 1))

end

end A094607.P1195957326637646857

/-! ## A094607.P10319581980200230847

`A094608(n+1)+A175004(n+1)-A114579(A083412(n))`
-/

namespace A094607.P10319581980200230847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094608 (n + 1) + (A175004 (n + 1) - A114579 (A083412 n).toNat)

end

end A094607.P10319581980200230847

/-! ## A094607.P15883862648524281450

`A094608(n+1)+A175004(n+1)-(A287870(n+1)+A287869(n+1))`
-/

namespace A094607.P15883862648524281450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094608 (n + 1) + (A175004 (n + 1) - (A287870 (n + 1) + A287869 (n + 1)))

end

end A094607.P15883862648524281450

/-!
# A094608: Rectangular array T by antidiagonals: row n consists of ranks of n in A000119.

The programs for A094608, there is no canonical definition to state claims against.
-/

/-! ## A094608.P967621226930299566

`A035513(n+1)+A094607(n+1)-A175004(n+1)`
-/

namespace A094608.P967621226930299566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (n + 1) + (A094607 (n + 1) - A175004 (n + 1))

end

end A094608.P967621226930299566

/-! ## A094608.P8668990747626203592

`A094607(n+1)+A114579(A083412(n))-A175004(n+1)`
-/

namespace A094608.P8668990747626203592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094607 (n + 1) + (A114579 (A083412 n).toNat - A175004 (n + 1))

end

end A094608.P8668990747626203592

/-! ## A094608.P10852160425051205439

`A094607(n+1)-A175004(n+1)+A287870(n+1)+A287869(n+1)`
-/

namespace A094608.P10852160425051205439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094607 (n + 1) - A175004 (n + 1) + (A287870 (n + 1) + A287869 (n + 1))

end

end A094608.P10852160425051205439

/-!
# A094610: Number of unlabeled 4-gonal 2-trees with n 4-gons.

The programs for A094610, there is no canonical definition to state claims against.
-/

/-! ## A094610.P142947201238859264

`A340811(∑[n+3])`
-/

namespace A094610.P142947201238859264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094610.P142947201238859264

/-! ## A094610.P5095235461055488456

`or(A000007(n), A340811(A055998(n+1)))`
-/

namespace A094610.P5095235461055488456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A340811 (A055998 (n + 1)).toNat)

end

end A094610.P5095235461055488456

/-! ## A094610.P11199407794969903195

`A340811(A027379(n+1))+A000007(n+1)`
-/

namespace A094610.P11199407794969903195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A027379 (n + 1)).toNat + A000007 (n + 1)

end

end A094610.P11199407794969903195

/-! ## A094610.P15106895637475836792

`A340811(A055998(n+1))+val(A036453(n+1), 3)`
-/

namespace A094610.P15106895637475836792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A055998 (n + 1)).toNat + (SequenceMachineLib.valuation (A036453 (n + 1)).toNat 3 : ℤ)

end

end A094610.P15106895637475836792

/-! ## A094610.P16519991460143792739

`A340811(A055998(n+1))*A340811(A000217(n))`
-/

namespace A094610.P16519991460143792739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A055998 (n + 1)).toNat * A340811 (A000217 n).toNat

end

end A094610.P16519991460143792739

/-!
# A094611: Number of unlabeled pentagonal 2-trees with n pentagons.

The programs for A094611, there is no canonical definition to state claims against.
-/

/-! ## A094611.P18133921509795931491

`A340811(∑[n+3]+n+3)`
-/

namespace A094611.P18133921509795931491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A094611.P18133921509795931491

/-! ## A094611.P18148868431432795203

`lcm(A020985(n), A340811(A000217(n+4)-4))`
-/

namespace A094611.P18148868431432795203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A340811 (A000217 (n + 4) - 4).toNat)

end

end A094611.P18148868431432795203

/-! ## A094611.P18366044619057727982

`or(A000007(n), A340811(A000217(n+4)-4))`
-/

namespace A094611.P18366044619057727982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A340811 (A000217 (n + 4) - 4).toNat)

end

end A094611.P18366044619057727982

/-! ## A094611.P4415608392854357128

`A033999(n)²*A340811(A000217(n+4)-4)`
-/

namespace A094611.P4415608392854357128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A340811 (A000217 (n + 4) - 4).toNat

end

end A094611.P4415608392854357128

/-! ## A094611.P13029719807995599923

`A340811(A000217(n+4)-4)+n*A000038(n)²`
-/

namespace A094611.P13029719807995599923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A000217 (n + 4) - 4).toNat + (n : ℤ) * A000038 n ^ 2

end

end A094611.P13029719807995599923

/-! ## A094611.P17716421800188859535

`A000041(C(2, n+2))*A340811(A000217(n+4)-4)`
-/

namespace A094611.P17716421800188859535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A340811 (A000217 (n + 4) - 4).toNat

end

end A094611.P17716421800188859535

/-! ## A094611.P13493625551117713779

`A000108(C(2, n+2))*A340811(A000217(n+4)-4)`
-/

namespace A094611.P13493625551117713779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A340811 (A000217 (n + 4) - 4).toNat

end

end A094611.P13493625551117713779

/-!
# A094612: Fundamental discriminants of real quadratic number fields with class number 3.

The programs for A094612, there is no canonical definition to state claims against.
-/

/-! ## A094612.P4251836531795894900

`∩[A342368(n+1), A344409(n+1)]`
-/

namespace A094612.P4251836531795894900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094612.P4251836531795894900

/-! ## A094612.P1678757111255636882

`∩[A344409(n+1), A396864(n+1)]`
-/

namespace A094612.P1678757111255636882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094612.P1678757111255636882

/-! ## A094612.P16959666878304751948

`∪[A391421(n+1), A391532(n+1)]`
-/

namespace A094612.P16959666878304751948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094612.P16959666878304751948

/-! ## A094612.P504382375967169474

`∩[A344409(n+1), A396862(n+1)]`
-/

namespace A094612.P504382375967169474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094612.P504382375967169474

/-! ## A094612.P3927036403080632852

`filter[A344409(n+1), A290098(#)]`
-/

namespace A094612.P3927036403080632852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A094612.P3927036403080632852

/-! ## A094612.P4506776328580030232

`∩[A003658(n+1), A344409(n+1)]`
-/

namespace A094612.P4506776328580030232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094612.P4506776328580030232

/-! ## A094612.P17572454997037234325

`∩[A035120(n+1), A344409(n+1)]`
-/

namespace A094612.P17572454997037234325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094612.P17572454997037234325

/-!
# A094615: Triangular array T of numbers generated by these rules: 1 is in T; and if x is in T, then 2x+1 and 3x+2 are in T.

The programs for A094615, the canonical program `A094615.P10252983298247596702` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094615 has offset 0).

The definition of A094615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094615.P12967184733960871537

`3^col(n)*2^(row(n)+1-col(n))-1`
-/

namespace A094615.P12967184733960871537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ SequenceMachineLib.triCol n : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) - 1

end

end A094615.P12967184733960871537

namespace A094615

/-- `3^col(n)*2^(row(n)+1-col(n))-1` -/
def P12967184733960871537.Spec : Prop :=
  ∀ n, P12967184733960871537.a n = (A094615 n : ℚ)

end A094615

/-! ## A094615.P10252983298247596702

`A081954(n+1)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A094615

/-- `A081954(n+1)-1` -/
def P10252983298247596702.Spec : Prop :=
  ∀ n, P10252983298247596702.a n = A094615 n

theorem P10252983298247596702.correct : P10252983298247596702.Spec := by
  intro n
  simp only [A094615]

end A094615

/-! ## A094615.P10741793770938846845

`2*A230445(n)+1`
-/

namespace A094615.P10741793770938846845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230445 n + 1

end

end A094615.P10741793770938846845

namespace A094615

/-- `2*A230445(n)+1` -/
def P10741793770938846845.Spec : Prop :=
  ∀ n, P10741793770938846845.a n = A094615 n

end A094615

/-! ## A094615.P445855027944377061

`2*A036561(n)-1`
-/

namespace A094615.P445855027944377061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036561 n - 1

end

end A094615.P445855027944377061

namespace A094615

/-- `2*A036561(n)-1` -/
def P445855027944377061.Spec : Prop :=
  ∀ n, P445855027944377061.a n = A094615 n

end A094615

/-! ## A094615.P4519166427905414157

`2*A094617(n+1)-3`
-/

namespace A094615.P4519166427905414157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094617 (n + 1) - 3

end

end A094615.P4519166427905414157

namespace A094615

/-- `2*A094617(n+1)-3` -/
def P4519166427905414157.Spec : Prop :=
  ∀ n, P4519166427905414157.a n = A094615 n

end A094615

/-! ## A094615.P15466142179042052152

`A230445(n)+A036561(n)`
-/

namespace A094615.P15466142179042052152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230445 n + A036561 n

end

end A094615.P15466142179042052152

namespace A094615

/-- `A230445(n)+A036561(n)` -/
def P15466142179042052152.Spec : Prop :=
  ∀ n, P15466142179042052152.a n = A094615 n

end A094615

/-! ## A094615.P13878201138083811892

`A036561(A007401(n+1))-1`
-/

namespace A094615.P13878201138083811892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A007401 (n + 1)).toNat - 1

end

end A094615.P13878201138083811892

namespace A094615

/-- `A036561(A007401(n+1))-1` -/
def P13878201138083811892.Spec : Prop :=
  ∀ n, P13878201138083811892.a n = A094615 n

end A094615

/-! ## A094615.P13531719799314199134

`A094617(n+1)+A230445(n)-1`
-/

namespace A094615.P13531719799314199134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094617 (n + 1) + (A230445 n - 1)

end

end A094615.P13531719799314199134

namespace A094615

/-- `A094617(n+1)+A230445(n)-1` -/
def P13531719799314199134.Spec : Prop :=
  ∀ n, P13531719799314199134.a n = A094615 n

end A094615

/-! ## A094615.P7772934206177639821

`2*A013620(n)/A007318(n)-1`
-/

namespace A094615.P7772934206177639821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A013620 n : ℚ) / (A007318 n : ℚ)) - 1

end

end A094615.P7772934206177639821

namespace A094615

/-- `2*A013620(n)/A007318(n)-1` -/
def P7772934206177639821.Spec : Prop :=
  ∀ n, P7772934206177639821.a n = (A094615 n : ℚ)

end A094615

/-! ## A094615.P18108037357153757350

`A036561(n)+xor(A036561(n), A130330(n))`
-/

namespace A094615.P18108037357153757350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n + Int.xor (A036561 n) (A130330 n)

end

end A094615.P18108037357153757350

namespace A094615

/-- `A036561(n)+xor(A036561(n), A130330(n))` -/
def P18108037357153757350.Spec : Prop :=
  ∀ n, P18108037357153757350.a n = A094615 n

end A094615

/-! ## A094615.P13785243476630069501

`A230445(n)+xor(A130330(n), A230445(n))`
-/

namespace A094615.P13785243476630069501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230445 n + Int.xor (A130330 n) (A230445 n)

end

end A094615.P13785243476630069501

namespace A094615

/-- `A230445(n)+xor(A130330(n), A230445(n))` -/
def P13785243476630069501.Spec : Prop :=
  ∀ n, P13785243476630069501.a n = A094615 n

end A094615

/-! ## A094615.P2988284636890953284

`A036561(n)+A036561(n)-A034947(n+1)²`
-/

namespace A094615.P2988284636890953284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n + (A036561 n - A034947 (n + 1) ^ 2)

end

end A094615.P2988284636890953284

namespace A094615

/-- `A036561(n)+A036561(n)-A034947(n+1)²` -/
def P2988284636890953284.Spec : Prop :=
  ∀ n, P2988284636890953284.a n = A094615 n

end A094615

/-! ## A094615.P6055429772803053804

`A036561(n)+A036561(n)-A309873(n+1)²`
-/

namespace A094615.P6055429772803053804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n + (A036561 n - A309873 (n + 1) ^ 2)

end

end A094615.P6055429772803053804

namespace A094615

/-- `A036561(n)+A036561(n)-A309873(n+1)²` -/
def P6055429772803053804.Spec : Prop :=
  ∀ n, P6055429772803053804.a n = A094615 n

end A094615

/-! ## A094615.P1033937907724040183

`2*A175840(A061579(n))-1`
-/

namespace A094615.P1033937907724040183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175840 (A061579 n).toNat - 1

end

end A094615.P1033937907724040183

namespace A094615

/-- `2*A175840(A061579(n))-1` -/
def P1033937907724040183.Spec : Prop :=
  ∀ n, P1033937907724040183.a n = A094615 n

end A094615

/-! ## A094615.P8310789250546262357

`A094617(comp[∑[n]])-2`
-/

namespace A094615.P8310789250546262357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094617 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 2

end

end A094615.P8310789250546262357

namespace A094615

/-- `A094617(comp[∑[n]])-2` -/
def P8310789250546262357.Spec : Prop :=
  ∀ n, P8310789250546262357.a n = A094615 n

end A094615

/-! ## A094615.P90620639992378

`A230445(A007401(n+1))`
-/

namespace A094615.P90620639992378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230445 (A007401 (n + 1)).toNat

end

end A094615.P90620639992378

namespace A094615

/-- `A230445(A007401(n+1))` -/
def P90620639992378.Spec : Prop :=
  ∀ n, P90620639992378.a n = A094615 n

end A094615

/-! ## A094615.P8518144582271724171

`2*A155118(A014132(n+1))-1`
-/

namespace A094615.P8518144582271724171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155118 (A014132 (n + 1)).toNat - 1

end

end A094615.P8518144582271724171

namespace A094615

/-- `2*A155118(A014132(n+1))-1` -/
def P8518144582271724171.Spec : Prop :=
  ∀ n, P8518144582271724171.a n = A094615 n

end A094615

/-! ## A094615.P14413584917661938646

`A190812(A247714(n))`
-/

namespace A094615.P14413584917661938646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190812 (A247714 n).toNat

end

end A094615.P14413584917661938646

namespace A094615

/-- `A190812(A247714(n))` -/
def P14413584917661938646.Spec : Prop :=
  ∀ n, P14413584917661938646.a n = A094615 n

end A094615

/-! ## A094615.P326291955065134267

`A007694(A247714(n)+1)-1`
-/

namespace A094615.P326291955065134267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (A247714 n + 1).toNat - 1

end

end A094615.P326291955065134267

namespace A094615

/-- `A007694(A247714(n)+1)-1` -/
def P326291955065134267.Spec : Prop :=
  ∀ n, P326291955065134267.a n = A094615 n

end A094615

/-! ## A094615.P4088470234391323995

`A036561(n)+A036561(n)-A001055(A000040(n+1))`
-/

namespace A094615.P4088470234391323995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n + (A036561 n - A001055 (A000040 (n + 1)).toNat)

end

end A094615.P4088470234391323995

namespace A094615

/-- `A036561(n)+A036561(n)-A001055(A000040(n+1))` -/
def P4088470234391323995.Spec : Prop :=
  ∀ n, P4088470234391323995.a n = A094615 n

end A094615

/-!
# A094616: Row sums of A094615.

The programs for A094616, the canonical program `A094616.P4086343154494541874` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094616 has offset 0).

The definition of A094616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094616.P4086343154494541874

`2*(a(n-1)+3^n)+n-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094616

/-- `2*(a(n-1)+3^n)+n-1` -/
def P4086343154494541874.Spec : Prop :=
  ∀ n, P4086343154494541874.a n = A094616 n

theorem P4086343154494541874.correct : P4086343154494541874.Spec := by
  intro n
  simp only [A094616]

end A094616

/-! ## A094616.P17597547636457641881

`2*3^(n+1)-2^(n+2)-n-1`
-/

namespace A094616.P17597547636457641881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 3 ^ (n + 1) : ℤ) - (2 ^ (n + 2) : ℤ) - (n : ℤ) - 1

end

end A094616.P17597547636457641881

namespace A094616

/-- `2*3^(n+1)-2^(n+2)-n-1` -/
def P17597547636457641881.Spec : Prop :=
  ∀ n, P17597547636457641881.a n = A094616 n

theorem P17597547636457641881.correct : P17597547636457641881.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A094616, Nat.add_sub_cancel, A094616.P17597547636457641881.a, A094616.P4086343154494541874.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A094616, Nat.add_sub_cancel, A094616.P17597547636457641881.a, A094616.P4086343154494541874.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A094616

/-! ## A094616.P14896176824743325356

`∑[∑[ogf((1+x-4x^2)/(1-5x+6x^2))]]`
-/

namespace A094616.P14896176824743325356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4] [1, -5, 6] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094616.P14896176824743325356

namespace A094616

/-- `∑[∑[ogf((1+x-4x^2)/(1-5x+6x^2))]]` -/
def P14896176824743325356.Spec : Prop :=
  ∀ n, P14896176824743325356.a n = A094616 n

end A094616

/-! ## A094616.P7194966583123202524

`record[Δ[floor(3^(n-1))]+1-(2^n+n)]`
-/

namespace A094616.P7194966583123202524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1 - (2 ^ n + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094616.P7194966583123202524

namespace A094616

/-- `record[Δ[floor(3^(n-1))]+1-(2^n+n)]` -/
def P7194966583123202524.Spec : Prop :=
  ∀ n, P7194966583123202524.a n = A094616 n

end A094616

/-! ## A094616.P4241349514294397595

`∑[A135914(n)]`
-/

namespace A094616.P4241349514294397595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094616.P4241349514294397595

namespace A094616

/-- `∑[A135914(n)]` -/
def P4241349514294397595.Spec : Prop :=
  ∀ n, P4241349514294397595.a n = A094616 n

end A094616

/-! ## A094616.P1415613438449063105

`Δ[A101052(n+1)-∑[n]]`
-/

namespace A094616.P1415613438449063105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101052 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094616.P1415613438449063105

namespace A094616

/-- `Δ[A101052(n+1)-∑[n]]` -/
def P1415613438449063105.Spec : Prop :=
  ∀ n, P1415613438449063105.a n = A094616 n

end A094616

/-!
# A094617: Triangular array T of numbers generated by these rules: 2 is in T; and if x is in T, then 2x-1 and 3x-2 are in T.

The programs for A094617, the canonical program `A094617.P8506004990279302888` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094617 has offset 1).

The definition of A094617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094617.P8506004990279302888

`A036561(n)+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A094617

/-- `A036561(n)+1` -/
def P8506004990279302888.Spec : Prop :=
  ∀ n, P8506004990279302888.a n = A094617 (n + 1)

theorem P8506004990279302888.correct : P8506004990279302888.Spec := by
  intro n
  simp only [A094617, Nat.add_sub_cancel]

end A094617

/-! ## A094617.P8514860133738453747

`A230445(n)+2`
-/

namespace A094617.P8514860133738453747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230445 n + 2

end

end A094617.P8514860133738453747

namespace A094617

/-- `A230445(n)+2` -/
def P8514860133738453747.Spec : Prop :=
  ∀ n, P8514860133738453747.a n = A094617 (n + 1)

end A094617

/-! ## A094617.P1744439921985999180

`(A094615(n)+3)/2`
-/

namespace A094617.P1744439921985999180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094615 n + 3 : ℚ) / 2

end

end A094617.P1744439921985999180

namespace A094617

/-- `(A094615(n)+3)/2` -/
def P1744439921985999180.Spec : Prop :=
  ∀ n, P1744439921985999180.a n = (A094617 (n + 1) : ℚ)

end A094617

/-! ## A094617.P3739843440176060471

`A081954(n+1)/2+1`
-/

namespace A094617.P3739843440176060471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081954 (n + 1) : ℚ) / 2 + 1

end

end A094617.P3739843440176060471

namespace A094617

/-- `A081954(n+1)/2+1` -/
def P3739843440176060471.Spec : Prop :=
  ∀ n, P3739843440176060471.a n = (A094617 (n + 1) : ℚ)

end A094617

/-! ## A094617.P6400381279851610202

`A013620(n)/A007318(n)+1`
-/

namespace A094617.P6400381279851610202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A007318 n : ℚ) + 1

end

end A094617.P6400381279851610202

namespace A094617

/-- `A013620(n)/A007318(n)+1` -/
def P6400381279851610202.Spec : Prop :=
  ∀ n, P6400381279851610202.a n = (A094617 (n + 1) : ℚ)

end A094617

/-! ## A094617.P2106851879321679673

`n-(A023443(n)-A036561(n))`
-/

namespace A094617.P2106851879321679673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A036561 n)

end

end A094617.P2106851879321679673

namespace A094617

/-- `n-(A023443(n)-A036561(n))` -/
def P2106851879321679673.Spec : Prop :=
  ∀ n, P2106851879321679673.a n = A094617 (n + 1)

theorem P2106851879321679673.correct : P2106851879321679673.Spec := by
  intro n
  simp only [A094617, Nat.add_sub_cancel, A094617.P2106851879321679673.a, A094617.P8506004990279302888.a, A023443, A023443.P2966051066474347068.a, A036561, A036561.P7490084913005378529.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A094617

/-! ## A094617.P17167087818905997283

`A002522(n)-(n²-A036561(n))`
-/

namespace A094617.P17167087818905997283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - ((n ^ 2 : ℤ) - A036561 n)

end

end A094617.P17167087818905997283

namespace A094617

/-- `A002522(n)-(n²-A036561(n))` -/
def P17167087818905997283.Spec : Prop :=
  ∀ n, P17167087818905997283.a n = A094617 (n + 1)

theorem P17167087818905997283.correct : P17167087818905997283.Spec := by
  intro n
  simp only [A094617, Nat.add_sub_cancel, A094617.P17167087818905997283.a, A094617.P8506004990279302888.a, A002522, A002522.P3778392011853271743.a, A036561, A036561.P7490084913005378529.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A094617

/-! ## A094617.P472413982433372367

`abs(2*n-A036561(n)-A005408(n))`
-/

namespace A094617.P472413982433372367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A036561 n - A005408 n|

end

end A094617.P472413982433372367

namespace A094617

/-- `abs(2*n-A036561(n)-A005408(n))` -/
def P472413982433372367.Spec : Prop :=
  ∀ n, P472413982433372367.a n = A094617 (n + 1)

end A094617

/-! ## A094617.P9503839148179642534

`A175840(A061579(n))+1`
-/

namespace A094617.P9503839148179642534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 (A061579 n).toNat + 1

end

end A094617.P9503839148179642534

namespace A094617

/-- `A175840(A061579(n))+1` -/
def P9503839148179642534.Spec : Prop :=
  ∀ n, P9503839148179642534.a n = A094617 (n + 1)

end A094617

/-! ## A094617.P14047845400387185674

`A155118(comp[∑[n]])+1`
-/

namespace A094617.P14047845400387185674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A094617.P14047845400387185674

namespace A094617

/-- `A155118(comp[∑[n]])+1` -/
def P14047845400387185674.Spec : Prop :=
  ∀ n, P14047845400387185674.a n = A094617 (n + 1)

end A094617

/-! ## A094617.P6436886696652855638

`A153279(A014132(n+1))+1`
-/

namespace A094617.P6436886696652855638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153279 (A014132 (n + 1)).toNat + 1

end

end A094617.P6436886696652855638

namespace A094617

/-- `A153279(A014132(n+1))+1` -/
def P6436886696652855638.Spec : Prop :=
  ∀ n, P6436886696652855638.a n = A094617 (n + 1)

end A094617

/-! ## A094617.P1643559151514360819

`A038233(n)/A038207(n)+1`
-/

namespace A094617.P1643559151514360819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038233 n : ℚ) / (A038207 n : ℚ) + 1

end

end A094617.P1643559151514360819

namespace A094617

/-- `A038233(n)/A038207(n)+1` -/
def P1643559151514360819.Spec : Prop :=
  ∀ n, P1643559151514360819.a n = (A094617 (n + 1) : ℚ)

end A094617

/-! ## A094617.P8947667543636925388

`A055600(A247714(n))`
-/

namespace A094617.P8947667543636925388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (A247714 n).toNat

end

end A094617.P8947667543636925388

namespace A094617

/-- `A055600(A247714(n))` -/
def P8947667543636925388.Spec : Prop :=
  ∀ n, P8947667543636925388.a n = A094617 (n + 1)

end A094617

/-! ## A094617.P10495490748334983657

`A038212(n)/A013609(n)+1`
-/

namespace A094617.P10495490748334983657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038212 n : ℚ) / (A013609 n : ℚ) + 1

end

end A094617.P10495490748334983657

namespace A094617

/-- `A038212(n)/A013609(n)+1` -/
def P10495490748334983657.Spec : Prop :=
  ∀ n, P10495490748334983657.a n = (A094617 (n + 1) : ℚ)

end A094617

/-! ## A094617.P3476618314955386213

`A038257(n)/A027465(n)+1`
-/

namespace A094617.P3476618314955386213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038257 n : ℚ) / (A027465 n : ℚ) + 1

end

end A094617.P3476618314955386213

namespace A094617

/-- `A038257(n)/A027465(n)+1` -/
def P3476618314955386213.Spec : Prop :=
  ∀ n, P3476618314955386213.a n = (A094617 (n + 1) : ℚ)

end A094617

/-! ## A094617.P2107978772626892423

`A038236(n)/A038208(n)+1`
-/

namespace A094617.P2107978772626892423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038236 n : ℚ) / (A038208 n : ℚ) + 1

end

end A094617.P2107978772626892423

namespace A094617

/-- `A038236(n)/A038208(n)+1` -/
def P2107978772626892423.Spec : Prop :=
  ∀ n, P2107978772626892423.a n = (A094617 (n + 1) : ℚ)

end A094617

/-! ## A094617.P13093797019876022710

`A038281(n)/A038231(n)+1`
-/

namespace A094617.P13093797019876022710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038281 n : ℚ) / (A038231 n : ℚ) + 1

end

end A094617.P13093797019876022710

namespace A094617

/-- `A038281(n)/A038231(n)+1` -/
def P13093797019876022710.Spec : Prop :=
  ∀ n, P13093797019876022710.a n = (A094617 (n + 1) : ℚ)

end A094617

/-! ## A094617.P15766467740037457427

`A038215(n)/A013610(n)+1`
-/

namespace A094617.P15766467740037457427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038215 n : ℚ) / (A013610 n : ℚ) + 1

end

end A094617.P15766467740037457427

namespace A094617

/-- `A038215(n)/A013610(n)+1` -/
def P15766467740037457427.Spec : Prop :=
  ∀ n, P15766467740037457427.a n = (A094617 (n + 1) : ℚ)

end A094617

/-! ## A094617.P2803486138001704380

`A038239(n)/A013620(n)+1`
-/

namespace A094617.P2803486138001704380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038239 n : ℚ) / (A013620 n : ℚ) + 1

end

end A094617.P2803486138001704380

namespace A094617

/-- `A038239(n)/A013620(n)+1` -/
def P2803486138001704380.Spec : Prop :=
  ∀ n, P2803486138001704380.a n = (A094617 (n + 1) : ℚ)

end A094617

/-!
# A094618: a(n) = 3^(n+1) - 2^(n+1) + n + 1.

The programs for A094618, the canonical program `A094618.P847794521515062701` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094618 has offset 0).

The definition of A094618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(n+1)-2^(n+1)+n+1` (program `A094618.P847794521515062701`, by `A094618.P847794521515062701.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094618.P847794521515062701

`3^(n+1)-2^(n+1)+n+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094618

/-- `3^(n+1)-2^(n+1)+n+1` -/
def P847794521515062701.Spec : Prop :=
  ∀ n, P847794521515062701.a n = A094618 n

theorem P847794521515062701.correct : P847794521515062701.Spec := by
  intro n
  simp only [A094618]

end A094618

/-! ## A094618.P14071902868547484310

`∑[A027649(n)+1]`
-/

namespace A094618.P14071902868547484310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094618.P14071902868547484310

namespace A094618

/-- `∑[A027649(n)+1]` -/
def P14071902868547484310.Spec : Prop :=
  ∀ n, P14071902868547484310.a n = A094618 n

end A094618

/-! ## A094618.P13366269592042905019

`∑[∑[A053581(n)]+1]`
-/

namespace A094618.P13366269592042905019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094618.P13366269592042905019

namespace A094618

/-- `∑[∑[A053581(n)]+1]` -/
def P13366269592042905019.Spec : Prop :=
  ∀ n, P13366269592042905019.a n = A094618 n

end A094618

/-! ## A094618.P6603650996759763828

`∑[Δ[A001047(n)]+1]`
-/

namespace A094618.P6603650996759763828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094618.P6603650996759763828

namespace A094618

/-- `∑[Δ[A001047(n)]+1]` -/
def P6603650996759763828.Spec : Prop :=
  ∀ n, P6603650996759763828.a n = A094618 n

end A094618

/-! ## A094618.P1855124843645308167

`Δ[A134063(n+1)+∑[n]]`
-/

namespace A094618.P1855124843645308167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094618.P1855124843645308167

namespace A094618

/-- `Δ[A134063(n+1)+∑[n]]` -/
def P1855124843645308167.Spec : Prop :=
  ∀ n, P1855124843645308167.a n = A094618 n

end A094618

/-! ## A094618.P12582000822832792321

`∑[Δ[3^n]-A000225(n)]`
-/

namespace A094618.P12582000822832792321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094618.P12582000822832792321

namespace A094618

/-- `∑[Δ[3^n]-A000225(n)]` -/
def P12582000822832792321.Spec : Prop :=
  ∀ n, P12582000822832792321.a n = A094618 n

end A094618

/-! ## A094618.P9518578467646749447

`∑[A083323(n)+A000244(n)]`
-/

namespace A094618.P9518578467646749447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 n + A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094618.P9518578467646749447

namespace A094618

/-- `∑[A083323(n)+A000244(n)]` -/
def P9518578467646749447.Spec : Prop :=
  ∀ n, P9518578467646749447.a n = A094618 n

end A094618

/-!
# A094619: Fundamental discriminants of real quadratic number fields with class number 2.

The programs for A094619, there is no canonical definition to state claims against.
-/

/-! ## A094619.P7394458601499705460

`filter[A344408(n+1), A290098(#)]`
-/

namespace A094619.P7394458601499705460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A094619.P7394458601499705460

/-! ## A094619.P2218750662184260926

`∩[A344408(n+1), A391417(n+1)]`
-/

namespace A094619.P2218750662184260926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094619.P2218750662184260926

/-! ## A094619.P4399053340533000667

`∩[A072902(n+1), A344408(n+1)]`
-/

namespace A094619.P4399053340533000667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094619.P4399053340533000667

/-! ## A094619.P3600345000511373226

`∩[A003658(n+1), A344408(n+1)]`
-/

namespace A094619.P3600345000511373226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094619.P3600345000511373226

/-! ## A094619.P11292791054485128143

`∩[A035120(n+1), A344408(n+1)]`
-/

namespace A094619.P11292791054485128143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094619.P11292791054485128143

/-! ## A094619.P16053005579007514784

`A003658(eq[2, A003652(n+2)]+2)`
-/

namespace A094619.P16053005579007514784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003652 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A094619.P16053005579007514784

/-!
# A094620: Expansion of x*(11 + 22*x + 20*x^2)/((1-x)*(1+x)*(1 - 10*x^2)).

The programs for A094620, the canonical program `A094620.P9883046156220981854` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094620 has offset 0).

The definition of A094620 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((11x+22x^2+20x^3)/(1-11x^2+10x^4))` (program `A094620.P9883046156220981854`, by `A094620.P9883046156220981854.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094620.P9883046156220981854

`ogf((11x+22x^2+20x^3)/(1-11x^2+10x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094620

/-- `ogf((11x+22x^2+20x^3)/(1-11x^2+10x^4))` -/
def P9883046156220981854.Spec : Prop :=
  ∀ n, P9883046156220981854.a n = A094620 n

theorem P9883046156220981854.correct : P9883046156220981854.Spec := by
  intro n
  simp only [A094620]

end A094620

/-! ## A094620.P12246659176274210551

`11*a(n-2)-10*a(n-4)` with `a(0)=0, a(1)=11, a(2)=22, a(3)=141`
-/

namespace A094620.P12246659176274210551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 11, 22, 141] fun n a =>
  11 * a (n - 2) - 10 * a (n - 4)

end

end A094620.P12246659176274210551

namespace A094620

/-- `11*a(n-2)-10*a(n-4)` -/
def P12246659176274210551.Spec : Prop :=
  ∀ n, P12246659176274210551.a n = A094620 n

end A094620

/-! ## A094620.P13039737417774998583

`(A094621(n)+A094622(n))/2`
-/

namespace A094620.P13039737417774998583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094621 n + A094622 n : ℚ) / 2

end

end A094620.P13039737417774998583

namespace A094620

/-- `(A094621(n)+A094622(n))/2` -/
def P13039737417774998583.Spec : Prop :=
  ∀ n, P13039737417774998583.a n = (A094620 n : ℚ)

end A094620

/-! ## A094620.P4970251004883148295

`A322925(n)+10*A094626(n)`
-/

namespace A094620.P4970251004883148295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322925 n + 10 * A094626 n

end

end A094620.P4970251004883148295

namespace A094620

/-- `A322925(n)+10*A094626(n)` -/
def P4970251004883148295.Spec : Prop :=
  ∀ n, P4970251004883148295.a n = A094620 n

end A094620

/-! ## A094620.P16992436607220988156

`A094624(n+1)+A094626(n+1)-2`
-/

namespace A094620.P16992436607220988156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094624 (n + 1) + (A094626 (n + 1) - 2)

end

end A094620.P16992436607220988156

namespace A094620

/-- `A094624(n+1)+A094626(n+1)-2` -/
def P16992436607220988156.Spec : Prop :=
  ∀ n, P16992436607220988156.a n = A094620 n

end A094620

/-! ## A094620.P11336209526956179927

`A094621(n)+A094624(n)-A094626(n)`
-/

namespace A094620.P11336209526956179927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094621 n + (A094624 n - A094626 n)

end

end A094620.P11336209526956179927

namespace A094620

/-- `A094621(n)+A094624(n)-A094626(n)` -/
def P11336209526956179927.Spec : Prop :=
  ∀ n, P11336209526956179927.a n = A094620 n

end A094620

/-! ## A094620.P9565373881896227259

`A094622(n)+A094626(n)-A094624(n)`
-/

namespace A094620.P9565373881896227259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094622 n + (A094626 n - A094624 n)

end

end A094620.P9565373881896227259

namespace A094620

/-- `A094622(n)+A094626(n)-A094624(n)` -/
def P9565373881896227259.Spec : Prop :=
  ∀ n, P9565373881896227259.a n = A094620 n

end A094620

/-!
# A094621: Expansion of x*(11+13*x+20*x^2) / ( (x-1)*(1+x)*(10*x^2-1) ).

The programs for A094621, the canonical program `A094621.P3135070642930779828` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094621 has offset 0).

The definition of A094621 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((11x+13x^2+20x^3)/(1-11x^2+10x^4))` (program `A094621.P3135070642930779828`, by `A094621.P3135070642930779828.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094621.P3135070642930779828

`ogf((11x+13x^2+20x^3)/(1-11x^2+10x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094621

/-- `ogf((11x+13x^2+20x^3)/(1-11x^2+10x^4))` -/
def P3135070642930779828.Spec : Prop :=
  ∀ n, P3135070642930779828.a n = A094621 n

theorem P3135070642930779828.correct : P3135070642930779828.Spec := by
  intro n
  simp only [A094621]

end A094621

/-! ## A094621.P17941056569297402281

`2*A094620(n)-A094622(n)`
-/

namespace A094621.P17941056569297402281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094620 n - A094622 n

end

end A094621.P17941056569297402281

namespace A094621

/-- `2*A094620(n)-A094622(n)` -/
def P17941056569297402281.Spec : Prop :=
  ∀ n, P17941056569297402281.a n = A094621 n

end A094621

/-! ## A094621.P5366514783225682588

`A094622(n)%A050250(A131055(n+1))`
-/

namespace A094621.P5366514783225682588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094622 n) (A050250 (A131055 (n + 1)).toNat)

end

end A094621.P5366514783225682588

namespace A094621

/-- `A094622(n)%A050250(A131055(n+1))` -/
def P5366514783225682588.Spec : Prop :=
  ∀ n, P5366514783225682588.a n = A094621 n

end A094621

/-! ## A094621.P10639899775457057457

`A094620(n)+A094626(n)-A094624(n)`
-/

namespace A094621.P10639899775457057457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094620 n + (A094626 n - A094624 n)

end

end A094621.P10639899775457057457

namespace A094621

/-- `A094620(n)+A094626(n)-A094624(n)` -/
def P10639899775457057457.Spec : Prop :=
  ∀ n, P10639899775457057457.a n = A094621 n

end A094621

/-! ## A094621.P8427164498565000548

`A094620(n)+A322925(n)-A094623(n)`
-/

namespace A094621.P8427164498565000548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094620 n + (A322925 n - A094623 n)

end

end A094621.P8427164498565000548

namespace A094621

/-- `A094620(n)+A322925(n)-A094623(n)` -/
def P8427164498565000548.Spec : Prop :=
  ∀ n, P8427164498565000548.a n = A094621 n

end A094621

/-! ## A094621.P17819695976673780888

`(A094627(n+1)-3)%A050250(A131055(n+1))`
-/

namespace A094621.P17819695976673780888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094627 (n + 1) - 3) (A050250 (A131055 (n + 1)).toNat)

end

end A094621.P17819695976673780888

namespace A094621

/-- `(A094627(n+1)-3)%A050250(A131055(n+1))` -/
def P17819695976673780888.Spec : Prop :=
  ∀ n, P17819695976673780888.a n = A094621 n

end A094621

/-!
# A094622: Expansion of x*(11+20*x)/((1-x)*(1-10*x^2)).

The programs for A094622, the canonical program `A094622.P15919856096558878323` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094622 has offset 0).

The definition of A094622 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((11x+20x^2)/(1-x-10x^2+10x^3))` (program `A094622.P15919856096558878323`, by `A094622.P15919856096558878323.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094622.P15919856096558878323

`ogf((11x+20x^2)/(1-x-10x^2+10x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094622

/-- `ogf((11x+20x^2)/(1-x-10x^2+10x^3))` -/
def P15919856096558878323.Spec : Prop :=
  ∀ n, P15919856096558878323.a n = A094622 n

theorem P15919856096558878323.correct : P15919856096558878323.Spec := by
  intro n
  simp only [A094622]

end A094622

/-! ## A094622.P16240584688091122014

`(10^(n/2)*(31+13*sqrt(10)+(31-13*sqrt(10))*(-1)^n)/2-31)/9`
-/

namespace A094622.P16240584688091122014
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((10 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * (31 + 13 * Real.sqrt (10 : ℝ) + (31 - 13 * Real.sqrt (10 : ℝ)) * ((-1) ^ n : ℝ)) / 2 - 31) / 9

end

end A094622.P16240584688091122014

namespace A094622

/-- `(10^(n/2)*(31+13*sqrt(10)+(31-13*sqrt(10))*(-1)^n)/2-31)/9` -/
def P16240584688091122014.Spec : Prop :=
  ∀ n, P16240584688091122014.a n = (A094622 n : ℝ)

end A094622

/-! ## A094622.P1292893808714301366

`∑[10*a(n-2)]` with `a(0)=0, a(1)=11, a(2)=20`
-/

namespace A094622.P1292893808714301366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 11, 20] fun n f1 =>
  10 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094622.P1292893808714301366

namespace A094622

/-- `∑[10*a(n-2)]` -/
def P1292893808714301366.Spec : Prop :=
  ∀ n, (P1292893808714301366.a n : ℤ) = A094622 n

end A094622

/-! ## A094622.P13536916168802945464

`A094627(n+1)-3`
-/

namespace A094622.P13536916168802945464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094627 (n + 1) - 3

end

end A094622.P13536916168802945464

namespace A094622

/-- `A094627(n+1)-3` -/
def P13536916168802945464.Spec : Prop :=
  ∀ n, P13536916168802945464.a n = A094622 n

end A094622

/-! ## A094622.P6974956756879657491

`record[Δ[A094627(A152271(n))]]`
-/

namespace A094622.P6974956756879657491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094627 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094622.P6974956756879657491

namespace A094622

/-- `record[Δ[A094627(A152271(n))]]` -/
def P6974956756879657491.Spec : Prop :=
  ∀ n, P6974956756879657491.a n = A094622 n

end A094622

/-! ## A094622.P1944689705717529974

`2*A094620(n)-A094621(n)`
-/

namespace A094622.P1944689705717529974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094620 n - A094621 n

end

end A094622.P1944689705717529974

namespace A094622

/-- `2*A094620(n)-A094621(n)` -/
def P1944689705717529974.Spec : Prop :=
  ∀ n, P1944689705717529974.a n = A094622 n

end A094622

/-! ## A094622.P16193777118312147308

`∑[A052216(A117142(n+1))]-2`
-/

namespace A094622.P16193777118312147308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A094622.P16193777118312147308

namespace A094622

/-- `∑[A052216(A117142(n+1))]-2` -/
def P16193777118312147308.Spec : Prop :=
  ∀ n, P16193777118312147308.a n = A094622 n

end A094622

/-! ## A094622.P12399752788581374701

`A094623(n+1)+A094626(n+1)-2`
-/

namespace A094622.P12399752788581374701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094623 (n + 1) + (A094626 (n + 1) - 2)

end

end A094622.P12399752788581374701

namespace A094622

/-- `A094623(n+1)+A094626(n+1)-2` -/
def P12399752788581374701.Spec : Prop :=
  ∀ n, P12399752788581374701.a n = A094622 n

end A094622

/-! ## A094622.P5845830700811482815

`A094620(n)+A094624(n)-A094626(n)`
-/

namespace A094622.P5845830700811482815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094620 n + (A094624 n - A094626 n)

end

end A094622.P5845830700811482815

namespace A094622

/-- `A094620(n)+A094624(n)-A094626(n)` -/
def P5845830700811482815.Spec : Prop :=
  ∀ n, P5845830700811482815.a n = A094622 n

end A094622

/-! ## A094622.P12754810372490838340

`A094620(n)+A094623(n)-A322925(n)`
-/

namespace A094622.P12754810372490838340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094620 n + (A094623 n - A322925 n)

end

end A094622.P12754810372490838340

namespace A094622

/-- `A094620(n)+A094623(n)-A322925(n)` -/
def P12754810372490838340.Spec : Prop :=
  ∀ n, P12754810372490838340.a n = A094622 n

end A094622

/-! ## A094622.P8739512925067586771

`∑[A070199(n+1)]-A070199(n+1)+n`
-/

namespace A094622.P8739512925067586771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A070199 (n + 1) + (n : ℤ)

end

end A094622.P8739512925067586771

namespace A094622

/-- `∑[A070199(n+1)]-A070199(n+1)+n` -/
def P8739512925067586771.Spec : Prop :=
  ∀ n, P8739512925067586771.a n = A094622 n

end A094622

/-!
# A094623: Expansion of g.f. x*(1+10*x)/((1-x)*(1-10*x^2)).

The programs for A094623, the canonical program `A094623.P2037162008774180191` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094623 has offset 0).

The definition of A094623 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+10x^2)/(1-x-10x^2+10x^3))` (program `A094623.P2037162008774180191`, by `A094623.P2037162008774180191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094623.P2037162008774180191

`ogf((x+10x^2)/(1-x-10x^2+10x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094623

/-- `ogf((x+10x^2)/(1-x-10x^2+10x^3))` -/
def P2037162008774180191.Spec : Prop :=
  ∀ n, P2037162008774180191.a n = A094623 n

theorem P2037162008774180191.correct : P2037162008774180191.Spec := by
  intro n
  simp only [A094623]

end A094623

/-! ## A094623.P12663277901037435584

`∑[10^floor(n/2)]-1`
-/

namespace A094623.P12663277901037435584
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A094623.P12663277901037435584

namespace A094623

/-- `∑[10^floor(n/2)]-1` -/
def P12663277901037435584.Spec : Prop :=
  ∀ n, P12663277901037435584.a n = (A094623 n : ℚ)

end A094623

/-! ## A094623.P5767967606700472550

`∑[10*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=10`
-/

namespace A094623.P5767967606700472550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 10] fun n f1 =>
  10 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094623.P5767967606700472550

namespace A094623

/-- `∑[10*a(n-2)]` -/
def P5767967606700472550.Spec : Prop :=
  ∀ n, (P5767967606700472550.a n : ℤ) = A094623 n

end A094623

/-! ## A094623.P3853711881289469999

`∑[10^floor(n/2)*ceil(sin(n)²)]`
-/

namespace A094623.P3853711881289469999
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (⌈Real.sin (n : ℝ) ^ 2⌉ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094623.P3853711881289469999

namespace A094623

/-- `∑[10^floor(n/2)*ceil(sin(n)²)]` -/
def P3853711881289469999.Spec : Prop :=
  ∀ n, P3853711881289469999.a n = (A094623 n : ℚ)

end A094623

/-! ## A094623.P8325455859827793621

`Δ[∑[A094626(n)]-n]`
-/

namespace A094623.P8325455859827793621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094626 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094623.P8325455859827793621

namespace A094623

/-- `Δ[∑[A094626(n)]-n]` -/
def P8325455859827793621.Spec : Prop :=
  ∀ n, P8325455859827793621.a n = A094623 n

end A094623

/-! ## A094623.P18408718999858442886

`abs(1-A094626(n+1))`
-/

namespace A094623.P18408718999858442886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A094626 (n + 1)|

end

end A094623.P18408718999858442886

namespace A094623

/-- `abs(1-A094626(n+1))` -/
def P18408718999858442886.Spec : Prop :=
  ∀ n, P18408718999858442886.a n = A094623 n

end A094623

/-! ## A094623.P17952904401858696497

`record[A094626(abs(1-n))-1]`
-/

namespace A094623.P17952904401858696497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094626 |1 - (n : ℤ)|.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094623.P17952904401858696497

namespace A094623

/-- `record[A094626(abs(1-n))-1]` -/
def P17952904401858696497.Spec : Prop :=
  ∀ n, P17952904401858696497.a n = A094623 n

end A094623

/-! ## A094623.P6279277285664050139

`∑[lcm(10^floor(n/2), A158780(n))]`
-/

namespace A094623.P6279277285664050139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((10 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (A158780 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094623.P6279277285664050139

namespace A094623

/-- `∑[lcm(10^floor(n/2), A158780(n))]` -/
def P6279277285664050139.Spec : Prop :=
  ∀ n, (P6279277285664050139.a n : ℤ) = A094623 n

end A094623

/-! ## A094623.P7798350703254009528

`∑[A286507(n)-A000007(n)]`
-/

namespace A094623.P7798350703254009528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094623.P7798350703254009528

namespace A094623

/-- `∑[A286507(n)-A000007(n)]` -/
def P7798350703254009528.Spec : Prop :=
  ∀ n, P7798350703254009528.a n = A094623 n

end A094623

/-! ## A094623.P137374203636008000

`∑[A057427(n)*A286507(n)]`
-/

namespace A094623.P137374203636008000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A286507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094623.P137374203636008000

namespace A094623

/-- `∑[A057427(n)*A286507(n)]` -/
def P137374203636008000.Spec : Prop :=
  ∀ n, P137374203636008000.a n = A094623 n

end A094623

/-! ## A094623.P9840385008696145253

`∑[A000051(n)%2*A286507(n)]`
-/

namespace A094623.P9840385008696145253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 n) 2 * A286507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094623.P9840385008696145253

namespace A094623

/-- `∑[A000051(n)%2*A286507(n)]` -/
def P9840385008696145253.Spec : Prop :=
  ∀ n, P9840385008696145253.a n = A094623 n

end A094623

/-! ## A094623.P6210738890022876760

`∑[A286507(n)%A155117(n)]`
-/

namespace A094623.P6210738890022876760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286507 n) (A155117 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094623.P6210738890022876760

namespace A094623

/-- `∑[A286507(n)%A155117(n)]` -/
def P6210738890022876760.Spec : Prop :=
  ∀ n, P6210738890022876760.a n = A094623 n

end A094623

/-!
# A094624: Expansion of g.f. x*(1+11*x+x^2)/((1-x)*(1+x)*(1-10*x^2)).

The programs for A094624, the canonical program `A094624.P8653788075391872505` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094624 has offset 0).

The definition of A094624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+11x^2+x^3)/(1-11x^2+10x^4))` (program `A094624.P8653788075391872505`, by `A094624.P8653788075391872505.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094624.P8653788075391872505

`ogf((x+11x^2+x^3)/(1-11x^2+10x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094624

/-- `ogf((x+11x^2+x^3)/(1-11x^2+10x^4))` -/
def P8653788075391872505.Spec : Prop :=
  ∀ n, P8653788075391872505.a n = A094624 n

theorem P8653788075391872505.correct : P8653788075391872505.Spec := by
  intro n
  simp only [A094624]

end A094624

/-! ## A094624.P1271976091057262445

`11*a(n-2)-10*a(n-4)` with `a(0)=0, a(1)=1, a(2)=11, a(3)=12`
-/

namespace A094624.P1271976091057262445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 11, 12] fun n a =>
  11 * a (n - 2) - 10 * a (n - 4)

end

end A094624.P1271976091057262445

namespace A094624

/-- `11*a(n-2)-10*a(n-4)` -/
def P1271976091057262445.Spec : Prop :=
  ∀ n, P1271976091057262445.a n = A094624 n

end A094624

/-! ## A094624.P11507387581803893203

`C((-1)^n+4, 3)*a(n-1)+1` with `a(0)=0`
-/

namespace A094624.P11507387581803893203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose ((-1) ^ n + 4).toNat 3 * a (n - 1) + 1

end

end A094624.P11507387581803893203

namespace A094624

/-- `C((-1)^n+4, 3)*a(n-1)+1` -/
def P11507387581803893203.Spec : Prop :=
  ∀ n, (P11507387581803893203.a n : ℤ) = A094624 n

end A094624

/-! ## A094624.P7032441958291502106

`A094625(n)-A094623(n)`
-/

namespace A094624.P7032441958291502106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094625 n - A094623 n

end

end A094624.P7032441958291502106

namespace A094624

/-- `A094625(n)-A094623(n)` -/
def P7032441958291502106.Spec : Prop :=
  ∀ n, P7032441958291502106.a n = A094624 n

end A094624

/-! ## A094624.P9774768243723966769

`Δ[∑[A322925(n)]-A094626(n)]`
-/

namespace A094624.P9774768243723966769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322925 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A094626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094624.P9774768243723966769

namespace A094624

/-- `Δ[∑[A322925(n)]-A094626(n)]` -/
def P9774768243723966769.Spec : Prop :=
  ∀ n, P9774768243723966769.a n = A094624 n

end A094624

/-! ## A094624.P12854810444547778324

`A322925(n+1)-Δ[A094626(n)]`
-/

namespace A094624.P12854810444547778324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322925 (n + 1) - (f1 (n + 1) - f1 n)

end

end A094624.P12854810444547778324

namespace A094624

/-- `A322925(n+1)-Δ[A094626(n)]` -/
def P12854810444547778324.Spec : Prop :=
  ∀ n, P12854810444547778324.a n = A094624 n

end A094624

/-! ## A094624.P5569857233256446895

`A094026(n)+A002275(A004526(n))`
-/

namespace A094624.P5569857233256446895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 n + A002275 (A004526 n).toNat

end

end A094624.P5569857233256446895

namespace A094624

/-- `A094026(n)+A002275(A004526(n))` -/
def P5569857233256446895.Spec : Prop :=
  ∀ n, P5569857233256446895.a n = A094624 n

end A094624

/-! ## A094624.P16093348378442391204

`A094626(A109613(n))-A059841(n)`
-/

namespace A094624.P16093348378442391204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094626 (A109613 n).toNat - A059841 n

end

end A094624.P16093348378442391204

namespace A094624

/-- `A094626(A109613(n))-A059841(n)` -/
def P16093348378442391204.Spec : Prop :=
  ∀ n, P16093348378442391204.a n = A094624 n

end A094624

/-! ## A094624.P12803220179005791799

`∑[A286507(n)]-A286507(A093178(n))`
-/

namespace A094624.P12803220179005791799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A286507 (A093178 n).toNat

end

end A094624.P12803220179005791799

namespace A094624

/-- `∑[A286507(n)]-A286507(A093178(n))` -/
def P12803220179005791799.Spec : Prop :=
  ∀ n, P12803220179005791799.a n = A094624 n

end A094624

/-! ## A094624.P15347041390162705586

`A094626(A059841(n)+n)-A059841(n)`
-/

namespace A094624.P15347041390162705586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094626 (A059841 n + (n : ℤ)).toNat - A059841 n

end

end A094624.P15347041390162705586

namespace A094624

/-- `A094626(A059841(n)+n)-A059841(n)` -/
def P15347041390162705586.Spec : Prop :=
  ∀ n, P15347041390162705586.a n = A094624 n

end A094624

/-! ## A094624.P4119632008117130693

`A094026(n)+A289404(n)-A286507(n)`
-/

namespace A094624.P4119632008117130693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 n + (A289404 n - A286507 n)

end

end A094624.P4119632008117130693

namespace A094624

/-- `A094026(n)+A289404(n)-A286507(n)` -/
def P4119632008117130693.Spec : Prop :=
  ∀ n, P4119632008117130693.a n = A094624 n

end A094624

/-! ## A094624.P15971656452024308188

`∑[A057427(n)/A286507(n)]*A286507(n)`
-/

namespace A094624.P15971656452024308188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n : ℚ) / (A286507 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A286507 n : ℚ)

end

end A094624.P15971656452024308188

namespace A094624

/-- `∑[A057427(n)/A286507(n)]*A286507(n)` -/
def P15971656452024308188.Spec : Prop :=
  ∀ n, P15971656452024308188.a n = (A094624 n : ℚ)

end A094624

/-!
# A094625: Expansion of g.f. x*(2+22*x+11*x^2)/((x-1)*(1+x)*(10*x^2-1)).

The programs for A094625, the canonical program `A094625.P393825916384393892` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094625 has offset 0).

The definition of A094625 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x+22x^2+11x^3)/(1-11x^2+10x^4))` (program `A094625.P393825916384393892`, by `A094625.P393825916384393892.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094625.P393825916384393892

`ogf((2x+22x^2+11x^3)/(1-11x^2+10x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094625

/-- `ogf((2x+22x^2+11x^3)/(1-11x^2+10x^4))` -/
def P393825916384393892.Spec : Prop :=
  ∀ n, P393825916384393892.a n = A094625 n

theorem P393825916384393892.correct : P393825916384393892.Spec := by
  intro n
  simp only [A094625]

end A094625

/-! ## A094625.P13336265683481340594

`A094623(n)+A094624(n)`
-/

namespace A094625.P13336265683481340594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094623 n + A094624 n

end

end A094625.P13336265683481340594

namespace A094625

/-- `A094623(n)+A094624(n)` -/
def P13336265683481340594.Spec : Prop :=
  ∀ n, P13336265683481340594.a n = A094625 n

end A094625

/-! ## A094625.P17710993647055454715

`A094624(n)+A094626(n+1)-1`
-/

namespace A094625.P17710993647055454715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094624 n + (A094626 (n + 1) - 1)

end

end A094625.P17710993647055454715

namespace A094625

/-- `A094624(n)+A094626(n+1)-1` -/
def P17710993647055454715.Spec : Prop :=
  ∀ n, P17710993647055454715.a n = A094625 n

end A094625

/-! ## A094625.P18345447676769468109

`A094620(n)+1-Δ[A094624(n)]`
-/

namespace A094625.P18345447676769468109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094620 n + (1 - (f1 (n + 1) - f1 n))

end

end A094625.P18345447676769468109

namespace A094625

/-- `A094620(n)+1-Δ[A094624(n)]` -/
def P18345447676769468109.Spec : Prop :=
  ∀ n, P18345447676769468109.a n = A094625 n

end A094625

/-! ## A094625.P6636956882918754129

`A094620(n)%Δ[Δ[A094624(n)]]`
-/

namespace A094625.P6636956882918754129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094624 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094620 n) (f1 (n + 1) - f1 n)

end

end A094625.P6636956882918754129

namespace A094625

/-- `A094620(n)%Δ[Δ[A094624(n)]]` -/
def P6636956882918754129.Spec : Prop :=
  ∀ n, P6636956882918754129.a n = A094625 n

end A094625

/-! ## A094625.P2753638411600877844

`(A094624(2*(n+1))+A094624(n))%A094624(n+2)`
-/

namespace A094625.P2753638411600877844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094624 (2 * (n + 1)) + A094624 n) (A094624 (n + 2))

end

end A094625.P2753638411600877844

namespace A094625

/-- `(A094624(2*(n+1))+A094624(n))%A094624(n+2)` -/
def P2753638411600877844.Spec : Prop :=
  ∀ n, P2753638411600877844.a n = A094625 n

end A094625

/-! ## A094625.P8613222551975570987

`(A322925(2*n+3)+A322925(n+1))%A322925(n+4)`
-/

namespace A094625.P8613222551975570987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322925 (2 * n + 3) + A322925 (n + 1)) (A322925 (n + 4))

end

end A094625.P8613222551975570987

namespace A094625

/-- `(A322925(2*n+3)+A322925(n+1))%A322925(n+4)` -/
def P8613222551975570987.Spec : Prop :=
  ∀ n, P8613222551975570987.a n = A094625 n

end A094625

/-!
# A094626: Expansion of x*(1+x)/((1-x)*(1-10*x^2)).

The programs for A094626, the canonical program `A094626.P9020000745882011372` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094626 has offset 0).

The definition of A094626 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2)/(1-x-10x^2+10x^3))` (program `A094626.P9020000745882011372`, by `A094626.P9020000745882011372.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094626.P9020000745882011372

`ogf((x+x^2)/(1-x-10x^2+10x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094626

/-- `ogf((x+x^2)/(1-x-10x^2+10x^3))` -/
def P9020000745882011372.Spec : Prop :=
  ∀ n, P9020000745882011372.a n = A094626 n

theorem P9020000745882011372.correct : P9020000745882011372.Spec := by
  intro n
  simp only [A094626]

end A094626

/-! ## A094626.P3967742894659396266

`10*a(n-2)+2` with `a(0)=0, a(1)=1`
-/

namespace A094626.P3967742894659396266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  10 * a (n - 2) + 2

end

end A094626.P3967742894659396266

namespace A094626

/-- `10*a(n-2)+2` -/
def P3967742894659396266.Spec : Prop :=
  ∀ n, (P3967742894659396266.a n : ℤ) = A094626 n

end A094626

/-! ## A094626.P3812104957281495881

`∑[10*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A094626.P3812104957281495881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  10 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094626.P3812104957281495881

namespace A094626

/-- `∑[10*a(n-2)]` -/
def P3812104957281495881.Spec : Prop :=
  ∀ n, (P3812104957281495881.a n : ℤ) = A094626 n

end A094626

/-! ## A094626.P4113283402638621920

`4-(4/2-10*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A094626.P4113283402638621920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 - ((4 : ℚ) / 2 - 10 * a (n - 2))

end

end A094626.P4113283402638621920

namespace A094626

/-- `4-(4/2-10*a(n-2))` -/
def P4113283402638621920.Spec : Prop :=
  ∀ n, P4113283402638621920.a n = (A094626 n : ℚ)

end A094626

/-! ## A094626.P15866562506440148648

`floor(A249572(n)/4)`
-/

namespace A094626.P15866562506440148648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A249572 n : ℚ) / 4⌋

end

end A094626.P15866562506440148648

namespace A094626

/-- `floor(A249572(n)/4)` -/
def P15866562506440148648.Spec : Prop :=
  ∀ n, P15866562506440148648.a n = A094626 n

end A094626

/-! ## A094626.P8348866176485617374

`floor(A328333(n)/4)`
-/

namespace A094626.P8348866176485617374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A328333 n : ℚ) / 4⌋

end

end A094626.P8348866176485617374

namespace A094626

/-- `floor(A328333(n)/4)` -/
def P8348866176485617374.Spec : Prop :=
  ∀ n, P8348866176485617374.a n = A094626 n

end A094626

/-! ## A094626.P4796879692873918162

`(A057427(n)/2)²*A249572(n)`
-/

namespace A094626.P4796879692873918162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A057427 n : ℚ) / 2) ^ 2 * (A249572 n : ℚ)

end

end A094626.P4796879692873918162

namespace A094626

/-- `(A057427(n)/2)²*A249572(n)` -/
def P4796879692873918162.Spec : Prop :=
  ∀ n, P4796879692873918162.a n = (A094626 n : ℚ)

end A094626

/-! ## A094626.P8439349199429353962

`(A057428(n)/2)²*A249572(n)`
-/

namespace A094626.P8439349199429353962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A057428 n : ℚ) / 2) ^ 2 * (A249572 n : ℚ)

end

end A094626.P8439349199429353962

namespace A094626

/-- `(A057428(n)/2)²*A249572(n)` -/
def P8439349199429353962.Spec : Prop :=
  ∀ n, P8439349199429353962.a n = (A094626 n : ℚ)

end A094626

/-! ## A094626.P18233851118850700322

`A002275(A004526(n+1))+A002275(A004526(n))`
-/

namespace A094626.P18233851118850700322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A004526 (n + 1)).toNat + A002275 (A004526 n).toNat

end

end A094626.P18233851118850700322

namespace A094626

/-- `A002275(A004526(n+1))+A002275(A004526(n))` -/
def P18233851118850700322.Spec : Prop :=
  ∀ n, P18233851118850700322.a n = A094626 n

end A094626

/-! ## A094626.P7419056246841545043

`floor(A328332(n)/5)`
-/

namespace A094626.P7419056246841545043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A328332 n : ℚ) / 5⌋

end

end A094626.P7419056246841545043

namespace A094626

/-- `floor(A328332(n)/5)` -/
def P7419056246841545043.Spec : Prop :=
  ∀ n, P7419056246841545043.a n = A094626 n

end A094626

/-! ## A094626.P4078774416607106793

`A328332(n)-A249572(n)`
-/

namespace A094626.P4078774416607106793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328332 n - A249572 n

end

end A094626.P4078774416607106793

namespace A094626

/-- `A328332(n)-A249572(n)` -/
def P4078774416607106793.Spec : Prop :=
  ∀ n, P4078774416607106793.a n = A094626 n

end A094626

/-! ## A094626.P17719570177929106622

`∑[A286507(n)]-A286507(n)`
-/

namespace A094626.P17719570177929106622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A286507 n

end

end A094626.P17719570177929106622

namespace A094626

/-- `∑[A286507(n)]-A286507(n)` -/
def P17719570177929106622.Spec : Prop :=
  ∀ n, P17719570177929106622.a n = A094626 n

end A094626

/-! ## A094626.P1176097422242895268

`A094624(n)%A256162(n+1)`
-/

namespace A094626.P1176097422242895268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094624 n) (A256162 (n + 1))

end

end A094626.P1176097422242895268

namespace A094626

/-- `A094624(n)%A256162(n+1)` -/
def P1176097422242895268.Spec : Prop :=
  ∀ n, P1176097422242895268.a n = A094626 n

end A094626

/-! ## A094626.P1946163786555408427

`∪[A002276(n), A002276(n)-A178501(n)]`
-/

namespace A094626.P1946163786555408427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n - A178501 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094626.P1946163786555408427

namespace A094626

/-- `∪[A002276(n), A002276(n)-A178501(n)]` -/
def P1946163786555408427.Spec : Prop :=
  ∀ n, (P1946163786555408427.a n : ℤ) = A094626 n

end A094626

/-! ## A094626.P14403894232242244126

`A094624(n+1)+A094624(n)-A094623(n+1)`
-/

namespace A094626.P14403894232242244126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094624 (n + 1) + (A094624 n - A094623 (n + 1))

end

end A094626.P14403894232242244126

namespace A094626

/-- `A094624(n+1)+A094624(n)-A094623(n+1)` -/
def P14403894232242244126.Spec : Prop :=
  ∀ n, P14403894232242244126.a n = A094626 n

end A094626

/-!
# A094627: Expansion of (1+x)^2/((1-x)*(1-10*x^2)).

The programs for A094627, the canonical program `A094627.P1091454798141600424` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094627 has offset 0).

The definition of A094627 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-x-10x^2+10x^3))` (program `A094627.P1091454798141600424`, by `A094627.P1091454798141600424.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094627.P1091454798141600424

`ogf((1+2x+x^2)/(1-x-10x^2+10x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094627

/-- `ogf((1+2x+x^2)/(1-x-10x^2+10x^3))` -/
def P1091454798141600424.Spec : Prop :=
  ∀ n, P1091454798141600424.a n = A094627 n

theorem P1091454798141600424.correct : P1091454798141600424.Spec := by
  intro n
  simp only [A094627]

end A094627

/-! ## A094627.P16331968781701538013

`10*a(n-2)+4` with `a(0)=1, a(1)=3`
-/

namespace A094627.P16331968781701538013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  10 * a (n - 2) + 4

end

end A094627.P16331968781701538013

namespace A094627

/-- `10*a(n-2)+4` -/
def P16331968781701538013.Spec : Prop :=
  ∀ n, (P16331968781701538013.a n : ℤ) = A094627 n

end A094627

/-! ## A094627.P3440168470580625911

`∑[10*a(n-2)]` with `a(0)=1, a(1)=2, a(2)=11`
-/

namespace A094627.P3440168470580625911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 11] fun n f1 =>
  10 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094627.P3440168470580625911

namespace A094627

/-- `∑[10*a(n-2)]` -/
def P3440168470580625911.Spec : Prop :=
  ∀ n, (P3440168470580625911.a n : ℤ) = A094627 n

end A094627

/-! ## A094627.P7371823121226035226

`lcm(5, a(n-2)+a(n-2))+4` with `a(0)=1, a(1)=3`
-/

namespace A094627.P7371823121226035226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lcm 5 (a (n - 2) + a (n - 2)) + 4

end

end A094627.P7371823121226035226

namespace A094627

/-- `lcm(5, a(n-2)+a(n-2))+4` -/
def P7371823121226035226.Spec : Prop :=
  ∀ n, (P7371823121226035226.a n : ℤ) = A094627 n

end A094627

/-! ## A094627.P7648345943724618392

`4-5*(a(n-2)-3*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A094627.P7648345943724618392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 - 5 * (a (n - 2) - 3 * a (n - 2))

end

end A094627.P7648345943724618392

namespace A094627

/-- `4-5*(a(n-2)-3*a(n-2))` -/
def P7648345943724618392.Spec : Prop :=
  ∀ n, P7648345943724618392.a n = A094627 n

end A094627

/-! ## A094627.P17984021600289576230

`A094626(n)+∑[10^floor(n/2)]`
-/

namespace A094627.P17984021600289576230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094626 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094627.P17984021600289576230

namespace A094627

/-- `A094626(n)+∑[10^floor(n/2)]` -/
def P17984021600289576230.Spec : Prop :=
  ∀ n, P17984021600289576230.a n = (A094627 n : ℚ)

end A094627

/-! ## A094627.P6970324427912813517

`∑[A281366(A116966(2*n))]`
-/

namespace A094627.P6970324427912813517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281366 (A116966 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094627.P6970324427912813517

namespace A094627

/-- `∑[A281366(A116966(2*n))]` -/
def P6970324427912813517.Spec : Prop :=
  ∀ n, P6970324427912813517.a n = A094627 n

end A094627

/-! ## A094627.P7436402825679643610

`A094623(n)+A094626(n)+1`
-/

namespace A094627.P7436402825679643610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094623 n + (A094626 n + 1)

end

end A094627.P7436402825679643610

namespace A094627

/-- `A094623(n)+A094626(n)+1` -/
def P7436402825679643610.Spec : Prop :=
  ∀ n, P7436402825679643610.a n = A094627 n

end A094627

/-! ## A094627.P18272047672644904708

`∑[2*A286507(n)]-A286507(n)`
-/

namespace A094627.P18272047672644904708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A286507 n

end

end A094627.P18272047672644904708

namespace A094627

/-- `∑[2*A286507(n)]-A286507(n)` -/
def P18272047672644904708.Spec : Prop :=
  ∀ n, P18272047672644904708.a n = A094627 n

end A094627

/-! ## A094627.P12140988801280790283

`∑[ceil(A070199(n+1)/10)]`
-/

namespace A094627.P12140988801280790283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070199 (n + 1) : ℚ) / 10⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094627.P12140988801280790283

namespace A094627

/-- `∑[ceil(A070199(n+1)/10)]` -/
def P12140988801280790283.Spec : Prop :=
  ∀ n, P12140988801280790283.a n = A094627 n

end A094627

/-!
# A094630: Number of 3-uniform T_0-covers on n vertices.

The programs for A094630, there is no canonical definition to state claims against.
-/

/-! ## A094630.P3027329904569630513

`A093853(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A094630.P3027329904569630513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093853 n - (n : ℤ) * a (n - 1)

end

end A094630.P3027329904569630513

/-! ## A094630.P18322896658176191589

`A239659(12*a(n-1)+1)+n` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A094630.P18322896658176191589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A239659 (12 * a (n - 1) + 1).toNat + (n : ℤ)

end

end A094630.P18322896658176191589

/-!
# A094631: Number of n-block 3-uniform T_0-covers.

The programs for A094631, there is no canonical definition to state claims against.
-/

/-! ## A094631.P14806561457452104677

`A331569(A167614(n+2))`
-/

namespace A094631.P14806561457452104677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331569 (A167614 (n + 2)).toNat

end

end A094631.P14806561457452104677

/-! ## A094631.P708020211793195838

`A331569(A052905(n)+8)`
-/

namespace A094631.P708020211793195838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331569 (A052905 n + 8).toNat

end

end A094631.P708020211793195838

/-! ## A094631.P2353014315069630398

`A331569(eq[3, A002262(n)])`
-/

namespace A094631.P2353014315069630398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094631.P2353014315069630398

/-! ## A094631.P6014460971927689942

`A331569(A340266(n+2)+1)`
-/

namespace A094631.P6014460971927689942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331569 (A340266 (n + 2) + 1).toNat

end

end A094631.P6014460971927689942

/-! ## A094631.P10048816831336219137

`A331569(A167499(n+2)-2)`
-/

namespace A094631.P10048816831336219137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331569 (A167499 (n + 2) - 2).toNat

end

end A094631.P10048816831336219137

/-!
# A094632: A trace sequence for a Napoleon graph.

The programs for A094632, the canonical program `A094632.P854567659462447146` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094632 has offset 0).

The definition of A094632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094632.P8238780117231705352

`Δ[A023105(n)]*A169985(n)`
-/

namespace A094632.P8238780117231705352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A169985 n

end

end A094632.P8238780117231705352

namespace A094632

/-- `Δ[A023105(n)]*A169985(n)` -/
def P8238780117231705352.Spec : Prop :=
  ∀ n, P8238780117231705352.a n = A094632 n

end A094632

/-! ## A094632.P1598145531305810585

`A169985(n)*A328284(n+2)`
-/

namespace A094632.P1598145531305810585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n * A328284 (n + 2)

end

end A094632.P1598145531305810585

namespace A094632

/-- `A169985(n)*A328284(n+2)` -/
def P1598145531305810585.Spec : Prop :=
  ∀ n, P1598145531305810585.a n = A094632 n

end A094632

/-! ## A094632.P854567659462447146

`A093044(n)+A093045(n)/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A094632

/-- `A093044(n)+A093045(n)/2` -/
def P854567659462447146.Spec : Prop :=
  ∀ n, P854567659462447146.a n = (A094632 n : ℚ)

end A094632

/-! ## A094632.P8697371385811774923

`(A093121(n)+A093044(n))/2`
-/

namespace A094632.P8697371385811774923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093121 n + A093044 n : ℚ) / 2

end

end A094632.P8697371385811774923

namespace A094632

/-- `(A093121(n)+A093044(n))/2` -/
def P8697371385811774923.Spec : Prop :=
  ∀ n, P8697371385811774923.a n = (A094632 n : ℚ)

end A094632

/-! ## A094632.P14280131623632992789

`A093121(n)-A093045(n)/2`
-/

namespace A094632.P14280131623632992789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093121 n : ℚ) - (A093045 n : ℚ) / 2

end

end A094632.P14280131623632992789

namespace A094632

/-- `A093121(n)-A093045(n)/2` -/
def P14280131623632992789.Spec : Prop :=
  ∀ n, P14280131623632992789.a n = (A094632 n : ℚ)

end A094632

/-! ## A094632.P13610671680122731695

`A000032(n)/2*A078008(n)`
-/

namespace A094632.P13610671680122731695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℚ) / 2 * (A078008 n : ℚ)

end

end A094632.P13610671680122731695

namespace A094632

/-- `A000032(n)/2*A078008(n)` -/
def P13610671680122731695.Spec : Prop :=
  ∀ n, P13610671680122731695.a n = (A094632 n : ℚ)

end A094632

/-! ## A094632.P11578297130046008242

`A000032(n)/2*Δ[A001045(n)]`
-/

namespace A094632.P11578297130046008242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A094632.P11578297130046008242

namespace A094632

/-- `A000032(n)/2*Δ[A001045(n)]` -/
def P11578297130046008242.Spec : Prop :=
  ∀ n, P11578297130046008242.a n = (A094632 n : ℚ)

end A094632

/-! ## A094632.P13439275522999732650

`A094633(n)-A084057(n)`
-/

namespace A094632.P13439275522999732650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094633 n - A084057 n

end

end A094632.P13439275522999732650

namespace A094632

/-- `A094633(n)-A084057(n)` -/
def P13439275522999732650.Spec : Prop :=
  ∀ n, P13439275522999732650.a n = A094632 n

end A094632

/-!
# A094633: A Lucas Jacobsthal product.

The programs for A094633, the canonical program `A094633.P9931709720735856024` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094633 has offset 0).

The definition of A094633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094633.P9931709720735856024

`A000032(n)*A001045(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A094633

/-- `A000032(n)*A001045(n+1)` -/
def P9931709720735856024.Spec : Prop :=
  ∀ n, P9931709720735856024.a n = A094633 n

theorem P9931709720735856024.correct : P9931709720735856024.Spec := by
  intro n
  simp only [A094633]

end A094633

/-! ## A094633.P11157381052579427773

`ceil(∑[2^n/3])*Δ[A000032(n+1)]`
-/

namespace A094633.P11157381052579427773
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ * (f2 (n + 1) - f2 n)

end

end A094633.P11157381052579427773

namespace A094633

/-- `ceil(∑[2^n/3])*Δ[A000032(n+1)]` -/
def P11157381052579427773.Spec : Prop :=
  ∀ n, P11157381052579427773.a n = A094633 n

end A094633

/-! ## A094633.P1609224388743076398

`A094632(n)+A084057(n)`
-/

namespace A094633.P1609224388743076398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094632 n + A084057 n

end

end A094633.P1609224388743076398

namespace A094633

/-- `A094632(n)+A084057(n)` -/
def P1609224388743076398.Spec : Prop :=
  ∀ n, P1609224388743076398.a n = A094633 n

end A094633

/-! ## A094633.P14294702087102359785

`A000032(n)*∑[A078008(n)]`
-/

namespace A094633.P14294702087102359785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094633.P14294702087102359785

namespace A094633

/-- `A000032(n)*∑[A078008(n)]` -/
def P14294702087102359785.Spec : Prop :=
  ∀ n, P14294702087102359785.a n = A094633 n

end A094633

/-! ## A094633.P13018670113814790223

`A000032(n)*Δ[A000975(n)]`
-/

namespace A094633.P13018670113814790223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (f1 (n + 1) - f1 n)

end

end A094633.P13018670113814790223

namespace A094633

/-- `A000032(n)*Δ[A000975(n)]` -/
def P13018670113814790223.Spec : Prop :=
  ∀ n, P13018670113814790223.a n = A094633 n

end A094633

/-! ## A094633.P4196260016974720137

`Δ[A001610(n)]*A001045(n+1)`
-/

namespace A094633.P4196260016974720137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001045 (n + 1)

end

end A094633.P4196260016974720137

namespace A094633

/-- `Δ[A001610(n)]*A001045(n+1)` -/
def P4196260016974720137.Spec : Prop :=
  ∀ n, P4196260016974720137.a n = A094633 n

end A094633

/-! ## A094633.P10604041968593750181

`A000032(n)/2*A014113(n+1)`
-/

namespace A094633.P10604041968593750181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℚ) / 2 * (A014113 (n + 1) : ℚ)

end

end A094633.P10604041968593750181

namespace A094633

/-- `A000032(n)/2*A014113(n+1)` -/
def P10604041968593750181.Spec : Prop :=
  ∀ n, P10604041968593750181.a n = (A094633 n : ℚ)

end A094633

/-! ## A094633.P11295145978875078070

`2*A093042(n+1)-A093043(n+1)`
-/

namespace A094633.P11295145978875078070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093042 (n + 1) - A093043 (n + 1)

end

end A094633.P11295145978875078070

namespace A094633

/-- `2*A093042(n+1)-A093043(n+1)` -/
def P11295145978875078070.Spec : Prop :=
  ∀ n, P11295145978875078070.a n = A094633 n

end A094633

/-! ## A094633.P9017025741898471753

`(A000129(n)-A228748(n))*A001045(n+1)`
-/

namespace A094633.P9017025741898471753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000129 n - A228748 n) * A001045 (n + 1)

end

end A094633.P9017025741898471753

namespace A094633

/-- `(A000129(n)-A228748(n))*A001045(n+1)` -/
def P9017025741898471753.Spec : Prop :=
  ∀ n, P9017025741898471753.a n = A094633 n

theorem P9017025741898471753.correct : P9017025741898471753.Spec := by
  intro n
  simp only [A094633, Nat.add_sub_cancel, A094633.P9017025741898471753.a, A094633.P9931709720735856024.a, A000032, A000032.P8352177345629330861.a, A000129, A000129.P3563729298025900801.a, A001045, A001045.P7867134490160464591.a, A228748, A228748.P8566336891877325496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094633

/-! ## A094633.P4436141250547485877

`(A001610(n+1)-A001610(n))*A001045(n+1)`
-/

namespace A094633.P4436141250547485877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001610 (n + 1) - A001610 n) * A001045 (n + 1)

end

end A094633.P4436141250547485877

namespace A094633

/-- `(A001610(n+1)-A001610(n))*A001045(n+1)` -/
def P4436141250547485877.Spec : Prop :=
  ∀ n, P4436141250547485877.a n = A094633 n

end A094633

/-! ## A094633.P8368180728335067899

`(A000204(n+2)-A000204(n+1))*A001045(n+1)`
-/

namespace A094633.P8368180728335067899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000204 (n + 2) - A000204 (n + 1)) * A001045 (n + 1)

end

end A094633.P8368180728335067899

namespace A094633

/-- `(A000204(n+2)-A000204(n+1))*A001045(n+1)` -/
def P8368180728335067899.Spec : Prop :=
  ∀ n, P8368180728335067899.a n = A094633 n

end A094633

/-!
# A094634: a(n) = A094371(n) / A094372(n).

The programs for A094634, there is no canonical definition to state claims against.
-/

/-! ## A094634.P4207671611680891020

`A094371(n+1)/A094372(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094634.P4207671611680891020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094371 (n + 1) : ℚ) / (A094372 (n + 1) : ℚ)

end

end A094634.P4207671611680891020

/-! ## A094634.P17449649976635217426

`A345931(A094371(n+1))`
-/

namespace A094634.P17449649976635217426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (A094371 (n + 1)).toNat

end

end A094634.P17449649976635217426

/-! ## A094634.P14714757099855468577

`A002034(A094371(n+1))/A094404(n+1)`
-/

namespace A094634.P14714757099855468577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (A094371 (n + 1)).toNat : ℚ) / (A094404 (n + 1) : ℚ)

end

end A094634.P14714757099855468577

/-! ## A094634.P14876747582416301350

`A002034(A094371(n+1))/A345932(2*(n+1))`
-/

namespace A094634.P14876747582416301350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (A094371 (n + 1)).toNat : ℚ) / (A345932 (2 * (n + 1)) : ℚ)

end

end A094634.P14876747582416301350

/-! ## A094634.P5853043052016756218

`A309836(A094372(n+1))/(A094372(n+1)*A094404(n+1))`
-/

namespace A094634.P5853043052016756218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309836 (A094372 (n + 1)).toNat : ℚ) / (A094372 (n + 1) * A094404 (n + 1) : ℚ)

end

end A094634.P5853043052016756218

/-!
# A094635: Smallest digit of n in Roman numeral representation.

The programs for A094635, there is no canonical definition to state claims against.
-/

/-! ## A094635.P14771439262818331484

`A068822(gcd(n+1, A180105(n+1)))`
-/

namespace A094635.P14771439262818331484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068822 (Int.gcd (n + 1 : ℤ) (A180105 (n + 1)))

end

end A094635.P14771439262818331484

/-! ## A094635.P7826497507633847638

`gcd((n+1)², A118762(2*(n+1)))`
-/

namespace A094635.P7826497507633847638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A118762 (2 * (n + 1)))

end

end A094635.P7826497507633847638

/-! ## A094635.P6418266757563695338

`gcd(n+1, abs(A118762(A103517(n))))`
-/

namespace A094635.P6418266757563695338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) |A118762 (A103517 n).toNat|

end

end A094635.P6418266757563695338

/-! ## A094635.P13372330024455828232

`A007947(A370181(n+1)^A083892(n+1))`
-/

namespace A094635.P13372330024455828232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A370181 (n + 1) : ℚ) ^ (A083892 (n + 1) : ℤ))).toNat

end

end A094635.P13372330024455828232

/-! ## A094635.P1487106891812868694

`gcd(A068962(A016754(n+3)), A327535(n+1))`
-/

namespace A094635.P1487106891812868694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068962 (A016754 (n + 3)).toNat) (A327535 (n + 1))

end

end A094635.P1487106891812868694

/-!
# A094636: Largest digit of n in Roman numeral representation.

The programs for A094636, there is no canonical definition to state claims against.
-/

/-! ## A094636.P9674338034259443985

`lcm(A093704(n+1), A093704(A093783(n+1)))`
-/

namespace A094636.P9674338034259443985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A093704 (n + 1)) (A093704 (A093783 (n + 1)).toNat)

end

end A094636.P9674338034259443985

/-! ## A094636.P12034616526899416728

`A093704(A093783(n+1))%A081504(3*n+4)`
-/

namespace A094636.P12034616526899416728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093704 (A093783 (n + 1)).toNat) (A081504 (3 * n + 4))

end

end A094636.P12034616526899416728

/-! ## A094636.P3363611752368205618

`A093704(A093783(n+1))^A010685(A007782(n))`
-/

namespace A094636.P3363611752368205618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093704 (A093783 (n + 1)).toNat : ℚ) ^ (A010685 (A007782 n).toNat : ℤ)

end

end A094636.P3363611752368205618

/-! ## A094636.P15936757081531146384

`A093704(A093783(n+1))*A319002(A006530(n+1))`
-/

namespace A094636.P15936757081531146384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093704 (A093783 (n + 1)).toNat * A319002 (A006530 (n + 1)).toNat

end

end A094636.P15936757081531146384

/-! ## A094636.P10082322915910457059

`A093704(A093783(n+1))%A233301(A000010(n+1))`
-/

namespace A094636.P10082322915910457059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093704 (A093783 (n + 1)).toNat) (A233301 (A000010 (n + 1)).toNat)

end

end A094636.P10082322915910457059

/-! ## A094636.P270221716504335320

`A093704(A093783(n+1))+A000038(A335458(n))`
-/

namespace A094636.P270221716504335320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093704 (A093783 (n + 1)).toNat + A000038 (A335458 n).toNat

end

end A094636.P270221716504335320

/-! ## A094636.P6800521905956136799

`A093704(A093783(n+1))+A000007(A275892(n+1))`
-/

namespace A094636.P6800521905956136799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093704 (A093783 (n + 1)).toNat + A000007 (A275892 (n + 1)).toNat

end

end A094636.P6800521905956136799

/-! ## A094636.P991693181172873450

`A055491(A319002(n+1)²)*A093704(A093783(n+1))`
-/

namespace A094636.P991693181172873450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (A319002 (n + 1) ^ 2).toNat * A093704 (A093783 (n + 1)).toNat

end

end A094636.P991693181172873450

/-! ## A094636.P14523713114469248027

`A001221(A001248(n+1))*A093704(A093783(n+1))`
-/

namespace A094636.P14523713114469248027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001248 (n + 1)).toNat * A093704 (A093783 (n + 1)).toNat

end

end A094636.P14523713114469248027

/-! ## A094636.P3508613048439969723

`A001221(A260891(n+1))*A093704(A093783(n+1))`
-/

namespace A094636.P3508613048439969723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A260891 (n + 1)).toNat * A093704 (A093783 (n + 1)).toNat

end

end A094636.P3508613048439969723

/-!
# A094637: Number of unlabeled hexagonal 2-trees with n hexagons.

The programs for A094637, there is no canonical definition to state claims against.
-/

/-! ## A094637.P7237392988534031443

`A340811(A052905(n+2))`
-/

namespace A094637.P7237392988534031443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A052905 (n + 2)).toNat

end

end A094637.P7237392988534031443

/-! ## A094637.P1902924672721714286

`A340811(eq[4, A025581(n)])`
-/

namespace A094637.P1902924672721714286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094637.P1902924672721714286

/-! ## A094637.P2211677160013119240

`A340811(eq[4, A116949(n)])`
-/

namespace A094637.P2211677160013119240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094637.P2211677160013119240

/-! ## A094637.P6523294443650636002

`A340811(A000217(n+5)-5)`
-/

namespace A094637.P6523294443650636002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A000217 (n + 5) - 5).toNat

end

end A094637.P6523294443650636002

/-! ## A094637.P6960971582632266838

`A340811(A161680(n+6)-5)`
-/

namespace A094637.P6960971582632266838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A161680 (n + 6) - 5).toNat

end

end A094637.P6960971582632266838

/-! ## A094637.P16048550189264921268

`A340811(Δ[A023545(n+1)]-1)`
-/

namespace A094637.P16048550189264921268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (f1 (n + 1) - f1 n - 1).toNat

end

end A094637.P16048550189264921268

/-! ## A094637.P5815374889344155974

`A340811(A167487(n)+4*n+2)`
-/

namespace A094637.P5815374889344155974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A167487 n + (4 * n + 2 : ℤ)).toNat

end

end A094637.P5815374889344155974

/-! ## A094637.P15409852446565156834

`A340811(2*n+A055999(n)+10)`
-/

namespace A094637.P15409852446565156834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 ((2 * n : ℤ) + (A055999 n + 10)).toNat

end

end A094637.P15409852446565156834

/-! ## A094637.P2819675914930207010

`A340811(A167614(n+2)+A005408(n))`
-/

namespace A094637.P2819675914930207010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A167614 (n + 2) + A005408 n).toNat

end

end A094637.P2819675914930207010

/-!
# A094638: Triangle read by rows: T(n,k) = |s(n,n+1-k)|, where s(n,k) are the signed Stirling numbers of the first kind A008276 (1 <= k <= n; in other words, the unsigned Stirling numbers of the first kind in reverse order).

The programs for A094638, the canonical program `A094638.P70618795552995426` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094638 has offset 1).

The definition of A094638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2547 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094638.P70618795552995426

`row(n)*T(n-1,k-1)+T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094638

/-- `row(n)*T(n-1,k-1)+T(n-1,k)` -/
def P70618795552995426.Spec : Prop :=
  ∀ n, (P70618795552995426.a n : ℤ) = A094638 (n + 1)

theorem P70618795552995426.correct : P70618795552995426.Spec := by
  intro n
  simp only [A094638, Nat.add_sub_cancel]

end A094638

/-! ## A094638.P3254030185644301848

`abs(A008276(n+1))`
-/

namespace A094638.P3254030185644301848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008276 (n + 1)|

end

end A094638.P3254030185644301848

namespace A094638

/-- `abs(A008276(n+1))` -/
def P3254030185644301848.Spec : Prop :=
  ∀ n, P3254030185644301848.a n = A094638 (n + 1)

end A094638

/-! ## A094638.P13298401035868971863

`abs(A054654(A007401(n+1)))`
-/

namespace A094638.P13298401035868971863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054654 (A007401 (n + 1)).toNat|

end

end A094638.P13298401035868971863

namespace A094638

/-- `abs(A054654(A007401(n+1)))` -/
def P13298401035868971863.Spec : Prop :=
  ∀ n, P13298401035868971863.a n = A094638 (n + 1)

end A094638

/-! ## A094638.P11402447717954591756

`gcd(A000038(n), A008276(n+1))`
-/

namespace A094638.P11402447717954591756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A008276 (n + 1))

end

end A094638.P11402447717954591756

namespace A094638

/-- `gcd(A000038(n), A008276(n+1))` -/
def P11402447717954591756.Spec : Prop :=
  ∀ n, (P11402447717954591756.a n : ℤ) = A094638 (n + 1)

end A094638

/-! ## A094638.P8385980777223798243

`lcm(A008276(n+1), A020985(n))`
-/

namespace A094638.P8385980777223798243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008276 (n + 1)) (A020985 n)

end

end A094638.P8385980777223798243

namespace A094638

/-- `lcm(A008276(n+1), A020985(n))` -/
def P8385980777223798243.Spec : Prop :=
  ∀ n, (P8385980777223798243.a n : ℤ) = A094638 (n + 1)

end A094638

/-! ## A094638.P18416203325205950330

`abs(A054654(A003056(n)+1+n))`
-/

namespace A094638.P18416203325205950330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054654 (A003056 n + 1 + (n : ℤ)).toNat|

end

end A094638.P18416203325205950330

namespace A094638

/-- `abs(A054654(A003056(n)+1+n))` -/
def P18416203325205950330.Spec : Prop :=
  ∀ n, P18416203325205950330.a n = A094638 (n + 1)

end A094638

/-! ## A094638.P15557501780779077535

`A130534(A061579(n))`
-/

namespace A094638.P15557501780779077535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (A061579 n).toNat

end

end A094638.P15557501780779077535

namespace A094638

/-- `A130534(A061579(n))` -/
def P15557501780779077535.Spec : Prop :=
  ∀ n, P15557501780779077535.a n = A094638 (n + 1)

end A094638

/-! ## A094638.P8657054229148639183

`abs(A008275(A038722(n+1)))`
-/

namespace A094638.P8657054229148639183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008275 (A038722 (n + 1)).toNat|

end

end A094638.P8657054229148639183

namespace A094638

/-- `abs(A008275(A038722(n+1)))` -/
def P8657054229148639183.Spec : Prop :=
  ∀ n, P8657054229148639183.a n = A094638 (n + 1)

end A094638

/-! ## A094638.P9036289176244160923

`A130534(A038722(n+1)-1)`
-/

namespace A094638.P9036289176244160923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (A038722 (n + 1) - 1).toNat

end

end A094638.P9036289176244160923

namespace A094638

/-- `A130534(A038722(n+1)-1)` -/
def P9036289176244160923.Spec : Prop :=
  ∀ n, P9036289176244160923.a n = A094638 (n + 1)

end A094638

/-! ## A094638.P1670042757957577240

`A130534(A014132(n+1)-2*A002260(n+1))`
-/

namespace A094638.P1670042757957577240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (A014132 (n + 1) - 2 * A002260 (n + 1)).toNat

end

end A094638.P1670042757957577240

namespace A094638

/-- `A130534(A014132(n+1)-2*A002260(n+1))` -/
def P1670042757957577240.Spec : Prop :=
  ∀ n, P1670042757957577240.a n = A094638 (n + 1)

end A094638

/-! ## A094638.P4644785319948948355

`A130534(A014132(n+1)-A002260(n+1)-A002260(n+1))`
-/

namespace A094638.P4644785319948948355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (A014132 (n + 1) - A002260 (n + 1) - A002260 (n + 1)).toNat

end

end A094638.P4644785319948948355

namespace A094638

/-- `A130534(A014132(n+1)-A002260(n+1)-A002260(n+1))` -/
def P4644785319948948355.Spec : Prop :=
  ∀ n, P4644785319948948355.a n = A094638 (n + 1)

end A094638

/-! ## A094638.P4808323103984597209

`A008276(n+1)*A008277(n+1)/A080417(n+1)`
-/

namespace A094638.P4808323103984597209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008276 (n + 1) * A008277 (n + 1) : ℚ) / (A080417 (n + 1) : ℚ)

end

end A094638.P4808323103984597209

namespace A094638

/-- `A008276(n+1)*A008277(n+1)/A080417(n+1)` -/
def P4808323103984597209.Spec : Prop :=
  ∀ n, P4808323103984597209.a n = (A094638 (n + 1) : ℚ)

end A094638

/-!
# A094639: Partial sums of squares of Catalan numbers (A000108).

The programs for A094639, there is no canonical definition to state claims against.
-/

/-! ## A094639.P13332500464780144948

`∑[(C(2*n, n)/(n+1))²]`
-/

namespace A094639.P13332500464780144948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094639.P13332500464780144948

/-! ## A094639.P14924099312184296778

`∑[(C(2*n, n+1)-C(2*n, n))²]`
-/

namespace A094639.P14924099312184296778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) (n + 1) : ℤ) - (Nat.choose (2 * n) n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094639.P14924099312184296778

/-! ## A094639.P1426474672114328054

`a(n-1)+(C(2*n, n+1)/n)²` with `a(0)=1`
-/

namespace A094639.P1426474672114328054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((Nat.choose (2 * n) (n + 1) : ℚ) / (n : ℚ)) ^ 2

end

end A094639.P1426474672114328054

/-! ## A094639.P1028775386130126732

`∑[A001246(n)]`
-/

namespace A094639.P1028775386130126732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094639.P1028775386130126732

/-! ## A094639.P6731723840937635567

`∑[A000108(n)²]`
-/

namespace A094639.P6731723840937635567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094639.P6731723840937635567

/-! ## A094639.P393442663937745161

`∑[A168491(n)²]`
-/

namespace A094639.P393442663937745161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094639.P393442663937745161

/-! ## A094639.P11445513830681885054

`∑[A008313(n²)²]`
-/

namespace A094639.P11445513830681885054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094639.P11445513830681885054

/-! ## A094639.P15050684078991912393

`∑[A172414(n²)²]`
-/

namespace A094639.P15050684078991912393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172414 (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094639.P15050684078991912393

/-! ## A094639.P2379987429277420585

`∑[A259992(n²)²]`
-/

namespace A094639.P2379987429277420585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259992 (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094639.P2379987429277420585

/-! ## A094639.P13214351845538951050

`∑[A028364(∑[n])²]`
-/

namespace A094639.P13214351845538951050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094639.P13214351845538951050

/-!
# A094644: Continued fraction for e^gamma.

The programs for A094644, there is no canonical definition to state claims against.
-/

/-! ## A094644.P4008210865271054379

`A079650(n+1)`
-/

namespace A094644.P4008210865271054379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079650 (n + 1)

end

end A094644.P4008210865271054379

/-!
# A094645: Triangle of generalized Stirling numbers of the first kind read by rows: T(n, k) = (-1)^(n+k)*Sum_{m=0..n} Stirling1(n, m) * binomial(m, k), where Stirling1 is A048994.

The programs for A094645, the canonical program `A094645.P17377939293200272215` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094645 has offset 0).

The definition of A094645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094645.P17377939293200272215

`T(n-1,k-1)+(row(n)-2)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094645

/-- `T(n-1,k-1)+(row(n)-2)*T(n-1,k)` -/
def P17377939293200272215.Spec : Prop :=
  ∀ n, P17377939293200272215.a n = A094645 n

theorem P17377939293200272215.correct : P17377939293200272215.Spec := by
  intro n
  simp only [A094645]

end A094645

/-! ## A094645.P5245170261998611244

`(and(2, comp[∑[n]]+n)-1)*A105793(n)`
-/

namespace A094645.P5245170261998611244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A105793 n

end

end A094645.P5245170261998611244

namespace A094645

/-- `(and(2, comp[∑[n]]+n)-1)*A105793(n)` -/
def P5245170261998611244.Spec : Prop :=
  ∀ n, P5245170261998611244.a n = A094645 n

end A094645

/-! ## A094645.P455408576249907021

`A097807(n)*A105793(n)`
-/

namespace A094645.P455408576249907021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A105793 n

end

end A094645.P455408576249907021

namespace A094645

/-- `A097807(n)*A105793(n)` -/
def P455408576249907021.Spec : Prop :=
  ∀ n, P455408576249907021.a n = A094645 n

end A094645

/-! ## A094645.P7141971463516912225

`A033999(C(comp[∑[n]]-n, 2)-(n+1))*A105793(n)`
-/

namespace A094645.P7141971463516912225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) * A105793 n

end

end A094645.P7141971463516912225

namespace A094645

/-- `A033999(C(comp[∑[n]]-n, 2)-(n+1))*A105793(n)` -/
def P7141971463516912225.Spec : Prop :=
  ∀ n, P7141971463516912225.a n = A094645 n

end A094645

/-! ## A094645.P17527654828026855797

`A033999(A025581(n))*A105793(n)`
-/

namespace A094645.P17527654828026855797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A105793 n

end

end A094645.P17527654828026855797

namespace A094645

/-- `A033999(A025581(n))*A105793(n)` -/
def P17527654828026855797.Spec : Prop :=
  ∀ n, P17527654828026855797.a n = A094645 n

end A094645

/-! ## A094645.P4631775070539311290

`A009531(A099375(n))*A105793(n)`
-/

namespace A094645.P4631775070539311290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A105793 n

end

end A094645.P4631775070539311290

namespace A094645

/-- `A009531(A099375(n))*A105793(n)` -/
def P4631775070539311290.Spec : Prop :=
  ∀ n, P4631775070539311290.a n = A094645 n

end A094645

/-! ## A094645.P9633921050374448206

`A105793(A028310(n))/A097807(n)`
-/

namespace A094645.P9633921050374448206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105793 (A028310 n).toNat : ℚ) / (A097807 n : ℚ)

end

end A094645.P9633921050374448206

namespace A094645

/-- `A105793(A028310(n))/A097807(n)` -/
def P9633921050374448206.Spec : Prop :=
  ∀ n, P9633921050374448206.a n = (A094645 n : ℚ)

end A094645

/-! ## A094645.P10392665244933500098

`A105793(n)/A033999(A025581(n)²)`
-/

namespace A094645.P10392665244933500098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105793 n : ℚ) / (A033999 (A025581 n ^ 2).toNat : ℚ)

end

end A094645.P10392665244933500098

namespace A094645

/-- `A105793(n)/A033999(A025581(n)²)` -/
def P10392665244933500098.Spec : Prop :=
  ∀ n, P10392665244933500098.a n = (A094645 n : ℚ)

end A094645

/-! ## A094645.P251295039482687361

`A033999(2*n-A319571(2*n+1))*A105793(n)`
-/

namespace A094645.P251295039482687361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((2 * n : ℤ) - A319571 (2 * n + 1)).toNat * A105793 n

end

end A094645.P251295039482687361

namespace A094645

/-- `A033999(2*n-A319571(2*n+1))*A105793(n)` -/
def P251295039482687361.Spec : Prop :=
  ∀ n, P251295039482687361.a n = A094645 n

end A094645

/-! ## A094645.P3432073186420714505

`A008836(A130321(n))*A105793(n)`
-/

namespace A094645.P3432073186420714505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A105793 n

end

end A094645.P3432073186420714505

namespace A094645

/-- `A008836(A130321(n))*A105793(n)` -/
def P3432073186420714505.Spec : Prop :=
  ∀ n, P3432073186420714505.a n = A094645 n

end A094645

/-!
# A094646: Triangle of generalized Stirling numbers of the first kind read by rows: T(n, k) = (-1)^(n+k)*Sum_{m=0..n} Stirling1(n, m) * binomial(m, k) * 2^(m-k), where Stirling1 is A048994.

The programs for A094646, the canonical program `A094646.P18361601674442785999` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094646 has offset 0).

The definition of A094646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094646.P18361601674442785999

`T(n-1,k-1)+(row(n)-3)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094646

/-- `T(n-1,k-1)+(row(n)-3)*T(n-1,k)` -/
def P18361601674442785999.Spec : Prop :=
  ∀ n, P18361601674442785999.a n = A094646 n

theorem P18361601674442785999.correct : P18361601674442785999.Spec := by
  intro n
  simp only [A094646]

end A094646

/-!
# A094647: a(n) = n^(2n) - (2n)^n.

The programs for A094647, the canonical program `A094647.P15004405046972630696` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094647 has offset 1).

The definition of A094647 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(2*(n+1))-(2*(n+1))^(n+1)` (program `A094647.P15004405046972630696`, by `A094647.P15004405046972630696.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094647.P15004405046972630696

`(n+1)^(2*(n+1))-(2*(n+1))^(n+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094647

/-- `(n+1)^(2*(n+1))-(2*(n+1))^(n+1)` -/
def P15004405046972630696.Spec : Prop :=
  ∀ n, P15004405046972630696.a n = A094647 (n + 1)

theorem P15004405046972630696.correct : P15004405046972630696.Spec := by
  intro n
  simp only [A094647, Nat.add_sub_cancel]

end A094647

/-! ## A094647.P146354431807477901

`Δ[A350008(n)-A349962(n)]`
-/

namespace A094647.P146354431807477901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350008 n - A349962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094647.P146354431807477901

namespace A094647

/-- `Δ[A350008(n)-A349962(n)]` -/
def P146354431807477901.Spec : Prop :=
  ∀ n, P146354431807477901.a n = A094647 (n + 1)

end A094647

/-! ## A094647.P5679074649608219182

`(A000312(n+1)-A000079(n+1))*A000312(n+1)`
-/

namespace A094647.P5679074649608219182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000312 (n + 1) - A000079 (n + 1)) * A000312 (n + 1)

end

end A094647.P5679074649608219182

namespace A094647

/-- `(A000312(n+1)-A000079(n+1))*A000312(n+1)` -/
def P5679074649608219182.Spec : Prop :=
  ∀ n, P5679074649608219182.a n = A094647 (n + 1)

end A094647

/-! ## A094647.P5812604491752504634

`A055651(A062728(n+1))`
-/

namespace A094647.P5812604491752504634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A062728 (n + 1)).toNat

end

end A094647.P5812604491752504634

namespace A094647

/-- `A055651(A062728(n+1))` -/
def P5812604491752504634.Spec : Prop :=
  ∀ n, P5812604491752504634.a n = A094647 (n + 1)

end A094647

/-! ## A094647.P10202183943577914648

`A220417(A064226(n))`
-/

namespace A094647.P10202183943577914648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220417 (A064226 n).toNat

end

end A094647.P10202183943577914648

namespace A094647

/-- `A220417(A064226(n))` -/
def P10202183943577914648.Spec : Prop :=
  ∀ n, P10202183943577914648.a n = A094647 (n + 1)

end A094647

/-!
# A094648: An accelerator sequence for Catalan's constant.

The programs for A094648, the canonical program `A094648.P13765458420596317681` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094648 has offset 0).

The definition of A094648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094648.P9152867926177595446

`ogf((3+2x-2x^2)/(1+x-2x^2-x^3))`
-/

namespace A094648.P9152867926177595446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, -2] [1, 1, -2, -1] n

end

end A094648.P9152867926177595446

namespace A094648

/-- `ogf((3+2x-2x^2)/(1+x-2x^2-x^3))` -/
def P9152867926177595446.Spec : Prop :=
  ∀ n, P9152867926177595446.a n = A094648 n

end A094648

/-! ## A094648.P6239678581477506518

`(2*cos(2*π/7))^n+(2*cos(4*π/7))^n+(2*cos(8*π/7))^n`
-/

namespace A094648.P6239678581477506518
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * Real.cos (2 * (Real.pi / 7))) ^ n + (2 * Real.cos (4 * (Real.pi / 7))) ^ n + (2 * Real.cos (8 * (Real.pi / 7))) ^ n

end

end A094648.P6239678581477506518

namespace A094648

/-- `(2*cos(2*π/7))^n+(2*cos(4*π/7))^n+(2*cos(8*π/7))^n` -/
def P6239678581477506518.Spec : Prop :=
  ∀ n, P6239678581477506518.a n = (A094648 n : ℝ)

end A094648

/-! ## A094648.P13765458420596317681

`A033999(n)*A096975(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A094648

/-- `A033999(n)*A096975(n)` -/
def P13765458420596317681.Spec : Prop :=
  ∀ n, P13765458420596317681.a n = A094648 n

theorem P13765458420596317681.correct : P13765458420596317681.Spec := by
  intro n
  simp only [A094648]

end A094648

/-! ## A094648.P3880028385254173984

`A321461(n)-A321461(n+2)`
-/

namespace A094648.P3880028385254173984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321461 n - A321461 (n + 2)

end

end A094648.P3880028385254173984

namespace A094648

/-- `A321461(n)-A321461(n+2)` -/
def P3880028385254173984.Spec : Prop :=
  ∀ n, P3880028385254173984.a n = A094648 n

end A094648

/-! ## A094648.P1302329694911848743

`-(A321175(n+1)+A321175(n))`
-/

namespace A094648.P1302329694911848743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A321175 (n + 1) + A321175 n)

end

end A094648.P1302329694911848743

namespace A094648

/-- `-(A321175(n+1)+A321175(n))` -/
def P1302329694911848743.Spec : Prop :=
  ∀ n, P1302329694911848743.a n = A094648 n

end A094648

/-! ## A094648.P685741903203784179

`A094650(n)/A189234(n)*A096975(n)`
-/

namespace A094648.P685741903203784179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094650 n : ℚ) / (A189234 n : ℚ) * (A096975 n : ℚ)

end

end A094648.P685741903203784179

namespace A094648

/-- `A094650(n)/A189234(n)*A096975(n)` -/
def P685741903203784179.Spec : Prop :=
  ∀ n, P685741903203784179.a n = (A094648 n : ℚ)

end A094648

/-! ## A094648.P7460713295218444036

`A066170(∑[n])*A096975(n)`
-/

namespace A094648.P7460713295218444036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066170 (∑ j ∈ Finset.range (n + 1), f1 j) * A096975 n

end

end A094648.P7460713295218444036

namespace A094648

/-- `A066170(∑[n])*A096975(n)` -/
def P7460713295218444036.Spec : Prop :=
  ∀ n, P7460713295218444036.a n = A094648 n

end A094648

/-! ## A094648.P13282892851136271273

`A096975(n)*A197870(∑[n])`
-/

namespace A094648.P13282892851136271273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096975 n * A197870 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094648.P13282892851136271273

namespace A094648

/-- `A096975(n)*A197870(∑[n])` -/
def P13282892851136271273.Spec : Prop :=
  ∀ n, P13282892851136271273.a n = A094648 n

end A094648

/-!
# A094649: An accelerator sequence for Catalan's constant.

The programs for A094649, the canonical program `A094649.P15418572238183492422` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094649 has offset 0).

The definition of A094649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094649.P15418572238183492422

`3*a(n-2)+a(n-3)-3` with `a(0)=4, a(1)=1, a(2)=7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094649

/-- `3*a(n-2)+a(n-3)-3` -/
def P15418572238183492422.Spec : Prop :=
  ∀ n, P15418572238183492422.a n = A094649 n

theorem P15418572238183492422.correct : P15418572238183492422.Spec := by
  intro n
  simp only [A094649]

end A094649

/-! ## A094649.P6926191856772255903

`1+(-1)^n*A215664(n)`
-/

namespace A094649.P6926191856772255903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (-1) ^ n * A215664 n

end

end A094649.P6926191856772255903

namespace A094649

/-- `1+(-1)^n*A215664(n)` -/
def P6926191856772255903.Spec : Prop :=
  ∀ n, P6926191856772255903.a n = A094649 n

end A094649

/-! ## A094649.P16758654992294843522

`abs(A215664(n))+1`
-/

namespace A094649.P16758654992294843522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215664 n| + 1

end

end A094649.P16758654992294843522

namespace A094649

/-- `abs(A215664(n))+1` -/
def P16758654992294843522.Spec : Prop :=
  ∀ n, P16758654992294843522.a n = A094649 n

end A094649

/-! ## A094649.P12110116894758558544

`3*A188048(n)+1`
-/

namespace A094649.P12110116894758558544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A188048 n + 1

end

end A094649.P12110116894758558544

namespace A094649

/-- `3*A188048(n)+1` -/
def P12110116894758558544.Spec : Prop :=
  ∀ n, P12110116894758558544.a n = A094649 n

end A094649

/-! ## A094649.P143892115865694570

`3*Δ[A188022(n)]+1`
-/

namespace A094649.P143892115865694570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n) + 1

end

end A094649.P143892115865694570

namespace A094649

/-- `3*Δ[A188022(n)]+1` -/
def P143892115865694570.Spec : Prop :=
  ∀ n, P143892115865694570.a n = A094649 n

end A094649

/-! ## A094649.P3710095532686554232

`3*Δ[Δ[A061551(n)]]+1`
-/

namespace A094649.P3710095532686554232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n) + 1

end

end A094649.P3710095532686554232

namespace A094649

/-- `3*Δ[Δ[A061551(n)]]+1` -/
def P3710095532686554232.Spec : Prop :=
  ∀ n, P3710095532686554232.a n = A094649 n

end A094649

/-! ## A094649.P445814559192260692

`3*A187497(3*n+1)+1`
-/

namespace A094649.P445814559192260692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A187497 (3 * n + 1) + 1

end

end A094649.P445814559192260692

namespace A094649

/-- `3*A187497(3*n+1)+1` -/
def P445814559192260692.Spec : Prop :=
  ∀ n, P445814559192260692.a n = A094649 n

end A094649

/-!
# A094650: An accelerator sequence for Catalan's constant.

The programs for A094650, the canonical program `A094650.P10297718232324773788` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094650 has offset 0).

The definition of A094650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094650.P10297718232324773788

`A033999(n)*A189234(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A094650

/-- `A033999(n)*A189234(n)` -/
def P10297718232324773788.Spec : Prop :=
  ∀ n, P10297718232324773788.a n = A094650 n

theorem P10297718232324773788.correct : P10297718232324773788.Spec := by
  intro n
  simp only [A094650]

end A094650

/-! ## A094650.P12391637428524746350

`A009001(2*n)*A189234(n)`
-/

namespace A094650.P12391637428524746350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A189234 n

end

end A094650.P12391637428524746350

namespace A094650

/-- `A009001(2*n)*A189234(n)` -/
def P12391637428524746350.Spec : Prop :=
  ∀ n, P12391637428524746350.a n = A094650 n

end A094650

/-! ## A094650.P2370033119299102514

`A010892(3*n)*A189234(n)`
-/

namespace A094650.P2370033119299102514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) * A189234 n

end

end A094650.P2370033119299102514

namespace A094650

/-- `A010892(3*n)*A189234(n)` -/
def P2370033119299102514.Spec : Prop :=
  ∀ n, P2370033119299102514.a n = A094650 n

end A094650

/-! ## A094650.P5320233883270177102

`A094648(n)/A096975(n)*A189234(n)`
-/

namespace A094650.P5320233883270177102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094648 n : ℚ) / (A096975 n : ℚ) * (A189234 n : ℚ)

end

end A094650.P5320233883270177102

namespace A094650

/-- `A094648(n)/A096975(n)*A189234(n)` -/
def P5320233883270177102.Spec : Prop :=
  ∀ n, P5320233883270177102.a n = (A094650 n : ℚ)

end A094650

/-! ## A094650.P2943015742458838733

`A189234(n)*A197870(A000217(n))`
-/

namespace A094650.P2943015742458838733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189234 n * A197870 (A000217 n).toNat

end

end A094650.P2943015742458838733

namespace A094650

/-- `A189234(n)*A197870(A000217(n))` -/
def P2943015742458838733.Spec : Prop :=
  ∀ n, P2943015742458838733.a n = A094650 n

end A094650

/-!
# A094651: Number of unlabeled heptagonal 2-trees with n heptagons.

The programs for A094651, there is no canonical definition to state claims against.
-/

/-! ## A094651.P8875160624993123609

`A340811(A055999(n+3))`
-/

namespace A094651.P8875160624993123609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A055999 (n + 3)).toNat

end

end A094651.P8875160624993123609

/-! ## A094651.P2386820555703061645

`A340811(eq[2, A116949(n)])`
-/

namespace A094651.P2386820555703061645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094651.P2386820555703061645

/-! ## A094651.P17163970422820430267

`A340811(Δ[A023551(n+1)])`
-/

namespace A094651.P17163970422820430267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (f1 (n + 1) - f1 n).toNat

end

end A094651.P17163970422820430267

/-! ## A094651.P16856848853483853059

`A340811(A155212(n+2)+2)`
-/

namespace A094651.P16856848853483853059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A155212 (n + 2) + 2).toNat

end

end A094651.P16856848853483853059

/-! ## A094651.P10565867761153834220

`A340811(A000217(n+6)-6)`
-/

namespace A094651.P10565867761153834220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A000217 (n + 6) - 6).toNat

end

end A094651.P10565867761153834220

/-! ## A094651.P13140772212758520280

`A340811(Δ[A023545(n+2)]-2)`
-/

namespace A094651.P13140772212758520280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (f1 (n + 1) - f1 n - 2).toNat

end

end A094651.P13140772212758520280

/-! ## A094651.P6015476600888685954

`A340811(A055998(n+3)+n+3)`
-/

namespace A094651.P6015476600888685954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A055998 (n + 3) + (n + 3 : ℤ)).toNat

end

end A094651.P6015476600888685954

/-! ## A094651.P4662072651001839790

`A340811(A046691(n+3)+n+4)`
-/

namespace A094651.P4662072651001839790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A046691 (n + 3) + (n + 4 : ℤ)).toNat

end

end A094651.P4662072651001839790

/-! ## A094651.P13363888919299014216

`A340811(2*n+A000124(n+4)+4)`
-/

namespace A094651.P13363888919299014216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 ((2 * n : ℤ) + (A000124 (n + 4) + 4)).toNat

end

end A094651.P13363888919299014216

/-!
# A094652: Number of unlabeled octagonal 2-trees with n octagons.

The programs for A094652, there is no canonical definition to state claims against.
-/

/-! ## A094652.P3924628421732979898

`A340811(A055999(n+4)-1)`
-/

namespace A094652.P3924628421732979898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A055999 (n + 4) - 1).toNat

end

end A094652.P3924628421732979898

/-! ## A094652.P6631076123266067614

`A340811(A034856(n+6)-5)`
-/

namespace A094652.P6631076123266067614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A034856 (n + 6) - 5).toNat

end

end A094652.P6631076123266067614

/-! ## A094652.P7281913216825890385

`A340811(A000217(n+7)-7)`
-/

namespace A094652.P7281913216825890385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A000217 (n + 7) - 7).toNat

end

end A094652.P7281913216825890385

/-! ## A094652.P5625009291951019314

`A340811(A000124(n+7)-8)`
-/

namespace A094652.P5625009291951019314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A000124 (n + 7) - 8).toNat

end

end A094652.P5625009291951019314

/-! ## A094652.P16214160534178825827

`A340811(Δ[A023551(n+2)]-1)`
-/

namespace A094652.P16214160534178825827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (f1 (n + 1) - f1 n - 1).toNat

end

end A094652.P16214160534178825827

/-! ## A094652.P15244143446877278065

`A340811(A000096(n+5)+n+1)`
-/

namespace A094652.P15244143446877278065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A094652.P15244143446877278065

/-! ## A094652.P1778948292522196736

`A340811(A133263(n+1)+A008458(n+3))`
-/

namespace A094652.P1778948292522196736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A133263 (n + 1) + A008458 (n + 3)).toNat

end

end A094652.P1778948292522196736

/-! ## A094652.P16115638653557444013

`A340811(A167614(n+4)+A005408(n+1))`
-/

namespace A094652.P16115638653557444013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A167614 (n + 4) + A005408 (n + 1)).toNat

end

end A094652.P16115638653557444013

/-! ## A094652.P11409960997932753875

`A340811(A016825(n+3)+A000124(n+3))`
-/

namespace A094652.P11409960997932753875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A016825 (n + 3) + A000124 (n + 3)).toNat

end

end A094652.P11409960997932753875

/-!
# A094653: Number of unlabeled 9-gonal 2-trees with n 9-gons.

The programs for A094653, there is no canonical definition to state claims against.
-/

/-! ## A094653.P4772008736289624828

`A340811(A155212(n+4))`
-/

namespace A094653.P4772008736289624828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A155212 (n + 4)).toNat

end

end A094653.P4772008736289624828

/-! ## A094653.P1836918123776549552

`A340811(eq[7, A025581(n)])`
-/

namespace A094653.P1836918123776549552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094653.P1836918123776549552

/-! ## A094653.P10434905174840523863

`A340811(A000217(n+8)-8)`
-/

namespace A094653.P10434905174840523863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A000217 (n + 8) - 8).toNat

end

end A094653.P10434905174840523863

/-! ## A094653.P824282180067302585

`A340811(eq[8, A004736(n+1)])`
-/

namespace A094653.P824282180067302585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094653.P824282180067302585

/-! ## A094653.P13236696739551498039

`A340811(A167487(n+5)+A005843(n))`
-/

namespace A094653.P13236696739551498039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A167487 (n + 5) + A005843 n).toNat

end

end A094653.P13236696739551498039

/-!
# A094654: Number of unlabeled 10-gonal 2-trees with n 10-gons.

The programs for A094654, there is no canonical definition to state claims against.
-/

/-! ## A094654.P16449927906858904446

`A340811(eq[8, A025581(n)])`
-/

namespace A094654.P16449927906858904446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094654.P16449927906858904446

/-! ## A094654.P5631786910961338355

`A340811(A055999(n+6)-3)`
-/

namespace A094654.P5631786910961338355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A055999 (n + 6) - 3).toNat

end

end A094654.P5631786910961338355

/-! ## A094654.P13172607747437928773

`A340811(A000217(n+9)-9)`
-/

namespace A094654.P13172607747437928773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A000217 (n + 9) - 9).toNat

end

end A094654.P13172607747437928773

/-! ## A094654.P3246550994966262695

`A340811(A254667(n)+A000217(n+8))`
-/

namespace A094654.P3246550994966262695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A254667 n + A000217 (n + 8)).toNat

end

end A094654.P3246550994966262695

/-! ## A094654.P1782140194617967599

`A340811(A167614(n+6)+A005408(n+2))`
-/

namespace A094654.P1782140194617967599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A167614 (n + 6) + A005408 (n + 2)).toNat

end

end A094654.P1782140194617967599

/-!
# A094655: Number of unlabeled 11-gonal 2-trees with n 11-gons.

The programs for A094655, there is no canonical definition to state claims against.
-/

/-! ## A094655.P4120195524478963395

`A340811(A056000(n+6))`
-/

namespace A094655.P4120195524478963395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A056000 (n + 6)).toNat

end

end A094655.P4120195524478963395

/-! ## A094655.P5431423866448747911

`A340811(A000217(n+10)-10)`
-/

namespace A094655.P5431423866448747911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A000217 (n + 10) - 10).toNat

end

end A094655.P5431423866448747911

/-! ## A094655.P5018210622113921165

`A340811(eq[10, A004736(n+1)])`
-/

namespace A094655.P5018210622113921165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094655.P5018210622113921165

/-! ## A094655.P6068788319224307834

`A340811(A000096(n+8)+n+1)`
-/

namespace A094655.P6068788319224307834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A000096 (n + 8) + (n + 1 : ℤ)).toNat

end

end A094655.P6068788319224307834

/-! ## A094655.P2475769759945823406

`A340811(A005563(n+7)-A167614(n+4))`
-/

namespace A094655.P2475769759945823406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A005563 (n + 7) - A167614 (n + 4)).toNat

end

end A094655.P2475769759945823406

/-!
# A094656: Number of unlabeled 12-gonal 2-trees with n 12-gons.

The programs for A094656, there is no canonical definition to state claims against.
-/

/-! ## A094656.P15729037098675820450

`A340811(eq[10, A025581(n)])`
-/

namespace A094656.P15729037098675820450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094656.P15729037098675820450

/-! ## A094656.P14235321306454286553

`A340811(eq[11, A193739(n)])`
-/

namespace A094656.P14235321306454286553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094656.P14235321306454286553

/-! ## A094656.P17533907235189010242

`A340811(eq[11, A195663(n)])`
-/

namespace A094656.P17533907235189010242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094656.P17533907235189010242

/-! ## A094656.P367795527619670029

`A340811(A055998(n+9)-8)`
-/

namespace A094656.P367795527619670029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A055998 (n + 9) - 8).toNat

end

end A094656.P367795527619670029

/-! ## A094656.P13063824684177783576

`A340811(A000124(n+11)-12)`
-/

namespace A094656.P13063824684177783576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A000124 (n + 11) - 12).toNat

end

end A094656.P13063824684177783576

/-! ## A094656.P10040551030187712522

`A340811(eq[11, A004736(n+1)])`
-/

namespace A094656.P10040551030187712522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094656.P10040551030187712522

/-! ## A094656.P12884447932810856909

`A340811(A005408(n)+A000217(n+9)+9)`
-/

namespace A094656.P12884447932810856909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 (A005408 n + (A000217 (n + 9) + 9)).toNat

end

end A094656.P12884447932810856909

/-!
# A094657: Primes congruent to 4 mod 17.

The programs for A094657, there is no canonical definition to state claims against.
-/

/-! ## A094657.P15445501144293413456

`∪[A142478(n+1), A142499(n+1)]`
-/

namespace A094657.P15445501144293413456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094657.P15445501144293413456

/-! ## A094657.P9800967857363589748

`p?[17*n+4]`
-/

namespace A094657.P9800967857363589748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A094657.P9800967857363589748

/-! ## A094657.P9382101629486692550

`or(1, p?[17*n-30])`
-/

namespace A094657.P9382101629486692550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A094657.P9382101629486692550

/-! ## A094657.P11710026690285471448

`∩[A215165(n+1), A215281(n+1)]`
-/

namespace A094657.P11710026690285471448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094657.P11710026690285471448

/-! ## A094657.P13239932307677712392

`∩[A215165(n+1), A215360(n+1)]`
-/

namespace A094657.P13239932307677712392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094657.P13239932307677712392

/-! ## A094657.P15752091658971749239

`∩[A215165(n+1), A215277(n+1)]`
-/

namespace A094657.P15752091658971749239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094657.P15752091658971749239

/-! ## A094657.P2904953790623153963

`∩[A215165(n+1), A215316(n+1)]`
-/

namespace A094657.P2904953790623153963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094657.P2904953790623153963

/-! ## A094657.P6253046989802352596

`∩[A215165(n+1), A215356(n+1)]`
-/

namespace A094657.P6253046989802352596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094657.P6253046989802352596

/-! ## A094657.P779290926751840368

`∩[A215165(n+1), A215352(n+1)]`
-/

namespace A094657.P779290926751840368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094657.P779290926751840368

/-! ## A094657.P1431595619515429754

`A000265(p?[A017089(n)+A017089(n)+n])`
-/

namespace A094657.P1431595619515429754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n + (A017089 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A094657.P1431595619515429754

/-! ## A094657.P1896130406800420704

`filter[A155095(2*n+1), A010051(#)]`
-/

namespace A094657.P1896130406800420704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155095 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A094657.P1896130406800420704

/-! ## A094657.P12903200647414555959

`∩[A155095(n+1), A215165(n+1)]`
-/

namespace A094657.P12903200647414555959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094657.P12903200647414555959

/-! ## A094657.P8447780623633612576

`∩[A155095(n+1), A215277(n+1)]`
-/

namespace A094657.P8447780623633612576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094657.P8447780623633612576

/-! ## A094657.P9213413186276611075

`∩[A155095(n+1), A215281(n+1)]`
-/

namespace A094657.P9213413186276611075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094657.P9213413186276611075

/-! ## A094657.P8057117742273800060

`∩[A155095(n+1), A215304(n+1)]`
-/

namespace A094657.P8057117742273800060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094657.P8057117742273800060

/-! ## A094657.P18443662713355383157

`∩[A155095(n+1), A215312(n+1)]`
-/

namespace A094657.P18443662713355383157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094657.P18443662713355383157

/-! ## A094657.P4328126430785093902

`∩[A155095(n+1), A215316(n+1)]`
-/

namespace A094657.P4328126430785093902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094657.P4328126430785093902

/-! ## A094657.P17927286172297201483

`∩[A155095(n+1), A215324(n+1)]`
-/

namespace A094657.P17927286172297201483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094657.P17927286172297201483

/-! ## A094657.P16603701758593096946

`∩[A155095(n+1), A215352(n+1)]`
-/

namespace A094657.P16603701758593096946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094657.P16603701758593096946

/-!
# A094659: Number of closed walks of length n at a vertex of the cyclic graph on 7 nodes C_7.

The programs for A094659, the canonical program `A094659.P6368568436238809265` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094659 has offset 0).

The definition of A094659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094659.P6368568436238809265

`a(n-1)+4*a(n-2)-3*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094659

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-2*a(n-4)` -/
def P6368568436238809265.Spec : Prop :=
  ∀ n, P6368568436238809265.a n = A094659 n

theorem P6368568436238809265.correct : P6368568436238809265.Spec := by
  intro n
  simp only [A094659]

end A094659

/-! ## A094659.P8395268732526198471

`ogf((1-x-2x^2+x^3)/(1-x-4x^2+3x^3+2x^4))`
-/

namespace A094659.P8395268732526198471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2, 1] [1, -1, -4, 3, 2] n

end

end A094659.P8395268732526198471

namespace A094659

/-- `ogf((1-x-2x^2+x^3)/(1-x-4x^2+3x^3+2x^4))` -/
def P8395268732526198471.Spec : Prop :=
  ∀ n, P8395268732526198471.a n = A094659 n

end A094659

/-! ## A094659.P3098295657834568040

`A036453(n+1)*A377573(n)`
-/

namespace A094659.P3098295657834568040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A377573 n

end

end A094659.P3098295657834568040

namespace A094659

/-- `A036453(n+1)*A377573(n)` -/
def P3098295657834568040.Spec : Prop :=
  ∀ n, P3098295657834568040.a n = A094659 n

end A094659

/-! ## A094659.P8243989326442952541

`A104435(n+1)*A377573(n)`
-/

namespace A094659.P8243989326442952541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1) * A377573 n

end

end A094659.P8243989326442952541

namespace A094659

/-- `A104435(n+1)*A377573(n)` -/
def P8243989326442952541.Spec : Prop :=
  ∀ n, P8243989326442952541.a n = A094659 n

end A094659

/-! ## A094659.P13186056617553236187

`A040001(2*n)*A094052(abs(1-n))`
-/

namespace A094659.P13186056617553236187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A094052 |1 - (n : ℤ)|.toNat

end

end A094659.P13186056617553236187

namespace A094659

/-- `A040001(2*n)*A094052(abs(1-n))` -/
def P13186056617553236187.Spec : Prop :=
  ∀ n, P13186056617553236187.a n = A094659 n

end A094659

/-! ## A094659.P8116729499307809200

`(2-A028310(n)+n)*A094052(abs(1-n))`
-/

namespace A094659.P8116729499307809200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A028310 n + (n : ℤ)) * A094052 |1 - (n : ℤ)|.toNat

end

end A094659.P8116729499307809200

namespace A094659

/-- `(2-A028310(n)+n)*A094052(abs(1-n))` -/
def P8116729499307809200.Spec : Prop :=
  ∀ n, P8116729499307809200.a n = A094659 n

end A094659

/-! ## A094659.P4645037445998969764

`A020639(A310380(n))*A094052(abs(1-n))`
-/

namespace A094659.P4645037445998969764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A310380 n).toNat * A094052 |1 - (n : ℤ)|.toNat

end

end A094659.P4645037445998969764

namespace A094659

/-- `A020639(A310380(n))*A094052(abs(1-n))` -/
def P4645037445998969764.Spec : Prop :=
  ∀ n, P4645037445998969764.a n = A094659 n

end A094659

/-! ## A094659.P17225580168815112880

`A020639(A315596(n))*A094052(abs(1-n))`
-/

namespace A094659.P17225580168815112880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A315596 n).toNat * A094052 |1 - (n : ℤ)|.toNat

end

end A094659.P17225580168815112880

namespace A094659

/-- `A020639(A315596(n))*A094052(abs(1-n))` -/
def P17225580168815112880.Spec : Prop :=
  ∀ n, P17225580168815112880.a n = A094659 n

end A094659

/-! ## A094659.P17874124391471482959

`A020639(A001223(n+1))*A094052(abs(1-n))`
-/

namespace A094659.P17874124391471482959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001223 (n + 1)).toNat * A094052 |1 - (n : ℤ)|.toNat

end

end A094659.P17874124391471482959

namespace A094659

/-- `A020639(A001223(n+1))*A094052(abs(1-n))` -/
def P17874124391471482959.Spec : Prop :=
  ∀ n, P17874124391471482959.a n = A094659 n

end A094659

/-! ## A094659.P8964598416219481358

`A020639(A147582(n+1))*A094052(abs(1-n))`
-/

namespace A094659.P8964598416219481358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A147582 (n + 1)).toNat * A094052 |1 - (n : ℤ)|.toNat

end

end A094659.P8964598416219481358

namespace A094659

/-- `A020639(A147582(n+1))*A094052(abs(1-n))` -/
def P8964598416219481358.Spec : Prop :=
  ∀ n, P8964598416219481358.a n = A094659 n

end A094659

/-! ## A094659.P3056514013031635763

`A020639(A287178(n+1))*A094052(abs(1-n))`
-/

namespace A094659.P3056514013031635763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A287178 (n + 1)).toNat * A094052 |1 - (n : ℤ)|.toNat

end

end A094659.P3056514013031635763

namespace A094659

/-- `A020639(A287178(n+1))*A094052(abs(1-n))` -/
def P3056514013031635763.Spec : Prop :=
  ∀ n, P3056514013031635763.a n = A094659 n

end A094659

/-!
# A094660: Number of permissible patterns of primes in a fixed interval of n consecutive integers.

The programs for A094660, there is no canonical definition to state claims against.
-/

/-! ## A094660.P5304592297947657848

`A292225(n)+a(n-1)` with `a(0)=0`
-/

namespace A094660.P5304592297947657848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A292225 n + a (n - 1)

end

end A094660.P5304592297947657848

/-! ## A094660.P2185683231451504466

`∑[A292225(abs(1-n)+1)]-1`
-/

namespace A094660.P2185683231451504466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292225 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A094660.P2185683231451504466

/-! ## A094660.P8775515709125934930

`A023192(A000007(n)+n)-ceil(acot(n))`
-/

namespace A094660.P8775515709125934930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023192 (A000007 n + (n : ℤ)).toNat - ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A094660.P8775515709125934930

/-! ## A094660.P16611765683264908288

`A023192(n+1)-(A292225(n+1)+1)`
-/

namespace A094660.P16611765683264908288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023192 (n + 1) - (A292225 (n + 1) + 1)

end

end A094660.P16611765683264908288

/-! ## A094660.P9802030510690110912

`∑[A292225(n*A093178(2*a(n-1)))]` with `a(0)=0`
-/

namespace A094660.P9802030510690110912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A292225 ((n : ℤ) * A093178 (2 * f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094660.P9802030510690110912

/-!
# A094662: Prime numerators of the sums of the ratios of consecutive primes.

The programs for A094662, there is no canonical definition to state claims against.
-/

/-! ## A094662.P14119294434088340784

`A094661(A119330(n)+1)`
-/

namespace A094662.P14119294434088340784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094661 (A119330 n + 1).toNat

end

end A094662.P14119294434088340784

/-!
# A094664: Row sums of triangle A094344.

The programs for A094664, there is no canonical definition to state claims against.
-/

/-! ## A094664.P16707521251879265353

`A178108(C(Δ[n²], 2))`
-/

namespace A094664.P16707521251879265353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178108 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2)

end

end A094664.P16707521251879265353

/-! ## A094664.P10402800974962473136

`A178108(n*Δ[n²])`
-/

namespace A094664.P10402800974962473136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178108 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A094664.P10402800974962473136

/-!
# A094665: Another version of triangular array in A083061: triangle T(n,k), 0<=k<=n, read by rows; given by [0, 1, 3, 6, 10, 15, 21, 28, ...] DELTA [1, 2, 3, 4, 5, 6, 7, 8, ...] where DELTA is the operator defined in A084938.

The programs for A094665, there is no canonical definition to state claims against.
-/

/-! ## A094665.P14276296664174566315

`A088874(n)/A130321(n)`
-/

namespace A094665.P14276296664174566315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088874 n : ℚ) / (A130321 n : ℚ)

end

end A094665.P14276296664174566315

/-! ## A094665.P15844652296600457097

`abs(A318146(n)/A130321(n))`
-/

namespace A094665.P15844652296600457097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A318146 n : ℚ) / (A130321 n : ℚ)|

end

end A094665.P15844652296600457097

/-! ## A094665.P16390051715642310149

`A088874(n)/A057728(n+1)`
-/

namespace A094665.P16390051715642310149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088874 n : ℚ) / (A057728 (n + 1) : ℚ)

end

end A094665.P16390051715642310149

/-! ## A094665.P4536075436108008978

`abs(A318146(n)/A057728(n+1))`
-/

namespace A094665.P4536075436108008978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A318146 n : ℚ) / (A057728 (n + 1) : ℚ)|

end

end A094665.P4536075436108008978

/-! ## A094665.P10776135828679749848

`A318146(n)/A122803(A025581(n))`
-/

namespace A094665.P10776135828679749848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318146 n : ℚ) / (A122803 (A025581 n).toNat : ℚ)

end

end A094665.P10776135828679749848

/-! ## A094665.P473773674230886216

`A097807(n)/A057728(n+1)*A318146(n)`
-/

namespace A094665.P473773674230886216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097807 n : ℚ) / (A057728 (n + 1) : ℚ) * (A318146 n : ℚ)

end

end A094665.P473773674230886216

/-! ## A094665.P11174254537640979765

`lcm(A033999(n), A318146(n))/A057728(n+1)`
-/

namespace A094665.P11174254537640979765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A033999 n) (A318146 n) : ℚ) / (A057728 (n + 1) : ℚ)

end

end A094665.P11174254537640979765

/-! ## A094665.P11625930911212735540

`A083061(n)/A085734(n)*A088874(n)`
-/

namespace A094665.P11625930911212735540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083061 n : ℚ) / (A085734 n : ℚ) * (A088874 n : ℚ)

end

end A094665.P11625930911212735540

/-!
# A094666: Composite NSW numbers.

The programs for A094666, there is no canonical definition to state claims against.
-/

/-! ## A094666.P10196673476468040498

`A002315(A244219(n)+4)`
-/

namespace A094666.P10196673476468040498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 (A244219 n + 4).toNat

end

end A094666.P10196673476468040498

/-! ## A094666.P7269554300396509886

`A078057(A155113(n+1)+5)`
-/

namespace A094666.P7269554300396509886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (A155113 (n + 1) + 5).toNat

end

end A094666.P7269554300396509886

/-! ## A094666.P14929135531480230770

`A100828(A155113(n+1)+5)`
-/

namespace A094666.P14929135531480230770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100828 (A155113 (n + 1) + 5).toNat

end

end A094666.P14929135531480230770

/-! ## A094666.P5490733964371313435

`A001333(A155113(n+1)+6)`
-/

namespace A094666.P5490733964371313435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A155113 (n + 1) + 6).toNat

end

end A094666.P5490733964371313435

/-! ## A094666.P15903224025285643780

`A002315(record[A003313(A067524(n+1))])`
-/

namespace A094666.P15903224025285643780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A067524 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094666.P15903224025285643780

/-!
# A094667: Number of (s(0), s(1), ..., s(2n+1)) such that 0 < s(i) < 10 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n+1, s(0) = 1, s(2n+1) = 4.

The programs for A094667, the canonical program `A094667.P16916504994103494706` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094667 has offset 1).

The definition of A094667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094667.P16916504994103494706

`8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=48`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094667

/-- `8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` -/
def P16916504994103494706.Spec : Prop :=
  ∀ n, P16916504994103494706.a n = A094667 (n + 1)

theorem P16916504994103494706.correct : P16916504994103494706.Spec := by
  intro n
  simp only [A094667, Nat.add_sub_cancel]

end A094667

/-! ## A094667.P3220168598210584326

`∑[A217778(n)]`
-/

namespace A094667.P3220168598210584326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094667.P3220168598210584326

namespace A094667

/-- `∑[A217778(n)]` -/
def P3220168598210584326.Spec : Prop :=
  ∀ n, P3220168598210584326.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P6013575000798267029

`A217782(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A094667.P6013575000798267029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A217782 n + 2 * a (n - 1)

end

end A094667.P6013575000798267029

namespace A094667

/-- `A217782(n)+2*a(n-1)` -/
def P6013575000798267029.Spec : Prop :=
  ∀ n, P6013575000798267029.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P8019183922262531796

`∑[A081567(n)-A094865(n)]`
-/

namespace A094667.P8019183922262531796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n - A094865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094667.P8019183922262531796

namespace A094667

/-- `∑[A081567(n)-A094865(n)]` -/
def P8019183922262531796.Spec : Prop :=
  ∀ n, P8019183922262531796.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P1447776647309496925

`A093131(n)+A033190(n+1)`
-/

namespace A094667.P1447776647309496925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n + A033190 (n + 1)

end

end A094667.P1447776647309496925

namespace A094667

/-- `A093131(n)+A033190(n+1)` -/
def P1447776647309496925.Spec : Prop :=
  ∀ n, P1447776647309496925.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P10702539658961900974

`∑[A112091(n)+∑[A033190(n)]]`
-/

namespace A094667.P10702539658961900974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112091 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094667.P10702539658961900974

namespace A094667

/-- `∑[A112091(n)+∑[A033190(n)]]` -/
def P10702539658961900974.Spec : Prop :=
  ∀ n, P10702539658961900974.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P7968623323217806019

`∑[∑[A052936(n)]-A094865(n)]`
-/

namespace A094667.P7968623323217806019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052936 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A094865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094667.P7968623323217806019

namespace A094667

/-- `∑[∑[A052936(n)]-A094865(n)]` -/
def P7968623323217806019.Spec : Prop :=
  ∀ n, P7968623323217806019.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P14724070365886347871

`∑[Δ[A033193(n)]-A033190(n)]`
-/

namespace A094667.P14724070365886347871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033193 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A033190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094667.P14724070365886347871

namespace A094667

/-- `∑[Δ[A033193(n)]-A033190(n)]` -/
def P14724070365886347871.Spec : Prop :=
  ∀ n, P14724070365886347871.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P3403349203439191603

`A033193(n+1)-A033191(n+1)`
-/

namespace A094667.P3403349203439191603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033193 (n + 1) - A033191 (n + 1)

end

end A094667.P3403349203439191603

namespace A094667

/-- `A033193(n+1)-A033191(n+1)` -/
def P3403349203439191603.Spec : Prop :=
  ∀ n, P3403349203439191603.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P14132416307657445721

`∑[A033193(n+1)-A033190(n+1)]`
-/

namespace A094667.P14132416307657445721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033193 (n + 1) - A033190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094667.P14132416307657445721

namespace A094667

/-- `∑[A033193(n+1)-A033190(n+1)]` -/
def P14132416307657445721.Spec : Prop :=
  ∀ n, P14132416307657445721.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P10241191480174119147

`∑[A178381(2*n+1)-A094865(n)]`
-/

namespace A094667.P10241191480174119147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (2 * n + 1) - A094865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094667.P10241191480174119147

namespace A094667

/-- `∑[A178381(2*n+1)-A094865(n)]` -/
def P10241191480174119147.Spec : Prop :=
  ∀ n, P10241191480174119147.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P2556438412307711228

`A217778(n)+A217778(n)-A217782(n)`
-/

namespace A094667.P2556438412307711228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217778 n + (A217778 n - A217782 n)

end

end A094667.P2556438412307711228

namespace A094667

/-- `A217778(n)+A217778(n)-A217782(n)` -/
def P2556438412307711228.Spec : Prop :=
  ∀ n, P2556438412307711228.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P17017252432981814936

`Δ[A093131(n)-A094865(n)]`
-/

namespace A094667.P17017252432981814936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n - A094865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094667.P17017252432981814936

namespace A094667

/-- `Δ[A093131(n)-A094865(n)]` -/
def P17017252432981814936.Spec : Prop :=
  ∀ n, P17017252432981814936.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P6190136980666775502

`Δ[A112091(n)-A094865(n)]`
-/

namespace A094667.P6190136980666775502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112091 n - A094865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094667.P6190136980666775502

namespace A094667

/-- `Δ[A112091(n)-A094865(n)]` -/
def P6190136980666775502.Spec : Prop :=
  ∀ n, P6190136980666775502.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P10275409250989362369

`Δ[A217778(n)]-A081567(n)`
-/

namespace A094667.P10275409250989362369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A081567 n

end

end A094667.P10275409250989362369

namespace A094667

/-- `Δ[A217778(n)]-A081567(n)` -/
def P10275409250989362369.Spec : Prop :=
  ∀ n, P10275409250989362369.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P16614418618612865603

`Δ[A217782(n)]-A094865(n)`
-/

namespace A094667.P16614418618612865603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A094865 n

end

end A094667.P16614418618612865603

namespace A094667

/-- `Δ[A217782(n)]-A094865(n)` -/
def P16614418618612865603.Spec : Prop :=
  ∀ n, P16614418618612865603.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P1703840193806339237

`A217779(n)-A094865(n+1)`
-/

namespace A094667.P1703840193806339237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217779 n - A094865 (n + 1)

end

end A094667.P1703840193806339237

namespace A094667

/-- `A217779(n)-A094865(n+1)` -/
def P1703840193806339237.Spec : Prop :=
  ∀ n, P1703840193806339237.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P990436938411490407

`2*A217778(n)-A217782(n)`
-/

namespace A094667.P990436938411490407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217778 n - A217782 n

end

end A094667.P990436938411490407

namespace A094667

/-- `2*A217778(n)-A217782(n)` -/
def P990436938411490407.Spec : Prop :=
  ∀ n, P990436938411490407.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P17446622035788747324

`A039717(n+1)-Δ[A094865(n)]`
-/

namespace A094667.P17446622035788747324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039717 (n + 1) - (f1 (n + 1) - f1 n)

end

end A094667.P17446622035788747324

namespace A094667

/-- `A039717(n+1)-Δ[A094865(n)]` -/
def P17446622035788747324.Spec : Prop :=
  ∀ n, P17446622035788747324.a n = A094667 (n + 1)

end A094667

/-! ## A094667.P14498074150288628565

`A033190(n+2)-A033191(n+2)`
-/

namespace A094667.P14498074150288628565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 (n + 2) - A033191 (n + 2)

end

end A094667.P14498074150288628565

namespace A094667

/-- `A033190(n+2)-A033191(n+2)` -/
def P14498074150288628565.Spec : Prop :=
  ∀ n, P14498074150288628565.a n = A094667 (n + 1)

end A094667

/-!
# A094669: Number of halving and tripling steps for 10^n to reach 1 in '3x+1' problem.

The programs for A094669, there is no canonical definition to state claims against.
-/

/-! ## A094669.P8111091426882931961

`A075484(n+1)+n`
-/

namespace A094669.P8111091426882931961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075484 (n + 1) + (n : ℤ)

end

end A094669.P8111091426882931961

/-!
# A094673: Number of final terms of the LMSFTW of length m that differ from the first m terms of the LMSFTW of length m+1, where m is the n-th term of A094672.

The programs for A094673, there is no canonical definition to state claims against.
-/

/-! ## A094673.P10614124562341112214

`A130579(val(A108950(n+1), A212122(n+1)))`
-/

namespace A094673.P10614124562341112214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130579 (SequenceMachineLib.valuation (A108950 (n + 1)).toNat (A212122 (n + 1)).toNat)

end

end A094673.P10614124562341112214

/-! ## A094673.P1766389934179755608

`A150143(val(A108950(n+1), A212122(n+1)))`
-/

namespace A094673.P1766389934179755608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150143 (SequenceMachineLib.valuation (A108950 (n + 1)).toNat (A212122 (n + 1)).toNat)

end

end A094673.P1766389934179755608

/-! ## A094673.P11096259589570756280

`A246584(val(A108950(n+1), A212122(n+1)))`
-/

namespace A094673.P11096259589570756280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246584 (SequenceMachineLib.valuation (A108950 (n + 1)).toNat (A212122 (n + 1)).toNat)

end

end A094673.P11096259589570756280

/-! ## A094673.P17168755636111257039

`A280370(val(A108950(n+1), A212122(n+1)))`
-/

namespace A094673.P17168755636111257039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280370 (SequenceMachineLib.valuation (A108950 (n + 1)).toNat (A212122 (n + 1)).toNat)

end

end A094673.P17168755636111257039

/-!
# A094677: Sum of digits is divisible by 10.

The programs for A094677, there is no canonical definition to state claims against.
-/

/-! ## A094677.P17949060267064866760

`A218292(n+1)/10`
-/

namespace A094677.P17949060267064866760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218292 (n + 1) : ℚ) / 10

end

end A094677.P17949060267064866760

/-! ## A094677.P1798415389512062278

`∩[A141641(n+1), A227793(n+1)]`
-/

namespace A094677.P1798415389512062278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094677.P1798415389512062278

/-! ## A094677.P9898917213595618315

`eq[A000007(n), A053837(n)]`
-/

namespace A094677.P9898917213595618315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094677.P9898917213595618315

/-! ## A094677.P17436331725709831799

`eq[A000038(n), A053837(n)]`
-/

namespace A094677.P17436331725709831799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094677.P17436331725709831799

/-! ## A094677.P18009089443778694828

`eq[A014036(n), A053837(n)]`
-/

namespace A094677.P18009089443778694828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094677.P18009089443778694828

/-! ## A094677.P7923991280371202309

`eq[A014045(n), A053837(n)]`
-/

namespace A094677.P7923991280371202309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094677.P7923991280371202309

/-! ## A094677.P14058154558929032036

`eq[A014063(n), A053837(n)]`
-/

namespace A094677.P14058154558929032036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014063 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094677.P14058154558929032036

/-! ## A094677.P17727321700939499937

`A098488(10*A226134(n+1))`
-/

namespace A094677.P17727321700939499937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 (10 * A226134 (n + 1)).toNat

end

end A094677.P17727321700939499937

/-! ## A094677.P10645840248822798462

`eq[1, A217657(A007953(n)+1)]`
-/

namespace A094677.P10645840248822798462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094677.P10645840248822798462

/-! ## A094677.P12651031000302497548

`filter[A227793(n+2), A130630(#)]`
-/

namespace A094677.P12651031000302497548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130630 (f1 j).toNat = 1) n)

end

end A094677.P12651031000302497548

/-!
# A094678: a(n) = A003474(n)/n.

The programs for A094678, there is no canonical definition to state claims against.
-/

/-! ## A094678.P12414891952869975711

`A003474(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094678.P12414891952869975711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003474 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A094678.P12414891952869975711

/-! ## A094678.P6173996436751675199

`A192513(n+1)/2^A028310(n)`
-/

namespace A094678.P6173996436751675199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192513 (n + 1) : ℚ) / (2 : ℚ) ^ (A028310 n : ℤ)

end

end A094678.P6173996436751675199

/-! ## A094678.P7920649792486945723

`A192513(n+1)/A000079(A028310(n))`
-/

namespace A094678.P7920649792486945723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192513 (n + 1) : ℚ) / (A000079 (A028310 n).toNat : ℚ)

end

end A094678.P7920649792486945723

/-! ## A094678.P13650049217018649759

`A192513(n+1)/A060546(A004277(n))`
-/

namespace A094678.P13650049217018649759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192513 (n + 1) : ℚ) / (A060546 (A004277 n).toNat : ℚ)

end

end A094678.P13650049217018649759

/-! ## A094678.P321895902222221994

`A192513(n+1)/A137688(A000124(n))`
-/

namespace A094678.P321895902222221994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192513 (n + 1) : ℚ) / (A137688 (A000124 n).toNat : ℚ)

end

end A094678.P321895902222221994

/-!
# A094679: n sets a new record for number of iterations to reach 1 in the juggler sequence problem.

The programs for A094679, there is no canonical definition to state claims against.
-/

/-! ## A094679.P2429340748348221286

`A094670(A094698(n+1))`
-/

namespace A094679.P2429340748348221286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094670 (A094698 (n + 1)).toNat

end

end A094679.P2429340748348221286

/-! ## A094679.P16841361621901057089

`A094670(record[A007320(n+1)])`
-/

namespace A094679.P16841361621901057089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094670 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094679.P16841361621901057089

/-!
# A094680: 

The programs for A094680, there is no canonical definition to state claims against.
-/

/-! ## A094680.P16078985401548656645

`((2*a(n-1))²-3)*a(n-1)` with `a(0)=2`
-/

namespace A094680.P16078985401548656645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ((2 * a (n - 1)) ^ 2 - 3) * a (n - 1)

end

end A094680.P16078985401548656645

/-!
# A094682: Discriminants of integer positive ternary quadratic forms that are spinor regular but not regular.

The programs for A094682, there is no canonical definition to state claims against.
-/

/-! ## A094682.P2549454805020616143

`4*A111307(A111259(3*n+2))`
-/

namespace A094682.P2549454805020616143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A111307 (A111259 (3 * n + 2)).toNat

end

end A094682.P2549454805020616143

/-!
# A094683: Juggler sequence: if n mod 2 = 0 then floor(sqrt(n)) else floor(n^(3/2)).

The programs for A094683, the canonical program `A094683.P13368703910050772922` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094683 has offset 0).

The definition of A094683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1311 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094683.P13368703910050772922

`floor(sqrt(n)^A010873(A053742(n)))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A094683

/-- `floor(sqrt(n)^A010873(A053742(n)))` -/
def P13368703910050772922.Spec : Prop :=
  ∀ n, P13368703910050772922.a n = A094683 n

theorem P13368703910050772922.correct : P13368703910050772922.Spec := by
  intro n
  simp only [A094683]

end A094683

/-! ## A094683.P9039948189451285186

`floor(sqrt(n^gcd(3, A288807(n))))`
-/

namespace A094683.P9039948189451285186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n ^ Int.gcd 3 (A288807 n))

end

end A094683.P9039948189451285186

namespace A094683

/-- `floor(sqrt(n^gcd(3, A288807(n))))` -/
def P9039948189451285186.Spec : Prop :=
  ∀ n, (P9039948189451285186.a n : ℤ) = A094683 n

end A094683

/-! ## A094683.P16374095398132859728

`floor(sqrt(n^(A000225(n+1)%6)))`
-/

namespace A094683.P16374095398132859728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n : ℚ) ^ (Int.tmod (A000225 (n + 1)) 6 : ℤ) : ℝ)⌋

end

end A094683.P16374095398132859728

namespace A094683

/-- `floor(sqrt(n^(A000225(n+1)%6)))` -/
def P16374095398132859728.Spec : Prop :=
  ∀ n, P16374095398132859728.a n = A094683 n

end A094683

/-! ## A094683.P10808289168743376850

`floor(sqrt(n*A093178(n²)))`
-/

namespace A094683.P10808289168743376850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((n : ℤ) * A093178 (n ^ 2))

end

end A094683.P10808289168743376850

namespace A094683

/-- `floor(sqrt(n*A093178(n²)))` -/
def P10808289168743376850.Spec : Prop :=
  ∀ n, P10808289168743376850.a n = A094683 n

end A094683

/-! ## A094683.P13738026085429534957

`floor(sqrt(A094685(n²)))`
-/

namespace A094683.P13738026085429534957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A094685 (n ^ 2))

end

end A094683.P13738026085429534957

namespace A094683

/-- `floor(sqrt(A094685(n²)))` -/
def P13738026085429534957.Spec : Prop :=
  ∀ n, P13738026085429534957.a n = A094683 n

end A094683

/-! ## A094683.P17678403403031505142

`floor(n^(A038712(n²+1)/2))`
-/

namespace A094683.P17678403403031505142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((A038712 (n ^ 2 + 1) : ℚ) / 2 : ℝ)⌋

end

end A094683.P17678403403031505142

namespace A094683

/-- `floor(n^(A038712(n²+1)/2))` -/
def P17678403403031505142.Spec : Prop :=
  ∀ n, P17678403403031505142.a n = A094683 n

end A094683

/-! ## A094683.P1572100069930892794

`floor(n^(A241235(n²+3)/2))`
-/

namespace A094683.P1572100069930892794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((A241235 (n ^ 2 + 3) : ℚ) / 2 : ℝ)⌋

end

end A094683.P1572100069930892794

namespace A094683

/-- `floor(n^(A241235(n²+3)/2))` -/
def P1572100069930892794.Spec : Prop :=
  ∀ n, P1572100069930892794.a n = A094683 n

end A094683

/-! ## A094683.P5948852732915250589

`floor(sqrt(n)^A090395(A001511(n²+1)+1))`
-/

namespace A094683.P5948852732915250589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) ^ (A090395 (A001511 (n ^ 2 + 1) + 1).toNat : ℤ)⌋

end

end A094683.P5948852732915250589

namespace A094683

/-- `floor(sqrt(n)^A090395(A001511(n²+1)+1))` -/
def P5948852732915250589.Spec : Prop :=
  ∀ n, P5948852732915250589.a n = A094683 n

end A094683

/-!
# A094684: Records in A094683.

The programs for A094684, the canonical program `A094684.P2734748364353604871` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094684 has offset 0).

The definition of A094684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094684.P2800534447882114360

`floor(sqrt(comp[2*(n+1)]^3))`
-/

namespace A094684.P2800534447882114360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 3)

end

end A094684.P2800534447882114360

namespace A094684

/-- `floor(sqrt(comp[2*(n+1)]^3))` -/
def P2800534447882114360.Spec : Prop :=
  ∀ n, (P2800534447882114360.a n : ℤ) = A094684 n

end A094684

/-! ## A094684.P16570812161008378463

`record[floor(lcm(2, n)/2*sqrt(n))]`
-/

namespace A094684.P16570812161008378463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm 2 n : ℚ) / 2 : ℝ) * Real.sqrt (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094684.P16570812161008378463

namespace A094684

/-- `record[floor(lcm(2, n)/2*sqrt(n))]` -/
def P16570812161008378463.Spec : Prop :=
  ∀ n, P16570812161008378463.a n = A094684 n

end A094684

/-! ## A094684.P2734748364353604871

`record[n%2*floor(sqrt(n^3))]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094684

/-- `record[n%2*floor(sqrt(n^3))]` -/
def P2734748364353604871.Spec : Prop :=
  ∀ n, (P2734748364353604871.a n : ℤ) = A094684 n

theorem P2734748364353604871.correct : P2734748364353604871.Spec := by
  intro n
  simp only [A094684]

end A094684

/-! ## A094684.P9749450734166287048

`record[floor(sqrt(n^3)/gcd(2, n))]`
-/

namespace A094684.P9749450734166287048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n ^ 3 : ℝ) / (Nat.gcd 2 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094684.P9749450734166287048

namespace A094684

/-- `record[floor(sqrt(n^3)/gcd(2, n))]` -/
def P9749450734166287048.Spec : Prop :=
  ∀ n, P9749450734166287048.a n = A094684 n

end A094684

/-! ## A094684.P17138084331175667551

`record[and(1, n)*floor(sqrt(n^3))]`
-/

namespace A094684.P17138084331175667551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n * Nat.sqrt (n ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094684.P17138084331175667551

namespace A094684

/-- `record[and(1, n)*floor(sqrt(n^3))]` -/
def P17138084331175667551.Spec : Prop :=
  ∀ n, (P17138084331175667551.a n : ℤ) = A094684 n

end A094684

/-! ## A094684.P17462814605858561165

`record[lcm(and(1, n), floor(n^(3/2)))]`
-/

namespace A094684.P17462814605858561165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.land 1 n : ℤ) ⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094684.P17462814605858561165

namespace A094684

/-- `record[lcm(and(1, n), floor(n^(3/2)))]` -/
def P17462814605858561165.Spec : Prop :=
  ∀ n, (P17462814605858561165.a n : ℤ) = A094684 n

end A094684

/-! ## A094684.P2243032235181540428

`record[and((-1)^n, floor(n^(3/2)))]`
-/

namespace A094684.P2243032235181540428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) ⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094684.P2243032235181540428

namespace A094684

/-- `record[and((-1)^n, floor(n^(3/2)))]` -/
def P2243032235181540428.Spec : Prop :=
  ∀ n, P2243032235181540428.a n = A094684 n

end A094684

/-! ## A094684.P2403498666183066803

`A000093(A004273(n))`
-/

namespace A094684.P2403498666183066803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A004273 n).toNat

end

end A094684.P2403498666183066803

namespace A094684

/-- `A000093(A004273(n))` -/
def P2403498666183066803.Spec : Prop :=
  ∀ n, P2403498666183066803.a n = A094684 n

end A094684

/-! ## A094684.P8071680991777861825

`record[floor(sqrt(A212598(2*n+1)^3))]`
-/

namespace A094684.P8071680991777861825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A212598 (2 * n + 1) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094684.P8071680991777861825

namespace A094684

/-- `record[floor(sqrt(A212598(2*n+1)^3))]` -/
def P8071680991777861825.Spec : Prop :=
  ∀ n, P8071680991777861825.a n = A094684 n

end A094684

/-! ## A094684.P18419232401602031021

`record[A094683(A094683(2*n))]`
-/

namespace A094684.P18419232401602031021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094683 (A094683 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094684.P18419232401602031021

namespace A094684

/-- `record[A094683(A094683(2*n))]` -/
def P18419232401602031021.Spec : Prop :=
  ∀ n, P18419232401602031021.a n = A094684 n

end A094684

/-!
# A094685: Modified juggler sequence: if n mod 2 = 0 then round(sqrt(n)) else round(n^(3/2)).

The programs for A094685, the canonical program `A094685.P3121528313615593135` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094685 has offset 0).

The definition of A094685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094685.P3121528313615593135

`round(sqrt(n)*gcd(n, or(1, n)))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094685

/-- `round(sqrt(n)*gcd(n, or(1, n)))` -/
def P3121528313615593135.Spec : Prop :=
  ∀ n, P3121528313615593135.a n = A094685 n

theorem P3121528313615593135.correct : P3121528313615593135.Spec := by
  intro n
  simp only [A094685]

end A094685

/-! ## A094685.P9820313247822269546

`round(sqrt(n^(2*n%2+1)))`
-/

namespace A094685.P9820313247822269546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ (2 * (n % 2) + 1) : ℝ))

end

end A094685.P9820313247822269546

namespace A094685

/-- `round(sqrt(n^(2*n%2+1)))` -/
def P9820313247822269546.Spec : Prop :=
  ∀ n, P9820313247822269546.a n = A094685 n

end A094685

/-! ## A094685.P10534088215731254698

`round(sqrt(n^or(1, gcd(2, n+1))))`
-/

namespace A094685.P10534088215731254698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ Nat.lor 1 (Nat.gcd 2 (n + 1)) : ℝ))

end

end A094685.P10534088215731254698

namespace A094685

/-- `round(sqrt(n^or(1, gcd(2, n+1))))` -/
def P10534088215731254698.Spec : Prop :=
  ∀ n, P10534088215731254698.a n = A094685 n

end A094685

/-! ## A094685.P3631522008661932792

`round(n^((2*and(1, n)+1)/2))`
-/

namespace A094685.P3631522008661932792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ ((2 * Nat.land 1 n + 1 : ℚ) / 2 : ℝ))

end

end A094685.P3631522008661932792

namespace A094685

/-- `round(n^((2*and(1, n)+1)/2))` -/
def P3631522008661932792.Spec : Prop :=
  ∀ n, P3631522008661932792.a n = A094685 n

end A094685

/-! ## A094685.P7570675875348087677

`round(sqrt(n)*A093178(n))`
-/

namespace A094685.P7570675875348087677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) * (A093178 n : ℝ))

end

end A094685.P7570675875348087677

namespace A094685

/-- `round(sqrt(n)*A093178(n))` -/
def P7570675875348087677.Spec : Prop :=
  ∀ n, P7570675875348087677.a n = A094685 n

end A094685

/-! ## A094685.P5974534060980947196

`round(n^Δ[A014601(n+1)/2])`
-/

namespace A094685.P5974534060980947196
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014601 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ (f1 (n + 1) - f1 n : ℝ))

end

end A094685.P5974534060980947196

namespace A094685

/-- `round(n^Δ[A014601(n+1)/2])` -/
def P5974534060980947196.Spec : Prop :=
  ∀ n, P5974534060980947196.a n = A094685 n

end A094685

/-! ## A094685.P487804192384261442

`round(sqrt(A094683(n²)))`
-/

namespace A094685.P487804192384261442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A094683 (n ^ 2) : ℝ))

end

end A094685.P487804192384261442

namespace A094685

/-- `round(sqrt(A094683(n²)))` -/
def P487804192384261442.Spec : Prop :=
  ∀ n, P487804192384261442.a n = A094685 n

end A094685

/-! ## A094685.P6539076509905053908

`round(n^(A038712(n²+1)/2))`
-/

namespace A094685.P6539076509905053908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ ((A038712 (n ^ 2 + 1) : ℚ) / 2 : ℝ))

end

end A094685.P6539076509905053908

namespace A094685

/-- `round(n^(A038712(n²+1)/2))` -/
def P6539076509905053908.Spec : Prop :=
  ∀ n, P6539076509905053908.a n = A094685 n

end A094685

/-!
# A094686: A Fibonacci convolution.

The programs for A094686, the canonical program `A094686.P17669754225829605447` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094686 has offset 0).

The definition of A094686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094686.P17669754225829605447

`a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094686

/-- `a(n-2)+2*a(n-3)+a(n-4)` -/
def P17669754225829605447.Spec : Prop :=
  ∀ n, (P17669754225829605447.a n : ℤ) = A094686 n

theorem P17669754225829605447.correct : P17669754225829605447.Spec := by
  intro n
  simp only [A094686]

end A094686

/-! ## A094686.P1202171368236066273

`(A000045(n+1)+(n+2)%3-1)/2`
-/

namespace A094686.P1202171368236066273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) + (((n + 2) % 3 : ℕ) : ℤ) - 1 : ℚ) / 2

end

end A094686.P1202171368236066273

namespace A094686

/-- `(A000045(n+1)+(n+2)%3-1)/2` -/
def P1202171368236066273.Spec : Prop :=
  ∀ n, P1202171368236066273.a n = (A094686 n : ℚ)

end A094686

/-! ## A094686.P17991127476750789182

`1/2*(A000045(n+1)+A049347(n))`
-/

namespace A094686.P17991127476750789182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000045 (n + 1) + A049347 n : ℚ)

end

end A094686.P17991127476750789182

namespace A094686

/-- `1/2*(A000045(n+1)+A049347(n))` -/
def P17991127476750789182.Spec : Prop :=
  ∀ n, P17991127476750789182.a n = (A094686 n : ℚ)

end A094686

/-! ## A094686.P15607016432683168624

`ogf(-1/(-1+x^2+2x^3+x^4))`
-/

namespace A094686.P15607016432683168624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -1, -2, -1] n

end

end A094686.P15607016432683168624

namespace A094686

/-- `ogf(-1/(-1+x^2+2x^3+x^4))` -/
def P15607016432683168624.Spec : Prop :=
  ∀ n, P15607016432683168624.a n = A094686 n

end A094686

/-! ## A094686.P8763320598765468400

`A212804(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A094686.P8763320598765468400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A212804 n + a (n - 3)

end

end A094686.P8763320598765468400

namespace A094686

/-- `A212804(n)+a(n-3)` -/
def P8763320598765468400.Spec : Prop :=
  ∀ n, P8763320598765468400.a n = A094686 n

end A094686

/-! ## A094686.P312999604620290140

`A000045(n-1)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A094686.P312999604620290140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A000045 (n - 1) + a (n - 3)

end

end A094686.P312999604620290140

namespace A094686

/-- `A000045(n-1)+a(n-3)` -/
def P312999604620290140.Spec : Prop :=
  ∀ n, P312999604620290140.a n = A094686 n

end A094686

/-! ## A094686.P12026932188555684034

`A174618(A042964(n+1))`
-/

namespace A094686.P12026932188555684034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A042964 (n + 1)).toNat

end

end A094686.P12026932188555684034

namespace A094686

/-- `A174618(A042964(n+1))` -/
def P12026932188555684034.Spec : Prop :=
  ∀ n, P12026932188555684034.a n = A094686 n

end A094686

/-! ## A094686.P10240945099427020501

`A174618(A053438(n+1))`
-/

namespace A094686.P10240945099427020501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A053438 (n + 1)).toNat

end

end A094686.P10240945099427020501

namespace A094686

/-- `A174618(A053438(n+1))` -/
def P10240945099427020501.Spec : Prop :=
  ∀ n, P10240945099427020501.a n = A094686 n

end A094686

/-! ## A094686.P13557714504722075160

`A173673(A029739(n+2))`
-/

namespace A094686.P13557714504722075160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A029739 (n + 2)).toNat

end

end A094686.P13557714504722075160

namespace A094686

/-- `A173673(A029739(n+2))` -/
def P13557714504722075160.Spec : Prop :=
  ∀ n, P13557714504722075160.a n = A094686 n

end A094686

/-! ## A094686.P18100917782439975898

`A173673(A047231(n+2))`
-/

namespace A094686.P18100917782439975898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A047231 (n + 2)).toNat

end

end A094686.P18100917782439975898

namespace A094686

/-- `A173673(A047231(n+2))` -/
def P18100917782439975898.Spec : Prop :=
  ∀ n, P18100917782439975898.a n = A094686 n

end A094686

/-! ## A094686.P12282263141026715610

`A174618(A042963(n+1)+1)`
-/

namespace A094686.P12282263141026715610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A042963 (n + 1) + 1).toNat

end

end A094686.P12282263141026715610

namespace A094686

/-- `A174618(A042963(n+1)+1)` -/
def P12282263141026715610.Spec : Prop :=
  ∀ n, P12282263141026715610.a n = A094686 n

end A094686

/-! ## A094686.P5237813037204459583

`A174618(A014601(n+1)-1)`
-/

namespace A094686.P5237813037204459583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A014601 (n + 1) - 1).toNat

end

end A094686.P5237813037204459583

namespace A094686

/-- `A174618(A014601(n+1)-1)` -/
def P5237813037204459583.Spec : Prop :=
  ∀ n, P5237813037204459583.a n = A094686 n

end A094686

/-! ## A094686.P9649715658690422663

`A174618(A338062(n+2)-2)`
-/

namespace A094686.P9649715658690422663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A338062 (n + 2) - 2).toNat

end

end A094686.P9649715658690422663

namespace A094686

/-- `A174618(A338062(n+2)-2)` -/
def P9649715658690422663.Spec : Prop :=
  ∀ n, P9649715658690422663.a n = A094686 n

end A094686

/-! ## A094686.P13698199309086575963

`A079978(n)+A004695(n+1)`
-/

namespace A094686.P13698199309086575963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n + A004695 (n + 1)

end

end A094686.P13698199309086575963

namespace A094686

/-- `A079978(n)+A004695(n+1)` -/
def P13698199309086575963.Spec : Prop :=
  ∀ n, P13698199309086575963.a n = A094686 n

end A094686

/-! ## A094686.P10394977466150233493

`A204418(n)+A201864(n+1)`
-/

namespace A094686.P10394977466150233493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 n + A201864 (n + 1)

end

end A094686.P10394977466150233493

namespace A094686

/-- `A204418(n)+A201864(n+1)` -/
def P10394977466150233493.Spec : Prop :=
  ∀ n, P10394977466150233493.a n = A094686 n

end A094686

/-! ## A094686.P9302981456121057405

`A147997(n+1)-A011655(n)`
-/

namespace A094686.P9302981456121057405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (n + 1) - A011655 n

end

end A094686.P9302981456121057405

namespace A094686

/-- `A147997(n+1)-A011655(n)` -/
def P9302981456121057405.Spec : Prop :=
  ∀ n, P9302981456121057405.a n = A094686 n

end A094686

/-! ## A094686.P1191642334410002466

`A174618(A047235(n+1)-n)`
-/

namespace A094686.P1191642334410002466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A047235 (n + 1) - (n : ℤ)).toNat

end

end A094686.P1191642334410002466

namespace A094686

/-- `A174618(A047235(n+1)-n)` -/
def P1191642334410002466.Spec : Prop :=
  ∀ n, P1191642334410002466.a n = A094686 n

end A094686

/-! ## A094686.P1019560499886980622

`A173434(n+1)+A141212(n+1)`
-/

namespace A094686.P1019560499886980622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173434 (n + 1) + A141212 (n + 1)

end

end A094686.P1019560499886980622

namespace A094686

/-- `A173434(n+1)+A141212(n+1)` -/
def P1019560499886980622.Spec : Prop :=
  ∀ n, P1019560499886980622.a n = A094686 n

end A094686

/-! ## A094686.P14980803565529163434

`A004695(n+1)+1-A011655(n)`
-/

namespace A094686.P14980803565529163434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1) + (1 - A011655 n)

end

end A094686.P14980803565529163434

namespace A094686

/-- `A004695(n+1)+1-A011655(n)` -/
def P14980803565529163434.Spec : Prop :=
  ∀ n, P14980803565529163434.a n = A094686 n

end A094686

/-!
# A094687: Convolution of Fibonacci and Jacobsthal numbers.

The programs for A094687, the canonical program `A094687.P12219025617833977127` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094687 has offset 0).

The definition of A094687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094687.P12219025617833977127

`2*a(n-1)+2*a(n-2)-3*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094687

/-- `2*a(n-1)+2*a(n-2)-3*a(n-3)-2*a(n-4)` -/
def P12219025617833977127.Spec : Prop :=
  ∀ n, P12219025617833977127.a n = A094687 n

theorem P12219025617833977127.correct : P12219025617833977127.Spec := by
  intro n
  simp only [A094687]

end A094687

/-! ## A094687.P11133474032804305947

`ogf(x^2/(1-2x-2x^2+3x^3+2x^4))`
-/

namespace A094687.P11133474032804305947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -2, -2, 3, 2] n

end

end A094687.P11133474032804305947

namespace A094687

/-- `ogf(x^2/(1-2x-2x^2+3x^3+2x^4))` -/
def P11133474032804305947.Spec : Prop :=
  ∀ n, P11133474032804305947.a n = A094687 n

end A094687

/-! ## A094687.P8141870011382940576

`A008466(n)-a(n-1)` with `a(0)=0`
-/

namespace A094687.P8141870011382940576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008466 n - a (n - 1)

end

end A094687.P8141870011382940576

namespace A094687

/-- `A008466(n)-a(n-1)` -/
def P8141870011382940576.Spec : Prop :=
  ∀ n, P8141870011382940576.a n = A094687 n

end A094687

/-! ## A094687.P11235568698660683865

`2^n-A000045(n+2)-a(n-1)` with `a(0)=0`
-/

namespace A094687.P11235568698660683865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 ^ n : ℤ) - A000045 (n + 2) - a (n - 1)

end

end A094687.P11235568698660683865

namespace A094687

/-- `2^n-A000045(n+2)-a(n-1)` -/
def P11235568698660683865.Spec : Prop :=
  ∀ n, P11235568698660683865.a n = A094687 n

end A094687

/-! ## A094687.P5358958246566193185

`A027934(n)-A001045(n)`
-/

namespace A094687.P5358958246566193185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 n - A001045 n

end

end A094687.P5358958246566193185

namespace A094687

/-- `A027934(n)-A001045(n)` -/
def P5358958246566193185.Spec : Prop :=
  ∀ n, P5358958246566193185.a n = A094687 n

end A094687

/-! ## A094687.P2671137439652677534

`A000975(n)-A074331(n)`
-/

namespace A094687.P2671137439652677534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n - A074331 n

end

end A094687.P2671137439652677534

namespace A094687

/-- `A000975(n)-A074331(n)` -/
def P2671137439652677534.Spec : Prop :=
  ∀ n, P2671137439652677534.a n = A094687 n

end A094687

/-! ## A094687.P793040523945846240

`A081660(n)-A081659(n)`
-/

namespace A094687.P793040523945846240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081660 n - A081659 n

end

end A094687.P793040523945846240

namespace A094687

/-- `A081660(n)-A081659(n)` -/
def P793040523945846240.Spec : Prop :=
  ∀ n, P793040523945846240.a n = A094687 n

end A094687

/-! ## A094687.P6434677136375571930

`∑[A078008(n)-A212804(n)]`
-/

namespace A094687.P6434677136375571930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n - A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094687.P6434677136375571930

namespace A094687

/-- `∑[A078008(n)-A212804(n)]` -/
def P6434677136375571930.Spec : Prop :=
  ∀ n, P6434677136375571930.a n = A094687 n

end A094687

/-! ## A094687.P6438112344425440487

`∑[Δ[A001045(n)]-A212804(n)]`
-/

namespace A094687.P6438112344425440487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094687.P6438112344425440487

namespace A094687

/-- `∑[Δ[A001045(n)]-A212804(n)]` -/
def P6438112344425440487.Spec : Prop :=
  ∀ n, P6438112344425440487.a n = A094687 n

end A094687

/-! ## A094687.P9571764576379318339

`abs(A077925(n))-A212804(n+2)`
-/

namespace A094687.P9571764576379318339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077925 n| - A212804 (n + 2)

end

end A094687.P9571764576379318339

namespace A094687

/-- `abs(A077925(n))-A212804(n+2)` -/
def P9571764576379318339.Spec : Prop :=
  ∀ n, P9571764576379318339.a n = A094687 n

end A094687

/-! ## A094687.P2952217182315436191

`∑[A078008(n)]-A000045(n+1)`
-/

namespace A094687.P2952217182315436191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 (n + 1)

end

end A094687.P2952217182315436191

namespace A094687

/-- `∑[A078008(n)]-A000045(n+1)` -/
def P2952217182315436191.Spec : Prop :=
  ∀ n, P2952217182315436191.a n = A094687 n

end A094687

/-! ## A094687.P8462911503391240570

`A001045(n+1)-∑[A212804(n)]`
-/

namespace A094687.P8462911503391240570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094687.P8462911503391240570

namespace A094687

/-- `A001045(n+1)-∑[A212804(n)]` -/
def P8462911503391240570.Spec : Prop :=
  ∀ n, P8462911503391240570.a n = A094687 n

end A094687

/-! ## A094687.P3283799064067857545

`A078008(n+1)-Δ[A052952(n)]`
-/

namespace A094687.P3283799064067857545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n + 1) - (f1 (n + 1) - f1 n)

end

end A094687.P3283799064067857545

namespace A094687

/-- `A078008(n+1)-Δ[A052952(n)]` -/
def P3283799064067857545.Spec : Prop :=
  ∀ n, P3283799064067857545.a n = A094687 n

end A094687

/-! ## A094687.P3388012421713509980

`A001045(n+1)-A000045(n+1)`
-/

namespace A094687.P3388012421713509980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A000045 (n + 1)

end

end A094687.P3388012421713509980

namespace A094687

/-- `A001045(n+1)-A000045(n+1)` -/
def P3388012421713509980.Spec : Prop :=
  ∀ n, P3388012421713509980.a n = A094687 n

end A094687

/-! ## A094687.P1336985066688922132

`A128209(n+1)-A001611(n+1)`
-/

namespace A094687.P1336985066688922132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 (n + 1) - A001611 (n + 1)

end

end A094687.P1336985066688922132

namespace A094687

/-- `A128209(n+1)-A001611(n+1)` -/
def P1336985066688922132.Spec : Prop :=
  ∀ n, P1336985066688922132.a n = A094687 n

end A094687

/-! ## A094687.P4170105204881805403

`A152046(n+1)-A000045(n+1)`
-/

namespace A094687.P4170105204881805403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 (n + 1) - A000045 (n + 1)

end

end A094687.P4170105204881805403

namespace A094687

/-- `A152046(n+1)-A000045(n+1)` -/
def P4170105204881805403.Spec : Prop :=
  ∀ n, P4170105204881805403.a n = A094687 n

end A094687

/-! ## A094687.P10482987215776343179

`A167167(n+1)-A000045(n+1)`
-/

namespace A094687.P10482987215776343179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 (n + 1) - A000045 (n + 1)

end

end A094687.P10482987215776343179

namespace A094687

/-- `A167167(n+1)-A000045(n+1)` -/
def P10482987215776343179.Spec : Prop :=
  ∀ n, P10482987215776343179.a n = A094687 n

end A094687

/-! ## A094687.P11633982670211296469

`A001045(n+1)-A212804(n+2)`
-/

namespace A094687.P11633982670211296469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A212804 (n + 2)

end

end A094687.P11633982670211296469

namespace A094687

/-- `A001045(n+1)-A212804(n+2)` -/
def P11633982670211296469.Spec : Prop :=
  ∀ n, P11633982670211296469.a n = A094687 n

end A094687

/-! ## A094687.P2888994132549928243

`A131666(n+2)-A140096(n+1)`
-/

namespace A094687.P2888994132549928243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (n + 2) - A140096 (n + 1)

end

end A094687.P2888994132549928243

namespace A094687

/-- `A131666(n+2)-A140096(n+1)` -/
def P2888994132549928243.Spec : Prop :=
  ∀ n, P2888994132549928243.a n = A094687 n

end A094687

/-! ## A094687.P868754207994995077

`A001045(n+1)-A324969(n+2)`
-/

namespace A094687.P868754207994995077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A324969 (n + 2)

end

end A094687.P868754207994995077

namespace A094687

/-- `A001045(n+1)-A324969(n+2)` -/
def P868754207994995077.Spec : Prop :=
  ∀ n, P868754207994995077.a n = A094687 n

end A094687

/-!
# A094688: Convolution of Fibonacci(n) and 3^n.

The programs for A094688, the canonical program `A094688.P7047330486356587838` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094688 has offset 0).

The definition of A094688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094688.P9840201156756139391

`a(n-1)+a(n-2)+3^(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A094688.P9840201156756139391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A094688.P9840201156756139391

namespace A094688

/-- `a(n-1)+a(n-2)+3^(n-1)` -/
def P9840201156756139391.Spec : Prop :=
  ∀ n, P9840201156756139391.a n = (A094688 n : ℚ)

end A094688

/-! ## A094688.P6122694124644264139

`3*a(n-1)+A000045(n)` with `a(0)=0`
-/

namespace A094688.P6122694124644264139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) + A000045 n

end

end A094688.P6122694124644264139

namespace A094688

/-- `3*a(n-1)+A000045(n)` -/
def P6122694124644264139.Spec : Prop :=
  ∀ n, P6122694124644264139.a n = A094688 n

end A094688

/-! ## A094688.P7047330486356587838

`4*a(n-1)-2*a(n-2)-3*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094688

/-- `4*a(n-1)-2*a(n-2)-3*a(n-3)` -/
def P7047330486356587838.Spec : Prop :=
  ∀ n, P7047330486356587838.a n = A094688 n

theorem P7047330486356587838.correct : P7047330486356587838.Spec := by
  intro n
  simp only [A094688]

end A094688

/-! ## A094688.P16632722824761273919

`(3^(n+1)-A000032(n+2))/5`
-/

namespace A094688.P16632722824761273919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) : ℤ) - A000032 (n + 2) : ℚ) / 5

end

end A094688.P16632722824761273919

namespace A094688

/-- `(3^(n+1)-A000032(n+2))/5` -/
def P16632722824761273919.Spec : Prop :=
  ∀ n, P16632722824761273919.a n = (A094688 n : ℚ)

end A094688

/-! ## A094688.P11906902729986679787

`(3^(n+1)-A000045(n+1)-A000045(n+3))/5`
-/

namespace A094688.P11906902729986679787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) : ℤ) - A000045 (n + 1) - A000045 (n + 3) : ℚ) / 5

end

end A094688.P11906902729986679787

namespace A094688

/-- `(3^(n+1)-A000045(n+1)-A000045(n+3))/5` -/
def P11906902729986679787.Spec : Prop :=
  ∀ n, P11906902729986679787.a n = (A094688 n : ℚ)

end A094688

/-! ## A094688.P2874682804015117058

`ogf(x/(1-4x+2x^2+3x^3))`
-/

namespace A094688.P2874682804015117058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 2, 3] n

end

end A094688.P2874682804015117058

namespace A094688

/-- `ogf(x/(1-4x+2x^2+3x^3))` -/
def P2874682804015117058.Spec : Prop :=
  ∀ n, P2874682804015117058.a n = A094688 n

end A094688

/-! ## A094688.P15571713343798612229

`round(ϕ^n/sqrt(5))+3*a(n-1)` with `a(0)=0`
-/

namespace A094688.P15571713343798612229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) + 3 * a (n - 1)

end

end A094688.P15571713343798612229

namespace A094688

/-- `round(ϕ^n/sqrt(5))+3*a(n-1)` -/
def P15571713343798612229.Spec : Prop :=
  ∀ n, P15571713343798612229.a n = A094688 n

end A094688

/-! ## A094688.P6903915065463737731

`A000032(n)+a(n-1)+6*a(n-2)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A094688.P6903915065463737731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  A000032 n + (a (n - 1) + 6 * a (n - 2))

end

end A094688.P6903915065463737731

namespace A094688

/-- `A000032(n)+a(n-1)+6*a(n-2)` -/
def P6903915065463737731.Spec : Prop :=
  ∀ n, P6903915065463737731.a n = A094688 n

end A094688

/-! ## A094688.P5486238779409067581

`∑[2*A098703(n)-A000045(n)]`
-/

namespace A094688.P5486238779409067581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098703 n - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094688.P5486238779409067581

namespace A094688

/-- `∑[2*A098703(n)-A000045(n)]` -/
def P5486238779409067581.Spec : Prop :=
  ∀ n, P5486238779409067581.a n = A094688 n

end A094688

/-! ## A094688.P17587318825171761060

`A098703(n+1)-A000045(n+1)`
-/

namespace A094688.P17587318825171761060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098703 (n + 1) - A000045 (n + 1)

end

end A094688.P17587318825171761060

namespace A094688

/-- `A098703(n+1)-A000045(n+1)` -/
def P17587318825171761060.Spec : Prop :=
  ∀ n, P17587318825171761060.a n = A094688 n

end A094688

/-! ## A094688.P10971424673087066692

`A098703(n+1)+A173126(n)-A173125(n)`
-/

namespace A094688.P10971424673087066692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098703 (n + 1) + (A173126 n - A173125 n)

end

end A094688.P10971424673087066692

namespace A094688

/-- `A098703(n+1)+A173126(n)-A173125(n)` -/
def P10971424673087066692.Spec : Prop :=
  ∀ n, P10971424673087066692.a n = A094688 n

end A094688

/-! ## A094688.P9454123503303236478

`A098703(n+1)-(A084179(n)+A084178(n+1))`
-/

namespace A094688.P9454123503303236478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098703 (n + 1) - (A084179 n + A084178 (n + 1))

end

end A094688.P9454123503303236478

namespace A094688

/-- `A098703(n+1)-(A084179(n)+A084178(n+1))` -/
def P9454123503303236478.Spec : Prop :=
  ∀ n, P9454123503303236478.a n = A094688 n

end A094688

/-! ## A094688.P11088993012393779674

`3^n-A099164(n)`
-/

namespace A094688.P11088993012393779674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A099164 n

end

end A094688.P11088993012393779674

namespace A094688

/-- `3^n-A099164(n)` -/
def P11088993012393779674.Spec : Prop :=
  ∀ n, P11088993012393779674.a n = A094688 n

end A094688

/-! ## A094688.P5640967406527237411

`Δ[A000071(n+1)+3*a(n-1)]` with `a(0)=0`
-/

namespace A094688.P5640967406527237411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000071 (n + 1) + 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094688.P5640967406527237411

namespace A094688

/-- `Δ[A000071(n+1)+3*a(n-1)]` -/
def P5640967406527237411.Spec : Prop :=
  ∀ n, P5640967406527237411.a n = A094688 n

end A094688

/-! ## A094688.P5906273421088094203

`A212323(n)-A099159(n)`
-/

namespace A094688.P5906273421088094203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212323 n - A099159 n

end

end A094688.P5906273421088094203

namespace A094688

/-- `A212323(n)-A099159(n)` -/
def P5906273421088094203.Spec : Prop :=
  ∀ n, P5906273421088094203.a n = A094688 n

end A094688

/-! ## A094688.P4625682627339919887

`∑[A106517(n)]-A106517(n)`
-/

namespace A094688.P4625682627339919887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A106517 n

end

end A094688.P4625682627339919887

namespace A094688

/-- `∑[A106517(n)]-A106517(n)` -/
def P4625682627339919887.Spec : Prop :=
  ∀ n, P4625682627339919887.a n = A094688 n

end A094688

/-! ## A094688.P17500195161431143392

`A106517(n)-A098703(n+1)`
-/

namespace A094688.P17500195161431143392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106517 n - A098703 (n + 1)

end

end A094688.P17500195161431143392

namespace A094688

/-- `A106517(n)-A098703(n+1)` -/
def P17500195161431143392.Spec : Prop :=
  ∀ n, P17500195161431143392.a n = A094688 n

end A094688

/-! ## A094688.P16147809639427955129

`A106517(n)-A098703(n)-A099159(n)`
-/

namespace A094688.P16147809639427955129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106517 n - A098703 n - A099159 n

end

end A094688.P16147809639427955129

namespace A094688

/-- `A106517(n)-A098703(n)-A099159(n)` -/
def P16147809639427955129.Spec : Prop :=
  ∀ n, P16147809639427955129.a n = A094688 n

end A094688

/-! ## A094688.P7065956770139075088

`∑[A000045(n)/A003946(n)]*A003946(n)`
-/

namespace A094688.P7065956770139075088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (A003946 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A003946 n : ℚ)

end

end A094688.P7065956770139075088

namespace A094688

/-- `∑[A000045(n)/A003946(n)]*A003946(n)` -/
def P7065956770139075088.Spec : Prop :=
  ∀ n, P7065956770139075088.a n = (A094688 n : ℚ)

end A094688

/-! ## A094688.P1744412362914782796

`A106517(n+1)-3^(n+1)`
-/

namespace A094688.P1744412362914782796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106517 (n + 1) - (3 ^ (n + 1) : ℤ)

end

end A094688.P1744412362914782796

namespace A094688

/-- `A106517(n+1)-3^(n+1)` -/
def P1744412362914782796.Spec : Prop :=
  ∀ n, P1744412362914782796.a n = A094688 n

end A094688

/-!
# A094693: Records in A094685.

The programs for A094693, there is no canonical definition to state claims against.
-/

/-! ## A094693.P17426670890933798145

`round(sqrt(comp[2*(n+1)]^3))`
-/

namespace A094693.P17426670890933798145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 3 : ℝ))

end

end A094693.P17426670890933798145

/-! ## A094693.P10570287098112302763

`record[n%2*round(sqrt(n^3))]`
-/

namespace A094693.P10570287098112302763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * SequenceMachineLib.roundAway (Real.sqrt (n ^ 3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094693.P10570287098112302763

/-! ## A094693.P3997830749452962314

`record[and(1, n)*round(sqrt(n^3))]`
-/

namespace A094693.P3997830749452962314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * SequenceMachineLib.roundAway (Real.sqrt (n ^ 3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094693.P3997830749452962314

/-! ## A094693.P17389094605791246337

`record[round(sqrt(n^3^and(1, n)))]`
-/

namespace A094693.P17389094605791246337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 3 ^ Nat.land 1 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094693.P17389094605791246337

/-! ## A094693.P13221678638759829134

`record[round(sqrt(n)*gcd(n, or(1, n)))]`
-/

namespace A094693.P13221678638759829134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) * (Nat.gcd n (Nat.lor 1 n) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094693.P13221678638759829134

/-! ## A094693.P8664196463581236638

`record[round(n^((2*and(1, n)+1)/2))]`
-/

namespace A094693.P8664196463581236638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ ((2 * Nat.land 1 n + 1 : ℚ) / 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094693.P8664196463581236638

/-! ## A094693.P13384914723039412647

`record[A094685(n)]`
-/

namespace A094693.P13384914723039412647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094693.P13384914723039412647

/-! ## A094693.P3876698180429425500

`record[round(sqrt(A026741(n)^3))]`
-/

namespace A094693.P3876698180429425500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A026741 n ^ 3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094693.P3876698180429425500

/-! ## A094693.P12895248420653289096

`record[round(sqrt(n)*A093178(n))]`
-/

namespace A094693.P12895248420653289096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) * (A093178 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094693.P12895248420653289096

/-! ## A094693.P3544039381499622292

`record[round(n^(3/2))*A000035(n)]`
-/

namespace A094693.P3544039381499622292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)) * A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094693.P3544039381499622292

/-!
# A094694: Numbers having in binary representation more 1s than their squares.

The programs for A094694, the canonical program `A094694.P14278296386582266715` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094694 has offset 1).

The definition of A094694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094694.P14278296386582266715

`lt[A232243(n), 0]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A094694

/-- `lt[A232243(n), 0]` -/
def P14278296386582266715.Spec : Prop :=
  ∀ n, (P14278296386582266715.a n : ℤ) = A094694 (n + 1)

theorem P14278296386582266715.correct : P14278296386582266715.Spec := by
  intro n
  simp only [A094694, Nat.add_sub_cancel]

end A094694

/-! ## A094694.P5654895326203487335

`lt[A159918(n), A000120(n)]`
-/

namespace A094694.P5654895326203487335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094694.P5654895326203487335

namespace A094694

/-- `lt[A159918(n), A000120(n)]` -/
def P5654895326203487335.Spec : Prop :=
  ∀ n, (P5654895326203487335.a n : ℤ) = A094694 (n + 1)

end A094694

/-! ## A094694.P13670250548074050307

`lt[A159918(n), log2(A001316(n))]`
-/

namespace A094694.P13670250548074050307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A094694.P13670250548074050307

namespace A094694

/-- `lt[A159918(n), log2(A001316(n))]` -/
def P13670250548074050307.Spec : Prop :=
  ∀ n, (P13670250548074050307.a n : ℤ) = A094694 (n + 1)

end A094694

/-! ## A094694.P15577193695673944531

`lt[A232245(n), log2(A102376(n))]`
-/

namespace A094694.P15577193695673944531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232245 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A102376 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A094694.P15577193695673944531

namespace A094694

/-- `lt[A232245(n), log2(A102376(n))]` -/
def P15577193695673944531.Spec : Prop :=
  ∀ n, (P15577193695673944531.a n : ℤ) = A094694 (n + 1)

end A094694

/-! ## A094694.P9673361773374750550

`lt[A159918(n), 2*n-A005187(n)]`
-/

namespace A094694.P9673361773374750550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094694.P9673361773374750550

namespace A094694

/-- `lt[A159918(n), 2*n-A005187(n)]` -/
def P9673361773374750550.Spec : Prop :=
  ∀ n, (P9673361773374750550.a n : ℤ) = A094694 (n + 1)

end A094694

/-! ## A094694.P1620792246719678093

`lt[A159918(n), 3*n-A004134(n)]`
-/

namespace A094694.P1620792246719678093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A004134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094694.P1620792246719678093

namespace A094694

/-- `lt[A159918(n), 3*n-A004134(n)]` -/
def P1620792246719678093.Spec : Prop :=
  ∀ n, (P1620792246719678093.a n : ℤ) = A094694 (n + 1)

end A094694

/-! ## A094694.P2843252962008616486

`lt[A159918(n), A001222(A071044(n))]`
-/

namespace A094694.P2843252962008616486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094694.P2843252962008616486

namespace A094694

/-- `lt[A159918(n), A001222(A071044(n))]` -/
def P2843252962008616486.Spec : Prop :=
  ∀ n, (P2843252962008616486.a n : ℤ) = A094694 (n + 1)

end A094694

/-! ## A094694.P11457601106177445347

`lt[A159918(n), A001222(A001316(2*n))]`
-/

namespace A094694.P11457601106177445347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094694.P11457601106177445347

namespace A094694

/-- `lt[A159918(n), A001222(A001316(2*n))]` -/
def P11457601106177445347.Spec : Prop :=
  ∀ n, (P11457601106177445347.a n : ℤ) = A094694 (n + 1)

end A094694

/-! ## A094694.P10028355756691104581

`lt[A159918(n), A001222(A278222(n))]`
-/

namespace A094694.P10028355756691104581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094694.P10028355756691104581

namespace A094694

/-- `lt[A159918(n), A001222(A278222(n))]` -/
def P10028355756691104581.Spec : Prop :=
  ∀ n, (P10028355756691104581.a n : ℤ) = A094694 (n + 1)

end A094694

/-! ## A094694.P12517245971982051348

`lt[A159918(n), A001222(A286588(n))]`
-/

namespace A094694.P12517245971982051348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286588 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094694.P12517245971982051348

namespace A094694

/-- `lt[A159918(n), A001222(A286588(n))]` -/
def P12517245971982051348.Spec : Prop :=
  ∀ n, (P12517245971982051348.a n : ℤ) = A094694 (n + 1)

end A094694

/-!
# A094695: Numbers having in binary representation fewer ones than in their squares.

The programs for A094695, the canonical program `A094695.P15361647262700553161` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094695 has offset 1).

The definition of A094695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094695.P15361647262700553161

`lt[0, A232243(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A094695

/-- `lt[0, A232243(n)]` -/
def P15361647262700553161.Spec : Prop :=
  ∀ n, (P15361647262700553161.a n : ℤ) = A094695 (n + 1)

theorem P15361647262700553161.correct : P15361647262700553161.Spec := by
  intro n
  simp only [A094695, Nat.add_sub_cancel]

end A094695

/-! ## A094695.P4427446665245073547

`lt[1, A351149(n+1)]+1`
-/

namespace A094695.P4427446665245073547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351149 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A094695.P4427446665245073547

namespace A094695

/-- `lt[1, A351149(n+1)]+1` -/
def P4427446665245073547.Spec : Prop :=
  ∀ n, (P4427446665245073547.a n : ℤ) = A094695 (n + 1)

end A094695

/-! ## A094695.P8137405719396314011

`lt[a(and(n, n-1))+1, A159918(n)]` with `a(0)=0`
-/

namespace A094695.P8137405719396314011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094695.P8137405719396314011

namespace A094695

/-- `lt[a(and(n, n-1))+1, A159918(n)]` -/
def P8137405719396314011.Spec : Prop :=
  ∀ n, (P8137405719396314011.a n : ℤ) = A094695 (n + 1)

end A094695

/-! ## A094695.P1882338126261213914

`lt[1, A351149(A028310(n))]`
-/

namespace A094695.P1882338126261213914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351149 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094695.P1882338126261213914

namespace A094695

/-- `lt[1, A351149(A028310(n))]` -/
def P1882338126261213914.Spec : Prop :=
  ∀ n, (P1882338126261213914.a n : ℤ) = A094695 (n + 1)

end A094695

/-! ## A094695.P4381719940365440031

`lt[A000120(n), A159918(n)]`
-/

namespace A094695.P4381719940365440031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094695.P4381719940365440031

namespace A094695

/-- `lt[A000120(n), A159918(n)]` -/
def P4381719940365440031.Spec : Prop :=
  ∀ n, (P4381719940365440031.a n : ℤ) = A094695 (n + 1)

end A094695

/-! ## A094695.P1635708083281274562

`lt[1, A351149(A022144(n))]`
-/

namespace A094695.P1635708083281274562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351149 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094695.P1635708083281274562

namespace A094695

/-- `lt[1, A351149(A022144(n))]` -/
def P1635708083281274562.Spec : Prop :=
  ∀ n, (P1635708083281274562.a n : ℤ) = A094695 (n + 1)

end A094695

/-! ## A094695.P7643113775198739022

`lt[A060632(n), A060632(n²)]`
-/

namespace A094695.P7643113775198739022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094695.P7643113775198739022

namespace A094695

/-- `lt[A060632(n), A060632(n²)]` -/
def P7643113775198739022.Spec : Prop :=
  ∀ n, (P7643113775198739022.a n : ℤ) = A094695 (n + 1)

end A094695

/-! ## A094695.P11661135449037070465

`lt[A001316(n), A001316(n²)]`
-/

namespace A094695.P11661135449037070465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094695.P11661135449037070465

namespace A094695

/-- `lt[A001316(n), A001316(n²)]` -/
def P11661135449037070465.Spec : Prop :=
  ∀ n, (P11661135449037070465.a n : ℤ) = A094695 (n + 1)

end A094695

/-! ## A094695.P9463020588016016104

`lt[A050315(n), A050315(n²)]`
-/

namespace A094695.P9463020588016016104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094695.P9463020588016016104

namespace A094695

/-- `lt[A050315(n), A050315(n²)]` -/
def P9463020588016016104.Spec : Prop :=
  ∀ n, (P9463020588016016104.a n : ℤ) = A094695 (n + 1)

end A094695

/-! ## A094695.P8574946674609609996

`lt[a(and(n, n-1))+1, A000120(n²)]` with `a(0)=0`
-/

namespace A094695.P8574946674609609996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094695.P8574946674609609996

namespace A094695

/-- `lt[a(and(n, n-1))+1, A000120(n²)]` -/
def P8574946674609609996.Spec : Prop :=
  ∀ n, (P8574946674609609996.a n : ℤ) = A094695 (n + 1)

end A094695

/-!
# A094696: Records in A007321.

The programs for A094696, there is no canonical definition to state claims against.
-/

/-! ## A094696.P11205291833173027149

`∑{e}[2^n, A095911(#)]`
-/

namespace A094696.P11205291833173027149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A095911 (Nat.factorization (f1 n) p)

end

end A094696.P11205291833173027149

/-! ## A094696.P3496688260115405544

`A095911(round(sqrt(n²+1)))%(n*5^n+1)`
-/

namespace A094696.P3496688260115405544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095911 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (n * 5 ^ n + 1 : ℤ)

end

end A094696.P3496688260115405544

/-! ## A094696.P16607328049957541601

`∪[A095911(n+1), A162669(n)]`
-/

namespace A094696.P16607328049957541601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162669 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094696.P16607328049957541601

/-! ## A094696.P6272354526962538068

`∪[A095911(n+1), A324359(n)]`
-/

namespace A094696.P6272354526962538068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324359 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094696.P6272354526962538068

/-! ## A094696.P891724900436809392

`∪[A095911(n+1), A324360(n)]`
-/

namespace A094696.P891724900436809392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324360 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094696.P891724900436809392

/-!
# A094697: Where records occur in A007321.

The programs for A094697, there is no canonical definition to state claims against.
-/

/-! ## A094697.P16733885659143333154

`∏{e}[2^n, A095910(#)]`
-/

namespace A094697.P16733885659143333154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A095910 (Nat.factorization (f1 n) p)

end

end A094697.P16733885659143333154

/-! ## A094697.P8041464614508206422

`A095910(A028310(n))-char[29*n]`
-/

namespace A094697.P8041464614508206422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095910 (A028310 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A094697.P8041464614508206422

/-! ## A094697.P2954563002389208102

`∪[A095910(n+1), A134155(n)²]`
-/

namespace A094697.P2954563002389208102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134155 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094697.P2954563002389208102

/-! ## A094697.P5254714084545788022

`A095910(A028310(n))/A054977(n)`
-/

namespace A094697.P5254714084545788022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095910 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A094697.P5254714084545788022

/-! ## A094697.P1271755249296726871

`C(A095910(A028310(n)), A294619(n))`
-/

namespace A094697.P1271755249296726871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A095910 (A028310 n).toNat).toNat (A294619 n).toNat

end

end A094697.P1271755249296726871

/-!
# A094698: Number of steps where the Juggler sequence reaches a new record.

The programs for A094698, there is no canonical definition to state claims against.
-/

/-! ## A094698.P5873101667224458712

`record[A007320(n+1)]`
-/

namespace A094698.P5873101667224458712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094698.P5873101667224458712

/-! ## A094698.P3651808038655477229

`A007320(A094679(n+1))`
-/

namespace A094698.P3651808038655477229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007320 (A094679 (n + 1)).toNat

end

end A094698.P3651808038655477229

/-!
# A094699: Number of prime partition numbers <= n-th partition number.

The programs for A094699, there is no canonical definition to state claims against.
-/

/-! ## A094699.P3401034400498150573

`∑[char[A046063(n+1)]]`
-/

namespace A094699.P3401034400498150573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046063 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094699.P3401034400498150573

/-! ## A094699.P13279119342118780722

`∑[char[eq[1, A085561(n)]]]`
-/

namespace A094699.P13279119342118780722
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094699.P13279119342118780722

/-! ## A094699.P14777376702551565878

`∑[char[eq[2, A085543(n)]]]`
-/

namespace A094699.P14777376702551565878
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094699.P14777376702551565878

/-! ## A094699.P6770452344354798072

`∑[char[eq[2, A278241(n)]]]`
-/

namespace A094699.P6770452344354798072
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094699.P6770452344354798072

/-! ## A094699.P17161250971238964742

`∑[A010051(A085543(n))]`
-/

namespace A094699.P17161250971238964742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A085543 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094699.P17161250971238964742

