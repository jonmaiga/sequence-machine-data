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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A362900: Number of nonisomorphic unordered pairs of fixed-point-free endofunctions on an n-set.

The programs for A362900, there is no canonical definition to state claims against.
-/

/-! ## A362900.P4695135068191313658

`A362899(∑[n+3])`
-/

namespace A362900.P4695135068191313658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362899 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362900.P4695135068191313658

/-!
# A362901: Number of nonisomorphic unordered triples of fixed-point-free endofunctions on an n-set.

The programs for A362901, there is no canonical definition to state claims against.
-/

/-! ## A362901.P3610428577921595950

`A362899(A046691(n+2))`
-/

namespace A362901.P3610428577921595950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362899 (A046691 (n + 2)).toNat

end

end A362901.P3610428577921595950

/-! ## A362901.P5156565338368313450

`A362899(A000217(n+4)-4)`
-/

namespace A362901.P5156565338368313450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362899 (A000217 (n + 4) - 4).toNat

end

end A362901.P5156565338368313450

/-! ## A362901.P540754016733265299

`A362899(A000124(n+4)-5)`
-/

namespace A362901.P540754016733265299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362899 (A000124 (n + 4) - 5).toNat

end

end A362901.P540754016733265299

/-! ## A362901.P5069260866162893603

`A362899(A260423(n+1)+A000096(n+2))`
-/

namespace A362901.P5069260866162893603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362899 (A260423 (n + 1) + A000096 (n + 2)).toNat

end

end A362901.P5069260866162893603

/-! ## A362901.P6870023564203468476

`A362899(lt[A362897(n+3), A362648(n+2)])`
-/

namespace A362901.P6870023564203468476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362897 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362648 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362899 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362901.P6870023564203468476

/-!
# A362902: Number of nonisomorphic multisets of fixed-point-free endofunctions on an n-set with n endofunctions.

The programs for A362902, there is no canonical definition to state claims against.
-/

/-! ## A362902.P8034647816618107415

`A362899(∑[4*n])`
-/

namespace A362902.P8034647816618107415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362899 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362902.P8034647816618107415

/-!
# A362903: Array read by antidiagonals: T(n,k) is the number of nonisomorphic k-tuples of involutions on a (2n)-set that pairwise commute.

The programs for A362903, there is no canonical definition to state claims against.
-/

/-! ## A362903.P4111423180644061282

`A012265(A026769(n)²)`
-/

namespace A362903.P4111423180644061282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A026769 n ^ 2).toNat

end

end A362903.P4111423180644061282

/-! ## A362903.P3861807099168160756

`A076755(A066119(n+1))`
-/

namespace A362903.P3861807099168160756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076755 (A066119 (n + 1)).toNat

end

end A362903.P3861807099168160756

/-! ## A362903.P2445868509786201713

`A147645(A209196(n))+A092056(n)`
-/

namespace A362903.P2445868509786201713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147645 (A209196 n).toNat + A092056 n

end

end A362903.P2445868509786201713

/-! ## A362903.P12239934288010748996

`and(A112705(n), A223172(A112705(n)))`
-/

namespace A362903.P12239934288010748996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112705 n) (A223172 (A112705 n).toNat)

end

end A362903.P12239934288010748996

/-! ## A362903.P3081257029159386969

`or(A092056(n), A369658(A000079(n)))`
-/

namespace A362903.P3081257029159386969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A092056 n) (A369658 (A000079 n).toNat)

end

end A362903.P3081257029159386969

/-!
# A362904: Number of nonisomorphic ordered triples of involutions on a (2n)-set that pairwise commute.

The programs for A362904, there is no canonical definition to state claims against.
-/

/-! ## A362904.P5218597484801682326

`A362903(eq[3, A025581(n)])`
-/

namespace A362904.P5218597484801682326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362904.P5218597484801682326

/-! ## A362904.P14001697833293539666

`A362903(A000217(n+4)-4)`
-/

namespace A362904.P14001697833293539666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362903 (A000217 (n + 4) - 4).toNat

end

end A362904.P14001697833293539666

/-! ## A362904.P6272485093966224865

`A362903(A100542(n+3)+n)`
-/

namespace A362904.P6272485093966224865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362903 (A100542 (n + 3) + (n : ℤ)).toNat

end

end A362904.P6272485093966224865

/-! ## A362904.P17005024913414823581

`A362903(lt[A038335(n+3), A038307(n)])`
-/

namespace A362904.P17005024913414823581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038335 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362903 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362904.P17005024913414823581

/-!
# A362905: Array read by antidiagonals: T(n,k) is the number of n element multisets of length k vectors over GF(2) that sum to zero.

The programs for A362905, there is no canonical definition to state claims against.
-/

/-! ## A362905.P13117426653247230749

`A215244(A048993(n)%A177819(n+4))`
-/

namespace A362905.P13117426653247230749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215244 (Int.tmod (A048993 n) (A177819 (n + 4))).toNat

end

end A362905.P13117426653247230749

/-! ## A362905.P7606539617712030222

`A000005(A293669(n)^A359762(n))`
-/

namespace A362905.P7606539617712030222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A293669 n : ℚ) ^ (A359762 n : ℤ))).toNat

end

end A362905.P7606539617712030222

/-! ## A362905.P8679635526562046620

`A070939(A113092(n)%A162975(n))`
-/

namespace A362905.P8679635526562046620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A113092 n) (A162975 n)).toNat

end

end A362905.P8679635526562046620

/-! ## A362905.P15882847695088302806

`A070939(A104763(n+1)^(A130321(n)-1))`
-/

namespace A362905.P15882847695088302806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A104763 (n + 1) : ℚ) ^ (A130321 n - 1 : ℤ))).toNat

end

end A362905.P15882847695088302806

/-! ## A362905.P1592446630259558010

`A227355(C(A138155(n+1), A329900(n+1)))`
-/

namespace A362905.P1592446630259558010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227355 (Nat.choose (A138155 (n + 1)).toNat (A329900 (n + 1)).toNat)

end

end A362905.P1592446630259558010

/-!
# A362906: Number of n element multisets of length 3 vectors over GF(2) that sum to zero.

The programs for A362906, there is no canonical definition to state claims against.
-/

/-! ## A362906.P13463161133553561489

`A362905(∑[n+4]+2)`
-/

namespace A362906.P13463161133553561489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362905 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A362906.P13463161133553561489

/-! ## A362906.P7121602102459482353

`A291747(A122889(n))`
-/

namespace A362906.P7121602102459482353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291747 (A122889 n).toNat

end

end A362906.P7121602102459482353

/-! ## A362906.P12660917363778933634

`A291747(A057649(n+1))`
-/

namespace A362906.P12660917363778933634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291747 (A057649 (n + 1)).toNat

end

end A362906.P12660917363778933634

/-!
# A362907: Number of graphs on n unlabeled nodes with treewidth 3.

The programs for A362907, there is no canonical definition to state claims against.
-/

/-! ## A362907.P9873858897578514530

`A279278(A000071(2*n+5)-A062389(n+1))`
-/

namespace A362907.P9873858897578514530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279278 (A000071 (2 * n + 5) - A062389 (n + 1)).toNat

end

end A362907.P9873858897578514530

/-!
# A362908: Number of graphs on n unlabeled nodes with treewidth 2.

The programs for A362908, there is no canonical definition to state claims against.
-/

/-! ## A362908.P9952165466995746618

`A121895(A392141(n))`
-/

namespace A362908.P9952165466995746618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121895 (A392141 n).toNat

end

end A362908.P9952165466995746618

/-! ## A362908.P12117479278333437775

`A121895(2^A000045(n))`
-/

namespace A362908.P12117479278333437775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121895 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000045 n : ℤ))).toNat

end

end A362908.P12117479278333437775

/-! ## A362908.P2643055233089221629

`∑[∑[A085856(A000151(n+1))]]`
-/

namespace A362908.P2643055233089221629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085856 (A000151 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362908.P2643055233089221629

/-! ## A362908.P3235269823847107116

`floor(A323789(n)/A001950(n+1))`
-/

namespace A362908.P3235269823847107116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323789 n : ℚ) / (A001950 (n + 1) : ℚ)⌋

end

end A362908.P3235269823847107116

/-!
# A362910: Semiprimes p*q for which p <= q < p^3.

The programs for A362910, there is no canonical definition to state claims against.
-/

/-! ## A362910.P15531357019575773893

`filter[A088382(n+1), A064911(#)]`
-/

namespace A362910.P15531357019575773893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A362910.P15531357019575773893

/-! ## A362910.P14519907532390841554

`filter[A088382(n+2), A359764(#)]`
-/

namespace A362910.P14519907532390841554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A362910.P14519907532390841554

/-! ## A362910.P564458569490366890

`∩[A001358(n+1), A088382(n+1)]`
-/

namespace A362910.P564458569490366890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362910.P564458569490366890

/-! ## A362910.P14705684063634993174

`∩[A063762(n+1), A088382(n+1)]`
-/

namespace A362910.P14705684063634993174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362910.P14705684063634993174

/-! ## A362910.P16150208604143483881

`eq[A058398(A046563(3*n+4)), A064911(n+1)]+1`
-/

namespace A362910.P16150208604143483881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (A046563 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A362910.P16150208604143483881

/-!
# A362911: Expansion of e.g.f. 1/( 1 - (1 + x) * log(1 + x) ).

The programs for A362911, there is no canonical definition to state claims against.
-/

/-! ## A362911.P7813148817758240110

`A007897(A000309(n)+1)`
-/

namespace A362911.P7813148817758240110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007897 (A000309 n + 1).toNat

end

end A362911.P7813148817758240110

/-! ## A362911.P3674130448770111944

`A283467(3*A000670(n))`
-/

namespace A362911.P3674130448770111944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283467 (3 * A000670 n).toNat

end

end A362911.P3674130448770111944

/-!
# A362912: Expansion of e.g.f. 1/( 1 - (exp(x) - 1) * exp(exp(x) - 1) ).

The programs for A362912, there is no canonical definition to state claims against.
-/

/-! ## A362912.P18056527778418355361

`A345872(A132276(n)+A112915(n))`
-/

namespace A362912.P18056527778418355361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345872 (A132276 n + A112915 n).toNat

end

end A362912.P18056527778418355361

/-!
# A362913: Array of numbers read by upward antidiagonals: leading row lists phi(i), i >= 1 (cf. A000010); the following rows give absolute values of differences of previous row.

The programs for A362913, there is no canonical definition to state claims against.
-/

/-! ## A362913.P8588371462110356417

`A362463(A014132(n+1))%A072753(n+3)`
-/

namespace A362913.P8588371462110356417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362463 (A014132 (n + 1)).toNat) (A072753 (n + 3))

end

end A362913.P8588371462110356417

/-! ## A362913.P620844387527093076

`A362463(A014132(n+1)%A222313(2*n+5))`
-/

namespace A362913.P620844387527093076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362463 (Int.tmod (A014132 (n + 1)) (A222313 (2 * n + 5))).toNat

end

end A362913.P620844387527093076

/-! ## A362913.P15252723159950954332

`A333307(A082958(n))`
-/

namespace A362913.P15252723159950954332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333307 (A082958 n).toNat

end

end A362913.P15252723159950954332

/-! ## A362913.P11517658804407660398

`A370278(A299634(2*n+3)+n)`
-/

namespace A362913.P11517658804407660398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370278 (A299634 (2 * n + 3) + (n : ℤ)).toNat

end

end A362913.P11517658804407660398

/-!
# A362915: a(n) = size of largest subset of {1...n} such that no difference between two terms is a prime + 1.

The programs for A362915, there is no canonical definition to state claims against.
-/

/-! ## A362915.P10101171804736812075

`∑[A069513(A083137(n+1)+A048871(n+1))]`
-/

namespace A362915.P10101171804736812075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (A083137 (n + 1) + A048871 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362915.P10101171804736812075

/-!
# A362917: The part of n to the left of the decimal point in the Dekking-van-Loon-canonical base phi representation of n.

The programs for A362917, there is no canonical definition to state claims against.
-/

/-! ## A362917.P3778303513201252382

`A007088(∑{e}[A293653(n), #])`
-/

namespace A362917.P3778303513201252382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A362917.P3778303513201252382

/-! ## A362917.P14478185888542070977

`A007088(∑[A247138(2^n+1)])`
-/

namespace A362917.P14478185888542070977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247138 (2 ^ n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362917.P14478185888542070977

/-! ## A362917.P14125818082889220778

`A112867(lt[A163575(3*(n+1)), 4])`
-/

namespace A362917.P14125818082889220778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112867 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A362917.P14125818082889220778

/-! ## A362917.P15967229374179685270

`A007088(eq[A315248(n), A315263(n)])`
-/

namespace A362917.P15967229374179685270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315248 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A362917.P15967229374179685270

/-!
# A362919: a(n) is the right portion (reversed) of the base-phi representation of n in Knott's representation which uses the least number of 0's, the most 1's, and in which the right-hand portion is finite.

The programs for A362919, there is no canonical definition to state claims against.
-/

/-! ## A362919.P13861420719603830247

`A287503(3*n)-A258021(A025620(3*n+1))`
-/

namespace A362919.P13861420719603830247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287503 (3 * n) - A258021 (A025620 (3 * n + 1)).toNat

end

end A362919.P13861420719603830247

/-! ## A362919.P12236778879241125697

`A287503(A041581(n)+2)`
-/

namespace A362919.P12236778879241125697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287503 (A041581 n + 2).toNat

end

end A362919.P12236778879241125697

/-!
# A362920: The Knott base-phi representation of n described in A362919 written as a binary string, omitting the dot.

The programs for A362920, there is no canonical definition to state claims against.
-/

/-! ## A362920.P9840997570774781548

`∑{e}[n+1, 3^#]%2*A286961(A323339(n))`
-/

namespace A362920.P9840997570774781548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ p ∈ Nat.primeFactors (f1 n), 3 ^ Nat.factorization (f1 n) p) % 2 : ℕ) : ℤ) * A286961 (A323339 n).toNat

end

end A362920.P9840997570774781548

/-!
# A362921: The Dekking-van-Loon-canonical base-phi representation of n described in A362917 written as a binary string, omitting the dot.

The programs for A362921, there is no canonical definition to state claims against.
-/

/-! ## A362921.P5191023698521568804

`A007088(A244040(A007088(n)²))`
-/

namespace A362921.P5191023698521568804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A244040 (A007088 n ^ 2).toNat).toNat

end

end A362921.P5191023698521568804

/-!
# A362923: G.f. = (3*x^4+5*x^2+6*x-7)/(4*x^7+x^4+x^2+x-1).

The programs for A362923, the canonical program `A362923.P17602133687873144713` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362923 has offset 0).

The definition of A362923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362923.P17602133687873144713

`a(n-1)+a(n-2)+a(n-4)+4*a(n-7)` with `a(0)=7, a(1)=1, a(2)=3, a(3)=4, a(4)=11, a(5)=16, a(6)=30`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A362923

/-- `a(n-1)+a(n-2)+a(n-4)+4*a(n-7)` -/
def P17602133687873144713.Spec : Prop :=
  ∀ n, (P17602133687873144713.a n : ℤ) = A362923 n

theorem P17602133687873144713.correct : P17602133687873144713.Spec := by
  intro n
  simp only [A362923]

end A362923

/-!
# A362924: Triangle read by rows: T(n,m), n >= 1, 1 <= m <= n, is number of partitions of the set {1,2,...,n} that have at most one block contained in {1,...,m}.

The programs for A362924, there is no canonical definition to state claims against.
-/

/-! ## A362924.P16784128210976065582

`A362925(A080036(n))`
-/

namespace A362924.P16784128210976065582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 (A080036 n).toNat

end

end A362924.P16784128210976065582

/-! ## A362924.P12745497374501644386

`A362925(A014132(n+1))`
-/

namespace A362924.P12745497374501644386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 (A014132 (n + 1)).toNat

end

end A362924.P12745497374501644386

/-! ## A362924.P12674675689261049511

`A362925(lt[A010054(n), 1])`
-/

namespace A362924.P12674675689261049511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A362924.P12674675689261049511

/-! ## A362924.P13642400553029584177

`A362925(lt[1, A059268(n)])`
-/

namespace A362924.P13642400553029584177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A362924.P13642400553029584177

/-! ## A362924.P2443023089915485623

`A362925(∑[A010054(n)+1])`
-/

namespace A362924.P2443023089915485623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362924.P2443023089915485623

/-! ## A362924.P11774507166819391390

`A362925(lt[1, A208333(n+1)])`
-/

namespace A362924.P11774507166819391390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A362924.P11774507166819391390

/-! ## A362924.P1596595704579244612

`A362926(A038722(n+1))`
-/

namespace A362924.P1596595704579244612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362926 (A038722 (n + 1)).toNat

end

end A362924.P1596595704579244612

/-!
# A362925: Triangle read by rows: T(n,m), n >= 0, 0 <= m <= n, is number of partitions of the set {1,2,...,n} that have at most one block contained in {1,...,m}.

The programs for A362925, there is no canonical definition to state claims against.
-/

/-! ## A362925.P6655388109750820390

`A113547(∑[char[∑[n]]]²-n)`
-/

namespace A362925.P6655388109750820390
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A362925.P6655388109750820390

/-! ## A362925.P3496648854155155083

`A336112(A144502(n))`
-/

namespace A362925.P3496648854155155083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336112 (A144502 n).toNat

end

end A362925.P3496648854155155083

/-!
# A362926: Triangle read by rows: A113547 without its main diagonal.

The programs for A362926, there is no canonical definition to state claims against.
-/

/-! ## A362926.P10819441284945246201

`A113547(comp[∑[n]])`
-/

namespace A362926.P10819441284945246201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A362926.P10819441284945246201

/-! ## A362926.P12960974077451221245

`A362924(∑[char[∑[n]]]²-n)`
-/

namespace A362926.P12960974077451221245
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362924 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A362926.P12960974077451221245

/-! ## A362926.P14545818680003700871

`A362925(n+1+A171176(2*(n+1)))`
-/

namespace A362926.P14545818680003700871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 ((n + 1 : ℤ) + A171176 (2 * (n + 1))).toNat

end

end A362926.P14545818680003700871

/-! ## A362926.P3887570601939671945

`A362925(A038722(n+1)+A002024(n+1))`
-/

namespace A362926.P3887570601939671945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A362926.P3887570601939671945

/-! ## A362926.P3330872454570509660

`A102661(n+1)-A368409(A368099(n))`
-/

namespace A362926.P3330872454570509660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102661 (n + 1) - A368409 (A368099 n).toNat

end

end A362926.P3330872454570509660

/-!
# A362927: Subtract 2 from the terms of the Kolakoski-(1,3) sequence A064353.

The programs for A362927, there is no canonical definition to state claims against.
-/

/-! ## A362927.P17154639795271094665

`-A362928(n+1)`
-/

namespace A362927.P17154639795271094665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A362928 (n + 1)

end

end A362927.P17154639795271094665

/-! ## A362927.P15332471953189857768

`A064353(n+1)-2`
-/

namespace A362927.P15332471953189857768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (n + 1) - 2

end

end A362927.P15332471953189857768

/-! ## A362927.P16445576639629101427

`A000007(n+1)-A362928(n+1)`
-/

namespace A362927.P16445576639629101427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A362928 (n + 1)

end

end A362927.P16445576639629101427

/-! ## A362927.P12562716113487012401

`A362928(n+1)*A362928(A362930(n+1))`
-/

namespace A362927.P12562716113487012401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362928 (n + 1) * A362928 (A362930 (n + 1)).toNat

end

end A362927.P12562716113487012401

/-!
# A362928: Subtract 2 from the terms of the Kolakoski-(1,3) sequence A064353 and negate the result.

The programs for A362928, there is no canonical definition to state claims against.
-/

/-! ## A362928.P13259547964830547939

`-A362927(n+1)`
-/

namespace A362928.P13259547964830547939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A362927 (n + 1)

end

end A362928.P13259547964830547939

/-! ## A362928.P3161566533103745680

`2-A064353(n+1)`
-/

namespace A362928.P3161566533103745680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A064353 (n + 1)

end

end A362928.P3161566533103745680

/-! ## A362928.P5838522138405015221

`xor(-2, A362927(A000027(n+1)))`
-/

namespace A362928.P5838522138405015221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-2) (A362927 (A000027 (n + 1)).toNat)

end

end A362928.P5838522138405015221

/-! ## A362928.P94542121167270468

`n*A000007(n)-A362927(n+1)`
-/

namespace A362928.P94542121167270468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n - A362927 (n + 1)

end

end A362928.P94542121167270468

/-! ## A362928.P18235916493112940807

`A134667(2*n)-A362927(n+1)`
-/

namespace A362928.P18235916493112940807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 (2 * n) - A362927 (n + 1)

end

end A362928.P18235916493112940807

/-! ## A362928.P477140159094850165

`A362927(n+1)*A362927(A362929(n+1))`
-/

namespace A362928.P477140159094850165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362927 (n + 1) * A362927 (A362929 (n + 1)).toNat

end

end A362928.P477140159094850165

/-!
# A362929: Indices of 1's in A064353.

The programs for A362929, there is no canonical definition to state claims against.
-/

/-! ## A362929.P2219534069051457283

`eq[1, A064353(n+1)]+1`
-/

namespace A362929.P2219534069051457283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A362929.P2219534069051457283

/-! ## A362929.P14260323778130499820

`lt[A064353(n+1), A071820(n+1)]+1`
-/

namespace A362929.P14260323778130499820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A362929.P14260323778130499820

/-! ## A362929.P27034986409289896

`lt[A064353(n+1), A074804(n+1)]+1`
-/

namespace A362929.P27034986409289896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074804 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A362929.P27034986409289896

/-! ## A362929.P14449704787002505369

`lt[A001285(n)%A064353(n+1), 1]+1`
-/

namespace A362929.P14449704787002505369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001285 n) (A064353 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A362929.P14449704787002505369

/-! ## A362929.P10630671494882843636

`lt[A333242(n+1)%A064353(n+1), 1]+1`
-/

namespace A362929.P10630671494882843636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333242 (n + 1)) (A064353 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A362929.P10630671494882843636

/-! ## A362929.P2718912064918834709

`lt[A333243(n+4)%A064353(n+1), 1]+1`
-/

namespace A362929.P2718912064918834709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333243 (n + 4)) (A064353 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A362929.P2718912064918834709

/-!
# A362930: Indices of 3's in A064353.

The programs for A362930, there is no canonical definition to state claims against.
-/

/-! ## A362930.P6422076863275031287

`A146562(n+1)-2*(n+1)+1`
-/

namespace A362930.P6422076863275031287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146562 (n + 1) - (2 * (n + 1) : ℤ) + 1

end

end A362930.P6422076863275031287

/-! ## A362930.P13860098376583694547

`A146562(n+1)-Δ[n²]`
-/

namespace A362930.P13860098376583694547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146562 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A362930.P13860098376583694547

/-! ## A362930.P8365777041601002087

`comp[A362929(n+1)-2]+2`
-/

namespace A362930.P8365777041601002087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362929 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A362930.P8365777041601002087

/-! ## A362930.P17064755428974280049

`abs(A146562(n+1)-A005408(n))`
-/

namespace A362930.P17064755428974280049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A146562 (n + 1) - A005408 n|

end

end A362930.P17064755428974280049

/-! ## A362930.P1508661066913273477

`eq[1, A362927(n+1)]+1`
-/

namespace A362930.P1508661066913273477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362927 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A362930.P1508661066913273477

/-! ## A362930.P14114810136565799522

`lt[1, A064353(n+1)]+1`
-/

namespace A362930.P14114810136565799522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A362930.P14114810136565799522

/-! ## A362930.P4104507765002091301

`lt[A362928(n+1), 1]+1`
-/

namespace A362930.P4104507765002091301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362928 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A362930.P4104507765002091301

/-! ## A362930.P8377675972085660590

`lt[1, A064353(A028310(n))]`
-/

namespace A362930.P8377675972085660590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A362930.P8377675972085660590

/-!
# A362931: a(n) = number of pairs (i,j) in [1..n] X [1..n] with integral harmonic mean 2*i*j/(i+j).

The programs for A362931, there is no canonical definition to state claims against.
-/

/-! ## A362931.P14762969065055651054

`∑[A016813(A270417(n+1))]`
-/

namespace A362931.P14762969065055651054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A270417 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362931.P14762969065055651054

/-! ## A362931.P17029984127171856495

`∑[A005408(2*A270417(n+1))]`
-/

namespace A362931.P17029984127171856495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * A270417 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362931.P17029984127171856495

/-! ## A362931.P2557882698865992301

`A132188(n+1)-A362932(n+1)`
-/

namespace A362931.P2557882698865992301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132188 (n + 1) - A362932 (n + 1)

end

end A362931.P2557882698865992301

/-! ## A362931.P18206699279877268578

`A132188(n+1)-2*A362933(n+1)`
-/

namespace A362931.P18206699279877268578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132188 (n + 1) - 2 * A362933 (n + 1)

end

end A362931.P18206699279877268578

/-! ## A362931.P11314737031378431967

`A000982(n+1)-A362936(n+1)`
-/

namespace A362931.P11314737031378431967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) - A362936 (n + 1)

end

end A362931.P11314737031378431967

/-! ## A362931.P8692850404029784816

`A000982(n+1)-A362937(n+1)-A362937(n+1)`
-/

namespace A362931.P8692850404029784816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) - A362937 (n + 1) - A362937 (n + 1)

end

end A362931.P8692850404029784816

/-!
# A362932: a(n) = A132188(n) - A362931(n).

The programs for A362932, there is no canonical definition to state claims against.
-/

/-! ## A362932.P12489722728169571968

`A132188(n+1)-A362931(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362932.P12489722728169571968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132188 (n + 1) - A362931 (n + 1)

end

end A362932.P12489722728169571968

/-! ## A362932.P17576872678774201767

`2*A362933(n+1)`
-/

namespace A362932.P17576872678774201767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A362933 (n + 1)

end

end A362932.P17576872678774201767

/-! ## A362932.P2213206125264891727

`A362936(n+1)-A362934(n+1)`
-/

namespace A362932.P2213206125264891727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362936 (n + 1) - A362934 (n + 1)

end

end A362932.P2213206125264891727

/-! ## A362932.P5603897033101966454

`2*(A362937(n+1)-A362935(n+1))`
-/

namespace A362932.P5603897033101966454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A362937 (n + 1) - A362935 (n + 1))

end

end A362932.P5603897033101966454

/-! ## A362932.P13210366611913279953

`A132188(n+1)+A362936(n+1)-A000982(n+1)`
-/

namespace A362932.P13210366611913279953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132188 (n + 1) + (A362936 (n + 1) - A000982 (n + 1))

end

end A362932.P13210366611913279953

/-! ## A362932.P3836253232414813578

`A000982(n+1)-(A362934(n+1)+A362931(n+1))`
-/

namespace A362932.P3836253232414813578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) - (A362934 (n + 1) + A362931 (n + 1))

end

end A362932.P3836253232414813578

/-!
# A362933: a(n) = (A132188(n) - A362931(n))/2.

The programs for A362933, there is no canonical definition to state claims against.
-/

/-! ## A362933.P9727592851642251886

`A362932(n+1)/2`
-/

namespace A362933.P9727592851642251886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362932 (n + 1) : ℚ) / 2

end

end A362933.P9727592851642251886

/-! ## A362933.P9007470359287042565

`(A132188(n+1)-A362931(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362933.P9007470359287042565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132188 (n + 1) - A362931 (n + 1) : ℚ) / 2

end

end A362933.P9007470359287042565

/-! ## A362933.P7287807171384585000

`A362937(n+1)-A362935(n+1)`
-/

namespace A362933.P7287807171384585000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362937 (n + 1) - A362935 (n + 1)

end

end A362933.P7287807171384585000

/-! ## A362933.P10411932066607577354

`A362936(n+1)/2-A362935(n+1)`
-/

namespace A362933.P10411932066607577354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362936 (n + 1) : ℚ) / 2 - (A362935 (n + 1) : ℚ)

end

end A362933.P10411932066607577354

/-! ## A362933.P2491660080518345183

`(A362936(n+1)-A362934(n+1))/2`
-/

namespace A362933.P2491660080518345183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362936 (n + 1) - A362934 (n + 1) : ℚ) / 2

end

end A362933.P2491660080518345183

/-! ## A362933.P4024276841160300890

`A362936(n+1)/2-(A087811(n+1)-A120486(n+1))`
-/

namespace A362933.P4024276841160300890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362936 (n + 1) : ℚ) / 2 - (A087811 (n + 1) - A120486 (n + 1) : ℚ)

end

end A362933.P4024276841160300890

/-!
# A362934: a(n) = A000982(n) - A132188(n).

The programs for A362934, the canonical program `A362934.P7877997360191221463` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362934 has offset 1).

The definition of A362934 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132188, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362934.P7877997360191221463

`A000982(n+1)-A132188(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A362934

/-- `A000982(n+1)-A132188(n+1)` -/
def P7877997360191221463.Spec : Prop :=
  ∀ n, P7877997360191221463.a n = A362934 (n + 1)

theorem P7877997360191221463.correct : P7877997360191221463.Spec := by
  intro n
  simp only [A362934, Nat.add_sub_cancel]

end A362934

/-! ## A362934.P13959492128629137340

`2*A362935(n+1)`
-/

namespace A362934.P13959492128629137340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A362935 (n + 1)

end

end A362934.P13959492128629137340

namespace A362934

/-- `2*A362935(n+1)` -/
def P13959492128629137340.Spec : Prop :=
  ∀ n, P13959492128629137340.a n = A362934 (n + 1)

end A362934

/-! ## A362934.P16648863761271381362

`A007590(n)-A132189(n+1)`
-/

namespace A362934.P16648863761271381362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n - A132189 (n + 1)

end

end A362934.P16648863761271381362

namespace A362934

/-- `A007590(n)-A132189(n+1)` -/
def P16648863761271381362.Spec : Prop :=
  ∀ n, P16648863761271381362.a n = A362934 (n + 1)

end A362934

/-! ## A362934.P2958511390013744665

`A362936(n+1)-A362932(n+1)`
-/

namespace A362934.P2958511390013744665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362936 (n + 1) - A362932 (n + 1)

end

end A362934.P2958511390013744665

namespace A362934

/-- `A362936(n+1)-A362932(n+1)` -/
def P2958511390013744665.Spec : Prop :=
  ∀ n, P2958511390013744665.a n = A362934 (n + 1)

end A362934

/-! ## A362934.P14523891753937293196

`2*(A002620(n)-A132345(n+1))`
-/

namespace A362934.P14523891753937293196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002620 n - A132345 (n + 1))

end

end A362934.P14523891753937293196

namespace A362934

/-- `2*(A002620(n)-A132345(n+1))` -/
def P14523891753937293196.Spec : Prop :=
  ∀ n, P14523891753937293196.a n = A362934 (n + 1)

end A362934

/-! ## A362934.P12522191773279719267

`2*(A087811(n+1)-A120486(n+1))`
-/

namespace A362934.P12522191773279719267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A087811 (n + 1) - A120486 (n + 1))

end

end A362934.P12522191773279719267

namespace A362934

/-- `2*(A087811(n+1)-A120486(n+1))` -/
def P12522191773279719267.Spec : Prop :=
  ∀ n, P12522191773279719267.a n = A362934 (n + 1)

end A362934

/-! ## A362934.P17016570410214092379

`2*(A362937(n+1)-A362933(n+1))`
-/

namespace A362934.P17016570410214092379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A362937 (n + 1) - A362933 (n + 1))

end

end A362934.P17016570410214092379

namespace A362934

/-- `2*(A362937(n+1)-A362933(n+1))` -/
def P17016570410214092379.Spec : Prop :=
  ∀ n, P17016570410214092379.a n = A362934 (n + 1)

end A362934

/-! ## A362934.P18039965036517210768

`2*A362937(n+1)-A362932(n+1)`
-/

namespace A362934.P18039965036517210768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A362937 (n + 1) - A362932 (n + 1)

end

end A362934.P18039965036517210768

namespace A362934

/-- `2*A362937(n+1)-A362932(n+1)` -/
def P18039965036517210768.Spec : Prop :=
  ∀ n, P18039965036517210768.a n = A362934 (n + 1)

end A362934

/-! ## A362934.P16487577159957835763

`A362936(n+1)-2*A362933(n+1)`
-/

namespace A362934.P16487577159957835763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362936 (n + 1) - 2 * A362933 (n + 1)

end

end A362934.P16487577159957835763

namespace A362934

/-- `A362936(n+1)-2*A362933(n+1)` -/
def P16487577159957835763.Spec : Prop :=
  ∀ n, P16487577159957835763.a n = A362934 (n + 1)

end A362934

/-! ## A362934.P16581474481025767569

`A131941(n+1)-(A132188(n+1)+A131941(n))`
-/

namespace A362934.P16581474481025767569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 (n + 1) - (A132188 (n + 1) + A131941 n)

end

end A362934.P16581474481025767569

namespace A362934

/-- `A131941(n+1)-(A132188(n+1)+A131941(n))` -/
def P16581474481025767569.Spec : Prop :=
  ∀ n, P16581474481025767569.a n = A362934 (n + 1)

end A362934

/-! ## A362934.P8123332871488874306

`A362931(n+1)+A362936(n+1)-A132188(n+1)`
-/

namespace A362934.P8123332871488874306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362931 (n + 1) + (A362936 (n + 1) - A132188 (n + 1))

end

end A362934.P8123332871488874306

namespace A362934

/-- `A362931(n+1)+A362936(n+1)-A132188(n+1)` -/
def P8123332871488874306.Spec : Prop :=
  ∀ n, P8123332871488874306.a n = A362934 (n + 1)

end A362934

/-! ## A362934.P11655129673888474151

`A000982(n+1)-(A362932(n+1)+A362931(n+1))`
-/

namespace A362934.P11655129673888474151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) - (A362932 (n + 1) + A362931 (n + 1))

end

end A362934.P11655129673888474151

namespace A362934

/-- `A000982(n+1)-(A362932(n+1)+A362931(n+1))` -/
def P11655129673888474151.Spec : Prop :=
  ∀ n, P11655129673888474151.a n = A362934 (n + 1)

end A362934

/-! ## A362934.P5329615131407789073

`A005843(A362935(n+1))`
-/

namespace A362934.P5329615131407789073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A362935 (n + 1)).toNat

end

end A362934.P5329615131407789073

namespace A362934

/-- `A005843(A362935(n+1))` -/
def P5329615131407789073.Spec : Prop :=
  ∀ n, P5329615131407789073.a n = A362934 (n + 1)

end A362934

/-!
# A362935: a(n) = (A000982(n) - A132188(n))/2.

The programs for A362935, the canonical program `A362935.P15794074966290772588` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362935 has offset 1).

The definition of A362935 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A362934, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362935.P15794074966290772588

`A362934(n+1)/2`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A362935

/-- `A362934(n+1)/2` -/
def P15794074966290772588.Spec : Prop :=
  ∀ n, P15794074966290772588.a n = (A362935 (n + 1) : ℚ)

end A362935

/-! ## A362935.P17610515368484207972

`(A000982(n+1)-A132188(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362935.P17610515368484207972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000982 (n + 1) - A132188 (n + 1) : ℚ) / 2

end

end A362935.P17610515368484207972

namespace A362935

/-- `(A000982(n+1)-A132188(n+1))/2` -/
def P17610515368484207972.Spec : Prop :=
  ∀ n, P17610515368484207972.a n = (A362935 (n + 1) : ℚ)

end A362935

/-! ## A362935.P8224738497189996813

`A002620(n)-A132345(n+1)`
-/

namespace A362935.P8224738497189996813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A132345 (n + 1)

end

end A362935.P8224738497189996813

namespace A362935

/-- `A002620(n)-A132345(n+1)` -/
def P8224738497189996813.Spec : Prop :=
  ∀ n, P8224738497189996813.a n = A362935 (n + 1)

end A362935

/-! ## A362935.P8132266870138227964

`A087811(n+1)-A120486(n+1)`
-/

namespace A362935.P8132266870138227964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) - A120486 (n + 1)

end

end A362935.P8132266870138227964

namespace A362935

/-- `A087811(n+1)-A120486(n+1)` -/
def P8132266870138227964.Spec : Prop :=
  ∀ n, P8132266870138227964.a n = A362935 (n + 1)

end A362935

/-! ## A362935.P5817359234096407845

`A362937(n+1)-A362933(n+1)`
-/

namespace A362935.P5817359234096407845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362937 (n + 1) - A362933 (n + 1)

end

end A362935.P5817359234096407845

namespace A362935

/-- `A362937(n+1)-A362933(n+1)` -/
def P5817359234096407845.Spec : Prop :=
  ∀ n, P5817359234096407845.a n = A362935 (n + 1)

end A362935

/-! ## A362935.P16682821489887827519

`(A007590(n)-A132189(n+1))/2`
-/

namespace A362935.P16682821489887827519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 n - A132189 (n + 1) : ℚ) / 2

end

end A362935.P16682821489887827519

namespace A362935

/-- `(A007590(n)-A132189(n+1))/2` -/
def P16682821489887827519.Spec : Prop :=
  ∀ n, P16682821489887827519.a n = (A362935 (n + 1) : ℚ)

end A362935

/-! ## A362935.P13240314229318495197

`A362936(n+1)/2-A362933(n+1)`
-/

namespace A362935.P13240314229318495197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362936 (n + 1) : ℚ) / 2 - (A362933 (n + 1) : ℚ)

end

end A362935.P13240314229318495197

namespace A362935

/-- `A362936(n+1)/2-A362933(n+1)` -/
def P13240314229318495197.Spec : Prop :=
  ∀ n, P13240314229318495197.a n = (A362935 (n + 1) : ℚ)

end A362935

/-! ## A362935.P16290342157142863302

`(A362936(n+1)-A362932(n+1))/2`
-/

namespace A362935.P16290342157142863302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362936 (n + 1) - A362932 (n + 1) : ℚ) / 2

end

end A362935.P16290342157142863302

namespace A362935

/-- `(A362936(n+1)-A362932(n+1))/2` -/
def P16290342157142863302.Spec : Prop :=
  ∀ n, P16290342157142863302.a n = (A362935 (n + 1) : ℚ)

end A362935

/-! ## A362935.P16727403577305353377

`A362937(n+1)-A362932(n+1)/2`
-/

namespace A362935.P16727403577305353377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362937 (n + 1) : ℚ) - (A362932 (n + 1) : ℚ) / 2

end

end A362935.P16727403577305353377

namespace A362935

/-- `A362937(n+1)-A362932(n+1)/2` -/
def P16727403577305353377.Spec : Prop :=
  ∀ n, P16727403577305353377.a n = (A362935 (n + 1) : ℚ)

end A362935

/-! ## A362935.P5764927079019981939

`A001281(A362934(n+1))`
-/

namespace A362935.P5764927079019981939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A362934 (n + 1)).toNat

end

end A362935.P5764927079019981939

namespace A362935

/-- `A001281(A362934(n+1))` -/
def P5764927079019981939.Spec : Prop :=
  ∀ n, P5764927079019981939.a n = A362935 (n + 1)

end A362935

/-!
# A362936: a(n) = A000982(n) - A362931(n).

The programs for A362936, there is no canonical definition to state claims against.
-/

/-! ## A362936.P7953686085755129608

`A000982(n+1)-A362931(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362936.P7953686085755129608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) - A362931 (n + 1)

end

end A362936.P7953686085755129608

/-! ## A362936.P10021313459617340147

`2*A362937(n+1)`
-/

namespace A362936.P10021313459617340147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A362937 (n + 1)

end

end A362936.P10021313459617340147

/-! ## A362936.P692892844453244937

`A362934(n+1)+A362932(n+1)`
-/

namespace A362936.P692892844453244937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362934 (n + 1) + A362932 (n + 1)

end

end A362936.P692892844453244937

/-! ## A362936.P8698220364432565676

`2*(A362935(n+1)+A362933(n+1))`
-/

namespace A362936.P8698220364432565676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A362935 (n + 1) + A362933 (n + 1))

end

end A362936.P8698220364432565676

/-! ## A362936.P18190816187165238673

`A362934(n+1)+2*A362933(n+1)`
-/

namespace A362936.P18190816187165238673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362934 (n + 1) + 2 * A362933 (n + 1)

end

end A362936.P18190816187165238673

/-! ## A362936.P9212431383515684216

`A132188(n+1)+A362934(n+1)-A362931(n+1)`
-/

namespace A362936.P9212431383515684216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132188 (n + 1) + (A362934 (n + 1) - A362931 (n + 1))

end

end A362936.P9212431383515684216

/-! ## A362936.P2095100602802910667

`A000982(n+1)+A362932(n+1)-A132188(n+1)`
-/

namespace A362936.P2095100602802910667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) + (A362932 (n + 1) - A132188 (n + 1))

end

end A362936.P2095100602802910667

/-! ## A362936.P17950943240822521141

`A005843(A362937(n+1))`
-/

namespace A362936.P17950943240822521141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A362937 (n + 1)).toNat

end

end A362936.P17950943240822521141

/-!
# A362937: a(n) = (A000982(n) - A362931(n))/2.

The programs for A362937, there is no canonical definition to state claims against.
-/

/-! ## A362937.P3087548517937414048

`(A000982(n+1)-A362931(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362937.P3087548517937414048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000982 (n + 1) - A362931 (n + 1) : ℚ) / 2

end

end A362937.P3087548517937414048

/-! ## A362937.P6381401360629723337

`A362936(n+1)/2`
-/

namespace A362937.P6381401360629723337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362936 (n + 1) : ℚ) / 2

end

end A362937.P6381401360629723337

/-! ## A362937.P14315090563623572223

`A362935(n+1)+A362933(n+1)`
-/

namespace A362937.P14315090563623572223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362935 (n + 1) + A362933 (n + 1)

end

end A362937.P14315090563623572223

/-! ## A362937.P16628421457986968076

`A362933(n+1)+A362934(n+1)/2`
-/

namespace A362937.P16628421457986968076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362933 (n + 1) : ℚ) + (A362934 (n + 1) : ℚ) / 2

end

end A362937.P16628421457986968076

/-! ## A362937.P13496439545254543010

`(A362934(n+1)+A362932(n+1))/2`
-/

namespace A362937.P13496439545254543010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362934 (n + 1) + A362932 (n + 1) : ℚ) / 2

end

end A362937.P13496439545254543010

/-! ## A362937.P16075732841453660797

`A362933(n+1)+A087811(n+1)-A120486(n+1)`
-/

namespace A362937.P16075732841453660797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362933 (n + 1) + (A087811 (n + 1) - A120486 (n + 1))

end

end A362937.P16075732841453660797

/-! ## A362937.P5370502962351654392

`(A132188(n+1)-A362931(n+1))/2+A087811(n+1)-A120486(n+1)`
-/

namespace A362937.P5370502962351654392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132188 (n + 1) - A362931 (n + 1) : ℚ) / 2 + (A087811 (n + 1) - A120486 (n + 1) : ℚ)

end

end A362937.P5370502962351654392

/-! ## A362937.P7757428745415012321

`A001281(A362936(n+1))`
-/

namespace A362937.P7757428745415012321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A362936 (n + 1)).toNat

end

end A362937.P7757428745415012321

/-!
# A362938: a(n) = minimum number of pieces needed to dissect a regular n-sided polygon into a monotile, i.e. a polygonal tile which tiles the plane (conjectured).

The programs for A362938, there is no canonical definition to state claims against.
-/

/-! ## A362938.P16330248503040522184

`A101688(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A362938.P16330248503040522184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A101688 n + a (n - 2)

end

end A362938.P16330248503040522184

/-! ## A362938.P10007543398110137517

`A325616(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A362938.P10007543398110137517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A325616 n + a (n - 2)

end

end A362938.P10007543398110137517

/-! ## A362938.P14680537791172096492

`A325036(n+1)+round(sqrt(2*n))`
-/

namespace A362938.P14680537791172096492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (n + 1) + SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

end

end A362938.P14680537791172096492

/-! ## A362938.P5276991758242280682

`A091372(n+4)+gcd(2, ∏{p}[n, #])`
-/

namespace A362938.P5276991758242280682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091372 (n + 4) + (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)

end

end A362938.P5276991758242280682

/-! ## A362938.P3207415045889281345

`∑[char[A328303(n+1)]]-n%2`
-/

namespace A362938.P3207415045889281345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A362938.P3207415045889281345

/-!
# A362941: Numbers of the form (p+1)*(p+3) where (p,p+2) is a twin prime pair (cf. A001359).

The programs for A362941, the canonical program `A362941.P14947685496723137444` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362941 has offset 1).

The definition of A362941 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108604, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362941.P14947685496723137444

`A108604(n+1)-1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A362941

/-- `A108604(n+1)-1` -/
def P14947685496723137444.Spec : Prop :=
  ∀ n, P14947685496723137444.a n = A362941 (n + 1)

theorem P14947685496723137444.correct : P14947685496723137444.Spec := by
  intro n
  simp only [A362941, Nat.add_sub_cancel]

end A362941

/-! ## A362941.P16258640096196559858

`A006512(n+1)²-1`
-/

namespace A362941.P16258640096196559858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) ^ 2 - 1

end

end A362941.P16258640096196559858

namespace A362941

/-- `A006512(n+1)²-1` -/
def P16258640096196559858.Spec : Prop :=
  ∀ n, P16258640096196559858.a n = A362941 (n + 1)

end A362941

/-! ## A362941.P16718377679657585748

`A075369(n+1)+A054735(n+1)`
-/

namespace A362941.P16718377679657585748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075369 (n + 1) + A054735 (n + 1)

end

end A362941.P16718377679657585748

namespace A362941

/-- `A075369(n+1)+A054735(n+1)` -/
def P16718377679657585748.Spec : Prop :=
  ∀ n, P16718377679657585748.a n = A362941 (n + 1)

end A362941

/-! ## A362941.P14524259525776627682

`A126251(n+1)+A014574(n+1)`
-/

namespace A362941.P14524259525776627682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126251 (n + 1) + A014574 (n + 1)

end

end A362941.P14524259525776627682

namespace A362941

/-- `A126251(n+1)+A014574(n+1)` -/
def P14524259525776627682.Spec : Prop :=
  ∀ n, P14524259525776627682.a n = A362941 (n + 1)

end A362941

/-! ## A362941.P5534315871089759213

`A176810(n+1)+A120875(n+1)`
-/

namespace A362941.P5534315871089759213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176810 (n + 1) + A120875 (n + 1)

end

end A362941.P5534315871089759213

namespace A362941

/-- `A176810(n+1)+A120875(n+1)` -/
def P5534315871089759213.Spec : Prop :=
  ∀ n, P5534315871089759213.a n = A362941 (n + 1)

end A362941

/-! ## A362941.P4997046180820205530

`A328493(n+1)+A006512(n+1)`
-/

namespace A362941.P4997046180820205530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328493 (n + 1) + A006512 (n + 1)

end

end A362941.P4997046180820205530

namespace A362941

/-- `A328493(n+1)+A006512(n+1)` -/
def P4997046180820205530.Spec : Prop :=
  ∀ n, P4997046180820205530.a n = A362941 (n + 1)

end A362941

/-! ## A362941.P9892868416626194193

`A006512(n+1)+A037074(n+1)+A014574(n+1)`
-/

namespace A362941.P9892868416626194193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) + (A037074 (n + 1) + A014574 (n + 1))

end

end A362941.P9892868416626194193

namespace A362941

/-- `A006512(n+1)+A037074(n+1)+A014574(n+1)` -/
def P9892868416626194193.Spec : Prop :=
  ∀ n, P9892868416626194193.a n = A362941 (n + 1)

end A362941

/-! ## A362941.P17690613790123052600

`A001359(n+1)+A075369(n+1)+A006512(n+1)`
-/

namespace A362941.P17690613790123052600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + (A075369 (n + 1) + A006512 (n + 1))

end

end A362941.P17690613790123052600

namespace A362941

/-- `A001359(n+1)+A075369(n+1)+A006512(n+1)` -/
def P17690613790123052600.Spec : Prop :=
  ∀ n, P17690613790123052600.a n = A362941 (n + 1)

end A362941

/-! ## A362941.P5507863420876127051

`A014574(n+1)+A075369(n+1)+A014574(n+1)`
-/

namespace A362941.P5507863420876127051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) + (A075369 (n + 1) + A014574 (n + 1))

end

end A362941.P5507863420876127051

namespace A362941

/-- `A014574(n+1)+A075369(n+1)+A014574(n+1)` -/
def P5507863420876127051.Spec : Prop :=
  ∀ n, P5507863420876127051.a n = A362941 (n + 1)

end A362941

/-! ## A362941.P13327274571244333240

`A054735(n+1)+A014574(n+1)*A014574(n+1)`
-/

namespace A362941.P13327274571244333240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1) + A014574 (n + 1) * A014574 (n + 1)

end

end A362941.P13327274571244333240

namespace A362941

/-- `A054735(n+1)+A014574(n+1)*A014574(n+1)` -/
def P13327274571244333240.Spec : Prop :=
  ∀ n, P13327274571244333240.a n = A362941 (n + 1)

end A362941

/-! ## A362941.P11320895505497687429

`A054735(n+1)+A040040(n+1)*A054735(n+1)`
-/

namespace A362941.P11320895505497687429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1) + A040040 (n + 1) * A054735 (n + 1)

end

end A362941.P11320895505497687429

namespace A362941

/-- `A054735(n+1)+A040040(n+1)*A054735(n+1)` -/
def P11320895505497687429.Spec : Prop :=
  ∀ n, P11320895505497687429.a n = A362941 (n + 1)

end A362941

/-! ## A362941.P16512168088453276994

`A001359(n+1)+A097973(n+1)/A001359(n+1)`
-/

namespace A362941.P16512168088453276994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) : ℚ) + (A097973 (n + 1) : ℚ) / (A001359 (n + 1) : ℚ)

end

end A362941.P16512168088453276994

namespace A362941

/-- `A001359(n+1)+A097973(n+1)/A001359(n+1)` -/
def P16512168088453276994.Spec : Prop :=
  ∀ n, P16512168088453276994.a n = (A362941 (n + 1) : ℚ)

end A362941

/-! ## A362941.P7406962429377974861

`A014574(n+1)+A126248(n+1)/A001359(n+1)`
-/

namespace A362941.P7406962429377974861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 1) : ℚ) + (A126248 (n + 1) : ℚ) / (A001359 (n + 1) : ℚ)

end

end A362941.P7406962429377974861

namespace A362941

/-- `A014574(n+1)+A126248(n+1)/A001359(n+1)` -/
def P7406962429377974861.Spec : Prop :=
  ∀ n, P7406962429377974861.a n = (A362941 (n + 1) : ℚ)

end A362941

/-! ## A362941.P3807791196959304704

`A184417(n+1)-A001359(n+1)*A001359(n+1)`
-/

namespace A362941.P3807791196959304704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184417 (n + 1) - A001359 (n + 1) * A001359 (n + 1)

end

end A362941.P3807791196959304704

namespace A362941

/-- `A184417(n+1)-A001359(n+1)*A001359(n+1)` -/
def P3807791196959304704.Spec : Prop :=
  ∀ n, P3807791196959304704.a n = A362941 (n + 1)

end A362941

/-! ## A362941.P13378831919893904299

`A126251(n+1)+A126251(n+1)/A006512(n+1)`
-/

namespace A362941.P13378831919893904299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126251 (n + 1) : ℚ) + (A126251 (n + 1) : ℚ) / (A006512 (n + 1) : ℚ)

end

end A362941.P13378831919893904299

namespace A362941

/-- `A126251(n+1)+A126251(n+1)/A006512(n+1)` -/
def P13378831919893904299.Spec : Prop :=
  ∀ n, P13378831919893904299.a n = (A362941 (n + 1) : ℚ)

end A362941

/-! ## A362941.P11240413554023030743

`A067829(n+2)²-1`
-/

namespace A362941.P11240413554023030743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 2) ^ 2 - 1

end

end A362941.P11240413554023030743

namespace A362941

/-- `A067829(n+2)²-1` -/
def P11240413554023030743.Spec : Prop :=
  ∀ n, P11240413554023030743.a n = A362941 (n + 1)

end A362941

/-! ## A362941.P6274761879109152738

`A006512(n+1)*A006512(n+1)-A057427(n+1)`
-/

namespace A362941.P6274761879109152738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) * A006512 (n + 1) - A057427 (n + 1)

end

end A362941.P6274761879109152738

namespace A362941

/-- `A006512(n+1)*A006512(n+1)-A057427(n+1)` -/
def P6274761879109152738.Spec : Prop :=
  ∀ n, P6274761879109152738.a n = A362941 (n + 1)

theorem P6274761879109152738.correct : P6274761879109152738.Spec := by
  intro n
  simp only [A362941, Nat.add_sub_cancel, A362941.P6274761879109152738.a, A362941.P14947685496723137444.a, A006512, A006512.P8157243218962949380.a, A057427, A057427.P3058147525557661423.a, A108604, A108604.P14779310854781388400.a, A000007, A000007.P6599383543502402472.a, A001359, A001359.P8865495035699438537.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362941

/-! ## A362941.P2323754050140424576

`p?[A320391(n+1)]²-1`
-/

namespace A362941.P2323754050140424576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 1

end

end A362941.P2323754050140424576

namespace A362941

/-- `p?[A320391(n+1)]²-1` -/
def P2323754050140424576.Spec : Prop :=
  ∀ n, P2323754050140424576.a n = A362941 (n + 1)

end A362941

/-! ## A362941.P5823290505702220274

`A077800(2*(n+1))²-1`
-/

namespace A362941.P5823290505702220274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (2 * (n + 1)) ^ 2 - 1

end

end A362941.P5823290505702220274

namespace A362941

/-- `A077800(2*(n+1))²-1` -/
def P5823290505702220274.Spec : Prop :=
  ∀ n, P5823290505702220274.a n = A362941 (n + 1)

end A362941

/-! ## A362941.P17600316057419820734

`p?[A274242(n+1)]²-1`
-/

namespace A362941.P17600316057419820734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 1

end

end A362941.P17600316057419820734

namespace A362941

/-- `p?[A274242(n+1)]²-1` -/
def P17600316057419820734.Spec : Prop :=
  ∀ n, P17600316057419820734.a n = A362941 (n + 1)

end A362941

/-!
# A362942: Partial sums of A229037.

The programs for A362942, there is no canonical definition to state claims against.
-/

/-! ## A362942.P3724810325352386764

`∑[A229037(n+1)]`
-/

namespace A362942.P3724810325352386764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362942.P3724810325352386764

/-! ## A362942.P1440953385286688706

`A229037(n+1)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A362942.P1440953385286688706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A229037 (n + 1) + a (A000027 (n + 1) - 2).toNat

end

end A362942.P1440953385286688706

/-! ## A362942.P8592038093567827587

`A229037(n+1)+a(A249674(n)-A248572(n))` with `a(0)=1`
-/

namespace A362942.P8592038093567827587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A229037 (n + 1) + a (A249674 n - A248572 n).toNat

end

end A362942.P8592038093567827587

/-! ## A362942.P13972172015224649197

`A028310(A229037(n+1)+a(n-1))` with `a(0)=1`
-/

namespace A362942.P13972172015224649197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (A229037 (n + 1) + a (n - 1)).toNat

end

end A362942.P13972172015224649197

/-! ## A362942.P3689858091614329976

`∑[A248625(n)+1]`
-/

namespace A362942.P3689858091614329976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248625 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362942.P3689858091614329976

/-! ## A362942.P18323453163935754537

`∑[A348553(A248625(n))]`
-/

namespace A362942.P18323453163935754537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A248625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362942.P18323453163935754537

/-! ## A362942.P5627177881179189088

`∑[A260056(A248625(n)²)]`
-/

namespace A362942.P5627177881179189088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260056 (A248625 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362942.P5627177881179189088

/-! ## A362942.P6583092581599221081

`∑[A008619(2*A248625(n))]`
-/

namespace A362942.P6583092581599221081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A248625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362942.P6583092581599221081

/-! ## A362942.P9130913634923918044

`A008620(3*A248625(n))+a(n-1)` with `a(0)=1`
-/

namespace A362942.P9130913634923918044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008620 (3 * A248625 n).toNat + a (n - 1)

end

end A362942.P9130913634923918044

/-! ## A362942.P12793688919950779968

`∑[A309890(n+1)%A360405(n+1)]`
-/

namespace A362942.P12793688919950779968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309890 (n + 1)) (A360405 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362942.P12793688919950779968

/-!
# A362943: Irregular triangular array read by rows. T(n,k) is the number of n X n Boolean relation matrices whose row span is k, n >= 0, 1 <= k <= 2^n.

The programs for A362943, there is no canonical definition to state claims against.
-/

/-! ## A362943.P15997450779383344224

`A296150(A173818(n+1)+A129595(n+2))`
-/

namespace A362943.P15997450779383344224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (A173818 (n + 1) + A129595 (n + 2)).toNat

end

end A362943.P15997450779383344224

/-! ## A362943.P1689115678762213158

`A213925(A325978(n+1)^A214927(n+1))`
-/

namespace A362943.P1689115678762213158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213925 (SequenceMachineLib.roundAway ((A325978 (n + 1) : ℚ) ^ (A214927 (n + 1) : ℤ))).toNat

end

end A362943.P1689115678762213158

/-! ## A362943.P4228466952961983399

`A367410(and(A178859(3*n+4), A217899(n+1)))`
-/

namespace A362943.P4228466952961983399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367410 (Int.land (A178859 (3 * n + 4)) (A217899 (n + 1))).toNat

end

end A362943.P4228466952961983399

/-!
# A362944: Number of set partitions of [2n] with n circular connectors.

The programs for A362944, there is no canonical definition to state claims against.
-/

/-! ## A362944.P14035643941734173537

`A185983(∑[4*n])`
-/

namespace A362944.P14035643941734173537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185983 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362944.P14035643941734173537

/-! ## A362944.P4846530249664158774

`lcm(A033999(n), A185983(A046092(n)))`
-/

namespace A362944.P4846530249664158774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A185983 (A046092 n).toNat)

end

end A362944.P4846530249664158774

/-! ## A362944.P6029389827999090316

`A033999(2*(n+1))*A185983(A046092(n))`
-/

namespace A362944.P6029389827999090316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * (n + 1)) * A185983 (A046092 n).toNat

end

end A362944.P6029389827999090316

/-!
# A362947: a(0) = 0, a(1) = 0; for n > 1, a(n) is the number of pairs of consecutive terms whose product has same value as a(n-2) * a(n-1).

The programs for A362947, there is no canonical definition to state claims against.
-/

/-! ## A362947.P15590443552457224660

`A087436(A147760(n+1)-A156610(n+4))`
-/

namespace A362947.P15590443552457224660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A147760 (n + 1) - A156610 (n + 4)).toNat

end

end A362947.P15590443552457224660

/-! ## A362947.P6937677509665191240

`A025147(2*n+3)%A000005(A001006(n))`
-/

namespace A362947.P6937677509665191240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025147 (2 * n + 3)) (A000005 (A001006 n).toNat)

end

end A362947.P6937677509665191240

/-! ## A362947.P7348106575684880238

`A124764(A374698(3*(n+1))-A374698(n+1))`
-/

namespace A362947.P7348106575684880238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A374698 (3 * (n + 1)) - A374698 (n + 1)).toNat

end

end A362947.P7348106575684880238

/-!
# A362948: Numbers whose sum of (distinct) prime divisors (A008472) equals 5.

The programs for A362948, there is no canonical definition to state claims against.
-/

/-! ## A362948.P11609500156962332535

`∩[A069899(n+1), A231959(n+1)]`
-/

namespace A362948.P11609500156962332535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362948.P11609500156962332535

/-! ## A362948.P15173652004358732970

`filter[A231959(n+1), A340373(#)]`
-/

namespace A362948.P15173652004358732970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A362948.P15173652004358732970

/-! ## A362948.P2123440596574622753

`filter[A231959(n+2), A340363(#)]`
-/

namespace A362948.P2123440596574622753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231959 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A362948.P2123440596574622753

/-! ## A362948.P15879159115351441521

`eq[5, A008472(n+1)]+1`
-/

namespace A362948.P15879159115351441521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A362948.P15879159115351441521

/-! ## A362948.P14792414765605684210

`∩[A070776(n+1), A231959(n+1)]`
-/

namespace A362948.P14792414765605684210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362948.P14792414765605684210

/-! ## A362948.P1593617443367371203

`∩[A231959(n+1), A336101(n+1)]`
-/

namespace A362948.P1593617443367371203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362948.P1593617443367371203

/-! ## A362948.P9217809595469758379

`∩[A081061(n+1), A093509(n+1)]`
-/

namespace A362948.P9217809595469758379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362948.P9217809595469758379

/-! ## A362948.P16166061049253460926

`A081382(a(n-1))` with `a(0)=5`
-/

namespace A362948.P16166061049253460926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A081382 (a (n - 1)).toNat

end

end A362948.P16166061049253460926

/-! ## A362948.P12057357717725425029

`eq[6, A074372(n+1)]+1`
-/

namespace A362948.P12057357717725425029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A362948.P12057357717725425029

/-! ## A362948.P17604250061170391071

`eq[3, A066328(A028310(n))]`
-/

namespace A362948.P17604250061170391071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A362948.P17604250061170391071

/-!
# A362951: a(n) is the Hamming distance between the binary expansions of n and phi(n) where phi is the Euler totient function (A000010).

The programs for A362951, the canonical program `A362951.P3946018214728712457` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362951 has offset 1).

The definition of A362951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362951.P3946018214728712457

`A000120(A169814(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A362951

/-- `A000120(A169814(n+1))` -/
def P3946018214728712457.Spec : Prop :=
  ∀ n, P3946018214728712457.a n = A362951 (n + 1)

theorem P3946018214728712457.correct : P3946018214728712457.Spec := by
  intro n
  simp only [A362951, Nat.add_sub_cancel]

end A362951

/-! ## A362951.P7950735346142138849

`A000120(xor(n+1, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))`
-/

namespace A362951.P7950735346142138849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))).toNat

end

end A362951.P7950735346142138849

namespace A362951

/-- `A000120(xor(n+1, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))` -/
def P7950735346142138849.Spec : Prop :=
  ∀ n, P7950735346142138849.a n = A362951 (n + 1)

end A362951

/-! ## A362951.P10639761383677185175

`A000120(xor(n+1, A000010(n+1)))`
-/

namespace A362951.P10639761383677185175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (n + 1 : ℤ) (A000010 (n + 1))).toNat

end

end A362951.P10639761383677185175

namespace A362951

/-- `A000120(xor(n+1, A000010(n+1)))` -/
def P10639761383677185175.Spec : Prop :=
  ∀ n, P10639761383677185175.a n = A362951 (n + 1)

end A362951

/-! ## A362951.P6232486793413890286

`A000120(xor(n+1, A319998(2*(n+1))/2))`
-/

namespace A362951.P6232486793413890286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A319998 (2 * (n + 1)) : ℚ) / 2))).toNat

end

end A362951.P6232486793413890286

namespace A362951

/-- `A000120(xor(n+1, A319998(2*(n+1))/2))` -/
def P6232486793413890286.Spec : Prop :=
  ∀ n, P6232486793413890286.a n = A362951 (n + 1)

end A362951

/-! ## A362951.P4533727002278139720

`xor(n+1, A109606(n+1)+1)-A011371(A169814(n+1))`
-/

namespace A362951.P4533727002278139720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A109606 (n + 1) + 1) - A011371 (A169814 (n + 1)).toNat

end

end A362951.P4533727002278139720

namespace A362951

/-- `xor(n+1, A109606(n+1)+1)-A011371(A169814(n+1))` -/
def P4533727002278139720.Spec : Prop :=
  ∀ n, P4533727002278139720.a n = A362951 (n + 1)

end A362951

/-! ## A362951.P3976469593261265348

`xor(n+1, A039649(n+1)-1)-A011371(A169814(n+1))`
-/

namespace A362951.P3976469593261265348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A039649 (n + 1) - 1) - A011371 (A169814 (n + 1)).toNat

end

end A362951.P3976469593261265348

namespace A362951

/-- `xor(n+1, A039649(n+1)-1)-A011371(A169814(n+1))` -/
def P3976469593261265348.Spec : Prop :=
  ∀ n, P3976469593261265348.a n = A362951 (n + 1)

end A362951

/-! ## A362951.P11043992724806305715

`A000120(xor(A121048(n+1)-(n+1), A051176(3*(n+1))))`
-/

namespace A362951.P11043992724806305715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A121048 (n + 1) - (n + 1 : ℤ)) (A051176 (3 * (n + 1)))).toNat

end

end A362951.P11043992724806305715

namespace A362951

/-- `A000120(xor(A121048(n+1)-(n+1), A051176(3*(n+1))))` -/
def P11043992724806305715.Spec : Prop :=
  ∀ n, P11043992724806305715.a n = A362951 (n + 1)

end A362951

/-!
# A362952: Sum of divisors of 5*n-1 of form 5*k+2.

The programs for A362952, the canonical program `A362952.P3443947303999604863` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362952 has offset 1).

The definition of A362952 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362952.P3443947303999604863

`A284280(5*(n+1)-1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A362952

/-- `A284280(5*(n+1)-1)` -/
def P3443947303999604863.Spec : Prop :=
  ∀ n, P3443947303999604863.a n = A362952 (n + 1)

theorem P3443947303999604863.correct : P3443947303999604863.Spec := by
  intro n
  simp only [A362952, Nat.add_sub_cancel]

end A362952

/-! ## A362952.P13459941508856535943

`A363898(4*(n+1)+n)`
-/

namespace A362952.P13459941508856535943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363898 (4 * (n + 1) + n)

end

end A362952.P13459941508856535943

namespace A362952

/-- `A363898(4*(n+1)+n)` -/
def P13459941508856535943.Spec : Prop :=
  ∀ n, P13459941508856535943.a n = A362952 (n + 1)

end A362952

/-! ## A362952.P16179780375196641277

`A284280(A016897(n))%A016897(n)`
-/

namespace A362952.P16179780375196641277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284280 (A016897 n).toNat) (A016897 n)

end

end A362952.P16179780375196641277

namespace A362952

/-- `A284280(A016897(n))%A016897(n)` -/
def P16179780375196641277.Spec : Prop :=
  ∀ n, P16179780375196641277.a n = A362952 (n + 1)

end A362952

/-! ## A362952.P116390571743933120

`A363898(A016897(n))%A017317(n)`
-/

namespace A362952.P116390571743933120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363898 (A016897 n).toNat) (A017317 n)

end

end A362952.P116390571743933120

namespace A362952

/-- `A363898(A016897(n))%A017317(n)` -/
def P116390571743933120.Spec : Prop :=
  ∀ n, P116390571743933120.a n = A362952 (n + 1)

end A362952

/-!
# A362957: a(n) is the least prime p such that the number of distinct prime factors of p^n + 1 sets a new record.

The programs for A362957, there is no canonical definition to state claims against.
-/

/-! ## A362957.P5906815373643161351

`A379768(A074739(n+2)-2)`
-/

namespace A362957.P5906815373643161351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379768 (A074739 (n + 2) - 2).toNat

end

end A362957.P5906815373643161351

/-!
# A362958: a(n) is the number of primes in a Collatz orbit started at A078373(n).

The programs for A362958, there is no canonical definition to state claims against.
-/

/-! ## A362958.P3391897834918051131

`A078350(A078373(n+1))`
-/

namespace A362958.P3391897834918051131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078350 (A078373 (n + 1)).toNat

end

end A362958.P3391897834918051131

/-! ## A362958.P3107932340567829268

`A000007(n)+record[A064684(n)]`
-/

namespace A362958.P3107932340567829268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362958.P3107932340567829268

/-! ## A362958.P13504994141472233635

`record[A055509(2*n+1)+1]`
-/

namespace A362958.P13504994141472233635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055509 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362958.P13504994141472233635

/-! ## A362958.P8701457655493806778

`A361236(n)+A055509(A078373(n+1))`
-/

namespace A362958.P8701457655493806778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361236 n + A055509 (A078373 (n + 1)).toNat

end

end A362958.P8701457655493806778

/-! ## A362958.P15978769461607418730

`A055509(A078373(n+1))-A057428(n+1)`
-/

namespace A362958.P15978769461607418730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055509 (A078373 (n + 1)).toNat - A057428 (n + 1)

end

end A362958.P15978769461607418730

/-!
# A362960: Length of longest Roman numeral representation of a number <= n.

The programs for A362960, there is no canonical definition to state claims against.
-/

/-! ## A362960.P10004374769508973988

`∑[char[A036746(n+1)-1]]`
-/

namespace A362960.P10004374769508973988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036746 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362960.P10004374769508973988

/-! ## A362960.P11032403918201769365

`∑[char[A023443(A036746(n+1))]]`
-/

namespace A362960.P11032403918201769365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036746 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362960.P11032403918201769365

/-! ## A362960.P13623889735789132796

`A371355(A256785(n+2))`
-/

namespace A362960.P13623889735789132796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371355 (A256785 (n + 2)).toNat

end

end A362960.P13623889735789132796

/-! ## A362960.P9511229137630970423

`A084558(A241409(n)+A091855(n+1))`
-/

namespace A362960.P9511229137630970423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A241409 n + A091855 (n + 1)).toNat

end

end A362960.P9511229137630970423

/-! ## A362960.P18370190723180487127

`∑[A316868(n)^A370637(n)]`
-/

namespace A362960.P18370190723180487127
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316868 n : ℚ) ^ (A370637 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362960.P18370190723180487127

/-!
# A362961: a(n) = Sum_{b=0..floor(sqrt(n)), n-b^2 is square} b.

The programs for A362961, there is no canonical definition to state claims against.
-/

/-! ## A362961.P2857101698777664932

`∑{d}[n+1, A078910(#)*A178450((n+1)/#)]`
-/

namespace A362961.P2857101698777664932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078910 d * A178450 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A362961.P2857101698777664932

/-! ## A362961.P617668864122485926

`A000196(A111938(n+1)%A234286(n+1))`
-/

namespace A362961.P617668864122485926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A111938 (n + 1)) (A234286 (n + 1))).toNat

end

end A362961.P617668864122485926

/-! ## A362961.P9109874499630660631

`A133388(2*(n+1))/A006466(A063990(n+1))`
-/

namespace A362961.P9109874499630660631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133388 (2 * (n + 1)) : ℚ) / (A006466 (A063990 (n + 1)).toNat : ℚ)

end

end A362961.P9109874499630660631

/-! ## A362961.P16720567807283104549

`A000196(A111938(n+1))%A114649(n+1)`
-/

namespace A362961.P16720567807283104549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A111938 (n + 1)).toNat) (A114649 (n + 1))

end

end A362961.P16720567807283104549

/-! ## A362961.P7320181835120338756

`ceil(A002654(n+1)*A076869(3*n+4)/2)`
-/

namespace A362961.P7320181835120338756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002654 (n + 1) * A076869 (3 * n + 4) : ℚ) / 2⌉

end

end A362961.P7320181835120338756

/-!
# A362962: Lexicographically earliest sequence of distinct positive terms such that if a(n) jumps over a(n) positions towards the right (landing on the integer k), the sum a(n) + k is always prime.

The programs for A362962, there is no canonical definition to state claims against.
-/

/-! ## A362962.P11950444081906923770

`A057117(n+4)-A294671(A185284(3*n+4))`
-/

namespace A362962.P11950444081906923770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057117 (n + 4) - A294671 ((A185284 (3 * n + 4)).toNat + 1)

end

end A362962.P11950444081906923770

/-!
# A362965: Number of primes <= the n-th prime power.

The programs for A362965, the canonical program `A362965.P6810263641172725990` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362965 has offset 1).

The definition of A362965 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246655, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362965.P6810263641172725990

`A000720(A246655(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A362965

/-- `A000720(A246655(n+1))` -/
def P6810263641172725990.Spec : Prop :=
  ∀ n, P6810263641172725990.a n = A362965 (n + 1)

theorem P6810263641172725990.correct : P6810263641172725990.Spec := by
  intro n
  simp only [A362965, Nat.add_sub_cancel]

end A362965

/-! ## A362965.P17577329401914618656

`A000720(A000961(n+2))`
-/

namespace A362965.P17577329401914618656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000961 (n + 2)).toNat

end

end A362965.P17577329401914618656

namespace A362965

/-- `A000720(A000961(n+2))` -/
def P17577329401914618656.Spec : Prop :=
  ∀ n, P17577329401914618656.a n = A362965 (n + 1)

end A362965

/-! ## A362965.P9299081734317845800

`A000720(A081217(n+2))`
-/

namespace A362965.P9299081734317845800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A081217 (n + 2)).toNat

end

end A362965.P9299081734317845800

namespace A362965

/-- `A000720(A081217(n+2))` -/
def P9299081734317845800.Spec : Prop :=
  ∀ n, P9299081734317845800.a n = A362965 (n + 1)

end A362965

/-! ## A362965.P10774917542766219333

`A000720(A181062(n+2)+1)`
-/

namespace A362965.P10774917542766219333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A181062 (n + 2) + 1).toNat

end

end A362965.P10774917542766219333

namespace A362965

/-- `A000720(A181062(n+2)+1)` -/
def P10774917542766219333.Spec : Prop :=
  ∀ n, P10774917542766219333.a n = A362965 (n + 1)

theorem P10774917542766219333.correct : P10774917542766219333.Spec := by
  intro n
  simp only [A362965, Nat.add_sub_cancel, A362965.P10774917542766219333.a, A362965.P6810263641172725990.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A181062, A181062.P6529548857799504333.a, A246655, A246655.P2302191067120461210.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A362965

/-! ## A362965.P9654847270983296144

`A000720(record[A034699(n+2)])`
-/

namespace A362965.P9654847270983296144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A362965.P9654847270983296144

namespace A362965

/-- `A000720(record[A034699(n+2)])` -/
def P9654847270983296144.Spec : Prop :=
  ∀ n, P9654847270983296144.a n = A362965 (n + 1)

end A362965

/-! ## A362965.P14708351268196466638

`A055679(A138929(n+2))`
-/

namespace A362965.P14708351268196466638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A138929 (n + 2)).toNat

end

end A362965.P14708351268196466638

namespace A362965

/-- `A055679(A138929(n+2))` -/
def P14708351268196466638.Spec : Prop :=
  ∀ n, P14708351268196466638.a n = A362965 (n + 1)

end A362965

/-! ## A362965.P2601205311660246522

`A055679(A309269(n+2))`
-/

namespace A362965.P2601205311660246522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A309269 (n + 2)).toNat

end

end A362965.P2601205311660246522

namespace A362965

/-- `A055679(A309269(n+2))` -/
def P2601205311660246522.Spec : Prop :=
  ∀ n, P2601205311660246522.a n = A362965 (n + 1)

end A362965

/-! ## A362965.P3219820510273138610

`A132090(A302493(n+2))`
-/

namespace A362965.P3219820510273138610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (A302493 (n + 2)).toNat

end

end A362965.P3219820510273138610

namespace A362965

/-- `A132090(A302493(n+2))` -/
def P3219820510273138610.Spec : Prop :=
  ∀ n, P3219820510273138610.a n = A362965 (n + 1)

end A362965

/-!
# A362967: Number of nondecreasing partitions of n^2 into n parts from the intervals [1,n], [2,n+1], ..., [n,2n-1], respectively.

The programs for A362967, there is no canonical definition to state claims against.
-/

/-! ## A362967.P17687408743743046345

`A342847(A182530(n+1))`
-/

namespace A362967.P17687408743743046345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342847 (A182530 (n + 1)).toNat

end

end A362967.P17687408743743046345

/-! ## A362967.P2075411454320397035

`A365877(A365858(n+1))`
-/

namespace A362967.P2075411454320397035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365877 (A365858 (n + 1)).toNat

end

end A362967.P2075411454320397035

/-! ## A362967.P16994419249019543168

`A365877(record[A365859(n+1)])`
-/

namespace A362967.P16994419249019543168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365877 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A362967.P16994419249019543168

/-!
# A362968: Number of integral points in 2 * permutohedron of order n.

The programs for A362968, there is no canonical definition to state claims against.
-/

/-! ## A362968.P3715170402127561885

`A295886(∑[n^n*2^n])`
-/

namespace A362968.P3715170402127561885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295886 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362968.P3715170402127561885

/-!
# A362969: Nonunitary near-perfect numbers: k such that nusigma(k) = k + d where d is a nonunitary divisor of k.

The programs for A362969, there is no canonical definition to state claims against.
-/

/-! ## A362969.P13123540929154888243

`A257861(A000040(n+2)-A000161(3*n+4))`
-/

namespace A362969.P13123540929154888243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257861 (A000040 (n + 2) - A000161 (3 * n + 4)).toNat

end

end A362969.P13123540929154888243

/-! ## A362969.P14069806854649456948

`A337534(A003173(n+1)+A002808(n+2))`
-/

namespace A362969.P14069806854649456948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337534 (A003173 (n + 1) + A002808 (n + 2)).toNat

end

end A362969.P14069806854649456948

/-!
# A362970: Number of different "integer parts" of (possibly non-canonical) base-phi representations of n.

The programs for A362970, there is no canonical definition to state claims against.
-/

/-! ## A362970.P13440705646157266654

`A000121(lt[A237341(n), A349172(n+1)])`
-/

namespace A362970.P13440705646157266654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000121 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362970.P13440705646157266654

/-! ## A362970.P10310853983448835102

`A000121(lt[A116406(n), A056553(n+2)])`
-/

namespace A362970.P10310853983448835102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056553 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000121 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362970.P10310853983448835102

/-! ## A362970.P1555113608336514489

`A000121(lt[A294175(n), A056553(n+2)])`
-/

namespace A362970.P1555113608336514489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056553 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000121 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362970.P1555113608336514489

/-! ## A362970.P14959479003516659982

`A235224(A050035(2*n+1))-A011656(n)`
-/

namespace A362970.P14959479003516659982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A050035 (2 * n + 1)).toNat - A011656 n

end

end A362970.P14959479003516659982

/-!
# A362971: Partial sums of the cubefull numbers (A036966).

The programs for A362971, there is no canonical definition to state claims against.
-/

/-! ## A362971.P4574467864728469957

`∑[A036966(n+1)]`
-/

namespace A362971.P4574467864728469957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362971.P4574467864728469957

/-! ## A362971.P972495046040181603

`∑[record[A036966(A323889(n))]]`
-/

namespace A362971.P972495046040181603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362971.P972495046040181603

/-! ## A362971.P1763936342984112076

`∑[record[A036966(A324346(n))]]`
-/

namespace A362971.P1763936342984112076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362971.P1763936342984112076

/-! ## A362971.P7327911785370742300

`A036966(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A362971.P7327911785370742300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036966 (n + 1) + a (A023443 n).toNat

end

end A362971.P7327911785370742300

/-! ## A362971.P68239002635691962

`∑[record[A036966(A133310(n))]]`
-/

namespace A362971.P68239002635691962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362971.P68239002635691962

/-! ## A362971.P5378725249747254694

`∑[record[A001694(n+1)*A112526(A306458(n+1))]]`
-/

namespace A362971.P5378725249747254694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1) * A112526 (A306458 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362971.P5378725249747254694

/-! ## A362971.P15998199675375599272

`∑[record[A057521(A337050(n+1))]]`
-/

namespace A362971.P15998199675375599272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A337050 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362971.P15998199675375599272

/-! ## A362971.P2855012343495857918

`∑[record[A360540(n+1)]]`
-/

namespace A362971.P2855012343495857918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360540 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362971.P2855012343495857918

/-!
# A362972: Squarefree kernels of cubefull numbers (A036966).

The programs for A362972, there is no canonical definition to state claims against.
-/

/-! ## A362972.P12646791801158382177

`A007947(A036966(n+1))`
-/

namespace A362972.P12646791801158382177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A036966 (n + 1)).toNat

end

end A362972.P12646791801158382177

/-! ## A362972.P16230059549176519151

`A084371(A371185(n+1))`
-/

namespace A362972.P16230059549176519151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (A371185 (n + 1)).toNat

end

end A362972.P16230059549176519151

/-! ## A362972.P17022623878204848795

`A036966(n+1)/A306458(A371185(n+1))`
-/

namespace A362972.P17022623878204848795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036966 (n + 1) : ℚ) / (A306458 (A371185 (n + 1)).toNat : ℚ)

end

end A362972.P17022623878204848795

/-! ## A362972.P15108543662857458436

`∏{p}[record[A036966(A324346(n))], #]`
-/

namespace A362972.P15108543662857458436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A362972.P15108543662857458436

/-! ## A362972.P12994937340027074415

`∏{p}[A001694(A371185(n+1)), A000027(#)]`
-/

namespace A362972.P12994937340027074415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A371185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000027 p

end

end A362972.P12994937340027074415

/-! ## A362972.P44274657943405634

`gcd(A036966(n+1), A186944(n+1))`
-/

namespace A362972.P44274657943405634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036966 (n + 1)) (A186944 (n + 1))

end

end A362972.P44274657943405634

/-! ## A362972.P12009060546575464434

`gcd(A036966(n+1)², A054641(n+1))`
-/

namespace A362972.P12009060546575464434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036966 (n + 1) ^ 2) (A054641 (n + 1))

end

end A362972.P12009060546575464434

/-! ## A362972.P4072783077082539595

`∏{p}[record[A001694(n+1)*A112526(A306458(n+1))], #]`
-/

namespace A362972.P4072783077082539595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1) * A112526 (A306458 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A362972.P4072783077082539595

/-! ## A362972.P2343160741887791847

`∏{p}[record[A057521(A337050(n+1))], #]`
-/

namespace A362972.P2343160741887791847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A337050 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A362972.P2343160741887791847

/-!
# A362973: The number of cubefull numbers (A036966) not exceeding 10^n.

The programs for A362973, there is no canonical definition to state claims against.
-/

/-! ## A362973.P9940127486917113718

`A001462(2*A000079(n)²)-A032447(n+1)`
-/

namespace A362973.P9940127486917113718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (2 * A000079 n ^ 2).toNat - A032447 (n + 1)

end

end A362973.P9940127486917113718

/-! ## A362973.P980233513628380059

`A001462(A000079(2*n+1))-A032447(n+1)`
-/

namespace A362973.P980233513628380059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A000079 (2 * n + 1)).toNat - A032447 (n + 1)

end

end A362973.P980233513628380059

/-!
# A362980: Numbers whose multiset of prime factors (with multiplicity) has different median from maximum.

The programs for A362980, there is no canonical definition to state claims against.
-/

/-! ## A362980.P7461637292696593522

`comp[A334965(n+1)-1]+1`
-/

namespace A362980.P7461637292696593522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A362980.P7461637292696593522

/-! ## A362980.P2444788993739482889

`∪[A009129(n+1), A097318(n+1)]`
-/

namespace A362980.P2444788993739482889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362980.P2444788993739482889

/-! ## A362980.P8145927203635757907

`∪[A046285(n+1), A080363(n+1)]`
-/

namespace A362980.P8145927203635757907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362980.P8145927203635757907

/-! ## A362980.P11757408456355747896

`∪[A080363(n+1), A097318(n+1)]`
-/

namespace A362980.P11757408456355747896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362980.P11757408456355747896

/-! ## A362980.P13164257303006103267

`∪[A097320(n+1), A130092(n+1)]`
-/

namespace A362980.P13164257303006103267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362980.P13164257303006103267

/-! ## A362980.P14681226003158694861

`∪[A097318(n+1), A143207(n+1)]`
-/

namespace A362980.P14681226003158694861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362980.P14681226003158694861

/-! ## A362980.P12348967225168361904

`∪[A112769(n+1), A130092(n+1)]`
-/

namespace A362980.P12348967225168361904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362980.P12348967225168361904

/-! ## A362980.P1142750905934211843

`∪[A112769(n+1), A182853(n+1)]`
-/

namespace A362980.P1142750905934211843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362980.P1142750905934211843

/-! ## A362980.P5937007257340869492

`∪[A097318(n+1), A054275(n+2)]`
-/

namespace A362980.P5937007257340869492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054275 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362980.P5937007257340869492

/-!
# A362981: Heinz numbers of integer partitions such that 2*(least part) >= greatest part.

The programs for A362981, there is no canonical definition to state claims against.
-/

/-! ## A362981.P8329017224904383018

`comp[A362982(n+1)-1]+1`
-/

namespace A362981.P8329017224904383018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362982 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A362981.P8329017224904383018

/-! ## A362981.P1732458685873247435

`record[A284255(A342191(n+1))]`
-/

namespace A362981.P1732458685873247435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284255 (A342191 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362981.P1732458685873247435

/-! ## A362981.P16242467593445296130

`record[A284255(n+1)%A240460(n+1)]`
-/

namespace A362981.P16242467593445296130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284255 (n + 1)) (A240460 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362981.P16242467593445296130

/-! ## A362981.P12497537675169647504

`record[A284255(n+1)]%A286353(n+1)`
-/

namespace A362981.P12497537675169647504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A286353 (n + 1))

end

end A362981.P12497537675169647504

/-! ## A362981.P3025650441692847140

`record[A046094(A019345(n+1))*A284255(n+1)]`
-/

namespace A362981.P3025650441692847140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (A019345 (n + 1)).toNat * A284255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362981.P3025650441692847140

/-! ## A362981.P9036954026544467441

`eq[A222378(n+1), A222378(A284253(n+1))]+1`
-/

namespace A362981.P9036954026544467441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222378 (A284253 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A362981.P9036954026544467441

/-! ## A362981.P1287683746762612087

`eq[A135693(n+1), A135693(A284253(n+1))]+1`
-/

namespace A362981.P1287683746762612087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135693 (A284253 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A362981.P1287683746762612087

/-!
# A362982: Heinz numbers of partitions such that 2*(least part) < greatest part.

The programs for A362982, there is no canonical definition to state claims against.
-/

/-! ## A362982.P12799762777209281623

`lt[gcd(2, n), A069897(n+1)]+1`
-/

namespace A362982.P12799762777209281623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A362982.P12799762777209281623

/-! ## A362982.P16108410908754271912

`∪[A251727(n+1), A057836(n)]`
-/

namespace A362982.P16108410908754271912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057836 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362982.P16108410908754271912

/-! ## A362982.P935984902697225150

`lt[A055396(n+1), A243055(n+1)]+1`
-/

namespace A362982.P935984902697225150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A362982.P935984902697225150

/-! ## A362982.P2894471429537924295

`lt[(A055396(n+1)+1)², A006530(n+1)]+1`
-/

namespace A362982.P2894471429537924295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055396 (n + 1) + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A362982.P2894471429537924295

/-! ## A362982.P1649155136316130584

`lt[A002487(A020639(n+1)), A243055(n+1)]+1`
-/

namespace A362982.P1649155136316130584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A020639 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A362982.P1649155136316130584

/-! ## A362982.P8462054917238613666

`comp[A362981(n+1)-1]+1`
-/

namespace A362982.P8462054917238613666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362981 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A362982.P8462054917238613666

/-!
# A362983: Number of prime factors of n (with multiplicity) that are greater than the least.

The programs for A362983, the canonical program `A362983.P10540663005040928729` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362983 has offset 1).

The definition of A362983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362983.P10144634432132035395

`A001222(A028234(n+1))`
-/

namespace A362983.P10144634432132035395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028234 (n + 1)).toNat

end

end A362983.P10144634432132035395

namespace A362983

/-- `A001222(A028234(n+1))` -/
def P10144634432132035395.Spec : Prop :=
  ∀ n, P10144634432132035395.a n = A362983 (n + 1)

end A362983

/-! ## A362983.P985398595454489324

`A001222(n+1)-A067029(n+1)`
-/

namespace A362983.P985398595454489324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A067029 (n + 1)

end

end A362983.P985398595454489324

namespace A362983

/-- `A001222(n+1)-A067029(n+1)` -/
def P985398595454489324.Spec : Prop :=
  ∀ n, P985398595454489324.a n = A362983 (n + 1)

theorem P985398595454489324.correct : P985398595454489324.Spec := by
  intro n
  simp only [A362983, Nat.add_sub_cancel, A362983.P985398595454489324.a, A362983.P10540663005040928729.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A067029, A067029.P17255758945913048832.a, A329600, A329600.P5147459895201057700.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A122111, A122111.P18124015185857335041.a, A181821, A181821.P11277667539367847379.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P10934841406439867276.a, A108951, A108951.P1294613322156543690.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362983

/-! ## A362983.P10540663005040928729

`val(A329600(n+1), 3)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A362983

/-- `val(A329600(n+1), 3)` -/
def P10540663005040928729.Spec : Prop :=
  ∀ n, (P10540663005040928729.a n : ℤ) = A362983 (n + 1)

theorem P10540663005040928729.correct : P10540663005040928729.Spec := by
  intro n
  simp only [A362983, Nat.add_sub_cancel]

end A362983

/-! ## A362983.P4319409760015253160

`∑{e}[n+1, #]-val(A071364(n+1), 2)`
-/

namespace A362983.P4319409760015253160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - (SequenceMachineLib.valuation (A071364 (n + 1)).toNat 2 : ℤ)

end

end A362983.P4319409760015253160

namespace A362983

/-- `∑{e}[n+1, #]-val(A071364(n+1), 2)` -/
def P4319409760015253160.Spec : Prop :=
  ∀ n, P4319409760015253160.a n = A362983 (n + 1)

end A362983

/-! ## A362983.P5867217003251302456

`A087436(A071364(n+1))`
-/

namespace A362983.P5867217003251302456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A071364 (n + 1)).toNat

end

end A362983.P5867217003251302456

namespace A362983

/-- `A087436(A071364(n+1))` -/
def P5867217003251302456.Spec : Prop :=
  ∀ n, P5867217003251302456.a n = A362983 (n + 1)

end A362983

/-! ## A362983.P10478210426362494718

`A087436(A348717(n+1))`
-/

namespace A362983.P10478210426362494718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A348717 (n + 1)).toNat

end

end A362983.P10478210426362494718

namespace A362983

/-- `A087436(A348717(n+1))` -/
def P10478210426362494718.Spec : Prop :=
  ∀ n, P10478210426362494718.a n = A362983 (n + 1)

end A362983

/-! ## A362983.P10346284306260206913

`A001222(n+1)-A001222(A028233(n+1))`
-/

namespace A362983.P10346284306260206913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A028233 (n + 1)).toNat

end

end A362983.P10346284306260206913

namespace A362983

/-- `A001222(n+1)-A001222(A028233(n+1))` -/
def P10346284306260206913.Spec : Prop :=
  ∀ n, P10346284306260206913.a n = A362983 (n + 1)

end A362983

/-! ## A362983.P5857191603546567983

`∑{e}[A285728(n+1), #]`
-/

namespace A362983.P5857191603546567983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285728 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A362983.P5857191603546567983

namespace A362983

/-- `∑{e}[A285728(n+1), #]` -/
def P5857191603546567983.Spec : Prop :=
  ∀ n, (P5857191603546567983.a n : ℤ) = A362983 (n + 1)

end A362983

/-! ## A362983.P10527324952186024802

`A302037(A302034(A302025(n+1)))`
-/

namespace A362983.P10527324952186024802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A302034 (A302025 (n + 1)).toNat).toNat

end

end A362983.P10527324952186024802

namespace A362983

/-- `A302037(A302034(A302025(n+1)))` -/
def P10527324952186024802.Spec : Prop :=
  ∀ n, P10527324952186024802.a n = A362983 (n + 1)

end A362983

/-! ## A362983.P16751229027047904710

`A087436(A318885(n+1))`
-/

namespace A362983.P16751229027047904710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A318885 (n + 1)).toNat

end

end A362983.P16751229027047904710

namespace A362983

/-- `A087436(A318885(n+1))` -/
def P16751229027047904710.Spec : Prop :=
  ∀ n, P16751229027047904710.a n = A362983 (n + 1)

end A362983

/-! ## A362983.P7016262956600582425

`A325226(A069799(n+1))`
-/

namespace A362983.P7016262956600582425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325226 (A069799 (n + 1)).toNat

end

end A362983.P7016262956600582425

namespace A362983

/-- `A325226(A069799(n+1))` -/
def P7016262956600582425.Spec : Prop :=
  ∀ n, P7016262956600582425.a n = A362983 (n + 1)

end A362983

/-! ## A362983.P4931198499253514441

`A325226(A137502(n+1))`
-/

namespace A362983.P4931198499253514441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325226 (A137502 (n + 1)).toNat

end

end A362983.P4931198499253514441

namespace A362983

/-- `A325226(A137502(n+1))` -/
def P4931198499253514441.Spec : Prop :=
  ∀ n, P4931198499253514441.a n = A362983 (n + 1)

end A362983

/-! ## A362983.P9689807819161239636

`A325226(A225891(n+1))`
-/

namespace A362983.P9689807819161239636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325226 (A225891 (n + 1)).toNat

end

end A362983.P9689807819161239636

namespace A362983

/-- `A325226(A225891(n+1))` -/
def P9689807819161239636.Spec : Prop :=
  ∀ n, P9689807819161239636.a n = A362983 (n + 1)

end A362983

/-! ## A362983.P7968841907029214289

`A325226(A293448(n+1))`
-/

namespace A362983.P7968841907029214289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325226 (A293448 (n + 1)).toNat

end

end A362983.P7968841907029214289

namespace A362983

/-- `A325226(A293448(n+1))` -/
def P7968841907029214289.Spec : Prop :=
  ∀ n, P7968841907029214289.a n = A362983 (n + 1)

end A362983

/-! ## A362983.P13070707094866700633

`A325226(A242419(n+1))`
-/

namespace A362983.P13070707094866700633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325226 (A242419 (n + 1)).toNat

end

end A362983.P13070707094866700633

namespace A362983

/-- `A325226(A242419(n+1))` -/
def P13070707094866700633.Spec : Prop :=
  ∀ n, P13070707094866700633.a n = A362983 (n + 1)

end A362983

/-! ## A362983.P16814550344006129020

`A007949(A329600(n+1))`
-/

namespace A362983.P16814550344006129020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A329600 (n + 1)).toNat

end

end A362983.P16814550344006129020

namespace A362983

/-- `A007949(A329600(n+1))` -/
def P16814550344006129020.Spec : Prop :=
  ∀ n, P16814550344006129020.a n = A362983 (n + 1)

end A362983

/-!
# A362986: a(n) = A000203(A036966(n)), the sum of divisors of the n-th cubefull number A036966(n).

The programs for A362986, there is no canonical definition to state claims against.
-/

/-! ## A362986.P17018255301051511567

`A000203(A036966(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362986.P17018255301051511567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A036966 (n + 1)).toNat

end

end A362986.P17018255301051511567

/-! ## A362986.P1286214143221489296

`A180114(A371185(n+1))`
-/

namespace A362986.P1286214143221489296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180114 (A371185 (n + 1)).toNat

end

end A362986.P1286214143221489296

/-! ## A362986.P895890210219360155

`∑{d}[record[A036966(A133310(n))], #]`
-/

namespace A362986.P895890210219360155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A362986.P895890210219360155

/-! ## A362986.P16699499177110472268

`∑{d}[record[A036966(A323889(n))], #]`
-/

namespace A362986.P16699499177110472268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A362986.P16699499177110472268

/-! ## A362986.P16795797219614678777

`∑{d}[∪[A036967(n+1), A376173(n+1)], #]`
-/

namespace A362986.P16795797219614678777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376173 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A362986.P16795797219614678777

/-! ## A362986.P5492854300843410401

`∑{d}[∪[A370787(n+1), A370788(n+1)], #]`
-/

namespace A362986.P5492854300843410401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370787 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370788 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A362986.P5492854300843410401

/-! ## A362986.P14190398251255846167

`A000203(record[A001694(n+1)*A112526(A306458(n+1))])`
-/

namespace A362986.P14190398251255846167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1) * A112526 (A306458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A362986.P14190398251255846167

/-! ## A362986.P11363480881442471636

`A295294(A036966(2*n+1-n))`
-/

namespace A362986.P11363480881442471636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295294 (A036966 (2 * n + 1 - n)).toNat

end

end A362986.P11363480881442471636

/-! ## A362986.P5135378447766928959

`gcd(A000038(n), A295294(A036966(n+1)))`
-/

namespace A362986.P5135378447766928959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A295294 (A036966 (n + 1)).toNat)

end

end A362986.P5135378447766928959

/-!
# A362988: a(n) = lcm({i, i = 1..n}) / Product_{2 <= p < n, p prime} p.

The programs for A362988, there is no canonical definition to state claims against.
-/

/-! ## A362988.P17196921421553567008

`gcd(a(n-1)*A014963(n), A356337(n))` with `a(0)=1, a(1)=1`
-/

namespace A362988.P17196921421553567008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.gcd ((a (n - 1) : ℤ) * A014963 n) (A356337 n)

end

end A362988.P17196921421553567008

/-! ## A362988.P10680705497602353979

`A003418(n)/A066838(A007918(n))`
-/

namespace A362988.P10680705497602353979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A066838 (A007918 n).toNat : ℚ)

end

end A362988.P10680705497602353979

/-! ## A362988.P6277083289021260632

`A300902(n)/A025527(A028310(n))`
-/

namespace A362988.P6277083289021260632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300902 n : ℚ) / (A025527 (A028310 n).toNat : ℚ)

end

end A362988.P6277083289021260632

/-!
# A362989: a(n) = lcm({i + 1, i = 0..n}) / Product_{d | n, d + 1 prime} d.

The programs for A362989, there is no canonical definition to state claims against.
-/

/-! ## A362989.P4101744259954707456

`∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]/A141056(n)`
-/

namespace A362989.P4101744259954707456
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A141056 n : ℚ)

end

end A362989.P4101744259954707456

/-! ## A362989.P8249971854811104581

`gcd(A025552(n), A362994(n))`
-/

namespace A362989.P8249971854811104581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025552 n) (A362994 n)

end

end A362989.P8249971854811104581

/-! ## A362989.P6371138767305796192

`Δ[A173185(n)]/A141056(n)`
-/

namespace A362989.P6371138767305796192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A141056 n : ℚ)

end

end A362989.P6371138767305796192

/-! ## A362989.P13415380101333527967

`A003418(n+1)/A141056(n)`
-/

namespace A362989.P13415380101333527967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A141056 n : ℚ)

end

end A362989.P13415380101333527967

/-! ## A362989.P13824249729633960123

`(A070198(n)+1)/A141056(n)`
-/

namespace A362989.P13824249729633960123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070198 n + 1 : ℚ) / (A141056 n : ℚ)

end

end A362989.P13824249729633960123

/-!
# A362990: Row sums of A363154.

The programs for A362990, there is no canonical definition to state claims against.
-/

/-! ## A362990.P9149498538243637009

`A226078(A002913(n))-1`
-/

namespace A362990.P9149498538243637009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226078 (A002913 n).toNat - 1

end

end A362990.P9149498538243637009

/-! ## A362990.P8321818811526095607

`A365946(A001250(n))+A001250(n)`
-/

namespace A362990.P8321818811526095607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365946 (A001250 n).toNat + A001250 n

end

end A362990.P8321818811526095607

/-!
# A362992: a(n) = (n + 1)^(n - 1) * lcm{k + 1 : 0 <= k <= n}. Main diagonal of triangle A362995.

The programs for A362992, there is no canonical definition to state claims against.
-/

/-! ## A362992.P3027818009232196054

`(n+1)^n*A002944(n+1)`
-/

namespace A362992.P3027818009232196054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) * A002944 (n + 1)

end

end A362992.P3027818009232196054

/-! ## A362992.P7958161254146321508

`sqrt(A027451(n+1))*(n+1)^n`
-/

namespace A362992.P7958161254146321508
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A027451 (n + 1) : ℝ) * ((n + 1) ^ n : ℝ)

end

end A362992.P7958161254146321508

/-! ## A362992.P15804052941734812488

`(n+1)^(n-1)*A003418(n+1)`
-/

namespace A362992.P15804052941734812488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A003418 (n + 1) : ℚ)

end

end A362992.P15804052941734812488

/-! ## A362992.P3622957025901485126

`Δ[A236856(n)]*A000272(n+1)`
-/

namespace A362992.P3622957025901485126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000272 (n + 1)

end

end A362992.P3622957025901485126

/-! ## A362992.P14319752203021929456

`A000169(n+1)*A027446(A000217(n+1))`
-/

namespace A362992.P14319752203021929456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) * A027446 (A000217 (n + 1)).toNat

end

end A362992.P14319752203021929456

/-!
# A362994: a(n) = lcm(1, 2, ..., n+1) * Bernoulli(n, 1). Alternating row sums of A362995 and A363154.

The programs for A362994, there is no canonical definition to state claims against.
-/

/-! ## A362994.P16395961409557908421

`A362991(∑[n])`
-/

namespace A362994.P16395961409557908421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362991 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362994.P16395961409557908421

/-! ## A362994.P16070558879424788035

`A045948(n+1)*A292899(n)`
-/

namespace A362994.P16070558879424788035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045948 (n + 1) * A292899 n

end

end A362994.P16070558879424788035

/-! ## A362994.P2285053425165180512

`A003418(n+1)/A027642(n)*A164555(n)`
-/

namespace A362994.P2285053425165180512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A027642 n : ℚ) * (A164555 n : ℚ)

end

end A362994.P2285053425165180512

/-! ## A362994.P1376864014540062884

`A164555(n)*A362989(n)`
-/

namespace A362994.P1376864014540062884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n * A362989 n

end

end A362994.P1376864014540062884

/-! ## A362994.P185386504976108228

`A027641(char[1]+n)*A362989(n)`
-/

namespace A362994.P185386504976108228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 ((if ∃ j, f1 j = n then 1 else 0) + n) * A362989 n

end

end A362994.P185386504976108228

/-!
# A362995: Triangle read by rows. T(n, k) = [x^k] lcm({i + 1 : 0 <= i <= n}) * (Sum_{u=0..k} ( Sum_{j=0..u} x^j * binomial(u, j) * (j + 1)^n ) / (u + 1)).

The programs for A362995, there is no canonical definition to state claims against.
-/

/-! ## A362995.P11073005891417470390

`A111850(A226441(2*n+5))*A362996(n)`
-/

namespace A362995.P11073005891417470390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111850 (A226441 (2 * n + 5)).toNat * A362996 n

end

end A362995.P11073005891417470390

/-!
# A362997: Triangle read by rows. T(n, k) = denominator([x^k] R(n, n, x)), where R(n, k, x) = Sum_{u=0..k} ( Sum_{j=0..u} x^j * binomial(u, j) * (j + 1)^n ) / (u + 1).

The programs for A362997, there is no canonical definition to state claims against.
-/

/-! ## A362997.P12991554892215477040

`lcm(A007318(A309864(n+1)), A356601(n))`
-/

namespace A362997.P12991554892215477040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (A309864 (n + 1)).toNat) (A356601 n)

end

end A362997.P12991554892215477040

/-! ## A362997.P12286760501721940762

`gcd(A109053(A000682(n+1)), A221623(n+1))`
-/

namespace A362997.P12286760501721940762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109053 (A000682 (n + 1)).toNat) (A221623 (n + 1))

end

end A362997.P12286760501721940762

/-!
# A362999: a(n) = denominator(R(2*n + 1, 2*n + 1, 1)) where R(n, k, x) = Sum_{u=0..k} ( Sum_{j=0..u} x^j * binomial(u, j) * (j + 1)^n ) / (u + 1).

The programs for A362999, there is no canonical definition to state claims against.
-/

/-! ## A362999.P11949346156824078914

`A363001(Δ[n²])`
-/

namespace A362999.P11949346156824078914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363001 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A362999.P11949346156824078914

/-! ## A362999.P5953590720995325816

`and(-1, A363001(2*n+1))`
-/

namespace A362999.P5953590720995325816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A363001 (2 * n + 1))

end

end A362999.P5953590720995325816

/-! ## A362999.P15240842199270523916

`or(A080891(n²), A363001(2*n+1))`
-/

namespace A362999.P15240842199270523916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080891 (n ^ 2)) (A363001 (2 * n + 1))

end

end A362999.P15240842199270523916

/-! ## A362999.P11311001086090077355

`A363001(2*n+1)+A000007(n+1)`
-/

namespace A362999.P11311001086090077355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363001 (2 * n + 1) + A000007 (n + 1)

end

end A362999.P11311001086090077355

/-! ## A362999.P17695393675066570074

`A363001(2*n+1)+A080891(10*n)`
-/

namespace A362999.P17695393675066570074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363001 (2 * n + 1) + A080891 (10 * n)

end

end A362999.P17695393675066570074

