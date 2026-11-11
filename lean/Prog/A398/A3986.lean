import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
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
# A398600: Number of permutations p of [n] such that |p(i+1)-p(i)| <> 4 for all 1 <= i < n.

The programs for A398600, there is no canonical definition to state claims against.
-/

/-! ## A398600.P4006072599534477836

`A250250(A091202(n!))`
-/

namespace A398600.P4006072599534477836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (A091202 (Nat.factorial n)).toNat

end

end A398600.P4006072599534477836

/-! ## A398600.P6010432873512398336

`A398634(A052905(n+2))`
-/

namespace A398600.P6010432873512398336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398634 (A052905 (n + 2)).toNat

end

end A398600.P6010432873512398336

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

/-!
# A398601: Number of permutations p of [n] such that |p(i+1)-p(i)| <> 5 for all 1 <= i < n.

The programs for A398601, there is no canonical definition to state claims against.
-/

/-! ## A398601.P12726721042501753964

`A005843(A070946(n))-A070947(n)`
-/

namespace A398601.P12726721042501753964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A070946 n).toNat - A070947 n

end

end A398601.P12726721042501753964

/-! ## A398601.P12585857787265221927

`A102096(2*n²)*a(n-1)` with `a(0)=1`
-/

namespace A398601.P12585857787265221927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A102096 (2 * n ^ 2) * a (n - 1)

end

end A398601.P12585857787265221927

/-! ## A398601.P5245487898010850814

`∑{e}[n+A367785(n), #]*a(n-1)` with `a(0)=1`
-/

namespace A398601.P5245487898010850814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A367785 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) * a (n - 1)

end

end A398601.P5245487898010850814

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

/-! ## A398619.P11498273597426912635

`(-1)^n*A261326(n)`
-/

namespace A398619.P11498273597426912635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A261326 n

end

end A398619.P11498273597426912635

/-! ## A398619.P17623208689535051061

`A132954(2*n+1)*A293387(n)/2`
-/

namespace A398619.P17623208689535051061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132954 (2 * n + 1) * A293387 n : ℚ) / 2

end

end A398619.P17623208689535051061

/-!
# A398620: Expansion of eta(q^2) * eta(q^3) * eta(q^6) / (eta(q)^2 * eta(q^9)) in powers of q.

The programs for A398620, there is no canonical definition to state claims against.
-/

/-! ## A398620.P3862247601279213231

`A269245(A092897(n))+A000070(n)`
-/

namespace A398620.P3862247601279213231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269245 (A092897 n).toNat + A000070 n

end

end A398620.P3862247601279213231

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

/-! ## A398628.P932100488641922030

`A002033(col(n))*a(n-row(n))` with `a(0)=1`
-/

namespace A398628.P932100488641922030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002033 (SequenceMachineLib.triCol n) * a (n - SequenceMachineLib.triRow n)

end

end A398628.P932100488641922030

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

/-! ## A398634.P31813355639214792

`col(n)!%A265014(A013609(n+2))`
-/

namespace A398634.P31813355639214792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (SequenceMachineLib.triCol n) : ℤ) (A265014 (A013609 (n + 2)).toNat)

end

end A398634.P31813355639214792

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

/-! ## A398638.P16876337959420610285

`A398674(n)+A398639(n)`
-/

namespace A398638.P16876337959420610285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398674 n + A398639 n

end

end A398638.P16876337959420610285

/-! ## A398638.P18024359711874137590

`round(A008858(n+1)/6)`
-/

namespace A398638.P18024359711874137590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008858 (n + 1) : ℚ) / 6)

end

end A398638.P18024359711874137590

/-!
# A398639: Number of connected quasi-cubic graphs on 2*n + 1 vertices.

The programs for A398639, there is no canonical definition to state claims against.
-/

/-! ## A398639.P8654719952020965239

`A398638(n)-A398674(n)`
-/

namespace A398639.P8654719952020965239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398638 n - A398674 n

end

end A398639.P8654719952020965239

/-! ## A398639.P17402017102651265379

`A399015(A152948(n+1))`
-/

namespace A398639.P17402017102651265379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399015 (A152948 (n + 1)).toNat

end

end A398639.P17402017102651265379

/-! ## A398639.P5013896587845519333

`A399015(abs(A000096(n)-n+1-n)+1)`
-/

namespace A398639.P5013896587845519333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399015 (|A000096 n - (n : ℤ) + 1 - (n : ℤ)| + 1).toNat

end

end A398639.P5013896587845519333

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

/-! ## A398640.P11282855253342335575

`A398641(n)+A064990(A006821(n))`
-/

namespace A398640.P11282855253342335575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398641 n + A064990 (A006821 n).toNat

end

end A398640.P11282855253342335575

/-! ## A398640.P4780055479906980334

`A398641(n)+A064990(A398639(n))`
-/

namespace A398640.P4780055479906980334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398641 n + A064990 (A398639 n).toNat

end

end A398640.P4780055479906980334

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

/-! ## A398641.P10748891955804130596

`A398640(n)-A064990(A006821(n))`
-/

namespace A398641.P10748891955804130596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398640 n - A064990 (A006821 n).toNat

end

end A398641.P10748891955804130596

/-! ## A398641.P13984885159642967892

`A398640(n)-A122840(A054726(n))`
-/

namespace A398641.P13984885159642967892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398640 n - A122840 (A054726 n).toNat

end

end A398641.P13984885159642967892

/-!
# A398642: Number of quasi-regular graphs on 2*n + 1 vertices.

The programs for A398642, there is no canonical definition to state claims against.
-/

/-! ## A398642.P8990855271855186925

`A398673(1+n)+A398643(n+1)`
-/

namespace A398642.P8990855271855186925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398673 (1 + n) + A398643 (n + 1)

end

end A398642.P8990855271855186925

/-!
# A398643: Number of connected quasi-regular graphs on 2*n + 1 vertices.

The programs for A398643, there is no canonical definition to state claims against.
-/

/-! ## A398643.P11526668934011483918

`A398642(1+n)-A398673(n+1)`
-/

namespace A398643.P11526668934011483918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398642 (1 + n) - A398673 (n + 1)

end

end A398643.P11526668934011483918

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

/-! ## A398644.P10463199815529623527

`A134342((n+1)/2^val(n+1, 2))%2`
-/

namespace A398644.P10463199815529623527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134342 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat) 2

end

end A398644.P10463199815529623527

/-! ## A398644.P13063428370939915103

`A376629((n+1)/(2^val(n+1, 2)*5^val(n+1, 5)))^∑{d}[1+n, #^3]`
-/

namespace A398644.P13063428370939915103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 * 5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℚ))).toNat ^ (∑ d ∈ Nat.divisors (f1 n), d ^ 3)

end

end A398644.P13063428370939915103

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

/-! ## A398649.P10725467094804851364

`A214527(n+1)%∑[A343760(n+1)]`
-/

namespace A398649.P10725467094804851364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214527 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398649.P10725467094804851364

/-! ## A398649.P4377497501471646892

`A214527(n+1)+A008683((n+1)*(n+3)²)`
-/

namespace A398649.P4377497501471646892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214527 (n + 1) + A008683 ((n + 1) * (n + 3) ^ 2)

end

end A398649.P4377497501471646892

/-!
# A398650: Number of composite numbers less than the n-th primorial that have a common factor greater than 1 with the (n-1)-th primorial.

The programs for A398650, the canonical program `A398650.P16240165279224502368` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398650 has offset 1).

The definition of A398650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398650.P16240165279224502368

`A002110(n+1)-A005867(n+1)-A005867(n)-(n+1)+1`

The canonical program, it is in `Seq.B002.C008`.
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

The programs for A398651, the canonical program `A398651.P14364319991967368664` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398651 has offset 0).

The definition of A398651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398651.P14364319991967368664

`ogf((x+x^2)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398651

/-- `ogf((x+x^2)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P14364319991967368664.Spec : Prop :=
  ∀ n, P14364319991967368664.a n = A398651 n

theorem P14364319991967368664.correct : P14364319991967368664.Spec := by
  intro n
  simp only [A398651]

end A398651

/-! ## A398651.P8911842397016448258

`floor(n*(2*n+7)*(n+1)/12)`
-/

namespace A398651.P8911842397016448258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (2 * n + 7) * (n + 1) : ℚ) / 12⌋

end

end A398651.P8911842397016448258

namespace A398651

/-- `floor(n*(2*n+7)*(n+1)/12)` -/
def P8911842397016448258.Spec : Prop :=
  ∀ n, P8911842397016448258.a n = A398651 n

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

The programs for A398652, the canonical program `A398652.P13655693242827887489` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398652 has offset 0).

The definition of A398652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398652.P13655693242827887489

`ogf((2x-2x^2+3x^3-x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398652

/-- `ogf((2x-2x^2+3x^3-x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P13655693242827887489.Spec : Prop :=
  ∀ n, P13655693242827887489.a n = A398652 n

theorem P13655693242827887489.correct : P13655693242827887489.Spec := by
  intro n
  simp only [A398652]

end A398652

/-! ## A398652.P5978214218165162276

`ceil(∑[n+n²/2])`
-/

namespace A398652.P5978214218165162276
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) + (n ^ 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A398652.P5978214218165162276

namespace A398652

/-- `ceil(∑[n+n²/2])` -/
def P5978214218165162276.Spec : Prop :=
  ∀ n, P5978214218165162276.a n = A398652 n

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

/-! ## A398652.P12250217873184219846

`∑[Δ[or(1, ∑[n²-1])]/2]`
-/

namespace A398652.P12250217873184219846
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398652.P12250217873184219846

namespace A398652

/-- `∑[Δ[or(1, ∑[n²-1])]/2]` -/
def P12250217873184219846.Spec : Prop :=
  ∀ n, P12250217873184219846.a n = (A398652 n : ℚ)

end A398652

/-! ## A398652.P18169312383857514745

`∑[∑[char[∑[3^(n%2)]]+n]]`
-/

namespace A398652.P18169312383857514745
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398652.P18169312383857514745

namespace A398652

/-- `∑[∑[char[∑[3^(n%2)]]+n]]` -/
def P18169312383857514745.Spec : Prop :=
  ∀ n, (P18169312383857514745.a n : ℤ) = A398652 n

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

/-!
# A398653: Lower (1, 1/3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398653, the canonical program `A398653.P2595663609050497356` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398653 has offset 0).

The definition of A398653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398653.P2595663609050497356

`floor(n*(n+5)*(n+1)/9)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398653

/-- `floor(n*(n+5)*(n+1)/9)` -/
def P2595663609050497356.Spec : Prop :=
  ∀ n, P2595663609050497356.a n = A398653 n

theorem P2595663609050497356.correct : P2595663609050497356.Spec := by
  intro n
  simp only [A398653]

end A398653

/-! ## A398653.P11564795500602417485

`ogf((x+x^4-2x^5+3x^6-x^7)/(1-4x+6x^2-3x^3-3x^4+6x^5-3x^6-3x^7+6x^8-4x^9+x^10))`
-/

namespace A398653.P11564795500602417485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 0, 1, -2, 3, -1] [1, -4, 6, -3, -3, 6, -3, -3, 6, -4, 1] n

end

end A398653.P11564795500602417485

namespace A398653

/-- `ogf((x+x^4-2x^5+3x^6-x^7)/(1-4x+6x^2-3x^3-3x^4+6x^5-3x^6-3x^7+6x^8-4x^9+x^10))` -/
def P11564795500602417485.Spec : Prop :=
  ∀ n, P11564795500602417485.a n = A398653 n

end A398653

/-! ## A398653.P11066672783940400869

`∑[n]+floor(A000330(n)/3)`
-/

namespace A398653.P11066672783940400869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(A000330 n : ℚ) / 3⌋

end

end A398653.P11066672783940400869

namespace A398653

/-- `∑[n]+floor(A000330(n)/3)` -/
def P11066672783940400869.Spec : Prop :=
  ∀ n, P11066672783940400869.a n = A398653 n

end A398653

/-! ## A398653.P14098701562736314378

`A398654(n)-A060584(n)`
-/

namespace A398653.P14098701562736314378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398654 n - A060584 n

end

end A398653.P14098701562736314378

namespace A398653

/-- `A398654(n)-A060584(n)` -/
def P14098701562736314378.Spec : Prop :=
  ∀ n, P14098701562736314378.a n = A398653 n

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

end A398653

/-! ## A398653.P1232532557703122147

`record[floor(A392421(n+1)/3)]`
-/

namespace A398653.P1232532557703122147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A392421 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398653.P1232532557703122147

namespace A398653

/-- `record[floor(A392421(n+1)/3)]` -/
def P1232532557703122147.Spec : Prop :=
  ∀ n, P1232532557703122147.a n = A398653 n

end A398653

/-!
# A398654: Upper (1, 1/3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398654, the canonical program `A398654.P9297025685428479340` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398654 has offset 0).

The definition of A398654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398654.P9297025685428479340

`ogf((2x-3x^2+3x^3-x^5+2x^7-x^8)/(1-4x+6x^2-3x^3-3x^4+6x^5-3x^6-3x^7+6x^8-4x^9+x^10))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398654

/-- `ogf((2x-3x^2+3x^3-x^5+2x^7-x^8)/(1-4x+6x^2-3x^3-3x^4+6x^5-3x^6-3x^7+6x^8-4x^9+x^10))` -/
def P9297025685428479340.Spec : Prop :=
  ∀ n, P9297025685428479340.a n = A398654 n

theorem P9297025685428479340.correct : P9297025685428479340.Spec := by
  intro n
  simp only [A398654]

end A398654

/-! ## A398654.P5042094744166231689

`ceil(∑[(3+n)*n]/3)`
-/

namespace A398654.P5042094744166231689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 + n) * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌉

end

end A398654.P5042094744166231689

namespace A398654

/-- `ceil(∑[(3+n)*n]/3)` -/
def P5042094744166231689.Spec : Prop :=
  ∀ n, P5042094744166231689.a n = A398654 n

end A398654

/-! ## A398654.P13473748091185320827

`A000217(n)+ceil(∑[n²]/3)`
-/

namespace A398654.P13473748091185320827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌉

end

end A398654.P13473748091185320827

namespace A398654

/-- `A000217(n)+ceil(∑[n²]/3)` -/
def P13473748091185320827.Spec : Prop :=
  ∀ n, P13473748091185320827.a n = A398654 n

end A398654

/-! ## A398654.P14256737659695617805

`floor(2*(∑[A000096(n)]+1)/3)`
-/

namespace A398654.P14256737659695617805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ) : ℚ) / 3⌋

end

end A398654.P14256737659695617805

namespace A398654

/-- `floor(2*(∑[A000096(n)]+1)/3)` -/
def P14256737659695617805.Spec : Prop :=
  ∀ n, P14256737659695617805.a n = A398654 n

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

end A398654

/-! ## A398654.P14265760847168086732

`A051925(1+n)-A398655(n)`
-/

namespace A398654.P14265760847168086732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 (1 + n) - A398655 n

end

end A398654.P14265760847168086732

namespace A398654

/-- `A051925(1+n)-A398655(n)` -/
def P14265760847168086732.Spec : Prop :=
  ∀ n, P14265760847168086732.a n = A398654 n

end A398654

/-!
# A398655: Lower (1, 2/3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398655, the canonical program `A398655.P8124781277220404593` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398655 has offset 0).

The definition of A398655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398655.P8124781277220404593

`floor(n*(4*n+11)*(n+1)/18)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398655

/-- `floor(n*(4*n+11)*(n+1)/18)` -/
def P8124781277220404593.Spec : Prop :=
  ∀ n, P8124781277220404593.a n = A398655 n

theorem P8124781277220404593.correct : P8124781277220404593.Spec := by
  intro n
  simp only [A398655]

end A398655

/-! ## A398655.P5488601248228793581

`ogf((x+2x^2-3x^3+3x^4+x^7)/(1-4x+6x^2-3x^3-3x^4+6x^5-3x^6-3x^7+6x^8-4x^9+x^10))`
-/

namespace A398655.P5488601248228793581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, -3, 3, 0, 0, 1] [1, -4, 6, -3, -3, 6, -3, -3, 6, -4, 1] n

end

end A398655.P5488601248228793581

namespace A398655

/-- `ogf((x+2x^2-3x^3+3x^4+x^7)/(1-4x+6x^2-3x^3-3x^4+6x^5-3x^6-3x^7+6x^8-4x^9+x^10))` -/
def P5488601248228793581.Spec : Prop :=
  ∀ n, P5488601248228793581.a n = A398655 n

end A398655

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

end A398655

/-! ## A398655.P5899796836280305586

`A051925(1+n)-A398654(n)`
-/

namespace A398655.P5899796836280305586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 (1 + n) - A398654 n

end

end A398655.P5899796836280305586

namespace A398655

/-- `A051925(1+n)-A398654(n)` -/
def P5899796836280305586.Spec : Prop :=
  ∀ n, P5899796836280305586.a n = A398655 n

end A398655

/-! ## A398655.P18120688677749886420

`floor((A361273(2*(n+1))+2)/3)-1`
-/

namespace A398655.P18120688677749886420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A361273 (2 * (n + 1)) + 2 : ℚ) / 3⌋ - 1

end

end A398655.P18120688677749886420

namespace A398655

/-- `floor((A361273(2*(n+1))+2)/3)-1` -/
def P18120688677749886420.Spec : Prop :=
  ∀ n, P18120688677749886420.a n = A398655 n

end A398655

/-!
# A398656: Upper (1, 2/3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398656, the canonical program `A398656.P17373594211785006001` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398656 has offset 0).

The definition of A398656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398656.P17373594211785006001

`ogf((2x-x^2+2x^4+x^5-3x^6+4x^7-x^8)/(1-4x+6x^2-3x^3-3x^4+6x^5-3x^6-3x^7+6x^8-4x^9+x^10))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398656

/-- `ogf((2x-x^2+2x^4+x^5-3x^6+4x^7-x^8)/(1-4x+6x^2-3x^3-3x^4+6x^5-3x^6-3x^7+6x^8-4x^9+x^10))` -/
def P17373594211785006001.Spec : Prop :=
  ∀ n, P17373594211785006001.a n = A398656 n

theorem P17373594211785006001.correct : P17373594211785006001.Spec := by
  intro n
  simp only [A398656]

end A398656

/-! ## A398656.P3118530579074813739

`ceil(∑[∑[4*n]+n]/3)`
-/

namespace A398656.P3118530579074813739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌉

end

end A398656.P3118530579074813739

namespace A398656

/-- `ceil(∑[∑[4*n]+n]/3)` -/
def P3118530579074813739.Spec : Prop :=
  ∀ n, P3118530579074813739.a n = A398656 n

end A398656

/-! ## A398656.P15520432193222050950

`round(A394826(n+1)/3)`
-/

namespace A398656.P15520432193222050950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A394826 (n + 1) : ℚ) / 3)

end

end A398656.P15520432193222050950

namespace A398656

/-- `round(A394826(n+1)/3)` -/
def P15520432193222050950.Spec : Prop :=
  ∀ n, P15520432193222050950.a n = A398656 n

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
-/

namespace A398656.P9523121209241230908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398655 n + A060584 n

end

end A398656.P9523121209241230908

namespace A398656

/-- `A398655(n)+A060584(n)` -/
def P9523121209241230908.Spec : Prop :=
  ∀ n, P9523121209241230908.a n = A398656 n

end A398656

/-! ## A398656.P5257389301572141155

`floor((A002412(n)+A001844(n)+1)/3)`
-/

namespace A398656.P5257389301572141155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002412 n + A001844 n + 1 : ℚ) / 3⌋

end

end A398656.P5257389301572141155

namespace A398656

/-- `floor((A002412(n)+A001844(n)+1)/3)` -/
def P5257389301572141155.Spec : Prop :=
  ∀ n, P5257389301572141155.a n = A398656 n

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

end A398656

/-!
# A398657: Lower (1, 3/2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398657, the canonical program `A398657.P11033118333621103953` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398657 has offset 0).

The definition of A398657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398657.P11033118333621103953

`floor(n*(2*n+3)*(n+1)/4)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398657

/-- `floor(n*(2*n+3)*(n+1)/4)` -/
def P11033118333621103953.Spec : Prop :=
  ∀ n, P11033118333621103953.a n = A398657 n

theorem P11033118333621103953.correct : P11033118333621103953.Spec := by
  intro n
  simp only [A398657]

end A398657

/-! ## A398657.P16023028799079653470

`ogf((2x+2x^2+x^3+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398657.P16023028799079653470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 1, 1] [1, -4, 7, -8, 7, -4, 1] n

end

end A398657.P16023028799079653470

namespace A398657

/-- `ogf((2x+2x^2+x^3+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P16023028799079653470.Spec : Prop :=
  ∀ n, P16023028799079653470.a n = A398657 n

end A398657

/-! ## A398657.P15323208831500452682

`∑[∑[n+1-∑[n+1]%2]]+∑[n²]`
-/

namespace A398657.P15323208831500452682
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f3 j) % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A398657.P15323208831500452682

namespace A398657

/-- `∑[∑[n+1-∑[n+1]%2]]+∑[n²]` -/
def P15323208831500452682.Spec : Prop :=
  ∀ n, P15323208831500452682.a n = A398657 n

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

/-! ## A398657.P15226625661185317989

`A398661(n)+∑[∑[n]]`
-/

namespace A398657.P15226625661185317989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398661 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398657.P15226625661185317989

namespace A398657

/-- `A398661(n)+∑[∑[n]]` -/
def P15226625661185317989.Spec : Prop :=
  ∀ n, P15226625661185317989.a n = A398657 n

end A398657

/-! ## A398657.P16111459327942997879

`ceil((∑[A045944(n)]-1)/2)`
-/

namespace A398657.P16111459327942997879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2⌉

end

end A398657.P16111459327942997879

namespace A398657

/-- `ceil((∑[A045944(n)]-1)/2)` -/
def P16111459327942997879.Spec : Prop :=
  ∀ n, P16111459327942997879.a n = A398657 n

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

/-!
# A398658: Upper (1, 3/2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398658, the canonical program `A398658.P13562798668411493310` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398658 has offset 0).

The definition of A398658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398658.P13562798668411493310

`ogf((3x-x^2+4x^3)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398658

/-- `ogf((3x-x^2+4x^3)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P13562798668411493310.Spec : Prop :=
  ∀ n, P13562798668411493310.a n = A398658 n

theorem P13562798668411493310.correct : P13562798668411493310.Spec := by
  intro n
  simp only [A398658]

end A398658

/-! ## A398658.P14601077401538663088

`ceil(∑[3/2*n²+n])`
-/

namespace A398658.P14601077401538663088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (n ^ 2 : ℚ) + (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A398658.P14601077401538663088

namespace A398658

/-- `ceil(∑[3/2*n²+n])` -/
def P14601077401538663088.Spec : Prop :=
  ∀ n, P14601077401538663088.a n = A398658 n

end A398658

/-! ## A398658.P8543736287253165603

`∑[∑[3*n-and(2, n)/2]]`
-/

namespace A398658.P8543736287253165603
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n : ℚ) - (Nat.land 2 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398658.P8543736287253165603

namespace A398658

/-- `∑[∑[3*n-and(2, n)/2]]` -/
def P8543736287253165603.Spec : Prop :=
  ∀ n, P8543736287253165603.a n = (A398658 n : ℚ)

end A398658

/-! ## A398658.P7109608082969465480

`∑[∑[∑[6-a(n-2)]]]` with `a(0)=0, a(1)=3, a(2)=2`
-/

namespace A398658.P7109608082969465480
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 2] fun n f3 =>
  6 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398658.P7109608082969465480

namespace A398658

/-- `∑[∑[∑[6-a(n-2)]]]` -/
def P7109608082969465480.Spec : Prop :=
  ∀ n, P7109608082969465480.a n = A398658 n

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

/-! ## A398658.P16412360614550389908

`A398652(n)+∑[n²]`
-/

namespace A398658.P16412360614550389908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398652 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398658.P16412360614550389908

namespace A398658

/-- `A398652(n)+∑[n²]` -/
def P16412360614550389908.Spec : Prop :=
  ∀ n, P16412360614550389908.a n = A398658 n

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

/-! ## A398658.P5277177320157294621

`A398662(n)+A000292(n)`
-/

namespace A398658.P5277177320157294621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398662 n + A000292 n

end

end A398658.P5277177320157294621

namespace A398658

/-- `A398662(n)+A000292(n)` -/
def P5277177320157294621.Spec : Prop :=
  ∀ n, P5277177320157294621.a n = A398658 n

end A398658

/-! ## A398658.P16927018602063270736

`A397979(n)+A006003(n)`
-/

namespace A398658.P16927018602063270736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397979 n + A006003 n

end

end A398658.P16927018602063270736

namespace A398658

/-- `A397979(n)+A006003(n)` -/
def P16927018602063270736.Spec : Prop :=
  ∀ n, P16927018602063270736.a n = A398658 n

end A398658

/-! ## A398658.P2144170060754886917

`A398728(n)-A002411(n)`
-/

namespace A398658.P2144170060754886917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398728 n - A002411 n

end

end A398658.P2144170060754886917

namespace A398658

/-- `A398728(n)-A002411(n)` -/
def P2144170060754886917.Spec : Prop :=
  ∀ n, P2144170060754886917.a n = A398658 n

end A398658

/-! ## A398658.P6638204425222062647

`A006331(n)-A398729(n)`
-/

namespace A398658.P6638204425222062647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n - A398729 n

end

end A398658.P6638204425222062647

namespace A398658

/-- `A006331(n)-A398729(n)` -/
def P6638204425222062647.Spec : Prop :=
  ∀ n, P6638204425222062647.a n = A398658 n

end A398658

/-! ## A398658.P3756740203977348471

`A134481(n)-A398663(n)`
-/

namespace A398658.P3756740203977348471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n - A398663 n

end

end A398658.P3756740203977348471

namespace A398658

/-- `A134481(n)-A398663(n)` -/
def P3756740203977348471.Spec : Prop :=
  ∀ n, P3756740203977348471.a n = A398658 n

end A398658

/-! ## A398658.P1737586776706444926

`A162148(n)-A398661(n)`
-/

namespace A398658.P1737586776706444926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n - A398661 n

end

end A398658.P1737586776706444926

namespace A398658

/-- `A162148(n)-A398661(n)` -/
def P1737586776706444926.Spec : Prop :=
  ∀ n, P1737586776706444926.a n = A398658 n

end A398658

/-! ## A398658.P11478113709052394294

`A210440(n)-A398651(n)`
-/

namespace A398658.P11478113709052394294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n - A398651 n

end

end A398658.P11478113709052394294

namespace A398658

/-- `A210440(n)-A398651(n)` -/
def P11478113709052394294.Spec : Prop :=
  ∀ n, P11478113709052394294.a n = A398658 n

end A398658

/-! ## A398658.P9032893428882354104

`A245301(n)-A398665(n)`
-/

namespace A398658.P9032893428882354104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245301 n - A398665 n

end

end A398658.P9032893428882354104

namespace A398658

/-- `A245301(n)-A398665(n)` -/
def P9032893428882354104.Spec : Prop :=
  ∀ n, P9032893428882354104.a n = A398658 n

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

/-! ## A398658.P18025563113479207606

`A077414(n+1)-A281026(n)`
-/

namespace A398658.P18025563113479207606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077414 (n + 1) - A281026 n

end

end A398658.P18025563113479207606

namespace A398658

/-- `A077414(n+1)-A281026(n)` -/
def P18025563113479207606.Spec : Prop :=
  ∀ n, P18025563113479207606.a n = A398658 n

end A398658

/-! ## A398658.P15873552214913940114

`A393231(n+1)-A231559(n)`
-/

namespace A398658.P15873552214913940114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393231 (n + 1) - A231559 n

end

end A398658.P15873552214913940114

namespace A398658

/-- `A393231(n+1)-A231559(n)` -/
def P15873552214913940114.Spec : Prop :=
  ∀ n, P15873552214913940114.a n = A398658 n

end A398658

/-! ## A398658.P10881742122119591361

`2*A000330(n)-A398729(n)`
-/

namespace A398658.P10881742122119591361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000330 n - A398729 n

end

end A398658.P10881742122119591361

namespace A398658

/-- `2*A000330(n)-A398729(n)` -/
def P10881742122119591361.Spec : Prop :=
  ∀ n, P10881742122119591361.a n = A398658 n

end A398658

/-!
# A398659: Lower (1, 6/5) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398659, the canonical program `A398659.P4226284256805737103` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398659 has offset 0).

The definition of A398659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398659.P4226284256805737103

`floor(n*(4*n+7)*(n+1)/10)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398659

/-- `floor(n*(4*n+7)*(n+1)/10)` -/
def P4226284256805737103.Spec : Prop :=
  ∀ n, P4226284256805737103.a n = A398659 n

theorem P4226284256805737103.correct : P4226284256805737103.Spec := by
  intro n
  simp only [A398659]

end A398659

/-! ## A398659.P7605354049283427694

`ogf((2x+3x^2+x^3+5x^4+x^6)/(1-3x+3x^2-x^3-x^5+3x^6-3x^7+x^8))`
-/

namespace A398659.P7605354049283427694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 1, 5, 0, 1] [1, -3, 3, -1, 0, -1, 3, -3, 1] n

end

end A398659.P7605354049283427694

namespace A398659

/-- `ogf((2x+3x^2+x^3+5x^4+x^6)/(1-3x+3x^2-x^3-x^5+3x^6-3x^7+x^8))` -/
def P7605354049283427694.Spec : Prop :=
  ∀ n, P7605354049283427694.a n = A398659 n

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

The programs for A398660, the canonical program `A398660.P9653228228003721502` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398660 has offset 0).

The definition of A398660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398660.P9653228228003721502

`ogf((3x+5x^3+x^4+3x^5)/(1-3x+3x^2-x^3-x^5+3x^6-3x^7+x^8))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398660

/-- `ogf((3x+5x^3+x^4+3x^5)/(1-3x+3x^2-x^3-x^5+3x^6-3x^7+x^8))` -/
def P9653228228003721502.Spec : Prop :=
  ∀ n, P9653228228003721502.a n = A398660 n

theorem P9653228228003721502.correct : P9653228228003721502.Spec := by
  intro n
  simp only [A398660]

end A398660

/-! ## A398660.P16143780755954608131

`A233473(A000292(n))-n`
-/

namespace A398660.P16143780755954608131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233473 (A000292 n).toNat - (n : ℤ)

end

end A398660.P16143780755954608131

namespace A398660

/-- `A233473(A000292(n))-n` -/
def P16143780755954608131.Spec : Prop :=
  ∀ n, P16143780755954608131.a n = A398660 n

end A398660

/-!
# A398661: Lower (1/2, 1) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398661, the canonical program `A398661.P16912725788563947793` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398661 has offset 0).

The definition of A398661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398661.P5587771750197561845

`floor(n*(4*n+5)*(n+1)/12)`
-/

namespace A398661.P5587771750197561845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (4 * n + 5) * (n + 1) : ℚ) / 12⌋

end

end A398661.P5587771750197561845

namespace A398661

/-- `floor(n*(4*n+5)*(n+1)/12)` -/
def P5587771750197561845.Spec : Prop :=
  ∀ n, P5587771750197561845.a n = A398661 n

end A398661

/-! ## A398661.P16912725788563947793

`ogf((x+2x^2+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398661

/-- `ogf((x+2x^2+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P16912725788563947793.Spec : Prop :=
  ∀ n, P16912725788563947793.a n = A398661 n

theorem P16912725788563947793.correct : P16912725788563947793.Spec := by
  intro n
  simp only [A398661]

end A398661

/-! ## A398661.P8217071140631600544

`∑[n²+∑[char[or(2, n)]]]`
-/

namespace A398661.P8217071140631600544
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398661.P8217071140631600544

namespace A398661

/-- `∑[n²+∑[char[or(2, n)]]]` -/
def P8217071140631600544.Spec : Prop :=
  ∀ n, (P8217071140631600544.a n : ℤ) = A398661 n

end A398661

/-! ## A398661.P11770677453888827060

`∑[∑[and(2, n)/2]+n²]`
-/

namespace A398661.P11770677453888827060
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398661.P11770677453888827060

namespace A398661

/-- `∑[∑[and(2, n)/2]+n²]` -/
def P11770677453888827060.Spec : Prop :=
  ∀ n, P11770677453888827060.a n = (A398661 n : ℚ)

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

/-! ## A398661.P18094855655201721134

`ceil((∑[lcm(n, 2*n+1)]-1)/2)`
-/

namespace A398661.P18094855655201721134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) / 2⌉

end

end A398661.P18094855655201721134

namespace A398661

/-- `ceil((∑[lcm(n, 2*n+1)]-1)/2)` -/
def P18094855655201721134.Spec : Prop :=
  ∀ n, P18094855655201721134.a n = A398661 n

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

/-!
# A398662: Upper (1/2, 1) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398662, the canonical program `A398662.P13931983562056736578` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398662 has offset 0).

The definition of A398662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398662.P13931983562056736578

`ogf((2x-x^2+3x^3)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398662

/-- `ogf((2x-x^2+3x^3)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P13931983562056736578.Spec : Prop :=
  ∀ n, P13931983562056736578.a n = A398662 n

theorem P13931983562056736578.correct : P13931983562056736578.Spec := by
  intro n
  simp only [A398662]

end A398662

/-! ## A398662.P4315040936908545909

`ceil(∑[n/2+n²])`
-/

namespace A398662.P4315040936908545909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 + (n ^ 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A398662.P4315040936908545909

namespace A398662

/-- `ceil(∑[n/2+n²])` -/
def P4315040936908545909.Spec : Prop :=
  ∀ n, P4315040936908545909.a n = A398662 n

end A398662

/-! ## A398662.P5305988838238529455

`∑[∑[2*n-char[or(2, n)]]]`
-/

namespace A398662.P5305988838238529455
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398662.P5305988838238529455

namespace A398662

/-- `∑[∑[2*n-char[or(2, n)]]]` -/
def P5305988838238529455.Spec : Prop :=
  ∀ n, P5305988838238529455.a n = A398662 n

end A398662

/-! ## A398662.P17676393178900977927

`round(∑[C(2*n+1, 2)/2])`
-/

namespace A398662.P17676393178900977927
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398662.P17676393178900977927

namespace A398662

/-- `round(∑[C(2*n+1, 2)/2])` -/
def P17676393178900977927.Spec : Prop :=
  ∀ n, P17676393178900977927.a n = A398662 n

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

/-! ## A398662.P16125096291612082497

`floor((∑[C(Δ[n²], 2)]+1)/2)`
-/

namespace A398662.P16125096291612082497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2⌋

end

end A398662.P16125096291612082497

namespace A398662

/-- `floor((∑[C(Δ[n²], 2)]+1)/2)` -/
def P16125096291612082497.Spec : Prop :=
  ∀ n, P16125096291612082497.a n = A398662 n

end A398662

/-! ## A398662.P8797269902846202446

`∑[∑[n-(and(2, n)/2-n)]]`
-/

namespace A398662.P8797269902846202446
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - ((Nat.land 2 n : ℚ) / 2 - (n : ℚ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398662.P8797269902846202446

namespace A398662

/-- `∑[∑[n-(and(2, n)/2-n)]]` -/
def P8797269902846202446.Spec : Prop :=
  ∀ n, P8797269902846202446.a n = (A398662 n : ℚ)

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

/-!
# A398663: Lower (3/2, 1) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398663, the canonical program `A398663.P17264390302320175591` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398663 has offset 0).

The definition of A398663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398663.P17264390302320175591

`ogf((2x+x^2+x^3)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398663

/-- `ogf((2x+x^2+x^3)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P17264390302320175591.Spec : Prop :=
  ∀ n, P17264390302320175591.a n = A398663 n

theorem P17264390302320175591.correct : P17264390302320175591.Spec := by
  intro n
  simp only [A398663]

end A398663

/-! ## A398663.P12710660675335313416

`floor(n*(4*n+11)*(n+1)/12)`
-/

namespace A398663.P12710660675335313416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (4 * n + 11) * (n + 1) : ℚ) / 12⌋

end

end A398663.P12710660675335313416

namespace A398663

/-- `floor(n*(4*n+11)*(n+1)/12)` -/
def P12710660675335313416.Spec : Prop :=
  ∀ n, P12710660675335313416.a n = A398663 n

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

/-! ## A398663.P13678770686285183947

`∑[∑[C(n, 2)%2+2*n]]`
-/

namespace A398663.P13678770686285183947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 % 2 + 2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398663.P13678770686285183947

namespace A398663

/-- `∑[∑[C(n, 2)%2+2*n]]` -/
def P13678770686285183947.Spec : Prop :=
  ∀ n, (P13678770686285183947.a n : ℤ) = A398663 n

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

/-!
# A398664: Upper (3/2, 1) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398664, the canonical program `A398664.P2738383818631677079` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398664 has offset 0).

The definition of A398664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398664.P2738383818631677079

`ogf((3x-2x^2+4x^3-x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398664

/-- `ogf((3x-2x^2+4x^3-x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P2738383818631677079.Spec : Prop :=
  ∀ n, P2738383818631677079.a n = A398664 n

theorem P2738383818631677079.correct : P2738383818631677079.Spec := by
  intro n
  simp only [A398664]

end A398664

/-! ## A398664.P16009531046920758433

`round(∑[n*(3/2+n)])`
-/

namespace A398664.P16009531046920758433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((3 : ℚ) / 2 + (n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398664.P16009531046920758433

namespace A398664

/-- `round(∑[n*(3/2+n)])` -/
def P16009531046920758433.Spec : Prop :=
  ∀ n, P16009531046920758433.a n = A398664 n

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

/-! ## A398664.P17161268237941689994

`∑[n]+floor((∑[C(2*n+1, 2)]+1)/2)`
-/

namespace A398664.P17161268237941689994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℚ) / 2⌋

end

end A398664.P17161268237941689994

namespace A398664

/-- `∑[n]+floor((∑[C(2*n+1, 2)]+1)/2)` -/
def P17161268237941689994.Spec : Prop :=
  ∀ n, P17161268237941689994.a n = A398664 n

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

/-!
# A398665: Lower (1/2, 2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398665, the canonical program `A398665.P7646033834998085422` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398665 has offset 0).

The definition of A398665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398665.P406373283912641441

`floor(n*(n+1)*(8*n+7)/12)`
-/

namespace A398665.P406373283912641441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (n + 1) * (8 * n + 7) : ℚ) / 12⌋

end

end A398665.P406373283912641441

namespace A398665

/-- `floor(n*(n+1)*(8*n+7)/12)` -/
def P406373283912641441.Spec : Prop :=
  ∀ n, P406373283912641441.a n = A398665 n

end A398665

/-! ## A398665.P7646033834998085422

`ogf((2x+3x^2+x^3+2x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398665

/-- `ogf((2x+3x^2+x^3+2x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P7646033834998085422.Spec : Prop :=
  ∀ n, P7646033834998085422.a n = A398665 n

theorem P7646033834998085422.correct : P7646033834998085422.Spec := by
  intro n
  simp only [A398665]

end A398665

/-! ## A398665.P8772436521093221969

`∑[2*n²+∑[char[or(2, n)]]]`
-/

namespace A398665.P8772436521093221969
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398665.P8772436521093221969

namespace A398665

/-- `∑[2*n²+∑[char[or(2, n)]]]` -/
def P8772436521093221969.Spec : Prop :=
  ∀ n, (P8772436521093221969.a n : ℤ) = A398665 n

end A398665

/-! ## A398665.P2716238784588043355

`∑[∑[and(2, n)/2]+2*n²]`
-/

namespace A398665.P2716238784588043355
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (2 * n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398665.P2716238784588043355

namespace A398665

/-- `∑[∑[and(2, n)/2]+2*n²]` -/
def P2716238784588043355.Spec : Prop :=
  ∀ n, P2716238784588043355.a n = (A398665 n : ℚ)

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

/-! ## A398665.P16044381888078786296

`∑[2*n²+∑[A021913(n)]]`
-/

namespace A398665.P16044381888078786296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398665.P16044381888078786296

namespace A398665

/-- `∑[2*n²+∑[A021913(n)]]` -/
def P16044381888078786296.Spec : Prop :=
  ∀ n, P16044381888078786296.a n = A398665 n

end A398665

/-! ## A398665.P5222958310593278430

`A398729(n)+3*C(n+2, 3)`
-/

namespace A398665.P5222958310593278430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398729 n + (3 * Nat.choose (n + 2) 3 : ℤ)

end

end A398665.P5222958310593278430

namespace A398665

/-- `A398729(n)+3*C(n+2, 3)` -/
def P5222958310593278430.Spec : Prop :=
  ∀ n, P5222958310593278430.a n = A398665 n

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

The programs for A398666, the canonical program `A398666.P15891971154703768520` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398666 has offset 0).

The definition of A398666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398666.P15891971154703768520

`ogf((3x+4x^3+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398666

/-- `ogf((3x+4x^3+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P15891971154703768520.Spec : Prop :=
  ∀ n, P15891971154703768520.a n = A398666 n

theorem P15891971154703768520.correct : P15891971154703768520.Spec := by
  intro n
  simp only [A398666]

end A398666

/-! ## A398666.P8420398348409912287

`ceil(∑[((2*n)²+n)/2])`
-/

namespace A398666.P8420398348409912287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 + n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A398666.P8420398348409912287

namespace A398666

/-- `ceil(∑[((2*n)²+n)/2])` -/
def P8420398348409912287.Spec : Prop :=
  ∀ n, P8420398348409912287.a n = A398666 n

end A398666

/-! ## A398666.P4171781848042656191

`round(∑[lcm(n, 4*n+1)/2])`
-/

namespace A398666.P4171781848042656191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (4 * n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398666.P4171781848042656191

namespace A398666

/-- `round(∑[lcm(n, 4*n+1)/2])` -/
def P4171781848042656191.Spec : Prop :=
  ∀ n, P4171781848042656191.a n = A398666 n

end A398666

/-! ## A398666.P10589686012365219085

`floor((n*C(8*(n+1), 2)/24+1)/2)`
-/

namespace A398666.P10589686012365219085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n * Nat.choose (8 * (n + 1)) 2 : ℚ) / 24 + 1) / 2⌋

end

end A398666.P10589686012365219085

namespace A398666

/-- `floor((n*C(8*(n+1), 2)/24+1)/2)` -/
def P10589686012365219085.Spec : Prop :=
  ∀ n, P10589686012365219085.a n = A398666 n

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

/-! ## A398666.P10911552600209367080

`round(∑[A007742(n)/2])`
-/

namespace A398666.P10911552600209367080
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007742 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398666.P10911552600209367080

namespace A398666

/-- `round(∑[A007742(n)/2])` -/
def P10911552600209367080.Spec : Prop :=
  ∀ n, P10911552600209367080.a n = A398666 n

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
# A398668: Number of equivalence classes of dessins d'enfants with n edges under known Galois invariants.

The programs for A398668, there is no canonical definition to state claims against.
-/

/-! ## A398668.P18407182721224250118

`A325954(A086586(n+4)-A122392(n))`
-/

namespace A398668.P18407182721224250118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325954 (A086586 (n + 4) - A122392 n).toNat

end

end A398668.P18407182721224250118

/-! ## A398668.P7839632026922474357

`A217130(n+1)+A098968(A007569(n+1))`
-/

namespace A398668.P7839632026922474357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217130 (n + 1) + A098968 (A007569 (n + 1)).toNat

end

end A398668.P7839632026922474357

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

The programs for A398671, the canonical program `A398671.P16553492494587973019` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398671 has offset 1).

The definition of A398671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398671.P16553492494587973019

`∑[∏{p}[n+1, and(2, #)/2]]`

The canonical program, it is in `Seq.B000.C051`.
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

/-! ## A398671.P13485745033362888831

`∑[A319984(n+1)%2]`
-/

namespace A398671.P13485745033362888831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319984 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398671.P13485745033362888831

namespace A398671

/-- `∑[A319984(n+1)%2]` -/
def P13485745033362888831.Spec : Prop :=
  ∀ n, P13485745033362888831.a n = A398671 (n + 1)

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

/-! ## A398671.P7323934484960269815

`fp[A004144(n+1)-1]`
-/

namespace A398671.P7323934484960269815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A398671.P7323934484960269815

namespace A398671

/-- `fp[A004144(n+1)-1]` -/
def P7323934484960269815.Spec : Prop :=
  ∀ n, (P7323934484960269815.a n : ℤ) = A398671 (n + 1)

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

The programs for A398672, the canonical program `A398672.P12986523527898557867` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398672 has offset 0).

The definition of A398672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398672.P12986523527898557867

`ogf((1+x-29x^2+3x^3)/(1-15x+15x^2-x^3))`

The canonical program, it is in `Seq.B000.C051`.
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

/-! ## A398672.P17862117961032896836

`A003500(n)^(A158388(n)+1)`
-/

namespace A398672.P17862117961032896836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003500 n : ℚ) ^ (A158388 n + 1 : ℤ)

end

end A398672.P17862117961032896836

namespace A398672

/-- `A003500(n)^(A158388(n)+1)` -/
def P17862117961032896836.Spec : Prop :=
  ∀ n, P17862117961032896836.a n = (A398672 n : ℚ)

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

/-! ## A398673.P4992266508978143872

`A105517(A305852(n))+A056303(n+1)`
-/

namespace A398673.P4992266508978143872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 (A305852 n).toNat + A056303 (n + 1)

end

end A398673.P4992266508978143872

/-! ## A398673.P15022883094218349372

`A083382(A007840(n)-A333398(n+1))`
-/

namespace A398673.P15022883094218349372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A007840 n - A333398 (n + 1)).toNat

end

end A398673.P15022883094218349372

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

/-! ## A398677.P8820097538241868103

`∩[2*n, A082957(n+1)]/2`
-/

namespace A398677.P8820097538241868103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A398677.P8820097538241868103

/-! ## A398677.P3002885296146279307

`lt[1, A335153(1+4*n)]`
-/

namespace A398677.P3002885296146279307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335153 (1 + 4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A398677.P3002885296146279307

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

/-! ## A398677.P14544578760583727779

`lt[0, A053246(1+abs(1-4*n))]`
-/

namespace A398677.P14544578760583727779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (1 + |1 - (4 * n : ℤ)|).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A398677.P14544578760583727779

/-!
# A398678: Number of spanning trees of the 3 X n grid graph that are invariant under reflection in the vertical axis.

The programs for A398678, the canonical program `A398678.P17468635417467204317` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398678 has offset 1).

The definition of A398678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398678.P17468635417467204317

`ogf((1+3x-7x^2+7x^4-3x^5-x^6)/(1-15x^2+32x^4-15x^6+x^8))`

The canonical program, it is in `Seq.B000.C051`.
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

/-! ## A398678.P16312220195444612789

`A000045(n+1)*A136210(n+1)`
-/

namespace A398678.P16312220195444612789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A136210 (n + 1)

end

end A398678.P16312220195444612789

namespace A398678

/-- `A000045(n+1)*A136210(n+1)` -/
def P16312220195444612789.Spec : Prop :=
  ∀ n, P16312220195444612789.a n = A398678 (n + 1)

end A398678

/-!
# A398679: Number of spanning trees of the 3 X n grid graph that are invariant under rotation by 180 degrees.

The programs for A398679, the canonical program `A398679.P3681087345552598065` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398679 has offset 1).

The definition of A398679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398679.P3681087345552598065

`ogf((1+3x-3x^2-10x^3-3x^4+3x^5+x^6)/(1-15x^2+32x^4-15x^6+x^8))`

The canonical program, it is in `Seq.B000.C051`.
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

/-! ## A398687.P843087404263649667

`A055642(A076686(n+1)²²)`
-/

namespace A398687.P843087404263649667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((A076686 (n + 1) ^ 2) ^ 2).toNat

end

end A398687.P843087404263649667

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

/-! ## A398694.P7526244700883307353

`A036453(n+1)*A038547(n+1)`
-/

namespace A398694.P7526244700883307353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A038547 (n + 1)

end

end A398694.P7526244700883307353

/-! ## A398694.P17191755804211205211

`(A178334(n)+1)*A038547(n+1)`
-/

namespace A398694.P17191755804211205211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) * A038547 (n + 1)

end

end A398694.P17191755804211205211

/-! ## A398694.P18361449304394599451

`A038547(n+1)*A359227(A359227(n+1))`
-/

namespace A398694.P18361449304394599451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038547 (n + 1) * A359227 (A359227 (n + 1)).toNat

end

end A398694.P18361449304394599451

/-!
# A398695: Numbers k >= 2 such that the greedy prime-sum remainder of k is 1.

The programs for A398695, there is no canonical definition to state claims against.
-/

/-! ## A398695.P10196296918182972763

`A190324(n+1)-A276781(A000079(n))`
-/

namespace A398695.P10196296918182972763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190324 (n + 1) - A276781 (A000079 n).toNat

end

end A398695.P10196296918182972763

/-! ## A398695.P8325017898501333515

`A190324(n+1)-A109014(A397286(n))`
-/

namespace A398695.P8325017898501333515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190324 (n + 1) - A109014 (A397286 n).toNat

end

end A398695.P8325017898501333515

/-! ## A398695.P7467424774863080006

`A190324(n+1)-A267936(A373621(n))`
-/

namespace A398695.P7467424774863080006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190324 (n + 1) - A267936 (A373621 n).toNat

end

end A398695.P7467424774863080006

/-! ## A398695.P16352145905710403480

`A190324(n+1)-A267936(A173018(3*n+2))`
-/

namespace A398695.P16352145905710403480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190324 (n + 1) - A267936 (A173018 (3 * n + 2)).toNat

end

end A398695.P16352145905710403480

/-! ## A398695.P13537027853299374830

`A190324(n+1)+A057428(A000079(n))`
-/

namespace A398695.P13537027853299374830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190324 (n + 1) + A057428 (A000079 n).toNat

end

end A398695.P13537027853299374830

/-!
# A398696: a(n) = floor(3*11^n/4).

The programs for A398696, the canonical program `A398696.P11525538983804807962` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398696 has offset 0).

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

The canonical program, it is in `Seq.B000.C051`.
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

The programs for A398697, the canonical program `A398697.P16552437538001656140` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398697 has offset 0).

The definition of A398697 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11^n/4)` (program `A398697.P16552437538001656140`, by `A398697.P16552437538001656140.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A398697.P16552437538001656140

`floor(11^n/4)`

The canonical program, it is in `Seq.B000.C051`.
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

/-! ## A398697.P4050663680333968743

`and(and(11^n, -2)/2, -2)/2`
-/

namespace A398697.P4050663680333968743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (SequenceMachineLib.roundAway ((Int.land (11 ^ n : ℤ) (-2) : ℚ) / 2)) (-2) : ℚ) / 2

end

end A398697.P4050663680333968743

namespace A398697

/-- `and(and(11^n, -2)/2, -2)/2` -/
def P4050663680333968743.Spec : Prop :=
  ∀ n, P4050663680333968743.a n = (A398697 n : ℚ)

end A398697

/-! ## A398697.P11439991086664840906

`ceil(A001020(n)/4)-1`
-/

namespace A398697.P11439991086664840906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001020 n : ℚ) / 4⌉ - 1

end

end A398697.P11439991086664840906

namespace A398697

/-- `ceil(A001020(n)/4)-1` -/
def P11439991086664840906.Spec : Prop :=
  ∀ n, P11439991086664840906.a n = A398697 n

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

/-! ## A398699.P11160419474823235654

`(n+1)*∏{p}[A000272(n), n/#]`
-/

namespace A398699.P11160419474823235654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (n : ℚ) / (p : ℚ))

end

end A398699.P11160419474823235654

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

/-! ## A398699.P2023103068329715466

`lcm(n+1, A001227(A032001(n)))`
-/

namespace A398699.P2023103068329715466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A001227 (A032001 n).toNat)

end

end A398699.P2023103068329715466

