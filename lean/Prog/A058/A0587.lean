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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A058701: McKay-Thompson series of class 50A for Monster.

The programs for A058701, there is no canonical definition to state claims against.
-/

/-! ## A058701.P4415922530599216881

`A096268(A076878(n+1))+A078374(n+1)`
-/

namespace A058701.P4415922530599216881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A076878 (n + 1)).toNat + A078374 (n + 1)

end

end A058701.P4415922530599216881

/-! ## A058701.P3749477770896558421

`A188014(A025018(n+1))+A078374(n+1)`
-/

namespace A058701.P3749477770896558421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A025018 (n + 1)).toNat + A078374 (n + 1)

end

end A058701.P3749477770896558421

/-! ## A058701.P4280510825355576142

`A353569(A179149(n+1))+A078374(n+1)`
-/

namespace A058701.P4280510825355576142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353569 (A179149 (n + 1)).toNat + A078374 (n + 1)

end

end A058701.P4280510825355576142

/-!
# A058702: a(n) = p(n) if n <= 4 else p(a(n-1)), where p = partition numbers A000041.

The programs for A058702, there is no canonical definition to state claims against.
-/

/-! ## A058702.P6554778637190126166

`A000041(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5`
-/

namespace A058702.P6554778637190126166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5] fun n a =>
  A000041 (a (n - 1)).toNat

end

end A058702.P6554778637190126166

/-! ## A058702.P4496771146795995295

`sqrt(A001255(a(n-1)))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5`
-/

namespace A058702.P4496771146795995295
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1, 2, 3, 5] fun n a =>
  Real.sqrt (A001255 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ)

end

end A058702.P4496771146795995295

/-! ## A058702.P9519195154387337841

`A000065(a(n-1))+1` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5`
-/

namespace A058702.P9519195154387337841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5] fun n a =>
  A000065 (a (n - 1)).toNat + 1

end

end A058702.P9519195154387337841

/-! ## A058702.P6218355370261074234

`A000041(A286655((n+2)²)+a(A023443(n)))` with `a(0)=1`
-/

namespace A058702.P6218355370261074234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000041 (A286655 ((n + 2) ^ 2) + a (A023443 n).toNat).toNat

end

end A058702.P6218355370261074234

/-!
# A058706: McKay-Thompson series of class 52B for Monster.

The programs for A058706, there is no canonical definition to state claims against.
-/

/-! ## A058706.P15464438490114272336

`A290307(A000096(n+12)-12)`
-/

namespace A058706.P15464438490114272336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A000096 (n + 12) - 12).toNat

end

end A058706.P15464438490114272336

/-! ## A058706.P7000281531363170603

`A290307(A000217(n+12)+n)`
-/

namespace A058706.P7000281531363170603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A000217 (n + 12) + (n : ℤ)).toNat

end

end A058706.P7000281531363170603

/-!
# A058708: McKay-Thompson series of class 54A for the Monster group.

The programs for A058708, there is no canonical definition to state claims against.
-/

/-! ## A058708.P12018920278088159219

`A265744(A342136(n))+A185214(n)`
-/

namespace A058708.P12018920278088159219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265744 (A342136 n).toNat + A185214 n

end

end A058708.P12018920278088159219

/-! ## A058708.P16026437476914985369

`A153178(xor(1, n))%A082387(n+1)`
-/

namespace A058708.P16026437476914985369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153178 (Nat.xor 1 n)) (A082387 (n + 1))

end

end A058708.P16026437476914985369

/-! ## A058708.P14474486059222978327

`A181531(n)+A157928(A077055(n))`
-/

namespace A058708.P14474486059222978327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181531 n + A157928 (A077055 n).toNat

end

end A058708.P14474486059222978327

/-! ## A058708.P11149418137800408524

`A181531(n)+A060576(A209001(n+1))`
-/

namespace A058708.P11149418137800408524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181531 n + A060576 (A209001 (n + 1)).toNat

end

end A058708.P11149418137800408524

/-!
# A058709: McKay-Thompson series of class 54a for Monster.

The programs for A058709, there is no canonical definition to state claims against.
-/

/-! ## A058709.P13930497820093417891

`∑{e}[A316689(n+1), A102283(2*n+1)^#]`
-/

namespace A058709.P13930497820093417891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A102283 (2 * n + 1) ^ Nat.factorization (f1 n).natAbs p

end

end A058709.P13930497820093417891

/-! ## A058709.P3779271842547045962

`A099916(A005187(n+2)+Δ[n^4])`
-/

namespace A058709.P3779271842547045962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099916 (A005187 (n + 2) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A058709.P3779271842547045962

/-! ## A058709.P14857111132029185149

`A158924(floor(A017126(n)/A051340(n)))`
-/

namespace A058709.P14857111132029185149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158924 ⌊(A017126 n : ℚ) / (A051340 n : ℚ)⌋.toNat

end

end A058709.P14857111132029185149

/-! ## A058709.P16282815888358262039

`A080225(A027603(n))-A080225(n+1)`
-/

namespace A058709.P16282815888358262039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080225 (A027603 n).toNat - A080225 (n + 1)

end

end A058709.P16282815888358262039

/-!
# A058710: Triangle T(n,k) giving number of loopless matroids of rank k on n labeled points (n >= 0, 0 <= k <= n).

The programs for A058710, there is no canonical definition to state claims against.
-/

/-! ## A058710.P12242764091365216319

`A032514(A048993(n))%A199859(3*n+4)`
-/

namespace A058710.P12242764091365216319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032514 (A048993 n).toNat) (A199859 (3 * n + 4))

end

end A058710.P12242764091365216319

/-! ## A058710.P14888513935553946974

`A060773(A048993(n))`
-/

namespace A058710.P14888513935553946974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060773 (A048993 n).toNat

end

end A058710.P14888513935553946974

/-! ## A058710.P12630794617252495385

`A060773(A151509(n))`
-/

namespace A058710.P12630794617252495385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060773 (A151509 n).toNat

end

end A058710.P12630794617252495385

/-! ## A058710.P13296116880938746154

`A060773(A151511(n))`
-/

namespace A058710.P13296116880938746154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060773 (A151511 n).toNat

end

end A058710.P13296116880938746154

/-! ## A058710.P16906924014039831052

`A382108(A230049(n))`
-/

namespace A058710.P16906924014039831052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382108 (A230049 n).toNat

end

end A058710.P16906924014039831052

/-!
# A058711: Triangle T(n,k) giving the number of loopless matroids of rank k on n labeled points (n >= 1, 1 <= k <= n).

The programs for A058711, there is no canonical definition to state claims against.
-/

/-! ## A058711.P8632953482704558152

`A058710(comp[∑[n]])`
-/

namespace A058711.P8632953482704558152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058710 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A058711.P8632953482704558152

/-! ## A058711.P10863726921686593508

`or(char[2], A058710(A014132(n+1)))`
-/

namespace A058711.P10863726921686593508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A058710 (A014132 (n + 1)).toNat)

end

end A058711.P10863726921686593508

/-! ## A058711.P15813407142392207625

`or(char[1], A058710(A003057(n+2)+n))`
-/

namespace A058711.P15813407142392207625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A058710 (A003057 (n + 2) + (n : ℤ)).toNat)

end

end A058711.P15813407142392207625

/-! ## A058711.P12761398726588389517

`A058710(A080036(n))+A010054(n)`
-/

namespace A058711.P12761398726588389517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058710 (A080036 n).toNat + A010054 n

end

end A058711.P12761398726588389517

/-! ## A058711.P7463711765548498772

`A058710(A014132(n+1))^A035214(n)`
-/

namespace A058711.P7463711765548498772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058710 (A014132 (n + 1)).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A058711.P7463711765548498772

/-!
# A058712: Number of loopless matroids on n labeled points.

The programs for A058712, there is no canonical definition to state claims against.
-/

/-! ## A058712.P1681125460447083024

`A118085(n)`
-/

namespace A058712.P1681125460447083024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118085 n

end

end A058712.P1681125460447083024

/-! ## A058712.P15114226257726579051

`∏{e}[2^n, A114572(#)]`
-/

namespace A058712.P15114226257726579051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A114572 (Nat.factorization (f1 n) p)

end

end A058712.P15114226257726579051

/-! ## A058712.P8608933266845891062

`A114572(floor(acot(n)+n))`
-/

namespace A058712.P8608933266845891062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114572 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A058712.P8608933266845891062

/-! ## A058712.P13538414571217372733

`A114572(n)-floor(acot(n))`
-/

namespace A058712.P13538414571217372733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114572 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A058712.P13538414571217372733

/-!
# A058713: McKay-Thompson series of class 55A for the Monster group.

The programs for A058713, there is no canonical definition to state claims against.
-/

/-! ## A058713.P12013071755488889646

`A238394(n)+A086017(A078169(n+1))`
-/

namespace A058713.P12013071755488889646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238394 n + A086017 (A078169 (n + 1)).toNat

end

end A058713.P12013071755488889646

/-!
# A058715: Number of loopless matroids of rank 3 on n labeled points.

The programs for A058715, there is no canonical definition to state claims against.
-/

/-! ## A058715.P8298458689774490010

`A058711(∑[n+2]+4)`
-/

namespace A058715.P8298458689774490010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058711 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A058715.P8298458689774490010

/-! ## A058715.P6476931825642678389

`A058710(∑[n+3]+6)`
-/

namespace A058715.P6476931825642678389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058710 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A058715.P6476931825642678389

/-!
# A058716: Triangle T(n,k) giving number of nonisomorphic loopless matroids of rank k on n labeled points (n >= 0, 0 <= k <= n).

The programs for A058716, there is no canonical definition to state claims against.
-/

/-! ## A058716.P1667147005754931711

`abs(A119328(n)%A130581(n+4))`
-/

namespace A058716.P1667147005754931711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A119328 n) (A130581 (n + 4))|

end

end A058716.P1667147005754931711

/-! ## A058716.P7869061302006850651

`ceil(A122542(n)%A360129(2*n+3)/2)`
-/

namespace A058716.P7869061302006850651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (A122542 n) (A360129 (2 * n + 3)) : ℚ) / 2⌉

end

end A058716.P7869061302006850651

/-! ## A058716.P3842625686915746097

`A004248(n)-A010893(A055818(n))`
-/

namespace A058716.P3842625686915746097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n - A010893 ((A055818 n).toNat + 13)

end

end A058716.P3842625686915746097

/-! ## A058716.P678553855624484061

`A291883(n)-A082859(A289481(n))`
-/

namespace A058716.P678553855624484061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 n - A082859 (A289481 n).toNat

end

end A058716.P678553855624484061

/-! ## A058716.P11928083503923933503

`lcm(A119328(n), A339564(A134951(n+1)))`
-/

namespace A058716.P11928083503923933503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A119328 n) (A339564 (A134951 (n + 1)).toNat)

end

end A058716.P11928083503923933503

/-!
# A058717: Triangle T(n,k) giving number of nonisomorphic loopless matroids of rank k on n labeled points (n >= 1, 1<=k<=n).

The programs for A058717, there is no canonical definition to state claims against.
-/

/-! ## A058717.P5783929577624222947

`A058716(comp[∑[n]])`
-/

namespace A058717.P5783929577624222947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058716 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A058717.P5783929577624222947

/-! ## A058717.P14197006465746442935

`filter[A058716(n+1), A145568(#)]`
-/

namespace A058717.P14197006465746442935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A058717.P14197006465746442935

/-! ## A058717.P4859792713688776391

`A058716(A014132(n+1))+A025439(n)`
-/

namespace A058717.P4859792713688776391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058716 (A014132 (n + 1)).toNat + A025439 n

end

end A058717.P4859792713688776391

/-! ## A058717.P17071992805102861259

`A058716(A014132(n+1))^A178334(n)`
-/

namespace A058717.P17071992805102861259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058716 (A014132 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A058717.P17071992805102861259

/-! ## A058717.P4489810917676090448

`A058716(A014132(n+1))^A178489(n)`
-/

namespace A058717.P4489810917676090448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058716 (A014132 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A058717.P4489810917676090448

/-!
# A058718: Number of nonisomorphic loopless matroids on n unlabeled points.

The programs for A058718, there is no canonical definition to state claims against.
-/

/-! ## A058718.P9891688355435354410

`A341903(A094980(n)+1)`
-/

namespace A058718.P9891688355435354410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341903 (A094980 n + 1).toNat

end

end A058718.P9891688355435354410

/-! ## A058718.P15454329694996459705

`A138194(A001970(n)+A000660(n))`
-/

namespace A058718.P15454329694996459705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A001970 n + A000660 n).toNat

end

end A058718.P15454329694996459705

/-! ## A058718.P9889617971781858433

`A335380(A004197(n)+A000110(n))`
-/

namespace A058718.P9889617971781858433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335380 (A004197 n + A000110 n).toNat

end

end A058718.P9889617971781858433

/-!
# A058719: Number of nonisomorphic loopless matroids of rank 3 on n labeled points.

The programs for A058719, there is no canonical definition to state claims against.
-/

/-! ## A058719.P9751451877433912965

`record[Δ[A053534(A152950(n+1))]]`
-/

namespace A058719.P9751451877433912965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053534 (A152950 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058719.P9751451877433912965

/-! ## A058719.P18236371976448946456

`A130446(Δ[A159036(n)])`
-/

namespace A058719.P18236371976448946456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (f1 (n + 1) - f1 n).toNat

end

end A058719.P18236371976448946456

/-!
# A058721: Number of simple matroids on n labeled points.

The programs for A058721, there is no canonical definition to state claims against.
-/

/-! ## A058721.P17210375271983401500

`A031218(Δ[n²]^(n-1)+n)`
-/

namespace A058721.P17210375271983401500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n : ℚ))).toNat

end

end A058721.P17210375271983401500

/-!
# A058722: Number of simple matroids of rank 4 on n labeled points.

The programs for A058722, there is no canonical definition to state claims against.
-/

/-! ## A058722.P15911616106145122930

`A058720(∑[n+2]+5)`
-/

namespace A058722.P15911616106145122930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058720 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A058722.P15911616106145122930

/-!
# A058723: McKay-Thompson series of class 58a for the Monster group.

The programs for A058723, there is no canonical definition to state claims against.
-/

/-! ## A058723.P2563282514386941011

`A127321(A030435(n))-Δ[A003114(n)]`
-/

namespace A058723.P2563282514386941011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A030435 n).toNat - (f1 (n + 1) - f1 n)

end

end A058723.P2563282514386941011

/-! ## A058723.P5179127330155611493

`A037821(2^(n-floor(atan(n+1))))+A003114(n)`
-/

namespace A058723.P5179127330155611493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037821 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ))).toNat + A003114 n

end

end A058723.P5179127330155611493

/-! ## A058723.P5331536728298797758

`A266434(A204492(n+1))+A119620(n)`
-/

namespace A058723.P5331536728298797758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 (A204492 (n + 1)).toNat + A119620 n

end

end A058723.P5331536728298797758

/-!
# A058724: McKay-Thompson series of class 59A for the Monster group.

The programs for A058724, there is no canonical definition to state claims against.
-/

/-! ## A058724.P4522242072618224738

`A111660(A001996(n)+A002265(n)+1)`
-/

namespace A058724.P4522242072618224738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A001996 n + (A002265 n + 1)).toNat

end

end A058724.P4522242072618224738

/-! ## A058724.P2170285947201299010

`A157685(2*A003113(n))`
-/

namespace A058724.P2170285947201299010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (2 * A003113 n).toNat

end

end A058724.P2170285947201299010

/-! ## A058724.P110244036135444971

`A157685(A003113(n)+A003113(n))`
-/

namespace A058724.P110244036135444971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A003113 n + A003113 n).toNat

end

end A058724.P110244036135444971

/-! ## A058724.P15850049859380204695

`A048766(record[A008483(n)]*A321285(n))`
-/

namespace A058724.P15850049859380204695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A321285 n).toNat

end

end A058724.P15850049859380204695

/-! ## A058724.P9479859843758734088

`A105564(3*A003113(n))`
-/

namespace A058724.P9479859843758734088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (3 * A003113 n).toNat

end

end A058724.P9479859843758734088

/-!
# A058730: Triangle T(n,k) giving number of nonisomorphic simple matroids of rank k on n labeled points (n >= 2, 2 <= k <= n).

The programs for A058730, there is no canonical definition to state claims against.
-/

/-! ## A058730.P15893449444143039337

`A161516(A005385(n+4))+A112705(n)`
-/

namespace A058730.P15893449444143039337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161516 (A005385 (n + 4)).toNat + A112705 n

end

end A058730.P15893449444143039337

/-! ## A058730.P1016254814387094515

`A112705(n)-A033665(A059268(A112705(n)))`
-/

namespace A058730.P1016254814387094515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112705 n - A033665 (A059268 (A112705 n).toNat).toNat

end

end A058730.P1016254814387094515

/-! ## A058730.P13057495865774175956

`A112705(n)-A184945(A279343(n+1))`
-/

namespace A058730.P13057495865774175956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112705 n - A184945 (A279343 (n + 1)).toNat

end

end A058730.P13057495865774175956

/-! ## A058730.P1508559664075634705

`A112705(n)-A032741(A058348(2*n+1))`
-/

namespace A058730.P1508559664075634705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112705 n - A032741 (A058348 (2 * n + 1)).toNat

end

end A058730.P1508559664075634705

/-!
# A058731: Number of nonisomorphic simple matroids of rank 3 on n unlabeled points.

The programs for A058731, there is no canonical definition to state claims against.
-/

/-! ## A058731.P2094429816049075222

`A001200(n)-1`
-/

namespace A058731.P2094429816049075222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001200 n - 1

end

end A058731.P2094429816049075222

/-! ## A058731.P3490626266038626369

`A057428(n+1)+A001200(n)`
-/

namespace A058731.P3490626266038626369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A001200 n

end

end A058731.P3490626266038626369

/-! ## A058731.P14239039775512510014

`A286707(n+1)+A001200(n)`
-/

namespace A058731.P14239039775512510014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286707 (n + 1) + A001200 n

end

end A058731.P14239039775512510014

/-! ## A058731.P4942613466545106274

`A134824(n+2)+A001200(n)`
-/

namespace A058731.P4942613466545106274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A001200 n

end

end A058731.P4942613466545106274

/-! ## A058731.P9839934580528513532

`A153881(n+2)+A001200(n)`
-/

namespace A058731.P9839934580528513532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A001200 n

end

end A058731.P9839934580528513532

/-!
# A058732: McKay-Thompson series of class 60b for Monster.

The programs for A058732, there is no canonical definition to state claims against.
-/

/-! ## A058732.P6045796275148488218

`2*A058729(n)-A058725(n)`
-/

namespace A058732.P6045796275148488218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058729 n - A058725 n

end

end A058732.P6045796275148488218

/-! ## A058732.P16273990821409659239

`A004277(A058729(n))-A058725(n)`
-/

namespace A058732.P16273990821409659239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A058729 n).toNat - A058725 n

end

end A058732.P16273990821409659239

/-!
# A058733: Number of nonisomorphic simple matroids of rank 4 on n labeled points.

The programs for A058733, there is no canonical definition to state claims against.
-/

/-! ## A058733.P4379314553347142748

`A058730(∑[n+2]+5)`
-/

namespace A058733.P4379314553347142748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058730 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A058733.P4379314553347142748

/-!
# A058734: Nim-product n*(n+1).

The programs for A058734, there is no canonical definition to state claims against.
-/

/-! ## A058734.P4667747410272690124

`A051910(∑[n+2]-1)`
-/

namespace A058734.P4667747410272690124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051910 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A058734.P4667747410272690124

/-! ## A058734.P7425618081973757018

`A051910(A034856(n+1))%246`
-/

namespace A058734.P7425618081973757018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051910 (A034856 (n + 1)).toNat) 246

end

end A058734.P7425618081973757018

/-! ## A058734.P9301078232892672301

`Δ[A051910(A034856(n))+a(n-1)]` with `a(0)=0`
-/

namespace A058734.P9301078232892672301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A051910 (A034856 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058734.P9301078232892672301

/-! ## A058734.P12370294466105242134

`A051910(A034856(n+1))*A057427(n)`
-/

namespace A058734.P12370294466105242134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051910 (A034856 (n + 1)).toNat * A057427 n

end

end A058734.P12370294466105242134

/-! ## A058734.P15804621884577142304

`∑{d}[A051910(A034856(n+1)), A000010(#)]`
-/

namespace A058734.P15804621884577142304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051910 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A058734.P15804621884577142304

/-! ## A058734.P5200537767455308739

`A007318(C(2, n))*A051910(A034856(n+1))`
-/

namespace A058734.P5200537767455308739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A051910 (A034856 (n + 1)).toNat

end

end A058734.P5200537767455308739

/-! ## A058734.P13298911468392099231

`char[A000463(n+1)]*A051910(A034856(n+1))`
-/

namespace A058734.P13298911468392099231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A051910 (A034856 (n + 1)).toNat

end

end A058734.P13298911468392099231

/-! ## A058734.P13364664923755317632

`A014963(4*n+2)*A051910(A034856(n+1))`
-/

namespace A058734.P13364664923755317632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A051910 (A034856 (n + 1)).toNat

end

end A058734.P13364664923755317632

/-! ## A058734.P13952633718797770209

`A000045(((-1)^n)²)*A051910(A034856(n+1))`
-/

namespace A058734.P13952633718797770209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * A051910 (A034856 (n + 1)).toNat

end

end A058734.P13952633718797770209

/-! ## A058734.P12122348903986459368

`A008683(n+1)²!*A051910(A034856(n+1))`
-/

namespace A058734.P12122348903986459368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) * A051910 (A034856 (n + 1)).toNat

end

end A058734.P12122348903986459368

/-! ## A058734.P3375315353373094782

`A001222(A006450(n+1))*A051910(A034856(n+1))`
-/

namespace A058734.P3375315353373094782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006450 (n + 1)).toNat * A051910 (A034856 (n + 1)).toNat

end

end A058734.P3375315353373094782

/-!
# A058735: Triangle of coefficients in expansion of enumerators for series-reduced rooted trees by lines at the root.

The programs for A058735, there is no canonical definition to state claims against.
-/

/-! ## A058735.P17730542500079171828

`A106240(∑[2*n]%comp[∑[n]]+∑[char[∑[n]]]+2)`
-/

namespace A058735.P17730542500079171828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106240 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + (∑ j ∈ Finset.range (n + 1), f4 j + 2))

end

end A058735.P17730542500079171828

/-! ## A058735.P15458732749269280024

`A106240(A038722(comp[∑[n]]))`
-/

namespace A058735.P15458732749269280024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106240 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A058735.P15458732749269280024

/-! ## A058735.P2885718210573107040

`A106240(A099375(n)+2+n)`
-/

namespace A058735.P2885718210573107040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106240 (A099375 n + 2 + (n : ℤ)).toNat

end

end A058735.P2885718210573107040

/-! ## A058735.P7833668981129542463

`A106240(2*A004736(n+1)+n+1)`
-/

namespace A058735.P7833668981129542463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106240 (2 * A004736 (n + 1) + (n + 1 : ℤ)).toNat

end

end A058735.P7833668981129542463

/-! ## A058735.P14508922889413630986

`A106240(A014132(n+1)+A038722(n+1)-n)`
-/

namespace A058735.P14508922889413630986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106240 (A014132 (n + 1) + (A038722 (n + 1) - (n : ℤ))).toNat

end

end A058735.P14508922889413630986

/-!
# A058736: McKay-Thompson series of class 62A for Monster.

The programs for A058736, there is no canonical definition to state claims against.
-/

/-! ## A058736.P15911814539308027545

`A189723(A337761(n+1))+A029142(n)`
-/

namespace A058736.P15911814539308027545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189723 (A337761 (n + 1)).toNat + A029142 n

end

end A058736.P15911814539308027545

/-! ## A058736.P17132154511219425230

`A008742(n)-A085974(A293818(n+6))`
-/

namespace A058736.P17132154511219425230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n - A085974 (A293818 (n + 6)).toNat

end

end A058736.P17132154511219425230

/-! ## A058736.P5128158377129171249

`∑{digits}[A339923(n+1), dr(10^#)]-n%2`
-/

namespace A058736.P5128158377129171249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => SequenceMachineLib.digitalRoot (10 ^ x : ℤ)).sum : ℕ) : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A058736.P5128158377129171249

/-! ## A058736.P6067126795590951145

`ceil(xor(1, n)/2)-A353846(A089408(n))`
-/

namespace A058736.P6067126795590951145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉ - A353846 (A089408 n).toNat

end

end A058736.P6067126795590951145

/-!
# A058737: Main diagonal of A058735.

The programs for A058737, there is no canonical definition to state claims against.
-/

/-! ## A058737.P15443845243434792220

`A106240(∑[n+1]+2)`
-/

namespace A058737.P15443845243434792220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106240 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A058737.P15443845243434792220

/-! ## A058737.P13252695108143606292

`or(A063524(n), A106240(A133263(n+1)))`
-/

namespace A058737.P13252695108143606292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A106240 (A133263 (n + 1)).toNat)

end

end A058737.P13252695108143606292

/-! ## A058737.P1100053397595149403

`A057427(3*(n+1))*A106240(A133263(n+1))`
-/

namespace A058737.P1100053397595149403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * (n + 1)) * A106240 (A133263 (n + 1)).toNat

end

end A058737.P1100053397595149403

/-! ## A058737.P3977437215833524692

`A106240(A133263(n+1))+A001222(ceil(1/(n+1)))`
-/

namespace A058737.P3977437215833524692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106240 (A133263 (n + 1)).toNat + A001222 ⌈1 / (n + 1 : ℚ)⌉.toNat

end

end A058737.P3977437215833524692

/-! ## A058737.P14833087964300605445

`A058735(∑[n]+n)`
-/

namespace A058737.P14833087964300605445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058735 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A058737.P14833087964300605445

/-!
# A058738: a(n) = floor(n*exp(n)).

The programs for A058738, the canonical program `A058738.P5155247510007264182` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058738 has offset 0).

The definition of A058738 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*exp(n))` (program `A058738.P5155247510007264182`, by `A058738.P5155247510007264182.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058738.P5155247510007264182

`floor(n*exp(n))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058738

/-- `floor(n*exp(n))` -/
def P5155247510007264182.Spec : Prop :=
  ∀ n, P5155247510007264182.a n = A058738 n

theorem P5155247510007264182.correct : P5155247510007264182.Spec := by
  intro n
  simp only [A058738]

end A058738

/-! ## A058738.P17375706152358936251

`ceil(n*(exp(n)-acot(n)))`
-/

namespace A058738.P17375706152358936251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.exp (n : ℝ) - SequenceMachineLib.acot (n : ℝ))⌉

end

end A058738.P17375706152358936251

namespace A058738

/-- `ceil(n*(exp(n)-acot(n)))` -/
def P17375706152358936251.Spec : Prop :=
  ∀ n, P17375706152358936251.a n = A058738 n

end A058738

/-! ## A058738.P13135423084464271970

`A058749(n)-ceil(sin(n)²)`
-/

namespace A058738.P13135423084464271970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058749 n - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A058738.P13135423084464271970

namespace A058738

/-- `A058749(n)-ceil(sin(n)²)` -/
def P13135423084464271970.Spec : Prop :=
  ∀ n, P13135423084464271970.a n = A058738 n

end A058738

/-! ## A058738.P9600323360789913701

`A058749(n)+A057428(n)`
-/

namespace A058738.P9600323360789913701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058749 n + A057428 n

end

end A058738.P9600323360789913701

namespace A058738

/-- `A058749(n)+A057428(n)` -/
def P9600323360789913701.Spec : Prop :=
  ∀ n, P9600323360789913701.a n = A058738 n

theorem P9600323360789913701.correct : P9600323360789913701.Spec := by
  intro n
  simp only [A058738, Nat.add_sub_cancel, A058738.P9600323360789913701.a, A058738.P5155247510007264182.a, A057428, A057428.P2999489532230392221.a, A058749, A058749.P7714984297869943431.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058738

/-! ## A058738.P11407748312309768339

`A058749(n)-A057427(n)`
-/

namespace A058738.P11407748312309768339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058749 n - A057427 n

end

end A058738.P11407748312309768339

namespace A058738

/-- `A058749(n)-A057427(n)` -/
def P11407748312309768339.Spec : Prop :=
  ∀ n, P11407748312309768339.a n = A058738 n

theorem P11407748312309768339.correct : P11407748312309768339.Spec := by
  intro n
  simp only [A058738, Nat.add_sub_cancel, A058738.P11407748312309768339.a, A058738.P5155247510007264182.a, A057427, A057427.P3058147525557661423.a, A058749, A058749.P7714984297869943431.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058738

/-! ## A058738.P10072081891823027878

`A058749(n)-char[A052938(n)]`
-/

namespace A058738.P10072081891823027878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058749 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A058738.P10072081891823027878

namespace A058738

/-- `A058749(n)-char[A052938(n)]` -/
def P10072081891823027878.Spec : Prop :=
  ∀ n, P10072081891823027878.a n = A058738 n

end A058738

/-! ## A058738.P16787731756051068643

`A058749(n)-A049240(n²+1)`
-/

namespace A058738.P16787731756051068643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058749 n - A049240 (n ^ 2 + 1)

end

end A058738.P16787731756051068643

namespace A058738

/-- `A058749(n)-A049240(n²+1)` -/
def P16787731756051068643.Spec : Prop :=
  ∀ n, P16787731756051068643.a n = A058738 n

end A058738

/-! ## A058738.P377926312450034268

`A058749(n)-A001221(A001316(n))`
-/

namespace A058738.P377926312450034268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058749 n - A001221 (A001316 n).toNat

end

end A058738.P377926312450034268

namespace A058738

/-- `A058749(n)-A001221(A001316(n))` -/
def P377926312450034268.Spec : Prop :=
  ∀ n, P377926312450034268.a n = A058738 n

end A058738

/-!
# A058740: McKay-Thompson series of class 66B for Monster.

The programs for A058740, there is no canonical definition to state claims against.
-/

/-! ## A058740.P2031369182889763095

`A008616(A259361(∑[A318054(n)]))`
-/

namespace A058740.P2031369182889763095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A259361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A058740.P2031369182889763095

/-! ## A058740.P12413742544256379716

`A103221(eq[A215075(n+1), A272947(n+1)])`
-/

namespace A058740.P12413742544256379716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A058740.P12413742544256379716

/-! ## A058740.P11579701584991681068

`A000607(n)-A112765(A320423(n))`
-/

namespace A058740.P11579701584991681068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - A112765 (A320423 n).toNat

end

end A058740.P11579701584991681068

/-! ## A058740.P3731730913884027936

`A103221(eq[A100063(n), A133380(n+1)])-A101605(A341949(n+6))`
-/

namespace A058740.P3731730913884027936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - A101605 (A341949 (n + 6)).toNat

end

end A058740.P3731730913884027936

/-!
# A058742: McKay-Thompson series of class 68A for Monster.

The programs for A058742, there is no canonical definition to state claims against.
-/

/-! ## A058742.P10659349113649768310

`ceil(xor(1, n)/2)-A056594(A008862(n))`
-/

namespace A058742.P10659349113649768310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉ - A056594 (A008862 n).toNat

end

end A058742.P10659349113649768310

/-! ## A058742.P5328962396453630028

`A028242(n)-A056594(A008862(n))`
-/

namespace A058742.P5328962396453630028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n - A056594 (A008862 n).toNat

end

end A058742.P5328962396453630028

/-! ## A058742.P10499407426393804070

`A056594(A008862(n)+2)+A028242(n)`
-/

namespace A058742.P10499407426393804070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A008862 n + 2).toNat + A028242 n

end

end A058742.P10499407426393804070

/-! ## A058742.P2792761393491525471

`A115584(n+2)%A261160(A092295(n))`
-/

namespace A058742.P2792761393491525471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115584 (n + 2)) (A261160 (A092295 n).toNat)

end

end A058742.P2792761393491525471

/-! ## A058742.P9200593596990377406

`A139351(xor(A043562(n), A055010(n)))`
-/

namespace A058742.P9200593596990377406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (Int.xor (A043562 n) (A055010 n)).toNat

end

end A058742.P9200593596990377406

/-!
# A058745: McKay-Thompson series of class 70B for Monster.

The programs for A058745, there is no canonical definition to state claims against.
-/

/-! ## A058745.P4180799589853788775

`Δ[A016349(A018357(n+1))]`
-/

namespace A058745.P4180799589853788775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016349 (A018357 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058745.P4180799589853788775

/-! ## A058745.P3941821313909925956

`Δ[A011654(A122111(n+1))]`
-/

namespace A058745.P3941821313909925956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011654 (A122111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058745.P3941821313909925956

/-! ## A058745.P7314353170528664995

`Δ[A257994(A128735(n))]`
-/

namespace A058745.P7314353170528664995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A128735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058745.P7314353170528664995

/-! ## A058745.P10956096859362088453

`Δ[A158780(A010673(n)^A254197(n+1))]`
-/

namespace A058745.P10956096859362088453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (SequenceMachineLib.roundAway ((A010673 n : ℚ) ^ (A254197 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058745.P10956096859362088453

/-!
# A058748: a(n) = round(n*exp(n)).

The programs for A058748, the canonical program `A058748.P2432178346880034963` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058748 has offset 0).

The definition of A058748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*exp(n))` (program `A058748.P2432178346880034963`, by `A058748.P2432178346880034963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058748.P2432178346880034963

`round(n*exp(n))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058748

/-- `round(n*exp(n))` -/
def P2432178346880034963.Spec : Prop :=
  ∀ n, P2432178346880034963.a n = A058748 n

theorem P2432178346880034963.correct : P2432178346880034963.Spec := by
  intro n
  simp only [A058748]

end A058748

/-! ## A058748.P3654498259782162354

`A058749(n)-A276206(A128105(n+4))`
-/

namespace A058748.P3654498259782162354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058749 n - A276206 (A128105 (n + 4)).toNat

end

end A058748.P3654498259782162354

namespace A058748

/-- `A058749(n)-A276206(A128105(n+4))` -/
def P3654498259782162354.Spec : Prop :=
  ∀ n, P3654498259782162354.a n = A058748 n

end A058748

/-! ## A058748.P10071414190214878889

`A127693(n)-A024000(A058749(n))`
-/

namespace A058748.P10071414190214878889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127693 n - A024000 (A058749 n).toNat

end

end A058748.P10071414190214878889

namespace A058748

/-- `A127693(n)-A024000(A058749(n))` -/
def P10071414190214878889.Spec : Prop :=
  ∀ n, P10071414190214878889.a n = A058748 n

end A058748

/-! ## A058748.P18356766513860453603

`A058749(n)-A038189(A141488(n))`
-/

namespace A058748.P18356766513860453603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058749 n - A038189 (A141488 n).toNat

end

end A058748.P18356766513860453603

namespace A058748

/-- `A058749(n)-A038189(A141488(n))` -/
def P18356766513860453603.Spec : Prop :=
  ∀ n, P18356766513860453603.a n = A058748 n

end A058748

/-!
# A058749: a(n) = ceiling(n*exp(n)).

The programs for A058749, the canonical program `A058749.P7714984297869943431` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058749 has offset 0).

The definition of A058749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058749.P16488150877491150086

`ceil(n*exp(n))`
-/

namespace A058749.P16488150877491150086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.exp (n : ℝ)⌉

end

end A058749.P16488150877491150086

namespace A058749

/-- `ceil(n*exp(n))` -/
def P16488150877491150086.Spec : Prop :=
  ∀ n, P16488150877491150086.a n = A058749 n

end A058749

/-! ## A058749.P18347125165585388569

`A058738(n)+ceil(sin(n)²)`
-/

namespace A058749.P18347125165585388569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058738 n + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A058749.P18347125165585388569

namespace A058749

/-- `A058738(n)+ceil(sin(n)²)` -/
def P18347125165585388569.Spec : Prop :=
  ∀ n, P18347125165585388569.a n = A058749 n

end A058749

/-! ## A058749.P7714984297869943431

`A058738(n)+A057427(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058749

/-- `A058738(n)+A057427(n)` -/
def P7714984297869943431.Spec : Prop :=
  ∀ n, P7714984297869943431.a n = A058749 n

theorem P7714984297869943431.correct : P7714984297869943431.Spec := by
  intro n
  simp only [A058749]

end A058749

/-! ## A058749.P4093499908071958478

`A058738(n)-A057428(n)`
-/

namespace A058749.P4093499908071958478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058738 n - A057428 n

end

end A058749.P4093499908071958478

namespace A058749

/-- `A058738(n)-A057428(n)` -/
def P4093499908071958478.Spec : Prop :=
  ∀ n, P4093499908071958478.a n = A058749 n

theorem P4093499908071958478.correct : P4093499908071958478.Spec := by
  intro n
  simp only [A058749, Nat.add_sub_cancel, A058749.P4093499908071958478.a, A058749.P7714984297869943431.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A058738, A058738.P5155247510007264182.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058749

/-! ## A058749.P13690766189136667580

`A058738(n)+char[A052938(n)]`
-/

namespace A058749.P13690766189136667580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058738 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A058749.P13690766189136667580

namespace A058749

/-- `A058738(n)+char[A052938(n)]` -/
def P13690766189136667580.Spec : Prop :=
  ∀ n, P13690766189136667580.a n = A058749 n

end A058749

/-! ## A058749.P10474149123683194408

`A058738(n)+A000040(n+1)%2`
-/

namespace A058749.P10474149123683194408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058738 n + Int.tmod (A000040 (n + 1)) 2

end

end A058749.P10474149123683194408

namespace A058749

/-- `A058738(n)+A000040(n+1)%2` -/
def P10474149123683194408.Spec : Prop :=
  ∀ n, P10474149123683194408.a n = A058749 n

end A058749

/-! ## A058749.P6766235578292068854

`A058738(n)+p?[record[A026262(n+1)]]%2`
-/

namespace A058749.P6766235578292068854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026262 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058738 n + Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2

end

end A058749.P6766235578292068854

namespace A058749

/-- `A058738(n)+p?[record[A026262(n+1)]]%2` -/
def P6766235578292068854.Spec : Prop :=
  ∀ n, P6766235578292068854.a n = A058749 n

end A058749

/-! ## A058749.P896573405693897996

`A058738(n)+A001221(A001316(n))`
-/

namespace A058749.P896573405693897996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058738 n + A001221 (A001316 n).toNat

end

end A058749.P896573405693897996

namespace A058749

/-- `A058738(n)+A001221(A001316(n))` -/
def P896573405693897996.Spec : Prop :=
  ∀ n, P896573405693897996.a n = A058749 n

end A058749

/-! ## A058749.P10984426183883622352

`A058738(n)+A056926(A056926(∑[n]))`
-/

namespace A058749.P10984426183883622352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058738 n + A056926 (A056926 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A058749.P10984426183883622352

namespace A058749

/-- `A058738(n)+A056926(A056926(∑[n]))` -/
def P10984426183883622352.Spec : Prop :=
  ∀ n, P10984426183883622352.a n = A058749 n

end A058749

/-! ## A058749.P7924306117550063590

`A115721(A001222(n+1))+A058738(n)`
-/

namespace A058749.P7924306117550063590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115721 (A001222 (n + 1)).toNat + A058738 n

end

end A058749.P7924306117550063590

namespace A058749

/-- `A115721(A001222(n+1))+A058738(n)` -/
def P7924306117550063590.Spec : Prop :=
  ∀ n, P7924306117550063590.a n = A058749 n

end A058749

/-! ## A058749.P16983378823573755173

`A058738(n)+A001222(A079068(2*n+1))`
-/

namespace A058749.P16983378823573755173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058738 n + A001222 (A079068 (2 * n + 1)).toNat

end

end A058749.P16983378823573755173

namespace A058749

/-- `A058738(n)+A001222(A079068(2*n+1))` -/
def P16983378823573755173.Spec : Prop :=
  ∀ n, P16983378823573755173.a n = A058749 n

end A058749

/-! ## A058749.P15481796932211369237

`A058738(n+1)%(1-Δ[A058738(n)])`
-/

namespace A058749.P15481796932211369237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058738 (n + 1)) (1 - (f1 (n + 1) - f1 n))

end

end A058749.P15481796932211369237

namespace A058749

/-- `A058738(n+1)%(1-Δ[A058738(n)])` -/
def P15481796932211369237.Spec : Prop :=
  ∀ n, P15481796932211369237.a n = A058749 n

end A058749

/-!
# A058750: a(n) = floor(log(n)*exp(n)).

The programs for A058750, the canonical program `A058750.P14760053395261184718` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058750 has offset 1).

The definition of A058750 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log(n+1)*exp(n+1))` (program `A058750.P14760053395261184718`, by `A058750.P14760053395261184718.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058750.P14760053395261184718

`floor(log(n+1)*exp(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058750

/-- `floor(log(n+1)*exp(n+1))` -/
def P14760053395261184718.Spec : Prop :=
  ∀ n, P14760053395261184718.a n = A058750 (n + 1)

theorem P14760053395261184718.correct : P14760053395261184718.Spec := by
  intro n
  simp only [A058750, Nat.add_sub_cancel]

end A058750

/-! ## A058750.P13484510453249221410

`A058751(n+1)+floor(acot(n))-1`
-/

namespace A058750.P13484510453249221410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058751 (n + 1) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A058750.P13484510453249221410

namespace A058750

/-- `A058751(n+1)+floor(acot(n))-1` -/
def P13484510453249221410.Spec : Prop :=
  ∀ n, P13484510453249221410.a n = A058750 (n + 1)

end A058750

/-! ## A058750.P2671224682460057882

`A058751(n+1)+A057428(n)`
-/

namespace A058750.P2671224682460057882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058751 (n + 1) + A057428 n

end

end A058750.P2671224682460057882

namespace A058750

/-- `A058751(n+1)+A057428(n)` -/
def P2671224682460057882.Spec : Prop :=
  ∀ n, P2671224682460057882.a n = A058750 (n + 1)

theorem P2671224682460057882.correct : P2671224682460057882.Spec := by
  intro n
  simp only [A058750, Nat.add_sub_cancel, A058750.P2671224682460057882.a, A058750.P14760053395261184718.a, A057428, A057428.P2999489532230392221.a, A058751, A058751.P13043009951730416498.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058750

/-! ## A058750.P13229599353161920885

`A058751(n+1)-A057427(n)`
-/

namespace A058750.P13229599353161920885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058751 (n + 1) - A057427 n

end

end A058750.P13229599353161920885

namespace A058750

/-- `A058751(n+1)-A057427(n)` -/
def P13229599353161920885.Spec : Prop :=
  ∀ n, P13229599353161920885.a n = A058750 (n + 1)

theorem P13229599353161920885.correct : P13229599353161920885.Spec := by
  intro n
  simp only [A058750, Nat.add_sub_cancel, A058750.P13229599353161920885.a, A058750.P14760053395261184718.a, A057427, A057427.P3058147525557661423.a, A058751, A058751.P13043009951730416498.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058750

/-! ## A058750.P7513072337310622116

`A058751(n+1)-A066247((n+1)²)`
-/

namespace A058750.P7513072337310622116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058751 (n + 1) - A066247 ((n + 1) ^ 2)

end

end A058750.P7513072337310622116

namespace A058750

/-- `A058751(n+1)-A066247((n+1)²)` -/
def P7513072337310622116.Spec : Prop :=
  ∀ n, P7513072337310622116.a n = A058750 (n + 1)

end A058750

/-! ## A058750.P12880082121481659606

`A058751(n+1)-A048766(A048766(n))`
-/

namespace A058750.P12880082121481659606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058751 (n + 1) - A048766 (A048766 n).toNat

end

end A058750.P12880082121481659606

namespace A058750

/-- `A058751(n+1)-A048766(A048766(n))` -/
def P12880082121481659606.Spec : Prop :=
  ∀ n, P12880082121481659606.a n = A058750 (n + 1)

end A058750

/-! ## A058750.P12123286750901816394

`A058751(n+1)-n/A007318(A000124(n))`
-/

namespace A058750.P12123286750901816394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058751 (n + 1) : ℚ) - (n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A058750.P12123286750901816394

namespace A058750

/-- `A058751(n+1)-n/A007318(A000124(n))` -/
def P12123286750901816394.Spec : Prop :=
  ∀ n, P12123286750901816394.a n = (A058750 (n + 1) : ℚ)

end A058750

/-! ## A058750.P1435028959024499783

`A058751(n+1)-A151935(A151935(n))`
-/

namespace A058750.P1435028959024499783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058751 (n + 1) - A151935 (A151935 n).toNat

end

end A058750.P1435028959024499783

namespace A058750

/-- `A058751(n+1)-A151935(A151935(n))` -/
def P1435028959024499783.Spec : Prop :=
  ∀ n, P1435028959024499783.a n = A058750 (n + 1)

end A058750

/-!
# A058751: a(n) = ceiling(log(n)*exp(n)).

The programs for A058751, the canonical program `A058751.P13043009951730416498` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058751 has offset 1).

The definition of A058751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058751.P12116035179920321013

`ceil(exp(n+1)*log(n+1))`
-/

namespace A058751.P12116035179920321013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (n + 1 : ℝ) * Real.log (n + 1 : ℝ)⌉

end

end A058751.P12116035179920321013

namespace A058751

/-- `ceil(exp(n+1)*log(n+1))` -/
def P12116035179920321013.Spec : Prop :=
  ∀ n, P12116035179920321013.a n = A058751 (n + 1)

end A058751

/-! ## A058751.P9012380526212081895

`A058750(n+1)-(floor(acot(n))-1)`
-/

namespace A058751.P9012380526212081895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058750 (n + 1) - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A058751.P9012380526212081895

namespace A058751

/-- `A058750(n+1)-(floor(acot(n))-1)` -/
def P9012380526212081895.Spec : Prop :=
  ∀ n, P9012380526212081895.a n = A058751 (n + 1)

end A058751

/-! ## A058751.P13043009951730416498

`A058750(n+1)+A057427(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058751

/-- `A058750(n+1)+A057427(n)` -/
def P13043009951730416498.Spec : Prop :=
  ∀ n, P13043009951730416498.a n = A058751 (n + 1)

theorem P13043009951730416498.correct : P13043009951730416498.Spec := by
  intro n
  simp only [A058751, Nat.add_sub_cancel]

end A058751

/-! ## A058751.P12820710250810431281

`A058750(n+1)-A057428(n)`
-/

namespace A058751.P12820710250810431281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058750 (n + 1) - A057428 n

end

end A058751.P12820710250810431281

namespace A058751

/-- `A058750(n+1)-A057428(n)` -/
def P12820710250810431281.Spec : Prop :=
  ∀ n, P12820710250810431281.a n = A058751 (n + 1)

theorem P12820710250810431281.correct : P12820710250810431281.Spec := by
  intro n
  simp only [A058751, Nat.add_sub_cancel, A058751.P12820710250810431281.a, A058751.P13043009951730416498.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A058750, A058750.P14760053395261184718.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058751

/-! ## A058751.P353306088166400333

`A058750(n+1)+A043545(2*n)`
-/

namespace A058751.P353306088166400333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058750 (n + 1) + A043545 (2 * n)

end

end A058751.P353306088166400333

namespace A058751

/-- `A058750(n+1)+A043545(2*n)` -/
def P353306088166400333.Spec : Prop :=
  ∀ n, P353306088166400333.a n = A058751 (n + 1)

end A058751

/-! ## A058751.P3216158141414373609

`A058750(n+1)+char[A003602(n+1)]`
-/

namespace A058751.P3216158141414373609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058750 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A058751.P3216158141414373609

namespace A058751

/-- `A058750(n+1)+char[A003602(n+1)]` -/
def P3216158141414373609.Spec : Prop :=
  ∀ n, P3216158141414373609.a n = A058751 (n + 1)

end A058751

/-! ## A058751.P11605318991857892101

`A058750(n+1)+char[A069770(n+1)]`
-/

namespace A058751.P11605318991857892101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058750 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A058751.P11605318991857892101

namespace A058751

/-- `A058750(n+1)+char[A069770(n+1)]` -/
def P11605318991857892101.Spec : Prop :=
  ∀ n, P11605318991857892101.a n = A058751 (n + 1)

end A058751

/-! ## A058751.P17948762869556357206

`A058750(n+1)+A000040(n+1)%2`
-/

namespace A058751.P17948762869556357206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058750 (n + 1) + Int.tmod (A000040 (n + 1)) 2

end

end A058751.P17948762869556357206

namespace A058751

/-- `A058750(n+1)+A000040(n+1)%2` -/
def P17948762869556357206.Spec : Prop :=
  ∀ n, P17948762869556357206.a n = A058751 (n + 1)

end A058751

/-! ## A058751.P3149306012369483949

`A058750(n+1)+A008611(A318984(n))`
-/

namespace A058751.P3149306012369483949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058750 (n + 1) + A008611 (A318984 n).toNat

end

end A058751.P3149306012369483949

namespace A058751

/-- `A058750(n+1)+A008611(A318984(n))` -/
def P3149306012369483949.Spec : Prop :=
  ∀ n, P3149306012369483949.a n = A058751 (n + 1)

end A058751

/-! ## A058751.P16056520853414530425

`A058750(n+1)+A001222(A008578(n+1))`
-/

namespace A058751.P16056520853414530425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058750 (n + 1) + A001222 (A008578 (n + 1)).toNat

end

end A058751.P16056520853414530425

namespace A058751

/-- `A058750(n+1)+A001222(A008578(n+1))` -/
def P16056520853414530425.Spec : Prop :=
  ∀ n, P16056520853414530425.a n = A058751 (n + 1)

end A058751

/-! ## A058751.P5863198469240161736

`A058750(n+1)+A046146(A029600(∑[n]))`
-/

namespace A058751.P5863198469240161736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058750 (n + 1) + A046146 (A029600 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A058751.P5863198469240161736

namespace A058751

/-- `A058750(n+1)+A046146(A029600(∑[n]))` -/
def P5863198469240161736.Spec : Prop :=
  ∀ n, P5863198469240161736.a n = A058751 (n + 1)

end A058751

/-! ## A058751.P9674164206619058678

`A058750(n+1)+n/A007318(A000124(n))`
-/

namespace A058751.P9674164206619058678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058750 (n + 1) : ℚ) + (n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A058751.P9674164206619058678

namespace A058751

/-- `A058750(n+1)+n/A007318(A000124(n))` -/
def P9674164206619058678.Spec : Prop :=
  ∀ n, P9674164206619058678.a n = (A058751 (n + 1) : ℚ)

end A058751

/-!
# A058752: a(n) = round(log(n)*exp(n)).

The programs for A058752, the canonical program `A058752.P3439875110007678779` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058752 has offset 1).

The definition of A058752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058752.P3439875110007678779

`round(exp(n+1)*log(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058752

/-- `round(exp(n+1)*log(n+1))` -/
def P3439875110007678779.Spec : Prop :=
  ∀ n, P3439875110007678779.a n = A058752 (n + 1)

theorem P3439875110007678779.correct : P3439875110007678779.Spec := by
  intro n
  simp only [A058752, Nat.add_sub_cancel]

end A058752

/-! ## A058752.P3724512683404339649

`A086080(A058749(n))+A058750(n+1)`
-/

namespace A058752.P3724512683404339649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086080 (A058749 n).toNat + A058750 (n + 1)

end

end A058752.P3724512683404339649

namespace A058752

/-- `A086080(A058749(n))+A058750(n+1)` -/
def P3724512683404339649.Spec : Prop :=
  ∀ n, P3724512683404339649.a n = A058752 (n + 1)

end A058752

/-! ## A058752.P6616893294483437960

`A058751(n+1)-A288478(A301994(n+1))`
-/

namespace A058752.P6616893294483437960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058751 (n + 1) - A288478 (A301994 (n + 1)).toNat

end

end A058752.P6616893294483437960

namespace A058752

/-- `A058751(n+1)-A288478(A301994(n+1))` -/
def P6616893294483437960.Spec : Prop :=
  ∀ n, P6616893294483437960.a n = A058752 (n + 1)

end A058752

/-! ## A058752.P15820995358552422713

`A058750(n+1)+A046067(A001710(n))`
-/

namespace A058752.P15820995358552422713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058750 (n + 1) + A046067 (A001710 n).toNat

end

end A058752.P15820995358552422713

namespace A058752

/-- `A058750(n+1)+A046067(A001710(n))` -/
def P15820995358552422713.Spec : Prop :=
  ∀ n, P15820995358552422713.a n = A058752 (n + 1)

end A058752

/-!
# A058753: McKay-Thompson series of class 76a for Monster.

The programs for A058753, there is no canonical definition to state claims against.
-/

/-! ## A058753.P17954845880489241594

`A267113(n+1)+A111972(A292496(n)+A232753(n+1))`
-/

namespace A058753.P17954845880489241594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267113 (n + 1) + A111972 (A292496 n + A232753 (n + 1)).toNat

end

end A058753.P17954845880489241594

/-! ## A058753.P18192844836999007793

`A280737(A166286(n))+char[2*n]`
-/

namespace A058753.P18192844836999007793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (A166286 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A058753.P18192844836999007793

/-! ## A058753.P3598625231324108152

`A115584(n)+A010052(A065523(n+1))`
-/

namespace A058753.P3598625231324108152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115584 n + A010052 (A065523 (n + 1)).toNat

end

end A058753.P3598625231324108152

/-! ## A058753.P3984713828966653383

`A005044(n+3)-A179829(A191627(n+1))`
-/

namespace A058753.P3984713828966653383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 3) - A179829 (A191627 (n + 1)).toNat

end

end A058753.P3984713828966653383

/-! ## A058753.P18304809974392439483

`A284264(A077168(n))+A029168(n)`
-/

namespace A058753.P18304809974392439483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284264 (A077168 n).toNat + A029168 n

end

end A058753.P18304809974392439483

/-!
# A058756: G.f. is (1-S)/(1+S), where S = g.f. for A000084.

The programs for A058756, there is no canonical definition to state claims against.
-/

/-! ## A058756.P9548333371654795821

`(2-A280560(n)²)*A001572(n)`
-/

namespace A058756.P9548333371654795821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A280560 n ^ 2) * A001572 n

end

end A058756.P9548333371654795821

/-! ## A058756.P17817690681041264405

`A001572(n)*A280560(A004273(n))`
-/

namespace A058756.P17817690681041264405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001572 n * A280560 (A004273 n).toNat

end

end A058756.P17817690681041264405

/-! ## A058756.P16247238179536583508

`A001572(n)*A007427(A008578(n+1))`
-/

namespace A058756.P16247238179536583508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001572 n * A007427 (A008578 (n + 1)).toNat

end

end A058756.P16247238179536583508

/-! ## A058756.P18108618850423356578

`A001572(n)*A007427(A251101(n+1))`
-/

namespace A058756.P18108618850423356578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001572 n * A007427 (A251101 (n + 1)).toNat

end

end A058756.P18108618850423356578

/-! ## A058756.P2380889910366310484

`A001572(n)*A178412(A171821(n+1))`
-/

namespace A058756.P2380889910366310484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001572 n * A178412 (A171821 (n + 1)).toNat

end

end A058756.P2380889910366310484

/-!
# A058757: a(n) = n*coefficient of x^n in log(1+S), S = g.f. for A000084.

The programs for A058757, there is no canonical definition to state claims against.
-/

/-! ## A058757.P14276439069198676960

`ceil(A006349(n+1)/2)`
-/

namespace A058757.P14276439069198676960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006349 (n + 1) : ℚ) / 2⌉

end

end A058757.P14276439069198676960

/-! ## A058757.P4963306828193699504

`∑{d}[n+1, #*A000669(#)]`
-/

namespace A058757.P4963306828193699504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000669 d

end

end A058757.P4963306828193699504

/-! ## A058757.P6368017775201990562

`record[∑{d}[A007599(n), #*A000669(#)]]`
-/

namespace A058757.P6368017775201990562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d : ℤ) * A000669 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058757.P6368017775201990562

/-! ## A058757.P9747410620741654934

`(A058353(n+1)+A036655(n))/2`
-/

namespace A058757.P9747410620741654934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058353 (n + 1) + A036655 n : ℚ) / 2

end

end A058757.P9747410620741654934

/-! ## A058757.P6694345187900067624

`(A058353(n+1)+A058352(n)+1)/2`
-/

namespace A058757.P6694345187900067624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058353 (n + 1) + (A058352 n + 1) : ℚ) / 2

end

end A058757.P6694345187900067624

/-! ## A058757.P3769757287850112356

`floor(A014963(lcm(22, n+1))+A006349(n+1)/2)`
-/

namespace A058757.P3769757287850112356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (Nat.lcm 22 (n + 1)) : ℚ) + (A006349 (n + 1) : ℚ) / 2⌋

end

end A058757.P3769757287850112356

/-! ## A058757.P17268916104050338243

`floor(A046951(A001097(n+1))+A006349(n+1)/2)`
-/

namespace A058757.P17268916104050338243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046951 (A001097 (n + 1)).toNat : ℚ) + (A006349 (n + 1) : ℚ) / 2⌋

end

end A058757.P17268916104050338243

/-!
# A058760: Integers whose set of prime factors (taken with multiplicity) uses each digit exactly once (i.e., is pandigital) in some base b > 1. Numbers are expressed in base 10.

The programs for A058760, there is no canonical definition to state claims against.
-/

/-! ## A058760.P13885029005445730294

`∑[∑[A055460(A202855(n+1))]]`
-/

namespace A058760.P13885029005445730294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055460 (A202855 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058760.P13885029005445730294

/-! ## A058760.P1233234249713318529

`∑[A004736(A008416(n)+2^n)]`
-/

namespace A058760.P1233234249713318529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A008416 n + (2 ^ n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058760.P1233234249713318529

/-!
# A058762: McKay-Thompson series of class 87A for Monster.

The programs for A058762, there is no canonical definition to state claims against.
-/

/-! ## A058762.P17204856410915368304

`A287272(6*A100405(n))`
-/

namespace A058762.P17204856410915368304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (6 * A100405 n).toNat

end

end A058762.P17204856410915368304

/-! ## A058762.P16157531082184421954

`A291208(3^A008681(n))`
-/

namespace A058762.P16157531082184421954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291208 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A008681 n : ℤ))).toNat

end

end A058762.P16157531082184421954

/-! ## A058762.P11265096851069127452

`A353328(4^A008681(n))`
-/

namespace A058762.P11265096851069127452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353328 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A008681 n : ℤ))).toNat

end

end A058762.P11265096851069127452

/-!
# A058763: Integers which are neither totient nor cototient.

The programs for A058763, there is no canonical definition to state claims against.
-/

/-! ## A058763.P5966618766383445620

`filter[A005278(n+1), A355451(#)]`
-/

namespace A058763.P5966618766383445620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A058763.P5966618766383445620

/-! ## A058763.P5160716956811550997

`∩[A005277(n+1), A005278(n+1)]`
-/

namespace A058763.P5160716956811550997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058763.P5160716956811550997

/-! ## A058763.P16822844616097263706

`∩[A005278(n+1), A007617(n+1)]`
-/

namespace A058763.P16822844616097263706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058763.P16822844616097263706

/-! ## A058763.P17332340241734901116

`eq[A049283(n+1), A063507(n+1)]+1`
-/

namespace A058763.P17332340241734901116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A058763.P17332340241734901116

/-! ## A058763.P8750493374859322798

`eq[A063507(n+1), A215240(n+1)]+1`
-/

namespace A058763.P8750493374859322798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215240 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A058763.P8750493374859322798

/-! ## A058763.P7005469647390733450

`eq[A063507(n+1), A264739(n+1)]+1`
-/

namespace A058763.P7005469647390733450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A058763.P7005469647390733450

/-! ## A058763.P3197625156433557863

`A133265(eq[A049283(n+1), A063507(n+1)])`
-/

namespace A058763.P3197625156433557863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A058763.P3197625156433557863

/-! ## A058763.P2215273591336256594

`A133265(eq[A063507(n+1), A215240(n+1)])`
-/

namespace A058763.P2215273591336256594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A058763.P2215273591336256594

/-! ## A058763.P3309106912333583734

`A133265(eq[A063507(n+1), A264739(n+1)])`
-/

namespace A058763.P3309106912333583734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A058763.P3309106912333583734

/-! ## A058763.P17563450588349228590

`A020725(lt[A063507(n+1)+A014197(n+1), 1])`
-/

namespace A058763.P17563450588349228590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1) + A014197 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A058763.P17563450588349228590

/-! ## A058763.P12093726472573815465

`A133265(lt[A063507(n+1)+A014197(n+1), 1])`
-/

namespace A058763.P12093726472573815465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1) + A014197 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A058763.P12093726472573815465

/-! ## A058763.P4898756528605952116

`A133265(lt[A264739(n+1)+A063507(n+1), 1])`
-/

namespace A058763.P4898756528605952116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (n + 1) + A063507 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A058763.P4898756528605952116

/-!
# A058764: Smallest number x such that cototient(x) = 2^n.

The programs for A058764, the canonical program `A058764.P7242570610008364563` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058764 has offset 0).

The definition of A058764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058764.P9436194016910665047

`ogf((2-2x^2)/(1-2x))`
-/

namespace A058764.P9436194016910665047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -2] [1, -2] n

end

end A058764.P9436194016910665047

namespace A058764

/-- `ogf((2-2x^2)/(1-2x))` -/
def P9436194016910665047.Spec : Prop :=
  ∀ n, P9436194016910665047.a n = A058764 n

end A058764

/-! ## A058764.P7242570610008364563

`2*a(n-1)` with `a(0)=2, a(1)=4, a(2)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058764

/-- `2*a(n-1)` -/
def P7242570610008364563.Spec : Prop :=
  ∀ n, (P7242570610008364563.a n : ℤ) = A058764 n

theorem P7242570610008364563.correct : P7242570610008364563.Spec := by
  intro n
  simp only [A058764]

end A058764

/-! ## A058764.P17318618283016606800

`2*ceil(3*2^(n-2))`
-/

namespace A058764.P17318618283016606800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

end

end A058764.P17318618283016606800

namespace A058764

/-- `2*ceil(3*2^(n-2))` -/
def P17318618283016606800.Spec : Prop :=
  ∀ n, P17318618283016606800.a n = A058764 n

end A058764

/-! ## A058764.P16084892305763417840

`a(n-1)/tan(acot(2))` with `a(0)=2, a(1)=4, a(2)=6`
-/

namespace A058764.P16084892305763417840
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2, 4, 6] fun n a =>
  a (n - 1) / Real.tan (SequenceMachineLib.acot (2 : ℝ))

end

end A058764.P16084892305763417840

namespace A058764

/-- `a(n-1)/tan(acot(2))` -/
def P16084892305763417840.Spec : Prop :=
  ∀ n, P16084892305763417840.a n = (A058764 n : ℝ)

end A058764

/-! ## A058764.P728319353155007394

`a(n-1)+a(n-1)` with `a(0)=2, a(1)=4, a(2)=6`
-/

namespace A058764.P728319353155007394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 6] fun n a =>
  a (n - 1) + a (n - 1)

end

end A058764.P728319353155007394

namespace A058764

/-- `a(n-1)+a(n-1)` -/
def P728319353155007394.Spec : Prop :=
  ∀ n, (P728319353155007394.a n : ℤ) = A058764 n

theorem P728319353155007394.correct : P728319353155007394.Spec := by
  intro n
  simp only [A058764, Nat.add_sub_cancel, A058764.P728319353155007394.a, A058764.P7242570610008364563.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A058764

/-! ## A058764.P2850944125136230240

`C(2, n²)/2+3*2^(n-1)`
-/

namespace A058764.P2850944125136230240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n ^ 2) : ℚ) / 2 + 3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A058764.P2850944125136230240

namespace A058764

/-- `C(2, n²)/2+3*2^(n-1)` -/
def P2850944125136230240.Spec : Prop :=
  ∀ n, P2850944125136230240.a n = (A058764 n : ℚ)

end A058764

/-! ## A058764.P16501022345784854451

`3%a(n-2)-(3-a(n-1)-a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A058764.P16501022345784854451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  Int.tmod 3 (a (n - 2)) - (3 - a (n - 1) - a (n - 1))

end

end A058764.P16501022345784854451

namespace A058764

/-- `3%a(n-2)-(3-a(n-1)-a(n-1))` -/
def P16501022345784854451.Spec : Prop :=
  ∀ n, P16501022345784854451.a n = A058764 n

end A058764

/-! ## A058764.P13353835734848661072

`A290114(n)+1`
-/

namespace A058764.P13353835734848661072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 n + 1

end

end A058764.P13353835734848661072

namespace A058764

/-- `A290114(n)+1` -/
def P13353835734848661072.Spec : Prop :=
  ∀ n, P13353835734848661072.a n = A058764 n

end A058764

/-! ## A058764.P8988003076471024855

`A087009(n+2)`
-/

namespace A058764.P8988003076471024855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087009 (n + 2)

end

end A058764.P8988003076471024855

namespace A058764

/-- `A087009(n+2)` -/
def P8988003076471024855.Spec : Prop :=
  ∀ n, P8988003076471024855.a n = A058764 n

end A058764

/-! ## A058764.P15206014195764318804

`abs(2*A110164(n))`
-/

namespace A058764.P15206014195764318804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A110164 n|

end

end A058764.P15206014195764318804

namespace A058764

/-- `abs(2*A110164(n))` -/
def P15206014195764318804.Spec : Prop :=
  ∀ n, P15206014195764318804.a n = A058764 n

end A058764

/-! ## A058764.P15420458062575734427

`∑[2*A122391(n)]`
-/

namespace A058764.P15420458062575734427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058764.P15420458062575734427

namespace A058764

/-- `∑[2*A122391(n)]` -/
def P15420458062575734427.Spec : Prop :=
  ∀ n, P15420458062575734427.a n = A058764 n

end A058764

/-! ## A058764.P9108056005730089115

`A042950(n)+char[1]`
-/

namespace A058764.P9108056005730089115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A058764.P9108056005730089115

namespace A058764

/-- `A042950(n)+char[1]` -/
def P9108056005730089115.Spec : Prop :=
  ∀ n, P9108056005730089115.a n = A058764 n

end A058764

/-! ## A058764.P17478503347616838239

`or(1, A055010(n))+1`
-/

namespace A058764.P17478503347616838239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055010 n) + 1

end

end A058764.P17478503347616838239

namespace A058764

/-- `or(1, A055010(n))+1` -/
def P17478503347616838239.Spec : Prop :=
  ∀ n, P17478503347616838239.a n = A058764 n

end A058764

/-! ## A058764.P1034210146176825682

`or(1, A083329(n))+1`
-/

namespace A058764.P1034210146176825682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A083329 n) + 1

end

end A058764.P1034210146176825682

namespace A058764

/-- `or(1, A083329(n))+1` -/
def P1034210146176825682.Spec : Prop :=
  ∀ n, P1034210146176825682.a n = A058764 n

end A058764

/-! ## A058764.P6214872153530932765

`or(1, A369491(n))+1`
-/

namespace A058764.P6214872153530932765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A369491 n) + 1

end

end A058764.P6214872153530932765

namespace A058764

/-- `or(1, A369491(n))+1` -/
def P6214872153530932765.Spec : Prop :=
  ∀ n, P6214872153530932765.a n = A058764 n

end A058764

/-! ## A058764.P5562208855079496610

`abs(∑[2*A279634(n)])`
-/

namespace A058764.P5562208855079496610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A279634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A058764.P5562208855079496610

namespace A058764

/-- `abs(∑[2*A279634(n)])` -/
def P5562208855079496610.Spec : Prop :=
  ∀ n, P5562208855079496610.a n = A058764 n

end A058764

/-! ## A058764.P6364926730730320772

`or(1, A103204(n+1))-1`
-/

namespace A058764.P6364926730730320772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A103204 (n + 1)) - 1

end

end A058764.P6364926730730320772

namespace A058764

/-- `or(1, A103204(n+1))-1` -/
def P6364926730730320772.Spec : Prop :=
  ∀ n, P6364926730730320772.a n = A058764 n

end A058764

/-! ## A058764.P9529542179200094955

`or(1, A266550(n+2))+1`
-/

namespace A058764.P9529542179200094955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A266550 (n + 2)) + 1

end

end A058764.P9529542179200094955

namespace A058764

/-- `or(1, A266550(n+2))+1` -/
def P9529542179200094955.Spec : Prop :=
  ∀ n, P9529542179200094955.a n = A058764 n

end A058764

/-! ## A058764.P14867352906328539930

`A090129(n+1)+2^n`
-/

namespace A058764.P14867352906328539930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090129 (n + 1) + (2 ^ n : ℤ)

end

end A058764.P14867352906328539930

namespace A058764

/-- `A090129(n+1)+2^n` -/
def P14867352906328539930.Spec : Prop :=
  ∀ n, P14867352906328539930.a n = A058764 n

end A058764

/-! ## A058764.P1290770125162197958

`and((or(1, -2^n)-1)/2, A293314(n))`
-/

namespace A058764.P1290770125162197958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((Int.lor 1 (-(2 ^ n : ℤ)) - 1 : ℚ) / 2)) (A293314 n)

end

end A058764.P1290770125162197958

namespace A058764

/-- `and((or(1, -2^n)-1)/2, A293314(n))` -/
def P1290770125162197958.Spec : Prop :=
  ∀ n, P1290770125162197958.a n = A058764 n

end A058764

/-!
# A058765: Primes of the form 3^k - 2^k.

The programs for A058765, there is no canonical definition to state claims against.
-/

/-! ## A058765.P12739324851172093930

`A001047(A057468(n+1))`
-/

namespace A058765.P12739324851172093930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (A057468 (n + 1)).toNat

end

end A058765.P12739324851172093930

/-! ## A058765.P3782992611699825498

`record[A089082(n+2)]`
-/

namespace A058765.P3782992611699825498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089082 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058765.P3782992611699825498

/-!
# A058766: a(0) = 1, a(1) = 2; for n>=2 a(n) is the number of degree-n reducible polynomials over GF(2).

The programs for A058766, the canonical program `A058766.P4843056571337141709` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058766 has offset 0).

The definition of A058766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058766.P4843056571337141709

`abs(or(-2^n, A001037(n)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A058766

/-- `abs(or(-2^n, A001037(n)))` -/
def P4843056571337141709.Spec : Prop :=
  ∀ n, P4843056571337141709.a n = A058766 n

theorem P4843056571337141709.correct : P4843056571337141709.Spec := by
  intro n
  simp only [A058766]

end A058766

/-! ## A058766.P18112260663298928981

`-or(-A000079(n), A001037(n))`
-/

namespace A058766.P18112260663298928981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-A000079 n) (A001037 n)

end

end A058766.P18112260663298928981

namespace A058766

/-- `-or(-A000079(n), A001037(n))` -/
def P18112260663298928981.Spec : Prop :=
  ∀ n, P18112260663298928981.a n = A058766 n

end A058766

/-! ## A058766.P17111870412095414686

`2*A090129(n+1)-A001037(n)`
-/

namespace A058766.P17111870412095414686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090129 (n + 1) - A001037 n

end

end A058766.P17111870412095414686

namespace A058766

/-- `2*A090129(n+1)-A001037(n)` -/
def P17111870412095414686.Spec : Prop :=
  ∀ n, P17111870412095414686.a n = A058766 n

end A058766

/-! ## A058766.P13846098001655815117

`2^n-A001037(n)%A000031(n)`
-/

namespace A058766.P13846098001655815117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - Int.tmod (A001037 n) (A000031 n)

end

end A058766.P13846098001655815117

namespace A058766

/-- `2^n-A001037(n)%A000031(n)` -/
def P13846098001655815117.Spec : Prop :=
  ∀ n, P13846098001655815117.a n = A058766 n

end A058766

/-! ## A058766.P4421049820824947362

`or(-2^n, A001037(n))*A008683(A213521(n+1))`
-/

namespace A058766.P4421049820824947362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-(2 ^ n : ℤ)) (A001037 n) * A008683 (A213521 (n + 1)).toNat

end

end A058766.P4421049820824947362

namespace A058766

/-- `or(-2^n, A001037(n))*A008683(A213521(n+1))` -/
def P4421049820824947362.Spec : Prop :=
  ∀ n, P4421049820824947362.a n = A058766 n

end A058766

/-!
# A058767: Numbers k such that k*2^(k/2) + 1 is prime.

The programs for A058767, there is no canonical definition to state claims against.
-/

/-! ## A058767.P12963558047330883793

`2*(A128001(n+1)-1)`
-/

namespace A058767.P12963558047330883793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A128001 (n + 1) - 1)

end

end A058767.P12963558047330883793

/-! ## A058767.P12974656855900909377

`2*(A119529(n+1)-2)`
-/

namespace A058767.P12974656855900909377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A119529 (n + 1) - 2)

end

end A058767.P12974656855900909377

/-! ## A058767.P13788765533246085213

`A119529(n+1)+A128001(n+1)-3`
-/

namespace A058767.P13788765533246085213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119529 (n + 1) + (A128001 (n + 1) - 3)

end

end A058767.P13788765533246085213

/-! ## A058767.P6837865916284135679

`or(A128001(n+1)-1, A151933(n))+A128001(n+1)-1`
-/

namespace A058767.P6837865916284135679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A128001 (n + 1) - 1) (A151933 n) + (A128001 (n + 1) - 1)

end

end A058767.P6837865916284135679

/-! ## A058767.P7020352158344109237

`(A119529(n+1)-2)%A036290(n+1)+A119529(n+1)-2`
-/

namespace A058767.P7020352158344109237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119529 (n + 1) - 2) (A036290 (n + 1)) + (A119529 (n + 1) - 2)

end

end A058767.P7020352158344109237

/-!
# A058768: McKay-Thompson series of class 94A for the Monster group.

The programs for A058768, there is no canonical definition to state claims against.
-/

/-! ## A058768.P13936424354992369672

`Δ[A046676(n+4)]%A319323(n+1)`
-/

namespace A058768.P13936424354992369672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A319323 (n + 1))

end

end A058768.P13936424354992369672

/-! ## A058768.P1257038946286080999

`A007318(A111332(n))*Δ[A046676(n+4)]`
-/

namespace A058768.P1257038946286080999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A111332 n).toNat * (f1 (n + 1) - f1 n)

end

end A058768.P1257038946286080999

/-! ## A058768.P5761750442602539905

`A001222(A067573(n+1))*Δ[A046676(n+4)]`
-/

namespace A058768.P5761750442602539905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A067573 (n + 1)).toNat * (f1 (n + 1) - f1 n)

end

end A058768.P5761750442602539905

/-! ## A058768.P1362092876864781532

`Δ[A003114(n+3)%A077775(n+1)]`
-/

namespace A058768.P1362092876864781532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003114 (n + 3)) (A077775 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058768.P1362092876864781532

/-! ## A058768.P15271787442187063248

`Δ[A003114(n+3)]%A165237(2*n+3)`
-/

namespace A058768.P15271787442187063248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A165237 (2 * n + 3))

end

end A058768.P15271787442187063248

/-!
# A058769: McKay-Thompson series of class 95A for Monster.

The programs for A058769, there is no canonical definition to state claims against.
-/

/-! ## A058769.P10159327766030605632

`A008616(lt[A318408(n), 2])`
-/

namespace A058769.P10159327766030605632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318408 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A058769.P10159327766030605632

/-! ## A058769.P7848087587271409159

`A008616(A061985(n)%A117537(n))`
-/

namespace A058769.P7848087587271409159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.tmod (A061985 n) (A117537 n)).toNat

end

end A058769.P7848087587271409159

/-! ## A058769.P12609166558097069359

`A008616(∑[A151838(n)]*A061985(n))`
-/

namespace A058769.P12609166558097069359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 ((∑ j ∈ Finset.range (n + 1), f1 j) * A061985 n).toNat

end

end A058769.P12609166558097069359

/-! ## A058769.P11323480747680717644

`A008616(A061985(n)^∑[A151838(n)])`
-/

namespace A058769.P11323480747680717644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (SequenceMachineLib.roundAway ((A061985 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A058769.P11323480747680717644

/-!
# A058773: McKay-Thompson series of class 105A for Monster.

The programs for A058773, there is no canonical definition to state claims against.
-/

/-! ## A058773.P16657662714386173364

`A025917(eq[A025926(n), A236862(n)])`
-/

namespace A058773.P16657662714386173364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025917 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A058773.P16657662714386173364

/-! ## A058773.P6265464441159890614

`A025863(eq[A286320(n), A325616(n)])`
-/

namespace A058773.P6265464441159890614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025863 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A058773.P6265464441159890614

/-!
# A058774: McKay-Thompson series of class 110A for Monster.

The programs for A058774, there is no canonical definition to state claims against.
-/

/-! ## A058774.P17975056011394957008

`A103221(n)-A286490(A026790(n))`
-/

namespace A058774.P17975056011394957008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n - A286490 (A026790 n).toNat

end

end A058774.P17975056011394957008

/-! ## A058774.P9203959096256705856

`A025889(eq[A328966(n+2), A333381(2*n+1)])`
-/

namespace A058774.P9203959096256705856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328966 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025889 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A058774.P9203959096256705856

/-! ## A058774.P10414749363262721600

`A064692(n)+A064692(A117976(n))`
-/

namespace A058774.P10414749363262721600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n + A064692 (A117976 n).toNat

end

end A058774.P10414749363262721600

/-! ## A058774.P10536403322202590921

`A007949(lcm(A229153(n+1), A330684(n+1)))`
-/

namespace A058774.P10536403322202590921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (Int.lcm (A229153 (n + 1)) (A330684 (n + 1)))

end

end A058774.P10536403322202590921

/-!
# A058777: Numbers n such that n^2*2^n + n*2^((n + 1)/2) + 1 is prime.

The programs for A058777, there is no canonical definition to state claims against.
-/

/-! ## A058777.P11250439978971725331

`A324695(A196415(2*n+5)-12)`
-/

namespace A058777.P11250439978971725331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324695 (A196415 (2 * n + 5) - 12).toNat

end

end A058777.P11250439978971725331

/-!
# A058779: Even numbers n such that n^2*2^n + 1 is prime.

The programs for A058779, there is no canonical definition to state claims against.
-/

/-! ## A058779.P8478297194107492001

`∩[2*n, A058780(n+1)]`
-/

namespace A058779.P8478297194107492001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058779.P8478297194107492001

/-! ## A058779.P4726626663775469725

`∩[2*n, A237759(n+1)]`
-/

namespace A058779.P4726626663775469725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058779.P4726626663775469725

/-! ## A058779.P6309043379385151253

`∩[A058780(n+1), A119432(n+1)]`
-/

namespace A058779.P6309043379385151253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058779.P6309043379385151253

/-! ## A058779.P1002952291772107023

`∩[A058780(n+1), A336066(n+1)]`
-/

namespace A058779.P1002952291772107023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058779.P1002952291772107023

/-!
# A058783: Number of n-rowed binary matrices with all row sums 4, up to row and column permutation; bipartite graphs with all nodes of degree 4 in a distinguished bipartite n-block, up to isomorphism.

The programs for A058783, there is no canonical definition to state claims against.
-/

/-! ## A058783.P8626577374276820514

`A331461(A155212(n)+12)`
-/

namespace A058783.P8626577374276820514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (A155212 n + 12).toNat

end

end A058783.P8626577374276820514

/-! ## A058783.P4723068825111098692

`A331461(A056000(n)+14)`
-/

namespace A058783.P4723068825111098692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (A056000 n + 14).toNat

end

end A058783.P4723068825111098692

/-! ## A058783.P15626955265471484395

`A331461(eq[3, A141169(n)])`
-/

namespace A058783.P15626955265471484395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058783.P15626955265471484395

/-! ## A058783.P14713346715464781918

`A331461(eq[4, A002262(n)])`
-/

namespace A058783.P14713346715464781918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058783.P14713346715464781918

/-! ## A058783.P15161516527904409593

`A331461(A167499(n+3)-1)`
-/

namespace A058783.P15161516527904409593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (A167499 (n + 3) - 1).toNat

end

end A058783.P15161516527904409593

/-!
# A058784: Number of n-rowed binary matrices with all row sums 5, up to row and column permutation; bipartite graphs with all nodes of degree 5 in a distinguished bipartite n-block, up to isomorphism.

The programs for A058784, there is no canonical definition to state claims against.
-/

/-! ## A058784.P16928950241277040470

`A331461(eq[5, A002262(n)])`
-/

namespace A058784.P16928950241277040470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058784.P16928950241277040470

/-! ## A058784.P17825239263374871831

`A331461(eq[5, A141169(n)])`
-/

namespace A058784.P17825239263374871831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058784.P17825239263374871831

/-! ## A058784.P6698554904366792058

`A331461(eq[6, A002260(n+1)])`
-/

namespace A058784.P6698554904366792058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058784.P6698554904366792058

/-! ## A058784.P7442964118587386640

`A331461(eq[11, A158405(n+1)])`
-/

namespace A058784.P7442964118587386640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058784.P7442964118587386640

/-! ## A058784.P11109109325197245735

`A331461(eq[6, A193592(n)]-2*(n+1))`
-/

namespace A058784.P11109109325197245735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * (n + 1))

end

end A058784.P11109109325197245735

/-!
# A058785: Number of n-rowed binary matrices with all row sums 6, up to row and column permutation; bipartite graphs with all nodes of degree 6 in a distinguished bipartite n-block, up to isomorphism.

The programs for A058785, there is no canonical definition to state claims against.
-/

/-! ## A058785.P3874629941181248489

`A331461(eq[6, A002262(n)])`
-/

namespace A058785.P3874629941181248489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058785.P3874629941181248489

/-! ## A058785.P9336425119943214077

`A331461(eq[8, A141169(n)])`
-/

namespace A058785.P9336425119943214077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058785.P9336425119943214077

/-! ## A058785.P5961320267493968170

`A331461(eq[64, A059268(n)])`
-/

namespace A058785.P5961320267493968170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058785.P5961320267493968170

/-! ## A058785.P5148362385975830042

`A331461(eq[7, A002260(n+1)])`
-/

namespace A058785.P5148362385975830042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058785.P5148362385975830042

/-! ## A058785.P12380000429505863217

`A331461(eq[13, A158405(n+1)])`
-/

namespace A058785.P12380000429505863217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058785.P12380000429505863217

/-!
# A058786: Number of n-hedra with 2n-5 vertices or 3n-7 edges (the vertices of these are all of degree 3, except one which is of degree 4). Alternatively, the number of polyhedra with n vertices whose faces are all triangular, except one which is tetragonal.

The programs for A058786, there is no canonical definition to state claims against.
-/

/-! ## A058786.P6969664960739807263

`A342053(∑[n+2])`
-/

namespace A058786.P6969664960739807263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058786.P6969664960739807263

/-! ## A058786.P7352728221756882767

`record[A342053(n+1)/A342088(n+2)]`
-/

namespace A058786.P7352728221756882767
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342053 (n + 1) : ℚ) / (A342088 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058786.P7352728221756882767

/-! ## A058786.P376271977718488905

`record[gcd(A341856(n+2), A342053(n+1))]`
-/

namespace A058786.P376271977718488905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A341856 (n + 2)) (A342053 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058786.P376271977718488905

/-! ## A058786.P557449380422287171

`record[A342053(A286109(A008619(n)))]`
-/

namespace A058786.P557449380422287171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (A286109 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058786.P557449380422287171

/-! ## A058786.P5128218507775392675

`record[A342053(A286109(A100637(n)))]`
-/

namespace A058786.P5128218507775392675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (A286109 (A100637 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058786.P5128218507775392675

/-!
# A058787: Triangle T(n,k) = number of polyhedra (triconnected planar graphs) with n faces and k vertices, where (n/2+2) <= k <= (2n+8).

The programs for A058787, there is no canonical definition to state claims against.
-/

/-! ## A058787.P15440863018209824098

`A212438(eq[9, dr(9*A212438(n+4))]+4)`
-/

namespace A058787.P15440863018209824098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (9 * A212438 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212438 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 4)

end

end A058787.P15440863018209824098

/-! ## A058787.P247304463014522727

`A212438(comp[n-(n+1)*A212438(n+4)]+4)`
-/

namespace A058787.P247304463014522727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n + 1 : ℤ) * A212438 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212438 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 4)

end

end A058787.P247304463014522727

/-! ## A058787.P9224505630498348005

`filter[A212438(n+4), A022932(#)]`
-/

namespace A058787.P9224505630498348005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212438 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A058787.P9224505630498348005

/-! ## A058787.P9076474824284568217

`filter[A212438(n+4), A165191(#)]`
-/

namespace A058787.P9076474824284568217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212438 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165191 (f1 j).toNat = 1) n)

end

end A058787.P9076474824284568217

/-!
# A058789: Number of polyhedra with n faces and n+1 vertices (or n vertices and n+1 faces).

The programs for A058789, there is no canonical definition to state claims against.
-/

/-! ## A058789.P4635857653959427953

`A212438(n²+5+n)`
-/

namespace A058789.P4635857653959427953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212438 (n ^ 2 + 5 + n)

end

end A058789.P4635857653959427953

/-! ## A058789.P2903073190788484673

`and(-1, A212438(A027690(n)))`
-/

namespace A058789.P2903073190788484673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A212438 (A027690 n).toNat)

end

end A058789.P2903073190788484673

/-! ## A058789.P12067168265473971865

`record[A212438(2*n+5)/A039755(n)]`
-/

namespace A058789.P12067168265473971865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212438 (2 * n + 5) : ℚ) / (A039755 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058789.P12067168265473971865

/-! ## A058789.P1982278536721067107

`record[A212438(2*n+5)/A144303(n)]`
-/

namespace A058789.P1982278536721067107
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212438 (2 * n + 5) : ℚ) / (A144303 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058789.P1982278536721067107

/-! ## A058789.P12294694361005845378

`record[A212438(2*n+5)/A219347(n)]`
-/

namespace A058789.P12294694361005845378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212438 (2 * n + 5) : ℚ) / (A219347 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058789.P12294694361005845378

/-!
# A058790: Number of covers of an unlabeled n-set such that every point of the set is covered by exactly 3 subsets of the cover and that intersection of every 3 subsets of the cover contains at most one point.

The programs for A058790, there is no canonical definition to state claims against.
-/

/-! ## A058790.P10508092953738565779

`A331508(C(n+5, 2)+3)`
-/

namespace A058790.P10508092953738565779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (Nat.choose (n + 5) 2 + 3)

end

end A058790.P10508092953738565779

/-! ## A058790.P14147991938096721722

`record[A331508(∑[n+1]+3)]`
-/

namespace A058790.P14147991938096721722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058790.P14147991938096721722

/-! ## A058790.P17633377551872484812

`A331508(A167614(n+3))`
-/

namespace A058790.P17633377551872484812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (A167614 (n + 3)).toNat

end

end A058790.P17633377551872484812

/-! ## A058790.P2202244052521323375

`A331508(A016028(n+7))`
-/

namespace A058790.P2202244052521323375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (A016028 (n + 7)).toNat

end

end A058790.P2202244052521323375

/-! ## A058790.P17681784042313247114

`A331508(A000217(n+4)+3)`
-/

namespace A058790.P17681784042313247114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (A000217 (n + 4) + 3).toNat

end

end A058790.P17681784042313247114

/-!
# A058791: Number of covers of an unlabeled n-set such that every point of the set is covered by exactly 4 subsets of the cover and that intersection of every 4 subsets of the cover contains at most one point.

The programs for A058791, there is no canonical definition to state claims against.
-/

/-! ## A058791.P7500587527826415962

`A331508(A145018(n+6))`
-/

namespace A058791.P7500587527826415962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (A145018 (n + 6)).toNat

end

end A058791.P7500587527826415962

/-! ## A058791.P10385909101526015428

`A331508(eq[5, A128227(n)])`
-/

namespace A058791.P10385909101526015428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058791.P10385909101526015428

/-! ## A058791.P2192473867079159291

`record[A331508(A077169(n)-1)]`
-/

namespace A058791.P2192473867079159291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (A077169 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058791.P2192473867079159291

/-! ## A058791.P13803616767512163319

`A331508(A167487(n+4)-3)`
-/

namespace A058791.P13803616767512163319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (A167487 (n + 4) - 3).toNat

end

end A058791.P13803616767512163319

/-! ## A058791.P7237838232994660853

`record[A331508(A167614(n+1)+1)]`
-/

namespace A058791.P7237838232994660853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (A167614 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058791.P7237838232994660853

/-!
# A058792: Number of covers of an unlabeled n-set such that every point of the set is covered by exactly 5 subsets of the cover and that intersection of every 5 subsets of the cover contains at most one point.

The programs for A058792, there is no canonical definition to state claims against.
-/

/-! ## A058792.P13003724490053471140

`record[A331508(A077169(n))]`
-/

namespace A058792.P13003724490053471140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (A077169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058792.P13003724490053471140

/-! ## A058792.P7276546555062719499

`A331508(A167499(n+5))`
-/

namespace A058792.P7276546555062719499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (A167499 (n + 5)).toNat

end

end A058792.P7276546555062719499

/-! ## A058792.P6581798707460415440

`record[A331508(A167614(n+1)+2)]`
-/

namespace A058792.P6581798707460415440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (A167614 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058792.P6581798707460415440

/-!
# A058793: Number of covers of an unlabeled n-set such that every point of the set is covered by exactly 6 subsets of the cover and that intersection of every 6 subsets of the cover contains at most one point.

The programs for A058793, there is no canonical definition to state claims against.
-/

/-! ## A058793.P11635500859649309905

`A331508(A166136(n+6))`
-/

namespace A058793.P11635500859649309905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (A166136 (n + 6)).toNat

end

end A058793.P11635500859649309905

/-!
# A058794: Row 3 of A007754.

The programs for A058794, the canonical program `A058794.P11529139745090401027` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058794 has offset 0).

The definition of A058794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058794.P11529139745090401027

`(n+2)*(n²+4*n+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058794

/-- `(n+2)*(n²+4*n+1)` -/
def P11529139745090401027.Spec : Prop :=
  ∀ n, (P11529139745090401027.a n : ℤ) = A058794 n

theorem P11529139745090401027.correct : P11529139745090401027.Spec := by
  intro n
  simp only [A058794]

end A058794

/-! ## A058794.P11395815302806570514

`record[n*n*(n-3)+2]`
-/

namespace A058794.P11395815302806570514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * ((n : ℤ) - 3)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058794.P11395815302806570514

namespace A058794

/-- `record[n*n*(n-3)+2]` -/
def P11395815302806570514.Spec : Prop :=
  ∀ n, P11395815302806570514.a n = A058794 n

end A058794

/-! ## A058794.P10872522835049080673

`lcm(2, (n+3)*n*(n+3)+2)`
-/

namespace A058794.P10872522835049080673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n + 3) * (n * (n + 3)) + 2)

end

end A058794.P10872522835049080673

namespace A058794

/-- `lcm(2, (n+3)*n*(n+3)+2)` -/
def P10872522835049080673.Spec : Prop :=
  ∀ n, (P10872522835049080673.a n : ℤ) = A058794 n

end A058794

/-! ## A058794.P1506740572520474626

`A212836(n+1)+n`
-/

namespace A058794.P1506740572520474626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212836 (n + 1) + (n : ℤ)

end

end A058794.P1506740572520474626

namespace A058794

/-- `A212836(n+1)+n` -/
def P1506740572520474626.Spec : Prop :=
  ∀ n, P1506740572520474626.a n = A058794 n

end A058794

/-! ## A058794.P10197091048633133769

`A370912(n)+2+n`
-/

namespace A058794.P10197091048633133769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370912 n + 2 + (n : ℤ)

end

end A058794.P10197091048633133769

namespace A058794

/-- `A370912(n)+2+n` -/
def P10197091048633133769.Spec : Prop :=
  ∀ n, P10197091048633133769.a n = A058794 n

theorem P10197091048633133769.correct : P10197091048633133769.Spec := by
  intro n
  simp only [A058794, Nat.add_sub_cancel, A058794.P10197091048633133769.a, A058794.P11529139745090401027.a, A370912, A370912.P13249200892205574452.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058794

/-! ## A058794.P948534157570637247

`Δ[2*C(A000096(n), 2)]`
-/

namespace A058794.P948534157570637247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A000096 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A058794.P948534157570637247

namespace A058794

/-- `Δ[2*C(A000096(n), 2)]` -/
def P948534157570637247.Spec : Prop :=
  ∀ n, P948534157570637247.a n = A058794 n

end A058794

/-! ## A058794.P17220385449103040985

`A229013(n+1)+3*n`
-/

namespace A058794.P17220385449103040985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229013 (n + 1) + (3 * n : ℤ)

end

end A058794.P17220385449103040985

namespace A058794

/-- `A229013(n+1)+3*n` -/
def P17220385449103040985.Spec : Prop :=
  ∀ n, P17220385449103040985.a n = A058794 n

theorem P17220385449103040985.correct : P17220385449103040985.Spec := by
  intro n
  simp only [A058794, Nat.add_sub_cancel, A058794.P17220385449103040985.a, A058794.P11529139745090401027.a, A229013, A229013.P14030391387298666303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058794

/-! ## A058794.P7787915701255938382

`A303609(n)-a(n-1)` with `a(0)=2`
-/

namespace A058794.P7787915701255938382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A303609 n - a (n - 1)

end

end A058794.P7787915701255938382

namespace A058794

/-- `A303609(n)-a(n-1)` -/
def P7787915701255938382.Spec : Prop :=
  ∀ n, P7787915701255938382.a n = A058794 n

end A058794

/-! ## A058794.P6659517853914759944

`floor(sinh(log(A086113(n+1)))+n)`
-/

namespace A058794.P6659517853914759944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A086113 (n + 1) : ℝ)) + (n : ℝ)⌋

end

end A058794.P6659517853914759944

namespace A058794

/-- `floor(sinh(log(A086113(n+1)))+n)` -/
def P6659517853914759944.Spec : Prop :=
  ∀ n, P6659517853914759944.a n = A058794 n

end A058794

/-! ## A058794.P4308036680371158718

`A192398(n+1)/(n+1)+1`
-/

namespace A058794.P4308036680371158718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192398 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A058794.P4308036680371158718

namespace A058794

/-- `A192398(n+1)/(n+1)+1` -/
def P4308036680371158718.Spec : Prop :=
  ∀ n, P4308036680371158718.a n = (A058794 n : ℚ)

theorem P4308036680371158718.correct : P4308036680371158718.Spec := by
  intro n
  simp only [A058794, Nat.add_sub_cancel, A058794.P4308036680371158718.a, A058794.P11529139745090401027.a, A192398, A192398.P6980991501491217048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058794

/-! ## A058794.P7137079348765117566

`(n+1)*A028552(n+1)-2`
-/

namespace A058794.P7137079348765117566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028552 (n + 1) - 2

end

end A058794.P7137079348765117566

namespace A058794

/-- `(n+1)*A028552(n+1)-2` -/
def P7137079348765117566.Spec : Prop :=
  ∀ n, P7137079348765117566.a n = A058794 n

theorem P7137079348765117566.correct : P7137079348765117566.Spec := by
  intro n
  simp only [A058794, Nat.add_sub_cancel, A058794.P7137079348765117566.a, A058794.P11529139745090401027.a, A028552, A028552.P13982725828206412774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058794

/-! ## A058794.P5103845540326034083

`3*A077415(n+2)+n+2`
-/

namespace A058794.P5103845540326034083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A077415 (n + 2) + (n + 2 : ℤ)

end

end A058794.P5103845540326034083

namespace A058794

/-- `3*A077415(n+2)+n+2` -/
def P5103845540326034083.Spec : Prop :=
  ∀ n, P5103845540326034083.a n = A058794 n

end A058794

/-! ## A058794.P9217242969610271248

`A090197(n)+A016777(n)`
-/

namespace A058794.P9217242969610271248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090197 n + A016777 n

end

end A058794.P9217242969610271248

namespace A058794

/-- `A090197(n)+A016777(n)` -/
def P9217242969610271248.Spec : Prop :=
  ∀ n, P9217242969610271248.a n = A058794 n

theorem P9217242969610271248.correct : P9217242969610271248.Spec := by
  intro n
  simp only [A058794, Nat.add_sub_cancel, A058794.P9217242969610271248.a, A058794.P11529139745090401027.a, A016777, A016777.P9931792138852554157.a, A090197, A090197.P16054348597824220922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058794

/-! ## A058794.P1307566952063744169

`A081435(n)+A081271(n)`
-/

namespace A058794.P1307566952063744169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081435 n + A081271 n

end

end A058794.P1307566952063744169

namespace A058794

/-- `A081435(n)+A081271(n)` -/
def P1307566952063744169.Spec : Prop :=
  ∀ n, P1307566952063744169.a n = A058794 n

end A058794

/-! ## A058794.P15111062020681162820

`A140676(n)+A094792(n)`
-/

namespace A058794.P15111062020681162820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140676 n + A094792 n

end

end A058794.P15111062020681162820

namespace A058794

/-- `A140676(n)+A094792(n)` -/
def P15111062020681162820.Spec : Prop :=
  ∀ n, P15111062020681162820.a n = A058794 n

theorem P15111062020681162820.correct : P15111062020681162820.Spec := by
  intro n
  simp only [A058794, Nat.add_sub_cancel, A058794.P15111062020681162820.a, A058794.P11529139745090401027.a, A094792, A094792.P13284551861407983223.a, A140676, A140676.P3650156373276300927.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058794

/-! ## A058794.P16775910850503277029

`A147656(n)+A145910(n)`
-/

namespace A058794.P16775910850503277029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147656 n + A145910 n

end

end A058794.P16775910850503277029

namespace A058794

/-- `A147656(n)+A145910(n)` -/
def P16775910850503277029.Spec : Prop :=
  ∀ n, P16775910850503277029.a n = A058794 n

end A058794

/-! ## A058794.P6815709664850272857

`A239325(n)+A071568(n)`
-/

namespace A058794.P6815709664850272857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239325 n + A071568 n

end

end A058794.P6815709664850272857

namespace A058794

/-- `A239325(n)+A071568(n)` -/
def P6815709664850272857.Spec : Prop :=
  ∀ n, P6815709664850272857.a n = A058794 n

theorem P6815709664850272857.correct : P6815709664850272857.Spec := by
  intro n
  simp only [A058794, Nat.add_sub_cancel, A058794.P6815709664850272857.a, A058794.P11529139745090401027.a, A071568, A071568.P7566850844924228464.a, A239325, A239325.P6773887657320007265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058794

/-! ## A058794.P7886060586033362317

`A172044(n)+A168297(n)`
-/

namespace A058794.P7886060586033362317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172044 n + A168297 n

end

end A058794.P7886060586033362317

namespace A058794

/-- `A172044(n)+A168297(n)` -/
def P7886060586033362317.Spec : Prop :=
  ∀ n, P7886060586033362317.a n = A058794 n

theorem P7886060586033362317.correct : P7886060586033362317.Spec := by
  intro n
  simp only [A058794, Nat.add_sub_cancel, A058794.P7886060586033362317.a, A058794.P11529139745090401027.a, A168297, A168297.P10015316482910448573.a, A172044, A172044.P1657044642303172272.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058794

/-! ## A058794.P6381159491348664543

`A261893(n)+A082108(n)`
-/

namespace A058794.P6381159491348664543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261893 n + A082108 n

end

end A058794.P6381159491348664543

namespace A058794

/-- `A261893(n)+A082108(n)` -/
def P6381159491348664543.Spec : Prop :=
  ∀ n, P6381159491348664543.a n = A058794 n

theorem P6381159491348664543.correct : P6381159491348664543.Spec := by
  intro n
  simp only [A058794, Nat.add_sub_cancel, A058794.P6381159491348664543.a, A058794.P11529139745090401027.a, A082108, A082108.P8640110216624797441.a, A261893, A261893.P3894214550865537964.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058794

/-! ## A058794.P9148520760413346377

`A241577(n)+A161549(n)`
-/

namespace A058794.P9148520760413346377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241577 n + A161549 n

end

end A058794.P9148520760413346377

namespace A058794

/-- `A241577(n)+A161549(n)` -/
def P9148520760413346377.Spec : Prop :=
  ∀ n, P9148520760413346377.a n = A058794 n

theorem P9148520760413346377.correct : P9148520760413346377.Spec := by
  intro n
  simp only [A058794, Nat.add_sub_cancel, A058794.P9148520760413346377.a, A058794.P11529139745090401027.a, A161549, A161549.P10873518887571627308.a, A241577, A241577.P207365115705048416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058794

/-!
# A058795: Row 4 of A007754.

The programs for A058795, the canonical program `A058795.P8488369886878139145` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058795 has offset 0).

The definition of A058795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058795.P8488369886878139145

`n^4+10*n^3+32*n²+35*n+7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058795

/-- `n^4+10*n^3+32*n²+35*n+7` -/
def P8488369886878139145.Spec : Prop :=
  ∀ n, (P8488369886878139145.a n : ℤ) = A058795 n

theorem P8488369886878139145.correct : P8488369886878139145.Spec := by
  intro n
  simp only [A058795]

end A058795

/-! ## A058795.P10194142905253752149

`Δ[A166942(n)-A061600(n+2)]`
-/

namespace A058795.P10194142905253752149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166942 n - A061600 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058795.P10194142905253752149

namespace A058795

/-- `Δ[A166942(n)-A061600(n+2)]` -/
def P10194142905253752149.Spec : Prop :=
  ∀ n, P10194142905253752149.a n = A058795 n

end A058795

/-! ## A058795.P12585597780034182696

`or(1, A082111(n)*A338041(2*(n+2)))`
-/

namespace A058795.P12585597780034182696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A082111 n * A338041 (2 * (n + 2)))

end

end A058795.P12585597780034182696

namespace A058795

/-- `or(1, A082111(n)*A338041(2*(n+2)))` -/
def P12585597780034182696.Spec : Prop :=
  ∀ n, P12585597780034182696.a n = A058795 n

end A058795

/-! ## A058795.P8704282363958253222

`abs(5-A118239(∑[n+2]+1))`
-/

namespace A058795.P8704282363958253222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A118239 (∑ j ∈ Finset.range (n + 1), f1 j + 1)|

end

end A058795.P8704282363958253222

namespace A058795

/-- `abs(5-A118239(∑[n+2]+1))` -/
def P8704282363958253222.Spec : Prop :=
  ∀ n, P8704282363958253222.a n = A058795 n

end A058795

/-! ## A058795.P13736069530449968354

`A082111((n+1)²+3*n)`
-/

namespace A058795.P13736069530449968354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 ((n + 1) ^ 2 + 3 * n)

end

end A058795.P13736069530449968354

namespace A058795

/-- `A082111((n+1)²+3*n)` -/
def P13736069530449968354.Spec : Prop :=
  ∀ n, P13736069530449968354.a n = A058795 n

theorem P13736069530449968354.correct : P13736069530449968354.Spec := by
  intro n
  simp only [A058795, Nat.add_sub_cancel, A058795.P13736069530449968354.a, A058795.P8488369886878139145.a, A082111, A082111.P6693655869700550753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058795

/-! ## A058795.P16755364870082097318

`or(1, A082111(record[1-n*(5-n)]))`
-/

namespace A058795.P16755364870082097318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * (5 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A082111 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A058795.P16755364870082097318

namespace A058795

/-- `or(1, A082111(record[1-n*(5-n)]))` -/
def P16755364870082097318.Spec : Prop :=
  ∀ n, P16755364870082097318.a n = A058795 n

end A058795

/-! ## A058795.P12399788712118847833

`or(1, A082111(abs(5-lcm(n+2, n+3))))`
-/

namespace A058795.P12399788712118847833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A082111 |5 - (Nat.lcm (n + 2) (n + 3) : ℤ)|.toNat)

end

end A058795.P12399788712118847833

namespace A058795

/-- `or(1, A082111(abs(5-lcm(n+2, n+3))))` -/
def P12399788712118847833.Spec : Prop :=
  ∀ n, P12399788712118847833.a n = A058795 n

end A058795

/-! ## A058795.P10105356880659434233

`or(1, A082111(or(1, (n+2)²-3+n)))`
-/

namespace A058795.P10105356880659434233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A082111 (Int.lor 1 (((n + 2) ^ 2 : ℤ) - 3 + (n : ℤ))).toNat)

end

end A058795.P10105356880659434233

namespace A058795

/-- `or(1, A082111(or(1, (n+2)²-3+n)))` -/
def P10105356880659434233.Spec : Prop :=
  ∀ n, P10105356880659434233.a n = A058795 n

end A058795

/-! ## A058795.P11194868341714117825

`or(1, A082111(∑[n+1+3%(n+3)+n]))`
-/

namespace A058795.P11194868341714117825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + (3 % (n + 3) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A082111 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A058795.P11194868341714117825

namespace A058795

/-- `or(1, A082111(∑[n+1+3%(n+3)+n]))` -/
def P11194868341714117825.Spec : Prop :=
  ∀ n, P11194868341714117825.a n = A058795 n

end A058795

/-! ## A058795.P4096338612610694065

`or(1, A028557(A082111(n)))`
-/

namespace A058795.P4096338612610694065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A028557 (A082111 n).toNat)

end

end A058795.P4096338612610694065

namespace A058795

/-- `or(1, A028557(A082111(n)))` -/
def P4096338612610694065.Spec : Prop :=
  ∀ n, P4096338612610694065.a n = A058795 n

end A058795

/-!
# A058796: Row 5 of A007754.

The programs for A058796, the canonical program `A058796.P11772152084257623272` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058796 has offset 0).

The definition of A058796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058796.P11772152084257623272

`(n+3)*(n^4+12*n^3+45*n²+54*n+11)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058796

/-- `(n+3)*(n^4+12*n^3+45*n²+54*n+11)` -/
def P11772152084257623272.Spec : Prop :=
  ∀ n, (P11772152084257623272.a n : ℤ) = A058796 n

theorem P11772152084257623272.correct : P11772152084257623272.Spec := by
  intro n
  simp only [A058796]

end A058796

/-! ## A058796.P12362709601041577275

`A007754(A167499(n+4))`
-/

namespace A058796.P12362709601041577275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007754 (A167499 (n + 4)).toNat

end

end A058796.P12362709601041577275

namespace A058796

/-- `A007754(A167499(n+4))` -/
def P12362709601041577275.Spec : Prop :=
  ∀ n, P12362709601041577275.a n = A058796 n

end A058796

/-! ## A058796.P12285177291229896897

`A007754(eq[5, A002262(n)])`
-/

namespace A058796.P12285177291229896897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058796.P12285177291229896897

namespace A058796

/-- `A007754(eq[5, A002262(n)])` -/
def P12285177291229896897.Spec : Prop :=
  ∀ n, P12285177291229896897.a n = A058796 n

end A058796

/-! ## A058796.P17334513128384279002

`A007754(A000096(n+4)+6)`
-/

namespace A058796.P17334513128384279002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007754 (A000096 (n + 4) + 6).toNat

end

end A058796.P17334513128384279002

namespace A058796

/-- `A007754(A000096(n+4)+6)` -/
def P17334513128384279002.Spec : Prop :=
  ∀ n, P17334513128384279002.a n = A058796 n

end A058796

/-! ## A058796.P5923388689448406931

`A007754(A000217(n+5)+5)`
-/

namespace A058796.P5923388689448406931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007754 (A000217 (n + 5) + 5).toNat

end

end A058796.P5923388689448406931

namespace A058796

/-- `A007754(A000217(n+5)+5)` -/
def P5923388689448406931.Spec : Prop :=
  ∀ n, P5923388689448406931.a n = A058796 n

end A058796

/-! ## A058796.P15275543658059543898

`A007754(eq[6, A002260(n+1)])`
-/

namespace A058796.P15275543658059543898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058796.P15275543658059543898

namespace A058796

/-- `A007754(eq[6, A002260(n+1)])` -/
def P15275543658059543898.Spec : Prop :=
  ∀ n, P15275543658059543898.a n = A058796 n

end A058796

/-! ## A058796.P2344975417003983224

`A007754(A052905(n)+A004273(n+10))`
-/

namespace A058796.P2344975417003983224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007754 (A052905 n + A004273 (n + 10)).toNat

end

end A058796.P2344975417003983224

namespace A058796

/-- `A007754(A052905(n)+A004273(n+10))` -/
def P2344975417003983224.Spec : Prop :=
  ∀ n, P2344975417003983224.a n = A058796 n

end A058796

/-! ## A058796.P17943639305787947191

`A007754(A052905(n+2)+11-A141044(n+2))`
-/

namespace A058796.P17943639305787947191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007754 (A052905 (n + 2) + 11 - A141044 (n + 2)).toNat

end

end A058796.P17943639305787947191

namespace A058796

/-- `A007754(A052905(n+2)+11-A141044(n+2))` -/
def P17943639305787947191.Spec : Prop :=
  ∀ n, P17943639305787947191.a n = A058796 n

end A058796

/-!
# A058797: a(n) = n*a(n-1) - a(n-2), with a(-1) = 0, a(0) = 1.

The programs for A058797, there is no canonical definition to state claims against.
-/

/-! ## A058797.P13136462567663231354

`(n-1)*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A058797.P13136462567663231354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - 1) * a (n - 1) - a (n - 2)

end

end A058797.P13136462567663231354

/-! ## A058797.P17206182818089909181

`a(n-1)/n^(-1)-(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A058797.P17206182818089909181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (a (n - 1) + a (n - 2))

end

end A058797.P17206182818089909181

/-! ## A058797.P4282151483937669577

`a(n-1)/n^(-1)-(a(n-1)-floor(-a(n-2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A058797.P4282151483937669577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (a (n - 1) - (⌊-a (n - 2)⌋ : ℚ))

end

end A058797.P4282151483937669577

/-! ## A058797.P9229733756643224559

`a(n-1)/n^(-1)-(a(n-1)-(char[1]-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A058797.P9229733756643224559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) - a (n - 2)))

end

end A058797.P9229733756643224559

/-! ## A058797.P16770997502576889448

`a(n-1)*A023443(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A058797.P16770997502576889448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * A023443 n - a (n - 2)

end

end A058797.P16770997502576889448

/-! ## A058797.P4355666704412139758

`abs(A056889(A062545(n)))`
-/

namespace A058797.P4355666704412139758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056889 (A062545 n).toNat|

end

end A058797.P4355666704412139758

/-! ## A058797.P9610375097405316580

`abs(A056889(Δ[A005563(n)]))`
-/

namespace A058797.P9610375097405316580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056889 (f1 (n + 1) - f1 n).toNat|

end

end A058797.P9610375097405316580

/-! ## A058797.P11197327894987579648

`abs(A056889(record[A165754(n)]))`
-/

namespace A058797.P11197327894987579648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056889 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A058797.P11197327894987579648

/-! ## A058797.P16256231701441984389

`abs(A056889(A165754(2*n)))`
-/

namespace A058797.P16256231701441984389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056889 (A165754 (2 * n)).toNat|

end

end A058797.P16256231701441984389

/-! ## A058797.P9970301328251787562

`abs(A056889(2*n+1)+Δ[A056889(2*n+1)])`
-/

namespace A058797.P9970301328251787562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056889 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056889 (2 * n + 1) + (f1 (n + 1) - f1 n)|

end

end A058797.P9970301328251787562

/-!
# A058798: a(n) = n*a(n-1) - a(n-2) with a(0) = 0, a(1) = 1.

The programs for A058798, the canonical program `A058798.P5792891251831482344` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058798 has offset 0).

The definition of A058798 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)-a(n-2)` (program `A058798.P5792891251831482344`, by `A058798.P5792891251831482344.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058798.P5792891251831482344

`n*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058798

/-- `n*a(n-1)-a(n-2)` -/
def P5792891251831482344.Spec : Prop :=
  ∀ n, P5792891251831482344.a n = A058798 n

theorem P5792891251831482344.correct : P5792891251831482344.Spec := by
  intro n
  simp only [A058798]

end A058798

/-! ## A058798.P2557867031071159238

`a(n-1)/cot(atan(n))-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A058798.P2557867031071159238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (n : ℝ)) - a (n - 2)

end

end A058798.P2557867031071159238

namespace A058798

/-- `a(n-1)/cot(atan(n))-a(n-2)` -/
def P2557867031071159238.Spec : Prop :=
  ∀ n, P2557867031071159238.a n = (A058798 n : ℝ)

end A058798

/-! ## A058798.P11477102690063829172

`a(n-1)/n^(-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A058798.P11477102690063829172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - a (n - 2)

end

end A058798.P11477102690063829172

namespace A058798

/-- `a(n-1)/n^(-1)-a(n-2)` -/
def P11477102690063829172.Spec : Prop :=
  ∀ n, P11477102690063829172.a n = (A058798 n : ℚ)

end A058798

/-! ## A058798.P10660963464755634396

`record[xor(A007754(n), A055137(n))]`
-/

namespace A058798.P10660963464755634396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007754 n) (A055137 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058798.P10660963464755634396

namespace A058798

/-- `record[xor(A007754(n), A055137(n))]` -/
def P10660963464755634396.Spec : Prop :=
  ∀ n, P10660963464755634396.a n = A058798 n

end A058798

/-! ## A058798.P5576708484480362814

`record[A007754(n)*A055137(n+1)]`
-/

namespace A058798.P5576708484480362814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007754 n * A055137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058798.P5576708484480362814

namespace A058798

/-- `record[A007754(n)*A055137(n+1)]` -/
def P5576708484480362814.Spec : Prop :=
  ∀ n, P5576708484480362814.a n = A058798 n

end A058798

/-! ## A058798.P11899043894995647585

`Δ[A273939(2*n+1)]%A273939(2*n)`
-/

namespace A058798.P11899043894995647585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273939 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A273939 (2 * n))

end

end A058798.P11899043894995647585

namespace A058798

/-- `Δ[A273939(2*n+1)]%A273939(2*n)` -/
def P11899043894995647585.Spec : Prop :=
  ∀ n, P11899043894995647585.a n = A058798 n

end A058798

/-! ## A058798.P12360119691789763096

`A273939(Δ[A027688(n)])%A273939(2*n)`
-/

namespace A058798.P12360119691789763096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273939 (f1 (n + 1) - f1 n).toNat) (A273939 (2 * n))

end

end A058798.P12360119691789763096

namespace A058798

/-- `A273939(Δ[A027688(n)])%A273939(2*n)` -/
def P12360119691789763096.Spec : Prop :=
  ∀ n, P12360119691789763096.a n = A058798 n

end A058798

/-!
# A058799: Column 2 of A007754.

The programs for A058799, the canonical program `A058799.P13786804491141479092` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058799 has offset 0).

The definition of A058799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058799.P13786804491141479092

`(n+2)*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058799

/-- `(n+2)*a(n-1)-a(n-2)` -/
def P13786804491141479092.Spec : Prop :=
  ∀ n, P13786804491141479092.a n = A058799 n

theorem P13786804491141479092.correct : P13786804491141479092.Spec := by
  intro n
  simp only [A058799]

end A058799

/-! ## A058799.P4710109546346460973

`∏[n+2-1/a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A058799.P4710109546346460973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (n + 2 : ℚ) - 1 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058799.P4710109546346460973

namespace A058799

/-- `∏[n+2-1/a(n-1)]` -/
def P4710109546346460973.Spec : Prop :=
  ∀ n, P4710109546346460973.a n = (A058799 n : ℚ)

end A058799

/-! ## A058799.P1085393977277909883

`record[a(n-1)/n^-1-a(n-2)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A058799.P1085393977277909883
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) / (n : ℚ) ^ (-1 : ℤ) - f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058799.P1085393977277909883

namespace A058799

/-- `record[a(n-1)/n^-1-a(n-2)]` -/
def P1085393977277909883.Spec : Prop :=
  ∀ n, P1085393977277909883.a n = (A058799 n : ℚ)

end A058799

/-! ## A058799.P18416074570688798826

`2*a(n-1)-(a(n-2)-n*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A058799.P18416074570688798826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) - (a (n - 2) - (n : ℤ) * a (n - 1))

end

end A058799.P18416074570688798826

namespace A058799

/-- `2*a(n-1)-(a(n-2)-n*a(n-1))` -/
def P18416074570688798826.Spec : Prop :=
  ∀ n, P18416074570688798826.a n = A058799 n

end A058799

/-! ## A058799.P16898881839848726982

`A056922(Δ[n²])`
-/

namespace A058799.P16898881839848726982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056922 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A058799.P16898881839848726982

namespace A058799

/-- `A056922(Δ[n²])` -/
def P16898881839848726982.Spec : Prop :=
  ∀ n, P16898881839848726982.a n = A058799 n

end A058799

/-! ## A058799.P14527558852700757099

`∑[A093935(n+1)]`
-/

namespace A058799.P14527558852700757099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058799.P14527558852700757099

namespace A058799

/-- `∑[A093935(n+1)]` -/
def P14527558852700757099.Spec : Prop :=
  ∀ n, P14527558852700757099.a n = A058799 n

end A058799

/-! ## A058799.P9248855754081834696

`A007754(∑[n+3])`
-/

namespace A058799.P9248855754081834696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007754 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058799.P9248855754081834696

namespace A058799

/-- `A007754(∑[n+3])` -/
def P9248855754081834696.Spec : Prop :=
  ∀ n, P9248855754081834696.a n = A058799 n

end A058799

/-! ## A058799.P15316414000289669674

`∑[A056922(2*n)]`
-/

namespace A058799.P15316414000289669674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056922 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058799.P15316414000289669674

namespace A058799

/-- `∑[A056922(2*n)]` -/
def P15316414000289669674.Spec : Prop :=
  ∀ n, P15316414000289669674.a n = A058799 n

end A058799

/-! ## A058799.P8925757921238235656

`record[abs(A056890(2*n+1))]`
-/

namespace A058799.P8925757921238235656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056890 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058799.P8925757921238235656

namespace A058799

/-- `record[abs(A056890(2*n+1))]` -/
def P8925757921238235656.Spec : Prop :=
  ∀ n, P8925757921238235656.a n = A058799 n

end A058799

/-! ## A058799.P11993855101830049583

`record[A056922(A056944(n+1)-1)]`
-/

namespace A058799.P11993855101830049583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056922 (A056944 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058799.P11993855101830049583

namespace A058799

/-- `record[A056922(A056944(n+1)-1)]` -/
def P11993855101830049583.Spec : Prop :=
  ∀ n, P11993855101830049583.a n = A058799 n

end A058799

