import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C005
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B004.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

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

/-! ## A398600.P10478316195678152662

`A048766(A048801(n))*A048810(n+6)`
-/

namespace A398600.P10478316195678152662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A048801 n).toNat * A048810 (n + 6)

end

end A398600.P10478316195678152662

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

/-! ## A398601.P16958354749523635940

`A325238(A322326(n))`
-/

namespace A398601.P16958354749523635940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325238 (A322326 n).toNat

end

end A398601.P16958354749523635940

/-! ## A398601.P15633350683667292425

`A386872(A382328(n))`
-/

namespace A398601.P15633350683667292425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386872 (A382328 n).toNat

end

end A398601.P15633350683667292425

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

/-! ## A398620.P16794711687888173245

`A080887(A000110(n))+A000070(n)`
-/

namespace A398620.P16794711687888173245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080887 (A000110 n).toNat + A000070 n

end

end A398620.P16794711687888173245

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

