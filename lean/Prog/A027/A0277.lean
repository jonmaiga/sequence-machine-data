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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
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
import Seq.B007.C001
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A027700: Numbers k such that the k-th prime has an even number of 1's in its binary expansion.

The programs for A027700, there is no canonical definition to state claims against.
-/

/-! ## A027700.P13106995351783002362

`∪[A027702(n+1), A027704(n+1)]`
-/

namespace A027700.P13106995351783002362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027700.P13106995351783002362

/-! ## A027700.P4707485562251125422

`filter[n+1, A200244(#)]`
-/

namespace A027700.P4707485562251125422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A200244 (f1 j) = 1) n)

end

end A027700.P4707485562251125422

/-! ## A027700.P11448338530811142523

`eq[1, A200244(n+1)]+1`
-/

namespace A027700.P11448338530811142523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A027700.P11448338530811142523

/-! ## A027700.P1814331826124490914

`lt[A200246(n+1), 1]+1`
-/

namespace A027700.P1814331826124490914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200246 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A027700.P1814331826124490914

/-! ## A027700.P7554559920476237040

`record[(n+1)*A200244(n+2)+1]`
-/

namespace A027700.P7554559920476237040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A200244 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027700.P7554559920476237040

/-! ## A027700.P15837394155166971699

`lt[1, A140721(A014499(n+1))]+1`
-/

namespace A027700.P15837394155166971699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140721 (A014499 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A027700.P15837394155166971699

/-! ## A027700.P932180818070627806

`A000720(A027699(n+1))`
-/

namespace A027700.P932180818070627806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A027699 (n + 1)).toNat

end

end A027700.P932180818070627806

/-! ## A027700.P12883214668915187722

`lt[A010060(A008578(n+1)), 1]`
-/

namespace A027700.P12883214668915187722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A008578 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A027700.P12883214668915187722

/-! ## A027700.P11142537509942991195

`lt[A010060(record[A020639(n+1)]), 1]`
-/

namespace A027700.P11142537509942991195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A027700.P11142537509942991195

/-! ## A027700.P15052770450477292070

`lt[A010060(A000040(n+1)), 1]+1`
-/

namespace A027700.P15052770450477292070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A000040 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A027700.P15052770450477292070

/-! ## A027700.P13749822110994601838

`lt[A023416(n)+1, A324335(A000040(n+2))]+2`
-/

namespace A027700.P13749822110994601838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324335 (A000040 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A027700.P13749822110994601838

/-! ## A027700.P7485013045712586885

`eq[1, A106400(eq[1, A074206(n)])]`
-/

namespace A027700.P7485013045712586885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027700.P7485013045712586885

/-! ## A027700.P8632859631455651070

`lt[A005590(record[A025473(n+1)]), 1]`
-/

namespace A027700.P8632859631455651070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A027700.P8632859631455651070

/-! ## A027700.P2917544901264517468

`lt[A268676(record[A006530(n+1)]), 2]`
-/

namespace A027700.P2917544901264517468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A027700.P2917544901264517468

/-! ## A027700.P13070229979119230673

`lt[2, A268727(A006093(n+1))]+1`
-/

namespace A027700.P13070229979119230673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268727 (A006093 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A027700.P13070229979119230673

/-! ## A027700.P7742014352247654430

`eq[2, A076826(eq[n, A056737(n+1)])]`
-/

namespace A027700.P7742014352247654430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027700.P7742014352247654430

/-! ## A027700.P16267092199944539962

`lt[1, A268726(lt[n, A014963(n+1)])]`
-/

namespace A027700.P16267092199944539962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A027700.P16267092199944539962

/-! ## A027700.P10279790042549215161

`A049084(2*A027699(n+1)-A027699(n+1))`
-/

namespace A027700.P10279790042549215161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A027699 (n + 1) - A027699 (n + 1)).toNat

end

end A027700.P10279790042549215161

/-! ## A027700.P8668936595899223369

`A000720(p?[A213714(2*n)])`
-/

namespace A027700.P8668936595899223369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A027700.P8668936595899223369

/-!
# A027701: Primes with even number of 1's in binary expansion such that next prime also has even number of 1's.

The programs for A027701, there is no canonical definition to state claims against.
-/

/-! ## A027701.P2774919638517534492

`A027699(eq[1, A027700(n+2)-A027700(n+1)]+1)`
-/

namespace A027701.P2774919638517534492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027700 (n + 2) - A027700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A027701.P2774919638517534492

/-! ## A027701.P13557631279523948561

`A000040(A027702(n+1))`
-/

namespace A027701.P13557631279523948561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A027702 (n + 1)).toNat

end

end A027701.P13557631279523948561

/-! ## A027701.P9447090563735817568

`A008578(A027702(n+1)+1)`
-/

namespace A027701.P9447090563735817568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A027702 (n + 1) + 1).toNat

end

end A027701.P9447090563735817568

/-! ## A027701.P12449708245282030368

`A065091(A027702(n+1)-1)`
-/

namespace A027701.P12449708245282030368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A027702 (n + 1) - 1).toNat

end

end A027701.P12449708245282030368

/-! ## A027701.P17668456744545839392

`∑{d}[A027702(n+1), A007444(#)]`
-/

namespace A027701.P17668456744545839392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A027701.P17668456744545839392

/-! ## A027701.P9495339413453388539

`A006005(A027702(n+1)%A027707(n))`
-/

namespace A027701.P9495339413453388539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.tmod (A027702 (n + 1)) (A027707 n)).toNat

end

end A027701.P9495339413453388539

/-! ## A027701.P3332762863523973220

`p?[Δ[A027700(n+1)]*A027699(n+1)]`
-/

namespace A027701.P3332762863523973220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027700 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A027699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A027701.P3332762863523973220

/-! ## A027701.P10306364673355858755

`filter[A027699(n+1), A295892(#)]`
-/

namespace A027701.P10306364673355858755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295892 (f1 j).toNat = 1) n)

end

end A027701.P10306364673355858755

/-!
# A027702: Numbers k such that the k-th prime has an even number of 1's in binary expansion and the (k+1)st prime also has an even number of 1's.

The programs for A027702, there is no canonical definition to state claims against.
-/

/-! ## A027702.P10155998262744550735

`∩[A027700(n+1)-1, A027700(n+1)]`
-/

namespace A027702.P10155998262744550735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027700 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027702.P10155998262744550735

/-! ## A027702.P14359195759107053380

`A027700(eq[1, A027700(n+2)-A027700(n+1)]+1)`
-/

namespace A027702.P14359195759107053380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027700 (n + 2) - A027700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A027702.P14359195759107053380

/-! ## A027702.P524356017261276428

`lt[A200246(A200246(n+1)+n), 1]`
-/

namespace A027702.P524356017261276428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200246 (A200246 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A027702.P524356017261276428

/-! ## A027702.P11467993395097312997

`eq[1, A200244(n-A200244(n+1)+1)]`
-/

namespace A027702.P11467993395097312997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200244 ((n : ℤ) - A200244 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027702.P11467993395097312997

/-! ## A027702.P17628552345535960605

`A000720(A027701(n+1))`
-/

namespace A027702.P17628552345535960605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A027701 (n + 1)).toNat

end

end A027702.P17628552345535960605

/-! ## A027702.P16460301893916871520

`A061395(p?[A027701(n+1)])`
-/

namespace A027702.P16460301893916871520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A027702.P16460301893916871520

/-! ## A027702.P17253190303622187933

`∑{d}[A027701(n+1), A061395(#)]`
-/

namespace A027702.P17253190303622187933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A027702.P17253190303622187933

/-! ## A027702.P13689078969551643486

`A061395(∏{p}[A027701(n+1), #])`
-/

namespace A027702.P13689078969551643486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A027702.P13689078969551643486

/-! ## A027702.P5947805291719787100

`A066328(p?[A027701(n+1)])`
-/

namespace A027702.P5947805291719787100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A027702.P5947805291719787100

/-! ## A027702.P6136130312368816793

`∑{d}[A027701(n+1), A066328(#)]`
-/

namespace A027702.P6136130312368816793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d

end

end A027702.P6136130312368816793

/-! ## A027702.P12489481326588210537

`A066328(A027701(n+1)%A031932(n+1))`
-/

namespace A027702.P12489481326588210537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (Int.tmod (A027701 (n + 1)) (A031932 (n + 1))).toNat

end

end A027702.P12489481326588210537

/-! ## A027702.P2712927668197095885

`A066328(A027701(n+1))%A158339(n+1)`
-/

namespace A027702.P2712927668197095885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066328 (A027701 (n + 1)).toNat) (A158339 (n + 1))

end

end A027702.P2712927668197095885

/-! ## A027702.P7627478275807179688

`A066328(2*A027701(n+1)-A027701(n+1))`
-/

namespace A027702.P7627478275807179688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * A027701 (n + 1) - A027701 (n + 1)).toNat

end

end A027702.P7627478275807179688

/-! ## A027702.P18424599576270541877

`A061395(2*A027701(n+1))`
-/

namespace A027702.P18424599576270541877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A027701 (n + 1)).toNat

end

end A027702.P18424599576270541877

/-! ## A027702.P6680183068768339584

`A066328(2*A027701(n+1))-1`
-/

namespace A027702.P6680183068768339584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * A027701 (n + 1)).toNat - 1

end

end A027702.P6680183068768339584

/-! ## A027702.P180201325548417963

`A056239(p?[A027701(n+1)])`
-/

namespace A027702.P180201325548417963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A027702.P180201325548417963

/-! ## A027702.P5953504782304695210

`A067004(p?[A027701(n+1)])`
-/

namespace A027702.P5953504782304695210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A027702.P5953504782304695210

/-! ## A027702.P3447377330874174335

`A003963(or(1, A027701(n+1)))`
-/

namespace A027702.P3447377330874174335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor 1 (A027701 (n + 1))).toNat

end

end A027702.P3447377330874174335

/-! ## A027702.P14597280948111958723

`A056239(or(1, A027701(n+1)))`
-/

namespace A027702.P14597280948111958723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A027701 (n + 1))).toNat

end

end A027702.P14597280948111958723

/-! ## A027702.P9321730197551742081

`∑{d}[A027701(n+1), A056239(#)]`
-/

namespace A027702.P9321730197551742081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A027702.P9321730197551742081

/-!
# A027703: Primes with even number of 1's in binary expansion such that next prime has odd number of 1's.

The programs for A027703, there is no canonical definition to state claims against.
-/

/-! ## A027703.P16121067220508379817

`A027699(∑[A027704(n+1)-A027706(n+1)])`
-/

namespace A027703.P16121067220508379817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027704 (n + 1) - A027706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027699 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027703.P16121067220508379817

/-! ## A027703.P2928990236243762317

`A000040(A027704(n+1))`
-/

namespace A027703.P2928990236243762317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A027704 (n + 1)).toNat

end

end A027703.P2928990236243762317

/-! ## A027703.P17662161113149108791

`A045344(A027704(n+1)-1)`
-/

namespace A027703.P17662161113149108791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A027704 (n + 1) - 1).toNat

end

end A027703.P17662161113149108791

/-! ## A027703.P6880824327631545485

`A065091(A027704(n+1)-1)`
-/

namespace A027703.P6880824327631545485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A027704 (n + 1) - 1).toNat

end

end A027703.P6880824327631545485

/-! ## A027703.P4057888592371426138

`∑{d}[A027704(n+1), A007444(#)]`
-/

namespace A027703.P4057888592371426138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A027703.P4057888592371426138

/-! ## A027703.P1061011092898993148

`A008864(A027704(n+1))-char[A061579(n)]`
-/

namespace A027703.P1061011092898993148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A027704 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A027703.P1061011092898993148

/-! ## A027703.P18185004013111859937

`A008864(A027704(n+1))-A000034(2*n)`
-/

namespace A027703.P18185004013111859937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A027704 (n + 1)).toNat - A000034 (2 * n)

end

end A027703.P18185004013111859937

/-! ## A027703.P8707447749240292646

`A008864(A027704(n+1))-A010215(2*n+7)`
-/

namespace A027703.P8707447749240292646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A027704 (n + 1)).toNat - A010215 (2 * n + 7)

end

end A027703.P8707447749240292646

/-! ## A027703.P10145879867021058911

`A008864(A027704(n+1))-A000027(n+1)+n`
-/

namespace A027703.P10145879867021058911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A027704 (n + 1)).toNat - A000027 (n + 1) + (n : ℤ)

end

end A027703.P10145879867021058911

/-! ## A027703.P17691542187427927934

`A008864(A027704(n+1))-A001222(A151800(n))`
-/

namespace A027703.P17691542187427927934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A027704 (n + 1)).toNat - A001222 (A151800 n).toNat

end

end A027703.P17691542187427927934

/-! ## A027703.P14478599488638525932

`A057428(A023115(n+1))+A008864(A027704(n+1))`
-/

namespace A027703.P14478599488638525932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A023115 (n + 1)).toNat + A008864 (A027704 (n + 1)).toNat

end

end A027703.P14478599488638525932

/-! ## A027703.P8900788216624906483

`A008864(A027704(n+1))-A001065(A006530(n+2))`
-/

namespace A027703.P8900788216624906483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A027704 (n + 1)).toNat - A001065 (A006530 (n + 2)).toNat

end

end A027703.P8900788216624906483

/-! ## A027703.P6765700302881206217

`A008864(A027704(n+1))-A032742(A020639(n+2))`
-/

namespace A027703.P6765700302881206217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A027704 (n + 1)).toNat - A032742 (A020639 (n + 2)).toNat

end

end A027703.P6765700302881206217

/-! ## A027703.P15095498186838518650

`A008578(A027704(n+1)+1)`
-/

namespace A027703.P15095498186838518650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A027704 (n + 1) + 1).toNat

end

end A027703.P15095498186838518650

/-! ## A027703.P4824375710146312037

`A057428(A008864(n+1))+A008864(A027704(n+1))`
-/

namespace A027703.P4824375710146312037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A008864 (n + 1)).toNat + A008864 (A027704 (n + 1)).toNat

end

end A027703.P4824375710146312037

/-! ## A027703.P428878279884574396

`filter[A027699(n+1), A295891(#)]`
-/

namespace A027703.P428878279884574396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295891 (f1 j).toNat = 1) n)

end

end A027703.P428878279884574396

/-! ## A027703.P14462171547314854878

`A008864(A027704(n+1))-A032742(A014963(33*n+2))`
-/

namespace A027703.P14462171547314854878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A027704 (n + 1)).toNat - A032742 (A014963 (33 * n + 2)).toNat

end

end A027703.P14462171547314854878

/-!
# A027704: Numbers k such that the k-th prime has an even number of 1's in its binary expansion and the (k+1)st prime has an odd number of 1's.

The programs for A027704, there is no canonical definition to state claims against.
-/

/-! ## A027704.P15427620028010229530

`A000720(A027703(n+1))`
-/

namespace A027704.P15427620028010229530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A027703 (n + 1)).toNat

end

end A027704.P15427620028010229530

/-! ## A027704.P1863926003405418134

`A061395(p?[A027703(n+1)])`
-/

namespace A027704.P1863926003405418134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A027704.P1863926003405418134

/-! ## A027704.P13400154269710549109

`A061395(lcm(2, A027703(n+1))/2)`
-/

namespace A027704.P13400154269710549109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((Int.lcm 2 (A027703 (n + 1)) : ℚ) / 2)).toNat

end

end A027704.P13400154269710549109

/-! ## A027704.P1919316637232454569

`A061395(A027703(n+1)%A082663(n+1))`
-/

namespace A027704.P1919316637232454569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A027703 (n + 1)) (A082663 (n + 1))).toNat

end

end A027704.P1919316637232454569

/-! ## A027704.P5789593665652548071

`A061395(2*A027703(n+1))`
-/

namespace A027704.P5789593665652548071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A027703 (n + 1)).toNat

end

end A027704.P5789593665652548071

/-! ## A027704.P13793172246459995451

`A061395(lcm(2, A027703(n+1)))`
-/

namespace A027704.P13793172246459995451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A027703 (n + 1)))

end

end A027704.P13793172246459995451

/-! ## A027704.P810269768743274131

`A003963(p?[A027703(n+1)])`
-/

namespace A027704.P810269768743274131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A027704.P810269768743274131

/-! ## A027704.P6504724553103473538

`A026238(p?[A027703(n+1)])`
-/

namespace A027704.P6504724553103473538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A027704.P6504724553103473538

/-! ## A027704.P13428454772972317661

`A026238(∏{p}[A027703(n+1), #])`
-/

namespace A027704.P13428454772972317661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A027704.P13428454772972317661

/-! ## A027704.P1799770245361056544

`A027703(n+1)-A026238(A027703(n+1)+1)`
-/

namespace A027704.P1799770245361056544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027703 (n + 1) - A026238 (A027703 (n + 1) + 1).toNat

end

end A027704.P1799770245361056544

/-! ## A027704.P5848110804731293252

`A297167(2*A027703(n+1))+1`
-/

namespace A027704.P5848110804731293252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (2 * A027703 (n + 1)).toNat + 1

end

end A027704.P5848110804731293252

/-!
# A027705: Primes with odd number of 1's in binary expansion such that next prime has even number of 1's.

The programs for A027705, the canonical program `A027705.P11345454911343154343` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027705 has offset 1).

The definition of A027705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027705.P11345454911343154343

`A045319(A057428(n)+A027706(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A027705

/-- `A045319(A057428(n)+A027706(n+1))` -/
def P11345454911343154343.Spec : Prop :=
  ∀ n, P11345454911343154343.a n = A027705 (n + 1)

theorem P11345454911343154343.correct : P11345454911343154343.Spec := by
  intro n
  simp only [A027705, Nat.add_sub_cancel]

end A027705

/-! ## A027705.P4171437942683523911

`A000040(A027706(n+1))`
-/

namespace A027705.P4171437942683523911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A027706 (n + 1)).toNat

end

end A027705.P4171437942683523911

namespace A027705

/-- `A000040(A027706(n+1))` -/
def P4171437942683523911.Spec : Prop :=
  ∀ n, P4171437942683523911.a n = A027705 (n + 1)

end A027705

/-! ## A027705.P8642871877050956730

`A008578(A027706(n+1)+1)`
-/

namespace A027705.P8642871877050956730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A027706 (n + 1) + 1).toNat

end

end A027705.P8642871877050956730

namespace A027705

/-- `A008578(A027706(n+1)+1)` -/
def P8642871877050956730.Spec : Prop :=
  ∀ n, P8642871877050956730.a n = A027705 (n + 1)

end A027705

/-! ## A027705.P10517106129860965848

`A158611(A027706(n+1)+2)`
-/

namespace A027705.P10517106129860965848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A027706 (n + 1) + 2).toNat

end

end A027705.P10517106129860965848

namespace A027705

/-- `A158611(A027706(n+1)+2)` -/
def P10517106129860965848.Spec : Prop :=
  ∀ n, P10517106129860965848.a n = A027705 (n + 1)

end A027705

/-! ## A027705.P8231006144449817677

`∑{d}[A027706(n+1), A007444(#)]`
-/

namespace A027705.P8231006144449817677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A027705.P8231006144449817677

namespace A027705

/-- `∑{d}[A027706(n+1), A007444(#)]` -/
def P8231006144449817677.Spec : Prop :=
  ∀ n, P8231006144449817677.a n = A027705 (n + 1)

end A027705

/-! ## A027705.P7364901077676428418

`record[Δ[A008578(n+1)*A200244(n+1)]]`
-/

namespace A027705.P7364901077676428418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A200244 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027705.P7364901077676428418

namespace A027705

/-- `record[Δ[A008578(n+1)*A200244(n+1)]]` -/
def P7364901077676428418.Spec : Prop :=
  ∀ n, P7364901077676428418.a n = A027705 (n + 1)

end A027705

/-! ## A027705.P4986634953916097687

`A006093(A027706(n+1))+A001222(A027707(n))`
-/

namespace A027705.P4986634953916097687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A027706 (n + 1)).toNat + A001222 (A027707 n).toNat

end

end A027705.P4986634953916097687

namespace A027705

/-- `A006093(A027706(n+1))+A001222(A027707(n))` -/
def P4986634953916097687.Spec : Prop :=
  ∀ n, P4986634953916097687.a n = A027705 (n + 1)

end A027705

/-! ## A027705.P17213993538611268068

`A006093(A027706(n+1))+A001222(A004139(n+1))`
-/

namespace A027705.P17213993538611268068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A027706 (n + 1)).toNat + A001222 (A004139 (n + 1)).toNat

end

end A027705.P17213993538611268068

namespace A027705

/-- `A006093(A027706(n+1))+A001222(A004139(n+1))` -/
def P17213993538611268068.Spec : Prop :=
  ∀ n, P17213993538611268068.a n = A027705 (n + 1)

end A027705

/-! ## A027705.P3844045831015829369

`A006093(A027706(n+1))+A001222(A027703(n+1))`
-/

namespace A027705.P3844045831015829369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A027706 (n + 1)).toNat + A001222 (A027703 (n + 1)).toNat

end

end A027705.P3844045831015829369

namespace A027705

/-- `A006093(A027706(n+1))+A001222(A027703(n+1))` -/
def P3844045831015829369.Spec : Prop :=
  ∀ n, P3844045831015829369.a n = A027705 (n + 1)

end A027705

/-! ## A027705.P7414130551004690717

`filter[A027697(n+1), A295891(#)]`
-/

namespace A027705.P7414130551004690717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295891 (f1 j).toNat = 1) n)

end

end A027705.P7414130551004690717

namespace A027705

/-- `filter[A027697(n+1), A295891(#)]` -/
def P7414130551004690717.Spec : Prop :=
  ∀ n, P7414130551004690717.a n = A027705 (n + 1)

end A027705

/-! ## A027705.P10160829845410612687

`A006093(A027706(n+1))+A014963(A082663(n+1))`
-/

namespace A027705.P10160829845410612687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A027706 (n + 1)).toNat + A014963 (A082663 (n + 1)).toNat

end

end A027705.P10160829845410612687

namespace A027705

/-- `A006093(A027706(n+1))+A014963(A082663(n+1))` -/
def P10160829845410612687.Spec : Prop :=
  ∀ n, P10160829845410612687.a n = A027705 (n + 1)

end A027705

/-!
# A027706: n-th prime has odd number of 1's in binary expansion and (n+1)st prime has even number of 1's.

The programs for A027706, the canonical program `A027706.P6557649522257405168` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027706 has offset 1).

The definition of A027706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027706.P6557649522257405168

`record[Δ[n*A200244(n+1)]]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A027706

/-- `record[Δ[n*A200244(n+1)]]` -/
def P6557649522257405168.Spec : Prop :=
  ∀ n, P6557649522257405168.a n = A027706 (n + 1)

theorem P6557649522257405168.correct : P6557649522257405168.Spec := by
  intro n
  simp only [A027706, Nat.add_sub_cancel]

end A027706

/-! ## A027706.P10114385297990820771

`record[(n+1)*(A200244(n+2)-A200244(n+1))]`
-/

namespace A027706.P10114385297990820771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A200244 (n + 2) - A200244 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027706.P10114385297990820771

namespace A027706

/-- `record[(n+1)*(A200244(n+2)-A200244(n+1))]` -/
def P10114385297990820771.Spec : Prop :=
  ∀ n, P10114385297990820771.a n = A027706 (n + 1)

end A027706

/-! ## A027706.P17073672284439722029

`lt[A200246(n+1), A200246(A200246(n+1)+n)]`
-/

namespace A027706.P17073672284439722029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200246 (A200246 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A027706.P17073672284439722029

namespace A027706

/-- `lt[A200246(n+1), A200246(A200246(n+1)+n)]` -/
def P17073672284439722029.Spec : Prop :=
  ∀ n, (P17073672284439722029.a n : ℤ) = A027706 (n + 1)

end A027706

/-! ## A027706.P2382714192111861063

`A000720(A027705(n+1))`
-/

namespace A027706.P2382714192111861063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A027705 (n + 1)).toNat

end

end A027706.P2382714192111861063

namespace A027706

/-- `A000720(A027705(n+1))` -/
def P2382714192111861063.Spec : Prop :=
  ∀ n, P2382714192111861063.a n = A027706 (n + 1)

end A027706

/-! ## A027706.P7472360877715064239

`A055396(A027705(n+1))%A131464(n+1)`
-/

namespace A027706.P7472360877715064239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (A027705 (n + 1)).toNat) (A131464 (n + 1))

end

end A027706.P7472360877715064239

namespace A027706

/-- `A055396(A027705(n+1))%A131464(n+1)` -/
def P7472360877715064239.Spec : Prop :=
  ∀ n, P7472360877715064239.a n = A027706 (n + 1)

end A027706

/-! ## A027706.P14714911021506769898

`A055396(A027705(n+1))+A033483(A254609(n))`
-/

namespace A027706.P14714911021506769898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A027705 (n + 1)).toNat + A033483 (A254609 n).toNat

end

end A027706.P14714911021506769898

namespace A027706

/-- `A055396(A027705(n+1))+A033483(A254609(n))` -/
def P14714911021506769898.Spec : Prop :=
  ∀ n, P14714911021506769898.a n = A027706 (n + 1)

end A027706

/-! ## A027706.P11086258635482418469

`A160990(A053670(n+1))+A055396(A027705(n+1))`
-/

namespace A027706.P11086258635482418469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160990 (A053670 (n + 1)).toNat + A055396 (A027705 (n + 1)).toNat

end

end A027706.P11086258635482418469

namespace A027706

/-- `A160990(A053670(n+1))+A055396(A027705(n+1))` -/
def P11086258635482418469.Spec : Prop :=
  ∀ n, P11086258635482418469.a n = A027706 (n + 1)

end A027706

/-! ## A027706.P4607008133466227385

`A055396(A027705(n+1)%Δ[A295841(n+1)])`
-/

namespace A027706.P4607008133466227385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.tmod (A027705 (n + 1)) (f1 (n + 1) - f1 n)).toNat

end

end A027706.P4607008133466227385

namespace A027706

/-- `A055396(A027705(n+1)%Δ[A295841(n+1)])` -/
def P4607008133466227385.Spec : Prop :=
  ∀ n, P4607008133466227385.a n = A027706 (n + 1)

end A027706

/-!
# A027707: Primes with odd number of 1's in binary expansion such that next prime also has odd number of 1's.

The programs for A027707, the canonical program `A027707.P15810114307957499977` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027707 has offset 0).

The definition of A027707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2800 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027707.P15810114307957499977

`A000040(A027708(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A027707

/-- `A000040(A027708(n))` -/
def P15810114307957499977.Spec : Prop :=
  ∀ n, P15810114307957499977.a n = A027707 n

theorem P15810114307957499977.correct : P15810114307957499977.Spec := by
  intro n
  simp only [A027707]

end A027707

/-! ## A027707.P12269883296633177315

`A008578(A027708(n)+1)`
-/

namespace A027707.P12269883296633177315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A027708 n + 1).toNat

end

end A027707.P12269883296633177315

namespace A027707

/-- `A008578(A027708(n)+1)` -/
def P12269883296633177315.Spec : Prop :=
  ∀ n, P12269883296633177315.a n = A027707 n

end A027707

/-! ## A027707.P5992613479025565269

`A045319(A027708(n)-1)`
-/

namespace A027707.P5992613479025565269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A027708 n - 1).toNat

end

end A027707.P5992613479025565269

namespace A027707

/-- `A045319(A027708(n)-1)` -/
def P5992613479025565269.Spec : Prop :=
  ∀ n, P5992613479025565269.a n = A027707 n

end A027707

/-! ## A027707.P15357847906322595077

`A045344(A027708(n)-1)`
-/

namespace A027707.P15357847906322595077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A027708 n - 1).toNat

end

end A027707.P15357847906322595077

namespace A027707

/-- `A045344(A027708(n)-1)` -/
def P15357847906322595077.Spec : Prop :=
  ∀ n, P15357847906322595077.a n = A027707 n

end A027707

/-! ## A027707.P16082423895127519300

`A065091(A027708(n)-1)`
-/

namespace A027707.P16082423895127519300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A027708 n - 1).toNat

end

end A027707.P16082423895127519300

namespace A027707

/-- `A065091(A027708(n)-1)` -/
def P16082423895127519300.Spec : Prop :=
  ∀ n, P16082423895127519300.a n = A027707 n

end A027707

/-! ## A027707.P14720016134987008230

`A004139(A027708(n)-2)`
-/

namespace A027707.P14720016134987008230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A027708 n - 2).toNat

end

end A027707.P14720016134987008230

namespace A027707

/-- `A004139(A027708(n)-2)` -/
def P14720016134987008230.Spec : Prop :=
  ∀ n, P14720016134987008230.a n = A027707 n

end A027707

/-! ## A027707.P1809547461704074031

`∑{d}[A027708(n), A007444(#)]`
-/

namespace A027707.P1809547461704074031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A027707.P1809547461704074031

namespace A027707

/-- `∑{d}[A027708(n), A007444(#)]` -/
def P1809547461704074031.Spec : Prop :=
  ∀ n, P1809547461704074031.a n = A027707 n

end A027707

/-! ## A027707.P6996302438429015968

`(A006093(A027708(n))+1)*A007318(n²%(n+1))`
-/

namespace A027707.P6996302438429015968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (A027708 n).toNat + 1) * A007318 (n ^ 2 % (n + 1))

end

end A027707.P6996302438429015968

namespace A027707

/-- `(A006093(A027708(n))+1)*A007318(n²%(n+1))` -/
def P6996302438429015968.Spec : Prop :=
  ∀ n, P6996302438429015968.a n = A027707 n

end A027707

/-! ## A027707.P13298251812563988858

`A006530(A006093(A027708(n))+1)`
-/

namespace A027707.P13298251812563988858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006093 (A027708 n).toNat + 1).toNat

end

end A027707.P13298251812563988858

namespace A027707

/-- `A006530(A006093(A027708(n))+1)` -/
def P13298251812563988858.Spec : Prop :=
  ∀ n, P13298251812563988858.a n = A027707 n

end A027707

/-! ## A027707.P17418895862595722595

`(A006093(A027708(n))+1)%A000045(n+7)`
-/

namespace A027707.P17418895862595722595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (A027708 n).toNat + 1) (A000045 (n + 7))

end

end A027707.P17418895862595722595

namespace A027707

/-- `(A006093(A027708(n))+1)%A000045(n+7)` -/
def P17418895862595722595.Spec : Prop :=
  ∀ n, P17418895862595722595.a n = A027707 n

end A027707

/-! ## A027707.P7210279077825204064

`filter[A027697(n+1), A295892(#)]`
-/

namespace A027707.P7210279077825204064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295892 (f1 j).toNat = 1) n)

end

end A027707.P7210279077825204064

namespace A027707

/-- `filter[A027697(n+1), A295892(#)]` -/
def P7210279077825204064.Spec : Prop :=
  ∀ n, P7210279077825204064.a n = A027707 n

end A027707

/-! ## A027707.P1275393006000156158

`filter[A176620(n+1), A295892(#)]`
-/

namespace A027707.P1275393006000156158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295892 (f1 j).toNat = 1) n)

end

end A027707.P1275393006000156158

namespace A027707

/-- `filter[A176620(n+1), A295892(#)]` -/
def P1275393006000156158.Spec : Prop :=
  ∀ n, P1275393006000156158.a n = A027707 n

end A027707

/-! ## A027707.P11425504828993419221

`(A006093(A027708(n))+1)*A007318(∑[n])`
-/

namespace A027707.P11425504828993419221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (A027708 n).toNat + 1) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027707.P11425504828993419221

namespace A027707

/-- `(A006093(A027708(n))+1)*A007318(∑[n])` -/
def P11425504828993419221.Spec : Prop :=
  ∀ n, P11425504828993419221.a n = A027707 n

end A027707

/-!
# A027708: n-th prime has odd number of 1's in binary expansion and (n+1)st prime also has odd number of 1's.

The programs for A027708, the canonical program `A027708.P12884605413985297978` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027708 has offset 0).

The definition of A027708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027708.P12884605413985297978

`A027698(eq[1, Δ[A027698(n+1)]]+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A027708

/-- `A027698(eq[1, Δ[A027698(n+1)]]+1)` -/
def P12884605413985297978.Spec : Prop :=
  ∀ n, P12884605413985297978.a n = A027708 n

theorem P12884605413985297978.correct : P12884605413985297978.Spec := by
  intro n
  simp only [A027708]

end A027708

/-! ## A027708.P731104407757972479

`∩[A027698(n+1)-1, A027698(n+2)]`
-/

namespace A027708.P731104407757972479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027698 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027698 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027708.P731104407757972479

namespace A027708

/-- `∩[A027698(n+1)-1, A027698(n+2)]` -/
def P731104407757972479.Spec : Prop :=
  ∀ n, (P731104407757972479.a n : ℤ) = A027708 n

end A027708

/-! ## A027708.P7637144959273341983

`A027698(eq[1, A027698(n+2)-A027698(n+1)]+1)`
-/

namespace A027708.P7637144959273341983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027698 (n + 2) - A027698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A027708.P7637144959273341983

namespace A027708

/-- `A027698(eq[1, A027698(n+2)-A027698(n+1)]+1)` -/
def P7637144959273341983.Spec : Prop :=
  ∀ n, P7637144959273341983.a n = A027708 n

theorem P7637144959273341983.correct : P7637144959273341983.Spec := by
  intro n
  simp only [A027708, Nat.add_sub_cancel, A027708.P7637144959273341983.f1, A027708.P7637144959273341983.f2, A027708.P7637144959273341983.a, A027708.P12884605413985297978.f1, A027708.P12884605413985297978.f3, A027708.P12884605413985297978.f2, A027708.P12884605413985297978.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A027708

/-! ## A027708.P11161187118891887297

`A000720(A027707(n))`
-/

namespace A027708.P11161187118891887297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A027707 n).toNat

end

end A027708.P11161187118891887297

namespace A027708

/-- `A000720(A027707(n))` -/
def P11161187118891887297.Spec : Prop :=
  ∀ n, P11161187118891887297.a n = A027708 n

end A027708

/-! ## A027708.P17542996938789817061

`A061395(p?[A027707(n)])`
-/

namespace A027708.P17542996938789817061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A027708.P17542996938789817061

namespace A027708

/-- `A061395(p?[A027707(n)])` -/
def P17542996938789817061.Spec : Prop :=
  ∀ n, P17542996938789817061.a n = A027708 n

end A027708

/-! ## A027708.P9684427637749595602

`A061395(2*A027707(n)-A027707(n))`
-/

namespace A027708.P9684427637749595602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A027707 n - A027707 n).toNat

end

end A027708.P9684427637749595602

namespace A027708

/-- `A061395(2*A027707(n)-A027707(n))` -/
def P9684427637749595602.Spec : Prop :=
  ∀ n, P9684427637749595602.a n = A027708 n

end A027708

/-! ## A027708.P15656936425453301984

`A061395(2*A027707(n))`
-/

namespace A027708.P15656936425453301984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A027707 n).toNat

end

end A027708.P15656936425453301984

namespace A027708

/-- `A061395(2*A027707(n))` -/
def P15656936425453301984.Spec : Prop :=
  ∀ n, P15656936425453301984.a n = A027708 n

end A027708

/-! ## A027708.P4955923964594046628

`A003963(p?[A027707(n)])`
-/

namespace A027708.P4955923964594046628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A027708.P4955923964594046628

namespace A027708

/-- `A003963(p?[A027707(n)])` -/
def P4955923964594046628.Spec : Prop :=
  ∀ n, P4955923964594046628.a n = A027708 n

end A027708

/-! ## A027708.P7800450679241969824

`A026233(p?[A027707(n)])`
-/

namespace A027708.P7800450679241969824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A027708.P7800450679241969824

namespace A027708

/-- `A026233(p?[A027707(n)])` -/
def P7800450679241969824.Spec : Prop :=
  ∀ n, P7800450679241969824.a n = A027708 n

end A027708

/-! ## A027708.P2913773149288567861

`A026238(p?[A027707(n)])`
-/

namespace A027708.P2913773149288567861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A027708.P2913773149288567861

namespace A027708

/-- `A026238(p?[A027707(n)])` -/
def P2913773149288567861.Spec : Prop :=
  ∀ n, P2913773149288567861.a n = A027708 n

end A027708

/-! ## A027708.P9995088376460150771

`A049084(p?[A027707(n)])`
-/

namespace A027708.P9995088376460150771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A027708.P9995088376460150771

namespace A027708

/-- `A049084(p?[A027707(n)])` -/
def P9995088376460150771.Spec : Prop :=
  ∀ n, P9995088376460150771.a n = A027708 n

end A027708

/-! ## A027708.P15642743184836109983

`A055396(p?[A027707(n)])`
-/

namespace A027708.P15642743184836109983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A027708.P15642743184836109983

namespace A027708

/-- `A055396(p?[A027707(n)])` -/
def P15642743184836109983.Spec : Prop :=
  ∀ n, P15642743184836109983.a n = A027708 n

end A027708

/-! ## A027708.P9750414566073409787

`A230980(p?[A027707(n)])`
-/

namespace A027708.P9750414566073409787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A027708.P9750414566073409787

namespace A027708

/-- `A230980(p?[A027707(n)])` -/
def P9750414566073409787.Spec : Prop :=
  ∀ n, P9750414566073409787.a n = A027708 n

end A027708

/-! ## A027708.P6319166122460460267

`A230980(A027707(n)+1)`
-/

namespace A027708.P6319166122460460267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A027707 n + 1).toNat

end

end A027708.P6319166122460460267

namespace A027708

/-- `A230980(A027707(n)+1)` -/
def P6319166122460460267.Spec : Prop :=
  ∀ n, P6319166122460460267.a n = A027708 n

end A027708

/-! ## A027708.P5406716612412711754

`A027707(n)-A026238(A027707(n)+1)`
-/

namespace A027708.P5406716612412711754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027707 n - A026238 (A027707 n + 1).toNat

end

end A027708.P5406716612412711754

namespace A027708

/-- `A027707(n)-A026238(A027707(n)+1)` -/
def P5406716612412711754.Spec : Prop :=
  ∀ n, P5406716612412711754.a n = A027708 n

end A027708

/-! ## A027708.P13131508881303517916

`A027707(n)-A026233(A027707(n)-1)`
-/

namespace A027708.P13131508881303517916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027707 n - A026233 (A027707 n - 1).toNat

end

end A027708.P13131508881303517916

namespace A027708

/-- `A027707(n)-A026233(A027707(n)-1)` -/
def P13131508881303517916.Spec : Prop :=
  ∀ n, P13131508881303517916.a n = A027708 n

end A027708

/-! ## A027708.P13163963144285668195

`A026238(2*A027707(n)-A027707(n))`
-/

namespace A027708.P13163963144285668195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (2 * A027707 n - A027707 n).toNat

end

end A027708.P13163963144285668195

namespace A027708

/-- `A026238(2*A027707(n)-A027707(n))` -/
def P13163963144285668195.Spec : Prop :=
  ∀ n, P13163963144285668195.a n = A027708 n

end A027708

/-! ## A027708.P10738388324606930979

`A049084(2*A027707(n)-A027707(n))`
-/

namespace A027708.P10738388324606930979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A027707 n - A027707 n).toNat

end

end A027708.P10738388324606930979

namespace A027708

/-- `A049084(2*A027707(n)-A027707(n))` -/
def P10738388324606930979.Spec : Prop :=
  ∀ n, P10738388324606930979.a n = A027708 n

end A027708

/-! ## A027708.P5446793662570839026

`A055396(2*A027707(n)-A027707(n))`
-/

namespace A027708.P5446793662570839026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A027707 n - A027707 n).toNat

end

end A027708.P5446793662570839026

namespace A027708

/-- `A055396(2*A027707(n)-A027707(n))` -/
def P5446793662570839026.Spec : Prop :=
  ∀ n, P5446793662570839026.a n = A027708 n

end A027708

/-! ## A027708.P8337534922619894088

`A230980(2*A027707(n)-A027707(n))`
-/

namespace A027708.P8337534922619894088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (2 * A027707 n - A027707 n).toNat

end

end A027708.P8337534922619894088

namespace A027708

/-- `A230980(2*A027707(n)-A027707(n))` -/
def P8337534922619894088.Spec : Prop :=
  ∀ n, P8337534922619894088.a n = A027708 n

end A027708

/-!
# A027709: Minimal perimeter of polyomino with n square cells.

The programs for A027709, the canonical program `A027709.P11339494392271686754` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027709 has offset 0).

The definition of A027709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027709.P11339494392271686754

`2*ceil(2*sqrt(n))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027709

/-- `2*ceil(2*sqrt(n))` -/
def P11339494392271686754.Spec : Prop :=
  ∀ n, P11339494392271686754.a n = A027709 n

theorem P11339494392271686754.correct : P11339494392271686754.Spec := by
  intro n
  simp only [A027709]

end A027709

/-! ## A027709.P8237491752210937804

`a(n-floor(a(n-1)/4))+2` with `a(0)=0, a(1)=4`
-/

namespace A027709.P8237491752210937804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a ((n : ℤ) - ⌊(a (n - 1) : ℚ) / 4⌋).toNat + 2

end

end A027709.P8237491752210937804

namespace A027709

/-- `a(n-floor(a(n-1)/4))+2` -/
def P8237491752210937804.Spec : Prop :=
  ∀ n, (P8237491752210937804.a n : ℤ) = A027709 n

end A027709

/-! ## A027709.P15583809004624635725

`A235382(n)-4`
-/

namespace A027709.P15583809004624635725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235382 n - 4

end

end A027709.P15583809004624635725

namespace A027709

/-- `A235382(n)-4` -/
def P15583809004624635725.Spec : Prop :=
  ∀ n, P15583809004624635725.a n = A027709 n

end A027709

/-! ## A027709.P4933883159738206880

`A005843(ceil(2*sqrt(n)))`
-/

namespace A027709.P4933883159738206880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ⌈2 * Real.sqrt (n : ℝ)⌉.toNat

end

end A027709.P4933883159738206880

namespace A027709

/-- `A005843(ceil(2*sqrt(n)))` -/
def P4933883159738206880.Spec : Prop :=
  ∀ n, P4933883159738206880.a n = A027709 n

end A027709

/-! ## A027709.P3061574569576589819

`A023446(A235382(n))`
-/

namespace A027709.P3061574569576589819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A235382 n).toNat

end

end A027709.P3061574569576589819

namespace A027709

/-- `A023446(A235382(n))` -/
def P3061574569576589819.Spec : Prop :=
  ∀ n, P3061574569576589819.a n = A027709 n

end A027709

/-! ## A027709.P11147336944358111056

`A319879(n)-A016777(n)`
-/

namespace A027709.P11147336944358111056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319879 n - A016777 n

end

end A027709.P11147336944358111056

namespace A027709

/-- `A319879(n)-A016777(n)` -/
def P11147336944358111056.Spec : Prop :=
  ∀ n, P11147336944358111056.a n = A027709 n

end A027709

/-! ## A027709.P7632913204795821219

`A163300(A080037(n)-(n+1))`
-/

namespace A027709.P7632913204795821219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (A080037 n - (n + 1 : ℤ)).toNat

end

end A027709.P7632913204795821219

namespace A027709

/-- `A163300(A080037(n)-(n+1))` -/
def P7632913204795821219.Spec : Prop :=
  ∀ n, P7632913204795821219.a n = A027709 n

end A027709

/-! ## A027709.P15484909503792914648

`A265412(n)-A171463(n+1)`
-/

namespace A027709.P15484909503792914648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n - A171463 (n + 1)

end

end A027709.P15484909503792914648

namespace A027709

/-- `A265412(n)-A171463(n+1)` -/
def P15484909503792914648.Spec : Prop :=
  ∀ n, P15484909503792914648.a n = A027709 n

end A027709

/-! ## A027709.P13878490540077908101

`A163300(A080037(n)-1-n)`
-/

namespace A027709.P13878490540077908101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (A080037 n - 1 - (n : ℤ)).toNat

end

end A027709.P13878490540077908101

namespace A027709

/-- `A163300(A080037(n)-1-n)` -/
def P13878490540077908101.Spec : Prop :=
  ∀ n, P13878490540077908101.a n = A027709 n

end A027709

/-! ## A027709.P15635666147161103312

`A067628(A047395(n+1))`
-/

namespace A027709.P15635666147161103312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067628 (A047395 (n + 1)).toNat

end

end A027709.P15635666147161103312

namespace A027709

/-- `A067628(A047395(n+1))` -/
def P15635666147161103312.Spec : Prop :=
  ∀ n, P15635666147161103312.a n = A027709 n

end A027709

/-! ## A027709.P6278588224889522332

`A067628(A047464(n+1))`
-/

namespace A027709.P6278588224889522332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067628 (A047464 (n + 1)).toNat

end

end A027709.P6278588224889522332

namespace A027709

/-- `A067628(A047464(n+1))` -/
def P6278588224889522332.Spec : Prop :=
  ∀ n, P6278588224889522332.a n = A027709 n

end A027709

/-! ## A027709.P5866993607751792560

`A360924(A360924(n)²)`
-/

namespace A027709.P5866993607751792560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360924 (A360924 n ^ 2).toNat

end

end A027709.P5866993607751792560

namespace A027709

/-- `A360924(A360924(n)²)` -/
def P5866993607751792560.Spec : Prop :=
  ∀ n, P5866993607751792560.a n = A027709 n

end A027709

/-! ## A027709.P1938801361466964644

`filter[A360924(2*n), A059841(#)]`
-/

namespace A027709.P1938801361466964644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360924 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A027709.P1938801361466964644

namespace A027709

/-- `filter[A360924(2*n), A059841(#)]` -/
def P1938801361466964644.Spec : Prop :=
  ∀ n, P1938801361466964644.a n = A027709 n

end A027709

/-! ## A027709.P6678367781875465418

`filter[A360924(2*n), A266591(#)]`
-/

namespace A027709.P6678367781875465418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360924 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A027709.P6678367781875465418

namespace A027709

/-- `filter[A360924(2*n), A266591(#)]` -/
def P6678367781875465418.Spec : Prop :=
  ∀ n, P6678367781875465418.a n = A027709 n

end A027709

/-! ## A027709.P13617954600990023976

`filter[A360924(2*n), A267043(#)]`
-/

namespace A027709.P13617954600990023976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360924 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A027709.P13617954600990023976

namespace A027709

/-- `filter[A360924(2*n), A267043(#)]` -/
def P13617954600990023976.Spec : Prop :=
  ∀ n, P13617954600990023976.a n = A027709 n

end A027709

/-! ## A027709.P2142863658375419215

`A360924(A360924(n)*A360924(n))`
-/

namespace A027709.P2142863658375419215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360924 (A360924 n * A360924 n).toNat

end

end A027709.P2142863658375419215

namespace A027709

/-- `A360924(A360924(n)*A360924(n))` -/
def P2142863658375419215.Spec : Prop :=
  ∀ n, P2142863658375419215.a n = A027709 n

end A027709

/-!
# A027710: Number of ways of placing n labeled balls into n unlabeled (but 3-colored) boxes.

The programs for A027710, there is no canonical definition to state claims against.
-/

/-! ## A027710.P10103210626824351697

`A078938(∑[n])`
-/

namespace A027710.P10103210626824351697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078938 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027710.P10103210626824351697

/-! ## A027710.P11264489685297787813

`A189233(∑[n+2]+n+7)`
-/

namespace A027710.P11264489685297787813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 7))

end

end A027710.P11264489685297787813

/-! ## A027710.P6150568323076358346

`record[A189233(∑[A233583(n+1)])]`
-/

namespace A027710.P6150568323076358346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027710.P6150568323076358346

/-! ## A027710.P16050382595547005997

`record[A189233(A000124(n+1)+2)]`
-/

namespace A027710.P16050382595547005997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A000124 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027710.P16050382595547005997

/-! ## A027710.P13281594857099711317

`A292860(∑[n+3]+n+3)`
-/

namespace A027710.P13281594857099711317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A027710.P13281594857099711317

/-! ## A027710.P15940581369724055317

`record[A292860(abs(A046691(n)))]`
-/

namespace A027710.P15940581369724055317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027710.P15940581369724055317

/-! ## A027710.P11777290121868677443

`A068199(n+1)/2`
-/

namespace A027710.P11777290121868677443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068199 (n + 1) : ℚ) / 2

end

end A027710.P11777290121868677443

/-!
# A027711: Number of binary sequences of length n with an even number of ones, at least two of the ones being contiguous.

The programs for A027711, the canonical program `A027711.P12872271298144189323` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027711 has offset 1).

The definition of A027711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027711.P12872271298144189323

`4*a(n-1)-5*a(n-2)+2*a(n-3)+a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=9`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027711

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)+a(n-4)-2*a(n-5)` -/
def P12872271298144189323.Spec : Prop :=
  ∀ n, P12872271298144189323.a n = A027711 (n + 1)

theorem P12872271298144189323.correct : P12872271298144189323.Spec := by
  intro n
  simp only [A027711, Nat.add_sub_cancel]

end A027711

/-! ## A027711.P3986467887209797932

`2^n-A005252(n+2)`
-/

namespace A027711.P3986467887209797932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A005252 (n + 2)

end

end A027711.P3986467887209797932

namespace A027711

/-- `2^n-A005252(n+2)` -/
def P3986467887209797932.Spec : Prop :=
  ∀ n, P3986467887209797932.a n = A027711 (n + 1)

end A027711

/-! ## A027711.P18226653432681447798

`A286350(n)-A227200(n)`
-/

namespace A027711.P18226653432681447798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 n - A227200 n

end

end A027711.P18226653432681447798

namespace A027711

/-- `A286350(n)-A227200(n)` -/
def P18226653432681447798.Spec : Prop :=
  ∀ n, P18226653432681447798.a n = A027711 (n + 1)

end A027711

/-! ## A027711.P15529182043054580559

`A000225(n)-A130578(n+1)`
-/

namespace A027711.P15529182043054580559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A130578 (n + 1)

end

end A027711.P15529182043054580559

namespace A027711

/-- `A000225(n)-A130578(n+1)` -/
def P15529182043054580559.Spec : Prop :=
  ∀ n, P15529182043054580559.a n = A027711 (n + 1)

end A027711

/-! ## A027711.P16462224355027638045

`A141775(n)-A024490(n+2)`
-/

namespace A027711.P16462224355027638045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141775 n - A024490 (n + 2)

end

end A027711.P16462224355027638045

namespace A027711

/-- `A141775(n)-A024490(n+2)` -/
def P16462224355027638045.Spec : Prop :=
  ∀ n, P16462224355027638045.a n = A027711 (n + 1)

end A027711

/-! ## A027711.P13046986562713495265

`A000079(n)-(A130578(n+1)+1)`
-/

namespace A027711.P13046986562713495265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A130578 (n + 1) + 1)

end

end A027711.P13046986562713495265

namespace A027711

/-- `A000079(n)-(A130578(n+1)+1)` -/
def P13046986562713495265.Spec : Prop :=
  ∀ n, P13046986562713495265.a n = A027711 (n + 1)

end A027711

/-! ## A027711.P7965652754117987481

`A131708(n+1)+A131708(n)-A024490(n+2)`
-/

namespace A027711.P7965652754117987481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 (n + 1) + (A131708 n - A024490 (n + 2))

end

end A027711.P7965652754117987481

namespace A027711

/-- `A131708(n+1)+A131708(n)-A024490(n+2)` -/
def P7965652754117987481.Spec : Prop :=
  ∀ n, P7965652754117987481.a n = A027711 (n + 1)

end A027711

/-!
# A027712: Numbers k such that k^2+k+2 is a palindrome.

The programs for A027712, there is no canonical definition to state claims against.
-/

/-! ## A027712.P16862203334323019136

`floor(sqrt(A027713(n+1)-2))`
-/

namespace A027712.P16862203334323019136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A027713 (n + 1) - 2)

end

end A027712.P16862203334323019136

/-! ## A027712.P4793250508587236647

`ceil(A057428(n)+sqrt(A027713(n+1)-2))`
-/

namespace A027712.P4793250508587236647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + Real.sqrt (A027713 (n + 1) - 2 : ℝ)⌉

end

end A027712.P4793250508587236647

/-! ## A027712.P18238208996114076436

`ceil(sqrt(A027713(n+1)-2)-A057427(n))`
-/

namespace A027712.P18238208996114076436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A027713 (n + 1) - 2 : ℝ) - (A057427 n : ℝ)⌉

end

end A027712.P18238208996114076436

/-! ## A027712.P12835976024644350175

`round(sqrt(A027713(n+1)-2))%A001550(n)`
-/

namespace A027712.P12835976024644350175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A027713 (n + 1) - 2 : ℝ))) (A001550 n)

end

end A027712.P12835976024644350175

/-!
# A027713: Palindromes of form k^2 + k + 2.

The programs for A027713, there is no canonical definition to state claims against.
-/

/-! ## A027713.P14505836328370124971

`A027712(n+1)+A027712(n+1)²+2`
-/

namespace A027713.P14505836328370124971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027712 (n + 1) + (A027712 (n + 1) ^ 2 + 2)

end

end A027713.P14505836328370124971

/-! ## A027713.P9900898558307885146

`A014206(A027712(n+1))`
-/

namespace A027713.P9900898558307885146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 (A027712 (n + 1)).toNat

end

end A027713.P9900898558307885146

/-! ## A027713.P13494472380825152673

`∩[A002113(n+1), A014206(n)]`
-/

namespace A027713.P13494472380825152673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027713.P13494472380825152673

/-! ## A027713.P14500669862931819862

`∩[A029951(n+1), A014206(n)]`
-/

namespace A027713.P14500669862931819862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027713.P14500669862931819862

/-! ## A027713.P2003794098024900724

`∩[A061917(n+1), A014206(n)]`
-/

namespace A027713.P2003794098024900724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027713.P2003794098024900724

/-!
# A027714: Numbers k such that k^2+k+3 is a palindrome.

The programs for A027714, there is no canonical definition to state claims against.
-/

/-! ## A027714.P10121113350894768548

`floor(sqrt(A027715(n+1)-3))`
-/

namespace A027714.P10121113350894768548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A027715 (n + 1) - 3)

end

end A027714.P10121113350894768548

/-! ## A027714.P15721763244261892669

`round(sqrt(A027715(n+1)-3))%A150376(n)`
-/

namespace A027714.P15721763244261892669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A027715 (n + 1) - 3 : ℝ))) (A150376 n)

end

end A027714.P15721763244261892669

/-! ## A027714.P17449033915376115251

`round(sqrt(A027715(n+1)-3-A076228(n+1)))`
-/

namespace A027714.P17449033915376115251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A027715 (n + 1) - 3 - A076228 (n + 1) : ℝ))

end

end A027714.P17449033915376115251

/-! ## A027714.P4455981744922640336

`round(sqrt(A027715(n+1)-3-A237259(n+1)))`
-/

namespace A027714.P4455981744922640336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A027715 (n + 1) - 3 - A237259 (n + 1) : ℝ))

end

end A027714.P4455981744922640336

/-! ## A027714.P12919297018925109060

`A014682(2*round(sqrt(A027715(n+1)-3)))`
-/

namespace A027714.P12919297018925109060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * SequenceMachineLib.roundAway (Real.sqrt (A027715 (n + 1) - 3 : ℝ))).toNat

end

end A027714.P12919297018925109060

/-!
# A027715: Palindromes of form k^2 + k + 3.

The programs for A027715, there is no canonical definition to state claims against.
-/

/-! ## A027715.P10782664790606573077

`A027714(n+1)+A027714(n+1)²+3`
-/

namespace A027715.P10782664790606573077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027714 (n + 1) + (A027714 (n + 1) ^ 2 + 3)

end

end A027715.P10782664790606573077

/-! ## A027715.P11983704868945071327

`2*A000217(A027714(n+1))+3`
-/

namespace A027715.P11983704868945071327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (A027714 (n + 1)).toNat + 3

end

end A027715.P11983704868945071327

/-! ## A027715.P14336320271268597280

`A027688(A027714(n+1))`
-/

namespace A027715.P14336320271268597280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 (A027714 (n + 1)).toNat

end

end A027715.P14336320271268597280

/-! ## A027715.P2042822835232664258

`A118403(A027714(n+1)+2)`
-/

namespace A027715.P2042822835232664258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118403 (A027714 (n + 1) + 2).toNat

end

end A027715.P2042822835232664258

/-! ## A027715.P16167584621438338956

`∩[A002113(n+1), A027688(n)]`
-/

namespace A027715.P16167584621438338956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027715.P16167584621438338956

/-!
# A027716: Numbers k such that k^2 + k + 4 is a palindrome.

The programs for A027716, there is no canonical definition to state claims against.
-/

/-! ## A027716.P8564087462901262222

`floor(sqrt(A027717(n+1)-4))`
-/

namespace A027716.P8564087462901262222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A027717 (n + 1) - 4)

end

end A027716.P8564087462901262222

/-! ## A027716.P11272154322404130002

`round(A000007(n+1)+sqrt(A027717(n+1)-4))`
-/

namespace A027716.P11272154322404130002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℝ) + Real.sqrt (A027717 (n + 1) - 4 : ℝ))

end

end A027716.P11272154322404130002

/-! ## A027716.P14453159742205800561

`round(A008683(2*(n+2)²)+sqrt(A027717(n+1)-4))`
-/

namespace A027716.P14453159742205800561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008683 (2 * (n + 2) ^ 2) : ℝ) + Real.sqrt (A027717 (n + 1) - 4 : ℝ))

end

end A027716.P14453159742205800561

/-!
# A027717: Palindromes of form k^2 + k + 4.

The programs for A027717, there is no canonical definition to state claims against.
-/

/-! ## A027717.P17045992719378523318

`A027689(A027716(n+1))`
-/

namespace A027717.P17045992719378523318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 (A027716 (n + 1)).toNat

end

end A027717.P17045992719378523318

/-! ## A027717.P9263291003023726576

`A027688(A027716(n+1))+A015076(n)`
-/

namespace A027717.P9263291003023726576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 (A027716 (n + 1)).toNat + A015076 n

end

end A027717.P9263291003023726576

/-! ## A027717.P7621172821603601868

`A027688(A027716(n+1))+A015082(n)`
-/

namespace A027717.P7621172821603601868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 (A027716 (n + 1)).toNat + A015082 n

end

end A027717.P7621172821603601868

/-! ## A027717.P7320209578278954414

`A027688(A027716(n+1))+A015088(n)`
-/

namespace A027717.P7320209578278954414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 (A027716 (n + 1)).toNat + A015088 n

end

end A027717.P7320209578278954414

/-! ## A027717.P11812933098529908167

`A027688(A027716(n+1))+A015090(n)`
-/

namespace A027717.P11812933098529908167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 (A027716 (n + 1)).toNat + A015090 n

end

end A027717.P11812933098529908167

/-!
# A027718: Numbers k such that k^2+k+5 is a palindrome.

The programs for A027718, there is no canonical definition to state claims against.
-/

/-! ## A027718.P6793857330033456227

`floor(sqrt(A027728(n+1)-5))`
-/

namespace A027718.P6793857330033456227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A027728 (n + 1) - 5)

end

end A027718.P6793857330033456227

/-! ## A027718.P8615935766940817117

`ceil(sqrt(A027728(n+1)-5)-A057427(n))`
-/

namespace A027718.P8615935766940817117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A027728 (n + 1) - 5 : ℝ) - (A057427 n : ℝ)⌉

end

end A027718.P8615935766940817117

/-! ## A027718.P7963118657429850644

`round(sqrt(A027728(n+1)-5))%A024077(n)`
-/

namespace A027718.P7963118657429850644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A027728 (n + 1) - 5 : ℝ))) (A024077 n)

end

end A027718.P7963118657429850644

/-! ## A027718.P1723314486108408074

`eq[or(1, n²+4+n), A004086(or(1, n²+4+n))]`
-/

namespace A027718.P1723314486108408074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2 + 4 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.lor 1 (n ^ 2 + 4 + n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027718.P1723314486108408074

/-!
# A027719: Numbers k such that k^2 + 1 is a palindrome.

The programs for A027719, there is no canonical definition to state claims against.
-/

/-! ## A027719.P17870790476133374007

`sqrt(A027720(n+1)-1)`
-/

namespace A027719.P17870790476133374007
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A027720 (n + 1) - 1 : ℝ)

end

end A027719.P17870790476133374007

/-! ## A027719.P13595122890203930116

`floor(sqrt(A027720(n+1)*A057427(n)))`
-/

namespace A027719.P13595122890203930116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A027720 (n + 1) * A057427 n)

end

end A027719.P13595122890203930116

/-! ## A027719.P16917882305285711904

`floor(sqrt(A027720(n+1)))%A010975(n)`
-/

namespace A027719.P16917882305285711904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A027720 (n + 1))) (A010975 (n + 22))

end

end A027719.P16917882305285711904

/-! ## A027719.P8848883937416369928

`sqrt(A057428(n+1)+A027720(n+1))`
-/

namespace A027719.P8848883937416369928
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A057428 (n + 1) + A027720 (n + 1) : ℝ)

end

end A027719.P8848883937416369928

/-! ## A027719.P8786780440396392755

`round(A112347(n²)*sqrt(A027720(n+1)))`
-/

namespace A027719.P8786780440396392755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A112347 (n ^ 2) : ℝ) * Real.sqrt (A027720 (n + 1) : ℝ))

end

end A027719.P8786780440396392755

/-!
# A027720: Palindromes of form k^2 + 1.

The programs for A027720, there is no canonical definition to state claims against.
-/

/-! ## A027720.P18094247805500164734

`A027719(n+1)²+1`
-/

namespace A027720.P18094247805500164734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027719 (n + 1) ^ 2 + 1

end

end A027720.P18094247805500164734

/-! ## A027720.P7614369083600633030

`A027719(n+1)^A040015(2*n+3)+1`
-/

namespace A027720.P7614369083600633030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027719 (n + 1) : ℚ) ^ (A040015 (2 * n + 3) : ℤ) + 1

end

end A027720.P7614369083600633030

/-! ## A027720.P8151464018788573197

`and(1, A063396(n))+A027719(n+1)*A027719(n+1)`
-/

namespace A027720.P8151464018788573197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A063396 n) + A027719 (n + 1) * A027719 (n + 1)

end

end A027720.P8151464018788573197

/-! ## A027720.P16428602764289091044

`A107711(n)+A000290(A027719(n+1))`
-/

namespace A027720.P16428602764289091044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107711 n + A000290 (A027719 (n + 1)).toNat

end

end A027720.P16428602764289091044

/-! ## A027720.P4494610597110607151

`A152844(n)+A000290(A027719(n+1))`
-/

namespace A027720.P4494610597110607151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152844 n + A000290 (A027719 (n + 1)).toNat

end

end A027720.P4494610597110607151

/-!
# A027721: Palindromes of form k^2 + k + 6.

The programs for A027721, there is no canonical definition to state claims against.
-/

/-! ## A027721.P1768252347914394864

`A027729(n+1)²+A027729(n+1)+6`
-/

namespace A027721.P1768252347914394864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027729 (n + 1) ^ 2 + A027729 (n + 1) + 6

end

end A027721.P1768252347914394864

/-! ## A027721.P17059082823488810794

`A027691(A027729(n+1))`
-/

namespace A027721.P17059082823488810794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 (A027729 (n + 1)).toNat

end

end A027721.P17059082823488810794

/-! ## A027721.P16301245558466184164

`A027690(A027729(n+1))+A015082(n)`
-/

namespace A027721.P16301245558466184164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027690 (A027729 (n + 1)).toNat + A015082 n

end

end A027721.P16301245558466184164

/-! ## A027721.P13512225902285737030

`A027690(A027729(n+1))+A015090(n)`
-/

namespace A027721.P13512225902285737030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027690 (A027729 (n + 1)).toNat + A015090 n

end

end A027721.P13512225902285737030

/-! ## A027721.P4398213650648837014

`A053632(n)+A027690(A027729(n+1))`
-/

namespace A027721.P4398213650648837014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053632 n + A027690 (A027729 (n + 1)).toNat

end

end A027721.P4398213650648837014

/-!
# A027722: Numbers k such that k^2+k+7 is a palindrome.

The programs for A027722, there is no canonical definition to state claims against.
-/

/-! ## A027722.P10208420188651110209

`floor(sqrt(A027723(n+1)-7))`
-/

namespace A027722.P10208420188651110209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A027723 (n + 1) - 7)

end

end A027722.P10208420188651110209

/-! ## A027722.P13451901483172275762

`ceil(sqrt(A027723(n+1)-7)-A178334(n))`
-/

namespace A027722.P13451901483172275762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A027723 (n + 1) - 7 : ℝ) - (A178334 n : ℝ)⌉

end

end A027722.P13451901483172275762

/-! ## A027722.P6633529334130394048

`round(sqrt(A027723(n+1)-7))%A096045(n)`
-/

namespace A027722.P6633529334130394048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A027723 (n + 1) - 7 : ℝ))) (A096045 n)

end

end A027722.P6633529334130394048

/-! ## A027722.P7318027930761772383

`round(sqrt(A027723(n+1)-7)*A349906(12*n+2))`
-/

namespace A027722.P7318027930761772383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A027723 (n + 1) - 7 : ℝ) * (A349906 (12 * n + 2) : ℝ))

end

end A027722.P7318027930761772383

/-!
# A027723: Palindromes of form k^2 + k + 7.

The programs for A027723, there is no canonical definition to state claims against.
-/

/-! ## A027723.P13363274911998905867

`A027692(A027722(n+1))`
-/

namespace A027723.P13363274911998905867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027692 (A027722 (n + 1)).toNat

end

end A027723.P13363274911998905867

/-! ## A027723.P4472689543211314475

`∩[A029950(n+1), A027692(n)]`
-/

namespace A027723.P4472689543211314475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027692 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027723.P4472689543211314475

/-! ## A027723.P12956775573519113491

`A027691(A027722(n+1))+A015082(n)`
-/

namespace A027723.P12956775573519113491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 (A027722 (n + 1)).toNat + A015082 n

end

end A027723.P12956775573519113491

/-! ## A027723.P5484191525517889474

`A333737(n)+A027691(A027722(n+1))`
-/

namespace A027723.P5484191525517889474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 n + A027691 (A027722 (n + 1)).toNat

end

end A027723.P5484191525517889474

/-! ## A027723.P15240249387371265659

`A049100(n+1)+A027691(A027722(n+1))`
-/

namespace A027723.P15240249387371265659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049100 (n + 1) + A027691 (A027722 (n + 1)).toNat

end

end A027723.P15240249387371265659

/-!
# A027724: Numbers k such that k^2+k+8 is a palindrome.

The programs for A027724, there is no canonical definition to state claims against.
-/

/-! ## A027724.P6821521626259076862

`floor(sqrt(A027725(n+1)-A027727(n+1)+1))`
-/

namespace A027724.P6821521626259076862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A027725 (n + 1) - A027727 (n + 1) + 1)

end

end A027724.P6821521626259076862

/-!
# A027725: Palindromes of form k^2 + k + 8.

The programs for A027725, there is no canonical definition to state claims against.
-/

/-! ## A027725.P7248190705899140759

`A027693(A027724(n+1))`
-/

namespace A027725.P7248190705899140759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027693 (A027724 (n + 1)).toNat

end

end A027725.P7248190705899140759

/-! ## A027725.P6100234552124394587

`A027692(A027724(n+1))+A015082(n)`
-/

namespace A027725.P6100234552124394587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027692 (A027724 (n + 1)).toNat + A015082 n

end

end A027725.P6100234552124394587

/-!
# A027726: Numbers k such that k^2+k+9 is a palindrome.

The programs for A027726, there is no canonical definition to state claims against.
-/

/-! ## A027726.P13616250294174276692

`eq[or(1, n²+8+n), A004086(or(1, n²+8+n))]`
-/

namespace A027726.P13616250294174276692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2 + 8 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.lor 1 (n ^ 2 + 8 + n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027726.P13616250294174276692

/-! ## A027726.P17761905095131756890

`eq[xor(1, n²+8+n), A004086(xor(1, n²+8+n))]`
-/

namespace A027726.P17761905095131756890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2 + 8 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.xor 1 (n ^ 2 + 8 + n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027726.P17761905095131756890

/-! ## A027726.P14351358980812144844

`eq[ceil((n+1)²-(cot(3)+n)), A004086(ceil((n+1)²-(cot(3)+n)))]`
-/

namespace A027726.P14351358980812144844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℝ) - (Real.cot (3 : ℝ) + (n : ℝ))⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ⌈((n + 1) ^ 2 : ℝ) - (Real.cot (3 : ℝ) + (n : ℝ))⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027726.P14351358980812144844

/-! ## A027726.P1611662635874865544

`A051162(floor(A027727(n+1)/2)-4)`
-/

namespace A027726.P1611662635874865544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (⌊(A027727 (n + 1) : ℚ) / 2⌋ - 4).toNat

end

end A027726.P1611662635874865544

/-! ## A027726.P2935455759629086353

`eq[or(1, n²+8+n), A004086(A027694(n))]`
-/

namespace A027726.P2935455759629086353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2 + 8 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A027694 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027726.P2935455759629086353

/-!
# A027727: Palindromes of form k^2 + k + 9.

The programs for A027727, there is no canonical definition to state claims against.
-/

/-! ## A027727.P15532449989278735724

`A027694(A027726(n+1))`
-/

namespace A027727.P15532449989278735724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027694 (A027726 (n + 1)).toNat

end

end A027727.P15532449989278735724

/-! ## A027727.P1637554321864260150

`∩[A002113(n+1), A027694(n)]`
-/

namespace A027727.P1637554321864260150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027694 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027727.P1637554321864260150

/-! ## A027727.P1559373446226565689

`A027693(A027726(n+1))+A015082(n)`
-/

namespace A027727.P1559373446226565689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027693 (A027726 (n + 1)).toNat + A015082 n

end

end A027727.P1559373446226565689

/-! ## A027727.P18289778236631782759

`A027693(A027726(n+1))+A007318(∑[n])`
-/

namespace A027727.P18289778236631782759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027693 (A027726 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027727.P18289778236631782759

/-! ## A027727.P2009466143532891761

`A057427(n+1)+A027693(A027726(n+1))`
-/

namespace A027727.P2009466143532891761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + A027693 (A027726 (n + 1)).toNat

end

end A027727.P2009466143532891761

/-!
# A027728: Palindromes of form k^2 + k + 5.

The programs for A027728, there is no canonical definition to state claims against.
-/

/-! ## A027728.P15806612271163554776

`A027690(A027718(n+1))`
-/

namespace A027728.P15806612271163554776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027690 (A027718 (n + 1)).toNat

end

end A027728.P15806612271163554776

/-! ## A027728.P9663842658412845830

`∩[A002113(n+1), A027690(n)]`
-/

namespace A027728.P9663842658412845830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027690 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027728.P9663842658412845830

/-! ## A027728.P8551186883680620006

`∩[A029950(n+1), A027690(n)]`
-/

namespace A027728.P8551186883680620006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027690 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027728.P8551186883680620006

/-! ## A027728.P7987437012746029283

`∩[A071251(n+1), A027690(n)]`
-/

namespace A027728.P7987437012746029283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027690 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027728.P7987437012746029283

/-! ## A027728.P13422731224940217495

`∩[A098897(n+1), A027690(n)]`
-/

namespace A027728.P13422731224940217495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027690 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027728.P13422731224940217495

/-!
# A027729: Numbers k such that k^2+k+6 is a palindrome.

The programs for A027729, there is no canonical definition to state claims against.
-/

/-! ## A027729.P16081725599427015998

`floor(sqrt(A027721(n+1)-6))`
-/

namespace A027729.P16081725599427015998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A027721 (n + 1) - 6)

end

end A027729.P16081725599427015998

/-! ## A027729.P6998724994014024152

`ceil(sqrt(A027721(n+1)-6)-A057427(n))`
-/

namespace A027729.P6998724994014024152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A027721 (n + 1) - 6 : ℝ) - (A057427 n : ℝ)⌉

end

end A027729.P6998724994014024152

/-! ## A027729.P10024701030865843963

`round(sqrt(A027721(n+1)-6))%A017010(n)`
-/

namespace A027729.P10024701030865843963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A027721 (n + 1) - 6 : ℝ))) (A017010 n)

end

end A027729.P10024701030865843963

/-! ## A027729.P9281169142284521842

`floor((A027721(n+1)-6)^(A007318(∑[n])/2))`
-/

namespace A027729.P9281169142284521842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027721 (n + 1) - 6 : ℝ) ^ ((A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2 : ℝ)⌋

end

end A027729.P9281169142284521842

/-! ## A027729.P15756275014393539919

`round(A142150(2*n+1)+sqrt(A027721(n+1)-6))`
-/

namespace A027729.P15756275014393539919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A142150 (2 * n + 1) : ℝ) + Real.sqrt (A027721 (n + 1) - 6 : ℝ))

end

end A027729.P15756275014393539919

/-!
# A027730: Number of independent subsets of nodes in graph formed from n-fold subdivision of tetrahedron.

The programs for A027730, there is no canonical definition to state claims against.
-/

/-! ## A027730.P6740686327849756412

`A115384(C(∑[∑{d}[n, #]]+1, n))`
-/

namespace A027730.P6740686327849756412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) n)

end

end A027730.P6740686327849756412

/-!
# A027740: Number of independent subsets of nodes in graph formed from n-fold subdivision of triangle.

The programs for A027740, there is no canonical definition to state claims against.
-/

/-! ## A027740.P9140383739092203683

`∑[A070868(A023882(n))]`
-/

namespace A027740.P9140383739092203683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070868 (A023882 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027740.P9140383739092203683

/-! ## A027740.P11020852422151175174

`A380079(A084710(n+1))`
-/

namespace A027740.P11020852422151175174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380079 (A084710 (n + 1)).toNat

end

end A027740.P11020852422151175174

/-!
# A027741: Number of primitive polynomials of degree n over GF(5).

The programs for A027741, there is no canonical definition to state claims against.
-/

/-! ## A027741.P11925469525845423486

`A369291(∑[n+3])`
-/

namespace A027741.P11925469525845423486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369291 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027741.P11925469525845423486

/-! ## A027741.P12166320817208521959

`A158502(∑[n+2]-1)`
-/

namespace A027741.P12166320817208521959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158502 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A027741.P12166320817208521959

/-! ## A027741.P12256484841699767742

`record[A158502(A101881(n))]`
-/

namespace A027741.P12256484841699767742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158502 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027741.P12256484841699767742

/-! ## A027741.P15088809709892517890

`record[A158502(∑[A158416(n)])]`
-/

namespace A027741.P15088809709892517890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158502 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027741.P15088809709892517890

/-! ## A027741.P18172401112167975722

`record[A158502(∑[A152271(n+1)])]`
-/

namespace A027741.P18172401112167975722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158502 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027741.P18172401112167975722

/-!
# A027742: a(n) = phi(4^n-1)/(2*n).

The programs for A027742, the canonical program `A027742.P15524387088752407227` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027742 has offset 1).

The definition of A027742 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295501, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A027742.P7860545279821588471

`A027695(n+1)/2`
-/

namespace A027742.P7860545279821588471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027695 (n + 1) : ℚ) / 2

end

end A027742.P7860545279821588471

namespace A027742

/-- `A027695(n+1)/2` -/
def P7860545279821588471.Spec : Prop :=
  ∀ n, P7860545279821588471.a n = (A027742 (n + 1) : ℚ)

end A027742

/-! ## A027742.P15524387088752407227

`A295501(n+1)/(2*(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A027742

/-- `A295501(n+1)/(2*(n+1))` -/
def P15524387088752407227.Spec : Prop :=
  ∀ n, P15524387088752407227.a n = (A027742 (n + 1) : ℚ)

end A027742

/-! ## A027742.P2150306581863038551

`A000020(2*(n+1))`
-/

namespace A027742.P2150306581863038551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (2 * (n + 1))

end

end A027742.P2150306581863038551

namespace A027742

/-- `A000020(2*(n+1))` -/
def P2150306581863038551.Spec : Prop :=
  ∀ n, P2150306581863038551.a n = A027742 (n + 1)

end A027742

/-! ## A027742.P5002994539835744918

`A011260(2*(n+1))`
-/

namespace A027742.P5002994539835744918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (2 * (n + 1))

end

end A027742.P5002994539835744918

namespace A027742

/-- `A011260(2*(n+1))` -/
def P5002994539835744918.Spec : Prop :=
  ∀ n, P5002994539835744918.a n = A027742 (n + 1)

end A027742

/-! ## A027742.P15699669939443878056

`record[A000020(n+1)^(n%2)]`
-/

namespace A027742.P15699669939443878056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027742.P15699669939443878056

namespace A027742

/-- `record[A000020(n+1)^(n%2)]` -/
def P15699669939443878056.Spec : Prop :=
  ∀ n, P15699669939443878056.a n = A027742 (n + 1)

end A027742

/-! ## A027742.P9516388006058463382

`record[A011260(n+1)^and(1, n)]`
-/

namespace A027742.P9516388006058463382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (n + 1) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027742.P9516388006058463382

namespace A027742

/-- `record[A011260(n+1)^and(1, n)]` -/
def P9516388006058463382.Spec : Prop :=
  ∀ n, P9516388006058463382.a n = A027742 (n + 1)

end A027742

/-! ## A027742.P7534586472660042413

`record[A011260(A254048(n+1))]`
-/

namespace A027742.P7534586472660042413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (A254048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027742.P7534586472660042413

namespace A027742

/-- `record[A011260(A254048(n+1))]` -/
def P7534586472660042413.Spec : Prop :=
  ∀ n, P7534586472660042413.a n = A027742 (n + 1)

end A027742

/-! ## A027742.P17371486330329317250

`record[A011260(A005131(n+2))]`
-/

namespace A027742.P17371486330329317250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (A005131 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027742.P17371486330329317250

namespace A027742

/-- `record[A011260(A005131(n+2))]` -/
def P17371486330329317250.Spec : Prop :=
  ∀ n, P17371486330329317250.a n = A027742 (n + 1)

end A027742

/-! ## A027742.P7223988647850112141

`record[A000020(A000265(n+1)+1)]`
-/

namespace A027742.P7223988647850112141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027742.P7223988647850112141

namespace A027742

/-- `record[A000020(A000265(n+1)+1)]` -/
def P7223988647850112141.Spec : Prop :=
  ∀ n, P7223988647850112141.a n = A027742 (n + 1)

end A027742

/-! ## A027742.P263339854583721838

`record[A011260(A000265(n+1)+1)]`
-/

namespace A027742.P263339854583721838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027742.P263339854583721838

namespace A027742

/-- `record[A011260(A000265(n+1)+1)]` -/
def P263339854583721838.Spec : Prop :=
  ∀ n, P263339854583721838.a n = A027742 (n + 1)

end A027742

/-! ## A027742.P16198768153981812634

`A053287(n+1)*A069925(n+1)`
-/

namespace A027742.P16198768153981812634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053287 (n + 1) * A069925 (n + 1)

end

end A027742.P16198768153981812634

namespace A027742

/-- `A053287(n+1)*A069925(n+1)` -/
def P16198768153981812634.Spec : Prop :=
  ∀ n, P16198768153981812634.a n = A027742 (n + 1)

end A027742

/-! ## A027742.P11603458946133833320

`A011260(A004277(n)+2)-A000007(n)`
-/

namespace A027742.P11603458946133833320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (A004277 n + 2).toNat - A000007 n

end

end A027742.P11603458946133833320

namespace A027742

/-- `A011260(A004277(n)+2)-A000007(n)` -/
def P11603458946133833320.Spec : Prop :=
  ∀ n, P11603458946133833320.a n = A027742 (n + 1)

end A027742

/-! ## A027742.P7638957042964205805

`A011260(A004277(n+1))+A000007(n+1)`
-/

namespace A027742.P7638957042964205805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (A004277 (n + 1)).toNat + A000007 (n + 1)

end

end A027742.P7638957042964205805

namespace A027742

/-- `A011260(A004277(n+1))+A000007(n+1)` -/
def P7638957042964205805.Spec : Prop :=
  ∀ n, P7638957042964205805.a n = A027742 (n + 1)

end A027742

/-! ## A027742.P7361570429077860712

`A056742(2*(n+1))/(n+1)`
-/

namespace A027742.P7361570429077860712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056742 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A027742.P7361570429077860712

namespace A027742

/-- `A056742(2*(n+1))/(n+1)` -/
def P7361570429077860712.Spec : Prop :=
  ∀ n, P7361570429077860712.a n = (A027742 (n + 1) : ℚ)

end A027742

/-! ## A027742.P64243647251747984

`A053287(2*(n+1))/(2*(n+1))`
-/

namespace A027742.P64243647251747984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053287 (2 * (n + 1)) : ℚ) / (2 * (n + 1) : ℚ)

end

end A027742.P64243647251747984

namespace A027742

/-- `A053287(2*(n+1))/(2*(n+1))` -/
def P64243647251747984.Spec : Prop :=
  ∀ n, P64243647251747984.a n = (A027742 (n + 1) : ℚ)

end A027742

/-!
# A027743: Number of primitive polynomials of degree n over GF(7).

The programs for A027743, there is no canonical definition to state claims against.
-/

/-! ## A027743.P8063267713579295593

`A158502(∑[n+3])`
-/

namespace A027743.P8063267713579295593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158502 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027743.P8063267713579295593

/-! ## A027743.P12889517836099586978

`gcd(n, n+1)*A158502(A055998(n+1))`
-/

namespace A027743.P12889517836099586978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A158502 (A055998 (n + 1)).toNat

end

end A027743.P12889517836099586978

/-! ## A027743.P9382237557383278530

`record[A158502(A027379(A049581(n)))]`
-/

namespace A027743.P9382237557383278530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158502 (A027379 (A049581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027743.P9382237557383278530

/-! ## A027743.P4527105220827344451

`record[A158502(A027379(A106249(n)))]`
-/

namespace A027743.P4527105220827344451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158502 (A027379 (A106249 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027743.P4527105220827344451

/-! ## A027743.P5540971991549161191

`A158502(A055998(n+1))+A000045(C(n, n+1))`
-/

namespace A027743.P5540971991549161191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158502 (A055998 (n + 1)).toNat + A000045 (Nat.choose n (n + 1))

end

end A027743.P5540971991549161191

/-!
# A027744: Number of primitive polynomials of degree n over GF(8).

The programs for A027744, the canonical program `A027744.P4838682014144095258` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027744 has offset 0).

The definition of A027744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027744.P4838682014144095258

`A053287(A008486(n))/A028310(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A027744

/-- `A053287(A008486(n))/A028310(n)` -/
def P4838682014144095258.Spec : Prop :=
  ∀ n, P4838682014144095258.a n = (A027744 n : ℚ)

end A027744

/-! ## A027744.P1219051023947104462

`A053287(A008486(n))/(A000007(n)+n)`
-/

namespace A027744.P1219051023947104462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053287 (A008486 n).toNat : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A027744.P1219051023947104462

namespace A027744

/-- `A053287(A008486(n))/(A000007(n)+n)` -/
def P1219051023947104462.Spec : Prop :=
  ∀ n, P1219051023947104462.a n = (A027744 n : ℚ)

end A027744

/-! ## A027744.P1810100388914340719

`A053287(A004277(n)+n)/A028310(n)`
-/

namespace A027744.P1810100388914340719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053287 (A004277 n + (n : ℤ)).toNat : ℚ) / (A028310 n : ℚ)

end

end A027744.P1810100388914340719

namespace A027744

/-- `A053287(A004277(n)+n)/A028310(n)` -/
def P1810100388914340719.Spec : Prop :=
  ∀ n, P1810100388914340719.a n = (A027744 n : ℚ)

end A027744

/-! ## A027744.P13366590527857595189

`A053287(A008486(n))/(A004277(n)-n)`
-/

namespace A027744.P13366590527857595189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053287 (A008486 n).toNat : ℚ) / (A004277 n - (n : ℤ) : ℚ)

end

end A027744.P13366590527857595189

namespace A027744

/-- `A053287(A008486(n))/(A004277(n)-n)` -/
def P13366590527857595189.Spec : Prop :=
  ∀ n, P13366590527857595189.a n = (A027744 n : ℚ)

end A027744

/-! ## A027744.P3620572852460302350

`A053287(A008486(n))/gcd(n, A079908(n))`
-/

namespace A027744.P3620572852460302350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053287 (A008486 n).toNat : ℚ) / (Int.gcd (n : ℤ) (A079908 n) : ℚ)

end

end A027744.P3620572852460302350

namespace A027744

/-- `A053287(A008486(n))/gcd(n, A079908(n))` -/
def P3620572852460302350.Spec : Prop :=
  ∀ n, P3620572852460302350.a n = (A027744 n : ℚ)

end A027744

/-! ## A027744.P6928072676486994429

`A053287(A008486(n))/A007318(A000124(n))`
-/

namespace A027744.P6928072676486994429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053287 (A008486 n).toNat : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A027744.P6928072676486994429

namespace A027744

/-- `A053287(A008486(n))/A007318(A000124(n))` -/
def P6928072676486994429.Spec : Prop :=
  ∀ n, P6928072676486994429.a n = (A027744 n : ℚ)

end A027744

/-! ## A027744.P4025438535369774555

`A053287(A008486(n))/A004525(A004277(n))`
-/

namespace A027744.P4025438535369774555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053287 (A008486 n).toNat : ℚ) / (A004525 (A004277 n).toNat : ℚ)

end

end A027744.P4025438535369774555

namespace A027744

/-- `A053287(A008486(n))/A004525(A004277(n))` -/
def P4025438535369774555.Spec : Prop :=
  ∀ n, P4025438535369774555.a n = (A027744 n : ℚ)

end A027744

/-!
# A027745: Number of primitive polynomials of degree n over GF(9).

The programs for A027745, the canonical program `A027745.P14601779731189882620` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027745 has offset 0).

The definition of A027745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027745.P14601779731189882620

`A027385(A004277(n))*A036453(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A027745

/-- `A027385(A004277(n))*A036453(n+1)` -/
def P14601779731189882620.Spec : Prop :=
  ∀ n, P14601779731189882620.a n = A027745 n

theorem P14601779731189882620.correct : P14601779731189882620.Spec := by
  intro n
  simp only [A027745]

end A027745

/-! ## A027745.P15753272311418011043

`(2-A000007(n))*A027385(A004277(n))`
-/

namespace A027745.P15753272311418011043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A027385 (A004277 n).toNat

end

end A027745.P15753272311418011043

namespace A027745

/-- `(2-A000007(n))*A027385(A004277(n))` -/
def P15753272311418011043.Spec : Prop :=
  ∀ n, P15753272311418011043.a n = A027745 n

end A027745

/-! ## A027745.P10235721240708651219

`A020639(A103517(n))*A027385(A004277(n))`
-/

namespace A027745.P10235721240708651219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103517 n).toNat * A027385 (A004277 n).toNat

end

end A027745.P10235721240708651219

namespace A027745

/-- `A020639(A103517(n))*A027385(A004277(n))` -/
def P10235721240708651219.Spec : Prop :=
  ∀ n, P10235721240708651219.a n = A027745 n

end A027745

/-! ## A027745.P5162964881583846818

`A020639(A000010(n+2))*A027385(A004277(n))`
-/

namespace A027745.P5162964881583846818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A027385 (A004277 n).toNat

end

end A027745.P5162964881583846818

namespace A027745

/-- `A020639(A000010(n+2))*A027385(A004277(n))` -/
def P5162964881583846818.Spec : Prop :=
  ∀ n, P5162964881583846818.a n = A027745 n

end A027745

/-!
# A027746: Irregular triangle in which first row is 1, n-th row (n>1) gives prime factors of n with repetition.

The programs for A027746, there is no canonical definition to state claims against.
-/

/-! ## A027746.P13404486976972088790

`∏{e}[A006530(n+1), A000040(A112798(#+n))]`
-/

namespace A027746.P13404486976972088790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (A112798 (Nat.factorization (f1 n).natAbs p + n)).toNat

end

end A027746.P13404486976972088790

/-! ## A027746.P15805844187020715938

`∏{e}[A105560(n+1), A000040(A112798(#+n))]`
-/

namespace A027746.P15805844187020715938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (A112798 (Nat.factorization (f1 n).natAbs p + n)).toNat

end

end A027746.P15805844187020715938

/-! ## A027746.P5449112764473806537

`A006530(A265110(n+1))`
-/

namespace A027746.P5449112764473806537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A265110 (n + 1)).toNat

end

end A027746.P5449112764473806537

/-! ## A027746.P4102016547442335519

`A085392(2*A265110(n+1))`
-/

namespace A027746.P4102016547442335519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A265110 (n + 1)).toNat

end

end A027746.P4102016547442335519

/-! ## A027746.P7827665879851454050

`A002034(∏{p}[A265110(n+1), #])`
-/

namespace A027746.P7827665879851454050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A027746.P7827665879851454050

/-! ## A027746.P4986209418307312218

`A034699(∏{p}[A265110(n+1), #])`
-/

namespace A027746.P4986209418307312218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A027746.P4986209418307312218

/-! ## A027746.P9800268627207984845

`A053585(∏{p}[A265110(n+1), #])`
-/

namespace A027746.P9800268627207984845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A027746.P9800268627207984845

/-! ## A027746.P6304536528127565366

`A088387(∏{p}[A265110(n+1), #])`
-/

namespace A027746.P6304536528127565366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A027746.P6304536528127565366

/-! ## A027746.P6189104897181636196

`A085392(A265110(n+1)²)`
-/

namespace A027746.P6189104897181636196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A265110 (n + 1) ^ 2).toNat

end

end A027746.P6189104897181636196

/-! ## A027746.P16059209001191163447

`A087039(A265110(n+1)²)`
-/

namespace A027746.P16059209001191163447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A265110 (n + 1) ^ 2).toNat

end

end A027746.P16059209001191163447

/-! ## A027746.P6052916073300018108

`A087039(A265110(n+1)*A265110(n+1))`
-/

namespace A027746.P6052916073300018108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A265110 (n + 1) * A265110 (n + 1)).toNat

end

end A027746.P6052916073300018108

/-!
# A027748: Irregular triangle in which first row is 1, n-th row (n > 1) lists distinct prime factors of n.

The programs for A027748, there is no canonical definition to state claims against.
-/

/-! ## A027748.P11621566608662680241

`∏{p}[A141809(n+1), #]`
-/

namespace A027748.P11621566608662680241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A027748.P11621566608662680241

/-! ## A027748.P2702513275267289744

`A006530(A141809(n+1))`
-/

namespace A027748.P2702513275267289744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A141809 (n + 1)).toNat

end

end A027748.P2702513275267289744

/-! ## A027748.P11067131323576397364

`A014673(2*A141809(n+1))`
-/

namespace A027748.P11067131323576397364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A141809 (n + 1)).toNat

end

end A027748.P11067131323576397364

/-! ## A027748.P12643538427762311678

`A020639(A141809(2*n+1-n))`
-/

namespace A027748.P12643538427762311678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A141809 (2 * n + 1 - n)).toNat

end

end A027748.P12643538427762311678

/-! ## A027748.P2356087296959071132

`A007947(A141809(n+1)%A000040(n+1))`
-/

namespace A027748.P2356087296959071132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Int.tmod (A141809 (n + 1)) (A000040 (n + 1))).toNat

end

end A027748.P2356087296959071132

/-! ## A027748.P10452280949807856786

`A067695(2*A141809(n+1)-A141809(n+1))`
-/

namespace A027748.P10452280949807856786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (2 * A141809 (n + 1) - A141809 (n + 1)).toNat

end

end A027748.P10452280949807856786

/-! ## A027748.P4732771888580048340

`A035306(Δ[n²])`
-/

namespace A027748.P4732771888580048340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035306 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A027748.P4732771888580048340

/-! ## A027748.P13733428183127323231

`∏{d}[A035306(2*n+1), #]`
-/

namespace A027748.P13733428183127323231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035306 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A027748.P13733428183127323231

/-! ## A027748.P13197930284956226708

`A000026(A035306(2*n+1))`
-/

namespace A027748.P13197930284956226708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A035306 (2 * n + 1)).toNat

end

end A027748.P13197930284956226708

/-! ## A027748.P15141500246718092632

`A020639(A035306(n+1+n))`
-/

namespace A027748.P15141500246718092632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A035306 (n + 1 + n)).toNat

end

end A027748.P15141500246718092632

/-! ## A027748.P16088866890379884444

`filter[A035306(2*n+1), A008966(#)]`
-/

namespace A027748.P16088866890379884444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035306 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A027748.P16088866890379884444

/-! ## A027748.P5193885461859202571

`filter[A035306(2*n+1), A010055(#)]`
-/

namespace A027748.P5193885461859202571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035306 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A027748.P5193885461859202571

/-! ## A027748.P8761472125786220450

`filter[A035306(2*n+1), A080339(#)]`
-/

namespace A027748.P8761472125786220450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035306 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A027748.P8761472125786220450

/-! ## A027748.P4422375991461807638

`filter[A035306(2*n+1), A091862(#)]`
-/

namespace A027748.P4422375991461807638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035306 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A027748.P4422375991461807638

/-! ## A027748.P3775611068779523065

`filter[A035306(2*n+1), A097325(#)]`
-/

namespace A027748.P3775611068779523065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035306 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A027748.P3775611068779523065

/-! ## A027748.P1905989186646080172

`filter[A035306(2*n+1), A098725(#)]`
-/

namespace A027748.P1905989186646080172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035306 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A027748.P1905989186646080172

/-! ## A027748.P2916546252075347542

`filter[A035306(2*n+1), A105597(#)]`
-/

namespace A027748.P2916546252075347542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035306 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105597 (f1 j).toNat = 1) n)

end

end A027748.P2916546252075347542

/-! ## A027748.P2911208590904418105

`filter[A035306(2*n+1), A118102(#)]`
-/

namespace A027748.P2911208590904418105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035306 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118102 (f1 j).toNat = 1) n)

end

end A027748.P2911208590904418105

/-! ## A027748.P5005745754772454760

`filter[A035306(2*n+1), A122895(#)]`
-/

namespace A027748.P5005745754772454760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035306 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A027748.P5005745754772454760

/-! ## A027748.P5607691874525242558

`filter[A035306(2*n+1), A123927(#)]`
-/

namespace A027748.P5607691874525242558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035306 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A027748.P5607691874525242558

/-!
# A027749: Take the list 1,2,3,4,... and replace each n with all d > 1 that divide n.

The programs for A027749, there is no canonical definition to state claims against.
-/

/-! ## A027749.P13549668143192804210

`A027750(comp[∑[∏{e}[n+1, #+1]]]+1)`
-/

namespace A027749.P13549668143192804210
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A027749.P13549668143192804210

/-! ## A027749.P15842916430501533609

`A027750(comp[∑[A000005(n+1)]]+1)`
-/

namespace A027749.P15842916430501533609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A027749.P15842916430501533609

/-! ## A027749.P12316104054832944426

`A027750(eq[1, char[A006218(n+1)]+1]+1)`
-/

namespace A027749.P12316104054832944426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A027749.P12316104054832944426

/-! ## A027749.P14720904364639161587

`A127093(record[(n+1)%(A127093(n+2)+n)]+1)`
-/

namespace A027749.P14720904364639161587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A127093 (n + 2) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A027749.P14720904364639161587

/-! ## A027749.P9424064458955880202

`A002260(eq[n, n*A048158(n+1)]+1)`
-/

namespace A027749.P9424064458955880202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A048158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A027749.P9424064458955880202

/-! ## A027749.P3885055133174728124

`A193738(eq[n, n*A048158(n+1)])`
-/

namespace A027749.P3885055133174728124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A048158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027749.P3885055133174728124

/-! ## A027749.P10212880653219006803

`A002260(eq[A002260(n+1), A193212(n+1)]+1)`
-/

namespace A027749.P10212880653219006803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A027749.P10212880653219006803

/-! ## A027749.P4400498540247544186

`A002260(eq[n, n^A048158(n+1)]+1)`
-/

namespace A027749.P4400498540247544186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A048158 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A027749.P4400498540247544186

/-! ## A027749.P8920869998044319921

`A141285(eq[A141285(n+1), A196930(n+1)]+1)`
-/

namespace A027749.P8920869998044319921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A027749.P8920869998044319921

/-!
# A027750: Triangle read by rows in which row n lists the divisors of n.

The programs for A027750, there is no canonical definition to state claims against.
-/

/-! ## A027750.P786516678912873344

`abs(A233773(n+1))`
-/

namespace A027750.P786516678912873344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A233773 (n + 1)|

end

end A027750.P786516678912873344

/-! ## A027750.P18050342390861502687

`A263730(n+2)+1`
-/

namespace A027750.P18050342390861502687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263730 (n + 2) + 1

end

end A027750.P18050342390861502687

/-! ## A027750.P8705811212168385759

`gcd(A000038(n), A233773(n+1))`
-/

namespace A027750.P8705811212168385759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A233773 (n + 1))

end

end A027750.P8705811212168385759

/-! ## A027750.P6416134266329042454

`lcm(A020985(n), A233773(n+1))`
-/

namespace A027750.P6416134266329042454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A233773 (n + 1))

end

end A027750.P6416134266329042454

/-! ## A027750.P6354382526123081933

`A061017(n+1)/A056538(n+1)`
-/

namespace A027750.P6354382526123081933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061017 (n + 1) : ℚ) / (A056538 (n + 1) : ℚ)

end

end A027750.P6354382526123081933

/-! ## A027750.P9180400393543499678

`gcd(A233773(n+1)², A233773(A000027(n+1)))`
-/

namespace A027750.P9180400393543499678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A233773 (n + 1) ^ 2) (A233773 (A000027 (n + 1)).toNat)

end

end A027750.P9180400393543499678

/-! ## A027750.P10712739048738234701

`gcd(A233773(n+1)+A061017(n+1), A061017(n+1))`
-/

namespace A027750.P10712739048738234701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A233773 (n + 1) + A061017 (n + 1)) (A061017 (n + 1))

end

end A027750.P10712739048738234701

/-! ## A027750.P2819149830785874230

`lcm(A008836(n+1)*A233773(n+1), A008836(n+1))`
-/

namespace A027750.P2819149830785874230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1) * A233773 (n + 1)) (A008836 (n + 1))

end

end A027750.P2819149830785874230

/-! ## A027750.P490359065216317293

`(A397890(n+1)-A397890(n))/A056538(n+1)`
-/

namespace A027750.P490359065216317293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397890 (n + 1) - A397890 n : ℚ) / (A056538 (n + 1) : ℚ)

end

end A027750.P490359065216317293

/-! ## A027750.P11270517225280538435

`A002260(A056534(n+1))`
-/

namespace A027750.P11270517225280538435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A056534 (n + 1)).toNat

end

end A027750.P11270517225280538435

/-! ## A027750.P12519582452577332032

`A002260(eq[1, A051731(n+1)]+1)`
-/

namespace A027750.P12519582452577332032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A027750.P12519582452577332032

/-! ## A027750.P5376416123321843501

`A002260(eq[1, A164306(n+1)]+1)`
-/

namespace A027750.P5376416123321843501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A027750.P5376416123321843501

/-! ## A027750.P15764614333350202485

`A002262(eq[1, A164306(n+1)])+1`
-/

namespace A027750.P15764614333350202485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A027750.P15764614333350202485

/-! ## A027750.P1628174280210453410

`A002262(lt[A002262(n), A127093(n+1)])+1`
-/

namespace A027750.P1628174280210453410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) + 1

end

end A027750.P1628174280210453410

/-! ## A027750.P9790497997942762698

`A002262(lt[A002262(n), A127465(n+1)])+1`
-/

namespace A027750.P9790497997942762698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) + 1

end

end A027750.P9790497997942762698

/-! ## A027750.P11660026606187005841

`A002262(lt[A002262(n), A286239(n+1)])+1`
-/

namespace A027750.P11660026606187005841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) + 1

end

end A027750.P11660026606187005841

/-! ## A027750.P17823910703485624912

`A002260(eq[A002260(n+1), A050873(n+1)]+1)`
-/

namespace A027750.P17823910703485624912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A027750.P17823910703485624912

/-! ## A027750.P14204147634448291965

`A127013(record[n%(A127013(n+1)+n)]+1)`
-/

namespace A027750.P14204147634448291965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A127013 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127013 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A027750.P14204147634448291965

/-! ## A027750.P14494219706683707048

`A164306(record[A080036(n)/A164306(n+1)])`
-/

namespace A027750.P14494219706683707048
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080036 n : ℚ) / (A164306 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A027750.P14494219706683707048

/-!
# A027751: Irregular triangle read by rows in which row n lists the proper divisors of n (those divisors of n which are < n), with the first row {1} by convention.

The programs for A027751, there is no canonical definition to state claims against.
-/

/-! ## A027751.P10096524546331457285

`A027750(lt[A060576(n), A027750(n+1)])`
-/

namespace A027751.P10096524546331457285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A027751.P10096524546331457285

/-! ## A027751.P2733180234276468743

`A193738(eq[A003989(n+1), A193738(n)])`
-/

namespace A027751.P2733180234276468743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A027751.P2733180234276468743

/-! ## A027751.P662107958622001247

`A193738(eq[A048158(n+1)+1, A193738(n)])`
-/

namespace A027751.P662107958622001247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A027751.P662107958622001247

/-! ## A027751.P16135437684110809139

`A003989(lt[A056944(n+1), 3*A003989(n+1)]+1)`
-/

namespace A027751.P16135437684110809139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A027751.P16135437684110809139

/-! ## A027751.P966637630565816954

`A003989(lt[A056944(n+1)/3, A003989(n+1)]+1)`
-/

namespace A027751.P966637630565816954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056944 (n + 1) : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1)

end

end A027751.P966637630565816954

/-! ## A027751.P11314427482103989098

`A128227(eq[A050873(n+1), A128227(n)])`
-/

namespace A027751.P11314427482103989098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A027751.P11314427482103989098

/-! ## A027751.P10023569328499175966

`A193738(eq[A050873(n+1), A193738(n)])`
-/

namespace A027751.P10023569328499175966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A027751.P10023569328499175966

/-! ## A027751.P12565120751960243006

`A193738(eq[A127093(n+1), A193738(n)])`
-/

namespace A027751.P12565120751960243006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A027751.P12565120751960243006

/-! ## A027751.P12286746484848768990

`A002260(eq[0, A002024(n+2)%A002260(n+1)]+1)`
-/

namespace A027751.P12286746484848768990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 2)) (A002260 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A027751.P12286746484848768990

/-! ## A027751.P10054499484268066101

`A002260(eq[0, A004736(n+2)%A002260(n+1)]+1)`
-/

namespace A027751.P10054499484268066101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004736 (n + 2)) (A002260 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A027751.P10054499484268066101

/-! ## A027751.P9214226327963626450

`A127093(eq[A127093(n+1)%(n+1), A002262(n+1)]+1)`
-/

namespace A027751.P9214226327963626450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127093 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A027751.P9214226327963626450

/-! ## A027751.P11960368108138843932

`A193738(eq[A193738(n), A307662(n+1)])`
-/

namespace A027751.P11960368108138843932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A027751.P11960368108138843932

/-! ## A027751.P389956378834581695

`A176346(eq[A002260(n+1), A176346(n)])`
-/

namespace A027751.P389956378834581695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A027751.P389956378834581695

/-! ## A027751.P10838932836577613603

`A176346(eq[A002262(n)+1, A176346(n)])`
-/

namespace A027751.P10838932836577613603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A027751.P10838932836577613603

/-! ## A027751.P797205699515773683

`A176346(eq[1, A176346(n)-A002262(n)])`
-/

namespace A027751.P797205699515773683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 n - A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027751.P797205699515773683

/-!
# A027752: Numbers k such that k^2 + k + 3 is prime.

The programs for A027752, there is no canonical definition to state claims against.
-/

/-! ## A027752.P1143567470733162567

`floor(sqrt(A027753(n+1)-3))`
-/

namespace A027752.P1143567470733162567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A027753 (n + 1) - 3)

end

end A027752.P1143567470733162567

/-! ## A027752.P11413895728495654567

`round(sqrt(A027753(n+1)-3)*A057427(n))`
-/

namespace A027752.P11413895728495654567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A027753 (n + 1) - 3 : ℝ) * (A057427 n : ℝ))

end

end A027752.P11413895728495654567

/-! ## A027752.P11823173536755068746

`round(sqrt(A027753(n+1)-3))%A005893(n)`
-/

namespace A027752.P11823173536755068746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A027753 (n + 1) - 3 : ℝ))) (A005893 n)

end

end A027752.P11823173536755068746

/-! ## A027752.P11206545678786365626

`round(sqrt(A027753(n+1)-3)*A080335(n)%2)`
-/

namespace A027752.P11206545678786365626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A027753 (n + 1) - 3 : ℝ) * (Int.tmod (A080335 n) 2 : ℝ))

end

end A027752.P11206545678786365626

/-! ## A027752.P16045593627781268338

`record[gcd(n, A284321(A289356(n)))]`
-/

namespace A027752.P16045593627781268338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A284321 (A289356 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027752.P16045593627781268338

/-! ## A027752.P14725141114954245655

`eq[1, (A131534(n)-A289356(n))²]`
-/

namespace A027752.P14725141114954245655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131534 n - A289356 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027752.P14725141114954245655

/-! ## A027752.P18128489391685088486

`eq[1, ∑{e}[n²+3+n, #]]`
-/

namespace A027752.P18128489391685088486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027752.P18128489391685088486

/-! ## A027752.P5813251114223602839

`lt[∑{e}[n²+3+n, #], 2]`
-/

namespace A027752.P5813251114223602839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 3 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A027752.P5813251114223602839

/-! ## A027752.P14066605693772773921

`eq[1, (1-A181953(n+1))²]`
-/

namespace A027752.P14066605693772773921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A181953 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027752.P14066605693772773921

/-!
# A027753: Primes of form n^2 + n + 3.

The programs for A027753, there is no canonical definition to state claims against.
-/

/-! ## A027753.P14225197400876576753

`A027752(n+1)²+A027752(n+1)+3`
-/

namespace A027753.P14225197400876576753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027752 (n + 1) ^ 2 + A027752 (n + 1) + 3

end

end A027753.P14225197400876576753

/-! ## A027753.P17055373255945179334

`A027688(A027752(n+1))`
-/

namespace A027753.P17055373255945179334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 (A027752 (n + 1)).toNat

end

end A027753.P17055373255945179334

/-! ## A027753.P17557732561687479747

`A118403(A027752(n+1)+2)`
-/

namespace A027753.P17557732561687479747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118403 (A027752 (n + 1) + 2).toNat

end

end A027753.P17557732561687479747

/-! ## A027753.P8960733322779226204

`A027689(A027752(A000027(n+1)))-1`
-/

namespace A027753.P8960733322779226204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 (A027752 (A000027 (n + 1)).toNat).toNat - 1

end

end A027753.P8960733322779226204

/-! ## A027753.P17612898799645238027

`A027689(A027752(n+1))-A020985(n)²`
-/

namespace A027753.P17612898799645238027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 (A027752 (n + 1)).toNat - A020985 n ^ 2

end

end A027753.P17612898799645238027

/-! ## A027753.P16814024644784012842

`A027689(A027752(n+1))-A065357(n)²`
-/

namespace A027753.P16814024644784012842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 (A027752 (n + 1)).toNat - A065357 n ^ 2

end

end A027753.P16814024644784012842

/-! ## A027753.P7266407689128680917

`A027689(A027752(n+1))-char[A004442(n)]`
-/

namespace A027753.P7266407689128680917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 (A027752 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A027753.P7266407689128680917

/-! ## A027753.P10142359067707664747

`A027689(A027752(n+1))-char[A014681(n)]`
-/

namespace A027753.P10142359067707664747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 (A027752 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A027753.P10142359067707664747

/-! ## A027753.P5685214564110641882

`A027689(A027752(n+1))-char[A028242(n)]`
-/

namespace A027753.P5685214564110641882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 (A027752 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A027753.P5685214564110641882

/-! ## A027753.P14359030758169350151

`A027689(A027752(n+1))-A000034(2*n)`
-/

namespace A027753.P14359030758169350151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 (A027752 (n + 1)).toNat - A000034 (2 * n)

end

end A027753.P14359030758169350151

/-! ## A027753.P4615864019406394509

`A027689(A027752(n+1))-A001222(A020483(n))`
-/

namespace A027753.P4615864019406394509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 (A027752 (n + 1)).toNat - A001222 (A020483 n).toNat

end

end A027753.P4615864019406394509

/-! ## A027753.P14870790091693262808

`A027689(A027752(n+1))-A001222(A081256(n+1))`
-/

namespace A027753.P14870790091693262808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 (A027752 (n + 1)).toNat - A001222 (A081256 (n + 1)).toNat

end

end A027753.P14870790091693262808

/-! ## A027753.P11698239116699170792

`A027689(A027752(n+1))+A008683(A002146(n))`
-/

namespace A027753.P11698239116699170792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 (A027752 (n + 1)).toNat + A008683 (A002146 n).toNat

end

end A027753.P11698239116699170792

/-!
# A027754: Numbers k such that k^2 + k + 5 is prime.

The programs for A027754, there is no canonical definition to state claims against.
-/

/-! ## A027754.P5528157091302729964

`floor(sqrt(A027755(n+1)-5))`
-/

namespace A027754.P5528157091302729964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A027755 (n + 1) - 5)

end

end A027754.P5528157091302729964

/-! ## A027754.P9454688954778462685

`round(sqrt(A027755(2*n-n+1)-5))`
-/

namespace A027754.P9454688954778462685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A027755 ((2 * n : ℤ) - (n : ℤ) + 1).toNat - 5 : ℝ))

end

end A027754.P9454688954778462685

/-! ## A027754.P9277618403378352434

`ceil(sqrt(A027755(n+1)-5)-A057427(n))`
-/

namespace A027754.P9277618403378352434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A027755 (n + 1) - 5 : ℝ) - (A057427 n : ℝ)⌉

end

end A027754.P9277618403378352434

/-! ## A027754.P8690336711980034502

`round(sqrt(A027755(n+1)-5-A024890(n+2)))`
-/

namespace A027754.P8690336711980034502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A027755 (n + 1) - 5 - A024890 (n + 2) : ℝ))

end

end A027754.P8690336711980034502

/-! ## A027754.P14867600274911022084

`round(sqrt(A027755(n+1)-5))%A023545(n+1)`
-/

namespace A027754.P14867600274911022084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A027755 (n + 1) - 5 : ℝ))) (A023545 (n + 1))

end

end A027754.P14867600274911022084

/-! ## A027754.P1293036919858626655

`eq[1, ∑{e}[a(n-1)+2*n, #]]` with `a(0)=5`
-/

namespace A027754.P1293036919858626655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f3 =>
  f3 (n - 1) + 2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027754.P1293036919858626655

/-! ## A027754.P14609705648880408346

`lt[∑{e}[a(n-1)+2*n, #], 2]` with `a(0)=5`
-/

namespace A027754.P14609705648880408346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + 2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A027754.P14609705648880408346

/-! ## A027754.P11567861183885305065

`eq[1, A001222(∑[2*n]+5)]`
-/

namespace A027754.P11567861183885305065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027754.P11567861183885305065

/-! ## A027754.P9717257406657609927

`eq[2, A000005(n²+5+n)]`
-/

namespace A027754.P9717257406657609927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 5 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027754.P9717257406657609927

/-! ## A027754.P5205503175306337651

`lt[A000005(n²+n+5), 3]`
-/

namespace A027754.P5205503175306337651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + (n + 5))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A027754.P5205503175306337651

/-!
# A027755: Primes of the form k^2 + k + 5.

The programs for A027755, there is no canonical definition to state claims against.
-/

/-! ## A027755.P6357528770914166568

`A027754(n+1)²+A027754(n+1)+5`
-/

namespace A027755.P6357528770914166568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027754 (n + 1) ^ 2 + A027754 (n + 1) + 5

end

end A027755.P6357528770914166568

/-! ## A027755.P14000024824342409119

`A027690(A027754(n+1))`
-/

namespace A027755.P14000024824342409119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027690 (A027754 (n + 1)).toNat

end

end A027755.P14000024824342409119

/-! ## A027755.P17220091552814344772

`A002061(A027754(n+1)+1)+4`
-/

namespace A027755.P17220091552814344772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A027754 (n + 1) + 1).toNat + 4

end

end A027755.P17220091552814344772

/-! ## A027755.P11877604335444880695

`A027689(A027754(n+1))+A001222(A020483(n))`
-/

namespace A027755.P11877604335444880695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 (A027754 (n + 1)).toNat + A001222 (A020483 n).toNat

end

end A027755.P11877604335444880695

/-! ## A027755.P3380704594860148963

`A027691(A027754(n+1))-A000265(A001316(n))`
-/

namespace A027755.P3380704594860148963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 (A027754 (n + 1)).toNat - A000265 (A001316 n).toNat

end

end A027755.P3380704594860148963

/-! ## A027755.P9497049847986709047

`p?[∑[2*n]+5]`
-/

namespace A027755.P9497049847986709047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A027755.P9497049847986709047

/-! ## A027755.P13539128893702987513

`or(1, p?[n²+5+n])`
-/

namespace A027755.P13539128893702987513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 5 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A027755.P13539128893702987513

/-! ## A027755.P15640016447808712327

`record[∑{p}[n²+5+n, #]]`
-/

namespace A027755.P15640016447808712327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 5 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027755.P15640016447808712327

/-! ## A027755.P12969420223721096796

`∏{p}[p?[n²+5+n], #]`
-/

namespace A027755.P12969420223721096796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 5 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A027755.P12969420223721096796

/-! ## A027755.P3606951396253483223

`abs(p?[a(n-1)+n+n]-2)+2` with `a(0)=5`
-/

namespace A027755.P3606951396253483223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 2| + 2

end

end A027755.P3606951396253483223

/-! ## A027755.P4956244724154782099

`A000027(p?[a(n-1)+2*n])` with `a(0)=5`
-/

namespace A027755.P4956244724154782099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A027755.P4956244724154782099

/-! ## A027755.P3582520041876986776

`∩[A106954(n+1), A027690(n)]`
-/

namespace A027755.P3582520041876986776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027690 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027755.P3582520041876986776

/-!
# A027756: Numbers k such that k^2 + k + 7 is prime.

The programs for A027756, there is no canonical definition to state claims against.
-/

/-! ## A027756.P5084898716337973665

`floor(sqrt(A005471(n+1)-7))`
-/

namespace A027756.P5084898716337973665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005471 (n + 1) - 7)

end

end A027756.P5084898716337973665

/-! ## A027756.P17035105557716417951

`round(sqrt(A005471(C(n+1, n))-7))`
-/

namespace A027756.P17035105557716417951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A005471 (Nat.choose (n + 1) n) - 7 : ℝ))

end

end A027756.P17035105557716417951

/-! ## A027756.P17409159805687835386

`round(sqrt(A005471(2*n+1-n)-7))`
-/

namespace A027756.P17409159805687835386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A005471 (2 * n + 1 - n) - 7 : ℝ))

end

end A027756.P17409159805687835386

/-! ## A027756.P7042706596299974546

`round(sqrt(A005471(n+1)-7))%A169739(n)`
-/

namespace A027756.P7042706596299974546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A005471 (n + 1) - 7 : ℝ))) (A169739 n)

end

end A027756.P7042706596299974546

/-! ## A027756.P9710763168152529116

`A175282(round(sqrt(n²+1)))-A153881(n+1)`
-/

namespace A027756.P9710763168152529116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A153881 (n + 1)

end

end A027756.P9710763168152529116

/-! ## A027756.P44806728088898494

`round(sqrt(p?[n²+7+n]-7))`
-/

namespace A027756.P44806728088898494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 7 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 7 : ℝ))

end

end A027756.P44806728088898494

/-! ## A027756.P4970701376227104813

`eq[1, A001222(n²+7+n)]`
-/

namespace A027756.P4970701376227104813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 7 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027756.P4970701376227104813

/-! ## A027756.P16192067328288852328

`eq[2, A000005(n²+7+n)]`
-/

namespace A027756.P16192067328288852328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 7 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027756.P16192067328288852328

/-! ## A027756.P12570759423902002886

`lt[A001222(n²+n+7), 2]`
-/

namespace A027756.P12570759423902002886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + n + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A027756.P12570759423902002886

/-! ## A027756.P1244038501417077542

`lt[A000005(n²+n+7), 3]`
-/

namespace A027756.P1244038501417077542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + n + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A027756.P1244038501417077542

/-!
# A027757: Numbers k such that k^2 + k + 9 is prime.

The programs for A027757, there is no canonical definition to state claims against.
-/

/-! ## A027757.P13105592522384723357

`floor(sqrt(A027758(n+1)-8))`
-/

namespace A027757.P13105592522384723357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A027758 (n + 1) - 8)

end

end A027757.P13105592522384723357

/-! ## A027757.P10652542564260766158

`round(sqrt(A027758(n+1))-A054977(n))`
-/

namespace A027757.P10652542564260766158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A027758 (n + 1) : ℝ) - (A054977 n : ℝ))

end

end A027757.P10652542564260766158

/-! ## A027757.P16201085696253051449

`round(sqrt(A027758(n+1)-8-A102097(n+1)))`
-/

namespace A027757.P16201085696253051449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A027758 (n + 1) - 8 - A102097 (n + 1) : ℝ))

end

end A027757.P16201085696253051449

/-! ## A027757.P15620294232323057043

`round(sqrt(A027758(n+1)-8-A166333(n+1)))`
-/

namespace A027757.P15620294232323057043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A027758 (n + 1) - 8 - A166333 (n + 1) : ℝ))

end

end A027757.P15620294232323057043

/-! ## A027757.P2020117140714367200

`round(sqrt(A027758(n+1)-8-A047784(n+2)))`
-/

namespace A027757.P2020117140714367200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A027758 (n + 1) - 8 - A047784 (n + 2) : ℝ))

end

end A027757.P2020117140714367200

/-! ## A027757.P4699921338184493465

`ceil(A057428(n+1)+sqrt(A027758(n+1)-8))`
-/

namespace A027757.P4699921338184493465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 (n + 1) : ℝ) + Real.sqrt (A027758 (n + 1) - 8 : ℝ)⌉

end

end A027757.P4699921338184493465

/-! ## A027757.P1768736247978127659

`round(sqrt(A027758(n+1)-8-A313349(n)))`
-/

namespace A027757.P1768736247978127659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A027758 (n + 1) - 8 - A313349 n : ℝ))

end

end A027757.P1768736247978127659

/-! ## A027757.P13964974802457907033

`round(sqrt(A027758(n+1)-8-A245541(n+1)))`
-/

namespace A027757.P13964974802457907033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A027758 (n + 1) - 8 - A245541 (n + 1) : ℝ))

end

end A027757.P13964974802457907033

/-!
# A027758: Primes of the form k^2 + k + 9.

The programs for A027758, there is no canonical definition to state claims against.
-/

/-! ## A027758.P13654217825149457551

`A027694(A027757(n+1))`
-/

namespace A027758.P13654217825149457551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027694 (A027757 (n + 1)).toNat

end

end A027758.P13654217825149457551

/-! ## A027758.P13544861087282855225

`∩[A173295(n+1), A027694(n)]`
-/

namespace A027758.P13544861087282855225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027694 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027758.P13544861087282855225

/-! ## A027758.P7301228496619566436

`A048058(A027757(n+1))-A000034(A005408(n))`
-/

namespace A027758.P7301228496619566436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 (A027757 (n + 1)).toNat - A000034 (A005408 n).toNat

end

end A027758.P7301228496619566436

/-! ## A027758.P2495380527062124037

`A048058(A027757(n+1))-A000034(A053193(n+1))`
-/

namespace A027758.P2495380527062124037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 (A027757 (n + 1)).toNat - A000034 (A053193 (n + 1)).toNat

end

end A027758.P2495380527062124037

/-! ## A027758.P4169319044104201564

`A048058(A027757(n+1))-A020639(A027691(n))`
-/

namespace A027758.P4169319044104201564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 (A027757 (n + 1)).toNat - A020639 (A027691 n).toNat

end

end A027758.P4169319044104201564

/-! ## A027758.P13261210659471881971

`A048058(A027757(n+1))-A020639(A027693(n))`
-/

namespace A027758.P13261210659471881971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 (A027757 (n + 1)).toNat - A020639 (A027693 n).toNat

end

end A027758.P13261210659471881971

/-! ## A027758.P16733082301706269646

`A048058(A027757(n+1))-A000034(A048058(n))`
-/

namespace A027758.P16733082301706269646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 (A027757 (n + 1)).toNat - A000034 (A048058 n).toNat

end

end A027758.P16733082301706269646

/-! ## A027758.P14380177467906999143

`p?[∑[2*n]+9]`
-/

namespace A027758.P14380177467906999143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A027758.P14380177467906999143

/-! ## A027758.P15977785495226998404

`or(1, p?[n²+9+n])`
-/

namespace A027758.P15977785495226998404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 9 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A027758.P15977785495226998404

/-! ## A027758.P4826989367034574811

`∩[A061238(n+1), A027694(n)]`
-/

namespace A027758.P4826989367034574811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027694 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027758.P4826989367034574811

/-!
# A027759: Numerator of Sum_{p prime, p-1|n} 1/p.

The programs for A027759, there is no canonical definition to state claims against.
-/

/-! ## A027759.P17690801456187296972

`A166306((n+1)/2*n%2+1)`
-/

namespace A027759.P17690801456187296972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2 * ((n % 2 : ℕ) : ℚ) + 1)).toNat

end

end A027759.P17690801456187296972

/-! ## A027759.P12998454434044785474

`A166306(A133622(n+1))`
-/

namespace A027759.P12998454434044785474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166306 (A133622 (n + 1)).toNat

end

end A027759.P12998454434044785474

/-! ## A027759.P5023553185830652684

`A166306(∑[A001057(n)]+1)`
-/

namespace A027759.P5023553185830652684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166306 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A027759.P5023553185830652684

/-! ## A027759.P16646152737050069980

`A166306(A080512(n+1)-n)`
-/

namespace A027759.P16646152737050069980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166306 (A080512 (n + 1) - (n : ℤ)).toNat

end

end A027759.P16646152737050069980

/-! ## A027759.P5292600769640860458

`A166306(gcd(A000096(n), A080513(n)))`
-/

namespace A027759.P5292600769640860458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166306 (Int.gcd (A000096 n) (A080513 n))

end

end A027759.P5292600769640860458

/-! ## A027759.P3122307574646607787

`A166306(A158416(n+1))`
-/

namespace A027759.P3122307574646607787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166306 (A158416 (n + 1)).toNat

end

end A027759.P3122307574646607787

/-! ## A027759.P6991739261498787525

`A166306(A142150(n+1)+1)`
-/

namespace A027759.P6991739261498787525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166306 (A142150 (n + 1) + 1).toNat

end

end A027759.P6991739261498787525

/-!
# A027760: Denominator of Sum_{p prime, p-1 divides n} 1/p.

The programs for A027760, the canonical program `A027760.P284501517253735648` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027760 has offset 1).

The definition of A027760 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A027760.P284501517253735648

`A091137(n+1)/A091137(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A027760

/-- `A091137(n+1)/A091137(n)` -/
def P284501517253735648.Spec : Prop :=
  ∀ n, P284501517253735648.a n = (A027760 (n + 1) : ℚ)

end A027760

/-! ## A027760.P16478757186083580087

`A141056(n+1)`
-/

namespace A027760.P16478757186083580087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (n + 1)

end

end A027760.P16478757186083580087

namespace A027760

/-- `A141056(n+1)` -/
def P16478757186083580087.Spec : Prop :=
  ∀ n, P16478757186083580087.a n = A027760 (n + 1)

end A027760

/-! ## A027760.P13950649390322960335

`2*A141459(n+1)`
-/

namespace A027760.P13950649390322960335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141459 (n + 1)

end

end A027760.P13950649390322960335

namespace A027760

/-- `2*A141459(n+1)` -/
def P13950649390322960335.Spec : Prop :=
  ∀ n, P13950649390322960335.a n = A027760 (n + 1)

end A027760

/-! ## A027760.P5075757446986778818

`lcm(2, A027642(n+1))`
-/

namespace A027760.P5075757446986778818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A027642 (n + 1))

end

end A027760.P5075757446986778818

namespace A027760

/-- `lcm(2, A027642(n+1))` -/
def P5075757446986778818.Spec : Prop :=
  ∀ n, (P5075757446986778818.a n : ℤ) = A027760 (n + 1)

end A027760

/-! ## A027760.P5357471326013650445

`or(2, A106458(n+1))`
-/

namespace A027760.P5357471326013650445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A106458 (n + 1))

end

end A027760.P5357471326013650445

namespace A027760

/-- `or(2, A106458(n+1))` -/
def P5357471326013650445.Spec : Prop :=
  ∀ n, P5357471326013650445.a n = A027760 (n + 1)

end A027760

/-! ## A027760.P10294753516603536792

`2*ceil(ratio[A141459(n)])`
-/

namespace A027760.P10294753516603536792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A027760.P10294753516603536792

namespace A027760

/-- `2*ceil(ratio[A141459(n)])` -/
def P10294753516603536792.Spec : Prop :=
  ∀ n, P10294753516603536792.a n = A027760 (n + 1)

end A027760

/-! ## A027760.P12178192935317504553

`ratio[A141056(n)]*A141056(n)`
-/

namespace A027760.P12178192935317504553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A141056 n : ℚ)

end

end A027760.P12178192935317504553

namespace A027760

/-- `ratio[A141056(n)]*A141056(n)` -/
def P12178192935317504553.Spec : Prop :=
  ∀ n, P12178192935317504553.a n = (A027760 (n + 1) : ℚ)

end A027760

/-! ## A027760.P7924114020040340181

`A106458(A141310(n+1)-1)`
-/

namespace A027760.P7924114020040340181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (A141310 (n + 1) - 1).toNat

end

end A027760.P7924114020040340181

namespace A027760

/-- `A106458(A141310(n+1)-1)` -/
def P7924114020040340181.Spec : Prop :=
  ∀ n, P7924114020040340181.a n = A027760 (n + 1)

end A027760

/-! ## A027760.P1243040267267839337

`A027642(1-A237420(n)+n)`
-/

namespace A027760.P1243040267267839337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (1 - A237420 n + (n : ℤ)).toNat

end

end A027760.P1243040267267839337

namespace A027760

/-- `A027642(1-A237420(n)+n)` -/
def P1243040267267839337.Spec : Prop :=
  ∀ n, P1243040267267839337.a n = A027760 (n + 1)

end A027760

/-! ## A027760.P5361299680940856301

`A027642(n+1)*A040001(n)`
-/

namespace A027760.P5361299680940856301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (n + 1) * A040001 n

end

end A027760.P5361299680940856301

namespace A027760

/-- `A027642(n+1)*A040001(n)` -/
def P5361299680940856301.Spec : Prop :=
  ∀ n, P5361299680940856301.a n = A027760 (n + 1)

end A027760

/-! ## A027760.P3992762074429078159

`A027642((n+1)/A346468(n+2))`
-/

namespace A027760.P3992762074429078159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A346468 (n + 2) : ℚ))).toNat

end

end A027760.P3992762074429078159

namespace A027760

/-- `A027642((n+1)/A346468(n+2))` -/
def P3992762074429078159.Spec : Prop :=
  ∀ n, P3992762074429078159.a n = A027760 (n + 1)

end A027760

/-! ## A027760.P12128391620645810391

`gcd(A027762(n+1), A079612(n+1))`
-/

namespace A027760.P12128391620645810391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027762 (n + 1)) (A079612 (n + 1))

end

end A027760.P12128391620645810391

namespace A027760

/-- `gcd(A027762(n+1), A079612(n+1))` -/
def P12128391620645810391.Spec : Prop :=
  ∀ n, (P12128391620645810391.a n : ℤ) = A027760 (n + 1)

end A027760

/-! ## A027760.P2270096473294060406

`2*A027642(n+1)-A106458(n+1)`
-/

namespace A027760.P2270096473294060406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027642 (n + 1) - A106458 (n + 1)

end

end A027760.P2270096473294060406

namespace A027760

/-- `2*A027642(n+1)-A106458(n+1)` -/
def P2270096473294060406.Spec : Prop :=
  ∀ n, P2270096473294060406.a n = A027760 (n + 1)

end A027760

/-! ## A027760.P7676325462370066790

`A141459(n+1)+A141459(A014681(n))`
-/

namespace A027760.P7676325462370066790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 (n + 1) + A141459 (A014681 n).toNat

end

end A027760.P7676325462370066790

namespace A027760

/-- `A141459(n+1)+A141459(A014681(n))` -/
def P7676325462370066790.Spec : Prop :=
  ∀ n, P7676325462370066790.a n = A027760 (n + 1)

end A027760

/-! ## A027760.P7802479170399641471

`A176591(A124625(n)+2)`
-/

namespace A027760.P7802479170399641471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 (A124625 n + 2).toNat

end

end A027760.P7802479170399641471

namespace A027760

/-- `A176591(A124625(n)+2)` -/
def P7802479170399641471.Spec : Prop :=
  ∀ n, P7802479170399641471.a n = A027760 (n + 1)

end A027760

/-! ## A027760.P1346310830990211153

`A027642(A346467(n+2))`
-/

namespace A027760.P1346310830990211153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A346467 (n + 2)).toNat

end

end A027760.P1346310830990211153

namespace A027760

/-- `A027642(A346467(n+2))` -/
def P1346310830990211153.Spec : Prop :=
  ∀ n, P1346310830990211153.a n = A027760 (n + 1)

end A027760

/-! ## A027760.P1174956930007822722

`gcd(A010673(n+1), A106458(n+1))`
-/

namespace A027760.P1174956930007822722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010673 (n + 1)) (A106458 (n + 1))

end

end A027760.P1174956930007822722

namespace A027760

/-- `gcd(A010673(n+1), A106458(n+1))` -/
def P1174956930007822722.Spec : Prop :=
  ∀ n, (P1174956930007822722.a n : ℤ) = A027760 (n + 1)

end A027760

/-! ## A027760.P4180681429750649891

`A176591(xor(1, n+2))`
-/

namespace A027760.P4180681429750649891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 (Nat.xor 1 (n + 2))

end

end A027760.P4180681429750649891

namespace A027760

/-- `A176591(xor(1, n+2))` -/
def P4180681429750649891.Spec : Prop :=
  ∀ n, P4180681429750649891.a n = A027760 (n + 1)

end A027760

/-! ## A027760.P17186598225760608977

`A027642(A124625(n+2))`
-/

namespace A027760.P17186598225760608977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A124625 (n + 2)).toNat

end

end A027760.P17186598225760608977

namespace A027760

/-- `A027642(A124625(n+2))` -/
def P17186598225760608977.Spec : Prop :=
  ∀ n, P17186598225760608977.a n = A027760 (n + 1)

end A027760

/-! ## A027760.P3699339813152985660

`A176591(A065190(n+2))`
-/

namespace A027760.P3699339813152985660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 (A065190 (n + 2)).toNat

end

end A027760.P3699339813152985660

namespace A027760

/-- `A176591(A065190(n+2))` -/
def P3699339813152985660.Spec : Prop :=
  ∀ n, P3699339813152985660.a n = A027760 (n + 1)

end A027760

/-!
# A027761: Numerator of sum_{p prime, p-1 divides 2*n} 1/p.

The programs for A027761, there is no canonical definition to state claims against.
-/

/-! ## A027761.P3678452309504213801

`A166306(n+2)`
-/

namespace A027761.P3678452309504213801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166306 (n + 2)

end

end A027761.P3678452309504213801

/-! ## A027761.P2647148940977450472

`A027759(2*(n+1))`
-/

namespace A027761.P2647148940977450472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027759 (2 * (n + 1))

end

end A027761.P2647148940977450472

/-! ## A027761.P7032736897753917964

`or(1, A027759(n+2+n))`
-/

namespace A027761.P7032736897753917964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A027759 (n + 2 + n))

end

end A027761.P7032736897753917964

/-! ## A027761.P12652114022719233241

`lcm(Δ[A008611(n)], A027759(n+2+n))`
-/

namespace A027761.P12652114022719233241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A027759 (n + 2 + n))

end

end A027761.P12652114022719233241

/-! ## A027761.P14072192924587652606

`A027759(A004277(n+1))/A027759(A109371(n+2))`
-/

namespace A027761.P14072192924587652606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027759 (A004277 (n + 1)).toNat : ℚ) / (A027759 (A109371 (n + 2)).toNat : ℚ)

end

end A027761.P14072192924587652606

/-! ## A027761.P8914832700272871570

`A027759(n+2+n)/A001222(A242255(n+1))`
-/

namespace A027761.P8914832700272871570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027759 (n + 2 + n) : ℚ) / (A001222 (A242255 (n + 1)).toNat : ℚ)

end

end A027761.P8914832700272871570

/-! ## A027761.P15145431569388660006

`A000146(n+1)*A002445(n+1)-A000367(n+1)`
-/

namespace A027761.P15145431569388660006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000146 (n + 1) * A002445 (n + 1) - A000367 (n + 1)

end

end A027761.P15145431569388660006

/-!
# A027762: Denominator of Sum_{p prime, p-1 divides 2*n} 1/p.

The programs for A027762, the canonical program `A027762.P18246507595659144078` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027762 has offset 1).

The definition of A027762 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027760, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A027762.P17028967647028656884

`A002445(n+1)`
-/

namespace A027762.P17028967647028656884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (n + 1)

end

end A027762.P17028967647028656884

namespace A027762

/-- `A002445(n+1)` -/
def P17028967647028656884.Spec : Prop :=
  ∀ n, P17028967647028656884.a n = A027762 (n + 1)

end A027762

/-! ## A027762.P18246507595659144078

`A027760(2*(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A027762

/-- `A027760(2*(n+1))` -/
def P18246507595659144078.Spec : Prop :=
  ∀ n, P18246507595659144078.a n = A027762 (n + 1)

theorem P18246507595659144078.correct : P18246507595659144078.Spec := by
  intro n
  simp only [A027762, Nat.add_sub_cancel]

end A027762

/-! ## A027762.P15108527688971011005

`3*A277087(n+1)`
-/

namespace A027762.P15108527688971011005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A277087 (n + 1)

end

end A027762.P15108527688971011005

namespace A027762

/-- `3*A277087(n+1)` -/
def P15108527688971011005.Spec : Prop :=
  ∀ n, P15108527688971011005.a n = A027762 (n + 1)

end A027762

/-! ## A027762.P1190768548077688463

`lcm(2, A002445(Δ[n²]-n))`
-/

namespace A027762.P1190768548077688463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A002445 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A027762.P1190768548077688463

namespace A027762

/-- `lcm(2, A002445(Δ[n²]-n))` -/
def P1190768548077688463.Spec : Prop :=
  ∀ n, (P1190768548077688463.a n : ℤ) = A027762 (n + 1)

end A027762

/-! ## A027762.P13407032103227106725

`or(2, A002445(record[xor(1, n)]-n))`
-/

namespace A027762.P13407032103227106725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A002445 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - n))

end

end A027762.P13407032103227106725

namespace A027762

/-- `or(2, A002445(record[xor(1, n)]-n))` -/
def P13407032103227106725.Spec : Prop :=
  ∀ n, P13407032103227106725.a n = A027762 (n + 1)

end A027762

/-! ## A027762.P12164884169658746588

`or(2, A002445(ϕ²-(ϕ-n)))`
-/

namespace A027762.P12164884169658746588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A002445 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A027762.P12164884169658746588

namespace A027762

/-- `or(2, A002445(ϕ²-(ϕ-n)))` -/
def P12164884169658746588.Spec : Prop :=
  ∀ n, P12164884169658746588.a n = A027762 (n + 1)

end A027762

/-! ## A027762.P18091094416253050663

`A165734(n+1)*A165949(n+1)`
-/

namespace A027762.P18091094416253050663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165734 (n + 1) * A165949 (n + 1)

end

end A027762.P18091094416253050663

namespace A027762

/-- `A165734(n+1)*A165949(n+1)` -/
def P18091094416253050663.Spec : Prop :=
  ∀ n, P18091094416253050663.a n = A027762 (n + 1)

end A027762

/-! ## A027762.P5378456385541232152

`Δ[or(1, ∑[A002445(n)])]`
-/

namespace A027762.P5378456385541232152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027762.P5378456385541232152

namespace A027762

/-- `Δ[or(1, ∑[A002445(n)])]` -/
def P5378456385541232152.Spec : Prop :=
  ∀ n, P5378456385541232152.a n = A027762 (n + 1)

end A027762

/-! ## A027762.P1755046451166059695

`A040214(n+1)*A165949(n+1)`
-/

namespace A027762.P1755046451166059695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040214 (n + 1) * A165949 (n + 1)

end

end A027762.P1755046451166059695

namespace A027762

/-- `A040214(n+1)*A165949(n+1)` -/
def P1755046451166059695.Spec : Prop :=
  ∀ n, P1755046451166059695.a n = A027762 (n + 1)

end A027762

/-! ## A027762.P17786365980770706357

`A106458(2*(n+1))`
-/

namespace A027762.P17786365980770706357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (2 * (n + 1))

end

end A027762.P17786365980770706357

namespace A027762

/-- `A106458(2*(n+1))` -/
def P17786365980770706357.Spec : Prop :=
  ∀ n, P17786365980770706357.a n = A027762 (n + 1)

end A027762

/-! ## A027762.P2551056838911732951

`A141056(2*(n+1))`
-/

namespace A027762.P2551056838911732951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (2 * (n + 1))

end

end A027762.P2551056838911732951

namespace A027762

/-- `A141056(2*(n+1))` -/
def P2551056838911732951.Spec : Prop :=
  ∀ n, P2551056838911732951.a n = A027762 (n + 1)

end A027762

/-! ## A027762.P16908790309757467979

`A027642(2*(n+1))`
-/

namespace A027762.P16908790309757467979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * (n + 1))

end

end A027762.P16908790309757467979

namespace A027762

/-- `A027642(2*(n+1))` -/
def P16908790309757467979.Spec : Prop :=
  ∀ n, P16908790309757467979.a n = A027762 (n + 1)

end A027762

/-! ## A027762.P5478562987446392567

`2*A141459(2*(n+1))`
-/

namespace A027762.P5478562987446392567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141459 (2 * (n + 1))

end

end A027762.P5478562987446392567

namespace A027762

/-- `2*A141459(2*(n+1))` -/
def P5478562987446392567.Spec : Prop :=
  ∀ n, P5478562987446392567.a n = A027762 (n + 1)

end A027762

/-! ## A027762.P4111085512298375754

`A176591(2*(n+1))`
-/

namespace A027762.P4111085512298375754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 (2 * (n + 1))

end

end A027762.P4111085512298375754

namespace A027762

/-- `A176591(2*(n+1))` -/
def P4111085512298375754.Spec : Prop :=
  ∀ n, P4111085512298375754.a n = A027762 (n + 1)

end A027762

/-! ## A027762.P13320911810234005528

`A051717(A014601(n+1))`
-/

namespace A027762.P13320911810234005528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A014601 (n + 1)).toNat

end

end A027762.P13320911810234005528

namespace A027762

/-- `A051717(A014601(n+1))` -/
def P13320911810234005528.Spec : Prop :=
  ∀ n, P13320911810234005528.a n = A027762 (n + 1)

end A027762

/-! ## A027762.P14643340881067835737

`A051717(A059010(n+1))`
-/

namespace A027762.P14643340881067835737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A059010 (n + 1)).toNat

end

end A027762.P14643340881067835737

namespace A027762

/-- `A051717(A059010(n+1))` -/
def P14643340881067835737.Spec : Prop :=
  ∀ n, P14643340881067835737.a n = A027762 (n + 1)

end A027762

/-! ## A027762.P13063540553693414882

`A051717(A154708(n+1))`
-/

namespace A027762.P13063540553693414882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A154708 (n + 1)).toNat

end

end A027762.P13063540553693414882

namespace A027762

/-- `A051717(A154708(n+1))` -/
def P13063540553693414882.Spec : Prop :=
  ∀ n, P13063540553693414882.a n = A027762 (n + 1)

end A027762

/-! ## A027762.P6027124509897019581

`A051717(A212439(n+1))`
-/

namespace A027762.P6027124509897019581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A212439 (n + 1)).toNat

end

end A027762.P6027124509897019581

namespace A027762

/-- `A051717(A212439(n+1))` -/
def P6027124509897019581.Spec : Prop :=
  ∀ n, P6027124509897019581.a n = A027762 (n + 1)

end A027762

/-! ## A027762.P348153110792590487

`A051717(A004277(n)+2)`
-/

namespace A027762.P348153110792590487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A004277 n + 2).toNat

end

end A027762.P348153110792590487

namespace A027762

/-- `A051717(A004277(n)+2)` -/
def P348153110792590487.Spec : Prop :=
  ∀ n, P348153110792590487.a n = A027762 (n + 1)

end A027762

/-! ## A027762.P7329985863529515072

`A051717(A047414(n+2))`
-/

namespace A027762.P7329985863529515072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A047414 (n + 2)).toNat

end

end A027762.P7329985863529515072

namespace A027762

/-- `A051717(A047414(n+2))` -/
def P7329985863529515072.Spec : Prop :=
  ∀ n, P7329985863529515072.a n = A027762 (n + 1)

end A027762

/-!
# A027763: Smallest k such that 2^^n is not congruent to 2^^(n-1) mod k, where 2^^n denotes the power tower 2^2^...^2 (in which 2 appears n times).

The programs for A027763, there is no canonical definition to state claims against.
-/

/-! ## A027763.P6165491506272151316

`A173927(A067080(n+2))`
-/

namespace A027763.P6165491506272151316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173927 (A067080 (n + 2)).toNat

end

end A027763.P6165491506272151316

/-! ## A027763.P11057519776504590751

`A173927(A123719(n)+2)`
-/

namespace A027763.P11057519776504590751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173927 (A123719 n + 2).toNat

end

end A027763.P11057519776504590751

/-! ## A027763.P12094446367385537263

`∑{e}[A020707(n), A173927(#)]`
-/

namespace A027763.P12094446367385537263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A173927 (Nat.factorization (f1 n).natAbs p)

end

end A027763.P12094446367385537263

/-! ## A027763.P13489490831494206415

`A173927(A255421(n+1)+1)`
-/

namespace A027763.P13489490831494206415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173927 (A255421 (n + 1) + 1).toNat

end

end A027763.P13489490831494206415

/-! ## A027763.P17894608822454789779

`A173927(A269395(n+1)+1)`
-/

namespace A027763.P17894608822454789779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173927 (A269395 (n + 1) + 1).toNat

end

end A027763.P17894608822454789779

/-!
# A027764: a(n) = (n+1)*binomial(n+1,4).

The programs for A027764, the canonical program `A027764.P14325653007751828854` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027764 has offset 3).

The definition of A027764 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+4)*C(n+4, 4)` (program `A027764.P14325653007751828854`, by `A027764.P14325653007751828854.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027764.P14325653007751828854

`(n+4)*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027764

/-- `(n+4)*C(n+4, 4)` -/
def P14325653007751828854.Spec : Prop :=
  ∀ n, (P14325653007751828854.a n : ℤ) = A027764 (n + 3)

theorem P14325653007751828854.correct : P14325653007751828854.Spec := by
  intro n
  simp only [A027764, Nat.add_sub_cancel]

end A027764

/-! ## A027764.P11797598542181408544

`∑[∑[∑[∑[5*n+4]]]]`
-/

namespace A027764.P11797598542181408544
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027764.P11797598542181408544

namespace A027764

/-- `∑[∑[∑[∑[5*n+4]]]]` -/
def P11797598542181408544.Spec : Prop :=
  ∀ n, (P11797598542181408544.a n : ℤ) = A027764 (n + 3)

end A027764

/-! ## A027764.P13026070129287655896

`floor(∑[∑[∑[∑[a(n-1)+5]]]])` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A027764.P13026070129287655896
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f4 =>
  f4 (n - 1) + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027764.P13026070129287655896

namespace A027764

/-- `floor(∑[∑[∑[∑[a(n-1)+5]]]])` -/
def P13026070129287655896.Spec : Prop :=
  ∀ n, (P13026070129287655896.a n : ℤ) = A027764 (n + 3)

end A027764

/-! ## A027764.P1105579917688525613

`C(n+3, 3)/((n+1)/∑[n+2])²`
-/

namespace A027764.P1105579917688525613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℚ) / ((n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) ^ 2

end

end A027764.P1105579917688525613

namespace A027764

/-- `C(n+3, 3)/((n+1)/∑[n+2])²` -/
def P1105579917688525613.Spec : Prop :=
  ∀ n, P1105579917688525613.a n = (A027764 (n + 3) : ℚ)

end A027764

/-! ## A027764.P13038922891088345476

`∑[∑[∑[a(n-1)+5]]]+a(n-1)` with `a(0)=4`
-/

namespace A027764.P13038922891088345476
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f3 =>
  f3 (n - 1) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A027764.P13038922891088345476

namespace A027764

/-- `∑[∑[∑[a(n-1)+5]]]+a(n-1)` -/
def P13038922891088345476.Spec : Prop :=
  ∀ n, (P13038922891088345476.a n : ℤ) = A027764 (n + 3)

end A027764

/-! ## A027764.P8872717063896104137

`A027789(n+1)-A174002(n)`
-/

namespace A027764.P8872717063896104137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027789 (n + 1) - A174002 n

end

end A027764.P8872717063896104137

namespace A027764

/-- `A027789(n+1)-A174002(n)` -/
def P8872717063896104137.Spec : Prop :=
  ∀ n, P8872717063896104137.a n = A027764 (n + 3)

end A027764

/-! ## A027764.P15064391887364653787

`A096944(n)-A257200(n+1)`
-/

namespace A027764.P15064391887364653787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096944 n - A257200 (n + 1)

end

end A027764.P15064391887364653787

namespace A027764

/-- `A096944(n)-A257200(n+1)` -/
def P15064391887364653787.Spec : Prop :=
  ∀ n, P15064391887364653787.a n = A027764 (n + 3)

end A027764

/-! ## A027764.P6911924969940465742

`A034263(n)+A000574(n+3)`
-/

namespace A027764.P6911924969940465742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + A000574 (n + 3)

end

end A027764.P6911924969940465742

namespace A027764

/-- `A034263(n)+A000574(n+3)` -/
def P6911924969940465742.Spec : Prop :=
  ∀ n, P6911924969940465742.a n = A027764 (n + 3)

end A027764

/-! ## A027764.P15856349299343216086

`A027777(n+2)-A006470(n+1)`
-/

namespace A027764.P15856349299343216086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027777 (n + 2) - A006470 (n + 1)

end

end A027764.P15856349299343216086

namespace A027764

/-- `A027777(n+2)-A006470(n+1)` -/
def P15856349299343216086.Spec : Prop :=
  ∀ n, P15856349299343216086.a n = A027764 (n + 3)

end A027764

/-! ## A027764.P7287007725878222783

`A027765(n+4)-A101094(n+1)`
-/

namespace A027764.P7287007725878222783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027765 (n + 4) - A101094 (n + 1)

end

end A027764.P7287007725878222783

namespace A027764

/-- `A027765(n+4)-A101094(n+1)` -/
def P7287007725878222783.Spec : Prop :=
  ∀ n, P7287007725878222783.a n = A027764 (n + 3)

end A027764

/-! ## A027764.P4188888371899179475

`A253945(n+4)-A005583(n+1)`
-/

namespace A027764.P4188888371899179475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253945 (n + 4) - A005583 (n + 1)

end

end A027764.P4188888371899179475

namespace A027764

/-- `A253945(n+4)-A005583(n+1)` -/
def P4188888371899179475.Spec : Prop :=
  ∀ n, P4188888371899179475.a n = A027764 (n + 3)

end A027764

/-! ## A027764.P1267083377296741182

`A005583(n+1)+2*A005585(n+1)`
-/

namespace A027764.P1267083377296741182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005583 (n + 1) + 2 * A005585 (n + 1)

end

end A027764.P1267083377296741182

namespace A027764

/-- `A005583(n+1)+2*A005585(n+1)` -/
def P1267083377296741182.Spec : Prop :=
  ∀ n, P1267083377296741182.a n = A027764 (n + 3)

end A027764

/-! ## A027764.P3201467273165867466

`2*A006411(n+1)-A006470(n+1)`
-/

namespace A027764.P3201467273165867466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006411 (n + 1) - A006470 (n + 1)

end

end A027764.P3201467273165867466

namespace A027764

/-- `2*A006411(n+1)-A006470(n+1)` -/
def P3201467273165867466.Spec : Prop :=
  ∀ n, P3201467273165867466.a n = A027764 (n + 3)

end A027764

/-! ## A027764.P17230380980284516275

`A005585(n+1)+A253945(n+4)/2`
-/

namespace A027764.P17230380980284516275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005585 (n + 1) : ℚ) + (A253945 (n + 4) : ℚ) / 2

end

end A027764.P17230380980284516275

namespace A027764

/-- `A005585(n+1)+A253945(n+4)/2` -/
def P17230380980284516275.Spec : Prop :=
  ∀ n, P17230380980284516275.a n = (A027764 (n + 3) : ℚ)

end A027764

/-! ## A027764.P18106440054971708312

`A002417(n+1)+A004256(n+1)-A151974(n)`
-/

namespace A027764.P18106440054971708312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1) + (A004256 (n + 1) - A151974 n)

end

end A027764.P18106440054971708312

namespace A027764

/-- `A002417(n+1)+A004256(n+1)-A151974(n)` -/
def P18106440054971708312.Spec : Prop :=
  ∀ n, P18106440054971708312.a n = A027764 (n + 3)

end A027764

/-! ## A027764.P4266178821321554206

`A174002(n)+A033488(n+1)`
-/

namespace A027764.P4266178821321554206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 n + A033488 (n + 1)

end

end A027764.P4266178821321554206

namespace A027764

/-- `A174002(n)+A033488(n+1)` -/
def P4266178821321554206.Spec : Prop :=
  ∀ n, P4266178821321554206.a n = A027764 (n + 3)

end A027764

/-! ## A027764.P15730909903720083355

`A244882(n+1)-A000292(n+2)`
-/

namespace A027764.P15730909903720083355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244882 (n + 1) - A000292 (n + 2)

end

end A027764.P15730909903720083355

namespace A027764

/-- `A244882(n+1)-A000292(n+2)` -/
def P15730909903720083355.Spec : Prop :=
  ∀ n, P15730909903720083355.a n = A027764 (n + 3)

end A027764

/-! ## A027764.P5829763582542201138

`A006411(n+2)-A004320(n+2)`
-/

namespace A027764.P5829763582542201138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006411 (n + 2) - A004320 (n + 2)

end

end A027764.P5829763582542201138

namespace A027764

/-- `A006411(n+2)-A004320(n+2)` -/
def P5829763582542201138.Spec : Prop :=
  ∀ n, P5829763582542201138.a n = A027764 (n + 3)

end A027764

/-! ## A027764.P798319358821173673

`A005585(n+1)+A051878(n+1)-A027800(n+1)`
-/

namespace A027764.P798319358821173673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) + (A051878 (n + 1) - A027800 (n + 1))

end

end A027764.P798319358821173673

namespace A027764

/-- `A005585(n+1)+A051878(n+1)-A027800(n+1)` -/
def P798319358821173673.Spec : Prop :=
  ∀ n, P798319358821173673.a n = A027764 (n + 3)

end A027764

/-! ## A027764.P1704354708407301562

`A005585(n+1)+A027800(n+1)-A005585(n+2)`
-/

namespace A027764.P1704354708407301562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) + (A027800 (n + 1) - A005585 (n + 2))

end

end A027764.P1704354708407301562

namespace A027764

/-- `A005585(n+1)+A027800(n+1)-A005585(n+2)` -/
def P1704354708407301562.Spec : Prop :=
  ∀ n, P1704354708407301562.a n = A027764 (n + 3)

end A027764

/-!
# A027765: a(n) = (n+1)*binomial(n+1,5).

The programs for A027765, the canonical program `A027765.P15969066504210946878` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027765 has offset 4).

The definition of A027765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+5)*C(n+5, 5)` (program `A027765.P15969066504210946878`, by `A027765.P15969066504210946878.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027765.P15969066504210946878

`(n+5)*C(n+5, 5)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027765

/-- `(n+5)*C(n+5, 5)` -/
def P15969066504210946878.Spec : Prop :=
  ∀ n, (P15969066504210946878.a n : ℤ) = A027765 (n + 4)

theorem P15969066504210946878.correct : P15969066504210946878.Spec := by
  intro n
  simp only [A027765, Nat.add_sub_cancel]

end A027765

/-! ## A027765.P9355174045195378652

`(n+5)*∑[∑[∑[∑[n+1]]]]`
-/

namespace A027765.P9355174045195378652
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 5) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027765.P9355174045195378652

namespace A027765

/-- `(n+5)*∑[∑[∑[∑[n+1]]]]` -/
def P9355174045195378652.Spec : Prop :=
  ∀ n, (P9355174045195378652.a n : ℤ) = A027765 (n + 4)

end A027765

/-! ## A027765.P7413734480105982615

`∑[∑[∑[∑[∑[a(n-1)+6]]]]]` with `a(0)=5`
-/

namespace A027765.P7413734480105982615
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f5 =>
  f5 (n - 1) + 6

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027765.P7413734480105982615

namespace A027765

/-- `∑[∑[∑[∑[∑[a(n-1)+6]]]]]` -/
def P7413734480105982615.Spec : Prop :=
  ∀ n, (P7413734480105982615.a n : ℤ) = A027765 (n + 4)

end A027765

/-! ## A027765.P11249070289937390141

`A271035(n+1)/2`
-/

namespace A027765.P11249070289937390141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271035 (n + 1) : ℚ) / 2

end

end A027765.P11249070289937390141

namespace A027765

/-- `A271035(n+1)/2` -/
def P11249070289937390141.Spec : Prop :=
  ∀ n, P11249070289937390141.a n = (A027765 (n + 4) : ℚ)

end A027765

/-! ## A027765.P14737425511654245406

`A095669(n)+A051946(n)`
-/

namespace A027765.P14737425511654245406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095669 n + A051946 n

end

end A027765.P14737425511654245406

namespace A027765

/-- `A095669(n)+A051946(n)` -/
def P14737425511654245406.Spec : Prop :=
  ∀ n, P14737425511654245406.a n = A027765 (n + 4)

end A027765

/-! ## A027765.P13456956411977289465

`A097298(n)-A257201(n+1)`
-/

namespace A027765.P13456956411977289465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097298 n - A257201 (n + 1)

end

end A027765.P13456956411977289465

namespace A027765

/-- `A097298(n)-A257201(n+1)` -/
def P13456956411977289465.Spec : Prop :=
  ∀ n, P13456956411977289465.a n = A027765 (n + 4)

end A027765

/-! ## A027765.P4488815369865684684

`∑[A154286(n)]²/A154286(n)`
-/

namespace A027765.P4488815369865684684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154286 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / (A154286 n : ℚ)

end

end A027765.P4488815369865684684

namespace A027765

/-- `∑[A154286(n)]²/A154286(n)` -/
def P4488815369865684684.Spec : Prop :=
  ∀ n, P4488815369865684684.a n = (A027765 (n + 4) : ℚ)

end A027765

/-! ## A027765.P15085227000178962570

`A112459(n+3)+A005584(n+1)`
-/

namespace A027765.P15085227000178962570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112459 (n + 3) + A005584 (n + 1)

end

end A027765.P15085227000178962570

namespace A027765

/-- `A112459(n+3)+A005584(n+1)` -/
def P15085227000178962570.Spec : Prop :=
  ∀ n, P15085227000178962570.a n = A027765 (n + 4)

end A027765

/-! ## A027765.P11867562594486058212

`A101094(n+1)+A027764(n+3)`
-/

namespace A027765.P11867562594486058212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101094 (n + 1) + A027764 (n + 3)

end

end A027765.P11867562594486058212

namespace A027765

/-- `A101094(n+1)+A027764(n+3)` -/
def P11867562594486058212.Spec : Prop :=
  ∀ n, P11867562594486058212.a n = A027765 (n + 4)

end A027765

/-! ## A027765.P2091658709951837703

`A051947(n)+2*A005584(n+1)`
-/

namespace A027765.P2091658709951837703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051947 n + 2 * A005584 (n + 1)

end

end A027765.P2091658709951837703

namespace A027765

/-- `A051947(n)+2*A005584(n+1)` -/
def P2091658709951837703.Spec : Prop :=
  ∀ n, P2091658709951837703.a n = A027765 (n + 4)

end A027765

/-! ## A027765.P12265289427214607862

`2*A112459(n+3)-A051947(n)`
-/

namespace A027765.P12265289427214607862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112459 (n + 3) - A051947 n

end

end A027765.P12265289427214607862

namespace A027765

/-- `2*A112459(n+3)-A051947(n)` -/
def P12265289427214607862.Spec : Prop :=
  ∀ n, P12265289427214607862.a n = A027765 (n + 4)

end A027765

/-! ## A027765.P15844842681581144053

`A253947(n+6)-A101097(n+1)`
-/

namespace A027765.P15844842681581144053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253947 (n + 6) - A101097 (n + 1)

end

end A027765.P15844842681581144053

namespace A027765

/-- `A253947(n+6)-A101097(n+1)` -/
def P15844842681581144053.Spec : Prop :=
  ∀ n, P15844842681581144053.a n = A027765 (n + 4)

end A027765

/-! ## A027765.P2041821878900476198

`(n+5)*A277935(n+2)/2`
-/

namespace A027765.P2041821878900476198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 5 : ℤ) * A277935 (n + 2) : ℚ) / 2

end

end A027765.P2041821878900476198

namespace A027765

/-- `(n+5)*A277935(n+2)/2` -/
def P2041821878900476198.Spec : Prop :=
  ∀ n, P2041821878900476198.a n = (A027765 (n + 4) : ℚ)

end A027765

/-! ## A027765.P4087566795866966433

`A027810(n+1)-A005585(n+2)`
-/

namespace A027765.P4087566795866966433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027810 (n + 1) - A005585 (n + 2)

end

end A027765.P4087566795866966433

namespace A027765

/-- `A027810(n+1)-A005585(n+2)` -/
def P4087566795866966433.Spec : Prop :=
  ∀ n, P4087566795866966433.a n = A027765 (n + 4)

end A027765

/-! ## A027765.P6341034067966332781

`∑[∑[A033487(n+1)-A000292(n+1)]]`
-/

namespace A027765.P6341034067966332781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 (n + 1) - A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027765.P6341034067966332781

namespace A027765

/-- `∑[∑[A033487(n+1)-A000292(n+1)]]` -/
def P6341034067966332781.Spec : Prop :=
  ∀ n, P6341034067966332781.a n = A027765 (n + 4)

end A027765

/-! ## A027765.P12197939346103248894

`∑[∑[A052149(n+2)+A000292(n+1)]]`
-/

namespace A027765.P12197939346103248894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052149 (n + 2) + A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027765.P12197939346103248894

namespace A027765

/-- `∑[∑[A052149(n+2)+A000292(n+1)]]` -/
def P12197939346103248894.Spec : Prop :=
  ∀ n, P12197939346103248894.a n = A027765 (n + 4)

end A027765

/-! ## A027765.P3603564983121206720

`∑[∑[∑[A160378(n+2)]]]`
-/

namespace A027765.P3603564983121206720
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027765.P3603564983121206720

namespace A027765

/-- `∑[∑[∑[A160378(n+2)]]]` -/
def P3603564983121206720.Spec : Prop :=
  ∀ n, P3603564983121206720.a n = A027765 (n + 4)

end A027765

/-! ## A027765.P2757901356874300599

`A299337(2*n+1)+A299336(2*n+1)`
-/

namespace A027765.P2757901356874300599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299337 (2 * n + 1) + A299336 (2 * n + 1)

end

end A027765.P2757901356874300599

namespace A027765

/-- `A299337(2*n+1)+A299336(2*n+1)` -/
def P2757901356874300599.Spec : Prop :=
  ∀ n, P2757901356874300599.a n = A027765 (n + 4)

end A027765

/-! ## A027765.P10638261360679038030

`A299336(2*n+1)+2*A299338(2*n)`
-/

namespace A027765.P10638261360679038030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299336 (2 * n + 1) + 2 * A299338 (2 * n)

end

end A027765.P10638261360679038030

namespace A027765

/-- `A299336(2*n+1)+2*A299338(2*n)` -/
def P10638261360679038030.Spec : Prop :=
  ∀ n, P10638261360679038030.a n = A027765 (n + 4)

end A027765

/-! ## A027765.P17005574394121216283

`A299337(2*n)+2*A299337(2*n+1)`
-/

namespace A027765.P17005574394121216283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299337 (2 * n) + 2 * A299337 (2 * n + 1)

end

end A027765.P17005574394121216283

namespace A027765

/-- `A299337(2*n)+2*A299337(2*n+1)` -/
def P17005574394121216283.Spec : Prop :=
  ∀ n, P17005574394121216283.a n = A027765 (n + 4)

end A027765

/-!
# A027766: a(n) = (n+1)*binomial(n+1,6).

The programs for A027766, the canonical program `A027766.P17375202258658109674` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027766 has offset 5).

The definition of A027766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+6)*C(n+6, 6)` (program `A027766.P17375202258658109674`, by `A027766.P17375202258658109674.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027766.P17375202258658109674

`(n+6)*C(n+6, 6)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027766

/-- `(n+6)*C(n+6, 6)` -/
def P17375202258658109674.Spec : Prop :=
  ∀ n, (P17375202258658109674.a n : ℤ) = A027766 (n + 5)

theorem P17375202258658109674.correct : P17375202258658109674.Spec := by
  intro n
  simp only [A027766, Nat.add_sub_cancel]

end A027766

/-! ## A027766.P14708878266613916115

`A096945(n)+A034265(n)`
-/

namespace A027766.P14708878266613916115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096945 n + A034265 n

end

end A027766.P14708878266613916115

namespace A027766

/-- `A096945(n)+A034265(n)` -/
def P14708878266613916115.Spec : Prop :=
  ∀ n, P14708878266613916115.a n = A027766 (n + 5)

end A027766

/-! ## A027766.P4579338434986010872

`C(A020715(n), 6)*A020715(n)`
-/

namespace A027766.P4579338434986010872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A020715 n).toNat 6 : ℤ) * A020715 n

end

end A027766.P4579338434986010872

namespace A027766

/-- `C(A020715(n), 6)*A020715(n)` -/
def P4579338434986010872.Spec : Prop :=
  ∀ n, P4579338434986010872.a n = A027766 (n + 5)

end A027766

/-! ## A027766.P5707191961807013203

`A253946(n+5)²/A253945(n+4)`
-/

namespace A027766.P5707191961807013203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253946 (n + 5) ^ 2 : ℚ) / (A253945 (n + 4) : ℚ)

end

end A027766.P5707191961807013203

namespace A027766

/-- `A253946(n+5)²/A253945(n+4)` -/
def P5707191961807013203.Spec : Prop :=
  ∀ n, P5707191961807013203.a n = (A027766 (n + 5) : ℚ)

end A027766

/-! ## A027766.P13006660950579738010

`A253947(n+6)+A097298(n)-A253946(n+5)`
-/

namespace A027766.P13006660950579738010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253947 (n + 6) + (A097298 n - A253946 (n + 5))

end

end A027766.P13006660950579738010

namespace A027766

/-- `A253947(n+6)+A097298(n)-A253946(n+5)` -/
def P13006660950579738010.Spec : Prop :=
  ∀ n, P13006660950579738010.a n = A027766 (n + 5)

end A027766

/-! ## A027766.P5670127516862256112

`A027818(n+1)-A040977(n+1)`
-/

namespace A027766.P5670127516862256112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027818 (n + 1) - A040977 (n + 1)

end

end A027766.P5670127516862256112

namespace A027766

/-- `A027818(n+1)-A040977(n+1)` -/
def P5670127516862256112.Spec : Prop :=
  ∀ n, P5670127516862256112.a n = A027766 (n + 5)

end A027766

/-! ## A027766.P5329990128982865944

`(n+6)*∑[∑[A000332(n+4)]]`
-/

namespace A027766.P5329990128982865944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027766.P5329990128982865944

namespace A027766

/-- `(n+6)*∑[∑[A000332(n+4)]]` -/
def P5329990128982865944.Spec : Prop :=
  ∀ n, P5329990128982865944.a n = A027766 (n + 5)

end A027766

/-! ## A027766.P2864107574770225439

`(n+6)*∑[A000389(n+5)]`
-/

namespace A027766.P2864107574770225439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027766.P2864107574770225439

namespace A027766

/-- `(n+6)*∑[A000389(n+5)]` -/
def P2864107574770225439.Spec : Prop :=
  ∀ n, P2864107574770225439.a n = A027766 (n + 5)

end A027766

/-! ## A027766.P17678721714663076858

`(n+6)*A000579(n+6)`
-/

namespace A027766.P17678721714663076858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * A000579 (n + 6)

end

end A027766.P17678721714663076858

namespace A027766

/-- `(n+6)*A000579(n+6)` -/
def P17678721714663076858.Spec : Prop :=
  ∀ n, P17678721714663076858.a n = A027766 (n + 5)

end A027766

/-! ## A027766.P2128564963191828885

`A000579(A020715(n))*A020715(n)`
-/

namespace A027766.P2128564963191828885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (A020715 n).toNat * A020715 n

end

end A027766.P2128564963191828885

namespace A027766

/-- `A000579(A020715(n))*A020715(n)` -/
def P2128564963191828885.Spec : Prop :=
  ∀ n, P2128564963191828885.a n = A027766 (n + 5)

end A027766

/-! ## A027766.P17402010161224967675

`(n+6)*A007318(A166136(n+5))`
-/

namespace A027766.P17402010161224967675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * A007318 (A166136 (n + 5)).toNat

end

end A027766.P17402010161224967675

namespace A027766

/-- `(n+6)*A007318(A166136(n+5))` -/
def P17402010161224967675.Spec : Prop :=
  ∀ n, P17402010161224967675.a n = A027766 (n + 5)

end A027766

/-! ## A027766.P9292816842505026052

`(n+6)*A007318(A000124(n+6)+5)`
-/

namespace A027766.P9292816842505026052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * A007318 (A000124 (n + 6) + 5).toNat

end

end A027766.P9292816842505026052

namespace A027766

/-- `(n+6)*A007318(A000124(n+6)+5)` -/
def P9292816842505026052.Spec : Prop :=
  ∀ n, P9292816842505026052.a n = A027766 (n + 5)

end A027766

/-! ## A027766.P842035660483018770

`(n+6)*A007318(A000096(n+5)+7)`
-/

namespace A027766.P842035660483018770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * A007318 (A000096 (n + 5) + 7).toNat

end

end A027766.P842035660483018770

namespace A027766

/-- `(n+6)*A007318(A000096(n+5)+7)` -/
def P842035660483018770.Spec : Prop :=
  ∀ n, P842035660483018770.a n = A027766 (n + 5)

end A027766

/-! ## A027766.P15641612836035365473

`(n+6)*A007318(A000217(n+6)+6)`
-/

namespace A027766.P15641612836035365473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * A007318 (A000217 (n + 6) + 6).toNat

end

end A027766.P15641612836035365473

namespace A027766

/-- `(n+6)*A007318(A000217(n+6)+6)` -/
def P15641612836035365473.Spec : Prop :=
  ∀ n, P15641612836035365473.a n = A027766 (n + 5)

end A027766

/-!
# A027767: a(n) = (n+1)*binomial(n+1,7).

The programs for A027767, the canonical program `A027767.P16883382579102568469` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027767 has offset 6).

The definition of A027767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+7)*C(n+7, 7)` (program `A027767.P16883382579102568469`, by `A027767.P16883382579102568469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027767.P16883382579102568469

`(n+7)*C(n+7, 7)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027767

/-- `(n+7)*C(n+7, 7)` -/
def P16883382579102568469.Spec : Prop :=
  ∀ n, (P16883382579102568469.a n : ℤ) = A027767 (n + 6)

theorem P16883382579102568469.correct : P16883382579102568469.Spec := by
  intro n
  simp only [A027767, Nat.add_sub_cancel]

end A027767

/-! ## A027767.P5606507020612544909

`(n+7)*A000580(n+7)`
-/

namespace A027767.P5606507020612544909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * A000580 (n + 7)

end

end A027767.P5606507020612544909

namespace A027767

/-- `(n+7)*A000580(n+7)` -/
def P5606507020612544909.Spec : Prop :=
  ∀ n, P5606507020612544909.a n = A027767 (n + 6)

end A027767

/-! ## A027767.P2155616648997592127

`A054487(n)+2*A095664(n)`
-/

namespace A027767.P2155616648997592127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054487 n + 2 * A095664 n

end

end A027767.P2155616648997592127

namespace A027767

/-- `A054487(n)+2*A095664(n)` -/
def P2155616648997592127.Spec : Prop :=
  ∀ n, P2155616648997592127.a n = A027767 (n + 6)

end A027767

/-! ## A027767.P9806142680025376544

`A112460(n+4)+A095664(n)`
-/

namespace A027767.P9806142680025376544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112460 (n + 4) + A095664 n

end

end A027767.P9806142680025376544

namespace A027767

/-- `A112460(n+4)+A095664(n)` -/
def P9806142680025376544.Spec : Prop :=
  ∀ n, P9806142680025376544.a n = A027767 (n + 6)

end A027767

/-! ## A027767.P3315510492701721268

`A253947(n+6)+A056001(n)`
-/

namespace A027767.P3315510492701721268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253947 (n + 6) + A056001 n

end

end A027767.P3315510492701721268

namespace A027767

/-- `A253947(n+6)+A056001(n)` -/
def P3315510492701721268.Spec : Prop :=
  ∀ n, P3315510492701721268.a n = A027767 (n + 6)

end A027767

/-! ## A027767.P11351240554862853672

`A000580(n+7)*A020719(n)`
-/

namespace A027767.P11351240554862853672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A020719 n

end

end A027767.P11351240554862853672

namespace A027767

/-- `A000580(n+7)*A020719(n)` -/
def P11351240554862853672.Spec : Prop :=
  ∀ n, P11351240554862853672.a n = A027767 (n + 6)

end A027767

/-! ## A027767.P9742101587566848528

`2*A112460(n+4)-A054487(n)`
-/

namespace A027767.P9742101587566848528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112460 (n + 4) - A054487 n

end

end A027767.P9742101587566848528

namespace A027767

/-- `2*A112460(n+4)-A054487(n)` -/
def P9742101587566848528.Spec : Prop :=
  ∀ n, P9742101587566848528.a n = A027767 (n + 6)

end A027767

/-! ## A027767.P5586324073351647181

`A253946(n+6)/A253945(n+5)*A253947(n+6)`
-/

namespace A027767.P5586324073351647181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253946 (n + 6) : ℚ) / (A253945 (n + 5) : ℚ) * (A253947 (n + 6) : ℚ)

end

end A027767.P5586324073351647181

namespace A027767

/-- `A253946(n+6)/A253945(n+5)*A253947(n+6)` -/
def P5586324073351647181.Spec : Prop :=
  ∀ n, P5586324073351647181.a n = (A027767 (n + 6) : ℚ)

end A027767

/-! ## A027767.P1896397080784790786

`(n+7)*∑[A000579(n+6)]`
-/

namespace A027767.P1896397080784790786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027767.P1896397080784790786

namespace A027767

/-- `(n+7)*∑[A000579(n+6)]` -/
def P1896397080784790786.Spec : Prop :=
  ∀ n, P1896397080784790786.a n = A027767 (n + 6)

end A027767

/-! ## A027767.P6399760947856757590

`(n+7)*A007318(A134869(n+7)+6)`
-/

namespace A027767.P6399760947856757590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * A007318 (A134869 (n + 7) + 6).toNat

end

end A027767.P6399760947856757590

namespace A027767

/-- `(n+7)*A007318(A134869(n+7)+6)` -/
def P6399760947856757590.Spec : Prop :=
  ∀ n, P6399760947856757590.a n = A027767 (n + 6)

end A027767

/-! ## A027767.P11858995205658913785

`(n+7)*A007318(A000217(n+7)+7)`
-/

namespace A027767.P11858995205658913785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * A007318 (A000217 (n + 7) + 7).toNat

end

end A027767.P11858995205658913785

namespace A027767

/-- `(n+7)*A007318(A000217(n+7)+7)` -/
def P11858995205658913785.Spec : Prop :=
  ∀ n, P11858995205658913785.a n = A027767 (n + 6)

end A027767

/-!
# A027768: a(n) = (n+1)*binomial(n+1,8).

The programs for A027768, the canonical program `A027768.P1314416546218591904` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027768 has offset 7).

The definition of A027768 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+8)*C(n+8, 8)` (program `A027768.P1314416546218591904`, by `A027768.P1314416546218591904.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027768.P1314416546218591904

`(n+8)*C(n+8, 8)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027768

/-- `(n+8)*C(n+8, 8)` -/
def P1314416546218591904.Spec : Prop :=
  ∀ n, (P1314416546218591904.a n : ℤ) = A027768 (n + 7)

theorem P1314416546218591904.correct : P1314416546218591904.Spec := by
  intro n
  simp only [A027768, Nat.add_sub_cancel]

end A027768

/-! ## A027768.P882689243663329853

`(n+8)*A000581(n+8)`
-/

namespace A027768.P882689243663329853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 8 : ℤ) * A000581 (n + 8)

end

end A027768.P882689243663329853

namespace A027768

/-- `(n+8)*A000581(n+8)` -/
def P882689243663329853.Spec : Prop :=
  ∀ n, P882689243663329853.a n = A027768 (n + 7)

end A027768

/-! ## A027768.P10344905708095899470

`(n+8)*∑[A000580(n+7)]`
-/

namespace A027768.P10344905708095899470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 8 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027768.P10344905708095899470

namespace A027768

/-- `(n+8)*∑[A000580(n+7)]` -/
def P10344905708095899470.Spec : Prop :=
  ∀ n, P10344905708095899470.a n = A027768 (n + 7)

end A027768

/-! ## A027768.P18014961394934842045

`A000581(n+8)*A020722(n)`
-/

namespace A027768.P18014961394934842045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A020722 n

end

end A027768.P18014961394934842045

namespace A027768

/-- `A000581(n+8)*A020722(n)` -/
def P18014961394934842045.Spec : Prop :=
  ∀ n, P18014961394934842045.a n = A027768 (n + 7)

end A027768

/-! ## A027768.P5720740960166807301

`A254142(n+1)-(A254142(n)+A053347(n+1))`
-/

namespace A027768.P5720740960166807301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254142 (n + 1) - (A254142 n + A053347 (n + 1))

end

end A027768.P5720740960166807301

namespace A027768

/-- `A254142(n+1)-(A254142(n)+A053347(n+1))` -/
def P5720740960166807301.Spec : Prop :=
  ∀ n, P5720740960166807301.a n = A027768 (n + 7)

end A027768

/-! ## A027768.P18282054681546095383

`A056003(n+1)-(A000581(n+8)+A000581(n+9))`
-/

namespace A027768.P18282054681546095383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056003 (n + 1) - (A000581 (n + 8) + A000581 (n + 9))

end

end A027768.P18282054681546095383

namespace A027768

/-- `A056003(n+1)-(A000581(n+8)+A000581(n+9))` -/
def P18282054681546095383.Spec : Prop :=
  ∀ n, P18282054681546095383.a n = A027768 (n + 7)

end A027768

/-! ## A027768.P1819097424910408972

`(n+8)*∑[∑[A000579(n+6)]]`
-/

namespace A027768.P1819097424910408972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 8 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027768.P1819097424910408972

namespace A027768

/-- `(n+8)*∑[∑[A000579(n+6)]]` -/
def P1819097424910408972.Spec : Prop :=
  ∀ n, P1819097424910408972.a n = A027768 (n + 7)

end A027768

/-! ## A027768.P451747674846610084

`(n+8)*A007318(A055999(n+6)-3)`
-/

namespace A027768.P451747674846610084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 8 : ℤ) * A007318 (A055999 (n + 6) - 3).toNat

end

end A027768.P451747674846610084

namespace A027768

/-- `(n+8)*A007318(A055999(n+6)-3)` -/
def P451747674846610084.Spec : Prop :=
  ∀ n, P451747674846610084.a n = A027768 (n + 7)

end A027768

/-! ## A027768.P1276649850908107881

`(n+8)*A007318(A000217(n+9)-9)`
-/

namespace A027768.P1276649850908107881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 8 : ℤ) * A007318 (A000217 (n + 9) - 9).toNat

end

end A027768.P1276649850908107881

namespace A027768

/-- `(n+8)*A007318(A000217(n+9)-9)` -/
def P1276649850908107881.Spec : Prop :=
  ∀ n, P1276649850908107881.a n = A027768 (n + 7)

end A027768

/-! ## A027768.P2822084785705455770

`(A049389(n+1)-A049389(n))/A000142(n)`
-/

namespace A027768.P2822084785705455770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049389 (n + 1) - A049389 n : ℚ) / (A000142 n : ℚ)

end

end A027768.P2822084785705455770

namespace A027768

/-- `(A049389(n+1)-A049389(n))/A000142(n)` -/
def P2822084785705455770.Spec : Prop :=
  ∀ n, P2822084785705455770.a n = (A027768 (n + 7) : ℚ)

end A027768

/-!
# A027769: a(n) = (n+1)*binomial(n+1, 9).

The programs for A027769, the canonical program `A027769.P17262924801748536555` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027769 has offset 8).

The definition of A027769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+9)*C(n+9, 9)` (program `A027769.P17262924801748536555`, by `A027769.P17262924801748536555.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027769.P17262924801748536555

`(n+9)*C(n+9, 9)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027769

/-- `(n+9)*C(n+9, 9)` -/
def P17262924801748536555.Spec : Prop :=
  ∀ n, (P17262924801748536555.a n : ℤ) = A027769 (n + 8)

theorem P17262924801748536555.correct : P17262924801748536555.Spec := by
  intro n
  simp only [A027769, Nat.add_sub_cancel]

end A027769

/-! ## A027769.P3724550038063362368

`(n+9)*A000582(n+9)`
-/

namespace A027769.P3724550038063362368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 9 : ℤ) * A000582 (n + 9)

end

end A027769.P3724550038063362368

namespace A027769

/-- `(n+9)*A000582(n+9)` -/
def P3724550038063362368.Spec : Prop :=
  ∀ n, P3724550038063362368.a n = A027769 (n + 8)

end A027769

/-! ## A027769.P9199090964014370342

`(n+9)*∑[A000581(n+8)]`
-/

namespace A027769.P9199090964014370342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 9 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027769.P9199090964014370342

namespace A027769

/-- `(n+9)*∑[A000581(n+8)]` -/
def P9199090964014370342.Spec : Prop :=
  ∀ n, P9199090964014370342.a n = A027769 (n + 8)

end A027769

/-! ## A027769.P12513978924183928262

`(n+9)*∑[∑[A000580(n+7)]]`
-/

namespace A027769.P12513978924183928262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 9 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027769.P12513978924183928262

namespace A027769

/-- `(n+9)*∑[∑[A000580(n+7)]]` -/
def P12513978924183928262.Spec : Prop :=
  ∀ n, P12513978924183928262.a n = A027769 (n + 8)

end A027769

/-! ## A027769.P17298262344764657813

`A000582(n+9)*A020723(n)`
-/

namespace A027769.P17298262344764657813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) * A020723 n

end

end A027769.P17298262344764657813

namespace A027769

/-- `A000582(n+9)*A020723(n)` -/
def P17298262344764657813.Spec : Prop :=
  ∀ n, P17298262344764657813.a n = A027769 (n + 8)

end A027769

/-! ## A027769.P16032106920241945568

`(A063418(n)-A063263(n))*A020723(n)`
-/

namespace A027769.P16032106920241945568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063418 n - A063263 n) * A020723 n

end

end A027769.P16032106920241945568

namespace A027769

/-- `(A063418(n)-A063263(n))*A020723(n)` -/
def P16032106920241945568.Spec : Prop :=
  ∀ n, P16032106920241945568.a n = A027769 (n + 8)

end A027769

/-! ## A027769.P4369721817259457160

`(A063264(n)-A064058(n))*A020723(n)`
-/

namespace A027769.P4369721817259457160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063264 n - A064058 n) * A020723 n

end

end A027769.P4369721817259457160

namespace A027769

/-- `(A063264(n)-A064058(n))*A020723(n)` -/
def P4369721817259457160.Spec : Prop :=
  ∀ n, P4369721817259457160.a n = A027769 (n + 8)

end A027769

/-! ## A027769.P6705233664652484956

`A000581(n+9)+n*Δ[A001287(n)]`
-/

namespace A027769.P6705233664652484956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 9) + (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A027769.P6705233664652484956

namespace A027769

/-- `A000581(n+9)+n*Δ[A001287(n)]` -/
def P6705233664652484956.Spec : Prop :=
  ∀ n, P6705233664652484956.a n = A027769 (n + 8)

end A027769

/-! ## A027769.P8196255905857833158

`(A049398(n+1)-A049398(n))/A000142(n)`
-/

namespace A027769.P8196255905857833158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049398 (n + 1) - A049398 n : ℚ) / (A000142 n : ℚ)

end

end A027769.P8196255905857833158

namespace A027769

/-- `(A049398(n+1)-A049398(n))/A000142(n)` -/
def P8196255905857833158.Spec : Prop :=
  ∀ n, P8196255905857833158.a n = (A027769 (n + 8) : ℚ)

end A027769

/-!
# A027770: a(n) = (n + 1)*binomial(n + 1, 10).

The programs for A027770, the canonical program `A027770.P6691823985601018938` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027770 has offset 9).

The definition of A027770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+10)*C(n+10, 10)` (program `A027770.P6691823985601018938`, by `A027770.P6691823985601018938.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027770.P6691823985601018938

`(n+10)*C(n+10, 10)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027770

/-- `(n+10)*C(n+10, 10)` -/
def P6691823985601018938.Spec : Prop :=
  ∀ n, (P6691823985601018938.a n : ℤ) = A027770 (n + 9)

theorem P6691823985601018938.correct : P6691823985601018938.Spec := by
  intro n
  simp only [A027770, Nat.add_sub_cancel]

end A027770

/-! ## A027770.P7434289719109343565

`(n+10)*A001287(n)`
-/

namespace A027770.P7434289719109343565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 10 : ℤ) * A001287 (n + 10)

end

end A027770.P7434289719109343565

namespace A027770

/-- `(n+10)*A001287(n)` -/
def P7434289719109343565.Spec : Prop :=
  ∀ n, P7434289719109343565.a n = A027770 (n + 9)

end A027770

/-! ## A027770.P10100889047282942717

`(n+10)*∑[A000582(n+9)]`
-/

namespace A027770.P10100889047282942717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 10 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027770.P10100889047282942717

namespace A027770

/-- `(n+10)*∑[A000582(n+9)]` -/
def P10100889047282942717.Spec : Prop :=
  ∀ n, P10100889047282942717.a n = A027770 (n + 9)

end A027770

/-! ## A027770.P3034049790097588338

`(n+10)*∑[∑[A000581(n+8)]]`
-/

namespace A027770.P3034049790097588338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 10 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027770.P3034049790097588338

namespace A027770

/-- `(n+10)*∑[∑[A000581(n+8)]]` -/
def P3034049790097588338.Spec : Prop :=
  ∀ n, P3034049790097588338.a n = A027770 (n + 9)

end A027770

/-! ## A027770.P7812979320005222514

`11*A001288(n)-A001287(n)`
-/

namespace A027770.P7812979320005222514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A001288 (n + 11) - A001287 (n + 10)

end

end A027770.P7812979320005222514

namespace A027770

/-- `11*A001288(n)-A001287(n)` -/
def P7812979320005222514.Spec : Prop :=
  ∀ n, P7812979320005222514.a n = A027770 (n + 9)

end A027770

/-! ## A027770.P5227574162951181832

`A001287(n)*A020715(A020715(n)-2)`
-/

namespace A027770.P5227574162951181832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) * A020715 (A020715 n - 2).toNat

end

end A027770.P5227574162951181832

namespace A027770

/-- `A001287(n)*A020715(A020715(n)-2)` -/
def P5227574162951181832.Spec : Prop :=
  ∀ n, P5227574162951181832.a n = A027770 (n + 9)

end A027770

/-! ## A027770.P1340374347348883955

`(A051431(n+1)-A051431(n))/A000142(n)`
-/

namespace A027770.P1340374347348883955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051431 (n + 1) - A051431 n : ℚ) / (A000142 n : ℚ)

end

end A027770.P1340374347348883955

namespace A027770

/-- `(A051431(n+1)-A051431(n))/A000142(n)` -/
def P1340374347348883955.Spec : Prop :=
  ∀ n, P1340374347348883955.a n = (A027770 (n + 9) : ℚ)

end A027770

/-!
# A027771: a(n) = (n+1)*binomial(n+1,11).

The programs for A027771, the canonical program `A027771.P7081135353132010340` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027771 has offset 10).

The definition of A027771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+11)*C(n+11, 11)` (program `A027771.P7081135353132010340`, by `A027771.P7081135353132010340.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027771.P7081135353132010340

`(n+11)*C(n+11, 11)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027771

/-- `(n+11)*C(n+11, 11)` -/
def P7081135353132010340.Spec : Prop :=
  ∀ n, (P7081135353132010340.a n : ℤ) = A027771 (n + 10)

theorem P7081135353132010340.correct : P7081135353132010340.Spec := by
  intro n
  simp only [A027771, Nat.add_sub_cancel]

end A027771

/-! ## A027771.P8791928351886992544

`(n+11)*A001288(n)`
-/

namespace A027771.P8791928351886992544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 11 : ℤ) * A001288 (n + 11)

end

end A027771.P8791928351886992544

namespace A027771

/-- `(n+11)*A001288(n)` -/
def P8791928351886992544.Spec : Prop :=
  ∀ n, P8791928351886992544.a n = A027771 (n + 10)

end A027771

/-! ## A027771.P16510405640398417142

`∑[A001287(n)]*(n+11)`
-/

namespace A027771.P16510405640398417142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n + 11 : ℤ)

end

end A027771.P16510405640398417142

namespace A027771

/-- `∑[A001287(n)]*(n+11)` -/
def P16510405640398417142.Spec : Prop :=
  ∀ n, P16510405640398417142.a n = A027771 (n + 10)

end A027771

/-! ## A027771.P12223405435164978359

`∑[A027770(n+9)+A001288(n)]`
-/

namespace A027771.P12223405435164978359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027770 (n + 9) + A001288 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027771.P12223405435164978359

namespace A027771

/-- `∑[A027770(n+9)+A001288(n)]` -/
def P12223405435164978359.Spec : Prop :=
  ∀ n, P12223405435164978359.a n = A027771 (n + 10)

end A027771

/-! ## A027771.P2073361926509853387

`A001287(n+1)+n*Δ[A010965(n)]`
-/

namespace A027771.P2073361926509853387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010965 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 1 + 10) + (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A027771.P2073361926509853387

namespace A027771

/-- `A001287(n+1)+n*Δ[A010965(n)]` -/
def P2073361926509853387.Spec : Prop :=
  ∀ n, P2073361926509853387.a n = A027771 (n + 10)

end A027771

/-! ## A027771.P17356881033662847831

`A001288(n)*A020719(A020705(n))`
-/

namespace A027771.P17356881033662847831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11) * A020719 (A020705 n).toNat

end

end A027771.P17356881033662847831

namespace A027771

/-- `A001288(n)*A020719(A020705(n))` -/
def P17356881033662847831.Spec : Prop :=
  ∀ n, P17356881033662847831.a n = A027771 (n + 10)

end A027771

/-! ## A027771.P14882313541356787381

`A001288(n)*A020715(A020710(n))`
-/

namespace A027771.P14882313541356787381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11) * A020715 (A020710 n).toNat

end

end A027771.P14882313541356787381

namespace A027771

/-- `A001288(n)*A020715(A020710(n))` -/
def P14882313541356787381.Spec : Prop :=
  ∀ n, P14882313541356787381.a n = A027771 (n + 10)

end A027771

/-! ## A027771.P11697415973389814856

`A001288(n)*A020715(A020715(n)-1)`
-/

namespace A027771.P11697415973389814856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11) * A020715 (A020715 n - 1).toNat

end

end A027771.P11697415973389814856

namespace A027771

/-- `A001288(n)*A020715(A020715(n)-1)` -/
def P11697415973389814856.Spec : Prop :=
  ∀ n, P11697415973389814856.a n = A027771 (n + 10)

end A027771

/-!
# A027772: a(n) = (n+1)*binomial(n+1,12).

The programs for A027772, the canonical program `A027772.P16626333252240484647` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027772 has offset 11).

The definition of A027772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+12)*C(n+12, 12)` (program `A027772.P16626333252240484647`, by `A027772.P16626333252240484647.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027772.P16626333252240484647

`(n+12)*C(n+12, 12)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027772

/-- `(n+12)*C(n+12, 12)` -/
def P16626333252240484647.Spec : Prop :=
  ∀ n, (P16626333252240484647.a n : ℤ) = A027772 (n + 11)

theorem P16626333252240484647.correct : P16626333252240484647.Spec := by
  intro n
  simp only [A027772, Nat.add_sub_cancel]

end A027772

/-! ## A027772.P11650941792384654226

`(n+12)*A010965(n)`
-/

namespace A027772.P11650941792384654226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 12 : ℤ) * A010965 (n + 12)

end

end A027772.P11650941792384654226

namespace A027772

/-- `(n+12)*A010965(n)` -/
def P11650941792384654226.Spec : Prop :=
  ∀ n, P11650941792384654226.a n = A027772 (n + 11)

end A027772

/-! ## A027772.P7020195733645659846

`(n+12)*∑[A001288(n)]`
-/

namespace A027772.P7020195733645659846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 12 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027772.P7020195733645659846

namespace A027772

/-- `(n+12)*∑[A001288(n)]` -/
def P7020195733645659846.Spec : Prop :=
  ∀ n, P7020195733645659846.a n = A027772 (n + 11)

end A027772

/-! ## A027772.P13232727800522051200

`A010966(n)+∑[A027771(n)]`
-/

namespace A027772.P13232727800522051200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027771 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010966 (n + 13) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027772.P13232727800522051200

namespace A027772

/-- `A010966(n)+∑[A027771(n)]` -/
def P13232727800522051200.Spec : Prop :=
  ∀ n, P13232727800522051200.a n = A027772 (n + 11)

end A027772

/-! ## A027772.P1513839063784329319

`∑[A027771(n)+A010965(n)]`
-/

namespace A027772.P1513839063784329319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027771 (n + 10) + A010965 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027772.P1513839063784329319

namespace A027772

/-- `∑[A027771(n)+A010965(n)]` -/
def P1513839063784329319.Spec : Prop :=
  ∀ n, P1513839063784329319.a n = A027772 (n + 11)

end A027772

/-! ## A027772.P17846302651769518572

`∑[A027771(n)+∑[A001288(n)]]`
-/

namespace A027772.P17846302651769518572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027771 (n + 10) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027772.P17846302651769518572

namespace A027772

/-- `∑[A027771(n)+∑[A001288(n)]]` -/
def P17846302651769518572.Spec : Prop :=
  ∀ n, P17846302651769518572.a n = A027772 (n + 11)

end A027772

/-! ## A027772.P234787576644283301

`A010965(n)*A020719(A020710(n))`
-/

namespace A027772.P234787576644283301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010965 (n + 12) * A020719 (A020710 n).toNat

end

end A027772.P234787576644283301

namespace A027772

/-- `A010965(n)*A020719(A020710(n))` -/
def P234787576644283301.Spec : Prop :=
  ∀ n, P234787576644283301.a n = A027772 (n + 11)

end A027772

/-! ## A027772.P13287189887248021435

`A010965(n)*A020719(A020719(n)-2)`
-/

namespace A027772.P13287189887248021435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010965 (n + 12) * A020719 (A020719 n - 2).toNat

end

end A027772.P13287189887248021435

namespace A027772

/-- `A010965(n)*A020719(A020719(n)-2)` -/
def P13287189887248021435.Spec : Prop :=
  ∀ n, P13287189887248021435.a n = A027772 (n + 11)

end A027772

/-! ## A027772.P3465758147368751760

`A010965(n)*A020715(A020715(n))`
-/

namespace A027772.P3465758147368751760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010965 (n + 12) * A020715 (A020715 n).toNat

end

end A027772.P3465758147368751760

namespace A027772

/-- `A010965(n)*A020715(A020715(n))` -/
def P3465758147368751760.Spec : Prop :=
  ∀ n, P3465758147368751760.a n = A027772 (n + 11)

end A027772

/-! ## A027772.P8727864436326090899

`∑[A001288(n)]*A020715(A020715(n))`
-/

namespace A027772.P8727864436326090899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A020715 (A020715 n).toNat

end

end A027772.P8727864436326090899

namespace A027772

/-- `∑[A001288(n)]*A020715(A020715(n))` -/
def P8727864436326090899.Spec : Prop :=
  ∀ n, P8727864436326090899.a n = A027772 (n + 11)

end A027772

/-!
# A027773: a(n) = (n+1)*binomial(n+1,13).

The programs for A027773, the canonical program `A027773.P8704485034071173277` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027773 has offset 12).

The definition of A027773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+13)*C(n+13, 13)` (program `A027773.P8704485034071173277`, by `A027773.P8704485034071173277.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027773.P8704485034071173277

`(n+13)*C(n+13, 13)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027773

/-- `(n+13)*C(n+13, 13)` -/
def P8704485034071173277.Spec : Prop :=
  ∀ n, (P8704485034071173277.a n : ℤ) = A027773 (n + 12)

theorem P8704485034071173277.correct : P8704485034071173277.Spec := by
  intro n
  simp only [A027773, Nat.add_sub_cancel]

end A027773

/-! ## A027773.P4718584126358528767

`(n+13)*A010966(n)`
-/

namespace A027773.P4718584126358528767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 13 : ℤ) * A010966 (n + 13)

end

end A027773.P4718584126358528767

namespace A027773

/-- `(n+13)*A010966(n)` -/
def P4718584126358528767.Spec : Prop :=
  ∀ n, P4718584126358528767.a n = A027773 (n + 12)

end A027773

/-! ## A027773.P205761508714344042

`A010967(n)+∑[A027772(n)]`
-/

namespace A027773.P205761508714344042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027772 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010967 (n + 14) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027773.P205761508714344042

namespace A027773

/-- `A010967(n)+∑[A027772(n)]` -/
def P205761508714344042.Spec : Prop :=
  ∀ n, P205761508714344042.a n = A027773 (n + 12)

end A027773

/-! ## A027773.P2651754082240048435

`∑[A027772(n)+A010966(n)]`
-/

namespace A027773.P2651754082240048435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027772 (n + 11) + A010966 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027773.P2651754082240048435

namespace A027773

/-- `∑[A027772(n)+A010966(n)]` -/
def P2651754082240048435.Spec : Prop :=
  ∀ n, P2651754082240048435.a n = A027773 (n + 12)

end A027773

/-! ## A027773.P10492912652621690577

`14*A010967(n)-A010966(n)`
-/

namespace A027773.P10492912652621690577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A010967 (n + 14) - A010966 (n + 13)

end

end A027773.P10492912652621690577

namespace A027773

/-- `14*A010967(n)-A010966(n)` -/
def P10492912652621690577.Spec : Prop :=
  ∀ n, P10492912652621690577.a n = A027773 (n + 12)

end A027773

/-! ## A027773.P16043229610554106447

`∑[A027772(n)+∑[A010965(n)]]`
-/

namespace A027773.P16043229610554106447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010965 (n + 12)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027772 (n + 11) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027773.P16043229610554106447

namespace A027773

/-- `∑[A027772(n)+∑[A010965(n)]]` -/
def P16043229610554106447.Spec : Prop :=
  ∀ n, P16043229610554106447.a n = A027773 (n + 12)

end A027773

/-! ## A027773.P6506257045077211770

`A010965(n+1)+n*Δ[A010967(n)]`
-/

namespace A027773.P6506257045077211770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010967 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010965 (n + 1 + 12) + (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A027773.P6506257045077211770

namespace A027773

/-- `A010965(n+1)+n*Δ[A010967(n)]` -/
def P6506257045077211770.Spec : Prop :=
  ∀ n, P6506257045077211770.a n = A027773 (n + 12)

end A027773

/-! ## A027773.P14743066096382073769

`A010966(n)*A020719(A020715(n))`
-/

namespace A027773.P14743066096382073769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010966 (n + 13) * A020719 (A020715 n).toNat

end

end A027773.P14743066096382073769

namespace A027773

/-- `A010966(n)*A020719(A020715(n))` -/
def P14743066096382073769.Spec : Prop :=
  ∀ n, P14743066096382073769.a n = A027773 (n + 12)

end A027773

/-! ## A027773.P6211209739449345581

`A010966(n)*A020719(A020719(n)-1)`
-/

namespace A027773.P6211209739449345581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010966 (n + 13) * A020719 (A020719 n - 1).toNat

end

end A027773.P6211209739449345581

namespace A027773

/-- `A010966(n)*A020719(A020719(n)-1)` -/
def P6211209739449345581.Spec : Prop :=
  ∀ n, P6211209739449345581.a n = A027773 (n + 12)

end A027773

/-!
# A027774: a(n) = (n+1)*binomial(n+1,14).

The programs for A027774, the canonical program `A027774.P17730540282717156732` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027774 has offset 13).

The definition of A027774 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+14)*C(n+14, 14)` (program `A027774.P17730540282717156732`, by `A027774.P17730540282717156732.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027774.P17730540282717156732

`(n+14)*C(n+14, 14)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027774

/-- `(n+14)*C(n+14, 14)` -/
def P17730540282717156732.Spec : Prop :=
  ∀ n, (P17730540282717156732.a n : ℤ) = A027774 (n + 13)

theorem P17730540282717156732.correct : P17730540282717156732.Spec := by
  intro n
  simp only [A027774, Nat.add_sub_cancel]

end A027774

/-! ## A027774.P1991156619429813314

`(n+14)*A010967(n)`
-/

namespace A027774.P1991156619429813314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 14 : ℤ) * A010967 (n + 14)

end

end A027774.P1991156619429813314

namespace A027774

/-- `(n+14)*A010967(n)` -/
def P1991156619429813314.Spec : Prop :=
  ∀ n, P1991156619429813314.a n = A027774 (n + 13)

end A027774

/-! ## A027774.P17691792631254320567

`∑[A010966(n)]*(n+14)`
-/

namespace A027774.P17691792631254320567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010966 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n + 14 : ℤ)

end

end A027774.P17691792631254320567

namespace A027774

/-- `∑[A010966(n)]*(n+14)` -/
def P17691792631254320567.Spec : Prop :=
  ∀ n, P17691792631254320567.a n = A027774 (n + 13)

end A027774

/-! ## A027774.P13712897028222303158

`∑[A027773(n)+A010967(n)]`
-/

namespace A027774.P13712897028222303158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027773 (n + 12) + A010967 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027774.P13712897028222303158

namespace A027774

/-- `∑[A027773(n)+A010967(n)]` -/
def P13712897028222303158.Spec : Prop :=
  ∀ n, P13712897028222303158.a n = A027774 (n + 13)

end A027774

/-! ## A027774.P15671773625396413079

`∑[A027773(n)+∑[A010966(n)]]`
-/

namespace A027774.P15671773625396413079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010966 (n + 13)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027773 (n + 12) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027774.P15671773625396413079

namespace A027774

/-- `∑[A027773(n)+∑[A010966(n)]]` -/
def P15671773625396413079.Spec : Prop :=
  ∀ n, P15671773625396413079.a n = A027774 (n + 13)

end A027774

/-! ## A027774.P3248550834462615324

`(n+1)/14*A027773(n+1)`
-/

namespace A027774.P3248550834462615324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 14 * (A027773 (n + 1 + 12) : ℚ)

end

end A027774.P3248550834462615324

namespace A027774

/-- `(n+1)/14*A027773(n+1)` -/
def P3248550834462615324.Spec : Prop :=
  ∀ n, P3248550834462615324.a n = (A027774 (n + 13) : ℚ)

end A027774

/-! ## A027774.P6806741632475213869

`A010967(n)*A020722(A020715(n))`
-/

namespace A027774.P6806741632475213869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010967 (n + 14) * A020722 (A020715 n).toNat

end

end A027774.P6806741632475213869

namespace A027774

/-- `A010967(n)*A020722(A020715(n))` -/
def P6806741632475213869.Spec : Prop :=
  ∀ n, P6806741632475213869.a n = A027774 (n + 13)

end A027774

/-! ## A027774.P5602635770397631568

`A010967(n)*A020722(A020722(n)-2)`
-/

namespace A027774.P5602635770397631568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010967 (n + 14) * A020722 (A020722 n - 2).toNat

end

end A027774.P5602635770397631568

namespace A027774

/-- `A010967(n)*A020722(A020722(n)-2)` -/
def P5602635770397631568.Spec : Prop :=
  ∀ n, P5602635770397631568.a n = A027774 (n + 13)

end A027774

/-! ## A027774.P1019181292036416606

`A010967(n)*A020719(A020719(n))`
-/

namespace A027774.P1019181292036416606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010967 (n + 14) * A020719 (A020719 n).toNat

end

end A027774.P1019181292036416606

namespace A027774

/-- `A010967(n)*A020719(A020719(n))` -/
def P1019181292036416606.Spec : Prop :=
  ∀ n, P1019181292036416606.a n = A027774 (n + 13)

end A027774

/-!
# A027775: a(n) = (n+1)*binomial(n+1, 15).

The programs for A027775, the canonical program `A027775.P15971354981670385090` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027775 has offset 14).

The definition of A027775 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+15)*C(n+15, 15)` (program `A027775.P15971354981670385090`, by `A027775.P15971354981670385090.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027775.P15971354981670385090

`(n+15)*C(n+15, 15)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027775

/-- `(n+15)*C(n+15, 15)` -/
def P15971354981670385090.Spec : Prop :=
  ∀ n, (P15971354981670385090.a n : ℤ) = A027775 (n + 14)

theorem P15971354981670385090.correct : P15971354981670385090.Spec := by
  intro n
  simp only [A027775, Nat.add_sub_cancel]

end A027775

/-! ## A027775.P15074907105381892053

`(n+15)*A010968(n)`
-/

namespace A027775.P15074907105381892053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 15 : ℤ) * A010968 (n + 15)

end

end A027775.P15074907105381892053

namespace A027775

/-- `(n+15)*A010968(n)` -/
def P15074907105381892053.Spec : Prop :=
  ∀ n, P15074907105381892053.a n = A027775 (n + 14)

end A027775

/-! ## A027775.P17757749457754624817

`(n+15)*∑[A010967(n)]`
-/

namespace A027775.P17757749457754624817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010967 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 15 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027775.P17757749457754624817

namespace A027775

/-- `(n+15)*∑[A010967(n)]` -/
def P17757749457754624817.Spec : Prop :=
  ∀ n, P17757749457754624817.a n = A027775 (n + 14)

end A027775

/-! ## A027775.P1369745674375737513

`A010969(n)+∑[A027774(n)]`
-/

namespace A027775.P1369745674375737513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027774 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010969 (n + 16) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027775.P1369745674375737513

namespace A027775

/-- `A010969(n)+∑[A027774(n)]` -/
def P1369745674375737513.Spec : Prop :=
  ∀ n, P1369745674375737513.a n = A027775 (n + 14)

end A027775

/-! ## A027775.P12382188386883491675

`∑[A027774(n)+A010968(n)]`
-/

namespace A027775.P12382188386883491675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027774 (n + 13) + A010968 (n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027775.P12382188386883491675

namespace A027775

/-- `∑[A027774(n)+A010968(n)]` -/
def P12382188386883491675.Spec : Prop :=
  ∀ n, P12382188386883491675.a n = A027775 (n + 14)

end A027775

/-! ## A027775.P3538108176574608341

`16*A010969(n)-A010968(n)`
-/

namespace A027775.P3538108176574608341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A010969 (n + 16) - A010968 (n + 15)

end

end A027775.P3538108176574608341

namespace A027775

/-- `16*A010969(n)-A010968(n)` -/
def P3538108176574608341.Spec : Prop :=
  ∀ n, P3538108176574608341.a n = A027775 (n + 14)

end A027775

/-!
# A027776: a(n) = (n+1)*binomial(n+1,16).

The programs for A027776, the canonical program `A027776.P9414248495916606094` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027776 has offset 15).

The definition of A027776 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+16)*C(n+16, 16)` (program `A027776.P9414248495916606094`, by `A027776.P9414248495916606094.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027776.P9414248495916606094

`(n+16)*C(n+16, 16)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027776

/-- `(n+16)*C(n+16, 16)` -/
def P9414248495916606094.Spec : Prop :=
  ∀ n, (P9414248495916606094.a n : ℤ) = A027776 (n + 15)

theorem P9414248495916606094.correct : P9414248495916606094.Spec := by
  intro n
  simp only [A027776, Nat.add_sub_cancel]

end A027776

/-! ## A027776.P6507172424760947143

`(n+16)*A010969(n)`
-/

namespace A027776.P6507172424760947143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 16 : ℤ) * A010969 (n + 16)

end

end A027776.P6507172424760947143

namespace A027776

/-- `(n+16)*A010969(n)` -/
def P6507172424760947143.Spec : Prop :=
  ∀ n, P6507172424760947143.a n = A027776 (n + 15)

end A027776

/-! ## A027776.P15466984336923415122

`A010970(n)+∑[A027775(n)]`
-/

namespace A027776.P15466984336923415122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027775 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010970 (n + 17) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027776.P15466984336923415122

namespace A027776

/-- `A010970(n)+∑[A027775(n)]` -/
def P15466984336923415122.Spec : Prop :=
  ∀ n, P15466984336923415122.a n = A027776 (n + 15)

end A027776

/-! ## A027776.P1979143374994401597

`∑[A027775(n)+A010969(n)]`
-/

namespace A027776.P1979143374994401597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027775 (n + 14) + A010969 (n + 16)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027776.P1979143374994401597

namespace A027776

/-- `∑[A027775(n)+A010969(n)]` -/
def P1979143374994401597.Spec : Prop :=
  ∀ n, P1979143374994401597.a n = A027776 (n + 15)

end A027776

/-! ## A027776.P8569819945927723619

`∑[A027775(n)+∑[A010968(n)]]`
-/

namespace A027776.P8569819945927723619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010968 (n + 15)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027775 (n + 14) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027776.P8569819945927723619

namespace A027776

/-- `∑[A027775(n)+∑[A010968(n)]]` -/
def P8569819945927723619.Spec : Prop :=
  ∀ n, P8569819945927723619.a n = A027776 (n + 15)

end A027776

/-! ## A027776.P2431895052935365111

`(n+1)/4*A027775(n+1)/4`
-/

namespace A027776.P2431895052935365111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * ((A027775 (n + 1 + 14) : ℚ) / 4)

end

end A027776.P2431895052935365111

namespace A027776

/-- `(n+1)/4*A027775(n+1)/4` -/
def P2431895052935365111.Spec : Prop :=
  ∀ n, P2431895052935365111.a n = (A027776 (n + 15) : ℚ)

end A027776

/-! ## A027776.P18441488301416669170

`A010969(n)*A020722(A020722(n))`
-/

namespace A027776.P18441488301416669170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010969 (n + 16) * A020722 (A020722 n).toNat

end

end A027776.P18441488301416669170

namespace A027776

/-- `A010969(n)*A020722(A020722(n))` -/
def P18441488301416669170.Spec : Prop :=
  ∀ n, P18441488301416669170.a n = A027776 (n + 15)

end A027776

/-!
# A027777: a(n) = 2*(n+1)*binomial(n+2,4).

The programs for A027777, the canonical program `A027777.P16503156280263900957` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027777 has offset 2).

The definition of A027777 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+3)*C(n+4, 4)` (program `A027777.P16503156280263900957`, by `A027777.P16503156280263900957.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027777.P16503156280263900957

`2*(n+3)*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027777

/-- `2*(n+3)*C(n+4, 4)` -/
def P16503156280263900957.Spec : Prop :=
  ∀ n, (P16503156280263900957.a n : ℤ) = A027777 (n + 2)

theorem P16503156280263900957.correct : P16503156280263900957.Spec := by
  intro n
  simp only [A027777, Nat.add_sub_cancel]

end A027777

/-! ## A027777.P16948283236880585242

`2*A006411(n+1)`
-/

namespace A027777.P16948283236880585242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006411 (n + 1)

end

end A027777.P16948283236880585242

namespace A027777

/-- `2*A006411(n+1)` -/
def P16948283236880585242.Spec : Prop :=
  ∀ n, P16948283236880585242.a n = A027777 (n + 2)

end A027777

/-! ## A027777.P11507951343788185728

`∑[∑[∑[∑[10*n+6]]]]`
-/

namespace A027777.P11507951343788185728
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 6

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027777.P11507951343788185728

namespace A027777

/-- `∑[∑[∑[∑[10*n+6]]]]` -/
def P11507951343788185728.Spec : Prop :=
  ∀ n, (P11507951343788185728.a n : ℤ) = A027777 (n + 2)

end A027777

/-! ## A027777.P3053265843077585475

`C(n+3, 3)*A000217(n+3)`
-/

namespace A027777.P3053265843077585475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A000217 (n + 3)

end

end A027777.P3053265843077585475

namespace A027777

/-- `C(n+3, 3)*A000217(n+3)` -/
def P3053265843077585475.Spec : Prop :=
  ∀ n, P3053265843077585475.a n = A027777 (n + 2)

end A027777

/-! ## A027777.P15427056602247654259

`A096943(n)+A051879(n)`
-/

namespace A027777.P15427056602247654259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096943 n + A051879 n

end

end A027777.P15427056602247654259

namespace A027777

/-- `A096943(n)+A051879(n)` -/
def P15427056602247654259.Spec : Prop :=
  ∀ n, P15427056602247654259.a n = A027777 (n + 2)

end A027777

/-! ## A027777.P14006982716206829310

`A154286(n)+A051880(n)`
-/

namespace A027777.P14006982716206829310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154286 n + A051880 n

end

end A027777.P14006982716206829310

namespace A027777

/-- `A154286(n)+A051880(n)` -/
def P14006982716206829310.Spec : Prop :=
  ∀ n, P14006982716206829310.a n = A027777 (n + 2)

end A027777

/-! ## A027777.P8407943605624904503

`2*(A095669(n)-A055796(n))`
-/

namespace A027777.P8407943605624904503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A095669 n - A055796 n)

end

end A027777.P8407943605624904503

namespace A027777

/-- `2*(A095669(n)-A055796(n))` -/
def P8407943605624904503.Spec : Prop :=
  ∀ n, P8407943605624904503.a n = A027777 (n + 2)

end A027777

/-! ## A027777.P10175417713460362973

`A004320(n+1)+A004282(n+1)`
-/

namespace A027777.P10175417713460362973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004320 (n + 1) + A004282 (n + 1)

end

end A027777.P10175417713460362973

namespace A027777

/-- `A004320(n+1)+A004282(n+1)` -/
def P10175417713460362973.Spec : Prop :=
  ∀ n, P10175417713460362973.a n = A027777 (n + 2)

end A027777

/-! ## A027777.P12614833936166353944

`A006469(n+1)-A006408(n+2)`
-/

namespace A027777.P12614833936166353944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006469 (n + 1) - A006408 (n + 2)

end

end A027777.P12614833936166353944

namespace A027777

/-- `A006469(n+1)-A006408(n+2)` -/
def P12614833936166353944.Spec : Prop :=
  ∀ n, P12614833936166353944.a n = A027777 (n + 2)

end A027777

/-! ## A027777.P14330886823411152506

`A027764(n+3)+A006470(n+1)`
-/

namespace A027777.P14330886823411152506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027764 (n + 3) + A006470 (n + 1)

end

end A027777.P14330886823411152506

namespace A027777

/-- `A027764(n+3)+A006470(n+1)` -/
def P14330886823411152506.Spec : Prop :=
  ∀ n, P14330886823411152506.a n = A027777 (n + 2)

end A027777

/-! ## A027777.P2335607591055783567

`2*(A034263(n)+A005583(n+1))`
-/

namespace A027777.P2335607591055783567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034263 n + A005583 (n + 1))

end

end A027777.P2335607591055783567

namespace A027777

/-- `2*(A034263(n)+A005583(n+1))` -/
def P2335607591055783567.Spec : Prop :=
  ∀ n, P2335607591055783567.a n = A027777 (n + 2)

end A027777

/-! ## A027777.P2217832282598895077

`A000217(n+3)*A000292(n+1)`
-/

namespace A027777.P2217832282598895077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 3) * A000292 (n + 1)

end

end A027777.P2217832282598895077

namespace A027777

/-- `A000217(n+3)*A000292(n+1)` -/
def P2217832282598895077.Spec : Prop :=
  ∀ n, P2217832282598895077.a n = A027777 (n + 2)

end A027777

/-! ## A027777.P12039579757094341957

`2*(A027789(n+1)-A027800(n))`
-/

namespace A027777.P12039579757094341957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A027789 (n + 1) - A027800 n)

end

end A027777.P12039579757094341957

namespace A027777

/-- `2*(A027789(n+1)-A027800(n))` -/
def P12039579757094341957.Spec : Prop :=
  ∀ n, P12039579757094341957.a n = A027777 (n + 2)

end A027777

/-! ## A027777.P17946224751510846050

`A027764(n+3)+A027789(n+1)/2`
-/

namespace A027777.P17946224751510846050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027764 (n + 3) : ℚ) + (A027789 (n + 1) : ℚ) / 2

end

end A027777.P17946224751510846050

namespace A027777

/-- `A027764(n+3)+A027789(n+1)/2` -/
def P17946224751510846050.Spec : Prop :=
  ∀ n, P17946224751510846050.a n = (A027777 (n + 2) : ℚ)

end A027777

/-! ## A027777.P14293327050388917362

`2*(A253945(n+4)-A000574(n+3))`
-/

namespace A027777.P14293327050388917362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A253945 (n + 4) - A000574 (n + 3))

end

end A027777.P14293327050388917362

namespace A027777

/-- `2*(A253945(n+4)-A000574(n+3))` -/
def P14293327050388917362.Spec : Prop :=
  ∀ n, P14293327050388917362.a n = A027777 (n + 2)

end A027777

/-! ## A027777.P9842051283001459418

`(n+1)*Δ[A005585(n+1)]`
-/

namespace A027777.P9842051283001459418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A027777.P9842051283001459418

namespace A027777

/-- `(n+1)*Δ[A005585(n+1)]` -/
def P9842051283001459418.Spec : Prop :=
  ∀ n, P9842051283001459418.a n = A027777 (n + 2)

end A027777

/-! ## A027777.P18342381515859666214

`(n+3)*Δ[A277935(n+1)]`
-/

namespace A027777.P18342381515859666214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (f1 (n + 1) - f1 n)

end

end A027777.P18342381515859666214

namespace A027777

/-- `(n+3)*Δ[A277935(n+1)]` -/
def P18342381515859666214.Spec : Prop :=
  ∀ n, P18342381515859666214.a n = A027777 (n + 2)

end A027777

/-! ## A027777.P12457677327721666713

`A253285(n+1)/(2*(n+2))`
-/

namespace A027777.P12457677327721666713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253285 (n + 1) : ℚ) / (2 * (n + 2) : ℚ)

end

end A027777.P12457677327721666713

namespace A027777

/-- `A253285(n+1)/(2*(n+2))` -/
def P12457677327721666713.Spec : Prop :=
  ∀ n, P12457677327721666713.a n = (A027777 (n + 2) : ℚ)

end A027777

/-! ## A027777.P12737165176096693113

`(n+3)/2*A033488(n+1)`
-/

namespace A027777.P12737165176096693113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 2 * (A033488 (n + 1) : ℚ)

end

end A027777.P12737165176096693113

namespace A027777

/-- `(n+3)/2*A033488(n+1)` -/
def P12737165176096693113.Spec : Prop :=
  ∀ n, P12737165176096693113.a n = (A027777 (n + 2) : ℚ)

end A027777

/-! ## A027777.P10250655145239069969

`A266732(n)+A033487(n+1)`
-/

namespace A027777.P10250655145239069969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266732 n + A033487 (n + 1)

end

end A027777.P10250655145239069969

namespace A027777

/-- `A266732(n)+A033487(n+1)` -/
def P10250655145239069969.Spec : Prop :=
  ∀ n, P10250655145239069969.a n = A027777 (n + 2)

end A027777

/-!
# A027778: a(n) = 5*(n+1)*binomial(n+2, 5)/2.

The programs for A027778, the canonical program `A027778.P605010904864149133` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027778 has offset 3).

The definition of A027778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027778.P605010904864149133

`C(n+4, 4)*C(n+5, 2)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027778

/-- `C(n+4, 4)*C(n+5, 2)` -/
def P605010904864149133.Spec : Prop :=
  ∀ n, (P605010904864149133.a n : ℤ) = A027778 (n + 3)

theorem P605010904864149133.correct : P605010904864149133.Spec := by
  intro n
  simp only [A027778, Nat.add_sub_cancel]

end A027778

/-! ## A027778.P16113255342903228979

`5*(n+4)*C(n+5, 5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027778.P16113255342903228979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (n + 4) * Nat.choose (n + 5) 5 : ℚ) / 2

end

end A027778.P16113255342903228979

namespace A027778

/-- `5*(n+4)*C(n+5, 5)/2` -/
def P16113255342903228979.Spec : Prop :=
  ∀ n, P16113255342903228979.a n = (A027778 (n + 3) : ℚ)

end A027778

/-! ## A027778.P18079246842334278259

`C(n+5, 4)*∑[n+2]`
-/

namespace A027778.P18079246842334278259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 5) 4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027778.P18079246842334278259

namespace A027778

/-- `C(n+5, 4)*∑[n+2]` -/
def P18079246842334278259.Spec : Prop :=
  ∀ n, (P18079246842334278259.a n : ℤ) = A027778 (n + 3)

end A027778

/-! ## A027778.P4710683432657093485

`∑[∑[∑[n+1]]]*A000217(n+4)`
-/

namespace A027778.P4710683432657093485
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000217 (n + 4)

end

end A027778.P4710683432657093485

namespace A027778

/-- `∑[∑[∑[n+1]]]*A000217(n+4)` -/
def P4710683432657093485.Spec : Prop :=
  ∀ n, P4710683432657093485.a n = A027778 (n + 3)

end A027778

/-! ## A027778.P9189388288787375916

`A000096(n+1)+A000096(n+1)*A063258(n)`
-/

namespace A027778.P9189388288787375916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) + A000096 (n + 1) * A063258 n

end

end A027778.P9189388288787375916

namespace A027778

/-- `A000096(n+1)+A000096(n+1)*A063258(n)` -/
def P9189388288787375916.Spec : Prop :=
  ∀ n, P9189388288787375916.a n = A027778 (n + 3)

end A027778

/-! ## A027778.P4306603223965359862

`(n+1)/2*A006411(n+2)`
-/

namespace A027778.P4306603223965359862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A006411 (n + 2) : ℚ)

end

end A027778.P4306603223965359862

namespace A027778

/-- `(n+1)/2*A006411(n+2)` -/
def P4306603223965359862.Spec : Prop :=
  ∀ n, P4306603223965359862.a n = (A027778 (n + 3) : ℚ)

end A027778

/-! ## A027778.P10851083825457114877

`A266732(n+1)+A240440(n+2)`
-/

namespace A027778.P10851083825457114877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266732 (n + 1) + A240440 (n + 2)

end

end A027778.P10851083825457114877

namespace A027778

/-- `A266732(n+1)+A240440(n+2)` -/
def P10851083825457114877.Spec : Prop :=
  ∀ n, P10851083825457114877.a n = A027778 (n + 3)

end A027778

/-! ## A027778.P17729801335413481851

`(A000574(n+4)-A005583(n+2))*A000096(n+1)`
-/

namespace A027778.P17729801335413481851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000574 (n + 4) - A005583 (n + 2)) * A000096 (n + 1)

end

end A027778.P17729801335413481851

namespace A027778

/-- `(A000574(n+4)-A005583(n+2))*A000096(n+1)` -/
def P17729801335413481851.Spec : Prop :=
  ∀ n, P17729801335413481851.a n = A027778 (n + 3)

end A027778

/-! ## A027778.P17784676821824646879

`A299335(2*(n+1))-A299338(2*(n+1))`
-/

namespace A027778.P17784676821824646879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299335 (2 * (n + 1)) - A299338 (2 * (n + 1))

end

end A027778.P17784676821824646879

namespace A027778

/-- `A299335(2*(n+1))-A299338(2*(n+1))` -/
def P17784676821824646879.Spec : Prop :=
  ∀ n, P17784676821824646879.a n = A027778 (n + 3)

end A027778

/-! ## A027778.P12319282928277845199

`∑[∑[5*A000914(n+1)]]`
-/

namespace A027778.P12319282928277845199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000914 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027778.P12319282928277845199

namespace A027778

/-- `∑[∑[5*A000914(n+1)]]` -/
def P12319282928277845199.Spec : Prop :=
  ∀ n, P12319282928277845199.a n = A027778 (n + 3)

end A027778

/-! ## A027778.P18259552596989703986

`A027764(n+3)+A001303(n+1)`
-/

namespace A027778.P18259552596989703986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027764 (n + 3) + A001303 (n + 1)

end

end A027778.P18259552596989703986

namespace A027778

/-- `A027764(n+3)+A001303(n+1)` -/
def P18259552596989703986.Spec : Prop :=
  ∀ n, P18259552596989703986.a n = A027778 (n + 3)

end A027778

/-! ## A027778.P1145030888425550125

`A027801(n+1)+A027764(n+3)+record[A213550(n+1)]`
-/

namespace A027778.P1145030888425550125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027801 (n + 1) + (A027764 (n + 3) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A027778.P1145030888425550125

namespace A027778

/-- `A027801(n+1)+A027764(n+3)+record[A213550(n+1)]` -/
def P1145030888425550125.Spec : Prop :=
  ∀ n, P1145030888425550125.a n = A027778 (n + 3)

end A027778

/-! ## A027778.P6469545358972260134

`A027801(n+1)+A213550(A000124(n))+A027764(n+3)`
-/

namespace A027778.P6469545358972260134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027801 (n + 1) + (A213550 (A000124 n).toNat + A027764 (n + 3))

end

end A027778.P6469545358972260134

namespace A027778

/-- `A027801(n+1)+A213550(A000124(n))+A027764(n+3)` -/
def P6469545358972260134.Spec : Prop :=
  ∀ n, P6469545358972260134.a n = A027778 (n + 3)

end A027778

/-! ## A027778.P17242963729281295442

`A000096(n+1)*A213548(A000124(n+1))`
-/

namespace A027778.P17242963729281295442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) * A213548 (A000124 (n + 1)).toNat

end

end A027778.P17242963729281295442

namespace A027778

/-- `A000096(n+1)*A213548(A000124(n+1))` -/
def P17242963729281295442.Spec : Prop :=
  ∀ n, P17242963729281295442.a n = A027778 (n + 3)

end A027778

/-!
# A027779: a(n) = 3*(n+1)*binomial(n+2,6).

The programs for A027779, the canonical program `A027779.P1262678986337575963` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027779 has offset 4).

The definition of A027779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+5)*C(n+6, 6)` (program `A027779.P1262678986337575963`, by `A027779.P1262678986337575963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027779.P1262678986337575963

`3*(n+5)*C(n+6, 6)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027779

/-- `3*(n+5)*C(n+6, 6)` -/
def P1262678986337575963.Spec : Prop :=
  ∀ n, (P1262678986337575963.a n : ℤ) = A027779 (n + 4)

theorem P1262678986337575963.correct : P1262678986337575963.Spec := by
  intro n
  simp only [A027779, Nat.add_sub_cancel]

end A027779

/-! ## A027779.P6546497062107432135

`(n+5)*∑[∑[∑[∑[∑[3*(n+1)]]]]]`
-/

namespace A027779.P6546497062107432135
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 5) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027779.P6546497062107432135

namespace A027779

/-- `(n+5)*∑[∑[∑[∑[∑[3*(n+1)]]]]]` -/
def P6546497062107432135.Spec : Prop :=
  ∀ n, (P6546497062107432135.a n : ℤ) = A027779 (n + 4)

end A027779

/-! ## A027779.P17233683124739445305

`∑[A027778(n+3)+A027765(n+4)]`
-/

namespace A027779.P17233683124739445305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027778 (n + 3) + A027765 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027779.P17233683124739445305

namespace A027779

/-- `∑[A027778(n+3)+A027765(n+4)]` -/
def P17233683124739445305.Spec : Prop :=
  ∀ n, P17233683124739445305.a n = A027779 (n + 4)

end A027779

/-! ## A027779.P5179129623685610869

`7*A253944(n+6)-A253946(n+5)`
-/

namespace A027779.P5179129623685610869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A253944 (n + 6) - A253946 (n + 5)

end

end A027779.P5179129623685610869

namespace A027779

/-- `7*A253944(n+6)-A253946(n+5)` -/
def P5179129623685610869.Spec : Prop :=
  ∀ n, P5179129623685610869.a n = A027779 (n + 4)

end A027779

/-! ## A027779.P1043906287778479267

`A266733(n+1)-A253946(n+5)`
-/

namespace A027779.P1043906287778479267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266733 (n + 1) - A253946 (n + 5)

end

end A027779.P1043906287778479267

namespace A027779

/-- `A266733(n+1)-A253946(n+5)` -/
def P1043906287778479267.Spec : Prop :=
  ∀ n, P1043906287778479267.a n = A027779 (n + 4)

end A027779

/-! ## A027779.P12809828194828080723

`A266733(n)+A240440(n+3)`
-/

namespace A027779.P12809828194828080723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266733 n + A240440 (n + 3)

end

end A027779.P12809828194828080723

namespace A027779

/-- `A266733(n)+A240440(n+3)` -/
def P12809828194828080723.Spec : Prop :=
  ∀ n, P12809828194828080723.a n = A027779 (n + 4)

end A027779

/-!
# A027780: a(n) = 7*(n+1)*binomial(n+2,7)/2.

The programs for A027780, the canonical program `A027780.P12256695178813110992` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027780 has offset 5).

The definition of A027780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027780.P12256695178813110992

`C(n+6, 6)*C(n+7, 2)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027780

/-- `C(n+6, 6)*C(n+7, 2)` -/
def P12256695178813110992.Spec : Prop :=
  ∀ n, (P12256695178813110992.a n : ℤ) = A027780 (n + 5)

theorem P12256695178813110992.correct : P12256695178813110992.Spec := by
  intro n
  simp only [A027780, Nat.add_sub_cancel]

end A027780

/-! ## A027780.P2611181211771481597

`7*(n+6)*C(n+7, 7)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027780.P2611181211771481597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * (n + 6) * Nat.choose (n + 7) 7 : ℚ) / 2

end

end A027780.P2611181211771481597

namespace A027780

/-- `7*(n+6)*C(n+7, 7)/2` -/
def P2611181211771481597.Spec : Prop :=
  ∀ n, P2611181211771481597.a n = (A027780 (n + 5) : ℚ)

end A027780

/-! ## A027780.P16706625671519067056

`C(n+7, 6)*∑[n+3]`
-/

namespace A027780.P16706625671519067056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027780.P16706625671519067056

namespace A027780

/-- `C(n+7, 6)*∑[n+3]` -/
def P16706625671519067056.Spec : Prop :=
  ∀ n, (P16706625671519067056.a n : ℤ) = A027780 (n + 5)

end A027780

/-! ## A027780.P11036156591180945209

`A105249(n)+A027791(n+3)`
-/

namespace A027780.P11036156591180945209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105249 n + A027791 (n + 3)

end

end A027780.P11036156591180945209

namespace A027780

/-- `A105249(n)+A027791(n+3)` -/
def P11036156591180945209.Spec : Prop :=
  ∀ n, P11036156591180945209.a n = A027780 (n + 5)

end A027780

/-! ## A027780.P12467600600956201761

`∑[n+3]*Δ[A000580(n+7)]`
-/

namespace A027780.P12467600600956201761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A027780.P12467600600956201761

namespace A027780

/-- `∑[n+3]*Δ[A000580(n+7)]` -/
def P12467600600956201761.Spec : Prop :=
  ∀ n, P12467600600956201761.a n = A027780 (n + 5)

end A027780

/-! ## A027780.P6571702228616246893

`Δ[A000580(n+7)]*A027379(n+1)`
-/

namespace A027780.P6571702228616246893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A027379 (n + 1)

end

end A027780.P6571702228616246893

namespace A027780

/-- `Δ[A000580(n+7)]*A027379(n+1)` -/
def P6571702228616246893.Spec : Prop :=
  ∀ n, P6571702228616246893.a n = A027780 (n + 5)

end A027780

/-! ## A027780.P17204526439961244345

`A000579(n+6)*A161680(n+7)`
-/

namespace A027780.P17204526439961244345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) * A161680 (n + 7)

end

end A027780.P17204526439961244345

namespace A027780

/-- `A000579(n+6)*A161680(n+7)` -/
def P17204526439961244345.Spec : Prop :=
  ∀ n, P17204526439961244345.a n = A027780 (n + 5)

end A027780

/-! ## A027780.P5061985843437483844

`∑[n+3]*A000579(n+7)`
-/

namespace A027780.P5061985843437483844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000579 (n + 7)

end

end A027780.P5061985843437483844

namespace A027780

/-- `∑[n+3]*A000579(n+7)` -/
def P5061985843437483844.Spec : Prop :=
  ∀ n, P5061985843437483844.a n = A027780 (n + 5)

end A027780

/-! ## A027780.P14103774010149504137

`A007318(A000217(n+7)-7)*A161680(n+7)`
-/

namespace A027780.P14103774010149504137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 7) - 7).toNat * A161680 (n + 7)

end

end A027780.P14103774010149504137

namespace A027780

/-- `A007318(A000217(n+7)-7)*A161680(n+7)` -/
def P14103774010149504137.Spec : Prop :=
  ∀ n, P14103774010149504137.a n = A027780 (n + 5)

end A027780

/-! ## A027780.P1188732268149057695

`A007318(A000124(n+8)-8)*∑[n+3]`
-/

namespace A027780.P1188732268149057695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 (n + 8) - 8).toNat * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A027780.P1188732268149057695

namespace A027780

/-- `A007318(A000124(n+8)-8)*∑[n+3]` -/
def P1188732268149057695.Spec : Prop :=
  ∀ n, P1188732268149057695.a n = A027780 (n + 5)

end A027780

/-!
# A027781: a(n) = 4*(n+1)*binomial(n+2,8).

The programs for A027781, the canonical program `A027781.P7127852447546681033` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027781 has offset 6).

The definition of A027781 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+7)*C(n+8, 8)` (program `A027781.P7127852447546681033`, by `A027781.P7127852447546681033.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027781.P7127852447546681033

`4*(n+7)*C(n+8, 8)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027781

/-- `4*(n+7)*C(n+8, 8)` -/
def P7127852447546681033.Spec : Prop :=
  ∀ n, (P7127852447546681033.a n : ℤ) = A027781 (n + 6)

theorem P7127852447546681033.correct : P7127852447546681033.Spec := by
  intro n
  simp only [A027781, Nat.add_sub_cancel]

end A027781

/-! ## A027781.P2514462364641382835

`A000581(n+8)*4*(n+7)`
-/

namespace A027781.P2514462364641382835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * (4 * (n + 7) : ℤ)

end

end A027781.P2514462364641382835

namespace A027781

/-- `A000581(n+8)*4*(n+7)` -/
def P2514462364641382835.Spec : Prop :=
  ∀ n, P2514462364641382835.a n = A027781 (n + 6)

end A027781

/-! ## A027781.P14277814894609197218

`C(n+7, 7)*A000217(n+7)`
-/

namespace A027781.P14277814894609197218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) * A000217 (n + 7)

end

end A027781.P14277814894609197218

namespace A027781

/-- `C(n+7, 7)*A000217(n+7)` -/
def P14277814894609197218.Spec : Prop :=
  ∀ n, P14277814894609197218.a n = A027781 (n + 6)

end A027781

/-! ## A027781.P1996552332188167013

`∑[A000580(n+7)]*4*(n+7)`
-/

namespace A027781.P1996552332188167013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (4 * (n + 7) : ℤ)

end

end A027781.P1996552332188167013

namespace A027781

/-- `∑[A000580(n+7)]*4*(n+7)` -/
def P1996552332188167013.Spec : Prop :=
  ∀ n, P1996552332188167013.a n = A027781 (n + 6)

end A027781

/-! ## A027781.P16422308654059319386

`A000217(n+7)*A000580(n+7)`
-/

namespace A027781.P16422308654059319386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 7) * A000580 (n + 7)

end

end A027781.P16422308654059319386

namespace A027781

/-- `A000217(n+7)*A000580(n+7)` -/
def P16422308654059319386.Spec : Prop :=
  ∀ n, P16422308654059319386.a n = A027781 (n + 6)

end A027781

/-! ## A027781.P12685628934880823576

`4*A000581(n+8)*A020719(n)`
-/

namespace A027781.P12685628934880823576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A000581 (n + 8) * A020719 n)

end

end A027781.P12685628934880823576

namespace A027781

/-- `4*A000581(n+8)*A020719(n)` -/
def P12685628934880823576.Spec : Prop :=
  ∀ n, P12685628934880823576.a n = A027781 (n + 6)

end A027781

/-! ## A027781.P1727356475525772000

`∑[A027780(n+5)+A027767(n+6)]`
-/

namespace A027781.P1727356475525772000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027780 (n + 5) + A027767 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027781.P1727356475525772000

namespace A027781

/-- `∑[A027780(n+5)+A027767(n+6)]` -/
def P1727356475525772000.Spec : Prop :=
  ∀ n, P1727356475525772000.a n = A027781 (n + 6)

end A027781

/-! ## A027781.P17611884008127132705

`A028560(n+1)/2*A000580(n+8)`
-/

namespace A027781.P17611884008127132705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028560 (n + 1) : ℚ) / 2 * (A000580 (n + 8) : ℚ)

end

end A027781.P17611884008127132705

namespace A027781

/-- `A028560(n+1)/2*A000580(n+8)` -/
def P17611884008127132705.Spec : Prop :=
  ∀ n, P17611884008127132705.a n = (A027781 (n + 6) : ℚ)

end A027781

/-! ## A027781.P11548828376759995149

`A000580(n+7)*A161680(n+8)`
-/

namespace A027781.P11548828376759995149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A161680 (n + 8)

end

end A027781.P11548828376759995149

namespace A027781

/-- `A000580(n+7)*A161680(n+8)` -/
def P11548828376759995149.Spec : Prop :=
  ∀ n, P11548828376759995149.a n = A027781 (n + 6)

end A027781

/-! ## A027781.P2178403446688576768

`A007318(A000217(n+8)-8)*A000217(n+7)`
-/

namespace A027781.P2178403446688576768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 8) - 8).toNat * A000217 (n + 7)

end

end A027781.P2178403446688576768

namespace A027781

/-- `A007318(A000217(n+8)-8)*A000217(n+7)` -/
def P2178403446688576768.Spec : Prop :=
  ∀ n, P2178403446688576768.a n = A027781 (n + 6)

end A027781

/-!
# A027782: a(n) = 9*(n+1)*binomial(n+2,9)/2.

The programs for A027782, the canonical program `A027782.P5357193990328670961` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027782 has offset 7).

The definition of A027782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027782.P5357193990328670961

`C(n+8, 8)*C(n+9, 2)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027782

/-- `C(n+8, 8)*C(n+9, 2)` -/
def P5357193990328670961.Spec : Prop :=
  ∀ n, (P5357193990328670961.a n : ℤ) = A027782 (n + 7)

theorem P5357193990328670961.correct : P5357193990328670961.Spec := by
  intro n
  simp only [A027782, Nat.add_sub_cancel]

end A027782

/-! ## A027782.P7530016445744916194

`9*(n+8)*C(n+9, 9)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027782.P7530016445744916194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * (n + 8) * Nat.choose (n + 9) 9 : ℚ) / 2

end

end A027782.P7530016445744916194

namespace A027782

/-- `9*(n+8)*C(n+9, 9)/2` -/
def P7530016445744916194.Spec : Prop :=
  ∀ n, P7530016445744916194.a n = (A027782 (n + 7) : ℚ)

end A027782

/-! ## A027782.P7584284708830870834

`A000217(n+8)*A000581(n+8)`
-/

namespace A027782.P7584284708830870834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 8) * A000581 (n + 8)

end

end A027782.P7584284708830870834

namespace A027782

/-- `A000217(n+8)*A000581(n+8)` -/
def P7584284708830870834.Spec : Prop :=
  ∀ n, P7584284708830870834.a n = A027782 (n + 7)

end A027782

/-! ## A027782.P5022294671454324540

`∑[A000580(n+7)]*A000217(n+8)`
-/

namespace A027782.P5022294671454324540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000217 (n + 8)

end

end A027782.P5022294671454324540

namespace A027782

/-- `∑[A000580(n+7)]*A000217(n+8)` -/
def P5022294671454324540.Spec : Prop :=
  ∀ n, P5022294671454324540.a n = A027782 (n + 7)

end A027782

/-! ## A027782.P2226700432581005517

`(A052905(n+1)-1)*A000581(n+9)`
-/

namespace A027782.P2226700432581005517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052905 (n + 1) - 1) * A000581 (n + 9)

end

end A027782.P2226700432581005517

namespace A027782

/-- `(A052905(n+1)-1)*A000581(n+9)` -/
def P2226700432581005517.Spec : Prop :=
  ∀ n, P2226700432581005517.a n = A027782 (n + 7)

end A027782

/-! ## A027782.P13349557836176030644

`(A034856(n+2)+n)*A000581(n+9)`
-/

namespace A027782.P13349557836176030644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034856 (n + 2) + (n : ℤ)) * A000581 (n + 9)

end

end A027782.P13349557836176030644

namespace A027782

/-- `(A034856(n+2)+n)*A000581(n+9)` -/
def P13349557836176030644.Spec : Prop :=
  ∀ n, P13349557836176030644.a n = A027782 (n + 7)

end A027782

/-! ## A027782.P4555458752327662538

`Δ[A000292(n+7)]*A000581(n+8)`
-/

namespace A027782.P4555458752327662538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000581 (n + 8)

end

end A027782.P4555458752327662538

namespace A027782

/-- `Δ[A000292(n+7)]*A000581(n+8)` -/
def P4555458752327662538.Spec : Prop :=
  ∀ n, P4555458752327662538.a n = A027782 (n + 7)

end A027782

/-!
# A027783: a(n) = 5*(n+1)*binomial(n+2,10).

The programs for A027783, the canonical program `A027783.P7680163760107369688` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027783 has offset 8).

The definition of A027783 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(n+9)*C(n+10, 10)` (program `A027783.P7680163760107369688`, by `A027783.P7680163760107369688.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027783.P7680163760107369688

`5*(n+9)*C(n+10, 10)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027783

/-- `5*(n+9)*C(n+10, 10)` -/
def P7680163760107369688.Spec : Prop :=
  ∀ n, (P7680163760107369688.a n : ℤ) = A027783 (n + 8)

theorem P7680163760107369688.correct : P7680163760107369688.Spec := by
  intro n
  simp only [A027783, Nat.add_sub_cancel]

end A027783

/-! ## A027783.P9793585078458421461

`5*(n+9)*A001287(n)`
-/

namespace A027783.P9793585078458421461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n + 9 : ℤ) * A001287 (n + 10))

end

end A027783.P9793585078458421461

namespace A027783

/-- `5*(n+9)*A001287(n)` -/
def P9793585078458421461.Spec : Prop :=
  ∀ n, P9793585078458421461.a n = A027783 (n + 8)

end A027783

/-! ## A027783.P1465287701135946342

`A000217(n+9)*A000582(n+9)`
-/

namespace A027783.P1465287701135946342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 9) * A000582 (n + 9)

end

end A027783.P1465287701135946342

namespace A027783

/-- `A000217(n+9)*A000582(n+9)` -/
def P1465287701135946342.Spec : Prop :=
  ∀ n, P1465287701135946342.a n = A027783 (n + 8)

end A027783

/-! ## A027783.P12779605890005850938

`∑[A000581(n+8)]*A000217(n+9)`
-/

namespace A027783.P12779605890005850938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000217 (n + 9)

end

end A027783.P12779605890005850938

namespace A027783

/-- `∑[A000581(n+8)]*A000217(n+9)` -/
def P12779605890005850938.Spec : Prop :=
  ∀ n, P12779605890005850938.a n = A027783 (n + 8)

end A027783

/-! ## A027783.P2001072292100366352

`(n+1)/(3*3/A027782(n+8))`
-/

namespace A027783.P2001072292100366352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 * (3 / (A027782 (n + 8) : ℚ)))

end

end A027783.P2001072292100366352

namespace A027783

/-- `(n+1)/(3*3/A027782(n+8))` -/
def P2001072292100366352.Spec : Prop :=
  ∀ n, P2001072292100366352.a n = (A027783 (n + 8) : ℚ)

end A027783

/-! ## A027783.P13570267466204437584

`Δ[A000292(n+8)]*A000582(n+9)`
-/

namespace A027783.P13570267466204437584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000582 (n + 9)

end

end A027783.P13570267466204437584

namespace A027783

/-- `Δ[A000292(n+8)]*A000582(n+9)` -/
def P13570267466204437584.Spec : Prop :=
  ∀ n, P13570267466204437584.a n = A027783 (n + 8)

end A027783

/-! ## A027783.P17037713462162395977

`A001287(n)*A008587(A020723(n))`
-/

namespace A027783.P17037713462162395977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) * A008587 (A020723 n).toNat

end

end A027783.P17037713462162395977

namespace A027783

/-- `A001287(n)*A008587(A020723(n))` -/
def P17037713462162395977.Spec : Prop :=
  ∀ n, P17037713462162395977.a n = A027783 (n + 8)

end A027783

/-!
# A027784: a(n) = 11*(n+1)*binomial(n+2,11)/2.

The programs for A027784, the canonical program `A027784.P10159515708482043391` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027784 has offset 9).

The definition of A027784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027784.P10159515708482043391

`C(n+10, 10)*C(n+11, 2)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027784

/-- `C(n+10, 10)*C(n+11, 2)` -/
def P10159515708482043391.Spec : Prop :=
  ∀ n, (P10159515708482043391.a n : ℤ) = A027784 (n + 9)

theorem P10159515708482043391.correct : P10159515708482043391.Spec := by
  intro n
  simp only [A027784, Nat.add_sub_cancel]

end A027784

/-! ## A027784.P15308093599003562471

`11*(n+10)*C(n+11, 11)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027784.P15308093599003562471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * (n + 10) * Nat.choose (n + 11) 11 : ℚ) / 2

end

end A027784.P15308093599003562471

namespace A027784

/-- `11*(n+10)*C(n+11, 11)/2` -/
def P15308093599003562471.Spec : Prop :=
  ∀ n, P15308093599003562471.a n = (A027784 (n + 9) : ℚ)

end A027784

/-! ## A027784.P2005493185872275759

`A027797(n+9)/(n/3+4)`
-/

namespace A027784.P2005493185872275759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027797 (n + 9) : ℚ) / ((n : ℚ) / 3 + 4)

end

end A027784.P2005493185872275759

namespace A027784

/-- `A027797(n+9)/(n/3+4)` -/
def P2005493185872275759.Spec : Prop :=
  ∀ n, P2005493185872275759.a n = (A027784 (n + 9) : ℚ)

end A027784

/-! ## A027784.P1369968411224652222

`A000217(n+10)*A001287(n)`
-/

namespace A027784.P1369968411224652222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 10) * A001287 (n + 10)

end

end A027784.P1369968411224652222

namespace A027784

/-- `A000217(n+10)*A001287(n)` -/
def P1369968411224652222.Spec : Prop :=
  ∀ n, P1369968411224652222.a n = A027784 (n + 9)

end A027784

/-! ## A027784.P18334716522116008526

`∑[A000582(n+9)]*A000217(n+10)`
-/

namespace A027784.P18334716522116008526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000217 (n + 10)

end

end A027784.P18334716522116008526

namespace A027784

/-- `∑[A000582(n+9)]*A000217(n+10)` -/
def P18334716522116008526.Spec : Prop :=
  ∀ n, P18334716522116008526.a n = A027784 (n + 9)

end A027784

/-! ## A027784.P6980434221475040687

`∑[n+5]*A001287(n+1)`
-/

namespace A027784.P6980434221475040687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001287 (n + 1 + 10)

end

end A027784.P6980434221475040687

namespace A027784

/-- `∑[n+5]*A001287(n+1)` -/
def P6980434221475040687.Spec : Prop :=
  ∀ n, P6980434221475040687.a n = A027784 (n + 9)

end A027784

/-! ## A027784.P11805958219094532495

`A001287(n+1)/2*A028569(n+1)`
-/

namespace A027784.P11805958219094532495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001287 (n + 1 + 10) : ℚ) / 2 * (A028569 (n + 1) : ℚ)

end

end A027784.P11805958219094532495

namespace A027784

/-- `A001287(n+1)/2*A028569(n+1)` -/
def P11805958219094532495.Spec : Prop :=
  ∀ n, P11805958219094532495.a n = (A027784 (n + 9) : ℚ)

end A027784

/-!
# A027785: a(n) = 6*(n+1)*binomial(n+2,12).

The programs for A027785, the canonical program `A027785.P10079547547187525894` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027785 has offset 10).

The definition of A027785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(n+11)*C(n+12, 12)` (program `A027785.P10079547547187525894`, by `A027785.P10079547547187525894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027785.P10079547547187525894

`6*(n+11)*C(n+12, 12)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027785

/-- `6*(n+11)*C(n+12, 12)` -/
def P10079547547187525894.Spec : Prop :=
  ∀ n, (P10079547547187525894.a n : ℤ) = A027785 (n + 10)

theorem P10079547547187525894.correct : P10079547547187525894.Spec := by
  intro n
  simp only [A027785, Nat.add_sub_cancel]

end A027785

/-! ## A027785.P14619433608447816588

`6*(A027772(n)-A010965(n))`
-/

namespace A027785.P14619433608447816588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A027772 (n + 11) - A010965 (n + 12))

end

end A027785.P14619433608447816588

namespace A027785

/-- `6*(A027772(n)-A010965(n))` -/
def P14619433608447816588.Spec : Prop :=
  ∀ n, P14619433608447816588.a n = A027785 (n + 10)

end A027785

/-! ## A027785.P1196383157368045120

`∑[A027784(n+9)+A027771(n)]`
-/

namespace A027785.P1196383157368045120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027784 (n + 9) + A027771 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027785.P1196383157368045120

namespace A027785

/-- `∑[A027784(n+9)+A027771(n)]` -/
def P1196383157368045120.Spec : Prop :=
  ∀ n, P1196383157368045120.a n = A027785 (n + 10)

end A027785

/-! ## A027785.P6026520842692040630

`∑[A001287(n)]*A000217(n+11)`
-/

namespace A027785.P6026520842692040630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000217 (n + 11)

end

end A027785.P6026520842692040630

namespace A027785

/-- `∑[A001287(n)]*A000217(n+11)` -/
def P6026520842692040630.Spec : Prop :=
  ∀ n, P6026520842692040630.a n = A027785 (n + 10)

end A027785

/-! ## A027785.P13304160759174080817

`∑[∑[A000582(n+9)]]*A000217(n+11)`
-/

namespace A027785.P13304160759174080817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000217 (n + 11)

end

end A027785.P13304160759174080817

namespace A027785

/-- `∑[∑[A000582(n+9)]]*A000217(n+11)` -/
def P13304160759174080817.Spec : Prop :=
  ∀ n, P13304160759174080817.a n = A027785 (n + 10)

end A027785

/-! ## A027785.P874335210524427943

`3*A004277(n+11)*A010965(n)`
-/

namespace A027785.P874335210524427943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A004277 (n + 11) * A010965 (n + 12))

end

end A027785.P874335210524427943

namespace A027785

/-- `3*A004277(n+11)*A010965(n)` -/
def P874335210524427943.Spec : Prop :=
  ∀ n, P874335210524427943.a n = A027785 (n + 10)

end A027785

/-! ## A027785.P13146313168919820803

`A001288(n)*A161680(n+12)`
-/

namespace A027785.P13146313168919820803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11) * A161680 (n + 12)

end

end A027785.P13146313168919820803

namespace A027785

/-- `A001288(n)*A161680(n+12)` -/
def P13146313168919820803.Spec : Prop :=
  ∀ n, P13146313168919820803.a n = A027785 (n + 10)

end A027785

/-!
# A027786: a(n) = 13*(n+1)*binomial(n+2,13)/2.

The programs for A027786, the canonical program `A027786.P11110091129278564226` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027786 has offset 11).

The definition of A027786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027786.P11110091129278564226

`C(n+12, 12)*C(n+13, 2)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027786

/-- `C(n+12, 12)*C(n+13, 2)` -/
def P11110091129278564226.Spec : Prop :=
  ∀ n, (P11110091129278564226.a n : ℤ) = A027786 (n + 11)

theorem P11110091129278564226.correct : P11110091129278564226.Spec := by
  intro n
  simp only [A027786, Nat.add_sub_cancel]

end A027786

/-! ## A027786.P11057082209532667076

`13*(n+12)*C(n+13, 13)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027786.P11057082209532667076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 * (n + 12) * Nat.choose (n + 13) 13 : ℚ) / 2

end

end A027786.P11057082209532667076

namespace A027786

/-- `13*(n+12)*C(n+13, 13)/2` -/
def P11057082209532667076.Spec : Prop :=
  ∀ n, P11057082209532667076.a n = (A027786 (n + 11) : ℚ)

end A027786

/-! ## A027786.P847427742414525411

`∑[A027785(n)+A027772(n)]`
-/

namespace A027786.P847427742414525411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027785 (n + 10) + A027772 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027786.P847427742414525411

namespace A027786

/-- `∑[A027785(n)+A027772(n)]` -/
def P847427742414525411.Spec : Prop :=
  ∀ n, P847427742414525411.a n = A027786 (n + 11)

end A027786

/-! ## A027786.P5339125136829342577

`∑[A001288(n)]*A000217(n+12)`
-/

namespace A027786.P5339125136829342577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000217 (n + 12)

end

end A027786.P5339125136829342577

namespace A027786

/-- `∑[A001288(n)]*A000217(n+12)` -/
def P5339125136829342577.Spec : Prop :=
  ∀ n, P5339125136829342577.a n = A027786 (n + 11)

end A027786

/-! ## A027786.P2594439526555585103

`∑[n+6]*A010965(n+1)`
-/

namespace A027786.P2594439526555585103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A010965 (n + 1 + 12)

end

end A027786.P2594439526555585103

namespace A027786

/-- `∑[n+6]*A010965(n+1)` -/
def P2594439526555585103.Spec : Prop :=
  ∀ n, P2594439526555585103.a n = A027786 (n + 11)

end A027786

/-! ## A027786.P7023201666676578272

`∑[A020715(n)]*Δ[A010966(n)]`
-/

namespace A027786.P7023201666676578272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010966 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A027786.P7023201666676578272

namespace A027786

/-- `∑[A020715(n)]*Δ[A010966(n)]` -/
def P7023201666676578272.Spec : Prop :=
  ∀ n, P7023201666676578272.a n = A027786 (n + 11)

end A027786

/-! ## A027786.P16280222127042984656

`Δ[A010966(n)]*A056115(n+1)`
-/

namespace A027786.P16280222127042984656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010966 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A056115 (n + 1)

end

end A027786.P16280222127042984656

namespace A027786

/-- `Δ[A010966(n)]*A056115(n+1)` -/
def P16280222127042984656.Spec : Prop :=
  ∀ n, P16280222127042984656.a n = A027786 (n + 11)

end A027786

/-!
# A027787: a(n) = 7*(n+1)*binomial(n+2,14).

The programs for A027787, the canonical program `A027787.P13318388660714870245` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027787 has offset 12).

The definition of A027787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*(n+13)*C(n+14, 14)` (program `A027787.P13318388660714870245`, by `A027787.P13318388660714870245.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027787.P13318388660714870245

`7*(n+13)*C(n+14, 14)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027787

/-- `7*(n+13)*C(n+14, 14)` -/
def P13318388660714870245.Spec : Prop :=
  ∀ n, (P13318388660714870245.a n : ℤ) = A027787 (n + 12)

theorem P13318388660714870245.correct : P13318388660714870245.Spec := by
  intro n
  simp only [A027787, Nat.add_sub_cancel]

end A027787

/-! ## A027787.P6331187292566275208

`∑[A027786(n)+A027773(n)]`
-/

namespace A027787.P6331187292566275208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027786 (n + 11) + A027773 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027787.P6331187292566275208

namespace A027787

/-- `∑[A027786(n)+A027773(n)]` -/
def P6331187292566275208.Spec : Prop :=
  ∀ n, P6331187292566275208.a n = A027787 (n + 12)

end A027787

/-! ## A027787.P11403148412995088768

`7*(A027774(n)-A010967(n))`
-/

namespace A027787.P11403148412995088768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A027774 (n + 13) - A010967 (n + 14))

end

end A027787.P11403148412995088768

namespace A027787

/-- `7*(A027774(n)-A010967(n))` -/
def P11403148412995088768.Spec : Prop :=
  ∀ n, P11403148412995088768.a n = A027787 (n + 12)

end A027787

/-! ## A027787.P14005092781588839311

`A000217(n+13)*A010966(n)`
-/

namespace A027787.P14005092781588839311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 13) * A010966 (n + 13)

end

end A027787.P14005092781588839311

namespace A027787

/-- `A000217(n+13)*A010966(n)` -/
def P14005092781588839311.Spec : Prop :=
  ∀ n, P14005092781588839311.a n = A027787 (n + 12)

end A027787

/-! ## A027787.P14128879300773991072

`Δ[A000292(n+12)]*A010966(n)`
-/

namespace A027787.P14128879300773991072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A010966 (n + 13)

end

end A027787.P14128879300773991072

namespace A027787

/-- `Δ[A000292(n+12)]*A010966(n)` -/
def P14128879300773991072.Spec : Prop :=
  ∀ n, P14128879300773991072.a n = A027787 (n + 12)

end A027787

/-! ## A027787.P13415363644101783336

`∑[A010965(n)]*A161680(n+14)`
-/

namespace A027787.P13415363644101783336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010965 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A161680 (n + 14)

end

end A027787.P13415363644101783336

namespace A027787

/-- `∑[A010965(n)]*A161680(n+14)` -/
def P13415363644101783336.Spec : Prop :=
  ∀ n, P13415363644101783336.a n = A027787 (n + 12)

end A027787

/-!
# A027788: a(n) = 15*(n+1)*binomial(n+2,15)/2.

The programs for A027788, the canonical program `A027788.P3747595490712737529` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027788 has offset 13).

The definition of A027788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027788.P3747595490712737529

`C(n+14, 14)*C(n+15, 2)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027788

/-- `C(n+14, 14)*C(n+15, 2)` -/
def P3747595490712737529.Spec : Prop :=
  ∀ n, (P3747595490712737529.a n : ℤ) = A027788 (n + 13)

theorem P3747595490712737529.correct : P3747595490712737529.Spec := by
  intro n
  simp only [A027788, Nat.add_sub_cancel]

end A027788

/-! ## A027788.P17939560501188947892

`15*(n+14)*C(n+15, 15)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027788.P17939560501188947892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 * (n + 14) * Nat.choose (n + 15) 15 : ℚ) / 2

end

end A027788.P17939560501188947892

namespace A027788

/-- `15*(n+14)*C(n+15, 15)/2` -/
def P17939560501188947892.Spec : Prop :=
  ∀ n, P17939560501188947892.a n = (A027788 (n + 13) : ℚ)

end A027788

/-! ## A027788.P17701244794704653651

`∑[A027787(n)+A027774(n)]`
-/

namespace A027788.P17701244794704653651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027787 (n + 12) + A027774 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027788.P17701244794704653651

namespace A027788

/-- `∑[A027787(n)+A027774(n)]` -/
def P17701244794704653651.Spec : Prop :=
  ∀ n, P17701244794704653651.a n = A027788 (n + 13)

end A027788

/-! ## A027788.P4910989287535316981

`A000217(n+14)*A010967(n)`
-/

namespace A027788.P4910989287535316981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 14) * A010967 (n + 14)

end

end A027788.P4910989287535316981

namespace A027788

/-- `A000217(n+14)*A010967(n)` -/
def P4910989287535316981.Spec : Prop :=
  ∀ n, P4910989287535316981.a n = A027788 (n + 13)

end A027788

/-! ## A027788.P15772946428069323532

`∑[A010966(n)]*A000217(n+14)`
-/

namespace A027788.P15772946428069323532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010966 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000217 (n + 14)

end

end A027788.P15772946428069323532

namespace A027788

/-- `∑[A010966(n)]*A000217(n+14)` -/
def P15772946428069323532.Spec : Prop :=
  ∀ n, P15772946428069323532.a n = A027788 (n + 13)

end A027788

/-! ## A027788.P5086145393284465817

`∑[n+7]*A010967(n+1)`
-/

namespace A027788.P5086145393284465817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A010967 (n + 1 + 14)

end

end A027788.P5086145393284465817

namespace A027788

/-- `∑[n+7]*A010967(n+1)` -/
def P5086145393284465817.Spec : Prop :=
  ∀ n, P5086145393284465817.a n = A027788 (n + 13)

end A027788

/-!
# A027789: a(n) = 2*(n+1)*binomial(n+3,4).

The programs for A027789, the canonical program `A027789.P11069753155162701175` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027789 has offset 1).

The definition of A027789 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+2)*C(n+4, 4)` (program `A027789.P11069753155162701175`, by `A027789.P11069753155162701175.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027789.P11069753155162701175

`2*(n+2)*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027789

/-- `2*(n+2)*C(n+4, 4)` -/
def P11069753155162701175.Spec : Prop :=
  ∀ n, (P11069753155162701175.a n : ℤ) = A027789 (n + 1)

theorem P11069753155162701175.correct : P11069753155162701175.Spec := by
  intro n
  simp only [A027789, Nat.add_sub_cancel]

end A027789

/-! ## A027789.P9367392528609115569

`(n+1)*(1+n+1)²*(2+n+1)*(3+n+1)/12`
-/

namespace A027789.P9367392528609115569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (1 + (n + 1)) ^ 2 * (2 + (n + 1)) * (3 + (n + 1)) : ℚ) / 12

end

end A027789.P9367392528609115569

namespace A027789

/-- `(n+1)*(1+n+1)²*(2+n+1)*(3+n+1)/12` -/
def P9367392528609115569.Spec : Prop :=
  ∀ n, P9367392528609115569.a n = (A027789 (n + 1) : ℚ)

end A027789

/-! ## A027789.P4505283139998274207

`2*A006470(n+1)`
-/

namespace A027789.P4505283139998274207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006470 (n + 1)

end

end A027789.P4505283139998274207

namespace A027789

/-- `2*A006470(n+1)` -/
def P4505283139998274207.Spec : Prop :=
  ∀ n, P4505283139998274207.a n = A027789 (n + 1)

end A027789

/-! ## A027789.P5511702822218419004

`C(n+4, 3)*∑[n+1]`
-/

namespace A027789.P5511702822218419004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027789.P5511702822218419004

namespace A027789

/-- `C(n+4, 3)*∑[n+1]` -/
def P5511702822218419004.Spec : Prop :=
  ∀ n, (P5511702822218419004.a n : ℤ) = A027789 (n + 1)

end A027789

/-! ## A027789.P16533909080223134124

`∑[∑[∑[∑[a(n-1)+10]]]]` with `a(0)=4`
-/

namespace A027789.P16533909080223134124
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f4 =>
  f4 (n - 1) + 10

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027789.P16533909080223134124

namespace A027789

/-- `∑[∑[∑[∑[a(n-1)+10]]]]` -/
def P16533909080223134124.Spec : Prop :=
  ∀ n, (P16533909080223134124.a n : ℤ) = A027789 (n + 1)

end A027789

/-! ## A027789.P7638120217662121787

`lcm(2, (n+2)*∑[∑[(n+1)*(n+2)]])`
-/

namespace A027789.P7638120217662121787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A027789.P7638120217662121787

namespace A027789

/-- `lcm(2, (n+2)*∑[∑[(n+1)*(n+2)]])` -/
def P7638120217662121787.Spec : Prop :=
  ∀ n, (P7638120217662121787.a n : ℤ) = A027789 (n + 1)

end A027789

/-! ## A027789.P9454865480423170686

`A027800(n)+A006411(n+1)`
-/

namespace A027789.P9454865480423170686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n + A006411 (n + 1)

end

end A027789.P9454865480423170686

namespace A027789

/-- `A027800(n)+A006411(n+1)` -/
def P9454865480423170686.Spec : Prop :=
  ∀ n, P9454865480423170686.a n = A027789 (n + 1)

end A027789

/-! ## A027789.P3632470726437037760

`A051879(n)+A000574(n+3)`
-/

namespace A027789.P3632470726437037760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051879 n + A000574 (n + 3)

end

end A027789.P3632470726437037760

namespace A027789

/-- `A051879(n)+A000574(n+3)` -/
def P3632470726437037760.Spec : Prop :=
  ∀ n, P3632470726437037760.a n = A027789 (n + 1)

end A027789

/-! ## A027789.P7901795123204179293

`A174002(n)+A027764(n+3)`
-/

namespace A027789.P7901795123204179293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 n + A027764 (n + 3)

end

end A027789.P7901795123204179293

namespace A027789

/-- `A174002(n)+A027764(n+3)` -/
def P7901795123204179293.Spec : Prop :=
  ∀ n, P7901795123204179293.a n = A027789 (n + 1)

end A027789

/-! ## A027789.P6514431619575146138

`2*(A253945(n+4)-A095668(n))`
-/

namespace A027789.P6514431619575146138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A253945 (n + 4) - A095668 n)

end

end A027789.P6514431619575146138

namespace A027789

/-- `2*(A253945(n+4)-A095668(n))` -/
def P6514431619575146138.Spec : Prop :=
  ∀ n, P6514431619575146138.a n = A027789 (n + 1)

end A027789

/-! ## A027789.P5407251896183832169

`2*(A027777(n+2)-A027764(n+3))`
-/

namespace A027789.P5407251896183832169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A027777 (n + 2) - A027764 (n + 3))

end

end A027789.P5407251896183832169

namespace A027789

/-- `2*(A027777(n+2)-A027764(n+3))` -/
def P5407251896183832169.Spec : Prop :=
  ∀ n, P5407251896183832169.a n = A027789 (n + 1)

end A027789

/-! ## A027789.P8247595928683417250

`A000217(n+1)+A000217(n+1)*A062748(n)`
-/

namespace A027789.P8247595928683417250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000217 (n + 1) * A062748 n

end

end A027789.P8247595928683417250

namespace A027789

/-- `A000217(n+1)+A000217(n+1)*A062748(n)` -/
def P8247595928683417250.Spec : Prop :=
  ∀ n, P8247595928683417250.a n = A027789 (n + 1)

end A027789

/-! ## A027789.P10184445074940163258

`(A008778(n+1)-A000217(n+1))*A000217(n+1)`
-/

namespace A027789.P10184445074940163258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008778 (n + 1) - A000217 (n + 1)) * A000217 (n + 1)

end

end A027789.P10184445074940163258

namespace A027789

/-- `(A008778(n+1)-A000217(n+1))*A000217(n+1)` -/
def P10184445074940163258.Spec : Prop :=
  ∀ n, P10184445074940163258.a n = A027789 (n + 1)

end A027789

/-! ## A027789.P5178001372252234583

`∑[∑[A174814(n+1)]]`
-/

namespace A027789.P5178001372252234583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174814 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027789.P5178001372252234583

namespace A027789

/-- `∑[∑[A174814(n+1)]]` -/
def P5178001372252234583.Spec : Prop :=
  ∀ n, P5178001372252234583.a n = A027789 (n + 1)

end A027789

/-! ## A027789.P17906947003205684415

`(n+2)*Δ[A277935(n+1)]`
-/

namespace A027789.P17906947003205684415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A027789.P17906947003205684415

namespace A027789

/-- `(n+2)*Δ[A277935(n+1)]` -/
def P17906947003205684415.Spec : Prop :=
  ∀ n, P17906947003205684415.a n = A027789 (n + 1)

end A027789

/-! ## A027789.P12060318170237993273

`A006011(n+2)+A004302(n+1)`
-/

namespace A027789.P12060318170237993273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 (n + 2) + A004302 (n + 1)

end

end A027789.P12060318170237993273

namespace A027789

/-- `A006011(n+2)+A004302(n+1)` -/
def P12060318170237993273.Spec : Prop :=
  ∀ n, P12060318170237993273.a n = A027789 (n + 1)

end A027789

/-! ## A027789.P18411168152220384252

`A051880(n+1)-A051740(n+1)`
-/

namespace A027789.P18411168152220384252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051880 (n + 1) - A051740 (n + 1)

end

end A027789.P18411168152220384252

namespace A027789

/-- `A051880(n+1)-A051740(n+1)` -/
def P18411168152220384252.Spec : Prop :=
  ∀ n, P18411168152220384252.a n = A027789 (n + 1)

end A027789

/-! ## A027789.P2411332026877746678

`A266732(n+1)-A033487(n+1)`
-/

namespace A027789.P2411332026877746678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266732 (n + 1) - A033487 (n + 1)

end

end A027789.P2411332026877746678

namespace A027789

/-- `A266732(n+1)-A033487(n+1)` -/
def P2411332026877746678.Spec : Prop :=
  ∀ n, P2411332026877746678.a n = A027789 (n + 1)

end A027789

/-! ## A027789.P7857480180336771996

`A000217(n+1)*A000292(n+2)`
-/

namespace A027789.P7857480180336771996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A000292 (n + 2)

end

end A027789.P7857480180336771996

namespace A027789

/-- `A000217(n+1)*A000292(n+2)` -/
def P7857480180336771996.Spec : Prop :=
  ∀ n, P7857480180336771996.a n = A027789 (n + 1)

end A027789

/-! ## A027789.P15861778012845398775

`A033488(n+1)+2*A174002(n)`
-/

namespace A027789.P15861778012845398775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033488 (n + 1) + 2 * A174002 n

end

end A027789.P15861778012845398775

namespace A027789

/-- `A033488(n+1)+2*A174002(n)` -/
def P15861778012845398775.Spec : Prop :=
  ∀ n, P15861778012845398775.a n = A027789 (n + 1)

end A027789

/-!
# A027790: a(n) = 10*(n+1)*binomial(n+3,5)/3.

The programs for A027790, the canonical program `A027790.P17555155137142438999` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027790 has offset 2).

The definition of A027790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027790.P5299753368820018568

`C(n+3, 3)*C(n+5, 3)`
-/

namespace A027790.P5299753368820018568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 * Nat.choose (n + 5) 3

end

end A027790.P5299753368820018568

namespace A027790

/-- `C(n+3, 3)*C(n+5, 3)` -/
def P5299753368820018568.Spec : Prop :=
  ∀ n, (P5299753368820018568.a n : ℤ) = A027790 (n + 2)

end A027790

/-! ## A027790.P15014112891343255123

`10*(n+3)*C(n+5, 5)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027790.P15014112891343255123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * (n + 3) * Nat.choose (n + 5) 5 : ℚ) / 3

end

end A027790.P15014112891343255123

namespace A027790

/-- `10*(n+3)*C(n+5, 5)/3` -/
def P15014112891343255123.Spec : Prop :=
  ∀ n, P15014112891343255123.a n = (A027790 (n + 2) : ℚ)

end A027790

/-! ## A027790.P17555155137142438999

`10*A040977(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027790

/-- `10*A040977(n)` -/
def P17555155137142438999.Spec : Prop :=
  ∀ n, P17555155137142438999.a n = A027790 (n + 2)

theorem P17555155137142438999.correct : P17555155137142438999.Spec := by
  intro n
  simp only [A027790, Nat.add_sub_cancel]

end A027790

/-! ## A027790.P16993094002195459945

`A000292(n+1)*A000292(n+3)`
-/

namespace A027790.P16993094002195459945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A000292 (n + 3)

end

end A027790.P16993094002195459945

namespace A027790

/-- `A000292(n+1)*A000292(n+3)` -/
def P16993094002195459945.Spec : Prop :=
  ∀ n, P16993094002195459945.a n = A027790 (n + 2)

end A027790

/-! ## A027790.P17307856662942025119

`∑[∑[∑[∑[10*(n+1)²]]]]`
-/

namespace A027790.P17307856662942025119
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027790.P17307856662942025119

namespace A027790

/-- `∑[∑[∑[∑[10*(n+1)²]]]]` -/
def P17307856662942025119.Spec : Prop :=
  ∀ n, (P17307856662942025119.a n : ℤ) = A027790 (n + 2)

end A027790

/-! ## A027790.P3141783073554981166

`10*∑[A005585(n+1)]`
-/

namespace A027790.P3141783073554981166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027790.P3141783073554981166

namespace A027790

/-- `10*∑[A005585(n+1)]` -/
def P3141783073554981166.Spec : Prop :=
  ∀ n, P3141783073554981166.a n = A027790 (n + 2)

end A027790

/-! ## A027790.P3385370848040999115

`(n+1)/3*A027789(n+2)`
-/

namespace A027790.P3385370848040999115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A027789 (n + 2) : ℚ)

end

end A027790.P3385370848040999115

namespace A027790

/-- `(n+1)/3*A027789(n+2)` -/
def P3385370848040999115.Spec : Prop :=
  ∀ n, P3385370848040999115.a n = (A027790 (n + 2) : ℚ)

end A027790

/-! ## A027790.P4098633019862891880

`(n+3)/3*A266732(n+1)`
-/

namespace A027790.P4098633019862891880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 3 * (A266732 (n + 1) : ℚ)

end

end A027790.P4098633019862891880

namespace A027790

/-- `(n+3)/3*A266732(n+1)` -/
def P4098633019862891880.Spec : Prop :=
  ∀ n, P4098633019862891880.a n = (A027790 (n + 2) : ℚ)

end A027790

/-! ## A027790.P3413497326371820243

`A050406(n+1)+A050406(n)-A005585(n+2)`
-/

namespace A027790.P3413497326371820243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050406 (n + 1) + (A050406 n - A005585 (n + 2))

end

end A027790.P3413497326371820243

namespace A027790

/-- `A050406(n+1)+A050406(n)-A005585(n+2)` -/
def P3413497326371820243.Spec : Prop :=
  ∀ n, P3413497326371820243.a n = A027790 (n + 2)

end A027790

/-! ## A027790.P11238230819032722173

`A006542(n+5)/A006542(n+4)*A001249(n)`
-/

namespace A027790.P11238230819032722173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006542 (n + 5) : ℚ) / (A006542 (n + 4) : ℚ) * (A001249 n : ℚ)

end

end A027790.P11238230819032722173

namespace A027790

/-- `A006542(n+5)/A006542(n+4)*A001249(n)` -/
def P11238230819032722173.Spec : Prop :=
  ∀ n, P11238230819032722173.a n = (A027790 (n + 2) : ℚ)

end A027790

/-! ## A027790.P13348372526781730485

`A001249(n+1)+A005585(n+1)-A005585(n+2)`
-/

namespace A027790.P13348372526781730485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 (n + 1) + (A005585 (n + 1) - A005585 (n + 2))

end

end A027790.P13348372526781730485

namespace A027790

/-- `A001249(n+1)+A005585(n+1)-A005585(n+2)` -/
def P13348372526781730485.Spec : Prop :=
  ∀ n, P13348372526781730485.a n = A027790 (n + 2)

end A027790

/-! ## A027790.P14983311708924156221

`2*(A299337(2*n)+A060099(2*n+1))`
-/

namespace A027790.P14983311708924156221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A299337 (2 * n) + A060099 (2 * n + 1))

end

end A027790.P14983311708924156221

namespace A027790

/-- `2*(A299337(2*n)+A060099(2*n+1))` -/
def P14983311708924156221.Spec : Prop :=
  ∀ n, P14983311708924156221.a n = A027790 (n + 2)

end A027790

/-! ## A027790.P14632532526888319597

`A008804(2*n)*A008804(A103517(n+1))`
-/

namespace A027790.P14632532526888319597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (2 * n) * A008804 (A103517 (n + 1)).toNat

end

end A027790.P14632532526888319597

namespace A027790

/-- `A008804(2*n)*A008804(A103517(n+1))` -/
def P14632532526888319597.Spec : Prop :=
  ∀ n, P14632532526888319597.a n = A027790 (n + 2)

end A027790

/-! ## A027790.P10448411928056625630

`2*(A001303(n+1)-A006542(n+4))`
-/

namespace A027790.P10448411928056625630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001303 (n + 1) - A006542 (n + 4))

end

end A027790.P10448411928056625630

namespace A027790

/-- `2*(A001303(n+1)-A006542(n+4))` -/
def P10448411928056625630.Spec : Prop :=
  ∀ n, P10448411928056625630.a n = A027790 (n + 2)

end A027790

/-! ## A027790.P11875709939565973127

`A124051(∑[n+3])`
-/

namespace A027790.P11875709939565973127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124051 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027790.P11875709939565973127

namespace A027790

/-- `A124051(∑[n+3])` -/
def P11875709939565973127.Spec : Prop :=
  ∀ n, P11875709939565973127.a n = A027790 (n + 2)

end A027790

/-! ## A027790.P11924837943111987075

`A062196(A167614(n+2))`
-/

namespace A027790.P11924837943111987075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062196 (A167614 (n + 2)).toNat

end

end A027790.P11924837943111987075

namespace A027790

/-- `A062196(A167614(n+2))` -/
def P11924837943111987075.Spec : Prop :=
  ∀ n, P11924837943111987075.a n = A027790 (n + 2)

end A027790

/-!
# A027791: a(n) = 5*(n+1)*binomial(n+3,6).

The programs for A027791, the canonical program `A027791.P14479561353345729953` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027791 has offset 3).

The definition of A027791 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(n+4)*C(n+6, 6)` (program `A027791.P14479561353345729953`, by `A027791.P14479561353345729953.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027791.P14479561353345729953

`5*(n+4)*C(n+6, 6)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027791

/-- `5*(n+4)*C(n+6, 6)` -/
def P14479561353345729953.Spec : Prop :=
  ∀ n, (P14479561353345729953.a n : ℤ) = A027791 (n + 3)

theorem P14479561353345729953.correct : P14479561353345729953.Spec := by
  intro n
  simp only [A027791, Nat.add_sub_cancel]

end A027791

/-! ## A027791.P18002088596776458373

`(n+4)*∑[∑[A154286(n)]]`
-/

namespace A027791.P18002088596776458373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154286 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027791.P18002088596776458373

namespace A027791

/-- `(n+4)*∑[∑[A154286(n)]]` -/
def P18002088596776458373.Spec : Prop :=
  ∀ n, P18002088596776458373.a n = A027791 (n + 3)

end A027791

/-! ## A027791.P4029973084421770347

`A027803(n+3)-A107395(n)`
-/

namespace A027791.P4029973084421770347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027803 (n + 3) - A107395 n

end

end A027791.P4029973084421770347

namespace A027791

/-- `A027803(n+3)-A107395(n)` -/
def P4029973084421770347.Spec : Prop :=
  ∀ n, P4029973084421770347.a n = A027791 (n + 3)

end A027791

/-! ## A027791.P17590621426212082062

`A027780(n+5)-A105249(n)`
-/

namespace A027791.P17590621426212082062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027780 (n + 5) - A105249 n

end

end A027791.P17590621426212082062

namespace A027791

/-- `A027780(n+5)-A105249(n)` -/
def P17590621426212082062.Spec : Prop :=
  ∀ n, P17590621426212082062.a n = A027791 (n + 3)

end A027791

/-! ## A027791.P10105339187378465971

`5*(n+1)/2*A040977(n+1)`
-/

namespace A027791.P10105339187378465971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((n + 1 : ℚ) / 2 * (A040977 (n + 1) : ℚ))

end

end A027791.P10105339187378465971

namespace A027791

/-- `5*(n+1)/2*A040977(n+1)` -/
def P10105339187378465971.Spec : Prop :=
  ∀ n, P10105339187378465971.a n = (A027791 (n + 3) : ℚ)

end A027791

/-! ## A027791.P16146118701651822222

`∑[A000292(n+1)]*A000292(n+4)`
-/

namespace A027791.P16146118701651822222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000292 (n + 4)

end

end A027791.P16146118701651822222

namespace A027791

/-- `∑[A000292(n+1)]*A000292(n+4)` -/
def P16146118701651822222.Spec : Prop :=
  ∀ n, P16146118701651822222.a n = A027791 (n + 3)

end A027791

/-! ## A027791.P673982104482850970

`A000292(n+4)*A000332(n+4)`
-/

namespace A027791.P673982104482850970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 4) * A000332 (n + 4)

end

end A027791.P673982104482850970

namespace A027791

/-- `A000292(n+4)*A000332(n+4)` -/
def P673982104482850970.Spec : Prop :=
  ∀ n, P673982104482850970.a n = A027791 (n + 3)

end A027791

/-! ## A027791.P2648893094182037720

`(n+4)*A000910(n+6)`
-/

namespace A027791.P2648893094182037720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A000910 (n + 6)

end

end A027791.P2648893094182037720

namespace A027791

/-- `(n+4)*A000910(n+6)` -/
def P2648893094182037720.Spec : Prop :=
  ∀ n, P2648893094182037720.a n = A027791 (n + 3)

end A027791

/-! ## A027791.P5856547289585167649

`A000579(n+6)*A008706(n+4)`
-/

namespace A027791.P5856547289585167649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) * A008706 (n + 4)

end

end A027791.P5856547289585167649

namespace A027791

/-- `A000579(n+6)*A008706(n+4)` -/
def P5856547289585167649.Spec : Prop :=
  ∀ n, P5856547289585167649.a n = A027791 (n + 3)

end A027791

/-! ## A027791.P6765038933628350411

`Δ[A000332(n+6)]*A000332(n+4)`
-/

namespace A027791.P6765038933628350411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000332 (n + 4)

end

end A027791.P6765038933628350411

namespace A027791

/-- `Δ[A000332(n+6)]*A000332(n+4)` -/
def P6765038933628350411.Spec : Prop :=
  ∀ n, P6765038933628350411.a n = A027791 (n + 3)

end A027791

/-! ## A027791.P10271396287381008916

`(A000332(n+7)-A000332(n+6))*A000332(n+4)`
-/

namespace A027791.P10271396287381008916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000332 (n + 7) - A000332 (n + 6)) * A000332 (n + 4)

end

end A027791.P10271396287381008916

namespace A027791

/-- `(A000332(n+7)-A000332(n+6))*A000332(n+4)` -/
def P10271396287381008916.Spec : Prop :=
  ∀ n, P10271396287381008916.a n = A027791 (n + 3)

end A027791

/-! ## A027791.P13413593858751840067

`A000292(n+4)*A178821(A000217(n))`
-/

namespace A027791.P13413593858751840067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 4) * A178821 (A000217 n).toNat

end

end A027791.P13413593858751840067

namespace A027791

/-- `A000292(n+4)*A178821(A000217(n))` -/
def P13413593858751840067.Spec : Prop :=
  ∀ n, P13413593858751840067.a n = A027791 (n + 3)

end A027791

/-!
# A027792: a(n) = 7*(n+1)*binomial(n+3,7).

The programs for A027792, the canonical program `A027792.P9371273319426810111` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027792 has offset 4).

The definition of A027792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*(n+5)*C(n+7, 7)` (program `A027792.P9371273319426810111`, by `A027792.P9371273319426810111.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027792.P9371273319426810111

`7*(n+5)*C(n+7, 7)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027792

/-- `7*(n+5)*C(n+7, 7)` -/
def P9371273319426810111.Spec : Prop :=
  ∀ n, (P9371273319426810111.a n : ℤ) = A027792 (n + 4)

theorem P9371273319426810111.correct : P9371273319426810111.Spec := by
  intro n
  simp only [A027792, Nat.add_sub_cancel]

end A027792

/-! ## A027792.P15111881355088651235

`(n+1)*Δ[A112460(n+4)]`
-/

namespace A027792.P15111881355088651235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112460 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A027792.P15111881355088651235

namespace A027792

/-- `(n+1)*Δ[A112460(n+4)]` -/
def P15111881355088651235.Spec : Prop :=
  ∀ n, P15111881355088651235.a n = A027792 (n + 4)

end A027792

/-! ## A027792.P2416608377234570647

`A266732(n+1)/A033487(n+1)*A266733(n+1)`
-/

namespace A027792.P2416608377234570647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266732 (n + 1) : ℚ) / (A033487 (n + 1) : ℚ) * (A266733 (n + 1) : ℚ)

end

end A027792.P2416608377234570647

namespace A027792

/-- `A266732(n+1)/A033487(n+1)*A266733(n+1)` -/
def P2416608377234570647.Spec : Prop :=
  ∀ n, P2416608377234570647.a n = (A027792 (n + 4) : ℚ)

end A027792

/-! ## A027792.P4391708122800864197

`∑[n+1]*A040977(n+2)`
-/

namespace A027792.P4391708122800864197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A040977 (n + 2)

end

end A027792.P4391708122800864197

namespace A027792

/-- `∑[n+1]*A040977(n+2)` -/
def P4391708122800864197.Spec : Prop :=
  ∀ n, P4391708122800864197.a n = A027792 (n + 4)

end A027792

/-! ## A027792.P3186906092519576797

`A040977(n+2)*A347056(A000217(n))`
-/

namespace A027792.P3186906092519576797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 (n + 2) * A347056 (A000217 n).toNat

end

end A027792.P3186906092519576797

namespace A027792

/-- `A040977(n+2)*A347056(A000217(n))` -/
def P3186906092519576797.Spec : Prop :=
  ∀ n, P3186906092519576797.a n = A027792 (n + 4)

end A027792

/-!
# A027793: a(n) = 28*(n+1)*binomial(n+3,8)/3.

The programs for A027793, the canonical program `A027793.P10179381956723308081` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027793 has offset 5).

The definition of A027793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027793.P10179381956723308081

`C(n+6, 6)*C(n+8, 3)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027793

/-- `C(n+6, 6)*C(n+8, 3)` -/
def P10179381956723308081.Spec : Prop :=
  ∀ n, (P10179381956723308081.a n : ℤ) = A027793 (n + 5)

theorem P10179381956723308081.correct : P10179381956723308081.Spec := by
  intro n
  simp only [A027793, Nat.add_sub_cancel]

end A027793

/-! ## A027793.P143350540358219771

`28*(n+6)*C(n+8, 8)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027793.P143350540358219771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (28 * (n + 6) * Nat.choose (n + 8) 8 : ℚ) / 3

end

end A027793.P143350540358219771

namespace A027793

/-- `28*(n+6)*C(n+8, 8)/3` -/
def P143350540358219771.Spec : Prop :=
  ∀ n, P143350540358219771.a n = (A027793 (n + 5) : ℚ)

end A027793

/-! ## A027793.P1317553103252223054

`∑[A027792(n+4)+A027780(n+5)]`
-/

namespace A027793.P1317553103252223054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027792 (n + 4) + A027780 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027793.P1317553103252223054

namespace A027793

/-- `∑[A027792(n+4)+A027780(n+5)]` -/
def P1317553103252223054.Spec : Prop :=
  ∀ n, P1317553103252223054.a n = A027793 (n + 5)

end A027793

/-! ## A027793.P3473608065035766674

`2*(A027813(n+3)-A027820(n+2))`
-/

namespace A027793.P3473608065035766674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A027813 (n + 3) - A027820 (n + 2))

end

end A027793.P3473608065035766674

namespace A027793

/-- `2*(A027813(n+3)-A027820(n+2))` -/
def P3473608065035766674.Spec : Prop :=
  ∀ n, P3473608065035766674.a n = A027793 (n + 5)

end A027793

/-! ## A027793.P16477151302641307969

`∑[∑[n+2]]*Δ[A166812(n+1)]`
-/

namespace A027793.P16477151302641307969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f3 (n + 1) - f3 n)

end

end A027793.P16477151302641307969

namespace A027793

/-- `∑[∑[n+2]]*Δ[A166812(n+1)]` -/
def P16477151302641307969.Spec : Prop :=
  ∀ n, P16477151302641307969.a n = A027793 (n + 5)

end A027793

/-! ## A027793.P16179051409210221500

`C(n+8, 6)*A005581(n+2)`
-/

namespace A027793.P16179051409210221500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 6 : ℤ) * A005581 (n + 2)

end

end A027793.P16179051409210221500

namespace A027793

/-- `C(n+8, 6)*A005581(n+2)` -/
def P16179051409210221500.Spec : Prop :=
  ∀ n, P16179051409210221500.a n = A027793 (n + 5)

end A027793

/-! ## A027793.P4984251566224390324

`∑[∑[n+2]]*Δ[A000580(n+8)]`
-/

namespace A027793.P4984251566224390324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f3 (n + 1) - f3 n)

end

end A027793.P4984251566224390324

namespace A027793

/-- `∑[∑[n+2]]*Δ[A000580(n+8)]` -/
def P4984251566224390324.Spec : Prop :=
  ∀ n, P4984251566224390324.a n = A027793 (n + 5)

end A027793

/-! ## A027793.P5334632285218881518

`A000292(A020715(n))*A000579(A020715(n))`
-/

namespace A027793.P5334632285218881518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A020715 n).toNat * A000579 (A020715 n).toNat

end

end A027793.P5334632285218881518

namespace A027793

/-- `A000292(A020715(n))*A000579(A020715(n))` -/
def P5334632285218881518.Spec : Prop :=
  ∀ n, P5334632285218881518.a n = A027793 (n + 5)

end A027793

/-! ## A027793.P240840746316466230

`A000292(n+6)*A299338(2*n)`
-/

namespace A027793.P240840746316466230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 6) * A299338 (2 * n)

end

end A027793.P240840746316466230

namespace A027793

/-- `A000292(n+6)*A299338(2*n)` -/
def P240840746316466230.Spec : Prop :=
  ∀ n, P240840746316466230.a n = A027793 (n + 5)

end A027793

/-! ## A027793.P15795033014932463819

`A007318(A046691(n+7))*A299338(A005843(n))`
-/

namespace A027793.P15795033014932463819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A046691 (n + 7)).toNat * A299338 (A005843 n).toNat

end

end A027793.P15795033014932463819

namespace A027793

/-- `A007318(A046691(n+7))*A299338(A005843(n))` -/
def P15795033014932463819.Spec : Prop :=
  ∀ n, P15795033014932463819.a n = A027793 (n + 5)

end A027793

/-!
# A027794: a(n) = 12*(n+1)*binomial(n+3,9).

The programs for A027794, the canonical program `A027794.P5991333273233772910` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027794 has offset 6).

The definition of A027794 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*(n+7)*C(n+9, 9)` (program `A027794.P5991333273233772910`, by `A027794.P5991333273233772910.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027794.P5991333273233772910

`12*(n+7)*C(n+9, 9)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027794

/-- `12*(n+7)*C(n+9, 9)` -/
def P5991333273233772910.Spec : Prop :=
  ∀ n, (P5991333273233772910.a n : ℤ) = A027794 (n + 6)

theorem P5991333273233772910.correct : P5991333273233772910.Spec := by
  intro n
  simp only [A027794, Nat.add_sub_cancel]

end A027794

/-! ## A027794.P1679757031313913300

`∑[A027793(n+5)+A027781(n+6)]`
-/

namespace A027794.P1679757031313913300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027793 (n + 5) + A027781 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027794.P1679757031313913300

namespace A027794

/-- `∑[A027793(n+5)+A027781(n+6)]` -/
def P1679757031313913300.Spec : Prop :=
  ∀ n, P1679757031313913300.a n = A027794 (n + 6)

end A027794

/-! ## A027794.P13714816813160117497

`A000292(n+7)*A000580(n+7)`
-/

namespace A027794.P13714816813160117497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 7) * A000580 (n + 7)

end

end A027794.P13714816813160117497

namespace A027794

/-- `A000292(n+7)*A000580(n+7)` -/
def P13714816813160117497.Spec : Prop :=
  ∀ n, P13714816813160117497.a n = A027794 (n + 6)

end A027794

/-! ## A027794.P15045253515722046549

`∑[A000579(n+6)]*A000292(n+7)`
-/

namespace A027794.P15045253515722046549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000292 (n + 7)

end

end A027794.P15045253515722046549

namespace A027794

/-- `∑[A000579(n+6)]*A000292(n+7)` -/
def P15045253515722046549.Spec : Prop :=
  ∀ n, P15045253515722046549.a n = A027794 (n + 6)

end A027794

/-! ## A027794.P751180372138891914

`∑[∑[A000389(n+5)]]*A000292(n+7)`
-/

namespace A027794.P751180372138891914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000292 (n + 7)

end

end A027794.P751180372138891914

namespace A027794

/-- `∑[∑[A000389(n+5)]]*A000292(n+7)` -/
def P751180372138891914.Spec : Prop :=
  ∀ n, P751180372138891914.a n = A027794 (n + 6)

end A027794

/-! ## A027794.P10339297144588732332

`Δ[A000332(n+9)]*A000580(n+7)`
-/

namespace A027794.P10339297144588732332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000580 (n + 7)

end

end A027794.P10339297144588732332

namespace A027794

/-- `Δ[A000332(n+9)]*A000580(n+7)` -/
def P10339297144588732332.Spec : Prop :=
  ∀ n, P10339297144588732332.a n = A027794 (n + 6)

end A027794

/-! ## A027794.P6535724624379594402

`A007318(A155212(n+4))*A000292(n+7)`
-/

namespace A027794.P6535724624379594402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A155212 (n + 4)).toNat * A000292 (n + 7)

end

end A027794.P6535724624379594402

namespace A027794

/-- `A007318(A155212(n+4))*A000292(n+7)` -/
def P6535724624379594402.Spec : Prop :=
  ∀ n, P6535724624379594402.a n = A027794 (n + 6)

end A027794

/-! ## A027794.P391666976615401014

`A000580(n+7)*A178820(A000217(n+6))`
-/

namespace A027794.P391666976615401014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A178820 (A000217 (n + 6)).toNat

end

end A027794.P391666976615401014

namespace A027794

/-- `A000580(n+7)*A178820(A000217(n+6))` -/
def P391666976615401014.Spec : Prop :=
  ∀ n, P391666976615401014.a n = A027794 (n + 6)

end A027794

/-! ## A027794.P10018387655013019149

`A007318(A167614(n+8))*A000580(n+7)`
-/

namespace A027794.P10018387655013019149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A167614 (n + 8)).toNat * A000580 (n + 7)

end

end A027794.P10018387655013019149

namespace A027794

/-- `A007318(A167614(n+8))*A000580(n+7)` -/
def P10018387655013019149.Spec : Prop :=
  ∀ n, P10018387655013019149.a n = A027794 (n + 6)

end A027794

/-!
# A027795: a(n) = 15*(n+1)*binomial(n+3,10).

The programs for A027795, the canonical program `A027795.P2838657081971325612` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027795 has offset 7).

The definition of A027795 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*(n+8)*C(n+10, 10)` (program `A027795.P2838657081971325612`, by `A027795.P2838657081971325612.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027795.P2838657081971325612

`15*(n+8)*C(n+10, 10)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027795

/-- `15*(n+8)*C(n+10, 10)` -/
def P2838657081971325612.Spec : Prop :=
  ∀ n, (P2838657081971325612.a n : ℤ) = A027795 (n + 7)

theorem P2838657081971325612.correct : P2838657081971325612.Spec := by
  intro n
  simp only [A027795, Nat.add_sub_cancel]

end A027795

/-! ## A027795.P7308355438161182074

`((n+1)/3+3)*A027782(n+7)`
-/

namespace A027795.P7308355438161182074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / 3 + 3) * (A027782 (n + 7) : ℚ)

end

end A027795.P7308355438161182074

namespace A027795

/-- `((n+1)/3+3)*A027782(n+7)` -/
def P7308355438161182074.Spec : Prop :=
  ∀ n, P7308355438161182074.a n = (A027795 (n + 7) : ℚ)

end A027795

/-! ## A027795.P7272379303132232461

`(n+1)/8*A027794(n+7)`
-/

namespace A027795.P7272379303132232461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 8 * (A027794 (n + 7) : ℚ)

end

end A027795.P7272379303132232461

namespace A027795

/-- `(n+1)/8*A027794(n+7)` -/
def P7272379303132232461.Spec : Prop :=
  ∀ n, P7272379303132232461.a n = (A027795 (n + 7) : ℚ)

end A027795

/-! ## A027795.P10413070820408567623

`A000292(n+8)*A000581(n+8)`
-/

namespace A027795.P10413070820408567623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 8) * A000581 (n + 8)

end

end A027795.P10413070820408567623

namespace A027795

/-- `A000292(n+8)*A000581(n+8)` -/
def P10413070820408567623.Spec : Prop :=
  ∀ n, P10413070820408567623.a n = A027795 (n + 7)

end A027795

/-! ## A027795.P15743473267466125107

`∑[A000580(n+7)]*A000292(n+8)`
-/

namespace A027795.P15743473267466125107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000292 (n + 8)

end

end A027795.P15743473267466125107

namespace A027795

/-- `∑[A000580(n+7)]*A000292(n+8)` -/
def P15743473267466125107.Spec : Prop :=
  ∀ n, P15743473267466125107.a n = A027795 (n + 7)

end A027795

/-! ## A027795.P11197517135224285036

`Δ[A000332(n+10)]*A000581(n+8)`
-/

namespace A027795.P11197517135224285036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000581 (n + 8)

end

end A027795.P11197517135224285036

namespace A027795

/-- `Δ[A000332(n+10)]*A000581(n+8)` -/
def P11197517135224285036.Spec : Prop :=
  ∀ n, P11197517135224285036.a n = A027795 (n + 7)

end A027795

/-!
# A027796: a(n) = 55*(n+1)*binomial(n+3,11)/3.

The programs for A027796, the canonical program `A027796.P16279822293391277667` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027796 has offset 8).

The definition of A027796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027796.P16279822293391277667

`C(n+9, 9)*C(n+11, 3)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027796

/-- `C(n+9, 9)*C(n+11, 3)` -/
def P16279822293391277667.Spec : Prop :=
  ∀ n, (P16279822293391277667.a n : ℤ) = A027796 (n + 8)

theorem P16279822293391277667.correct : P16279822293391277667.Spec := by
  intro n
  simp only [A027796, Nat.add_sub_cancel]

end A027796

/-! ## A027796.P12058990855254762651

`55*(n+9)*C(n+11, 11)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027796.P12058990855254762651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (55 * (n + 9) * Nat.choose (n + 11) 11 : ℚ) / 3

end

end A027796.P12058990855254762651

namespace A027796

/-- `55*(n+9)*C(n+11, 11)/3` -/
def P12058990855254762651.Spec : Prop :=
  ∀ n, P12058990855254762651.a n = (A027796 (n + 8) : ℚ)

end A027796

/-! ## A027796.P14895296671750171779

`∑[A027795(n+7)+A027783(n+8)]`
-/

namespace A027796.P14895296671750171779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027795 (n + 7) + A027783 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027796.P14895296671750171779

namespace A027796

/-- `∑[A027795(n+7)+A027783(n+8)]` -/
def P14895296671750171779.Spec : Prop :=
  ∀ n, P14895296671750171779.a n = A027796 (n + 8)

end A027796

/-! ## A027796.P9802635097213397188

`∑[∑[n+3]]*A000582(n+11)`
-/

namespace A027796.P9802635097213397188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000582 (n + 11)

end

end A027796.P9802635097213397188

namespace A027796

/-- `∑[∑[n+3]]*A000582(n+11)` -/
def P9802635097213397188.Spec : Prop :=
  ∀ n, P9802635097213397188.a n = A027796 (n + 8)

end A027796

/-! ## A027796.P13954847330711114166

`∑[A093646(n)]/(n+1)*A000292(A020723(n))`
-/

namespace A027796.P13954847330711114166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093646 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) * (A000292 (A020723 n).toNat : ℚ)

end

end A027796.P13954847330711114166

namespace A027796

/-- `∑[A093646(n)]/(n+1)*A000292(A020723(n))` -/
def P13954847330711114166.Spec : Prop :=
  ∀ n, P13954847330711114166.a n = (A027796 (n + 8) : ℚ)

end A027796

/-! ## A027796.P10972081074556024187

`(A063418(n)-A063263(n))*A000292(A020723(n))`
-/

namespace A027796.P10972081074556024187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063418 n - A063263 n) * A000292 (A020723 n).toNat

end

end A027796.P10972081074556024187

namespace A027796

/-- `(A063418(n)-A063263(n))*A000292(A020723(n))` -/
def P10972081074556024187.Spec : Prop :=
  ∀ n, P10972081074556024187.a n = A027796 (n + 8)

end A027796

/-! ## A027796.P1262662062936788961

`(A063264(n)-A064058(n))*A000292(A020723(n))`
-/

namespace A027796.P1262662062936788961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063264 n - A064058 n) * A000292 (A020723 n).toNat

end

end A027796.P1262662062936788961

namespace A027796

/-- `(A063264(n)-A064058(n))*A000292(A020723(n))` -/
def P1262662062936788961.Spec : Prop :=
  ∀ n, P1262662062936788961.a n = A027796 (n + 8)

end A027796

/-! ## A027796.P3443003609631573428

`(2*A001781(n)-A001780(n))*A000292(A020723(n))`
-/

namespace A027796.P3443003609631573428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A001781 n - A001780 n) * A000292 (A020723 n).toNat

end

end A027796.P3443003609631573428

namespace A027796

/-- `(2*A001781(n)-A001780(n))*A000292(A020723(n))` -/
def P3443003609631573428.Spec : Prop :=
  ∀ n, P3443003609631573428.a n = A027796 (n + 8)

end A027796

/-! ## A027796.P16651861885281564236

`A027769(n+8)/A020723(n)*A000292(A020723(n))`
-/

namespace A027796.P16651861885281564236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027769 (n + 8) : ℚ) / (A020723 n : ℚ) * (A000292 (A020723 n).toNat : ℚ)

end

end A027796.P16651861885281564236

namespace A027796

/-- `A027769(n+8)/A020723(n)*A000292(A020723(n))` -/
def P16651861885281564236.Spec : Prop :=
  ∀ n, P16651861885281564236.a n = (A027796 (n + 8) : ℚ)

end A027796

/-! ## A027796.P6877064227050453275

`(A056003(n+1)-A056122(n+1))*A000292(A020723(n))`
-/

namespace A027796.P6877064227050453275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056003 (n + 1) - A056122 (n + 1)) * A000292 (A020723 n).toNat

end

end A027796.P6877064227050453275

namespace A027796

/-- `(A056003(n+1)-A056122(n+1))*A000292(A020723(n))` -/
def P6877064227050453275.Spec : Prop :=
  ∀ n, P6877064227050453275.a n = A027796 (n + 8)

end A027796

/-! ## A027796.P11803059591354464072

`A000582(n+9)*A178820(A000217(n+8))`
-/

namespace A027796.P11803059591354464072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) * A178820 (A000217 (n + 8)).toNat

end

end A027796.P11803059591354464072

namespace A027796

/-- `A000582(n+9)*A178820(A000217(n+8))` -/
def P11803059591354464072.Spec : Prop :=
  ∀ n, P11803059591354464072.a n = A027796 (n + 8)

end A027796

/-!
# A027797: a(n) = 22*(n+1)*binomial(n+3,12).

The programs for A027797, the canonical program `A027797.P9427733257412231872` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027797 has offset 9).

The definition of A027797 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22*(n+10)*C(n+12, 12)` (program `A027797.P9427733257412231872`, by `A027797.P9427733257412231872.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027797.P7746360956074755871

`C(n+10, 10)*C(n+12, 3)`
-/

namespace A027797.P7746360956074755871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 10) 10 * Nat.choose (n + 12) 3

end

end A027797.P7746360956074755871

namespace A027797

/-- `C(n+10, 10)*C(n+12, 3)` -/
def P7746360956074755871.Spec : Prop :=
  ∀ n, (P7746360956074755871.a n : ℤ) = A027797 (n + 9)

end A027797

/-! ## A027797.P9427733257412231872

`22*(n+10)*C(n+12, 12)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027797

/-- `22*(n+10)*C(n+12, 12)` -/
def P9427733257412231872.Spec : Prop :=
  ∀ n, (P9427733257412231872.a n : ℤ) = A027797 (n + 9)

theorem P9427733257412231872.correct : P9427733257412231872.Spec := by
  intro n
  simp only [A027797, Nat.add_sub_cancel]

end A027797

/-! ## A027797.P15100666920347001640

`∑[A027796(n+8)+A027784(n+9)]`
-/

namespace A027797.P15100666920347001640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027796 (n + 8) + A027784 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027797.P15100666920347001640

namespace A027797

/-- `∑[A027796(n+8)+A027784(n+9)]` -/
def P15100666920347001640.Spec : Prop :=
  ∀ n, P15100666920347001640.a n = A027797 (n + 9)

end A027797

/-! ## A027797.P3348250719901019256

`A000292(n+10)*A001287(n)`
-/

namespace A027797.P3348250719901019256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 10) * A001287 (n + 10)

end

end A027797.P3348250719901019256

namespace A027797

/-- `A000292(n+10)*A001287(n)` -/
def P3348250719901019256.Spec : Prop :=
  ∀ n, P3348250719901019256.a n = A027797 (n + 9)

end A027797

/-! ## A027797.P18059720868225689495

`∑[A000582(n+9)]*A000292(n+10)`
-/

namespace A027797.P18059720868225689495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000292 (n + 10)

end

end A027797.P18059720868225689495

namespace A027797

/-- `∑[A000582(n+9)]*A000292(n+10)` -/
def P18059720868225689495.Spec : Prop :=
  ∀ n, P18059720868225689495.a n = A027797 (n + 9)

end A027797

/-! ## A027797.P4186920989473952461

`Δ[A000332(n+12)]*A001287(n)`
-/

namespace A027797.P4186920989473952461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001287 (n + 10)

end

end A027797.P4186920989473952461

namespace A027797

/-- `Δ[A000332(n+12)]*A001287(n)` -/
def P4186920989473952461.Spec : Prop :=
  ∀ n, P4186920989473952461.a n = A027797 (n + 9)

end A027797

/-! ## A027797.P5104683754680009004

`A007318(A167614(n+11))*A001287(n)`
-/

namespace A027797.P5104683754680009004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A167614 (n + 11)).toNat * A001287 (n + 10)

end

end A027797.P5104683754680009004

namespace A027797

/-- `A007318(A167614(n+11))*A001287(n)` -/
def P5104683754680009004.Spec : Prop :=
  ∀ n, P5104683754680009004.a n = A027797 (n + 9)

end A027797

/-!
# A027798: a(n) = 26*(n+1)*binomial(n+3,13).

The programs for A027798, the canonical program `A027798.P18310161840745890450` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027798 has offset 10).

The definition of A027798 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `26*(n+11)*C(n+13, 13)` (program `A027798.P18310161840745890450`, by `A027798.P18310161840745890450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027798.P14395342287256547424

`C(n+11, 11)*C(n+13, 3)`
-/

namespace A027798.P14395342287256547424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 11) 11 * Nat.choose (n + 13) 3

end

end A027798.P14395342287256547424

namespace A027798

/-- `C(n+11, 11)*C(n+13, 3)` -/
def P14395342287256547424.Spec : Prop :=
  ∀ n, (P14395342287256547424.a n : ℤ) = A027798 (n + 10)

end A027798

/-! ## A027798.P18310161840745890450

`26*(n+11)*C(n+13, 13)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027798

/-- `26*(n+11)*C(n+13, 13)` -/
def P18310161840745890450.Spec : Prop :=
  ∀ n, (P18310161840745890450.a n : ℤ) = A027798 (n + 10)

theorem P18310161840745890450.correct : P18310161840745890450.Spec := by
  intro n
  simp only [A027798, Nat.add_sub_cancel]

end A027798

/-! ## A027798.P3178799117509613712

`∑[A027797(n+9)+A027785(n)]`
-/

namespace A027798.P3178799117509613712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027797 (n + 9) + A027785 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027798.P3178799117509613712

namespace A027798

/-- `∑[A027797(n+9)+A027785(n)]` -/
def P3178799117509613712.Spec : Prop :=
  ∀ n, P3178799117509613712.a n = A027798 (n + 10)

end A027798

/-! ## A027798.P9506427349441401925

`∑[∑[A000582(n+9)]]*A000292(n+11)`
-/

namespace A027798.P9506427349441401925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000292 (n + 11)

end

end A027798.P9506427349441401925

namespace A027798

/-- `∑[∑[A000582(n+9)]]*A000292(n+11)` -/
def P9506427349441401925.Spec : Prop :=
  ∀ n, P9506427349441401925.a n = A027798 (n + 10)

end A027798

/-!
# A027799: a(n) = 91*(n+1)*binomial(n+3,14)/3.

The programs for A027799, the canonical program `A027799.P8137975401012072810` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027799 has offset 11).

The definition of A027799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027799.P8137975401012072810

`C(n+12, 12)*C(n+14, 3)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027799

/-- `C(n+12, 12)*C(n+14, 3)` -/
def P8137975401012072810.Spec : Prop :=
  ∀ n, (P8137975401012072810.a n : ℤ) = A027799 (n + 11)

theorem P8137975401012072810.correct : P8137975401012072810.Spec := by
  intro n
  simp only [A027799, Nat.add_sub_cancel]

end A027799

/-! ## A027799.P7964497209210808719

`91*(n+12)*C(n+14, 14)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027799.P7964497209210808719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (91 * (n + 12) * Nat.choose (n + 14) 14 : ℚ) / 3

end

end A027799.P7964497209210808719

namespace A027799

/-- `91*(n+12)*C(n+14, 14)/3` -/
def P7964497209210808719.Spec : Prop :=
  ∀ n, P7964497209210808719.a n = (A027799 (n + 11) : ℚ)

end A027799

/-! ## A027799.P796991369945027922

`∑[A027798(n)+A027786(n)]`
-/

namespace A027799.P796991369945027922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027798 (n + 10) + A027786 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027799.P796991369945027922

namespace A027799

/-- `∑[A027798(n)+A027786(n)]` -/
def P796991369945027922.Spec : Prop :=
  ∀ n, P796991369945027922.a n = A027799 (n + 11)

end A027799

/-! ## A027799.P13739916179636951436

`∑[∑[n+4]]*A010965(n+2)`
-/

namespace A027799.P13739916179636951436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A010965 (n + 2 + 12)

end

end A027799.P13739916179636951436

namespace A027799

/-- `∑[∑[n+4]]*A010965(n+2)` -/
def P13739916179636951436.Spec : Prop :=
  ∀ n, P13739916179636951436.a n = A027799 (n + 11)

end A027799

/-! ## A027799.P11291697466080303930

`∑[A001288(n)]*A000292(n+12)`
-/

namespace A027799.P11291697466080303930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000292 (n + 12)

end

end A027799.P11291697466080303930

namespace A027799

/-- `∑[A001288(n)]*A000292(n+12)` -/
def P11291697466080303930.Spec : Prop :=
  ∀ n, P11291697466080303930.a n = A027799 (n + 11)

end A027799

