import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A275302: Iterations at which Langton's Ant living on triangular tiling passes through the origin.

The programs for A275302, there is no canonical definition to state claims against.
-/

/-! ## A275302.P14359394737148969957

`A093413(A191108(n+1))-1`
-/

namespace A275302.P14359394737148969957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093413 (A191108 (n + 1)).toNat - 1

end

end A275302.P14359394737148969957

/-! ## A275302.P14703566984138954808

`6*A056239(A018497(n+1))`
-/

namespace A275302.P14703566984138954808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A056239 (A018497 (n + 1)).toNat

end

end A275302.P14703566984138954808

/-! ## A275302.P10506618292046781191

`filter[A282939(3*n), A212412(#)]`
-/

namespace A275302.P10506618292046781191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282939 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212412 (f1 j).toNat = 1) n)

end

end A275302.P10506618292046781191

/-! ## A275302.P15543108643722522741

`A136013(2*n+1)*A211946(A290622(n))`
-/

namespace A275302.P15543108643722522741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136013 (2 * n + 1) * A211946 (A290622 n).toNat

end

end A275302.P15543108643722522741

/-!
# A275303: Iterations at which Langton's Ant living on triangular tiling reaches the distance of n from the origin for the first time.

The programs for A275303, there is no canonical definition to state claims against.
-/

/-! ## A275303.P8213945040129679814

`∑[A275304(n+1)]`
-/

namespace A275303.P8213945040129679814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275303.P8213945040129679814

/-! ## A275303.P4442400150673261690

`A275304(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A275303.P4442400150673261690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A275304 (n + 1) + a (A023443 n).toNat

end

end A275303.P4442400150673261690

/-! ## A275303.P13659471620309474742

`A275304(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A275303.P13659471620309474742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A275304 (n + 1) + a (A028310 n - 1).toNat

end

end A275303.P13659471620309474742

/-! ## A275303.P5982626981313621518

`A275304(n+1)+a(n-1)*A057427(n)` with `a(0)=1`
-/

namespace A275303.P5982626981313621518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A275304 (n + 1) + a (n - 1) * A057427 n

end

end A275303.P5982626981313621518

/-! ## A275303.P10645407412803757741

`A275304(n+1)+a(n-A014963(4*n+2))` with `a(0)=1`
-/

namespace A275303.P10645407412803757741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A275304 (n + 1) + a ((n : ℤ) - A014963 (4 * n + 2)).toNat

end

end A275303.P10645407412803757741

/-!
# A275304: Intervals between iterations at which Langton's Ant living on triangular tiling reaches the distance of n from the origin for the first time.

The programs for A275304, there is no canonical definition to state claims against.
-/

/-! ## A275304.P450464833234693742

`or(1, Δ[A275303(A028310(n))])`
-/

namespace A275304.P450464833234693742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275303 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A275304.P450464833234693742

/-! ## A275304.P11595400348848459159

`A000007(n)+Δ[A275303(A028310(n))]`
-/

namespace A275304.P11595400348848459159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275303 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A275304.P11595400348848459159

/-! ## A275304.P11257289052843150633

`Δ[A275303(A028310(n))+A057427(n)]`
-/

namespace A275304.P11257289052843150633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275303 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275304.P11257289052843150633

/-! ## A275304.P17852942506205366294

`Δ[A275303(A028310(n))%A000712(n)]`
-/

namespace A275304.P17852942506205366294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275303 (A028310 n).toNat) (A000712 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275304.P17852942506205366294

/-! ## A275304.P3143677315286110678

`Δ[A275303(A028310(n))+A036453(n+1)]`
-/

namespace A275304.P3143677315286110678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275303 (A028310 n).toNat + A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275304.P3143677315286110678

/-! ## A275304.P9433225205444298634

`or(1, A275303(n+1)-A275303(A028310(n)))`
-/

namespace A275304.P9433225205444298634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A275303 (n + 1) - A275303 (A028310 n).toNat)

end

end A275304.P9433225205444298634

/-! ## A275304.P8296188979822744166

`A302826(2*(n+1))+Δ[A275303(A028310(n))]`
-/

namespace A275304.P8296188979822744166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275303 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302826 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A275304.P8296188979822744166

/-! ## A275304.P9384669452554072053

`A275303(n+1)+A000007(n)-A275303(A028310(n))`
-/

namespace A275304.P9384669452554072053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275303 (n + 1) + (A000007 n - A275303 (A028310 n).toNat)

end

end A275304.P9384669452554072053

/-! ## A275304.P17001672470992451843

`A275303(n+1)-A057427(n)*A275303(A028310(n))`
-/

namespace A275304.P17001672470992451843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275303 (n + 1) - A057427 n * A275303 (A028310 n).toNat

end

end A275304.P17001672470992451843

/-!
# A275305: Color of the cell Langton's Ant living on triangular tiling touches on its n-th step before the color is changed by the ant; 0=white, 1=black.

The programs for A275305, there is no canonical definition to state claims against.
-/

/-! ## A275305.P13986606877267308665

`ceil(Δ[acot(A269757(n))])`
-/

namespace A275305.P13986606877267308665
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A269757 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A275305.P13986606877267308665

/-! ## A275305.P15540839666675024953

`A324434(Δ[A269757(n)]+1)`
-/

namespace A275305.P15540839666675024953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324434 (f1 (n + 1) - f1 n + 1).toNat

end

end A275305.P15540839666675024953

/-! ## A275305.P14181896003032068764

`A001222(2-Δ[A269757(n)])`
-/

namespace A275305.P14181896003032068764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A275305.P14181896003032068764

/-! ## A275305.P11622776625724933353

`A105338(floor(A269757(n)/A269757(n+1)))`
-/

namespace A275305.P11622776625724933353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105338 ⌊(A269757 n : ℚ) / (A269757 (n + 1) : ℚ)⌋.toNat

end

end A275305.P11622776625724933353

/-! ## A275305.P8821025895696390621

`A269757(floor(A269757(n)/A269757(n+1)))`
-/

namespace A275305.P8821025895696390621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269757 ⌊(A269757 n : ℚ) / (A269757 (n + 1) : ℚ)⌋.toNat

end

end A275305.P8821025895696390621

/-! ## A275305.P8031050458757006940

`A067850(A269757(n)+1-A269757(n+1))`
-/

namespace A275305.P8031050458757006940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067850 (A269757 n + (1 - A269757 (n + 1))).toNat

end

end A275305.P8031050458757006940

/-! ## A275305.P231008539917832576

`A166106(A269757(n)+1-A269757(n+1))`
-/

namespace A275305.P231008539917832576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166106 (A269757 n + (1 - A269757 (n + 1))).toNat

end

end A275305.P231008539917832576

/-!
# A275306: Decimal expansion of 1/2 - Sum_{k>=1} 1/2^prime(k).

The programs for A275306, there is no canonical definition to state claims against.
-/

/-! ## A275306.P11254107911839563258

`(3-floor(acot(n)))²-A051006(n)`
-/

namespace A275306.P11254107911839563258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ⌊SequenceMachineLib.acot (n : ℝ)⌋) ^ 2 - A051006 n

end

end A275306.P11254107911839563258

/-! ## A275306.P1621059306398830626

`(9-A051006(n))*A057427(n)`
-/

namespace A275306.P1621059306398830626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A051006 n) * A057427 n

end

end A275306.P1621059306398830626

/-! ## A275306.P10880785467469095384

`A157532(n+1)²-A051006(n)`
-/

namespace A275306.P10880785467469095384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1) ^ 2 - A051006 n

end

end A275306.P10880785467469095384

/-!
# A275307: Number of labeled spanning blobs on n vertices.

The programs for A275307, there is no canonical definition to state claims against.
-/

/-! ## A275307.P7349889919531137274

`A317672(∑[abs(1-n)])`
-/

namespace A275307.P7349889919531137274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317672 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A275307.P7349889919531137274

/-! ## A275307.P15916380216000489383

`A317672(A152947(n+1))+A011731(n)`
-/

namespace A275307.P15916380216000489383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317672 (A152947 (n + 1)).toNat + A011731 n

end

end A275307.P15916380216000489383

/-! ## A275307.P16279862850211603569

`A317672(A152947(n+1))+A025438(n)`
-/

namespace A275307.P16279862850211603569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317672 (A152947 (n + 1)).toNat + A025438 n

end

end A275307.P16279862850211603569

/-! ## A275307.P8297868435132670116

`A317672(A152947(n+1))+A025461(n)`
-/

namespace A275307.P8297868435132670116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317672 (A152947 (n + 1)).toNat + A025461 n

end

end A275307.P8297868435132670116

/-!
# A275308: Starting terms for the second half of the Kolakoski sequence.

The programs for A275308, there is no canonical definition to state claims against.
-/

/-! ## A275308.P17533701548180712413

`a(A042942(n)%2)` with `a(0)=2, a(1)=1`
-/

namespace A275308.P17533701548180712413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (Int.tmod (A042942 n) 2).toNat

end

end A275308.P17533701548180712413

/-! ## A275308.P11410113874033609508

`gcd(2, A042942(abs(1-n)+1))`
-/

namespace A275308.P11410113874033609508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A042942 (|1 - (n : ℤ)| + 1).toNat)

end

end A275308.P11410113874033609508

/-! ## A275308.P1788690473083377008

`A000002(a(and(1, A042942(n))))` with `a(0)=2, a(1)=1`
-/

namespace A275308.P1788690473083377008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A000002 (a (Int.land 1 (A042942 n)).toNat).toNat

end

end A275308.P1788690473083377008

/-! ## A275308.P15424537647758926306

`A000005(a(and(1, A042942(n))))` with `a(0)=2, a(1)=1`
-/

namespace A275308.P15424537647758926306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A000005 (a (Int.land 1 (A042942 n)).toNat).toNat

end

end A275308.P15424537647758926306

/-! ## A275308.P793382859682545632

`A000027(a(and(1, A042942(n))))` with `a(0)=2, a(1)=1`
-/

namespace A275308.P793382859682545632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A000027 (a (Int.land 1 (A042942 n)).toNat).toNat

end

end A275308.P793382859682545632

/-! ## A275308.P5664917670824454050

`A000041(a(and(1, A042942(n))))` with `a(0)=2, a(1)=1`
-/

namespace A275308.P5664917670824454050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A000041 (a (Int.land 1 (A042942 n)).toNat).toNat

end

end A275308.P5664917670824454050

/-! ## A275308.P9658820447640875407

`A000108(a(and(1, A042942(n))))` with `a(0)=2, a(1)=1`
-/

namespace A275308.P9658820447640875407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A000108 (a (Int.land 1 (A042942 n)).toNat).toNat

end

end A275308.P9658820447640875407

/-! ## A275308.P17460727909332882840

`A001149(a(and(1, A042942(n))))` with `a(0)=2, a(1)=1`
-/

namespace A275308.P17460727909332882840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A001149 (a (Int.land 1 (A042942 n)).toNat).toNat

end

end A275308.P17460727909332882840

/-! ## A275308.P5123333105987694298

`A005117(a(and(1, A042942(n))))` with `a(0)=2, a(1)=1`
-/

namespace A275308.P5123333105987694298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A005117 (a (Int.land 1 (A042942 n)).toNat).toNat

end

end A275308.P5123333105987694298

/-! ## A275308.P17558981487333632561

`A006530(a(and(1, A042942(n))))` with `a(0)=2, a(1)=1`
-/

namespace A275308.P17558981487333632561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A006530 (a (Int.land 1 (A042942 n)).toNat).toNat

end

end A275308.P17558981487333632561

/-!
# A275310: Number of set partitions of [n] with nonincreasing block sizes.

The programs for A275310, there is no canonical definition to state claims against.
-/

/-! ## A275310.P15471975791122413174

`A332086(A049128(n+2))`
-/

namespace A275310.P15471975791122413174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A049128 (n + 2)).toNat

end

end A275310.P15471975791122413174

/-! ## A275310.P18380597791739501606

`xor(A004251(n), A025437(A001349(n)))`
-/

namespace A275310.P18380597791739501606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004251 n) (A025437 (A001349 n).toNat)

end

end A275310.P18380597791739501606

/-! ## A275310.P18273723511279352630

`A187188(A148155(n+2)+A089840(n))`
-/

namespace A275310.P18273723511279352630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A148155 (n + 2) + A089840 n).toNat

end

end A275310.P18273723511279352630

/-! ## A275310.P554595281348043846

`A187188(A156384(n)+A148155(n+2))`
-/

namespace A275310.P554595281348043846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A156384 n + A148155 (n + 2)).toNat

end

end A275310.P554595281348043846

/-!
# A275312: Number of set partitions of [n] with increasing block sizes.

The programs for A275312, there is no canonical definition to state claims against.
-/

/-! ## A275312.P74620651996081071

`A335235(floor(A003239(n)/A000013(n)))`
-/

namespace A275312.P74620651996081071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335235 ⌊(A003239 n : ℚ) / (A000013 n : ℚ)⌋.toNat

end

end A275312.P74620651996081071

/-! ## A275312.P3599590418372036427

`A346126(A215067(n))-Δ[A005252(n)]`
-/

namespace A275312.P3599590418372036427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346126 (A215067 n).toNat - (f1 (n + 1) - f1 n)

end

end A275312.P3599590418372036427

/-! ## A275312.P10096150233693977708

`A047749(n)-A124760(A328358(n+1))`
-/

namespace A275312.P10096150233693977708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 n - A124760 (A328358 (n + 1)).toNat

end

end A275312.P10096150233693977708

/-! ## A275312.P14465742381093630762

`A325863(A055803(n+3))-A348528(n)`
-/

namespace A275312.P14465742381093630762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325863 (A055803 (n + 3)).toNat - A348528 n

end

end A275312.P14465742381093630762

/-!
# A275314: Euler's gradus ("suavitatis gradus", or degrees of softness) function.

The programs for A275314, the canonical program `A275314.P16603517016269577307` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275314 has offset 1).

The definition of A275314 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A001414, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A275314.P16603517016269577307

`A001414(n+1)-A001222(n+1)+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A275314

/-- `A001414(n+1)-A001222(n+1)+1` -/
def P16603517016269577307.Spec : Prop :=
  ∀ n, P16603517016269577307.a n = A275314 (n + 1)

theorem P16603517016269577307.correct : P16603517016269577307.Spec := by
  intro n
  simp only [A275314, Nat.add_sub_cancel]

end A275314

/-! ## A275314.P12792007624249307334

`A059975(n+1)+1`
-/

namespace A275314.P12792007624249307334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059975 (n + 1) + 1

end

end A275314.P12792007624249307334

namespace A275314

/-- `A059975(n+1)+1` -/
def P12792007624249307334.Spec : Prop :=
  ∀ n, P12792007624249307334.a n = A275314 (n + 1)

end A275314

/-! ## A275314.P6971269026560727235

`A397106(n+1)-(n+1)`
-/

namespace A275314.P6971269026560727235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397106 (n + 1) - (n + 1 : ℤ)

end

end A275314.P6971269026560727235

namespace A275314

/-- `A397106(n+1)-(n+1)` -/
def P6971269026560727235.Spec : Prop :=
  ∀ n, P6971269026560727235.a n = A275314 (n + 1)

theorem P6971269026560727235.correct : P6971269026560727235.Spec := by
  intro n
  simp only [A275314, Nat.add_sub_cancel, A275314.P6971269026560727235.a, A275314.P16603517016269577307.a, A001222, A001222.P11318177267732088261.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A397106, A397106.P13058087477262254909.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275314

/-! ## A275314.P16642387060727164491

`2-A341865(n+1)+n`
-/

namespace A275314.P16642387060727164491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A341865 (n + 1) + (n : ℤ)

end

end A275314.P16642387060727164491

namespace A275314

/-- `2-A341865(n+1)+n` -/
def P16642387060727164491.Spec : Prop :=
  ∀ n, P16642387060727164491.a n = A275314 (n + 1)

theorem P16642387060727164491.correct : P16642387060727164491.Spec := by
  intro n
  simp only [A275314, Nat.add_sub_cancel, A275314.P16642387060727164491.a, A275314.P16603517016269577307.a, A001222, A001222.P11318177267732088261.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A341865, A341865.P3043601699386979277.a, A059975, A059975.P3594971538098503590.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275314

/-! ## A275314.P4393777162608975806

`∑{d}[n+1, A014963(#)-1]+1`
-/

namespace A275314.P4393777162608975806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A014963 d - 1) + 1

end

end A275314.P4393777162608975806

namespace A275314

/-- `∑{d}[n+1, A014963(#)-1]+1` -/
def P4393777162608975806.Spec : Prop :=
  ∀ n, P4393777162608975806.a n = A275314 (n + 1)

end A275314

/-! ## A275314.P12484716176047329920

`A036288(n+1)-Δ[A022559(n)]`
-/

namespace A275314.P12484716176047329920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - (f1 (n + 1) - f1 n)

end

end A275314.P12484716176047329920

namespace A275314

/-- `A036288(n+1)-Δ[A022559(n)]` -/
def P12484716176047329920.Spec : Prop :=
  ∀ n, P12484716176047329920.a n = A275314 (n + 1)

end A275314

/-! ## A275314.P15881153318777966465

`A036288(n+1)-A001222(n+1)`
-/

namespace A275314.P15881153318777966465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - A001222 (n + 1)

end

end A275314.P15881153318777966465

namespace A275314

/-- `A036288(n+1)-A001222(n+1)` -/
def P15881153318777966465.Spec : Prop :=
  ∀ n, P15881153318777966465.a n = A275314 (n + 1)

theorem P15881153318777966465.correct : P15881153318777966465.Spec := by
  intro n
  simp only [A275314, Nat.add_sub_cancel, A275314.P15881153318777966465.a, A275314.P16603517016269577307.a, A001222, A001222.P11318177267732088261.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275314

/-! ## A275314.P10347252164299556553

`A140255(n+1)-A032741(n+1)`
-/

namespace A275314.P10347252164299556553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140255 (n + 1) - A032741 (n + 1)

end

end A275314.P10347252164299556553

namespace A275314

/-- `A140255(n+1)-A032741(n+1)` -/
def P10347252164299556553.Spec : Prop :=
  ∀ n, P10347252164299556553.a n = A275314 (n + 1)

end A275314

/-! ## A275314.P7535886552961602907

`A100006(n+1)-A073093(n+1)`
-/

namespace A275314.P7535886552961602907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (n + 1) - A073093 (n + 1)

end

end A275314.P7535886552961602907

namespace A275314

/-- `A100006(n+1)-A073093(n+1)` -/
def P7535886552961602907.Spec : Prop :=
  ∀ n, P7535886552961602907.a n = A275314 (n + 1)

theorem P7535886552961602907.correct : P7535886552961602907.Spec := by
  intro n
  simp only [A275314, Nat.add_sub_cancel, A275314.P7535886552961602907.a, A275314.P16603517016269577307.a, A001222, A001222.P11318177267732088261.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A073093, A073093.P258081957281391684.a, A100006, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275314

/-! ## A275314.P1882261394464095740

`A075254(n+1)-A222312(n+1)`
-/

namespace A275314.P1882261394464095740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) - A222312 (n + 1)

end

end A275314.P1882261394464095740

namespace A275314

/-- `A075254(n+1)-A222312(n+1)` -/
def P1882261394464095740.Spec : Prop :=
  ∀ n, P1882261394464095740.a n = A275314 (n + 1)

theorem P1882261394464095740.correct : P1882261394464095740.Spec := by
  intro n
  simp only [A275314, Nat.add_sub_cancel, A275314.P1882261394464095740.a, A275314.P16603517016269577307.a, A001222, A001222.P11318177267732088261.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A075254, A075254.P6422447875050144596.a, A222312, A222312.P5225546657519994950.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275314

/-! ## A275314.P7573983262184788225

`A318995(n+1)+A331415(n+1)+1`
-/

namespace A275314.P7573983262184788225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + (A331415 (n + 1) + 1)

end

end A275314.P7573983262184788225

namespace A275314

/-- `A318995(n+1)+A331415(n+1)+1` -/
def P7573983262184788225.Spec : Prop :=
  ∀ n, P7573983262184788225.a n = A275314 (n + 1)

end A275314

/-! ## A275314.P11708628620246579437

`A036288(n+1)+1-A073093(n+1)`
-/

namespace A275314.P11708628620246579437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) + (1 - A073093 (n + 1))

end

end A275314.P11708628620246579437

namespace A275314

/-- `A036288(n+1)+1-A073093(n+1)` -/
def P11708628620246579437.Spec : Prop :=
  ∀ n, P11708628620246579437.a n = A275314 (n + 1)

theorem P11708628620246579437.correct : P11708628620246579437.Spec := by
  intro n
  simp only [A275314, Nat.add_sub_cancel, A275314.P11708628620246579437.a, A275314.P16603517016269577307.a, A001222, A001222.P11318177267732088261.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A073093, A073093.P258081957281391684.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275314

/-! ## A275314.P9599738641056505491

`A075254(n+1)+1-A064800(n+1)`
-/

namespace A275314.P9599738641056505491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) + (1 - A064800 (n + 1))

end

end A275314.P9599738641056505491

namespace A275314

/-- `A075254(n+1)+1-A064800(n+1)` -/
def P9599738641056505491.Spec : Prop :=
  ∀ n, P9599738641056505491.a n = A275314 (n + 1)

theorem P9599738641056505491.correct : P9599738641056505491.Spec := by
  intro n
  simp only [A275314, Nat.add_sub_cancel, A275314.P9599738641056505491.a, A275314.P16603517016269577307.a, A001222, A001222.P11318177267732088261.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A064800, A064800.P9178262813478475092.a, A075254, A075254.P6422447875050144596.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275314

/-! ## A275314.P16434665778194343666

`A140255(n+1)+1-A000005(n+1)`
-/

namespace A275314.P16434665778194343666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140255 (n + 1) + (1 - A000005 (n + 1))

end

end A275314.P16434665778194343666

namespace A275314

/-- `A140255(n+1)+1-A000005(n+1)` -/
def P16434665778194343666.Spec : Prop :=
  ∀ n, P16434665778194343666.a n = A275314 (n + 1)

end A275314

/-! ## A275314.P17179490459237688220

`A069345(n+1)+1-A075255(n+1)`
-/

namespace A275314.P17179490459237688220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (n + 1) + (1 - A075255 (n + 1))

end

end A275314.P17179490459237688220

namespace A275314

/-- `A069345(n+1)+1-A075255(n+1)` -/
def P17179490459237688220.Spec : Prop :=
  ∀ n, P17179490459237688220.a n = A275314 (n + 1)

theorem P17179490459237688220.correct : P17179490459237688220.Spec := by
  intro n
  simp only [A275314, Nat.add_sub_cancel, A275314.P17179490459237688220.a, A275314.P16603517016269577307.a, A001222, A001222.P11318177267732088261.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A069345, A069345.P4010349656515474516.a, A075255, A075255.P12137973761347593222.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275314

/-! ## A275314.P6226445806176994609

`A075254(n+1)-(A001222(n+1)+n)`
-/

namespace A275314.P6226445806176994609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) - (A001222 (n + 1) + (n : ℤ))

end

end A275314.P6226445806176994609

namespace A275314

/-- `A075254(n+1)-(A001222(n+1)+n)` -/
def P6226445806176994609.Spec : Prop :=
  ∀ n, P6226445806176994609.a n = A275314 (n + 1)

theorem P6226445806176994609.correct : P6226445806176994609.Spec := by
  intro n
  simp only [A275314, Nat.add_sub_cancel, A275314.P6226445806176994609.a, A275314.P16603517016269577307.a, A001222, A001222.P11318177267732088261.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A075254, A075254.P6422447875050144596.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275314

/-! ## A275314.P10500901421210650867

`A008475(2*(n+1))-(A078771(2*(n+1))+A001222(n+1)+1)`
-/

namespace A275314.P10500901421210650867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (2 * (n + 1)) - (A078771 (2 * (n + 1)) + (A001222 (n + 1) + 1))

end

end A275314.P10500901421210650867

namespace A275314

/-- `A008475(2*(n+1))-(A078771(2*(n+1))+A001222(n+1)+1)` -/
def P10500901421210650867.Spec : Prop :=
  ∀ n, P10500901421210650867.a n = A275314 (n + 1)

end A275314

/-! ## A275314.P16337012101681149211

`A082299(2*(n+1))*A082343(2*(n+1))-(A001222(n+1)+1)`
-/

namespace A275314.P16337012101681149211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (2 * (n + 1)) * A082343 (2 * (n + 1)) - (A001222 (n + 1) + 1)

end

end A275314.P16337012101681149211

namespace A275314

/-- `A082299(2*(n+1))*A082343(2*(n+1))-(A001222(n+1)+1)` -/
def P16337012101681149211.Spec : Prop :=
  ∀ n, P16337012101681149211.a n = A275314 (n + 1)

end A275314

/-! ## A275314.P7963687772350758544

`A059975(A004277(n+1))`
-/

namespace A275314.P7963687772350758544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059975 (A004277 (n + 1)).toNat

end

end A275314.P7963687772350758544

namespace A275314

/-- `A059975(A004277(n+1))` -/
def P7963687772350758544.Spec : Prop :=
  ∀ n, P7963687772350758544.a n = A275314 (n + 1)

end A275314

/-! ## A275314.P11128206203817453056

`A059975(A005843(n+1))`
-/

namespace A275314.P11128206203817453056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059975 (A005843 (n + 1)).toNat

end

end A275314.P11128206203817453056

namespace A275314

/-- `A059975(A005843(n+1))` -/
def P11128206203817453056.Spec : Prop :=
  ∀ n, P11128206203817453056.a n = A275314 (n + 1)

end A275314

/-!
# A275315: Average of amicable pairs (x,y), ordered by the smaller value x given in A002025.

The programs for A275315, there is no canonical definition to state claims against.
-/

/-! ## A275315.P10223215896269135524

`A180164(n+1)/2`
-/

namespace A275315.P10223215896269135524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180164 (n + 1) : ℚ) / 2

end

end A275315.P10223215896269135524

/-! ## A275315.P509417343313383910

`(A002025(n+1)+A002046(n+1))/2`
-/

namespace A275315.P509417343313383910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002025 (n + 1) + A002046 (n + 1) : ℚ) / 2

end

end A275315.P509417343313383910

/-! ## A275315.P1713099514397142609

`A002025(n+1)+A066539(n+1)/2`
-/

namespace A275315.P1713099514397142609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002025 (n + 1) : ℚ) + (A066539 (n + 1) : ℚ) / 2

end

end A275315.P1713099514397142609

/-! ## A275315.P9650630349584479092

`A002046(n+1)-A066539(n+1)/2`
-/

namespace A275315.P9650630349584479092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002046 (n + 1) : ℚ) - (A066539 (n + 1) : ℚ) / 2

end

end A275315.P9650630349584479092

/-! ## A275315.P13902113224652594897

`(A002025(n+1)+A061469(n+1)*A180327(n+1))/2`
-/

namespace A275315.P13902113224652594897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002025 (n + 1) + A061469 (n + 1) * A180327 (n + 1) : ℚ) / 2

end

end A275315.P13902113224652594897

/-! ## A275315.P9252370192635595766

`(A002046(n+1)+A061469(n+1)*A180326(n+1))/2`
-/

namespace A275315.P9252370192635595766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002046 (n + 1) + A061469 (n + 1) * A180326 (n + 1) : ℚ) / 2

end

end A275315.P9252370192635595766

/-! ## A275315.P604420511385961701

`(A002025(n+1)+A180202(n+1)/A002025(n+1))/2`
-/

namespace A275315.P604420511385961701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002025 (n + 1) : ℚ) + (A180202 (n + 1) : ℚ) / (A002025 (n + 1) : ℚ)) / 2

end

end A275315.P604420511385961701

/-! ## A275315.P17829625258395084147

`2^A008683(A092627(n+1))*A180164(n+1)`
-/

namespace A275315.P17829625258395084147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A092627 (n + 1)).toNat : ℤ) * (A180164 (n + 1) : ℚ)

end

end A275315.P17829625258395084147

/-! ## A275315.P10013717995983695624

`A162884(n+1)+A002025(n+1)`
-/

namespace A275315.P10013717995983695624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162884 (n + 1) + A002025 (n + 1)

end

end A275315.P10013717995983695624

/-! ## A275315.P9685001295876687571

`A002046(n+1)-A162884(n+1)`
-/

namespace A275315.P9685001295876687571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002046 (n + 1) - A162884 (n + 1)

end

end A275315.P9685001295876687571

/-!
# A275316: Average of amicable pairs (x,y), ordered by the sum x+y given in A259953.

The programs for A275316, there is no canonical definition to state claims against.
-/

/-! ## A275316.P17424492217420809394

`(A260086(n+1)+A260087(n+1))/2`
-/

namespace A275316.P17424492217420809394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260086 (n + 1) + A260087 (n + 1) : ℚ) / 2

end

end A275316.P17424492217420809394

/-! ## A275316.P10933283919554513633

`A259953(n+1)/2`
-/

namespace A275316.P10933283919554513633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259953 (n + 1) : ℚ) / 2

end

end A275316.P10933283919554513633

/-! ## A275316.P15972021956813353758

`A275470(n+1)+A260086(n+1)`
-/

namespace A275316.P15972021956813353758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275470 (n + 1) + A260086 (n + 1)

end

end A275316.P15972021956813353758

/-! ## A275316.P14762813442209654854

`A260087(n+1)-A275470(n+1)`
-/

namespace A275316.P14762813442209654854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260087 (n + 1) - A275470 (n + 1)

end

end A275316.P14762813442209654854

/-! ## A275316.P2152379763941441485

`A260087(n+1)-A275469(n+1)/2`
-/

namespace A275316.P2152379763941441485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260087 (n + 1) : ℚ) - (A275469 (n + 1) : ℚ) / 2

end

end A275316.P2152379763941441485

/-!
# A275317: Prime numbers of the form 100*n+57.

The programs for A275317, there is no canonical definition to state claims against.
-/

/-! ## A275317.P9533085737163543625

`p?[10*10*n-43]`
-/

namespace A275317.P9533085737163543625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (10 * n) : ℤ) - 43

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275317.P9533085737163543625

/-! ## A275317.P6740882979868181172

`or(1, p?[A044389(n+1)])`
-/

namespace A275317.P6740882979868181172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A275317.P6740882979868181172

/-! ## A275317.P13893673063448721131

`or(1, p?[A044384(n+1)+5])`
-/

namespace A275317.P13893673063448721131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044384 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A275317.P13893673063448721131

/-! ## A275317.P14620228282383662346

`record[A006530(A044389(n+2))]`
-/

namespace A275317.P14620228282383662346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A044389 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275317.P14620228282383662346

/-! ## A275317.P577961985876864366

`filter[A044389(n+1), A010051(#)]`
-/

namespace A275317.P577961985876864366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A275317.P577961985876864366

/-!
# A275318: A self-dissimilar sequence: each string that occurs earlier is appended with a different term than what follows the previous occurrence.

The programs for A275318, there is no canonical definition to state claims against.
-/

/-! ## A275318.P658479590379155365

`and(A332662(A024450(n+2)), A374251(2*n+5))`
-/

namespace A275318.P658479590379155365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A332662 (A024450 (n + 2)).toNat) (A374251 (2 * n + 5))

end

end A275318.P658479590379155365

/-! ## A275318.P6274204592766656072

`A031235(A205872(n+3)*A205875(n+2))`
-/

namespace A275318.P6274204592766656072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (A205872 (n + 3) * A205875 (n + 2)).toNat

end

end A275318.P6274204592766656072

/-! ## A275318.P9193412487873021131

`A079887(2*(n+2))%A131669(A146523(n))`
-/

namespace A275318.P9193412487873021131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079887 (2 * (n + 2))) (A131669 (A146523 n).toNat)

end

end A275318.P9193412487873021131

/-! ## A275318.P3059480644831664845

`A000989(xor(A015937(n+1), A215892(n+2)))`
-/

namespace A275318.P3059480644831664845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (Int.xor (A015937 (n + 1)) (A215892 (n + 2))).toNat

end

end A275318.P3059480644831664845

/-! ## A275318.P9131171116536382540

`A048050(A226489(3*n+2))%A358372(n+1)`
-/

namespace A275318.P9131171116536382540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048050 (A226489 (3 * n + 2)).toNat) (A358372 (n + 1))

end

end A275318.P9131171116536382540

/-!
# A275319: Numbers n such that n concatenated with n+1 is not a prime.

The programs for A275319, there is no canonical definition to state claims against.
-/

/-! ## A275319.P18276067273433145737

`comp[A030457(n+1)-1]+1`
-/

namespace A275319.P18276067273433145737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030457 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A275319.P18276067273433145737

/-! ## A275319.P8392958601854999097

`record[(n+1)*A060576(A245727(n+1))]`
-/

namespace A275319.P8392958601854999097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060576 (A245727 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275319.P8392958601854999097

/-! ## A275319.P13915625531278615846

`eq[char[A030457(n+1)], A010051(2*(n+1))]`
-/

namespace A275319.P13915625531278615846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030457 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A275319.P13915625531278615846

/-! ## A275319.P5476340678287698597

`record[(n+1)%A233583(A228325(n+1))]`
-/

namespace A275319.P5476340678287698597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A233583 (A228325 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275319.P5476340678287698597

/-! ## A275319.P1982919829582082481

`lt[1, A001222(A127421(n+1))]`
-/

namespace A275319.P1982919829582082481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A127421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275319.P1982919829582082481

/-! ## A275319.P17369123779674826697

`lt[1, A001221(A001704(n+1))]+1`
-/

namespace A275319.P17369123779674826697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001704 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A275319.P17369123779674826697

/-! ## A275319.P1239924118980630861

`lt[3, A000005(A020338(n+1)+1)]+1`
-/

namespace A275319.P1239924118980630861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A020338 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A275319.P1239924118980630861

/-! ## A275319.P11287994124593650417

`record[2-A014963(A127421(n+2))+n]`
-/

namespace A275319.P11287994124593650417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014963 (A127421 (n + 2)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275319.P11287994124593650417

/-! ## A275319.P18168052087670455180

`lt[A014963(A127421(abs(1-n)+1)), n]-1`
-/

namespace A275319.P18168052087670455180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A127421 (|1 - (n : ℤ)| + 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A275319.P18168052087670455180

/-!
# A275320: Least k such that d(k*n) = d(k*n+1) where d = A000005, or -1 if no such k exists.

The programs for A275320, there is no canonical definition to state claims against.
-/

/-! ## A275320.P4293423755215129036

`or(A000120(A294685(n+3)), A056806(n+1))`
-/

namespace A275320.P4293423755215129036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A294685 (n + 3)).toNat) (A056806 (n + 1))

end

end A275320.P4293423755215129036

/-!
# A275321: Numbers n such that denominator(sigma(sigma(n))/n) = denominator(sigma(sigma(s))/s) where s = sigma(n).

The programs for A275321, there is no canonical definition to state claims against.
-/

/-! ## A275321.P17091493267241054652

`eq[A318060(A000203(n+1)), A318060(n+1)]+1`
-/

namespace A275321.P17091493267241054652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318060 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318060 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A275321.P17091493267241054652

/-!
# A275324: Expansion of (x*(1-4*x^2)^(-3/2) + (1-4*x^2)^(-1/2) + x + 1)/2.

The programs for A275324, the canonical program `A275324.P5051754132568334749` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275324 has offset 0).

The definition of A275324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275324.P5051754132568334749

`ceil(A056040(n)/2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A275324

/-- `ceil(A056040(n)/2)` -/
def P5051754132568334749.Spec : Prop :=
  ∀ n, P5051754132568334749.a n = A275324 n

theorem P5051754132568334749.correct : P5051754132568334749.Spec := by
  intro n
  simp only [A275324]

end A275324

/-! ## A275324.P10654668383518797480

`round(A056040(char[1]+n)/2)`
-/

namespace A275324.P10654668383518797480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A056040 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / 2)

end

end A275324.P10654668383518797480

namespace A275324

/-- `round(A056040(char[1]+n)/2)` -/
def P10654668383518797480.Spec : Prop :=
  ∀ n, P10654668383518797480.a n = A275324 n

end A275324

/-! ## A275324.P5507240698063040887

`A056040(A233583(n+1))/2`
-/

namespace A275324.P5507240698063040887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 (A233583 (n + 1)).toNat : ℚ) / 2

end

end A275324.P5507240698063040887

namespace A275324

/-- `A056040(A233583(n+1))/2` -/
def P5507240698063040887.Spec : Prop :=
  ∀ n, P5507240698063040887.a n = (A275324 n : ℚ)

end A275324

/-! ## A275324.P10057031393286134311

`A056040(n)/A060632(A060632(n))`
-/

namespace A275324.P10057031393286134311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (A060632 (A060632 n).toNat : ℚ)

end

end A275324.P10057031393286134311

namespace A275324

/-- `A056040(n)/A060632(A060632(n))` -/
def P10057031393286134311.Spec : Prop :=
  ∀ n, P10057031393286134311.a n = (A275324 n : ℚ)

end A275324

/-! ## A275324.P2793174766639263433

`A056040(n)/gcd(2, A034386(n))`
-/

namespace A275324.P2793174766639263433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (Int.gcd 2 (A034386 n) : ℚ)

end

end A275324.P2793174766639263433

namespace A275324

/-- `A056040(n)/gcd(2, A034386(n))` -/
def P2793174766639263433.Spec : Prop :=
  ∀ n, P2793174766639263433.a n = (A275324 n : ℚ)

end A275324

/-! ## A275324.P12165556291131714368

`∏[gcd(n, C(2, n))]/floor(n/2)!²`
-/

namespace A275324.P12165556291131714368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℚ)

end

end A275324.P12165556291131714368

namespace A275324

/-- `∏[gcd(n, C(2, n))]/floor(n/2)!²` -/
def P12165556291131714368.Spec : Prop :=
  ∀ n, P12165556291131714368.a n = (A275324 n : ℚ)

end A275324

/-! ## A275324.P8078104714630712904

`ceil(A211226(∑[4*n])/2)`
-/

namespace A275324.P8078104714630712904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211226 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌉

end

end A275324.P8078104714630712904

namespace A275324

/-- `ceil(A211226(∑[4*n])/2)` -/
def P8078104714630712904.Spec : Prop :=
  ∀ n, P8078104714630712904.a n = A275324 n

end A275324

/-! ## A275324.P9682045677813291496

`round(A182073(∑[n])/2)`
-/

namespace A275324.P9682045677813291496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182073 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2)

end

end A275324.P9682045677813291496

namespace A275324

/-- `round(A182073(∑[n])/2)` -/
def P9682045677813291496.Spec : Prop :=
  ∀ n, P9682045677813291496.a n = A275324 n

end A275324

/-!
# A275325: Triangle read by rows: number of orbitals over n sectors which have a Catalan decomposition into k parts.

The programs for A275325, there is no canonical definition to state claims against.
-/

/-! ## A275325.P4017237027805266527

`A275326(n)*A329683(n)`
-/

namespace A275325.P4017237027805266527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275326 n * A329683 n

end

end A275325.P4017237027805266527

/-! ## A275325.P17327538309848811684

`A211662(n+5)*A275326(n)`
-/

namespace A275325.P17327538309848811684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211662 (n + 5) * A275326 n

end

end A275325.P17327538309848811684

/-! ## A275325.P10421078626950378202

`A211668(n+6)*A275326(n)`
-/

namespace A275325.P10421078626950378202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211668 (n + 6) * A275326 n

end

end A275325.P10421078626950378202

/-! ## A275325.P3757254781044956004

`gcd(2, A273246(n))*A275326(n)`
-/

namespace A275325.P3757254781044956004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A273246 n) : ℤ) * A275326 n

end

end A275325.P3757254781044956004

/-! ## A275325.P722261285192627129

`A020639(round(sqrt(n))!)*A275326(n)`
-/

namespace A275325.P722261285192627129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat) * A275326 n

end

end A275325.P722261285192627129

/-! ## A275325.P3293029217981245503

`A020639(a(n-1)+12)*A275326(n)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A275325.P3293029217981245503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A020639 (a (n - 1) + 12).toNat * A275326 n

end

end A275325.P3293029217981245503

/-! ## A275325.P7611962616608496624

`A020639(A049063(n))*A275326(n)`
-/

namespace A275325.P7611962616608496624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A049063 n).toNat * A275326 n

end

end A275325.P7611962616608496624

/-! ## A275325.P7693689235852764702

`A020639(A225530(n))*A275326(n)`
-/

namespace A275325.P7693689235852764702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A225530 n).toNat * A275326 n

end

end A275325.P7693689235852764702

/-! ## A275325.P15820792011300023574

`A020639(A000010(C(n, 2)+1))*A275326(n)`
-/

namespace A275325.P15820792011300023574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (Nat.choose n 2 + 1)).toNat * A275326 n

end

end A275325.P15820792011300023574

/-! ## A275325.P5499467115618251508

`A020639(A000010(abs(1-n)+1))*A275326(n)`
-/

namespace A275325.P5499467115618251508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (|1 - (n : ℤ)| + 1).toNat).toNat * A275326 n

end

end A275325.P5499467115618251508

/-!
# A275326: Triangle read by rows, T(n,k) = ceiling(A275325(n,k)/2) for n>=0 and 0<=k<=n.

The programs for A275326, there is no canonical definition to state claims against.
-/

/-! ## A275326.P808372168585899532

`ceil(A275325(n)/2)`
-/

namespace A275326.P808372168585899532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A275325 n : ℚ) / 2⌉

end

end A275326.P808372168585899532

/-! ## A275326.P6575586541669734826

`A004525(A275325(n))`
-/

namespace A275326.P6575586541669734826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A275325 n).toNat

end

end A275326.P6575586541669734826

/-! ## A275326.P15681260261951803397

`A004526(A275325(n)+1)`
-/

namespace A275326.P15681260261951803397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A275325 n + 1).toNat

end

end A275326.P15681260261951803397

/-! ## A275326.P4538481186915063771

`A057979(A275325(n)+1)`
-/

namespace A275326.P4538481186915063771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A275325 n + 1).toNat

end

end A275326.P4538481186915063771

/-! ## A275326.P8073137998943323013

`A123108(A275325(n)+1)`
-/

namespace A275326.P8073137998943323013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A275325 n + 1).toNat

end

end A275326.P8073137998943323013

/-! ## A275326.P4390815901981604565

`A140106(A275325(n)+3)`
-/

namespace A275326.P4390815901981604565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A275325 n + 3).toNat

end

end A275326.P4390815901981604565

/-! ## A275326.P14650539388191890903

`A001281(lcm(2, A275325(n)))`
-/

namespace A275326.P14650539388191890903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 2 (A275325 n))

end

end A275326.P14650539388191890903

/-! ## A275326.P18107103655257080489

`A028242(xor(1, A275325(n)))`
-/

namespace A275326.P18107103655257080489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A275325 n)).toNat

end

end A275326.P18107103655257080489

/-! ## A275326.P3372555039768367947

`A275325(n)/A329683(n)`
-/

namespace A275326.P3372555039768367947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275325 n : ℚ) / (A329683 n : ℚ)

end

end A275326.P3372555039768367947

/-! ## A275326.P17666098563434150682

`A275325(n)/A000032(C(2, n))`
-/

namespace A275326.P17666098563434150682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275325 n : ℚ) / (A000032 (Nat.choose 2 n) : ℚ)

end

end A275326.P17666098563434150682

/-!
# A275327: Triangle read by rows, Riordan array (1, (2+(x-1)/(2*x^2)*(1-sqrt(1-4*x^2)))/ sqrt(1-4*x^2)).

The programs for A275327, there is no canonical definition to state claims against.
-/

/-! ## A275327.P12224772445211715358

`A048766(lcm(A301924(n+1), A338934(n)))`
-/

namespace A275327.P12224772445211715358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lcm (A301924 (n + 1)) (A338934 n))

end

end A275327.P12224772445211715358

/-! ## A275327.P8942618959083106621

`xor(A108934(A008277(n+1)), A340995(n))`
-/

namespace A275327.P8942618959083106621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A108934 (A008277 (n + 1)).toNat) (A340995 n)

end

end A275327.P8942618959083106621

/-! ## A275327.P15156042556406074668

`∑{e}[A008861(A111106(n)), #]`
-/

namespace A275327.P15156042556406074668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 (A111106 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275327.P15156042556406074668

/-! ## A275327.P5246965882938426137

`∑{e}[A000340(A264428(n)), #]`
-/

namespace A275327.P5246965882938426137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000340 (A264428 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275327.P5246965882938426137

/-! ## A275327.P9005090087001304222

`A118765(A111106(n))-A369745(A344696(2*n+5))`
-/

namespace A275327.P9005090087001304222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118765 (A111106 n).toNat - A369745 (A344696 (2 * n + 5)).toNat

end

end A275327.P9005090087001304222

/-!
# A275328: Triangle read by rows, Riordan array [1, (1+x/(1-4*x^2))/sqrt(1-4*x^2)].

The programs for A275328, there is no canonical definition to state claims against.
-/

/-! ## A275328.P2171333534799781832

`A321625(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A275328.P2171333534799781832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A321625 (n - 1) - a (n - 1)

end

end A275328.P2171333534799781832

/-! ## A275328.P8624925414496015319

`A090238(n)%A117817(A119449(n+1))`
-/

namespace A275328.P8624925414496015319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090238 n) (A117817 (A119449 (n + 1)).toNat)

end

end A275328.P8624925414496015319

/-! ## A275328.P17702233298180378750

`A182839(A147720(n))`
-/

namespace A275328.P17702233298180378750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182839 (A147720 n).toNat

end

end A275328.P17702233298180378750

/-! ## A275328.P5585901655128224521

`A265537(A109971(n))%18`
-/

namespace A275328.P5585901655128224521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265537 (A109971 n).toNat) 18

end

end A275328.P5585901655128224521

/-! ## A275328.P14645908088986735452

`A205813(n)%A219654(A235265(2*(n+1)))`
-/

namespace A275328.P14645908088986735452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205813 n) (A219654 (A235265 (2 * (n + 1))).toNat)

end

end A275328.P14645908088986735452

/-!
# A275329: a(n) = (2+[n/2])*n!/((1+[n/2])*[n/2]!^2).

The programs for A275329, the canonical program `A275329.P1318522631389672065` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275329 has offset 0).

The definition of A275329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275329.P1318522631389672065

`A057977(n)*A008619(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A275329

/-- `A057977(n)*A008619(n+2)` -/
def P1318522631389672065.Spec : Prop :=
  ∀ n, P1318522631389672065.a n = A275329 n

theorem P1318522631389672065.correct : P1318522631389672065.Spec := by
  intro n
  simp only [A275329]

end A275329

/-! ## A275329.P13610364458634905665

`A057977(n)+A056040(n)`
-/

namespace A275329.P13610364458634905665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n + A056040 n

end

end A275329.P13610364458634905665

namespace A275329

/-- `A057977(n)+A056040(n)` -/
def P13610364458634905665.Spec : Prop :=
  ∀ n, P13610364458634905665.a n = A275329 n

end A275329

/-! ## A275329.P17553043033934071707

`A057977(n)*A080513(n+1)`
-/

namespace A275329.P17553043033934071707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A080513 (n + 1)

end

end A275329.P17553043033934071707

namespace A275329

/-- `A057977(n)*A080513(n+1)` -/
def P17553043033934071707.Spec : Prop :=
  ∀ n, P17553043033934071707.a n = A275329 n

end A275329

/-! ## A275329.P16619602819839389426

`(A004526(n)+2)*A057977(n)`
-/

namespace A275329.P16619602819839389426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 2) * A057977 n

end

end A275329.P16619602819839389426

namespace A275329

/-- `(A004526(n)+2)*A057977(n)` -/
def P16619602819839389426.Spec : Prop :=
  ∀ n, P16619602819839389426.a n = A275329 n

end A275329

/-! ## A275329.P1279879553734613222

`A237884(n)+2*A057977(n)`
-/

namespace A275329.P1279879553734613222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237884 n + 2 * A057977 n

end

end A275329.P1279879553734613222

namespace A275329

/-- `A237884(n)+2*A057977(n)` -/
def P1279879553734613222.Spec : Prop :=
  ∀ n, P1279879553734613222.a n = A275329 n

end A275329

/-! ## A275329.P10351540377559436079

`A057977(n)*A065033(n+3)`
-/

namespace A275329.P10351540377559436079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A065033 (n + 3)

end

end A275329.P10351540377559436079

namespace A275329

/-- `A057977(n)*A065033(n+3)` -/
def P10351540377559436079.Spec : Prop :=
  ∀ n, P10351540377559436079.a n = A275329 n

end A275329

/-! ## A275329.P11594874808885872036

`A057977(n)*A110654(n+3)`
-/

namespace A275329.P11594874808885872036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A110654 (n + 3)

end

end A275329.P11594874808885872036

namespace A275329

/-- `A057977(n)*A110654(n+3)` -/
def P11594874808885872036.Spec : Prop :=
  ∀ n, P11594874808885872036.a n = A275329 n

end A275329

/-! ## A275329.P12948029410597376841

`A057977(n)*A123108(n+4)`
-/

namespace A275329.P12948029410597376841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A123108 (n + 4)

end

end A275329.P12948029410597376841

namespace A275329

/-- `A057977(n)*A123108(n+4)` -/
def P12948029410597376841.Spec : Prop :=
  ∀ n, P12948029410597376841.a n = A275329 n

end A275329

/-! ## A275329.P2314907229855728955

`ratio[∑[A008619(n)]]*A056040(n)`
-/

namespace A275329.P2314907229855728955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A056040 n : ℚ)

end

end A275329.P2314907229855728955

namespace A275329

/-- `ratio[∑[A008619(n)]]*A056040(n)` -/
def P2314907229855728955.Spec : Prop :=
  ∀ n, P2314907229855728955.a n = (A275329 n : ℚ)

end A275329

/-! ## A275329.P9056249113104611172

`A008619(2*A008619(n))*A057977(n)`
-/

namespace A275329.P9056249113104611172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A008619 n).toNat * A057977 n

end

end A275329.P9056249113104611172

namespace A275329

/-- `A008619(2*A008619(n))*A057977(n)` -/
def P9056249113104611172.Spec : Prop :=
  ∀ n, P9056249113104611172.a n = A275329 n

end A275329

/-! ## A275329.P3454095686220871115

`A056040(n)+A056040(n)-A237884(n)`
-/

namespace A275329.P3454095686220871115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n + (A056040 n - A237884 n)

end

end A275329.P3454095686220871115

namespace A275329

/-- `A056040(n)+A056040(n)-A237884(n)` -/
def P3454095686220871115.Spec : Prop :=
  ∀ n, P3454095686220871115.a n = A275329 n

end A275329

/-! ## A275329.P9322427481225287759

`A057977(n)+A009001(n)*A128057(n)`
-/

namespace A275329.P9322427481225287759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n + A009001 n * A128057 n

end

end A275329.P9322427481225287759

namespace A275329

/-- `A057977(n)+A009001(n)*A128057(n)` -/
def P9322427481225287759.Spec : Prop :=
  ∀ n, P9322427481225287759.a n = A275329 n

end A275329

/-! ## A275329.P12776831535538573388

`A001405(n)+A057977(n)*A152271(n)`
-/

namespace A275329.P12776831535538573388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + A057977 n * A152271 n

end

end A275329.P12776831535538573388

namespace A275329

/-- `A001405(n)+A057977(n)*A152271(n)` -/
def P12776831535538573388.Spec : Prop :=
  ∀ n, P12776831535538573388.a n = A275329 n

end A275329

/-! ## A275329.P14648560761016003324

`A057977(n)+A093178(n)*A128014(n)`
-/

namespace A275329.P14648560761016003324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n + A093178 n * A128014 n

end

end A275329.P14648560761016003324

namespace A275329

/-- `A057977(n)+A093178(n)*A128014(n)` -/
def P14648560761016003324.Spec : Prop :=
  ∀ n, P14648560761016003324.a n = A275329 n

end A275329

/-! ## A275329.P16764283325173799970

`A056040(n)+A056040(n)/A110654(n+1)`
-/

namespace A275329.P16764283325173799970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) + (A056040 n : ℚ) / (A110654 (n + 1) : ℚ)

end

end A275329.P16764283325173799970

namespace A275329

/-- `A056040(n)+A056040(n)/A110654(n+1)` -/
def P16764283325173799970.Spec : Prop :=
  ∀ n, P16764283325173799970.a n = (A275329 n : ℚ)

end A275329

/-! ## A275329.P954578165410547174

`2*A056040(n)-A237884(n)`
-/

namespace A275329.P954578165410547174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056040 n - A237884 n

end

end A275329.P954578165410547174

namespace A275329

/-- `2*A056040(n)-A237884(n)` -/
def P954578165410547174.Spec : Prop :=
  ∀ n, P954578165410547174.a n = A275329 n

end A275329

/-!
# A275332: Triangle read by rows: the major index statistic of the oscillating orbitals, also the q-analog of the oscillating orbitals A232500.

The programs for A275332, there is no canonical definition to state claims against.
-/

/-! ## A275332.P12080584716449277885

`A326918(A330118(3*n+4)%(n+2))`
-/

namespace A275332.P12080584716449277885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326918 (Int.tmod (A330118 (3 * n + 4)) (n + 2 : ℤ)).toNat

end

end A275332.P12080584716449277885

/-! ## A275332.P3514892995782196150

`A005091(A025457(3*n+1)+A000048(n))`
-/

namespace A275332.P3514892995782196150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (A025457 (3 * n + 1) + A000048 n).toNat

end

end A275332.P3514892995782196150

/-! ## A275332.P8739786584237410529

`A102675(A261727(n+1)+A152884(3*n+2))`
-/

namespace A275332.P8739786584237410529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A261727 (n + 1) + A152884 (3 * n + 2)).toNat

end

end A275332.P8739786584237410529

/-! ## A275332.P16306452163848675016

`A115201(or(4, A003520(n)))`
-/

namespace A275332.P16306452163848675016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115201 (Int.lor 4 (A003520 n)).toNat

end

end A275332.P16306452163848675016

/-!
# A275334: Number of simple labeled graphs on n vertices that have at least one vertex of odd degree and at least one vertex of even degree.

The programs for A275334, there is no canonical definition to state claims against.
-/

/-! ## A275334.P2310253036120984492

`(2^n-(char[2*n+1]+1))*∏[ceil(2^(n-1))]`
-/

namespace A275334.P2310253036120984492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A275334.P2310253036120984492

/-! ## A275334.P15907111309911370569

`∏[A000079(n)]*A141023(n)/A000079(n)`
-/

namespace A275334.P15907111309911370569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j) * A141023 n : ℤ) : ℚ) / (A000079 n : ℚ)

end

end A275334.P15907111309911370569

/-!
# A275340: Nontrivial centered polygonal numbers: numbers of the form A101321(n,k) where n >= 1 and k >= 2.

The programs for A275340, the canonical program `A275340.P3805728007378759890` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275340 has offset 1).

The definition of A275340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275340.P3805728007378759890

`A113502(n+1)+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A275340

/-- `A113502(n+1)+1` -/
def P3805728007378759890.Spec : Prop :=
  ∀ n, P3805728007378759890.a n = A275340 (n + 1)

theorem P3805728007378759890.correct : P3805728007378759890.Spec := by
  intro n
  simp only [A275340, Nat.add_sub_cancel]

end A275340

/-! ## A275340.P17131402444098950108

`lt[0, A325334(n)]+1`
-/

namespace A275340.P17131402444098950108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A275340.P17131402444098950108

namespace A275340

/-- `lt[0, A325334(n)]+1` -/
def P17131402444098950108.Spec : Prop :=
  ∀ n, (P17131402444098950108.a n : ℤ) = A275340 (n + 1)

end A275340

/-! ## A275340.P12348041290467270907

`A088723(n+1)/2+1`
-/

namespace A275340.P12348041290467270907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088723 (n + 1) : ℚ) / 2 + 1

end

end A275340.P12348041290467270907

namespace A275340

/-- `A088723(n+1)/2+1` -/
def P12348041290467270907.Spec : Prop :=
  ∀ n, P12348041290467270907.a n = (A275340 (n + 1) : ℚ)

end A275340

/-! ## A275340.P10024171142402908797

`lt[A360128(2*(n+2)), 1]+3`
-/

namespace A275340.P10024171142402908797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360128 (2 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A275340.P10024171142402908797

namespace A275340

/-- `lt[A360128(2*(n+2)), 1]+3` -/
def P10024171142402908797.Spec : Prop :=
  ∀ n, (P10024171142402908797.a n : ℤ) = A275340 (n + 1)

end A275340

/-! ## A275340.P16607899741362226208

`lt[1, A294334(n)]+1`
-/

namespace A275340.P16607899741362226208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A275340.P16607899741362226208

namespace A275340

/-- `lt[1, A294334(n)]+1` -/
def P16607899741362226208.Spec : Prop :=
  ∀ n, (P16607899741362226208.a n : ℤ) = A275340 (n + 1)

end A275340

/-! ## A275340.P5189395813340386531

`lt[1, A007862(n+1)]+2`
-/

namespace A275340.P5189395813340386531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A275340.P5189395813340386531

namespace A275340

/-- `lt[1, A007862(n+1)]+2` -/
def P5189395813340386531.Spec : Prop :=
  ∀ n, (P5189395813340386531.a n : ℤ) = A275340 (n + 1)

end A275340

/-! ## A275340.P5814394050642728500

`lt[1, A185027(n+1)]+2`
-/

namespace A275340.P5814394050642728500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A275340.P5814394050642728500

namespace A275340

/-- `lt[1, A185027(n+1)]+2` -/
def P5814394050642728500.Spec : Prop :=
  ∀ n, (P5814394050642728500.a n : ℤ) = A275340 (n + 1)

end A275340

/-! ## A275340.P12654692059646692694

`(lt[3, A132748(n+1)]+3)/2`
-/

namespace A275340.P12654692059646692694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132748 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3 : ℚ) / 2

end

end A275340.P12654692059646692694

namespace A275340

/-- `(lt[3, A132748(n+1)]+3)/2` -/
def P12654692059646692694.Spec : Prop :=
  ∀ n, P12654692059646692694.a n = (A275340 (n + 1) : ℚ)

end A275340

/-! ## A275340.P7645306688760733922

`A020725(A113502(n+1))`
-/

namespace A275340.P7645306688760733922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A113502 (n + 1)).toNat

end

end A275340.P7645306688760733922

namespace A275340

/-- `A020725(A113502(n+1))` -/
def P7645306688760733922.Spec : Prop :=
  ∀ n, P7645306688760733922.a n = A275340 (n + 1)

end A275340

/-! ## A275340.P7841530079329597924

`lt[1, A133565(2*n+1)]+1`
-/

namespace A275340.P7841530079329597924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133565 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A275340.P7841530079329597924

namespace A275340

/-- `lt[1, A133565(2*n+1)]+1` -/
def P7841530079329597924.Spec : Prop :=
  ∀ n, (P7841530079329597924.a n : ℤ) = A275340 (n + 1)

end A275340

/-! ## A275340.P10446542524061507287

`A060681(A088723(n+1)-2)+2`
-/

namespace A275340.P10446542524061507287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A088723 (n + 1) - 2).toNat + 2

end

end A275340.P10446542524061507287

namespace A275340

/-- `A060681(A088723(n+1)-2)+2` -/
def P10446542524061507287.Spec : Prop :=
  ∀ n, P10446542524061507287.a n = A275340 (n + 1)

end A275340

/-! ## A275340.P8536239241805591891

`lt[0, A088722(2*(n+1))]+2`
-/

namespace A275340.P8536239241805591891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A275340.P8536239241805591891

namespace A275340

/-- `lt[0, A088722(2*(n+1))]+2` -/
def P8536239241805591891.Spec : Prop :=
  ∀ n, (P8536239241805591891.a n : ℤ) = A275340 (n + 1)

end A275340

/-! ## A275340.P4397296196827955505

`lt[1, A129308(2*(n+1))]+2`
-/

namespace A275340.P4397296196827955505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A275340.P4397296196827955505

namespace A275340

/-- `lt[1, A129308(2*(n+1))]+2` -/
def P4397296196827955505.Spec : Prop :=
  ∀ n, (P4397296196827955505.a n : ℤ) = A275340 (n + 1)

end A275340

/-! ## A275340.P2192072258848691216

`lt[2, A132747(2*(n+1))]+2`
-/

namespace A275340.P2192072258848691216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A275340.P2192072258848691216

namespace A275340

/-- `lt[2, A132747(2*(n+1))]+2` -/
def P2192072258848691216.Spec : Prop :=
  ∀ n, (P2192072258848691216.a n : ℤ) = A275340 (n + 1)

end A275340

/-! ## A275340.P10030832624159787675

`lt[2, A195155(2*(n+1))]+2`
-/

namespace A275340.P10030832624159787675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195155 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A275340.P10030832624159787675

namespace A275340

/-- `lt[2, A195155(2*(n+1))]+2` -/
def P10030832624159787675.Spec : Prop :=
  ∀ n, (P10030832624159787675.a n : ℤ) = A275340 (n + 1)

end A275340

/-! ## A275340.P14962454307541814395

`A008619(A088723(n+1))`
-/

namespace A275340.P14962454307541814395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A088723 (n + 1)).toNat

end

end A275340.P14962454307541814395

namespace A275340

/-- `A008619(A088723(n+1))` -/
def P14962454307541814395.Spec : Prop :=
  ∀ n, P14962454307541814395.a n = A275340 (n + 1)

end A275340

/-! ## A275340.P14118158977334735295

`A060681(A088723(n+1)+2)`
-/

namespace A275340.P14118158977334735295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A088723 (n + 1) + 2).toNat

end

end A275340.P14118158977334735295

namespace A275340

/-- `A060681(A088723(n+1)+2)` -/
def P14118158977334735295.Spec : Prop :=
  ∀ n, P14118158977334735295.a n = A275340 (n + 1)

end A275340

/-! ## A275340.P16309755723864633553

`val(A016116(lt[3, A132748(n+1)]), 2)+2`
-/

namespace A275340.P16309755723864633553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132748 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016116 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)).toNat 2 + 2

end

end A275340.P16309755723864633553

namespace A275340

/-- `val(A016116(lt[3, A132748(n+1)]), 2)+2` -/
def P16309755723864633553.Spec : Prop :=
  ∀ n, (P16309755723864633553.a n : ℤ) = A275340 (n + 1)

end A275340

/-!
# A275341: Positions of ones in A275737.

The programs for A275341, there is no canonical definition to state claims against.
-/

/-! ## A275341.P10400504112751286774

`filter[n+1, A275737(#)]`
-/

namespace A275341.P10400504112751286774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A275737 (f1 j) = 1) n)

end

end A275341.P10400504112751286774

/-! ## A275341.P13098287845837422742

`eq[1, A275737(n+1)]+1`
-/

namespace A275341.P13098287845837422742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275737 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A275341.P13098287845837422742

/-! ## A275341.P12664432657893220466

`record[A000027(n+1)*A275737(n+1)]`
-/

namespace A275341.P12664432657893220466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A275737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275341.P12664432657893220466

/-! ## A275341.P16875252443239347995

`record[((n+1)*A275737(n+1))%A002410(n+1)]`
-/

namespace A275341.P16875252443239347995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A275737 (n + 1)) (A002410 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275341.P16875252443239347995

/-! ## A275341.P11601272267717995457

`record[A008619(n)*A275737(A008619(n))]`
-/

namespace A275341.P11601272267717995457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A275737 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275341.P11601272267717995457

/-! ## A275341.P2171565956895881655

`record[A065033(n)*A275737(A065033(n))]`
-/

namespace A275341.P2171565956895881655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A275737 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275341.P2171565956895881655

/-! ## A275341.P15197663085933612488

`record[A008620(n)*A275737(A008620(n))]`
-/

namespace A275341.P15197663085933612488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A275737 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275341.P15197663085933612488

/-!
# A275342: 2-adic valuation of iterated triangular numbers, starting with 2.

The programs for A275342, there is no canonical definition to state claims against.
-/

/-! ## A275342.P4090196110508615424

`A049581(A185914(2*n+1)%A120901(n+3))`
-/

namespace A275342.P4090196110508615424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (Int.tmod (A185914 (2 * n + 1)) (A120901 (n + 3))).toNat

end

end A275342.P4090196110508615424

/-! ## A275342.P17804061349152823694

`and(A353316(3*n+4), A353490(n+1))`
-/

namespace A275342.P17804061349152823694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A353316 (3 * n + 4)) (A353490 (n + 1))

end

end A275342.P17804061349152823694

/-! ## A275342.P13816648513608387430

`and(val(n+1, 2)+1, A043309(A049057(n+2)))`
-/

namespace A275342.P13816648513608387430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) (A043309 (A049057 (n + 2)).toNat)

end

end A275342.P13816648513608387430

/-! ## A275342.P7736653755723073214

`and(A000034(n), A049773(A001037(n)))`
-/

namespace A275342.P7736653755723073214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 n) (A049773 (A001037 n).toNat)

end

end A275342.P7736653755723073214

/-! ## A275342.P11115763603100640315

`and(A000034(n), A178085(A008794(n)))`
-/

namespace A275342.P11115763603100640315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 n) (A178085 (A008794 n).toNat)

end

end A275342.P11115763603100640315

/-!
# A275344: Number of ordered ways to write n as x^2 + y^2 + z^2 + 2*w^2 with x + 2*y + 3*z a square, where x,y,z,w are nonnegative integers.

The programs for A275344, there is no canonical definition to state claims against.
-/

/-! ## A275344.P3511811473981682542

`A001222(A164958(3*n+5)-12)`
-/

namespace A275344.P3511811473981682542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A164958 (3 * n + 5) - 12).toNat

end

end A275344.P3511811473981682542

/-! ## A275344.P3647328210179565584

`A036225(∑[A245794(n)+A017329(n)])`
-/

namespace A275344.P3647328210179565584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245794 n + A017329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A275344.P3647328210179565584

/-! ## A275344.P11485339311544500913

`gcd(A030141(A020753(n+1)), A315175(n))`
-/

namespace A275344.P11485339311544500913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030141 (A020753 (n + 1)).toNat) (A315175 n)

end

end A275344.P11485339311544500913

/-! ## A275344.P10287361281051471496

`A046951(A291154(n+1)+A268781(n+1))`
-/

namespace A275344.P10287361281051471496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A291154 (n + 1) + A268781 (n + 1)).toNat

end

end A275344.P10287361281051471496

/-! ## A275344.P2861294525521355439

`gcd(A189567(A306408(n+1)), A306396(n+1))`
-/

namespace A275344.P2861294525521355439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A189567 (A306408 (n + 1)).toNat) (A306396 (n + 1))

end

end A275344.P2861294525521355439

/-!
# A275346: In Go, minimum total number of liberties player 1 (black) can have on a standard 19 X 19 board after n moves when no player passes a move, with no repeating game positions allowed.

The programs for A275346, there is no canonical definition to state claims against.
-/

/-! ## A275346.P8137297412961842951

`abs(floor(cos(3)^(n-3)))`
-/

namespace A275346.P8137297412961842951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.cos (3 : ℝ) ^ ((n : ℤ) - 3 : ℤ)⌋|

end

end A275346.P8137297412961842951

/-!
# A275347: Number of nX3 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-2) and new values introduced in order 0..2.

The programs for A275347, there is no canonical definition to state claims against.
-/

/-! ## A275347.P6158412415747247019

`A275352(∑[n+3]+1)`
-/

namespace A275347.P6158412415747247019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275347.P6158412415747247019

/-! ## A275347.P336144523455844155

`record[A275352(A198464(n+1))]`
-/

namespace A275347.P336144523455844155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275347.P336144523455844155

/-!
# A275348: Number of nX4 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-2) and new values introduced in order 0..2.

The programs for A275348, there is no canonical definition to state claims against.
-/

/-! ## A275348.P3844676790290050704

`A275352(A141214(n+1))`
-/

namespace A275348.P3844676790290050704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A141214 (n + 1)).toNat

end

end A275348.P3844676790290050704

/-! ## A275348.P11133891901385892184

`A275352(A055998(n+2))`
-/

namespace A275348.P11133891901385892184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A055998 (n + 2)).toNat

end

end A275348.P11133891901385892184

/-! ## A275348.P14264802860335429922

`A275352(A155212(n)+5)`
-/

namespace A275348.P14264802860335429922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A155212 n + 5).toNat

end

end A275348.P14264802860335429922

/-! ## A275348.P17119451854821911696

`A275352(A056000(n)+7)`
-/

namespace A275348.P17119451854821911696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A056000 n + 7).toNat

end

end A275348.P17119451854821911696

/-! ## A275348.P376397558054685276

`A275352(eq[3, A193592(n)])`
-/

namespace A275348.P376397558054685276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275348.P376397558054685276

/-!
# A275349: Number of nX5 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-2) and new values introduced in order 0..2.

The programs for A275349, there is no canonical definition to state claims against.
-/

/-! ## A275349.P3348599512320106546

`A275352(Δ[A264443(n)])`
-/

namespace A275349.P3348599512320106546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (f1 (n + 1) - f1 n).toNat

end

end A275349.P3348599512320106546

/-! ## A275349.P13592768796861929161

`A275352(eq[2, A092921(n)])`
-/

namespace A275349.P13592768796861929161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275349.P13592768796861929161

/-! ## A275349.P8440041732026788729

`A275352(eq[4, A193592(n)])`
-/

namespace A275349.P8440041732026788729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275349.P8440041732026788729

/-! ## A275349.P10241620995564849511

`A275352(Δ[A023545(n+1)])`
-/

namespace A275349.P10241620995564849511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (f1 (n + 1) - f1 n).toNat

end

end A275349.P10241620995564849511

/-! ## A275349.P2225867251210604846

`A275352(eq[5, A200370(n+1)])`
-/

namespace A275349.P2225867251210604846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275349.P2225867251210604846

/-!
# A275350: Number of nX6 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-2) and new values introduced in order 0..2.

The programs for A275350, there is no canonical definition to state claims against.
-/

/-! ## A275350.P14644586411098348016

`A275352(eq[3, A219347(n)])`
-/

namespace A275350.P14644586411098348016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275350.P14644586411098348016

/-! ## A275350.P16141736410819452527

`A275352(eq[5, A193592(n)])`
-/

namespace A275350.P16141736410819452527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275350.P16141736410819452527

/-! ## A275350.P936815333310140473

`A275352(A046691(n+4)-1)`
-/

namespace A275350.P936815333310140473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A046691 (n + 4) - 1).toNat

end

end A275350.P936815333310140473

/-! ## A275350.P9569576878594001418

`A275352(A000124(n+6)-6)`
-/

namespace A275350.P9569576878594001418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A000124 (n + 6) - 6).toNat

end

end A275350.P9569576878594001418

/-! ## A275350.P6994185609007566859

`A275352(eq[6, A200370(n+1)])`
-/

namespace A275350.P6994185609007566859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275350.P6994185609007566859

/-!
# A275351: Number of nX7 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-2) and new values introduced in order 0..2.

The programs for A275351, there is no canonical definition to state claims against.
-/

/-! ## A275351.P3322520133996680975

`A275352(eq[4, A219347(n)])`
-/

namespace A275351.P3322520133996680975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275351.P3322520133996680975

/-! ## A275351.P16870280729387082974

`A275352(eq[6, A193592(n)])`
-/

namespace A275351.P16870280729387082974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275351.P16870280729387082974

/-! ## A275351.P13447253530096467997

`A275352(A141214(n+4)-3)`
-/

namespace A275351.P13447253530096467997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A141214 (n + 4) - 3).toNat

end

end A275351.P13447253530096467997

/-! ## A275351.P6579975512668567336

`A275352(A000096(n+6)-5)`
-/

namespace A275351.P6579975512668567336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A000096 (n + 6) - 5).toNat

end

end A275351.P6579975512668567336

/-! ## A275351.P8019611148122853969

`A275352(eq[7, A200370(n+1)])`
-/

namespace A275351.P8019611148122853969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275351.P8019611148122853969

/-!
# A275353: Number of 3Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-2) and new values introduced in order 0..2.

The programs for A275353, there is no canonical definition to state claims against.
-/

/-! ## A275353.P12228617957027913184

`A275352(∑[n+2]+4)`
-/

namespace A275353.P12228617957027913184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A275353.P12228617957027913184

/-! ## A275353.P4506084621087362041

`A275352(A167614(n+1))%(8*10^n-1)`
-/

namespace A275353.P4506084621087362041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275352 (A167614 (n + 1)).toNat) ((8 * 10 ^ n : ℤ) - 1)

end

end A275353.P4506084621087362041

/-! ## A275353.P2746316722322598473

`A275352(A167614(n+1))+A185284(n)`
-/

namespace A275353.P2746316722322598473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A167614 (n + 1)).toNat + A185284 n

end

end A275353.P2746316722322598473

/-! ## A275353.P1636215931414903876

`A015928(n)*A275352(A167614(n+1))`
-/

namespace A275353.P1636215931414903876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015928 n * A275352 (A167614 (n + 1)).toNat

end

end A275353.P1636215931414903876

/-! ## A275353.P3721236260930406602

`lcm(A001316(n), A275352(A167614(n+1)))`
-/

namespace A275353.P3721236260930406602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n) (A275352 (A167614 (n + 1)).toNat)

end

end A275353.P3721236260930406602

/-!
# A275354: Number of 4Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-2) and new values introduced in order 0..2.

The programs for A275354, there is no canonical definition to state claims against.
-/

/-! ## A275354.P14471038466937499642

`A275352(A141214(n)+7)`
-/

namespace A275354.P14471038466937499642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A141214 n + 7).toNat

end

end A275354.P14471038466937499642

/-! ## A275354.P14634751679700419859

`A275352(A052905(n)+9)`
-/

namespace A275354.P14634751679700419859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A052905 n + 9).toNat

end

end A275354.P14634751679700419859

/-! ## A275354.P7094813495179440555

`A275352(A055999(n)+10)`
-/

namespace A275354.P7094813495179440555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A055999 n + 10).toNat

end

end A275354.P7094813495179440555

/-! ## A275354.P6286844279724091159

`A275352(A167614(n+2)+1)`
-/

namespace A275354.P6286844279724091159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A167614 (n + 2) + 1).toNat

end

end A275354.P6286844279724091159

/-! ## A275354.P1253021673548100789

`A275352(A166136(n+2)-2)`
-/

namespace A275354.P1253021673548100789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A166136 (n + 2) - 2).toNat

end

end A275354.P1253021673548100789

/-!
# A275355: Number of 5Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-2) and new values introduced in order 0..2.

The programs for A275355, there is no canonical definition to state claims against.
-/

/-! ## A275355.P1043310621357467524

`A275352(A167499(n+3))`
-/

namespace A275355.P1043310621357467524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A167499 (n + 3)).toNat

end

end A275355.P1043310621357467524

/-! ## A275355.P17804213510935974787

`A275352(A141214(n+1)+8)`
-/

namespace A275355.P17804213510935974787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A141214 (n + 1) + 8).toNat

end

end A275355.P17804213510935974787

/-! ## A275355.P8053365320503256368

`A275352(A055998(n+2)+8)`
-/

namespace A275355.P8053365320503256368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A055998 (n + 2) + 8).toNat

end

end A275355.P8053365320503256368

/-! ## A275355.P3774098270476166584

`A275352(eq[6, A131818(n+1)])`
-/

namespace A275355.P3774098270476166584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275355.P3774098270476166584

/-! ## A275355.P9243681524979555113

`A275352(A000124(n+5)-(n+1))`
-/

namespace A275355.P9243681524979555113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A275355.P9243681524979555113

/-!
# A275356: Number of 6Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-2) and new values introduced in order 0..2.

The programs for A275356, there is no canonical definition to state claims against.
-/

/-! ## A275356.P8448364488753737342

`A275352(A000124(n+5)+5)`
-/

namespace A275356.P8448364488753737342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A000124 (n + 5) + 5).toNat

end

end A275356.P8448364488753737342

/-! ## A275356.P15351799531813138314

`A275352(A141214(n+2)+9)`
-/

namespace A275356.P15351799531813138314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A141214 (n + 2) + 9).toNat

end

end A275356.P15351799531813138314

/-! ## A275356.P14773152520599925876

`A275352(A055998(n+3)+9)`
-/

namespace A275356.P14773152520599925876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A055998 (n + 3) + 9).toNat

end

end A275356.P14773152520599925876

/-! ## A275356.P11596728167217018789

`A275352(eq[5, A002262(n)]+1)`
-/

namespace A275356.P11596728167217018789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A275356.P11596728167217018789

/-! ## A275356.P6223050171552992953

`A275352(eq[7, A131818(n+1)])`
-/

namespace A275356.P6223050171552992953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275356.P6223050171552992953

/-!
# A275357: Number of 7Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-2) and new values introduced in order 0..2.

The programs for A275357, there is no canonical definition to state claims against.
-/

/-! ## A275357.P12646232652891745250

`A275352(A167487(n+5))`
-/

namespace A275357.P12646232652891745250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A167487 (n + 5)).toNat

end

end A275357.P12646232652891745250

/-! ## A275357.P9126034188931214223

`A275352(eq[11, A066657(n)])`
-/

namespace A275357.P9126034188931214223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275357.P9126034188931214223

/-! ## A275357.P5950060073719055043

`A275352(A166136(n+5)+1)`
-/

namespace A275357.P5950060073719055043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A166136 (n + 5) + 1).toNat

end

end A275357.P5950060073719055043

/-! ## A275357.P6690159455285468999

`A275352(eq[6, A002262(n)]+1)`
-/

namespace A275357.P6690159455285468999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A275357.P6690159455285468999

/-! ## A275357.P1291449030492484956

`A275352(eq[8, A131818(n+1)])`
-/

namespace A275357.P1291449030492484956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275357.P1291449030492484956

/-!
# A275358: The difference between A089580(n) and A089579(n).

The programs for A275358, there is no canonical definition to state claims against.
-/

/-! ## A275358.P6715999653275790498

`A089580(n+1)-A089579(n+1)`
-/

namespace A275358.P6715999653275790498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089580 (n + 1) - A089579 (n + 1)

end

end A275358.P6715999653275790498

/-! ## A275358.P16918234532838074727

`∑[A060298(n+1)]-A089579(n+1)`
-/

namespace A275358.P16918234532838074727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A089579 (n + 1)

end

end A275358.P16918234532838074727

/-! ## A275358.P11577582107532404008

`A089580(n+1)%record[A089579(A106466(n))]`
-/

namespace A275358.P11577582107532404008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089579 (A106466 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089580 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A275358.P11577582107532404008

/-! ## A275358.P972425137294613961

`record[A089580(A137734(n))]%A089579(n+1)`
-/

namespace A275358.P972425137294613961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089580 (A137734 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A089579 (n + 1))

end

end A275358.P972425137294613961

/-! ## A275358.P13356293642694756583

`record[A089580(A293428(n))]%A089579(n+1)`
-/

namespace A275358.P13356293642694756583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089580 (A293428 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A089579 (n + 1))

end

end A275358.P13356293642694756583

/-!
# A275359: Maximum incarceration of numbers in an n X n X n number cubes with full incarceration volumes.

The programs for A275359, there is no canonical definition to state claims against.
-/

/-! ## A275359.P8825557282748478711

`A185636(A003517(n+4))*A308910(3*n)`
-/

namespace A275359.P8825557282748478711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185636 (A003517 (n + 4)).toNat * A308910 (3 * n)

end

end A275359.P8825557282748478711

/-!
# A275363: a(1)=3, a(2)=6, a(3)=3; thereafter a(n) = a(n-a(n-1)) + a(n-1-a(n-2)).

The programs for A275363, the canonical program `A275363.P10621551696049968393` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275363 has offset 1).

The definition of A275363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275363.P10621551696049968393

`2*a(n-3)-a(n-6)` with `a(0)=3, a(1)=6, a(2)=3, a(3)=3, a(4)=9, a(5)=6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275363

/-- `2*a(n-3)-a(n-6)` -/
def P10621551696049968393.Spec : Prop :=
  ∀ n, P10621551696049968393.a n = A275363 (n + 1)

theorem P10621551696049968393.correct : P10621551696049968393.Spec := by
  intro n
  simp only [A275363, Nat.add_sub_cancel]

end A275363

/-! ## A275363.P2939898026020665205

`3*(abs(A131358(n))+1)`
-/

namespace A275363.P2939898026020665205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (|A131358 n| + 1)

end

end A275363.P2939898026020665205

namespace A275363

/-- `3*(abs(A131358(n))+1)` -/
def P2939898026020665205.Spec : Prop :=
  ∀ n, P2939898026020665205.a n = A275363 (n + 1)

end A275363

/-! ## A275363.P16298885211134749617

`3*(A087509(n)+(n+1)%3)`
-/

namespace A275363.P16298885211134749617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A087509 n + (((n + 1) % 3 : ℕ) : ℤ))

end

end A275363.P16298885211134749617

namespace A275363

/-- `3*(A087509(n)+(n+1)%3)` -/
def P16298885211134749617.Spec : Prop :=
  ∀ n, P16298885211134749617.a n = A275363 (n + 1)

end A275363

/-! ## A275363.P18350219373479518360

`3*A008611(A244477(n+1)+1)`
-/

namespace A275363.P18350219373479518360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008611 (A244477 (n + 1) + 1).toNat

end

end A275363.P18350219373479518360

namespace A275363

/-- `3*A008611(A244477(n+1)+1)` -/
def P18350219373479518360.Spec : Prop :=
  ∀ n, P18350219373479518360.a n = A275363 (n + 1)

end A275363

/-! ## A275363.P13954107298186693985

`A244477(n+1)+A010875(A008586(n))`
-/

namespace A275363.P13954107298186693985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (n + 1) + A010875 (A008586 n).toNat

end

end A275363.P13954107298186693985

namespace A275363

/-- `A244477(n+1)+A010875(A008586(n))` -/
def P13954107298186693985.Spec : Prop :=
  ∀ n, P13954107298186693985.a n = A275363 (n + 1)

end A275363

/-! ## A275363.P7985497094742837168

`A244477(n+1)+A010875(2*A244477(n+1))`
-/

namespace A275363.P7985497094742837168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (n + 1) + A010875 (2 * A244477 (n + 1)).toNat

end

end A275363.P7985497094742837168

namespace A275363

/-- `A244477(n+1)+A010875(2*A244477(n+1))` -/
def P7985497094742837168.Spec : Prop :=
  ∀ n, P7985497094742837168.a n = A275363 (n + 1)

end A275363

/-! ## A275363.P4481757972007400246

`3*(Δ[A004652(A004523(n))]+1)`
-/

namespace A275363.P4481757972007400246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A004523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n + 1)

end

end A275363.P4481757972007400246

namespace A275363

/-- `3*(Δ[A004652(A004523(n))]+1)` -/
def P4481757972007400246.Spec : Prop :=
  ∀ n, P4481757972007400246.a n = A275363 (n + 1)

end A275363

/-! ## A275363.P16078273907852554619

`A284429(A284429(n+2)+1)+A244477(n+1)-1`
-/

namespace A275363.P16078273907852554619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284429 (A284429 (n + 2) + 1).toNat + (A244477 (n + 1) - 1)

end

end A275363.P16078273907852554619

namespace A275363

/-- `A284429(A284429(n+2)+1)+A244477(n+1)-1` -/
def P16078273907852554619.Spec : Prop :=
  ∀ n, P16078273907852554619.a n = A275363 (n + 1)

end A275363

/-! ## A275363.P10796045909625794817

`A008486(A008620(2*n+1)-A186731(n))`
-/

namespace A275363.P10796045909625794817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A008620 (2 * n + 1) - A186731 n).toNat

end

end A275363.P10796045909625794817

namespace A275363

/-- `A008486(A008620(2*n+1)-A186731(n))` -/
def P10796045909625794817.Spec : Prop :=
  ∀ n, P10796045909625794817.a n = A275363 (n + 1)

end A275363

/-! ## A275363.P1545756673161255911

`A244477(n+1)+Δ[A085801(2*n+1)]`
-/

namespace A275363.P1545756673161255911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085801 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (n + 1) + (f1 (n + 1) - f1 n)

end

end A275363.P1545756673161255911

namespace A275363

/-- `A244477(n+1)+Δ[A085801(2*n+1)]` -/
def P1545756673161255911.Spec : Prop :=
  ∀ n, P1545756673161255911.a n = A275363 (n + 1)

end A275363

/-! ## A275363.P3831136583247637597

`A004525(12*n+6-A315823(2*n))`
-/

namespace A275363.P3831136583247637597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((12 * n + 6 : ℤ) - A315823 (2 * n)).toNat

end

end A275363.P3831136583247637597

namespace A275363

/-- `A004525(12*n+6-A315823(2*n))` -/
def P3831136583247637597.Spec : Prop :=
  ∀ n, P3831136583247637597.a n = A275363 (n + 1)

end A275363

/-! ## A275363.P13631818380065006350

`6*n+3+A008486(2*n)-A316071(2*n)`
-/

namespace A275363.P13631818380065006350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) + (A008486 (2 * n) - A316071 (2 * n))

end

end A275363.P13631818380065006350

namespace A275363

/-- `6*n+3+A008486(2*n)-A316071(2*n)` -/
def P13631818380065006350.Spec : Prop :=
  ∀ n, P13631818380065006350.a n = A275363 (n + 1)

end A275363

/-! ## A275363.P2552413175744079479

`A264756(A283878(11*n+12)+A244477(n+1)+1)`
-/

namespace A275363.P2552413175744079479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264756 (A283878 (11 * n + 12) + A244477 (n + 1) + 1).toNat

end

end A275363.P2552413175744079479

namespace A275363

/-- `A264756(A283878(11*n+12)+A244477(n+1)+1)` -/
def P2552413175744079479.Spec : Prop :=
  ∀ n, P2552413175744079479.a n = A275363 (n + 1)

end A275363

/-! ## A275363.P16584027881046816277

`A008486(2*n+1)-A004526(A315823(2*n))`
-/

namespace A275363.P16584027881046816277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n + 1) - A004526 (A315823 (2 * n)).toNat

end

end A275363.P16584027881046816277

namespace A275363

/-- `A008486(2*n+1)-A004526(A315823(2*n))` -/
def P16584027881046816277.Spec : Prop :=
  ∀ n, P16584027881046816277.a n = A275363 (n + 1)

end A275363

/-!
# A275365: a(1)=2, a(2)=2; thereafter a(n) = a(n-a(n-1)) + a(n-a(n-2)).

The programs for A275365, the canonical program `A275365.P4598299939651935184` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275365 has offset 0).

The definition of A275365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))` (program `A275365.P4598299939651935184`, by `A275365.P4598299939651935184.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275365.P4893378921595282983

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=2, a(3)=4, a(4)=2`
-/

namespace A275365.P4893378921595282983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2, 4, 2] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A275365.P4893378921595282983

namespace A275365

/-- `2*a(n-2)-a(n-4)` -/
def P4893378921595282983.Spec : Prop :=
  ∀ n, P4893378921595282983.a n = A275365 n

end A275365

/-! ## A275365.P4598299939651935184

`a(n-a(n-1))+a(n-a(n-2))` with `a(0)=0, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275365

/-- `a(n-a(n-1))+a(n-a(n-2))` -/
def P4598299939651935184.Spec : Prop :=
  ∀ n, (P4598299939651935184.a n : ℤ) = A275365 n

theorem P4598299939651935184.correct : P4598299939651935184.Spec := by
  intro n
  simp only [A275365]

end A275365

/-! ## A275365.P5903521273829241034

`2*∑[xor(1, n)]%(n+1)`
-/

namespace A275365.P5903521273829241034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A275365.P5903521273829241034

namespace A275365

/-- `2*∑[xor(1, n)]%(n+1)` -/
def P5903521273829241034.Spec : Prop :=
  ∀ n, (P5903521273829241034.a n : ℤ) = A275365 n

end A275365

/-! ## A275365.P577736324694382501

`(gcd(2, n)²+n)%(n+2)`
-/

namespace A275365.P577736324694382501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 + n) % (n + 2)

end

end A275365.P577736324694382501

namespace A275365

/-- `(gcd(2, n)²+n)%(n+2)` -/
def P577736324694382501.Spec : Prop :=
  ∀ n, (P577736324694382501.a n : ℤ) = A275365 n

end A275365

/-! ## A275365.P15810275987892911608

`(lcm(2, n+5)-4)%(n+2)`
-/

namespace A275365.P15810275987892911608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.lcm 2 (n + 5) : ℤ) - 4) (n + 2 : ℤ)

end

end A275365.P15810275987892911608

namespace A275365

/-- `(lcm(2, n+5)-4)%(n+2)` -/
def P15810275987892911608.Spec : Prop :=
  ∀ n, P15810275987892911608.a n = A275365 n

end A275365

/-! ## A275365.P8237911873221042470

`a(n-a(n-1))+2` with `a(0)=0, a(1)=2`
-/

namespace A275365.P8237911873221042470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - a (n - 1)) + 2

end

end A275365.P8237911873221042470

namespace A275365

/-- `a(n-a(n-1))+2` -/
def P8237911873221042470.Spec : Prop :=
  ∀ n, (P8237911873221042470.a n : ℤ) = A275365 n

end A275365

/-! ## A275365.P15646678154726073657

`xor(1, n+2)%or(1, n+1)`
-/

namespace A275365.P15646678154726073657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 2) % Nat.lor 1 (n + 1)

end

end A275365.P15646678154726073657

namespace A275365

/-- `xor(1, n+2)%or(1, n+1)` -/
def P15646678154726073657.Spec : Prop :=
  ∀ n, (P15646678154726073657.a n : ℤ) = A275365 n

end A275365

/-! ## A275365.P5997955862303687244

`2*ceil(n/a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A275365.P5997955862303687244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * ⌈(n : ℚ) / (a (n - 1) : ℚ)⌉

end

end A275365.P5997955862303687244

namespace A275365

/-- `2*ceil(n/a(n-1))` -/
def P5997955862303687244.Spec : Prop :=
  ∀ n, P5997955862303687244.a n = A275365 n

end A275365

/-! ## A275365.P11573307985749445288

`2*round(n/a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A275365.P11573307985749445288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * SequenceMachineLib.roundAway ((n : ℚ) / (a (n - 1) : ℚ))

end

end A275365.P11573307985749445288

namespace A275365

/-- `2*round(n/a(n-1))` -/
def P11573307985749445288.Spec : Prop :=
  ∀ n, P11573307985749445288.a n = A275365 n

end A275365

/-! ## A275365.P14773847304519134486

`(gcd(4, n%2)+n)%(n+2)`
-/

namespace A275365.P14773847304519134486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (n % 2) + n) % (n + 2)

end

end A275365.P14773847304519134486

namespace A275365

/-- `(gcd(4, n%2)+n)%(n+2)` -/
def P14773847304519134486.Spec : Prop :=
  ∀ n, (P14773847304519134486.a n : ℤ) = A275365 n

end A275365

/-! ## A275365.P12135348686852261570

`n+1-(n-1)*(n-1)%2`
-/

namespace A275365.P12135348686852261570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((n : ℤ) - 1) * Int.tmod ((n : ℤ) - 1) 2

end

end A275365.P12135348686852261570

namespace A275365

/-- `n+1-(n-1)*(n-1)%2` -/
def P12135348686852261570.Spec : Prop :=
  ∀ n, P12135348686852261570.a n = A275365 n

end A275365

/-! ## A275365.P17814574422274478304

`n+1-lcm(1-n, and(1, n+1))`
-/

namespace A275365.P17814574422274478304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.lcm (1 - (n : ℤ)) (Nat.land 1 (n + 1) : ℤ) : ℤ)

end

end A275365.P17814574422274478304

namespace A275365

/-- `n+1-lcm(1-n, and(1, n+1))` -/
def P17814574422274478304.Spec : Prop :=
  ∀ n, P17814574422274478304.a n = A275365 n

end A275365

/-! ## A275365.P17203201266523583631

`n-or(a(n-1)-n, n-2)` with `a(0)=0`
-/

namespace A275365.P17203201266523583631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - Int.lor (a (n - 1) - (n : ℤ)) ((n : ℤ) - 2)

end

end A275365.P17203201266523583631

namespace A275365

/-- `n-or(a(n-1)-n, n-2)` -/
def P17203201266523583631.Spec : Prop :=
  ∀ n, P17203201266523583631.a n = A275365 n

end A275365

/-! ## A275365.P5565864990168199957

`1-((-1)^n-a(n-2))` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A275365.P5565864990168199957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  1 - ((-1) ^ n - a (n - 2))

end

end A275365.P5565864990168199957

namespace A275365

/-- `1-((-1)^n-a(n-2))` -/
def P5565864990168199957.Spec : Prop :=
  ∀ n, P5565864990168199957.a n = A275365 n

end A275365

/-! ## A275365.P14711426327387105842

`2-(2-n)%2*a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A275365.P14711426327387105842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 - Int.tmod (2 - (n : ℤ)) 2 * a (n - 2)

end

end A275365.P14711426327387105842

namespace A275365

/-- `2-(2-n)%2*a(n-2)` -/
def P14711426327387105842.Spec : Prop :=
  ∀ n, P14711426327387105842.a n = A275365 n

end A275365

/-! ## A275365.P1610521208122451830

`∑[2*and(1, n)-a(n-1)]` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A275365.P1610521208122451830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0] fun n f1 =>
  (2 * Nat.land 1 n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275365.P1610521208122451830

namespace A275365

/-- `∑[2*and(1, n)-a(n-1)]` -/
def P1610521208122451830.Spec : Prop :=
  ∀ n, P1610521208122451830.a n = A275365 n

end A275365

/-! ## A275365.P9803446427948424699

`n+1-abs((n-1)*and(1, n+1))`
-/

namespace A275365.P9803446427948424699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - |((n : ℤ) - 1) * (Nat.land 1 (n + 1) : ℤ)|

end

end A275365.P9803446427948424699

namespace A275365

/-- `n+1-abs((n-1)*and(1, n+1))` -/
def P9803446427948424699.Spec : Prop :=
  ∀ n, P9803446427948424699.a n = A275365 n

end A275365

/-! ## A275365.P11490340301686634493

`2*(∑[n]+(n+1)%2)%(n+1)`
-/

namespace A275365.P11490340301686634493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) % 2) % (n + 1))

end

end A275365.P11490340301686634493

namespace A275365

/-- `2*(∑[n]+(n+1)%2)%(n+1)` -/
def P11490340301686634493.Spec : Prop :=
  ∀ n, (P11490340301686634493.a n : ℤ) = A275365 n

end A275365

/-! ## A275365.P13438883662505990409

`2*(1-floor((a(n-1)-n)/2))` with `a(0)=0, a(1)=2`
-/

namespace A275365.P13438883662505990409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * (1 - ⌊(a (n - 1) - (n : ℤ) : ℚ) / 2⌋)

end

end A275365.P13438883662505990409

namespace A275365

/-- `2*(1-floor((a(n-1)-n)/2))` -/
def P13438883662505990409.Spec : Prop :=
  ∀ n, P13438883662505990409.a n = A275365 n

end A275365

/-! ## A275365.P3842233682994697410

`1-n/((n-2)%2-a(n-1))` with `a(0)=0`
-/

namespace A275365.P3842233682994697410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  1 - (n : ℚ) / ((Int.tmod ((n : ℤ) - 2) 2 : ℚ) - a (n - 1))

end

end A275365.P3842233682994697410

namespace A275365

/-- `1-n/((n-2)%2-a(n-1))` -/
def P3842233682994697410.Spec : Prop :=
  ∀ n, P3842233682994697410.a n = (A275365 n : ℚ)

end A275365

/-!
# A275366: Nearest integer to 1/erfc(n/sqrt(2)).

The programs for A275366, there is no canonical definition to state claims against.
-/

/-! ## A275366.P1682932862783510096

`A353354(A320349(n))+A353321(n)`
-/

namespace A275366.P1682932862783510096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (A320349 n).toNat + A353321 n

end

end A275366.P1682932862783510096

/-! ## A275366.P14970978756012817835

`A353321(n)+A353307(A000364(n))`
-/

namespace A275366.P14970978756012817835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353321 n + A353307 (A000364 n).toNat

end

end A275366.P14970978756012817835

/-!
# A275367: Number of odd divisors of n^2.

The programs for A275367, the canonical program `A275367.P11593078130365677386` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275367 has offset 1).

The definition of A275367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275367.P11593078130365677386

`A000005(2*(n+1)²)-A000005((n+1)²)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A275367

/-- `A000005(2*(n+1)²)-A000005((n+1)²)` -/
def P11593078130365677386.Spec : Prop :=
  ∀ n, P11593078130365677386.a n = A275367 (n + 1)

theorem P11593078130365677386.correct : P11593078130365677386.Spec := by
  intro n
  simp only [A275367, Nat.add_sub_cancel]

end A275367

/-! ## A275367.P10468196629017112730

`A001227((n+1)²)`
-/

namespace A275367.P10468196629017112730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 ((n + 1) ^ 2)

end

end A275367.P10468196629017112730

namespace A275367

/-- `A001227((n+1)²)` -/
def P10468196629017112730.Spec : Prop :=
  ∀ n, P10468196629017112730.a n = A275367 (n + 1)

end A275367

/-! ## A275367.P1515860061866574661

`∏{e}[A336158(n+1)², #+1]`
-/

namespace A275367.P1515860061866574661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A275367.P1515860061866574661

namespace A275367

/-- `∏{e}[A336158(n+1)², #+1]` -/
def P1515860061866574661.Spec : Prop :=
  ∀ n, (P1515860061866574661.a n : ℤ) = A275367 (n + 1)

end A275367

/-! ## A275367.P4098477799891541183

`A048691((n+1)/2^val(n+1, 2))`
-/

namespace A275367.P4098477799891541183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A275367.P4098477799891541183

namespace A275367

/-- `A048691((n+1)/2^val(n+1, 2))` -/
def P4098477799891541183.Spec : Prop :=
  ∀ n, P4098477799891541183.a n = A275367 (n + 1)

end A275367

/-! ## A275367.P16125399763896933650

`A078644((n+1)/2^val(n+1, 2))`
-/

namespace A275367.P16125399763896933650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A275367.P16125399763896933650

namespace A275367

/-- `A078644((n+1)/2^val(n+1, 2))` -/
def P16125399763896933650.Spec : Prop :=
  ∀ n, P16125399763896933650.a n = A275367 (n + 1)

end A275367

/-! ## A275367.P11351363418407506108

`A048691(n+1)/(val((n+1)², 2)+1)`
-/

namespace A275367.P11351363418407506108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048691 (n + 1) : ℚ) / (SequenceMachineLib.valuation ((n + 1) ^ 2) 2 + 1 : ℚ)

end

end A275367.P11351363418407506108

namespace A275367

/-- `A048691(n+1)/(val((n+1)², 2)+1)` -/
def P11351363418407506108.Spec : Prop :=
  ∀ n, P11351363418407506108.a n = (A275367 (n + 1) : ℚ)

end A275367

/-! ## A275367.P7451501274684804985

`A048691((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A275367.P7451501274684804985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat

end

end A275367.P7451501274684804985

namespace A275367

/-- `A048691((n+1)/ceil(xor(n, n+1)/2))` -/
def P7451501274684804985.Spec : Prop :=
  ∀ n, P7451501274684804985.a n = A275367 (n + 1)

end A275367

/-! ## A275367.P10647605484525160819

`A048691((n+1)/round(xor(n, n+1)/2))`
-/

namespace A275367.P10647605484525160819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ))).toNat

end

end A275367.P10647605484525160819

namespace A275367

/-- `A048691((n+1)/round(xor(n, n+1)/2))` -/
def P10647605484525160819.Spec : Prop :=
  ∀ n, P10647605484525160819.a n = A275367 (n + 1)

end A275367

/-! ## A275367.P7816123947064144421

`A048691(A000265(n+1))`
-/

namespace A275367.P7816123947064144421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A000265 (n + 1)).toNat

end

end A275367.P7816123947064144421

namespace A275367

/-- `A048691(A000265(n+1))` -/
def P7816123947064144421.Spec : Prop :=
  ∀ n, P7816123947064144421.a n = A275367 (n + 1)

end A275367

/-! ## A275367.P10145591669122404513

`A048691(A064989(n+1))`
-/

namespace A275367.P10145591669122404513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A064989 (n + 1)).toNat

end

end A275367.P10145591669122404513

namespace A275367

/-- `A048691(A064989(n+1))` -/
def P10145591669122404513.Spec : Prop :=
  ∀ n, P10145591669122404513.a n = A275367 (n + 1)

end A275367

/-! ## A275367.P2475423015918341090

`A048691(A336158(n+1))`
-/

namespace A275367.P2475423015918341090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A336158 (n + 1)).toNat

end

end A275367.P2475423015918341090

namespace A275367

/-- `A048691(A336158(n+1))` -/
def P2475423015918341090.Spec : Prop :=
  ∀ n, P2475423015918341090.a n = A275367 (n + 1)

end A275367

/-! ## A275367.P4148360137837346426

`A307000(A000265(2*(n+1)))`
-/

namespace A275367.P4148360137837346426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307000 (A000265 (2 * (n + 1))).toNat

end

end A275367.P4148360137837346426

namespace A275367

/-- `A307000(A000265(2*(n+1)))` -/
def P4148360137837346426.Spec : Prop :=
  ∀ n, P4148360137837346426.a n = A275367 (n + 1)

end A275367

/-! ## A275367.P14136426103772705055

`A156688(n+1)/A085058(n)`
-/

namespace A275367.P14136426103772705055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156688 (n + 1) : ℚ) / (A085058 n : ℚ)

end

end A275367.P14136426103772705055

namespace A275367

/-- `A156688(n+1)/A085058(n)` -/
def P14136426103772705055.Spec : Prop :=
  ∀ n, P14136426103772705055.a n = (A275367 (n + 1) : ℚ)

end A275367

/-! ## A275367.P11477667635539536646

`∏{e}[A000265(n+1), A005408(#)]`
-/

namespace A275367.P11477667635539536646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005408 (Nat.factorization (f1 n).natAbs p)

end

end A275367.P11477667635539536646

namespace A275367

/-- `∏{e}[A000265(n+1), A005408(#)]` -/
def P11477667635539536646.Spec : Prop :=
  ∀ n, P11477667635539536646.a n = A275367 (n + 1)

end A275367

/-! ## A275367.P16971432105895320577

`A156688(n+1)-A078644(n+1)`
-/

namespace A275367.P16971432105895320577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156688 (n + 1) - A078644 (n + 1)

end

end A275367.P16971432105895320577

namespace A275367

/-- `A156688(n+1)-A078644(n+1)` -/
def P16971432105895320577.Spec : Prop :=
  ∀ n, P16971432105895320577.a n = A275367 (n + 1)

end A275367

/-! ## A275367.P13726918849070744116

`A329402(n+1)-A018892(n+1)`
-/

namespace A275367.P13726918849070744116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329402 (n + 1) - A018892 (n + 1)

end

end A275367.P13726918849070744116

namespace A275367

/-- `A329402(n+1)-A018892(n+1)` -/
def P13726918849070744116.Spec : Prop :=
  ∀ n, P13726918849070744116.a n = A275367 (n + 1)

end A275367

/-! ## A275367.P1475543157850937748

`A361689(n+1)-A048691(n+1)`
-/

namespace A275367.P1475543157850937748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361689 (n + 1) - A048691 (n + 1)

end

end A275367.P1475543157850937748

namespace A275367

/-- `A361689(n+1)-A048691(n+1)` -/
def P1475543157850937748.Spec : Prop :=
  ∀ n, P1475543157850937748.a n = A275367 (n + 1)

end A275367

/-! ## A275367.P6911708316455922768

`A078644(n+1)/A001511(n+1)`
-/

namespace A275367.P6911708316455922768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078644 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A275367.P6911708316455922768

namespace A275367

/-- `A078644(n+1)/A001511(n+1)` -/
def P6911708316455922768.Spec : Prop :=
  ∀ n, P6911708316455922768.a n = (A275367 (n + 1) : ℚ)

end A275367

/-! ## A275367.P217707957829196379

`A048691(n+1)/A037227(n+1)`
-/

namespace A275367.P217707957829196379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048691 (n + 1) : ℚ) / (A037227 (n + 1) : ℚ)

end

end A275367.P217707957829196379

namespace A275367

/-- `A048691(n+1)/A037227(n+1)` -/
def P217707957829196379.Spec : Prop :=
  ∀ n, P217707957829196379.a n = (A275367 (n + 1) : ℚ)

end A275367

/-! ## A275367.P13253283568500814895

`A361689(n+1)/A366839(n+1)`
-/

namespace A275367.P13253283568500814895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361689 (n + 1) : ℚ) / (A366839 (n + 1) : ℚ)

end

end A275367.P13253283568500814895

namespace A275367

/-- `A361689(n+1)/A366839(n+1)` -/
def P13253283568500814895.Spec : Prop :=
  ∀ n, P13253283568500814895.a n = (A275367 (n + 1) : ℚ)

end A275367

/-!
# A275368: Numbers k such that A000032(k) + 2^k is a prime.

The programs for A275368, there is no canonical definition to state claims against.
-/

/-! ## A275368.P10705271626813103241

`A008612(A293994(n))+n`
-/

namespace A275368.P10705271626813103241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A293994 n).toNat + (n : ℤ)

end

end A275368.P10705271626813103241

/-! ## A275368.P1396169930207595675

`A091972(A293994(n))+A007953(n)`
-/

namespace A275368.P1396169930207595675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091972 (A293994 n).toNat + A007953 n

end

end A275368.P1396169930207595675

/-! ## A275368.P11313270861345781896

`lt[A363226(n), A000009(A046094(2*n+1))]`
-/

namespace A275368.P11313270861345781896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A046094 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275368.P11313270861345781896

/-! ## A275368.P12381889359384963310

`eq[A205592(n+2), A347173(A347173(n+1)²)]`
-/

namespace A275368.P12381889359384963310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205592 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347173 (A347173 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275368.P12381889359384963310

/-! ## A275368.P7404002137230216007

`lt[A194879(n+1), A001122(A000005(2*n+1))]`
-/

namespace A275368.P7404002137230216007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (A000005 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275368.P7404002137230216007

/-!
# A275372: Expansion of f(-x) * f(-x^2)^4 / phi(x^2) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A275372, there is no canonical definition to state claims against.
-/

/-! ## A275372.P12808343880269659002

`A280339(Δ[n²])/2`
-/

namespace A275372.P12808343880269659002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280339 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A275372.P12808343880269659002

/-! ## A275372.P14614977262629195787

`-(A279955(Δ[n²])/2)`
-/

namespace A275372.P14614977262629195787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A279955 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)

end

end A275372.P14614977262629195787

/-! ## A275372.P6900196343071489257

`A279955(2*n+1)/(A000007(n+1)-2)`
-/

namespace A275372.P6900196343071489257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279955 (2 * n + 1) : ℚ) / (A000007 (n + 1) - 2 : ℚ)

end

end A275372.P6900196343071489257

/-! ## A275372.P1531806796625143761

`A279955(2*n+1)/(A000035(2*n)-2)`
-/

namespace A275372.P1531806796625143761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279955 (2 * n + 1) : ℚ) / (A000035 (2 * n) - 2 : ℚ)

end

end A275372.P1531806796625143761

/-! ## A275372.P10212690490845095304

`A279955(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A275372.P10212690490845095304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279955 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A275372.P10212690490845095304

/-! ## A275372.P637267271277657414

`A279955(2*n+1)/(4*n-A005843(2*n+1))`
-/

namespace A275372.P637267271277657414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279955 (2 * n + 1) : ℚ) / ((4 * n : ℤ) - A005843 (2 * n + 1) : ℚ)

end

end A275372.P637267271277657414

/-! ## A275372.P4833411549830790635

`A279955(2*n+1)/(A005408(2*n)-(4*n+3))`
-/

namespace A275372.P4833411549830790635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279955 (2 * n + 1) : ℚ) / (A005408 (2 * n) - (4 * n + 3 : ℤ) : ℚ)

end

end A275372.P4833411549830790635

/-! ## A275372.P11760055240484985685

`A279955(2*n+1)/A000034(2*n+1)-A279955(2*n+1)`
-/

namespace A275372.P11760055240484985685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279955 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A279955 (2 * n + 1) : ℚ)

end

end A275372.P11760055240484985685

/-! ## A275372.P7382915578731704354

`A279955(2*n+1)/A040035(2*n+1)-A279955(2*n+1)`
-/

namespace A275372.P7382915578731704354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279955 (2 * n + 1) : ℚ) / (A040035 (2 * n + 1) : ℚ) - (A279955 (2 * n + 1) : ℚ)

end

end A275372.P7382915578731704354

/-! ## A275372.P9498339294886384866

`A224317(A224301(n+1))-A279955(Δ[n²])/2`
-/

namespace A275372.P9498339294886384866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224317 (A224301 (n + 1)).toNat : ℚ) - (A279955 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A275372.P9498339294886384866

/-!
# A275374: Numbers k that divide sigma(k*(k+1)/2).

The programs for A275374, there is no canonical definition to state claims against.
-/

/-! ## A275374.P13852432521502599296

`record[gcd(n+1, A074285(n+1))]`
-/

namespace A275374.P13852432521502599296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A074285 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275374.P13852432521502599296

/-! ## A275374.P16098165013170029650

`record[gcd(n, A000203(A179865(n+1)))]`
-/

namespace A275374.P16098165013170029650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000203 (A179865 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275374.P16098165013170029650

/-! ## A275374.P6426616071654761334

`record[A344766(A000217(n+1))]`
-/

namespace A275374.P6426616071654761334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344766 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275374.P6426616071654761334

/-! ## A275374.P6578240071545222249

`record[A344766(A179865(n+1))]`
-/

namespace A275374.P6578240071545222249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344766 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275374.P6578240071545222249

/-! ## A275374.P6569613194061754106

`record[A344766(A161680(n+2))]`
-/

namespace A275374.P6569613194061754106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344766 (A161680 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275374.P6569613194061754106

/-!
# A275375: The odd digits in the sequence appear in blocks and the successive sizes of these blocks are given by the sequence itself.

The programs for A275375, there is no canonical definition to state claims against.
-/

/-! ## A275375.P12805883784411742930

`xor(A001221(A090947(n)), A230086(n+1))`
-/

namespace A275375.P12805883784411742930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A090947 n).toNat) (A230086 (n + 1))

end

end A275375.P12805883784411742930

/-! ## A275375.P8477330224220902792

`A364031(n+1)+A010060(A005628(n+1))`
-/

namespace A275375.P8477330224220902792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364031 (n + 1) + A010060 (A005628 (n + 1)).toNat

end

end A275375.P8477330224220902792

/-! ## A275375.P1747837435471125816

`A353591(n)+A186725(A334212(2*(n+3)))`
-/

namespace A275375.P1747837435471125816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353591 n + A186725 (A334212 (2 * (n + 3))).toNat

end

end A275375.P1747837435471125816

/-! ## A275375.P4836176957289748323

`A327974(A015958(n+3))+A055034(3*(n+1))`
-/

namespace A275375.P4836176957289748323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327974 (A015958 (n + 3)).toNat + A055034 (3 * (n + 1))

end

end A275375.P4836176957289748323

/-!
# A275384: Composite squarefree numbers such that the arithmetic mean of its prime factors is an integer.

The programs for A275384, the canonical program `A275384.P6749027416274283310` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275384 has offset 1).

The definition of A275384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7056 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275384.P10336866401986420481

`filter[A078177(n+1), A008966(#)]`
-/

namespace A275384.P10336866401986420481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A275384.P10336866401986420481

namespace A275384

/-- `filter[A078177(n+1), A008966(#)]` -/
def P10336866401986420481.Spec : Prop :=
  ∀ n, P10336866401986420481.a n = A275384 (n + 1)

end A275384

/-! ## A275384.P14676565931238455886

`filter[A078177(n+1), A354819(#)]`
-/

namespace A275384.P14676565931238455886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A275384.P14676565931238455886

namespace A275384

/-- `filter[A078177(n+1), A354819(#)]` -/
def P14676565931238455886.Spec : Prop :=
  ∀ n, P14676565931238455886.a n = A275384 (n + 1)

end A275384

/-! ## A275384.P16108736035239136559

`∩[A005117(n+1), A078177(n+1)]`
-/

namespace A275384.P16108736035239136559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275384.P16108736035239136559

namespace A275384

/-- `∩[A005117(n+1), A078177(n+1)]` -/
def P16108736035239136559.Spec : Prop :=
  ∀ n, (P16108736035239136559.a n : ℤ) = A275384 (n + 1)

end A275384

/-! ## A275384.P6749027416274283310

`filter[A072697(n+1), A005171(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A275384

/-- `filter[A072697(n+1), A005171(#)]` -/
def P6749027416274283310.Spec : Prop :=
  ∀ n, P6749027416274283310.a n = A275384 (n + 1)

theorem P6749027416274283310.correct : P6749027416274283310.Spec := by
  intro n
  simp only [A275384, Nat.add_sub_cancel]

end A275384

/-! ## A275384.P6087233002061244775

`filter[A072697(n+1), A066247(#)]`
-/

namespace A275384.P6087233002061244775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A275384.P6087233002061244775

namespace A275384

/-- `filter[A072697(n+1), A066247(#)]` -/
def P6087233002061244775.Spec : Prop :=
  ∀ n, P6087233002061244775.a n = A275384 (n + 1)

end A275384

/-! ## A275384.P2310405533722527666

`filter[A072697(n+1), A202238(#)]`
-/

namespace A275384.P2310405533722527666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A275384.P2310405533722527666

namespace A275384

/-- `filter[A072697(n+1), A202238(#)]` -/
def P2310405533722527666.Spec : Prop :=
  ∀ n, P2310405533722527666.a n = A275384 (n + 1)

end A275384

/-! ## A275384.P12174118958280756149

`filter[A072697(n+1), A354353(#)]`
-/

namespace A275384.P12174118958280756149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A275384.P12174118958280756149

namespace A275384

/-- `filter[A072697(n+1), A354353(#)]` -/
def P12174118958280756149.Spec : Prop :=
  ∀ n, P12174118958280756149.a n = A275384 (n + 1)

end A275384

/-! ## A275384.P3302620340425966298

`filter[A072697(n+1), A354819(#)]`
-/

namespace A275384.P3302620340425966298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A275384.P3302620340425966298

namespace A275384

/-- `filter[A072697(n+1), A354819(#)]` -/
def P3302620340425966298.Spec : Prop :=
  ∀ n, P3302620340425966298.a n = A275384 (n + 1)

end A275384

/-! ## A275384.P12276769441278116248

`filter[A072697(n+2), A354108(#)]`
-/

namespace A275384.P12276769441278116248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072697 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A275384.P12276769441278116248

namespace A275384

/-- `filter[A072697(n+2), A354108(#)]` -/
def P12276769441278116248.Spec : Prop :=
  ∀ n, P12276769441278116248.a n = A275384 (n + 1)

end A275384

/-! ## A275384.P15459458580386021669

`∩[A072697(n+1), A078177(n+1)]`
-/

namespace A275384.P15459458580386021669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275384.P15459458580386021669

namespace A275384

/-- `∩[A072697(n+1), A078177(n+1)]` -/
def P15459458580386021669.Spec : Prop :=
  ∀ n, (P15459458580386021669.a n : ℤ) = A275384 (n + 1)

end A275384

/-! ## A275384.P17784401979972805455

`record[A007913(A070005(n+1))]`
-/

namespace A275384.P17784401979972805455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A070005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275384.P17784401979972805455

namespace A275384

/-- `record[A007913(A070005(n+1))]` -/
def P17784401979972805455.Spec : Prop :=
  ∀ n, P17784401979972805455.a n = A275384 (n + 1)

end A275384

/-! ## A275384.P5835967698272069830

`filter[A070005(n+1), A008966(#)]`
-/

namespace A275384.P5835967698272069830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A275384.P5835967698272069830

namespace A275384

/-- `filter[A070005(n+1), A008966(#)]` -/
def P5835967698272069830.Spec : Prop :=
  ∀ n, P5835967698272069830.a n = A275384 (n + 1)

end A275384

/-! ## A275384.P3733732903981808133

`filter[A070005(n+1), A323154(#)]`
-/

namespace A275384.P3733732903981808133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A275384.P3733732903981808133

namespace A275384

/-- `filter[A070005(n+1), A323154(#)]` -/
def P3733732903981808133.Spec : Prop :=
  ∀ n, P3733732903981808133.a n = A275384 (n + 1)

end A275384

/-! ## A275384.P473699091894438119

`filter[A070005(n+1), A354819(#)]`
-/

namespace A275384.P473699091894438119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A275384.P473699091894438119

namespace A275384

/-- `filter[A070005(n+1), A354819(#)]` -/
def P473699091894438119.Spec : Prop :=
  ∀ n, P473699091894438119.a n = A275384 (n + 1)

end A275384

/-! ## A275384.P9241858217630680579

`∩[A005117(n+1), A070005(n+1)]`
-/

namespace A275384.P9241858217630680579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275384.P9241858217630680579

namespace A275384

/-- `∩[A005117(n+1), A070005(n+1)]` -/
def P9241858217630680579.Spec : Prop :=
  ∀ n, (P9241858217630680579.a n : ℤ) = A275384 (n + 1)

end A275384

/-! ## A275384.P2044317305336907772

`filter[A286972(n+1), A354819(#)]`
-/

namespace A275384.P2044317305336907772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A275384.P2044317305336907772

namespace A275384

/-- `filter[A286972(n+1), A354819(#)]` -/
def P2044317305336907772.Spec : Prop :=
  ∀ n, P2044317305336907772.a n = A275384 (n + 1)

end A275384

/-! ## A275384.P4141068697768225627

`filter[A139316(n+1), A354819(#)]`
-/

namespace A275384.P4141068697768225627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A275384.P4141068697768225627

namespace A275384

/-- `filter[A139316(n+1), A354819(#)]` -/
def P4141068697768225627.Spec : Prop :=
  ∀ n, P4141068697768225627.a n = A275384 (n + 1)

end A275384

/-! ## A275384.P9663823021007730038

`filter[A078175(n+1), A354819(#)]`
-/

namespace A275384.P9663823021007730038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A275384.P9663823021007730038

namespace A275384

/-- `filter[A078175(n+1), A354819(#)]` -/
def P9663823021007730038.Spec : Prop :=
  ∀ n, P9663823021007730038.a n = A275384 (n + 1)

end A275384

/-! ## A275384.P9298239109859012525

`∩[A000469(n+1), A070005(n+1)]`
-/

namespace A275384.P9298239109859012525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275384.P9298239109859012525

namespace A275384

/-- `∩[A000469(n+1), A070005(n+1)]` -/
def P9298239109859012525.Spec : Prop :=
  ∀ n, (P9298239109859012525.a n : ℤ) = A275384 (n + 1)

end A275384

/-! ## A275384.P2505003778423793995

`∩[A000469(n+1), A072697(n+1)]`
-/

namespace A275384.P2505003778423793995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275384.P2505003778423793995

namespace A275384

/-- `∩[A000469(n+1), A072697(n+1)]` -/
def P2505003778423793995.Spec : Prop :=
  ∀ n, (P2505003778423793995.a n : ℤ) = A275384 (n + 1)

end A275384

/-!
# A275387: Numbers of ordered pairs of divisors d < e of n such that gcd(d, e) > 1.

The programs for A275387, the canonical program `A275387.P16073463027195064393` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275387 has offset 1).

The definition of A275387 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A275387.P16073463027195064393

`A066446(n+1)-A063647(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A275387

/-- `A066446(n+1)-A063647(n+1)` -/
def P16073463027195064393.Spec : Prop :=
  ∀ n, P16073463027195064393.a n = A275387 (n + 1)

theorem P16073463027195064393.correct : P16073463027195064393.Spec := by
  intro n
  simp only [A275387, Nat.add_sub_cancel]

end A275387

/-! ## A275387.P16699142086198470760

`A065814(n+1)-A333976(n+1)`
-/

namespace A275387.P16699142086198470760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065814 (n + 1) - A333976 (n + 1)

end

end A275387.P16699142086198470760

namespace A275387

/-- `A065814(n+1)-A333976(n+1)` -/
def P16699142086198470760.Spec : Prop :=
  ∀ n, P16699142086198470760.a n = A275387 (n + 1)

end A275387

/-! ## A275387.P11573517399805147371

`A394997(n+1)-A066446(n+1)`
-/

namespace A275387.P11573517399805147371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394997 (n + 1) - A066446 (n + 1)

end

end A275387.P11573517399805147371

namespace A275387

/-- `A394997(n+1)-A066446(n+1)` -/
def P11573517399805147371.Spec : Prop :=
  ∀ n, P11573517399805147371.a n = A275387 (n + 1)

end A275387

/-! ## A275387.P8037423105545255948

`A066446(n+1)+1-A018892(n+1)`
-/

namespace A275387.P8037423105545255948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) + (1 - A018892 (n + 1))

end

end A275387.P8037423105545255948

namespace A275387

/-- `A066446(n+1)+1-A018892(n+1)` -/
def P8037423105545255948.Spec : Prop :=
  ∀ n, P8037423105545255948.a n = A275387 (n + 1)

theorem P8037423105545255948.correct : P8037423105545255948.Spec := by
  intro n
  simp only [A275387, Nat.add_sub_cancel, A275387.P8037423105545255948.a, A275387.P16073463027195064393.a, A018892, A018892.P739243444939951687.a, A063647, A063647.P10388026275025770888.a, A066446, A066446.P5739828571146208619.a, A000005, A000005.P16091521709108585461.a, A000217, A000217.P10269402890581615239.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A024361, A024361.P1146025692209475519.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A004526, A004526.P10084182425416171735.a, A317528, A317528.P12745314278989265988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A275387

/-! ## A275387.P5194843085424787674

`∑{d}[n+1, A066446(#)*A157658((n+1)/#)]`
-/

namespace A275387.P5194843085424787674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066446 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275387.P5194843085424787674

namespace A275387

/-- `∑{d}[n+1, A066446(#)*A157658((n+1)/#)]` -/
def P5194843085424787674.Spec : Prop :=
  ∀ n, P5194843085424787674.a n = A275387 (n + 1)

end A275387

/-! ## A275387.P15928621975072550211

`∑{d}[n+1, A056924(#)*A293227((n+1)/#)]`
-/

namespace A275387.P15928621975072550211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056924 d * A293227 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275387.P15928621975072550211

namespace A275387

/-- `∑{d}[n+1, A056924(#)*A293227((n+1)/#)]` -/
def P15928621975072550211.Spec : Prop :=
  ∀ n, P15928621975072550211.a n = A275387 (n + 1)

end A275387

/-! ## A275387.P2109354184068868099

`A000217(A000005(n+1)-1)-A063647(n+1)`
-/

namespace A275387.P2109354184068868099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000005 (n + 1) - 1).toNat - A063647 (n + 1)

end

end A275387.P2109354184068868099

namespace A275387

/-- `A000217(A000005(n+1)-1)-A063647(n+1)` -/
def P2109354184068868099.Spec : Prop :=
  ∀ n, P2109354184068868099.a n = A275387 (n + 1)

end A275387

/-! ## A275387.P9247624045942019780

`A184389(n+1)-(A063647(n+1)+A000005(n+1))`
-/

namespace A275387.P9247624045942019780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) - (A063647 (n + 1) + A000005 (n + 1))

end

end A275387.P9247624045942019780

namespace A275387

/-- `A184389(n+1)-(A063647(n+1)+A000005(n+1))` -/
def P9247624045942019780.Spec : Prop :=
  ∀ n, P9247624045942019780.a n = A275387 (n + 1)

end A275387

/-! ## A275387.P9578384729065559169

`A035116(n+1)-(A184389(n+1)+A063647(n+1))`
-/

namespace A275387.P9578384729065559169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1) - (A184389 (n + 1) + A063647 (n + 1))

end

end A275387.P9578384729065559169

namespace A275387

/-- `A035116(n+1)-(A184389(n+1)+A063647(n+1))` -/
def P9578384729065559169.Spec : Prop :=
  ∀ n, P9578384729065559169.a n = A275387 (n + 1)

theorem P9578384729065559169.correct : P9578384729065559169.Spec := by
  intro n
  simp only [A275387, Nat.add_sub_cancel, A275387.P9578384729065559169.a, A275387.P16073463027195064393.a, A035116, A035116.P17286734818633727782.a, A063647, A063647.P10388026275025770888.a, A066446, A066446.P5739828571146208619.a, A184389, A184389.P17134985288461301427.a, A000005, A000005.P16091521709108585461.a, A000217, A000217.P10269402890581615239.a, A018892, A018892.P739243444939951687.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A024361, A024361.P1146025692209475519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A275387

/-! ## A275387.P13842559230764547925

`A089233(n+1)+A184389(n+1)-A048691(n+1)`
-/

namespace A275387.P13842559230764547925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (n + 1) + (A184389 (n + 1) - A048691 (n + 1))

end

end A275387.P13842559230764547925

namespace A275387

/-- `A089233(n+1)+A184389(n+1)-A048691(n+1)` -/
def P13842559230764547925.Spec : Prop :=
  ∀ n, P13842559230764547925.a n = A275387 (n + 1)

end A275387

/-!
# A275388: Convolution of Fibonacci numbers (A000045) and partition numbers (A000041).

The programs for A275388, there is no canonical definition to state claims against.
-/

/-! ## A275388.P14379172526008162169

`A000041(n-1)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A275388.P14379172526008162169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000041 (n - 1) + (a (n - 1) + a (n - 2))

end

end A275388.P14379172526008162169

/-! ## A275388.P13115545187878962796

`∑[A289249(n)]-A000041(n)`
-/

namespace A275388.P13115545187878962796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000041 n

end

end A275388.P13115545187878962796

/-! ## A275388.P6709378485722950476

`∑[A289249(n)-A002865(n)]`
-/

namespace A275388.P6709378485722950476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289249 n - A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275388.P6709378485722950476

/-! ## A275388.P17269716614626289191

`∑[A289249(n)]-sqrt(A001255(n))`
-/

namespace A275388.P17269716614626289191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289249 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) - Real.sqrt (A001255 n : ℝ)

end

end A275388.P17269716614626289191

/-! ## A275388.P738298404227428224

`A289249(n+2)-A000041(n+2)`
-/

namespace A275388.P738298404227428224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289249 (n + 2) - A000041 (n + 2)

end

end A275388.P738298404227428224

/-!
# A275390: Numbers n for which |n/zeta(2) - Q(n)| sets a new record, where Q(x) is the number of squarefree numbers up to x.

The programs for A275390, there is no canonical definition to state claims against.
-/

/-! ## A275390.P11166488326993196124

`or(A102800(A265394(n+1)), A240302(n))`
-/

namespace A275390.P11166488326993196124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102800 (A265394 (n + 1)).toNat) (A240302 n)

end

end A275390.P11166488326993196124

/-!
# A275392: Smallest term in the tribonacci Zeckendorf representation of n.

The programs for A275392, the canonical program `A275392.P15222088404269922783` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275392 has offset 1).

The definition of A275392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275392.P15222088404269922783

`A000073(A278045(n+1)+3)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A275392

/-- `A000073(A278045(n+1)+3)` -/
def P15222088404269922783.Spec : Prop :=
  ∀ n, P15222088404269922783.a n = A275392 (n + 1)

theorem P15222088404269922783.correct : P15222088404269922783.Spec := by
  intro n
  simp only [A275392, Nat.add_sub_cancel]

end A275392

/-! ## A275392.P7604668423563260454

`A000073(val(A278038(n+1), 2)+3)`
-/

namespace A275392.P7604668423563260454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (SequenceMachineLib.valuation (A278038 (n + 1)).toNat 2 + 3)

end

end A275392.P7604668423563260454

namespace A275392

/-- `A000073(val(A278038(n+1), 2)+3)` -/
def P7604668423563260454.Spec : Prop :=
  ∀ n, P7604668423563260454.a n = A275392 (n + 1)

end A275392

/-! ## A275392.P17488254762529199140

`A000196(A000267(Δ[A278038(n)]))`
-/

namespace A275392.P17488254762529199140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000267 (f1 (n + 1) - f1 n).toNat).toNat

end

end A275392.P17488254762529199140

namespace A275392

/-- `A000196(A000267(Δ[A278038(n)]))` -/
def P17488254762529199140.Spec : Prop :=
  ∀ n, P17488254762529199140.a n = A275392 (n + 1)

end A275392

/-! ## A275392.P138830030849790268

`A000196(A293137(Δ[A278038(n)]))`
-/

namespace A275392.P138830030849790268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A293137 (f1 (n + 1) - f1 n).toNat).toNat

end

end A275392.P138830030849790268

namespace A275392

/-- `A000196(A293137(Δ[A278038(n)]))` -/
def P138830030849790268.Spec : Prop :=
  ∀ n, P138830030849790268.a n = A275392 (n + 1)

end A275392

/-! ## A275392.P10163048106902606675

`A060973(A298200(Δ[A278038(n)]))`
-/

namespace A275392.P10163048106902606675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A298200 (f1 (n + 1) - f1 n).toNat).toNat

end

end A275392.P10163048106902606675

namespace A275392

/-- `A060973(A298200(Δ[A278038(n)]))` -/
def P10163048106902606675.Spec : Prop :=
  ∀ n, P10163048106902606675.a n = A275392 (n + 1)

end A275392

/-!
# A275394: Number of n X n 0..2 arrays with no element equal to any value at offset (-2,-1), (-2,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275394, there is no canonical definition to state claims against.
-/

/-! ## A275394.P7377519988475348340

`A275401(∑[4*n]+1)`
-/

namespace A275394.P7377519988475348340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275394.P7377519988475348340

/-! ## A275394.P13180222879645950135

`record[gcd(A037012(n), A275401(n+1))]`
-/

namespace A275394.P13180222879645950135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A275401 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275394.P13180222879645950135

/-! ## A275394.P1508250495969143283

`lcm(A193592(n), A275401(A001844(n)))`
-/

namespace A275394.P1508250495969143283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A193592 n) (A275401 (A001844 n).toNat)

end

end A275394.P1508250495969143283

/-! ## A275394.P15369809049426331558

`or(A000007(n), A275401(A001844(n)))`
-/

namespace A275394.P15369809049426331558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A275401 (A001844 n).toNat)

end

end A275394.P15369809049426331558

/-! ## A275394.P11307547783855208055

`A275401(A001844(n))%A100266(n+1)`
-/

namespace A275394.P11307547783855208055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275401 (A001844 n).toNat) (A100266 (n + 1))

end

end A275394.P11307547783855208055

/-!
# A275395: Number of n X 2 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275395, there is no canonical definition to state claims against.
-/

/-! ## A275395.P15482330159987616345

`A275401(∑[n+2])`
-/

namespace A275395.P15482330159987616345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275395.P15482330159987616345

/-! ## A275395.P7197397140808994946

`record[A275401(A000096(A137734(n)))]`
-/

namespace A275395.P7197397140808994946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A000096 (A137734 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275395.P7197397140808994946

/-! ## A275395.P6674499257938511799

`record[A275401(A000096(A323889(n)))]`
-/

namespace A275395.P6674499257938511799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A000096 (A323889 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275395.P6674499257938511799

/-! ## A275395.P4912154834002370869

`record[A275401(A000096(A004736(n+1)))]`
-/

namespace A275395.P4912154834002370869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275395.P4912154834002370869

/-! ## A275395.P14599310188266119738

`record[A275401(A000096(A020652(n+1)))]`
-/

namespace A275395.P14599310188266119738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A000096 (A020652 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275395.P14599310188266119738

/-!
# A275396: Number of nX3 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275396, there is no canonical definition to state claims against.
-/

/-! ## A275396.P15215203241239992604

`A275401(∑[n+3]+1)`
-/

namespace A275396.P15215203241239992604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275396.P15215203241239992604

/-! ## A275396.P5482807483279078116

`A275401(A034856(n+2))%A155634(n+1)`
-/

namespace A275396.P5482807483279078116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275401 (A034856 (n + 2)).toNat) (A155634 (n + 1))

end

end A275396.P5482807483279078116

/-! ## A275396.P9099984353172501762

`lcm(A008836(n+1), A275401(A034856(n+2)))`
-/

namespace A275396.P9099984353172501762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A275401 (A034856 (n + 2)).toNat)

end

end A275396.P9099984353172501762

/-! ## A275396.P12295774551130454947

`and(A057428(n+1), A275401(A034856(n+2)))`
-/

namespace A275396.P12295774551130454947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A275401 (A034856 (n + 2)).toNat)

end

end A275396.P12295774551130454947

/-! ## A275396.P14910907547028622737

`A275401(A034856(n+2))+A083912(2*n+1)`
-/

namespace A275396.P14910907547028622737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A034856 (n + 2)).toNat + A083912 (2 * n + 1)

end

end A275396.P14910907547028622737

/-!
# A275397: Number of nX4 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275397, there is no canonical definition to state claims against.
-/

/-! ## A275397.P12905338385491032057

`A275401(A141214(n+1))`
-/

namespace A275397.P12905338385491032057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A141214 (n + 1)).toNat

end

end A275397.P12905338385491032057

/-! ## A275397.P11090149942065749990

`A275401(A055998(n+2))`
-/

namespace A275397.P11090149942065749990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A055998 (n + 2)).toNat

end

end A275397.P11090149942065749990

/-! ## A275397.P3813342525655442079

`A275401(A056000(n)+7)`
-/

namespace A275397.P3813342525655442079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A056000 n + 7).toNat

end

end A275397.P3813342525655442079

/-! ## A275397.P12298335447944185942

`A275401(A046691(n+2)+1)`
-/

namespace A275397.P12298335447944185942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A046691 (n + 2) + 1).toNat

end

end A275397.P12298335447944185942

/-! ## A275397.P4445320509233574929

`A275401(A052905(n+1)+2)`
-/

namespace A275397.P4445320509233574929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A052905 (n + 1) + 2).toNat

end

end A275397.P4445320509233574929

/-!
# A275398: Number of n X 5 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275398, there is no canonical definition to state claims against.
-/

/-! ## A275398.P4416057749569195894

`A275401(A046691(n+3))`
-/

namespace A275398.P4416057749569195894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A046691 (n + 3)).toNat

end

end A275398.P4416057749569195894

/-! ## A275398.P15314185140346843007

`A275401(Δ[A023545(n+1)])`
-/

namespace A275398.P15314185140346843007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (f1 (n + 1) - f1 n).toNat

end

end A275398.P15314185140346843007

/-! ## A275398.P7647630421530102876

`A275401(A055999(n+2)+2)`
-/

namespace A275398.P7647630421530102876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A055999 (n + 2) + 2).toNat

end

end A275398.P7647630421530102876

/-! ## A275398.P11453238376792650840

`A275401(A000096(n+4)-3)`
-/

namespace A275398.P11453238376792650840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A000096 (n + 4) - 3).toNat

end

end A275398.P11453238376792650840

/-! ## A275398.P17088068444894662934

`A275401(A000217(n+5)-4)`
-/

namespace A275398.P17088068444894662934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A000217 (n + 5) - 4).toNat

end

end A275398.P17088068444894662934

/-!
# A275399: Number of nX6 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275399, there is no canonical definition to state claims against.
-/

/-! ## A275399.P3839957266494733670

`A275401(eq[3, A219347(n)])`
-/

namespace A275399.P3839957266494733670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275399.P3839957266494733670

/-! ## A275399.P4093227063627586275

`A275401(A046691(n+4)-1)`
-/

namespace A275399.P4093227063627586275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A046691 (n + 4) - 1).toNat

end

end A275399.P4093227063627586275

/-! ## A275399.P9828592600410074163

`A275401(A000096(n+5)-4)`
-/

namespace A275399.P9828592600410074163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A000096 (n + 5) - 4).toNat

end

end A275399.P9828592600410074163

/-! ## A275399.P10233143451016394294

`A275401(A000217(n+6)-5)`
-/

namespace A275399.P10233143451016394294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A000217 (n + 6) - 5).toNat

end

end A275399.P10233143451016394294

/-! ## A275399.P17642596971774309933

`A275401(A000124(n+6)-6)`
-/

namespace A275399.P17642596971774309933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A000124 (n + 6) - 6).toNat

end

end A275399.P17642596971774309933

