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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A174700: The number of permutations p of {1,...,n} such that |p(i)-p(i+1)| is in {1,2,3} for all i from 1 to n-1.

The programs for A174700, there is no canonical definition to state claims against.
-/

/-! ## A174700.P4711249190509134993

`A020639(A000142(n))*A242526(n+1)`
-/

namespace A174700.P4711249190509134993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000142 n).toNat * A242526 (n + 1)

end

end A174700.P4711249190509134993

/-! ## A174700.P12952567654872077211

`A020639(A003665(n))*A242526(n+1)`
-/

namespace A174700.P12952567654872077211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003665 n).toNat * A242526 (n + 1)

end

end A174700.P12952567654872077211

/-! ## A174700.P10099545203189481020

`A054350(A003701(n))*A242526(n+1)`
-/

namespace A174700.P10099545203189481020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054350 (A003701 n).toNat * A242526 (n + 1)

end

end A174700.P10099545203189481020

/-! ## A174700.P405073607529744695

`A069932(A001003(n))*A242526(n+1)`
-/

namespace A174700.P405073607529744695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069932 (A001003 n).toNat * A242526 (n + 1)

end

end A174700.P405073607529744695

/-! ## A174700.P10064518436385236905

`A020639(A053502(n))*A242526(n+1)`
-/

namespace A174700.P10064518436385236905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053502 n).toNat * A242526 (n + 1)

end

end A174700.P10064518436385236905

/-!
# A174701: The number of permutations p of {1,...,n} such that |p(i)-p(i+1)| is in {1,2,3,4} for all i from 1 to n-1.

The programs for A174701, there is no canonical definition to state claims against.
-/

/-! ## A174701.P14108872704296429461

`record[A264977(A346422(n))]`
-/

namespace A174701.P14108872704296429461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264977 (A346422 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174701.P14108872704296429461

/-! ## A174701.P6775056121911189979

`A250245(∏[∑[A334369(n)]])`
-/

namespace A174701.P6775056121911189979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334369 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A174701.P6775056121911189979

/-! ## A174701.P8645445792069855365

`A245812(A193231(3*a(n-1)-1))` with `a(0)=1`
-/

namespace A174701.P8645445792069855365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A245812 (A193231 (3 * a (n - 1) - 1).toNat).toNat

end

end A174701.P8645445792069855365

/-!
# A174702: The number of permutations p of {1,...,n} such that |p(i)-p(i+1)| is in {1,2,3,4,5} for all i from 1 to n-1.

The programs for A174702, there is no canonical definition to state claims against.
-/

/-! ## A174702.P2909144490567848134

`A056960((n+1)!)`
-/

namespace A174702.P2909144490567848134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 (Nat.factorial (n + 1))

end

end A174702.P2909144490567848134

/-! ## A174702.P5606837501889102477

`A228732((n+1)!)`
-/

namespace A174702.P5606837501889102477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (Nat.factorial (n + 1))

end

end A174702.P5606837501889102477

/-! ## A174702.P2842020949245376076

`A056960(∏[n+1])`
-/

namespace A174702.P2842020949245376076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A174702.P2842020949245376076

/-!
# A174705: The number of permutations p of {1,...,n} such that |p(i)-p(i+1)| is in {2,3,4,5} for all i from 1 to n-1.

The programs for A174705, there is no canonical definition to state claims against.
-/

/-! ## A174705.P10671517313260147616

`A000774(A060831(n))%A064429(A020019(n))`
-/

namespace A174705.P10671517313260147616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000774 (A060831 n).toNat) (A064429 (A020019 n).toNat)

end

end A174705.P10671517313260147616

/-! ## A174705.P8385171993168561802

`A053347(n)%A014085(A321387(n))`
-/

namespace A174705.P8385171993168561802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053347 n) (A014085 (A321387 n).toNat)

end

end A174705.P8385171993168561802

/-!
# A174707: The number of permutations p of {1,...,n} such that |p(i)-p(i+1)| is in {3,4,5} for all i from 1 to n-1.

The programs for A174707, there is no canonical definition to state claims against.
-/

/-! ## A174707.P11478043797016905595

`A351978(xor(n², A066298(n+1)))`
-/

namespace A174707.P11478043797016905595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351978 (Int.xor (n ^ 2 : ℤ) (A066298 (n + 1))).toNat

end

end A174707.P11478043797016905595

/-! ## A174707.P2805534010841461394

`A326744(A000045(n))%A084517(n)`
-/

namespace A174707.P2805534010841461394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326744 (A000045 n).toNat) (A084517 n)

end

end A174707.P2805534010841461394

/-! ## A174707.P18369903761303877321

`and(A020036(n), A313367(A157051(n)))`
-/

namespace A174707.P18369903761303877321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020036 n) (A313367 (A157051 n).toNat)

end

end A174707.P18369903761303877321

/-! ## A174707.P6582553515218057931

`and(A095068(A036378(n)), A151538(n+1))`
-/

namespace A174707.P6582553515218057931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095068 (A036378 n).toNat) (A151538 (n + 1))

end

end A174707.P6582553515218057931

/-!
# A174709: Partial sums of floor(n/6).

The programs for A174709, the canonical program `A174709.P9945008165247424543` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174709 has offset 0).

The definition of A174709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174709.P9945008165247424543

`floor((n-2)²/12)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174709

/-- `floor((n-2)²/12)` -/
def P9945008165247424543.Spec : Prop :=
  ∀ n, P9945008165247424543.a n = A174709 n

theorem P9945008165247424543.correct : P9945008165247424543.Spec := by
  intro n
  simp only [A174709]

end A174709

/-! ## A174709.P8132627914758151249

`a(n-6)+n-5` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0`
-/

namespace A174709.P8132627914758151249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0] fun n a =>
  a (n - 6) + ((n : ℤ) - 5)

end

end A174709.P8132627914758151249

namespace A174709

/-- `a(n-6)+n-5` -/
def P8132627914758151249.Spec : Prop :=
  ∀ n, P8132627914758151249.a n = A174709 n

end A174709

/-! ## A174709.P9667347947688477385

`∑[A152467(n)]`
-/

namespace A174709.P9667347947688477385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174709.P9667347947688477385

namespace A174709

/-- `∑[A152467(n)]` -/
def P9667347947688477385.Spec : Prop :=
  ∀ n, P9667347947688477385.a n = A174709 n

end A174709

/-! ## A174709.P9712790334832843141

`A008724(abs(2-n))`
-/

namespace A174709.P9712790334832843141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 |2 - (n : ℤ)|.toNat

end

end A174709.P9712790334832843141

namespace A174709

/-- `A008724(abs(2-n))` -/
def P9712790334832843141.Spec : Prop :=
  ∀ n, P9712790334832843141.a n = A174709 n

end A174709

/-! ## A174709.P11232161285635232146

`∑[A097992(n)-1]`
-/

namespace A174709.P11232161285635232146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174709.P11232161285635232146

namespace A174709

/-- `∑[A097992(n)-1]` -/
def P11232161285635232146.Spec : Prop :=
  ∀ n, P11232161285635232146.a n = A174709 n

end A174709

/-! ## A174709.P4921253326733262543

`∑[A047368(n+1)-n]`
-/

namespace A174709.P4921253326733262543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047368 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174709.P4921253326733262543

namespace A174709

/-- `∑[A047368(n+1)-n]` -/
def P4921253326733262543.Spec : Prop :=
  ∀ n, P4921253326733262543.a n = A174709 n

end A174709

/-! ## A174709.P11296661213602565861

`A275673(n+2)-(n+2)`
-/

namespace A174709.P11296661213602565861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275673 (n + 2) - (n + 2 : ℤ)

end

end A174709.P11296661213602565861

namespace A174709

/-- `A275673(n+2)-(n+2)` -/
def P11296661213602565861.Spec : Prop :=
  ∀ n, P11296661213602565861.a n = A174709 n

end A174709

/-! ## A174709.P14217963850051214970

`(A008813(n)-(n+1))/2`
-/

namespace A174709.P14217963850051214970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008813 n - (n + 1 : ℤ) : ℚ) / 2

end

end A174709.P14217963850051214970

namespace A174709

/-- `(A008813(n)-(n+1))/2` -/
def P14217963850051214970.Spec : Prop :=
  ∀ n, P14217963850051214970.a n = (A174709 n : ℚ)

end A174709

/-! ## A174709.P11027949272899202320

`∑[A047304(n+1)-(n+1)]`
-/

namespace A174709.P11027949272899202320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174709.P11027949272899202320

namespace A174709

/-- `∑[A047304(n+1)-(n+1)]` -/
def P11027949272899202320.Spec : Prop :=
  ∀ n, P11027949272899202320.a n = A174709 n

end A174709

/-! ## A174709.P9433791860277531736

`A242771(n+1)-A171662(n)`
-/

namespace A174709.P9433791860277531736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242771 (n + 1) - A171662 n

end

end A174709.P9433791860277531736

namespace A174709

/-- `A242771(n+1)-A171662(n)` -/
def P9433791860277531736.Spec : Prop :=
  ∀ n, P9433791860277531736.a n = A174709 n

end A174709

/-! ## A174709.P9015916312662029685

`A002620(n)+A171965(n)-A171965(n+1)`
-/

namespace A174709.P9015916312662029685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + (A171965 n - A171965 (n + 1))

end

end A174709.P9015916312662029685

namespace A174709

/-- `A002620(n)+A171965(n)-A171965(n+1)` -/
def P9015916312662029685.Spec : Prop :=
  ∀ n, P9015916312662029685.a n = A174709 n

end A174709

/-! ## A174709.P13406828654667504548

`∑[n]-A033438(n+1)`
-/

namespace A174709.P13406828654667504548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033438 (n + 1)

end

end A174709.P13406828654667504548

namespace A174709

/-- `∑[n]-A033438(n+1)` -/
def P13406828654667504548.Spec : Prop :=
  ∀ n, P13406828654667504548.a n = A174709 n

end A174709

/-! ## A174709.P1750428607646055869

`(n+1)²-∑[A272915(n+1)]`
-/

namespace A174709.P1750428607646055869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174709.P1750428607646055869

namespace A174709

/-- `(n+1)²-∑[A272915(n+1)]` -/
def P1750428607646055869.Spec : Prop :=
  ∀ n, P1750428607646055869.a n = A174709 n

end A174709

/-! ## A174709.P9822285537794257160

`A002620(n)-A056827(n+1)`
-/

namespace A174709.P9822285537794257160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A056827 (n + 1)

end

end A174709.P9822285537794257160

namespace A174709

/-- `A002620(n)-A056827(n+1)` -/
def P9822285537794257160.Spec : Prop :=
  ∀ n, P9822285537794257160.a n = A174709 n

end A174709

/-! ## A174709.P14219090978159107714

`A002620(n+1)+A002620(n)-A033438(n+1)`
-/

namespace A174709.P14219090978159107714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A002620 n - A033438 (n + 1))

end

end A174709.P14219090978159107714

namespace A174709

/-- `A002620(n+1)+A002620(n)-A033438(n+1)` -/
def P14219090978159107714.Spec : Prop :=
  ∀ n, P14219090978159107714.a n = A174709 n

end A174709

/-! ## A174709.P16358624336063381727

`A056829(n+1)+A002620(n)-A000212(n+1)`
-/

namespace A174709.P16358624336063381727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056829 (n + 1) + (A002620 n - A000212 (n + 1))

end

end A174709.P16358624336063381727

namespace A174709

/-- `A056829(n+1)+A002620(n)-A000212(n+1)` -/
def P16358624336063381727.Spec : Prop :=
  ∀ n, P16358624336063381727.a n = A174709 n

end A174709

/-! ## A174709.P6968023982657039894

`A004526(n+1)*A004526(n)-A056827(n+1)`
-/

namespace A174709.P6968023982657039894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) * A004526 n - A056827 (n + 1)

end

end A174709.P6968023982657039894

namespace A174709

/-- `A004526(n+1)*A004526(n)-A056827(n+1)` -/
def P6968023982657039894.Spec : Prop :=
  ∀ n, P6968023982657039894.a n = A174709 n

end A174709

/-! ## A174709.P13172242413679294510

`A211540(n)-A079978(n+1)*A115360(n+1)`
-/

namespace A174709.P13172242413679294510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 n - A079978 (n + 1) * A115360 (n + 1)

end

end A174709.P13172242413679294510

namespace A174709

/-- `A211540(n)-A079978(n+1)*A115360(n+1)` -/
def P13172242413679294510.Spec : Prop :=
  ∀ n, P13172242413679294510.a n = A174709 n

end A174709

/-! ## A174709.P16908702467327659718

`A008735(2*n)-(n+1)`
-/

namespace A174709.P16908702467327659718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008735 (2 * n) - (n + 1 : ℤ)

end

end A174709.P16908702467327659718

namespace A174709

/-- `A008735(2*n)-(n+1)` -/
def P16908702467327659718.Spec : Prop :=
  ∀ n, P16908702467327659718.a n = A174709 n

end A174709

/-! ## A174709.P17401264543374251130

`∑[A342696(2*n)]`
-/

namespace A174709.P17401264543374251130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174709.P17401264543374251130

namespace A174709

/-- `∑[A342696(2*n)]` -/
def P17401264543374251130.Spec : Prop :=
  ∀ n, P17401264543374251130.a n = A174709 n

end A174709

/-!
# A174711: Composites of the form 2*n^n + 1 = A216147(n).

The programs for A174711, there is no canonical definition to state claims against.
-/

/-! ## A174711.P14323455814884917555

`A216147(A000005(3^(n+1)))`
-/

namespace A174711.P14323455814884917555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216147 (A000005 (3 ^ (n + 1))).toNat

end

end A174711.P14323455814884917555

/-! ## A174711.P12449647069198014404

`A132199(A372735(3*n+2))+A013499(n+2)`
-/

namespace A174711.P12449647069198014404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132199 (A372735 (3 * n + 2)).toNat + A013499 (n + 2)

end

end A174711.P12449647069198014404

/-! ## A174711.P813835606416850016

`or(A013499(n+2), A132199(A368305(3*(n+1))))`
-/

namespace A174711.P813835606416850016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013499 (n + 2)) (A132199 (A368305 (3 * (n + 1))).toNat)

end

end A174711.P813835606416850016

/-! ## A174711.P7376496533987083970

`A354918(A038754(2*(n+2)))+A216147(n+2)`
-/

namespace A174711.P7376496533987083970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354918 (A038754 (2 * (n + 2))).toNat + A216147 (n + 2)

end

end A174711.P7376496533987083970

/-!
# A174712: Triangle T(n,k) read by rows in which the right border is A000041, else zero, n >= 0.

The programs for A174712, there is no canonical definition to state claims against.
-/

/-! ## A174712.P12652220436863658866

`char[∑[n-1]]*A054225(n)`
-/

namespace A174712.P12652220436863658866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A054225 n

end

end A174712.P12652220436863658866

/-! ## A174712.P2919363393791411875

`char[∑[n-1]]*A182114(n)`
-/

namespace A174712.P2919363393791411875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A182114 n

end

end A174712.P2919363393791411875

/-! ## A174712.P14612392186551734141

`char[∑[n-1]]*A284592(n)`
-/

namespace A174712.P14612392186551734141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A284592 n

end

end A174712.P14612392186551734141

/-! ## A174712.P12842917498220887540

`A023531(n)*A055375(n)`
-/

namespace A174712.P12842917498220887540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A055375 n

end

end A174712.P12842917498220887540

/-! ## A174712.P16242113407779731219

`A023531(n)*A061199(n)`
-/

namespace A174712.P16242113407779731219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A061199 n

end

end A174712.P16242113407779731219

/-! ## A174712.P207764016466400773

`A023531(n)*A079025(n)`
-/

namespace A174712.P207764016466400773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A079025 n

end

end A174712.P207764016466400773

/-! ## A174712.P7971598272298961845

`A023531(n)*A124094(n)`
-/

namespace A174712.P7971598272298961845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A124094 n

end

end A174712.P7971598272298961845

/-! ## A174712.P64000258999056479

`A023531(n)*A140207(n)`
-/

namespace A174712.P64000258999056479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A140207 n

end

end A174712.P64000258999056479

/-! ## A174712.P12439505149262842884

`A061199(n)*A103451(n)`
-/

namespace A174712.P12439505149262842884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 n * A103451 n

end

end A174712.P12439505149262842884

/-! ## A174712.P143068571758568476

`A061199(n)*A103452(n)`
-/

namespace A174712.P143068571758568476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 n * A103452 n

end

end A174712.P143068571758568476

/-! ## A174712.P2612959449255721901

`A023531(n)*A141155(n)`
-/

namespace A174712.P2612959449255721901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A141155 n

end

end A174712.P2612959449255721901

/-! ## A174712.P2729737510200414692

`A023531(n)*A141157(n)`
-/

namespace A174712.P2729737510200414692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A141157 n

end

end A174712.P2729737510200414692

/-! ## A174712.P17319887993945152378

`A023531(n)*A175595(n)`
-/

namespace A174712.P17319887993945152378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A175595 n

end

end A174712.P17319887993945152378

/-! ## A174712.P12299682150486637765

`A023531(n)*A175788(n)`
-/

namespace A174712.P12299682150486637765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A175788 n

end

end A174712.P12299682150486637765

/-! ## A174712.P3059773127464544887

`A023531(n)*A175804(n)`
-/

namespace A174712.P3059773127464544887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A175804 n

end

end A174712.P3059773127464544887

/-! ## A174712.P8369067040363469324

`A061199(n)*A158821(n)`
-/

namespace A174712.P8369067040363469324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 n * A158821 n

end

end A174712.P8369067040363469324

/-! ## A174712.P18172368980322581933

`A175595(n)*A196389(n)`
-/

namespace A174712.P18172368980322581933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 n * A196389 n

end

end A174712.P18172368980322581933

/-! ## A174712.P10575318250596868417

`A103451(n)*A321449(n)`
-/

namespace A174712.P10575318250596868417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A321449 n

end

end A174712.P10575318250596868417

/-! ## A174712.P4101665216927691363

`and(A124094(n), A134347(n))`
-/

namespace A174712.P4101665216927691363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124094 n) (A134347 n)

end

end A174712.P4101665216927691363

/-! ## A174712.P2910326741410746769

`and(A134347(n), A140207(n))`
-/

namespace A174712.P2910326741410746769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134347 n) (A140207 n)

end

end A174712.P2910326741410746769

/-!
# A174713: Triangle read by rows, A173305 (A000009 shifted down twice) * A174712 (diagonalized variant of A000041).

The programs for A174713, there is no canonical definition to state claims against.
-/

/-! ## A174713.P14435586865703348443

`A000041(n%floor(sqrt(n+1)))*A173305(n)`
-/

namespace A174713.P14435586865703348443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n % Nat.sqrt (n + 1)) * A173305 n

end

end A174713.P14435586865703348443

/-! ## A174713.P9001473581696649176

`A000041(A055087(n))*A173305(n)`
-/

namespace A174713.P9001473581696649176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A055087 n).toNat * A173305 n

end

end A174713.P9001473581696649176

/-! ## A174713.P5680992007961516883

`A113686(n-floor(sqrt(n))+n)`
-/

namespace A174713.P5680992007961516883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113686 ((n : ℤ) - (Nat.sqrt n : ℤ) + (n : ℤ)).toNat

end

end A174713.P5680992007961516883

/-! ## A174713.P2932500452755012271

`A060502(24*A000032(n))`
-/

namespace A174713.P2932500452755012271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (24 * A000032 n).toNat

end

end A174713.P2932500452755012271

/-! ## A174713.P9074850386904826582

`A060502(24*A169985(n))`
-/

namespace A174713.P9074850386904826582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (24 * A169985 n).toNat

end

end A174713.P9074850386904826582

/-!
# A174716: Averages of twin prime pairs of the form : sum of two or more consecutive squares.

The programs for A174716, there is no canonical definition to state claims against.
-/

/-! ## A174716.P17594087383562705091

`∩[A000203(A001359(n+1)), A174070(n+1)]`
-/

namespace A174716.P17594087383562705091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001359 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174716.P17594087383562705091

/-! ## A174716.P16777596083936153117

`∩[A000010(A006512(n+1)), A174070(n+1)]`
-/

namespace A174716.P16777596083936153117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006512 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174716.P16777596083936153117

/-! ## A174716.P12871892900098937970

`∩[A129297(n+1), A174071(n+1)]`
-/

namespace A174716.P12871892900098937970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174716.P12871892900098937970

/-! ## A174716.P17472238026512806910

`∩[A014574(n+1), A174069(n+1)]`
-/

namespace A174716.P17472238026512806910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174716.P17472238026512806910

/-! ## A174716.P3150218245548440340

`∩[A001359(n+1)+1, A174069(n+1)]`
-/

namespace A174716.P3150218245548440340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174716.P3150218245548440340

/-!
# A174718: Triangle T(n, k, q) = (1-q^n)*( binomial(n, k) - 1 ) + 1, with q = 2, read by rows.

The programs for A174718, the canonical program `A174718.P11900434341111267060` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174718 has offset 0).

The definition of A174718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174718.P11900434341111267060

`A008949(n)+A055248(n)-A038208(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A174718

/-- `A008949(n)+A055248(n)-A038208(n)` -/
def P11900434341111267060.Spec : Prop :=
  ∀ n, P11900434341111267060.a n = A174718 n

theorem P11900434341111267060.correct : P11900434341111267060.Spec := by
  intro n
  simp only [A174718]

end A174718

/-! ## A174718.P12034996262304973546

`1-A051204(A157221(n))`
-/

namespace A174718.P12034996262304973546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051204 (A157221 n).toNat

end

end A174718.P12034996262304973546

namespace A174718

/-- `1-A051204(A157221(n))` -/
def P12034996262304973546.Spec : Prop :=
  ∀ n, P12034996262304973546.a n = A174718 n

end A174718

/-! ## A174718.P16574596033722917883

`2-A108378(A174669(n))`
-/

namespace A174718.P16574596033722917883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A108378 (A174669 n).toNat

end

end A174718.P16574596033722917883

namespace A174718

/-- `2-A108378(A174669(n))` -/
def P16574596033722917883.Spec : Prop :=
  ∀ n, P16574596033722917883.a n = A174718 n

end A174718

/-! ## A174718.P1066088702169026402

`2-A381432(A255494(n))`
-/

namespace A174718.P1066088702169026402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A381432 (A255494 n).toNat

end

end A174718.P1066088702169026402

namespace A174718

/-- `2-A381432(A255494(n))` -/
def P1066088702169026402.Spec : Prop :=
  ∀ n, P1066088702169026402.a n = A174718 n

end A174718

/-! ## A174718.P18031023283068941428

`2-A227568(A022167(n)²)`
-/

namespace A174718.P18031023283068941428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A227568 (A022167 n ^ 2).toNat

end

end A174718.P18031023283068941428

namespace A174718

/-- `2-A227568(A022167(n)²)` -/
def P18031023283068941428.Spec : Prop :=
  ∀ n, P18031023283068941428.a n = A174718 n

end A174718

/-!
# A174719: Triangle T(n, k, q) = (1-q^n)*( binomial(n, k) - 1 ) + 1, with q = 3, read by rows.

The programs for A174719, the canonical program `A174719.P14076238822067918350` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174719 has offset 0).

The definition of A174719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8445 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174719.P14076238822067918350

`A007318(n)+A098355(n)-A038221(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A174719

/-- `A007318(n)+A098355(n)-A038221(n)` -/
def P14076238822067918350.Spec : Prop :=
  ∀ n, P14076238822067918350.a n = A174719 n

theorem P14076238822067918350.correct : P14076238822067918350.Spec := by
  intro n
  simp only [A174719]

end A174719

/-! ## A174719.P8212740252306353498

`1-A159786(A173043(n))`
-/

namespace A174719.P8212740252306353498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A159786 (A173043 n).toNat

end

end A174719.P8212740252306353498

namespace A174719

/-- `1-A159786(A173043(n))` -/
def P8212740252306353498.Spec : Prop :=
  ∀ n, P8212740252306353498.a n = A174719 n

end A174719

/-! ## A174719.P879707384175019177

`A028326(n)-A125129(A086645(n))`
-/

namespace A174719.P879707384175019177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A125129 (A086645 n).toNat

end

end A174719.P879707384175019177

namespace A174719

/-- `A028326(n)-A125129(A086645(n))` -/
def P879707384175019177.Spec : Prop :=
  ∀ n, P879707384175019177.a n = A174719 n

end A174719

/-! ## A174719.P10319568405302134822

`A176225(n)-A160124(A154983(n))`
-/

namespace A174719.P10319568405302134822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176225 n - A160124 (A154983 n).toNat

end

end A174719.P10319568405302134822

namespace A174719

/-- `A176225(n)-A160124(A154983(n))` -/
def P10319568405302134822.Spec : Prop :=
  ∀ n, P10319568405302134822.a n = A174719 n

end A174719

/-! ## A174719.P9039594390594705095

`A244363(A167040(n))-A157149(n)`
-/

namespace A174719.P9039594390594705095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244363 (A167040 n).toNat - A157149 n

end

end A174719.P9039594390594705095

namespace A174719

/-- `A244363(A167040(n))-A157149(n)` -/
def P9039594390594705095.Spec : Prop :=
  ∀ n, P9039594390594705095.a n = A174719 n

end A174719

/-!
# A174720: Triangle T(n, k, q) = (1-q^n)*( binomial(n, k) - 1 ) + 1, with q = 4, read by rows.

The programs for A174720, there is no canonical definition to state claims against.
-/

/-! ## A174720.P6466005503086068757

`A168071(A176642(n))%A173348(2*n+1)`
-/

namespace A174720.P6466005503086068757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168071 (A176642 n).toNat) (A173348 (2 * n + 1))

end

end A174720.P6466005503086068757

/-! ## A174720.P12039575694596924120

`A348309(A147409(3*n+1)%A122797(3*(n+1)))`
-/

namespace A174720.P12039575694596924120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348309 (Int.tmod (A147409 (3 * n + 1)) (A122797 (3 * (n + 1)))).toNat

end

end A174720.P12039575694596924120

/-! ## A174720.P5474891044094150848

`2-A320904(A082170(n))`
-/

namespace A174720.P5474891044094150848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A320904 (A082170 n).toNat

end

end A174720.P5474891044094150848

/-! ## A174720.P14369510195116952807

`1-A165012(A122542(n)^n)`
-/

namespace A174720.P14369510195116952807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A165012 (A122542 n ^ n).toNat

end

end A174720.P14369510195116952807

/-!
# A174722: Slowest increasing sequence of odd primes such that the partial sums of the sequence from the second on are perfect powers.

The programs for A174722, there is no canonical definition to state claims against.
-/

/-! ## A174722.P6051350472011908430

`A168323(∑[∑[n²]]+1)`
-/

namespace A174722.P6051350472011908430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168323 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A174722.P6051350472011908430

/-!
# A174723: a(n) = n*(4*n^2 - 3*n + 5)/6.

The programs for A174723, the canonical program `A174723.P2806079014507555104` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174723 has offset 1).

The definition of A174723 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(4*(n+1)²-3*(n+1)+5)/6` (program `A174723.P2699527401089866226`, by `A174723.P2699527401089866226.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174723.P2699527401089866226

`(n+1)*(4*(n+1)²-3*(n+1)+5)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174723.P2699527401089866226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((4 * (n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 5 : ℚ) / 6)

end

end A174723.P2699527401089866226

namespace A174723

/-- `(n+1)*(4*(n+1)²-3*(n+1)+5)/6` -/
def P2699527401089866226.Spec : Prop :=
  ∀ n, P2699527401089866226.a n = (A174723 (n + 1) : ℚ)

theorem P2699527401089866226.correct : P2699527401089866226.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A174723, Nat.add_sub_cancel, A174723.P2699527401089866226.a, A174723.P2806079014507555104.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A174723, Nat.add_sub_cancel, A174723.P2699527401089866226.a, A174723.P2806079014507555104.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A174723

/-! ## A174723.P2806079014507555104

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=16, a(3)=38`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174723

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2806079014507555104.Spec : Prop :=
  ∀ n, P2806079014507555104.a n = A174723 (n + 1)

theorem P2806079014507555104.correct : P2806079014507555104.Spec := by
  intro n
  simp only [A174723, Nat.add_sub_cancel]

end A174723

/-! ## A174723.P9831392968588344214

`A022554((n+1)²)`
-/

namespace A174723.P9831392968588344214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 ((n + 1) ^ 2)

end

end A174723.P9831392968588344214

namespace A174723

/-- `A022554((n+1)²)` -/
def P9831392968588344214.Spec : Prop :=
  ∀ n, P9831392968588344214.a n = A174723 (n + 1)

end A174723

/-! ## A174723.P14079896491891736176

`C(n+3, 3)+n*∑[n]`
-/

namespace A174723.P14079896491891736176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 + n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174723.P14079896491891736176

namespace A174723

/-- `C(n+3, 3)+n*∑[n]` -/
def P14079896491891736176.Spec : Prop :=
  ∀ n, (P14079896491891736176.a n : ℤ) = A174723 (n + 1)

end A174723

/-! ## A174723.P10466227245002858098

`∑[C(Δ[n²], 2)]+n+1`
-/

namespace A174723.P10466227245002858098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A174723.P10466227245002858098

namespace A174723

/-- `∑[C(Δ[n²], 2)]+n+1` -/
def P10466227245002858098.Spec : Prop :=
  ∀ n, (P10466227245002858098.a n : ℤ) = A174723 (n + 1)

end A174723

/-! ## A174723.P13665167299947686360

`∑[lcm(n, Δ[n²])]+n+1`
-/

namespace A174723.P13665167299947686360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A174723.P13665167299947686360

namespace A174723

/-- `∑[lcm(n, Δ[n²])]+n+1` -/
def P13665167299947686360.Spec : Prop :=
  ∀ n, (P13665167299947686360.a n : ℤ) = A174723 (n + 1)

end A174723

/-! ## A174723.P6379462461426081762

`∑[n*Δ[n²]]-xor(n, -1)`
-/

namespace A174723.P6379462461426081762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A174723.P6379462461426081762

namespace A174723

/-- `∑[n*Δ[n²]]-xor(n, -1)` -/
def P6379462461426081762.Spec : Prop :=
  ∀ n, P6379462461426081762.a n = A174723 (n + 1)

end A174723

/-! ## A174723.P12293757943739667003

`ogf((1+x+2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A174723.P12293757943739667003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, -4, 6, -4, 1] n

end

end A174723.P12293757943739667003

namespace A174723

/-- `ogf((1+x+2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P12293757943739667003.Spec : Prop :=
  ∀ n, P12293757943739667003.a n = A174723 (n + 1)

end A174723

/-! ## A174723.P7319884916177076811

`floor(∑[∑[a(n-1)+4]])` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A174723.P7319884916177076811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174723.P7319884916177076811

namespace A174723

/-- `floor(∑[∑[a(n-1)+4]])` -/
def P7319884916177076811.Spec : Prop :=
  ∀ n, (P7319884916177076811.a n : ℤ) = A174723 (n + 1)

end A174723

/-! ## A174723.P14959792089699235636

`∑[∑[a(n-1)+8]]/2` with `a(0)=2, a(1)=6`
-/

namespace A174723.P14959792089699235636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A174723.P14959792089699235636

namespace A174723

/-- `∑[∑[a(n-1)+8]]/2` -/
def P14959792089699235636.Spec : Prop :=
  ∀ n, P14959792089699235636.a n = (A174723 (n + 1) : ℚ)

end A174723

/-! ## A174723.P4909138010608705064

`floor(∑[2-∑[a(n-1)-4]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A174723.P4909138010608705064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174723.P4909138010608705064

namespace A174723

/-- `floor(∑[2-∑[a(n-1)-4]])` -/
def P4909138010608705064.Spec : Prop :=
  ∀ n, P4909138010608705064.a n = A174723 (n + 1)

end A174723

/-! ## A174723.P12312783955696849656

`∑[n*or(1, 2*n)]+n+1`
-/

namespace A174723.P12312783955696849656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A174723.P12312783955696849656

namespace A174723

/-- `∑[n*or(1, 2*n)]+n+1` -/
def P12312783955696849656.Spec : Prop :=
  ∀ n, (P12312783955696849656.a n : ℤ) = A174723 (n + 1)

end A174723

/-! ## A174723.P9317525483376977669

`∑[n*xor(1, 2*n)]+n+1`
-/

namespace A174723.P9317525483376977669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 1 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A174723.P9317525483376977669

namespace A174723

/-- `∑[n*xor(1, 2*n)]+n+1` -/
def P9317525483376977669.Spec : Prop :=
  ∀ n, (P9317525483376977669.a n : ℤ) = A174723 (n + 1)

end A174723

/-! ## A174723.P4368884767211915676

`∑[n+1]+∑[lcm(2, 2*n²)]`
-/

namespace A174723.P4368884767211915676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A174723.P4368884767211915676

namespace A174723

/-- `∑[n+1]+∑[lcm(2, 2*n²)]` -/
def P4368884767211915676.Spec : Prop :=
  ∀ n, (P4368884767211915676.a n : ℤ) = A174723 (n + 1)

end A174723

/-! ## A174723.P8475887338638798056

`∑[∑[a(n-1)+4]]+∑[n]` with `a(0)=1, a(1)=2`
-/

namespace A174723.P8475887338638798056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A174723.P8475887338638798056

namespace A174723

/-- `∑[∑[a(n-1)+4]]+∑[n]` -/
def P8475887338638798056.Spec : Prop :=
  ∀ n, (P8475887338638798056.a n : ℤ) = A174723 (n + 1)

end A174723

/-! ## A174723.P1902253323316007648

`(C(2*n+3, 3)-n²+1)/2`
-/

namespace A174723.P1902253323316007648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n + 3) 3 : ℤ) - (n ^ 2 : ℤ) + 1 : ℚ) / 2

end

end A174723.P1902253323316007648

namespace A174723

/-- `(C(2*n+3, 3)-n²+1)/2` -/
def P1902253323316007648.Spec : Prop :=
  ∀ n, P1902253323316007648.a n = (A174723 (n + 1) : ℚ)

end A174723

/-! ## A174723.P8580651271636960761

`2*n²+a(n-1)+n+1` with `a(0)=1`
-/

namespace A174723.P8580651271636960761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n ^ 2 + (a (n - 1) + (n + 1))

end

end A174723.P8580651271636960761

namespace A174723

/-- `2*n²+a(n-1)+n+1` -/
def P8580651271636960761.Spec : Prop :=
  ∀ n, (P8580651271636960761.a n : ℤ) = A174723 (n + 1)

end A174723

/-! ## A174723.P12736996763276672234

`Δ[(n+1)*C(n+1, 3)]+n+1`
-/

namespace A174723.P12736996763276672234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)

end

end A174723.P12736996763276672234

namespace A174723

/-- `Δ[(n+1)*C(n+1, 3)]+n+1` -/
def P12736996763276672234.Spec : Prop :=
  ∀ n, P12736996763276672234.a n = A174723 (n + 1)

end A174723

/-! ## A174723.P9385909430802001614

`∑[2*(n%(n+1))²]+∑[n+1]`
-/

namespace A174723.P9385909430802001614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A174723.P9385909430802001614

namespace A174723

/-- `∑[2*(n%(n+1))²]+∑[n+1]` -/
def P9385909430802001614.Spec : Prop :=
  ∀ n, (P9385909430802001614.a n : ℤ) = A174723 (n + 1)

end A174723

/-! ## A174723.P13905510350844915753

`a(n-1)+C(2*n+1, 2)+1` with `a(0)=1`
-/

namespace A174723.P13905510350844915753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.choose (2 * n + 1) 2 + 1)

end

end A174723.P13905510350844915753

namespace A174723

/-- `a(n-1)+C(2*n+1, 2)+1` -/
def P13905510350844915753.Spec : Prop :=
  ∀ n, (P13905510350844915753.a n : ℤ) = A174723 (n + 1)

end A174723

/-!
# A174724: Sum_{k=1..n} Floor((k + 3*sqrt(k))/k).

The programs for A174724, the canonical program `A174724.P7160909579204843849` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174724 has offset 1).

The definition of A174724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174724.P7160909579204843849

`ceil(a(n-1)+3/log(a(n-1)))` with `a(0)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174724

/-- `ceil(a(n-1)+3/log(a(n-1)))` -/
def P7160909579204843849.Spec : Prop :=
  ∀ n, P7160909579204843849.a n = A174724 (n + 1)

theorem P7160909579204843849.correct : P7160909579204843849.Spec := by
  intro n
  simp only [A174724, Nat.add_sub_cancel]

end A174724

/-!
# A174725: a(n) = (A074206(n) + A008683(n))/2.

The programs for A174725, there is no canonical definition to state claims against.
-/

/-! ## A174725.P16171726651476028814

`(A074206(n+1)+A008683(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174725.P16171726651476028814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074206 (n + 1) + A008683 (n + 1) : ℚ) / 2

end

end A174725.P16171726651476028814

/-! ## A174725.P582330061019503731

`∑{d}[n+1, #*A378432((n+1)/#)]`
-/

namespace A174725.P582330061019503731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A378432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174725.P582330061019503731

/-! ## A174725.P11051711864424372603

`A002033(n)-A174726(n+1)`
-/

namespace A174725.P11051711864424372603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A174726 (n + 1)

end

end A174725.P11051711864424372603

/-! ## A174725.P12206812366622609480

`A174726(n+1)+A008683(n+1)`
-/

namespace A174725.P12206812366622609480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174726 (n + 1) + A008683 (n + 1)

end

end A174725.P12206812366622609480

/-! ## A174725.P11302162570828592814

`A074206(n+1)-A174726(n+1)`
-/

namespace A174725.P11302162570828592814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1) - A174726 (n + 1)

end

end A174725.P11302162570828592814

/-! ## A174725.P7365300657989102519

`(A008683(n+1)+A002033(n))/2`
-/

namespace A174725.P7365300657989102519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) + A002033 n : ℚ) / 2

end

end A174725.P7365300657989102519

/-! ## A174725.P5408283086971716980

`floor((A007423(n+1)+A002033(n))/2)`
-/

namespace A174725.P5408283086971716980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007423 (n + 1) + A002033 n : ℚ) / 2⌋

end

end A174725.P5408283086971716980

/-! ## A174725.P4315459073587317957

`(Δ[A173382(n)]+A008683(n+1))/2`
-/

namespace A174725.P4315459073587317957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + A008683 (n + 1) : ℚ) / 2

end

end A174725.P4315459073587317957

/-! ## A174725.P17348811914242848817

`∑{d}[n+1, A007427(#)*A067824((n+1)/#)]`
-/

namespace A174725.P17348811914242848817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A067824 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174725.P17348811914242848817

/-! ## A174725.P10973854863077737028

`∑{d}[n+1, A007428(#)*A253249((n+1)/#)]`
-/

namespace A174725.P10973854863077737028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A253249 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174725.P10973854863077737028

/-! ## A174725.P2590040276255996051

`∑{d}[n+1, A000010(#)*A323910((n+1)/#)]`
-/

namespace A174725.P2590040276255996051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A323910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174725.P2590040276255996051

/-! ## A174725.P15209818790434097551

`∑{d}[n+1, A007431(#)*A323912((n+1)/#)]`
-/

namespace A174725.P15209818790434097551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A323912 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174725.P15209818790434097551

/-! ## A174725.P18231216087116132267

`∑{d}[n+1, A003972(#)*A346246((n+1)/#)]`
-/

namespace A174725.P18231216087116132267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d * A346246 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174725.P18231216087116132267

/-! ## A174725.P13911817961747691965

`∑{d}[n+1, A046692(#)*A330575((n+1)/#)]`
-/

namespace A174725.P13911817961747691965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A330575 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174725.P13911817961747691965

/-! ## A174725.P1767264754825571481

`∑{d}[n+1, A087003(#)*A345182((n+1)/#)]`
-/

namespace A174725.P1767264754825571481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A345182 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174725.P1767264754825571481

/-! ## A174725.P7669963402503258602

`∑{d}[n+1, A327276(#)*A378223((n+1)/#)]`
-/

namespace A174725.P7669963402503258602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327276 d * A378223 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174725.P7669963402503258602

/-! ## A174725.P13650714143031291714

`∑{d}[n+1, A359763(#)*A378531((n+1)/#)]`
-/

namespace A174725.P13650714143031291714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359763 d * A378531 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174725.P13650714143031291714

/-! ## A174725.P10692268036689936391

`∑{d}[n+1, A369453(#)*A378533((n+1)/#)]`
-/

namespace A174725.P10692268036689936391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369453 d * A378533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174725.P10692268036689936391

/-! ## A174725.P15773144700773585289

`∑{d}[n+1, A378643(#)*A378649((n+1)/#)]`
-/

namespace A174725.P15773144700773585289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378643 d * A378649 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174725.P15773144700773585289

/-!
# A174726: a(n) = (A002033(n-1) - A008683(n))/2.

The programs for A174726, there is no canonical definition to state claims against.
-/

/-! ## A174726.P17368547544525295662

`(A002033(n)-A008683(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174726.P17368547544525295662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002033 n - A008683 (n + 1) : ℚ) / 2

end

end A174726.P17368547544525295662

/-! ## A174726.P15086320177889998917

`A002033(n)-A174725(n+1)`
-/

namespace A174726.P15086320177889998917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A174725 (n + 1)

end

end A174726.P15086320177889998917

/-! ## A174726.P17695889140770469031

`A174725(n+1)-A008683(n+1)`
-/

namespace A174726.P17695889140770469031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174725 (n + 1) - A008683 (n + 1)

end

end A174726.P17695889140770469031

/-! ## A174726.P14094589908362936228

`A074206(n+1)-A174725(n+1)`
-/

namespace A174726.P14094589908362936228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1) - A174725 (n + 1)

end

end A174726.P14094589908362936228

/-! ## A174726.P3839455078224468238

`(Δ[A173382(n)]-A008683(n+1))/2`
-/

namespace A174726.P3839455078224468238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A008683 (n + 1) : ℚ) / 2

end

end A174726.P3839455078224468238

/-! ## A174726.P4321030345044745990

`(A074206(n+1)-A008683(n+1))/2`
-/

namespace A174726.P4321030345044745990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074206 (n + 1) - A008683 (n + 1) : ℚ) / 2

end

end A174726.P4321030345044745990

/-! ## A174726.P14216812782551564779

`∑{d}[n+1, A074206(#)*A157658((n+1)/#)]`
-/

namespace A174726.P14216812782551564779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074206 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174726.P14216812782551564779

/-! ## A174726.P8397005020568891956

`∑{d}[n+1, A046692(#)*A255242((n+1)/#)]`
-/

namespace A174726.P8397005020568891956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A255242 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174726.P8397005020568891956

/-! ## A174726.P1092809192395674677

`∑{d}[n+1, A051953(#)*A323910((n+1)/#)]`
-/

namespace A174726.P1092809192395674677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 d * A323910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174726.P1092809192395674677

/-! ## A174726.P7125554439031784714

`∑{d}[n+1, A001065(#)*A378432((n+1)/#)]`
-/

namespace A174726.P7125554439031784714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A378432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174726.P7125554439031784714

/-! ## A174726.P11136932969911134164

`∑{d}[n+1, A062790(#)*A323912((n+1)/#)]`
-/

namespace A174726.P11136932969911134164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062790 d * A323912 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174726.P11136932969911134164

/-! ## A174726.P1606682281210159290

`∑{d}[n+1, A002033(#-1)*A157658((n+1)/#)]`
-/

namespace A174726.P1606682281210159290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1) * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174726.P1606682281210159290

/-! ## A174726.P4209269181056450238

`∑{d}[n+1, A057427(#-1)*A174725((n+1)/#)]`
-/

namespace A174726.P4209269181056450238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A174725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174726.P4209269181056450238

/-!
# A174727: a(n) = A091137(n+1)/(n+1).

The programs for A174727, the canonical program `A174727.P14657394569459786489` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174727 has offset 0).

The definition of A174727 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A174727.P14657394569459786489

`A091137(n+1)/(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A174727

/-- `A091137(n+1)/(n+1)` -/
def P14657394569459786489.Spec : Prop :=
  ∀ n, P14657394569459786489.a n = (A174727 n : ℚ)

end A174727

/-! ## A174727.P14209308456516977879

`(A000142(n+1)+A000142(n))*A363596(n+1)`
-/

namespace A174727.P14209308456516977879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) + A000142 n) * A363596 (n + 1)

end

end A174727.P14209308456516977879

namespace A174727

/-- `(A000142(n+1)+A000142(n))*A363596(n+1)` -/
def P14209308456516977879.Spec : Prop :=
  ∀ n, P14209308456516977879.a n = A174727 n

end A174727

/-! ## A174727.P7521541676786496266

`∏[A027760(n+1)]/(n+1)`
-/

namespace A174727.P7521541676786496266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A174727.P7521541676786496266

namespace A174727

/-- `∏[A027760(n+1)]/(n+1)` -/
def P7521541676786496266.Spec : Prop :=
  ∀ n, P7521541676786496266.a n = (A174727 n : ℚ)

end A174727

/-! ## A174727.P16587084680660700690

`∏[A141056(n+1)]/(n+1)`
-/

namespace A174727.P16587084680660700690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A174727.P16587084680660700690

namespace A174727

/-- `∏[A141056(n+1)]/(n+1)` -/
def P16587084680660700690.Spec : Prop :=
  ∀ n, P16587084680660700690.a n = (A174727 n : ℚ)

end A174727

/-! ## A174727.P1462297714992568858

`A165313(A046092(n+2))/(n+1)`
-/

namespace A174727.P1462297714992568858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165313 (A046092 (n + 2)).toNat : ℚ) / (n + 1 : ℚ)

end

end A174727.P1462297714992568858

namespace A174727

/-- `A165313(A046092(n+2))/(n+1)` -/
def P1462297714992568858.Spec : Prop :=
  ∀ n, P1462297714992568858.a n = (A174727 n : ℚ)

end A174727

/-!
# A174728: Triangle read by rows: T(n, m, q) = (1-q^n)*Eulerian(n+1, m) - (1-q^n) + 1, with q = 2.

The programs for A174728, there is no canonical definition to state claims against.
-/

/-! ## A174728.P15930408949238203694

`A008292(n+1)+A137688(n)-A257609(n)`
-/

namespace A174728.P15930408949238203694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A137688 n - A257609 n)

end

end A174728.P15930408949238203694

/-! ## A174728.P11467789043575567406

`A137688(n)+(A176204(n)+3)/4-A257609(n)`
-/

namespace A174728.P11467789043575567406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137688 n : ℚ) + ((A176204 n + 3 : ℚ) / 4 - (A257609 n : ℚ))

end

end A174728.P11467789043575567406

/-! ## A174728.P7049570972675054074

`A137688(n)+(A141690(n)+A007318(n))/2-A257609(n)`
-/

namespace A174728.P7049570972675054074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137688 n : ℚ) + ((A141690 n + A007318 n : ℚ) / 2 - (A257609 n : ℚ))

end

end A174728.P7049570972675054074

/-! ## A174728.P4288284355570276989

`2*A141689(n+1)-A007318(n)+A137688(n)-A257609(n)`
-/

namespace A174728.P4288284355570276989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141689 (n + 1) - A007318 n + (A137688 n - A257609 n)

end

end A174728.P4288284355570276989

/-! ## A174728.P11890262964576238472

`2*A141686(n+1)/A028326(n)+A137688(n)-A257609(n)`
-/

namespace A174728.P11890262964576238472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A141686 (n + 1) : ℚ) / (A028326 n : ℚ)) + (A137688 n - A257609 n : ℚ)

end

end A174728.P11890262964576238472

/-! ## A174728.P3726174961411026325

`2*A154337(n)-A154336(n)+A137688(n)-A257609(n)`
-/

namespace A174728.P3726174961411026325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154337 n - A154336 n + (A137688 n - A257609 n)

end

end A174728.P3726174961411026325

/-!
# A174729: Triangle read by rows: T(n,k) = (1-3^n) * Eulerian(n + 1, k) + 3^n.

The programs for A174729, there is no canonical definition to state claims against.
-/

/-! ## A174729.P18166809818067086518

`A008292(n+1)+A098355(n)-A257620(n)`
-/

namespace A174729.P18166809818067086518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A098355 n - A257620 n)

end

end A174729.P18166809818067086518

/-! ## A174729.P9659224991659114297

`A089438(A131061(n))-A047387(A027935(n)^n)`
-/

namespace A174729.P9659224991659114297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089438 (A131061 n).toNat - A047387 (A027935 n ^ n).toNat

end

end A174729.P9659224991659114297

/-! ## A174729.P15436605346848844148

`A089438(A210651(n+1))-A047387(A027935(n)^n)`
-/

namespace A174729.P15436605346848844148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089438 (A210651 (n + 1)).toNat - A047387 (A027935 n ^ n).toNat

end

end A174729.P15436605346848844148

/-!
# A174730: Triangle read by rows: T(n,k) = (1-4^n) * Eulerian(n + 1, m) + 4^n.

The programs for A174730, there is no canonical definition to state claims against.
-/

/-! ## A174730.P2906655544873778204

`2-A143362(A238550(2*n+5))`
-/

namespace A174730.P2906655544873778204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A143362 (A238550 (2 * n + 5)).toNat

end

end A174730.P2906655544873778204

/-! ## A174730.P15865359740654012058

`A168050(A107231(n)*A271141(n+1))`
-/

namespace A174730.P15865359740654012058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168050 (A107231 n * A271141 (n + 1)).toNat

end

end A174730.P15865359740654012058

/-! ## A174730.P17885891467296363715

`A168050(A107231(n)^A271141(n+1))`
-/

namespace A174730.P17885891467296363715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168050 (SequenceMachineLib.roundAway ((A107231 n : ℚ) ^ (A271141 (n + 1) : ℤ))).toNat

end

end A174730.P17885891467296363715

/-! ## A174730.P17934748993144396837

`A168050(C(A107231(n), A271141(n+1)))`
-/

namespace A174730.P17934748993144396837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168050 (Nat.choose (A107231 n).toNat (A271141 (n + 1)).toNat)

end

end A174730.P17934748993144396837

/-!
# A174731: Triangle T(n, k, q) = (1-q^n)*(1/k)*binomial(n-1, k-1)*binomial(n, k-1) - (1-q^n) + 1, for q = 2, read by rows.

The programs for A174731, there is no canonical definition to state claims against.
-/

/-! ## A174731.P14142959837747083358

`A378829(A144463(n)%A378834(n+5))`
-/

namespace A174731.P14142959837747083358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378829 (Int.tmod (A144463 n) (A378834 (n + 5))).toNat

end

end A174731.P14142959837747083358

/-!
# A174732: Triangle T(n, k, q) = (1-q^n)*(1/k)*binomial(n-1, k-1)*binomial(n, k-1) - (1-q^n) + 1, for q = 3, read by rows.

The programs for A174732, there is no canonical definition to state claims against.
-/

/-! ## A174732.P2460111698097062640

`A174719(comp[∑[n]]^A174699(n))`
-/

namespace A174732.P2460111698097062640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174719 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ (A174699 n : ℤ))).toNat

end

end A174732.P2460111698097062640

/-! ## A174732.P18296485769553228915

`A174719(eq[A000700(n), A112798(n+4)])`
-/

namespace A174732.P18296485769553228915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174719 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A174732.P18296485769553228915

/-! ## A174732.P8064568556167362143

`A174719(lt[A174705(n+2), A174690(3*(n+1))])`
-/

namespace A174732.P8064568556167362143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174705 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174690 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174719 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A174732.P8064568556167362143

/-! ## A174732.P14669935569977367845

`A174719(lt[A120588(n+2), A342982(3*(n+1))])`
-/

namespace A174732.P14669935569977367845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342982 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174719 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A174732.P14669935569977367845

/-!
# A174733: Triangle T(n, k, q) = (1-q^n)*(1/k)*binomial(n-1, k-1)*binomial(n, k-1) - (1-q^n) + 1, for q = 4, read by rows.

The programs for A174733, there is no canonical definition to state claims against.
-/

/-! ## A174733.P15418532934834986077

`A174720(comp[∑[n]]^A174699(n))`
-/

namespace A174733.P15418532934834986077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174720 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ (A174699 n : ℤ))).toNat

end

end A174733.P15418532934834986077

/-! ## A174733.P17320112099151929471

`A174720(eq[floor(n/2), A347609(n)])`
-/

namespace A174733.P17320112099151929471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174720 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A174733.P17320112099151929471

/-! ## A174733.P16278383519316991277

`A174720(A229162(n+3)%A263618(2*n+1))`
-/

namespace A174733.P16278383519316991277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174720 (Int.tmod (A229162 (n + 3)) (A263618 (2 * n + 1))).toNat

end

end A174733.P16278383519316991277

/-! ## A174733.P10819977869344216882

`A174720(A128594(2*(n+2))%A368110(n+3))`
-/

namespace A174733.P10819977869344216882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174720 (Int.tmod (A128594 (2 * (n + 2))) (A368110 (n + 3))).toNat

end

end A174733.P10819977869344216882

/-!
# A174734: Prime numbers n such that 2n-1 and 3n-2 are prime.

The programs for A174734, there is no canonical definition to state claims against.
-/

/-! ## A174734.P806659787131164136

`ceil(A137702(n+1)/2)`
-/

namespace A174734.P806659787131164136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A137702 (n + 1) : ℚ) / 2⌉

end

end A174734.P806659787131164136

/-! ## A174734.P4885642297973114680

`2*A124408(n+1)+1`
-/

namespace A174734.P4885642297973114680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124408 (n + 1) + 1

end

end A174734.P4885642297973114680

/-! ## A174734.P2450567911362182792

`2*A105652(n+1)+3`
-/

namespace A174734.P2450567911362182792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105652 (n + 1) + 3

end

end A174734.P2450567911362182792

/-! ## A174734.P4369564546925348372

`A124408(n+1)+A316789(A316789(n+1))+A124408(n+1)`
-/

namespace A174734.P4369564546925348372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124408 (n + 1) + (A316789 (A316789 (n + 1)).toNat + A124408 (n + 1))

end

end A174734.P4369564546925348372

/-! ## A174734.P15600081835057470043

`p?[A130800(n+1)+1]`
-/

namespace A174734.P15600081835057470043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130800 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174734.P15600081835057470043

/-! ## A174734.P15733325627944797440

`p?[2*A255607(n+1)+1]`
-/

namespace A174734.P15733325627944797440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255607 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174734.P15733325627944797440

/-! ## A174734.P13799995114976158998

`∩[A005382(n+1), A088878(n+1)]`
-/

namespace A174734.P13799995114976158998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174734.P13799995114976158998

/-! ## A174734.P18420884612078427446

`∩[A088878(n+1), A174568(n+1)]`
-/

namespace A174734.P18420884612078427446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174734.P18420884612078427446

/-! ## A174734.P18163561323740373718

`∩[A088878(n+1), A265394(n+1)]`
-/

namespace A174734.P18163561323740373718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174734.P18163561323740373718

/-! ## A174734.P9127891470651771189

`∩[A088878(n+1), A384020(n+1)]`
-/

namespace A174734.P9127891470651771189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174734.P9127891470651771189

/-! ## A174734.P2909169853854062576

`∩[A068080(n+1), A088878(n+1)]`
-/

namespace A174734.P2909169853854062576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174734.P2909169853854062576

/-! ## A174734.P8532055154645551172

`∩[A088878(n+1), A119681(n+1)]`
-/

namespace A174734.P8532055154645551172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174734.P8532055154645551172

/-! ## A174734.P11568991664049017439

`A151800(2*A124408(n+1))`
-/

namespace A174734.P11568991664049017439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * A124408 (n + 1)).toNat

end

end A174734.P11568991664049017439

/-! ## A174734.P3486383711898315070

`A006530((A137702(n+1)+1)/2)`
-/

namespace A174734.P3486383711898315070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A137702 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A174734.P3486383711898315070

/-! ## A174734.P12869326845185242260

`A000265(A124408(n+1)+A124408(n+1)+1)`
-/

namespace A174734.P12869326845185242260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124408 (n + 1) + (A124408 (n + 1) + 1)).toNat

end

end A174734.P12869326845185242260

/-! ## A174734.P11360072675204527321

`A006530(A124408(n+1)+A124408(n+1)+1)`
-/

namespace A174734.P11360072675204527321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124408 (n + 1) + (A124408 (n + 1) + 1)).toNat

end

end A174734.P11360072675204527321

/-! ## A174734.P17485507441882610

`A007913(A124408(n+1)+A124408(n+1)+1)`
-/

namespace A174734.P17485507441882610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A124408 (n + 1) + (A124408 (n + 1) + 1)).toNat

end

end A174734.P17485507441882610

/-! ## A174734.P18233772424653963685

`A020639(A124408(n+1)+A124408(n+1)+1)`
-/

namespace A174734.P18233772424653963685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A124408 (n + 1) + (A124408 (n + 1) + 1)).toNat

end

end A174734.P18233772424653963685

/-! ## A174734.P5078443542135119951

`A020639(A105652(n+1)+A105652(n+1)+3)`
-/

namespace A174734.P5078443542135119951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A105652 (n + 1) + (A105652 (n + 1) + 3)).toNat

end

end A174734.P5078443542135119951

/-! ## A174734.P7688907087481440830

`∩[A088878(n+1), A390099(n+1)]`
-/

namespace A174734.P7688907087481440830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174734.P7688907087481440830

/-!
# A174736: 

The programs for A174736, there is no canonical definition to state claims against.
-/

/-! ## A174736.P13634453253876198914

`floor(a(n-1)²²/2)` with `a(0)=2`
-/

namespace A174736.P13634453253876198914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊((a (n - 1) ^ 2) ^ 2 : ℚ) / 2⌋

end

end A174736.P13634453253876198914

/-!
# A174737: a(n) = a(n-1) - a(n-2), with a(0)=2, a(1)=-1.

The programs for A174737, the canonical program `A174737.P419421080705292389` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174737 has offset 0).

The definition of A174737 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-a(n-2)` (program `A174737.P419421080705292389`, by `A174737.P419421080705292389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174737.P419421080705292389

`a(n-1)-a(n-2)` with `a(0)=2, a(1)=-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174737

/-- `a(n-1)-a(n-2)` -/
def P419421080705292389.Spec : Prop :=
  ∀ n, P419421080705292389.a n = A174737 n

theorem P419421080705292389.correct : P419421080705292389.Spec := by
  intro n
  simp only [A174737]

end A174737

/-!
# A174738: Partial sums of floor(n/7).

The programs for A174738, the canonical program `A174738.P6624758080959227809` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174738 has offset 0).

The definition of A174738 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174738.P6624758080959227809

`round(n*(n-5)/14)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174738

/-- `round(n*(n-5)/14)` -/
def P6624758080959227809.Spec : Prop :=
  ∀ n, P6624758080959227809.a n = A174738 n

theorem P6624758080959227809.correct : P6624758080959227809.Spec := by
  intro n
  simp only [A174738]

end A174738

/-! ## A174738.P12253311373865839820

`a(n-7)+n-6` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0`
-/

namespace A174738.P12253311373865839820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 0] fun n a =>
  a (n - 7) + ((n : ℤ) - 6)

end

end A174738.P12253311373865839820

namespace A174738

/-- `a(n-7)+n-6` -/
def P12253311373865839820.Spec : Prop :=
  ∀ n, P12253311373865839820.a n = A174738 n

end A174738

/-! ## A174738.P58388499574099396

`∑[comp[or(7, n)]]-∑[n]`
-/

namespace A174738.P58388499574099396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A174738.P58388499574099396

namespace A174738

/-- `∑[comp[or(7, n)]]-∑[n]` -/
def P58388499574099396.Spec : Prop :=
  ∀ n, P58388499574099396.a n = A174738 n

end A174738

/-! ## A174738.P290546493495701020

`floor(a(n-1)+n/7)` with `a(0)=0`
-/

namespace A174738.P290546493495701020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / 7⌋

end

end A174738.P290546493495701020

namespace A174738

/-- `floor(a(n-1)+n/7)` -/
def P290546493495701020.Spec : Prop :=
  ∀ n, P290546493495701020.a n = A174738 n

end A174738

/-! ## A174738.P4364552782121019902

`∑[lt[val(n+1, 2), 3]-n]`
-/

namespace A174738.P4364552782121019902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174738.P4364552782121019902

namespace A174738

/-- `∑[lt[val(n+1, 2), 3]-n]` -/
def P4364552782121019902.Spec : Prop :=
  ∀ n, P4364552782121019902.a n = A174738 n

end A174738

/-! ## A174738.P7754864944612734349

`∑[comp[8*n]-C(n+1, n)]`
-/

namespace A174738.P7754864944612734349
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (Nat.choose (n + 1) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174738.P7754864944612734349

namespace A174738

/-- `∑[comp[8*n]-C(n+1, n)]` -/
def P7754864944612734349.Spec : Prop :=
  ∀ n, P7754864944612734349.a n = A174738 n

end A174738

/-! ## A174738.P1131153855846549473

`∑[A132270(n+1)]`
-/

namespace A174738.P1131153855846549473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174738.P1131153855846549473

namespace A174738

/-- `∑[A132270(n+1)]` -/
def P1131153855846549473.Spec : Prop :=
  ∀ n, P1131153855846549473.a n = A174738 n

end A174738

/-! ## A174738.P5232355010646014498

`∑[n-A145569(n)]`
-/

namespace A174738.P5232355010646014498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A145569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174738.P5232355010646014498

namespace A174738

/-- `∑[n-A145569(n)]` -/
def P5232355010646014498.Spec : Prop :=
  ∀ n, P5232355010646014498.a n = A174738 n

end A174738

/-! ## A174738.P14010426373817121670

`A008725(n)-(n+1)`
-/

namespace A174738.P14010426373817121670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008725 n - (n + 1 : ℤ)

end

end A174738.P14010426373817121670

namespace A174738

/-- `A008725(n)-(n+1)` -/
def P14010426373817121670.Spec : Prop :=
  ∀ n, P14010426373817121670.a n = A174738 n

end A174738

/-! ## A174738.P4261538665770568456

`∑[A004777(n+1)-n]`
-/

namespace A174738.P4261538665770568456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004777 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174738.P4261538665770568456

namespace A174738

/-- `∑[A004777(n+1)-n]` -/
def P4261538665770568456.Spec : Prop :=
  ∀ n, P4261538665770568456.a n = A174738 n

end A174738

/-! ## A174738.P18279789935188434774

`(A008814(n)-(n+1))/2`
-/

namespace A174738.P18279789935188434774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008814 n - (n + 1 : ℤ) : ℚ) / 2

end

end A174738.P18279789935188434774

namespace A174738

/-- `(A008814(n)-(n+1))/2` -/
def P18279789935188434774.Spec : Prop :=
  ∀ n, P18279789935188434774.a n = (A174738 n : ℚ)

end A174738

/-! ## A174738.P15828477429953209650

`A011867((2*n)%(n+2))`
-/

namespace A174738.P15828477429953209650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 (2 * n % (n + 2))

end

end A174738.P15828477429953209650

namespace A174738

/-- `A011867((2*n)%(n+2))` -/
def P15828477429953209650.Spec : Prop :=
  ∀ n, P15828477429953209650.a n = A174738 n

end A174738

/-! ## A174738.P6677457206247784684

`∑[A047592(n+1)-(n+1)]`
-/

namespace A174738.P6677457206247784684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174738.P6677457206247784684

namespace A174738

/-- `∑[A047592(n+1)-(n+1)]` -/
def P6677457206247784684.Spec : Prop :=
  ∀ n, P6677457206247784684.a n = A174738 n

end A174738

/-! ## A174738.P12551699667064503352

`∑[comp[8*n]-(n+1)]%A317186(n)`
-/

namespace A174738.P12551699667064503352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A317186 n)

end

end A174738.P12551699667064503352

namespace A174738

/-- `∑[comp[8*n]-(n+1)]%A317186(n)` -/
def P12551699667064503352.Spec : Prop :=
  ∀ n, P12551699667064503352.a n = A174738 n

end A174738

/-! ## A174738.P8423783836054049295

`abs(∑[n-comp[A004277(4*n)]+1]-1)`
-/

namespace A174738.P8423783836054049295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (4 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A174738.P8423783836054049295

namespace A174738

/-- `abs(∑[n-comp[A004277(4*n)]+1]-1)` -/
def P8423783836054049295.Spec : Prop :=
  ∀ n, P8423783836054049295.a n = A174738 n

end A174738

/-! ## A174738.P9901537471611832046

`∑[comp[4*and(n, n+1)]-(n+1)]%A069099(n+1)`
-/

namespace A174738.P9901537471611832046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.land n (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A069099 (n + 1))

end

end A174738.P9901537471611832046

namespace A174738

/-- `∑[comp[4*and(n, n+1)]-(n+1)]%A069099(n+1)` -/
def P9901537471611832046.Spec : Prop :=
  ∀ n, P9901537471611832046.a n = A174738 n

end A174738

/-! ## A174738.P13221356881765025180

`A011867(A289207(n))`
-/

namespace A174738.P13221356881765025180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 (A289207 n).toNat

end

end A174738.P13221356881765025180

namespace A174738

/-- `A011867(A289207(n))` -/
def P13221356881765025180.Spec : Prop :=
  ∀ n, P13221356881765025180.a n = A174738 n

end A174738

/-! ## A174738.P8188733703707953735

`A008814(n)-A008725(n)`
-/

namespace A174738.P8188733703707953735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008814 n - A008725 n

end

end A174738.P8188733703707953735

namespace A174738

/-- `A008814(n)-A008725(n)` -/
def P8188733703707953735.Spec : Prop :=
  ∀ n, P8188733703707953735.a n = A174738 n

end A174738

/-! ## A174738.P13312911265962598031

`∑[n]-A033439(n+1)`
-/

namespace A174738.P13312911265962598031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033439 (n + 1)

end

end A174738.P13312911265962598031

namespace A174738

/-- `∑[n]-A033439(n+1)` -/
def P13312911265962598031.Spec : Prop :=
  ∀ n, P13312911265962598031.a n = A174738 n

end A174738

/-! ## A174738.P17802175775854034261

`A011867(A097950(n+1))`
-/

namespace A174738.P17802175775854034261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 (A097950 (n + 1)).toNat

end

end A174738.P17802175775854034261

namespace A174738

/-- `A011867(A097950(n+1))` -/
def P17802175775854034261.Spec : Prop :=
  ∀ n, P17802175775854034261.a n = A174738 n

end A174738

/-!
# A174739: Triangle read by rows, a partition number generator; A145006 * the diagonalized variant of A000041, (A174712).

The programs for A174739, there is no canonical definition to state claims against.
-/

/-! ## A174739.P17455222086219673459

`A128541(n)-A347579(A242784(3*n+2))`
-/

namespace A174739.P17455222086219673459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128541 n - A347579 (A242784 (3 * n + 2)).toNat

end

end A174739.P17455222086219673459

/-! ## A174739.P10085202522468244026

`A128541(n)-A122841(A000205(n))`
-/

namespace A174739.P10085202522468244026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128541 n - A122841 (A000205 n).toNat

end

end A174739.P10085202522468244026

/-! ## A174739.P16197679400291980642

`A128541(n)-A045698(A215067(n))`
-/

namespace A174739.P16197679400291980642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128541 n - A045698 (A215067 n).toNat

end

end A174739.P16197679400291980642

/-!
# A174741: a(n) = smallest m > 0 such that there are no primes between p*m and p*(m+1) inclusive where p is the n-th prime.

The programs for A174741, there is no canonical definition to state claims against.
-/

/-! ## A174741.P13159047704067395343

`A110835(p?[comp[n²]])`
-/

namespace A174741.P13159047704067395343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110835 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A174741.P13159047704067395343

/-! ## A174741.P12852869322970938888

`A110835(Δ[A007504(n)])`
-/

namespace A174741.P12852869322970938888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110835 (f1 (n + 1) - f1 n).toNat

end

end A174741.P12852869322970938888

/-! ## A174741.P15599253241850211384

`A110835(A000040(n+1))`
-/

namespace A174741.P15599253241850211384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110835 (A000040 (n + 1)).toNat

end

end A174741.P15599253241850211384

/-! ## A174741.P10493726555219981441

`A110835(A049551(n+1))`
-/

namespace A174741.P10493726555219981441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110835 (A049551 (n + 1)).toNat

end

end A174741.P10493726555219981441

/-! ## A174741.P6571764450591022469

`A110835(A057448(n+1))`
-/

namespace A174741.P6571764450591022469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110835 (A057448 (n + 1)).toNat

end

end A174741.P6571764450591022469

/-!
# A174742: Smallest of three consecutive primes whose sum is not a prime.

The programs for A174742, there is no canonical definition to state claims against.
-/

/-! ## A174742.P528245591809543408

`A001748(comp[A072225(n+1)-1]+1)/3`
-/

namespace A174742.P528245591809543408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072225 (n + 1) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) : ℚ) / 3

end

end A174742.P528245591809543408

/-! ## A174742.P13833207300396868176

`A000040(A260907(n+1))`
-/

namespace A174742.P13833207300396868176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A260907 (n + 1)).toNat

end

end A174742.P13833207300396868176

/-! ## A174742.P3925917368909737996

`A000040(comp[A072225(n+1)-1]+1)`
-/

namespace A174742.P3925917368909737996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072225 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A174742.P3925917368909737996

/-! ## A174742.P13651106538661191209

`A000040(comp[eq[2, A248498(n+1)]]+1)`
-/

namespace A174742.P13651106538661191209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248498 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A174742.P13651106538661191209

/-! ## A174742.P1374132706275228574

`A006093(comp[A072225(n+1)-1]+1)+1`
-/

namespace A174742.P1374132706275228574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072225 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A174742.P1374132706275228574

/-! ## A174742.P13403429996209676486

`A008864(comp[A072225(n+1)-1]+1)-1`
-/

namespace A174742.P13403429996209676486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072225 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) - 1

end

end A174742.P13403429996209676486

/-! ## A174742.P16958929357674881523

`∑{d}[comp[A072225(n+1)-1]+1, A007444(#)]`
-/

namespace A174742.P16958929357674881523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072225 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007444 d

end

end A174742.P16958929357674881523

/-! ## A174742.P10963410618985669855

`p?[A010051(A034961(n+1))+A000040(n+1)]`
-/

namespace A174742.P10963410618985669855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A034961 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174742.P10963410618985669855

/-! ## A174742.P7032433343254710078

`p?[A010051(A034961(n+1))+A008578(n+2)]`
-/

namespace A174742.P7032433343254710078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A034961 (n + 1)).toNat + A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174742.P7032433343254710078

/-!
# A174743: Partial sums of A076766.

The programs for A174743, there is no canonical definition to state claims against.
-/

/-! ## A174743.P4626284941978111850

`∑[A076766(n)]`
-/

namespace A174743.P4626284941978111850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174743.P4626284941978111850

/-! ## A174743.P9312243425016877127

`∑[A250003(n)+A000079(n)]`
-/

namespace A174743.P9312243425016877127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250003 n + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174743.P9312243425016877127

/-! ## A174743.P10721784250868710201

`∑[A250003(n)+∑[A011782(n)]]`
-/

namespace A174743.P10721784250868710201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250003 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174743.P10721784250868710201

/-! ## A174743.P10780735471237630795

`∑[A250003(n)+A013620(∑[n])]`
-/

namespace A174743.P10780735471237630795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250003 n + A013620 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174743.P10780735471237630795

/-! ## A174743.P4305778538672178033

`a(n-1)-1+A076766(n)+A057427(n)` with `a(0)=1`
-/

namespace A174743.P4305778538672178033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 1 + (A076766 n + A057427 n)

end

end A174743.P4305778538672178033

/-!
# A174744: (2^p-1)^2 where p is prime.

The programs for A174744, there is no canonical definition to state claims against.
-/

/-! ## A174744.P17997544758017099457

`(1-2^p?[comp[n²]])²`
-/

namespace A174744.P17997544758017099457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)) ^ 2

end

end A174744.P17997544758017099457

/-! ## A174744.P3290588383299184986

`(1-2^eq[1, ∑{e}[n, #]])²`
-/

namespace A174744.P3290588383299184986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)) ^ 2

end

end A174744.P3290588383299184986

/-! ## A174744.P17052298276217217462

`(2^p?[abs(xor(n, -2))]-1)²`
-/

namespace A174744.P17052298276217217462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ) - 1) ^ 2

end

end A174744.P17052298276217217462

/-! ## A174744.P15378160424026591501

`Δ[∑[record[∑{p}[n, 2^#]]]-n]²`
-/

namespace A174744.P15378160424026591501
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), 2 ^ p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A174744.P15378160424026591501

/-! ## A174744.P17138393910583664084

`record[2^∑{p}[n+2, #]-1]^2`
-/

namespace A174744.P17138393910583664084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), p) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A174744.P17138393910583664084

/-!
# A174745: y-values in the solution to x^2 - 21*y^2 = 1.

The programs for A174745, the canonical program `A174745.P6142086113825184888` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174745 has offset 1).

The definition of A174745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174745.P6142086113825184888

`110*a(n-1)-a(n-2)` with `a(0)=0, a(1)=12`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174745

/-- `110*a(n-1)-a(n-2)` -/
def P6142086113825184888.Spec : Prop :=
  ∀ n, P6142086113825184888.a n = A174745 (n + 1)

theorem P6142086113825184888.correct : P6142086113825184888.Spec := by
  intro n
  simp only [A174745, Nat.add_sub_cancel]

end A174745

/-! ## A174745.P4326031460113641380

`A004254(3*n)/2`
-/

namespace A174745.P4326031460113641380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004254 (3 * n) : ℚ) / 2

end

end A174745.P4326031460113641380

namespace A174745

/-- `A004254(3*n)/2` -/
def P4326031460113641380.Spec : Prop :=
  ∀ n, P4326031460113641380.a n = (A174745 (n + 1) : ℚ)

end A174745

/-! ## A174745.P17054298860168916280

`floor(A004254(A008486(n))/2)`
-/

namespace A174745.P17054298860168916280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004254 (A008486 n).toNat : ℚ) / 2⌋

end

end A174745.P17054298860168916280

namespace A174745

/-- `floor(A004254(A008486(n))/2)` -/
def P17054298860168916280.Spec : Prop :=
  ∀ n, P17054298860168916280.a n = A174745 (n + 1)

end A174745

/-! ## A174745.P11991434662341563645

`floor(A004254(A008585(n))/2)`
-/

namespace A174745.P11991434662341563645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004254 (A008585 n).toNat : ℚ) / 2⌋

end

end A174745.P11991434662341563645

namespace A174745

/-- `floor(A004254(A008585(n))/2)` -/
def P11991434662341563645.Spec : Prop :=
  ∀ n, P11991434662341563645.a n = A174745 (n + 1)

end A174745

/-! ## A174745.P2278737434027448829

`A025439(n)+A004254(A008585(n))/2`
-/

namespace A174745.P2278737434027448829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025439 n : ℚ) + (A004254 (A008585 n).toNat : ℚ) / 2

end

end A174745.P2278737434027448829

namespace A174745

/-- `A025439(n)+A004254(A008585(n))/2` -/
def P2278737434027448829.Spec : Prop :=
  ∀ n, P2278737434027448829.a n = (A174745 (n + 1) : ℚ)

end A174745

/-! ## A174745.P17629515580714472650

`char[A017501(n)]+A004254(A008585(n))/2`
-/

namespace A174745.P17629515580714472650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017501 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (A004254 (A008585 n).toNat : ℚ) / 2

end

end A174745.P17629515580714472650

namespace A174745

/-- `char[A017501(n)]+A004254(A008585(n))/2` -/
def P17629515580714472650.Spec : Prop :=
  ∀ n, P17629515580714472650.a n = (A174745 (n + 1) : ℚ)

end A174745

/-! ## A174745.P14853877148286744161

`A000007(n+1)+A004254(A008585(n))/2`
-/

namespace A174745.P14853877148286744161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℚ) + (A004254 (A008585 n).toNat : ℚ) / 2

end

end A174745.P14853877148286744161

namespace A174745

/-- `A000007(n+1)+A004254(A008585(n))/2` -/
def P14853877148286744161.Spec : Prop :=
  ∀ n, P14853877148286744161.a n = (A174745 (n + 1) : ℚ)

end A174745

/-!
# A174747: x-values in the solution to x^2-37*y^2=1.

The programs for A174747, the canonical program `A174747.P12083664772257631686` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174747 has offset 1).

The definition of A174747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174747.P12083664772257631686

`146*a(n-1)-a(n-2)` with `a(0)=1, a(1)=73`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174747

/-- `146*a(n-1)-a(n-2)` -/
def P12083664772257631686.Spec : Prop :=
  ∀ n, P12083664772257631686.a n = A174747 (n + 1)

theorem P12083664772257631686.correct : P12083664772257631686.Spec := by
  intro n
  simp only [A174747, Nat.add_sub_cancel]

end A174747

/-! ## A174747.P5535303472641788822

`A089926(2*n)`
-/

namespace A174747.P5535303472641788822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089926 (2 * n)

end

end A174747.P5535303472641788822

namespace A174747

/-- `A089926(2*n)` -/
def P5535303472641788822.Spec : Prop :=
  ∀ n, P5535303472641788822.a n = A174747 (n + 1)

end A174747

/-! ## A174747.P4506664178478892547

`A086928(2*n)/2`
-/

namespace A174747.P4506664178478892547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086928 (2 * n) : ℚ) / 2

end

end A174747.P4506664178478892547

namespace A174747

/-- `A086928(2*n)/2` -/
def P4506664178478892547.Spec : Prop :=
  ∀ n, P4506664178478892547.a n = (A174747 (n + 1) : ℚ)

end A174747

/-! ## A174747.P12221622078417459287

`or(1, A089926(A005843(n)))`
-/

namespace A174747.P12221622078417459287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089926 (A005843 n).toNat)

end

end A174747.P12221622078417459287

namespace A174747

/-- `or(1, A089926(A005843(n)))` -/
def P12221622078417459287.Spec : Prop :=
  ∀ n, P12221622078417459287.a n = A174747 (n + 1)

end A174747

/-! ## A174747.P12645546290813590423

`record[gcd(A035363(n), A041060(n))]`
-/

namespace A174747.P12645546290813590423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 n) (A041060 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174747.P12645546290813590423

namespace A174747

/-- `record[gcd(A035363(n), A041060(n))]` -/
def P12645546290813590423.Spec : Prop :=
  ∀ n, (P12645546290813590423.a n : ℤ) = A174747 (n + 1)

end A174747

/-!
# A174748: x-values in the solution to x^2-33*y^2=1.

The programs for A174748, the canonical program `A174748.P7901896401017748335` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174748 has offset 1).

The definition of A174748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174748.P7901896401017748335

`46*a(n-1)-a(n-2)` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174748

/-- `46*a(n-1)-a(n-2)` -/
def P7901896401017748335.Spec : Prop :=
  ∀ n, P7901896401017748335.a n = A174748 (n + 1)

theorem P7901896401017748335.correct : P7901896401017748335.Spec := by
  intro n
  simp only [A174748, Nat.add_sub_cancel]

end A174748

/-! ## A174748.P12643833436418912531

`record[A042010(n)^(n%2)]`
-/

namespace A174748.P12643833436418912531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042010 n ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174748.P12643833436418912531

namespace A174748

/-- `record[A042010(n)^(n%2)]` -/
def P12643833436418912531.Spec : Prop :=
  ∀ n, P12643833436418912531.a n = A174748 (n + 1)

end A174748

/-! ## A174748.P7188369808185710587

`record[A041240(n)^A062157(n)]`
-/

namespace A174748.P7188369808185710587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041240 n : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174748.P7188369808185710587

namespace A174748

/-- `record[A041240(n)^A062157(n)]` -/
def P7188369808185710587.Spec : Prop :=
  ∀ n, P7188369808185710587.a n = (A174748 (n + 1) : ℚ)

end A174748

/-! ## A174748.P3730191296020164923

`record[gcd(A007814(n+2), A041054(2*n+1))]`
-/

namespace A174748.P3730191296020164923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 2)) (A041054 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174748.P3730191296020164923

namespace A174748

/-- `record[gcd(A007814(n+2), A041054(2*n+1))]` -/
def P3730191296020164923.Spec : Prop :=
  ∀ n, (P3730191296020164923.a n : ℤ) = A174748 (n + 1)

end A174748

/-! ## A174748.P17861840306362827105

`A041240(2*n+1)-A042010(2*n)`
-/

namespace A174748.P17861840306362827105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041240 (2 * n + 1) - A042010 (2 * n)

end

end A174748.P17861840306362827105

namespace A174748

/-- `A041240(2*n+1)-A042010(2*n)` -/
def P17861840306362827105.Spec : Prop :=
  ∀ n, P17861840306362827105.a n = A174748 (n + 1)

end A174748

/-! ## A174748.P9526013331867639869

`A042010(2*n+1)-A042010(2*n)`
-/

namespace A174748.P9526013331867639869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042010 (2 * n + 1) - A042010 (2 * n)

end

end A174748.P9526013331867639869

namespace A174748

/-- `A042010(2*n+1)-A042010(2*n)` -/
def P9526013331867639869.Spec : Prop :=
  ∀ n, P9526013331867639869.a n = A174748 (n + 1)

end A174748

/-! ## A174748.P7023277818718104266

`A041240(2*n+1)-2*A041240(2*n)`
-/

namespace A174748.P7023277818718104266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041240 (2 * n + 1) - 2 * A041240 (2 * n)

end

end A174748.P7023277818718104266

namespace A174748

/-- `A041240(2*n+1)-2*A041240(2*n)` -/
def P7023277818718104266.Spec : Prop :=
  ∀ n, P7023277818718104266.a n = A174748 (n + 1)

end A174748

/-!
# A174749: x-values in the solution to x^2-34*y^2=1.

The programs for A174749, the canonical program `A174749.P18211800844004253760` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174749 has offset 1).

The definition of A174749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174749.P18211800844004253760

`70*a(n-1)-a(n-2)` with `a(0)=1, a(1)=35`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174749

/-- `70*a(n-1)-a(n-2)` -/
def P18211800844004253760.Spec : Prop :=
  ∀ n, P18211800844004253760.a n = A174749 (n + 1)

theorem P18211800844004253760.correct : P18211800844004253760.Spec := by
  intro n
  simp only [A174749, Nat.add_sub_cancel]

end A174749

/-! ## A174749.P16227512335378449695

`record[A041576(n)^A088705(n)]`
-/

namespace A174749.P16227512335378449695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041576 n : ℚ) ^ (A088705 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174749.P16227512335378449695

namespace A174749

/-- `record[A041576(n)^A088705(n)]` -/
def P16227512335378449695.Spec : Prop :=
  ∀ n, P16227512335378449695.a n = (A174749 (n + 1) : ℚ)

end A174749

/-! ## A174749.P17628395997013708985

`record[and(A033999(n), A041576(n))]`
-/

namespace A174749.P17628395997013708985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A041576 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174749.P17628395997013708985

namespace A174749

/-- `record[and(A033999(n), A041576(n))]` -/
def P17628395997013708985.Spec : Prop :=
  ∀ n, P17628395997013708985.a n = A174749 (n + 1)

end A174749

/-! ## A174749.P4248332949862905032

`record[and(A041248(n), A102560(n))]`
-/

namespace A174749.P4248332949862905032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041248 n) (A102560 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174749.P4248332949862905032

namespace A174749

/-- `record[and(A041248(n), A102560(n))]` -/
def P4248332949862905032.Spec : Prop :=
  ∀ n, P4248332949862905032.a n = A174749 (n + 1)

end A174749

/-! ## A174749.P15945236999002007932

`A041576(2*n+1)-2*A041576(2*n)`
-/

namespace A174749.P15945236999002007932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041576 (2 * n + 1) - 2 * A041576 (2 * n)

end

end A174749.P15945236999002007932

namespace A174749

/-- `A041576(2*n+1)-2*A041576(2*n)` -/
def P15945236999002007932.Spec : Prop :=
  ∀ n, P15945236999002007932.a n = A174749 (n + 1)

end A174749

/-!
# A174750: x-values in the solution to x^2-38*y^2=1.

The programs for A174750, the canonical program `A174750.P16060709308938384315` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174750 has offset 1).

The definition of A174750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174750.P16060709308938384315

`74*a(n-1)-a(n-2)` with `a(0)=1, a(1)=37`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174750

/-- `74*a(n-1)-a(n-2)` -/
def P16060709308938384315.Spec : Prop :=
  ∀ n, P16060709308938384315.a n = A174750 (n + 1)

theorem P16060709308938384315.correct : P16060709308938384315.Spec := by
  intro n
  simp only [A174750, Nat.add_sub_cancel]

end A174750

/-! ## A174750.P15397795705525257254

`(1/(37+6*sqrt(38))^n+(37+6*sqrt(38))^n)/2`
-/

namespace A174750.P15397795705525257254
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 / (37 + 6 * Real.sqrt (38 : ℝ)) ^ n + (37 + 6 * Real.sqrt (38 : ℝ)) ^ n) / 2

end

end A174750.P15397795705525257254

namespace A174750

/-- `(1/(37+6*sqrt(38))^n+(37+6*sqrt(38))^n)/2` -/
def P15397795705525257254.Spec : Prop :=
  ∀ n, P15397795705525257254.a n = (A174750 (n + 1) : ℝ)

end A174750

/-! ## A174750.P7355586636158406552

`record[A041278(n)^(n%2)]`
-/

namespace A174750.P7355586636158406552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041278 n ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174750.P7355586636158406552

namespace A174750

/-- `record[A041278(n)^(n%2)]` -/
def P7355586636158406552.Spec : Prop :=
  ∀ n, P7355586636158406552.a n = A174750 (n + 1)

end A174750

/-! ## A174750.P477026915215960383

`record[A041646(n)^and(1, n)]`
-/

namespace A174750.P477026915215960383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041646 n ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174750.P477026915215960383

namespace A174750

/-- `record[A041646(n)^and(1, n)]` -/
def P477026915215960383.Spec : Prop :=
  ∀ n, P477026915215960383.a n = A174750 (n + 1)

end A174750

/-! ## A174750.P5538819807754019579

`record[gcd(A035363(n), A041646(n))]`
-/

namespace A174750.P5538819807754019579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 n) (A041646 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174750.P5538819807754019579

namespace A174750

/-- `record[gcd(A035363(n), A041646(n))]` -/
def P5538819807754019579.Spec : Prop :=
  ∀ n, (P5538819807754019579.a n : ℤ) = A174750 (n + 1)

end A174750

/-! ## A174750.P13472059126580503121

`record[gcd(A041062(n), A079977(n))]`
-/

namespace A174750.P13472059126580503121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041062 n) (A079977 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174750.P13472059126580503121

namespace A174750

/-- `record[gcd(A041062(n), A079977(n))]` -/
def P13472059126580503121.Spec : Prop :=
  ∀ n, (P13472059126580503121.a n : ℤ) = A174750 (n + 1)

end A174750

/-! ## A174750.P16549098301394198221

`A041646(2*n+1)-2*A041646(2*n)`
-/

namespace A174750.P16549098301394198221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041646 (2 * n + 1) - 2 * A041646 (2 * n)

end

end A174750.P16549098301394198221

namespace A174750

/-- `A041646(2*n+1)-2*A041646(2*n)` -/
def P16549098301394198221.Spec : Prop :=
  ∀ n, P16549098301394198221.a n = A174750 (n + 1)

end A174750

/-!
# A174751: x-values in the solution to x^2-39*y^2=1.

The programs for A174751, the canonical program `A174751.P3234067516293193383` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174751 has offset 1).

The definition of A174751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174751.P3234067516293193383

`50*a(n-1)-a(n-2)` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174751

/-- `50*a(n-1)-a(n-2)` -/
def P3234067516293193383.Spec : Prop :=
  ∀ n, P3234067516293193383.a n = A174751 (n + 1)

theorem P3234067516293193383.correct : P3234067516293193383.Spec := by
  intro n
  simp only [A174751, Nat.add_sub_cancel]

end A174751

/-! ## A174751.P1064199654192246768

`record[A041286(n)^(n%2)]`
-/

namespace A174751.P1064199654192246768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041286 n ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174751.P1064199654192246768

namespace A174751

/-- `record[A041286(n)^(n%2)]` -/
def P1064199654192246768.Spec : Prop :=
  ∀ n, P1064199654192246768.a n = A174751 (n + 1)

end A174751

/-! ## A174751.P11528149247113110306

`record[A041286(n)^A062157(n)]`
-/

namespace A174751.P11528149247113110306
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041286 n : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174751.P11528149247113110306

namespace A174751

/-- `record[A041286(n)^A062157(n)]` -/
def P11528149247113110306.Spec : Prop :=
  ∀ n, P11528149247113110306.a n = (A174751 (n + 1) : ℚ)

end A174751

/-! ## A174751.P11130718857593666436

`record[gcd(A027656(n), A041286(n))]`
-/

namespace A174751.P11130718857593666436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027656 n) (A041286 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174751.P11130718857593666436

namespace A174751

/-- `record[gcd(A027656(n), A041286(n))]` -/
def P11130718857593666436.Spec : Prop :=
  ∀ n, (P11130718857593666436.a n : ℤ) = A174751 (n + 1)

end A174751

/-! ## A174751.P16650352762746893289

`A042198(2*n+1)-A042198(2*n)`
-/

namespace A174751.P16650352762746893289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042198 (2 * n + 1) - A042198 (2 * n)

end

end A174751.P16650352762746893289

namespace A174751

/-- `A042198(2*n+1)-A042198(2*n)` -/
def P16650352762746893289.Spec : Prop :=
  ∀ n, P16650352762746893289.a n = A174751 (n + 1)

end A174751

/-! ## A174751.P4471880779383582378

`A041286(2*n+1)-2*A041286(2*n)`
-/

namespace A174751.P4471880779383582378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041286 (2 * n + 1) - 2 * A041286 (2 * n)

end

end A174751.P4471880779383582378

namespace A174751

/-- `A041286(2*n+1)-2*A041286(2*n)` -/
def P4471880779383582378.Spec : Prop :=
  ∀ n, P4471880779383582378.a n = A174751 (n + 1)

end A174751

/-!
# A174752: x-values in the solution to x^2-41*y^2=1.

The programs for A174752, there is no canonical definition to state claims against.
-/

/-! ## A174752.P9802843527469208629

`record[gcd(A041068(3*n+2), A167301(n+1))]`
-/

namespace A174752.P9802843527469208629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041068 (3 * n + 2)) (A167301 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174752.P9802843527469208629

/-!
# A174755: x-values in the solution to x^2-47*y^2=1.

The programs for A174755, the canonical program `A174755.P9125300759147929985` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174755 has offset 1).

The definition of A174755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174755.P9125300759147929985

`96*a(n-1)-a(n-2)` with `a(0)=1, a(1)=48`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174755

/-- `96*a(n-1)-a(n-2)` -/
def P9125300759147929985.Spec : Prop :=
  ∀ n, P9125300759147929985.a n = A174755 (n + 1)

theorem P9125300759147929985.correct : P9125300759147929985.Spec := by
  intro n
  simp only [A174755, Nat.add_sub_cancel]

end A174755

/-! ## A174755.P18262846502628982280

`record[gcd(A041080(n), A349344(n+1))]`
-/

namespace A174755.P18262846502628982280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041080 n) (A349344 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174755.P18262846502628982280

namespace A174755

/-- `record[gcd(A041080(n), A349344(n+1))]` -/
def P18262846502628982280.Spec : Prop :=
  ∀ n, (P18262846502628982280.a n : ℤ) = A174755 (n + 1)

end A174755

/-! ## A174755.P7247097834207774466

`floor((A257780(3*n+1)/A257780(n+1)+1)/2)`
-/

namespace A174755.P7247097834207774466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A257780 (3 * n + 1) : ℚ) / (A257780 (n + 1) : ℚ) + 1) / 2⌋

end

end A174755.P7247097834207774466

namespace A174755

/-- `floor((A257780(3*n+1)/A257780(n+1)+1)/2)` -/
def P7247097834207774466.Spec : Prop :=
  ∀ n, P7247097834207774466.a n = A174755 (n + 1)

end A174755

/-! ## A174755.P10860251955625353616

`A041080(abs(1-4*n))%A041060(3*n)`
-/

namespace A174755.P10860251955625353616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041080 |1 - (4 * n : ℤ)|.toNat) (A041060 (3 * n))

end

end A174755.P10860251955625353616

namespace A174755

/-- `A041080(abs(1-4*n))%A041060(3*n)` -/
def P10860251955625353616.Spec : Prop :=
  ∀ n, P10860251955625353616.a n = A174755 (n + 1)

end A174755

/-!
# A174756: x-values in the solution to x^2-51*y^2=1.

The programs for A174756, there is no canonical definition to state claims against.
-/

/-! ## A174756.P1188281381476871646

`record[A041086(n)^A062157(n)]`
-/

namespace A174756.P1188281381476871646
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041086 n : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174756.P1188281381476871646

/-! ## A174756.P17141094615544096626

`record[A041086(n)^A088705(n)]`
-/

namespace A174756.P17141094615544096626
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041086 n : ℚ) ^ (A088705 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174756.P17141094615544096626

/-! ## A174756.P13460298843984685558

`record[gcd(A041086(n), A077896(n))]`
-/

namespace A174756.P13460298843984685558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041086 n) (A077896 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174756.P13460298843984685558

/-! ## A174756.P2152107952223596094

`record[and(A033999(n), A041086(n))]`
-/

namespace A174756.P2152107952223596094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A041086 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174756.P2152107952223596094

/-! ## A174756.P3858057730914311815

`A041086(2*n+1)%A041086(2*n)`
-/

namespace A174756.P3858057730914311815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041086 (2 * n + 1)) (A041086 (2 * n))

end

end A174756.P3858057730914311815

/-!
# A174757: 

The programs for A174757, there is no canonical definition to state claims against.
-/

/-! ## A174757.P6007848996334036472

`A099368(3*n)/2`
-/

namespace A174757.P6007848996334036472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099368 (3 * n) : ℚ) / 2

end

end A174757.P6007848996334036472

/-! ## A174757.P7777445048219627982

`A086902(A008588(n))/2`
-/

namespace A174757.P7777445048219627982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086902 (A008588 n).toNat : ℚ) / 2

end

end A174757.P7777445048219627982

/-!
# A174758: x-values in the solution to x^2-55*y^2=1.

The programs for A174758, the canonical program `A174758.P6866600869382895043` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174758 has offset 1).

The definition of A174758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174758.P6866600869382895043

`178*a(n-1)-a(n-2)` with `a(0)=1, a(1)=89`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174758

/-- `178*a(n-1)-a(n-2)` -/
def P6866600869382895043.Spec : Prop :=
  ∀ n, P6866600869382895043.a n = A174758 (n + 1)

theorem P6866600869382895043.correct : P6866600869382895043.Spec := by
  intro n
  simp only [A174758, Nat.add_sub_cancel]

end A174758

/-! ## A174758.P16196938230891783992

`record[A041944(n)^A062157(n)]`
-/

namespace A174758.P16196938230891783992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041944 n : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174758.P16196938230891783992

namespace A174758

/-- `record[A041944(n)^A062157(n)]` -/
def P16196938230891783992.Spec : Prop :=
  ∀ n, P16196938230891783992.a n = (A174758 (n + 1) : ℚ)

end A174758

/-! ## A174758.P9332534066004343802

`record[gcd(A041094(n), A110514(n))]`
-/

namespace A174758.P9332534066004343802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041094 n) (A110514 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174758.P9332534066004343802

namespace A174758

/-- `record[gcd(A041094(n), A110514(n))]` -/
def P9332534066004343802.Spec : Prop :=
  ∀ n, (P9332534066004343802.a n : ℤ) = A174758 (n + 1)

end A174758

/-! ## A174758.P10259299734554090485

`record[gcd(A041944(n), A126120(n))]`
-/

namespace A174758.P10259299734554090485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041944 n) (A126120 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174758.P10259299734554090485

namespace A174758

/-- `record[gcd(A041944(n), A126120(n))]` -/
def P10259299734554090485.Spec : Prop :=
  ∀ n, (P10259299734554090485.a n : ℤ) = A174758 (n + 1)

end A174758

/-! ## A174758.P8360386633496259214

`record[A041094(n)^A056594(n+1)]`
-/

namespace A174758.P8360386633496259214
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041094 n : ℚ) ^ (A056594 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174758.P8360386633496259214

namespace A174758

/-- `record[A041094(n)^A056594(n+1)]` -/
def P8360386633496259214.Spec : Prop :=
  ∀ n, P8360386633496259214.a n = (A174758 (n + 1) : ℚ)

end A174758

/-!
# A174759: x-values in the solution to x^2-57*y^2=1.

The programs for A174759, the canonical program `A174759.P9409347579527373802` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174759 has offset 1).

The definition of A174759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174759.P9409347579527373802

`302*a(n-1)-a(n-2)` with `a(0)=1, a(1)=151`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174759

/-- `302*a(n-1)-a(n-2)` -/
def P9409347579527373802.Spec : Prop :=
  ∀ n, P9409347579527373802.a n = A174759 (n + 1)

theorem P9409347579527373802.correct : P9409347579527373802.Spec := by
  intro n
  simp only [A174759, Nat.add_sub_cancel]

end A174759

/-! ## A174759.P14832325727796506542

`record[gcd(A035363(n), A042762(n))]`
-/

namespace A174759.P14832325727796506542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 n) (A042762 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174759.P14832325727796506542

namespace A174759

/-- `record[gcd(A035363(n), A042762(n))]` -/
def P14832325727796506542.Spec : Prop :=
  ∀ n, (P14832325727796506542.a n : ℤ) = A174759 (n + 1)

end A174759

/-! ## A174759.P14453302216837624144

`record[gcd(A041424(n), A287468(n))]`
-/

namespace A174759.P14453302216837624144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041424 n) (A287468 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174759.P14453302216837624144

namespace A174759

/-- `record[gcd(A041424(n), A287468(n))]` -/
def P14453302216837624144.Spec : Prop :=
  ∀ n, (P14453302216837624144.a n : ℤ) = A174759 (n + 1)

end A174759

/-! ## A174759.P4961563576513938964

`record[and(A033999(n), A041424(n))]`
-/

namespace A174759.P4961563576513938964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A041424 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174759.P4961563576513938964

namespace A174759

/-- `record[and(A033999(n), A041424(n))]` -/
def P4961563576513938964.Spec : Prop :=
  ∀ n, P4961563576513938964.a n = A174759 (n + 1)

end A174759

/-! ## A174759.P15053225922808065628

`gcd(A041424(A004273(n)), A151933(n))`
-/

namespace A174759.P15053225922808065628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041424 (A004273 n).toNat) (A151933 n)

end

end A174759.P15053225922808065628

namespace A174759

/-- `gcd(A041424(A004273(n)), A151933(n))` -/
def P15053225922808065628.Spec : Prop :=
  ∀ n, (P15053225922808065628.a n : ℤ) = A174759 (n + 1)

end A174759

/-!
# A174761: x-values in the solution to x^2-59*y^2=1.

The programs for A174761, there is no canonical definition to state claims against.
-/

/-! ## A174761.P18282536237195410739

`record[and(A033999(n), A042014(n))]`
-/

namespace A174761.P18282536237195410739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A042014 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174761.P18282536237195410739

/-!
# A174763: x-values in the solution to x^2-62*y^2=1.

The programs for A174763, the canonical program `A174763.P1759232315204371411` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174763 has offset 1).

The definition of A174763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174763.P1759232315204371411

`126*a(n-1)-a(n-2)` with `a(0)=1, a(1)=63`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174763

/-- `126*a(n-1)-a(n-2)` -/
def P1759232315204371411.Spec : Prop :=
  ∀ n, P1759232315204371411.a n = A174763 (n + 1)

theorem P1759232315204371411.correct : P1759232315204371411.Spec := by
  intro n
  simp only [A174763, Nat.add_sub_cancel]

end A174763

/-! ## A174763.P12167827982127877087

`record[gcd(A042920(n), A077896(n))]`
-/

namespace A174763.P12167827982127877087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A042920 n) (A077896 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174763.P12167827982127877087

namespace A174763

/-- `record[gcd(A042920(n), A077896(n))]` -/
def P12167827982127877087.Spec : Prop :=
  ∀ n, (P12167827982127877087.a n : ℤ) = A174763 (n + 1)

end A174763

/-! ## A174763.P17191327883506644667

`record[gcd(A041108(n), A110514(n))]`
-/

namespace A174763.P17191327883506644667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041108 n) (A110514 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174763.P17191327883506644667

namespace A174763

/-- `record[gcd(A041108(n), A110514(n))]` -/
def P17191327883506644667.Spec : Prop :=
  ∀ n, (P17191327883506644667.a n : ℤ) = A174763 (n + 1)

end A174763

/-! ## A174763.P16843205475549993834

`record[and(A033999(n), A042920(n))]`
-/

namespace A174763.P16843205475549993834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A042920 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174763.P16843205475549993834

namespace A174763

/-- `record[and(A033999(n), A042920(n))]` -/
def P16843205475549993834.Spec : Prop :=
  ∀ n, P16843205475549993834.a n = A174763 (n + 1)

end A174763

/-! ## A174763.P11988020343249550668

`A041464(4*n+1)-A041464(4*n)`
-/

namespace A174763.P11988020343249550668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041464 (4 * n + 1) - A041464 (4 * n)

end

end A174763.P11988020343249550668

namespace A174763

/-- `A041464(4*n+1)-A041464(4*n)` -/
def P11988020343249550668.Spec : Prop :=
  ∀ n, P11988020343249550668.a n = A174763 (n + 1)

end A174763

/-!
# A174764: Sum of the numerators for computing the second moment of the probability mass function (PMF) of the number of 2-cycles in the involutions on n elements (A000085) assuming the involutions are all equally likely.

The programs for A174764, there is no canonical definition to state claims against.
-/

/-! ## A174764.P3571205117951935079

`A098522(A037442(n+1))`
-/

namespace A174764.P3571205117951935079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098522 (A037442 (n + 1)).toNat

end

end A174764.P3571205117951935079

/-! ## A174764.P14392172794893985584

`A098522(A065666(n+1))`
-/

namespace A174764.P14392172794893985584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098522 (A065666 (n + 1)).toNat

end

end A174764.P14392172794893985584

/-! ## A174764.P6118449849134732870

`A098522(A073789(n+1))`
-/

namespace A174764.P6118449849134732870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098522 (A073789 (n + 1)).toNat

end

end A174764.P6118449849134732870

/-!
# A174765: y-values in the solution to x^2 - 19*y^2 = 1.

The programs for A174765, the canonical program `A174765.P15131014912604492343` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174765 has offset 1).

The definition of A174765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174765.P15131014912604492343

`340*a(n-1)-a(n-2)` with `a(0)=0, a(1)=39`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174765

/-- `340*a(n-1)-a(n-2)` -/
def P15131014912604492343.Spec : Prop :=
  ∀ n, P15131014912604492343.a n = A174765 (n + 1)

theorem P15131014912604492343.correct : P15131014912604492343.Spec := by
  intro n
  simp only [A174765, Nat.add_sub_cancel]

end A174765

/-! ## A174765.P11089105688065938043

`A167820(n)/9`
-/

namespace A174765.P11089105688065938043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167820 n : ℚ) / 9

end

end A174765.P11089105688065938043

namespace A174765

/-- `A167820(n)/9` -/
def P11089105688065938043.Spec : Prop :=
  ∀ n, P11089105688065938043.a n = (A174765 (n + 1) : ℚ)

end A174765

/-! ## A174765.P1788574911864947262

`A167709(5*n)/9`
-/

namespace A174765.P1788574911864947262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167709 (5 * n) : ℚ) / 9

end

end A174765.P1788574911864947262

namespace A174765

/-- `A167709(5*n)/9` -/
def P1788574911864947262.Spec : Prop :=
  ∀ n, P1788574911864947262.a n = (A174765 (n + 1) : ℚ)

end A174765

/-! ## A174765.P9819705287542449737

`record[and(A041029(n), A134667(n))]`
-/

namespace A174765.P9819705287542449737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041029 n) (A134667 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174765.P9819705287542449737

namespace A174765

/-- `record[and(A041029(n), A134667(n))]` -/
def P9819705287542449737.Spec : Prop :=
  ∀ n, P9819705287542449737.a n = A174765 (n + 1)

end A174765

/-! ## A174765.P4416256477376305164

`(A167822(n)-A114048(n+1))/10`
-/

namespace A174765.P4416256477376305164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167822 n - A114048 (n + 1) : ℚ) / 10

end

end A174765.P4416256477376305164

namespace A174765

/-- `(A167822(n)-A114048(n+1))/10` -/
def P4416256477376305164.Spec : Prop :=
  ∀ n, P4416256477376305164.a n = (A174765 (n + 1) : ℚ)

end A174765

/-!
# A174766: y-values in the solution to x^2 - 22*y^2 = 1.

The programs for A174766, the canonical program `A174766.P10468374753585295630` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174766 has offset 1).

The definition of A174766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174766.P10468374753585295630

`394*a(n-1)-a(n-2)` with `a(0)=0, a(1)=42`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174766

/-- `394*a(n-1)-a(n-2)` -/
def P10468374753585295630.Spec : Prop :=
  ∀ n, P10468374753585295630.a n = A174766 (n + 1)

theorem P10468374753585295630.correct : P10468374753585295630.Spec := by
  intro n
  simp only [A174766, Nat.add_sub_cancel]

end A174766

/-!
# A174767: y-values in the solution to x^2 - 23*y^2 = 1.

The programs for A174767, the canonical program `A174767.P18077519104254992098` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174767 has offset 1).

The definition of A174767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174767.P18077519104254992098

`48*a(n-1)-a(n-2)` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174767

/-- `48*a(n-1)-a(n-2)` -/
def P18077519104254992098.Spec : Prop :=
  ∀ n, P18077519104254992098.a n = A174767 (n + 1)

theorem P18077519104254992098.correct : P18077519104254992098.Spec := by
  intro n
  simp only [A174767, Nat.add_sub_cancel]

end A174767

/-! ## A174767.P1969157858008392159

`record[Δ[A004526(n)]*A041037(2*n+1)]`
-/

namespace A174767.P1969157858008392159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A041037 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174767.P1969157858008392159

namespace A174767

/-- `record[Δ[A004526(n)]*A041037(2*n+1)]` -/
def P1969157858008392159.Spec : Prop :=
  ∀ n, P1969157858008392159.a n = A174767 (n + 1)

end A174767

/-! ## A174767.P8629871860473863698

`A190869(2*n)/A000079(n)`
-/

namespace A174767.P8629871860473863698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190869 (2 * n) : ℚ) / (A000079 n : ℚ)

end

end A174767.P8629871860473863698

namespace A174767

/-- `A190869(2*n)/A000079(n)` -/
def P8629871860473863698.Spec : Prop :=
  ∀ n, P8629871860473863698.a n = (A174767 (n + 1) : ℚ)

end A174767

/-!
# A174768: y-values in the solution to x^2 - 26*y^2 = 1.

The programs for A174768, the canonical program `A174768.P10511968313101646081` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174768 has offset 1).

The definition of A174768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174768.P10511968313101646081

`102*a(n-1)-a(n-2)` with `a(0)=0, a(1)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174768

/-- `102*a(n-1)-a(n-2)` -/
def P10511968313101646081.Spec : Prop :=
  ∀ n, P10511968313101646081.a n = A174768 (n + 1)

theorem P10511968313101646081.correct : P10511968313101646081.Spec := by
  intro n
  simp only [A174768, Nat.add_sub_cancel]

end A174768

/-! ## A174768.P15187438622572610857

`record[lcm(val(n+1, 2), A041041(n))]`
-/

namespace A174768.P15187438622572610857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A041041 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174768.P15187438622572610857

namespace A174768

/-- `record[lcm(val(n+1, 2), A041041(n))]` -/
def P15187438622572610857.Spec : Prop :=
  ∀ n, (P15187438622572610857.a n : ℤ) = A174768 (n + 1)

end A174768

/-! ## A174768.P14056517048038297467

`record[A041041(C(n, a(n-1)))]` with `a(0)=0`
-/

namespace A174768.P14056517048038297467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A041041 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174768.P14056517048038297467

namespace A174768

/-- `record[A041041(C(n, a(n-1)))]` -/
def P14056517048038297467.Spec : Prop :=
  ∀ n, P14056517048038297467.a n = A174768 (n + 1)

end A174768

/-! ## A174768.P14782035915848658931

`record[A000035(n)*A041041(n)]`
-/

namespace A174768.P14782035915848658931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A041041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174768.P14782035915848658931

namespace A174768

/-- `record[A000035(n)*A041041(n)]` -/
def P14782035915848658931.Spec : Prop :=
  ∀ n, P14782035915848658931.a n = A174768 (n + 1)

end A174768

/-! ## A174768.P11789228875571090263

`A040029(2*n)*A162671(2*n)`
-/

namespace A174768.P11789228875571090263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040029 (2 * n) * A162671 (2 * n)

end

end A174768.P11789228875571090263

namespace A174768

/-- `A040029(2*n)*A162671(2*n)` -/
def P11789228875571090263.Spec : Prop :=
  ∀ n, P11789228875571090263.a n = A174768 (n + 1)

end A174768

/-! ## A174768.P4947845847897646849

`2*A015456(2*n)-A171510(2*n+1)`
-/

namespace A174768.P4947845847897646849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015456 (2 * n) - A171510 (2 * n + 1)

end

end A174768.P4947845847897646849

namespace A174768

/-- `2*A015456(2*n)-A171510(2*n+1)` -/
def P4947845847897646849.Spec : Prop :=
  ∀ n, P4947845847897646849.a n = A174768 (n + 1)

end A174768

/-! ## A174768.P3568057999907934606

`(A041041(n)-A109108(n))*A086927(n)`
-/

namespace A174768.P3568057999907934606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A041041 n - A109108 n) * A086927 n

end

end A174768.P3568057999907934606

namespace A174768

/-- `(A041041(n)-A109108(n))*A086927(n)` -/
def P3568057999907934606.Spec : Prop :=
  ∀ n, P3568057999907934606.a n = A174768 (n + 1)

end A174768

/-! ## A174768.P3500411158644682639

`record[A041187(n)-A109108(n)]`
-/

namespace A174768.P3500411158644682639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041187 n - A109108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174768.P3500411158644682639

namespace A174768

/-- `record[A041187(n)-A109108(n)]` -/
def P3500411158644682639.Spec : Prop :=
  ∀ n, P3500411158644682639.a n = A174768 (n + 1)

end A174768

/-! ## A174768.P5222810441143838338

`record[A042249(n)-A109108(n)]`
-/

namespace A174768.P5222810441143838338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042249 n - A109108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174768.P5222810441143838338

namespace A174768

/-- `record[A042249(n)-A109108(n)]` -/
def P5222810441143838338.Spec : Prop :=
  ∀ n, P5222810441143838338.a n = A174768 (n + 1)

end A174768

/-! ## A174768.P9077356439954721884

`10*(A097725(n)-A097727(n))`
-/

namespace A174768.P9077356439954721884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A097725 n - A097727 n)

end

end A174768.P9077356439954721884

namespace A174768

/-- `10*(A097725(n)-A097727(n))` -/
def P9077356439954721884.Spec : Prop :=
  ∀ n, P9077356439954721884.a n = A174768 (n + 1)

end A174768

/-!
# A174769: 

The programs for A174769, there is no canonical definition to state claims against.
-/

/-! ## A174769.P1093083758973609108

`A090248(3*n)/2`
-/

namespace A174769.P1093083758973609108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090248 (3 * n) : ℚ) / 2

end

end A174769.P1093083758973609108

/-! ## A174769.P3816509042964746702

`A087130(A008588(n))/2`
-/

namespace A174769.P3816509042964746702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087130 (A008588 n).toNat : ℚ) / 2

end

end A174769.P3816509042964746702

/-!
# A174772: y-values in the solution to x^2 - 33*y^2 = 1.

The programs for A174772, the canonical program `A174772.P8052300514265774390` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174772 has offset 1).

The definition of A174772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174772.P8052300514265774390

`46*a(n-1)-a(n-2)` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174772

/-- `46*a(n-1)-a(n-2)` -/
def P8052300514265774390.Spec : Prop :=
  ∀ n, P8052300514265774390.a n = A174772 (n + 1)

theorem P8052300514265774390.correct : P8052300514265774390.Spec := by
  intro n
  simp only [A174772, Nat.add_sub_cancel]

end A174772

/-! ## A174772.P17104370083417617240

`record[2*and(1, n)*A041241(n)]`
-/

namespace A174772.P17104370083417617240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 n : ℤ) * A041241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174772.P17104370083417617240

namespace A174772

/-- `record[2*and(1, n)*A041241(n)]` -/
def P17104370083417617240.Spec : Prop :=
  ∀ n, P17104370083417617240.a n = A174772 (n + 1)

end A174772

/-! ## A174772.P18316620993149543772

`record[A010673(n)*A041241(n)]`
-/

namespace A174772.P18316620993149543772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n * A041241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174772.P18316620993149543772

namespace A174772

/-- `record[A010673(n)*A041241(n)]` -/
def P18316620993149543772.Spec : Prop :=
  ∀ n, P18316620993149543772.a n = A174772 (n + 1)

end A174772

/-! ## A174772.P6113964080611589869

`record[A007877(2*n)*A041241(n)]`
-/

namespace A174772.P6113964080611589869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (2 * n) * A041241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174772.P6113964080611589869

namespace A174772

/-- `record[A007877(2*n)*A041241(n)]` -/
def P6113964080611589869.Spec : Prop :=
  ∀ n, P6113964080611589869.a n = A174772 (n + 1)

end A174772

/-! ## A174772.P8304958607566191489

`record[4*(A041241(n)-A042011(n))]`
-/

namespace A174772.P8304958607566191489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A041241 n - A042011 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174772.P8304958607566191489

namespace A174772

/-- `record[4*(A041241(n)-A042011(n))]` -/
def P8304958607566191489.Spec : Prop :=
  ∀ n, P8304958607566191489.a n = A174772 (n + 1)

end A174772

/-! ## A174772.P10045725437849754651

`A041055(4*n+1)-A041055(4*n)`
-/

namespace A174772.P10045725437849754651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041055 (4 * n + 1) - A041055 (4 * n)

end

end A174772.P10045725437849754651

namespace A174772

/-- `A041055(4*n+1)-A041055(4*n)` -/
def P10045725437849754651.Spec : Prop :=
  ∀ n, P10045725437849754651.a n = A174772 (n + 1)

end A174772

/-!
# A174773: y-values in the solution to x^2 - 34*y^2 = 1.

The programs for A174773, the canonical program `A174773.P18198713527643716618` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174773 has offset 1).

The definition of A174773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174773.P18198713527643716618

`70*a(n-1)-a(n-2)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174773

/-- `70*a(n-1)-a(n-2)` -/
def P18198713527643716618.Spec : Prop :=
  ∀ n, P18198713527643716618.a n = A174773 (n + 1)

theorem P18198713527643716618.correct : P18198713527643716618.Spec := by
  intro n
  simp only [A174773, Nat.add_sub_cancel]

end A174773

/-!
# A174774: Sum of the numerators for computing the third moment of the probability mass function for probability of k pairs among the involutions on n elements (A000085) assuming equal likelihood.

The programs for A174774, there is no canonical definition to state claims against.
-/

/-! ## A174774.P7831874911260067382

`∑[n]*A318805(A003945(n))`
-/

namespace A174774.P7831874911260067382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A318805 (A003945 n).toNat

end

end A174774.P7831874911260067382

/-! ## A174774.P3680750880416792451

`∑[n]*A324191(A001761(n))`
-/

namespace A174774.P3680750880416792451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A324191 (A001761 n).toNat

end

end A174774.P3680750880416792451

/-!
# A174775: y-values in the solution to x^2 - 37*y^2 = 1.

The programs for A174775, the canonical program `A174775.P15039113582790580893` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174775 has offset 1).

The definition of A174775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174775.P15039113582790580893

`146*a(n-1)-a(n-2)` with `a(0)=0, a(1)=12`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174775

/-- `146*a(n-1)-a(n-2)` -/
def P15039113582790580893.Spec : Prop :=
  ∀ n, P15039113582790580893.a n = A174775 (n + 1)

theorem P15039113582790580893.correct : P15039113582790580893.Spec := by
  intro n
  simp only [A174775, Nat.add_sub_cancel]

end A174775

/-! ## A174775.P17809455633193298159

`record[A000035(n)*A041061(n)]`
-/

namespace A174775.P17809455633193298159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A041061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174775.P17809455633193298159

namespace A174775

/-- `record[A000035(n)*A041061(n)]` -/
def P17809455633193298159.Spec : Prop :=
  ∀ n, P17809455633193298159.a n = A174775 (n + 1)

end A174775

/-! ## A174775.P16652659000438335584

`record[lcm(A010673(n), A041061(n))]`
-/

namespace A174775.P16652659000438335584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010673 n) (A041061 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174775.P16652659000438335584

namespace A174775

/-- `record[lcm(A010673(n), A041061(n))]` -/
def P16652659000438335584.Spec : Prop :=
  ∀ n, (P16652659000438335584.a n : ℤ) = A174775 (n + 1)

end A174775

/-! ## A174775.P8654725411459579364

`A041061(A004273(n))*A057427(n)`
-/

namespace A174775.P8654725411459579364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041061 (A004273 n).toNat * A057427 n

end

end A174775.P8654725411459579364

namespace A174775

/-- `A041061(A004273(n))*A057427(n)` -/
def P8654725411459579364.Spec : Prop :=
  ∀ n, P8654725411459579364.a n = A174775 (n + 1)

end A174775

/-! ## A174775.P7724786731247497148

`lcm(A041061(A004273(n)), A211010(n))`
-/

namespace A174775.P7724786731247497148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A041061 (A004273 n).toNat) (A211010 n)

end

end A174775.P7724786731247497148

namespace A174775

/-- `lcm(A041061(A004273(n)), A211010(n))` -/
def P7724786731247497148.Spec : Prop :=
  ∀ n, (P7724786731247497148.a n : ℤ) = A174775 (n + 1)

end A174775

/-!
# A174776: y-values in the solution to x^2 - 39*y^2 = 1.

The programs for A174776, the canonical program `A174776.P15333581249898093542` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174776 has offset 1).

The definition of A174776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174776.P15333581249898093542

`50*a(n-1)-a(n-2)` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174776

/-- `50*a(n-1)-a(n-2)` -/
def P15333581249898093542.Spec : Prop :=
  ∀ n, P15333581249898093542.a n = A174776 (n + 1)

theorem P15333581249898093542.correct : P15333581249898093542.Spec := by
  intro n
  simp only [A174776, Nat.add_sub_cancel]

end A174776

/-! ## A174776.P13002195290514976106

`record[A000035(n)*A041065(n)]`
-/

namespace A174776.P13002195290514976106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A041065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174776.P13002195290514976106

namespace A174776

/-- `record[A000035(n)*A041065(n)]` -/
def P13002195290514976106.Spec : Prop :=
  ∀ n, P13002195290514976106.a n = A174776 (n + 1)

end A174776

/-! ## A174776.P9533615780217495033

`record[2*A000035(n)*A041287(n)]`
-/

namespace A174776.P9533615780217495033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000035 n * A041287 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174776.P9533615780217495033

namespace A174776

/-- `record[2*A000035(n)*A041287(n)]` -/
def P9533615780217495033.Spec : Prop :=
  ∀ n, P9533615780217495033.a n = A174776 (n + 1)

end A174776

/-! ## A174776.P6742700351907703222

`record[char[A003961(n+1)]*A041065(n)]`
-/

namespace A174776.P6742700351907703222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A041065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174776.P6742700351907703222

namespace A174776

/-- `record[char[A003961(n+1)]*A041065(n)]` -/
def P6742700351907703222.Spec : Prop :=
  ∀ n, P6742700351907703222.a n = A174776 (n + 1)

end A174776

/-! ## A174776.P13317395044692879362

`floor(A004296(n)/13)`
-/

namespace A174776.P13317395044692879362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004296 n : ℚ) / 13⌋

end

end A174776.P13317395044692879362

namespace A174776

/-- `floor(A004296(n)/13)` -/
def P13317395044692879362.Spec : Prop :=
  ∀ n, P13317395044692879362.a n = A174776 (n + 1)

end A174776

/-! ## A174776.P7781807241490308646

`A041065(2*n+1)%A041065(2*n)`
-/

namespace A174776.P7781807241490308646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041065 (2 * n + 1)) (A041065 (2 * n))

end

end A174776.P7781807241490308646

namespace A174776

/-- `A041065(2*n+1)%A041065(2*n)` -/
def P7781807241490308646.Spec : Prop :=
  ∀ n, P7781807241490308646.a n = A174776 (n + 1)

end A174776

/-! ## A174776.P7538565986664095647

`(A041287(2*n+1)+A041287(2*n+1))%A041287(2*n)`
-/

namespace A174776.P7538565986664095647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041287 (2 * n + 1) + A041287 (2 * n + 1)) (A041287 (2 * n))

end

end A174776.P7538565986664095647

namespace A174776

/-- `(A041287(2*n+1)+A041287(2*n+1))%A041287(2*n)` -/
def P7538565986664095647.Spec : Prop :=
  ∀ n, P7538565986664095647.a n = A174776 (n + 1)

end A174776

/-!
# A174777: y-values in the solution to x^2 - 38*y^2 = 1.

The programs for A174777, the canonical program `A174777.P18094369151310487940` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174777 has offset 1).

The definition of A174777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174777.P18094369151310487940

`74*a(n-1)-a(n-2)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174777

/-- `74*a(n-1)-a(n-2)` -/
def P18094369151310487940.Spec : Prop :=
  ∀ n, P18094369151310487940.a n = A174777 (n + 1)

theorem P18094369151310487940.correct : P18094369151310487940.Spec := by
  intro n
  simp only [A174777, Nat.add_sub_cancel]

end A174777

/-! ## A174777.P9281338563654670471

`record[xor((1-n)%2, A041063(n))]`
-/

namespace A174777.P9281338563654670471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (1 - (n : ℤ)) 2) (A041063 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174777.P9281338563654670471

namespace A174777

/-- `record[xor((1-n)%2, A041063(n))]` -/
def P9281338563654670471.Spec : Prop :=
  ∀ n, P9281338563654670471.a n = A174777 (n + 1)

end A174777

/-! ## A174777.P6939007906854719085

`record[A000035(n)*A041063(n)]`
-/

namespace A174777.P6939007906854719085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A041063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174777.P6939007906854719085

namespace A174777

/-- `record[A000035(n)*A041063(n)]` -/
def P6939007906854719085.Spec : Prop :=
  ∀ n, P6939007906854719085.a n = A174777 (n + 1)

end A174777

/-! ## A174777.P4816183675435057235

`record[lcm(A041063(n), A244415(n+1))]`
-/

namespace A174777.P4816183675435057235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A041063 n) (A244415 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174777.P4816183675435057235

namespace A174777

/-- `record[lcm(A041063(n), A244415(n+1))]` -/
def P4816183675435057235.Spec : Prop :=
  ∀ n, (P4816183675435057235.a n : ℤ) = A174777 (n + 1)

end A174777

/-! ## A174777.P6501961619640161005

`floor(A174750(n+1)/sqrt(38))`
-/

namespace A174777.P6501961619640161005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174750 (n + 1) : ℝ) / Real.sqrt (38 : ℝ)⌋

end

end A174777.P6501961619640161005

namespace A174777

/-- `floor(A174750(n+1)/sqrt(38))` -/
def P6501961619640161005.Spec : Prop :=
  ∀ n, P6501961619640161005.a n = A174777 (n + 1)

end A174777

/-! ## A174777.P416919203692764250

`A041062(2*n)-A041063(2*n+1)`
-/

namespace A174777.P416919203692764250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041062 (2 * n) - A041063 (2 * n + 1)

end

end A174777.P416919203692764250

namespace A174777

/-- `A041062(2*n)-A041063(2*n+1)` -/
def P416919203692764250.Spec : Prop :=
  ∀ n, P416919203692764250.a n = A174777 (n + 1)

end A174777

/-!
# A174778: y-values in the solution to x^2 - 41*y^2 = 1.

The programs for A174778, there is no canonical definition to state claims against.
-/

/-! ## A174778.P14469096518798870551

`record[A041069(3*n+2)*A166486(2*(n+2))]`
-/

namespace A174778.P14469096518798870551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041069 (3 * n + 2) * A166486 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174778.P14469096518798870551

/-!
# A174779: y-values in the solution to x^2 - 42*y^2 = 1.

The programs for A174779, the canonical program `A174779.P123232826738054717` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174779 has offset 1).

The definition of A174779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174779.P123232826738054717

`26*a(n-1)-a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174779

/-- `26*a(n-1)-a(n-2)` -/
def P123232826738054717.Spec : Prop :=
  ∀ n, P123232826738054717.a n = A174779 (n + 1)

theorem P123232826738054717.correct : P123232826738054717.Spec := by
  intro n
  simp only [A174779, Nat.add_sub_cancel]

end A174779

/-! ## A174779.P16725041782208647642

`record[n%2*A041071(n)]`
-/

namespace A174779.P16725041782208647642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A041071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174779.P16725041782208647642

namespace A174779

/-- `record[n%2*A041071(n)]` -/
def P16725041782208647642.Spec : Prop :=
  ∀ n, P16725041782208647642.a n = A174779 (n + 1)

end A174779

/-! ## A174779.P8192802170013995742

`record[2*A000035(n)*A041311(n)]`
-/

namespace A174779.P8192802170013995742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000035 n * A041311 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174779.P8192802170013995742

namespace A174779

/-- `record[2*A000035(n)*A041311(n)]` -/
def P8192802170013995742.Spec : Prop :=
  ∀ n, P8192802170013995742.a n = A174779 (n + 1)

end A174779

/-! ## A174779.P14338422686508699362

`A157461(n+1)-A153111(n+1)`
-/

namespace A174779.P14338422686508699362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157461 (n + 1) - A153111 (n + 1)

end

end A174779.P14338422686508699362

namespace A174779

/-- `A157461(n+1)-A153111(n+1)` -/
def P14338422686508699362.Spec : Prop :=
  ∀ n, P14338422686508699362.a n = A174779 (n + 1)

end A174779

/-! ## A174779.P3668937498231499107

`2*(∑[A097308(n)]-A253458(n+1))`
-/

namespace A174779.P3668937498231499107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A253458 (n + 1))

end

end A174779.P3668937498231499107

namespace A174779

/-- `2*(∑[A097308(n)]-A253458(n+1))` -/
def P3668937498231499107.Spec : Prop :=
  ∀ n, P3668937498231499107.a n = A174779 (n + 1)

end A174779

/-! ## A174779.P3692863119759688914

`2*(A253457(n+1)-A253458(n+1))`
-/

namespace A174779.P3692863119759688914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A253457 (n + 1) - A253458 (n + 1))

end

end A174779.P3692863119759688914

namespace A174779

/-- `2*(A253457(n+1)-A253458(n+1))` -/
def P3692863119759688914.Spec : Prop :=
  ∀ n, P3692863119759688914.a n = A174779 (n + 1)

end A174779

/-! ## A174779.P4799474116014979031

`A041071(2*n+1)-2*A041071(2*n)`
-/

namespace A174779.P4799474116014979031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041071 (2 * n + 1) - 2 * A041071 (2 * n)

end

end A174779.P4799474116014979031

namespace A174779

/-- `A041071(2*n+1)-2*A041071(2*n)` -/
def P4799474116014979031.Spec : Prop :=
  ∀ n, P4799474116014979031.a n = A174779 (n + 1)

end A174779

/-! ## A174779.P2165452217372761384

`2*(A041311(2*n+1)-A041311(2*n))`
-/

namespace A174779.P2165452217372761384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A041311 (2 * n + 1) - A041311 (2 * n))

end

end A174779.P2165452217372761384

namespace A174779

/-- `2*(A041311(2*n+1)-A041311(2*n))` -/
def P2165452217372761384.Spec : Prop :=
  ∀ n, P2165452217372761384.a n = A174779 (n + 1)

end A174779

/-!
# A174782: Sum of the numerators for computing the fourth moment of the probability mass function for the number of involutions with k 2-cycles in n elements (A000085) assuming equal likelihood.

The programs for A174782, there is no canonical definition to state claims against.
-/

/-! ## A174782.P715260860758513738

`A295342(4^n)%(4^n)`
-/

namespace A174782.P715260860758513738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295342 (4 ^ n)) (4 ^ n : ℤ)

end

end A174782.P715260860758513738

/-!
# A174783: Expansion of (1+2x-sqrt(1-4x^2))/(2(1-x^2)*sqrt(1-4x^2)).

The programs for A174783, the canonical program `A174783.P12683386541777257962` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174783 has offset 0).

The definition of A174783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174783.P10800559810702339464

`∑[A086905(abs(1-n))]`
-/

namespace A174783.P10800559810702339464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086905 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174783.P10800559810702339464

namespace A174783

/-- `∑[A086905(abs(1-n))]` -/
def P10800559810702339464.Spec : Prop :=
  ∀ n, P10800559810702339464.a n = A174783 n

end A174783

/-! ## A174783.P14019745633030552748

`A086905(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A174783.P14019745633030552748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A086905 (n - 1) + a (n - 1)

end

end A174783.P14019745633030552748

namespace A174783

/-- `A086905(n-1)+a(n-1)` -/
def P14019745633030552748.Spec : Prop :=
  ∀ n, P14019745633030552748.a n = A174783 n

end A174783

/-! ## A174783.P12683386541777257962

`∑[A001405(n-1)-a(n-1)]` with `a(0)=0`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A174783

/-- `∑[A001405(n-1)-a(n-1)]` -/
def P12683386541777257962.Spec : Prop :=
  ∀ n, P12683386541777257962.a n = A174783 n

theorem P12683386541777257962.correct : P12683386541777257962.Spec := by
  intro n
  simp only [A174783]

end A174783

/-! ## A174783.P12033479975983455240

`A124642(n)-A059841(n)`
-/

namespace A174783.P12033479975983455240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124642 n - A059841 n

end

end A174783.P12033479975983455240

namespace A174783

/-- `A124642(n)-A059841(n)` -/
def P12033479975983455240.Spec : Prop :=
  ∀ n, P12033479975983455240.a n = A174783 n

end A174783

/-! ## A174783.P3043239184710698646

`∑[A001405(n)-A086905(n)]`
-/

namespace A174783.P3043239184710698646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A086905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174783.P3043239184710698646

namespace A174783

/-- `∑[A001405(n)-A086905(n)]` -/
def P3043239184710698646.Spec : Prop :=
  ∀ n, P3043239184710698646.a n = A174783 n

end A174783

/-! ## A174783.P5078303287321192380

`(A036256(n)-A086905(n))/2`
-/

namespace A174783.P5078303287321192380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036256 n - A086905 n : ℚ) / 2

end

end A174783.P5078303287321192380

namespace A174783

/-- `(A036256(n)-A086905(n))/2` -/
def P5078303287321192380.Spec : Prop :=
  ∀ n, P5078303287321192380.a n = (A174783 n : ℚ)

end A174783

/-! ## A174783.P17032325312619885340

`A000975(n)-A191394(n)`
-/

namespace A174783.P17032325312619885340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n - A191394 n

end

end A174783.P17032325312619885340

namespace A174783

/-- `A000975(n)-A191394(n)` -/
def P17032325312619885340.Spec : Prop :=
  ∀ n, P17032325312619885340.a n = A174783 n

end A174783

/-! ## A174783.P2803590695798854677

`A000975(n)+A124642(n)-Δ[A000975(n)]`
-/

namespace A174783.P2803590695798854677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + (A124642 n - (f1 (n + 1) - f1 n))

end

end A174783.P2803590695798854677

namespace A174783

/-- `A000975(n)+A124642(n)-Δ[A000975(n)]` -/
def P2803590695798854677.Spec : Prop :=
  ∀ n, P2803590695798854677.a n = A174783 n

end A174783

/-! ## A174783.P17094862273785774282

`xor(A191394(n)+A000975(n+1), A000225(n+1))`
-/

namespace A174783.P17094862273785774282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A191394 n + A000975 (n + 1)) (A000225 (n + 1))

end

end A174783.P17094862273785774282

namespace A174783

/-- `xor(A191394(n)+A000975(n+1), A000225(n+1))` -/
def P17094862273785774282.Spec : Prop :=
  ∀ n, P17094862273785774282.a n = A174783 n

end A174783

/-!
# A174784: Expansion of x*(1-x+x^3+x^4)/(1+x^6) (Period 12).

The programs for A174784, the canonical program `A174784.P13649619823075925487` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174784 has offset 0).

The definition of A174784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174784.P13649619823075925487

`(1-and(2, n))*n²%3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174784

/-- `(1-and(2, n))*n²%3` -/
def P13649619823075925487.Spec : Prop :=
  ∀ n, P13649619823075925487.a n = A174784 n

theorem P13649619823075925487.correct : P13649619823075925487.Spec := by
  intro n
  simp only [A174784]

end A174784

/-!
# A174785: Expansion of g.f. (1+2*x-x^2+x^3-x^4-x^5)/(1+x^3)^2.

The programs for A174785, the canonical program `A174785.P9588334725308078340` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174785 has offset 0).

The definition of A174785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^2+x^3-x^4-x^5)/(1+2x^3+x^6))` (program `A174785.P9588334725308078340`, by `A174785.P9588334725308078340.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174785.P9588334725308078340

`ogf((1+2x-x^2+x^3-x^4-x^5)/(1+2x^3+x^6))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174785

/-- `ogf((1+2x-x^2+x^3-x^4-x^5)/(1+2x^3+x^6))` -/
def P9588334725308078340.Spec : Prop :=
  ∀ n, P9588334725308078340.a n = A174785 n

theorem P9588334725308078340.correct : P9588334725308078340.Spec := by
  intro n
  simp only [A174785]

end A174785

/-! ## A174785.P4510415472968220995

`((n+2)*a(n-1)%n-a(n-2))%(2*n)` with `a(0)=1, a(1)=2`
-/

namespace A174785.P4510415472968220995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.tmod ((n + 2 : ℤ) * Int.tmod (a (n - 1)) (n : ℤ) - a (n - 2)) (2 * n : ℤ)

end

end A174785.P4510415472968220995

namespace A174785

/-- `((n+2)*a(n-1)%n-a(n-2))%(2*n)` -/
def P4510415472968220995.Spec : Prop :=
  ∀ n, P4510415472968220995.a n = A174785 n

end A174785

/-! ## A174785.P9845259001046434279

`A187307(∑[n%3])`
-/

namespace A174785.P9845259001046434279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174785.P9845259001046434279

namespace A174785

/-- `A187307(∑[n%3])` -/
def P9845259001046434279.Spec : Prop :=
  ∀ n, P9845259001046434279.a n = A174785 n

end A174785

/-! ## A174785.P17735051956467749809

`A187307(n²%3+n)`
-/

namespace A174785.P17735051956467749809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 (n ^ 2 % 3 + n)

end

end A174785.P17735051956467749809

namespace A174785

/-- `A187307(n²%3+n)` -/
def P17735051956467749809.Spec : Prop :=
  ∀ n, P17735051956467749809.a n = A174785 n

end A174785

/-! ## A174785.P11648759956223797446

`A187307(A130481(n))`
-/

namespace A174785.P11648759956223797446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 (A130481 n).toNat

end

end A174785.P11648759956223797446

namespace A174785

/-- `A187307(A130481(n))` -/
def P11648759956223797446.Spec : Prop :=
  ∀ n, P11648759956223797446.a n = A174785 n

end A174785

/-! ## A174785.P5943907768961071824

`A187307(∑[A010872(n)])`
-/

namespace A174785.P5943907768961071824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A174785.P5943907768961071824

namespace A174785

/-- `A187307(∑[A010872(n)])` -/
def P5943907768961071824.Spec : Prop :=
  ∀ n, P5943907768961071824.a n = A174785 n

end A174785

/-! ## A174785.P17580190124861187357

`A187307(∑[A080425(n)])`
-/

namespace A174785.P17580190124861187357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A174785.P17580190124861187357

namespace A174785

/-- `A187307(∑[A080425(n)])` -/
def P17580190124861187357.Spec : Prop :=
  ∀ n, P17580190124861187357.a n = A174785 n

end A174785

/-! ## A174785.P11312807822242683373

`A187307(A011655(n)+n)`
-/

namespace A174785.P11312807822242683373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 (A011655 n + (n : ℤ)).toNat

end

end A174785.P11312807822242683373

namespace A174785

/-- `A187307(A011655(n)+n)` -/
def P11312807822242683373.Spec : Prop :=
  ∀ n, P11312807822242683373.a n = A174785 n

end A174785

/-! ## A174785.P3070784528235184818

`A187307(A128834(n)²+n)`
-/

namespace A174785.P3070784528235184818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 (A128834 n ^ 2 + (n : ℤ)).toNat

end

end A174785.P3070784528235184818

namespace A174785

/-- `A187307(A128834(n)²+n)` -/
def P3070784528235184818.Spec : Prop :=
  ∀ n, P3070784528235184818.a n = A174785 n

end A174785

/-! ## A174785.P9740859769300788154

`A130151(n+1)+n*A131531(n+2)`
-/

namespace A174785.P9740859769300788154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 (n + 1) + (n : ℤ) * A131531 (n + 2)

end

end A174785.P9740859769300788154

namespace A174785

/-- `A130151(n+1)+n*A131531(n+2)` -/
def P9740859769300788154.Spec : Prop :=
  ∀ n, P9740859769300788154.a n = A174785 n

end A174785

/-! ## A174785.P10729540430838791643

`A157128(A140282(n))`
-/

namespace A174785.P10729540430838791643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157128 (A140282 n).toNat

end

end A174785.P10729540430838791643

namespace A174785

/-- `A157128(A140282(n))` -/
def P10729540430838791643.Spec : Prop :=
  ∀ n, P10729540430838791643.a n = A174785 n

end A174785

/-! ## A174785.P5783713787027137597

`A157128(eq[0, n*A140318(n)])`
-/

namespace A174785.P5783713787027137597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A140318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A174785.P5783713787027137597

namespace A174785

/-- `A157128(eq[0, n*A140318(n)])` -/
def P5783713787027137597.Spec : Prop :=
  ∀ n, P5783713787027137597.a n = A174785 n

end A174785

/-! ## A174785.P10181066125742803983

`A157128(eq[n, A140318(n)+n])`
-/

namespace A174785.P10181066125742803983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140318 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A174785.P10181066125742803983

namespace A174785

/-- `A157128(eq[n, A140318(n)+n])` -/
def P10181066125742803983.Spec : Prop :=
  ∀ n, P10181066125742803983.a n = A174785 n

end A174785

/-! ## A174785.P13680168741608098910

`A157128(eq[n, n-A140318(n)])`
-/

namespace A174785.P13680168741608098910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A140318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A174785.P13680168741608098910

namespace A174785

/-- `A157128(eq[n, n-A140318(n)])` -/
def P13680168741608098910.Spec : Prop :=
  ∀ n, P13680168741608098910.a n = A174785 n

end A174785

/-! ## A174785.P16115449805719191748

`A187307(A010872(n²)+n)`
-/

namespace A174785.P16115449805719191748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 (A010872 (n ^ 2) + (n : ℤ)).toNat

end

end A174785.P16115449805719191748

namespace A174785

/-- `A187307(A010872(n²)+n)` -/
def P16115449805719191748.Spec : Prop :=
  ∀ n, P16115449805719191748.a n = A174785 n

end A174785

/-!
# A174786: Numbers n congruent to 3 (mod 6) such that n+2 and n+8 are primes.

The programs for A174786, the canonical program `A174786.P6932952363311441244` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174786 has offset 1).

The definition of A174786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174786.P6932952363311441244

`p?[A003627(n+1)-6]-2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A174786

/-- `p?[A003627(n+1)-6]-2` -/
def P6932952363311441244.Spec : Prop :=
  ∀ n, P6932952363311441244.a n = A174786 (n + 1)

theorem P6932952363311441244.correct : P6932952363311441244.Spec := by
  intro n
  simp only [A174786, Nat.add_sub_cancel]

end A174786

/-! ## A174786.P5921840008838889983

`p?[A007528(n+1)-6]-2`
-/

namespace A174786.P5921840008838889983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A174786.P5921840008838889983

namespace A174786

/-- `p?[A007528(n+1)-6]-2` -/
def P5921840008838889983.Spec : Prop :=
  ∀ n, P5921840008838889983.a n = A174786 (n + 1)

end A174786

/-! ## A174786.P13703402394901310537

`p?[A245200(n+3)-7]-2`
-/

namespace A174786.P13703402394901310537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245200 (n + 3) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A174786.P13703402394901310537

namespace A174786

/-- `p?[A245200(n+3)-7]-2` -/
def P13703402394901310537.Spec : Prop :=
  ∀ n, P13703402394901310537.a n = A174786 (n + 1)

end A174786

/-! ## A174786.P9076526957176935956

`3*(2*A307561(n+1)-1)`
-/

namespace A174786.P9076526957176935956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * A307561 (n + 1) - 1)

end

end A174786.P9076526957176935956

namespace A174786

/-- `3*(2*A307561(n+1)-1)` -/
def P9076526957176935956.Spec : Prop :=
  ∀ n, P9076526957176935956.a n = A174786 (n + 1)

end A174786

/-! ## A174786.P10642233650862614968

`record[(A007528(n+2)-8)%A007528(n+1)]`
-/

namespace A174786.P10642233650862614968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007528 (n + 2) - 8) (A007528 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174786.P10642233650862614968

namespace A174786

/-- `record[(A007528(n+2)-8)%A007528(n+1)]` -/
def P10642233650862614968.Spec : Prop :=
  ∀ n, P10642233650862614968.a n = A174786 (n + 1)

end A174786

/-! ## A174786.P12364582521105797928

`p?[p?[A007494(n)]-6]-2`
-/

namespace A174786.P12364582521105797928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A174786.P12364582521105797928

namespace A174786

/-- `p?[p?[A007494(n)]-6]-2` -/
def P12364582521105797928.Spec : Prop :=
  ∀ n, P12364582521105797928.a n = A174786 (n + 1)

end A174786

/-! ## A174786.P11791910147500209938

`3*eq[3, A047160(3*n+5)]`
-/

namespace A174786.P11791910147500209938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174786.P11791910147500209938

namespace A174786

/-- `3*eq[3, A047160(3*n+5)]` -/
def P11791910147500209938.Spec : Prop :=
  ∀ n, (P11791910147500209938.a n : ℤ) = A174786 (n + 1)

end A174786

/-! ## A174786.P5227850911691587511

`eq[A033559(n+4), A131193(n)]`
-/

namespace A174786.P5227850911691587511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033559 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174786.P5227850911691587511

namespace A174786

/-- `eq[A033559(n+4), A131193(n)]` -/
def P5227850911691587511.Spec : Prop :=
  ∀ n, (P5227850911691587511.a n : ℤ) = A174786 (n + 1)

end A174786

/-!
# A174787: Cumulative sums of A174725.

The programs for A174787, there is no canonical definition to state claims against.
-/

/-! ## A174787.P10132792060853393698

`∑[A174725(n+1)]`
-/

namespace A174787.P10132792060853393698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174787.P10132792060853393698

/-! ## A174787.P16222309673487594500

`∑[A002033(n)-A174726(n+1)]`
-/

namespace A174787.P16222309673487594500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A174726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174787.P16222309673487594500

/-! ## A174787.P7712990768469776835

`A174788(n+1)+A002321(n+1)`
-/

namespace A174787.P7712990768469776835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174788 (n + 1) + A002321 (n + 1)

end

end A174787.P7712990768469776835

/-! ## A174787.P14385120625154843496

`A025523(n+1)-A174788(n+1)`
-/

namespace A174787.P14385120625154843496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025523 (n + 1) - A174788 (n + 1)

end

end A174787.P14385120625154843496

/-! ## A174787.P10906391404818654651

`∑[∑{d}[n+1, A007427(#)*A067824((n+1)/#)]]`
-/

namespace A174787.P10906391404818654651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A007427 d * A067824 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174787.P10906391404818654651

/-! ## A174787.P7034182607077416246

`A025523(n+1)-∑[ceil(A174892(n+1)/2)]`
-/

namespace A174787.P7034182607077416246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174892 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025523 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174787.P7034182607077416246

/-!
# A174788: Cumulative sums of A174726.

The programs for A174788, there is no canonical definition to state claims against.
-/

/-! ## A174788.P6462210907001034068

`∑[A174726(n+1)]`
-/

namespace A174788.P6462210907001034068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174788.P6462210907001034068

/-! ## A174788.P14364762177916965164

`∑[A002033(n)-A174725(n+1)]`
-/

namespace A174788.P14364762177916965164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A174725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174788.P14364762177916965164

/-! ## A174788.P1917917072274312506

`∑[A002033(n)]-A174787(n+1)`
-/

namespace A174788.P1917917072274312506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A174787 (n + 1)

end

end A174788.P1917917072274312506

/-! ## A174788.P7077836967561261943

`A174787(n+1)-A002321(n+1)`
-/

namespace A174788.P7077836967561261943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174787 (n + 1) - A002321 (n + 1)

end

end A174788.P7077836967561261943

/-! ## A174788.P4826318327131365552

`A025523(n+1)-A174787(n+1)`
-/

namespace A174788.P4826318327131365552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025523 (n + 1) - A174787 (n + 1)

end

end A174788.P4826318327131365552

/-! ## A174788.P15474170536910319414

`∑[A174725(n+1)-A008683(n+1)]`
-/

namespace A174788.P15474170536910319414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174725 (n + 1) - A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174788.P15474170536910319414

/-! ## A174788.P3073005623405288116

`∑[(A002033(n)-A008683(n+1))/2]`
-/

namespace A174788.P3073005623405288116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002033 n - A008683 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174788.P3073005623405288116

/-! ## A174788.P3417153651389040792

`∑[(A074206(n+1)-A008683(n+1))/2]`
-/

namespace A174788.P3417153651389040792
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074206 (n + 1) - A008683 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174788.P3417153651389040792

/-! ## A174788.P15482187375797335491

`∑[A004525(A002033(n))]-1`
-/

namespace A174788.P15482187375797335491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A002033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A174788.P15482187375797335491

/-! ## A174788.P5767125747174160894

`∑[ceil(A174892(n+1)/2)]`
-/

namespace A174788.P5767125747174160894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174892 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174788.P5767125747174160894

/-!
# A174790: Triangle read by rows: T(n,m) = 1 + ((-1 + binomial(n, m))*(n!)^2)/(m!*(n - m)!).

The programs for A174790, the canonical program `A174790.P10428492186523786925` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174790 has offset 0).

The definition of A174790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174790.P789769330789454941

`A174689(n)+1-A174690(n)`
-/

namespace A174790.P789769330789454941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174689 n + (1 - A174690 n)

end

end A174790.P789769330789454941

namespace A174790

/-- `A174689(n)+1-A174690(n)` -/
def P789769330789454941.Spec : Prop :=
  ∀ n, P789769330789454941.a n = A174790 n

end A174790

/-! ## A174790.P10428492186523786925

`A014473(n)*A196347(n)+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A174790

/-- `A014473(n)*A196347(n)+1` -/
def P10428492186523786925.Spec : Prop :=
  ∀ n, P10428492186523786925.a n = A174790 n

theorem P10428492186523786925.correct : P10428492186523786925.Spec := by
  intro n
  simp only [A174790]

end A174790

/-! ## A174790.P4604580273609332006

`or(A014473(n)*A196347(n), A033999(n)²)`
-/

namespace A174790.P4604580273609332006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014473 n * A196347 n) (A033999 n ^ 2)

end

end A174790.P4604580273609332006

namespace A174790

/-- `or(A014473(n)*A196347(n), A033999(n)²)` -/
def P4604580273609332006.Spec : Prop :=
  ∀ n, P4604580273609332006.a n = A174790 n

end A174790

/-! ## A174790.P16038462833007220274

`1-A014473(n)*A196347(n)*A057428(n)`
-/

namespace A174790.P16038462833007220274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014473 n * A196347 n * A057428 n

end

end A174790.P16038462833007220274

namespace A174790

/-- `1-A014473(n)*A196347(n)*A057428(n)` -/
def P16038462833007220274.Spec : Prop :=
  ∀ n, P16038462833007220274.a n = A174790 n

end A174790

/-! ## A174790.P3343953909771705995

`or(A014473(n)*A196347(n), A124625(2*n))`
-/

namespace A174790.P3343953909771705995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014473 n * A196347 n) (A124625 (2 * n))

end

end A174790.P3343953909771705995

namespace A174790

/-- `or(A014473(n)*A196347(n), A124625(2*n))` -/
def P3343953909771705995.Spec : Prop :=
  ∀ n, P3343953909771705995.a n = A174790 n

end A174790

/-! ## A174790.P15495300537822413054

`A005408(n)-(2*n-A014473(n)*A196347(n))`
-/

namespace A174790.P15495300537822413054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A014473 n * A196347 n)

end

end A174790.P15495300537822413054

namespace A174790

/-- `A005408(n)-(2*n-A014473(n)*A196347(n))` -/
def P15495300537822413054.Spec : Prop :=
  ∀ n, P15495300537822413054.a n = A174790 n

end A174790

/-!
# A174791: Triangle ready by rows: T(n,k) = n! * binomial(n,k) * (Eulerian(n+1,k) - 1) + 1.

The programs for A174791, there is no canonical definition to state claims against.
-/

/-! ## A174791.P13515539585333821663

`A174693(n)+1-A174690(n)`
-/

namespace A174791.P13515539585333821663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174693 n + (1 - A174690 n)

end

end A174791.P13515539585333821663

/-! ## A174791.P6305824401425924129

`(A174691(n)-1)*A007318(n)+1`
-/

namespace A174791.P6305824401425924129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174691 n - 1) * A007318 n + 1

end

end A174791.P6305824401425924129

/-! ## A174791.P15038753745464516185

`or((A174691(n)-1)*A007318(n), A020985(n)²)`
-/

namespace A174791.P15038753745464516185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((A174691 n - 1) * A007318 n) (A020985 n ^ 2)

end

end A174791.P15038753745464516185

/-! ## A174791.P5764067260356669422

`or((A174691(n)-1)*A007318(n), A033999(n)²)`
-/

namespace A174791.P5764067260356669422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((A174691 n - 1) * A007318 n) (A033999 n ^ 2)

end

end A174791.P5764067260356669422

/-! ## A174791.P18169338297900040235

`or((A174691(n)-1)*A007318(n), A010052(n²))`
-/

namespace A174791.P18169338297900040235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((A174691 n - 1) * A007318 n) (A010052 (n ^ 2))

end

end A174791.P18169338297900040235

/-!
# A174792: Expansion of x*(1 - x^2)/(1 - x + 7*x^2 + x^3).

The programs for A174792, the canonical program `A174792.P6055394577739256998` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174792 has offset 0).

The definition of A174792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^3)/(1-x+7x^2+x^3))` (program `A174792.P6055394577739256998`, by `A174792.P6055394577739256998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174792.P6055394577739256998

`ogf((x-x^3)/(1-x+7x^2+x^3))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174792

/-- `ogf((x-x^3)/(1-x+7x^2+x^3))` -/
def P6055394577739256998.Spec : Prop :=
  ∀ n, P6055394577739256998.a n = A174792 n

theorem P6055394577739256998.correct : P6055394577739256998.Spec := by
  intro n
  simp only [A174792]

end A174792

/-! ## A174792.P9774537374820801883

`a(n-1)-7*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=-7`
-/

namespace A174792.P9774537374820801883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, -7] fun n a =>
  a (n - 1) - 7 * a (n - 2) - a (n - 3)

end

end A174792.P9774537374820801883

namespace A174792

/-- `a(n-1)-7*a(n-2)-a(n-3)` -/
def P9774537374820801883.Spec : Prop :=
  ∀ n, P9774537374820801883.a n = A174792 n

end A174792

/-! ## A174792.P1889841848576501847

`A050935(A270545(n)+n)`
-/

namespace A174792.P1889841848576501847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (A270545 n + (n : ℤ)).toNat

end

end A174792.P1889841848576501847

namespace A174792

/-- `A050935(A270545(n)+n)` -/
def P1889841848576501847.Spec : Prop :=
  ∀ n, P1889841848576501847.a n = A174792 n

end A174792

/-! ## A174792.P3581434311345094756

`A050935(A122709(n)-2*n)`
-/

namespace A174792.P3581434311345094756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (A122709 n - (2 * n : ℤ)).toNat

end

end A174792.P3581434311345094756

namespace A174792

/-- `A050935(A122709(n)-2*n)` -/
def P3581434311345094756.Spec : Prop :=
  ∀ n, P3581434311345094756.a n = A174792 n

end A174792

/-! ## A174792.P16128533033470629474

`A050935(A122709(n)-n-n)`
-/

namespace A174792.P16128533033470629474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (A122709 n - (n : ℤ) - (n : ℤ)).toNat

end

end A174792.P16128533033470629474

namespace A174792

/-- `A050935(A122709(n)-n-n)` -/
def P16128533033470629474.Spec : Prop :=
  ∀ n, P16128533033470629474.a n = A174792 n

end A174792

/-! ## A174792.P1106601926817471824

`A050935(A008486(A004273(n))+n)`
-/

namespace A174792.P1106601926817471824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (A008486 (A004273 n).toNat + (n : ℤ)).toNat

end

end A174792.P1106601926817471824

namespace A174792

/-- `A050935(A008486(A004273(n))+n)` -/
def P1106601926817471824.Spec : Prop :=
  ∀ n, P1106601926817471824.a n = A174792 n

end A174792

/-! ## A174792.P13993144833189066750

`A050935(A016813(A004273(n))-n)`
-/

namespace A174792.P13993144833189066750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (A016813 (A004273 n).toNat - (n : ℤ)).toNat

end

end A174792.P13993144833189066750

namespace A174792

/-- `A050935(A016813(A004273(n))-n)` -/
def P13993144833189066750.Spec : Prop :=
  ∀ n, P13993144833189066750.a n = A174792 n

end A174792

/-!
# A174793: Triangle read by rows: R(n,k) = n mod 2^Omega(k), where Omega( ) is number of prime divisors counted with multiplicity and 1 <= k <= n.

The programs for A174793, the canonical program `A174793.P3163091316939126794` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174793 has offset 1).

The definition of A174793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174793.P11965247076070438115

`∑[char[∑[n]]]%A061142(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A174793.P11965247076070438115
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A061142 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ)).toNat)

end

end A174793.P11965247076070438115

namespace A174793

/-- `∑[char[∑[n]]]%A061142(1-C(∑[char[∑[n]]], 2)+n)` -/
def P11965247076070438115.Spec : Prop :=
  ∀ n, P11965247076070438115.a n = A174793 (n + 1)

end A174793

/-! ## A174793.P7269281007019982747

`∑[char[∑[n]]]%A061142(A002260(n+1))`
-/

namespace A174793.P7269281007019982747
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A061142 (A002260 (n + 1)).toNat)

end

end A174793.P7269281007019982747

namespace A174793

/-- `∑[char[∑[n]]]%A061142(A002260(n+1))` -/
def P7269281007019982747.Spec : Prop :=
  ∀ n, P7269281007019982747.a n = A174793 (n + 1)

end A174793

/-! ## A174793.P3163091316939126794

`A123578(n)%A165872(A002260(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A174793

/-- `A123578(n)%A165872(A002260(n+1))` -/
def P3163091316939126794.Spec : Prop :=
  ∀ n, P3163091316939126794.a n = A174793 (n + 1)

theorem P3163091316939126794.correct : P3163091316939126794.Spec := by
  intro n
  simp only [A174793, Nat.add_sub_cancel]

end A174793

/-! ## A174793.P9635482121618677637

`A002024(n+1)%A061142(A002262(n)+1)`
-/

namespace A174793.P9635482121618677637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1)) (A061142 (A002262 n + 1).toNat)

end

end A174793.P9635482121618677637

namespace A174793

/-- `A002024(n+1)%A061142(A002262(n)+1)` -/
def P9635482121618677637.Spec : Prop :=
  ∀ n, P9635482121618677637.a n = A174793 (n + 1)

end A174793

/-! ## A174793.P98232526093423162

`A107436(n+1)%A165872(A002260(n+1))`
-/

namespace A174793.P98232526093423162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107436 (n + 1)) (A165872 (A002260 (n + 1)).toNat)

end

end A174793.P98232526093423162

namespace A174793

/-- `A107436(n+1)%A165872(A002260(n+1))` -/
def P98232526093423162.Spec : Prop :=
  ∀ n, P98232526093423162.a n = A174793 (n + 1)

end A174793

/-!
# A174794: a(0) = 0 and a(n) = (4*n^3 - 12*n^2 + 20*n - 9)/3 for n >= 1.

The programs for A174794, the canonical program `A174794.P3517877612730500993` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174794 has offset 0).

The definition of A174794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174794.P3517877612730500993

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=17, a(4)=45`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A174794

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3517877612730500993.Spec : Prop :=
  ∀ n, P3517877612730500993.a n = A174794 n

theorem P3517877612730500993.correct : P3517877612730500993.Spec := by
  intro n
  simp only [A174794]

end A174794

/-! ## A174794.P13217804129628063904

`∑[∑[a(n-1)+8]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=8`
-/

namespace A174794.P13217804129628063904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 8] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174794.P13217804129628063904

namespace A174794

/-- `∑[∑[a(n-1)+8]]` -/
def P13217804129628063904.Spec : Prop :=
  ∀ n, (P13217804129628063904.a n : ℤ) = A174794 n

end A174794

/-! ## A174794.P13619666443316865715

`∑[∑[ogf((x+x^2+3x^3+3x^4)/(1-2x+x^2))]]`
-/

namespace A174794.P13619666443316865715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 3, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174794.P13619666443316865715

namespace A174794

/-- `∑[∑[ogf((x+x^2+3x^3+3x^4)/(1-2x+x^2))]]` -/
def P13619666443316865715.Spec : Prop :=
  ∀ n, P13619666443316865715.a n = A174794 n

end A174794

/-! ## A174794.P12465259376279308583

`(2*n-3)²+a(n-1)+3` with `a(0)=0, a(1)=1`
-/

namespace A174794.P12465259376279308583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((2 * n : ℤ) - 3) ^ 2 + (a (n - 1) + 3)

end

end A174794.P12465259376279308583

namespace A174794

/-- `(2*n-3)²+a(n-1)+3` -/
def P12465259376279308583.Spec : Prop :=
  ∀ n, P12465259376279308583.a n = A174794 n

end A174794

/-! ## A174794.P16670187516818507125

`a(n-1)+(n-3+n)²+3` with `a(0)=0, a(1)=1`
-/

namespace A174794.P16670187516818507125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (((n : ℤ) - 3 + (n : ℤ)) ^ 2 + 3)

end

end A174794.P16670187516818507125

namespace A174794

/-- `a(n-1)+(n-3+n)²+3` -/
def P16670187516818507125.Spec : Prop :=
  ∀ n, P16670187516818507125.a n = A174794 n

end A174794

/-! ## A174794.P3598136686132552826

`A059270(A289207(n))+A000330(n)`
-/

namespace A174794.P3598136686132552826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 (A289207 n).toNat + A000330 n

end

end A174794.P3598136686132552826

namespace A174794

/-- `A059270(A289207(n))+A000330(n)` -/
def P3598136686132552826.Spec : Prop :=
  ∀ n, P3598136686132552826.a n = A174794 n

end A174794

/-! ## A174794.P11755101567795965736

`A035597(A004273(n)-n)+A004273(n)`
-/

namespace A174794.P11755101567795965736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 (A004273 n - (n : ℤ)).toNat + A004273 n

end

end A174794.P11755101567795965736

namespace A174794

/-- `A035597(A004273(n)-n)+A004273(n)` -/
def P11755101567795965736.Spec : Prop :=
  ∀ n, P11755101567795965736.a n = A174794 n

end A174794

/-! ## A174794.P11869371507332810332

`A004006(A052928(A004273(n)))+n`
-/

namespace A174794.P11869371507332810332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (A052928 (A004273 n).toNat).toNat + (n : ℤ)

end

end A174794.P11869371507332810332

namespace A174794

/-- `A004006(A052928(A004273(n)))+n` -/
def P11869371507332810332.Spec : Prop :=
  ∀ n, P11869371507332810332.a n = A174794 n

end A174794

/-! ## A174794.P8876901326925464090

`A004006(A097141(2*n))+n`
-/

namespace A174794.P8876901326925464090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (A097141 (2 * n)).toNat + (n : ℤ)

end

end A174794.P8876901326925464090

namespace A174794

/-- `A004006(A097141(2*n))+n` -/
def P8876901326925464090.Spec : Prop :=
  ∀ n, P8876901326925464090.a n = A174794 n

end A174794

/-! ## A174794.P14927179718801533922

`A050407(2*n)+A289207(2*n)+A289207(n+1)`
-/

namespace A174794.P14927179718801533922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 (2 * n) + (A289207 (2 * n) + A289207 (n + 1))

end

end A174794.P14927179718801533922

namespace A174794

/-- `A050407(2*n)+A289207(2*n)+A289207(n+1)` -/
def P14927179718801533922.Spec : Prop :=
  ∀ n, P14927179718801533922.a n = A174794 n

end A174794

/-! ## A174794.P4259667121959509008

`∑[∑[A274039(A004279(2*n+1))]]`
-/

namespace A174794.P4259667121959509008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274039 (A004279 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174794.P4259667121959509008

namespace A174794

/-- `∑[∑[A274039(A004279(2*n+1))]]` -/
def P4259667121959509008.Spec : Prop :=
  ∀ n, P4259667121959509008.a n = A174794 n

end A174794

/-!
# A174795: Number of admissible sequences of order j; related to 5x+1 problem.

The programs for A174795, there is no canonical definition to state claims against.
-/

/-! ## A174795.P16154369122065020953

`A235602(A047043(n+2))`
-/

namespace A174795.P16154369122065020953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235602 (A047043 (n + 2)).toNat

end

end A174795.P16154369122065020953

/-! ## A174795.P6220175270426535129

`A047042(A037442(n+1))`
-/

namespace A174795.P6220175270426535129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047042 (A037442 (n + 1)).toNat

end

end A174795.P6220175270426535129

/-! ## A174795.P12872662461180991036

`A047042(A065666(n+1))`
-/

namespace A174795.P12872662461180991036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047042 (A065666 (n + 1)).toNat

end

end A174795.P12872662461180991036

/-!
# A174796: Number of admissible sequences of order j; related to 7x+1 problem.

The programs for A174796, there is no canonical definition to state claims against.
-/

/-! ## A174796.P5874428578568909962

`A006013(n)-A329425(A052785(n))`
-/

namespace A174796.P5874428578568909962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n - A329425 (A052785 n).toNat

end

end A174796.P5874428578568909962

/-!
# A174797: Numbers n such that both semiprime(n) and semiprime(n+1) are even.

The programs for A174797, there is no canonical definition to state claims against.
-/

/-! ## A174797.P15944654071570020320

`A072000(A328036(n+1))`
-/

namespace A174797.P15944654071570020320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A328036 (n + 1)).toNat

end

end A174797.P15944654071570020320

/-! ## A174797.P14952084557582493225

`A058933(A328036(-xor(n, -1)))`
-/

namespace A174797.P14952084557582493225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A328036 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A174797.P14952084557582493225

/-! ## A174797.P10989790818487512969

`A058933(∏{p}[A328036(n+1), #])`
-/

namespace A174797.P10989790818487512969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A174797.P10989790818487512969

/-! ## A174797.P1674963634809187876

`A058933(A328036(2*n+1-n))`
-/

namespace A174797.P1674963634809187876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A328036 (2 * n + 1 - n)).toNat

end

end A174797.P1674963634809187876

/-! ## A174797.P13242558978541133436

`A058933(A328036(n+1))%A016886(n)`
-/

namespace A174797.P13242558978541133436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058933 (A328036 (n + 1)).toNat) (A016886 n)

end

end A174797.P13242558978541133436

/-! ## A174797.P13573823337630886177

`or(A000007(n), A058933(A328036(n+1)))`
-/

namespace A174797.P13573823337630886177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A058933 (A328036 (n + 1)).toNat)

end

end A174797.P13573823337630886177

/-! ## A174797.P2567866179052207318

`∑{d}[A058933(A328036(n+1)), A000010(#)]`
-/

namespace A174797.P2567866179052207318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A328036 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A174797.P2567866179052207318

/-! ## A174797.P9862081134466265036

`A058933(A328036(n+1))+A000007(n+1)`
-/

namespace A174797.P9862081134466265036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A328036 (n + 1)).toNat + A000007 (n + 1)

end

end A174797.P9862081134466265036

/-! ## A174797.P10314271465053442517

`A058933(A328036(n+1))+A000038(n+1)`
-/

namespace A174797.P10314271465053442517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A328036 (n + 1)).toNat + A000038 (n + 1)

end

end A174797.P10314271465053442517

/-! ## A174797.P8566227547169406839

`A058933(A328036(n+1)%A254242(n+1))`
-/

namespace A174797.P8566227547169406839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (Int.tmod (A328036 (n + 1)) (A254242 (n + 1))).toNat

end

end A174797.P8566227547169406839

/-! ## A174797.P2261982436798954922

`A007318(C(2, n))*A058933(A328036(n+1))`
-/

namespace A174797.P2261982436798954922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A058933 (A328036 (n + 1)).toNat

end

end A174797.P2261982436798954922

/-! ## A174797.P16913129624664122278

`A058933(A328036(n+1))/A007318(C(3, n))`
-/

namespace A174797.P16913129624664122278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058933 (A328036 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A174797.P16913129624664122278

/-! ## A174797.P1498738581161107664

`A000041(C(2, n+2))*A058933(A328036(n+1))`
-/

namespace A174797.P1498738581161107664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A058933 (A328036 (n + 1)).toNat

end

end A174797.P1498738581161107664

/-! ## A174797.P13881905838346906267

`A058933(A328036(n+1))+A008683(A045326(n+2))+1`
-/

namespace A174797.P13881905838346906267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A328036 (n + 1)).toNat + (A008683 (A045326 (n + 2)).toNat + 1)

end

end A174797.P13881905838346906267

/-!
# A174798: Numbers n such that 2*prime(n) and 2*prime(n+1) are consecutive semiprimes.

The programs for A174798, there is no canonical definition to state claims against.
-/

/-! ## A174798.P12805187987939174231

`A087794(A174797(n+1))`
-/

namespace A174798.P12805187987939174231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087794 (A174797 (n + 1)).toNat

end

end A174798.P12805187987939174231

/-! ## A174798.P2597631187302546942

`A003963(A328036(n+1))`
-/

namespace A174798.P2597631187302546942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A328036 (n + 1)).toNat

end

end A174798.P2597631187302546942

/-! ## A174798.P13271859866075974130

`A176506(A174797(n+1)+1)`
-/

namespace A174798.P13271859866075974130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176506 (A174797 (n + 1) + 1).toNat

end

end A174798.P13271859866075974130

/-! ## A174798.P6610376709701481255

`A056172(A328036(n+1)+1)`
-/

namespace A174798.P6610376709701481255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A328036 (n + 1) + 1).toNat

end

end A174798.P6610376709701481255

/-! ## A174798.P14828820083666202258

`A242096(A328036(n+1)+1)`
-/

namespace A174798.P14828820083666202258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (A328036 (n + 1) + 1).toNat

end

end A174798.P14828820083666202258

/-! ## A174798.P3088439084106595822

`A061395(2*A328036(n+1))`
-/

namespace A174798.P3088439084106595822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A328036 (n + 1)).toNat

end

end A174798.P3088439084106595822

/-! ## A174798.P621858786434847048

`A000720(A328036(n+1)/2)`
-/

namespace A174798.P621858786434847048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A328036 (n + 1) : ℚ) / 2)).toNat

end

end A174798.P621858786434847048

/-! ## A174798.P9768121963169578031

`A026238(A328036(n+1)/2)`
-/

namespace A174798.P9768121963169578031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (SequenceMachineLib.roundAway ((A328036 (n + 1) : ℚ) / 2)).toNat

end

end A174798.P9768121963169578031

/-! ## A174798.P18279458285856819705

`A055396(A328036(n+1)/2)`
-/

namespace A174798.P18279458285856819705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((A328036 (n + 1) : ℚ) / 2)).toNat

end

end A174798.P18279458285856819705

/-! ## A174798.P12848277246144787328

`A058933(A328036(n+1)/2)`
-/

namespace A174798.P12848277246144787328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (SequenceMachineLib.roundAway ((A328036 (n + 1) : ℚ) / 2)).toNat

end

end A174798.P12848277246144787328

/-!
# A174799: Partial sums of A051034.

The programs for A174799, there is no canonical definition to state claims against.
-/

/-! ## A174799.P16087634278352815708

`∑[A024935(n+2)]`
-/

namespace A174799.P16087634278352815708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024935 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174799.P16087634278352815708

/-! ## A174799.P1142868295183514981

`a(n-1)+A024935(n+2)+A000007(n)` with `a(0)=1`
-/

namespace A174799.P1142868295183514981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A024935 (n + 2) + A000007 n)

end

end A174799.P1142868295183514981

/-! ## A174799.P15610433774789855522

`A024935(n+2)+A000041(C(2, n+2))*a(n-1)` with `a(0)=1`
-/

namespace A174799.P15610433774789855522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024935 (n + 2) + A000041 (Nat.choose 2 (n + 2)) * a (n - 1)

end

end A174799.P15610433774789855522

/-! ## A174799.P16371650442524122337

`A028310(a(n-1))+A024935(n+2)` with `a(0)=1`
-/

namespace A174799.P16371650442524122337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A024935 (n + 2)

end

end A174799.P16371650442524122337

/-! ## A174799.P17455266293403763652

`∑[A046072(A288814(n+4))]`
-/

namespace A174799.P17455266293403763652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A288814 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174799.P17455266293403763652

/-! ## A174799.P5140901712817537166

`∑[A072491(A195663(∑[n+1]))]`
-/

namespace A174799.P5140901712817537166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A195663 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174799.P5140901712817537166

/-! ## A174799.P15323150350825205036

`∑[A334028(10*A049711(n+3))]`
-/

namespace A174799.P15323150350825205036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (10 * A049711 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174799.P15323150350825205036

/-! ## A174799.P10934794475203289421

`∑[A072491(n+2)]%A005843(A099627(n))`
-/

namespace A174799.P10934794475203289421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A005843 (A099627 n).toNat)

end

end A174799.P10934794475203289421

/-! ## A174799.P8485882493345477718

`∑[A072491(A037213((n+2)²))]`
-/

namespace A174799.P8485882493345477718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A037213 ((n + 2) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174799.P8485882493345477718

