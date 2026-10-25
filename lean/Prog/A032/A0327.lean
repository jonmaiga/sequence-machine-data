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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A032701: Exactly 5 digits from {1,2,3,4,5,6,7,8,9} can precede a(n) to form a lucky number.

The programs for A032701, there is no canonical definition to state claims against.
-/

/-! ## A032701.P10683159747970419819

`or(A036447(n), A245022(A081913(n)))`
-/

namespace A032701.P10683159747970419819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036447 n) (A245022 (A081913 n).toNat)

end

end A032701.P10683159747970419819

/-!
# A032704: Numbers k such that k prefixed by '4' and followed by '1' is prime.

The programs for A032704, there is no canonical definition to state claims against.
-/

/-! ## A032704.P9660500863984413571

`lt[A257470(n), 33%A257470(3*n+2)]`
-/

namespace A032704.P9660500863984413571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257470 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 33 (A257470 (3 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032704.P9660500863984413571

/-!
# A032705: Numbers k such that k prefixed by '5' and followed by '1' is prime.

The programs for A032705, there is no canonical definition to state claims against.
-/

/-! ## A032705.P3749686070180363360

`A101472(A101513(n+1)%A101429(n))`
-/

namespace A032705.P3749686070180363360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101472 (Int.tmod (A101513 (n + 1)) (A101429 n)).toNat

end

end A032705.P3749686070180363360

/-! ## A032705.P3790975270677667734

`A101472(A101513(n+1))%A101540(n+1)`
-/

namespace A032705.P3790975270677667734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101472 (A101513 (n + 1)).toNat) (A101540 (n + 1))

end

end A032705.P3790975270677667734

/-! ## A032705.P1397418351920368726

`∑[dr(A281006(A112088(3*n+2)))]`
-/

namespace A032705.P1397418351920368726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A281006 (A112088 (3 * n + 2)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032705.P1397418351920368726

/-! ## A032705.P2955125670919467555

`A101472(gcd(A101513(n+1), A298688(n)))`
-/

namespace A032705.P2955125670919467555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101472 (Int.gcd (A101513 (n + 1)) (A298688 n))

end

end A032705.P2955125670919467555

/-!
# A032706: Numbers k such that k prefixed by '6' and followed by '1' is prime.

The programs for A032706, there is no canonical definition to state claims against.
-/

/-! ## A032706.P16256454372293505840

`eq[A000002(n+1), A289322(A328682(3*n+2))]`
-/

namespace A032706.P16256454372293505840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289322 (A328682 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032706.P16256454372293505840

/-!
# A032710: Numbers k such that k prefixed by '1' and followed by '3' is prime.

The programs for A032710, there is no canonical definition to state claims against.
-/

/-! ## A032710.P2924076233029003646

`eq[1, A032662(A017293(n))]`
-/

namespace A032710.P2924076233029003646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A017293 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032710.P2924076233029003646

/-! ## A032710.P16531697940243519102

`eq[1, A032662(A017281(n)+1)]`
-/

namespace A032710.P16531697940243519102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A017281 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032710.P16531697940243519102

/-! ## A032710.P4634089236802414669

`eq[1, A032662(A008592(n)+2)]`
-/

namespace A032710.P4634089236802414669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A008592 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032710.P4634089236802414669

/-! ## A032710.P4200535673534684963

`lt[A032662(A017293(n))-1, 2/A005408(n)]`
-/

namespace A032710.P4200535673534684963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A017293 n).toNat - 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A005408 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A032710.P4200535673534684963

/-! ## A032710.P12972735249493413953

`lt[A032662(A017293(n))-1, 2/A233543(n)]`
-/

namespace A032710.P12972735249493413953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A017293 n).toNat - 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A233543 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A032710.P12972735249493413953

/-!
# A032711: Numbers k such that k prefixed by '2' and followed by '3' is prime.

The programs for A032711, there is no canonical definition to state claims against.
-/

/-! ## A032711.P15976414556216036478

`eq[2, A032662(A017281(n+1))]+1`
-/

namespace A032711.P15976414556216036478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A017281 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032711.P15976414556216036478

/-! ## A032711.P11488501427951689522

`eq[2, A032662((10*n+1)*A057427(n))]`
-/

namespace A032711.P11488501427951689522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 ((10 * n + 1 : ℤ) * A057427 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032711.P11488501427951689522

/-! ## A032711.P11649522466125749044

`eq[A032662(A017281(n)), A036453(n+1)]`
-/

namespace A032711.P11649522466125749044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A017281 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032711.P11649522466125749044

/-!
# A032714: Numbers k such that k prefixed by '6' and followed by '3' is prime.

The programs for A032714, there is no canonical definition to state claims against.
-/

/-! ## A032714.P15282633079185261644

`eq[A319797(A301453(n)), A341808(n+9)]`
-/

namespace A032714.P15282633079185261644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A301453 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341808 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032714.P15282633079185261644

/-!
# A032717: Numbers k such that k prefixed by '9' and followed by '3' is prime.

The programs for A032717, there is no canonical definition to state claims against.
-/

/-! ## A032717.P14128425358947298292

`eq[A026424(n+3), A381131(2*n+3)]`
-/

namespace A032717.P14128425358947298292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381131 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032717.P14128425358947298292

/-! ## A032717.P4644503194145709232

`A032615(or(A191426(n+1), A227133(n+5)))`
-/

namespace A032717.P4644503194145709232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (Int.lor (A191426 (n + 1)) (A227133 (n + 5))).toNat

end

end A032717.P4644503194145709232

/-! ## A032717.P1748179338623900178

`lt[A019565(A319005(n)), A259784(3*n+2)]`
-/

namespace A032717.P1748179338623900178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A319005 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032717.P1748179338623900178

/-! ## A032717.P9522074290217309051

`A353833(2*(n+2))+A034188(A349199(n+1))`
-/

namespace A032717.P9522074290217309051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (2 * (n + 2)) + A034188 (A349199 (n + 1)).toNat

end

end A032717.P9522074290217309051

/-! ## A032717.P2848674628881153835

`A320340(lt[A119678(3*(n+1)), A335058(2*(n+2))])`
-/

namespace A032717.P2848674628881153835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119678 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335058 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A032717.P2848674628881153835

/-!
# A032718: Numbers k such that k prefixed by '1' and followed by '7' is prime.

The programs for A032718, there is no canonical definition to state claims against.
-/

/-! ## A032718.P980054829809602064

`eq[1, A032662(10*n+6)]`
-/

namespace A032718.P980054829809602064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (10 * n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032718.P980054829809602064

/-! ## A032718.P14303655587679897215

`lt[A032662(A017341(n)), 2]`
-/

namespace A032718.P14303655587679897215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A017341 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032718.P14303655587679897215

/-! ## A032718.P16364501206833680513

`lt[A032662(10*n+6), A323078(A185956(n+1))]`
-/

namespace A032718.P16364501206833680513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (10 * n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323078 (A185956 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032718.P16364501206833680513

/-! ## A032718.P14833866270610237644

`lt[A130242(A032662(10*n+6)+1), 1]`
-/

namespace A032718.P14833866270610237644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130242 (A032662 (10 * n + 6) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032718.P14833866270610237644

/-! ## A032718.P16640153340504857710

`lt[A056126(A032662(10*n+6)+1), 28]`
-/

namespace A032718.P16640153340504857710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056126 (A032662 (10 * n + 6) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032718.P16640153340504857710

/-!
# A032719: Numbers k such that k prefixed by '2' and followed by '7' is prime.

The programs for A032719, there is no canonical definition to state claims against.
-/

/-! ## A032719.P1968498737461319006

`eq[4, A032662(10*n+5)²]`
-/

namespace A032719.P1968498737461319006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (10 * n + 5) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032719.P1968498737461319006

/-! ## A032719.P7974665352697042960

`eq[2, A032662(5*(2*n+1))]`
-/

namespace A032719.P7974665352697042960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (5 * (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032719.P7974665352697042960

/-! ## A032719.P12593840198302628774

`A028310(eq[2, A032662(10*n+5)])`
-/

namespace A032719.P12593840198302628774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (10 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032719.P12593840198302628774

/-! ## A032719.P3045224883069400610

`lt[A032662(10*n+5), A054977(n)+2]`
-/

namespace A032719.P3045224883069400610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (10 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032719.P3045224883069400610

/-! ## A032719.P16485799938876390436

`lt[A000217(A032662(10*n+5)+1), 7]`
-/

namespace A032719.P16485799938876390436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A032662 (10 * n + 5) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032719.P16485799938876390436

/-! ## A032719.P3703062104789573661

`lt[A155212(A032662(10*n+5)-1), 13]`
-/

namespace A032719.P3703062104789573661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 (A032662 (10 * n + 5) - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032719.P3703062104789573661

/-! ## A032719.P3789468547244838323

`lt[8%(A014092(A032662(10*n+5)+2)-3), 1]`
-/

namespace A032719.P3789468547244838323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 8 (A014092 (A032662 (10 * n + 5) + 2).toNat - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032719.P3789468547244838323

/-!
# A032720: Integers that when prefixed by '3' and followed by '7' yield a prime.

The programs for A032720, there is no canonical definition to state claims against.
-/

/-! ## A032720.P15408593419398043720

`∑[A196686(A028310(n))%A204809(n+1)]`
-/

namespace A032720.P15408593419398043720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196686 (A028310 n).toNat) (A204809 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032720.P15408593419398043720

/-! ## A032720.P14165728865148908912

`lt[A239496(n+4), A266152(A092196(n+3))]`
-/

namespace A032720.P14165728865148908912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239496 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266152 (A092196 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032720.P14165728865148908912

/-! ## A032720.P17498233735388149585

`∑[A125173(A319513(n))]`
-/

namespace A032720.P17498233735388149585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (A319513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032720.P17498233735388149585

/-! ## A032720.P15385840004735146178

`∑[A213088(n+1)%A077622(n+1)]`
-/

namespace A032720.P15385840004735146178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213088 (n + 1)) (A077622 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032720.P15385840004735146178

/-! ## A032720.P5615388898824261819

`∑[A297158(n+4)]%A242791(n+2)`
-/

namespace A032720.P5615388898824261819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297158 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A242791 (n + 2))

end

end A032720.P5615388898824261819

/-!
# A032721: Numbers k such that k prefixed by '4' and followed by '7' is prime.

The programs for A032721, there is no canonical definition to state claims against.
-/

/-! ## A032721.P177727215569901296

`A055570(A121519(n+1))+4`
-/

namespace A032721.P177727215569901296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A121519 (n + 1)).toNat + 4

end

end A032721.P177727215569901296

/-!
# A032725: Numbers k such that k prefixed by '9' and followed by '7' is prime.

The programs for A032725, there is no canonical definition to state claims against.
-/

/-! ## A032725.P15315546699801837897

`eq[A065359(n), A089809(A000041(n))]`
-/

namespace A032725.P15315546699801837897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (A000041 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032725.P15315546699801837897

/-! ## A032725.P6403003819103311641

`lt[A218993(n+2), A020639(A219041(n+3))]`
-/

namespace A032725.P6403003819103311641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218993 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A219041 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032725.P6403003819103311641

/-!
# A032726: Numbers k such that k prefixed by '1' and followed by '9' is a prime.

The programs for A032726, there is no canonical definition to state claims against.
-/

/-! ## A032726.P8324100388054004479

`eq[1, A032662(A017365(n))]`
-/

namespace A032726.P8324100388054004479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A017365 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032726.P8324100388054004479

/-! ## A032726.P4796044508388405106

`eq[1, A032662(A017353(n)+1)]`
-/

namespace A032726.P4796044508388405106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A017353 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032726.P4796044508388405106

/-! ## A032726.P2541882880301708359

`lt[A032662(A017341(n)+2), 3]`
-/

namespace A032726.P2541882880301708359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A017341 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032726.P2541882880301708359

/-!
# A032727: Numbers k such that k prefixed by '2' and followed by '9' is prime.

The programs for A032727, there is no canonical definition to state claims against.
-/

/-! ## A032727.P13425262104319761551

`eq[2, A032662(A017353(n+1))]+1`
-/

namespace A032727.P13425262104319761551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A017353 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032727.P13425262104319761551

/-! ## A032727.P1366891924263192944

`lt[A032662(A017353(n+2)), 3]+2`
-/

namespace A032727.P1366891924263192944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A017353 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A032727.P1366891924263192944

/-! ## A032727.P6597073681985454439

`eq[A057427(n)+1, A032662(A017353(n))]`
-/

namespace A032727.P6597073681985454439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A017353 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032727.P6597073681985454439

/-! ## A032727.P2778227957368557946

`A211338(n+1)+A194276(A014601(n))`
-/

namespace A032727.P2778227957368557946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211338 (n + 1) + A194276 (A014601 n).toNat

end

end A032727.P2778227957368557946

/-!
# A032729: Numbers k such that k prefixed by '4' and followed by '9' is prime.

The programs for A032729, there is no canonical definition to state claims against.
-/

/-! ## A032729.P16059746482047247591

`eq[A007318(A023358(n)), A161789(n+1)]`
-/

namespace A032729.P16059746482047247591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A023358 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161789 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032729.P16059746482047247591

/-! ## A032729.P2554782715065497055

`A032766(eq[A051777(n+1), A326461(n)])`
-/

namespace A032729.P2554782715065497055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A032729.P2554782715065497055

/-! ## A032729.P14592636159550983264

`∑[A218828(2^A317492(n+1))]-A187783(n)`
-/

namespace A032729.P14592636159550983264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218828 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A317492 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A187783 n

end

end A032729.P14592636159550983264

/-! ## A032729.P9058297530519229960

`∑[A218828(2^A331914(n+1))]-A187783(n)`
-/

namespace A032729.P9058297530519229960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218828 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A331914 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A187783 n

end

end A032729.P9058297530519229960

/-!
# A032732: Numbers k such that k prefixed by '7' and followed by '9' is prime.

The programs for A032732, there is no canonical definition to state claims against.
-/

/-! ## A032732.P105993933225862975

`eq[A034093(n+1), A034093(A233543(n))]`
-/

namespace A032732.P105993933225862975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034093 (A233543 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032732.P105993933225862975

/-!
# A032737: Composite numbers k such that all the decimal concatenations ik and ikj (i, j = 1...9) are also composite.

The programs for A032737, there is no canonical definition to state claims against.
-/

/-! ## A032737.P141299410288751578

`A032734(lt[A032739(3*n+1), A032760(n+1)])`
-/

namespace A032737.P141299410288751578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032739 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032734 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A032737.P141299410288751578

/-! ## A032737.P16271892001270636219

`filter[A032734(n+1), A381735(#)]`
-/

namespace A032737.P16271892001270636219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381735 (f1 j).toNat = 1) n)

end

end A032737.P16271892001270636219

/-!
# A032738: a(n) cannot be prefixed or followed by any digit to form a prime ('empty' prefixes and suffixes are allowed).

The programs for A032738, there is no canonical definition to state claims against.
-/

/-! ## A032738.P1915357851924598657

`∩[A032736(n+1), A032737(n+1)]`
-/

namespace A032738.P1915357851924598657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032738.P1915357851924598657

/-!
# A032739: a(n) = floor( (Pi/e)^n ).

The programs for A032739, there is no canonical definition to state claims against.
-/

/-! ## A032739.P7218624786665806021

`A121279(n)+A057428(n)`
-/

namespace A032739.P7218624786665806021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121279 n + A057428 n

end

end A032739.P7218624786665806021

/-! ## A032739.P824265353284578352

`A121279(n)-A057427(n)`
-/

namespace A032739.P824265353284578352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121279 n - A057427 n

end

end A032739.P824265353284578352

/-! ## A032739.P3435786413436112162

`A121279(n)-char[A038722(n+1)]`
-/

namespace A032739.P3435786413436112162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121279 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A032739.P3435786413436112162

/-! ## A032739.P8105580095886348008

`A121279(n)-A001221(A001316(n))`
-/

namespace A032739.P8105580095886348008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121279 n - A001221 (A001316 n).toNat

end

end A032739.P8105580095886348008

/-! ## A032739.P13968513026761579815

`A121279(n)+A121283(n)-A121282(n)`
-/

namespace A032739.P13968513026761579815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121279 n + (A121283 n - A121282 n)

end

end A032739.P13968513026761579815

/-!
# A032740: Numbers k such that k is a substring of 2^k.

The programs for A032740, there is no canonical definition to state claims against.
-/

/-! ## A032740.P1559253086642578836

`eq[2, A061280(n+1)]+1`
-/

namespace A032740.P1559253086642578836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061280 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032740.P1559253086642578836

/-! ## A032740.P17396465593088202182

`eq[2, A061280(A028310(n))]`
-/

namespace A032740.P17396465593088202182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061280 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032740.P17396465593088202182

/-! ## A032740.P5078460075277275839

`A153152(eq[2, A061280(n+1)])`
-/

namespace A032740.P5078460075277275839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032740.P5078460075277275839

/-! ## A032740.P5711758444578267939

`eq[2, A061280(A153151(n+1))]`
-/

namespace A032740.P5711758444578267939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061280 (A153151 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032740.P5711758444578267939

/-! ## A032740.P12554288910953057444

`eq[2, A061280(A065033(2*n))]`
-/

namespace A032740.P12554288910953057444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061280 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032740.P12554288910953057444

/-! ## A032740.P16981150062117428941

`eq[2, A061280(A233583(n+1))]`
-/

namespace A032740.P16981150062117428941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061280 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032740.P16981150062117428941

/-!
# A032741: a(0) = 0; for n > 0, a(n) = number of proper divisors of n (divisors of n which are less than n).

The programs for A032741, the canonical program `A032741.P3022166995030670566` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032741 has offset 0).

The definition of A032741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032741.P17577777098867150200

`∑{d}[n, floor(atan(#))]`
-/

namespace A032741.P17577777098867150200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋

end

end A032741.P17577777098867150200

namespace A032741

/-- `∑{d}[n, floor(atan(#))]` -/
def P17577777098867150200.Spec : Prop :=
  ∀ n, P17577777098867150200.a n = A032741 n

end A032741

/-! ## A032741.P10589223118001378203

`floor(∑{d}[n, tanh(sqrt(#))])`
-/

namespace A032741.P10589223118001378203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), Real.tanh (Real.sqrt (d : ℝ))⌋

end

end A032741.P10589223118001378203

namespace A032741

/-- `floor(∑{d}[n, tanh(sqrt(#))])` -/
def P10589223118001378203.Spec : Prop :=
  ∀ n, P10589223118001378203.a n = A032741 n

end A032741

/-! ## A032741.P1150663892915647765

`∑{d}[n, ceil(log(atan(#)))]`
-/

namespace A032741.P1150663892915647765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈Real.log (Real.arctan (d : ℝ))⌉

end

end A032741.P1150663892915647765

namespace A032741

/-- `∑{d}[n, ceil(log(atan(#)))]` -/
def P1150663892915647765.Spec : Prop :=
  ∀ n, P1150663892915647765.a n = A032741 n

end A032741

/-! ## A032741.P10567652278805432985

`∑{d}[n, round(atan(log(#)))]`
-/

namespace A032741.P10567652278805432985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (Real.arctan (Real.log (d : ℝ)))

end

end A032741.P10567652278805432985

namespace A032741

/-- `∑{d}[n, round(atan(log(#)))]` -/
def P10567652278805432985.Spec : Prop :=
  ∀ n, P10567652278805432985.a n = A032741 n

end A032741

/-! ## A032741.P11308473069865575294

`∑{d}[n, ceil(log2(atan(#)))]`
-/

namespace A032741.P11308473069865575294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈Real.logb 2 (Real.arctan (d : ℝ))⌉

end

end A032741.P11308473069865575294

namespace A032741

/-- `∑{d}[n, ceil(log2(atan(#)))]` -/
def P11308473069865575294.Spec : Prop :=
  ∀ n, P11308473069865575294.a n = A032741 n

end A032741

/-! ## A032741.P4782279021447478375

`log2(∏{d}[n, ceil(atan(#))])`
-/

namespace A032741.P4782279021447478375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ d ∈ Nat.divisors (f1 n), ⌈Real.arctan (d : ℝ)⌉ : ℤ) : ℝ)

end

end A032741.P4782279021447478375

namespace A032741

/-- `log2(∏{d}[n, ceil(atan(#))])` -/
def P4782279021447478375.Spec : Prop :=
  ∀ n, P4782279021447478375.a n = (A032741 n : ℝ)

end A032741

/-! ## A032741.P1827695122655073022

`∑{d}[n, ceil(tanh(log(#)))]`
-/

namespace A032741.P1827695122655073022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈Real.tanh (Real.log (d : ℝ))⌉

end

end A032741.P1827695122655073022

namespace A032741

/-- `∑{d}[n, ceil(tanh(log(#)))]` -/
def P1827695122655073022.Spec : Prop :=
  ∀ n, P1827695122655073022.a n = A032741 n

end A032741

/-! ## A032741.P5886431450298353381

`∑{d}[n, round(tanh(log(#)))]`
-/

namespace A032741.P5886431450298353381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (Real.tanh (Real.log (d : ℝ)))

end

end A032741.P5886431450298353381

namespace A032741

/-- `∑{d}[n, round(tanh(log(#)))]` -/
def P5886431450298353381.Spec : Prop :=
  ∀ n, P5886431450298353381.a n = A032741 n

end A032741

/-! ## A032741.P8948950259313895291

`ceil(∑{d}[n, tanh(log2(#))])`
-/

namespace A032741.P8948950259313895291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), Real.tanh (Real.logb 2 (d : ℝ))⌉

end

end A032741.P8948950259313895291

namespace A032741

/-- `ceil(∑{d}[n, tanh(log2(#))])` -/
def P8948950259313895291.Spec : Prop :=
  ∀ n, P8948950259313895291.a n = A032741 n

end A032741

/-! ## A032741.P17563847220500694459

`round(∑{d}[n, tanh(log2(#))])`
-/

namespace A032741.P17563847220500694459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), Real.tanh (Real.logb 2 (d : ℝ)))

end

end A032741.P17563847220500694459

namespace A032741

/-- `round(∑{d}[n, tanh(log2(#))])` -/
def P17563847220500694459.Spec : Prop :=
  ∀ n, P17563847220500694459.a n = A032741 n

end A032741

/-! ## A032741.P17065457709138233979

`floor(∑{d}[n, cos(acot(#))])`
-/

namespace A032741.P17065457709138233979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), Real.cos (SequenceMachineLib.acot (d : ℝ))⌋

end

end A032741.P17065457709138233979

namespace A032741

/-- `floor(∑{d}[n, cos(acot(#))])` -/
def P17065457709138233979.Spec : Prop :=
  ∀ n, P17065457709138233979.a n = A032741 n

end A032741

/-! ## A032741.P3957354489522217712

`∑{d}[n, floor(acos(acot(#)))]`
-/

namespace A032741.P3957354489522217712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arccos (SequenceMachineLib.acot (d : ℝ))⌋

end

end A032741.P3957354489522217712

namespace A032741

/-- `∑{d}[n, floor(acos(acot(#)))]` -/
def P3957354489522217712.Spec : Prop :=
  ∀ n, P3957354489522217712.a n = A032741 n

end A032741

/-! ## A032741.P13195441940189082225

`∑{d}[n, floor(acot(acot(#)))]`
-/

namespace A032741.P13195441940189082225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (d : ℝ))⌋

end

end A032741.P13195441940189082225

namespace A032741

/-- `∑{d}[n, floor(acot(acot(#)))]` -/
def P13195441940189082225.Spec : Prop :=
  ∀ n, P13195441940189082225.a n = A032741 n

end A032741

/-! ## A032741.P3022166995030670566

`∏{e}[n, #+1]-1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032741

/-- `∏{e}[n, #+1]-1` -/
def P3022166995030670566.Spec : Prop :=
  ∀ n, P3022166995030670566.a n = A032741 n

theorem P3022166995030670566.correct : P3022166995030670566.Spec := by
  intro n
  simp only [A032741]

end A032741

/-! ## A032741.P13705683194756215163

`∑{d}[n, (n+1)%#]`
-/

namespace A032741.P13705683194756215163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) % d

end

end A032741.P13705683194756215163

namespace A032741

/-- `∑{d}[n, (n+1)%#]` -/
def P13705683194756215163.Spec : Prop :=
  ∀ n, (P13705683194756215163.a n : ℤ) = A032741 n

end A032741

/-! ## A032741.P10962728146357604194

`∑{d}[n, 1-C(#, n)]`
-/

namespace A032741.P10962728146357604194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - (Nat.choose d n : ℤ))

end

end A032741.P10962728146357604194

namespace A032741

/-- `∑{d}[n, 1-C(#, n)]` -/
def P10962728146357604194.Spec : Prop :=
  ∀ n, P10962728146357604194.a n = A032741 n

end A032741

/-! ## A032741.P17925473315274482912

`∑{d}[n, abs(-1%#)]`
-/

namespace A032741.P17925473315274482912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |Int.tmod (-1) (d : ℤ)|

end

end A032741.P17925473315274482912

namespace A032741

/-- `∑{d}[n, abs(-1%#)]` -/
def P17925473315274482912.Spec : Prop :=
  ∀ n, P17925473315274482912.a n = A032741 n

end A032741

/-! ## A032741.P15739593554188878081

`∑{d}[n, #%n/#]`
-/

namespace A032741.P15739593554188878081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d % n : ℕ) : ℚ) / (d : ℚ)

end

end A032741.P15739593554188878081

namespace A032741

/-- `∑{d}[n, #%n/#]` -/
def P15739593554188878081.Spec : Prop :=
  ∀ n, P15739593554188878081.a n = (A032741 n : ℚ)

end A032741

/-! ## A032741.P9562637953830294647

`∑{d}[n, 1-floor(1/#)]`
-/

namespace A032741.P9562637953830294647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - ⌊1 / (d : ℚ)⌋)

end

end A032741.P9562637953830294647

namespace A032741

/-- `∑{d}[n, 1-floor(1/#)]` -/
def P9562637953830294647.Spec : Prop :=
  ∀ n, P9562637953830294647.a n = A032741 n

end A032741

/-! ## A032741.P11155821098754815259

`A319410(n)/2`
-/

namespace A032741.P11155821098754815259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319410 n : ℚ) / 2

end

end A032741.P11155821098754815259

namespace A032741

/-- `A319410(n)/2` -/
def P11155821098754815259.Spec : Prop :=
  ∀ n, P11155821098754815259.a n = (A032741 n : ℚ)

end A032741

/-!
# A032742: a(1) = 1; for n > 1, a(n) = largest proper divisor of n (that is, for n>1, maximum divisor d of n in range 1 <= d < n).

The programs for A032742, there is no canonical definition to state claims against.
-/

/-! ## A032742.P751691556863743115

`n+1-A060681(n+1)`
-/

namespace A032742.P751691556863743115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A060681 (n + 1)

end

end A032742.P751691556863743115

/-! ## A032742.P14489579072839730134

`(n+1)/A020639(n+1)`
-/

namespace A032742.P14489579072839730134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (n + 1) : ℚ)

end

end A032742.P14489579072839730134

/-! ## A032742.P14444360734970305146

`A130064(n+1)/A006530(n+1)`
-/

namespace A032742.P14444360734970305146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130064 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ)

end

end A032742.P14444360734970305146

/-! ## A032742.P2483199935632583142

`A250246(A302042(A250245(n+1)))`
-/

namespace A032742.P2483199935632583142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A302042 (A250245 (n + 1)).toNat).toNat

end

end A032742.P2483199935632583142

/-! ## A032742.P6970114457773550993

`A302026(A302032(A302025(n+1)))`
-/

namespace A032742.P6970114457773550993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (A302032 (A302025 (n + 1)).toNat).toNat

end

end A032742.P6970114457773550993

/-! ## A032742.P939960799742925012

`A117358(4*(n+1))`
-/

namespace A032742.P939960799742925012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (4 * (n + 1))

end

end A032742.P939960799742925012

/-! ## A032742.P10448699465467546756

`∑{d}[n+1, A300236(#)]`
-/

namespace A032742.P10448699465467546756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300236 d

end

end A032742.P10448699465467546756

/-! ## A032742.P15634053372645300551

`gcd(∑[n], A322982(n+1))`
-/

namespace A032742.P15634053372645300551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A322982 (n + 1))

end

end A032742.P15634053372645300551

/-! ## A032742.P4369684260162822148

`gcd(n+1, A126286(n+1))`
-/

namespace A032742.P4369684260162822148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A126286 (n + 1))

end

end A032742.P4369684260162822148

/-! ## A032742.P9425976645740255619

`xor(n+1, A106409(n+1))`
-/

namespace A032742.P9425976645740255619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A106409 (n + 1))

end

end A032742.P9425976645740255619

/-! ## A032742.P8876471548428320874

`(n+1)²/A285109(n+1)`
-/

namespace A032742.P8876471548428320874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A285109 (n + 1) : ℚ)

end

end A032742.P8876471548428320874

/-! ## A032742.P13082112810801511798

`(n+1)/sqrt(A088377(n+1))`
-/

namespace A032742.P13082112810801511798
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.sqrt (A088377 (n + 1) : ℝ)

end

end A032742.P13082112810801511798

/-! ## A032742.P7659441343192137836

`gcd(1-n², A220096(n+1))`
-/

namespace A032742.P7659441343192137836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n ^ 2 : ℤ)) (A220096 (n + 1))

end

end A032742.P7659441343192137836

/-! ## A032742.P1502591630863002640

`ceil((n+1)/A074828(n+1))`
-/

namespace A032742.P1502591630863002640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A074828 (n + 1) : ℚ)⌉

end

end A032742.P1502591630863002640

/-! ## A032742.P11723638899232586545

`(n+1)/(A061228(n+1)-(n+1))`
-/

namespace A032742.P11723638899232586545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A061228 (n + 1) - (n + 1 : ℤ) : ℚ)

end

end A032742.P11723638899232586545

/-! ## A032742.P15330773373883704393

`A089196(A028310(n))+1`
-/

namespace A032742.P15330773373883704393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089196 (A028310 n).toNat + 1

end

end A032742.P15330773373883704393

/-! ## A032742.P16397430712327390633

`A117818(A005451(n+1))`
-/

namespace A032742.P16397430712327390633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (A005451 (n + 1)).toNat

end

end A032742.P16397430712327390633

/-! ## A032742.P10506144504257872715

`A004525(A286472(n+1))`
-/

namespace A032742.P10506144504257872715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A286472 (n + 1)).toNat

end

end A032742.P10506144504257872715

/-! ## A032742.P11053793309415093568

`gcd(A005920(n), A126287(n+1))`
-/

namespace A032742.P11053793309415093568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005920 n) (A126287 (n + 1))

end

end A032742.P11053793309415093568

/-!
# A032743: Super-2 Numbers (2 * n^2 contains substring '22' in its decimal expansion).

The programs for A032743, there is no canonical definition to state claims against.
-/

/-! ## A032743.P2019806037062540166

`lt[A001356(2*(n+1)), A000005(A001368(n))]`
-/

namespace A032743.P2019806037062540166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001356 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001368 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032743.P2019806037062540166

/-!
# A032750: Palindromic Super-2 Numbers.

The programs for A032750, there is no canonical definition to state claims against.
-/

/-! ## A032750.P12914902599203950868

`∩[A002113(n+1), A032743(n+1)]`
-/

namespace A032750.P12914902599203950868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032750.P12914902599203950868

/-! ## A032750.P13937604195908921978

`∩[A032743(n+1), A083158(n+1)]`
-/

namespace A032750.P13937604195908921978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032750.P13937604195908921978

/-!
# A032758: Undulating primes (digits alternate).

The programs for A032758, there is no canonical definition to state claims against.
-/

/-! ## A032758.P3557064816189600426

`∩[A030291(n+1), A033619(A183217(n+1))]`
-/

namespace A032758.P3557064816189600426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A183217 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032758.P3557064816189600426

/-! ## A032758.P3412373763917270775

`p?[A242541(n+1)+char[4]]`
-/

namespace A032758.P3412373763917270775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242541 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032758.P3412373763917270775

/-! ## A032758.P16553908369166170730

`∩[A030291(n+1), A050757(n+1)]`
-/

namespace A032758.P16553908369166170730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032758.P16553908369166170730

/-! ## A032758.P2289612471152296074

`∩[A033619(n+1), A050757(n+1)]`
-/

namespace A032758.P2289612471152296074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032758.P2289612471152296074

/-!
# A032762: Take list of integers n >= 0, move left digit of each term to end of previous term.

The programs for A032762, there is no canonical definition to state claims against.
-/

/-! ## A032762.P12264678553831688130

`A004086(n)-Δ[A347470(A055649(n))]`
-/

namespace A032762.P12264678553831688130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 (A055649 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n - (f1 (n + 1) - f1 n)

end

end A032762.P12264678553831688130

/-! ## A032762.P2777523381124920361

`A004086(n)-A347470(∑[A023923(n)])`
-/

namespace A032762.P2777523381124920361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n - A347470 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032762.P2777523381124920361

/-! ## A032762.P9175292614654772532

`A077028(A025707(n))%A061954(n+1)`
-/

namespace A032762.P9175292614654772532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077028 (A025707 n).toNat) (A061954 (n + 1))

end

end A032762.P9175292614654772532

/-! ## A032762.P1072899455999571771

`(A108782(n)+A054055(n))*A034947(A211978(n+1))²`
-/

namespace A032762.P1072899455999571771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108782 n + A054055 n) * A034947 (A211978 (n + 1)).toNat ^ 2

end

end A032762.P1072899455999571771

/-! ## A032762.P15709661358352314138

`A130573(A108782(n)+A054055(n))`
-/

namespace A032762.P15709661358352314138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (A108782 n + A054055 n).toNat

end

end A032762.P15709661358352314138

/-!
# A032763: Take list of even numbers, move left digit of each term to end of previous term.

The programs for A032763, there is no canonical definition to state claims against.
-/

/-! ## A032763.P11125813546640764177

`A032762(A214671(n)%A005006(n+1))`
-/

namespace A032763.P11125813546640764177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032762 (Int.tmod (A214671 n) (A005006 (n + 1))).toNat

end

end A032763.P11125813546640764177

/-! ## A032763.P10602932992726600515

`A032762(A214671(n))%(A302801(A064704(n+1))+10)`
-/

namespace A032763.P10602932992726600515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032762 (A214671 n).toNat) (A302801 (A064704 (n + 1)).toNat + 10)

end

end A032763.P10602932992726600515

/-! ## A032763.P3135780793953989110

`A004093(A195181(n))^Δ[A056142(n)]`
-/

namespace A032763.P3135780793953989110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004093 (A195181 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A032763.P3135780793953989110

/-!
# A032764: Take list of odd numbers, move left digit of each term to end of previous term.

The programs for A032764, there is no canonical definition to state claims against.
-/

/-! ## A032764.P12651893349437612909

`A032762(2*n)+char[5-A052307(n)]`
-/

namespace A032764.P12651893349437612909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A052307 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032762 (2 * n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A032764.P12651893349437612909

/-! ## A032764.P4693840431948680305

`A036987(A138902(2*n))+A032762(2*n)`
-/

namespace A032764.P4693840431948680305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A138902 (2 * n)).toNat + A032762 (2 * n)

end

end A032764.P4693840431948680305

/-! ## A032764.P1463767248410687578

`or(A000035(A032762(2*n+1)), A032762(2*n))`
-/

namespace A032764.P1463767248410687578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A032762 (2 * n + 1)).toNat) (A032762 (2 * n))

end

end A032764.P1463767248410687578

/-! ## A032764.P3316391834212202310

`or(A000007(A325695(n)), A032762(2*n))`
-/

namespace A032764.P3316391834212202310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A325695 n).toNat) (A032762 (2 * n))

end

end A032764.P3316391834212202310

/-! ## A032764.P10575810632647772558

`A004086(lt[A027642(3*n+4), A029913(n+2)])`
-/

namespace A032764.P10575810632647772558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029913 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A032764.P10575810632647772558

/-!
# A032765: a(n) = floor(n*(n+1)*(n+2) / (n + n+1 + n+2)) = floor(n*(n+2)/3).

The programs for A032765, the canonical program `A032765.P11160371011652700691` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032765 has offset 0).

The definition of A032765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n+2)/3)` (program `A032765.P11160371011652700691`, by `A032765.P11160371011652700691.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A032765.P11160371011652700691

`floor(n*(n+2)/3)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032765

/-- `floor(n*(n+2)/3)` -/
def P11160371011652700691.Spec : Prop :=
  ∀ n, P11160371011652700691.a n = A032765 n

theorem P11160371011652700691.correct : P11160371011652700691.Spec := by
  intro n
  simp only [A032765]

end A032765

/-! ## A032765.P17282844330467886967

`floor(n*(n+1)*(n+2)/(n+n+1+n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A032765.P17282844330467886967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (n + 1) * (n + 2) : ℚ) / (n + n + 1 + n + 2 : ℚ)⌋

end

end A032765.P17282844330467886967

namespace A032765

/-- `floor(n*(n+1)*(n+2)/(n+n+1+n+2))` -/
def P17282844330467886967.Spec : Prop :=
  ∀ n, P17282844330467886967.a n = A032765 n

end A032765

/-! ## A032765.P8030287281811995556

`record[floor(n*(n-2)/3)]`
-/

namespace A032765.P8030287281811995556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * ((n : ℤ) - 2) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032765.P8030287281811995556

namespace A032765

/-- `record[floor(n*(n-2)/3)]` -/
def P8030287281811995556.Spec : Prop :=
  ∀ n, P8030287281811995556.a n = A032765 n

end A032765

/-! ## A032765.P13442076396296445745

`∑[n]-ceil(C(n, 2)/3)`
-/

namespace A032765.P13442076396296445745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌈(Nat.choose n 2 : ℚ) / 3⌉

end

end A032765.P13442076396296445745

namespace A032765

/-- `∑[n]-ceil(C(n, 2)/3)` -/
def P13442076396296445745.Spec : Prop :=
  ∀ n, P13442076396296445745.a n = A032765 n

end A032765

/-! ## A032765.P8009770626293118035

`round(n/sinh(3/(n+2)))`
-/

namespace A032765.P8009770626293118035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sinh (3 / (n + 2 : ℚ) : ℝ))

end

end A032765.P8009770626293118035

namespace A032765

/-- `round(n/sinh(3/(n+2)))` -/
def P8009770626293118035.Spec : Prop :=
  ∀ n, P8009770626293118035.a n = A032765 n

end A032765

/-! ## A032765.P16295462138201955781

`ceil(record[(1-n)²/3-1])`
-/

namespace A032765.P16295462138201955781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 : ℚ) / 3 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A032765.P16295462138201955781

namespace A032765

/-- `ceil(record[(1-n)²/3-1])` -/
def P16295462138201955781.Spec : Prop :=
  ∀ n, P16295462138201955781.a n = A032765 n

end A032765

/-! ## A032765.P9035662184054351620

`round(record[((1-n)²-2)/3])`
-/

namespace A032765.P9035662184054351620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 - 2 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A032765.P9035662184054351620

namespace A032765

/-- `round(record[((1-n)²-2)/3])` -/
def P9035662184054351620.Spec : Prop :=
  ∀ n, P9035662184054351620.a n = A032765 n

end A032765

/-! ## A032765.P5267612510774836889

`round((n+1)²/3-cos(1))`
-/

namespace A032765.P5267612510774836889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℚ) / 3 : ℝ) - Real.cos (1 : ℝ))

end

end A032765.P5267612510774836889

namespace A032765

/-- `round((n+1)²/3-cos(1))` -/
def P5267612510774836889.Spec : Prop :=
  ∀ n, P5267612510774836889.a n = A032765 n

end A032765

/-! ## A032765.P6341568634821826268

`round((tan(2)+(n+1)²)/3)`
-/

namespace A032765.P6341568634821826268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.tan (2 : ℝ) + ((n + 1) ^ 2 : ℝ)) / 3)

end

end A032765.P6341568634821826268

namespace A032765

/-- `round((tan(2)+(n+1)²)/3)` -/
def P6341568634821826268.Spec : Prop :=
  ∀ n, P6341568634821826268.a n = A032765 n

end A032765

/-! ## A032765.P1634066670774517664

`round(((n+1)²-asin(1))/3)`
-/

namespace A032765.P1634066670774517664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℝ) - Real.arcsin (1 : ℝ)) / 3)

end

end A032765.P1634066670774517664

namespace A032765

/-- `round(((n+1)²-asin(1))/3)` -/
def P1634066670774517664.Spec : Prop :=
  ∀ n, P1634066670774517664.a n = A032765 n

end A032765

/-! ## A032765.P6708147407351038794

`round((n+1)²/3-atan(1))`
-/

namespace A032765.P6708147407351038794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℚ) / 3 : ℝ) - Real.arctan (1 : ℝ))

end

end A032765.P6708147407351038794

namespace A032765

/-- `round((n+1)²/3-atan(1))` -/
def P6708147407351038794.Spec : Prop :=
  ∀ n, P6708147407351038794.a n = A032765 n

end A032765

/-! ## A032765.P13352678278013116936

`ceil((n+1)²/3-atan(2))`
-/

namespace A032765.P13352678278013116936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n + 1) ^ 2 : ℚ) / 3 : ℝ) - Real.arctan (2 : ℝ)⌉

end

end A032765.P13352678278013116936

namespace A032765

/-- `ceil((n+1)²/3-atan(2))` -/
def P13352678278013116936.Spec : Prop :=
  ∀ n, P13352678278013116936.a n = A032765 n

end A032765

/-! ## A032765.P14777911675586012222

`round(((n+1)²-cosh(1))/3)`
-/

namespace A032765.P14777911675586012222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℝ) - Real.cosh (1 : ℝ)) / 3)

end

end A032765.P14777911675586012222

namespace A032765

/-- `round(((n+1)²-cosh(1))/3)` -/
def P14777911675586012222.Spec : Prop :=
  ∀ n, P14777911675586012222.a n = A032765 n

end A032765

/-! ## A032765.P11553376976731789538

`ceil(((n+1)²-cosh(2))/3)`
-/

namespace A032765.P11553376976731789538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n + 1) ^ 2 : ℝ) - Real.cosh (2 : ℝ)) / 3⌉

end

end A032765.P11553376976731789538

namespace A032765

/-- `ceil(((n+1)²-cosh(2))/3)` -/
def P11553376976731789538.Spec : Prop :=
  ∀ n, P11553376976731789538.a n = A032765 n

end A032765

/-! ## A032765.P16515675973924613957

`ceil((n+1)²/3-sinh(1))`
-/

namespace A032765.P16515675973924613957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n + 1) ^ 2 : ℚ) / 3 : ℝ) - Real.sinh (1 : ℝ)⌉

end

end A032765.P16515675973924613957

namespace A032765

/-- `ceil((n+1)²/3-sinh(1))` -/
def P16515675973924613957.Spec : Prop :=
  ∀ n, P16515675973924613957.a n = A032765 n

end A032765

/-! ## A032765.P4041636342431181361

`round((n+1)²/3-tanh(1))`
-/

namespace A032765.P4041636342431181361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℚ) / 3 : ℝ) - Real.tanh (1 : ℝ))

end

end A032765.P4041636342431181361

namespace A032765

/-- `round((n+1)²/3-tanh(1))` -/
def P4041636342431181361.Spec : Prop :=
  ∀ n, P4041636342431181361.a n = A032765 n

end A032765

/-! ## A032765.P6819393533180453140

`round((n+1)²/3-cot(1))`
-/

namespace A032765.P6819393533180453140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℚ) / 3 : ℝ) - Real.cot (1 : ℝ))

end

end A032765.P6819393533180453140

namespace A032765

/-- `round((n+1)²/3-cot(1))` -/
def P6819393533180453140.Spec : Prop :=
  ∀ n, P6819393533180453140.a n = A032765 n

end A032765

/-! ## A032765.P784024647564075687

`round((n+1)²/3-acot(1))`
-/

namespace A032765.P784024647564075687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℚ) / 3 : ℝ) - SequenceMachineLib.acot (1 : ℝ))

end

end A032765.P784024647564075687

namespace A032765

/-- `round((n+1)²/3-acot(1))` -/
def P784024647564075687.Spec : Prop :=
  ∀ n, P784024647564075687.a n = A032765 n

end A032765

/-! ## A032765.P11023273285431691094

`floor(lcm(n, n-1)/3)+n`
-/

namespace A032765.P11023273285431691094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) / 3⌋ + (n : ℤ)

end

end A032765.P11023273285431691094

namespace A032765

/-- `floor(lcm(n, n-1)/3)+n` -/
def P11023273285431691094.Spec : Prop :=
  ∀ n, P11023273285431691094.a n = A032765 n

end A032765

/-! ## A032765.P17209318555048436052

`∑[a(n-3)+2]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A032765.P17209318555048436052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 3] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032765.P17209318555048436052

namespace A032765

/-- `∑[a(n-3)+2]` -/
def P17209318555048436052.Spec : Prop :=
  ∀ n, (P17209318555048436052.a n : ℤ) = A032765 n

end A032765

/-!
# A032766: Numbers that are congruent to 0 or 1 (mod 3).

The programs for A032766, the canonical program `A032766.P1975864606945388751` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032766 has offset 0).

The definition of A032766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032766.P1975864606945388751

`floor(3*n/2)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032766

/-- `floor(3*n/2)` -/
def P1975864606945388751.Spec : Prop :=
  ∀ n, P1975864606945388751.a n = A032766 n

theorem P1975864606945388751.correct : P1975864606945388751.Spec := by
  intro n
  simp only [A032766]

end A032766

/-! ## A032766.P15797558065599092450

`a(n-2)+3` with `a(0)=0, a(1)=1`
-/

namespace A032766.P15797558065599092450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 3

end

end A032766.P15797558065599092450

namespace A032766

/-- `a(n-2)+3` -/
def P15797558065599092450.Spec : Prop :=
  ∀ n, (P15797558065599092450.a n : ℤ) = A032766 n

end A032766

/-! ## A032766.P8232774047772047450

`∑[gcd(2, n)]-2`
-/

namespace A032766.P8232774047772047450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A032766.P8232774047772047450

namespace A032766

/-- `∑[gcd(2, n)]-2` -/
def P8232774047772047450.Spec : Prop :=
  ∀ n, P8232774047772047450.a n = A032766 n

end A032766

/-! ## A032766.P3750241732187594998

`comp[lcm(3, n)-1]`
-/

namespace A032766.P3750241732187594998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A032766.P3750241732187594998

namespace A032766

/-- `comp[lcm(3, n)-1]` -/
def P3750241732187594998.Spec : Prop :=
  ∀ n, (P3750241732187594998.a n : ℤ) = A032766 n

end A032766

/-! ## A032766.P10904045766047648893

`record[n/(n%3)!]`
-/

namespace A032766.P10904045766047648893
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial (n % 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032766.P10904045766047648893

namespace A032766

/-- `record[n/(n%3)!]` -/
def P10904045766047648893.Spec : Prop :=
  ∀ n, P10904045766047648893.a n = (A032766 n : ℚ)

end A032766

/-! ## A032766.P7545554397444254161

`record[n-dr(n^6)]`
-/

namespace A032766.P7545554397444254161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (n ^ 6 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032766.P7545554397444254161

namespace A032766

/-- `record[n-dr(n^6)]` -/
def P7545554397444254161.Spec : Prop :=
  ∀ n, P7545554397444254161.a n = A032766 n

end A032766

/-! ## A032766.P14130345634323808688

`∑[∑{d}[n, round(1/#)]]`
-/

namespace A032766.P14130345634323808688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.roundAway (1 / (d : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032766.P14130345634323808688

namespace A032766

/-- `∑[∑{d}[n, round(1/#)]]` -/
def P14130345634323808688.Spec : Prop :=
  ∀ n, P14130345634323808688.a n = A032766 n

end A032766

/-! ## A032766.P12552423208251858397

`and(3*n, -2)/2`
-/

namespace A032766.P12552423208251858397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (3 * n : ℤ) (-2) : ℚ) / 2

end

end A032766.P12552423208251858397

namespace A032766

/-- `and(3*n, -2)/2` -/
def P12552423208251858397.Spec : Prop :=
  ∀ n, P12552423208251858397.a n = (A032766 n : ℚ)

end A032766

/-! ## A032766.P16718073386931925856

`∑[(n-1)%2+1]`
-/

namespace A032766.P16718073386931925856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032766.P16718073386931925856

namespace A032766

/-- `∑[(n-1)%2+1]` -/
def P16718073386931925856.Spec : Prop :=
  ∀ n, P16718073386931925856.a n = A032766 n

end A032766

/-! ## A032766.P15479334409036112218

`∑[1-(1-n)%2]`
-/

namespace A032766.P15479334409036112218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (1 - (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032766.P15479334409036112218

namespace A032766

/-- `∑[1-(1-n)%2]` -/
def P15479334409036112218.Spec : Prop :=
  ∀ n, P15479334409036112218.a n = A032766 n

end A032766

/-! ## A032766.P1595576600999521093

`∑[2-and(1, n)]-2`
-/

namespace A032766.P1595576600999521093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A032766.P1595576600999521093

namespace A032766

/-- `∑[2-and(1, n)]-2` -/
def P1595576600999521093.Spec : Prop :=
  ∀ n, P1595576600999521093.a n = A032766 n

end A032766

/-! ## A032766.P17963928595073386395

`comp[3*xor(1, n)-1]`
-/

namespace A032766.P17963928595073386395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.xor 1 n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A032766.P17963928595073386395

namespace A032766

/-- `comp[3*xor(1, n)-1]` -/
def P17963928595073386395.Spec : Prop :=
  ∀ n, (P17963928595073386395.a n : ℤ) = A032766 n

end A032766

/-! ## A032766.P13068477959812610996

`∑[C(2, a(n-1))]` with `a(0)=0`
-/

namespace A032766.P13068477959812610996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose 2 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032766.P13068477959812610996

namespace A032766

/-- `∑[C(2, a(n-1))]` -/
def P13068477959812610996.Spec : Prop :=
  ∀ n, (P13068477959812610996.a n : ℤ) = A032766 n

end A032766

/-! ## A032766.P18209951790505562010

`and(n, -2)/2+n`
-/

namespace A032766.P18209951790505562010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-2) : ℚ) / 2 + (n : ℚ)

end

end A032766.P18209951790505562010

namespace A032766

/-- `and(n, -2)/2+n` -/
def P18209951790505562010.Spec : Prop :=
  ∀ n, P18209951790505562010.a n = (A032766 n : ℚ)

end A032766

/-! ## A032766.P10992228715763241914

`floor(or(1, n)/2)+n`
-/

namespace A032766.P10992228715763241914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 n : ℚ) / 2⌋ + (n : ℤ)

end

end A032766.P10992228715763241914

namespace A032766

/-- `floor(or(1, n)/2)+n` -/
def P10992228715763241914.Spec : Prop :=
  ∀ n, P10992228715763241914.a n = A032766 n

end A032766

/-! ## A032766.P17315460539957684870

`floor(xor(1, n)/2)+n`
-/

namespace A032766.P17315460539957684870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n : ℚ) / 2⌋ + (n : ℤ)

end

end A032766.P17315460539957684870

namespace A032766

/-- `floor(xor(1, n)/2)+n` -/
def P17315460539957684870.Spec : Prop :=
  ∀ n, P17315460539957684870.a n = A032766 n

end A032766

/-! ## A032766.P11682798220902689834

`record[n-(2*n)%3]`
-/

namespace A032766.P11682798220902689834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((2 * n % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032766.P11682798220902689834

namespace A032766

/-- `record[n-(2*n)%3]` -/
def P11682798220902689834.Spec : Prop :=
  ∀ n, P11682798220902689834.a n = A032766 n

end A032766

/-! ## A032766.P13757080639016615274

`record[n/gcd(3, n+1)]`
-/

namespace A032766.P13757080639016615274
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 3 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032766.P13757080639016615274

namespace A032766

/-- `record[n/gcd(3, n+1)]` -/
def P13757080639016615274.Spec : Prop :=
  ∀ n, P13757080639016615274.a n = (A032766 n : ℚ)

end A032766

/-! ## A032766.P17747900780434933604

`comp[n-(n+1)%3]`
-/

namespace A032766.P17747900780434933604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n + 1) % 3 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A032766.P17747900780434933604

namespace A032766

/-- `comp[n-(n+1)%3]` -/
def P17747900780434933604.Spec : Prop :=
  ∀ n, (P17747900780434933604.a n : ℤ) = A032766 n

end A032766

/-! ## A032766.P12613464288079856267

`record[n-val(n+1, 3)]`
-/

namespace A032766.P12613464288079856267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (n + 1) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032766.P12613464288079856267

namespace A032766

/-- `record[n-val(n+1, 3)]` -/
def P12613464288079856267.Spec : Prop :=
  ∀ n, P12613464288079856267.a n = A032766 n

end A032766

/-!
# A032767: a(n) = floor ( n(n+1)(n+2)(n+3) / (n+(n+1)+(n+2)+(n+3)) ).

The programs for A032767, the canonical program `A032767.P7214956284991244774` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032767 has offset 0).

The definition of A032767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n+1)*(n+2)*(n+3)/(n+n+1+n+2+n+3))` (program `A032767.P7214956284991244774`, by `A032767.P7214956284991244774.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A032767.P7214956284991244774

`floor(n*(n+1)*(n+2)*(n+3)/(n+n+1+n+2+n+3))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032767

/-- `floor(n*(n+1)*(n+2)*(n+3)/(n+n+1+n+2+n+3))` -/
def P7214956284991244774.Spec : Prop :=
  ∀ n, P7214956284991244774.a n = A032767 n

theorem P7214956284991244774.correct : P7214956284991244774.Spec := by
  intro n
  simp only [A032767]

end A032767

/-! ## A032767.P10327964536485211695

`record[floor(A046092(n)/A088558(n+1))]`
-/

namespace A032767.P10327964536485211695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046092 n : ℚ) / (A088558 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032767.P10327964536485211695

namespace A032767

/-- `record[floor(A046092(n)/A088558(n+1))]` -/
def P10327964536485211695.Spec : Prop :=
  ∀ n, P10327964536485211695.a n = A032767 n

end A032767

/-! ## A032767.P4164380082379180031

`∑[∑[∑[2*A093879((n+1)²²)]]]`
-/

namespace A032767.P4164380082379180031
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093879 (((n + 1) ^ 2) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032767.P4164380082379180031

namespace A032767

/-- `∑[∑[∑[2*A093879((n+1)²²)]]]` -/
def P4164380082379180031.Spec : Prop :=
  ∀ n, P4164380082379180031.a n = A032767 n

end A032767

/-! ## A032767.P7416284980203191729

`Δ[A118729(A044913(n+1)²)]`
-/

namespace A032767.P7416284980203191729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 (A044913 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032767.P7416284980203191729

namespace A032767

/-- `Δ[A118729(A044913(n+1)²)]` -/
def P7416284980203191729.Spec : Prop :=
  ∀ n, P7416284980203191729.a n = A032767 n

end A032767

/-! ## A032767.P5252799241044842172

`Δ[A118729(A061497(n+1)²)]`
-/

namespace A032767.P5252799241044842172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 (A061497 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032767.P5252799241044842172

namespace A032767

/-- `Δ[A118729(A061497(n+1)²)]` -/
def P5252799241044842172.Spec : Prop :=
  ∀ n, P5252799241044842172.a n = A032767 n

end A032767

/-!
# A032768: a(n) = floor( n(n+1)(n+2)(n+3)(n+4) / (n+(n+1)+(n+2)+(n+3)+(n+4)) ).

The programs for A032768, the canonical program `A032768.P6556667677028231450` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032768 has offset 0).

The definition of A032768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032768.P6556667677028231450

`floor(n*(n+1)*(n+3)*(n+4)/5)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032768

/-- `floor(n*(n+1)*(n+3)*(n+4)/5)` -/
def P6556667677028231450.Spec : Prop :=
  ∀ n, P6556667677028231450.a n = A032768 n

theorem P6556667677028231450.correct : P6556667677028231450.Spec := by
  intro n
  simp only [A032768]

end A032768

/-! ## A032768.P12525621347913215133

`∑[4*(∑[A184535(n+1)]-1)]`
-/

namespace A032768.P12525621347913215133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184535 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032768.P12525621347913215133

namespace A032768

/-- `∑[4*(∑[A184535(n+1)]-1)]` -/
def P12525621347913215133.Spec : Prop :=
  ∀ n, P12525621347913215133.a n = A032768 n

end A032768

/-! ## A032768.P13175167367664885342

`∑[∑[∑[4*A239492(n+1)]]]`
-/

namespace A032768.P13175167367664885342
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A239492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032768.P13175167367664885342

namespace A032768

/-- `∑[∑[∑[4*A239492(n+1)]]]` -/
def P13175167367664885342.Spec : Prop :=
  ∀ n, P13175167367664885342.a n = A032768 n

end A032768

/-! ## A032768.P7525353870733167451

`A011915(n+1)+2*(n+1)*(n²+n)`
-/

namespace A032768.P7525353870733167451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011915 (n + 1) + (2 * ((n + 1) * (n ^ 2 + n)) : ℤ)

end

end A032768.P7525353870733167451

namespace A032768

/-- `A011915(n+1)+2*(n+1)*(n²+n)` -/
def P7525353870733167451.Spec : Prop :=
  ∀ n, P7525353870733167451.a n = A032768 n

end A032768

/-! ## A032768.P17715131178383106355

`∑[4*A029143(A016921(n))]`
-/

namespace A032768.P17715131178383106355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A029143 (A016921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032768.P17715131178383106355

namespace A032768

/-- `∑[4*A029143(A016921(n))]` -/
def P17715131178383106355.Spec : Prop :=
  ∀ n, P17715131178383106355.a n = A032768 n

end A032768

/-! ## A032768.P4524194038028086816

`2*A130520((n+2)²-1)`
-/

namespace A032768.P4524194038028086816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130520 ((n + 2) ^ 2 - 1)

end

end A032768.P4524194038028086816

namespace A032768

/-- `2*A130520((n+2)²-1)` -/
def P4524194038028086816.Spec : Prop :=
  ∀ n, P4524194038028086816.a n = A032768 n

end A032768

/-! ## A032768.P11874565403020042327

`A085577((n+2)²)-(n+2)²`
-/

namespace A032768.P11874565403020042327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085577 ((n + 2) ^ 2) - ((n + 2) ^ 2 : ℤ)

end

end A032768.P11874565403020042327

namespace A032768

/-- `A085577((n+2)²)-(n+2)²` -/
def P11874565403020042327.Spec : Prop :=
  ∀ n, P11874565403020042327.a n = A032768 n

end A032768

/-! ## A032768.P6354211053804508643

`A036404((n+2)²)-(n+2)²`
-/

namespace A032768.P6354211053804508643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036404 ((n + 2) ^ 2) - ((n + 2) ^ 2 : ℤ)

end

end A032768.P6354211053804508643

namespace A032768

/-- `A036404((n+2)²)-(n+2)²` -/
def P6354211053804508643.Spec : Prop :=
  ∀ n, P6354211053804508643.a n = A032768 n

end A032768

/-! ## A032768.P11122026045857027229

`A008807(A161532(n))`
-/

namespace A032768.P11122026045857027229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008807 (A161532 n).toNat

end

end A032768.P11122026045857027229

namespace A032768

/-- `A008807(A161532(n))` -/
def P11122026045857027229.Spec : Prop :=
  ∀ n, P11122026045857027229.a n = A032768 n

end A032768

/-! ## A032768.P13203521699598086600

`A131242(A000384(n+2)+n+1)`
-/

namespace A032768.P13203521699598086600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 (A000384 (n + 2) + (n + 1 : ℤ)).toNat

end

end A032768.P13203521699598086600

namespace A032768

/-- `A131242(A000384(n+2)+n+1)` -/
def P13203521699598086600.Spec : Prop :=
  ∀ n, P13203521699598086600.a n = A032768 n

end A032768

/-!
# A032769: Numbers that are congruent to {0, 1, 2, 4} mod 5.

The programs for A032769, the canonical program `A032769.P17564608565559347843` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032769 has offset 1).

The definition of A032769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032769.P18101495560309782651

`floor((5*(n+1)-4)/4)`
-/

namespace A032769.P18101495560309782651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 * (n + 1) : ℤ) - 4 : ℚ) / 4⌋

end

end A032769.P18101495560309782651

namespace A032769

/-- `floor((5*(n+1)-4)/4)` -/
def P18101495560309782651.Spec : Prop :=
  ∀ n, P18101495560309782651.a n = A032769 (n + 1)

end A032769

/-! ## A032769.P17564608565559347843

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032769

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P17564608565559347843.Spec : Prop :=
  ∀ n, P17564608565559347843.a n = A032769 (n + 1)

theorem P17564608565559347843.correct : P17564608565559347843.Spec := by
  intro n
  simp only [A032769, Nat.add_sub_cancel]

end A032769

/-! ## A032769.P8163563743076362064

`lt[n, lcm(5, 3-n)]`
-/

namespace A032769.P8163563743076362064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (3 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032769.P8163563743076362064

namespace A032769

/-- `lt[n, lcm(5, 3-n)]` -/
def P8163563743076362064.Spec : Prop :=
  ∀ n, (P8163563743076362064.a n : ℤ) = A032769 (n + 1)

end A032769

/-! ## A032769.P14502626167427108191

`∑[char[or(3, n)]]+n`
-/

namespace A032769.P14502626167427108191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A032769.P14502626167427108191

namespace A032769

/-- `∑[char[or(3, n)]]+n` -/
def P14502626167427108191.Spec : Prop :=
  ∀ n, (P14502626167427108191.a n : ℤ) = A032769 (n + 1)

end A032769

/-! ## A032769.P16972904036688337863

`comp[a(n-1)+5]` with `a(0)=3`
-/

namespace A032769.P16972904036688337863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A032769.P16972904036688337863

namespace A032769

/-- `comp[a(n-1)+5]` -/
def P16972904036688337863.Spec : Prop :=
  ∀ n, (P16972904036688337863.a n : ℤ) = A032769 (n + 1)

end A032769

/-! ## A032769.P17261792867943003227

`record[n/gcd(5, n+2)]`
-/

namespace A032769.P17261792867943003227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 5 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032769.P17261792867943003227

namespace A032769

/-- `record[n/gcd(5, n+2)]` -/
def P17261792867943003227.Spec : Prop :=
  ∀ n, P17261792867943003227.a n = (A032769 (n + 1) : ℚ)

end A032769

/-! ## A032769.P9040807656030709887

`comp[n-(n+2)%5]`
-/

namespace A032769.P9040807656030709887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n + 2) % 5 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A032769.P9040807656030709887

namespace A032769

/-- `comp[n-(n+2)%5]` -/
def P9040807656030709887.Spec : Prop :=
  ∀ n, (P9040807656030709887.a n : ℤ) = A032769 (n + 1)

end A032769

/-! ## A032769.P7386331030953647481

`record[n-val(n+2, 5)]`
-/

namespace A032769.P7386331030953647481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (n + 2) 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032769.P7386331030953647481

namespace A032769

/-- `record[n-val(n+2, 5)]` -/
def P7386331030953647481.Spec : Prop :=
  ∀ n, P7386331030953647481.a n = A032769 (n + 1)

end A032769

/-! ## A032769.P1183442953388545894

`∑[C(n, 3)%2]+n`
-/

namespace A032769.P1183442953388545894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A032769.P1183442953388545894

namespace A032769

/-- `∑[C(n, 3)%2]+n` -/
def P1183442953388545894.Spec : Prop :=
  ∀ n, (P1183442953388545894.a n : ℤ) = A032769 (n + 1)

end A032769

/-! ## A032769.P659201585332744919

`∑[and(1, C(n, 3))]+n`
-/

namespace A032769.P659201585332744919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose n 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A032769.P659201585332744919

namespace A032769

/-- `∑[and(1, C(n, 3))]+n` -/
def P659201585332744919.Spec : Prop :=
  ∀ n, (P659201585332744919.a n : ℤ) = A032769 (n + 1)

end A032769

/-! ## A032769.P13092276426338692112

`record[gcd(n, val(n+2, 5))]`
-/

namespace A032769.P13092276426338692112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (SequenceMachineLib.valuation (n + 2) 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032769.P13092276426338692112

namespace A032769

/-- `record[gcd(n, val(n+2, 5))]` -/
def P13092276426338692112.Spec : Prop :=
  ∀ n, (P13092276426338692112.a n : ℤ) = A032769 (n + 1)

end A032769

/-! ## A032769.P9086046767183694348

`∑[C(n, or(3, n))]+n`
-/

namespace A032769.P9086046767183694348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.lor 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A032769.P9086046767183694348

namespace A032769

/-- `∑[C(n, or(3, n))]+n` -/
def P9086046767183694348.Spec : Prop :=
  ∀ n, (P9086046767183694348.a n : ℤ) = A032769 (n + 1)

end A032769

/-! ## A032769.P11469237610064744494

`∑[char[record[xor(3, n)]]]+n`
-/

namespace A032769.P11469237610064744494
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A032769.P11469237610064744494

namespace A032769

/-- `∑[char[record[xor(3, n)]]]+n` -/
def P11469237610064744494.Spec : Prop :=
  ∀ n, (P11469237610064744494.a n : ℤ) = A032769 (n + 1)

end A032769

/-! ## A032769.P9717476083361893977

`eq[1, n^val(n+2, 5)]`
-/

namespace A032769.P9717476083361893977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (n + 2) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032769.P9717476083361893977

namespace A032769

/-- `eq[1, n^val(n+2, 5)]` -/
def P9717476083361893977.Spec : Prop :=
  ∀ n, (P9717476083361893977.a n : ℤ) = A032769 (n + 1)

end A032769

/-! ## A032769.P2081289862784886388

`lt[n^val(n+2, 5), 2]`
-/

namespace A032769.P2081289862784886388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (n + 2) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032769.P2081289862784886388

namespace A032769

/-- `lt[n^val(n+2, 5), 2]` -/
def P2081289862784886388.Spec : Prop :=
  ∀ n, (P2081289862784886388.a n : ℤ) = A032769 (n + 1)

end A032769

/-! ## A032769.P507543128857706397

`lt[n, lcm(10, n+2)/4]`
-/

namespace A032769.P507543128857706397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 10 (n + 2) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A032769.P507543128857706397

namespace A032769

/-- `lt[n, lcm(10, n+2)/4]` -/
def P507543128857706397.Spec : Prop :=
  ∀ n, (P507543128857706397.a n : ℤ) = A032769 (n + 1)

end A032769

/-! ## A032769.P2514149666690603580

`eq[n, val(n+2, 5)+n]`
-/

namespace A032769.P2514149666690603580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 5 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032769.P2514149666690603580

namespace A032769

/-- `eq[n, val(n+2, 5)+n]` -/
def P2514149666690603580.Spec : Prop :=
  ∀ n, (P2514149666690603580.a n : ℤ) = A032769 (n + 1)

end A032769

/-! ## A032769.P8573078970308561615

`floor(∑[n%2]/2)+n`
-/

namespace A032769.P8573078970308561615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋ + (n : ℤ)

end

end A032769.P8573078970308561615

namespace A032769

/-- `floor(∑[n%2]/2)+n` -/
def P8573078970308561615.Spec : Prop :=
  ∀ n, P8573078970308561615.a n = A032769 (n + 1)

end A032769

/-! ## A032769.P5069018371990546732

`∑[gcd(1-n, ∑[n])]-1`
-/

namespace A032769.P5069018371990546732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A032769.P5069018371990546732

namespace A032769

/-- `∑[gcd(1-n, ∑[n])]-1` -/
def P5069018371990546732.Spec : Prop :=
  ∀ n, P5069018371990546732.a n = A032769 (n + 1)

end A032769

/-! ## A032769.P6248932124558457232

`a(n-4)+5` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A032769.P6248932124558457232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 4] fun n a =>
  a (n - 4) + 5

end

end A032769.P6248932124558457232

namespace A032769

/-- `a(n-4)+5` -/
def P6248932124558457232.Spec : Prop :=
  ∀ n, (P6248932124558457232.a n : ℤ) = A032769 (n + 1)

end A032769

/-!
# A032770: Integer quotients of n(n + 1)(n + 2)(n + 3)(n + 4) / (n+(n+1)+(n+2)+(n+3)+(n+4)).

The programs for A032770, the canonical program `A032770.P4188714620119748451` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032770 has offset 0).

The definition of A032770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032770.P4188714620119748451

`A032768(lt[n, lcm(5, 3-n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032770

/-- `A032768(lt[n, lcm(5, 3-n)])` -/
def P4188714620119748451.Spec : Prop :=
  ∀ n, P4188714620119748451.a n = A032770 n

theorem P4188714620119748451.correct : P4188714620119748451.Spec := by
  intro n
  simp only [A032770]

end A032770

/-! ## A032770.P9268326198790161828

`A032768(record[n-val(n+2, 5)])`
-/

namespace A032770.P9268326198790161828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (n + 2) 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A032770.P9268326198790161828

namespace A032770

/-- `A032768(record[n-val(n+2, 5)])` -/
def P9268326198790161828.Spec : Prop :=
  ∀ n, P9268326198790161828.a n = A032770 n

end A032770

/-! ## A032770.P355537897049409344

`A032768(∑[and(1, C(n, 3))]+n)`
-/

namespace A032770.P355537897049409344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose n 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A032770.P355537897049409344

namespace A032770

/-- `A032768(∑[and(1, C(n, 3))]+n)` -/
def P355537897049409344.Spec : Prop :=
  ∀ n, P355537897049409344.a n = A032770 n

end A032770

/-! ## A032770.P10279446926603339879

`A032768(record[gcd(n, val(n+2, 5))])`
-/

namespace A032770.P10279446926603339879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (SequenceMachineLib.valuation (n + 2) 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A032770.P10279446926603339879

namespace A032770

/-- `A032768(record[gcd(n, val(n+2, 5))])` -/
def P10279446926603339879.Spec : Prop :=
  ∀ n, P10279446926603339879.a n = A032770 n

end A032770

/-! ## A032770.P7420209456573245788

`A032768(∑[and(2, n^3)!]-1)`
-/

namespace A032770.P7420209456573245788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 (n ^ 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A032770.P7420209456573245788

namespace A032770

/-- `A032768(∑[and(2, n^3)!]-1)` -/
def P7420209456573245788.Spec : Prop :=
  ∀ n, P7420209456573245788.a n = A032770 n

end A032770

/-! ## A032770.P17056187736037731790

`A032768(eq[n, val(n+2, 5)+n])`
-/

namespace A032770.P17056187736037731790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 5 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A032770.P17056187736037731790

namespace A032770

/-- `A032768(eq[n, val(n+2, 5)+n])` -/
def P17056187736037731790.Spec : Prop :=
  ∀ n, P17056187736037731790.a n = A032770 n

end A032770

/-! ## A032770.P17676903891948501312

`A032768(A032769(n+1))`
-/

namespace A032770.P17676903891948501312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 (A032769 (n + 1)).toNat

end

end A032770.P17676903891948501312

namespace A032770

/-- `A032768(A032769(n+1))` -/
def P17676903891948501312.Spec : Prop :=
  ∀ n, P17676903891948501312.a n = A032770 n

end A032770

/-! ## A032770.P17178991650853617390

`A032768(floor(A002081(n)/4))`
-/

namespace A032770.P17178991650853617390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 ⌊(A002081 n : ℚ) / 4⌋.toNat

end

end A032770.P17178991650853617390

namespace A032770

/-- `A032768(floor(A002081(n)/4))` -/
def P17178991650853617390.Spec : Prop :=
  ∀ n, P17178991650853617390.a n = A032770 n

end A032770

/-! ## A032770.P17126169745280686031

`A032768(floor(A016861(n)/4))`
-/

namespace A032770.P17126169745280686031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 ⌊(A016861 n : ℚ) / 4⌋.toNat

end

end A032770.P17126169745280686031

namespace A032770

/-- `A032768(floor(A016861(n)/4))` -/
def P17126169745280686031.Spec : Prop :=
  ∀ n, P17126169745280686031.a n = A032770 n

end A032770

/-! ## A032770.P14757786773877582319

`record[gcd(A032768(n), A158874(n))]`
-/

namespace A032770.P14757786773877582319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032768 n) (A158874 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032770.P14757786773877582319

namespace A032770

/-- `record[gcd(A032768(n), A158874(n))]` -/
def P14757786773877582319.Spec : Prop :=
  ∀ n, (P14757786773877582319.a n : ℤ) = A032770 n

end A032770

/-! ## A032770.P1864484069055035984

`A032768(A001068(n+1)-1)`
-/

namespace A032770.P1864484069055035984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 (A001068 (n + 1) - 1).toNat

end

end A032770.P1864484069055035984

namespace A032770

/-- `A032768(A001068(n+1)-1)` -/
def P1864484069055035984.Spec : Prop :=
  ∀ n, P1864484069055035984.a n = A032770 n

end A032770

/-! ## A032770.P9406376552418725036

`A032768(A004526(A004526(n+1))+n)`
-/

namespace A032770.P9406376552418725036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 (A004526 (A004526 (n + 1)).toNat + (n : ℤ)).toNat

end

end A032770.P9406376552418725036

namespace A032770

/-- `A032768(A004526(A004526(n+1))+n)` -/
def P9406376552418725036.Spec : Prop :=
  ∀ n, P9406376552418725036.a n = A032770 n

end A032770

/-!
# A032775: Numbers that are congruent to {0, 1, 2, 3, 5, 6} mod 7.

The programs for A032775, the canonical program `A032775.P12893841435385809527` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032775 has offset 1).

The definition of A032775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032775.P12893841435385809527

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=6, a(6)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032775

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P12893841435385809527.Spec : Prop :=
  ∀ n, P12893841435385809527.a n = A032775 (n + 1)

theorem P12893841435385809527.correct : P12893841435385809527.Spec := by
  intro n
  simp only [A032775, Nat.add_sub_cancel]

end A032775

/-! ## A032775.P13163049636283764318

`comp[7*n-3]`
-/

namespace A032775.P13163049636283764318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A032775.P13163049636283764318

namespace A032775

/-- `comp[7*n-3]` -/
def P13163049636283764318.Spec : Prop :=
  ∀ n, (P13163049636283764318.a n : ℤ) = A032775 (n + 1)

end A032775

/-! ## A032775.P13776506304763006043

`lt[n, lcm(7, 4-n)]`
-/

namespace A032775.P13776506304763006043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (4 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032775.P13776506304763006043

namespace A032775

/-- `lt[n, lcm(7, 4-n)]` -/
def P13776506304763006043.Spec : Prop :=
  ∀ n, (P13776506304763006043.a n : ℤ) = A032775 (n + 1)

end A032775

/-! ## A032775.P7333724760347111587

`record[n/gcd(7, n+3)]`
-/

namespace A032775.P7333724760347111587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 7 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032775.P7333724760347111587

namespace A032775

/-- `record[n/gcd(7, n+3)]` -/
def P7333724760347111587.Spec : Prop :=
  ∀ n, P7333724760347111587.a n = (A032775 (n + 1) : ℚ)

end A032775

/-! ## A032775.P7490027533910594704

`record[n-val(n+3, 7)]`
-/

namespace A032775.P7490027533910594704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (n + 3) 7 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032775.P7490027533910594704

namespace A032775

/-- `record[n-val(n+3, 7)]` -/
def P7490027533910594704.Spec : Prop :=
  ∀ n, P7490027533910594704.a n = A032775 (n + 1)

end A032775

/-! ## A032775.P15080837508014779576

`record[gcd(n, val(n+3, 7))]`
-/

namespace A032775.P15080837508014779576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (SequenceMachineLib.valuation (n + 3) 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032775.P15080837508014779576

namespace A032775

/-- `record[gcd(n, val(n+3, 7))]` -/
def P15080837508014779576.Spec : Prop :=
  ∀ n, (P15080837508014779576.a n : ℤ) = A032775 (n + 1)

end A032775

/-! ## A032775.P1036133429803045240

`eq[0, n*val(n+3, 7)]`
-/

namespace A032775.P1036133429803045240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (n + 3) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032775.P1036133429803045240

namespace A032775

/-- `eq[0, n*val(n+3, 7)]` -/
def P1036133429803045240.Spec : Prop :=
  ∀ n, (P1036133429803045240.a n : ℤ) = A032775 (n + 1)

end A032775

/-! ## A032775.P1691748908816285967

`lt[n*val(n+3, 7), 1]`
-/

namespace A032775.P1691748908816285967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (n + 3) 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032775.P1691748908816285967

namespace A032775

/-- `lt[n*val(n+3, 7), 1]` -/
def P1691748908816285967.Spec : Prop :=
  ∀ n, (P1691748908816285967.a n : ℤ) = A032775 (n + 1)

end A032775

/-! ## A032775.P2503172299967726228

`eq[n, val(n+3, 7)+n]`
-/

namespace A032775.P2503172299967726228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 7 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032775.P2503172299967726228

namespace A032775

/-- `eq[n, val(n+3, 7)+n]` -/
def P2503172299967726228.Spec : Prop :=
  ∀ n, (P2503172299967726228.a n : ℤ) = A032775 (n + 1)

end A032775

/-! ## A032775.P9225627676009879331

`∑[C((n+1)%6, 5)]+n`
-/

namespace A032775.P9225627676009879331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) % 6) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A032775.P9225627676009879331

namespace A032775

/-- `∑[C((n+1)%6, 5)]+n` -/
def P9225627676009879331.Spec : Prop :=
  ∀ n, (P9225627676009879331.a n : ℤ) = A032775 (n + 1)

end A032775

/-! ## A032775.P7509546675766629570

`(comp[or(6, n)-2]+n)/2`
-/

namespace A032775.P7509546675766629570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 n : ℤ) - 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n : ℚ) / 2

end

end A032775.P7509546675766629570

namespace A032775

/-- `(comp[or(6, n)-2]+n)/2` -/
def P7509546675766629570.Spec : Prop :=
  ∀ n, P7509546675766629570.a n = (A032775 (n + 1) : ℚ)

end A032775

/-! ## A032775.P15266691479775876627

`lt[acot(n-1), (n+3)%7]`
-/

namespace A032775.P15266691479775876627
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A032775.P15266691479775876627

namespace A032775

/-- `lt[acot(n-1), (n+3)%7]` -/
def P15266691479775876627.Spec : Prop :=
  ∀ n, (P15266691479775876627.a n : ℤ) = A032775 (n + 1)

end A032775

/-! ## A032775.P14116878345622657494

`lt[C(n+3, 7)%(n+3), 1]`
-/

namespace A032775.P14116878345622657494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 7 % (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032775.P14116878345622657494

namespace A032775

/-- `lt[C(n+3, 7)%(n+3), 1]` -/
def P14116878345622657494.Spec : Prop :=
  ∀ n, (P14116878345622657494.a n : ℤ) = A032775 (n + 1)

end A032775

/-! ## A032775.P13364329820990429109

`floor((a(n-1)+4)/7)+n` with `a(0)=0`
-/

namespace A032775.P13364329820990429109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) + 4 : ℚ) / 7⌋ + (n : ℤ)

end

end A032775.P13364329820990429109

namespace A032775

/-- `floor((a(n-1)+4)/7)+n` -/
def P13364329820990429109.Spec : Prop :=
  ∀ n, P13364329820990429109.a n = A032775 (n + 1)

end A032775

/-! ## A032775.P6299319691303543194

`n-floor((2-a(n-1))/7)` with `a(0)=0`
-/

namespace A032775.P6299319691303543194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊(2 - a (n - 1) : ℚ) / 7⌋

end

end A032775.P6299319691303543194

namespace A032775

/-- `n-floor((2-a(n-1))/7)` -/
def P6299319691303543194.Spec : Prop :=
  ∀ n, P6299319691303543194.a n = A032775 (n + 1)

end A032775

/-! ## A032775.P12365983412470327074

`eq[n, gcd(n*(n+3), C(2*n, 2))]`
-/

namespace A032775.P12365983412470327074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n * (n + 3)) (Nat.choose (2 * n) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032775.P12365983412470327074

namespace A032775

/-- `eq[n, gcd(n*(n+3), C(2*n, 2))]` -/
def P12365983412470327074.Spec : Prop :=
  ∀ n, (P12365983412470327074.a n : ℤ) = A032775 (n + 1)

end A032775

/-! ## A032775.P2479988324853634757

`record[lcm(2*n+1, n-3)/(2*n+1)-3]`
-/

namespace A032775.P2479988324853634757
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (2 * n + 1 : ℤ) ((n : ℤ) - 3) : ℚ) / (2 * n + 1 : ℚ) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032775.P2479988324853634757

namespace A032775

/-- `record[lcm(2*n+1, n-3)/(2*n+1)-3]` -/
def P2479988324853634757.Spec : Prop :=
  ∀ n, P2479988324853634757.a n = (A032775 (n + 1) : ℚ)

end A032775

/-! ## A032775.P13024944810384038006

`floor(A017005(n)/6)`
-/

namespace A032775.P13024944810384038006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017005 n : ℚ) / 6⌋

end

end A032775.P13024944810384038006

namespace A032775

/-- `floor(A017005(n)/6)` -/
def P13024944810384038006.Spec : Prop :=
  ∀ n, P13024944810384038006.a n = A032775 (n + 1)

end A032775

/-! ## A032775.P2274630472822711951

`A008615(or(1, n))+n`
-/

namespace A032775.P2274630472822711951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Nat.lor 1 n) + (n : ℤ)

end

end A032775.P2274630472822711951

namespace A032775

/-- `A008615(or(1, n))+n` -/
def P2274630472822711951.Spec : Prop :=
  ∀ n, P2274630472822711951.a n = A032775 (n + 1)

end A032775

/-! ## A032775.P7083549990561777114

`∑[∑[A131533(n)]]+n`
-/

namespace A032775.P7083549990561777114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131533 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A032775.P7083549990561777114

namespace A032775

/-- `∑[∑[A131533(n)]]+n` -/
def P7083549990561777114.Spec : Prop :=
  ∀ n, P7083549990561777114.a n = A032775 (n + 1)

end A032775

/-!
# A032776: Integer quotients n(n+1)(n+2)...(n+6) / (n+(n+1)+(n+2)+...+(n+6)).

The programs for A032776, there is no canonical definition to state claims against.
-/

/-! ## A032776.P9119223395213150217

`A032774(A032775(n+1))`
-/

namespace A032776.P9119223395213150217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032774 (A032775 (n + 1)).toNat

end

end A032776.P9119223395213150217

/-! ## A032776.P12370476069690479832

`A032774(floor(A017005(n)/6))`
-/

namespace A032776.P12370476069690479832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032774 ⌊(A017005 n : ℚ) / 6⌋.toNat

end

end A032776.P12370476069690479832

/-! ## A032776.P14086522616084645280

`A032774(floor(A139607(n)/18))`
-/

namespace A032776.P14086522616084645280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032774 ⌊(A139607 n : ℚ) / 18⌋.toNat

end

end A032776.P14086522616084645280

/-! ## A032776.P3007223346774562270

`A032774(floor(A139608(n)/24))`
-/

namespace A032776.P3007223346774562270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032774 ⌊(A139608 n : ℚ) / 24⌋.toNat

end

end A032776.P3007223346774562270

/-! ## A032776.P14134818241913631453

`A032774(A047519(n+1)-A097992(n))`
-/

namespace A032776.P14134818241913631453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032774 (A047519 (n + 1) - A097992 n).toNat

end

end A032776.P14134818241913631453

/-! ## A032776.P13344253040983872768

`A032774(A047450(n+1)-A152467(n))`
-/

namespace A032776.P13344253040983872768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032774 (A047450 (n + 1) - A152467 n).toNat

end

end A032776.P13344253040983872768

/-!
# A032777: Floor( n(n+1)(n+2)...(n+7) / (n+(n+1)+(n+2)+...+(n+7)) ).

The programs for A032777, the canonical program `A032777.P13407459365297068253` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032777 has offset 0).

The definition of A032777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032777.P13407459365297068253

`floor(A239035(n)/A017113(n+3))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032777

/-- `floor(A239035(n)/A017113(n+3))` -/
def P13407459365297068253.Spec : Prop :=
  ∀ n, P13407459365297068253.a n = A032777 n

theorem P13407459365297068253.correct : P13407459365297068253.Spec := by
  intro n
  simp only [A032777]

end A032777

/-!
# A032778: Numbers k such that k*(k+1)*(k+2)*...*(k+7) / (k+(k+1)+(k+2)+...+(k+7)) is an integer.

The programs for A032778, there is no canonical definition to state claims against.
-/

/-! ## A032778.P6506171690040024949

`eq[0, A028896(n)²%(2*(n+1)+5)]`
-/

namespace A032778.P6506171690040024949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028896 n ^ 2) (2 * (n + 1) + 5 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032778.P6506171690040024949

/-! ## A032778.P7571739276222294864

`A123108(A135553(n+4))-3`
-/

namespace A032778.P7571739276222294864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A135553 (n + 4)).toNat - 3

end

end A032778.P7571739276222294864

/-! ## A032778.P5204644412000321530

`lt[A126770(n+3), Δ[A126789(2*n+5)]]`
-/

namespace A032778.P5204644412000321530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126770 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126789 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032778.P5204644412000321530

/-! ## A032778.P5868096254212225359

`lt[A000041(n), Δ[A126789(2*n+5)]]`
-/

namespace A032778.P5868096254212225359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126789 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032778.P5868096254212225359

/-! ## A032778.P10168062663447029024

`lt[A000793(n), Δ[A126789(2*n+5)]]`
-/

namespace A032778.P10168062663447029024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126789 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032778.P10168062663447029024

/-!
# A032779: Integer quotients n(n+1)(n+2)...(n+7) / (n+(n+1)+(n+2)+...+(n+7)).

The programs for A032779, there is no canonical definition to state claims against.
-/

/-! ## A032779.P16918805415466108159

`A032777(A032778(n+1))`
-/

namespace A032779.P16918805415466108159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032777 (A032778 (n + 1)).toNat

end

end A032779.P16918805415466108159

/-! ## A032779.P6022974414892913611

`record[gcd(A032777(n), A239035(n))]`
-/

namespace A032779.P6022974414892913611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032777 n) (A239035 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032779.P6022974414892913611

/-! ## A032779.P15967421986542868053

`A032777(eq[0, A028896(n)²%(2*(n+1)+5)])`
-/

namespace A032779.P15967421986542868053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028896 n ^ 2) (2 * (n + 1) + 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032779.P15967421986542868053

/-!
# A032780: a(n) = n(n+1)(n+2)...(n+8) / (n+(n+1)+(n+2)+...+(n+8)).

The programs for A032780, the canonical program `A032780.P17499519224611612847` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032780 has offset 0).

The definition of A032780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032780.P17499519224611612847

`64*C(n+3, 4)*C(n+8, 4)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032780

/-- `64*C(n+3, 4)*C(n+8, 4)` -/
def P17499519224611612847.Spec : Prop :=
  ∀ n, (P17499519224611612847.a n : ℤ) = A032780 n

theorem P17499519224611612847.correct : P17499519224611612847.Spec := by
  intro n
  simp only [A032780]

end A032780

/-! ## A032780.P10188217499584626840

`∑[A239035(n)]/A020705(n)`
-/

namespace A032780.P10188217499584626840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239035 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A020705 n : ℚ)

end

end A032780.P10188217499584626840

namespace A032780

/-- `∑[A239035(n)]/A020705(n)` -/
def P10188217499584626840.Spec : Prop :=
  ∀ n, P10188217499584626840.a n = (A032780 n : ℚ)

end A032780

/-! ## A032780.P15341751101842558333

`4*A028557(n)*A104677(n)`
-/

namespace A032780.P15341751101842558333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A028557 n * A104677 n)

end

end A032780.P15341751101842558333

namespace A032780

/-- `4*A028557(n)*A104677(n)` -/
def P15341751101842558333.Spec : Prop :=
  ∀ n, P15341751101842558333.a n = A032780 n

theorem P15341751101842558333.correct : P15341751101842558333.Spec := by
  intro n
  simp only [A032780, Nat.add_sub_cancel, A032780.P15341751101842558333.a, A032780.P17499519224611612847.a, A028557, A028557.P14629390258788046737.a, A104677, A104677.P121708351852665836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032780

/-! ## A032780.P8313730044402913330

`∑[A239035(n)]/A009005(n+1)`
-/

namespace A032780.P8313730044402913330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239035 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A009005 (n + 1) : ℚ)

end

end A032780.P8313730044402913330

namespace A032780

/-- `∑[A239035(n)]/A009005(n+1)` -/
def P8313730044402913330.Spec : Prop :=
  ∀ n, P8313730044402913330.a n = (A032780 n : ℚ)

end A032780

/-! ## A032780.P2142370360037731299

`A162668(n+5)*A162668(n)`
-/

namespace A032780.P2142370360037731299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162668 (n + 5) * A162668 n

end

end A032780.P2142370360037731299

namespace A032780

/-- `A162668(n+5)*A162668(n)` -/
def P2142370360037731299.Spec : Prop :=
  ∀ n, P2142370360037731299.a n = A032780 n

theorem P2142370360037731299.correct : P2142370360037731299.Spec := by
  intro n
  simp only [A032780, Nat.add_sub_cancel, A032780.P2142370360037731299.a, A032780.P17499519224611612847.a, A162668, A162668.P8323676352970519687.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032780

/-! ## A032780.P7907528964503116210

`n*A102860(n+3)*A000332(n+8)`
-/

namespace A032780.P7907528964503116210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102860 (n + 3) * A000332 (n + 8)

end

end A032780.P7907528964503116210

namespace A032780

/-- `n*A102860(n+3)*A000332(n+8)` -/
def P7907528964503116210.Spec : Prop :=
  ∀ n, P7907528964503116210.a n = A032780 n

end A032780

/-!
# A032782: Numbers k such that k(k+1)(k+2)...(k+9) / (k+(k+1)+(k+2)+...+(k+9)) is an integer.

The programs for A032782, there is no canonical definition to state claims against.
-/

/-! ## A032782.P6184047074152078637

`A210607(n+1)+A114114(A017981(n+4))`
-/

namespace A032782.P6184047074152078637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210607 (n + 1) + A114114 (A017981 (n + 4)).toNat

end

end A032782.P6184047074152078637

/-!
# A032783: Integer quotients n(n+1)(n+2)...(n+9) / (n+(n+1)+(n+2)+...+(n+9)).

The programs for A032783, there is no canonical definition to state claims against.
-/

/-! ## A032783.P12196906199911874293

`A032781(A032782(n+1))`
-/

namespace A032783.P12196906199911874293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032781 (A032782 (n + 1)).toNat

end

end A032783.P12196906199911874293

/-!
# A032784: Numbers k such that k(k+1)(k+2)...(k+11) / (k+(k+1)+(k+2)+...+(k+11)) is an integer.

The programs for A032784, there is no canonical definition to state claims against.
-/

/-! ## A032784.P5795075220341578831

`lt[A006530(A073731(2*n+1)), 8]`
-/

namespace A032784.P5795075220341578831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A073731 (2 * n + 1 + 10)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032784.P5795075220341578831

/-!
# A032785: Numbers k such that k*(k+1)*(k+2) ... (k+13) / (k+(k+1)+(k+2)+ ... +(k+13)) is an integer.

The programs for A032785, there is no canonical definition to state claims against.
-/

/-! ## A032785.P11757392071276211670

`record[A103589(n+3)+A070039(n+1)]`
-/

namespace A032785.P11757392071276211670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103589 (n + 3) + A070039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032785.P11757392071276211670

/-! ## A032785.P13232941971630929412

`eq[A030308(A318849(n+1)), A124010(2*n+5)]`
-/

namespace A032785.P13232941971630929412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A318849 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032785.P13232941971630929412

/-! ## A032785.P11180624991915157612

`eq[A282750(A000005(n+1)), A342753(3*n+4)]`
-/

namespace A032785.P11180624991915157612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032785.P11180624991915157612

/-!
# A032786: Numbers k such that k(k+1)(k+2)...(k+15) / (k+(k+1)+(k+2)+...+(k+15)) is an integer.

The programs for A032786, there is no canonical definition to state claims against.
-/

/-! ## A032786.P6689694003264434209

`lt[A299703(A061395(2*n+15)), 7]`
-/

namespace A032786.P6689694003264434209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299703 (A061395 (2 * n + 15)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032786.P6689694003264434209

/-! ## A032786.P1545042326306161408

`lt[A178927(A036288(2*n+15)), A178950(n+10)]`
-/

namespace A032786.P1545042326306161408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178927 (A036288 (2 * n + 15)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178950 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032786.P1545042326306161408

/-! ## A032786.P11747523601802608077

`lt[A094523(n+1), A155988(A094522(2*n+15))]`
-/

namespace A032786.P11747523601802608077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155988 (A094522 (2 * n + 15)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032786.P11747523601802608077

/-!
# A032787: Numbers k such that k(k+1)(k+2)...(k+17) / (k+(k+1)+(k+2)+ ... +(k+17)) is an integer.

The programs for A032787, there is no canonical definition to state claims against.
-/

/-! ## A032787.P5696464005905832539

`lt[A006530(A124867(n+5)+n), 19]`
-/

namespace A032787.P5696464005905832539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124867 (n + 5) + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032787.P5696464005905832539

/-! ## A032787.P6747239316320815822

`lt[A061395(A224535(n+1)), 8]`
-/

namespace A032787.P6747239316320815822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A224535 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032787.P6747239316320815822

/-! ## A032787.P15445500931460324101

`lt[A261585(n), A052126(A224535(n+1))]`
-/

namespace A032787.P15445500931460324101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A224535 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032787.P15445500931460324101

/-! ## A032787.P8782958039482435581

`eq[A124778(n), A286852(A061395(n+1))]`
-/

namespace A032787.P8782958039482435581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 (A061395 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032787.P8782958039482435581

/-! ## A032787.P2332789901534108063

`eq[A124778(n), A219964(A224535(n+1))]`
-/

namespace A032787.P2332789901534108063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 (A224535 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032787.P2332789901534108063

/-!
# A032788: Numbers k such that k(k+1)(k+2)...(k+19) / (k+(k+1)+(k+2)+...+(k+19)) is an integer.

The programs for A032788, there is no canonical definition to state claims against.
-/

/-! ## A032788.P13563071657852091764

`lt[A006530(A224535(n+2)), 21]`
-/

namespace A032788.P13563071657852091764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A224535 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032788.P13563071657852091764

/-! ## A032788.P9118585002209296473

`lt[A375127(A003415(n)), A075462(2*n+3)]`
-/

namespace A032788.P9118585002209296473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375127 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075462 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032788.P9118585002209296473

/-! ## A032788.P9900871268950167434

`lt[A363723(A106444(n)), A075462(2*n+3)]`
-/

namespace A032788.P9900871268950167434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363723 (A106444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075462 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032788.P9900871268950167434

/-! ## A032788.P14462002246380825079

`lt[A279048(2*n+1), A000096(A075463(n+1))]`
-/

namespace A032788.P14462002246380825079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279048 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A075463 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032788.P14462002246380825079

/-! ## A032788.P191486074167443146

`lt[A336840(A336863(2*n+5)), A336894(n+3)]`
-/

namespace A032788.P191486074167443146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336840 (A336863 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336894 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032788.P191486074167443146

/-!
# A032789: Numbers k such that (k*(k+1)*(k+2)) / (k+(k+1)+(k+2)) is a palindrome.

The programs for A032789, there is no canonical definition to state claims against.
-/

/-! ## A032789.P1203254256374441853

`floor(sqrt(3*A032790(n+1)))`
-/

namespace A032789.P1203254256374441853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (3 * A032790 (n + 1))

end

end A032789.P1203254256374441853

/-! ## A032789.P7620929810445757559

`ceil(A057428(n)+sqrt(3*A032790(n+1)))`
-/

namespace A032789.P7620929810445757559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + Real.sqrt (3 * A032790 (n + 1) : ℝ)⌉

end

end A032789.P7620929810445757559

/-! ## A032789.P17195529816016286893

`round(sqrt(3*A032790(n+1))-A057427(n))`
-/

namespace A032789.P17195529816016286893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (3 * A032790 (n + 1) : ℝ) - (A057427 n : ℝ))

end

end A032789.P17195529816016286893

/-! ## A032789.P6221311459665139803

`A202304(A032790(n+1))`
-/

namespace A032789.P6221311459665139803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A032790 (n + 1)).toNat

end

end A032789.P6221311459665139803

/-! ## A032789.P10326281792237317968

`A278814(A032790(n+1))-A261675(n)`
-/

namespace A032789.P10326281792237317968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (A032790 (n + 1)).toNat - A261675 n

end

end A032789.P10326281792237317968

/-!
# A032790: Palindromic quotients (k*(k+1)*(k+2)) / (k+(k+1)+(k+2)).

The programs for A032790, there is no canonical definition to state claims against.
-/

/-! ## A032790.P16940091893669587193

`floor((A032789(n+1)+1)²/3)`
-/

namespace A032790.P16940091893669587193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A032789 (n + 1) + 1) ^ 2 : ℚ) / 3⌋

end

end A032790.P16940091893669587193

/-! ## A032790.P9211819311648880032

`A032765(A032789(n+1))`
-/

namespace A032790.P9211819311648880032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (A032789 (n + 1)).toNat

end

end A032790.P9211819311648880032

/-! ## A032790.P10286350620197956268

`∩[A001082(n+1), A002113(n+1)]`
-/

namespace A032790.P10286350620197956268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032790.P10286350620197956268

/-! ## A032790.P14609090165024860953

`A000212(A032789(n+1)+1)`
-/

namespace A032790.P14609090165024860953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A032789 (n + 1) + 1).toNat

end

end A032790.P14609090165024860953

/-! ## A032790.P7287778336672488667

`eq[A089801(n), A261675(n)]`
-/

namespace A032790.P7287778336672488667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032790.P7287778336672488667

/-!
# A032791: Numbers k such that k*(k+1)*(k+2) / (k+(k+1)+(k+2)) is a lucky number.

The programs for A032791, there is no canonical definition to state claims against.
-/

/-! ## A032791.P352476966535252240

`A078173(A032792(n+1))`
-/

namespace A032791.P352476966535252240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078173 (A032792 (n + 1)).toNat

end

end A032791.P352476966535252240

/-! ## A032791.P6362249252513746130

`A202304(∩[A137168(n+1), A032765(n)])`
-/

namespace A032791.P6362249252513746130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032791.P6362249252513746130

/-! ## A032791.P5931292313027909696

`A202304(∩[A000959(n+1), A256320(n)])`
-/

namespace A032791.P5931292313027909696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032791.P5931292313027909696

/-! ## A032791.P13849216366966755063

`A202304(∩[A031879(n+1), A256320(n)])`
-/

namespace A032791.P13849216366966755063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032791.P13849216366966755063

/-! ## A032791.P3179349434829011770

`A202304(∩[A137168(n+1), A256320(n)])`
-/

namespace A032791.P3179349434829011770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032791.P3179349434829011770

/-!
# A032792: Quotients k*(k+1)*(k+2) / (k+(k+1)+(k+2)) that are lucky numbers.

The programs for A032792, there is no canonical definition to state claims against.
-/

/-! ## A032792.P5366291780064821662

`A032765(A032791(n+1))`
-/

namespace A032792.P5366291780064821662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (A032791 (n + 1)).toNat

end

end A032792.P5366291780064821662

/-! ## A032792.P12982190401105702001

`A000212(A032791(n+1)+1)`
-/

namespace A032792.P12982190401105702001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A032791 (n + 1) + 1).toNat

end

end A032792.P12982190401105702001

/-! ## A032792.P7101962500048781795

`A229154(A032791(n+1)+1)`
-/

namespace A032792.P7101962500048781795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229154 (A032791 (n + 1) + 1).toNat

end

end A032792.P7101962500048781795

/-! ## A032792.P10267094866392219552

`∩[A000959(n+1), A032765(n)]`
-/

namespace A032792.P10267094866392219552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032792.P10267094866392219552

/-! ## A032792.P16429542027961835713

`∩[A000959(n+1), A256320(n)]`
-/

namespace A032792.P16429542027961835713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032792.P16429542027961835713

/-! ## A032792.P1750564010226866342

`∩[A000959(n+1), A001082(n+1)]`
-/

namespace A032792.P1750564010226866342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032792.P1750564010226866342

/-! ## A032792.P14778892854514410190

`∩[A000959(n+1), A260090(n+1)]`
-/

namespace A032792.P14778892854514410190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032792.P14778892854514410190

/-! ## A032792.P1884400004009420308

`∩[A137168(n+1), A032765(n)]`
-/

namespace A032792.P1884400004009420308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032792.P1884400004009420308

/-! ## A032792.P2038727941184062229

`∩[A137168(n+1), A256320(n)]`
-/

namespace A032792.P2038727941184062229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032792.P2038727941184062229

/-! ## A032792.P9243863629634492346

`∩[A137168(n+1), A371154(n)]`
-/

namespace A032792.P9243863629634492346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371154 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032792.P9243863629634492346

/-!
# A032793: Numbers that are congruent to {1, 2, 4} mod 5.

The programs for A032793, the canonical program `A032793.P4527093573716052088` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032793 has offset 1).

The definition of A032793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032793.P4527093573716052088

`a(n-3)+5` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032793

/-- `a(n-3)+5` -/
def P4527093573716052088.Spec : Prop :=
  ∀ n, (P4527093573716052088.a n : ℤ) = A032793 (n + 1)

theorem P4527093573716052088.correct : P4527093573716052088.Spec := by
  intro n
  simp only [A032793, Nat.add_sub_cancel]

end A032793

/-! ## A032793.P5954020992845122588

`floor((5*(n+1)-2)/3)`
-/

namespace A032793.P5954020992845122588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 * (n + 1) : ℤ) - 2 : ℚ) / 3⌋

end

end A032793.P5954020992845122588

namespace A032793

/-- `floor((5*(n+1)-2)/3)` -/
def P5954020992845122588.Spec : Prop :=
  ∀ n, P5954020992845122588.a n = A032793 (n + 1)

end A032793

/-! ## A032793.P11997641578436311290

`(15*(n+1)-9+2*sqrt(3)*sin(2*(n+1)*π/3))/9`
-/

namespace A032793.P11997641578436311290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((15 * (n + 1) : ℤ) - 9 : ℝ) + 2 * Real.sqrt (3 : ℝ) * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3)) / 9

end

end A032793.P11997641578436311290

namespace A032793

/-- `(15*(n+1)-9+2*sqrt(3)*sin(2*(n+1)*π/3))/9` -/
def P11997641578436311290.Spec : Prop :=
  ∀ n, P11997641578436311290.a n = (A032793 (n + 1) : ℝ)

end A032793

/-! ## A032793.P11473009563396217184

`∑[gcd(2, n%3)]-1`
-/

namespace A032793.P11473009563396217184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A032793.P11473009563396217184

namespace A032793

/-- `∑[gcd(2, n%3)]-1` -/
def P11473009563396217184.Spec : Prop :=
  ∀ n, P11473009563396217184.a n = A032793 (n + 1)

end A032793

/-! ## A032793.P11453070409849536856

`∑[and(1, dr(6*n))+1]`
-/

namespace A032793.P11453070409849536856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.digitalRoot (6 * n : ℤ)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032793.P11453070409849536856

namespace A032793

/-- `∑[and(1, dr(6*n))+1]` -/
def P11453070409849536856.Spec : Prop :=
  ∀ n, (P11453070409849536856.a n : ℤ) = A032793 (n + 1)

end A032793

/-! ## A032793.P16741224474898006622

`ceil(5/(6*acot(2*n)))`
-/

namespace A032793.P16741224474898006622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 / (6 * SequenceMachineLib.acot (2 * n : ℝ))⌉

end

end A032793.P16741224474898006622

namespace A032793

/-- `ceil(5/(6*acot(2*n)))` -/
def P16741224474898006622.Spec : Prop :=
  ∀ n, P16741224474898006622.a n = A032793 (n + 1)

end A032793

/-! ## A032793.P1670342785383694773

`∑[(1-n)²%3]+n`
-/

namespace A032793.P1670342785383694773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - (n : ℤ)) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A032793.P1670342785383694773

namespace A032793

/-- `∑[(1-n)²%3]+n` -/
def P1670342785383694773.Spec : Prop :=
  ∀ n, P1670342785383694773.a n = A032793 (n + 1)

end A032793

/-! ## A032793.P11143276490793937236

`lt[n, n*(2*n)%5]`
-/

namespace A032793.P11143276490793937236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n % 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032793.P11143276490793937236

namespace A032793

/-- `lt[n, n*(2*n)%5]` -/
def P11143276490793937236.Spec : Prop :=
  ∀ n, (P11143276490793937236.a n : ℤ) = A032793 (n + 1)

end A032793

/-! ## A032793.P11871449685252095878

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A032793.P11871449685252095878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032793.P11871449685252095878

namespace A032793

/-- `∑[abs(a(n-3))]` -/
def P11871449685252095878.Spec : Prop :=
  ∀ n, (P11871449685252095878.a n : ℤ) = A032793 (n + 1)

end A032793

/-! ## A032793.P12801825993917869359

`∑[a(n-3)!]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A032793.P12801825993917869359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  Nat.factorial (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032793.P12801825993917869359

namespace A032793

/-- `∑[a(n-3)!]` -/
def P12801825993917869359.Spec : Prop :=
  ∀ n, (P12801825993917869359.a n : ℤ) = A032793 (n + 1)

end A032793

/-! ## A032793.P13777175401321213790

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A032793.P13777175401321213790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032793.P13777175401321213790

namespace A032793

/-- `∑[dr(a(n-3))]` -/
def P13777175401321213790.Spec : Prop :=
  ∀ n, (P13777175401321213790.a n : ℤ) = A032793 (n + 1)

end A032793

/-! ## A032793.P707873530013045924

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A032793.P707873530013045924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032793.P707873530013045924

namespace A032793

/-- `∑[floor(a(n-3))]` -/
def P707873530013045924.Spec : Prop :=
  ∀ n, (P707873530013045924.a n : ℤ) = A032793 (n + 1)

end A032793

/-! ## A032793.P11288353424406568646

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A032793.P11288353424406568646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032793.P11288353424406568646

namespace A032793

/-- `∑[ceil(a(n-3))]` -/
def P11288353424406568646.Spec : Prop :=
  ∀ n, (P11288353424406568646.a n : ℤ) = A032793 (n + 1)

end A032793

/-! ## A032793.P13138238073990262656

`∑[round(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A032793.P13138238073990262656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032793.P13138238073990262656

namespace A032793

/-- `∑[round(a(n-3))]` -/
def P13138238073990262656.Spec : Prop :=
  ∀ n, (P13138238073990262656.a n : ℤ) = A032793 (n + 1)

end A032793

/-! ## A032793.P5469585148892519152

`ceil(or(1, 2*n)/3+n)`
-/

namespace A032793.P5469585148892519152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (2 * n) : ℚ) / 3 + (n : ℚ)⌉

end

end A032793.P5469585148892519152

namespace A032793

/-- `ceil(or(1, 2*n)/3+n)` -/
def P5469585148892519152.Spec : Prop :=
  ∀ n, P5469585148892519152.a n = A032793 (n + 1)

end A032793

/-! ## A032793.P7674899782371782491

`ceil(xor(1, 2*n)/3+n)`
-/

namespace A032793.P7674899782371782491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n) : ℚ) / 3 + (n : ℚ)⌉

end

end A032793.P7674899782371782491

namespace A032793

/-- `ceil(xor(1, 2*n)/3+n)` -/
def P7674899782371782491.Spec : Prop :=
  ∀ n, P7674899782371782491.a n = A032793 (n + 1)

end A032793

/-! ## A032793.P16068415252850661113

`∑[((n+2)²%3)²]+n`
-/

namespace A032793.P16068415252850661113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 % 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A032793.P16068415252850661113

namespace A032793

/-- `∑[((n+2)²%3)²]+n` -/
def P16068415252850661113.Spec : Prop :=
  ∀ n, (P16068415252850661113.a n : ℤ) = A032793 (n + 1)

end A032793

/-! ## A032793.P7672743932017036892

`∑[a(n-3)%3]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A032793.P7672743932017036892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  f1 (n - 3) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032793.P7672743932017036892

namespace A032793

/-- `∑[a(n-3)%3]` -/
def P7672743932017036892.Spec : Prop :=
  ∀ n, (P7672743932017036892.a n : ℤ) = A032793 (n + 1)

end A032793

/-! ## A032793.P9004049388223230414

`∑[and(3, a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A032793.P9004049388223230414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032793.P9004049388223230414

namespace A032793

/-- `∑[and(3, a(n-3))]` -/
def P9004049388223230414.Spec : Prop :=
  ∀ n, (P9004049388223230414.a n : ℤ) = A032793 (n + 1)

end A032793

/-! ## A032793.P16638269105183255413

`2*n+1-∑[∑[n]%3]`
-/

namespace A032793.P16638269105183255413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A032793.P16638269105183255413

namespace A032793

/-- `2*n+1-∑[∑[n]%3]` -/
def P16638269105183255413.Spec : Prop :=
  ∀ n, P16638269105183255413.a n = A032793 (n + 1)

end A032793

/-!
# A032794: Positive integers of the form n(n+1)(n+2)(n+3)(n+4)/(n+(n+1)+(n+2)+(n+3)+(n+4)) that are a multiple of n.

The programs for A032794, the canonical program `A032794.P15494052535104857542` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032794 has offset 1).

The definition of A032794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032794.P9474049706153190333

`A032793(n+1)*A032795(n+1)`
-/

namespace A032794.P9474049706153190333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (n + 1) * A032795 (n + 1)

end

end A032794.P9474049706153190333

namespace A032794

/-- `A032793(n+1)*A032795(n+1)` -/
def P9474049706153190333.Spec : Prop :=
  ∀ n, P9474049706153190333.a n = A032794 (n + 1)

end A032794

/-! ## A032794.P15494052535104857542

`A032770(A042968(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A032794

/-- `A032770(A042968(n+1))` -/
def P15494052535104857542.Spec : Prop :=
  ∀ n, P15494052535104857542.a n = A032794 (n + 1)

theorem P15494052535104857542.correct : P15494052535104857542.Spec := by
  intro n
  simp only [A032794, Nat.add_sub_cancel]

end A032794

/-! ## A032794.P2168462331993943310

`A032768(A032793(n+1))`
-/

namespace A032794.P2168462331993943310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 (A032793 (n + 1)).toNat

end

end A032794.P2168462331993943310

namespace A032794

/-- `A032768(A032793(n+1))` -/
def P2168462331993943310.Spec : Prop :=
  ∀ n, P2168462331993943310.a n = A032794 (n + 1)

end A032794

/-! ## A032794.P16112585663247196877

`A032768(ceil(A016861(n)/3))`
-/

namespace A032794.P16112585663247196877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 ⌈(A016861 n : ℚ) / 3⌉.toNat

end

end A032794.P16112585663247196877

namespace A032794

/-- `A032768(ceil(A016861(n)/3))` -/
def P16112585663247196877.Spec : Prop :=
  ∀ n, P16112585663247196877.a n = A032794 (n + 1)

end A032794

/-! ## A032794.P8749739752954621109

`A032768(A103221(n)+A007494(n))`
-/

namespace A032794.P8749739752954621109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 (A103221 n + A007494 n).toNat

end

end A032794.P8749739752954621109

namespace A032794

/-- `A032768(A103221(n)+A007494(n))` -/
def P8749739752954621109.Spec : Prop :=
  ∀ n, P8749739752954621109.a n = A032794 (n + 1)

end A032794

/-! ## A032794.P12329337716861227466

`A032768(A242774(2*n+1)-1)`
-/

namespace A032794.P12329337716861227466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 (A242774 (2 * n + 1) - 1).toNat

end

end A032794.P12329337716861227466

namespace A032794

/-- `A032768(A242774(2*n+1)-1)` -/
def P12329337716861227466.Spec : Prop :=
  ∀ n, P12329337716861227466.a n = A032794 (n + 1)

end A032794

/-! ## A032794.P16918843052992845424

`A032768(A028242(A271324(A063224(2*n+1))))`
-/

namespace A032794.P16918843052992845424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 (A028242 (A271324 (A063224 (2 * n + 1)).toNat).toNat).toNat

end

end A032794.P16918843052992845424

namespace A032794

/-- `A032768(A028242(A271324(A063224(2*n+1))))` -/
def P16918843052992845424.Spec : Prop :=
  ∀ n, P16918843052992845424.a n = A032794 (n + 1)

end A032794

/-! ## A032794.P13661724683087836632

`A032768(A002264(5*n)+1)`
-/

namespace A032794.P13661724683087836632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 (A002264 (5 * n) + 1).toNat

end

end A032794.P13661724683087836632

namespace A032794

/-- `A032768(A002264(5*n)+1)` -/
def P13661724683087836632.Spec : Prop :=
  ∀ n, P13661724683087836632.a n = A032794 (n + 1)

end A032794

/-! ## A032794.P13178410420500299782

`A032768(A103221(10*n))`
-/

namespace A032794.P13178410420500299782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 (A103221 (10 * n)).toNat

end

end A032794.P13178410420500299782

namespace A032794

/-- `A032768(A103221(10*n))` -/
def P13178410420500299782.Spec : Prop :=
  ∀ n, P13178410420500299782.a n = A032794 (n + 1)

end A032794

/-!
# A032795: Positive numbers k such that (k+1)*(k+2)*(k+3)*(k+4)/(k+(k+1)+(k+2)+(k+3)+(k+4)) is an integer.

The programs for A032795, the canonical program `A032795.P3387722789288988087` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032795 has offset 1).

The definition of A032795 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032794, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A032795.P3387722789288988087

`A032794(n+1)/A032793(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A032795

/-- `A032794(n+1)/A032793(n+1)` -/
def P3387722789288988087.Spec : Prop :=
  ∀ n, P3387722789288988087.a n = (A032795 (n + 1) : ℚ)

end A032795

/-! ## A032795.P197403954491856603

`A032794(n+1)/(A103221(n)+A007494(n))`
-/

namespace A032795.P197403954491856603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032794 (n + 1) : ℚ) / (A103221 n + A007494 n : ℚ)

end

end A032795.P197403954491856603

namespace A032795

/-- `A032794(n+1)/(A103221(n)+A007494(n))` -/
def P197403954491856603.Spec : Prop :=
  ∀ n, P197403954491856603.a n = (A032795 (n + 1) : ℚ)

end A032795

/-! ## A032795.P4151898175124736946

`A032770(A042968(n+1))/A032793(n+1)`
-/

namespace A032795.P4151898175124736946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032770 (A042968 (n + 1)).toNat : ℚ) / (A032793 (n + 1) : ℚ)

end

end A032795.P4151898175124736946

namespace A032795

/-- `A032770(A042968(n+1))/A032793(n+1)` -/
def P4151898175124736946.Spec : Prop :=
  ∀ n, P4151898175124736946.a n = (A032795 (n + 1) : ℚ)

end A032795

/-! ## A032795.P18132230246135543655

`A032794(n+1)/(A002264(2*n)+n+1)`
-/

namespace A032795.P18132230246135543655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032794 (n + 1) : ℚ) / (A002264 (2 * n) + (n + 1 : ℤ) : ℚ)

end

end A032795.P18132230246135543655

namespace A032795

/-- `A032794(n+1)/(A002264(2*n)+n+1)` -/
def P18132230246135543655.Spec : Prop :=
  ∀ n, P18132230246135543655.a n = (A032795 (n + 1) : ℚ)

end A032795

/-! ## A032795.P18323331479926752330

`A032794(n+1)/A103221(10*n)`
-/

namespace A032795.P18323331479926752330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032794 (n + 1) : ℚ) / (A103221 (10 * n) : ℚ)

end

end A032795.P18323331479926752330

namespace A032795

/-- `A032794(n+1)/A103221(10*n)` -/
def P18323331479926752330.Spec : Prop :=
  ∀ n, P18323331479926752330.a n = (A032795 (n + 1) : ℚ)

end A032795

/-!
# A032796: Numbers that are congruent to {1, 2, 3, 5, 6} mod 7.

The programs for A032796, the canonical program `A032796.P11730158852228480656` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032796 has offset 1).

The definition of A032796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032796.P3782897970782016868

`comp[ceil(7*n/2)]`
-/

namespace A032796.P3782897970782016868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * ((n : ℚ) / 2)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A032796.P3782897970782016868

namespace A032796

/-- `comp[ceil(7*n/2)]` -/
def P3782897970782016868.Spec : Prop :=
  ∀ n, (P3782897970782016868.a n : ℤ) = A032796 (n + 1)

end A032796

/-! ## A032796.P2474730344283567468

`ceil(7/(10*acot(2*n)))`
-/

namespace A032796.P2474730344283567468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 / (10 * SequenceMachineLib.acot (2 * n : ℝ))⌉

end

end A032796.P2474730344283567468

namespace A032796

/-- `ceil(7/(10*acot(2*n)))` -/
def P2474730344283567468.Spec : Prop :=
  ∀ n, P2474730344283567468.a n = A032796 (n + 1)

end A032796

/-! ## A032796.P11730158852228480656

`lt[n, n*(2*n)%7]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032796

/-- `lt[n, n*(2*n)%7]` -/
def P11730158852228480656.Spec : Prop :=
  ∀ n, (P11730158852228480656.a n : ℤ) = A032796 (n + 1)

theorem P11730158852228480656.correct : P11730158852228480656.Spec := by
  intro n
  simp only [A032796, Nat.add_sub_cancel]

end A032796

/-! ## A032796.P16084345271947720806

`ceil(or(1, 2*n)/5+n)`
-/

namespace A032796.P16084345271947720806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (2 * n) : ℚ) / 5 + (n : ℚ)⌉

end

end A032796.P16084345271947720806

namespace A032796

/-- `ceil(or(1, 2*n)/5+n)` -/
def P16084345271947720806.Spec : Prop :=
  ∀ n, P16084345271947720806.a n = A032796 (n + 1)

end A032796

/-! ## A032796.P14218570048767169891

`ceil(xor(1, 2*n)/5+n)`
-/

namespace A032796.P14218570048767169891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n) : ℚ) / 5 + (n : ℚ)⌉

end

end A032796.P14218570048767169891

namespace A032796

/-- `ceil(xor(1, 2*n)/5+n)` -/
def P14218570048767169891.Spec : Prop :=
  ∀ n, P14218570048767169891.a n = A032796 (n + 1)

end A032796

/-! ## A032796.P7563734457781767798

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A032796.P7563734457781767798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 1, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032796.P7563734457781767798

namespace A032796

/-- `∑[floor(a(n-5))]` -/
def P7563734457781767798.Spec : Prop :=
  ∀ n, (P7563734457781767798.a n : ℤ) = A032796 (n + 1)

end A032796

/-! ## A032796.P5183682154994192952

`floor(lcm(2, 2*n)/5+n+1)`
-/

namespace A032796.P5183682154994192952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 (2 * n) : ℚ) / 5 + (n + 1 : ℚ)⌋

end

end A032796.P5183682154994192952

namespace A032796

/-- `floor(lcm(2, 2*n)/5+n+1)` -/
def P5183682154994192952.Spec : Prop :=
  ∀ n, P5183682154994192952.a n = A032796 (n + 1)

end A032796

/-! ## A032796.P17234653599620755278

`floor(2*n/5)+C(n+1, n)`
-/

namespace A032796.P17234653599620755278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / 5⌋ + (Nat.choose (n + 1) n : ℤ)

end

end A032796.P17234653599620755278

namespace A032796

/-- `floor(2*n/5)+C(n+1, n)` -/
def P17234653599620755278.Spec : Prop :=
  ∀ n, P17234653599620755278.a n = A032796 (n + 1)

end A032796

/-! ## A032796.P12343471596079806691

`∑[a(n-5)²]+n` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0`
-/

namespace A032796.P12343471596079806691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 0] fun n f1 =>
  f1 (n - 5) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A032796.P12343471596079806691

namespace A032796

/-- `∑[a(n-5)²]+n` -/
def P12343471596079806691.Spec : Prop :=
  ∀ n, (P12343471596079806691.a n : ℤ) = A032796 (n + 1)

end A032796

/-! ## A032796.P6282834899725142238

`comp[3-(∑[and(1, n)]-4*n)]+1`
-/

namespace A032796.P6282834899725142238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (4 * n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A032796.P6282834899725142238

namespace A032796

/-- `comp[3-(∑[and(1, n)]-4*n)]+1` -/
def P6282834899725142238.Spec : Prop :=
  ∀ n, (P6282834899725142238.a n : ℤ) = A032796 (n + 1)

end A032796

/-! ## A032796.P12669414387152712632

`floor(xor(1, 2*n+1)/5+n+1)`
-/

namespace A032796.P12669414387152712632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (2 * n + 1) : ℚ) / 5 + (n + 1 : ℚ)⌋

end

end A032796.P12669414387152712632

namespace A032796

/-- `floor(xor(1, 2*n+1)/5+n+1)` -/
def P12669414387152712632.Spec : Prop :=
  ∀ n, P12669414387152712632.a n = A032796 (n + 1)

end A032796

/-! ## A032796.P1482552233343942992

`round((lcm(4, 2*n+1)-(n+1))/5)`
-/

namespace A032796.P1482552233343942992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lcm 4 (2 * n + 1) : ℤ) - (n + 1 : ℤ) : ℚ) / 5)

end

end A032796.P1482552233343942992

namespace A032796

/-- `round((lcm(4, 2*n+1)-(n+1))/5)` -/
def P1482552233343942992.Spec : Prop :=
  ∀ n, P1482552233343942992.a n = A032796 (n + 1)

end A032796

/-! ## A032796.P12104936484233929906

`ceil((2*n+1)/5)+gcd(n, 2*n)`
-/

namespace A032796.P12104936484233929906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) / 5⌉ + (Nat.gcd n (2 * n) : ℤ)

end

end A032796.P12104936484233929906

namespace A032796

/-- `ceil((2*n+1)/5)+gcd(n, 2*n)` -/
def P12104936484233929906.Spec : Prop :=
  ∀ n, P12104936484233929906.a n = A032796 (n + 1)

end A032796

/-! ## A032796.P16796610551506676629

`ceil(C(2*n+1, 2*n)/5+n)`
-/

namespace A032796.P16796610551506676629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n + 1) (2 * n) : ℚ) / 5 + (n : ℚ)⌉

end

end A032796.P16796610551506676629

namespace A032796

/-- `ceil(C(2*n+1, 2*n)/5+n)` -/
def P16796610551506676629.Spec : Prop :=
  ∀ n, P16796610551506676629.a n = A032796 (n + 1)

end A032796

/-! ## A032796.P6749590687056160200

`∑[a(n-5)^a(n-1)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=2`
-/

namespace A032796.P6749590687056160200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 1, 2] fun n f1 =>
  f1 (n - 5) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032796.P6749590687056160200

namespace A032796

/-- `∑[a(n-5)^a(n-1)]` -/
def P6749590687056160200.Spec : Prop :=
  ∀ n, (P6749590687056160200.a n : ℤ) = A032796 (n + 1)

end A032796

/-! ## A032796.P13985115727031693697

`floor(and(2*n+1, 2*n)/5+n+1)`
-/

namespace A032796.P13985115727031693697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land (2 * n + 1) (2 * n) : ℚ) / 5 + (n + 1 : ℚ)⌋

end

end A032796.P13985115727031693697

namespace A032796

/-- `floor(and(2*n+1, 2*n)/5+n+1)` -/
def P13985115727031693697.Spec : Prop :=
  ∀ n, P13985115727031693697.a n = A032796 (n + 1)

end A032796

/-! ## A032796.P436227980856660738

`floor((a(n-1)+n+1)/6+n+1)` with `a(0)=1`
-/

namespace A032796.P436227980856660738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) + (n + 1 : ℤ) : ℚ) / 6 + (n + 1 : ℚ)⌋

end

end A032796.P436227980856660738

namespace A032796

/-- `floor((a(n-1)+n+1)/6+n+1)` -/
def P436227980856660738.Spec : Prop :=
  ∀ n, P436227980856660738.a n = A032796 (n + 1)

end A032796

/-! ## A032796.P234082003013136762

`A173276(n)+n`
-/

namespace A032796.P234082003013136762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173276 n + (n : ℤ)

end

end A032796.P234082003013136762

namespace A032796

/-- `A173276(n)+n` -/
def P234082003013136762.Spec : Prop :=
  ∀ n, P234082003013136762.a n = A032796 (n + 1)

end A032796

/-! ## A032796.P13102044786350300023

`∑[A232990(n)]+n`
-/

namespace A032796.P13102044786350300023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A032796.P13102044786350300023

namespace A032796

/-- `∑[A232990(n)]+n` -/
def P13102044786350300023.Spec : Prop :=
  ∀ n, P13102044786350300023.a n = A032796 (n + 1)

end A032796

/-! ## A032796.P11312957482198101314

`A047381(n+1)+1`
-/

namespace A032796.P11312957482198101314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047381 (n + 1) + 1

end

end A032796.P11312957482198101314

namespace A032796

/-- `A047381(n+1)+1` -/
def P11312957482198101314.Spec : Prop :=
  ∀ n, P11312957482198101314.a n = A032796 (n + 1)

end A032796

/-!
# A032797: Numbers n such that n(n+1)(n+2)...(n+10) /(n+(n+1)+(n+2)+...+(n+10)) is a multiple of n.

The programs for A032797, the canonical program `A032797.P7915281827361216337` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032797 has offset 1).

The definition of A032797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032797.P7915281827361216337

`a(n-1)+a(n-9)-a(n-10)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=7, a(6)=8, a(7)=9, a(8)=10, a(9)=12`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032797

/-- `a(n-1)+a(n-9)-a(n-10)` -/
def P7915281827361216337.Spec : Prop :=
  ∀ n, P7915281827361216337.a n = A032797 (n + 1)

theorem P7915281827361216337.correct : P7915281827361216337.Spec := by
  intro n
  simp only [A032797, Nat.add_sub_cancel]

end A032797

/-! ## A032797.P8336218947040817632

`ceil(11/(9*acot(n)))`
-/

namespace A032797.P8336218947040817632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈11 / (9 * SequenceMachineLib.acot (n : ℝ))⌉

end

end A032797.P8336218947040817632

namespace A032797

/-- `ceil(11/(9*acot(n)))` -/
def P8336218947040817632.Spec : Prop :=
  ∀ n, P8336218947040817632.a n = A032797 (n + 1)

end A032797

/-! ## A032797.P8007136439802194489

`floor(11*n/9)+1`
-/

namespace A032797.P8007136439802194489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊11 * ((n : ℚ) / 9)⌋ + 1

end

end A032797.P8007136439802194489

namespace A032797

/-- `floor(11*n/9)+1` -/
def P8007136439802194489.Spec : Prop :=
  ∀ n, P8007136439802194489.a n = A032797 (n + 1)

end A032797

/-! ## A032797.P11360840623354368984

`ceil(or(1, 44*n)/36)`
-/

namespace A032797.P11360840623354368984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (44 * n) : ℚ) / 36⌉

end

end A032797.P11360840623354368984

namespace A032797

/-- `ceil(or(1, 44*n)/36)` -/
def P11360840623354368984.Spec : Prop :=
  ∀ n, P11360840623354368984.a n = A032797 (n + 1)

end A032797

/-! ## A032797.P17688565514381561430

`∑[char[∑[gcd(2, n)+3]]+1]`
-/

namespace A032797.P17688565514381561430
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032797.P17688565514381561430

namespace A032797

/-- `∑[char[∑[gcd(2, n)+3]]+1]` -/
def P17688565514381561430.Spec : Prop :=
  ∀ n, (P17688565514381561430.a n : ℤ) = A032797 (n + 1)

end A032797

/-! ## A032797.P13986369307624228241

`∑[char[∑[5-n%2]]+1]`
-/

namespace A032797.P13986369307624228241
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ((n % 2 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032797.P13986369307624228241

namespace A032797

/-- `∑[char[∑[5-n%2]]+1]` -/
def P13986369307624228241.Spec : Prop :=
  ∀ n, (P13986369307624228241.a n : ℤ) = A032797 (n + 1)

end A032797

/-! ## A032797.P17653093049406710137

`comp[A047345(n+1)+2*n]`
-/

namespace A032797.P17653093049406710137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047345 (n + 1) + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A032797.P17653093049406710137

namespace A032797

/-- `comp[A047345(n+1)+2*n]` -/
def P17653093049406710137.Spec : Prop :=
  ∀ n, (P17653093049406710137.a n : ℤ) = A032797 (n + 1)

end A032797

/-! ## A032797.P8467401264702996668

`comp[Δ[A000567(n)]-(A002265(2*n)+1)]`
-/

namespace A032797.P8467401264702996668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (A002265 (2 * n) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A032797.P8467401264702996668

namespace A032797

/-- `comp[Δ[A000567(n)]-(A002265(2*n)+1)]` -/
def P8467401264702996668.Spec : Prop :=
  ∀ n, (P8467401264702996668.a n : ℤ) = A032797 (n + 1)

end A032797

/-! ## A032797.P12356542616970085643

`comp[A016777(2*n)-(A002265(2*n)+1)]`
-/

namespace A032797.P12356542616970085643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * n) - (A002265 (2 * n) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A032797.P12356542616970085643

namespace A032797

/-- `comp[A016777(2*n)-(A002265(2*n)+1)]` -/
def P12356542616970085643.Spec : Prop :=
  ∀ n, (P12356542616970085643.a n : ℤ) = A032797 (n + 1)

end A032797

/-! ## A032797.P11238695057345887422

`record[A328399(n)+A002264(A002264(n))]`
-/

namespace A032797.P11238695057345887422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 n + A002264 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032797.P11238695057345887422

namespace A032797

/-- `record[A328399(n)+A002264(A002264(n))]` -/
def P11238695057345887422.Spec : Prop :=
  ∀ n, P11238695057345887422.a n = A032797 (n + 1)

end A032797

/-! ## A032797.P11267906726963017266

`record[comp[A008592(n)]-A064680(n)]`
-/

namespace A032797.P11267906726963017266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - A064680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032797.P11267906726963017266

namespace A032797

/-- `record[comp[A008592(n)]-A064680(n)]` -/
def P11267906726963017266.Spec : Prop :=
  ∀ n, P11267906726963017266.a n = A032797 (n + 1)

end A032797

/-! ## A032797.P4534559213716311300

`record[A003602(n+1)+A002264(A002264(n))]`
-/

namespace A032797.P4534559213716311300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + A002264 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032797.P4534559213716311300

namespace A032797

/-- `record[A003602(n+1)+A002264(A002264(n))]` -/
def P4534559213716311300.Spec : Prop :=
  ∀ n, P4534559213716311300.a n = A032797 (n + 1)

end A032797

/-! ## A032797.P8971062338165363947

`lt[n, n*A010880(2*n)]`
-/

namespace A032797.P8971062338165363947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010880 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A032797.P8971062338165363947

namespace A032797

/-- `lt[n, n*A010880(2*n)]` -/
def P8971062338165363947.Spec : Prop :=
  ∀ n, (P8971062338165363947.a n : ℤ) = A032797 (n + 1)

end A032797

/-! ## A032797.P4478751225492009406

`eq[n*A014020(2*n), A014020(2*n)]`
-/

namespace A032797.P4478751225492009406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014020 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014020 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032797.P4478751225492009406

namespace A032797

/-- `eq[n*A014020(2*n), A014020(2*n)]` -/
def P4478751225492009406.Spec : Prop :=
  ∀ n, (P4478751225492009406.a n : ℤ) = A032797 (n + 1)

end A032797

/-! ## A032797.P9082937402741341692

`eq[n*A014031(2*n), A014031(2*n)]`
-/

namespace A032797.P9082937402741341692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014031 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014031 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032797.P9082937402741341692

namespace A032797

/-- `eq[n*A014031(2*n), A014031(2*n)]` -/
def P9082937402741341692.Spec : Prop :=
  ∀ n, (P9082937402741341692.a n : ℤ) = A032797 (n + 1)

end A032797

/-! ## A032797.P8239008580147389429

`A008620(A343028(n))`
-/

namespace A032797.P8239008580147389429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A343028 n).toNat

end

end A032797.P8239008580147389429

namespace A032797

/-- `A008620(A343028(n))` -/
def P8239008580147389429.Spec : Prop :=
  ∀ n, P8239008580147389429.a n = A032797 (n + 1)

end A032797

/-! ## A032797.P17127264131949879330

`A008620(A004773(2*n)+n)`
-/

namespace A032797.P17127264131949879330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A004773 (2 * n) + (n : ℤ)).toNat

end

end A032797.P17127264131949879330

namespace A032797

/-- `A008620(A004773(2*n)+n)` -/
def P17127264131949879330.Spec : Prop :=
  ∀ n, P17127264131949879330.a n = A032797 (n + 1)

end A032797

/-! ## A032797.P17415832990722687006

`A008620(A047349(2*n+1)-n)`
-/

namespace A032797.P17415832990722687006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A047349 (2 * n + 1) - (n : ℤ)).toNat

end

end A032797.P17415832990722687006

namespace A032797

/-- `A008620(A047349(2*n+1)-n)` -/
def P17415832990722687006.Spec : Prop :=
  ∀ n, P17415832990722687006.a n = A032797 (n + 1)

end A032797

/-! ## A032797.P14370415989149198032

`A002264(A047400(n+1)+2+n)`
-/

namespace A032797.P14370415989149198032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A047400 (n + 1) + 2 + (n : ℤ)).toNat

end

end A032797.P14370415989149198032

namespace A032797

/-- `A002264(A047400(n+1)+2+n)` -/
def P14370415989149198032.Spec : Prop :=
  ∀ n, P14370415989149198032.a n = A032797 (n + 1)

end A032797

/-! ## A032797.P1828733203500799319

`A002264(A047390(2*(n+1))-n)`
-/

namespace A032797.P1828733203500799319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A047390 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A032797.P1828733203500799319

namespace A032797

/-- `A002264(A047390(2*(n+1))-n)` -/
def P1828733203500799319.Spec : Prop :=
  ∀ n, P1828733203500799319.a n = A032797 (n + 1)

end A032797

/-!
# A032798: Numbers such that n(n+1)(n+2)...(n+12) / (n+(n+1)+(n+2)+...+(n+12)) is a multiple of n.

The programs for A032798, the canonical program `A032798.P16559405504910470521` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032798 has offset 1).

The definition of A032798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032798.P16559405504910470521

`comp[round(13*n/2)]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032798

/-- `comp[round(13*n/2)]` -/
def P16559405504910470521.Spec : Prop :=
  ∀ n, (P16559405504910470521.a n : ℤ) = A032798 (n + 1)

theorem P16559405504910470521.correct : P16559405504910470521.Spec := by
  intro n
  simp only [A032798, Nat.add_sub_cancel]

end A032798

/-! ## A032798.P2230745521160667074

`∑[char[∑[6-n%2]]+1]`
-/

namespace A032798.P2230745521160667074
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ((n % 2 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032798.P2230745521160667074

namespace A032798

/-- `∑[char[∑[6-n%2]]+1]` -/
def P2230745521160667074.Spec : Prop :=
  ∀ n, (P2230745521160667074.a n : ℤ) = A032798 (n + 1)

end A032798

/-! ## A032798.P14933464085177532586

`∑[char[∑[(n+1)%2+5]]+1]`
-/

namespace A032798.P14933464085177532586
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032798.P14933464085177532586

namespace A032798

/-- `∑[char[∑[(n+1)%2+5]]+1]` -/
def P14933464085177532586.Spec : Prop :=
  ∀ n, (P14933464085177532586.a n : ℤ) = A032798 (n + 1)

end A032798

/-! ## A032798.P1251572223189858996

`comp[A047219(3*(n+1))-n]+1`
-/

namespace A032798.P1251572223189858996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047219 (3 * (n + 1)) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A032798.P1251572223189858996

namespace A032798

/-- `comp[A047219(3*(n+1))-n]+1` -/
def P1251572223189858996.Spec : Prop :=
  ∀ n, (P1251572223189858996.a n : ℤ) = A032798 (n + 1)

end A032798

/-! ## A032798.P18092884931295054756

`A168186(Δ[n²])-n`
-/

namespace A032798.P18092884931295054756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A032798.P18092884931295054756

namespace A032798

/-- `A168186(Δ[n²])-n` -/
def P18092884931295054756.Spec : Prop :=
  ∀ n, P18092884931295054756.a n = A032798 (n + 1)

end A032798

/-! ## A032798.P6087993677151304312

`A344420(2*n)+1+n`
-/

namespace A032798.P6087993677151304312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (2 * n) + 1 + (n : ℤ)

end

end A032798.P6087993677151304312

namespace A032798

/-- `A344420(2*n)+1+n` -/
def P6087993677151304312.Spec : Prop :=
  ∀ n, P6087993677151304312.a n = A032798 (n + 1)

end A032798

/-! ## A032798.P1686478468433153874

`∑[A014020(2*n)²]+n`
-/

namespace A032798.P1686478468433153874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014020 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A032798.P1686478468433153874

namespace A032798

/-- `∑[A014020(2*n)²]+n` -/
def P1686478468433153874.Spec : Prop :=
  ∀ n, P1686478468433153874.a n = A032798 (n + 1)

end A032798

/-! ## A032798.P3247681173127060369

`lt[n, n*A167628(2*n)]`
-/

namespace A032798.P3247681173127060369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A167628 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A032798.P3247681173127060369

namespace A032798

/-- `lt[n, n*A167628(2*n)]` -/
def P3247681173127060369.Spec : Prop :=
  ∀ n, (P3247681173127060369.a n : ℤ) = A032798 (n + 1)

end A032798

/-! ## A032798.P6333556890191697694

`eq[n*A014022(2*n), A014022(2*n)]`
-/

namespace A032798.P6333556890191697694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014022 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014022 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032798.P6333556890191697694

namespace A032798

/-- `eq[n*A014022(2*n), A014022(2*n)]` -/
def P6333556890191697694.Spec : Prop :=
  ∀ n, (P6333556890191697694.a n : ℤ) = A032798 (n + 1)

end A032798

/-! ## A032798.P4531788134471653194

`eq[n*A014035(2*n), A014035(2*n)]`
-/

namespace A032798.P4531788134471653194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014035 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014035 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032798.P4531788134471653194

namespace A032798

/-- `eq[n*A014035(2*n), A014035(2*n)]` -/
def P4531788134471653194.Spec : Prop :=
  ∀ n, (P4531788134471653194.a n : ℤ) = A032798 (n + 1)

end A032798

/-! ## A032798.P14481111355645040647

`A004525(A314680(n)+1)-n`
-/

namespace A032798.P14481111355645040647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314680 n + 1).toNat - (n : ℤ)

end

end A032798.P14481111355645040647

namespace A032798

/-- `A004525(A314680(n)+1)-n` -/
def P14481111355645040647.Spec : Prop :=
  ∀ n, P14481111355645040647.a n = A032798 (n + 1)

end A032798

/-! ## A032798.P10321283784755751508

`A008621(A313514(n))`
-/

namespace A032798.P10321283784755751508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A313514 n).toNat

end

end A032798.P10321283784755751508

namespace A032798

/-- `A008621(A313514(n))` -/
def P10321283784755751508.Spec : Prop :=
  ∀ n, P10321283784755751508.a n = A032798 (n + 1)

end A032798

/-! ## A032798.P13989477854374128122

`A008621(A313543(n))`
-/

namespace A032798.P13989477854374128122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A313543 n).toNat

end

end A032798.P13989477854374128122

namespace A032798

/-- `A008621(A313543(n))` -/
def P13989477854374128122.Spec : Prop :=
  ∀ n, P13989477854374128122.a n = A032798 (n + 1)

end A032798

/-! ## A032798.P4949898575914083739

`A008621(A314890(n))`
-/

namespace A032798.P4949898575914083739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A314890 n).toNat

end

end A032798.P4949898575914083739

namespace A032798

/-- `A008621(A314890(n))` -/
def P4949898575914083739.Spec : Prop :=
  ∀ n, P4949898575914083739.a n = A032798 (n + 1)

end A032798

/-! ## A032798.P15490415798052328767

`A008621(A315019(n))`
-/

namespace A032798.P15490415798052328767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A315019 n).toNat

end

end A032798.P15490415798052328767

namespace A032798

/-- `A008621(A315019(n))` -/
def P15490415798052328767.Spec : Prop :=
  ∀ n, P15490415798052328767.a n = A032798 (n + 1)

end A032798

/-! ## A032798.P11321245250961308925

`A008621(A315183(n))`
-/

namespace A032798.P11321245250961308925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A315183 n).toNat

end

end A032798.P11321245250961308925

namespace A032798

/-- `A008621(A315183(n))` -/
def P11321245250961308925.Spec : Prop :=
  ∀ n, P11321245250961308925.a n = A032798 (n + 1)

end A032798

/-! ## A032798.P8072810926556862002

`A110655(A313514(n)+1)`
-/

namespace A032798.P8072810926556862002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A313514 n + 1).toNat

end

end A032798.P8072810926556862002

namespace A032798

/-- `A110655(A313514(n)+1)` -/
def P8072810926556862002.Spec : Prop :=
  ∀ n, P8072810926556862002.a n = A032798 (n + 1)

end A032798

/-! ## A032798.P13794173112977051864

`A059169(A315186(n+1))`
-/

namespace A032798.P13794173112977051864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A315186 (n + 1)).toNat

end

end A032798.P13794173112977051864

namespace A032798

/-- `A059169(A315186(n+1))` -/
def P13794173112977051864.Spec : Prop :=
  ∀ n, P13794173112977051864.a n = A032798 (n + 1)

end A032798

/-! ## A032798.P13197096078589070590

`A008616(2*(A313572(n)+n))`
-/

namespace A032798.P13197096078589070590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * (A313572 n + (n : ℤ))).toNat

end

end A032798.P13197096078589070590

namespace A032798

/-- `A008616(2*(A313572(n)+n))` -/
def P13197096078589070590.Spec : Prop :=
  ∀ n, P13197096078589070590.a n = A032798 (n + 1)

end A032798

/-! ## A032798.P5788385434995312163

`A344420(A269100(n))`
-/

namespace A032798.P5788385434995312163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A269100 n).toNat

end

end A032798.P5788385434995312163

namespace A032798

/-- `A344420(A269100(n))` -/
def P5788385434995312163.Spec : Prop :=
  ∀ n, P5788385434995312163.a n = A032798 (n + 1)

end A032798

/-!
# A032799: Numbers k such that k equals the sum of its digits raised to the consecutive powers (1,2,3,...).

The programs for A032799, there is no canonical definition to state claims against.
-/

/-! ## A032799.P5301859324492789088

`eq[n, A389091(n)]`
-/

namespace A032799.P5301859324492789088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032799.P5301859324492789088

/-! ## A032799.P13635246615988546875

`A208130(a(n-2)+2)` with `a(0)=0, a(1)=1`
-/

namespace A032799.P13635246615988546875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A208130 (a (n - 2) + 2).toNat

end

end A032799.P13635246615988546875

/-! ## A032799.P15392730938729921260

`∩[A061862(n+1), A134933(n+1)-1]`
-/

namespace A032799.P15392730938729921260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134933 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032799.P15392730938729921260

/-! ## A032799.P7049665970893421799

`∩[A134703(n+1), A134933(n+1)-1]`
-/

namespace A032799.P7049665970893421799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134933 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032799.P7049665970893421799

/-! ## A032799.P2217742376884541471

`A087051(n)%A026351(A095038(n+1))`
-/

namespace A032799.P2217742376884541471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087051 n) (A026351 (A095038 (n + 1)).toNat)

end

end A032799.P2217742376884541471

