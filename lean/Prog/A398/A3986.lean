import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
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
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A398600: Number of permutations p of [n] such that |p(i+1)-p(i)| <> 4 for all 1 <= i < n.

The programs for A398600, there is no canonical definition to state claims against.
-/

/-! ## A398600.P6436813055276674823

`A345933(∏[A011772(n+1)])`
-/

namespace A398600.P6436813055276674823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345933 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A398600.P6436813055276674823

/-! ## A398600.P5726963072362744388

`A016116(n)*A325390(A080876(n))`
-/

namespace A398600.P5726963072362744388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A325390 (A080876 n).toNat

end

end A398600.P5726963072362744388

/-! ## A398600.P2899218993995148166

`A173843(n)*A173843(A173890(n))`
-/

namespace A398600.P2899218993995148166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173843 n * A173843 (A173890 n).toNat

end

end A398600.P2899218993995148166

/-!
# A398601: Number of permutations p of [n] such that |p(i+1)-p(i)| <> 5 for all 1 <= i < n.

The programs for A398601, there is no canonical definition to state claims against.
-/

/-! ## A398601.P2388051319425972019

`A079159(A099920(n))`
-/

namespace A398601.P2388051319425972019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079159 (A099920 n).toNat

end

end A398601.P2388051319425972019

/-! ## A398601.P1059264221036400295

`A357977(A173845(n))`
-/

namespace A398601.P1059264221036400295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357977 (A173845 n).toNat

end

end A398601.P1059264221036400295

/-! ## A398601.P16958354749523635940

`A325238(A322326(n))`
-/

namespace A398601.P16958354749523635940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325238 (A322326 n).toNat

end

end A398601.P16958354749523635940

/-!
# A398607: Number of partitions of the 3-dimensional vector (n, n, n) into strictly distinct parts with nonnegative components, excluding elementary basis vectors (1,0,0), (0,1,0), and (0,0,1).

The programs for A398607, there is no canonical definition to state claims against.
-/

/-! ## A398607.P2495076778111493278

`A397804(∑[n+3])`
-/

namespace A398607.P2495076778111493278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397804 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398607.P2495076778111493278

/-!
# A398619: Expansion of eta(q) * eta(q^2) * eta(q^6) / eta(q^3)^3 in powers of q.

The programs for A398619, there is no canonical definition to state claims against.
-/

/-! ## A398619.P13312353550253060261

`A033999(n)*A261326(n)`
-/

namespace A398619.P13312353550253060261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A261326 n

end

end A398619.P13312353550253060261

/-!
# A398620: Expansion of eta(q^2) * eta(q^3) * eta(q^6) / (eta(q)^2 * eta(q^9)) in powers of q.

The programs for A398620, there is no canonical definition to state claims against.
-/

/-! ## A398620.P14559183401028536133

`A111651(A259662(n))`
-/

namespace A398620.P14559183401028536133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A259662 n).toNat

end

end A398620.P14559183401028536133

/-! ## A398620.P3408525850690433348

`A368728(A035301(n))`
-/

namespace A398620.P3408525850690433348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368728 (A035301 n).toNat

end

end A398620.P3408525850690433348

/-! ## A398620.P1166979465600848686

`A194978(A264392(n+1))`
-/

namespace A398620.P1166979465600848686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194978 (A264392 (n + 1)).toNat

end

end A398620.P1166979465600848686

/-! ## A398620.P9349850404954483847

`∑[∑[A000120(A002137(n))]]`
-/

namespace A398620.P9349850404954483847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A002137 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398620.P9349850404954483847

/-! ## A398620.P11391137854001774546

`A011658(A061396(n))+A000070(n)`
-/

namespace A398620.P11391137854001774546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011658 (A061396 n).toNat + A000070 n

end

end A398620.P11391137854001774546

/-!
# A398628: Square array T(n,k), n >= 0, k >= 1, read by antidiagonals: T(n,k) is the number of multiplicative perfect partitions of (p_1 * p_2 * ... * p_k)^n into parts > 1, for k distinct primes.

The programs for A398628, there is no canonical definition to state claims against.
-/

/-! ## A398628.P1242293391302668149

`A002033(col(n))^(row(n)-col(n)+1)`
-/

namespace A398628.P1242293391302668149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002033 (SequenceMachineLib.triCol n) : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℤ)

end

end A398628.P1242293391302668149

/-! ## A398628.P8666751213042389970

`A074206(col(n)+1)^(row(n)-col(n)+1)`
-/

namespace A398628.P8666751213042389970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074206 (SequenceMachineLib.triCol n + 1) : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℤ)

end

end A398628.P8666751213042389970

/-! ## A398628.P16009560190335411920

`A074206(col(n)+1)^(row(n)+1-col(n))`
-/

namespace A398628.P16009560190335411920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074206 (SequenceMachineLib.triCol n + 1) : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A398628.P16009560190335411920

/-!
# A398629: Numbers that can be obtained by removing the first and last digits of a square.

The programs for A398629, there is no canonical definition to state claims against.
-/

/-! ## A398629.P1056857131265459572

`comp[A399299(n+1)]`
-/

namespace A398629.P1056857131265459572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A398629.P1056857131265459572

/-!
# A398630: Lexicographically earliest sequence such that no four terms at symmetrically-spaced indices are equal.

The programs for A398630, there is no canonical definition to state claims against.
-/

/-! ## A398630.P1277972328850001364

`A399607(A400313(n+1))`
-/

namespace A398630.P1277972328850001364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399607 (A400313 (n + 1)).toNat

end

end A398630.P1277972328850001364

/-! ## A398630.P5337217069414820196

`A242667(A358165(n))`
-/

namespace A398630.P5337217069414820196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242667 (A358165 n).toNat

end

end A398630.P5337217069414820196

/-! ## A398630.P1951657881224432994

`A192393(A000068(n+2))`
-/

namespace A398630.P1951657881224432994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192393 (A000068 (n + 2)).toNat

end

end A398630.P1951657881224432994

/-! ## A398630.P960872414807240624

`A399607(A177231(n+2))`
-/

namespace A398630.P960872414807240624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399607 (A177231 (n + 2)).toNat

end

end A398630.P960872414807240624

/-! ## A398630.P13163552703289769703

`A346307(A117117(n))`
-/

namespace A398630.P13163552703289769703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346307 (A117117 n).toNat

end

end A398630.P13163552703289769703

/-!
# A398634: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) is the number of permutations p of [n] such that |p(i+1)-p(i)| <> k for all 1 <= i < n.

The programs for A398634, there is no canonical definition to state claims against.
-/

/-! ## A398634.P9196114480338716653

`and(A046523(A156883(n)), A129387(n+5))`
-/

namespace A398634.P9196114480338716653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046523 (A156883 n).toNat) (A129387 (n + 5))

end

end A398634.P9196114480338716653

/-! ## A398634.P16839520597504563789

`col(n)!^A387347(A298727(n+1))`
-/

namespace A398634.P16839520597504563789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triCol n) : ℚ) ^ (A387347 (A298727 (n + 1)).toNat : ℤ)

end

end A398634.P16839520597504563789

/-! ## A398634.P12800557426409986306

`A389570(n)%A368519(A000040(n+5))`
-/

namespace A398634.P12800557426409986306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389570 n) (A368519 (A000040 (n + 5)).toNat)

end

end A398634.P12800557426409986306

/-!
# A398638: Number of quasi-cubic graphs on 2*n + 1 vertices.

The programs for A398638, there is no canonical definition to state claims against.
-/

/-! ## A398638.P18024359711874137590

`round(A008858(n+1)/6)`
-/

namespace A398638.P18024359711874137590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008858 (n + 1) : ℚ) / 6)

end

end A398638.P18024359711874137590

/-! ## A398638.P4194496272559569270

`A160715(A115730(n))`
-/

namespace A398638.P4194496272559569270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160715 (A115730 n).toNat

end

end A398638.P4194496272559569270

/-!
# A398639: Number of connected quasi-cubic graphs on 2*n + 1 vertices.

The programs for A398639, there is no canonical definition to state claims against.
-/

/-! ## A398639.P17402017102651265379

`A399015(A152948(n+1))`
-/

namespace A398639.P17402017102651265379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399015 (A152948 (n + 1)).toNat

end

end A398639.P17402017102651265379

/-! ## A398639.P6259140419463598557

`A120440(A148463(n))`
-/

namespace A398639.P6259140419463598557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120440 (A148463 n).toNat

end

end A398639.P6259140419463598557

/-!
# A398640: Number of quasi-quintic graphs on 2*n + 1 vertices.

The programs for A398640, there is no canonical definition to state claims against.
-/

/-! ## A398640.P9390265522018947054

`A398675(n)+A398641(n)`
-/

namespace A398640.P9390265522018947054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398675 n + A398641 n

end

end A398640.P9390265522018947054

/-! ## A398640.P18025658203115437134

`A398641(n)+A109497(3*A000254(n))%A109497(n)`
-/

namespace A398640.P18025658203115437134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398641 n + Int.tmod (A109497 (3 * A000254 n).toNat) (A109497 n)

end

end A398640.P18025658203115437134

/-!
# A398641: Number of connected quasi-quintic graphs on 2*n + 1 vertices.

The programs for A398641, there is no canonical definition to state claims against.
-/

/-! ## A398641.P17179257463769553639

`A398640(n)-A398675(n)`
-/

namespace A398641.P17179257463769553639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398640 n - A398675 n

end

end A398641.P17179257463769553639

/-! ## A398641.P5127692492847178353

`A398640(n)-A295884(A000740(2*(n+2)))`
-/

namespace A398641.P5127692492847178353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398640 n - A295884 (A000740 (2 * (n + 2))).toNat

end

end A398641.P5127692492847178353

/-!
# A398642: Number of quasi-regular graphs on 2*n + 1 vertices.

The programs for A398642, there is no canonical definition to state claims against.
-/

/-! ## A398642.P3157011545501657058

`A398673(n+1)+A398643(n+1)`
-/

namespace A398642.P3157011545501657058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398673 (n + 1) + A398643 (n + 1)

end

end A398642.P3157011545501657058

/-!
# A398643: Number of connected quasi-regular graphs on 2*n + 1 vertices.

The programs for A398643, there is no canonical definition to state claims against.
-/

/-! ## A398643.P9064932714351751822

`A398642(n+1)-A398673(n+1)`
-/

namespace A398643.P9064932714351751822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398642 (n + 1) - A398673 (n + 1)

end

end A398643.P9064932714351751822

/-!
# A398644: Number of partitions of n into 3 parts 1 <= x <= y <= z such that x^2 + y^2 + z^2 = 3*m^2 for some integer m.

The programs for A398644, there is no canonical definition to state claims against.
-/

/-! ## A398644.P18330689467501827466

`or(A083890(n+1), A083917(A007955(n+1)))`
-/

namespace A398644.P18330689467501827466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083890 (n + 1)) (A083917 (A007955 (n + 1)).toNat)

end

end A398644.P18330689467501827466

/-! ## A398644.P5447265852246058946

`A111748(A042962(n))`
-/

namespace A398644.P5447265852246058946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111748 (A042962 n).toNat

end

end A398644.P5447265852246058946

/-! ## A398644.P12608348815916739098

`A126565(A361264(n+2))`
-/

namespace A398644.P12608348815916739098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126565 (A361264 (n + 2)).toNat

end

end A398644.P12608348815916739098

/-! ## A398644.P12101727779591382030

`A126565(A244457(n+5))`
-/

namespace A398644.P12101727779591382030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126565 (A244457 (n + 5)).toNat

end

end A398644.P12101727779591382030

/-! ## A398644.P13535074160190842170

`A083917(A249817(n+1)^3)`
-/

namespace A398644.P13535074160190842170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083917 (A249817 (n + 1) ^ 3).toNat

end

end A398644.P13535074160190842170

/-!
# A398647: Numbers that can be obtained by concatenating the decimal representations of x, y, and x*y for x >= 1 and y >= 0.

The programs for A398647, there is no canonical definition to state claims against.
-/

/-! ## A398647.P6931848179404035325

`∪[A044332(n+1), A280635(n+1)]`
-/

namespace A398647.P6931848179404035325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A398647.P6931848179404035325

/-! ## A398647.P15994606837848136646

`A302801(A046510(n+1))`
-/

namespace A398647.P15994606837848136646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 (A046510 (n + 1)).toNat

end

end A398647.P15994606837848136646

/-! ## A398647.P8419702164782436246

`A302801(A133506(n+1))`
-/

namespace A398647.P8419702164782436246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 (A133506 (n + 1)).toNat

end

end A398647.P8419702164782436246

/-!
# A398649: Numbers that can be obtained by concatenating the decimal representations of x, y, and x+y for x >= 1 and y >= 0.

The programs for A398649, there is no canonical definition to state claims against.
-/

/-! ## A398649.P5955844237364413819

`A108773(lt[A076314(n), 9]+10)`
-/

namespace A398649.P5955844237364413819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108773 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 10)

end

end A398649.P5955844237364413819

/-! ## A398649.P16903612489789331753

`filter[A108203(n+1), A145568(#)]`
-/

namespace A398649.P16903612489789331753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A398649.P16903612489789331753

/-! ## A398649.P9281155134118883444

`∩[A108203(n+1), A160542(n+1)]`
-/

namespace A398649.P9281155134118883444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398649.P9281155134118883444

/-! ## A398649.P117521954753293222

`A369660(A300552(n+5))+A214527(n+1)`
-/

namespace A398649.P117521954753293222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369660 (A300552 (n + 5)).toNat + A214527 (n + 1)

end

end A398649.P117521954753293222

/-! ## A398649.P15214853837631519188

`A214527(n+1)%A097400(n)`
-/

namespace A398649.P15214853837631519188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214527 (n + 1)) (A097400 n)

end

end A398649.P15214853837631519188

/-!
# A398650: Number of composite numbers less than the n-th primorial that have a common factor greater than 1 with the (n-1)-th primorial.

The programs for A398650, the canonical program `A398650.P16240165279224502368` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398650 has offset 1).

The definition of A398650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398650.P16240165279224502368

`A002110(n+1)-A005867(n+1)-A005867(n)-(n+1)+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A398650

/-- `A002110(n+1)-A005867(n+1)-A005867(n)-(n+1)+1` -/
def P16240165279224502368.Spec : Prop :=
  ∀ n, P16240165279224502368.a n = A398650 (n + 1)

theorem P16240165279224502368.correct : P16240165279224502368.Spec := by
  intro n
  simp only [A398650, Nat.add_sub_cancel]

end A398650

/-! ## A398650.P1216735066888244640

`A065898(n+1)-A398562(n+1)`
-/

namespace A398650.P1216735066888244640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065898 (n + 1) - A398562 (n + 1)

end

end A398650.P1216735066888244640

namespace A398650

/-- `A065898(n+1)-A398562(n+1)` -/
def P1216735066888244640.Spec : Prop :=
  ∀ n, P1216735066888244640.a n = A398650 (n + 1)

end A398650

/-!
# A398651: Lower (1, 1/2)-midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398651, the canonical program `A398651.P14364319991967368664` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398651 has offset 0).

The definition of A398651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398651.P14364319991967368664

`ogf((x+x^2)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398651

/-- `ogf((x+x^2)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P14364319991967368664.Spec : Prop :=
  ∀ n, P14364319991967368664.a n = A398651 n

theorem P14364319991967368664.correct : P14364319991967368664.Spec := by
  intro n
  simp only [A398651]

end A398651

/-! ## A398651.P15951509288415718059

`∑[∑[∑[gcd(4, n)%4]]]`
-/

namespace A398651.P15951509288415718059
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n % 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398651.P15951509288415718059

namespace A398651

/-- `∑[∑[∑[gcd(4, n)%4]]]` -/
def P15951509288415718059.Spec : Prop :=
  ∀ n, (P15951509288415718059.a n : ℤ) = A398651 n

end A398651

/-! ## A398651.P6547068550017398922

`floor(∑[n²/2+n])`
-/

namespace A398651.P6547068550017398922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A398651.P6547068550017398922

namespace A398651

/-- `floor(∑[n²/2+n])` -/
def P6547068550017398922.Spec : Prop :=
  ∀ n, P6547068550017398922.a n = A398651 n

end A398651

/-! ## A398651.P4571962742242763138

`∑[∑[char[or(2, n)]+n]]`
-/

namespace A398651.P4571962742242763138
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398651.P4571962742242763138

namespace A398651

/-- `∑[∑[char[or(2, n)]+n]]` -/
def P4571962742242763138.Spec : Prop :=
  ∀ n, (P4571962742242763138.a n : ℤ) = A398651 n

end A398651

/-! ## A398651.P12297982831300566805

`∑[∑[∑[sqrt(n²%8)]]]`
-/

namespace A398651.P12297982831300566805
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n ^ 2 % 8 : ℕ) : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398651.P12297982831300566805

namespace A398651

/-- `∑[∑[∑[sqrt(n²%8)]]]` -/
def P12297982831300566805.Spec : Prop :=
  ∀ n, P12297982831300566805.a n = (A398651 n : ℝ)

end A398651

/-! ## A398651.P14428131629505328195

`∑[∑[and(2, n)/2+n]]`
-/

namespace A398651.P14428131629505328195
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2 + (n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398651.P14428131629505328195

namespace A398651

/-- `∑[∑[and(2, n)/2+n]]` -/
def P14428131629505328195.Spec : Prop :=
  ∀ n, P14428131629505328195.a n = (A398651 n : ℚ)

end A398651

/-! ## A398651.P16092947710308012193

`∑[n²-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A398651.P16092947710308012193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n ^ 2 : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398651.P16092947710308012193

namespace A398651

/-- `∑[n²-a(n-2)]` -/
def P16092947710308012193.Spec : Prop :=
  ∀ n, P16092947710308012193.a n = A398651 n

end A398651

/-! ## A398651.P5151952711599448504

`∑[∑[∑[2-a(n-2)]]]` with `a(0)=0, a(1)=1`
-/

namespace A398651.P5151952711599448504
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  2 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398651.P5151952711599448504

namespace A398651

/-- `∑[∑[∑[2-a(n-2)]]]` -/
def P5151952711599448504.Spec : Prop :=
  ∀ n, P5151952711599448504.a n = A398651 n

end A398651

/-! ## A398651.P4026153077301684151

`∑[∑[n+1-∑[n+1]%2]]`
-/

namespace A398651.P4026153077301684151
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f3 j) % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398651.P4026153077301684151

namespace A398651

/-- `∑[∑[n+1-∑[n+1]%2]]` -/
def P4026153077301684151.Spec : Prop :=
  ∀ n, P4026153077301684151.a n = A398651 n

end A398651

/-! ## A398651.P5777146316112587547

`∑[∑[n+1-and(1, ∑[n+1])]]`
-/

namespace A398651.P5777146316112587547
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398651.P5777146316112587547

namespace A398651

/-- `∑[∑[n+1-and(1, ∑[n+1])]]` -/
def P5777146316112587547.Spec : Prop :=
  ∀ n, P5777146316112587547.a n = A398651 n

end A398651

/-! ## A398651.P12712626052877061795

`∑[A194274(n)]`
-/

namespace A398651.P12712626052877061795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398651.P12712626052877061795

namespace A398651

/-- `∑[A194274(n)]` -/
def P12712626052877061795.Spec : Prop :=
  ∀ n, P12712626052877061795.a n = A398651 n

end A398651

/-! ## A398651.P17187880407070833881

`A398657(n)-∑[n²]`
-/

namespace A398651.P17187880407070833881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398657 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398651.P17187880407070833881

namespace A398651

/-- `A398657(n)-∑[n²]` -/
def P17187880407070833881.Spec : Prop :=
  ∀ n, P17187880407070833881.a n = A398651 n

end A398651

/-! ## A398651.P2613061594785481394

`∑[n²]-A398730(n)`
-/

namespace A398651.P2613061594785481394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A398730 n

end

end A398651.P2613061594785481394

namespace A398651

/-- `∑[n²]-A398730(n)` -/
def P2613061594785481394.Spec : Prop :=
  ∀ n, P2613061594785481394.a n = A398651 n

end A398651

/-! ## A398651.P12035442840017625790

`A398729(n)+n²+n`
-/

namespace A398651.P12035442840017625790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398729 n + (n ^ 2 + n : ℤ)

end

end A398651.P12035442840017625790

namespace A398651

/-- `A398729(n)+n²+n` -/
def P12035442840017625790.Spec : Prop :=
  ∀ n, P12035442840017625790.a n = A398651 n

end A398651

/-! ## A398651.P7425446563221239710

`A131941(n)+A038707(n)`
-/

namespace A398651.P7425446563221239710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 n + A038707 n

end

end A398651.P7425446563221239710

namespace A398651

/-- `A131941(n)+A038707(n)` -/
def P7425446563221239710.Spec : Prop :=
  ∀ n, P7425446563221239710.a n = A398651 n

end A398651

/-! ## A398651.P1369386483984307129

`A231559(n)+A004006(n)`
-/

namespace A398651.P1369386483984307129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231559 n + A004006 n

end

end A398651.P1369386483984307129

namespace A398651

/-- `A231559(n)+A004006(n)` -/
def P1369386483984307129.Spec : Prop :=
  ∀ n, P1369386483984307129.a n = A398651 n

end A398651

/-! ## A398651.P15294537651188954781

`A398663(n)-A000292(n)`
-/

namespace A398651.P15294537651188954781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398663 n - A000292 n

end

end A398651.P15294537651188954781

namespace A398651

/-- `A398663(n)-A000292(n)` -/
def P15294537651188954781.Spec : Prop :=
  ∀ n, P15294537651188954781.a n = A398651 n

end A398651

/-! ## A398651.P7730291337494957428

`A398665(n)-A002411(n)`
-/

namespace A398651.P7730291337494957428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398665 n - A002411 n

end

end A398651.P7730291337494957428

namespace A398651

/-- `A398665(n)-A002411(n)` -/
def P7730291337494957428.Spec : Prop :=
  ∀ n, P7730291337494957428.a n = A398651 n

end A398651

/-! ## A398651.P15991051245859891706

`A027480(n)-A398662(n)`
-/

namespace A398651.P15991051245859891706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n - A398662 n

end

end A398651.P15991051245859891706

namespace A398651

/-- `A027480(n)-A398662(n)` -/
def P15991051245859891706.Spec : Prop :=
  ∀ n, P15991051245859891706.a n = A398651 n

end A398651

/-!
# A398652: Upper (1, 1/2)-midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398652, the canonical program `A398652.P13655693242827887489` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398652 has offset 0).

The definition of A398652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398652.P13655693242827887489

`ogf((2x-2x^2+3x^3-x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398652

/-- `ogf((2x-2x^2+3x^3-x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P13655693242827887489.Spec : Prop :=
  ∀ n, P13655693242827887489.a n = A398652 n

theorem P13655693242827887489.correct : P13655693242827887489.Spec := by
  intro n
  simp only [A398652]

end A398652

/-! ## A398652.P10130396633426417361

`ceil(∑[n²/2+n])`
-/

namespace A398652.P10130396633426417361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A398652.P10130396633426417361

namespace A398652

/-- `ceil(∑[n²/2+n])` -/
def P10130396633426417361.Spec : Prop :=
  ∀ n, P10130396633426417361.a n = A398652 n

end A398652

/-! ## A398652.P2546661232194517420

`∑[n²-a(n-2)]` with `a(0)=0, a(1)=2`
-/

namespace A398652.P2546661232194517420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  (n ^ 2 : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398652.P2546661232194517420

namespace A398652

/-- `∑[n²-a(n-2)]` -/
def P2546661232194517420.Spec : Prop :=
  ∀ n, P2546661232194517420.a n = A398652 n

end A398652

/-! ## A398652.P17618106758125041580

`floor(or(1, ∑[(n+1)²]-n)/2)`
-/

namespace A398652.P17618106758125041580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) : ℚ) / 2⌋

end

end A398652.P17618106758125041580

namespace A398652

/-- `floor(or(1, ∑[(n+1)²]-n)/2)` -/
def P17618106758125041580.Spec : Prop :=
  ∀ n, P17618106758125041580.a n = A398652 n

end A398652

/-! ## A398652.P6788540995979896160

`∑[∑[a(n-4)+4]]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=3, a(4)=5`
-/

namespace A398652.P6788540995979896160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 3, 5] fun n f2 =>
  f2 (n - 4) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398652.P6788540995979896160

namespace A398652

/-- `∑[∑[a(n-4)+4]]` -/
def P6788540995979896160.Spec : Prop :=
  ∀ n, (P6788540995979896160.a n : ℤ) = A398652 n

end A398652

/-! ## A398652.P8758005888873238218

`∑[∑[∑[2-a(n-2)]]]` with `a(0)=0, a(1)=2, a(2)=0, a(3)=1`
-/

namespace A398652.P8758005888873238218
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0, 1] fun n f3 =>
  2 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398652.P8758005888873238218

namespace A398652

/-- `∑[∑[∑[2-a(n-2)]]]` -/
def P8758005888873238218.Spec : Prop :=
  ∀ n, P8758005888873238218.a n = A398652 n

end A398652

/-! ## A398652.P10667474219957530175

`C(n+3, 3)-floor(∑[n+2]/2)`
-/

namespace A398652.P10667474219957530175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) - ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A398652.P10667474219957530175

namespace A398652

/-- `C(n+3, 3)-floor(∑[n+2]/2)` -/
def P10667474219957530175.Spec : Prop :=
  ∀ n, P10667474219957530175.a n = A398652 n

end A398652

/-! ## A398652.P3342761503003385262

`A398658(n)-∑[n²]`
-/

namespace A398652.P3342761503003385262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398658 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398652.P3342761503003385262

namespace A398652

/-- `A398658(n)-∑[n²]` -/
def P3342761503003385262.Spec : Prop :=
  ∀ n, P3342761503003385262.a n = A398652 n

end A398652

/-! ## A398652.P183588227883587433

`∑[n²]-A398729(n)`
-/

namespace A398652.P183588227883587433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A398729 n

end

end A398652.P183588227883587433

namespace A398652

/-- `∑[n²]-A398729(n)` -/
def P183588227883587433.Spec : Prop :=
  ∀ n, P183588227883587433.a n = A398652 n

end A398652

/-! ## A398652.P9497172695650199031

`A398730(n)+n²+n`
-/

namespace A398652.P9497172695650199031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398730 n + (n ^ 2 + n : ℤ)

end

end A398652.P9497172695650199031

namespace A398652

/-- `A398730(n)+n²+n` -/
def P9497172695650199031.Spec : Prop :=
  ∀ n, P9497172695650199031.a n = A398652 n

end A398652

/-! ## A398652.P12553310442099287719

`A340648(n)+A004006(n)`
-/

namespace A398652.P12553310442099287719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340648 n + A004006 n

end

end A398652.P12553310442099287719

namespace A398652

/-- `A340648(n)+A004006(n)` -/
def P12553310442099287719.Spec : Prop :=
  ∀ n, P12553310442099287719.a n = A398652 n

end A398652

/-! ## A398652.P3886007544683706719

`A006503(n)-A281026(n)`
-/

namespace A398652.P3886007544683706719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n - A281026 n

end

end A398652.P3886007544683706719

namespace A398652

/-- `A006503(n)-A281026(n)` -/
def P3886007544683706719.Spec : Prop :=
  ∀ n, P3886007544683706719.a n = A398652 n

end A398652

/-! ## A398652.P12960715909585925939

`A398664(n)-A000292(n)`
-/

namespace A398652.P12960715909585925939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398664 n - A000292 n

end

end A398652.P12960715909585925939

namespace A398652

/-- `A398664(n)-A000292(n)` -/
def P12960715909585925939.Spec : Prop :=
  ∀ n, P12960715909585925939.a n = A398652 n

end A398652

/-! ## A398652.P3196751349971716940

`A398666(n)-A002411(n)`
-/

namespace A398652.P3196751349971716940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398666 n - A002411 n

end

end A398652.P3196751349971716940

namespace A398652

/-- `A398666(n)-A002411(n)` -/
def P3196751349971716940.Spec : Prop :=
  ∀ n, P3196751349971716940.a n = A398652 n

end A398652

/-! ## A398652.P13002823348670266689

`A027480(n)-A398661(n)`
-/

namespace A398652.P13002823348670266689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n - A398661 n

end

end A398652.P13002823348670266689

namespace A398652

/-- `A027480(n)-A398661(n)` -/
def P13002823348670266689.Spec : Prop :=
  ∀ n, P13002823348670266689.a n = A398652 n

end A398652

/-! ## A398652.P17008507842874781804

`A143058(n)-A301294(n)`
-/

namespace A398652.P17008507842874781804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143058 n - A301294 n

end

end A398652.P17008507842874781804

namespace A398652

/-- `A143058(n)-A301294(n)` -/
def P17008507842874781804.Spec : Prop :=
  ∀ n, P17008507842874781804.a n = A398652 n

end A398652

/-! ## A398652.P12245474273635788611

`A162148(n)-A398665(n)`
-/

namespace A398652.P12245474273635788611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n - A398665 n

end

end A398652.P12245474273635788611

namespace A398652

/-- `A162148(n)-A398665(n)` -/
def P12245474273635788611.Spec : Prop :=
  ∀ n, P12245474273635788611.a n = A398652 n

end A398652

/-! ## A398652.P6030143089856902362

`A210440(n)-A398657(n)`
-/

namespace A398652.P6030143089856902362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n - A398657 n

end

end A398652.P6030143089856902362

namespace A398652

/-- `A210440(n)-A398657(n)` -/
def P6030143089856902362.Spec : Prop :=
  ∀ n, P6030143089856902362.a n = A398652 n

end A398652

/-! ## A398652.P16223343662575745241

`A245301(n)-A398727(n)`
-/

namespace A398652.P16223343662575745241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245301 n - A398727 n

end

end A398652.P16223343662575745241

namespace A398652

/-- `A245301(n)-A398727(n)` -/
def P16223343662575745241.Spec : Prop :=
  ∀ n, P16223343662575745241.a n = A398652 n

end A398652

/-! ## A398652.P17105002966953130811

`A014112(n+1)-A008624(n)`
-/

namespace A398652.P17105002966953130811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014112 (n + 1) - A008624 n

end

end A398652.P17105002966953130811

namespace A398652

/-- `A014112(n+1)-A008624(n)` -/
def P17105002966953130811.Spec : Prop :=
  ∀ n, P17105002966953130811.a n = A398652 n

end A398652

/-!
# A398653: Lower (1, 1/3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398653, the canonical program `A398653.P14098701562736314378` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398653 has offset 0).

The definition of A398653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398653.P3270024628067704252

`floor(∑[(n+3)*n]/3)`
-/

namespace A398653.P3270024628067704252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A398653.P3270024628067704252

namespace A398653

/-- `floor(∑[(n+3)*n]/3)` -/
def P3270024628067704252.Spec : Prop :=
  ∀ n, P3270024628067704252.a n = A398653 n

end A398653

/-! ## A398653.P14098701562736314378

`A398654(n)-A060584(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A398653

/-- `A398654(n)-A060584(n)` -/
def P14098701562736314378.Spec : Prop :=
  ∀ n, P14098701562736314378.a n = A398653 n

theorem P14098701562736314378.correct : P14098701562736314378.Spec := by
  intro n
  simp only [A398653]

end A398653

/-! ## A398653.P10550261098372029956

`floor(A000330(n)/3)+A000124(n)-1`
-/

namespace A398653.P10550261098372029956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000330 n : ℚ) / 3⌋ + (A000124 n - 1)

end

end A398653.P10550261098372029956

namespace A398653

/-- `floor(A000330(n)/3)+A000124(n)-1` -/
def P10550261098372029956.Spec : Prop :=
  ∀ n, P10550261098372029956.a n = A398653 n

end A398653

/-! ## A398653.P11471509694393472190

`floor(A000330(n)/3)+A022264(n)-A049450(n)`
-/

namespace A398653.P11471509694393472190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000330 n : ℚ) / 3⌋ + (A022264 n - A049450 n)

end

end A398653.P11471509694393472190

namespace A398653

/-- `floor(A000330(n)/3)+A022264(n)-A049450(n)` -/
def P11471509694393472190.Spec : Prop :=
  ∀ n, P11471509694393472190.a n = A398653 n

end A398653

/-! ## A398653.P6308555864514030506

`floor(A000330(n)/3)+2*A000292(n)-A000330(n)`
-/

namespace A398653.P6308555864514030506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000330 n : ℚ) / 3⌋ + (2 * A000292 n - A000330 n)

end

end A398653.P6308555864514030506

namespace A398653

/-- `floor(A000330(n)/3)+2*A000292(n)-A000330(n)` -/
def P6308555864514030506.Spec : Prop :=
  ∀ n, P6308555864514030506.a n = A398653 n

end A398653

/-! ## A398653.P14951667235803715956

`A051925(n+1)-A398656(n)`
-/

namespace A398653.P14951667235803715956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 (n + 1) - A398656 n

end

end A398653.P14951667235803715956

namespace A398653

/-- `A051925(n+1)-A398656(n)` -/
def P14951667235803715956.Spec : Prop :=
  ∀ n, P14951667235803715956.a n = A398653 n

theorem P14951667235803715956.correct : P14951667235803715956.Spec := by
  intro n
  simp only [A398653, Nat.add_sub_cancel, A398653.P14951667235803715956.a, A398653.P14098701562736314378.a, A051925, A051925.P17489283095479781563.a, A060584, A060584.P3451533538028100298.a, A398654, A398654.P5042094744166231689.f1, A398654.P5042094744166231689.a, A398656, A398656.P9523121209241230908.a, A398655, A398655.P6576427525561031617.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A398653

/-!
# A398654: Upper (1, 1/3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398654, the canonical program `A398654.P5042094744166231689` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398654 has offset 0).

The definition of A398654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398654.P5042094744166231689

`ceil(∑[(3+n)*n]/3)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398654

/-- `ceil(∑[(3+n)*n]/3)` -/
def P5042094744166231689.Spec : Prop :=
  ∀ n, P5042094744166231689.a n = A398654 n

theorem P5042094744166231689.correct : P5042094744166231689.Spec := by
  intro n
  simp only [A398654]

end A398654

/-! ## A398654.P12353652168069492853

`A398653(n)+A060584(n)`
-/

namespace A398654.P12353652168069492853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398653 n + A060584 n

end

end A398654.P12353652168069492853

namespace A398654

/-- `A398653(n)+A060584(n)` -/
def P12353652168069492853.Spec : Prop :=
  ∀ n, P12353652168069492853.a n = A398654 n

theorem P12353652168069492853.correct : P12353652168069492853.Spec := by
  intro n
  simp only [A398654, Nat.add_sub_cancel, A398654.P12353652168069492853.a, A398654.P5042094744166231689.f1, A398654.P5042094744166231689.a, A060584, A060584.P3451533538028100298.a, A398653, A398653.P14098701562736314378.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A398654

/-! ## A398654.P7368859400131650426

`A051925(n+1)-A398655(n)`
-/

namespace A398654.P7368859400131650426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 (n + 1) - A398655 n

end

end A398654.P7368859400131650426

namespace A398654

/-- `A051925(n+1)-A398655(n)` -/
def P7368859400131650426.Spec : Prop :=
  ∀ n, P7368859400131650426.a n = A398654 n

theorem P7368859400131650426.correct : P7368859400131650426.Spec := by
  intro n
  simp only [A398654, Nat.add_sub_cancel, A398654.P7368859400131650426.a, A398654.P5042094744166231689.f1, A398654.P5042094744166231689.a, A051925, A051925.P17489283095479781563.a, A398655, A398655.P6576427525561031617.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A398654

/-! ## A398654.P7506635801032004141

`A004523(C(n+3, 3)-n)`
-/

namespace A398654.P7506635801032004141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (Nat.choose (n + 3) 3 - n)

end

end A398654.P7506635801032004141

namespace A398654

/-- `A004523(C(n+3, 3)-n)` -/
def P7506635801032004141.Spec : Prop :=
  ∀ n, P7506635801032004141.a n = A398654 n

end A398654

/-! ## A398654.P14646802771225184808

`A322042(∑[∑[n+1]]-n)`
-/

namespace A398654.P14646802771225184808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322042 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A398654.P14646802771225184808

namespace A398654

/-- `A322042(∑[∑[n+1]]-n)` -/
def P14646802771225184808.Spec : Prop :=
  ∀ n, P14646802771225184808.a n = A398654 n

end A398654

/-!
# A398655: Lower (1, 2/3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398655, the canonical program `A398655.P6576427525561031617` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398655 has offset 0).

The definition of A398655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398655.P14923043141335616151

`A398656(n)-A060584(n)`
-/

namespace A398655.P14923043141335616151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398656 n - A060584 n

end

end A398655.P14923043141335616151

namespace A398655

/-- `A398656(n)-A060584(n)` -/
def P14923043141335616151.Spec : Prop :=
  ∀ n, P14923043141335616151.a n = A398655 n

theorem P14923043141335616151.correct : P14923043141335616151.Spec := by
  intro n
  simp only [A398655, Nat.add_sub_cancel, A398655.P14923043141335616151.a, A398655.P6576427525561031617.a, A051925, A051925.P17489283095479781563.a, A060584, A060584.P3451533538028100298.a, A398654, A398654.P5042094744166231689.f1, A398654.P5042094744166231689.a, A398656, A398656.P9523121209241230908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A398655

/-! ## A398655.P6576427525561031617

`A051925(n+1)-A398654(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A398655

/-- `A051925(n+1)-A398654(n)` -/
def P6576427525561031617.Spec : Prop :=
  ∀ n, P6576427525561031617.a n = A398655 n

theorem P6576427525561031617.correct : P6576427525561031617.Spec := by
  intro n
  simp only [A398655]

end A398655

/-!
# A398656: Upper (1, 2/3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398656, the canonical program `A398656.P9523121209241230908` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398656 has offset 0).

The definition of A398656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398656.P8299756425424300389

`ceil(∑[(2*(n+1)+1)*n]/3)`
-/

namespace A398656.P8299756425424300389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) + 1) * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌉

end

end A398656.P8299756425424300389

namespace A398656

/-- `ceil(∑[(2*(n+1)+1)*n]/3)` -/
def P8299756425424300389.Spec : Prop :=
  ∀ n, P8299756425424300389.a n = A398656 n

end A398656

/-! ## A398656.P16964468022002311474

`floor((∑[A000217(2*n+1)]+1-n)/3)`
-/

namespace A398656.P16964468022002311474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 - (n : ℤ) : ℤ) : ℚ) / 3⌋

end

end A398656.P16964468022002311474

namespace A398656

/-- `floor((∑[A000217(2*n+1)]+1-n)/3)` -/
def P16964468022002311474.Spec : Prop :=
  ∀ n, P16964468022002311474.a n = A398656 n

end A398656

/-! ## A398656.P9523121209241230908

`A398655(n)+A060584(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A398656

/-- `A398655(n)+A060584(n)` -/
def P9523121209241230908.Spec : Prop :=
  ∀ n, P9523121209241230908.a n = A398656 n

theorem P9523121209241230908.correct : P9523121209241230908.Spec := by
  intro n
  simp only [A398656]

end A398656

/-! ## A398656.P17131968070203894836

`A051925(n+1)-A398653(n)`
-/

namespace A398656.P17131968070203894836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 (n + 1) - A398653 n

end

end A398656.P17131968070203894836

namespace A398656

/-- `A051925(n+1)-A398653(n)` -/
def P17131968070203894836.Spec : Prop :=
  ∀ n, P17131968070203894836.a n = A398656 n

theorem P17131968070203894836.correct : P17131968070203894836.Spec := by
  intro n
  simp only [A398656, Nat.add_sub_cancel, A398656.P17131968070203894836.a, A398656.P9523121209241230908.a, A051925, A051925.P17489283095479781563.a, A060584, A060584.P3451533538028100298.a, A398653, A398653.P14098701562736314378.a, A398655, A398655.P6576427525561031617.a, A398654, A398654.P5042094744166231689.f1, A398654.P5042094744166231689.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A398656

/-! ## A398656.P7699918953329190526

`A008615(A002492(n))+A000217(n)`
-/

namespace A398656.P7699918953329190526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A002492 n).toNat + A000217 n

end

end A398656.P7699918953329190526

namespace A398656

/-- `A008615(A002492(n))+A000217(n)` -/
def P7699918953329190526.Spec : Prop :=
  ∀ n, P7699918953329190526.a n = A398656 n

end A398656

/-!
# A398657: Lower (1, 3/2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398657, the canonical program `A398657.P14142516386804073530` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398657 has offset 0).

The definition of A398657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398657.P14142516386804073530

`floor((3/2+n)*∑[n])`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398657

/-- `floor((3/2+n)*∑[n])` -/
def P14142516386804073530.Spec : Prop :=
  ∀ n, P14142516386804073530.a n = A398657 n

theorem P14142516386804073530.correct : P14142516386804073530.Spec := by
  intro n
  simp only [A398657]

end A398657

/-! ## A398657.P15321724798968048215

`∑[A194274(n)+n²]`
-/

namespace A398657.P15321724798968048215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398657.P15321724798968048215

namespace A398657

/-- `∑[A194274(n)+n²]` -/
def P15321724798968048215.Spec : Prop :=
  ∀ n, P15321724798968048215.a n = A398657 n

end A398657

/-! ## A398657.P4733001707270103419

`A398651(n)+∑[n²]`
-/

namespace A398657.P4733001707270103419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398651 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398657.P4733001707270103419

namespace A398657

/-- `A398651(n)+∑[n²]` -/
def P4733001707270103419.Spec : Prop :=
  ∀ n, P4733001707270103419.a n = A398657 n

end A398657

/-! ## A398657.P11141435844781411504

`A398727(n)-n²*(n+1)/2`
-/

namespace A398657.P11141435844781411504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398727 n : ℚ) - (n ^ 2 * (n + 1) : ℚ) / 2

end

end A398657.P11141435844781411504

namespace A398657

/-- `A398727(n)-n²*(n+1)/2` -/
def P11141435844781411504.Spec : Prop :=
  ∀ n, P11141435844781411504.a n = (A398657 n : ℚ)

end A398657

/-! ## A398657.P18016754729668650297

`A000330(n)+floor(∑[n²/2+n])`
-/

namespace A398657.P18016754729668650297
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A398657.P18016754729668650297

namespace A398657

/-- `A000330(n)+floor(∑[n²/2+n])` -/
def P18016754729668650297.Spec : Prop :=
  ∀ n, P18016754729668650297.a n = A398657 n

end A398657

/-! ## A398657.P2436777227401781419

`floor(∑[n²/2+n])+sqrt(A271535(n))`
-/

namespace A398657.P2436777227401781419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ : ℝ) + Real.sqrt (A271535 n : ℝ)

end

end A398657.P2436777227401781419

namespace A398657

/-- `floor(∑[n²/2+n])+sqrt(A271535(n))` -/
def P2436777227401781419.Spec : Prop :=
  ∀ n, P2436777227401781419.a n = (A398657 n : ℝ)

end A398657

/-! ## A398657.P4125103487822460948

`A281026(n)+A002411(n)`
-/

namespace A398657.P4125103487822460948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281026 n + A002411 n

end

end A398657.P4125103487822460948

namespace A398657

/-- `A281026(n)+A002411(n)` -/
def P4125103487822460948.Spec : Prop :=
  ∀ n, P4125103487822460948.a n = A398657 n

end A398657

/-! ## A398657.P10407612548871230365

`A398661(n)+A000292(n)`
-/

namespace A398657.P10407612548871230365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398661 n + A000292 n

end

end A398657.P10407612548871230365

namespace A398657

/-- `A398661(n)+A000292(n)` -/
def P10407612548871230365.Spec : Prop :=
  ∀ n, P10407612548871230365.a n = A398657 n

end A398657

/-! ## A398657.P1567918715089585908

`A397978(n)+A006003(n)`
-/

namespace A398657.P1567918715089585908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397978 n + A006003 n

end

end A398657.P1567918715089585908

namespace A398657

/-- `A397978(n)+A006003(n)` -/
def P1567918715089585908.Spec : Prop :=
  ∀ n, P1567918715089585908.a n = A398657 n

end A398657

/-! ## A398657.P17813016152156472154

`A332495(n)+A135503(n)`
-/

namespace A398657.P17813016152156472154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332495 n + A135503 n

end

end A398657.P17813016152156472154

namespace A398657

/-- `A332495(n)+A135503(n)` -/
def P17813016152156472154.Spec : Prop :=
  ∀ n, P17813016152156472154.a n = A398657 n

end A398657

/-! ## A398657.P9563971592082007530

`A006331(n)-A398730(n)`
-/

namespace A398657.P9563971592082007530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n - A398730 n

end

end A398657.P9563971592082007530

namespace A398657

/-- `A006331(n)-A398730(n)` -/
def P9563971592082007530.Spec : Prop :=
  ∀ n, P9563971592082007530.a n = A398657 n

end A398657

/-! ## A398657.P15659612010248950266

`A134481(n)-A398664(n)`
-/

namespace A398657.P15659612010248950266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n - A398664 n

end

end A398657.P15659612010248950266

namespace A398657

/-- `A134481(n)-A398664(n)` -/
def P15659612010248950266.Spec : Prop :=
  ∀ n, P15659612010248950266.a n = A398657 n

end A398657

/-! ## A398657.P11423260406007563955

`A162148(n)-A398662(n)`
-/

namespace A398657.P11423260406007563955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n - A398662 n

end

end A398657.P11423260406007563955

namespace A398657

/-- `A162148(n)-A398662(n)` -/
def P11423260406007563955.Spec : Prop :=
  ∀ n, P11423260406007563955.a n = A398657 n

end A398657

/-! ## A398657.P16242411591873103629

`A210440(n)-A398652(n)`
-/

namespace A398657.P16242411591873103629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n - A398652 n

end

end A398657.P16242411591873103629

namespace A398657

/-- `A210440(n)-A398652(n)` -/
def P16242411591873103629.Spec : Prop :=
  ∀ n, P16242411591873103629.a n = A398657 n

end A398657

/-! ## A398657.P7663358157476977727

`A245301(n)-A398666(n)`
-/

namespace A398657.P7663358157476977727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245301 n - A398666 n

end

end A398657.P7663358157476977727

namespace A398657

/-- `A245301(n)-A398666(n)` -/
def P7663358157476977727.Spec : Prop :=
  ∀ n, P7663358157476977727.a n = A398657 n

end A398657

/-! ## A398657.P14708297284547790718

`A182260(n+1)-A110655(n)`
-/

namespace A398657.P14708297284547790718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182260 (n + 1) - A110655 n

end

end A398657.P14708297284547790718

namespace A398657

/-- `A182260(n+1)-A110655(n)` -/
def P14708297284547790718.Spec : Prop :=
  ∀ n, P14708297284547790718.a n = A398657 n

end A398657

/-! ## A398657.P1570430805826134956

`A393231(n+1)-A340648(n)`
-/

namespace A398657.P1570430805826134956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393231 (n + 1) - A340648 n

end

end A398657.P1570430805826134956

namespace A398657

/-- `A393231(n+1)-A340648(n)` -/
def P1570430805826134956.Spec : Prop :=
  ∀ n, P1570430805826134956.a n = A398657 n

end A398657

/-! ## A398657.P13684391056851171876

`A398730(n)+A398651(n)+A398651(n)`
-/

namespace A398657.P13684391056851171876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398730 n + A398651 n + A398651 n

end

end A398657.P13684391056851171876

namespace A398657

/-- `A398730(n)+A398651(n)+A398651(n)` -/
def P13684391056851171876.Spec : Prop :=
  ∀ n, P13684391056851171876.a n = A398657 n

end A398657

/-! ## A398657.P9755453954887540067

`A398665(n)+A398651(n)-A398661(n)`
-/

namespace A398657.P9755453954887540067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398665 n + A398651 n - A398661 n

end

end A398657.P9755453954887540067

namespace A398657

/-- `A398665(n)+A398651(n)-A398661(n)` -/
def P9755453954887540067.Spec : Prop :=
  ∀ n, P9755453954887540067.a n = A398657 n

end A398657

/-! ## A398657.P10684886015846038369

`A398729(n)+A051925(n+1)`
-/

namespace A398657.P10684886015846038369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398729 n + A051925 (n + 1)

end

end A398657.P10684886015846038369

namespace A398657

/-- `A398729(n)+A051925(n+1)` -/
def P10684886015846038369.Spec : Prop :=
  ∀ n, P10684886015846038369.a n = A398657 n

end A398657

/-!
# A398658: Upper (1, 3/2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398658, the canonical program `A398658.P7109608082969465480` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398658 has offset 0).

The definition of A398658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398658.P7109608082969465480

`∑[∑[∑[6-a(n-2)]]]` with `a(0)=0, a(1)=3, a(2)=2`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398658

/-- `∑[∑[∑[6-a(n-2)]]]` -/
def P7109608082969465480.Spec : Prop :=
  ∀ n, P7109608082969465480.a n = A398658 n

theorem P7109608082969465480.correct : P7109608082969465480.Spec := by
  intro n
  simp only [A398658]

end A398658

/-! ## A398658.P11845921000010075147

`n*∑[n+1]-floor(∑[n]/2)`
-/

namespace A398658.P11845921000010075147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 2⌋

end

end A398658.P11845921000010075147

namespace A398658

/-- `n*∑[n+1]-floor(∑[n]/2)` -/
def P11845921000010075147.Spec : Prop :=
  ∀ n, P11845921000010075147.a n = A398658 n

end A398658

/-! ## A398658.P8476455954538223545

`round(lcm(n+1, n*(2*n+3))/4)`
-/

namespace A398658.P8476455954538223545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm (n + 1) (n * (2 * n + 3)) : ℚ) / 4)

end

end A398658.P8476455954538223545

namespace A398658

/-- `round(lcm(n+1, n*(2*n+3))/4)` -/
def P8476455954538223545.Spec : Prop :=
  ∀ n, P8476455954538223545.a n = A398658 n

end A398658

/-! ## A398658.P16606287335219657291

`round((gcd(n, 2*n)+n*(n+2)*(2*n+1))/4)`
-/

namespace A398658.P16606287335219657291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.gcd n (2 * n) + n * (n + 2) * (2 * n + 1) : ℚ) / 4)

end

end A398658.P16606287335219657291

namespace A398658

/-- `round((gcd(n, 2*n)+n*(n+2)*(2*n+1))/4)` -/
def P16606287335219657291.Spec : Prop :=
  ∀ n, P16606287335219657291.a n = A398658 n

end A398658

/-! ## A398658.P1956458925469840700

`ceil(A163815(n)/4)`
-/

namespace A398658.P1956458925469840700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A163815 n : ℚ) / 4⌉

end

end A398658.P1956458925469840700

namespace A398658

/-- `ceil(A163815(n)/4)` -/
def P1956458925469840700.Spec : Prop :=
  ∀ n, P1956458925469840700.a n = A398658 n

end A398658

/-! ## A398658.P14381190795900889084

`ceil(∑[A045944(n)/2])`
-/

namespace A398658.P14381190795900889084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045944 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A398658.P14381190795900889084

namespace A398658

/-- `ceil(∑[A045944(n)/2])` -/
def P14381190795900889084.Spec : Prop :=
  ∀ n, P14381190795900889084.a n = A398658 n

end A398658

/-! ## A398658.P13520466515251140993

`floor((A081436(n)-n)/2)`
-/

namespace A398658.P13520466515251140993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081436 n - (n : ℤ) : ℚ) / 2⌋

end

end A398658.P13520466515251140993

namespace A398658

/-- `floor((A081436(n)-n)/2)` -/
def P13520466515251140993.Spec : Prop :=
  ∀ n, P13520466515251140993.a n = A398658 n

end A398658

/-! ## A398658.P2838178691826250733

`∑[A005449(n)+A004525(n)]`
-/

namespace A398658.P2838178691826250733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n + A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398658.P2838178691826250733

namespace A398658

/-- `∑[A005449(n)+A004525(n)]` -/
def P2838178691826250733.Spec : Prop :=
  ∀ n, P2838178691826250733.a n = A398658 n

end A398658

/-! ## A398658.P15595437914905910976

`∑[A194274(2*n)-A194274(n)]`
-/

namespace A398658.P15595437914905910976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (2 * n) - A194274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398658.P15595437914905910976

namespace A398658

/-- `∑[A194274(2*n)-A194274(n)]` -/
def P15595437914905910976.Spec : Prop :=
  ∀ n, P15595437914905910976.a n = A398658 n

end A398658

/-! ## A398658.P7054620559772222520

`round(A103889(2*(n+2))*A000217(n)/2)`
-/

namespace A398658.P7054620559772222520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A103889 (2 * (n + 2)) * A000217 n : ℚ) / 2)

end

end A398658.P7054620559772222520

namespace A398658

/-- `round(A103889(2*(n+2))*A000217(n)/2)` -/
def P7054620559772222520.Spec : Prop :=
  ∀ n, P7054620559772222520.a n = A398658 n

end A398658

/-!
# A398659: Lower (1, 6/5) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398659, the canonical program `A398659.P14837806975831065424` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398659 has offset 0).

The definition of A398659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398659.P14837806975831065424

`floor(∑[n*(n/5+n+1)])`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398659

/-- `floor(∑[n*(n/5+n+1)])` -/
def P14837806975831065424.Spec : Prop :=
  ∀ n, P14837806975831065424.a n = A398659 n

theorem P14837806975831065424.correct : P14837806975831065424.Spec := by
  intro n
  simp only [A398659]

end A398659

/-! ## A398659.P11152225659526757990

`A398660(n)-A011655(A072154(2*n+1))`
-/

namespace A398659.P11152225659526757990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398660 n - A011655 (A072154 (2 * n + 1)).toNat

end

end A398659.P11152225659526757990

namespace A398659

/-- `A398660(n)-A011655(A072154(2*n+1))` -/
def P11152225659526757990.Spec : Prop :=
  ∀ n, P11152225659526757990.a n = A398659 n

end A398659

/-! ## A398659.P10508033264705973774

`A398660(n)-A000035(A000078(2*(n+1)))`
-/

namespace A398659.P10508033264705973774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398660 n - A000035 (A000078 (2 * (n + 1))).toNat

end

end A398659.P10508033264705973774

namespace A398659

/-- `A398660(n)-A000035(A000078(2*(n+1)))` -/
def P10508033264705973774.Spec : Prop :=
  ∀ n, P10508033264705973774.a n = A398659 n

end A398659

/-!
# A398660: Upper (1, 6/5) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398660, the canonical program `A398660.P9653228228003721502` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398660 has offset 0).

The definition of A398660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398660.P9653228228003721502

`ogf((3x+5x^3+x^4+3x^5)/(1-3x+3x^2-x^3-x^5+3x^6-3x^7+x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398660

/-- `ogf((3x+5x^3+x^4+3x^5)/(1-3x+3x^2-x^3-x^5+3x^6-3x^7+x^8))` -/
def P9653228228003721502.Spec : Prop :=
  ∀ n, P9653228228003721502.a n = A398660 n

theorem P9653228228003721502.correct : P9653228228003721502.Spec := by
  intro n
  simp only [A398660]

end A398660

/-!
# A398661: Lower (1/2, 1) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398661, the canonical program `A398661.P16912725788563947793` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398661 has offset 0).

The definition of A398661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398661.P16912725788563947793

`ogf((x+2x^2+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398661

/-- `ogf((x+2x^2+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P16912725788563947793.Spec : Prop :=
  ∀ n, P16912725788563947793.a n = A398661 n

theorem P16912725788563947793.correct : P16912725788563947793.Spec := by
  intro n
  simp only [A398661]

end A398661

/-! ## A398661.P4540804864404845659

`floor(∑[n/2+n²])`
-/

namespace A398661.P4540804864404845659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 + (n ^ 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A398661.P4540804864404845659

namespace A398661

/-- `floor(∑[n/2+n²])` -/
def P4540804864404845659.Spec : Prop :=
  ∀ n, P4540804864404845659.a n = A398661 n

end A398661

/-! ## A398661.P7484010811292010986

`∑[∑[∑[4-a(n-2)]]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A398661.P7484010811292010986
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f3 =>
  4 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398661.P7484010811292010986

namespace A398661

/-- `∑[∑[∑[4-a(n-2)]]]` -/
def P7484010811292010986.Spec : Prop :=
  ∀ n, P7484010811292010986.a n = A398661 n

end A398661

/-! ## A398661.P17984391190183077925

`n²+n+a(n-1)-(floor(n/4)+ceil(n/4))` with `a(0)=0`
-/

namespace A398661.P17984391190183077925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 2 + n : ℤ) + a (n - 1) - (⌊(n : ℚ) / 4⌋ + ⌈(n : ℚ) / 4⌉)

end

end A398661.P17984391190183077925

namespace A398661

/-- `n²+n+a(n-1)-(floor(n/4)+ceil(n/4))` -/
def P17984391190183077925.Spec : Prop :=
  ∀ n, P17984391190183077925.a n = A398661 n

end A398661

/-! ## A398661.P16296185802553888491

`A398663(n)-∑[n]`
-/

namespace A398661.P16296185802553888491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398663 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398661.P16296185802553888491

namespace A398661

/-- `A398663(n)-∑[n]` -/
def P16296185802553888491.Spec : Prop :=
  ∀ n, P16296185802553888491.a n = A398661 n

end A398661

/-! ## A398661.P513780580004083676

`(A213485(n)-n)/3`
-/

namespace A398661.P513780580004083676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213485 n - (n : ℤ) : ℚ) / 3

end

end A398661.P513780580004083676

namespace A398661

/-- `(A213485(n)-n)/3` -/
def P513780580004083676.Spec : Prop :=
  ∀ n, P513780580004083676.a n = (A398661 n : ℚ)

end A398661

/-! ## A398661.P12098897476695019187

`A398665(n)-∑[n²]`
-/

namespace A398661.P12098897476695019187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398665 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398661.P12098897476695019187

namespace A398661

/-- `A398665(n)-∑[n²]` -/
def P12098897476695019187.Spec : Prop :=
  ∀ n, P12098897476695019187.a n = A398661 n

end A398661

/-! ## A398661.P347120959532579214

`∑[(n+1)²-A047251(n+1)]`
-/

namespace A398661.P347120959532579214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A047251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398661.P347120959532579214

namespace A398661

/-- `∑[(n+1)²-A047251(n+1)]` -/
def P347120959532579214.Spec : Prop :=
  ∀ n, P347120959532579214.a n = A398661 n

end A398661

/-! ## A398661.P17363990483885388784

`A231559(n)+A006527(n)`
-/

namespace A398661.P17363990483885388784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231559 n + A006527 n

end

end A398661.P17363990483885388784

namespace A398661

/-- `A231559(n)+A006527(n)` -/
def P17363990483885388784.Spec : Prop :=
  ∀ n, P17363990483885388784.a n = A398661 n

end A398661

/-! ## A398661.P7242140904875179186

`A398852(n)+A007290(n)`
-/

namespace A398661.P7242140904875179186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398852 n + A007290 n

end

end A398661.P7242140904875179186

namespace A398661

/-- `A398852(n)+A007290(n)` -/
def P7242140904875179186.Spec : Prop :=
  ∀ n, P7242140904875179186.a n = A398661 n

end A398661

/-! ## A398661.P13505303526550812258

`A398657(n)-A000292(n)`
-/

namespace A398661.P13505303526550812258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398657 n - A000292 n

end

end A398661.P13505303526550812258

namespace A398661

/-- `A398657(n)-A000292(n)` -/
def P13505303526550812258.Spec : Prop :=
  ∀ n, P13505303526550812258.a n = A398661 n

end A398661

/-! ## A398661.P14158976681242118392

`A002411(n)-A398730(n)`
-/

namespace A398661.P14158976681242118392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n - A398730 n

end

end A398661.P14158976681242118392

namespace A398661

/-- `A002411(n)-A398730(n)` -/
def P14158976681242118392.Spec : Prop :=
  ∀ n, P14158976681242118392.a n = A398661 n

end A398661

/-! ## A398661.P1363667294498455007

`A398727(n)-A006331(n)`
-/

namespace A398661.P1363667294498455007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398727 n - A006331 n

end

end A398661.P1363667294498455007

namespace A398661

/-- `A398727(n)-A006331(n)` -/
def P1363667294498455007.Spec : Prop :=
  ∀ n, P1363667294498455007.a n = A398661 n

end A398661

/-! ## A398661.P74835293090477030

`A016061(n)-A398662(n)`
-/

namespace A398661.P74835293090477030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 n - A398662 n

end

end A398661.P74835293090477030

namespace A398661

/-- `A016061(n)-A398662(n)` -/
def P74835293090477030.Spec : Prop :=
  ∀ n, P74835293090477030.a n = A398661 n

end A398661

/-! ## A398661.P2596134373417163888

`A027480(n)-A398652(n)`
-/

namespace A398661.P2596134373417163888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n - A398652 n

end

end A398661.P2596134373417163888

namespace A398661

/-- `A027480(n)-A398652(n)` -/
def P2596134373417163888.Spec : Prop :=
  ∀ n, P2596134373417163888.a n = A398661 n

end A398661

/-! ## A398661.P12439968454552079347

`A101986(n)-A340648(n)`
-/

namespace A398661.P12439968454552079347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 n - A340648 n

end

end A398661.P12439968454552079347

namespace A398661

/-- `A101986(n)-A340648(n)` -/
def P12439968454552079347.Spec : Prop :=
  ∀ n, P12439968454552079347.a n = A398661 n

end A398661

/-! ## A398661.P15027407880295376694

`A162148(n)-A398658(n)`
-/

namespace A398661.P15027407880295376694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n - A398658 n

end

end A398661.P15027407880295376694

namespace A398661

/-- `A162148(n)-A398658(n)` -/
def P15027407880295376694.Spec : Prop :=
  ∀ n, P15027407880295376694.a n = A398661 n

end A398661

/-! ## A398661.P8202934384978621695

`A210440(n)-A398664(n)`
-/

namespace A398661.P8202934384978621695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n - A398664 n

end

end A398661.P8202934384978621695

namespace A398661

/-- `A210440(n)-A398664(n)` -/
def P8202934384978621695.Spec : Prop :=
  ∀ n, P8202934384978621695.a n = A398661 n

end A398661

/-! ## A398661.P13289701110257490590

`A331987(n)-A398728(n)`
-/

namespace A398661.P13289701110257490590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331987 n - A398728 n

end

end A398661.P13289701110257490590

namespace A398661

/-- `A331987(n)-A398728(n)` -/
def P13289701110257490590.Spec : Prop :=
  ∀ n, P13289701110257490590.a n = A398661 n

end A398661

/-! ## A398661.P18347351679904382420

`A398664(n)-A192447(n+1)`
-/

namespace A398661.P18347351679904382420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398664 n - A192447 (n + 1)

end

end A398661.P18347351679904382420

namespace A398661

/-- `A398664(n)-A192447(n+1)` -/
def P18347351679904382420.Spec : Prop :=
  ∀ n, P18347351679904382420.a n = A398661 n

end A398661

/-!
# A398662: Upper (1/2, 1) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398662, the canonical program `A398662.P13931983562056736578` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398662 has offset 0).

The definition of A398662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398662.P13931983562056736578

`ogf((2x-x^2+3x^3)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398662

/-- `ogf((2x-x^2+3x^3)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P13931983562056736578.Spec : Prop :=
  ∀ n, P13931983562056736578.a n = A398662 n

theorem P13931983562056736578.correct : P13931983562056736578.Spec := by
  intro n
  simp only [A398662]

end A398662

/-! ## A398662.P4295618529695888779

`ceil(∑[n²+n/2])`
-/

namespace A398662.P4295618529695888779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A398662.P4295618529695888779

namespace A398662

/-- `ceil(∑[n²+n/2])` -/
def P4295618529695888779.Spec : Prop :=
  ∀ n, P4295618529695888779.a n = A398662 n

end A398662

/-! ## A398662.P9155539310895721684

`∑[∑[2*n-and(2, n)/2]]`
-/

namespace A398662.P9155539310895721684
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) - (Nat.land 2 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398662.P9155539310895721684

namespace A398662

/-- `∑[∑[2*n-and(2, n)/2]]` -/
def P9155539310895721684.Spec : Prop :=
  ∀ n, P9155539310895721684.a n = (A398662 n : ℚ)

end A398662

/-! ## A398662.P7758636290480998360

`∑[∑[a(n-4)+8]]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A398662.P7758636290480998360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 5] fun n f2 =>
  f2 (n - 4) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398662.P7758636290480998360

namespace A398662

/-- `∑[∑[a(n-4)+8]]` -/
def P7758636290480998360.Spec : Prop :=
  ∀ n, (P7758636290480998360.a n : ℤ) = A398662 n

end A398662

/-! ## A398662.P15849798363696984814

`∑[∑[∑[4-a(n-2)]]]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A398662.P15849798363696984814
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n f3 =>
  4 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398662.P15849798363696984814

namespace A398662

/-- `∑[∑[∑[4-a(n-2)]]]` -/
def P15849798363696984814.Spec : Prop :=
  ∀ n, P15849798363696984814.a n = A398662 n

end A398662

/-! ## A398662.P5848609088010160222

`floor((∑[C(2*n+1, 2)]+1)/2)`
-/

namespace A398662.P5848609088010160222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2⌋

end

end A398662.P5848609088010160222

namespace A398662

/-- `floor((∑[C(2*n+1, 2)]+1)/2)` -/
def P5848609088010160222.Spec : Prop :=
  ∀ n, P5848609088010160222.a n = A398662 n

end A398662

/-! ## A398662.P11413814381037016168

`floor((∑[lcm(n, 2*n+1)]+1)/2)`
-/

namespace A398662.P11413814381037016168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2⌋

end

end A398662.P11413814381037016168

namespace A398662

/-- `floor((∑[lcm(n, 2*n+1)]+1)/2)` -/
def P11413814381037016168.Spec : Prop :=
  ∀ n, P11413814381037016168.a n = A398662 n

end A398662

/-! ## A398662.P14607023635622557859

`∑[∑[2*n+1-gcd(2, ∑[n+1])]]`
-/

namespace A398662.P14607023635622557859
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398662.P14607023635622557859

namespace A398662

/-- `∑[∑[2*n+1-gcd(2, ∑[n+1])]]` -/
def P14607023635622557859.Spec : Prop :=
  ∀ n, P14607023635622557859.a n = A398662 n

end A398662

/-! ## A398662.P12974623615558168703

`A398664(n)-∑[n]`
-/

namespace A398662.P12974623615558168703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398664 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398662.P12974623615558168703

namespace A398662

/-- `A398664(n)-∑[n]` -/
def P12974623615558168703.Spec : Prop :=
  ∀ n, P12974623615558168703.a n = A398662 n

end A398662

/-! ## A398662.P17955460373713902816

`∑[∑[A047605(n+1)]]`
-/

namespace A398662.P17955460373713902816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047605 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398662.P17955460373713902816

namespace A398662

/-- `∑[∑[A047605(n+1)]]` -/
def P17955460373713902816.Spec : Prop :=
  ∀ n, P17955460373713902816.a n = A398662 n

end A398662

/-! ## A398662.P9706584354988846311

`∑[A004525(n)+n²]`
-/

namespace A398662.P9706584354988846311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398662.P9706584354988846311

namespace A398662

/-- `∑[A004525(n)+n²]` -/
def P9706584354988846311.Spec : Prop :=
  ∀ n, P9706584354988846311.a n = A398662 n

end A398662

/-! ## A398662.P11388812155955387747

`A398666(n)-∑[n²]`
-/

namespace A398662.P11388812155955387747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398666 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398662.P11388812155955387747

namespace A398662

/-- `A398666(n)-∑[n²]` -/
def P11388812155955387747.Spec : Prop :=
  ∀ n, P11388812155955387747.a n = A398662 n

end A398662

/-! ## A398662.P3545628092120804672

`A054925(n+1)+∑[n²]`
-/

namespace A398662.P3545628092120804672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398662.P3545628092120804672

namespace A398662

/-- `A054925(n+1)+∑[n²]` -/
def P3545628092120804672.Spec : Prop :=
  ∀ n, P3545628092120804672.a n = A398662 n

end A398662

/-! ## A398662.P13410256738105370810

`A340648(n)+A006527(n)`
-/

namespace A398662.P13410256738105370810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340648 n + A006527 n

end

end A398662.P13410256738105370810

namespace A398662

/-- `A340648(n)+A006527(n)` -/
def P13410256738105370810.Spec : Prop :=
  ∀ n, P13410256738105370810.a n = A398662 n

end A398662

/-! ## A398662.P2842474908450873092

`A398853(n)+A007290(n)`
-/

namespace A398662.P2842474908450873092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398853 n + A007290 n

end

end A398662.P2842474908450873092

namespace A398662

/-- `A398853(n)+A007290(n)` -/
def P2842474908450873092.Spec : Prop :=
  ∀ n, P2842474908450873092.a n = A398662 n

end A398662

/-! ## A398662.P9520973009751634957

`A101986(n)-A231559(n)`
-/

namespace A398662.P9520973009751634957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 n - A231559 n

end

end A398662.P9520973009751634957

namespace A398662

/-- `A101986(n)-A231559(n)` -/
def P9520973009751634957.Spec : Prop :=
  ∀ n, P9520973009751634957.a n = A398662 n

end A398662

/-! ## A398662.P7477723220496325948

`A398658(n)-A000292(n)`
-/

namespace A398662.P7477723220496325948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398658 n - A000292 n

end

end A398662.P7477723220496325948

namespace A398662

/-- `A398658(n)-A000292(n)` -/
def P7477723220496325948.Spec : Prop :=
  ∀ n, P7477723220496325948.a n = A398662 n

end A398662

/-! ## A398662.P4927160308740594143

`A002411(n)-A398729(n)`
-/

namespace A398662.P4927160308740594143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n - A398729 n

end

end A398662.P4927160308740594143

namespace A398662

/-- `A002411(n)-A398729(n)` -/
def P4927160308740594143.Spec : Prop :=
  ∀ n, P4927160308740594143.a n = A398662 n

end A398662

/-! ## A398662.P9136423595401887125

`A398728(n)-A006331(n)`
-/

namespace A398662.P9136423595401887125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398728 n - A006331 n

end

end A398662.P9136423595401887125

namespace A398662

/-- `A398728(n)-A006331(n)` -/
def P9136423595401887125.Spec : Prop :=
  ∀ n, P9136423595401887125.a n = A398662 n

end A398662

/-! ## A398662.P12752183759009780238

`A016061(n)-A398661(n)`
-/

namespace A398662.P12752183759009780238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 n - A398661 n

end

end A398662.P12752183759009780238

namespace A398662

/-- `A016061(n)-A398661(n)` -/
def P12752183759009780238.Spec : Prop :=
  ∀ n, P12752183759009780238.a n = A398662 n

end A398662

/-!
# A398663: Lower (3/2, 1) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398663, the canonical program `A398663.P17264390302320175591` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398663 has offset 0).

The definition of A398663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398663.P17264390302320175591

`ogf((2x+x^2+x^3)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398663

/-- `ogf((2x+x^2+x^3)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P17264390302320175591.Spec : Prop :=
  ∀ n, P17264390302320175591.a n = A398663 n

theorem P17264390302320175591.correct : P17264390302320175591.Spec := by
  intro n
  simp only [A398663]

end A398663

/-! ## A398663.P9651298208318078528

`floor(∑[n*(3/2+n)])`
-/

namespace A398663.P9651298208318078528
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((3 : ℚ) / 2 + (n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A398663.P9651298208318078528

namespace A398663

/-- `floor(∑[n*(3/2+n)])` -/
def P9651298208318078528.Spec : Prop :=
  ∀ n, P9651298208318078528.a n = A398663 n

end A398663

/-! ## A398663.P17177081760684118718

`∑[∑[and(2, n)/2+2*n]]`
-/

namespace A398663.P17177081760684118718
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2 + (2 * n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398663.P17177081760684118718

namespace A398663

/-- `∑[∑[and(2, n)/2+2*n]]` -/
def P17177081760684118718.Spec : Prop :=
  ∀ n, P17177081760684118718.a n = (A398663 n : ℚ)

end A398663

/-! ## A398663.P12095524577284708113

`∑[∑[a(n-4)+8]]` with `a(0)=0, a(1)=2, a(2)=5, a(3)=7`
-/

namespace A398663.P12095524577284708113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5, 7] fun n f2 =>
  f2 (n - 4) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398663.P12095524577284708113

namespace A398663

/-- `∑[∑[a(n-4)+8]]` -/
def P12095524577284708113.Spec : Prop :=
  ∀ n, (P12095524577284708113.a n : ℤ) = A398663 n

end A398663

/-! ## A398663.P15006752496299677859

`∑[∑[∑[4-a(n-2)]]]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A398663.P15006752496299677859
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n f3 =>
  4 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398663.P15006752496299677859

namespace A398663

/-- `∑[∑[∑[4-a(n-2)]]]` -/
def P15006752496299677859.Spec : Prop :=
  ∀ n, P15006752496299677859.a n = A398663 n

end A398663

/-! ## A398663.P8747533088015376470

`∑[∑[2*n+1-∑[n+1]%2]]`
-/

namespace A398663.P8747533088015376470
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f3 j) % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398663.P8747533088015376470

namespace A398663

/-- `∑[∑[2*n+1-∑[n+1]%2]]` -/
def P8747533088015376470.Spec : Prop :=
  ∀ n, P8747533088015376470.a n = A398663 n

end A398663

/-! ## A398663.P15993970843176175009

`∑[∑[2*n+1-and(1, ∑[n+1])]]`
-/

namespace A398663.P15993970843176175009
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398663.P15993970843176175009

namespace A398663

/-- `∑[∑[2*n+1-and(1, ∑[n+1])]]` -/
def P15993970843176175009.Spec : Prop :=
  ∀ n, P15993970843176175009.a n = A398663 n

end A398663

/-! ## A398663.P3608925978194162021

`A398661(n)+∑[n]`
-/

namespace A398663.P3608925978194162021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398661 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398663.P3608925978194162021

namespace A398663

/-- `A398661(n)+∑[n]` -/
def P3608925978194162021.Spec : Prop :=
  ∀ n, P3608925978194162021.a n = A398663 n

end A398663

/-! ## A398663.P14868225256569115522

`∑[∑[A047481(n+1)]]`
-/

namespace A398663.P14868225256569115522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047481 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398663.P14868225256569115522

namespace A398663

/-- `∑[∑[A047481(n+1)]]` -/
def P14868225256569115522.Spec : Prop :=
  ∀ n, P14868225256569115522.a n = A398663 n

end A398663

/-! ## A398663.P7868685263567900600

`A281026(n)+∑[n²]`
-/

namespace A398663.P7868685263567900600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281026 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398663.P7868685263567900600

namespace A398663

/-- `A281026(n)+∑[n²]` -/
def P7868685263567900600.Spec : Prop :=
  ∀ n, P7868685263567900600.a n = A398663 n

end A398663

/-! ## A398663.P11595169871848314918

`∑[A047273(n+1)+n²]`
-/

namespace A398663.P11595169871848314918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398663.P11595169871848314918

namespace A398663

/-- `∑[A047273(n+1)+n²]` -/
def P11595169871848314918.Spec : Prop :=
  ∀ n, P11595169871848314918.a n = A398663 n

end A398663

/-! ## A398663.P10809086859279648225

`A398651(n)+A000292(n)`
-/

namespace A398663.P10809086859279648225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398651 n + A000292 n

end

end A398663.P10809086859279648225

namespace A398663

/-- `A398651(n)+A000292(n)` -/
def P10809086859279648225.Spec : Prop :=
  ∀ n, P10809086859279648225.a n = A398663 n

end A398663

/-! ## A398663.P824951273035505149

`A397978(n)+A006527(n)`
-/

namespace A398663.P824951273035505149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397978 n + A006527 n

end

end A398663.P824951273035505149

namespace A398663

/-- `A397978(n)+A006527(n)` -/
def P824951273035505149.Spec : Prop :=
  ∀ n, P824951273035505149.a n = A398663 n

end A398663

/-! ## A398663.P17229258963551378747

`A398729(n)+A006503(n)`
-/

namespace A398663.P17229258963551378747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398729 n + A006503 n

end

end A398663.P17229258963551378747

namespace A398663

/-- `A398729(n)+A006503(n)` -/
def P17229258963551378747.Spec : Prop :=
  ∀ n, P17229258963551378747.a n = A398663 n

end A398663

/-! ## A398663.P2653663422453030717

`A398860(n)+A007290(n)`
-/

namespace A398663.P2653663422453030717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398860 n + A007290 n

end

end A398663.P2653663422453030717

namespace A398663

/-- `A398860(n)+A007290(n)` -/
def P2653663422453030717.Spec : Prop :=
  ∀ n, P2653663422453030717.a n = A398663 n

end A398663

/-! ## A398663.P18106310523380631400

`A398727(n)-A002412(n)`
-/

namespace A398663.P18106310523380631400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398727 n - A002412 n

end

end A398663.P18106310523380631400

namespace A398663

/-- `A398727(n)-A002412(n)` -/
def P18106310523380631400.Spec : Prop :=
  ∀ n, P18106310523380631400.a n = A398663 n

end A398663

/-! ## A398663.P608776360615634205

`A006002(n)-A398730(n)`
-/

namespace A398663.P608776360615634205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n - A398730 n

end

end A398663.P608776360615634205

namespace A398663

/-- `A006002(n)-A398730(n)` -/
def P608776360615634205.Spec : Prop :=
  ∀ n, P608776360615634205.a n = A398663 n

end A398663

/-! ## A398663.P17693402021270545019

`A134481(n)-A398658(n)`
-/

namespace A398663.P17693402021270545019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n - A398658 n

end

end A398663.P17693402021270545019

namespace A398663

/-- `A134481(n)-A398658(n)` -/
def P17693402021270545019.Spec : Prop :=
  ∀ n, P17693402021270545019.a n = A398663 n

end A398663

/-! ## A398663.P12109373503395268344

`A210440(n)-A398662(n)`
-/

namespace A398663.P12109373503395268344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n - A398662 n

end

end A398663.P12109373503395268344

namespace A398663

/-- `A210440(n)-A398662(n)` -/
def P12109373503395268344.Spec : Prop :=
  ∀ n, P12109373503395268344.a n = A398663 n

end A398663

/-! ## A398663.P14907535948152184326

`A077414(n+1)-A398652(n)`
-/

namespace A398663.P14907535948152184326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077414 (n + 1) - A398652 n

end

end A398663.P14907535948152184326

namespace A398663

/-- `A077414(n+1)-A398652(n)` -/
def P14907535948152184326.Spec : Prop :=
  ∀ n, P14907535948152184326.a n = A398663 n

end A398663

/-!
# A398664: Upper (3/2, 1) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398664, the canonical program `A398664.P2738383818631677079` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398664 has offset 0).

The definition of A398664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398664.P2738383818631677079

`ogf((3x-2x^2+4x^3-x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398664

/-- `ogf((3x-2x^2+4x^3-x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P2738383818631677079.Spec : Prop :=
  ∀ n, P2738383818631677079.a n = A398664 n

theorem P2738383818631677079.correct : P2738383818631677079.Spec := by
  intro n
  simp only [A398664]

end A398664

/-! ## A398664.P16514133924088164228

`ceil(∑[∑[2*n]+n/2])`
-/

namespace A398664.P16514133924088164228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) + (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A398664.P16514133924088164228

namespace A398664

/-- `ceil(∑[∑[2*n]+n/2])` -/
def P16514133924088164228.Spec : Prop :=
  ∀ n, P16514133924088164228.a n = A398664 n

end A398664

/-! ## A398664.P3418246121403779204

`∑[∑[∑[4-a(n-2)]]]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2`
-/

namespace A398664.P3418246121403779204
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1, 2] fun n f3 =>
  4 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398664.P3418246121403779204

namespace A398664

/-- `∑[∑[∑[4-a(n-2)]]]` -/
def P3418246121403779204.Spec : Prop :=
  ∀ n, P3418246121403779204.a n = A398664 n

end A398664

/-! ## A398664.P14033190082688714894

`floor((∑[lcm(n+1, 2*n+1)]-n)/2)`
-/

namespace A398664.P14033190082688714894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℚ) / 2⌋

end

end A398664.P14033190082688714894

namespace A398664

/-- `floor((∑[lcm(n+1, 2*n+1)]-n)/2)` -/
def P14033190082688714894.Spec : Prop :=
  ∀ n, P14033190082688714894.a n = A398664 n

end A398664

/-! ## A398664.P10997022091243957785

`floor(n/4)+ceil(n/4)+n²+n+a(n-1)` with `a(0)=0`
-/

namespace A398664.P10997022091243957785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / 4⌋ + ⌈(n : ℚ) / 4⌉ + ((n ^ 2 + n : ℤ) + a (n - 1))

end

end A398664.P10997022091243957785

namespace A398664

/-- `floor(n/4)+ceil(n/4)+n²+n+a(n-1)` -/
def P10997022091243957785.Spec : Prop :=
  ∀ n, P10997022091243957785.a n = A398664 n

end A398664

/-! ## A398664.P1993495354671193131

`A398662(n)+∑[n]`
-/

namespace A398664.P1993495354671193131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398662 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398664.P1993495354671193131

namespace A398664

/-- `A398662(n)+∑[n]` -/
def P1993495354671193131.Spec : Prop :=
  ∀ n, P1993495354671193131.a n = A398664 n

end A398664

/-! ## A398664.P15305147892470409510

`∑[A047229(n+1)+n²]`
-/

namespace A398664.P15305147892470409510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398664.P15305147892470409510

namespace A398664

/-- `∑[A047229(n+1)+n²]` -/
def P15305147892470409510.Spec : Prop :=
  ∀ n, P15305147892470409510.a n = A398664 n

end A398664

/-! ## A398664.P14091385699482337323

`∑[(n+1)²]-A391537(n+1)`
-/

namespace A398664.P14091385699482337323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A391537 (n + 1)

end

end A398664.P14091385699482337323

namespace A398664

/-- `∑[(n+1)²]-A391537(n+1)` -/
def P14091385699482337323.Spec : Prop :=
  ∀ n, P14091385699482337323.a n = A398664 n

end A398664

/-! ## A398664.P12916559271486623249

`A398652(n)+A000292(n)`
-/

namespace A398664.P12916559271486623249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398652 n + A000292 n

end

end A398664.P12916559271486623249

namespace A398664

/-- `A398652(n)+A000292(n)` -/
def P12916559271486623249.Spec : Prop :=
  ∀ n, P12916559271486623249.a n = A398664 n

end A398664

/-! ## A398664.P12858835812620481897

`A397979(n)+A006527(n)`
-/

namespace A398664.P12858835812620481897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397979 n + A006527 n

end

end A398664.P12858835812620481897

namespace A398664

/-- `A397979(n)+A006527(n)` -/
def P12858835812620481897.Spec : Prop :=
  ∀ n, P12858835812620481897.a n = A398664 n

end A398664

/-! ## A398664.P1767894665310260750

`A398730(n)+A006503(n)`
-/

namespace A398664.P1767894665310260750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398730 n + A006503 n

end

end A398664.P1767894665310260750

namespace A398664

/-- `A398730(n)+A006503(n)` -/
def P1767894665310260750.Spec : Prop :=
  ∀ n, P1767894665310260750.a n = A398664 n

end A398664

/-! ## A398664.P6361457807215096399

`A398861(n)+A007290(n)`
-/

namespace A398664.P6361457807215096399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398861 n + A007290 n

end

end A398664.P6361457807215096399

namespace A398664

/-- `A398861(n)+A007290(n)` -/
def P6361457807215096399.Spec : Prop :=
  ∀ n, P6361457807215096399.a n = A398664 n

end A398664

/-! ## A398664.P7796731686869352815

`A398728(n)-A002412(n)`
-/

namespace A398664.P7796731686869352815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398728 n - A002412 n

end

end A398664.P7796731686869352815

namespace A398664

/-- `A398728(n)-A002412(n)` -/
def P7796731686869352815.Spec : Prop :=
  ∀ n, P7796731686869352815.a n = A398664 n

end A398664

/-! ## A398664.P10789647244080660483

`A006002(n)-A398729(n)`
-/

namespace A398664.P10789647244080660483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n - A398729 n

end

end A398664.P10789647244080660483

namespace A398664

/-- `A006002(n)-A398729(n)` -/
def P10789647244080660483.Spec : Prop :=
  ∀ n, P10789647244080660483.a n = A398664 n

end A398664

/-! ## A398664.P15860675957527821806

`A134481(n)-A398657(n)`
-/

namespace A398664.P15860675957527821806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n - A398657 n

end

end A398664.P15860675957527821806

namespace A398664

/-- `A134481(n)-A398657(n)` -/
def P15860675957527821806.Spec : Prop :=
  ∀ n, P15860675957527821806.a n = A398664 n

end A398664

/-! ## A398664.P3159513095980013351

`A210440(n)-A398661(n)`
-/

namespace A398664.P3159513095980013351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n - A398661 n

end

end A398664.P3159513095980013351

namespace A398664

/-- `A210440(n)-A398661(n)` -/
def P3159513095980013351.Spec : Prop :=
  ∀ n, P3159513095980013351.a n = A398664 n

end A398664

/-! ## A398664.P5959492215206144191

`A051925(n)+A024219(n+1)`
-/

namespace A398664.P5959492215206144191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 n + A024219 (n + 1)

end

end A398664.P5959492215206144191

namespace A398664

/-- `A051925(n)+A024219(n+1)` -/
def P5959492215206144191.Spec : Prop :=
  ∀ n, P5959492215206144191.a n = A398664 n

end A398664

/-! ## A398664.P1219779504280541174

`A398661(n)+A192447(n+1)`
-/

namespace A398664.P1219779504280541174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398661 n + A192447 (n + 1)

end

end A398664.P1219779504280541174

namespace A398664

/-- `A398661(n)+A192447(n+1)` -/
def P1219779504280541174.Spec : Prop :=
  ∀ n, P1219779504280541174.a n = A398664 n

end A398664

/-! ## A398664.P10371665778407290732

`A077414(n+1)-A398651(n)`
-/

namespace A398664.P10371665778407290732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077414 (n + 1) - A398651 n

end

end A398664.P10371665778407290732

namespace A398664

/-- `A077414(n+1)-A398651(n)` -/
def P10371665778407290732.Spec : Prop :=
  ∀ n, P10371665778407290732.a n = A398664 n

end A398664

/-! ## A398664.P6609418109437057432

`A135036(n+1)-A398727(n)`
-/

namespace A398664.P6609418109437057432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135036 (n + 1) - A398727 n

end

end A398664.P6609418109437057432

namespace A398664

/-- `A135036(n+1)-A398727(n)` -/
def P6609418109437057432.Spec : Prop :=
  ∀ n, P6609418109437057432.a n = A398664 n

end A398664

/-!
# A398665: Lower (1/2, 2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398665, the canonical program `A398665.P7646033834998085422` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398665 has offset 0).

The definition of A398665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398665.P7646033834998085422

`ogf((2x+3x^2+x^3+2x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398665

/-- `ogf((2x+3x^2+x^3+2x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P7646033834998085422.Spec : Prop :=
  ∀ n, P7646033834998085422.a n = A398665 n

theorem P7646033834998085422.correct : P7646033834998085422.Spec := by
  intro n
  simp only [A398665]

end A398665

/-! ## A398665.P3835184521464684166

`floor(∑[(2*n)²+n]/2)`
-/

namespace A398665.P3835184521464684166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A398665.P3835184521464684166

namespace A398665

/-- `floor(∑[(2*n)²+n]/2)` -/
def P3835184521464684166.Spec : Prop :=
  ∀ n, P3835184521464684166.a n = A398665 n

end A398665

/-! ## A398665.P2401505799522862756

`A398661(n)+∑[n²]`
-/

namespace A398665.P2401505799522862756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398661 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398665.P2401505799522862756

namespace A398665

/-- `A398661(n)+∑[n²]` -/
def P2401505799522862756.Spec : Prop :=
  ∀ n, P2401505799522862756.a n = A398665 n

end A398665

/-! ## A398665.P7927513762685548874

`A398727(n)-∑[n²]`
-/

namespace A398665.P7927513762685548874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398727 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398665.P7927513762685548874

namespace A398665

/-- `A398727(n)-∑[n²]` -/
def P7927513762685548874.Spec : Prop :=
  ∀ n, P7927513762685548874.a n = A398665 n

end A398665

/-! ## A398665.P10256005357914328093

`A398651(n)+n²*(n+1)/2`
-/

namespace A398665.P10256005357914328093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398651 n : ℚ) + (n ^ 2 * (n + 1) : ℚ) / 2

end

end A398665.P10256005357914328093

namespace A398665

/-- `A398651(n)+n²*(n+1)/2` -/
def P10256005357914328093.Spec : Prop :=
  ∀ n, P10256005357914328093.a n = (A398665 n : ℚ)

end A398665

/-! ## A398665.P9394195651324052970

`∑[A014105(n)-(floor(n/4)+ceil(n/4))]`
-/

namespace A398665.P9394195651324052970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - (⌊(n : ℚ) / 4⌋ + ⌈(n : ℚ) / 4⌉)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398665.P9394195651324052970

namespace A398665

/-- `∑[A014105(n)-(floor(n/4)+ceil(n/4))]` -/
def P9394195651324052970.Spec : Prop :=
  ∀ n, P9394195651324052970.a n = A398665 n

end A398665

/-! ## A398665.P16771386286008612883

`A281026(n)+A002412(n)`
-/

namespace A398665.P16771386286008612883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281026 n + A002412 n

end

end A398665.P16771386286008612883

namespace A398665

/-- `A281026(n)+A002412(n)` -/
def P16771386286008612883.Spec : Prop :=
  ∀ n, P16771386286008612883.a n = A398665 n

end A398665

/-! ## A398665.P15038979525616949063

`A397978(n)+A005900(n)`
-/

namespace A398665.P15038979525616949063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397978 n + A005900 n

end

end A398665.P15038979525616949063

namespace A398665

/-- `A397978(n)+A005900(n)` -/
def P15038979525616949063.Spec : Prop :=
  ∀ n, P15038979525616949063.a n = A398665 n

end A398665

/-! ## A398665.P10971734844273374504

`A398729(n)+A027480(n)`
-/

namespace A398665.P10971734844273374504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398729 n + A027480 n

end

end A398665.P10971734844273374504

namespace A398665

/-- `A398729(n)+A027480(n)` -/
def P10971734844273374504.Spec : Prop :=
  ∀ n, P10971734844273374504.a n = A398665 n

end A398665

/-! ## A398665.P2669749339444127573

`A162148(n)-A398652(n)`
-/

namespace A398665.P2669749339444127573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n - A398652 n

end

end A398665.P2669749339444127573

namespace A398665

/-- `A162148(n)-A398652(n)` -/
def P2669749339444127573.Spec : Prop :=
  ∀ n, P2669749339444127573.a n = A398665 n

end A398665

/-! ## A398665.P11784313594904084273

`A245301(n)-A398658(n)`
-/

namespace A398665.P11784313594904084273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245301 n - A398658 n

end

end A398665.P11784313594904084273

namespace A398665

/-- `A245301(n)-A398658(n)` -/
def P11784313594904084273.Spec : Prop :=
  ∀ n, P11784313594904084273.a n = A398665 n

end A398665

/-! ## A398665.P16770062617930913951

`A331987(n)-A398666(n)`
-/

namespace A398665.P16770062617930913951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331987 n - A398666 n

end

end A398665.P16770062617930913951

namespace A398665

/-- `A331987(n)-A398666(n)` -/
def P16770062617930913951.Spec : Prop :=
  ∀ n, P16770062617930913951.a n = A398665 n

end A398665

/-! ## A398665.P9652663439270856314

`A144945(n+1)-A398728(n)`
-/

namespace A398665.P9652663439270856314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144945 (n + 1) - A398728 n

end

end A398665.P9652663439270856314

namespace A398665

/-- `A144945(n+1)-A398728(n)` -/
def P9652663439270856314.Spec : Prop :=
  ∀ n, P9652663439270856314.a n = A398665 n

end A398665

/-! ## A398665.P18403989728545386766

`A398663(n)+A000330(n)-A000217(n)`
-/

namespace A398665.P18403989728545386766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398663 n + A000330 n - A000217 n

end

end A398665.P18403989728545386766

namespace A398665

/-- `A398663(n)+A000330(n)-A000217(n)` -/
def P18403989728545386766.Spec : Prop :=
  ∀ n, P18403989728545386766.a n = A398665 n

end A398665

/-!
# A398666: Upper (1/2, 2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398666, the canonical program `A398666.P15891971154703768520` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398666 has offset 0).

The definition of A398666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398666.P15891971154703768520

`ogf((3x+4x^3+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398666

/-- `ogf((3x+4x^3+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P15891971154703768520.Spec : Prop :=
  ∀ n, P15891971154703768520.a n = A398666 n

theorem P15891971154703768520.correct : P15891971154703768520.Spec := by
  intro n
  simp only [A398666]

end A398666

/-! ## A398666.P13457148528718143502

`ceil(∑[(2*n)²+n]/2)`
-/

namespace A398666.P13457148528718143502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌉

end

end A398666.P13457148528718143502

namespace A398666

/-- `ceil(∑[(2*n)²+n]/2)` -/
def P13457148528718143502.Spec : Prop :=
  ∀ n, P13457148528718143502.a n = A398666 n

end A398666

/-! ## A398666.P7266855575848343583

`∑[floor(n/4)+ceil(n/4)]+C(2*(n+1), 3)/2`
-/

namespace A398666.P7266855575848343583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ + ⌈(n : ℚ) / 4⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (Nat.choose (2 * (n + 1)) 3 : ℚ) / 2

end

end A398666.P7266855575848343583

namespace A398666

/-- `∑[floor(n/4)+ceil(n/4)]+C(2*(n+1), 3)/2` -/
def P7266855575848343583.Spec : Prop :=
  ∀ n, P7266855575848343583.a n = (A398666 n : ℚ)

end A398666

/-! ## A398666.P6989893996052670383

`round(A331987(n)/2)`
-/

namespace A398666.P6989893996052670383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A331987 n : ℚ) / 2)

end

end A398666.P6989893996052670383

namespace A398666

/-- `round(A331987(n)/2)` -/
def P6989893996052670383.Spec : Prop :=
  ∀ n, P6989893996052670383.a n = A398666 n

end A398666

/-! ## A398666.P15480487504424509779

`A398662(n)+∑[n²]`
-/

namespace A398666.P15480487504424509779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398662 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398666.P15480487504424509779

namespace A398666

/-- `A398662(n)+∑[n²]` -/
def P15480487504424509779.Spec : Prop :=
  ∀ n, P15480487504424509779.a n = A398666 n

end A398666

/-! ## A398666.P6525132876975001288

`A398728(n)-∑[n²]`
-/

namespace A398666.P6525132876975001288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398728 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398666.P6525132876975001288

namespace A398666

/-- `A398728(n)-∑[n²]` -/
def P6525132876975001288.Spec : Prop :=
  ∀ n, P6525132876975001288.a n = A398666 n

end A398666

/-! ## A398666.P2423425423287368725

`A397979(n)+(2*n^3+n)/3`
-/

namespace A398666.P2423425423287368725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397979 n : ℚ) + (2 * n ^ 3 + n : ℚ) / 3

end

end A398666.P2423425423287368725

namespace A398666

/-- `A397979(n)+(2*n^3+n)/3` -/
def P2423425423287368725.Spec : Prop :=
  ∀ n, P2423425423287368725.a n = (A398666 n : ℚ)

end A398666

/-! ## A398666.P4844896785670636651

`A398652(n)+A002411(n)`
-/

namespace A398666.P4844896785670636651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398652 n + A002411 n

end

end A398666.P4844896785670636651

namespace A398666

/-- `A398652(n)+A002411(n)` -/
def P4844896785670636651.Spec : Prop :=
  ∀ n, P4844896785670636651.a n = A398666 n

end A398666

/-! ## A398666.P3651232904496376889

`A398730(n)+A027480(n)`
-/

namespace A398666.P3651232904496376889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398730 n + A027480 n

end

end A398666.P3651232904496376889

namespace A398666

/-- `A398730(n)+A027480(n)` -/
def P3651232904496376889.Spec : Prop :=
  ∀ n, P3651232904496376889.a n = A398666 n

end A398666

/-! ## A398666.P12879638471565705750

`A210440(n)-A281026(n)`
-/

namespace A398666.P12879638471565705750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n - A281026 n

end

end A398666.P12879638471565705750

namespace A398666

/-- `A210440(n)-A281026(n)` -/
def P12879638471565705750.Spec : Prop :=
  ∀ n, P12879638471565705750.a n = A398666 n

end A398666

/-! ## A398666.P3142565096816362184

`A162148(n)-A398651(n)`
-/

namespace A398666.P3142565096816362184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n - A398651 n

end

end A398666.P3142565096816362184

namespace A398666

/-- `A162148(n)-A398651(n)` -/
def P3142565096816362184.Spec : Prop :=
  ∀ n, P3142565096816362184.a n = A398666 n

end A398666

/-! ## A398666.P17461638597467006271

`A245301(n)-A398657(n)`
-/

namespace A398666.P17461638597467006271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245301 n - A398657 n

end

end A398666.P17461638597467006271

namespace A398666

/-- `A245301(n)-A398657(n)` -/
def P17461638597467006271.Spec : Prop :=
  ∀ n, P17461638597467006271.a n = A398666 n

end A398666

/-! ## A398666.P6568070676103635244

`A331987(n)-A398665(n)`
-/

namespace A398666.P6568070676103635244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331987 n - A398665 n

end

end A398666.P6568070676103635244

namespace A398666

/-- `A331987(n)-A398665(n)` -/
def P6568070676103635244.Spec : Prop :=
  ∀ n, P6568070676103635244.a n = A398666 n

end A398666

/-! ## A398666.P3887562258473393114

`A144945(n+1)-A398727(n)`
-/

namespace A398666.P3887562258473393114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144945 (n + 1) - A398727 n

end

end A398666.P3887562258473393114

namespace A398666

/-- `A144945(n+1)-A398727(n)` -/
def P3887562258473393114.Spec : Prop :=
  ∀ n, P3887562258473393114.a n = A398666 n

end A398666

/-! ## A398666.P3728070639552389258

`A174723(n+1)-A391537(n+1)`
-/

namespace A398666.P3728070639552389258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174723 (n + 1) - A391537 (n + 1)

end

end A398666.P3728070639552389258

namespace A398666

/-- `A174723(n+1)-A391537(n+1)` -/
def P3728070639552389258.Spec : Prop :=
  ∀ n, P3728070639552389258.a n = A398666 n

end A398666

/-! ## A398666.P4248340505998118896

`A398664(n)+A000330(n)-A000217(n)`
-/

namespace A398666.P4248340505998118896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398664 n + A000330 n - A000217 n

end

end A398666.P4248340505998118896

namespace A398666

/-- `A398664(n)+A000330(n)-A000217(n)` -/
def P4248340505998118896.Spec : Prop :=
  ∀ n, P4248340505998118896.a n = A398666 n

end A398666

/-! ## A398666.P12892902840420049655

`A398730(n)+A398665(n)-A398729(n)`
-/

namespace A398666.P12892902840420049655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398730 n + A398665 n - A398729 n

end

end A398666.P12892902840420049655

namespace A398666

/-- `A398730(n)+A398665(n)-A398729(n)` -/
def P12892902840420049655.Spec : Prop :=
  ∀ n, P12892902840420049655.a n = A398666 n

end A398666

/-! ## A398666.P3526294539670263726

`A390343(n+1)+A390343(n)+A000292(n)`
-/

namespace A398666.P3526294539670263726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390343 (n + 1) + A390343 n + A000292 n

end

end A398666.P3526294539670263726

namespace A398666

/-- `A390343(n+1)+A390343(n)+A000292(n)` -/
def P3526294539670263726.Spec : Prop :=
  ∀ n, P3526294539670263726.a n = A398666 n

end A398666

/-!
# A398669: Number of equivalence classes of length n words over an infinite alphabet such that all prefixes satisfy c(i) >= c(j) if f(i) < f(j) where c(i) is the number of occurrences of the letter i, f(i) = floor(sqrt(2*i) + 1/2), and words are equivalent under relabeling of letters with equal values of f(i).

The programs for A398669, there is no canonical definition to state claims against.
-/

/-! ## A398669.P11063767072689254013

`A108141(A148168(n))`
-/

namespace A398669.P11063767072689254013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A148168 n).toNat

end

end A398669.P11063767072689254013

/-! ## A398669.P10315390062633107448

`A247908(A219231(n))`
-/

namespace A398669.P10315390062633107448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A219231 n).toNat

end

end A398669.P10315390062633107448

/-!
# A398671: a(n) is the number of positive integers <= n with no prime factors of form 4*k+1.

The programs for A398671, the canonical program `A398671.P16553492494587973019` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398671 has offset 1).

The definition of A398671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398671.P16553492494587973019

`∑[∏{p}[n+1, and(2, #)/2]]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398671

/-- `∑[∏{p}[n+1, and(2, #)/2]]` -/
def P16553492494587973019.Spec : Prop :=
  ∀ n, P16553492494587973019.a n = (A398671 (n + 1) : ℚ)

end A398671

/-! ## A398671.P5087570863072072812

`∑[C(2, ∑{p}[n+1, (#%or(2, #))²])]`
-/

namespace A398671.P5087570863072072812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (p % Nat.lor 2 p) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398671.P5087570863072072812

namespace A398671

/-- `∑[C(2, ∑{p}[n+1, (#%or(2, #))²])]` -/
def P5087570863072072812.Spec : Prop :=
  ∀ n, (P5087570863072072812.a n : ℤ) = A398671 (n + 1)

end A398671

/-! ## A398671.P8988766609555786034

`∑[A286361(n+1)%2]`
-/

namespace A398671.P8988766609555786034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286361 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398671.P8988766609555786034

namespace A398671

/-- `∑[A286361(n+1)%2]` -/
def P8988766609555786034.Spec : Prop :=
  ∀ n, P8988766609555786034.a n = A398671 (n + 1)

end A398671

/-! ## A398671.P15287465374657120055

`∑[C(2, A005079(n+1))]`
-/

namespace A398671.P15287465374657120055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A005079 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398671.P15287465374657120055

namespace A398671

/-- `∑[C(2, A005079(n+1))]` -/
def P15287465374657120055.Spec : Prop :=
  ∀ n, (P15287465374657120055.a n : ℤ) = A398671 (n + 1)

end A398671

/-! ## A398671.P10123384925908563806

`∑[exp(-A005081(n+1))]`
-/

namespace A398671.P10123384925908563806
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (-A005081 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398671.P10123384925908563806

namespace A398671

/-- `∑[exp(-A005081(n+1))]` -/
def P10123384925908563806.Spec : Prop :=
  ∀ n, P10123384925908563806.a n = (A398671 (n + 1) : ℝ)

end A398671

/-! ## A398671.P18116140490881902944

`∑[A000007(A046080(n+1))]`
-/

namespace A398671.P18116140490881902944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A046080 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398671.P18116140490881902944

namespace A398671

/-- `∑[A000007(A046080(n+1))]` -/
def P18116140490881902944.Spec : Prop :=
  ∀ n, P18116140490881902944.a n = A398671 (n + 1)

end A398671

/-! ## A398671.P12303090587871931461

`∑[A080995(A286361(n+1)²)]`
-/

namespace A398671.P12303090587871931461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 (A286361 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398671.P12303090587871931461

namespace A398671

/-- `∑[A080995(A286361(n+1)²)]` -/
def P12303090587871931461.Spec : Prop :=
  ∀ n, P12303090587871931461.a n = A398671 (n + 1)

end A398671

/-! ## A398671.P976818445961956743

`∑[A241643(row(A083025(n+1)))]`
-/

namespace A398671.P976818445961956743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241643 (SequenceMachineLib.triRow (A083025 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398671.P976818445961956743

namespace A398671

/-- `∑[A241643(row(A083025(n+1)))]` -/
def P976818445961956743.Spec : Prop :=
  ∀ n, P976818445961956743.a n = A398671 (n + 1)

end A398671

/-! ## A398671.P13322391874052481104

`A160663(n+1)-A061786(n+1)`
-/

namespace A398671.P13322391874052481104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160663 (n + 1) - A061786 (n + 1)

end

end A398671.P13322391874052481104

namespace A398671

/-- `A160663(n+1)-A061786(n+1)` -/
def P13322391874052481104.Spec : Prop :=
  ∀ n, P13322391874052481104.a n = A398671 (n + 1)

end A398671

/-! ## A398671.P17662260467349000418

`A024519(n+1)-A024513(n+1)`
-/

namespace A398671.P17662260467349000418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024519 (n + 1) - A024513 (n + 1)

end

end A398671.P17662260467349000418

namespace A398671

/-- `A024519(n+1)-A024513(n+1)` -/
def P17662260467349000418.Spec : Prop :=
  ∀ n, P17662260467349000418.a n = A398671 (n + 1)

end A398671

/-! ## A398671.P17531597266715586626

`∑[A354199((n+1)²)]`
-/

namespace A398671.P17531597266715586626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354199 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398671.P17531597266715586626

namespace A398671

/-- `∑[A354199((n+1)²)]` -/
def P17531597266715586626.Spec : Prop :=
  ∀ n, P17531597266715586626.a n = A398671 (n + 1)

end A398671

/-! ## A398671.P7986069977903202164

`∑[1-A353814((n+1)²)]`
-/

namespace A398671.P7986069977903202164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A353814 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398671.P7986069977903202164

namespace A398671

/-- `∑[1-A353814((n+1)²)]` -/
def P7986069977903202164.Spec : Prop :=
  ∀ n, P7986069977903202164.a n = A398671 (n + 1)

end A398671

/-! ## A398671.P5284132399962195954

`∑[A080995(A286361((n+1)²))]`
-/

namespace A398671.P5284132399962195954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 (A286361 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398671.P5284132399962195954

namespace A398671

/-- `∑[A080995(A286361((n+1)²))]` -/
def P5284132399962195954.Spec : Prop :=
  ∀ n, P5284132399962195954.a n = A398671 (n + 1)

end A398671

/-!
# A398672: Number of domino tilings (perfect matchings) of the 4 X 2n grid graph embedded on the Klein bottle.

The programs for A398672, the canonical program `A398672.P12986523527898557867` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398672 has offset 0).

The definition of A398672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398672.P12986523527898557867

`ogf((1+x-29x^2+3x^3)/(1-15x+15x^2-x^3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398672

/-- `ogf((1+x-29x^2+3x^3)/(1-15x+15x^2-x^3))` -/
def P12986523527898557867.Spec : Prop :=
  ∀ n, P12986523527898557867.a n = A398672 n

theorem P12986523527898557867.correct : P12986523527898557867.Spec := by
  intro n
  simp only [A398672]

end A398672

/-! ## A398672.P17701831176165839983

`ceil((sqrt(3)+2)^n)²`
-/

namespace A398672.P17701831176165839983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (3 : ℝ) + 2) ^ n⌉ ^ 2

end

end A398672.P17701831176165839983

namespace A398672

/-- `ceil((sqrt(3)+2)^n)²` -/
def P17701831176165839983.Spec : Prop :=
  ∀ n, P17701831176165839983.a n = A398672 n

end A398672

/-! ## A398672.P13693512021223400950

`A003500(n)^A316828(A206913(n))`
-/

namespace A398672.P13693512021223400950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003500 n : ℚ) ^ (A316828 (A206913 n).toNat : ℤ)

end

end A398672.P13693512021223400950

namespace A398672

/-- `A003500(n)^A316828(A206913(n))` -/
def P13693512021223400950.Spec : Prop :=
  ∀ n, P13693512021223400950.a n = (A398672 n : ℚ)

end A398672

/-! ## A398672.P9607624765980404502

`A003500(n)²%A027376(3*n+2)`
-/

namespace A398672.P9607624765980404502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003500 n ^ 2) (A027376 (3 * n + 2))

end

end A398672.P9607624765980404502

namespace A398672

/-- `A003500(n)²%A027376(3*n+2)` -/
def P9607624765980404502.Spec : Prop :=
  ∀ n, P9607624765980404502.a n = A398672 n

end A398672

/-! ## A398672.P10225362628255254576

`A003500(n)^(2%A379934(n))`
-/

namespace A398672.P10225362628255254576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003500 n : ℚ) ^ (Int.tmod 2 (A379934 n) : ℤ)

end

end A398672.P10225362628255254576

namespace A398672

/-- `A003500(n)^(2%A379934(n))` -/
def P10225362628255254576.Spec : Prop :=
  ∀ n, P10225362628255254576.a n = (A398672 n : ℚ)

end A398672

/-!
# A398673: Number of disconnected quasi-regular graphs on 2*n + 1 vertices.

The programs for A398673, there is no canonical definition to state claims against.
-/

/-! ## A398673.P18032709242882024672

`A398642(n+1)-A398643(n+1)`
-/

namespace A398673.P18032709242882024672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398642 (n + 1) - A398643 (n + 1)

end

end A398673.P18032709242882024672

/-!
# A398674: Number of disconnected quasi-cubic graphs on 2*n + 1 vertices.

The programs for A398674, there is no canonical definition to state claims against.
-/

/-! ## A398674.P2284727650073156571

`A398638(n)-A398639(n)`
-/

namespace A398674.P2284727650073156571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398638 n - A398639 n

end

end A398674.P2284727650073156571

/-!
# A398675: Number of disconnected quasi-quintic graphs on 2*n + 1 vertices.

The programs for A398675, there is no canonical definition to state claims against.
-/

/-! ## A398675.P3932757196515862697

`A398640(n)-A398641(n)`
-/

namespace A398675.P3932757196515862697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398640 n - A398641 n

end

end A398675.P3932757196515862697

/-!
# A398677: Numbers k such that sigma(4*k+1) > sigma(4*k), where sigma(k) is the sum of divisors of k (A000203).

The programs for A398677, there is no canonical definition to state claims against.
-/

/-! ## A398677.P4484092906295796305

`lt[1, A340793(4*n+1)]`
-/

namespace A398677.P4484092906295796305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A398677.P4484092906295796305

/-!
# A398678: Number of spanning trees of the 3 X n grid graph that are invariant under reflection in the vertical axis.

The programs for A398678, the canonical program `A398678.P17468635417467204317` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398678 has offset 1).

The definition of A398678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398678.P17468635417467204317

`ogf((1+3x-7x^2+7x^4-3x^5-x^6)/(1-15x^2+32x^4-15x^6+x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398678

/-- `ogf((1+3x-7x^2+7x^4-3x^5-x^6)/(1-15x^2+32x^4-15x^6+x^8))` -/
def P17468635417467204317.Spec : Prop :=
  ∀ n, P17468635417467204317.a n = A398678 (n + 1)

theorem P17468635417467204317.correct : P17468635417467204317.Spec := by
  intro n
  simp only [A398678, Nat.add_sub_cancel]

end A398678

/-! ## A398678.P15948840932858145753

`A010684(n)*A189003(n)`
-/

namespace A398678.P15948840932858145753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A189003 n

end

end A398678.P15948840932858145753

namespace A398678

/-- `A010684(n)*A189003(n)` -/
def P15948840932858145753.Spec : Prop :=
  ∀ n, P15948840932858145753.a n = A398678 (n + 1)

end A398678

/-!
# A398679: Number of spanning trees of the 3 X n grid graph that are invariant under rotation by 180 degrees.

The programs for A398679, the canonical program `A398679.P3681087345552598065` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398679 has offset 1).

The definition of A398679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398679.P3681087345552598065

`ogf((1+3x-3x^2-10x^3-3x^4+3x^5+x^6)/(1-15x^2+32x^4-15x^6+x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398679

/-- `ogf((1+3x-3x^2-10x^3-3x^4+3x^5+x^6)/(1-15x^2+32x^4-15x^6+x^8))` -/
def P3681087345552598065.Spec : Prop :=
  ∀ n, P3681087345552598065.a n = A398679 (n + 1)

theorem P3681087345552598065.correct : P3681087345552598065.Spec := by
  intro n
  simp only [A398679, Nat.add_sub_cancel]

end A398679

/-!
# A398683: Numbers k such that C(k,5) = C(x,5) + C(y,5) + C(z,5) is solvable, where k > x >= y >= z > 5.

The programs for A398683, there is no canonical definition to state claims against.
-/

/-! ## A398683.P14399173827714740717

`A368603(A212589(n)+8)`
-/

namespace A398683.P14399173827714740717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368603 (A212589 n + 8).toNat

end

end A398683.P14399173827714740717

/-!
# A398687: Triangle T(n,k) read by rows that has the A001710(n)-th permutation in reverse colex order of [1,...,n] as row n.

The programs for A398687, there is no canonical definition to state claims against.
-/

/-! ## A398687.P4173455087252924226

`A228106(A100616(n))`
-/

namespace A398687.P4173455087252924226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228106 (A100616 n).toNat

end

end A398687.P4173455087252924226

/-! ## A398687.P1816241735662294886

`A091316(A243484(n))`
-/

namespace A398687.P1816241735662294886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091316 (A243484 n).toNat

end

end A398687.P1816241735662294886

/-! ## A398687.P1908088879725971150

`A073810(A346093(n+1))`
-/

namespace A398687.P1908088879725971150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073810 (A346093 (n + 1)).toNat

end

end A398687.P1908088879725971150

/-! ## A398687.P1659888564178881573

`A277447(A323173(n+1))`
-/

namespace A398687.P1659888564178881573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277447 (A323173 (n + 1)).toNat

end

end A398687.P1659888564178881573

/-! ## A398687.P16918416347911512629

`A002260(lt[A360625(2*n+1), A363395(n)])`
-/

namespace A398687.P16918416347911512629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360625 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A398687.P16918416347911512629

/-!
# A398690: Triangle of polynomials related to Verlinde numbers.

The programs for A398690, there is no canonical definition to state claims against.
-/

/-! ## A398690.P18287877588481051167

`A179004(A178346(n))`
-/

namespace A398690.P18287877588481051167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179004 (A178346 n).toNat

end

end A398690.P18287877588481051167

/-! ## A398690.P227693813926452907

`A220602(n+1)-A241035(A220602(n+1))`
-/

namespace A398690.P227693813926452907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (n + 1) - A241035 (A220602 (n + 1)).toNat

end

end A398690.P227693813926452907

/-!
# A398693: Cardinality of the unique largest subdirectly irreducible factor of the lattice of partitions of n under the dominance order.

The programs for A398693, there is no canonical definition to state claims against.
-/

/-! ## A398693.P18080490678085787614

`A000041(n+13)-4*(n+13)+7-(-1)^(n+13)`
-/

namespace A398693.P18080490678085787614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 13) - (4 * (n + 13) : ℤ) + 7 - (-1) ^ (n + 13)

end

end A398693.P18080490678085787614

/-!
# A398694: Smallest 2-dense number (A174973) with n odd divisors.

The programs for A398694, there is no canonical definition to state claims against.
-/

/-! ## A398694.P1905409896749575221

`A038547(n+1)*A040000(n)`
-/

namespace A398694.P1905409896749575221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038547 (n + 1) * A040000 n

end

end A398694.P1905409896749575221

/-! ## A398694.P8512120920175620213

`A000122(n²)*A038547(n+1)`
-/

namespace A398694.P8512120920175620213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A038547 (n + 1)

end

end A398694.P8512120920175620213

/-! ## A398694.P5452247920625513301

`A036452(n+1)*A038547(n+1)`
-/

namespace A398694.P5452247920625513301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A038547 (n + 1)

end

end A398694.P5452247920625513301

/-! ## A398694.P7526244700883307353

`A036453(n+1)*A038547(n+1)`
-/

namespace A398694.P7526244700883307353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A038547 (n + 1)

end

end A398694.P7526244700883307353

/-! ## A398694.P3912091271379263753

`lcm(A038547(n+1), A040000(C(n+1, 2)))`
-/

namespace A398694.P3912091271379263753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038547 (n + 1)) (A040000 (Nat.choose (n + 1) 2))

end

end A398694.P3912091271379263753

/-!
# A398695: Numbers k >= 2 such that the greedy prime-sum remainder of k is 1.

The programs for A398695, there is no canonical definition to state claims against.
-/

/-! ## A398695.P13537027853299374830

`A190324(n+1)+A057428(A000079(n))`
-/

namespace A398695.P13537027853299374830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190324 (n + 1) + A057428 (A000079 n).toNat

end

end A398695.P13537027853299374830

/-! ## A398695.P4754398337161548020

`A190324(n+1)+A057428(A072824(n+5))`
-/

namespace A398695.P4754398337161548020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190324 (n + 1) + A057428 (A072824 (n + 5)).toNat

end

end A398695.P4754398337161548020

/-! ## A398695.P1334946111436260840

`A190324(n+1)+A057428(A104022(3*n+4))`
-/

namespace A398695.P1334946111436260840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190324 (n + 1) + A057428 (A104022 (3 * n + 4)).toNat

end

end A398695.P1334946111436260840

/-! ## A398695.P13505051321537079727

`A190324(n+1)+A057428(A074476(n))`
-/

namespace A398695.P13505051321537079727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190324 (n + 1) + A057428 (A074476 n).toNat

end

end A398695.P13505051321537079727

/-! ## A398695.P12411486319701605186

`A005245(A026767(n))`
-/

namespace A398695.P12411486319701605186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (A026767 n).toNat

end

end A398695.P12411486319701605186

/-!
# A398696: a(n) = floor(3*11^n/4).

The programs for A398696, the canonical program `A398696.P11525538983804807962` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398696 has offset 0).

The definition of A398696 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*11^n/4)` (program `A398696.P11525538983804807962`, by `A398696.P11525538983804807962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A398696.P9277091267820988381

`ogf((8x+2x^2)/(1-11x-x^2+11x^3))`
-/

namespace A398696.P9277091267820988381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 2] [1, -11, -1, 11] n

end

end A398696.P9277091267820988381

namespace A398696

/-- `ogf((8x+2x^2)/(1-11x-x^2+11x^3))` -/
def P9277091267820988381.Spec : Prop :=
  ∀ n, P9277091267820988381.a n = A398696 n

end A398696

/-! ## A398696.P16544031153195020379

`11*a(n-1)+5-3*(-1)^n` with `a(0)=0`
-/

namespace A398696.P16544031153195020379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  11 * a (n - 1) + 5 - 3 * (-1) ^ n

end

end A398696.P16544031153195020379

namespace A398696

/-- `11*a(n-1)+5-3*(-1)^n` -/
def P16544031153195020379.Spec : Prop :=
  ∀ n, P16544031153195020379.a n = A398696 n

end A398696

/-! ## A398696.P11525538983804807962

`floor(3*11^n/4)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398696

/-- `floor(3*11^n/4)` -/
def P11525538983804807962.Spec : Prop :=
  ∀ n, P11525538983804807962.a n = A398696 n

theorem P11525538983804807962.correct : P11525538983804807962.Spec := by
  intro n
  simp only [A398696]

end A398696

/-! ## A398696.P13301152398448037159

`A024127(n)-A398697(n)`
-/

namespace A398696.P13301152398448037159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024127 n - A398697 n

end

end A398696.P13301152398448037159

namespace A398696

/-- `A024127(n)-A398697(n)` -/
def P13301152398448037159.Spec : Prop :=
  ∀ n, P13301152398448037159.a n = A398696 n

end A398696

/-!
# A398697: a(n) = floor(11^n/4).

The programs for A398697, the canonical program `A398697.P16552437538001656140` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398697 has offset 0).

The definition of A398697 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11^n/4)` (program `A398697.P16552437538001656140`, by `A398697.P16552437538001656140.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A398697.P16552437538001656140

`floor(11^n/4)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398697

/-- `floor(11^n/4)` -/
def P16552437538001656140.Spec : Prop :=
  ∀ n, P16552437538001656140.a n = A398697 n

theorem P16552437538001656140.correct : P16552437538001656140.Spec := by
  intro n
  simp only [A398697]

end A398697

/-! ## A398697.P14958352288584056157

`ogf((2x+8x^2)/(1-11x-x^2+11x^3))`
-/

namespace A398697.P14958352288584056157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 8] [1, -11, -1, 11] n

end

end A398697.P14958352288584056157

namespace A398697

/-- `ogf((2x+8x^2)/(1-11x-x^2+11x^3))` -/
def P14958352288584056157.Spec : Prop :=
  ∀ n, P14958352288584056157.a n = A398697 n

end A398697

/-! ## A398697.P12004168312788246398

`11*a(n-1)+5+3*(-1)^n` with `a(0)=0`
-/

namespace A398697.P12004168312788246398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  11 * a (n - 1) + 5 + 3 * (-1) ^ n

end

end A398697.P12004168312788246398

namespace A398697

/-- `11*a(n-1)+5+3*(-1)^n` -/
def P12004168312788246398.Spec : Prop :=
  ∀ n, P12004168312788246398.a n = A398697 n

end A398697

/-! ## A398697.P10195328685975233850

`ceil(ceil(A001020(n)/2)/2)-1`
-/

namespace A398697.P10195328685975233850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A001020 n : ℚ) / 2⌉ : ℚ) / 2⌉ - 1

end

end A398697.P10195328685975233850

namespace A398697

/-- `ceil(ceil(A001020(n)/2)/2)-1` -/
def P10195328685975233850.Spec : Prop :=
  ∀ n, P10195328685975233850.a n = A398697 n

end A398697

/-! ## A398697.P8537364642830568095

`A024127(n)-A398696(n)`
-/

namespace A398697.P8537364642830568095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024127 n - A398696 n

end

end A398697.P8537364642830568095

namespace A398697

/-- `A024127(n)-A398696(n)` -/
def P8537364642830568095.Spec : Prop :=
  ∀ n, P8537364642830568095.a n = A398697 n

end A398697

/-!
# A398699: a(n) = denominator(Sum_{k=1..n} sigma(floor(n/k))/floor(n/k)), where sigma(n) = A000203(n) is the sum of divisors of n.

The programs for A398699, there is no canonical definition to state claims against.
-/

/-! ## A398699.P3192284152413027670

`A329378(A072486(n+2))`
-/

namespace A398699.P3192284152413027670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329378 (A072486 (n + 2)).toNat

end

end A398699.P3192284152413027670

/-! ## A398699.P16753662255101529925

`A329378(A191836(n+2))`
-/

namespace A398699.P16753662255101529925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329378 (A191836 (n + 2)).toNat

end

end A398699.P16753662255101529925

/-! ## A398699.P12222304257310790608

`(n+1)*A292375(A335088(n))`
-/

namespace A398699.P12222304257310790608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A292375 (A335088 n).toNat

end

end A398699.P12222304257310790608

/-! ## A398699.P15979277072192725073

`(n+1)*A275333(A275333(n²))`
-/

namespace A398699.P15979277072192725073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A275333 (A275333 (n ^ 2)).toNat

end

end A398699.P15979277072192725073

/-! ## A398699.P12123627192172676312

`lcm(A000005(A340355(n)), A374249(n+2))`
-/

namespace A398699.P12123627192172676312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A340355 n).toNat) (A374249 (n + 2))

end

end A398699.P12123627192172676312

