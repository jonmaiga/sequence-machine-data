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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A327500: Number of steps to reach a fixed point starting with n and repeatedly taking the quotient by the maximum divisor whose prime multiplicities are distinct (A327498, A327499).

The programs for A327500, there is no canonical definition to state claims against.
-/

/-! ## A327500.P1201626330323085438

`a(A327499(n+1)-1)+1` with `a(0)=0`
-/

namespace A327500.P1201626330323085438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A327499 (n + 1) - 1).toNat + 1

end

end A327500.P1201626330323085438

/-! ## A327500.P8549038633075989493

`A001221(A008578(n+1)*A327499(n+1))`
-/

namespace A327500.P8549038633075989493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008578 (n + 1) * A327499 (n + 1)).toNat

end

end A327500.P8549038633075989493

/-!
# A327501: Maximum divisor of n that is 1 or not a perfect power.

The programs for A327501, there is no canonical definition to state claims against.
-/

/-! ## A327501.P16424793591590294665

`(n+1)/A327502(n+1)`
-/

namespace A327501.P16424793591590294665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327502 (n + 1) : ℚ)

end

end A327501.P16424793591590294665

/-! ## A327501.P16581655996355672440

`A052410(n+1)*A329744(A326975(n+1))`
-/

namespace A327501.P16581655996355672440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1) * A329744 (A326975 (n + 1)).toNat

end

end A327501.P16581655996355672440

/-! ## A327501.P6149775757281284392

`A052410(n+1)*A299203(A117530(n+1))`
-/

namespace A327501.P6149775757281284392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1) * A299203 (A117530 (n + 1)).toNat

end

end A327501.P6149775757281284392

/-! ## A327501.P13867634133961714265

`A052410(n+1)*A365685(A271991(n))`
-/

namespace A327501.P13867634133961714265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1) * A365685 (A271991 n).toNat

end

end A327501.P13867634133961714265

/-!
# A327502: a(n) = n/A327501(n), where A327501(n) is the maximum divisor of n that is 1 or not a perfect power.

The programs for A327502, there is no canonical definition to state claims against.
-/

/-! ## A327502.P13870395963059838871

`(n+1)/A327501(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327502.P13870395963059838871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327501 (n + 1) : ℚ)

end

end A327502.P13870395963059838871

/-! ## A327502.P1721621852500797410

`gcd((n+1)/∏{p}[n+1, #], A049859(A294018(n+1)))`
-/

namespace A327502.P1721621852500797410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A049859 (A294018 (n + 1)).toNat)

end

end A327502.P1721621852500797410

/-! ## A327502.P16449795446421345477

`gcd(A003557(n+1), A362611(A304404(n+1)))`
-/

namespace A327502.P16449795446421345477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003557 (n + 1)) (A362611 (A304404 (n + 1)).toNat)

end

end A327502.P16449795446421345477

/-! ## A327502.P17047744076014509305

`A028233((n+1)/A329814((n+1)²))`
-/

namespace A327502.P17047744076014509305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A329814 ((n + 1) ^ 2) : ℚ))).toNat

end

end A327502.P17047744076014509305

/-! ## A327502.P13881771965777281839

`A034684((n+1)/A329814((n+1)²))`
-/

namespace A327502.P13881771965777281839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A329814 ((n + 1) ^ 2) : ℚ))).toNat

end

end A327502.P13881771965777281839

/-! ## A327502.P14663839119212944758

`A304181((n+1)/A329814((n+1)²))`
-/

namespace A327502.P14663839119212944758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A329814 ((n + 1) ^ 2) : ℚ))).toNat

end

end A327502.P14663839119212944758

/-! ## A327502.P17886693343395546210

`gcd(A031218(n+1), A032742(A020338(n+1)))`
-/

namespace A327502.P17886693343395546210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031218 (n + 1)) (A032742 (A020338 (n + 1)).toNat)

end

end A327502.P17886693343395546210

/-! ## A327502.P11351738418652779296

`A020639(A216455(n+1))^(A052409(n+1)-1)`
-/

namespace A327502.P11351738418652779296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A216455 (n + 1)).toNat : ℚ) ^ (A052409 (n + 1) - 1 : ℤ)

end

end A327502.P11351738418652779296

/-! ## A327502.P11975172386048829567

`gcd(A014652(n+1), A025474(A300831(n+1)))`
-/

namespace A327502.P11975172386048829567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014652 (n + 1)) (A025474 (A300831 (n + 1)).toNat)

end

end A327502.P11975172386048829567

/-!
# A327503: 

The programs for A327503, there is no canonical definition to state claims against.
-/

/-! ## A327503.P3526671380000461645

`A000005(A327502(n+1))%(n+1)`
-/

namespace A327503.P3526671380000461645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A327502 (n + 1)).toNat) (n + 1 : ℤ)

end

end A327503.P3526671380000461645

/-! ## A327503.P7737214717333881447

`A057427(n)+A032741(A327502(n+1))`
-/

namespace A327503.P7737214717333881447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A032741 (A327502 (n + 1)).toNat

end

end A327503.P7737214717333881447

/-! ## A327503.P13327924290845226304

`A001222(A327502(n+1))-A057428(n)`
-/

namespace A327503.P13327924290845226304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A327502 (n + 1)).toNat - A057428 n

end

end A327503.P13327924290845226304

/-! ## A327503.P17339174626748233605

`A001222(A006530(n+1)*A327502(n+1))`
-/

namespace A327503.P17339174626748233605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006530 (n + 1) * A327502 (n + 1)).toNat

end

end A327503.P17339174626748233605

/-! ## A327503.P14543056440807792020

`A327527(A327502(n+1))%A327498(n+1)`
-/

namespace A327503.P14543056440807792020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327527 (A327502 (n + 1)).toNat) (A327498 (n + 1))

end

end A327503.P14543056440807792020

/-! ## A327503.P11081478968794074152

`A000005(A327502(n+1))-A228495(A008574(n))`
-/

namespace A327503.P11081478968794074152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A327502 (n + 1)).toNat - A228495 (A008574 n).toNat

end

end A327503.P11081478968794074152

/-! ## A327503.P9917075820540051137

`A000005(A327502(n+1))-A209229(A084127(n+1))`
-/

namespace A327503.P9917075820540051137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A327502 (n + 1)).toNat - A209229 (A084127 (n + 1)).toNat

end

end A327503.P9917075820540051137

/-! ## A327503.P9831663508195374863

`A001222(A027748(n+1)*A327502(n+1))`
-/

namespace A327503.P9831663508195374863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A027748 (n + 1) * A327502 (n + 1)).toNat

end

end A327503.P9831663508195374863

/-! ## A327503.P15459222742781813328

`A000005(A327502(n+1))-A209229(n²+2)`
-/

namespace A327503.P15459222742781813328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A327502 (n + 1)).toNat - A209229 (n ^ 2 + 2)

end

end A327503.P15459222742781813328

/-! ## A327503.P592839228455831501

`A001222(A006005(n+1)*A327502(n+1))`
-/

namespace A327503.P592839228455831501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006005 (n + 1) * A327502 (n + 1)).toNat

end

end A327503.P592839228455831501

/-! ## A327503.P12149355129268841117

`A001222(A008578(n+1)*A327502(n+1))`
-/

namespace A327503.P12149355129268841117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1) * A327502 (n + 1)).toNat

end

end A327503.P12149355129268841117

/-!
# A327504: Number of set partitions of [n] where each subset is again partitioned into three nonempty subsets.

The programs for A327504, there is no canonical definition to state claims against.
-/

/-! ## A327504.P17916375560139450052

`A324162(A238531(n)+1+n)`
-/

namespace A327504.P17916375560139450052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (A238531 n + 1 + (n : ℤ)).toNat

end

end A327504.P17916375560139450052

/-! ## A327504.P3942731621981032768

`A324162(A133263(n)+A060576(n))`
-/

namespace A327504.P3942731621981032768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (A133263 n + A060576 n).toNat

end

end A327504.P3942731621981032768

/-! ## A327504.P15018607801207890270

`A324162(A152950(n+1)%A001541(n))`
-/

namespace A327504.P15018607801207890270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (Int.tmod (A152950 (n + 1)) (A001541 n)).toNat

end

end A327504.P15018607801207890270

/-! ## A327504.P6903299919548433456

`A324162(∪[A014778(n+1), A152950(n+3)])`
-/

namespace A327504.P6903299919548433456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152950 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A327504.P6903299919548433456

/-! ## A327504.P17051134976361157512

`A004525(A346894(n)+A000392(n))`
-/

namespace A327504.P17051134976361157512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A346894 n + A000392 n).toNat

end

end A327504.P17051134976361157512

/-!
# A327505: Number of set partitions of [n] where each subset is again partitioned into four nonempty subsets.

The programs for A327505, there is no canonical definition to state claims against.
-/

/-! ## A327505.P11679720092627189150

`A324162(A145018(n+1)%A122112(n))`
-/

namespace A327505.P11679720092627189150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (Int.tmod (A145018 (n + 1)) (A122112 n)).toNat

end

end A327505.P11679720092627189150

/-! ## A327505.P17834632031179097897

`A324162(A027379(n)+A329678(n)-A004271(n))`
-/

namespace A327505.P17834632031179097897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (A027379 n + (A329678 n - A004271 n)).toNat

end

end A327505.P17834632031179097897

/-! ## A327505.P8170201561092381502

`A324162(A027379(n)-(A004271(n)-A329678(n)))`
-/

namespace A327505.P8170201561092381502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (A027379 n - (A004271 n - A329678 n)).toNat

end

end A327505.P8170201561092381502

/-! ## A327505.P98588088978193205

`A346895(n)-A185234(A185234(n))`
-/

namespace A327505.P98588088978193205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346895 n - A185234 (A185234 n).toNat

end

end A327505.P98588088978193205

/-!
# A327506: Number of set partitions of [n] where each subset is again partitioned into five nonempty subsets.

The programs for A327506, there is no canonical definition to state claims against.
-/

/-! ## A327506.P16418733850000634328

`A324162(A077169(A028310(n))+n)`
-/

namespace A327506.P16418733850000634328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (A077169 (A028310 n).toNat + (n : ℤ)).toNat

end

end A327506.P16418733850000634328

/-! ## A327506.P1626810150667493278

`A324162(A027379(n)+1-A004271(n))`
-/

namespace A327506.P1626810150667493278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (A027379 n + (1 - A004271 n)).toNat

end

end A327506.P1626810150667493278

/-! ## A327506.P18433192524024783451

`A324162(1-(A004271(n)-A027379(n)))`
-/

namespace A327506.P18433192524024783451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (1 - (A004271 n - A027379 n)).toNat

end

end A327506.P18433192524024783451

/-! ## A327506.P7154470710562629330

`∏{e}[4^n, A056474(#)]`
-/

namespace A327506.P7154470710562629330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A056474 (Nat.factorization (f1 n) p)

end

end A327506.P7154470710562629330

/-! ## A327506.P16774441162307135300

`A365528(n)^(n-∑{digits}[n, #])!`
-/

namespace A327506.P16774441162307135300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365528 n ^ Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

end

end A327506.P16774441162307135300

/-!
# A327507: Number of set partitions of [n] where each subset is again partitioned into six nonempty subsets.

The programs for A327507, there is no canonical definition to state claims against.
-/

/-! ## A327507.P11242181816198737262

`A143628(n)+A014682(A143815(n)-A143628(n))`
-/

namespace A327507.P11242181816198737262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143628 n + A014682 (A143815 n - A143628 n).toNat

end

end A327507.P11242181816198737262

/-! ## A327507.P17253104354638172213

`A386635(A025708(n+1))`
-/

namespace A327507.P17253104354638172213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386635 (A025708 (n + 1)).toNat

end

end A327507.P17253104354638172213

/-! ## A327507.P10117778240649252825

`A151510(A010875(n)+A000217(n))`
-/

namespace A327507.P10117778240649252825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151510 (A010875 n + A000217 n).toNat

end

end A327507.P10117778240649252825

/-! ## A327507.P15358181413104969754

`A014682(A143815(n)+A143628(n))`
-/

namespace A327507.P15358181413104969754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A143815 n + A143628 n).toNat

end

end A327507.P15358181413104969754

/-!
# A327508: Number of set partitions of [n] where each subset is again partitioned into seven nonempty subsets.

The programs for A327508, there is no canonical definition to state claims against.
-/

/-! ## A327508.P11817675826090199041

`A386635(A002789(n+1))`
-/

namespace A327508.P11817675826090199041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386635 (A002789 (n + 1)).toNat

end

end A327508.P11817675826090199041

/-! ## A327508.P17084481728136045950

`A386635(A025727(n+1))`
-/

namespace A327508.P17084481728136045950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386635 (A025727 (n + 1)).toNat

end

end A327508.P17084481728136045950

/-! ## A327508.P13259059384114812007

`A151509(∑[n*A219347(n)])`
-/

namespace A327508.P13259059384114812007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151509 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327508.P13259059384114812007

/-! ## A327508.P11681534821336078436

`A151509(A071640(n+1)+A000124(n))`
-/

namespace A327508.P11681534821336078436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151509 (A071640 (n + 1) + A000124 n).toNat

end

end A327508.P11681534821336078436

/-! ## A327508.P14579638397239894699

`A151509(A000124(n+1)-A338492(n+2))`
-/

namespace A327508.P14579638397239894699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151509 (A000124 (n + 1) - A338492 (n + 2)).toNat

end

end A327508.P14579638397239894699

/-!
# A327509: Number of set partitions of [n] where each subset is again partitioned into eight nonempty subsets.

The programs for A327509, there is no canonical definition to state claims against.
-/

/-! ## A327509.P12366390055417037583

`A106800(A132296(n+1)%A132300(n+5))`
-/

namespace A327509.P12366390055417037583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (Int.tmod (A132296 (n + 1)) (A132300 (n + 5))).toNat

end

end A327509.P12366390055417037583

/-! ## A327509.P8955029598884792718

`A151511(∑[A264974(n)])`
-/

namespace A327509.P8955029598884792718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327509.P8955029598884792718

/-! ## A327509.P48934889886906491

`A144417(A132296(n+1))`
-/

namespace A327509.P48934889886906491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144417 (A132296 (n + 1)).toNat

end

end A327509.P48934889886906491

/-! ## A327509.P17583926445582462387

`A386635(A025702(n+1))`
-/

namespace A327509.P17583926445582462387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386635 (A025702 (n + 1)).toNat

end

end A327509.P17583926445582462387

/-! ## A327509.P743806195154739364

`A386635(A025717(n+1))`
-/

namespace A327509.P743806195154739364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386635 (A025717 (n + 1)).toNat

end

end A327509.P743806195154739364

/-!
# A327510: Number of set partitions of [n] where each subset is again partitioned into nine nonempty subsets.

The programs for A327510, there is no canonical definition to state claims against.
-/

/-! ## A327510.P9842231493177052150

`C(n^a(n-1), dr(n+1))` with `a(0)=1`
-/

namespace A327510.P9842231493177052150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (n ^ a (n - 1)) (SequenceMachineLib.digitalRoot (n + 1 : ℤ))

end

end A327510.P9842231493177052150

/-! ## A327510.P17499292840649465204

`C(n^a(n-1), ∑{digits}[n+1, #])` with `a(0)=1`
-/

namespace A327510.P17499292840649465204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (n ^ a (n - 1)) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A327510.P17499292840649465204

/-! ## A327510.P14324266981011919209

`C(n, A004092(n²²))`
-/

namespace A327510.P14324266981011919209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A004092 ((n ^ 2) ^ 2)).toNat

end

end A327510.P14324266981011919209

/-! ## A327510.P11442739326669192537

`C(n, A248322(a(n-1)))` with `a(0)=1`
-/

namespace A327510.P11442739326669192537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose n (A248322 (a (n - 1))).toNat

end

end A327510.P11442739326669192537

/-!
# A327511: Number of set partitions of [n] where each subset is again partitioned into ten nonempty subsets.

The programs for A327511, there is no canonical definition to state claims against.
-/

/-! ## A327511.P10499671393220743457

`A293617(∏{digits}[n, #]+∑[n])`
-/

namespace A327511.P10499671393220743457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293617 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A327511.P10499671393220743457

/-! ## A327511.P5429040660964620557

`A026741(C(C(n, 10), ∑{digits}[n, #]))`
-/

namespace A327511.P5429040660964620557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Nat.choose (Nat.choose n 10) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A327511.P5429040660964620557

/-! ## A327511.P8874746989695408156

`A000045(C(xor(1, n), ∏{digits}[n, #²]))`
-/

namespace A327511.P8874746989695408156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose (Nat.xor 1 n) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).prod)

end

end A327511.P8874746989695408156

/-! ## A327511.P13594732543348929702

`A182634((n-n%10)^∏{digits}[n, #])`
-/

namespace A327511.P13594732543348929702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182634 (((n : ℤ) - ((n % 10 : ℕ) : ℤ)) ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod).toNat

end

end A327511.P13594732543348929702

/-! ## A327511.P7571471265154344749

`A000045((n-∏{digits}[n, #])^∏{digits}[n, #²])`
-/

namespace A327511.P7571471265154344749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)) ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 2).prod).toNat

end

end A327511.P7571471265154344749

/-!
# A327512: Maximum divisor of n that is 1, 2, or a nonprime number whose prime indices are pairwise coprime.

The programs for A327512, there is no canonical definition to state claims against.
-/

/-! ## A327512.P4396000672152629171

`A327529((n+1)/A327401(n+1))`
-/

namespace A327512.P4396000672152629171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A327401 (n + 1) : ℚ))).toNat

end

end A327512.P4396000672152629171

/-! ## A327512.P2017229749624150568

`A327529(n+1)/A327514(A316437(n+1))`
-/

namespace A327512.P2017229749624150568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327529 (n + 1) : ℚ) / (A327514 (A316437 (n + 1)).toNat : ℚ)

end

end A327512.P2017229749624150568

/-! ## A327512.P3621982245681292414

`gcd(n+1, 1-A289508(n+1))/A327514(A327529(n+1))`
-/

namespace A327512.P3621982245681292414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (1 - A289508 (n + 1)) : ℚ) / (A327514 (A327529 (n + 1)).toNat : ℚ)

end

end A327512.P3621982245681292414

/-! ## A327512.P15553390202512394777

`(n*A060576(A327513(n+1))+1)/A327514(A327529(n+1))`
-/

namespace A327512.P15553390202512394777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A060576 (A327513 (n + 1)).toNat + 1 : ℚ) / (A327514 (A327529 (n + 1)).toNat : ℚ)

end

end A327512.P15553390202512394777

/-! ## A327512.P16758921853802457339

`(n+1)/A327514(n+1)`
-/

namespace A327512.P16758921853802457339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327514 (n + 1) : ℚ)

end

end A327512.P16758921853802457339

/-! ## A327512.P1782938660387714239

`A054531(A327514(n+1)+∑[n])`
-/

namespace A327512.P1782938660387714239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A327514 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327512.P1782938660387714239

/-! ## A327512.P9290581543170713078

`A010766(A327514(n+1)+A000217(n))`
-/

namespace A327512.P9290581543170713078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A327514 (n + 1) + A000217 n).toNat

end

end A327512.P9290581543170713078

/-! ## A327512.P4834191014877610173

`A049834(A327514(n+1)+A000217(n))`
-/

namespace A327512.P4834191014877610173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A327514 (n + 1) + A000217 n).toNat

end

end A327512.P4834191014877610173

/-! ## A327512.P506673056233757497

`A126988(A327514(n+1)+A000217(n))`
-/

namespace A327512.P506673056233757497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A327514 (n + 1) + A000217 n).toNat

end

end A327512.P506673056233757497

/-! ## A327512.P4906043326764234195

`A131516(A327389(n+1))`
-/

namespace A327512.P4906043326764234195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 (A327389 (n + 1)).toNat

end

end A327512.P4906043326764234195

/-!
# A327513: Number of divisors of n that are 1, 2, or a nonprime number whose prime indices are pairwise coprime.

The programs for A327513, there is no canonical definition to state claims against.
-/

/-! ## A327513.P5145922429931691514

`A327391(n+1)-∑{p}[n+1, #%2]`
-/

namespace A327513.P5145922429931691514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327391 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), p % 2 : ℕ) : ℤ)

end

end A327513.P5145922429931691514

/-! ## A327513.P6062391920520610739

`A327391(n+1)-A005087(n+1)`
-/

namespace A327513.P6062391920520610739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327391 (n + 1) - A005087 (n + 1)

end

end A327513.P6062391920520610739

/-! ## A327513.P6010389924891288857

`A327391(n+1)-log2(A068068(n+1))`
-/

namespace A327513.P6010389924891288857
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A327391 (n + 1) : ℝ) - Real.logb 2 (A068068 (n + 1) : ℝ)

end

end A327513.P6010389924891288857

/-! ## A327513.P12263743379696655020

`A327391(n+1)-A001221((n+1)/2^val(n+1, 2))`
-/

namespace A327513.P12263743379696655020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327391 (n + 1) - A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A327513.P12263743379696655020

/-! ## A327513.P16994667032445339206

`A327391(n+1)-A001221(A000265(n+1))`
-/

namespace A327513.P16994667032445339206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327391 (n + 1) - A001221 (A000265 (n + 1)).toNat

end

end A327513.P16994667032445339206

/-! ## A327513.P15767386445414717895

`A327391(n+1)-A001221(A064989(n+1))`
-/

namespace A327513.P15767386445414717895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327391 (n + 1) - A001221 (A064989 (n + 1)).toNat

end

end A327513.P15767386445414717895

/-! ## A327513.P3763183690606129462

`A327391(n+1)-A072273(A007947(n+1))`
-/

namespace A327513.P3763183690606129462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327391 (n + 1) - A072273 (A007947 (n + 1)).toNat

end

end A327513.P3763183690606129462

/-! ## A327513.P8757957531174410112

`A327391(n+1)-A001222(A204455(n+1))`
-/

namespace A327513.P8757957531174410112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327391 (n + 1) - A001222 (A204455 (n + 1)).toNat

end

end A327513.P8757957531174410112

/-!
# A327514: Quotient of n over the maximum divisor of n that is 1, 2, or a nonprime number whose prime indices are pairwise coprime.

The programs for A327514, there is no canonical definition to state claims against.
-/

/-! ## A327514.P1764856598706115887

`(n+1)/A327512(n+1)`
-/

namespace A327514.P1764856598706115887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327512 (n + 1) : ℚ)

end

end A327514.P1764856598706115887

/-! ## A327514.P1368719020559920911

`A010766(A327512(n+1)+∑[n])`
-/

namespace A327514.P1368719020559920911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A327512 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327514.P1368719020559920911

/-! ## A327514.P4518160746458508303

`A049834(A327512(n+1)+∑[n])`
-/

namespace A327514.P4518160746458508303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A327512 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327514.P4518160746458508303

/-! ## A327514.P2802947692765496577

`A051537(A327512(n+1)+∑[n])`
-/

namespace A327514.P2802947692765496577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A327512 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327514.P2802947692765496577

/-! ## A327514.P5400740438898383240

`A054531(A327512(n+1)+∑[n])`
-/

namespace A327514.P5400740438898383240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A327512 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327514.P5400740438898383240

/-! ## A327514.P5983133006219165548

`A126988(A327512(n+1)+∑[n])`
-/

namespace A327514.P5983133006219165548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A327512 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327514.P5983133006219165548

/-! ## A327514.P11762517904326734053

`A234575(A327512(n+1)+∑[n])`
-/

namespace A327514.P11762517904326734053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A327512 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327514.P11762517904326734053

/-! ## A327514.P16933341919209740141

`lcm(A327401(n+1), A327531(n+1))`
-/

namespace A327514.P16933341919209740141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A327401 (n + 1)) (A327531 (n + 1))

end

end A327514.P16933341919209740141

/-! ## A327514.P641843263090032148

`(n+1)/A327529(A327389(n+1))`
-/

namespace A327514.P641843263090032148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327529 (A327389 (n + 1)).toNat : ℚ)

end

end A327514.P641843263090032148

/-!
# A327515: Number of steps to reach a fixed point starting with n and repeatedly taking the quotient by the maximum divisor that is 1, 2, or a nonprime number whose prime indices are pairwise coprime (A327512, A327514).

The programs for A327515, there is no canonical definition to state claims against.
-/

/-! ## A327515.P4130449596643063792

`A063524(A289508(n+1)^A099545(n+2))`
-/

namespace A327515.P4130449596643063792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (SequenceMachineLib.roundAway ((A289508 (n + 1) : ℚ) ^ (A099545 (n + 2) : ℤ))).toNat

end

end A327515.P4130449596643063792

/-! ## A327515.P25473685519984176

`A094474(n+1)%A327405(n+1)`
-/

namespace A327515.P25473685519984176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094474 (n + 1)) (A327405 (n + 1))

end

end A327515.P25473685519984176

/-!
# A327516: Number of integer partitions of n that are empty, (1), or have at least two parts and these parts are pairwise coprime.

The programs for A327516, there is no canonical definition to state claims against.
-/

/-! ## A327516.P2906558664585287645

`∑[A007359(n-char[2])]`
-/

namespace A327516.P2906558664585287645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327516.P2906558664585287645

/-! ## A327516.P17040458990952534775

`ceil(A051424(n)-atan(n))`
-/

namespace A327516.P17040458990952534775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051424 n : ℝ) - Real.arctan (n : ℝ)⌉

end

end A327516.P17040458990952534775

/-! ## A327516.P18262540825320232391

`A007359(n)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A327516.P18262540825320232391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A007359 n + a (n - 1)

end

end A327516.P18262540825320232391

/-! ## A327516.P14120753458377767931

`A051424(C(2, n+1)+n)-1`
-/

namespace A327516.P14120753458377767931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 (Nat.choose 2 (n + 1) + n) - 1

end

end A327516.P14120753458377767931

/-! ## A327516.P17254782212292449409

`A051424(n)-A157928(n)`
-/

namespace A327516.P17254782212292449409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 n - A157928 n

end

end A327516.P17254782212292449409

/-! ## A327516.P14962202326902370284

`∑[A007359(n)%A000837(n)]+1`
-/

namespace A327516.P14962202326902370284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007359 n) (A000837 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A327516.P14962202326902370284

/-! ## A327516.P4052405838157102304

`A051424(n)-p?[A056239(n+1)]%2`
-/

namespace A327516.P4052405838157102304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 n - Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2

end

end A327516.P4052405838157102304

/-! ## A327516.P14956807595737331622

`A051424(n)-A057427(n-A057427(n))`
-/

namespace A327516.P14956807595737331622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 n - A057427 ((n : ℤ) - A057427 n).toNat

end

end A327516.P14956807595737331622

/-! ## A327516.P12022480888364830225

`A051424(n)+A337561(n)-A337562(n)`
-/

namespace A327516.P12022480888364830225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 n + (A337561 n - A337562 n)

end

end A327516.P12022480888364830225

/-! ## A327516.P16666589795317241621

`A051424(n)+A337462(n)-A101268(n)`
-/

namespace A327516.P16666589795317241621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 n + (A337462 n - A101268 n)

end

end A327516.P16666589795317241621

/-! ## A327516.P11307350492010085956

`A051424(n)-A001222(A276717(n+1))`
-/

namespace A327516.P11307350492010085956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 n - A001222 (A276717 (n + 1)).toNat

end

end A327516.P11307350492010085956

/-! ## A327516.P2939787080969924875

`∑[A007359(n)]-A001222(A276717(n+1))`
-/

namespace A327516.P2939787080969924875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001222 (A276717 (n + 1)).toNat

end

end A327516.P2939787080969924875

/-! ## A327516.P8768206974028985034

`A051424(n)-A060576(A007360(n+1))`
-/

namespace A327516.P8768206974028985034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 n - A060576 (A007360 (n + 1)).toNat

end

end A327516.P8768206974028985034

/-! ## A327516.P17371838304615316458

`A051424(n)-A057427(n²-n)`
-/

namespace A327516.P17371838304615316458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 n - A057427 (n ^ 2 - n)

end

end A327516.P17371838304615316458

/-!
# A327517: Number of factorizations of n that are empty or have at least two factors, all of which are > 1 and pairwise coprime.

The programs for A327517, there is no canonical definition to state claims against.
-/

/-! ## A327517.P7703760103262028956

`(1-∑{e}[n+1, gcd(7, #)])²`
-/

namespace A327517.P7703760103262028956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd 7 (Nat.factorization (f1 n) p) : ℕ) : ℤ)) ^ 2

end

end A327517.P7703760103262028956

/-! ## A327517.P12238763664126781169

`(1-∑{e}[∏{p}[n+1, #], #])²`
-/

namespace A327517.P12238763664126781169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)) ^ 2

end

end A327517.P12238763664126781169

/-! ## A327517.P3290062109201587722

`(1-∑{p}[n+1, floor(atan(#))])²`
-/

namespace A327517.P3290062109201587722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ p ∈ Nat.primeFactors (f1 n), ⌊Real.arctan (p : ℝ)⌋) ^ 2

end

end A327517.P3290062109201587722

/-! ## A327517.P12413677946514404695

`(1-∑{e}[n+1, round(atan(#))])²`
-/

namespace A327517.P12413677946514404695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.arctan (Nat.factorization (f1 n) p : ℝ))) ^ 2

end

end A327517.P12413677946514404695

/-! ## A327517.P1278566179083420572

`(1-∑{e}[n+1, ceil(tanh(#))])²`
-/

namespace A327517.P1278566179083420572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ p ∈ Nat.primeFactors (f1 n), ⌈Real.tanh (Nat.factorization (f1 n) p : ℝ)⌉) ^ 2

end

end A327517.P1278566179083420572

/-! ## A327517.P16260053147964665922

`(1-∑{p}[n+1, ceil(acot(#))])²`
-/

namespace A327517.P16260053147964665922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ p ∈ Nat.primeFactors (f1 n), ⌈SequenceMachineLib.acot (p : ℝ)⌉) ^ 2

end

end A327517.P16260053147964665922

/-! ## A327517.P12861283664470793705

`(1-∑{e}[n+1, ceil(acot(#))])²`
-/

namespace A327517.P12861283664470793705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ p ∈ Nat.primeFactors (f1 n), ⌈SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ)⌉) ^ 2

end

end A327517.P12861283664470793705

/-! ## A327517.P13114293843617931136

`(∑{p}[n+1, or(#, -1)]+1)²`
-/

namespace A327517.P13114293843617931136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Int.lor (p : ℤ) (-1) + 1) ^ 2

end

end A327517.P13114293843617931136

/-! ## A327517.P2806596711077376493

`and(5, ∑{e}[∏{p}[n+1, #], #]+1)`
-/

namespace A327517.P2806596711077376493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 5 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)

end

end A327517.P2806596711077376493

/-! ## A327517.P7854273298108063396

`(1-ceil(∑{p}[n+1, root(γ, #)]))²`
-/

namespace A327517.P7854273298108063396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ⌈∑ p ∈ Nat.primeFactors (f1 n), Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌉) ^ 2

end

end A327517.P7854273298108063396

/-!
# A327518: Number of factorizations of A302696(n), the n-th number that is 1, 2, or a nonprime number with pairwise coprime prime indices, into factors > 1 satisfying the same conditions.

The programs for A327518, there is no canonical definition to state claims against.
-/

/-! ## A327518.P18435257521406785482

`A320439(A302696(n+1))`
-/

namespace A327518.P18435257521406785482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (A302696 (n + 1)).toNat

end

end A327518.P18435257521406785482

/-! ## A327518.P3653571319680919414

`A320439(record[A327512(n+1)])`
-/

namespace A327518.P3653571319680919414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327518.P3653571319680919414

/-! ## A327518.P11417617134859880280

`A008619(gcd(A028310(n), A110495(2*n+5)))`
-/

namespace A327518.P11417617134859880280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.gcd (A028310 n) (A110495 (2 * n + 5)))

end

end A327518.P11417617134859880280

/-! ## A327518.P17481106622920854319

`A001917(A070885(n+5)-A006049(2*(n+1)))`
-/

namespace A327518.P17481106622920854319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001917 (A070885 (n + 5) - A006049 (2 * (n + 1))).toNat

end

end A327518.P17481106622920854319

/-! ## A327518.P15493673277211742987

`gcd(A000120(A143658(n)), A000129(n))`
-/

namespace A327518.P15493673277211742987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A143658 n).toNat) (A000129 n)

end

end A327518.P15493673277211742987

/-!
# A327519: Number of factorizations of A305078(n - 1), the n-th connected number, into connected numbers > 1.

The programs for A327519, there is no canonical definition to state claims against.
-/

/-! ## A327519.P2337717830206549293

`gcd(n!, A327659(n+1))`
-/

namespace A327519.P2337717830206549293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A327659 (n + 1))

end

end A327519.P2337717830206549293

/-! ## A327519.P16446232584491876782

`A040001((2*n+3)²)*A327659(n+1)`
-/

namespace A327519.P16446232584491876782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 ((2 * n + 3) ^ 2) * A327659 (n + 1)

end

end A327519.P16446232584491876782

/-! ## A327519.P10114931414394879838

`A000034(∑[4*(n+1)])*A327659(n+1)`
-/

namespace A327519.P10114931414394879838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ j ∈ Finset.range (n + 1), f1 j) * A327659 (n + 1)

end

end A327519.P10114931414394879838

/-! ## A327519.P8103103753511641564

`A327659(n+1)/A109007(∑[4*(n+1)]-2)`
-/

namespace A327519.P8103103753511641564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327659 (n + 1) : ℚ) / (A109007 (∑ j ∈ Finset.range (n + 1), f1 j - 2) : ℚ)

end

end A327519.P8103103753511641564

/-! ## A327519.P16324789578376163384

`A327659(A000188(∑[A016825(n)]))`
-/

namespace A327519.P16324789578376163384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327659 (A000188 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A327519.P16324789578376163384

/-! ## A327519.P15575221809109554586

`A327659(A000034(A090288(n))+n)`
-/

namespace A327519.P15575221809109554586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327659 (A000034 (A090288 n).toNat + (n : ℤ)).toNat

end

end A327519.P15575221809109554586

/-! ## A327519.P5378023883312934577

`A327659(n+1)+A000007(A000132(n))`
-/

namespace A327519.P5378023883312934577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327659 (n + 1) + A000007 (A000132 n).toNat

end

end A327519.P5378023883312934577

/-! ## A327519.P3572835521881998627

`A327659(A327406(A318978(n+1))+n)`
-/

namespace A327519.P3572835521881998627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327659 (A327406 (A318978 (n + 1)).toNat + (n : ℤ)).toNat

end

end A327519.P3572835521881998627

/-! ## A327519.P16509982060033263366

`A327659(A320439(A318978(n+1))+n+1)`
-/

namespace A327519.P16509982060033263366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327659 (A320439 (A318978 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A327519.P16509982060033263366

/-! ## A327519.P2045619298794832654

`and(A002223(n+1), A327659(n+1))`
-/

namespace A327519.P2045619298794832654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A327659 (n + 1))

end

end A327519.P2045619298794832654

/-!
# A327520: Number of factorizations of the n-th stable number A316476(n) into stable numbers > 1.

The programs for A327520, there is no canonical definition to state claims against.
-/

/-! ## A327520.P11311050134895731914

`A001055(A316476(n+2))`
-/

namespace A327520.P11311050134895731914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A316476 (n + 2)).toNat

end

end A327520.P11311050134895731914

/-! ## A327520.P17367358726110855337

`A001055(record[A327393(n+2)])`
-/

namespace A327520.P17367358726110855337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327393 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327520.P17367358726110855337

/-! ## A327520.P14888749251544883340

`A355030(eq[1, A327403(n+1)]+1)`
-/

namespace A327520.P14888749251544883340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A327520.P14888749251544883340

/-! ## A327520.P13069447029816767725

`A305254(A328674(n+2))`
-/

namespace A327520.P13069447029816767725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305254 (A328674 (n + 2)).toNat

end

end A327520.P13069447029816767725

/-! ## A327520.P16004081190939431357

`A326334(A056867(n+2)%A275815(n+4))`
-/

namespace A327520.P16004081190939431357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326334 (Int.tmod (A056867 (n + 2)) (A275815 (n + 4))).toNat

end

end A327520.P16004081190939431357

/-!
# A327521: Number of factorizations of the n-th squarefree number A005117(n) into squarefree numbers > 1.

The programs for A327521, there is no canonical definition to state claims against.
-/

/-! ## A327521.P127641911866776539

`A050320(A005117(n+1))`
-/

namespace A327521.P127641911866776539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A005117 (n + 1)).toNat

end

end A327521.P127641911866776539

/-! ## A327521.P15584920827792315516

`A320887(comp[A105570(n)])`
-/

namespace A327521.P15584920827792315516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320887 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A327521.P15584920827792315516

/-! ## A327521.P11429531491812519656

`A001055(record[∏{p}[n, #]])`
-/

namespace A327521.P11429531491812519656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A327521.P11429531491812519656

/-! ## A327521.P8355064063195821179

`A045778(record[∏{p}[n, #]])`
-/

namespace A327521.P8355064063195821179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A327521.P8355064063195821179

/-! ## A327521.P10369407239101202057

`A001055(comp[A105570(n)])`
-/

namespace A327521.P10369407239101202057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A327521.P10369407239101202057

/-! ## A327521.P18402104994474673658

`A045778(comp[A105570(n)])`
-/

namespace A327521.P18402104994474673658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A327521.P18402104994474673658

/-! ## A327521.P3792906216908811986

`A001055(A005117(n+1))`
-/

namespace A327521.P3792906216908811986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A005117 (n + 1)).toNat

end

end A327521.P3792906216908811986

/-! ## A327521.P114341490417293928

`A045778(A005117(2*n+1-n))`
-/

namespace A327521.P114341490417293928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A005117 (2 * n + 1 - n)).toNat

end

end A327521.P114341490417293928

/-! ## A327521.P10183340592221789187

`A347438(A005117(n+1)²)`
-/

namespace A327521.P10183340592221789187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (A005117 (n + 1) ^ 2).toNat

end

end A327521.P10183340592221789187

/-! ## A327521.P16419079425656085429

`A385416(A336643(A005117(n+1)²))`
-/

namespace A327521.P16419079425656085429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385416 (A336643 (A005117 (n + 1) ^ 2).toNat).toNat

end

end A327521.P16419079425656085429

/-! ## A327521.P1885987827914987969

`A347438(A005117(n+1)*A005117(n+1))`
-/

namespace A327521.P1885987827914987969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (A005117 (n + 1) * A005117 (n + 1)).toNat

end

end A327521.P1885987827914987969

/-! ## A327521.P8404324030193022994

`A002117(A073245(A072048(n+1)²))`
-/

namespace A327521.P8404324030193022994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002117 (A073245 (A072048 (n + 1) ^ 2).toNat).toNat

end

end A327521.P8404324030193022994

/-! ## A327521.P16120452876896590274

`A366417(A304779(A005117(n+1)²))`
-/

namespace A327521.P16120452876896590274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366417 (A304779 (A005117 (n + 1) ^ 2).toNat).toNat

end

end A327521.P16120452876896590274

/-!
# A327522: Number of factorizations of the n-th prime power A000961(n) into prime powers > 1.

The programs for A327522, there is no canonical definition to state claims against.
-/

/-! ## A327522.P12340155564956492541

`A371243(A246655(n+1))`
-/

namespace A327522.P12340155564956492541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371243 (A246655 (n + 1)).toNat

end

end A327522.P12340155564956492541

/-! ## A327522.P650802044091758425

`A371243(A000961(n+2))`
-/

namespace A327522.P650802044091758425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371243 (A000961 (n + 2)).toNat

end

end A327522.P650802044091758425

/-! ## A327522.P14942966312166624113

`A333381(lcm(n+2, A275892(n+1))/2-1)`
-/

namespace A327522.P14942966312166624113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (SequenceMachineLib.roundAway ((Int.lcm (n + 2 : ℤ) (A275892 (n + 1)) : ℚ) / 2 - 1)).toNat

end

end A327522.P14942966312166624113

/-! ## A327522.P16565711376907592096

`A211261(A246655(n+1))%A118926(n)`
-/

namespace A327522.P16565711376907592096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211261 (A246655 (n + 1)).toNat) (A118926 n)

end

end A327522.P16565711376907592096

/-! ## A327522.P286452427306214978

`A362611(A082754(n+5)+A055093(n))`
-/

namespace A327522.P286452427306214978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (A082754 (n + 5) + A055093 n).toNat

end

end A327522.P286452427306214978

/-!
# A327523: Number of factorizations of the n-th number with distinct prime multiplicities A130091(n) into numbers > 1 with distinct prime multiplicities.

The programs for A327523, there is no canonical definition to state claims against.
-/

/-! ## A327523.P14111562434856530655

`A336424(A130091(n+1))`
-/

namespace A327523.P14111562434856530655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336424 (A130091 (n + 1)).toNat

end

end A327523.P14111562434856530655

/-! ## A327523.P5200491754955178244

`A336424(A351294(n+1))`
-/

namespace A327523.P5200491754955178244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336424 (A351294 (n + 1)).toNat

end

end A327523.P5200491754955178244

/-! ## A327523.P14427708742858625228

`A336424(record[A327498(n+1)])`
-/

namespace A327523.P14427708742858625228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336424 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327523.P14427708742858625228

/-! ## A327523.P8358159356879341396

`A336424(eq[1, A327499(n+1)]+1)`
-/

namespace A327523.P8358159356879341396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A327523.P8358159356879341396

/-! ## A327523.P9959907503579289463

`A336424(lt[0, A336423(n+1)]+1)`
-/

namespace A327523.P9959907503579289463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A327523.P9959907503579289463

/-! ## A327523.P6291395067864960454

`A336424(eq[A001221(n+1), A071625(n+1)]+1)`
-/

namespace A327523.P6291395067864960454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336424 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A327523.P6291395067864960454

/-! ## A327523.P7273154261466216571

`A336424(eq[A344606(n+1)², A344606(n+1)]+1)`
-/

namespace A327523.P7273154261466216571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344606 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336424 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A327523.P7273154261466216571

/-!
# A327524: Number of factorizations of the n-th uniform number A072774(n) into uniform numbers > 1.

The programs for A327524, there is no canonical definition to state claims against.
-/

/-! ## A327524.P6051643117975540290

`A006530(A001055(A072774(n+1))!)`
-/

namespace A327524.P6051643117975540290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A001055 (A072774 (n + 1)).toNat).toNat)

end

end A327524.P6051643117975540290

/-! ## A327524.P15235280610589236172

`A001222(5^A001055(A072774(n+1)))`
-/

namespace A327524.P15235280610589236172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A001055 (A072774 (n + 1)).toNat : ℤ))).toNat

end

end A327524.P15235280610589236172

/-! ## A327524.P7245090200951101937

`A001055(A072774(n+1)%A106429(n+1))`
-/

namespace A327524.P7245090200951101937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (Int.tmod (A072774 (n + 1)) (A106429 (n + 1))).toNat

end

end A327524.P7245090200951101937

/-!
# A327525: Number of factorizations of A302569(n), the n-th number that is 1, prime, or whose prime indices are pairwise coprime.

The programs for A327525, there is no canonical definition to state claims against.
-/

/-! ## A327525.P12368979757635962797

`A001055(A302569(floor(acot(n)+n)))`
-/

namespace A327525.P12368979757635962797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A302569 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A327525.P12368979757635962797

/-! ## A327525.P14502624614590660833

`A001055(A302569(round(acot(n)+n)))`
-/

namespace A327525.P14502624614590660833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A302569 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

end

end A327525.P14502624614590660833

/-! ## A327525.P16057187167583930399

`A001055(A302569(abs(1-n)+1))`
-/

namespace A327525.P16057187167583930399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A302569 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A327525.P16057187167583930399

/-! ## A327525.P11748232525455630017

`A001055(eq[1, A290104(n+1)]+1)`
-/

namespace A327525.P11748232525455630017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A327525.P11748232525455630017

/-! ## A327525.P8527353359596583554

`A001055(record[n/a(A290104(n))])` with `a(0)=1, a(1)=1`
-/

namespace A327525.P8527353359596583554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℚ) / f1 (A290104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A327525.P8527353359596583554

/-! ## A327525.P17877755113980924880

`A001055(record[A327512(2*(n+1))/2])`
-/

namespace A327525.P17877755113980924880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327512 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A327525.P17877755113980924880

/-! ## A327525.P13845377438395766637

`A001055(record[A327512(n+2+n)]/2)`
-/

namespace A327525.P13845377438395766637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2)).toNat

end

end A327525.P13845377438395766637

/-! ## A327525.P4037025942804452042

`A001055(record[gcd(n+1, A327512(4*(n+1)))])`
-/

namespace A327525.P4037025942804452042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A327512 (4 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A327525.P4037025942804452042

/-! ## A327525.P11504984181976479284

`A001055(record[A025480(A302569(n+1))])`
-/

namespace A327525.P11504984181976479284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A302569 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327525.P11504984181976479284

/-! ## A327525.P5912969389475666898

`A001055(record[A032742(A302569(n+1))])`
-/

namespace A327525.P5912969389475666898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A302569 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327525.P5912969389475666898

/-!
# A327526: Maximum uniform divisor of n.

The programs for A327526, there is no canonical definition to state claims against.
-/

/-! ## A327526.P3575808420458964398

`(n+1)/A327528(n+1)`
-/

namespace A327526.P3575808420458964398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327528 (n + 1) : ℚ)

end

end A327526.P3575808420458964398

/-! ## A327526.P5501014645027780546

`sqrt(A203025((n+1)²))`
-/

namespace A327526.P5501014645027780546
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A203025 ((n + 1) ^ 2) : ℝ)

end

end A327526.P5501014645027780546

/-! ## A327526.P6996798273237300379

`floor(sqrt(A203025(xor(n, -1)²)))`
-/

namespace A327526.P6996798273237300379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A203025 (Int.xor (n : ℤ) (-1) ^ 2).toNat)

end

end A327526.P6996798273237300379

/-! ## A327526.P14319832972870207125

`root(A203025(∑[2*n+1]), 2)`
-/

namespace A327526.P14319832972870207125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203025 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) ^ (1 / (2 : ℝ))

end

end A327526.P14319832972870207125

/-! ## A327526.P10420153157257147372

`A003059(A203025(xor(n, -1)²))`
-/

namespace A327526.P10420153157257147372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A203025 (Int.xor (n : ℤ) (-1) ^ 2).toNat).toNat

end

end A327526.P10420153157257147372

/-! ## A327526.P13080446482370400744

`A000196(A203025(∑[2*n+1]))`
-/

namespace A327526.P13080446482370400744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A203025 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A327526.P13080446482370400744

/-! ## A327526.P8038057304873643726

`A000188(A203025((Δ[n²]-n)²))`
-/

namespace A327526.P8038057304873643726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A203025 (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) ^ 2).toNat).toNat

end

end A327526.P8038057304873643726

/-! ## A327526.P1318319354691181140

`A000196(A203025((n+1)²)+1)`
-/

namespace A327526.P1318319354691181140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A203025 ((n + 1) ^ 2) + 1).toNat

end

end A327526.P1318319354691181140

/-! ## A327526.P18374746521034703731

`A002260(2*A203025((n+1)²))`
-/

namespace A327526.P18374746521034703731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A203025 ((n + 1) ^ 2)).toNat

end

end A327526.P18374746521034703731

/-! ## A327526.P9504598549694442577

`A002262(2*A203025((n+1)²))`
-/

namespace A327526.P9504598549694442577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A203025 ((n + 1) ^ 2)).toNat

end

end A327526.P9504598549694442577

/-!
# A327527: Number of uniform divisors of n.

The programs for A327527, the canonical program `A327527.P10875965028528454969` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327527 has offset 1).

The definition of A327527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327527.P10915229420305268894

`A034444(n+1)+A368251(n+1)`
-/

namespace A327527.P10915229420305268894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) + A368251 (n + 1)

end

end A327527.P10915229420305268894

namespace A327527

/-- `A034444(n+1)+A368251(n+1)` -/
def P10915229420305268894.Spec : Prop :=
  ∀ n, P10915229420305268894.a n = A327527 (n + 1)

theorem P10915229420305268894.correct : P10915229420305268894.Spec := by
  intro n
  simp only [A327527, Nat.add_sub_cancel, A327527.P10915229420305268894.a, A327527.P10875965028528454969.f1, A327527.P10875965028528454969.a, A034444, A034444.P6574915864346323298.a, A368251, A368251.P3199248697924659099.a, A384667, A384667.P10362112052039593468.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A354353, A354353.P7138683096085960204.a, A181819, A181819.P15090535388863431201.a, A268340, A268340.P758938358263668477.f1, A268340.P758938358263668477.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A064989, A064989.P13349672914146769936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A327527

/-! ## A327527.P10875965028528454969

`∑{d}[n+1, A384667(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A327527

/-- `∑{d}[n+1, A384667(#)]` -/
def P10875965028528454969.Spec : Prop :=
  ∀ n, P10875965028528454969.a n = A327527 (n + 1)

theorem P10875965028528454969.correct : P10875965028528454969.Spec := by
  intro n
  simp only [A327527, Nat.add_sub_cancel]

end A327527

/-! ## A327527.P7094427759955476550

`∑{d}[n+1, A000007(A062977(#))]`
-/

namespace A327527.P7094427759955476550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (A062977 d).toNat

end

end A327527.P7094427759955476550

namespace A327527

/-- `∑{d}[n+1, A000007(A062977(#))]` -/
def P7094427759955476550.Spec : Prop :=
  ∀ n, P7094427759955476550.a n = A327527 (n + 1)

end A327527

/-! ## A327527.P3142266435314188279

`A000005(n+1)-A391074(n+1)`
-/

namespace A327527.P3142266435314188279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A391074 (n + 1)

end

end A327527.P3142266435314188279

namespace A327527

/-- `A000005(n+1)-A391074(n+1)` -/
def P3142266435314188279.Spec : Prop :=
  ∀ n, P3142266435314188279.a n = A327527 (n + 1)

theorem P3142266435314188279.correct : P3142266435314188279.Spec := by
  intro n
  simp only [A327527, Nat.add_sub_cancel, A327527.P3142266435314188279.a, A327527.P10875965028528454969.f1, A327527.P10875965028528454969.a, A000005, A000005.P16091521709108585461.a, A384667, A384667.P10362112052039593468.a, A391074, A391074.P7066598171140740427.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A354353, A354353.P7138683096085960204.a, A181819, A181819.P15090535388863431201.a, A268340, A268340.P758938358263668477.f1, A268340.P758938358263668477.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A064989, A064989.P13349672914146769936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327527

/-! ## A327527.P15829996426137877188

`A183094(n+1)+A183095(n+1)-A391074(n+1)`
-/

namespace A327527.P15829996426137877188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (n + 1) + (A183095 (n + 1) - A391074 (n + 1))

end

end A327527.P15829996426137877188

namespace A327527

/-- `A183094(n+1)+A183095(n+1)-A391074(n+1)` -/
def P15829996426137877188.Spec : Prop :=
  ∀ n, P15829996426137877188.a n = A327527 (n + 1)

theorem P15829996426137877188.correct : P15829996426137877188.Spec := by
  intro n
  simp only [A327527, Nat.add_sub_cancel, A327527.P15829996426137877188.a, A327527.P10875965028528454969.f1, A327527.P10875965028528454969.a, A183094, A183094.P2300528291682876645.a, A183095, A183095.P16118821317782953757.a, A384667, A384667.P10362112052039593468.a, A391074, A391074.P7066598171140740427.a, A000005, A000005.P16091521709108585461.a, A005361, A005361.P7238185687981551187.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A183093, A183093.P17608197149960352927.a, A354353, A354353.P7138683096085960204.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A181819, A181819.P15090535388863431201.a, A268340, A268340.P758938358263668477.f1, A268340.P758938358263668477.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A064989, A064989.P13349672914146769936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327527

/-! ## A327527.P8690168223156672954

`A048675(A292589(n+1))+A034444(n+1)`
-/

namespace A327527.P8690168223156672954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A292589 (n + 1)).toNat + A034444 (n + 1)

end

end A327527.P8690168223156672954

namespace A327527

/-- `A048675(A292589(n+1))+A034444(n+1)` -/
def P8690168223156672954.Spec : Prop :=
  ∀ n, P8690168223156672954.a n = A327527 (n + 1)

end A327527

/-! ## A327527.P18237970262194101432

`A124859(A292586(n+1))+A048675(A292589(n+1))`
-/

namespace A327527.P18237970262194101432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A292586 (n + 1)).toNat + A048675 (A292589 (n + 1)).toNat

end

end A327527.P18237970262194101432

namespace A327527

/-- `A124859(A292586(n+1))+A048675(A292589(n+1))` -/
def P18237970262194101432.Spec : Prop :=
  ∀ n, P18237970262194101432.a n = A327527 (n + 1)

end A327527

/-! ## A327527.P16261482933791475928

`A293447(A238745(n+1))+1`
-/

namespace A327527.P16261482933791475928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293447 (A238745 (n + 1)).toNat + 1

end

end A327527.P16261482933791475928

namespace A327527

/-- `A293447(A238745(n+1))+1` -/
def P16261482933791475928.Spec : Prop :=
  ∀ n, P16261482933791475928.a n = A327527 (n + 1)

end A327527

/-! ## A327527.P11014725380584706543

`∑{d}[n+1, A136522(A139393(#))]`
-/

namespace A327527.P11014725380584706543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A136522 (A139393 d).toNat

end

end A327527.P11014725380584706543

namespace A327527

/-- `∑{d}[n+1, A136522(A139393(#))]` -/
def P11014725380584706543.Spec : Prop :=
  ∀ n, P11014725380584706543.a n = A327527 (n + 1)

end A327527

/-! ## A327527.P12773242230307814814

`A048675(A046523(n+1))+1`
-/

namespace A327527.P12773242230307814814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A046523 (n + 1)).toNat + 1

end

end A327527.P12773242230307814814

namespace A327527

/-- `A048675(A046523(n+1))+1` -/
def P12773242230307814814.Spec : Prop :=
  ∀ n, P12773242230307814814.a n = A327527 (n + 1)

end A327527

/-! ## A327527.P6546140689191892738

`A048675(A292586(n+1)*A292589(n+1))+1`
-/

namespace A327527.P6546140689191892738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A292586 (n + 1) * A292589 (n + 1)).toNat + 1

end

end A327527.P6546140689191892738

namespace A327527

/-- `A048675(A292586(n+1)*A292589(n+1))+1` -/
def P6546140689191892738.Spec : Prop :=
  ∀ n, P6546140689191892738.a n = A327527 (n + 1)

end A327527

/-! ## A327527.P7720734428315001766

`A048675(A005843(A046523(n+1)))`
-/

namespace A327527.P7720734428315001766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A005843 (A046523 (n + 1)).toNat).toNat

end

end A327527.P7720734428315001766

namespace A327527

/-- `A048675(A005843(A046523(n+1)))` -/
def P7720734428315001766.Spec : Prop :=
  ∀ n, P7720734428315001766.a n = A327527 (n + 1)

end A327527

/-! ## A327527.P9896987919871105292

`∑{d}[n+1, A322585(A320389(#))]`
-/

namespace A327527.P9896987919871105292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322585 (A320389 d).toNat

end

end A327527.P9896987919871105292

namespace A327527

/-- `∑{d}[n+1, A322585(A320389(#))]` -/
def P9896987919871105292.Spec : Prop :=
  ∀ n, P9896987919871105292.a n = A327527 (n + 1)

end A327527

/-! ## A327527.P5799917275223249962

`A056792(A046523(n+1))%A202128(n+1)`
-/

namespace A327527.P5799917275223249962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056792 (A046523 (n + 1)).toNat) (A202128 (n + 1))

end

end A327527.P5799917275223249962

namespace A327527

/-- `A056792(A046523(n+1))%A202128(n+1)` -/
def P5799917275223249962.Spec : Prop :=
  ∀ n, P5799917275223249962.a n = A327527 (n + 1)

end A327527

/-!
# A327528: Quotient of n over the maximum uniform divisor of n.

The programs for A327528, there is no canonical definition to state claims against.
-/

/-! ## A327528.P8138846143061818728

`(n+1)/A327526(n+1)`
-/

namespace A327528.P8138846143061818728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327526 (n + 1) : ℚ)

end

end A327528.P8138846143061818728

/-! ## A327528.P14436352069091177509

`A054531(A327526(n+1)+A000217(n))`
-/

namespace A327528.P14436352069091177509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A327526 (n + 1) + A000217 n).toNat

end

end A327528.P14436352069091177509

/-! ## A327528.P3896315110828809414

`A126988(A327526(n+1)+A000217(n))`
-/

namespace A327528.P3896315110828809414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A327526 (n + 1) + A000217 n).toNat

end

end A327528.P3896315110828809414

/-! ## A327528.P5211265328258410311

`(n+1)/sqrt(A203025((n+1)²))`
-/

namespace A327528.P5211265328258410311
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.sqrt (A203025 ((n + 1) ^ 2) : ℝ)

end

end A327528.P5211265328258410311

/-! ## A327528.P1283022660353046635

`A083399(C(n, A062977(n+1)))`
-/

namespace A327528.P1283022660353046635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (Nat.choose n (A062977 (n + 1)).toNat)

end

end A327528.P1283022660353046635

/-!
# A327529: Maximum divisor of n that is 1 or whose prime indices are relatively prime.

The programs for A327529, there is no canonical definition to state claims against.
-/

/-! ## A327529.P2957070579593383488

`gcd(n+1, 1-A289508(n+1))`
-/

namespace A327529.P2957070579593383488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (1 - A289508 (n + 1))

end

end A327529.P2957070579593383488

/-! ## A327529.P9984700525783681899

`n*A057427(A320439(n+1))+1`
-/

namespace A327529.P9984700525783681899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057427 (A320439 (n + 1)).toNat + 1

end

end A327529.P9984700525783681899

/-! ## A327529.P11678335604674068624

`n*A060576(A327513(n+1))+1`
-/

namespace A327529.P11678335604674068624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A060576 (A327513 (n + 1)).toNat + 1

end

end A327529.P11678335604674068624

/-! ## A327529.P6051418896676269130

`gcd(n+1, A032741(A289508(n+1)))`
-/

namespace A327529.P6051418896676269130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A032741 (A289508 (n + 1)).toNat)

end

end A327529.P6051418896676269130

/-! ## A327529.P6427907932337836922

`gcd(A061019(n+1), A387135(n+1))`
-/

namespace A327529.P6427907932337836922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061019 (n + 1)) (A387135 (n + 1))

end

end A327529.P6427907932337836922

/-! ## A327529.P9358949346779550191

`(n+1)^A035695(n+1)^A211516(A289508(n+1))`
-/

namespace A327529.P9358949346779550191
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A035695 (n + 1) : ℚ) ^ (A211516 (A289508 (n + 1)).toNat : ℤ) : ℝ)

end

end A327529.P9358949346779550191

/-! ## A327529.P13879662759396957613

`n+1-n*A000007(A241654(A327530(n+1)))`
-/

namespace A327529.P13879662759396957613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (n : ℤ) * A000007 (A241654 (A327530 (n + 1)).toNat).toNat

end

end A327529.P13879662759396957613

/-! ## A327529.P2541233498901326384

`A289508(xor(1, A008578(n+2)*A289508(n+1))+1)`
-/

namespace A327529.P2541233498901326384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (Int.xor 1 (A008578 (n + 2) * A289508 (n + 1)) + 1).toNat

end

end A327529.P2541233498901326384

/-! ## A327529.P15615001276208417362

`gcd(n+1, A322389(n+1))`
-/

namespace A327529.P15615001276208417362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A322389 (n + 1))

end

end A327529.P15615001276208417362

/-!
# A327530: Number of divisors of n that are 1 or whose prime indices are relatively prime.

The programs for A327530, there is no canonical definition to state claims against.
-/

/-! ## A327530.P5497528929822547026

`A318979(n+1)+1`
-/

namespace A327530.P5497528929822547026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318979 (n + 1) + 1

end

end A327530.P5497528929822547026

/-! ## A327530.P8035822189520495796

`∑{d}[n+1, 1-A327529(#)%#]`
-/

namespace A327530.P8035822189520495796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - Int.tmod (A327529 d) (d : ℤ))

end

end A327530.P8035822189520495796

/-! ## A327530.P15439291643516824067

`A334954(n+1)-A327657(n+1)`
-/

namespace A327530.P15439291643516824067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A327657 (n + 1)

end

end A327530.P15439291643516824067

/-! ## A327530.P11426988620665715999

`A000005(n+1)+1-A327657(n+1)`
-/

namespace A327530.P11426988620665715999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (1 - A327657 (n + 1))

end

end A327530.P11426988620665715999

/-! ## A327530.P5964889596646371580

`∑{d}[A327529(n+1), A057427(A320439(#))]`
-/

namespace A327530.P5964889596646371580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 (A320439 d).toNat

end

end A327530.P5964889596646371580

/-! ## A327530.P10801491948968907544

`A000005(n+1)-A229621(A327657(n+1))`
-/

namespace A327530.P10801491948968907544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A229621 (A327657 (n + 1)).toNat

end

end A327530.P10801491948968907544

/-! ## A327530.P15785906064648201781

`A327536(n+1)-A005087(n+1)`
-/

namespace A327530.P15785906064648201781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327536 (n + 1) - A005087 (n + 1)

end

end A327530.P15785906064648201781

/-! ## A327530.P14705279809212872626

`A327536(n+1)+1-A099812(n+1)`
-/

namespace A327530.P14705279809212872626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327536 (n + 1) + (1 - A099812 (n + 1))

end

end A327530.P14705279809212872626

/-!
# A327531: a(n) = 1 if the prime indices of n are relatively prime, otherwise a(n) = n.

The programs for A327531, there is no canonical definition to state claims against.
-/

/-! ## A327531.P13304301008974393983

`2-A327529(n+1)+n`
-/

namespace A327531.P13304301008974393983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A327529 (n + 1) + (n : ℤ)

end

end A327531.P13304301008974393983

/-! ## A327531.P12416828655417048287

`gcd(n+1, A327515(n+1))`
-/

namespace A327531.P12416828655417048287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A327515 (n + 1))

end

end A327531.P12416828655417048287

/-! ## A327531.P12161524003906330992

`lcm(n, A322389(n+1))+1`
-/

namespace A327531.P12161524003906330992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A322389 (n + 1)) + 1

end

end A327531.P12161524003906330992

/-! ## A327531.P12459159441981444143

`or(1, C(A327656(n+1), n))`
-/

namespace A327531.P12459159441981444143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.choose (A327656 (n + 1)).toNat n)

end

end A327531.P12459159441981444143

/-! ## A327531.P11115847395350428117

`floor(root(n+1, A327512(n+1)))`
-/

namespace A327531.P11115847395350428117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (1 / (A327512 (n + 1) : ℝ))⌋

end

end A327531.P11115847395350428117

/-! ## A327531.P310723315095792449

`(n+1)^C(A327514(n+1), n+1)`
-/

namespace A327531.P310723315095792449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.choose (A327514 (n + 1)).toNat (n + 1)

end

end A327531.P310723315095792449

/-! ## A327531.P13355380329829312855

`(n-log2(1/2))/A327529(n-log2(1/2))`
-/

namespace A327531.P13355380329829312855
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)) / (A327529 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ)

end

end A327531.P13355380329829312855

/-! ## A327531.P16481331047644979098

`A004442(lcm(n, A322389(n+1)))`
-/

namespace A327531.P16481331047644979098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.lcm (n : ℤ) (A322389 (n + 1)))

end

end A327531.P16481331047644979098

/-! ## A327531.P15476677242338202689

`A028310((n+1)/A327529(n+1))`
-/

namespace A327531.P15476677242338202689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A327529 (n + 1) : ℚ))).toNat

end

end A327531.P15476677242338202689

/-!
# A327532: 

The programs for A327532, there is no canonical definition to state claims against.
-/

/-! ## A327532.P15202410800704853890

`floor(atan(A327405(n+1)))`
-/

namespace A327532.P15202410800704853890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A327405 (n + 1) : ℝ)⌋

end

end A327532.P15202410800704853890

/-! ## A327532.P5997868275719320090

`floor(atan(A327512(n+1)))`
-/

namespace A327532.P5997868275719320090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A327512 (n + 1) : ℝ)⌋

end

end A327532.P5997868275719320090

/-! ## A327532.P917527616598840801

`floor(atan(A327513(n+1)))`
-/

namespace A327532.P917527616598840801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A327513 (n + 1) : ℝ)⌋

end

end A327532.P917527616598840801

/-! ## A327532.P14750148467052475505

`floor(atan(A327529(n+1)))`
-/

namespace A327532.P14750148467052475505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A327529 (n + 1) : ℝ)⌋

end

end A327532.P14750148467052475505

/-! ## A327532.P16859117540305869094

`char[A289509(n+1)-1]`
-/

namespace A327532.P16859117540305869094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327532.P16859117540305869094

/-! ## A327532.P3502803567607980031

`char[A316437(n+2)-1]`
-/

namespace A327532.P3502803567607980031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327532.P3502803567607980031

/-! ## A327532.P6687313140654725808

`char[eq[1, A289508(n+1)]]`
-/

namespace A327532.P6687313140654725808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A327532.P6687313140654725808

/-! ## A327532.P14254172002488649984

`C(n, C(A327656(n+1), n))`
-/

namespace A327532.P14254172002488649984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A327656 (n + 1)).toNat n)

end

end A327532.P14254172002488649984

/-! ## A327532.P16127562464792080268

`A060576(A327513(n+1))`
-/

namespace A327532.P16127562464792080268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A327513 (n + 1)).toNat

end

end A327532.P16127562464792080268

/-! ## A327532.P6344763843405655124

`A057427(A327529(n+1)-1)`
-/

namespace A327532.P6344763843405655124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A327529 (n + 1) - 1).toNat

end

end A327532.P6344763843405655124

/-! ## A327532.P12235388688795587631

`A000290(n)%A327405(n+1)`
-/

namespace A327532.P12235388688795587631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 n) (A327405 (n + 1))

end

end A327532.P12235388688795587631

/-! ## A327532.P14759735378993477560

`A000583(n)%A327405(n+1)`
-/

namespace A327532.P14759735378993477560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n) (A327405 (n + 1))

end

end A327532.P14759735378993477560

/-! ## A327532.P16917502438921331554

`A001014(n)%A327405(n+1)`
-/

namespace A327532.P16917502438921331554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001014 n) (A327405 (n + 1))

end

end A327532.P16917502438921331554

/-! ## A327532.P1283964324743160929

`A001016(n)%A327405(n+1)`
-/

namespace A327532.P1283964324743160929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001016 n) (A327405 (n + 1))

end

end A327532.P1283964324743160929

/-! ## A327532.P17446760579860446362

`A001844(n)%A327405(n+1)`
-/

namespace A327532.P17446760579860446362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001844 n) (A327405 (n + 1))

end

end A327532.P17446760579860446362

/-! ## A327532.P12321523531109044872

`A002593(n)%A327405(n+1)`
-/

namespace A327532.P12321523531109044872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002593 n) (A327405 (n + 1))

end

end A327532.P12321523531109044872

/-! ## A327532.P28135589190583457

`A003215(n)%A327405(n+1)`
-/

namespace A327532.P28135589190583457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003215 n) (A327405 (n + 1))

end

end A327532.P28135589190583457

/-! ## A327532.P11157063595546429986

`A004768(n)%A327405(n+1)`
-/

namespace A327532.P11157063595546429986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004768 n) (A327405 (n + 1))

end

end A327532.P11157063595546429986

/-! ## A327532.P5446809660505409161

`A007204(n)%A327405(n+1)`
-/

namespace A327532.P5446809660505409161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007204 n) (A327405 (n + 1))

end

end A327532.P5446809660505409161

/-! ## A327532.P12729475173966494168

`A008402(n)%A327405(n+1)`
-/

namespace A327532.P12729475173966494168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008402 n) (A327405 (n + 1))

end

end A327532.P12729475173966494168

/-!
# A327533: Number of factorizations of the n-th number that is 1 or whose prime indices are relatively prime A289509(n - 1) into numbers > 1 satisfying the same conditions.

The programs for A327533, there is no canonical definition to state claims against.
-/

/-! ## A327533.P14169714823954504371

`A320439(record[A316437(n+1)])`
-/

namespace A327533.P14169714823954504371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327533.P14169714823954504371

/-! ## A327533.P1536204422548374538

`A320439(record[A327529(n+1)])`
-/

namespace A327533.P1536204422548374538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327533.P1536204422548374538

/-! ## A327533.P1588347413917687946

`filter[A320439(n+1), A168181(#)]`
-/

namespace A327533.P1588347413917687946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A327533.P1588347413917687946

/-! ## A327533.P14652748202133968030

`filter[A320439(n+1), A168182(#)]`
-/

namespace A327533.P14652748202133968030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A327533.P14652748202133968030

/-! ## A327533.P12219271862591481262

`filter[A320439(n+1), A368916(#)]`
-/

namespace A327533.P12219271862591481262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A327533.P12219271862591481262

/-! ## A327533.P13433547682302218653

`A320439(lt[0, A320439(n+1)]+1)`
-/

namespace A327533.P13433547682302218653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A327533.P13433547682302218653

/-! ## A327533.P7597335869365220236

`A320439(record[n%(A320439(n+1)+n)]+1)`
-/

namespace A327533.P7597335869365220236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A320439 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A327533.P7597335869365220236

/-! ## A327533.P13204667665504313277

`A320439(∪[A352203(2*n+1), A289509(n+1)])`
-/

namespace A327533.P13204667665504313277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352203 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A327533.P13204667665504313277

/-! ## A327533.P11414160827921739355

`A320439(∪[A298748(n+1), A322368(n+1)])`
-/

namespace A327533.P11414160827921739355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322368 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A327533.P11414160827921739355

/-!
# A327534: Numbers that are 1, prime, or whose prime indices are relatively prime.

The programs for A327534, there is no canonical definition to state claims against.
-/

/-! ## A327534.P15115971049507007164

`eq[1, A327537(n+1)]+1`
-/

namespace A327534.P15115971049507007164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327537 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327534.P15115971049507007164

/-! ## A327534.P3628748643904752849

`lt[A322338(n+1), 2]+1`
-/

namespace A327534.P3628748643904752849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322338 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327534.P3628748643904752849

/-! ## A327534.P947739997843937849

`lt[A327538(n+1), 2]+1`
-/

namespace A327534.P947739997843937849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327538 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327534.P947739997843937849

/-! ## A327534.P7846655634315695461

`comp[A322336(n+1)-1]+1`
-/

namespace A327534.P7846655634315695461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322336 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A327534.P7846655634315695461

/-! ## A327534.P1592079573980485161

`∪[(3^n+4^n-1)², A305732(n+1)]`
-/

namespace A327534.P1592079573980485161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) + ((4 ^ n : ℤ) - 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327534.P1592079573980485161

/-! ## A327534.P7196178946365485085

`∪[A305732(n+1), A000031(n)]`
-/

namespace A327534.P7196178946365485085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327534.P7196178946365485085

/-! ## A327534.P5312683716595528088

`∪[A305732(n+1), A000123(n)]`
-/

namespace A327534.P5312683716595528088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327534.P5312683716595528088

/-! ## A327534.P12435131296854044695

`∪[A305732(n+1), A002727(n)]`
-/

namespace A327534.P12435131296854044695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002727 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327534.P12435131296854044695

/-! ## A327534.P16791291875955411977

`∪[A305732(n+1), A004277(n)]`
-/

namespace A327534.P16791291875955411977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327534.P16791291875955411977

/-! ## A327534.P17763049198627787939

`∪[A305732(n+1), A004279(n)]`
-/

namespace A327534.P17763049198627787939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327534.P17763049198627787939

/-!
# A327535: Maximum divisor of n that is 1, prime, or whose prime indices are relatively prime.

The programs for A327535, there is no canonical definition to state claims against.
-/

/-! ## A327535.P10757452641356797301

`(n+1)/A327537(n+1)`
-/

namespace A327535.P10757452641356797301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327537 (n + 1) : ℚ)

end

end A327535.P10757452641356797301

/-! ## A327535.P11729433208778168249

`(n+1)/A052126(A327531(n+1))`
-/

namespace A327535.P11729433208778168249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052126 (A327531 (n + 1)).toNat : ℚ)

end

end A327535.P11729433208778168249

/-! ## A327535.P8704562843694022678

`gcd(n+1, A061397(A327389(n+1)))`
-/

namespace A327535.P8704562843694022678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A061397 (A327389 (n + 1)).toNat)

end

end A327535.P8704562843694022678

/-! ## A327535.P5649703467886230716

`lcm(A006530(n+1), A327529(n+1))`
-/

namespace A327535.P5649703467886230716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (n + 1)) (A327529 (n + 1))

end

end A327535.P5649703467886230716

/-! ## A327535.P2568760930496804041

`A049834(A327537(n+1)+A000217(n))`
-/

namespace A327535.P2568760930496804041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A327537 (n + 1) + A000217 n).toNat

end

end A327535.P2568760930496804041

/-! ## A327535.P13232925421525510452

`A006530(A327531(n+1))*A327529(n+1)`
-/

namespace A327535.P13232925421525510452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A327531 (n + 1)).toNat * A327529 (n + 1)

end

end A327535.P13232925421525510452

/-! ## A327535.P14197465800440978121

`A316437(n+1)+A327389(n+1)-A327389(A316437(n+1))`
-/

namespace A327535.P14197465800440978121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (n + 1) + (A327389 (n + 1) - A327389 (A316437 (n + 1)).toNat)

end

end A327535.P14197465800440978121

/-! ## A327535.P15718503513927874822

`A327389(n+1)+A327529(n+1)-A327529(A327389(n+1))`
-/

namespace A327535.P15718503513927874822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327389 (n + 1) + (A327529 (n + 1) - A327529 (A327389 (n + 1)).toNat)

end

end A327535.P15718503513927874822

/-!
# A327536: Number of divisors of n that are 1, prime, or whose prime indices are relatively prime.

The programs for A327536, there is no canonical definition to state claims against.
-/

/-! ## A327536.P12605228191155988326

`∑{d}[n+1, A036968(A327537(#))]`
-/

namespace A327536.P12605228191155988326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036968 (A327537 d).toNat

end

end A327536.P12605228191155988326

/-! ## A327536.P7873292649743571734

`A327530(n+1)+A005087(n+1)`
-/

namespace A327536.P7873292649743571734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327530 (n + 1) + A005087 (n + 1)

end

end A327536.P7873292649743571734

/-! ## A327536.P6445658368690567012

`A318979(n+1)+A099812(n+1)`
-/

namespace A327536.P6445658368690567012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318979 (n + 1) + A099812 (n + 1)

end

end A327536.P6445658368690567012

/-! ## A327536.P1539943524959903037

`A163523(n+1)-A322306(n+1)`
-/

namespace A327536.P1539943524959903037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163523 (n + 1) - A322306 (n + 1)

end

end A327536.P1539943524959903037

/-! ## A327536.P4818706600750894227

`A318979(n+1)+A001221(2*(n+1))`
-/

namespace A327536.P4818706600750894227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318979 (n + 1) + A001221 (2 * (n + 1))

end

end A327536.P4818706600750894227

/-! ## A327536.P2695012450656998009

`∑{d}[n+1, A327515(#)]+A001221(2*(n+1))`
-/

namespace A327536.P2695012450656998009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327515 d + A001221 (2 * (n + 1))

end

end A327536.P2695012450656998009

/-! ## A327536.P13076589575286952494

`A327530(n+1)+A001221((n+1)/2^val(n+1, 2))`
-/

namespace A327536.P13076589575286952494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327530 (n + 1) + A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A327536.P13076589575286952494

/-! ## A327536.P15888832130951998157

`A327530(n+1)+A001221(A000265(n+1))`
-/

namespace A327536.P15888832130951998157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327530 (n + 1) + A001221 (A000265 (n + 1)).toNat

end

end A327536.P15888832130951998157

/-! ## A327536.P3175187403600347056

`A327530(n+1)+A001221(A064989(n+1))`
-/

namespace A327536.P3175187403600347056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327530 (n + 1) + A001221 (A064989 (n + 1)).toNat

end

end A327536.P3175187403600347056

/-! ## A327536.P13141642090736891342

`A318979(n+1)+A287841(A000265(n+1))`
-/

namespace A327536.P13141642090736891342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318979 (n + 1) + A287841 (A000265 (n + 1)).toNat

end

end A327536.P13141642090736891342

/-!
# A327537: Quotient of n over the maximum divisor of n that is 1, prime, or whose prime indices are relatively prime.

The programs for A327537, there is no canonical definition to state claims against.
-/

/-! ## A327537.P18130820138928264210

`A052126((n+1)/A327529(n+1))`
-/

namespace A327537.P18130820138928264210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A327529 (n + 1) : ℚ))).toNat

end

end A327537.P18130820138928264210

/-! ## A327537.P131158389094398036

`ceil(A327401(n+1)/A327529(n+1))`
-/

namespace A327537.P131158389094398036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327401 (n + 1) : ℚ) / (A327529 (n + 1) : ℚ)⌉

end

end A327537.P131158389094398036

/-! ## A327537.P5425321234641567607

`A052126(n+1)^A286745(A289508(n+1))`
-/

namespace A327537.P5425321234641567607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052126 (n + 1) : ℚ) ^ (A286745 (A289508 (n + 1)).toNat : ℤ)

end

end A327537.P5425321234641567607

/-! ## A327537.P8466136269120193712

`gcd(A001221(A327405(n+1)), A327401(n+1))`
-/

namespace A327537.P8466136269120193712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A327405 (n + 1)).toNat) (A327401 (n + 1))

end

end A327537.P8466136269120193712

/-! ## A327537.P17459865098789842925

`and(A327401(n+1), A327514(A052126(n+1)))`
-/

namespace A327537.P17459865098789842925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A327401 (n + 1)) (A327514 (A052126 (n + 1)).toNat)

end

end A327537.P17459865098789842925

/-! ## A327537.P3881721383068064615

`A015052(A052126(n+1)^A322338(n+1))`
-/

namespace A327537.P3881721383068064615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (SequenceMachineLib.roundAway ((A052126 (n + 1) : ℚ) ^ (A322338 (n + 1) : ℤ))).toNat

end

end A327537.P3881721383068064615

/-! ## A327537.P13552889240455913193

`A053166(A052126(n+1)^A322338(n+1))`
-/

namespace A327537.P13552889240455913193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (SequenceMachineLib.roundAway ((A052126 (n + 1) : ℚ) ^ (A322338 (n + 1) : ℤ))).toNat

end

end A327537.P13552889240455913193

/-! ## A327537.P9587696304064981835

`A052126(A327531(n+1))`
-/

namespace A327537.P9587696304064981835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A327531 (n + 1)).toNat

end

end A327537.P9587696304064981835

/-! ## A327537.P8755639963474876259

`A052126(and(A109613(n), A327514(n+1)))`
-/

namespace A327537.P8755639963474876259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (Int.land (A109613 n) (A327514 (n + 1))).toNat

end

end A327537.P8755639963474876259

/-! ## A327537.P7211971352374865193

`and(A327401(n+1), A327401(A327514(n+1)))`
-/

namespace A327537.P7211971352374865193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A327401 (n + 1)) (A327401 (A327514 (n + 1)).toNat)

end

end A327537.P7211971352374865193

/-!
# A327538: Number of steps to reach a fixed point starting with n and repeatedly taking the quotient by the maximum divisor that is 1, prime, or whose prime indices are relatively prime (A327535, A327537).

The programs for A327538, there is no canonical definition to state claims against.
-/

/-! ## A327538.P505956278391822482

`a(A327537(n+1)-1)+1` with `a(0)=0`
-/

namespace A327538.P505956278391822482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A327537 (n + 1) - 1).toNat + 1

end

end A327538.P505956278391822482

/-! ## A327538.P15463313965450523026

`A000005(A327537(n+1))%(n+1)`
-/

namespace A327538.P15463313965450523026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A327537 (n + 1)).toNat) (n + 1 : ℤ)

end

end A327538.P15463313965450523026

/-! ## A327538.P8891590726374671257

`gcd(A001222(n+1), A327515(n+1))`
-/

namespace A327538.P8891590726374671257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A327515 (n + 1))

end

end A327538.P8891590726374671257

/-! ## A327538.P15504757182111802787

`ceil(A001222(n+1)/A327512(n+1))`
-/

namespace A327538.P15504757182111802787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001222 (n + 1) : ℚ) / (A327512 (n + 1) : ℚ)⌉

end

end A327538.P15504757182111802787

/-! ## A327538.P993617825025597034

`ceil(A001222(n+1)/A327529(n+1))`
-/

namespace A327538.P993617825025597034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001222 (n + 1) : ℚ) / (A327529 (n + 1) : ℚ)⌉

end

end A327538.P993617825025597034

/-! ## A327538.P12092644829709559033

`ceil(A001222(n+1)/A327530(n+1))`
-/

namespace A327538.P12092644829709559033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001222 (n + 1) : ℚ) / (A327530 (n + 1) : ℚ)⌉

end

end A327538.P12092644829709559033

/-! ## A327538.P14018150015057439672

`C(∑{e}[n+1, #], A240357(A305079(n+1)))`
-/

namespace A327538.P14018150015057439672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) (A240357 (A305079 (n + 1)).toNat).toNat

end

end A327538.P14018150015057439672

/-! ## A327538.P15806891140322730852

`A000005(A327537(n+1))-A000007(n)`
-/

namespace A327538.P15806891140322730852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A327537 (n + 1)).toNat - A000007 n

end

end A327538.P15806891140322730852

/-! ## A327538.P731527056180102880

`A000005(A327537(n+1))*A057427(n)`
-/

namespace A327538.P731527056180102880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A327537 (n + 1)).toNat * A057427 n

end

end A327538.P731527056180102880

/-!
# A327539: Starting from n: as long as the decimal representation starts with a positive even number, divide the largest such prefix by 2; a(n) corresponds to the final value.

The programs for A327539, there is no canonical definition to state claims against.
-/

/-! ## A327539.P3181704811396587975

`A107128(A106617(n))%A123176(n+1)`
-/

namespace A327539.P3181704811396587975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107128 (A106617 n).toNat) (A123176 (n + 1))

end

end A327539.P3181704811396587975

/-! ## A327539.P11889721116986313272

`A000034(A033580(n))*A107128(A106617(n))`
-/

namespace A327539.P11889721116986313272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A033580 n).toNat * A107128 (A106617 n).toNat

end

end A327539.P11889721116986313272

/-! ## A327539.P11037915806880043289

`A001222(A069798(n+1))*A107128(A106617(n))`
-/

namespace A327539.P11037915806880043289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A069798 (n + 1)).toNat * A107128 (A106617 n).toNat

end

end A327539.P11037915806880043289

/-!
# A327540: Number of factorizations of A327534(n), the n-th number that is 1, prime, or whose prime indices are relatively prime, into numbers > 1 satisfying the same conditions.

The programs for A327540, there is no canonical definition to state claims against.
-/

/-! ## A327540.P6882780155193422203

`A323438(A327534(n+1)^A059197(n+1))`
-/

namespace A327540.P6882780155193422203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323438 (SequenceMachineLib.roundAway ((A327534 (n + 1) : ℚ) ^ (A059197 (n + 1) : ℤ))).toNat

end

end A327540.P6882780155193422203

/-! ## A327540.P1846528061659050009

`A323438(A059197(n+1)²*A327534(n+1))`
-/

namespace A327540.P1846528061659050009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323438 (A059197 (n + 1) ^ 2 * A327534 (n + 1)).toNat

end

end A327540.P1846528061659050009

/-! ## A327540.P6216643713434564450

`A323438(A059197(n+1)*A327534(n+1)*A059197(n+1))`
-/

namespace A327540.P6216643713434564450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323438 (A059197 (n + 1) * A327534 (n + 1) * A059197 (n + 1)).toNat

end

end A327540.P6216643713434564450

/-! ## A327540.P8854813637502753329

`A323438(∑[A323438(A003309(n+1))])`
-/

namespace A327540.P8854813637502753329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323438 (A003309 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323438 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327540.P8854813637502753329

/-! ## A327540.P7680959115451906163

`A323438(A316495(n+1)%A269303(2*(n+2)))`
-/

namespace A327540.P7680959115451906163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323438 (Int.tmod (A316495 (n + 1)) (A269303 (2 * (n + 2)))).toNat

end

end A327540.P7680959115451906163

/-!
# A327541: A linear divisibility sequence of order 8.

The programs for A327541, the canonical program `A327541.P6642049858553478893` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327541 has offset 1).

The definition of A327541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327541.P6642049858553478893

`ogf((1-x^2+8x^3-x^4+x^6)/(1-4x-x^2+4x^3+16x^4+4x^5-x^6-4x^7+x^8))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327541

/-- `ogf((1-x^2+8x^3-x^4+x^6)/(1-4x-x^2+4x^3+16x^4+4x^5-x^6-4x^7+x^8))` -/
def P6642049858553478893.Spec : Prop :=
  ∀ n, P6642049858553478893.a n = A327541 (n + 1)

theorem P6642049858553478893.correct : P6642049858553478893.Spec := by
  intro n
  simp only [A327541, Nat.add_sub_cancel]

end A327541

/-! ## A327541.P8916429500969418791

`A303787(A202508(n+1)-A027934(n))`
-/

namespace A327541.P8916429500969418791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A202508 (n + 1) - A027934 n).toNat

end

end A327541.P8916429500969418791

namespace A327541

/-- `A303787(A202508(n+1)-A027934(n))` -/
def P8916429500969418791.Spec : Prop :=
  ∀ n, P8916429500969418791.a n = A327541 (n + 1)

end A327541

/-!
# A327542: A linear divisibility sequence of order 8.

The programs for A327542, the canonical program `A327542.P9460480810925056678` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327542 has offset 1).

The definition of A327542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327542.P9460480810925056678

`ogf((1+5x^2-4x^3-5x^4-x^6)/(1-2x-7x^2+6x^3-4x^4-6x^5-7x^6+2x^7+x^8))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327542

/-- `ogf((1+5x^2-4x^3-5x^4-x^6)/(1-2x-7x^2+6x^3-4x^4-6x^5-7x^6+2x^7+x^8))` -/
def P9460480810925056678.Spec : Prop :=
  ∀ n, P9460480810925056678.a n = A327542 (n + 1)

theorem P9460480810925056678.correct : P9460480810925056678.Spec := by
  intro n
  simp only [A327542, Nat.add_sub_cancel]

end A327542

/-! ## A327542.P4766574696518483374

`A179821(A330943(n+1)^A008619(n))`
-/

namespace A327542.P4766574696518483374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179821 (SequenceMachineLib.roundAway ((A330943 (n + 1) : ℚ) ^ (A008619 n : ℤ))).toNat

end

end A327542.P4766574696518483374

namespace A327542

/-- `A179821(A330943(n+1)^A008619(n))` -/
def P4766574696518483374.Spec : Prop :=
  ∀ n, P4766574696518483374.a n = A327542 (n + 1)

end A327542

/-!
# A327543: Indices n of Gram points g(n) for successive positive maxima of the Riemann zeta function on critical line.

The programs for A327543, there is no canonical definition to state claims against.
-/

/-! ## A327543.P8887561883180942194

`A329823(n+1)+A057428(A000245(n))`
-/

namespace A327543.P8887561883180942194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329823 (n + 1) + A057428 (A000245 n).toNat

end

end A327543.P8887561883180942194

/-! ## A327543.P3117707853984609733

`A329823(n+1)+A057428(A015519(n))`
-/

namespace A327543.P3117707853984609733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329823 (n + 1) + A057428 (A015519 n).toNat

end

end A327543.P3117707853984609733

/-! ## A327543.P7652912274792420595

`A329823(A032555(n+1))+A057428(n)`
-/

namespace A327543.P7652912274792420595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329823 (A032555 (n + 1)).toNat + A057428 n

end

end A327543.P7652912274792420595

/-! ## A327543.P17883916602701513934

`A329823(A078213(n+1))+A057428(n)`
-/

namespace A327543.P17883916602701513934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329823 (A078213 (n + 1)).toNat + A057428 n

end

end A327543.P17883916602701513934

/-! ## A327543.P2686956422711618629

`A329823(n+1)-A001221(A000302(n))`
-/

namespace A327543.P2686956422711618629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329823 (n + 1) - A001221 (A000302 n).toNat

end

end A327543.P2686956422711618629

/-!
# A327548: Total number of compositions in the compositions of partitions of n.

The programs for A327548, there is no canonical definition to state claims against.
-/

/-! ## A327548.P3827413678461940642

`A084075(n)-A162511(A007583(n))`
-/

namespace A327548.P3827413678461940642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084075 n - A162511 (A007583 n).toNat

end

end A327548.P3827413678461940642

/-! ## A327548.P9420206784060951393

`A048781(n+3)-A333381(A104080(n))`
-/

namespace A327548.P9420206784060951393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048781 (n + 3) - A333381 (A104080 n).toNat

end

end A327548.P9420206784060951393

/-! ## A327548.P12672782060581459237

`A048781(n+3)-A255824(A048775(n+1))`
-/

namespace A327548.P12672782060581459237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048781 (n + 3) - A255824 (A048775 (n + 1)).toNat

end

end A327548.P12672782060581459237

/-!
# A327549: Number T(n,k) of compositions of partitions of n with exactly k compositions; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A327549, there is no canonical definition to state claims against.
-/

/-! ## A327549.P14731505238961432008

`A072233(n)*A130321(n)`
-/

namespace A327549.P14731505238961432008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A130321 n

end

end A327549.P14731505238961432008

/-! ## A327549.P16201852420914278488

`A057728(n+1)*A072233(n)`
-/

namespace A327549.P16201852420914278488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) * A072233 n

end

end A327549.P16201852420914278488

/-! ## A327549.P14148677310535940589

`A000079(A025581(n))*A072233(n)`
-/

namespace A327549.P14148677310535940589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A072233 n

end

end A327549.P14148677310535940589

/-! ## A327549.P13329374644628843358

`A059268(A061579(n))*A072233(n)`
-/

namespace A327549.P13329374644628843358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A072233 n

end

end A327549.P13329374644628843358

/-! ## A327549.P10552065611645838057

`Δ[A023758(n+1)]*A072233(n)`
-/

namespace A327549.P10552065611645838057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A072233 n

end

end A327549.P10552065611645838057

/-!
# A327550: Number of compositions of partitions of 2n with exactly n compositions.

The programs for A327550, there is no canonical definition to state claims against.
-/

/-! ## A327550.P10715231829197866775

`2^n*A000041(n)`
-/

namespace A327550.P10715231829197866775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000041 n

end

end A327550.P10715231829197866775

/-! ## A327550.P17102812043331165291

`A000041(n)*A000079(n)`
-/

namespace A327550.P17102812043331165291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A000079 n

end

end A327550.P17102812043331165291

/-! ## A327550.P14258403376057380584

`2^n*∑[A002865(n)]`
-/

namespace A327550.P14258403376057380584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327550.P14258403376057380584

/-! ## A327550.P688513182687723155

`2^(n-1)*A139582(n)`
-/

namespace A327550.P688513182687723155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A139582 n : ℚ)

end

end A327550.P688513182687723155

/-! ## A327550.P9508972229481678156

`2^(n-2)*A299474(n)`
-/

namespace A327550.P9508972229481678156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A299474 n : ℚ)

end

end A327550.P9508972229481678156

/-! ## A327550.P17690555191257055503

`∑[A002865(n)]*A000079(n)`
-/

namespace A327550.P17690555191257055503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A327550.P17690555191257055503

/-! ## A327550.P14498827179453591154

`A000041(n)*∑[A011782(n)]`
-/

namespace A327550.P14498827179453591154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327550.P14498827179453591154

/-! ## A327550.P13778635106105314395

`A000041(n)*record[A077957(n)]`
-/

namespace A327550.P13778635106105314395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327550.P13778635106105314395

/-! ## A327550.P10078566332934282137

`A000041(n)*record[A077958(n)]`
-/

namespace A327550.P10078566332934282137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327550.P10078566332934282137

/-! ## A327550.P8672517724703075334

`(A000065(n)+1)*A000079(n)`
-/

namespace A327550.P8672517724703075334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000065 n + 1) * A000079 n

end

end A327550.P8672517724703075334

/-! ## A327550.P6553998701825567928

`A000041(n)*A011782(n+1)`
-/

namespace A327550.P6553998701825567928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A011782 (n + 1)

end

end A327550.P6553998701825567928

/-! ## A327550.P11740500919444720241

`A000041(n)*A131577(n+1)`
-/

namespace A327550.P11740500919444720241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A131577 (n + 1)

end

end A327550.P11740500919444720241

/-! ## A327550.P3954056966188574325

`A000041(n)*A034008(n+2)`
-/

namespace A327550.P3954056966188574325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A034008 (n + 2)

end

end A327550.P3954056966188574325

/-! ## A327550.P15380053883160119877

`A000041(n)*A166444(n+2)`
-/

namespace A327550.P15380053883160119877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A166444 (n + 2)

end

end A327550.P15380053883160119877

/-! ## A327550.P12785841611875388678

`A000041(n)*A016116(2*n)`
-/

namespace A327550.P12785841611875388678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A016116 (2 * n)

end

end A327550.P12785841611875388678

/-! ## A327550.P12618454672761249818

`A000041(n)*A017910(2*n)`
-/

namespace A327550.P12618454672761249818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A017910 (2 * n)

end

end A327550.P12618454672761249818

/-! ## A327550.P3220747806055832546

`A000041(n)*A017911(2*n)`
-/

namespace A327550.P3220747806055832546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A017911 (2 * n)

end

end A327550.P3220747806055832546

/-! ## A327550.P14507461272079750489

`A000041(n)*A017912(2*n)`
-/

namespace A327550.P14507461272079750489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A017912 (2 * n)

end

end A327550.P14507461272079750489

/-! ## A327550.P7821275061930028208

`A000079(n)*A035363(2*n)`
-/

namespace A327550.P7821275061930028208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A035363 (2 * n)

end

end A327550.P7821275061930028208

/-! ## A327550.P5147524042870433387

`A000041(n)*A077957(2*n)`
-/

namespace A327550.P5147524042870433387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A077957 (2 * n)

end

end A327550.P5147524042870433387

/-!
# A327551: Number of cycles in the perfect shuffle permutation mapping (1,2,...,2n) to (1,n+1,2,n+2,...,n,2n).

The programs for A327551, there is no canonical definition to state claims against.
-/

/-! ## A327551.P1500019423330660294

`A081844(n)+1`
-/

namespace A327551.P1500019423330660294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081844 n + 1

end

end A327551.P1500019423330660294

/-! ## A327551.P9460942302893022956

`A006694(n)+2`
-/

namespace A327551.P9460942302893022956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n + 2

end

end A327551.P9460942302893022956

/-! ## A327551.P2983945145267519479

`2*A081844(n)-A006694(n)`
-/

namespace A327551.P2983945145267519479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081844 n - A006694 n

end

end A327551.P2983945145267519479

/-! ## A327551.P9728233406978909376

`n-(A023443(n)-A081844(n))`
-/

namespace A327551.P9728233406978909376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A081844 n)

end

end A327551.P9728233406978909376

/-! ## A327551.P10693215359081896982

`ceil(A137576(n)/A002326(n))+1`
-/

namespace A327551.P10693215359081896982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A137576 n : ℚ) / (A002326 n : ℚ)⌉ + 1

end

end A327551.P10693215359081896982

/-! ## A327551.P9119291238012267247

`A000374(Δ[n²])+1`
-/

namespace A327551.P9119291238012267247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A327551.P9119291238012267247

/-! ## A327551.P18349051872731960428

`A091248(Δ[n²])+1`
-/

namespace A327551.P18349051872731960428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091248 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A327551.P18349051872731960428

/-! ## A327551.P2443208103944623385

`abs(xor(-1, A091248(2*n+1)))`
-/

namespace A327551.P2443208103944623385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A091248 (2 * n + 1))|

end

end A327551.P2443208103944623385

/-! ## A327551.P12978360669233057188

`∑{d}[2*n+1, A318622(#)]+1`
-/

namespace A327551.P12978360669233057188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318622 d + 1

end

end A327551.P12978360669233057188

/-! ## A327551.P8891723766692501091

`A030545(A006694(n))`
-/

namespace A327551.P8891723766692501091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030545 (A006694 n).toNat

end

end A327551.P8891723766692501091

/-!
# A327552: Number of partitions in all twice partitions of n where the first partition is strict.

The programs for A327552, there is no canonical definition to state claims against.
-/

/-! ## A327552.P6042490530442329057

`eq[A102563(n), A229964(n+1)]`
-/

namespace A327552.P6042490530442329057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327552.P6042490530442329057

/-! ## A327552.P11738318060218256444

`A000079(n)-A001511(A107948(n))`
-/

namespace A327552.P11738318060218256444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A001511 (A107948 n).toNat

end

end A327552.P11738318060218256444

/-! ## A327552.P4019257648758218084

`A000225(n)-A007814(A107948(n))`
-/

namespace A327552.P4019257648758218084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A007814 (A107948 n).toNat

end

end A327552.P4019257648758218084

/-! ## A327552.P16645047574105572881

`A000079(n)-A036036(A110447(n))`
-/

namespace A327552.P16645047574105572881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A036036 (A110447 n).toNat

end

end A327552.P16645047574105572881

/-!
# A327553: Number of partitions in all twice partitions of n where both partitions are strict.

The programs for A327553, there is no canonical definition to state claims against.
-/

/-! ## A327553.P18188965325364659949

`A335513(A050342(n))+A000045(n)`
-/

namespace A327553.P18188965325364659949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335513 (A050342 n).toNat + A000045 n

end

end A327553.P18188965325364659949

/-! ## A327553.P5623519259391726187

`A135663(A027098(n))+A003056(n)`
-/

namespace A327553.P5623519259391726187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (A027098 n).toNat + A003056 n

end

end A327553.P5623519259391726187

/-! ## A327553.P13026275721984110167

`A024501(n)-A025435(A149892(n))`
-/

namespace A327553.P13026275721984110167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024501 n - A025435 (A149892 n).toNat

end

end A327553.P13026275721984110167

/-! ## A327553.P2655633884897895770

`A000196(A094374(n))-A332670(n)`
-/

namespace A327553.P2655633884897895770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A094374 n).toNat - A332670 n

end

end A327553.P2655633884897895770

/-!
# A327554: Number of partitions in all twice partitions of n where the second partition is strict.

The programs for A327554, there is no canonical definition to state claims against.
-/

/-! ## A327554.P18192727710360253827

`A000079(n)-A162246(A007661(n))`
-/

namespace A327554.P18192727710360253827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A162246 (A007661 n).toNat

end

end A327554.P18192727710360253827

/-! ## A327554.P8699876509646444711

`A000225(n)-A065712(A210525(n))`
-/

namespace A327554.P8699876509646444711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A065712 (A210525 n).toNat

end

end A327554.P8699876509646444711

/-! ## A327554.P17749618500728097174

`A282956(n)-A001948(A007477(n))`
-/

namespace A327554.P17749618500728097174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282956 n - A001948 (A007477 n).toNat

end

end A327554.P17749618500728097174

/-! ## A327554.P2585492019278608668

`A000079(n)-A359901(A061279(n))`
-/

namespace A327554.P2585492019278608668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A359901 (A061279 n).toNat

end

end A327554.P2585492019278608668

/-!
# A327556: Number of colored integer partitions of 2n using all colors of an n-set such that all parts have different color patterns and a pattern for part i has i colors in (weakly) increasing order.

The programs for A327556, there is no canonical definition to state claims against.
-/

/-! ## A327556.P2816544597973076727

`A327116(∑[4*n])`
-/

namespace A327556.P2816544597973076727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327116 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327556.P2816544597973076727

/-! ## A327556.P17034646497580395073

`A327116(A046092(n))/A007318(∑[n])`
-/

namespace A327556.P17034646497580395073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327116 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A327556.P17034646497580395073

/-! ## A327556.P2410716321627757822

`A007318(C(2, n))*A327116(A046092(n))`
-/

namespace A327556.P2410716321627757822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A327116 (A046092 n).toNat

end

end A327556.P2410716321627757822

/-! ## A327556.P6836116817618799892

`A008683(n+1)²!*A327116(A046092(n))`
-/

namespace A327556.P6836116817618799892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) * A327116 (A046092 n).toNat

end

end A327556.P6836116817618799892

/-!
# A327557: Total number of colors in all colored integer partitions of n using all colors of an initial interval of the color palette such that all parts have different color patterns and a pattern for part i has i colors in (weakly) increasing order.

The programs for A327557, there is no canonical definition to state claims against.
-/

/-! ## A327557.P12851339413193014520

`∑[A053470(Δ[A006183(n+1)])]`
-/

namespace A327557.P12851339413193014520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006183 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053470 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327557.P12851339413193014520

/-! ## A327557.P7468261941444785727

`A049472(floor(A006880(n)/(n+1)))`
-/

namespace A327557.P7468261941444785727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 ⌊(A006880 n : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A327557.P7468261941444785727

/-!
# A327560: The number of integers m in the range 0 < m < 10^n which are divisible by one or more of their own digits (A038770).

The programs for A327560, there is no canonical definition to state claims against.
-/

/-! ## A327560.P8038472830014612189

`10^(n+1)-1-A327561(n+1)`
-/

namespace A327560.P8038472830014612189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - 1 - A327561 (n + 1)

end

end A327560.P8038472830014612189

/-!
# A327561: The number of integers m in the range 0 < m < 10^n which are not divisible by any of their own digits (A038772).

The programs for A327561, there is no canonical definition to state claims against.
-/

/-! ## A327561.P12330793541900987652

`10^(n+1)-1-A327560(n+1)`
-/

namespace A327561.P12330793541900987652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - 1 - A327560 (n + 1)

end

end A327561.P12330793541900987652

/-! ## A327561.P10095214057997778392

`(A279878(2*n+1)/(1/3)²)%A327560(n+1)`
-/

namespace A327561.P10095214057997778392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A279878 (2 * n + 1) : ℚ) / ((1 : ℚ) / 3) ^ 2)) (A327560 (n + 1))

end

end A327561.P10095214057997778392

/-!
# A327563: Row sums of A119687.

The programs for A327563, there is no canonical definition to state claims against.
-/

/-! ## A327563.P17850346089909317823

`A267307(∑[n!])`
-/

namespace A327563.P17850346089909317823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267307 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327563.P17850346089909317823

/-!
# A327564: If n = Product (p_j^k_j) then a(n) = Product ((p_j + 1)^(k_j - 1)).

The programs for A327564, the canonical program `A327564.P3885498086889652874` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327564 has offset 1).

The definition of A327564 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003968, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327564.P12320056032658602574

`A348038(n+1)*A348039(n+1)`
-/

namespace A327564.P12320056032658602574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348038 (n + 1) * A348039 (n + 1)

end

end A327564.P12320056032658602574

namespace A327564

/-- `A348038(n+1)*A348039(n+1)` -/
def P12320056032658602574.Spec : Prop :=
  ∀ n, P12320056032658602574.a n = A327564 (n + 1)

end A327564

/-! ## A327564.P3885498086889652874

`A003968(n+1)/A007947(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A327564

/-- `A003968(n+1)/A007947(n+1)` -/
def P3885498086889652874.Spec : Prop :=
  ∀ n, P3885498086889652874.a n = (A327564 (n + 1) : ℚ)

end A327564

/-! ## A327564.P10205309376252414136

`A003959(n+1)/A048250(n+1)`
-/

namespace A327564.P10205309376252414136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ)

end

end A327564.P10205309376252414136

namespace A327564

/-- `A003959(n+1)/A048250(n+1)` -/
def P10205309376252414136.Spec : Prop :=
  ∀ n, P10205309376252414136.a n = (A327564 (n + 1) : ℚ)

end A327564

/-! ## A327564.P5181985214716404784

`A340368(n+1)/A173557(n+1)`
-/

namespace A327564.P5181985214716404784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340368 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A327564.P5181985214716404784

namespace A327564

/-- `A340368(n+1)/A173557(n+1)` -/
def P5181985214716404784.Spec : Prop :=
  ∀ n, P5181985214716404784.a n = (A327564 (n + 1) : ℚ)

end A327564

/-! ## A327564.P9956001498812385455

`A003959((n+1)/∏{p}[n+1, #])`
-/

namespace A327564.P9956001498812385455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A327564.P9956001498812385455

namespace A327564

/-- `A003959((n+1)/∏{p}[n+1, #])` -/
def P9956001498812385455.Spec : Prop :=
  ∀ n, P9956001498812385455.a n = A327564 (n + 1)

end A327564

/-! ## A327564.P2961884986880469769

`A003959(A003557(n+1))`
-/

namespace A327564.P2961884986880469769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A003557 (n + 1)).toNat

end

end A327564.P2961884986880469769

namespace A327564

/-- `A003959(A003557(n+1))` -/
def P2961884986880469769.Spec : Prop :=
  ∀ n, P2961884986880469769.a n = A327564 (n + 1)

end A327564

/-! ## A327564.P11103678241286116875

`A003959(A336551(n+1)+1)`
-/

namespace A327564.P11103678241286116875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A336551 (n + 1) + 1).toNat

end

end A327564.P11103678241286116875

namespace A327564

/-- `A003959(A336551(n+1)+1)` -/
def P11103678241286116875.Spec : Prop :=
  ∀ n, P11103678241286116875.a n = A327564 (n + 1)

end A327564

/-! ## A327564.P13788866418644095015

`A003959((n+1)/A007947(n+1))`
-/

namespace A327564.P13788866418644095015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A327564.P13788866418644095015

namespace A327564

/-- `A003959((n+1)/A007947(n+1))` -/
def P13788866418644095015.Spec : Prop :=
  ∀ n, P13788866418644095015.a n = A327564 (n + 1)

end A327564

/-! ## A327564.P5222229703365761706

`A167338(n+1)/A181797(n+1)`
-/

namespace A327564.P5222229703365761706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167338 (n + 1) : ℚ) / (A181797 (n + 1) : ℚ)

end

end A327564.P5222229703365761706

namespace A327564

/-- `A167338(n+1)/A181797(n+1)` -/
def P5222229703365761706.Spec : Prop :=
  ∀ n, P5222229703365761706.a n = (A327564 (n + 1) : ℚ)

end A327564

/-! ## A327564.P2385954811164547902

`A349356(n+1)/A034444(n+1)`
-/

namespace A327564.P2385954811164547902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349356 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A327564.P2385954811164547902

namespace A327564

/-- `A349356(n+1)/A034444(n+1)` -/
def P2385954811164547902.Spec : Prop :=
  ∀ n, P2385954811164547902.a n = (A327564 (n + 1) : ℚ)

end A327564

/-! ## A327564.P17164306671970629912

`A167349(n+1)/A351435(n+1)`
-/

namespace A327564.P17164306671970629912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167349 (n + 1) : ℚ) / (A351435 (n + 1) : ℚ)

end

end A327564.P17164306671970629912

namespace A327564

/-- `A167349(n+1)/A351435(n+1)` -/
def P17164306671970629912.Spec : Prop :=
  ∀ n, P17164306671970629912.a n = (A327564 (n + 1) : ℚ)

end A327564

/-! ## A327564.P13522757217414539794

`abs(A003968(n+1)/A062953(n+1))`
-/

namespace A327564.P13522757217414539794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A003968 (n + 1) : ℚ) / (A062953 (n + 1) : ℚ)|

end

end A327564.P13522757217414539794

namespace A327564

/-- `abs(A003968(n+1)/A062953(n+1))` -/
def P13522757217414539794.Spec : Prop :=
  ∀ n, P13522757217414539794.a n = (A327564 (n + 1) : ℚ)

end A327564

/-! ## A327564.P9146621115530141826

`A003959(n+1)²/A351435(n+1)`
-/

namespace A327564.P9146621115530141826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) ^ 2 : ℚ) / (A351435 (n + 1) : ℚ)

end

end A327564.P9146621115530141826

namespace A327564

/-- `A003959(n+1)²/A351435(n+1)` -/
def P9146621115530141826.Spec : Prop :=
  ∀ n, P9146621115530141826.a n = (A327564 (n + 1) : ℚ)

end A327564

/-! ## A327564.P7043292576367768691

`∑{d}[n+1, A003968(#)*A023900((n+1)/#)]`
-/

namespace A327564.P7043292576367768691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003968 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327564.P7043292576367768691

namespace A327564

/-- `∑{d}[n+1, A003968(#)*A023900((n+1)/#)]` -/
def P7043292576367768691.Spec : Prop :=
  ∀ n, P7043292576367768691.a n = A327564 (n + 1)

end A327564

/-! ## A327564.P4185371909134711273

`∑{d}[n+1, A003969(#)*A046692((n+1)/#)]`
-/

namespace A327564.P4185371909134711273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003969 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327564.P4185371909134711273

namespace A327564

/-- `∑{d}[n+1, A003969(#)*A046692((n+1)/#)]` -/
def P4185371909134711273.Spec : Prop :=
  ∀ n, P4185371909134711273.a n = A327564 (n + 1)

end A327564

/-! ## A327564.P8775162892399819758

`∑{d}[n+1, A003959(#)*A055615((n+1)/#)]`
-/

namespace A327564.P8775162892399819758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003959 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327564.P8775162892399819758

namespace A327564

/-- `∑{d}[n+1, A003959(#)*A055615((n+1)/#)]` -/
def P8775162892399819758.Spec : Prop :=
  ∀ n, P8775162892399819758.a n = A327564 (n + 1)

end A327564

/-! ## A327564.P6414321860102995464

`∑{d}[n+1, A101035(#)*A349171((n+1)/#)]`
-/

namespace A327564.P6414321860102995464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A349171 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327564.P6414321860102995464

namespace A327564

/-- `∑{d}[n+1, A101035(#)*A349171((n+1)/#)]` -/
def P6414321860102995464.Spec : Prop :=
  ∀ n, P6414321860102995464.a n = A327564 (n + 1)

end A327564

/-! ## A327564.P4219671628818216305

`∑{d}[n+1, A328722(#)*A349170((n+1)/#)]`
-/

namespace A327564.P4219671628818216305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328722 d * A349170 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327564.P4219671628818216305

namespace A327564

/-- `∑{d}[n+1, A328722(#)*A349170((n+1)/#)]` -/
def P4219671628818216305.Spec : Prop :=
  ∀ n, P4219671628818216305.a n = A327564 (n + 1)

end A327564

/-! ## A327564.P8424815262981856342

`∑{d}[n+1, A349340(#)*A349356((n+1)/#)]`
-/

namespace A327564.P8424815262981856342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349340 d * A349356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327564.P8424815262981856342

namespace A327564

/-- `∑{d}[n+1, A349340(#)*A349356((n+1)/#)]` -/
def P8424815262981856342.Spec : Prop :=
  ∀ n, P8424815262981856342.a n = A327564 (n + 1)

end A327564

/-! ## A327564.P8802808006810647865

`A003557(A348036(n+1))*A348038(n+1)`
-/

namespace A327564.P8802808006810647865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A348036 (n + 1)).toNat * A348038 (n + 1)

end

end A327564.P8802808006810647865

namespace A327564

/-- `A003557(A348036(n+1))*A348038(n+1)` -/
def P8802808006810647865.Spec : Prop :=
  ∀ n, P8802808006810647865.a n = A327564 (n + 1)

end A327564

/-!
# A327565: Number of transfers of marbles between two sets until the first repetition.

The programs for A327565, the canonical program `A327565.P5195849866362779426` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327565 has offset 1).

The definition of A327565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327565.P5195849866362779426

`a((3*floor(n/2))%n)+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327565

/-- `a((3*floor(n/2))%n)+1` -/
def P5195849866362779426.Spec : Prop :=
  ∀ n, (P5195849866362779426.a n : ℤ) = A327565 (n + 1)

theorem P5195849866362779426.correct : P5195849866362779426.Spec := by
  intro n
  simp only [A327565, Nat.add_sub_cancel]

end A327565

/-! ## A327565.P11476965442172193052

`a(floor(C(xor(1, n), 2)/n))+1` with `a(0)=2`
-/

namespace A327565.P11476965442172193052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ⌊(Nat.choose (Nat.xor 1 n) 2 : ℚ) / (n : ℚ)⌋.toNat + 1

end

end A327565.P11476965442172193052

namespace A327565

/-- `a(floor(C(xor(1, n), 2)/n))+1` -/
def P11476965442172193052.Spec : Prop :=
  ∀ n, (P11476965442172193052.a n : ℤ) = A327565 (n + 1)

end A327565

/-! ## A327565.P813091535258301549

`a(ceil(xor(1, n)/2)-1)+1` with `a(0)=2, a(1)=3`
-/

namespace A327565.P813091535258301549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (⌈(Nat.xor 1 n : ℚ) / 2⌉ - 1).toNat + 1

end

end A327565.P813091535258301549

namespace A327565

/-- `a(ceil(xor(1, n)/2)-1)+1` -/
def P813091535258301549.Spec : Prop :=
  ∀ n, (P813091535258301549.a n : ℤ) = A327565 (n + 1)

end A327565

/-! ## A327565.P6722877766959734424

`a(round(xor(1, n)/2)-1)+1` with `a(0)=2, a(1)=3`
-/

namespace A327565.P6722877766959734424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2) - 1).toNat + 1

end

end A327565.P6722877766959734424

namespace A327565

/-- `a(round(xor(1, n)/2)-1)+1` -/
def P6722877766959734424.Spec : Prop :=
  ∀ n, (P6722877766959734424.a n : ℤ) = A327565 (n + 1)

end A327565

/-! ## A327565.P4749644945842156996

`a(floor(n/2)-n%2)+1` with `a(0)=2, a(1)=3`
-/

namespace A327565.P4749644945842156996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (⌊(n : ℚ) / 2⌋ - ((n % 2 : ℕ) : ℤ)).toNat + 1

end

end A327565.P4749644945842156996

namespace A327565

/-- `a(floor(n/2)-n%2)+1` -/
def P4749644945842156996.Spec : Prop :=
  ∀ n, (P4749644945842156996.a n : ℤ) = A327565 (n + 1)

end A327565

/-! ## A327565.P8425379585170686186

`a(floor((n-Δ[or(1, n)])/2))+1` with `a(0)=2, a(1)=3`
-/

namespace A327565.P8425379585170686186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a ⌊((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2⌋.toNat + 1

end

end A327565.P8425379585170686186

namespace A327565

/-- `a(floor((n-Δ[or(1, n)])/2))+1` -/
def P8425379585170686186.Spec : Prop :=
  ∀ n, (P8425379585170686186.a n : ℤ) = A327565 (n + 1)

end A327565

/-! ## A327565.P13641215882761735087

`a(A028242(n)-1)+1` with `a(0)=2, a(1)=3`
-/

namespace A327565.P13641215882761735087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (A028242 n - 1).toNat + 1

end

end A327565.P13641215882761735087

namespace A327565

/-- `a(A028242(n)-1)+1` -/
def P13641215882761735087.Spec : Prop :=
  ∀ n, (P13641215882761735087.a n : ℤ) = A327565 (n + 1)

end A327565

/-! ## A327565.P12746116260131657212

`a(val(A029744(n), 2))+1` with `a(0)=2`
-/

namespace A327565.P12746116260131657212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (SequenceMachineLib.valuation (A029744 n).toNat 2) + 1

end

end A327565.P12746116260131657212

namespace A327565

/-- `a(val(A029744(n), 2))+1` -/
def P12746116260131657212.Spec : Prop :=
  ∀ n, (P12746116260131657212.a n : ℤ) = A327565 (n + 1)

end A327565

/-! ## A327565.P8453154474518966669

`floor(log2(A182182(8*n+15)))`
-/

namespace A327565.P8453154474518966669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A182182 (8 * n + 15)).toNat

end

end A327565.P8453154474518966669

namespace A327565

/-- `floor(log2(A182182(8*n+15)))` -/
def P8453154474518966669.Spec : Prop :=
  ∀ n, (P8453154474518966669.a n : ℤ) = A327565 (n + 1)

end A327565

/-!
# A327566: Partial sums of the infinitary divisors sum function: a(n) = Sum_{k=1..n} isigma(k), where isigma is A049417.

The programs for A327566, there is no canonical definition to state claims against.
-/

/-! ## A327566.P13206732757642841007

`∑[A049417(n+1)]`
-/

namespace A327566.P13206732757642841007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327566.P13206732757642841007

/-! ## A327566.P11183854922503777950

`∑[A126168(n+1)+1+n]`
-/

namespace A327566.P11183854922503777950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327566.P11183854922503777950

/-! ## A327566.P4257052486305175946

`A049417(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A327566.P4257052486305175946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049417 (n + 1) + a (A023443 n).toNat

end

end A327566.P4257052486305175946

/-! ## A327566.P9114262864225850967

`∑[Δ[A160664(n)]-A348271(n+1)]`
-/

namespace A327566.P9114262864225850967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A348271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327566.P9114262864225850967

/-! ## A327566.P7342889210461785541

`∑[A000203(n+1)-A348271(n+1)]`
-/

namespace A327566.P7342889210461785541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A348271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327566.P7342889210461785541

/-! ## A327566.P775783925216801893

`A049417(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A327566.P775783925216801893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049417 (n + 1) + a (A028310 n - 1).toNat

end

end A327566.P775783925216801893

/-! ## A327566.P680381612430262665

`∑[sqrt(A072861(n+1))-A348271(n+1)]`
-/

namespace A327566.P680381612430262665
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A348271 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327566.P680381612430262665

/-! ## A327566.P2125535382797296783

`∑[A074400(n+1)/2-A348271(n+1)]`
-/

namespace A327566.P2125535382797296783
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A348271 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327566.P2125535382797296783

/-! ## A327566.P8201734665974441245

`∑[A272027(n+1)/3-A348271(n+1)]`
-/

namespace A327566.P8201734665974441245
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (n + 1) : ℚ) / 3 - (A348271 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327566.P8201734665974441245

/-! ## A327566.P967080669898259105

`∑[A001065(n+1)+1+n-A348271(n+1)]`
-/

namespace A327566.P967080669898259105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A348271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327566.P967080669898259105

/-! ## A327566.P2270263263274907657

`∑[A034448(n+1)+A048146(n+1)-A348271(n+1)]`
-/

namespace A327566.P2270263263274907657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A348271 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327566.P2270263263274907657

/-! ## A327566.P3177066435611998361

`a(n-1)+A049417(n+1)%A153797(n+1)` with `a(0)=1`
-/

namespace A327566.P3177066435611998361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A049417 (n + 1)) (A153797 (n + 1))

end

end A327566.P3177066435611998361

/-! ## A327566.P1609171511767860133

`∑[A091732((n+1)²)/A091732(n+1)]`
-/

namespace A327566.P1609171511767860133
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091732 ((n + 1) ^ 2) : ℚ) / (A091732 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327566.P1609171511767860133

/-!
# A327567: Number of r X s rectangles with squarefree side lengths such that r <= s, r + s = 2n and r | s.

The programs for A327567, the canonical program `A327567.P2058715740768295756` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327567 has offset 1).

The definition of A327567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327567.P2058715740768295756

`∑{d}[n+1, A008966(2*(n+1)-#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A327567

/-- `∑{d}[n+1, A008966(2*(n+1)-#)]` -/
def P2058715740768295756.Spec : Prop :=
  ∀ n, P2058715740768295756.a n = A327567 (n + 1)

theorem P2058715740768295756.correct : P2058715740768295756.Spec := by
  intro n
  simp only [A327567, Nat.add_sub_cancel]

end A327567

/-! ## A327567.P716271142535061464

`∑{d}[n+1, abs(A008683(2*(n+1)-#))]`
-/

namespace A327567.P716271142535061464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A008683 (2 * (n + 1) - d)|

end

end A327567.P716271142535061464

namespace A327567

/-- `∑{d}[n+1, abs(A008683(2*(n+1)-#))]` -/
def P716271142535061464.Spec : Prop :=
  ∀ n, P716271142535061464.a n = A327567 (n + 1)

end A327567

/-! ## A327567.P12905038729696312706

`∑{d}[n+1, A008683(A005843(n+1)-#)²]`
-/

namespace A327567.P12905038729696312706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (A005843 (n + 1) - (d : ℤ)).toNat ^ 2

end

end A327567.P12905038729696312706

namespace A327567

/-- `∑{d}[n+1, A008683(A005843(n+1)-#)²]` -/
def P12905038729696312706.Spec : Prop :=
  ∀ n, P12905038729696312706.a n = A327567 (n + 1)

end A327567

/-! ## A327567.P1231663901175299078

`A330868(2*(n+1))`
-/

namespace A327567.P1231663901175299078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330868 (2 * (n + 1))

end

end A327567.P1231663901175299078

namespace A327567

/-- `A330868(2*(n+1))` -/
def P1231663901175299078.Spec : Prop :=
  ∀ n, P1231663901175299078.a n = A327567 (n + 1)

end A327567

/-! ## A327567.P418253339707234710

`A013928(2*(n+1))-A368677(2*(n+1))`
-/

namespace A327567.P418253339707234710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (2 * (n + 1)) - A368677 (2 * (n + 1))

end

end A327567.P418253339707234710

namespace A327567

/-- `A013928(2*(n+1))-A368677(2*(n+1))` -/
def P418253339707234710.Spec : Prop :=
  ∀ n, P418253339707234710.a n = A327567 (n + 1)

end A327567

/-! ## A327567.P13099466985999358696

`A334361(n+1)+char[∏{p}[n, #]-1]`
-/

namespace A327567.P13099466985999358696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334361 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327567.P13099466985999358696

namespace A327567

/-- `A334361(n+1)+char[∏{p}[n, #]-1]` -/
def P13099466985999358696.Spec : Prop :=
  ∀ n, P13099466985999358696.a n = A327567 (n + 1)

end A327567

/-! ## A327567.P10546858587048488270

`A334361(n+1)+A008966(n+1)`
-/

namespace A327567.P10546858587048488270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334361 (n + 1) + A008966 (n + 1)

end

end A327567.P10546858587048488270

namespace A327567

/-- `A334361(n+1)+A008966(n+1)` -/
def P10546858587048488270.Spec : Prop :=
  ∀ n, P10546858587048488270.a n = A327567 (n + 1)

end A327567

/-! ## A327567.P1869223057944356870

`A334361(n+1)+A002033(n)%2`
-/

namespace A327567.P1869223057944356870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334361 (n + 1) + Int.tmod (A002033 n) 2

end

end A327567.P1869223057944356870

namespace A327567

/-- `A334361(n+1)+A002033(n)%2` -/
def P1869223057944356870.Spec : Prop :=
  ∀ n, P1869223057944356870.a n = A327567 (n + 1)

end A327567

/-! ## A327567.P2578551565975299585

`A334361(n+1)+abs(A008683(n+1))`
-/

namespace A327567.P2578551565975299585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334361 (n + 1) + |A008683 (n + 1)|

end

end A327567.P2578551565975299585

namespace A327567

/-- `A334361(n+1)+abs(A008683(n+1))` -/
def P2578551565975299585.Spec : Prop :=
  ∀ n, P2578551565975299585.a n = A327567 (n + 1)

end A327567

/-!
# A327568: Exponent of the group GL(2, Z_n).

The programs for A327568, there is no canonical definition to state claims against.
-/

/-! ## A327568.P2319307104758433291

`lcm(n+1, A306933(n+1))`
-/

namespace A327568.P2319307104758433291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A306933 (n + 1))

end

end A327568.P2319307104758433291

/-! ## A327568.P6999812122663604527

`lcm(xor(n, -1), A229292(∏{p}[n+1, #]))`
-/

namespace A327568.P6999812122663604527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.xor (n : ℤ) (-1)) (A229292 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A327568.P6999812122663604527

/-! ## A327568.P6087354874222075642

`lcm(A000027(n+1), A229292(A007947(n+1)))`
-/

namespace A327568.P6087354874222075642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A229292 (A007947 (n + 1)).toNat)

end

end A327568.P6087354874222075642

/-! ## A327568.P14695627933400209255

`lcm(A057521(n+1), A229292(A109395(n+1)))`
-/

namespace A327568.P14695627933400209255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057521 (n + 1)) (A229292 (A109395 (n + 1)).toNat)

end

end A327568.P14695627933400209255

/-! ## A327568.P7564316370332780935

`A306933((n+1)*∏{p}[n+1, #])`
-/

namespace A327568.P7564316370332780935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306933 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A327568.P7564316370332780935

/-! ## A327568.P13961189178045134854

`A306933(A064549(n+1))`
-/

namespace A327568.P13961189178045134854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306933 (A064549 (n + 1)).toNat

end

end A327568.P13961189178045134854

/-! ## A327568.P6794702348838859230

`A306933(A078310(n+1)-1)`
-/

namespace A327568.P6794702348838859230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306933 (A078310 (n + 1) - 1).toNat

end

end A327568.P6794702348838859230

/-! ## A327568.P14127410549552323769

`A306933((n+1)*A007947(n+1))`
-/

namespace A327568.P14127410549552323769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306933 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A327568.P14127410549552323769

/-!
# A327569: Exponent of the group SL(2, Z_n).

The programs for A327569, there is no canonical definition to state claims against.
-/

/-! ## A327569.P11892972062133598028

`ceil(A327568(A103517(n))/2)`
-/

namespace A327569.P11892972062133598028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327568 (A103517 n).toNat : ℚ) / 2⌉

end

end A327569.P11892972062133598028

/-! ## A327569.P17836108623880321861

`lcm(A174824(n+1), A397828(n+1))`
-/

namespace A327569.P17836108623880321861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A174824 (n + 1)) (A397828 (n + 1))

end

end A327569.P17836108623880321861

/-! ## A327569.P248251792733833566

`lcm(A005843(n+1), A327568(n+1))/2`
-/

namespace A327569.P248251792733833566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A005843 (n + 1)) (A327568 (n + 1)) : ℚ) / 2

end

end A327569.P248251792733833566

/-! ## A327569.P2737361785104767706

`A327568(2*(n+1))%A100185(n+2)/2`
-/

namespace A327569.P2737361785104767706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A327568 (2 * (n + 1))) (A100185 (n + 2)) : ℚ) / 2

end

end A327569.P2737361785104767706

/-! ## A327569.P1295143454595395148

`A327568(A103517(n))/2*A000032(n²%(n+1))`
-/

namespace A327569.P1295143454595395148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327568 (A103517 n).toNat : ℚ) / 2 * (A000032 (n ^ 2 % (n + 1)) : ℚ)

end

end A327569.P1295143454595395148

/-! ## A327569.P8106692779903752054

`A327568(A103517(n))/A014963(A053644(n+1))`
-/

namespace A327569.P8106692779903752054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327568 (A103517 n).toNat : ℚ) / (A014963 (A053644 (n + 1)).toNat : ℚ)

end

end A327569.P8106692779903752054

/-!
# A327570: a(n) = n*phi(n)^2, phi = A000010.

The programs for A327570, the canonical program `A327570.P12080735759108807353` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327570 has offset 1).

The definition of A327570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000010(n+1)²` (program `A327570.P12080735759108807353`, by `A327570.P12080735759108807353.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A327570.P12080735759108807353

`(n+1)*A000010(n+1)²`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A327570

/-- `(n+1)*A000010(n+1)²` -/
def P12080735759108807353.Spec : Prop :=
  ∀ n, P12080735759108807353.a n = A327570 (n + 1)

theorem P12080735759108807353.correct : P12080735759108807353.Spec := by
  intro n
  simp only [A327570, Nat.add_sub_cancel]

end A327570

/-! ## A327570.P12500919374031446701

`A000010(n+1)*A002618(n+1)`
-/

namespace A327570.P12500919374031446701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A002618 (n + 1)

end

end A327570.P12500919374031446701

namespace A327570

/-- `A000010(n+1)*A002618(n+1)` -/
def P12500919374031446701.Spec : Prop :=
  ∀ n, P12500919374031446701.a n = A327570 (n + 1)

theorem P12500919374031446701.correct : P12500919374031446701.Spec := by
  intro n
  simp only [A327570, Nat.add_sub_cancel, A327570.P12500919374031446701.a, A327570.P12080735759108807353.a, A000010, A000010.P4673923239450215316.a, A002618, A002618.P8397693677428532773.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327570

/-! ## A327570.P2662763625100505161

`(n+1)*A127473(n+1)`
-/

namespace A327570.P2662763625100505161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A127473 (n + 1)

end

end A327570.P2662763625100505161

namespace A327570

/-- `(n+1)*A127473(n+1)` -/
def P2662763625100505161.Spec : Prop :=
  ∀ n, P2662763625100505161.a n = A327570 (n + 1)

end A327570

/-! ## A327570.P15420210754586943215

`(n+1)*Δ[A002088(n)]²`
-/

namespace A327570.P15420210754586943215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) ^ 2

end

end A327570.P15420210754586943215

namespace A327570

/-- `(n+1)*Δ[A002088(n)]²` -/
def P15420210754586943215.Spec : Prop :=
  ∀ n, P15420210754586943215.a n = A327570 (n + 1)

end A327570

/-! ## A327570.P13961307825969535053

`(n+1)*Δ[A005728(n)]²`
-/

namespace A327570.P13961307825969535053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) ^ 2

end

end A327570.P13961307825969535053

namespace A327570

/-- `(n+1)*Δ[A005728(n)]²` -/
def P13961307825969535053.Spec : Prop :=
  ∀ n, P13961307825969535053.a n = A327570 (n + 1)

end A327570

/-! ## A327570.P1135073598060670367

`Δ[A240877(n)]²/(n+1)`
-/

namespace A327570.P1135073598060670367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A327570.P1135073598060670367

namespace A327570

/-- `Δ[A240877(n)]²/(n+1)` -/
def P1135073598060670367.Spec : Prop :=
  ∀ n, P1135073598060670367.a n = (A327570 (n + 1) : ℚ)

end A327570

/-! ## A327570.P2585350020201091938

`A002618(n+1)²/(n+1)`
-/

namespace A327570.P2585350020201091938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A327570.P2585350020201091938

namespace A327570

/-- `A002618(n+1)²/(n+1)` -/
def P2585350020201091938.Spec : Prop :=
  ∀ n, P2585350020201091938.a n = (A327570 (n + 1) : ℚ)

end A327570

/-! ## A327570.P9875066019268503756

`(n+1)*sqrt(A361148(n+1))`
-/

namespace A327570.P9875066019268503756
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A361148 (n + 1) : ℝ)

end

end A327570.P9875066019268503756

namespace A327570

/-- `(n+1)*sqrt(A361148(n+1))` -/
def P9875066019268503756.Spec : Prop :=
  ∀ n, P9875066019268503756.a n = (A327570 (n + 1) : ℝ)

end A327570

/-! ## A327570.P8315517030009232903

`(A109606(n+1)+1)²*(n+1)`
-/

namespace A327570.P8315517030009232903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) ^ 2 * (n + 1 : ℤ)

end

end A327570.P8315517030009232903

namespace A327570

/-- `(A109606(n+1)+1)²*(n+1)` -/
def P8315517030009232903.Spec : Prop :=
  ∀ n, P8315517030009232903.a n = A327570 (n + 1)

theorem P8315517030009232903.correct : P8315517030009232903.Spec := by
  intro n
  simp only [A327570, Nat.add_sub_cancel, A327570.P8315517030009232903.a, A327570.P12080735759108807353.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327570

/-! ## A327570.P1262022985368216989

`(A039649(n+1)-1)²*(n+1)`
-/

namespace A327570.P1262022985368216989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) ^ 2 * (n + 1 : ℤ)

end

end A327570.P1262022985368216989

namespace A327570

/-- `(A039649(n+1)-1)²*(n+1)` -/
def P1262022985368216989.Spec : Prop :=
  ∀ n, P1262022985368216989.a n = A327570 (n + 1)

theorem P1262022985368216989.correct : P1262022985368216989.Spec := by
  intro n
  simp only [A327570, Nat.add_sub_cancel, A327570.P1262022985368216989.a, A327570.P12080735759108807353.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327570

/-! ## A327570.P3524094096781484198

`(n+1)*A349137(2*n+1)²`
-/

namespace A327570.P3524094096781484198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A349137 (2 * n + 1) ^ 2

end

end A327570.P3524094096781484198

namespace A327570

/-- `(n+1)*A349137(2*n+1)²` -/
def P3524094096781484198.Spec : Prop :=
  ∀ n, P3524094096781484198.a n = A327570 (n + 1)

end A327570

/-! ## A327570.P14461812503983279525

`Δ[A002088(n)]*A002618(n+1)`
-/

namespace A327570.P14461812503983279525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002618 (n + 1)

end

end A327570.P14461812503983279525

namespace A327570

/-- `Δ[A002088(n)]*A002618(n+1)` -/
def P14461812503983279525.Spec : Prop :=
  ∀ n, P14461812503983279525.a n = A327570 (n + 1)

end A327570

/-! ## A327570.P12617097902387247300

`Δ[A005728(n)]*A002618(n+1)`
-/

namespace A327570.P12617097902387247300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002618 (n + 1)

end

end A327570.P12617097902387247300

namespace A327570

/-- `Δ[A005728(n)]*A002618(n+1)` -/
def P12617097902387247300.Spec : Prop :=
  ∀ n, P12617097902387247300.a n = A327570 (n + 1)

end A327570

/-! ## A327570.P13493616024317175794

`(n+1)*A082953(A015126(n+1))`
-/

namespace A327570.P13493616024317175794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A082953 (A015126 (n + 1)).toNat

end

end A327570.P13493616024317175794

namespace A327570

/-- `(n+1)*A082953(A015126(n+1))` -/
def P13493616024317175794.Spec : Prop :=
  ∀ n, P13493616024317175794.a n = A327570 (n + 1)

end A327570

/-! ## A327570.P1413808159787782860

`A026741(n+1)*A082953(n+1)`
-/

namespace A327570.P1413808159787782860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) * A082953 (n + 1)

end

end A327570.P1413808159787782860

namespace A327570

/-- `A026741(n+1)*A082953(n+1)` -/
def P1413808159787782860.Spec : Prop :=
  ∀ n, P1413808159787782860.a n = A327570 (n + 1)

end A327570

/-! ## A327570.P9581211073360612878

`A023896(n+1)*A140434(n+1)`
-/

namespace A327570.P9581211073360612878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) * A140434 (n + 1)

end

end A327570.P9581211073360612878

namespace A327570

/-- `A023896(n+1)*A140434(n+1)` -/
def P9581211073360612878.Spec : Prop :=
  ∀ n, P9581211073360612878.a n = A327570 (n + 1)

end A327570

/-! ## A327570.P6761962685929534276

`A000252(n+1)/A001615(n+1)`
-/

namespace A327570.P6761962685929534276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ)

end

end A327570.P6761962685929534276

namespace A327570

/-- `A000252(n+1)/A001615(n+1)` -/
def P6761962685929534276.Spec : Prop :=
  ∀ n, P6761962685929534276.a n = (A327570 (n + 1) : ℚ)

end A327570

/-! ## A327570.P490496265292669623

`(A046151(n+1)+1)*A000010(n+1)`
-/

namespace A327570.P490496265292669623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046151 (n + 1) + 1) * A000010 (n + 1)

end

end A327570.P490496265292669623

namespace A327570

/-- `(A046151(n+1)+1)*A000010(n+1)` -/
def P490496265292669623.Spec : Prop :=
  ∀ n, P490496265292669623.a n = A327570 (n + 1)

theorem P490496265292669623.correct : P490496265292669623.Spec := by
  intro n
  simp only [A327570, Nat.add_sub_cancel, A327570.P490496265292669623.a, A327570.P12080735759108807353.a, A000010, A000010.P4673923239450215316.a, A046151, A046151.P159560385155613916.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327570

/-! ## A327570.P7426693320356965390

`(A109606(n+1)+1)*A002618(n+1)`
-/

namespace A327570.P7426693320356965390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * A002618 (n + 1)

end

end A327570.P7426693320356965390

namespace A327570

/-- `(A109606(n+1)+1)*A002618(n+1)` -/
def P7426693320356965390.Spec : Prop :=
  ∀ n, P7426693320356965390.a n = A327570 (n + 1)

theorem P7426693320356965390.correct : P7426693320356965390.Spec := by
  intro n
  simp only [A327570, Nat.add_sub_cancel, A327570.P7426693320356965390.a, A327570.P12080735759108807353.a, A000010, A000010.P4673923239450215316.a, A002618, A002618.P8397693677428532773.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327570

/-! ## A327570.P5454850585369742586

`(A039649(n+1)-1)*A002618(n+1)`
-/

namespace A327570.P5454850585369742586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * A002618 (n + 1)

end

end A327570.P5454850585369742586

namespace A327570

/-- `(A039649(n+1)-1)*A002618(n+1)` -/
def P5454850585369742586.Spec : Prop :=
  ∀ n, P5454850585369742586.a n = A327570 (n + 1)

theorem P5454850585369742586.correct : P5454850585369742586.Spec := by
  intro n
  simp only [A327570, Nat.add_sub_cancel, A327570.P5454850585369742586.a, A327570.P12080735759108807353.a, A000010, A000010.P4673923239450215316.a, A002618, A002618.P8397693677428532773.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327570

/-!
# A327571: Triangle T(n,k) read by rows giving the number of zeroless polydivisible numbers in base n that contains only "k" in the digits with 1 <= k <= n-1.

The programs for A327571, there is no canonical definition to state claims against.
-/

/-! ## A327571.P15260063112601709339

`A055874(A002260(n+1)*A093995(n+1))`
-/

namespace A327571.P15260063112601709339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A002260 (n + 1) * A093995 (n + 1)).toNat

end

end A327571.P15260063112601709339

/-! ## A327571.P3710426314924972970

`A055874(lcm(A002260(n+1), A093995(n+1)))`
-/

namespace A327571.P3710426314924972970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (Int.lcm (A002260 (n + 1)) (A093995 (n + 1)))

end

end A327571.P3710426314924972970

/-! ## A327571.P4265185029993270867

`A055874(A075362(n+1)²/A002260(n+1))`
-/

namespace A327571.P4265185029993270867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (SequenceMachineLib.roundAway ((A075362 (n + 1) ^ 2 : ℚ) / (A002260 (n + 1) : ℚ))).toNat

end

end A327571.P4265185029993270867

/-! ## A327571.P3824844090984391483

`A055874(A075362(n+1)/A002260(n+1)*A075362(n+1))`
-/

namespace A327571.P3824844090984391483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (SequenceMachineLib.roundAway ((A075362 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A075362 (n + 1) : ℚ))).toNat

end

end A327571.P3824844090984391483

/-! ## A327571.P14046513967238808096

`A055874(A051173(n+1)*A093995(n+1))`
-/

namespace A327571.P14046513967238808096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A051173 (n + 1) * A093995 (n + 1)).toNat

end

end A327571.P14046513967238808096

/-! ## A327571.P16306983893273861521

`A055874(A075362(n+1)*A093995(n+1))`
-/

namespace A327571.P16306983893273861521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A075362 (n + 1) * A093995 (n + 1)).toNat

end

end A327571.P16306983893273861521

/-!
# A327572: Partial sums of an infinitary analog of Euler's phi function: a(n) = Sum_{k=1..n} iphi(k), where iphi is A091732.

The programs for A327572, there is no canonical definition to state claims against.
-/

/-! ## A327572.P8335310940256590247

`∑[A091732(n+1)]`
-/

namespace A327572.P8335310940256590247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327572.P8335310940256590247

/-! ## A327572.P231467337937859146

`∑[1-A323413(n+1)+n]`
-/

namespace A327572.P231467337937859146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A323413 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327572.P231467337937859146

/-! ## A327572.P12993565556839698315

`∑[A340087(n+1)*A340088(n+1)]`
-/

namespace A327572.P12993565556839698315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340087 (n + 1) * A340088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327572.P12993565556839698315

/-! ## A327572.P9144868098319134607

`a(n-1)+A091732(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A327572.P9144868098319134607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A091732 (n + 1) + A000038 n)

end

end A327572.P9144868098319134607

/-! ## A327572.P7964104244700497293

`a(n-1)+A091732(n+1)%A000041(n+1)` with `a(0)=1`
-/

namespace A327572.P7964104244700497293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A091732 (n + 1)) (A000041 (n + 1))

end

end A327572.P7964104244700497293

/-! ## A327572.P14304369479174624945

`a(n-1)+A040850(2*n+1)*A091732(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A327572.P14304369479174624945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A040850 (2 * n + 1) * A091732 (n + 1)

end

end A327572.P14304369479174624945

/-!
# A327573: Partial sums of the number of infinitary divisors function: a(n) = Sum_{k=1..n} id(k), where id is A037445.

The programs for A327573, the canonical program `A327573.P16422618072216358095` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327573 has offset 1).

The definition of A327573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327573.P18307027543493037846

`∑[A037445(n+1)]`
-/

namespace A327573.P18307027543493037846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327573.P18307027543493037846

namespace A327573

/-- `∑[A037445(n+1)]` -/
def P18307027543493037846.Spec : Prop :=
  ∀ n, P18307027543493037846.a n = A327573 (n + 1)

end A327573

/-! ## A327573.P4991577749576812706

`∑[2^A064547(n+1)]`
-/

namespace A327573.P4991577749576812706
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A064547 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327573.P4991577749576812706

namespace A327573

/-- `∑[2^A064547(n+1)]` -/
def P4991577749576812706.Spec : Prop :=
  ∀ n, P4991577749576812706.a n = (A327573 (n + 1) : ℚ)

end A327573

/-! ## A327573.P16422618072216358095

`∑[A000079(∑{e}[n+1, #-val(#!, 2)])]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A327573

/-- `∑[A000079(∑{e}[n+1, #-val(#!, 2)])]` -/
def P16422618072216358095.Spec : Prop :=
  ∀ n, P16422618072216358095.a n = A327573 (n + 1)

theorem P16422618072216358095.correct : P16422618072216358095.Spec := by
  intro n
  simp only [A327573, Nat.add_sub_cancel]

end A327573

/-! ## A327573.P14988285978516349133

`∑[A000005(A160102(n+1))]`
-/

namespace A327573.P14988285978516349133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A160102 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327573.P14988285978516349133

namespace A327573

/-- `∑[A000005(A160102(n+1))]` -/
def P14988285978516349133.Spec : Prop :=
  ∀ n, P14988285978516349133.a n = A327573 (n + 1)

end A327573

/-! ## A327573.P17022967015883956606

`∑[2^A001222(A074848(n+1))]`
-/

namespace A327573.P17022967015883956606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (A074848 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327573.P17022967015883956606

namespace A327573

/-- `∑[2^A001222(A074848(n+1))]` -/
def P17022967015883956606.Spec : Prop :=
  ∀ n, P17022967015883956606.a n = (A327573 (n + 1) : ℚ)

end A327573

/-! ## A327573.P2439946344508171814

`∑[A165825(n+1)/A046644(n+1)]`
-/

namespace A327573.P2439946344508171814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165825 (n + 1) : ℚ) / (A046644 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327573.P2439946344508171814

namespace A327573

/-- `∑[A165825(n+1)/A046644(n+1)]` -/
def P2439946344508171814.Spec : Prop :=
  ∀ n, P2439946344508171814.a n = (A327573 (n + 1) : ℚ)

end A327573

/-! ## A327573.P12165417722715315245

`eq[1, A077609(n+2)]+1`
-/

namespace A327573.P12165417722715315245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327573.P12165417722715315245

namespace A327573

/-- `eq[1, A077609(n+2)]+1` -/
def P12165417722715315245.Spec : Prop :=
  ∀ n, (P12165417722715315245.a n : ℤ) = A327573 (n + 1)

end A327573

/-! ## A327573.P7235484767607887488

`eq[A000035(n), A077609(n+1)]`
-/

namespace A327573.P7235484767607887488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327573.P7235484767607887488

namespace A327573

/-- `eq[A000035(n), A077609(n+1)]` -/
def P7235484767607887488.Spec : Prop :=
  ∀ n, (P7235484767607887488.a n : ℤ) = A327573 (n + 1)

end A327573

/-! ## A327573.P12877784102644913798

`eq[A040790(n), A077609(n+1)]`
-/

namespace A327573.P12877784102644913798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327573.P12877784102644913798

namespace A327573

/-- `eq[A040790(n), A077609(n+1)]` -/
def P12877784102644913798.Spec : Prop :=
  ∀ n, (P12877784102644913798.a n : ℤ) = A327573 (n + 1)

end A327573

/-! ## A327573.P4126301045970250501

`eq[A077609(n+1), A088440(n)]`
-/

namespace A327573.P4126301045970250501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327573.P4126301045970250501

namespace A327573

/-- `eq[A077609(n+1), A088440(n)]` -/
def P4126301045970250501.Spec : Prop :=
  ∀ n, (P4126301045970250501.a n : ℤ) = A327573 (n + 1)

end A327573

/-! ## A327573.P12221820434669640936

`eq[A077609(n+1), A088705(n)]`
-/

namespace A327573.P12221820434669640936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327573.P12221820434669640936

namespace A327573

/-- `eq[A077609(n+1), A088705(n)]` -/
def P12221820434669640936.Spec : Prop :=
  ∀ n, (P12221820434669640936.a n : ℤ) = A327573 (n + 1)

end A327573

/-! ## A327573.P9217905032268193135

`eq[A077609(n+1), A097325(n)]`
-/

namespace A327573.P9217905032268193135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327573.P9217905032268193135

namespace A327573

/-- `eq[A077609(n+1), A097325(n)]` -/
def P9217905032268193135.Spec : Prop :=
  ∀ n, (P9217905032268193135.a n : ℤ) = A327573 (n + 1)

end A327573

/-! ## A327573.P12769684345377960544

`eq[A077609(n+1), A098725(n)]`
-/

namespace A327573.P12769684345377960544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327573.P12769684345377960544

namespace A327573

/-- `eq[A077609(n+1), A098725(n)]` -/
def P12769684345377960544.Spec : Prop :=
  ∀ n, (P12769684345377960544.a n : ℤ) = A327573 (n + 1)

end A327573

/-! ## A327573.P8667548040538558502

`eq[A077609(n+1), A115971(n)]`
-/

namespace A327573.P8667548040538558502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327573.P8667548040538558502

namespace A327573

/-- `eq[A077609(n+1), A115971(n)]` -/
def P8667548040538558502.Spec : Prop :=
  ∀ n, (P8667548040538558502.a n : ℤ) = A327573 (n + 1)

end A327573

/-! ## A327573.P518575378537324097

`eq[A077609(n+1), A166486(n)]`
-/

namespace A327573.P518575378537324097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327573.P518575378537324097

namespace A327573

/-- `eq[A077609(n+1), A166486(n)]` -/
def P518575378537324097.Spec : Prop :=
  ∀ n, (P518575378537324097.a n : ℤ) = A327573 (n + 1)

end A327573

/-! ## A327573.P9318896353014548236

`eq[A077609(n+1), A168181(n)]`
-/

namespace A327573.P9318896353014548236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327573.P9318896353014548236

namespace A327573

/-- `eq[A077609(n+1), A168181(n)]` -/
def P9318896353014548236.Spec : Prop :=
  ∀ n, (P9318896353014548236.a n : ℤ) = A327573 (n + 1)

end A327573

/-! ## A327573.P296594172303565024

`eq[A077609(n+1), A168184(n)]`
-/

namespace A327573.P296594172303565024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327573.P296594172303565024

namespace A327573

/-- `eq[A077609(n+1), A168184(n)]` -/
def P296594172303565024.Spec : Prop :=
  ∀ n, (P296594172303565024.a n : ℤ) = A327573 (n + 1)

end A327573

/-! ## A327573.P7812387095538690578

`eq[A077609(n+1), A168185(n)]`
-/

namespace A327573.P7812387095538690578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327573.P7812387095538690578

namespace A327573

/-- `eq[A077609(n+1), A168185(n)]` -/
def P7812387095538690578.Spec : Prop :=
  ∀ n, (P7812387095538690578.a n : ℤ) = A327573 (n + 1)

end A327573

/-! ## A327573.P6438967220441333872

`eq[A077609(n+1), A257680(n)]`
-/

namespace A327573.P6438967220441333872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327573.P6438967220441333872

namespace A327573

/-- `eq[A077609(n+1), A257680(n)]` -/
def P6438967220441333872.Spec : Prop :=
  ∀ n, (P6438967220441333872.a n : ℤ) = A327573 (n + 1)

end A327573

/-! ## A327573.P13735397100958559034

`eq[A077609(n+1), A316829(n)]`
-/

namespace A327573.P13735397100958559034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327573.P13735397100958559034

namespace A327573

/-- `eq[A077609(n+1), A316829(n)]` -/
def P13735397100958559034.Spec : Prop :=
  ∀ n, (P13735397100958559034.a n : ℤ) = A327573 (n + 1)

end A327573

/-!
# A327577: Numbers of zeroless polydivisible numbers with all digits the same in base n.

The programs for A327577, there is no canonical definition to state claims against.
-/

/-! ## A327577.P614573466516297392

`A327545(∑[n]+2)`
-/

namespace A327577.P614573466516297392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327545 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A327577.P614573466516297392

/-!
# A327578: a(n) = n! * Sum_{d|n} d^(n/d - 1) / d!.

The programs for A327578, the canonical program `A327578.P13143327376490121456` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327578 has offset 1).

The definition of A327578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327578.P13143327376490121456

`(n+1)!*∑{d}[n+1, #^((n+1)/#-1)/#!]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327578

/-- `(n+1)!*∑{d}[n+1, #^((n+1)/#-1)/#!]` -/
def P13143327376490121456.Spec : Prop :=
  ∀ n, P13143327376490121456.a n = (A327578 (n + 1) : ℝ)

end A327578

/-! ## A327578.P17118614168854980610

`A157226(n+1)*A351984(n+1)+1`
-/

namespace A327578.P17118614168854980610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157226 (n + 1) * A351984 (n + 1) + 1

end

end A327578.P17118614168854980610

namespace A327578

/-- `A157226(n+1)*A351984(n+1)+1` -/
def P17118614168854980610.Spec : Prop :=
  ∀ n, P17118614168854980610.a n = A327578 (n + 1)

end A327578

/-! ## A327578.P5352021583694554103

`A117571(A000142(n)*A289667(n+1))`
-/

namespace A327578.P5352021583694554103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 (A000142 n * A289667 (n + 1)).toNat

end

end A327578.P5352021583694554103

namespace A327578

/-- `A117571(A000142(n)*A289667(n+1))` -/
def P5352021583694554103.Spec : Prop :=
  ∀ n, P5352021583694554103.a n = A327578 (n + 1)

end A327578

/-!
# A327579: a(n) = n! * Sum_{d|n} d^(n/d) / d!.

The programs for A327579, the canonical program `A327579.P6806523143864044738` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327579 has offset 1).

The definition of A327579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327579.P6806523143864044738

`(n+1)!*∑{d}[n+1, #^((n+1)/#)/#!]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327579

/-- `(n+1)!*∑{d}[n+1, #^((n+1)/#)/#!]` -/
def P6806523143864044738.Spec : Prop :=
  ∀ n, P6806523143864044738.a n = (A327579 (n + 1) : ℝ)

end A327579

/-!
# A327580: Triangle read by rows: T(n,k) = Sum_{1<=j*k<=n} cos(Pi*(j*k-1)/2).

The programs for A327580, there is no canonical definition to state claims against.
-/

/-! ## A327580.P2243977616225561435

`A134452(A246799(n)+2)`
-/

namespace A327580.P2243977616225561435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (A246799 n + 2).toNat

end

end A327580.P2243977616225561435

/-! ## A327580.P5606815331202552679

`A346711(n)%A000034(A246799(n))`
-/

namespace A327580.P5606815331202552679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346711 n) (A000034 (A246799 n).toNat)

end

end A327580.P5606815331202552679

/-! ## A327580.P10508034896561007559

`A056594(A246799(n)-A008836(n+1))`
-/

namespace A327580.P10508034896561007559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A246799 n - A008836 (n + 1)).toNat

end

end A327580.P10508034896561007559

/-! ## A327580.P17610056820188920285

`A056594(A008836(n+1)+A246799(n)+2)`
-/

namespace A327580.P17610056820188920285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A008836 (n + 1) + (A246799 n + 2)).toNat

end

end A327580.P17610056820188920285

/-! ## A327580.P1265030978243802841

`A104975(A061579(n)%A005459(n))`
-/

namespace A327580.P1265030978243802841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 (Int.tmod (A061579 n) (A005459 n)).toNat

end

end A327580.P1265030978243802841

/-!
# A327582: a(n) = (17 * 7^(2*n+1) + 1)/24. Sequence related to the properties of the partition function A000041 modulo a power of 7.

The programs for A327582, the canonical program `A327582.P16409215967493018630` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327582 has offset 0).

The definition of A327582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(17*7^(2*n+1)+1)/24` (program `A327582.P5147949681618542721`, by `A327582.P5147949681618542721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A327582.P17082858863706807170

`ogf((5-7x)/(1-50x+49x^2))`
-/

namespace A327582.P17082858863706807170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -7] [1, -50, 49] n

end

end A327582.P17082858863706807170

namespace A327582

/-- `ogf((5-7x)/(1-50x+49x^2))` -/
def P17082858863706807170.Spec : Prop :=
  ∀ n, P17082858863706807170.a n = A327582 n

end A327582

/-! ## A327582.P16409215967493018630

`50*a(n-1)-49*a(n-2)` with `a(0)=5, a(1)=243`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327582

/-- `50*a(n-1)-49*a(n-2)` -/
def P16409215967493018630.Spec : Prop :=
  ∀ n, P16409215967493018630.a n = A327582 n

theorem P16409215967493018630.correct : P16409215967493018630.Spec := by
  intro n
  simp only [A327582]

end A327582

/-! ## A327582.P5147949681618542721

`(17*7^(2*n+1)+1)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327582.P5147949681618542721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 * 7 ^ (2 * n + 1) + 1 : ℚ) / 24

end

end A327582.P5147949681618542721

namespace A327582

/-- `(17*7^(2*n+1)+1)/24` -/
def P5147949681618542721.Spec : Prop :=
  ∀ n, P5147949681618542721.a n = (A327582 n : ℚ)

theorem P5147949681618542721.correct : P5147949681618542721.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A327582, Nat.add_sub_cancel, A327582.P5147949681618542721.a, A327582.P16409215967493018630.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A327582, Nat.add_sub_cancel, A327582.P5147949681618542721.a, A327582.P16409215967493018630.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A327582

/-! ## A327582.P4231030920784268020

`49*a(n-1)-2` with `a(0)=5`
-/

namespace A327582.P4231030920784268020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  49 * a (n - 1) - 2

end

end A327582.P4231030920784268020

namespace A327582

/-- `49*a(n-1)-2` -/
def P4231030920784268020.Spec : Prop :=
  ∀ n, P4231030920784268020.a n = A327582 n

end A327582

/-! ## A327582.P4503625620260064334

`a(n-1)/(1/7)²-2` with `a(0)=5`
-/

namespace A327582.P4503625620260064334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) / ((1 : ℚ) / 7) ^ 2 - 2

end

end A327582.P4503625620260064334

namespace A327582

/-- `a(n-1)/(1/7)²-2` -/
def P4503625620260064334.Spec : Prop :=
  ∀ n, P4503625620260064334.a n = (A327582 n : ℚ)

end A327582

/-! ## A327582.P6247959231044471252

`A344121(Δ[n²])`
-/

namespace A327582.P6247959231044471252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344121 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A327582.P6247959231044471252

namespace A327582

/-- `A344121(Δ[n²])` -/
def P6247959231044471252.Spec : Prop :=
  ∀ n, P6247959231044471252.a n = A327582 n

end A327582

/-! ## A327582.P3504756428723665794

`or(1, A344121(2*n+1))`
-/

namespace A327582.P3504756428723665794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A344121 (2 * n + 1))

end

end A327582.P3504756428723665794

namespace A327582

/-- `or(1, A344121(2*n+1))` -/
def P3504756428723665794.Spec : Prop :=
  ∀ n, P3504756428723665794.a n = A327582 n

end A327582

/-! ## A327582.P15854749045240723143

`record[A344121(A093178(n))]`
-/

namespace A327582.P15854749045240723143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344121 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327582.P15854749045240723143

namespace A327582

/-- `record[A344121(A093178(n))]` -/
def P15854749045240723143.Spec : Prop :=
  ∀ n, P15854749045240723143.a n = A327582 n

end A327582

/-! ## A327582.P6152737973426943761

`record[A344121(A028234(n+1))]`
-/

namespace A327582.P6152737973426943761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344121 (A028234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327582.P6152737973426943761

namespace A327582

/-- `record[A344121(A028234(n+1))]` -/
def P6152737973426943761.Spec : Prop :=
  ∀ n, P6152737973426943761.a n = A327582 n

end A327582

/-! ## A327582.P5373975009097289308

`A008683(A002146(n))-(1-lcm(49, a(n-1)))` with `a(0)=5`
-/

namespace A327582.P5373975009097289308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A008683 (A002146 n).toNat - (1 - (Int.lcm 49 (a (n - 1)) : ℤ))

end

end A327582.P5373975009097289308

namespace A327582

/-- `A008683(A002146(n))-(1-lcm(49, a(n-1)))` -/
def P5373975009097289308.Spec : Prop :=
  ∀ n, P5373975009097289308.a n = A327582 n

end A327582

/-!
# A327584: Number T(n,k) of colored compositions of n using all colors of a k-set such that all parts have different color patterns and the patterns for parts i have i distinct colors in increasing order; triangle T(n,k), k>=0, k<=n<=k*2^(k-1), read by columns.

The programs for A327584, there is no canonical definition to state claims against.
-/

/-! ## A327584.P4431644982251928924

`A191890(A060576(n)+A018405(n+1))`
-/

namespace A327584.P4431644982251928924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191890 (A060576 n + A018405 (n + 1)).toNat

end

end A327584.P4431644982251928924

/-! ## A327584.P10541858535900874145

`A191890(A264401(n)+A018405(n+1))`
-/

namespace A327584.P10541858535900874145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191890 (A264401 n + A018405 (n + 1)).toNat

end

end A327584.P10541858535900874145

/-!
# A327587: a(n) = n! * Sum_{d|n} (-1)^(n - d) / (n/d)!^d.

The programs for A327587, the canonical program `A327587.P7258271252891608807` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327587 has offset 1).

The definition of A327587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327587.P7258271252891608807

`(n+1)!*∑{d}[n+1, (-1)^(n+1-#)/((n+1)/#)!^#]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327587

/-- `(n+1)!*∑{d}[n+1, (-1)^(n+1-#)/((n+1)/#)!^#]` -/
def P7258271252891608807.Spec : Prop :=
  ∀ n, P7258271252891608807.a n = (A327587 (n + 1) : ℚ)

end A327587

/-! ## A327587.P8077831673341081220

`A151907(A001519(n))+A007590(n)`
-/

namespace A327587.P8077831673341081220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151907 (A001519 n).toNat + A007590 n

end

end A327587.P8077831673341081220

namespace A327587

/-- `A151907(A001519(n))+A007590(n)` -/
def P8077831673341081220.Spec : Prop :=
  ∀ n, P8077831673341081220.a n = A327587 (n + 1)

end A327587

/-!
# A327588: Total number of colors in all colored compositions of n using all colors of an initial interval of the color palette such that all parts have different color patterns and the patterns for parts i have i colors in (weakly) increasing order.

The programs for A327588, there is no canonical definition to state claims against.
-/

/-! ## A327588.P16457659472002229804

`A227320(∑[C(n², n)])`
-/

namespace A327588.P16457659472002229804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227320 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327588.P16457659472002229804

/-!
# A327589: Number of colored compositions of 2n using all colors of an n-set such that all parts have different color patterns and the patterns for parts i have i colors in (weakly) increasing order.

The programs for A327589, there is no canonical definition to state claims against.
-/

/-! ## A327589.P8351992771834814612

`A327245(∑[4*n])`
-/

namespace A327589.P8351992771834814612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327245 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327589.P8351992771834814612

/-! ## A327589.P3711701363527595830

`gcd(A112316(n), A327245(A046092(n)))`
-/

namespace A327589.P3711701363527595830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112316 n) (A327245 (A046092 n).toNat)

end

end A327589.P3711701363527595830

/-! ## A327589.P6219532738153114035

`lcm(A033999(n), A327245(A046092(n)))`
-/

namespace A327589.P6219532738153114035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A327245 (A046092 n).toNat)

end

end A327589.P6219532738153114035

/-! ## A327589.P4824652144970616242

`gcd(A000038(n), A327245(A106232(n+1)))`
-/

namespace A327589.P4824652144970616242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A327245 (A106232 (n + 1)).toNat)

end

end A327589.P4824652144970616242

/-! ## A327589.P15874573895041811043

`A327245(A046092(n))+A112316(4*n+1)`
-/

namespace A327589.P15874573895041811043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327245 (A046092 n).toNat + A112316 (4 * n + 1)

end

end A327589.P15874573895041811043

/-!
# A327590: Number of partitions in all twice partitions of n.

The programs for A327590, there is no canonical definition to state claims against.
-/

/-! ## A327590.P1020083504527792708

`A066360(A083102(n))+A001906(n)`
-/

namespace A327590.P1020083504527792708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066360 (A083102 n).toNat + A001906 n

end

end A327590.P1020083504527792708

/-! ## A327590.P4445314886962814495

`A345882(n+1)-A119267(A077393(n+1))`
-/

namespace A327590.P4445314886962814495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345882 (n + 1) - A119267 (A077393 (n + 1)).toNat

end

end A327590.P4445314886962814495

/-!
# A327591: Number of subsets of {1..n} containing no quotients of pairs of distinct elements.

The programs for A327591, there is no canonical definition to state claims against.
-/

/-! ## A327591.P2962546761688023093

`A326489(n)+A057427(n)`
-/

namespace A327591.P2962546761688023093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326489 n + A057427 n

end

end A327591.P2962546761688023093

/-! ## A327591.P11440064123274196145

`A326489(n)-A057428(n)`
-/

namespace A327591.P11440064123274196145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326489 n - A057428 n

end

end A327591.P11440064123274196145

/-! ## A327591.P13210550245239003409

`A326489(n)+char[A065648(n)]`
-/

namespace A327591.P13210550245239003409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326489 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327591.P13210550245239003409

/-! ## A327591.P16845172520576273212

`A326489(n)+char[A027750(n+1)]`
-/

namespace A327591.P16845172520576273212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326489 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327591.P16845172520576273212

/-! ## A327591.P6483739890506034814

`A326489(n)+char[A098550(n+1)]`
-/

namespace A327591.P6483739890506034814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326489 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327591.P6483739890506034814

/-!
# A327593: Numbers m where an integer b that is a power of two > 2 with 1 < b < m exists such that m is a base-b repdigit.

The programs for A327593, there is no canonical definition to state claims against.
-/

/-! ## A327593.P17764862976814097941

`∪[A242139(n+1), A321513(n+1)]`
-/

namespace A327593.P17764862976814097941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327593.P17764862976814097941

/-! ## A327593.P3082093954187203834

`∪[A242139(n+1), A389956(n+1)]`
-/

namespace A327593.P3082093954187203834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327593.P3082093954187203834

/-! ## A327593.P13507857096611216946

`lt[A101708(n+3), A236380(n)²]`
-/

namespace A327593.P13507857096611216946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101708 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327593.P13507857096611216946

/-! ## A327593.P17163255798619617888

`lt[∑[A286520(2*(n+2))], A234742(n)]`
-/

namespace A327593.P17163255798619617888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286520 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A327593.P17163255798619617888

/-! ## A327593.P16746973553579287239

`lt[∑[A286520(2*(n+2))], A236837(n)]`
-/

namespace A327593.P16746973553579287239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286520 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A327593.P16746973553579287239

/-!
# A327594: Number of parts in all twice partitions of n.

The programs for A327594, there is no canonical definition to state claims against.
-/

/-! ## A327594.P1842325457089314102

`A327618(∑[n+3])`
-/

namespace A327594.P1842325457089314102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327594.P1842325457089314102

/-! ## A327594.P14264134830203654334

`record[A327618(A055998(A008611(n)))]`
-/

namespace A327594.P14264134830203654334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 (A055998 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327594.P14264134830203654334

/-! ## A327594.P1689800719433219746

`record[A327618(A055998(A008624(n)))]`
-/

namespace A327594.P1689800719433219746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 (A055998 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327594.P1689800719433219746

/-! ## A327594.P14268845578184157201

`record[A327618(A055998(A028242(n)))]`
-/

namespace A327594.P14268845578184157201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 (A055998 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327594.P14268845578184157201

/-! ## A327594.P3679157931550475116

`record[A327618(A055998(A143182(n)))]`
-/

namespace A327594.P3679157931550475116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 (A055998 (A143182 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327594.P3679157931550475116

/-! ## A327594.P9593567955341316469

`record[A327618(A055998(A004736(n+1)))]`
-/

namespace A327594.P9593567955341316469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 (A055998 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327594.P9593567955341316469

/-! ## A327594.P11056414267017525105

`record[A327618(A055998(A000188(n+1)))]`
-/

namespace A327594.P11056414267017525105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 (A055998 (A000188 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327594.P11056414267017525105

/-!
# A327595: Total number of colors in all colored compositions of n using all colors of an initial interval of the color palette such that all parts have different color patterns and the patterns for parts i are sorted and have i colors in (weakly) increasing order.

The programs for A327595, there is no canonical definition to state claims against.
-/

/-! ## A327595.P3912858276655670543

`A219428(7^n)+1-and(2, n)`
-/

namespace A327595.P3912858276655670543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (7 ^ n) + (1 - (Nat.land 2 n : ℤ))

end

end A327595.P3912858276655670543

/-!
# A327596: Number of colored compositions of 2n using all colors of an n-set such that all parts have different color patterns and the patterns for parts i are sorted and have i colors in (weakly) increasing order.

The programs for A327596, there is no canonical definition to state claims against.
-/

/-! ## A327596.P16389198595214960751

`A327244(∑[4*n])`
-/

namespace A327596.P16389198595214960751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327244 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327596.P16389198595214960751

/-! ## A327596.P6993495168059202242

`gcd(A000038(n), A327244(A046092(n)))`
-/

namespace A327596.P6993495168059202242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A327244 (A046092 n).toNat)

end

end A327596.P6993495168059202242

/-! ## A327596.P2614245056247987597

`lcm(A033999(n), A327244(A046092(n)))`
-/

namespace A327596.P2614245056247987597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A327244 (A046092 n).toNat)

end

end A327596.P2614245056247987597

/-! ## A327596.P3946168385294427390

`(A000041(n)%2)!*A327244(A046092(n))`
-/

namespace A327596.P3946168385294427390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A327244 (A046092 n).toNat

end

end A327596.P3946168385294427390

/-! ## A327596.P13665459722437439731

`A007318(C(2, n)+1)*A327244(A046092(n))`
-/

namespace A327596.P13665459722437439731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n + 1) * A327244 (A046092 n).toNat

end

end A327596.P13665459722437439731

/-!
# A327597: a(n) = numerator((a(n-1) + a(n-2) + 1)/a(n-1)), with a(1)=1, a(2)=2.

The programs for A327597, the canonical program `A327597.P13559981709038144299` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327597 has offset 1).

The definition of A327597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3654 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327597.P13559981709038144299

`(a(n-1)+a(n-2)+1)/gcd(a(n-1), a(n-3))` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327597

/-- `(a(n-1)+a(n-2)+1)/gcd(a(n-1), a(n-3))` -/
def P13559981709038144299.Spec : Prop :=
  ∀ n, P13559981709038144299.a n = (A327597 (n + 1) : ℚ)

end A327597

/-! ## A327597.P8500721410271749382

`lcm(a(n-1)+a(n-2)+1, a(n-1))/a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A327597.P8500721410271749382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Int.lcm (SequenceMachineLib.roundAway (a (n - 1) + (a (n - 2) + 1))) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / a (n - 1)

end

end A327597.P8500721410271749382

namespace A327597

/-- `lcm(a(n-1)+a(n-2)+1, a(n-1))/a(n-1)` -/
def P8500721410271749382.Spec : Prop :=
  ∀ n, P8500721410271749382.a n = (A327597 (n + 1) : ℚ)

end A327597

/-!
# A327598: Number of colored integer partitions of n using all colors of a 2-set such that all parts have different color patterns and a pattern for part i has i colors in (weakly) increasing order.

The programs for A327598, there is no canonical definition to state claims against.
-/

/-! ## A327598.P108628663681001739

`A219555(n)-A087135(n)`
-/

namespace A327598.P108628663681001739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219555 n - A087135 n

end

end A327598.P108628663681001739

/-! ## A327598.P15826772866866350068

`A219555(n)-(A111133(n)+A052839(n))`
-/

namespace A327598.P15826772866866350068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219555 n - (A111133 n + A052839 n)

end

end A327598.P15826772866866350068

/-! ## A327598.P13828022813725099415

`A219555(n)-A000009(n)*A020639(A004277(n))`
-/

namespace A327598.P13828022813725099415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219555 n - A000009 n * A020639 (A004277 n).toNat

end

end A327598.P13828022813725099415

/-! ## A327598.P9277558701107716370

`A219555(n)-A000009(n)*A020639(A008458(n))`
-/

namespace A327598.P9277558701107716370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219555 n - A000009 n * A020639 (A008458 n).toNat

end

end A327598.P9277558701107716370

/-! ## A327598.P17357802439405631049

`A219555(n)-A000009(n)*A020639(A008574(n))`
-/

namespace A327598.P17357802439405631049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219555 n - A000009 n * A020639 (A008574 n).toNat

end

end A327598.P17357802439405631049

/-! ## A327598.P11821284044170081821

`A219555(n)-A000009(n)*A020639(A005893(n))`
-/

namespace A327598.P11821284044170081821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219555 n - A000009 n * A020639 (A005893 n).toNat

end

end A327598.P11821284044170081821

/-! ## A327598.P4914988532375067686

`A327116(A133263(n))`
-/

namespace A327598.P4914988532375067686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327116 (A133263 n).toNat

end

end A327598.P4914988532375067686

/-! ## A327598.P179559856334857782

`A327116(A238531(n+1))`
-/

namespace A327598.P179559856334857782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327116 (A238531 (n + 1)).toNat

end

end A327598.P179559856334857782

/-!
# A327599: Odd numbers k that have a divisor d such that sigma(d)*d is equal to k.

The programs for A327599, there is no canonical definition to state claims against.
-/

/-! ## A327599.P16405803886000564378

`filter[A348034(n+1), A379952(#)]`
-/

namespace A327599.P16405803886000564378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A327599.P16405803886000564378

/-! ## A327599.P3049295767987329314

`record[A326238(A091050(n+1)²)]`
-/

namespace A327599.P3049295767987329314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326238 (A091050 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327599.P3049295767987329314

/-! ## A327599.P16008684961873085567

`filter[A327165(n+1), A374134(#)]`
-/

namespace A327599.P16008684961873085567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A327599.P16008684961873085567

/-! ## A327599.P12494862771185607279

`filter[A338520(n+1), A374134(#)]`
-/

namespace A327599.P12494862771185607279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A327599.P12494862771185607279

