import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A261500: Number of necklaces with n white beads and 6*n black beads.

The programs for A261500, there is no canonical definition to state claims against.
-/

/-! ## A261500.P2003131010626181515

`∑{d}[round(sqrt(n²+1)), A346581(#)]`
-/

namespace A261500.P2003131010626181515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A346581 d

end

end A261500.P2003131010626181515

/-! ## A261500.P3291508093133034943

`A261494(eq[6, A025581(n)])`
-/

namespace A261500.P3291508093133034943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261500.P3291508093133034943

/-! ## A261500.P2307737280961297653

`A261494(eq[64, A130321(n)])`
-/

namespace A261500.P2307737280961297653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261500.P2307737280961297653

/-! ## A261500.P15925084208419063323

`A261494(A000217(n+7)-7)`
-/

namespace A261500.P15925084208419063323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (A000217 (n + 7) - 7).toNat

end

end A261500.P15925084208419063323

/-! ## A261500.P7765806131055238566

`A261494(A000124(n+7)-8)`
-/

namespace A261500.P7765806131055238566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (A000124 (n + 7) - 8).toNat

end

end A261500.P7765806131055238566

/-! ## A261500.P10961401744673825707

`A261494(eq[7, A004736(n+1)])`
-/

namespace A261500.P10961401744673825707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261500.P10961401744673825707

/-! ## A261500.P8596821885405746565

`A261494(A155212(n+4)-(n+7))`
-/

namespace A261500.P8596821885405746565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (A155212 (n + 4) - (n + 7 : ℤ)).toNat

end

end A261500.P8596821885405746565

/-!
# A261501: Number of necklaces with n white beads and 7*n black beads.

The programs for A261501, there is no canonical definition to state claims against.
-/

/-! ## A261501.P13043365970996577620

`∑{d}[round(sqrt(n²+1)), A346582(#)]`
-/

namespace A261501.P13043365970996577620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A346582 d

end

end A261501.P13043365970996577620

/-! ## A261501.P14612136593539685722

`A261494(A155212(n+4))`
-/

namespace A261501.P14612136593539685722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (A155212 (n + 4)).toNat

end

end A261501.P14612136593539685722

/-! ## A261501.P9938175688921168046

`A261494(A000217(n+8)-8)`
-/

namespace A261501.P9938175688921168046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (A000217 (n + 8) - 8).toNat

end

end A261501.P9938175688921168046

/-! ## A261501.P5068357034909698800

`A261494(A000124(n+8)-9)`
-/

namespace A261501.P5068357034909698800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (A000124 (n + 8) - 9).toNat

end

end A261501.P5068357034909698800

/-! ## A261501.P7027217890575388337

`A261494(eq[8, A004736(n+1)])`
-/

namespace A261501.P7027217890575388337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261501.P7027217890575388337

/-! ## A261501.P1981562132190860964

`A261494(A005843(n)+A166136(n+5)+1)`
-/

namespace A261501.P1981562132190860964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (A005843 n + (A166136 (n + 5) + 1)).toNat

end

end A261501.P1981562132190860964

/-!
# A261502: Number of necklaces with n white beads and 8*n black beads.

The programs for A261502, there is no canonical definition to state claims against.
-/

/-! ## A261502.P10378439141083458553

`A261494(eq[6, A264391(n)])`
-/

namespace A261502.P10378439141083458553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261502.P10378439141083458553

/-! ## A261502.P16302246745110814529

`A261494(eq[8, A025581(n)])`
-/

namespace A261502.P16302246745110814529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261502.P16302246745110814529

/-! ## A261502.P1523117019903242805

`A261494(eq[9, A193739(n)])`
-/

namespace A261502.P1523117019903242805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261502.P1523117019903242805

/-! ## A261502.P8834119165903774072

`A261494(eq[17, A099375(n)])`
-/

namespace A261502.P8834119165903774072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261502.P8834119165903774072

/-! ## A261502.P1285792681411093526

`A261494(eq[9, A004736(n+1)])`
-/

namespace A261502.P1285792681411093526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261502.P1285792681411093526

/-!
# A261503: Number of necklaces with n white beads and 9*n black beads.

The programs for A261503, there is no canonical definition to state claims against.
-/

/-! ## A261503.P15821952017483241471

`A261494(eq[9, A025581(n)])`
-/

namespace A261503.P15821952017483241471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261503.P15821952017483241471

/-! ## A261503.P9586994071772903860

`A261494(eq[9, A195664(n)])`
-/

namespace A261503.P9586994071772903860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261503.P9586994071772903860

/-! ## A261503.P8558018937474908152

`A261494(eq[10, A193739(n)])`
-/

namespace A261503.P8558018937474908152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261503.P8558018937474908152

/-! ## A261503.P11826426449520043326

`A261494(eq[19, A099375(n)])`
-/

namespace A261503.P11826426449520043326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261503.P11826426449520043326

/-! ## A261503.P14466460761896241248

`A261494(eq[10, A004736(n+1)])`
-/

namespace A261503.P14466460761896241248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261503.P14466460761896241248

/-! ## A261503.P16130056256862776087

`A261494(eq[30, A027293(n+1)])`
-/

namespace A261503.P16130056256862776087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261503.P16130056256862776087

/-!
# A261504: Number of necklaces with n white beads and 10*n black beads.

The programs for A261504, there is no canonical definition to state claims against.
-/

/-! ## A261504.P14725785807097339821

`A261494(eq[10, A025581(n)])`
-/

namespace A261504.P14725785807097339821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261504.P14725785807097339821

/-! ## A261504.P12494266598238252795

`A261494(eq[10, A195664(n)])`
-/

namespace A261504.P12494266598238252795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261504.P12494266598238252795

/-! ## A261504.P9802081714674711707

`A261494(eq[11, A193739(n)])`
-/

namespace A261504.P9802081714674711707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261504.P9802081714674711707

/-! ## A261504.P11874415949528000758

`A261494(eq[10, A144257(n+1)])`
-/

namespace A261504.P11874415949528000758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261504.P11874415949528000758

/-! ## A261504.P17951744252391602682

`A261494(eq[11, A004736(n+1)])`
-/

namespace A261504.P17951744252391602682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261504.P17951744252391602682

/-!
# A261505: Numerator of Product_{k=1..n} (2k/(2k+1))^((-1)^A000120(k)).

The programs for A261505, there is no canonical definition to state claims against.
-/

/-! ## A261505.P5490544370468551450

`∏[gcd(A237417(n+1), A338611(n+4))]`
-/

namespace A261505.P5490544370468551450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A237417 (n + 1)) (A338611 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A261505.P5490544370468551450

/-! ## A261505.P5824123646611560393

`∏[A001227(A055482(n+1)²)]`
-/

namespace A261505.P5824123646611560393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A055482 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A261505.P5824123646611560393

/-!
# A261512: Largest n-digit lucky number.

The programs for A261512, there is no canonical definition to state claims against.
-/

/-! ## A261512.P15665972619570543363

`A000959(A055723(n+1))`
-/

namespace A261512.P15665972619570543363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A055723 (n + 1)).toNat

end

end A261512.P15665972619570543363

/-! ## A261512.P15258834823244989532

`A138825(n+2)-A348242(A181814(n+1))`
-/

namespace A261512.P15258834823244989532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138825 (n + 2) - A348242 (A181814 (n + 1)).toNat

end

end A261512.P15258834823244989532

/-!
# A261514: Indices of Mersenne numbers (A000225) of the form x^2 + xy + y^2.

The programs for A261514, there is no canonical definition to state claims against.
-/

/-! ## A261514.P3402808645251633614

`∪[A215798(n+1), n²²²]`
-/

namespace A261514.P3402808645251633614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A261514.P3402808645251633614

/-! ## A261514.P3214894678035240449

`record[A175676(A215798(n+1))]`
-/

namespace A261514.P3214894678035240449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A215798 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261514.P3214894678035240449

/-! ## A261514.P3148140327973803264

`∪[A060493(n), A215798(n+1)]`
-/

namespace A261514.P3148140327973803264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060493 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A261514.P3148140327973803264

/-! ## A261514.P11747924079924417412

`∪[A060532(n), A215798(n+1)]`
-/

namespace A261514.P11747924079924417412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A261514.P11747924079924417412

/-! ## A261514.P2381892113164548995

`∪[A062393(n), A215798(n+1)]`
-/

namespace A261514.P2381892113164548995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A261514.P2381892113164548995

/-! ## A261514.P8053914504795208883

`∪[A078183(n), A215798(n+1)]`
-/

namespace A261514.P8053914504795208883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A261514.P8053914504795208883

/-! ## A261514.P5573406962835473239

`∪[A098140(n), A215798(n+1)]`
-/

namespace A261514.P5573406962835473239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098140 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A261514.P5573406962835473239

/-! ## A261514.P7610465655853944718

`∪[A101378(n), A215798(n+1)]`
-/

namespace A261514.P7610465655853944718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A261514.P7610465655853944718

/-! ## A261514.P14747881001201920214

`∪[A101379(n), A215798(n+1)]`
-/

namespace A261514.P14747881001201920214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A261514.P14747881001201920214

/-! ## A261514.P2474270771028268169

`∪[A113596(n), A215798(n+1)]`
-/

namespace A261514.P2474270771028268169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A261514.P2474270771028268169

/-!
# A261515: Primes of the form p(q) + p(r) with q and r both prime, where p(.) is the partition function given by A000041.

The programs for A261515, there is no canonical definition to state claims against.
-/

/-! ## A261515.P3007404156198336649

`p?[A141459(n)*A314193(n)]`
-/

namespace A261515.P3007404156198336649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n * A314193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261515.P3007404156198336649

/-! ## A261515.P6779215622797264961

`p?[A176289(n)*A314193(n)]`
-/

namespace A261515.P6779215622797264961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176289 n * A314193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261515.P6779215622797264961

/-!
# A261516: Number of perfect rhythmic tilings of [0,3n-1] with triples.

The programs for A261516, there is no canonical definition to state claims against.
-/

/-! ## A261516.P9573381167924293797

`and(A005321(n), A200370(2^n))`
-/

namespace A261516.P9573381167924293797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005321 n) (A200370 (2 ^ n))

end

end A261516.P9573381167924293797

/-! ## A261516.P13428923629790673166

`and(A200370(2^n), A332748(n))`
-/

namespace A261516.P13428923629790673166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A200370 (2 ^ n)) (A332748 n)

end

end A261516.P13428923629790673166

/-! ## A261516.P1534696585508916627

`and(A261994(n), A332762(∑[n+2]-1))`
-/

namespace A261516.P1534696585508916627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A261994 n) (A332762 (∑ j ∈ Finset.range (n + 1), f1 j - 1))

end

end A261516.P1534696585508916627

/-! ## A261516.P15017195332169199420

`A029851(n)%A020986(A279560(n))`
-/

namespace A261516.P15017195332169199420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029851 n) (A020986 (A279560 n).toNat)

end

end A261516.P15017195332169199420

/-! ## A261516.P16165448386394641041

`and(A001867(n), A200370(A000079(n)))`
-/

namespace A261516.P16165448386394641041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001867 n) (A200370 (A000079 n).toNat)

end

end A261516.P16165448386394641041

/-!
# A261518: a(n+1) = prime(n + a(n)) - prime(n), a(1) = 1.

The programs for A261518, there is no canonical definition to state claims against.
-/

/-! ## A261518.P15828859988223073967

`A000040(a(n-1)+n)-A000040(n)` with `a(0)=1`
-/

namespace A261518.P15828859988223073967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (a (n - 1) + (n : ℤ)).toNat - A000040 n

end

end A261518.P15828859988223073967

/-! ## A261518.P15161846847800939000

`A006093(a(n-1)+n)-A006093(n)` with `a(0)=1`
-/

namespace A261518.P15161846847800939000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006093 (a (n - 1) + (n : ℤ)).toNat - A006093 n

end

end A261518.P15161846847800939000

/-! ## A261518.P12631794643983156922

`A008864(a(n-1)+n)-A028815(n)` with `a(0)=1`
-/

namespace A261518.P12631794643983156922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008864 (a (n - 1) + (n : ℤ)).toNat - A028815 n

end

end A261518.P12631794643983156922

/-! ## A261518.P16316987514893864905

`A028815(a(n-1)+n)-A028815(n)` with `a(0)=1`
-/

namespace A261518.P16316987514893864905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028815 (a (n - 1) + (n : ℤ)).toNat - A028815 n

end

end A261518.P16316987514893864905

/-! ## A261518.P4811111998632699708

`A052147(a(n-1)+n)-A052147(n)` with `a(0)=1`
-/

namespace A261518.P4811111998632699708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052147 (a (n - 1) + (n : ℤ)).toNat - A052147 n

end

end A261518.P4811111998632699708

/-!
# A261519: Expansion of Product_{k>=1} ((1+x^k)/(1-x^k))^(2^k).

The programs for A261519, there is no canonical definition to state claims against.
-/

/-! ## A261519.P10490172282002558390

`A328709(2^n)`
-/

namespace A261519.P10490172282002558390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328709 (2 ^ n)

end

end A261519.P10490172282002558390

/-! ## A261519.P10117895219457507964

`record[A328709(A122111(n+1))]`
-/

namespace A261519.P10117895219457507964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328709 (A122111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261519.P10117895219457507964

/-! ## A261519.P5852322616891755193

`A328709(A000079(n))+A184964(n)`
-/

namespace A261519.P5852322616891755193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328709 (A000079 n).toNat + A184964 n

end

end A261519.P5852322616891755193

/-! ## A261519.P17226888896314013472

`A328709(A000079(n))+A211020(n)`
-/

namespace A261519.P17226888896314013472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328709 (A000079 n).toNat + A211020 n

end

end A261519.P17226888896314013472

/-! ## A261519.P1043874012901422064

`A328709(A000079(n))+A243836(n)`
-/

namespace A261519.P1043874012901422064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328709 (A000079 n).toNat + A243836 n

end

end A261519.P1043874012901422064

/-!
# A261520: Expansion of Product_{k>=1} ((1+x^k)/(1-x^k))^(3^k).

The programs for A261520, there is no canonical definition to state claims against.
-/

/-! ## A261520.P2413930911893619053

`A328709(3^n)`
-/

namespace A261520.P2413930911893619053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328709 (3 ^ n)

end

end A261520.P2413930911893619053

/-! ## A261520.P1349122405267778001

`A328709(A000244(n))+A039966(3*n+2)`
-/

namespace A261520.P1349122405267778001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328709 (A000244 n).toNat + A039966 (3 * n + 2)

end

end A261520.P1349122405267778001

/-!
# A261521: a(n) = n^2 + 2*n + 29.

The programs for A261521, the canonical program `A261521.P3567981329095668901` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261521 has offset 0).

The definition of A261521 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+2*n+29` (program `A261521.P3567981329095668901`, by `A261521.P3567981329095668901.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261521.P3567981329095668901

`n²+2*n+29`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A261521

/-- `n²+2*n+29` -/
def P3567981329095668901.Spec : Prop :=
  ∀ n, (P3567981329095668901.a n : ℤ) = A261521 n

theorem P3567981329095668901.correct : P3567981329095668901.Spec := by
  intro n
  simp only [A261521]

end A261521

/-! ## A261521.P10832749587445104901

`record[(1-n)²+28]`
-/

namespace A261521.P10832749587445104901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261521.P10832749587445104901

namespace A261521

/-- `record[(1-n)²+28]` -/
def P10832749587445104901.Spec : Prop :=
  ∀ n, P10832749587445104901.a n = A261521 n

end A261521

/-! ## A261521.P2666160537589803326

`xor(2, (n+1)²+30)`
-/

namespace A261521.P2666160537589803326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 ((n + 1) ^ 2 + 30)

end

end A261521.P2666160537589803326

namespace A261521

/-- `xor(2, (n+1)²+30)` -/
def P2666160537589803326.Spec : Prop :=
  ∀ n, (P2666160537589803326.a n : ℤ) = A261521 n

end A261521

/-! ## A261521.P9944124053444237058

`∑[a(n-1)+2]` with `a(0)=29, a(1)=3`
-/

namespace A261521.P9944124053444237058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [29, 3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261521.P9944124053444237058

namespace A261521

/-- `∑[a(n-1)+2]` -/
def P9944124053444237058.Spec : Prop :=
  ∀ n, (P9944124053444237058.a n : ℤ) = A261521 n

end A261521

/-! ## A261521.P6820066383287236855

`abs(a(n-1)+2*n+1)` with `a(0)=29`
-/

namespace A261521.P6820066383287236855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [29] fun n a =>
  a (n - 1) + (2 * n + 1)

end

end A261521.P6820066383287236855

namespace A261521

/-- `abs(a(n-1)+2*n+1)` -/
def P6820066383287236855.Spec : Prop :=
  ∀ n, (P6820066383287236855.a n : ℤ) = A261521 n

theorem P6820066383287236855.correct : P6820066383287236855.Spec := by
  intro n
  induction n with
  | zero => simp [A261521, A261521.P6820066383287236855.a, A261521.P3567981329095668901.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A261521, Nat.add_sub_cancel, A261521.P6820066383287236855.a, A261521.P3567981329095668901.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A261521

/-! ## A261521.P6008496988591600803

`floor(a(n-1)+2*n+1)` with `a(0)=29`

`floor` is left out, it is the identity on integers.
-/

namespace A261521.P6008496988591600803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [29] fun n a =>
  a (n - 1) + (2 * n + 1)

end

end A261521.P6008496988591600803

namespace A261521

/-- `floor(a(n-1)+2*n+1)` -/
def P6008496988591600803.Spec : Prop :=
  ∀ n, (P6008496988591600803.a n : ℤ) = A261521 n

theorem P6008496988591600803.correct : P6008496988591600803.Spec := by
  intro n
  induction n with
  | zero => simp [A261521, A261521.P6008496988591600803.a, A261521.P3567981329095668901.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A261521, Nat.add_sub_cancel, A261521.P6008496988591600803.a, A261521.P3567981329095668901.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A261521

/-! ## A261521.P6378062274284461586

`Δ[A000330(n)+28*n]`
-/

namespace A261521.P6378062274284461586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + (28 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261521.P6378062274284461586

namespace A261521

/-- `Δ[A000330(n)+28*n]` -/
def P6378062274284461586.Spec : Prop :=
  ∀ n, P6378062274284461586.a n = A261521 n

end A261521

/-! ## A261521.P9067742322305282375

`abs(28-∑[n-A016777(n)])`
-/

namespace A261521.P9067742322305282375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |28 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A261521.P9067742322305282375

namespace A261521

/-- `abs(28-∑[n-A016777(n)])` -/
def P9067742322305282375.Spec : Prop :=
  ∀ n, P9067742322305282375.a n = A261521 n

end A261521

/-! ## A261521.P13576758777090663838

`Δ[A139608(n)+A056520(n)]`
-/

namespace A261521.P13576758777090663838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A056520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261521.P13576758777090663838

namespace A261521

/-- `Δ[A139608(n)+A056520(n)]` -/
def P13576758777090663838.Spec : Prop :=
  ∀ n, P13576758777090663838.a n = A261521 n

end A261521

/-! ## A261521.P12229300130169527334

`∑[A061008(A000040(a(n-1)))]` with `a(0)=29, a(1)=3`
-/

namespace A261521.P12229300130169527334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [29, 3] fun n f1 =>
  A061008 (A000040 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261521.P12229300130169527334

namespace A261521

/-- `∑[A061008(A000040(a(n-1)))]` -/
def P12229300130169527334.Spec : Prop :=
  ∀ n, P12229300130169527334.a n = A261521 n

end A261521

/-! ## A261521.P14964593233380358736

`A004443(A114964(n+1))`
-/

namespace A261521.P14964593233380358736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A114964 (n + 1)).toNat

end

end A261521.P14964593233380358736

namespace A261521

/-- `A004443(A114964(n+1))` -/
def P14964593233380358736.Spec : Prop :=
  ∀ n, P14964593233380358736.a n = A261521 n

end A261521

/-!
# A261522: Positive integers k such that x^2 - 23xy + y^2 + k = 0 has integer solutions.

The programs for A261522, there is no canonical definition to state claims against.
-/

/-! ## A261522.P7269630282943249502

`A238245(n+1)+A084558(A092184(n)+1)`
-/

namespace A261522.P7269630282943249502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238245 (n + 1) + A084558 (A092184 n + 1).toNat

end

end A261522.P7269630282943249502

/-! ## A261522.P2254590036561228230

`A238245(n+1)+A084558(A197550(n+1))`
-/

namespace A261522.P2254590036561228230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238245 (n + 1) + A084558 (A197550 (n + 1)).toNat

end

end A261522.P2254590036561228230

/-!
# A261523: a(n) = prime(n+1)! / (prime(n+1) - prime(n))!.

The programs for A261523, the canonical program `A261523.P4523387212413988190` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261523 has offset 1).

The definition of A261523 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, A058077, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261523.P4523387212413988190

`A058077(n+1)*A039716(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A261523

/-- `A058077(n+1)*A039716(n+1)` -/
def P4523387212413988190.Spec : Prop :=
  ∀ n, P4523387212413988190.a n = A261523 (n + 1)

theorem P4523387212413988190.correct : P4523387212413988190.Spec := by
  intro n
  simp only [A261523, Nat.add_sub_cancel]

end A261523

/-!
# A261524: Odd numbers n such that degree(gcd( 1 + x^n, 1 + (1+x)^n )) > 1, where the polynomials are over GF(2).

The programs for A261524, there is no canonical definition to state claims against.
-/

/-! ## A261524.P2879120873604440824

`A261871(n+1)-A261488(A038234(n))`
-/

namespace A261524.P2879120873604440824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261871 (n + 1) - A261488 (A038234 n).toNat

end

end A261524.P2879120873604440824

/-! ## A261524.P6343974320626148056

`A261871(n+1)+A002448(A161409(2*(n+2)))`
-/

namespace A261524.P6343974320626148056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261871 (n + 1) + A002448 (A161409 (2 * (n + 2))).toNat

end

end A261524.P6343974320626148056

/-! ## A261524.P5222411009711954645

`A111615(A261871(n+1))`
-/

namespace A261524.P5222411009711954645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111615 (A261871 (n + 1)).toNat

end

end A261524.P5222411009711954645

/-! ## A261524.P3003843302614748730

`A261871(∑[A058276(n)!])`
-/

namespace A261524.P3003843302614748730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A058276 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261871 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261524.P3003843302614748730

/-! ## A261524.P11712457431468598281

`A261871(n+1)%A001049(n+1)`
-/

namespace A261524.P11712457431468598281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261871 (n + 1)) (A001049 (n + 1))

end

end A261524.P11712457431468598281

/-!
# A261525: a(n) = smallest m such that A031131(m) = 2*n.

The programs for A261525, there is no canonical definition to state claims against.
-/

/-! ## A261525.P1613278805067715078

`A000720(A144103(n+2))`
-/

namespace A261525.P1613278805067715078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A144103 (n + 2)).toNat

end

end A261525.P1613278805067715078

/-! ## A261525.P13857571066352237146

`A329622(A046931(n+2))`
-/

namespace A261525.P13857571066352237146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (A046931 (n + 2)).toNat

end

end A261525.P13857571066352237146

/-! ## A261525.P5949868903828480073

`A061395(abs(A144103(n+2)))`
-/

namespace A261525.P5949868903828480073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 |A144103 (n + 2)|.toNat

end

end A261525.P5949868903828480073

/-! ## A261525.P14843350595072249873

`A061395(p?[A144103(n+1)])`
-/

namespace A261525.P14843350595072249873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A261525.P14843350595072249873

/-! ## A261525.P957668516412641142

`A000720(A046931(n+2)-1)`
-/

namespace A261525.P957668516412641142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A046931 (n + 2) - 1).toNat

end

end A261525.P957668516412641142

/-!
# A261526: Expansion of (H(-x) / chi(-x))^2 in powers of x where chi() is a Ramanujan theta function and G() is a Rogers-Ramanujan function.

The programs for A261526, there is no canonical definition to state claims against.
-/

/-! ## A261526.P4109988608898945252

`-A147699(5*n+2)`
-/

namespace A261526.P4109988608898945252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A147699 (5 * n + 2)

end

end A261526.P4109988608898945252

/-! ## A261526.P6780664438887358347

`record[-A147699(n+2)]`
-/

namespace A261526.P6780664438887358347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A147699 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261526.P6780664438887358347

/-! ## A261526.P16772323910594385891

`record[abs(A147699(A014681(n)))]`
-/

namespace A261526.P16772323910594385891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A147699 (A014681 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261526.P16772323910594385891

/-! ## A261526.P14163826825055399963

`record[abs(A147699(A263449(n)))]`
-/

namespace A261526.P14163826825055399963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A147699 (A263449 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261526.P14163826825055399963

/-! ## A261526.P11497860967677984654

`record[A000038(n)-A147699(n)]`
-/

namespace A261526.P11497860967677984654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A147699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261526.P11497860967677984654

/-! ## A261526.P11568314055895580051

`record[gcd(A138527(n), A147699(n))]`
-/

namespace A261526.P11568314055895580051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138527 n) (A147699 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261526.P11568314055895580051

/-! ## A261526.P10817196782787080323

`record[A000122(n+1)-A147699(n)]`
-/

namespace A261526.P10817196782787080323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n + 1) - A147699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261526.P10817196782787080323

/-! ## A261526.P2171382232200535562

`record[A000007(n)-A147699(n+3)]`
-/

namespace A261526.P2171382232200535562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A147699 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261526.P2171382232200535562

/-! ## A261526.P1861361353038968606

`record[A147699(n)-A147699(n+3)]`
-/

namespace A261526.P1861361353038968606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147699 n - A147699 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261526.P1861361353038968606

/-! ## A261526.P7144784981812998024

`record[2*A000007(n)-A147699(n)]`
-/

namespace A261526.P7144784981812998024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A147699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261526.P7144784981812998024

/-! ## A261526.P14920681151566277571

`A147699(A047221(2*(n+1)))-A147699(A047221(2*n+1))`
-/

namespace A261526.P14920681151566277571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147699 (A047221 (2 * (n + 1))).toNat - A147699 (A047221 (2 * n + 1)).toNat

end

end A261526.P14920681151566277571

/-! ## A261526.P15399846975455142461

`A145708(10*n+5)`
-/

namespace A261526.P15399846975455142461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145708 (10 * n + 5)

end

end A261526.P15399846975455142461

/-! ## A261526.P4101855719798404270

`abs(A138532(10*n+5))`
-/

namespace A261526.P4101855719798404270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138532 (10 * n + 5)|

end

end A261526.P4101855719798404270

/-!
# A261531: Number of necklaces with n beads of unlabeled colors such that the numbers of beads per color are distinct.

The programs for A261531, there is no canonical definition to state claims against.
-/

/-! ## A261531.P10576002667408670032

`A073311(A345370(n+1)+A112179(n))`
-/

namespace A261531.P10576002667408670032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073311 (A345370 (n + 1) + A112179 n).toNat

end

end A261531.P10576002667408670032

/-!
# A261533: Primes p such that p+2 is prime with prime(p+2)-prime(p)=6.

The programs for A261533, the canonical program `A261533.P11461223256659698925` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261533 has offset 1).

The definition of A261533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261533.P11461223256659698925

`A001359(lt[A096474(n+1), 7]+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A261533

/-- `A001359(lt[A096474(n+1), 7]+1)` -/
def P11461223256659698925.Spec : Prop :=
  ∀ n, P11461223256659698925.a n = A261533 (n + 1)

theorem P11461223256659698925.correct : P11461223256659698925.Spec := by
  intro n
  simp only [A261533, Nat.add_sub_cancel]

end A261533

/-! ## A261533.P17838651094350461881

`A006512(lt[A096474(n+1), 7]+1)-2`
-/

namespace A261533.P17838651094350461881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096474 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) - 2

end

end A261533.P17838651094350461881

namespace A261533

/-- `A006512(lt[A096474(n+1), 7]+1)-2` -/
def P17838651094350461881.Spec : Prop :=
  ∀ n, P17838651094350461881.a n = A261533 (n + 1)

end A261533

/-! ## A261533.P11808388925073641036

`record[root(A001359(n+1), A096474(n+1)-5)]`
-/

namespace A261533.P11808388925073641036
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) : ℝ) ^ (1 / (A096474 (n + 1) - 5 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261533.P11808388925073641036

namespace A261533

/-- `record[root(A001359(n+1), A096474(n+1)-5)]` -/
def P11808388925073641036.Spec : Prop :=
  ∀ n, P11808388925073641036.a n = (A261533 (n + 1) : ℝ)

end A261533

/-! ## A261533.P9502763368582297584

`A065091(eq[6, A073131(n+1)])`
-/

namespace A261533.P9502763368582297584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261533.P9502763368582297584

namespace A261533

/-- `A065091(eq[6, A073131(n+1)])` -/
def P9502763368582297584.Spec : Prop :=
  ∀ n, P9502763368582297584.a n = A261533 (n + 1)

end A261533

/-!
# A261534: Nonprime palindromes n with only the digits 0, 1, 2 such that the product of divisors of n is also a palindrome.

The programs for A261534, there is no canonical definition to state claims against.
-/

/-! ## A261534.P17591798817602010142

`A244423(n+3-ceil(acot(n)))`
-/

namespace A261534.P17591798817602010142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244423 ((n + 3 : ℤ) - ⌈SequenceMachineLib.acot (n : ℝ)⌉).toNat

end

end A261534.P17591798817602010142

/-! ## A261534.P7396542026865469300

`A244423(ceil(abs(sin(n)))+n+1)`
-/

namespace A261534.P7396542026865469300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244423 (⌈|Real.sin (n : ℝ)|⌉ + (n + 1 : ℤ)).toNat

end

end A261534.P7396542026865469300

/-! ## A261534.P13991781751022195038

`A244423(ceil(sin(n)²)+n+1)`
-/

namespace A261534.P13991781751022195038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244423 (⌈Real.sin (n : ℝ) ^ 2⌉ + (n + 1 : ℤ)).toNat

end

end A261534.P13991781751022195038

/-! ## A261534.P12297926296958133755

`record[(1-char[1])*A244423(n+1)]`
-/

namespace A261534.P12297926296958133755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) * A244423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261534.P12297926296958133755

/-! ## A261534.P424769915197470449

`A244423(A065475(n+1))`
-/

namespace A261534.P424769915197470449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244423 (A065475 (n + 1)).toNat

end

end A261534.P424769915197470449

/-!
# A261536: Primes p such that p^5 + 2 is also prime.

The programs for A261536, there is no canonical definition to state claims against.
-/

/-! ## A261536.P15895734186870948860

`p?[A216976(n+1)]`
-/

namespace A261536.P15895734186870948860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261536.P15895734186870948860

/-! ## A261536.P976976636338177359

`p?[record[A216976(A291769(n))]]`
-/

namespace A261536.P976976636338177359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261536.P976976636338177359

/-! ## A261536.P13636507214662001593

`p?[A216976(-xor(n, -1))]*A000034(2*n)`
-/

namespace A261536.P13636507214662001593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000034 (2 * n)

end

end A261536.P13636507214662001593

/-! ## A261536.P96414177131257670

`p?[record[A216976(A052938(n))]]`
-/

namespace A261536.P96414177131257670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261536.P96414177131257670

/-! ## A261536.P8074662725513199011

`p?[A000034(n)*A216976(A052938(n))]`
-/

namespace A261536.P8074662725513199011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A216976 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261536.P8074662725513199011

/-! ## A261536.P10266559500209470529

`∩[A003627(n+1), A216976(n+1)]`
-/

namespace A261536.P10266559500209470529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261536.P10266559500209470529

/-! ## A261536.P11333976794659726151

`∩[A007528(n+1), A216976(n+1)]`
-/

namespace A261536.P11333976794659726151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261536.P11333976794659726151

/-! ## A261536.P4797625386099845252

`∩[A045309(n+1), A216976(n+1)]`
-/

namespace A261536.P4797625386099845252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261536.P4797625386099845252

/-! ## A261536.P18378776652301083094

`∩[A045410(n+1), A216976(n+1)]`
-/

namespace A261536.P18378776652301083094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261536.P18378776652301083094

/-! ## A261536.P2914533078631854021

`∩[A056955(n+1), A216976(n+1)]`
-/

namespace A261536.P2914533078631854021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261536.P2914533078631854021

/-! ## A261536.P17324063526772720463

`∩[A049596(n+1), A216976(n+1)]`
-/

namespace A261536.P17324063526772720463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261536.P17324063526772720463

/-! ## A261536.P70775926261378791

`∩[A164319(n+1), A216976(n+1)]`
-/

namespace A261536.P70775926261378791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261536.P70775926261378791

/-! ## A261536.P11214430405463608932

`∩[A040087(n+1), A216976(n+1)]`
-/

namespace A261536.P11214430405463608932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261536.P11214430405463608932

/-! ## A261536.P12385171217033390400

`∩[A040028(n+1), A216976(n+1)]`
-/

namespace A261536.P12385171217033390400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261536.P12385171217033390400

/-! ## A261536.P2868429974491391035

`∩[A040036(n+1), A216976(n+1)]`
-/

namespace A261536.P2868429974491391035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261536.P2868429974491391035

/-! ## A261536.P9403032684335034788

`∩[A040044(n+1), A216976(n+1)]`
-/

namespace A261536.P9403032684335034788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261536.P9403032684335034788

/-! ## A261536.P18201633874016115862

`∩[A040046(n+1), A216976(n+1)]`
-/

namespace A261536.P18201633874016115862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261536.P18201633874016115862

/-! ## A261536.P18117260718240929490

`∩[A040049(n+1), A216976(n+1)]`
-/

namespace A261536.P18117260718240929490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261536.P18117260718240929490

/-! ## A261536.P13442569090235712268

`∩[A040054(n+1), A216976(n+1)]`
-/

namespace A261536.P13442569090235712268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261536.P13442569090235712268

/-! ## A261536.P4695710954748733266

`∩[A040060(n+1), A216976(n+1)]`
-/

namespace A261536.P4695710954748733266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261536.P4695710954748733266

/-!
# A261537: Primes p such that p^7 + 2 is also prime.

The programs for A261537, there is no canonical definition to state claims against.
-/

/-! ## A261537.P7635961618061865841

`p?[A216980(n+1)]`
-/

namespace A261537.P7635961618061865841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261537.P7635961618061865841

/-! ## A261537.P18250109194818871006

`or(1, p?[A216980(-xor(n, -1))])`
-/

namespace A261537.P18250109194818871006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A261537.P18250109194818871006

/-! ## A261537.P3313716186427902392

`∩[A003627(n+1), A216980(n+1)]`
-/

namespace A261537.P3313716186427902392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P3313716186427902392

/-! ## A261537.P1484719720837602301

`∩[A007528(n+1), A216980(n+1)]`
-/

namespace A261537.P1484719720837602301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P1484719720837602301

/-! ## A261537.P14250924726448340417

`∩[A045309(n+1), A216980(n+1)]`
-/

namespace A261537.P14250924726448340417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P14250924726448340417

/-! ## A261537.P7403246576329111750

`∩[A045410(n+1), A216980(n+1)]`
-/

namespace A261537.P7403246576329111750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P7403246576329111750

/-! ## A261537.P13554066534021853877

`∩[A056955(n+1), A216980(n+1)]`
-/

namespace A261537.P13554066534021853877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P13554066534021853877

/-! ## A261537.P12726782967868985642

`∩[A049596(n+1), A216980(n+1)]`
-/

namespace A261537.P12726782967868985642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P12726782967868985642

/-! ## A261537.P1814170775644241424

`∩[A040028(n+1), A216980(n+1)]`
-/

namespace A261537.P1814170775644241424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P1814170775644241424

/-! ## A261537.P9011246576792544873

`∩[A040036(n+1), A216980(n+1)]`
-/

namespace A261537.P9011246576792544873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P9011246576792544873

/-! ## A261537.P12469890345559274740

`∩[A040044(n+1), A216980(n+1)]`
-/

namespace A261537.P12469890345559274740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P12469890345559274740

/-! ## A261537.P13082567823327830545

`∩[A040046(n+1), A216980(n+1)]`
-/

namespace A261537.P13082567823327830545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P13082567823327830545

/-! ## A261537.P3160618378651409660

`∩[A040049(n+1), A216980(n+1)]`
-/

namespace A261537.P3160618378651409660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P3160618378651409660

/-! ## A261537.P342666525457345763

`∩[A040054(n+1), A216980(n+1)]`
-/

namespace A261537.P342666525457345763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P342666525457345763

/-! ## A261537.P3287493345425863024

`∩[A040060(n+1), A216980(n+1)]`
-/

namespace A261537.P3287493345425863024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P3287493345425863024

/-! ## A261537.P7605505701362854717

`∩[A040062(n+1), A216980(n+1)]`
-/

namespace A261537.P7605505701362854717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P7605505701362854717

/-! ## A261537.P16614335909189513680

`∩[A040065(n+1), A216980(n+1)]`
-/

namespace A261537.P16614335909189513680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P16614335909189513680

/-! ## A261537.P7740144503081586201

`∩[A040078(n+1), A216980(n+1)]`
-/

namespace A261537.P7740144503081586201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P7740144503081586201

/-! ## A261537.P18441671954051742498

`∩[A040083(n+1), A216980(n+1)]`
-/

namespace A261537.P18441671954051742498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P18441671954051742498

/-! ## A261537.P13231348164156863845

`∩[A040085(n+1), A216980(n+1)]`
-/

namespace A261537.P13231348164156863845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261537.P13231348164156863845

/-!
# A261538: Primes p such that p^9 + 2 is also prime.

The programs for A261538, there is no canonical definition to state claims against.
-/

/-! ## A261538.P5142307426848201806

`A164333(A048574(n+2))-2`
-/

namespace A261538.P5142307426848201806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164333 (A048574 (n + 2)).toNat - 2

end

end A261538.P5142307426848201806

/-!
# A261539: Numbers m such that (4^m + 5) / 3 is prime.

The programs for A261539, there is no canonical definition to state claims against.
-/

/-! ## A261539.P8383905031170649139

`A273009(n+1)/2`
-/

namespace A261539.P8383905031170649139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273009 (n + 1) : ℚ) / 2

end

end A261539.P8383905031170649139

/-! ## A261539.P6942986401435869825

`(A023105(n)*A273009(n+1))%A153643(n)`
-/

namespace A261539.P6942986401435869825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023105 n * A273009 (n + 1)) (A153643 n)

end

end A261539.P6942986401435869825

/-! ## A261539.P18188313881397707261

`A014682(A273009(n+1))`
-/

namespace A261539.P18188313881397707261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A273009 (n + 1)).toNat

end

end A261539.P18188313881397707261

/-! ## A261539.P598554647879356224

`A328399(A273009(n+1))-A152271(2*n)`
-/

namespace A261539.P598554647879356224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A273009 (n + 1)).toNat - A152271 (2 * n)

end

end A261539.P598554647879356224

/-! ## A261539.P5038047912442920314

`A004524(A273009(n+1)+1)`
-/

namespace A261539.P5038047912442920314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A273009 (n + 1) + 1).toNat

end

end A261539.P5038047912442920314

/-!
# A261540: a(n) = n^7 + 7*n^5 + 14*n^3 + 7*n.

The programs for A261540, the canonical program `A261540.P18299143614068835142` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261540 has offset 0).

The definition of A261540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7+7*n^5+14*n^3+7*n` (program `A261540.P18299143614068835142`, by `A261540.P18299143614068835142.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261540.P18299143614068835142

`n^7+7*n^5+14*n^3+7*n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A261540

/-- `n^7+7*n^5+14*n^3+7*n` -/
def P18299143614068835142.Spec : Prop :=
  ∀ n, (P18299143614068835142.a n : ℤ) = A261540 n

theorem P18299143614068835142.correct : P18299143614068835142.Spec := by
  intro n
  simp only [A261540]

end A261540

/-! ## A261540.P3943175236050199487

`Δ[A244730(A152947(n+1))-C(n, 2)]`
-/

namespace A261540.P3943175236050199487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244730 (A152947 (n + 1)).toNat - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261540.P3943175236050199487

namespace A261540

/-- `Δ[A244730(A152947(n+1))-C(n, 2)]` -/
def P3943175236050199487.Spec : Prop :=
  ∀ n, P3943175236050199487.a n = A261540 n

end A261540

/-! ## A261540.P4609969564691606220

`Δ[A140153((1-n)²+n)]`
-/

namespace A261540.P4609969564691606220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140153 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261540.P4609969564691606220

namespace A261540

/-- `Δ[A140153((1-n)²+n)]` -/
def P4609969564691606220.Spec : Prop :=
  ∀ n, P4609969564691606220.a n = A261540 n

end A261540

/-! ## A261540.P18411714049706347254

`lcm(n, A117938(A000124(n+6)+7))`
-/

namespace A261540.P18411714049706347254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A117938 (A000124 (n + 6) + 7).toNat)

end

end A261540.P18411714049706347254

namespace A261540

/-- `lcm(n, A117938(A000124(n+6)+7))` -/
def P18411714049706347254.Spec : Prop :=
  ∀ n, (P18411714049706347254.a n : ℤ) = A261540 n

end A261540

/-!
# A261542: Integers k such that k^2 + 1 = 2*p where p and p+2 are twin primes.

The programs for A261542, there is no canonical definition to state claims against.
-/

/-! ## A261542.P10358044855921793826

`∩[A002731(n+1), A242333(n+1)]`
-/

namespace A261542.P10358044855921793826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261542.P10358044855921793826

/-! ## A261542.P5827474180939921740

`eq[1, A353464(A105343(n))]`
-/

namespace A261542.P5827474180939921740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A105343 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261542.P5827474180939921740

/-! ## A261542.P1856633301556035164

`eq[1, A353463(A080476(n+1)-n)]`
-/

namespace A261542.P1856633301556035164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353463 (A080476 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261542.P1856633301556035164

/-!
# A261543: Numbers of the form (prime(k) + Fibonacci(k))/2.

The programs for A261543, there is no canonical definition to state claims against.
-/

/-! ## A261543.P6709379832939760856

`A004397(A001651(n+2))/2`
-/

namespace A261543.P6709379832939760856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004397 (A001651 (n + 2)).toNat : ℚ) / 2

end

end A261543.P6709379832939760856

/-! ## A261543.P7911647986027121703

`A004397(A110654(3*n)+2)/2`
-/

namespace A261543.P7911647986027121703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004397 (A110654 (3 * n) + 2).toNat : ℚ) / 2

end

end A261543.P7911647986027121703

/-! ## A261543.P3412112755018720161

`record[A273943(A004397(n+1))]`
-/

namespace A261543.P3412112755018720161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A004397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261543.P3412112755018720161

/-! ## A261543.P15865532017420851963

`record[A273943(A000040(n+1)+A000045(n+1))]`
-/

namespace A261543.P15865532017420851963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A000040 (n + 1) + A000045 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261543.P15865532017420851963

/-! ## A261543.P1963783407124190592

`record[A273943(A008578(n+2)+A000045(n+1))]`
-/

namespace A261543.P1963783407124190592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A008578 (n + 2) + A000045 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261543.P1963783407124190592

/-!
# A261544: a(n) = Sum_{k=0..n} 1000^k.

The programs for A261544, the canonical program `A261544.P14146871336465072696` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261544 has offset 0).

The definition of A261544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261544.P14146871336465072696

`(1000^(n+1)-1)/999`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A261544

/-- `(1000^(n+1)-1)/999` -/
def P14146871336465072696.Spec : Prop :=
  ∀ n, P14146871336465072696.a n = (A261544 n : ℚ)

end A261544

/-! ## A261544.P12797055559417805807

`1+a(n-1)*1000` with `a(0)=1`
-/

namespace A261544.P12797055559417805807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (n - 1) * 1000

end

end A261544.P12797055559417805807

namespace A261544

/-- `1+a(n-1)*1000` -/
def P12797055559417805807.Spec : Prop :=
  ∀ n, (P12797055559417805807.a n : ℤ) = A261544 n

end A261544

/-! ## A261544.P11297331585870913486

`A033146(3*n)`
-/

namespace A261544.P11297331585870913486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033146 (3 * n + 1)

end

end A261544.P11297331585870913486

namespace A261544

/-- `A033146(3*n)` -/
def P11297331585870913486.Spec : Prop :=
  ∀ n, P11297331585870913486.a n = A261544 n

end A261544

/-! ## A261544.P5994663019528450857

`∑[A000533(3*n)]-n`
-/

namespace A261544.P5994663019528450857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A261544.P5994663019528450857

namespace A261544

/-- `∑[A000533(3*n)]-n` -/
def P5994663019528450857.Spec : Prop :=
  ∀ n, P5994663019528450857.a n = A261544 n

end A261544

/-! ## A261544.P5995227647752286917

`or(1, ∑[A178501(3*n+1)])`
-/

namespace A261544.P5995227647752286917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261544.P5995227647752286917

namespace A261544

/-- `or(1, ∑[A178501(3*n+1)])` -/
def P5995227647752286917.Spec : Prop :=
  ∀ n, P5995227647752286917.a n = A261544 n

end A261544

/-!
# A261547: The 3 X 3 X ... X 3 dots problem (3, n times): minimal number of straight lines (connected at their endpoints) required to pass through 3^n dots arranged in a 3 X 3 X ... X 3 grid.

The programs for A261547, the canonical program `A261547.P10609432847933636692` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261547 has offset 0).

The definition of A261547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261547.P10609432847933636692

`1+3*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A261547

/-- `1+3*a(n-1)` -/
def P10609432847933636692.Spec : Prop :=
  ∀ n, (P10609432847933636692.a n : ℤ) = A261547 n

theorem P10609432847933636692.correct : P10609432847933636692.Spec := by
  intro n
  simp only [A261547]

end A261547

/-! ## A261547.P16620628296128294052

`lcm(3, a(n-1))+1` with `a(0)=1, a(1)=1`
-/

namespace A261547.P16620628296128294052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lcm 3 (a (n - 1)) + 1

end

end A261547.P16620628296128294052

namespace A261547

/-- `lcm(3, a(n-1))+1` -/
def P16620628296128294052.Spec : Prop :=
  ∀ n, (P16620628296128294052.a n : ℤ) = A261547 n

end A261547

/-! ## A261547.P11179271749421406293

`∑[3*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A261547.P11179271749421406293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261547.P11179271749421406293

namespace A261547

/-- `∑[3*a(n-1)]` -/
def P11179271749421406293.Spec : Prop :=
  ∀ n, (P11179271749421406293.a n : ℤ) = A261547 n

end A261547

/-! ## A261547.P672377874788452218

`∑[ceil(3^(n-1))-char[1]]`
-/

namespace A261547.P672377874788452218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261547.P672377874788452218

namespace A261547

/-- `∑[ceil(3^(n-1))-char[1]]` -/
def P672377874788452218.Spec : Prop :=
  ∀ n, P672377874788452218.a n = A261547 n

end A261547

/-! ## A261547.P15622309471462398492

`∑[floor(3^(n-1))]+floor(acot(n))`
-/

namespace A261547.P15622309471462398492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A261547.P15622309471462398492

namespace A261547

/-- `∑[floor(3^(n-1))]+floor(acot(n))` -/
def P15622309471462398492.Spec : Prop :=
  ∀ n, P15622309471462398492.a n = A261547 n

end A261547

/-! ## A261547.P11498982489220669644

`∑[floor(3^(n-1))]^floor(atan(n))`
-/

namespace A261547.P11498982489220669644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A261547.P11498982489220669644

namespace A261547

/-- `∑[floor(3^(n-1))]^floor(atan(n))` -/
def P11498982489220669644.Spec : Prop :=
  ∀ n, P11498982489220669644.a n = (A261547 n : ℚ)

end A261547

/-! ## A261547.P7301140441190217358

`4-3*(1-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A261547.P7301140441190217358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 - 3 * (1 - a (n - 1))

end

end A261547.P7301140441190217358

namespace A261547

/-- `4-3*(1-a(n-1))` -/
def P7301140441190217358.Spec : Prop :=
  ∀ n, P7301140441190217358.a n = A261547 n

end A261547

/-! ## A261547.P16030987808395933528

`a(n-1)+3^(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A261547.P16030987808395933528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A261547.P16030987808395933528

namespace A261547

/-- `a(n-1)+3^(n-1)` -/
def P16030987808395933528.Spec : Prop :=
  ∀ n, P16030987808395933528.a n = (A261547 n : ℚ)

end A261547

/-! ## A261547.P17358505448401589468

`a(n-1)+1+a(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A261547.P17358505448401589468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + a (n - 1))

end

end A261547.P17358505448401589468

namespace A261547

/-- `a(n-1)+1+a(n-1)+a(n-1)` -/
def P17358505448401589468.Spec : Prop :=
  ∀ n, (P17358505448401589468.a n : ℤ) = A261547 n

theorem P17358505448401589468.correct : P17358505448401589468.Spec := by
  intro n
  simp only [A261547, Nat.add_sub_cancel, A261547.P17358505448401589468.a, A261547.P10609432847933636692.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A261547

/-! ## A261547.P4034137884459148757

`1-(a(n-1)/(1/2-1)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A261547.P4034137884459148757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (a (n - 1) / ((1 : ℚ) / 2 - 1) - a (n - 1))

end

end A261547.P4034137884459148757

namespace A261547

/-- `1-(a(n-1)/(1/2-1)-a(n-1))` -/
def P4034137884459148757.Spec : Prop :=
  ∀ n, P4034137884459148757.a n = (A261547 n : ℚ)

end A261547

/-! ## A261547.P6475585310313423875

`2-floor(1-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A261547.P6475585310313423875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - (1 - a (n - 1) - a (n - 1) - a (n - 1))

end

end A261547.P6475585310313423875

namespace A261547

/-- `2-floor(1-a(n-1)-a(n-1)-a(n-1))` -/
def P6475585310313423875.Spec : Prop :=
  ∀ n, P6475585310313423875.a n = A261547 n

end A261547

/-! ## A261547.P4151065993425247204

`3*A124302(n)-2`
-/

namespace A261547.P4151065993425247204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A124302 n - 2

end

end A261547.P4151065993425247204

namespace A261547

/-- `3*A124302(n)-2` -/
def P4151065993425247204.Spec : Prop :=
  ∀ n, P4151065993425247204.a n = A261547 n

end A261547

/-! ## A261547.P528263012504008836

`A003462(floor(acot(n)+n))`
-/

namespace A261547.P528263012504008836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A261547.P528263012504008836

namespace A261547

/-- `A003462(floor(acot(n)+n))` -/
def P528263012504008836.Spec : Prop :=
  ∀ n, P528263012504008836.a n = A261547 n

end A261547

/-! ## A261547.P11827599335461641488

`A007051(n)-ceil(sin(n)²)`
-/

namespace A261547.P11827599335461641488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A261547.P11827599335461641488

namespace A261547

/-- `A007051(n)-ceil(sin(n)²)` -/
def P11827599335461641488.Spec : Prop :=
  ∀ n, P11827599335461641488.a n = A261547 n

end A261547

/-! ## A261547.P3821466093942367244

`A133494(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A261547.P3821466093942367244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A133494 n + a (n - 1)

end

end A261547.P3821466093942367244

namespace A261547

/-- `A133494(n)+a(n-1)` -/
def P3821466093942367244.Spec : Prop :=
  ∀ n, P3821466093942367244.a n = A261547 n

end A261547

/-! ## A261547.P11109746806127717845

`A140429(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A261547.P11109746806127717845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A140429 n + a (n - 1)

end

end A261547.P11109746806127717845

namespace A261547

/-- `A140429(n)+a(n-1)` -/
def P11109746806127717845.Spec : Prop :=
  ∀ n, P11109746806127717845.a n = A261547 n

end A261547

/-! ## A261547.P13972696267337269197

`A155734(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A261547.P13972696267337269197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A155734 n + a (n - 1)

end

end A261547.P13972696267337269197

namespace A261547

/-- `A155734(n)+a(n-1)` -/
def P13972696267337269197.Spec : Prop :=
  ∀ n, P13972696267337269197.a n = A261547 n

end A261547

/-! ## A261547.P3058722256634298631

`A052156(n)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A261547.P3058722256634298631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A052156 n + a (n - 2)

end

end A261547.P3058722256634298631

namespace A261547

/-- `A052156(n)+a(n-2)` -/
def P3058722256634298631.Spec : Prop :=
  ∀ n, P3058722256634298631.a n = A261547 n

end A261547

/-! ## A261547.P13373408079534373079

`A376478(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A261547.P13373408079534373079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A376478 (n + 1) + a (n - 1)

end

end A261547.P13373408079534373079

namespace A261547

/-- `A376478(n+1)+a(n-1)` -/
def P13373408079534373079.Spec : Prop :=
  ∀ n, P13373408079534373079.a n = A261547 n

end A261547

/-!
# A261548: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000101 or 00001011.

The programs for A261548, there is no canonical definition to state claims against.
-/

/-! ## A261548.P3663778570778428623

`A261553(∑[n]+1)`
-/

namespace A261548.P3663778570778428623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261548.P3663778570778428623

/-! ## A261548.P16924182449248913587

`record[A261553(n+1)]`
-/

namespace A261548.P16924182449248913587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261548.P16924182449248913587

/-! ## A261548.P12987646308086136607

`lcm(A054977(n), A261553(A000124(n)))`
-/

namespace A261548.P12987646308086136607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A261553 (A000124 n).toNat)

end

end A261548.P12987646308086136607

/-! ## A261548.P13500615002206426051

`A106400(n)²*A261553(A000124(n))`
-/

namespace A261548.P13500615002206426051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 2 * A261553 (A000124 n).toNat

end

end A261548.P13500615002206426051

/-! ## A261548.P5179599992204871342

`A261553(A000124(n))+A000038(n+1)`
-/

namespace A261548.P5179599992204871342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (A000124 n).toNat + A000038 (n + 1)

end

end A261548.P5179599992204871342

/-! ## A261548.P8175734103701849521

`A054977(n+1)*A261553(A000124(n))`
-/

namespace A261548.P8175734103701849521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A261553 (A000124 n).toNat

end

end A261548.P8175734103701849521

/-! ## A261548.P7705432956515810934

`A057427(n+1)*A261553(A000124(n))`
-/

namespace A261548.P7705432956515810934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A261553 (A000124 n).toNat

end

end A261548.P7705432956515810934

/-!
# A261549: Number of (n+2)X(2+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00001011.

The programs for A261549, there is no canonical definition to state claims against.
-/

/-! ## A261549.P7670817749677142312

`A261553(∑[n+1]+2)`
-/

namespace A261549.P7670817749677142312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A261549.P7670817749677142312

/-! ## A261549.P4735553288902631637

`lcm(A260196(n), A261553(A055998(n)+2))`
-/

namespace A261549.P4735553288902631637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A260196 n) (A261553 (A055998 n + 2).toNat)

end

end A261549.P4735553288902631637

/-! ## A261549.P15824790623429156760

`A239700(n+1)*A261553(A055998(n)+2)`
-/

namespace A261549.P15824790623429156760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239700 (n + 1) * A261553 (A055998 n + 2).toNat

end

end A261549.P15824790623429156760

/-! ## A261549.P9789477678081374806

`A261553(A055998(n)+2)+A005369(2*n+1)`
-/

namespace A261549.P9789477678081374806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (A055998 n + 2).toNat + A005369 (2 * n + 1)

end

end A261549.P9789477678081374806

/-! ## A261549.P10477042587071764137

`A001511(2*n+1)*A261553(A055998(n)+2)`
-/

namespace A261549.P10477042587071764137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A261553 (A055998 n + 2).toNat

end

end A261549.P10477042587071764137

/-! ## A261549.P305072273492512389

`A055881(2*n+1)*A261553(A055998(n)+2)`
-/

namespace A261549.P305072273492512389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (2 * n + 1) * A261553 (A055998 n + 2).toNat

end

end A261549.P305072273492512389

/-! ## A261549.P13065382662650966463

`A257993(2*n+1)*A261553(A055998(n)+2)`
-/

namespace A261549.P13065382662650966463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (2 * n + 1) * A261553 (A055998 n + 2).toNat

end

end A261549.P13065382662650966463

/-! ## A261549.P13304766703707087432

`A261553(A055998(n)+2)+A000007(A027693(n))`
-/

namespace A261549.P13304766703707087432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (A055998 n + 2).toNat + A000007 (A027693 n).toNat

end

end A261549.P13304766703707087432

/-!
# A261550: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00001011.

The programs for A261550, there is no canonical definition to state claims against.
-/

/-! ## A261550.P11233064854267629019

`A261553(A167614(n+1))`
-/

namespace A261550.P11233064854267629019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (A167614 (n + 1)).toNat

end

end A261550.P11233064854267629019

/-! ## A261550.P17693845623675921015

`A261553(A373663(n+1))`
-/

namespace A261550.P17693845623675921015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (A373663 (n + 1)).toNat

end

end A261550.P17693845623675921015

/-! ## A261550.P7582818534433484923

`A261553(A167499(n)+n)`
-/

namespace A261550.P7582818534433484923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (A167499 n + (n : ℤ)).toNat

end

end A261550.P7582818534433484923

/-! ## A261550.P1056524103697503746

`A261553(A000096(n+1)+4)`
-/

namespace A261550.P1056524103697503746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (A000096 (n + 1) + 4).toNat

end

end A261550.P1056524103697503746

/-! ## A261550.P12102496419439813591

`A261553(A034856(n+1)+5)`
-/

namespace A261550.P12102496419439813591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (A034856 (n + 1) + 5).toNat

end

end A261550.P12102496419439813591

/-! ## A261550.P9873072484376404079

`lcm(A054977(n), A261553(A046691(n)+7))`
-/

namespace A261550.P9873072484376404079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A261553 (A046691 n + 7).toNat)

end

end A261550.P9873072484376404079

/-! ## A261550.P1534074760373331951

`A261553(A000124(n+2)+2)+A010051((n+1)²)`
-/

namespace A261550.P1534074760373331951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (A000124 (n + 2) + 2).toNat + A010051 ((n + 1) ^ 2)

end

end A261550.P1534074760373331951

/-! ## A261550.P1641793094255902115

`A261553(∑[n+3]+1)`
-/

namespace A261550.P1641793094255902115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261550.P1641793094255902115

/-!
# A261551: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00001011.

The programs for A261551, there is no canonical definition to state claims against.
-/

/-! ## A261551.P60312638877021815

`A261553(∑[n+3]+7)`
-/

namespace A261551.P60312638877021815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A261551.P60312638877021815

/-! ## A261551.P1757886371258509135

`A261553(A052905(n)+9)%A224461(n+1)`
-/

namespace A261551.P1757886371258509135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261553 (A052905 n + 9).toNat) (A224461 (n + 1))

end

end A261551.P1757886371258509135

/-! ## A261551.P8579273242016297537

`lcm(A008836(n+1), A261553(A052905(n)+9))`
-/

namespace A261551.P8579273242016297537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A261553 (A052905 n + 9).toNat)

end

end A261551.P8579273242016297537

/-! ## A261551.P5335218206022554486

`A261553(A145018(n+4))%(A319440(n+1)^3)`
-/

namespace A261551.P5335218206022554486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261553 (A145018 (n + 4)).toNat) (A319440 (n + 1) ^ 3)

end

end A261551.P5335218206022554486

/-! ## A261551.P8687926031103682065

`A000203(gcd(n, n+1))*A261553(A052905(n)+9)`
-/

namespace A261551.P8687926031103682065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A261553 (A052905 n + 9).toNat

end

end A261551.P8687926031103682065

/-! ## A261551.P17178031500860645223

`A014963(A119973(n+1))*A261553(A145018(n+4))`
-/

namespace A261551.P17178031500860645223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A119973 (n + 1)).toNat * A261553 (A145018 (n + 4)).toNat

end

end A261551.P17178031500860645223

/-! ## A261551.P10894949111866747257

`A261553(A055998(n+2))+A000007(n+1)`
-/

namespace A261551.P10894949111866747257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (A055998 (n + 2)).toNat + A000007 (n + 1)

end

end A261551.P10894949111866747257

/-! ## A261551.P6046070727268788864

`A261553(A055998(n+2))+A000038(n+1)`
-/

namespace A261551.P6046070727268788864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (A055998 (n + 2)).toNat + A000038 (n + 1)

end

end A261551.P6046070727268788864

/-! ## A261551.P9458487426206915096

`A000010(-or(n, -2))*A261553(A055998(n+2))`
-/

namespace A261551.P9458487426206915096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (-Int.lor (n : ℤ) (-2)).toNat * A261553 (A055998 (n + 2)).toNat

end

end A261551.P9458487426206915096

/-!
# A261552: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00001011.

The programs for A261552, there is no canonical definition to state claims against.
-/

/-! ## A261552.P11631724798511318658

`A261553(A374005(n+1))`
-/

namespace A261552.P11631724798511318658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (A374005 (n + 1)).toNat

end

end A261552.P11631724798511318658

/-! ## A261552.P7590080795239182938

`A261553(A167499(n+3))`
-/

namespace A261552.P7590080795239182938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (A167499 (n + 3)).toNat

end

end A261552.P7590080795239182938

/-! ## A261552.P1335306039993996539

`or(char[1], A261553(A055998(n+2)+8))`
-/

namespace A261552.P1335306039993996539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A261553 (A055998 (n + 2) + 8).toNat)

end

end A261552.P1335306039993996539

/-! ## A261552.P6219785164118940086

`A261553(A008619(Δ[A026046(n+6)]))`
-/

namespace A261552.P6219785164118940086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (A008619 (f1 (n + 1) - f1 n).toNat).toNat

end

end A261552.P6219785164118940086

/-! ## A261552.P14113890424204235221

`A261553(A055998(n+2)+8)+char[A017106(n)]`
-/

namespace A261552.P14113890424204235221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017106 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (A055998 (n + 2) + 8).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A261552.P14113890424204235221

/-! ## A261552.P12926815082998458617

`char[A056943(n)]*A261553(A055998(n+2)+8)`
-/

namespace A261552.P12926815082998458617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A261553 (A055998 (n + 2) + 8).toNat

end

end A261552.P12926815082998458617

/-! ## A261552.P14585583331582165246

`char[A061579(n)]*A261553(A055998(n+2)+8)`
-/

namespace A261552.P14585583331582165246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A261553 (A055998 (n + 2) + 8).toNat

end

end A261552.P14585583331582165246

/-! ## A261552.P14204876004073286053

`A261553(A055998(n+2)+8)+A000038(n+1)`
-/

namespace A261552.P14204876004073286053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261553 (A055998 (n + 2) + 8).toNat + A000038 (n + 1)

end

end A261552.P14204876004073286053

/-! ## A261552.P17156018632617247270

`A239700(n+1)*A261553(A055998(n+2)+8)`
-/

namespace A261552.P17156018632617247270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239700 (n + 1) * A261553 (A055998 (n + 2) + 8).toNat

end

end A261552.P17156018632617247270

/-! ## A261552.P17439290235494167812

`A057979(2*n)*A261553(A055998(n+2)+8)`
-/

namespace A261552.P17439290235494167812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A261553 (A055998 (n + 2) + 8).toNat

end

end A261552.P17439290235494167812

/-!
# A261554: Triangle read by rows: T(n,m) = number of partitions of n into at least m distinct parts, n>=1, m>=1.

The programs for A261554, there is no canonical definition to state claims against.
-/

/-! ## A261554.P3655232764563685892

`floor(root(A348451(3*n+5), 5))`
-/

namespace A261554.P3655232764563685892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A348451 (3 * n + 5) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A261554.P3655232764563685892

/-! ## A261554.P8805286958816695951

`A110591(A184176(n+1))`
-/

namespace A261554.P8805286958816695951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A184176 (n + 1)).toNat

end

end A261554.P8805286958816695951

/-! ## A261554.P4840923228718571299

`A003056(A261555(n+1)%A337737(n+3))`
-/

namespace A261554.P4840923228718571299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A261555 (n + 1)) (A337737 (n + 3))).toNat

end

end A261554.P4840923228718571299

/-! ## A261554.P7295087650600552998

`A064547(ceil(abs((A026914(n)-9)/2)))`
-/

namespace A261554.P7295087650600552998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 ⌈|(A026914 n - 9 : ℚ) / 2|⌉.toNat

end

end A261554.P7295087650600552998

/-! ## A261554.P7453955123494383009

`A275024(A316622(n)+A025487(n+1))`
-/

namespace A261554.P7453955123494383009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (A316622 n + A025487 (n + 1)).toNat

end

end A261554.P7453955123494383009

/-!
# A261555: Triangle read by rows: T(n,k) is number of partitions of n having at least k distinct parts (n >= 1, k >= 1).

The programs for A261555, there is no canonical definition to state claims against.
-/

/-! ## A261555.P9947102099143364483

`A299201(A317495(n+1))`
-/

namespace A261555.P9947102099143364483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299201 (A317495 (n + 1)).toNat

end

end A261555.P9947102099143364483

/-!
# A261556: Numbers that divide the sum of the product of the factorials of their digits and the sum of the factorials of their digits.

The programs for A261556, there is no canonical definition to state claims against.
-/

/-! ## A261556.P13838176251605405030

`∑[A032564(∏[A008350(n)])]`
-/

namespace A261556.P13838176251605405030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008350 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032564 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261556.P13838176251605405030

/-! ## A261556.P4753871137893225885

`∑[A032564(∏[A019556(n)])]`
-/

namespace A261556.P4753871137893225885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019556 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032564 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261556.P4753871137893225885

/-! ## A261556.P12541576452060134596

`∑[A032564(∏[A046799(n)])]`
-/

namespace A261556.P12541576452060134596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032564 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261556.P12541576452060134596

/-! ## A261556.P6897322940700386202

`∑[A246147(A184983(n))+1]`
-/

namespace A261556.P6897322940700386202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246147 (A184983 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261556.P6897322940700386202

/-! ## A261556.P4712876180079899132

`∑[A023118(A026929(n+1)!)]`
-/

namespace A261556.P4712876180079899132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023118 (Nat.factorial (A026929 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261556.P4712876180079899132

/-!
# A261557: a(0) = a(1) = 0; for n>1, a(n) = 2*n - a(n-1) - a(n-2).

The programs for A261557, the canonical program `A261557.P6247230000579339855` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261557 has offset 0).

The definition of A261557 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n-a(n-1)-a(n-2)` (program `A261557.P6247230000579339855`, by `A261557.P6247230000579339855.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261557.P12091245778205519578

`a(n-3)+2` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A261557.P12091245778205519578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4] fun n a =>
  a (n - 3) + 2

end

end A261557.P12091245778205519578

namespace A261557

/-- `a(n-3)+2` -/
def P12091245778205519578.Spec : Prop :=
  ∀ n, (P12091245778205519578.a n : ℤ) = A261557 n

end A261557

/-! ## A261557.P6247230000579339855

`2*n-a(n-1)-a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A261557

/-- `2*n-a(n-1)-a(n-2)` -/
def P6247230000579339855.Spec : Prop :=
  ∀ n, P6247230000579339855.a n = A261557 n

theorem P6247230000579339855.correct : P6247230000579339855.Spec := by
  intro n
  simp only [A261557]

end A261557

/-! ## A261557.P2793127974792024463

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=0, a(2)=4, a(3)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A261557.P2793127974792024463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4, -2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261557.P2793127974792024463

namespace A261557

/-- `∑[floor(a(n-3))]` -/
def P2793127974792024463.Spec : Prop :=
  ∀ n, P2793127974792024463.a n = A261557 n

end A261557

/-! ## A261557.P11992525663610484766

`2-floor(-a(n-3))` with `a(0)=0, a(1)=0, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A261557.P11992525663610484766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4] fun n a =>
  2 - (-a (n - 3))

end

end A261557.P11992525663610484766

namespace A261557

/-- `2-floor(-a(n-3))` -/
def P11992525663610484766.Spec : Prop :=
  ∀ n, P11992525663610484766.a n = A261557 n

end A261557

/-! ## A261557.P1603327827494161439

`2-ceil(-a(n-3))` with `a(0)=0, a(1)=0, a(2)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A261557.P1603327827494161439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4] fun n a =>
  2 - (-a (n - 3))

end

end A261557.P1603327827494161439

namespace A261557

/-- `2-ceil(-a(n-3))` -/
def P1603327827494161439.Spec : Prop :=
  ∀ n, P1603327827494161439.a n = A261557 n

end A261557

/-! ## A261557.P1217714349794848613

`2-round(-a(n-3))` with `a(0)=0, a(1)=0, a(2)=4`

`round` is left out, it is the identity on integers.
-/

namespace A261557.P1217714349794848613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4] fun n a =>
  2 - (-a (n - 3))

end

end A261557.P1217714349794848613

namespace A261557

/-- `2-round(-a(n-3))` -/
def P1217714349794848613.Spec : Prop :=
  ∀ n, P1217714349794848613.a n = A261557 n

end A261557

/-! ## A261557.P16450601886810297925

`-xor(-2, a(n-3))` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A261557.P16450601886810297925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4] fun n a =>
  -Int.xor (-2) (a (n - 3))

end

end A261557.P16450601886810297925

namespace A261557

/-- `-xor(-2, a(n-3))` -/
def P16450601886810297925.Spec : Prop :=
  ∀ n, P16450601886810297925.a n = A261557 n

end A261557

/-! ## A261557.P7148691352451965016

`∑[(4-a(n-1)²)%5]` with `a(0)=0, a(1)=0`
-/

namespace A261557.P7148691352451965016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  Int.tmod (4 - f1 (n - 1) ^ 2) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261557.P7148691352451965016

namespace A261557

/-- `∑[(4-a(n-1)²)%5]` -/
def P7148691352451965016.Spec : Prop :=
  ∀ n, P7148691352451965016.a n = A261557 n

end A261557

/-! ## A261557.P12366404978140165417

`4-(4/2-a(n-3))` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A261557.P12366404978140165417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 4] fun n a =>
  4 - ((4 : ℚ) / 2 - a (n - 3))

end

end A261557.P12366404978140165417

namespace A261557

/-- `4-(4/2-a(n-3))` -/
def P12366404978140165417.Spec : Prop :=
  ∀ n, P12366404978140165417.a n = (A261557 n : ℚ)

end A261557

/-! ## A261557.P17576687067337326617

`3-(1-a(n-3))%n` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A261557.P17576687067337326617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4] fun n a =>
  3 - Int.tmod (1 - a (n - 3)) (n : ℤ)

end

end A261557.P17576687067337326617

namespace A261557

/-- `3-(1-a(n-3))%n` -/
def P17576687067337326617.Spec : Prop :=
  ∀ n, P17576687067337326617.a n = A261557 n

end A261557

/-! ## A261557.P9417166117486141350

`∑[gcd(5, a(n-1))-gcd(3, n)]` with `a(0)=0, a(1)=0`
-/

namespace A261557.P9417166117486141350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (Int.gcd 5 (f1 (n - 1)) : ℤ) - (Nat.gcd 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261557.P9417166117486141350

namespace A261557

/-- `∑[gcd(5, a(n-1))-gcd(3, n)]` -/
def P9417166117486141350.Spec : Prop :=
  ∀ n, P9417166117486141350.a n = A261557 n

end A261557

/-! ## A261557.P17501516019836761996

`Δ[2*n-(2-a(n-3))]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A261557.P17501516019836761996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  (2 * n : ℤ) - (2 - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261557.P17501516019836761996

namespace A261557

/-- `Δ[2*n-(2-a(n-3))]` -/
def P17501516019836761996.Spec : Prop :=
  ∀ n, P17501516019836761996.a n = A261557 n

end A261557

/-! ## A261557.P3384864969790105561

`∑[2-a(n-1)-a(n-2)]` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A261557.P3384864969790105561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4] fun n f1 =>
  2 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261557.P3384864969790105561

namespace A261557

/-- `∑[2-a(n-1)-a(n-2)]` -/
def P3384864969790105561.Spec : Prop :=
  ∀ n, P3384864969790105561.a n = A261557 n

end A261557

/-! ## A261557.P2728604792914628249

`n-(a(n-1)-(n-a(n-2)))` with `a(0)=0, a(1)=0`
-/

namespace A261557.P2728604792914628249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n : ℤ) - (a (n - 1) - ((n : ℤ) - a (n - 2)))

end

end A261557.P2728604792914628249

namespace A261557

/-- `n-(a(n-1)-(n-a(n-2)))` -/
def P2728604792914628249.Spec : Prop :=
  ∀ n, P2728604792914628249.a n = A261557 n

theorem P2728604792914628249.correct : P2728604792914628249.Spec := by
  intro n
  simp only [A261557, Nat.add_sub_cancel, A261557.P2728604792914628249.a, A261557.P6247230000579339855.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A261557

/-! ## A261557.P17922518523199913779

`2*(∑[A101000(n)]-n)`
-/

namespace A261557.P17922518523199913779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A261557.P17922518523199913779

namespace A261557

/-- `2*(∑[A101000(n)]-n)` -/
def P17922518523199913779.Spec : Prop :=
  ∀ n, P17922518523199913779.a n = A261557 n

end A261557

/-! ## A261557.P15296332165408718954

`2*(1-A133310(n)+n)`
-/

namespace A261557.P15296332165408718954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - A133310 n + (n : ℤ))

end

end A261557.P15296332165408718954

namespace A261557

/-- `2*(1-A133310(n)+n)` -/
def P15296332165408718954.Spec : Prop :=
  ∀ n, P15296332165408718954.a n = A261557 n

end A261557

/-! ## A261557.P6860815232606938801

`A267460(a(n-3))` with `a(0)=0, a(1)=0, a(2)=4, a(3)=2, a(4)=2`
-/

namespace A261557.P6860815232606938801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4, 2, 2] fun n a =>
  A267460 (a (n - 3)).toNat

end

end A261557.P6860815232606938801

namespace A261557

/-- `A267460(a(n-3))` -/
def P6860815232606938801.Spec : Prop :=
  ∀ n, P6860815232606938801.a n = A261557 n

end A261557

/-! ## A261557.P110326406688880639

`ceil((2*n+1)/3)-A061347(n+1)`
-/

namespace A261557.P110326406688880639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) / 3⌉ - A061347 (n + 1)

end

end A261557.P110326406688880639

namespace A261557

/-- `ceil((2*n+1)/3)-A061347(n+1)` -/
def P110326406688880639.Spec : Prop :=
  ∀ n, P110326406688880639.a n = A261557 n

end A261557

/-! ## A261557.P9264207411930862991

`A061800(n)-A063942(n)`
-/

namespace A261557.P9264207411930862991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 n - A063942 n

end

end A261557.P9264207411930862991

namespace A261557

/-- `A061800(n)-A063942(n)` -/
def P9264207411930862991.Spec : Prop :=
  ∀ n, P9264207411930862991.a n = A261557 n

end A261557

/-!
# A261558: Euclid numbers (A006862) of the form 3*(i*i + i*j + j*j + i + j) + 1 where i and j are integers.

The programs for A261558, there is no canonical definition to state claims against.
-/

/-! ## A261558.P8638810500691285959

`A375615(A167460(n+1))+1`
-/

namespace A261558.P8638810500691285959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375615 (A167460 (n + 1)).toNat + 1

end

end A261558.P8638810500691285959

/-! ## A261558.P9339900136708986656

`A006862(A065975(n)+1+n)`
-/

namespace A261558.P9339900136708986656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 (A065975 n + 1 + (n : ℤ)).toNat

end

end A261558.P9339900136708986656

/-!
# A261559: Denominator of Product_{k=1..n} (2k/(2k+1))^((-1)^A000120(k)).

The programs for A261559, there is no canonical definition to state claims against.
-/

/-! ## A261559.P14382123041422519887

`A320166(A377194(n)+A351957(3*(n+1)))`
-/

namespace A261559.P14382123041422519887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320166 (A377194 n + A351957 (3 * (n + 1))).toNat

end

end A261559.P14382123041422519887

/-!
# A261560: Semiprimes sp such that (sum of digits of (sp)) + (product of digits of (sp)) is also semiprime.

The programs for A261560, the canonical program `A261560.P15660056080494388851` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261560 has offset 1).

The definition of A261560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2605 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261560.P16308883153721919795

`filter[A260523(n+1), A064911(#)]`
-/

namespace A261560.P16308883153721919795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A261560.P16308883153721919795

namespace A261560

/-- `filter[A260523(n+1), A064911(#)]` -/
def P16308883153721919795.Spec : Prop :=
  ∀ n, P16308883153721919795.a n = A261560 (n + 1)

end A261560

/-! ## A261560.P12572118456302578958

`∩[A001358(n+1), A260523(n+1)]`
-/

namespace A261560.P12572118456302578958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261560.P12572118456302578958

namespace A261560

/-- `∩[A001358(n+1), A260523(n+1)]` -/
def P12572118456302578958.Spec : Prop :=
  ∀ n, (P12572118456302578958.a n : ℤ) = A261560 (n + 1)

end A261560

/-! ## A261560.P4015769083512333648

`∩[A176540(n+1), A260523(n+1)]`
-/

namespace A261560.P4015769083512333648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261560.P4015769083512333648

namespace A261560

/-- `∩[A176540(n+1), A260523(n+1)]` -/
def P4015769083512333648.Spec : Prop :=
  ∀ n, (P4015769083512333648.a n : ℤ) = A261560 (n + 1)

end A261560

/-! ## A261560.P1385905392893586012

`∩[A186621(n+1)+1, A260523(n+1)]`
-/

namespace A261560.P1385905392893586012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261560.P1385905392893586012

namespace A261560

/-- `∩[A186621(n+1)+1, A260523(n+1)]` -/
def P1385905392893586012.Spec : Prop :=
  ∀ n, (P1385905392893586012.a n : ℤ) = A261560 (n + 1)

end A261560

/-! ## A261560.P837175554275581674

`∩[A088707(n+1)-1, A260523(n+1)]`
-/

namespace A261560.P837175554275581674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261560.P837175554275581674

namespace A261560

/-- `∩[A088707(n+1)-1, A260523(n+1)]` -/
def P837175554275581674.Spec : Prop :=
  ∀ n, (P837175554275581674.a n : ℤ) = A261560 (n + 1)

end A261560

/-! ## A261560.P8264565913522891024

`∩[A175708(n+1)+1+n, A260523(n+1)]`
-/

namespace A261560.P8264565913522891024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261560.P8264565913522891024

namespace A261560

/-- `∩[A175708(n+1)+1+n, A260523(n+1)]` -/
def P8264565913522891024.Spec : Prop :=
  ∀ n, (P8264565913522891024.a n : ℤ) = A261560 (n + 1)

end A261560

/-! ## A261560.P15660056080494388851

`∩[A260523(n+4), A100493(n+1)-(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A261560

/-- `∩[A260523(n+4), A100493(n+1)-(n+1)]` -/
def P15660056080494388851.Spec : Prop :=
  ∀ n, (P15660056080494388851.a n : ℤ) = A261560 (n + 1)

theorem P15660056080494388851.correct : P15660056080494388851.Spec := by
  intro n
  simp only [A261560, Nat.add_sub_cancel]

end A261560

/-! ## A261560.P6347443858416371684

`∩[A260523(n+1), A065516(n)+a(n-1)]` with `a(0)=4`
-/

namespace A261560.P6347443858416371684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261560.P6347443858416371684

namespace A261560

/-- `∩[A260523(n+1), A065516(n)+a(n-1)]` -/
def P6347443858416371684.Spec : Prop :=
  ∀ n, (P6347443858416371684.a n : ℤ) = A261560 (n + 1)

end A261560

/-! ## A261560.P14671159058658595026

`∩[A260523(n+1), A118717(n)-a(n-1)]` with `a(0)=4`
-/

namespace A261560.P14671159058658595026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A118717 n - f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261560.P14671159058658595026

namespace A261560

/-- `∩[A260523(n+1), A118717(n)-a(n-1)]` -/
def P14671159058658595026.Spec : Prop :=
  ∀ n, (P14671159058658595026.a n : ℤ) = A261560 (n + 1)

end A261560

/-! ## A261560.P17989102120538680426

`∩[A000040(n+1)-A065870(n+1), A260523(n+1)]`
-/

namespace A261560.P17989102120538680426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A065870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261560.P17989102120538680426

namespace A261560

/-- `∩[A000040(n+1)-A065870(n+1), A260523(n+1)]` -/
def P17989102120538680426.Spec : Prop :=
  ∀ n, (P17989102120538680426.a n : ℤ) = A261560 (n + 1)

end A261560

/-!
# A261561: Expansion of Product_{k>=1} (1/(1 - 2*x^k))^k.

The programs for A261561, there is no canonical definition to state claims against.
-/

/-! ## A261561.P7490114970445666825

`A002487(3^floor(5*n/3))`
-/

namespace A261561.P7490114970445666825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊5 * ((n : ℚ) / 3)⌋ : ℤ))).toNat

end

end A261561.P7490114970445666825

/-! ## A261561.P10276409953571472954

`A242313(A008999(n))`
-/

namespace A261561.P10276409953571472954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242313 (A008999 n).toNat

end

end A261561.P10276409953571472954

/-!
# A261562: Expansion of Product_{k>=1} (1 + 2*x^k)^k.

The programs for A261562, there is no canonical definition to state claims against.
-/

/-! ## A261562.P4639686315971499958

`record[A316723(A002260(Δ[n²]²))]`
-/

namespace A261562.P4639686315971499958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A002260 (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261562.P4639686315971499958

/-! ## A261562.P18177068999469469686

`or(2*n, A018469(A184155(n+1)))`
-/

namespace A261562.P18177068999469469686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (A018469 (A184155 (n + 1)).toNat)

end

end A261562.P18177068999469469686

/-! ## A261562.P17654944553568360071

`or(record[A191411(n+1)], A208901(n+1))`
-/

namespace A261562.P17654944553568360071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A208901 (n + 1))

end

end A261562.P17654944553568360071

/-!
# A261563: Expansion of Product_{k>=1} ((1 + 2*x^k)/(1 - 2*x^k))^k.

The programs for A261563, there is no canonical definition to state claims against.
-/

/-! ## A261563.P5482071533388404819

`A265955(n)-A151851(A247743(n))`
-/

namespace A261563.P5482071533388404819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265955 n - A151851 (A247743 n).toNat

end

end A261563.P5482071533388404819

/-! ## A261563.P1601147507622760699

`A265955(n)-A213370(A265952(n))`
-/

namespace A261563.P1601147507622760699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265955 n - A213370 (A265952 n).toNat

end

end A261563.P1601147507622760699

/-!
# A261565: Expansion of Product_{k>=1} (1/(1 - 3*x^k))^k.

The programs for A261565, there is no canonical definition to state claims against.
-/

/-! ## A261565.P1473674618901018689

`A329697(A000364(n))+A322199(n)`
-/

namespace A261565.P1473674618901018689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A000364 n).toNat + A322199 n

end

end A261565.P1473674618901018689

/-! ## A261565.P3911464031504382873

`A269172(A322199(n)+A296515(n))`
-/

namespace A261565.P3911464031504382873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A322199 n + A296515 n).toNat

end

end A261565.P3911464031504382873

/-!
# A261568: Expansion of Product_{k>=1} (1 + 4*x^k).

The programs for A261568, there is no canonical definition to state claims against.
-/

/-! ## A261568.P15473901599448449379

`A286957(∑[n+5]+5)`
-/

namespace A261568.P15473901599448449379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286957 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A261568.P15473901599448449379

/-! ## A261568.P14302506687779875230

`abs(1-A286957(A052905(n+2)))+1`
-/

namespace A261568.P14302506687779875230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A286957 (A052905 (n + 2)).toNat| + 1

end

end A261568.P14302506687779875230

/-! ## A261568.P14419506873446044074

`A286957(A052905(n+2))%A291462(n)`
-/

namespace A261568.P14419506873446044074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286957 (A052905 (n + 2)).toNat) (A291462 n)

end

end A261568.P14419506873446044074

/-! ## A261568.P14192997466831217267

`xor(A000007(n+8), A286957(A052905(n+2)))`
-/

namespace A261568.P14192997466831217267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (n + 8)) (A286957 (A052905 (n + 2)).toNat)

end

end A261568.P14192997466831217267

/-! ## A261568.P1982760403398677815

`(1-A010060(n))!*A286957(A052905(n+2))`
-/

namespace A261568.P1982760403398677815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (1 - A010060 n).toNat : ℤ) * A286957 (A052905 (n + 2)).toNat

end

end A261568.P1982760403398677815

/-! ## A261568.P13967744040429027324

`A014963(6*(n+1))*A286957(A052905(n+2))`
-/

namespace A261568.P13967744040429027324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A286957 (A052905 (n + 2)).toNat

end

end A261568.P13967744040429027324

/-! ## A261568.P2866860250753564466

`A002217(A000040(n+1))*A286957(A052905(n+2))`
-/

namespace A261568.P2866860250753564466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (A000040 (n + 1)).toNat * A286957 (A052905 (n + 2)).toNat

end

end A261568.P2866860250753564466

/-! ## A261568.P9866565563519726486

`A286957(A052905(n+2))^A001222(A027746(n+1))`
-/

namespace A261568.P9866565563519726486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286957 (A052905 (n + 2)).toNat : ℚ) ^ (A001222 (A027746 (n + 1)).toNat : ℤ)

end

end A261568.P9866565563519726486

/-!
# A261569: Expansion of Product_{k>=1} (1 + 5*x^k).

The programs for A261569, there is no canonical definition to state claims against.
-/

/-! ## A261569.P6053863107657899155

`A286957(A055999(n+3))`
-/

namespace A261569.P6053863107657899155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286957 (A055999 (n + 3)).toNat

end

end A261569.P6053863107657899155

/-! ## A261569.P12455492753920031409

`A286957(A027379(n+4)-3)`
-/

namespace A261569.P12455492753920031409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286957 (A027379 (n + 4) - 3).toNat

end

end A261569.P12455492753920031409

/-! ## A261569.P13641835056859847698

`A286957(eq[6, A004736(n+1)])`
-/

namespace A261569.P13641835056859847698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261569.P13641835056859847698

/-! ## A261569.P4417921334141995566

`A286957(A000124(n+5)+n-1)`
-/

namespace A261569.P4417921334141995566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286957 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A261569.P4417921334141995566

/-! ## A261569.P7209630605957302399

`A286957(2*n+A155212(n)+13)`
-/

namespace A261569.P7209630605957302399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286957 ((2 * n : ℤ) + (A155212 n + 13)).toNat

end

end A261569.P7209630605957302399

/-! ## A261569.P1530238302486094901

`A286957(2*n+A027379(n+2)+8)`
-/

namespace A261569.P1530238302486094901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286957 ((2 * n : ℤ) + (A027379 (n + 2) + 8)).toNat

end

end A261569.P1530238302486094901

/-!
# A261573: A variation of Recamán's sequence A005132: Define a(0) = 0, and for n > 0, a(n) = a(n-1) - (n+2) if positive and not already in the sequence, otherwise a(n) = a(n-1) + (n+2).

The programs for A261573, there is no canonical definition to state claims against.
-/

/-! ## A261573.P10575598189221142670

`A066199(n+1)-1`
-/

namespace A261573.P10575598189221142670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066199 (n + 1) - 1

end

end A261573.P10575598189221142670

/-! ## A261573.P8889080874371291430

`A112865(Δ[floor(2*ϕ*n)])+A066199(n+1)`
-/

namespace A261573.P8889080874371291430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.goldenRatio * (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112865 (f1 (n + 1) - f1 n).toNat + A066199 (n + 1)

end

end A261573.P8889080874371291430

/-! ## A261573.P13286243547894633148

`A174400(Δ[floor(2*ϕ*n)])+A066199(n+1)`
-/

namespace A261573.P13286243547894633148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.goldenRatio * (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174400 (f1 (n + 1) - f1 n).toNat + A066199 (n + 1)

end

end A261573.P13286243547894633148

/-! ## A261573.P9768037974607734021

`A321460(A000032(C(2, n+2)))+A066199(n+1)`
-/

namespace A261573.P9768037974607734021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321460 (A000032 (Nat.choose 2 (n + 2))).toNat + A066199 (n + 1)

end

end A261573.P9768037974607734021

/-! ## A261573.P7024071698657094127

`A066203(n+3)-3`
-/

namespace A261573.P7024071698657094127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066203 (n + 3) - 3

end

end A261573.P7024071698657094127

/-! ## A261573.P16408826386073982896

`A168361(2*(n+2))+A066199(n+1)`
-/

namespace A261573.P16408826386073982896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (2 * (n + 2)) + A066199 (n + 1)

end

end A261573.P16408826386073982896

/-! ## A261573.P16375403035853484386

`A023443(A066199(n+1))`
-/

namespace A261573.P16375403035853484386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A066199 (n + 1)).toNat

end

end A261573.P16375403035853484386

/-! ## A261573.P306211977902026371

`A219977(A016813(n))+A066199(n+1)`
-/

namespace A261573.P306211977902026371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A016813 n).toNat + A066199 (n + 1)

end

end A261573.P306211977902026371

/-! ## A261573.P15731476003537223178

`A325939(A031924(n+1))+A066199(n+1)`
-/

namespace A261573.P15731476003537223178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (A031924 (n + 1)).toNat + A066199 (n + 1)

end

end A261573.P15731476003537223178

/-! ## A261573.P3644551470445123167

`A325939(A165349(n+1))+A066199(n+1)`
-/

namespace A261573.P3644551470445123167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (A165349 (n + 1)).toNat + A066199 (n + 1)

end

end A261573.P3644551470445123167

/-! ## A261573.P15133497833072378784

`A066201(A046691(n+2))-1`
-/

namespace A261573.P15133497833072378784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066201 (A046691 (n + 2)).toNat - 1

end

end A261573.P15133497833072378784

/-!
# A261574: a(n) = n*(n^2 + 3)*(n^6 + 6*n^4 + 9*n^2 + 3).

The programs for A261574, the canonical program `A261574.P2763468518911571786` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261574 has offset 0).

The definition of A261574 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n²+3)*(n^6+6*n^4+9*n²+3)` (program `A261574.P2763468518911571786`, by `A261574.P2763468518911571786.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261574.P2763468518911571786

`n*(n²+3)*(n^6+6*n^4+9*n²+3)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A261574

/-- `n*(n²+3)*(n^6+6*n^4+9*n²+3)` -/
def P2763468518911571786.Spec : Prop :=
  ∀ n, (P2763468518911571786.a n : ℤ) = A261574 n

theorem P2763468518911571786.correct : P2763468518911571786.Spec := by
  intro n
  simp only [A261574]

end A261574

/-! ## A261574.P17657220583309110498

`A271636(A229183(n))/2`
-/

namespace A261574.P17657220583309110498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271636 (A229183 n).toNat : ℚ) / 2

end

end A261574.P17657220583309110498

namespace A261574

/-- `A271636(A229183(n))/2` -/
def P17657220583309110498.Spec : Prop :=
  ∀ n, P17657220583309110498.a n = (A261574 n : ℚ)

end A261574

/-! ## A261574.P9227965921252234357

`A079908(n*(n^gcd(2, a(n-1))+3))` with `a(0)=0`
-/

namespace A261574.P9227965921252234357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A079908 (n * (n ^ Int.gcd 2 (a (n - 1)) + 3))

end

end A261574.P9227965921252234357

namespace A261574

/-- `A079908(n*(n^gcd(2, a(n-1))+3))` -/
def P9227965921252234357.Spec : Prop :=
  ∀ n, P9227965921252234357.a n = A261574 n

end A261574

/-! ## A261574.P11009247706490277140

`A061989(xor(1, n*(∑[2*n]-(n-3)))+2)`
-/

namespace A261574.P11009247706490277140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061989 (Int.xor 1 ((n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 3))) + 2).toNat

end

end A261574.P11009247706490277140

namespace A261574

/-- `A061989(xor(1, n*(∑[2*n]-(n-3)))+2)` -/
def P11009247706490277140.Spec : Prop :=
  ∀ n, P11009247706490277140.a n = A261574 n

end A261574

/-! ## A261574.P17023803990731529693

`lcm(n, A079908(n^(3%(n+1)²)+3*n))`
-/

namespace A261574.P17023803990731529693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A079908 (n ^ (3 % (n + 1) ^ 2) + 3 * n))

end

end A261574.P17023803990731529693

namespace A261574

/-- `lcm(n, A079908(n^(3%(n+1)²)+3*n))` -/
def P17023803990731529693.Spec : Prop :=
  ∀ n, (P17023803990731529693.a n : ℤ) = A261574 n

end A261574

/-!
# A261575: Table of Fibonacci numbers in base-60 representation: row n contains the sexagesimal digits of A000045(n) in reversed order.

The programs for A261575, there is no canonical definition to state claims against.
-/

/-! ## A261575.P10016868769326458049

`A000045(n)%(A161409(3*n)+10)`
-/

namespace A261575.P10016868769326458049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) (A161409 (3 * n) + 10)

end

end A261575.P10016868769326458049

/-! ## A261575.P18190470480946669257

`A261606(n)^A014802(A014378(n))`
-/

namespace A261575.P18190470480946669257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261606 n : ℚ) ^ (A014802 (A014378 n).toNat : ℤ)

end

end A261575.P18190470480946669257

/-! ## A261575.P4328688743858455577

`A261606(C(n, A014802(A288549(n))))`
-/

namespace A261575.P4328688743858455577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261606 (Nat.choose n (A014802 (A288549 (n + 10)).toNat).toNat)

end

end A261575.P4328688743858455577

/-! ## A261575.P2739454702624511255

`A261598(A056961(n)^A147128(n+1))`
-/

namespace A261575.P2739454702624511255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261598 (SequenceMachineLib.roundAway ((A056961 n : ℚ) ^ (A147128 (n + 1) : ℤ))).toNat

end

end A261575.P2739454702624511255

/-! ## A261575.P3589248175763385711

`A261606(n)^A136630(A217153(n+1))`
-/

namespace A261575.P3589248175763385711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261606 n : ℚ) ^ (A136630 (A217153 (n + 1)).toNat : ℤ)

end

end A261575.P3589248175763385711

/-!
# A261576: Expansion of 3 * b(q^2) * c(q^2) / c(q)^2 in powers of q where b(), c() are cubic AGM theta functions.

The programs for A261576, there is no canonical definition to state claims against.
-/

/-! ## A261576.P1912775300762242123

`A261326(2*n)`
-/

namespace A261576.P1912775300762242123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261326 (2 * n)

end

end A261576.P1912775300762242123

/-! ## A261576.P16305403951526505040

`A128636(n)/A213265(n)*A262930(n)`
-/

namespace A261576.P16305403951526505040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128636 n : ℚ) / (A213265 n : ℚ) * (A262930 n : ℚ)

end

end A261576.P16305403951526505040

/-! ## A261576.P8282360516214988938

`A398619(2*n)`
-/

namespace A261576.P8282360516214988938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398619 (2 * n)

end

end A261576.P8282360516214988938

/-! ## A261576.P13249075717943002158

`xor(1, xor(1, A261326(n+n)))`
-/

namespace A261576.P13249075717943002158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A261326 (n + n)))

end

end A261576.P13249075717943002158

/-! ## A261576.P13165186118148163724

`A261326(n+n)+char[A235693(n+1)]`
-/

namespace A261576.P13165186118148163724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235693 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261326 (n + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A261576.P13165186118148163724

/-! ## A261576.P1800032595922107142

`A217771(2*n)/(2-A132954(2*n))`
-/

namespace A261576.P1800032595922107142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217771 (2 * n) : ℚ) / (2 - A132954 (2 * n) : ℚ)

end

end A261576.P1800032595922107142

/-! ## A261576.P17942233698496825120

`A261321(2*n)/(2-A132954(2*n))`
-/

namespace A261576.P17942233698496825120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261321 (2 * n) : ℚ) / (2 - A132954 (2 * n) : ℚ)

end

end A261576.P17942233698496825120

/-! ## A261576.P2820601332178226122

`2/A132954(2*n+1)*A262930(2*n)`
-/

namespace A261576.P2820601332178226122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A132954 (2 * n + 1) : ℚ) * (A262930 (2 * n) : ℚ)

end

end A261576.P2820601332178226122

/-! ## A261576.P7768108528114491795

`2/A132954(2*n+1)*A293387(2*n)`
-/

namespace A261576.P7768108528114491795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A132954 (2 * n + 1) : ℚ) * (A293387 (2 * n) : ℚ)

end

end A261576.P7768108528114491795

/-! ## A261576.P269868425216970679

`A217771(2*n)/A132954(4*n)`
-/

namespace A261576.P269868425216970679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217771 (2 * n) : ℚ) / (A132954 (4 * n) : ℚ)

end

end A261576.P269868425216970679

/-! ## A261576.P2779051353332812262

`A261321(2*n)/A132954(4*n)`
-/

namespace A261576.P2779051353332812262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261321 (2 * n) : ℚ) / (A132954 (4 * n) : ℚ)

end

end A261576.P2779051353332812262

/-! ## A261576.P18276984519324376438

`A261326(n+n)^A287847(∑[n])`
-/

namespace A261576.P18276984519324376438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261326 (n + n) : ℚ) ^ (A287847 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A261576.P18276984519324376438

/-! ## A261576.P3270076044600839801

`A261326(n+n)%A158312((n+1)²)`
-/

namespace A261576.P3270076044600839801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261326 (n + n)) (A158312 ((n + 1) ^ 2))

end

end A261576.P3270076044600839801

/-!
# A261577: Numbers m such that (4^m + 11) / 3 is prime.

The programs for A261577, there is no canonical definition to state claims against.
-/

/-! ## A261577.P10310445521842147515

`∑[A175184(∑[A181541(n)])]`
-/

namespace A261577.P10310445521842147515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181541 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175184 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261577.P10310445521842147515

/-! ## A261577.P14931199253009262257

`∑[A005885(Δ[A150350(n)])]`
-/

namespace A261577.P14931199253009262257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150350 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005885 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261577.P14931199253009262257

/-!
# A261580: Primes p such that A214028(p) is odd.

The programs for A261580, there is no canonical definition to state claims against.
-/

/-! ## A261580.P11873519300044494299

`p?[A309585(n+1)]`
-/

namespace A261580.P11873519300044494299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261580.P11873519300044494299

/-! ## A261580.P15718282201912183961

`filter[A309585(n+1), A010051(#)]`
-/

namespace A261580.P15718282201912183961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A261580.P15718282201912183961

/-! ## A261580.P13011456517272262764

`filter[A309585(n+1), A323152(#)]`
-/

namespace A261580.P13011456517272262764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A261580.P13011456517272262764

/-! ## A261580.P17980138011855688878

`filter[A309585(n+1), A323153(#)]`
-/

namespace A261580.P17980138011855688878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A261580.P17980138011855688878

/-! ## A261580.P16934178145806704111

`filter[A309585(n+1), A327861(#)]`
-/

namespace A261580.P16934178145806704111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A261580.P16934178145806704111

/-! ## A261580.P18117071313253748918

`filter[A309585(n+1), A327866(#)]`
-/

namespace A261580.P18117071313253748918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327866 (f1 j).toNat = 1) n)

end

end A261580.P18117071313253748918

/-! ## A261580.P3074196878862242837

`filter[A309585(n+1), A340371(#)]`
-/

namespace A261580.P3074196878862242837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A261580.P3074196878862242837

/-! ## A261580.P15322999482606018926

`filter[A309585(n+1), A351957(#)]`
-/

namespace A261580.P15322999482606018926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A261580.P15322999482606018926

/-! ## A261580.P3967324907263700476

`filter[A309585(n+1), A353670(#)]`
-/

namespace A261580.P3967324907263700476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A261580.P3967324907263700476

/-! ## A261580.P6048914674694081857

`record[A006530(2*A309585(n+1))]`
-/

namespace A261580.P6048914674694081857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A309585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261580.P6048914674694081857

/-! ## A261580.P7868259602618871422

`record[A006530(A309585(A008619(n)))]`
-/

namespace A261580.P7868259602618871422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A309585 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261580.P7868259602618871422

/-! ## A261580.P15157931120791051975

`A006530(record[A001414(A309585(n+1))])`
-/

namespace A261580.P15157931120791051975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A309585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261580.P15157931120791051975

/-! ## A261580.P2252860890029244652

`A020639(record[A001414(A309585(n+1))])`
-/

namespace A261580.P2252860890029244652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A309585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261580.P2252860890029244652

/-! ## A261580.P12863980708920353508

`∩[A002144(n+1), A309585(n+1)]`
-/

namespace A261580.P12863980708920353508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261580.P12863980708920353508

/-! ## A261580.P2907303669830180237

`∩[A002313(n+1), A309585(n+1)]`
-/

namespace A261580.P2907303669830180237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261580.P2907303669830180237

/-! ## A261580.P13343075101161195920

`∩[A055025(n+1), A309585(n+1)]`
-/

namespace A261580.P13343075101161195920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261580.P13343075101161195920

/-! ## A261580.P12868654235216033628

`∩[A172480(n+1), A309585(n+1)]`
-/

namespace A261580.P12868654235216033628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261580.P12868654235216033628

/-! ## A261580.P15117924208368309860

`∩[A049092(n+1), A309585(n+1)]`
-/

namespace A261580.P15117924208368309860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261580.P15117924208368309860

/-! ## A261580.P4640303942026777183

`∩[A045352(n+1), A309585(n+1)]`
-/

namespace A261580.P4640303942026777183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261580.P4640303942026777183

/-!
# A261581: Primes such that z(p) is not divisible by 4 where z(n) is A214028(n), the smallest k such that n divides A000129(k), the k-th Pell number.

The programs for A261581, there is no canonical definition to state claims against.
-/

/-! ## A261581.P13254800737830756867

`p?[comp[A309581(n+1)]]`
-/

namespace A261581.P13254800737830756867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309581 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A261581.P13254800737830756867

/-! ## A261581.P18309018519174960561

`p?[comp[A309584(n+1)]]`
-/

namespace A261581.P18309018519174960561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A261581.P18309018519174960561

/-! ## A261581.P11173217849931020387

`p?[(n+1)*A214027(n+1)%3]`
-/

namespace A261581.P11173217849931020387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A214027 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261581.P11173217849931020387

/-! ## A261581.P7962893827938873741

`p?[A174571(A309583(n+1))]`
-/

namespace A261581.P7962893827938873741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A309583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261581.P7962893827938873741

/-! ## A261581.P16150835667244722027

`p?[A188134(A309583(n+3))]`
-/

namespace A261581.P16150835667244722027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (A309583 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261581.P16150835667244722027

/-! ## A261581.P2006964334672944311

`∪[A261580(n+1), A309580(n+1)]`
-/

namespace A261581.P2006964334672944311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A261581.P2006964334672944311

/-! ## A261581.P15993856674985026862

`p?[(n+1)*A000035(A298210(n+1))]`
-/

namespace A261581.P15993856674985026862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000035 (A298210 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261581.P15993856674985026862

/-! ## A261581.P15641582188704540297

`p?[A214027(n+1)%3*A004442(n)]`
-/

namespace A261581.P15641582188704540297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214027 (n + 1)) 3 * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261581.P15641582188704540297

/-! ## A261581.P1716807480968202418

`p?[A038608(n)+A000035(A298210(n+1))]`
-/

namespace A261581.P1716807480968202418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n + A000035 (A298210 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261581.P1716807480968202418

/-!
# A261582: Expansion of Product_{k>=1} 1/(1 + 3*x^k).

The programs for A261582, there is no canonical definition to state claims against.
-/

/-! ## A261582.P7902516474440867406

`A292133(∑[n+3]+n+3)`
-/

namespace A261582.P7902516474440867406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292133 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A261582.P7902516474440867406

/-! ## A261582.P8482991373985766363

`A351024(2^n)`
-/

namespace A261582.P8482991373985766363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351024 (2 ^ n)

end

end A261582.P8482991373985766363

/-! ## A261582.P8547064466036456465

`A355478(n)+A351024(A000079(n))`
-/

namespace A261582.P8547064466036456465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355478 n + A351024 (A000079 n).toNat

end

end A261582.P8547064466036456465

/-! ## A261582.P17963377554048026187

`A294775(n)*A351024(A000079(n))`
-/

namespace A261582.P17963377554048026187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 n * A351024 (A000079 n).toNat

end

end A261582.P17963377554048026187

/-! ## A261582.P18167889981794615644

`A351024(A000079(n))%A288087(n)`
-/

namespace A261582.P18167889981794615644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351024 (A000079 n).toNat) (A288087 (n + 10))

end

end A261582.P18167889981794615644

/-!
# A261584: Expansion of Product_{k>=1} (1 + 2*x^k)/(1 - 2*x^k).

The programs for A261584, there is no canonical definition to state claims against.
-/

/-! ## A261584.P1951369317864957209

`A316964(Δ[A173380(n)])-3`
-/

namespace A261584.P1951369317864957209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316964 (f1 (n + 1) - f1 n).toNat - 3

end

end A261584.P1951369317864957209

/-! ## A261584.P6838531232073068953

`A008574(A348808(n)+A045883(n))`
-/

namespace A261584.P6838531232073068953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A348808 n + A045883 n).toNat

end

end A261584.P6838531232073068953

/-! ## A261584.P17062800627174674450

`A102301(n)-A384709(A137957(n))`
-/

namespace A261584.P17062800627174674450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102301 n - A384709 (A137957 n).toNat

end

end A261584.P17062800627174674450

/-!
# A261585: Number of sexagesimal digits of Fibonacci numbers in base-60 representation.

The programs for A261585, the canonical program `A261585.P15148700531395716474` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261585 has offset 0).

The definition of A261585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261585.P15148700531395716474

`A204551(A011862(n+4)-n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A261585

/-- `A204551(A011862(n+4)-n)` -/
def P15148700531395716474.Spec : Prop :=
  ∀ n, P15148700531395716474.a n = A261585 n

theorem P15148700531395716474.correct : P15148700531395716474.Spec := by
  intro n
  simp only [A261585]

end A261585

/-! ## A261585.P11202035561953339829

`A003056(∑[A047201(n+2)]+1)-(n+1)`
-/

namespace A261585.P11202035561953339829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - (n + 1 : ℤ)

end

end A261585.P11202035561953339829

namespace A261585

/-- `A003056(∑[A047201(n+2)]+1)-(n+1)` -/
def P11202035561953339829.Spec : Prop :=
  ∀ n, P11202035561953339829.a n = A261585 n

end A261585

/-! ## A261585.P1366921843191311429

`round(A172474(A194139(n))/A188375(3*n+1))`
-/

namespace A261585.P1366921843191311429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A172474 (A194139 n).toNat : ℚ) / (A188375 (3 * n + 1) : ℚ))

end

end A261585.P1366921843191311429

namespace A261585

/-- `round(A172474(A194139(n))/A188375(3*n+1))` -/
def P1366921843191311429.Spec : Prop :=
  ∀ n, P1366921843191311429.a n = A261585 n

end A261585

/-! ## A261585.P10178776213733934644

`ceil(A346693(n+1)/6)`
-/

namespace A261585.P10178776213733934644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A346693 (n + 1) : ℚ) / 6⌉

end

end A261585.P10178776213733934644

namespace A261585

/-- `ceil(A346693(n+1)/6)` -/
def P10178776213733934644.Spec : Prop :=
  ∀ n, P10178776213733934644.a n = A261585 n

end A261585

/-! ## A261585.P9782659468803643953

`round(∑[A246046(n+1)]/A246394(n))`
-/

namespace A261585.P9782659468803643953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A246394 n : ℚ))

end

end A261585.P9782659468803643953

namespace A261585

/-- `round(∑[A246046(n+1)]/A246394(n))` -/
def P9782659468803643953.Spec : Prop :=
  ∀ n, P9782659468803643953.a n = A261585 n

end A261585

/-! ## A261585.P9818993938011780412

`A034888(A004526(A034888(n)%A084593(n+1)))`
-/

namespace A261585.P9818993938011780412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A004526 (Int.tmod (A034888 n) (A084593 (n + 1))).toNat).toNat

end

end A261585.P9818993938011780412

namespace A261585

/-- `A034888(A004526(A034888(n)%A084593(n+1)))` -/
def P9818993938011780412.Spec : Prop :=
  ∀ n, P9818993938011780412.a n = A261585 n

end A261585

/-!
# A261586: Odd numbers n such that the sum of the binary digits of n equals the sum of the binary digits of n^2.

The programs for A261586, there is no canonical definition to state claims against.
-/

/-! ## A261586.P12181153810267141706

`2*A212315(n+1)+1`
-/

namespace A261586.P12181153810267141706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212315 (n + 1) + 1

end

end A261586.P12181153810267141706

/-! ## A261586.P10445844179138757256

`A077436(eq[1, gcd(2, A077436(n+1))]+1)`
-/

namespace A261586.P10445844179138757256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A077436 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A261586.P10445844179138757256

/-! ## A261586.P5071608572251545392

`record[A000265(A077436(n+2))]`
-/

namespace A261586.P5071608572251545392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A077436 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261586.P5071608572251545392

/-! ## A261586.P5917986316695511050

`∩[2*n+1, A077436(n+1)]`
-/

namespace A261586.P5917986316695511050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261586.P5917986316695511050

/-! ## A261586.P18043045906595386569

`∩[A077436(n+1), A305635(n+1)]`
-/

namespace A261586.P18043045906595386569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261586.P18043045906595386569

/-! ## A261586.P15133208034777146341

`record[A093178(A077436(n+1))]`
-/

namespace A261586.P15133208034777146341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A077436 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261586.P15133208034777146341

/-! ## A261586.P13451360137630031141

`∩[A077436(n+1), A060747(n)]`
-/

namespace A261586.P13451360137630031141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261586.P13451360137630031141

/-! ## A261586.P14839780540958075888

`eq[A027656(n), A232243(n)]`
-/

namespace A261586.P14839780540958075888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261586.P14839780540958075888

/-! ## A261586.P189070448385103667

`eq[A035363(n), A232243(n)]`
-/

namespace A261586.P189070448385103667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261586.P189070448385103667

/-! ## A261586.P12338470249720665419

`eq[A035385(n), A232243(n)]`
-/

namespace A261586.P12338470249720665419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261586.P12338470249720665419

/-! ## A261586.P12305936754361244889

`eq[A035457(n), A232243(n)]`
-/

namespace A261586.P12305936754361244889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261586.P12305936754361244889

/-! ## A261586.P1990435040468068300

`record[A026741(A077436(n+3))]`
-/

namespace A261586.P1990435040468068300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A077436 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261586.P1990435040468068300

/-! ## A261586.P13292019380858727841

`record[A106609(A077436(n+5))]`
-/

namespace A261586.P13292019380858727841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A077436 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261586.P13292019380858727841

/-! ## A261586.P5024792587337584999

`filter[A077436(n+1), A000035(#)]`
-/

namespace A261586.P5024792587337584999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A261586.P5024792587337584999

/-! ## A261586.P13962443360131198475

`eq[A003966(n+1), A232243(n)]`
-/

namespace A261586.P13962443360131198475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261586.P13962443360131198475

/-! ## A261586.P5555961964211897247

`eq[A058026(n+1), A232243(n)]`
-/

namespace A261586.P5555961964211897247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261586.P5555961964211897247

/-! ## A261586.P4120410549312239921

`eq[A069828(n+1), A232243(n)]`
-/

namespace A261586.P4120410549312239921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261586.P4120410549312239921

/-! ## A261586.P16173171582061977240

`eq[A104477(n+1), A232243(n)]`
-/

namespace A261586.P16173171582061977240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261586.P16173171582061977240

/-! ## A261586.P14330767103020984288

`eq[A167294(n+1), A232243(n)]`
-/

namespace A261586.P14330767103020984288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261586.P14330767103020984288

/-!
# A261587: Sum of sexagesimal digits of Fibonacci numbers in base-60 representation.

The programs for A261587, there is no canonical definition to state claims against.
-/

/-! ## A261587.P5644283160282513841

`A055643(A000045(n))%99`
-/

namespace A261587.P5644283160282513841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055643 (A000045 n).toNat) 99

end

end A261587.P5644283160282513841

/-! ## A261587.P16574585159540534146

`A008588(A022093(n))%59`
-/

namespace A261587.P16574585159540534146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008588 (A022093 n).toNat) 59

end

end A261587.P16574585159540534146

/-! ## A261587.P3544255202390408291

`A318471(A000079(n))%59`
-/

namespace A261587.P3544255202390408291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318471 (A000079 n).toNat) 59

end

end A261587.P3544255202390408291

/-! ## A261587.P14702342764006443638

`A000045(A126013(A126011(n)))%59`
-/

namespace A261587.P14702342764006443638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A126013 (A126011 n).toNat).toNat) 59

end

end A261587.P14702342764006443638

/-! ## A261587.P11605193051303428666

`A000045(A131364(A131367(n)))%59`
-/

namespace A261587.P11605193051303428666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A131364 (A131367 n).toNat).toNat) 59

end

end A261587.P11605193051303428666

/-!
# A261588: 5-Modular Catalan Numbers C_{n,5}.

The programs for A261588, there is no canonical definition to state claims against.
-/

/-! ## A261588.P5421980610923588160

`A295679(∑[n+5]+5)`
-/

namespace A261588.P5421980610923588160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A261588.P5421980610923588160

/-! ## A261588.P14547168726777494773

`or(char[1], A295679(A000217(n+5)-5))`
-/

namespace A261588.P14547168726777494773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A295679 (A000217 (n + 5) - 5).toNat)

end

end A261588.P14547168726777494773

/-! ## A261588.P13859239424271564977

`A295679(A046691(n+3)-1)%A134490(n)`
-/

namespace A261588.P13859239424271564977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295679 (A046691 (n + 3) - 1).toNat) (A134490 n)

end

end A261588.P13859239424271564977

/-! ## A261588.P17771393186162481358

`A295679(A046691(n+3)-1)+A000035(2*n)`
-/

namespace A261588.P17771393186162481358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (A046691 (n + 3) - 1).toNat + A000035 (2 * n)

end

end A261588.P17771393186162481358

/-! ## A261588.P1663428281078575220

`A295679(A000217(n+5)-5)+A000007(n+1)`
-/

namespace A261588.P1663428281078575220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (A000217 (n + 5) - 5).toNat + A000007 (n + 1)

end

end A261588.P1663428281078575220

/-!
# A261589: 6-Modular Catalan Numbers C_{n,6}.

The programs for A261589, there is no canonical definition to state claims against.
-/

/-! ## A261589.P17348203081535397525

`A295679(Δ[A023551(n+1)])`
-/

namespace A261589.P17348203081535397525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (f1 (n + 1) - f1 n).toNat

end

end A261589.P17348203081535397525

/-! ## A261589.P5518416469774416063

`A295679(Δ[A026054(n+3)])`
-/

namespace A261589.P5518416469774416063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (f1 (n + 1) - f1 n).toNat

end

end A261589.P5518416469774416063

/-! ## A261589.P4182737490663906692

`A295679(A000217(n+6)-6)`
-/

namespace A261589.P4182737490663906692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (A000217 (n + 6) - 6).toNat

end

end A261589.P4182737490663906692

/-! ## A261589.P15191334828254273395

`A295679(A000124(n+5)+n-1)`
-/

namespace A261589.P15191334828254273395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (A000124 (n + 5) + (n : ℤ) - 1).toNat

end

end A261589.P15191334828254273395

/-! ## A261589.P14732375303857985214

`A295679(2*n+A000124(n+4)+4)`
-/

namespace A261589.P14732375303857985214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 ((2 * n : ℤ) + (A000124 (n + 4) + 4)).toNat

end

end A261589.P14732375303857985214

/-!
# A261590: 7-Modular Catalan Numbers C_{n,7}.

The programs for A261590, there is no canonical definition to state claims against.
-/

/-! ## A261590.P13532159919095001353

`A295679(A055999(n+4)-1)`
-/

namespace A261590.P13532159919095001353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (A055999 (n + 4) - 1).toNat

end

end A261590.P13532159919095001353

/-! ## A261590.P16126445444270758922

`A295679(A052905(n+4)-2)`
-/

namespace A261590.P16126445444270758922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (A052905 (n + 4) - 2).toNat

end

end A261590.P16126445444270758922

/-! ## A261590.P9832760283133206878

`A295679(A000217(n+7)-7)`
-/

namespace A261590.P9832760283133206878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (A000217 (n + 7) - 7).toNat

end

end A261590.P9832760283133206878

/-! ## A261590.P15023748066382657528

`A295679(Δ[A023551(n+2)]-1)`
-/

namespace A261590.P15023748066382657528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (f1 (n + 1) - f1 n - 1).toNat

end

end A261590.P15023748066382657528

/-! ## A261590.P16763137608902019741

`A295679(Δ[A026054(n+4)]-1)`
-/

namespace A261590.P16763137608902019741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (f1 (n + 1) - f1 n - 1).toNat

end

end A261590.P16763137608902019741

/-!
# A261591: 8-Modular Catalan Numbers C_{n,8}.

The programs for A261591, there is no canonical definition to state claims against.
-/

/-! ## A261591.P13001568071544867747

`A295679(eq[7, A025581(n)])`
-/

namespace A261591.P13001568071544867747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261591.P13001568071544867747

/-! ## A261591.P12954106285573840601

`A295679(A000217(n+8)-8)`
-/

namespace A261591.P12954106285573840601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (A000217 (n + 8) - 8).toNat

end

end A261591.P12954106285573840601

/-! ## A261591.P16487958634117381427

`A295679(eq[8, A004736(n+1)])`
-/

namespace A261591.P16487958634117381427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261591.P16487958634117381427

/-! ## A261591.P13155586690289672775

`A295679(A000096(n+6)+n+1)`
-/

namespace A261591.P13155586690289672775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (A000096 (n + 6) + (n + 1 : ℤ)).toNat

end

end A261591.P13155586690289672775

/-! ## A261591.P16997977315806847360

`A295679(2*n+A000217(n+6)+7)`
-/

namespace A261591.P16997977315806847360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A261591.P16997977315806847360

/-!
# A261592: 9-Modular Catalan Numbers C_{n,9}.

The programs for A261592, there is no canonical definition to state claims against.
-/

/-! ## A261592.P7038801450100905131

`A295679(A027379(n+7)-6)`
-/

namespace A261592.P7038801450100905131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (A027379 (n + 7) - 6).toNat

end

end A261592.P7038801450100905131

/-! ## A261592.P14729375883176200161

`A295679(A055998(n+7)-6)`
-/

namespace A261592.P14729375883176200161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (A055998 (n + 7) - 6).toNat

end

end A261592.P14729375883176200161

/-! ## A261592.P16070168151540912406

`A295679(A000217(n+9)-9)`
-/

namespace A261592.P16070168151540912406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (A000217 (n + 9) - 9).toNat

end

end A261592.P16070168151540912406

/-! ## A261592.P3279147809302253910

`A295679(A112353(n+1)+n)`
-/

namespace A261592.P3279147809302253910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (A112353 (n + 1) + (n : ℤ)).toNat

end

end A261592.P3279147809302253910

/-! ## A261592.P9037468702544782706

`A295679(A000096(n+7)+n+1)`
-/

namespace A261592.P9037468702544782706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A261592.P9037468702544782706

/-!
# A261593: Odd numbers n such that the sum of the binary digits of n and n^2 both equal 12.

The programs for A261593, there is no canonical definition to state claims against.
-/

/-! ## A261593.P17037310770878589751

`∩[A038463(n+1), A261586(n+1)]`
-/

namespace A261593.P17037310770878589751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261593.P17037310770878589751

/-!
# A261594: G.f.: sqrt( Sum_{n>=0} x^n * Sum_{k=0..n} C(n,k) * 2^(k*(k-1)) ).

The programs for A261594, there is no canonical definition to state claims against.
-/

/-! ## A261594.P2598955288153598807

`A061383(A333739(n))`
-/

namespace A261594.P2598955288153598807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (A333739 n).toNat

end

end A261594.P2598955288153598807

/-!
# A261598: Product of sexagesimal digits of Fibonacci numbers in base-60 representation.

The programs for A261598, there is no canonical definition to state claims against.
-/

/-! ## A261598.P349793160587557617

`A261575(A130663(n)+A062279(n))`
-/

namespace A261598.P349793160587557617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261575 (A130663 n + A062279 n).toNat

end

end A261598.P349793160587557617

/-! ## A261598.P9466718208911954456

`A261606(n)+A210716(A294609(n))`
-/

namespace A261598.P9466718208911954456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261606 n + A210716 (A294609 n).toNat

end

end A261598.P9466718208911954456

/-! ## A261598.P3072410168915152764

`A067059(A004896(n+1))*A261606(n)`
-/

namespace A261598.P3072410168915152764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (A004896 (n + 1)).toNat * A261606 n

end

end A261598.P3072410168915152764

/-! ## A261598.P12003221325805205421

`A067059(A004907(n+1))*A261606(n)`
-/

namespace A261598.P12003221325805205421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (A004907 (n + 1)).toNat * A261606 n

end

end A261598.P12003221325805205421

/-! ## A261598.P10442650979851915587

`A003842(A293894(n+1))*A261606(n)`
-/

namespace A261598.P10442650979851915587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A293894 (n + 1)).toNat * A261606 n

end

end A261598.P10442650979851915587

/-!
# A261599: Number of primitive (aperiodic, or Lyndon) necklaces with n beads of unlabeled colors such that the numbers of beads per color are distinct.

The programs for A261599, there is no canonical definition to state claims against.
-/

/-! ## A261599.P12583053609777224685

`floor(A028310(A032219(n))/A028310(n))`
-/

namespace A261599.P12583053609777224685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028310 (A032219 n).toNat : ℚ) / (A028310 n : ℚ)⌋

end

end A261599.P12583053609777224685

/-! ## A261599.P12489918483063305542

`A273107(A339006(n)+A000110(n))`
-/

namespace A261599.P12489918483063305542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273107 (A339006 n + A000110 n).toNat

end

end A261599.P12489918483063305542

