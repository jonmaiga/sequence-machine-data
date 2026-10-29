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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A247300: Number of h- and H-steps at level 0 in all lattice paths in B(n).

The programs for A247300, there is no canonical definition to state claims against.
-/

/-! ## A247300.P12400526273832830796

`∑[A166297(n+2)-A166297(n)]`
-/

namespace A247300.P12400526273832830796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166297 (n + 2) - A166297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247300.P12400526273832830796

/-! ## A247300.P7295877446712875311

`A166297(n+1)+A166297(n+2)`
-/

namespace A247300.P7295877446712875311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166297 (n + 1) + A166297 (n + 2)

end

end A247300.P7295877446712875311

/-! ## A247300.P6275090258738517837

`A008615(A002426(n+2))-A000392(n)`
-/

namespace A247300.P6275090258738517837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A002426 (n + 2)).toNat - A000392 n

end

end A247300.P6275090258738517837

/-! ## A247300.P9522993403433949826

`A054899(A336135(n+3)+A025047(2*n+3))`
-/

namespace A247300.P9522993403433949826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A336135 (n + 3) + A025047 (2 * n + 3)).toNat

end

end A247300.P9522993403433949826

/-!
# A247301: Rectangular array read upwards by columns: T = T(n,k) = number of paths from (0,0) to (n,k), where 0 >= k <= 2, consisting of segments given by the vectors (1,1), (2,1), (1,-1).

The programs for A247301, the canonical program `A247301.P8595087189246086186` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247301 has offset 0).

The definition of A247301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247301.P8595087189246086186

`ogf((1+x^4-x^6+x^7+x^8-x^9+2x^11+x^14)/(1-2x^6-2x^9))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247301

/-- `ogf((1+x^4-x^6+x^7+x^8-x^9+2x^11+x^14)/(1-2x^6-2x^9))` -/
def P8595087189246086186.Spec : Prop :=
  ∀ n, P8595087189246086186.a n = A247301 n

theorem P8595087189246086186.correct : P8595087189246086186.Spec := by
  intro n
  simp only [A247301]

end A247301

/-! ## A247301.P7412956680447402795

`floor((A247302(n+3)+A010054(n))/2)`
-/

namespace A247301.P7412956680447402795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247302 (n + 3) + A010054 n : ℚ) / 2⌋

end

end A247301.P7412956680447402795

namespace A247301

/-- `floor((A247302(n+3)+A010054(n))/2)` -/
def P7412956680447402795.Spec : Prop :=
  ∀ n, P7412956680447402795.a n = A247301 n

end A247301

/-! ## A247301.P14970229104200158869

`floor((A247302(n+3)+A036987(n))/2)`
-/

namespace A247301.P14970229104200158869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247302 (n + 3) + A036987 n : ℚ) / 2⌋

end

end A247301.P14970229104200158869

namespace A247301

/-- `floor((A247302(n+3)+A036987(n))/2)` -/
def P14970229104200158869.Spec : Prop :=
  ∀ n, P14970229104200158869.a n = A247301 n

end A247301

/-! ## A247301.P6711428549728783251

`floor((A292438(n)+A247302(n+3))/2)`
-/

namespace A247301.P6711428549728783251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A292438 n + A247302 (n + 3) : ℚ) / 2⌋

end

end A247301.P6711428549728783251

namespace A247301

/-- `floor((A292438(n)+A247302(n+3))/2)` -/
def P6711428549728783251.Spec : Prop :=
  ∀ n, P6711428549728783251.a n = A247301 n

end A247301

/-! ## A247301.P5632279263636822724

`floor(A247302(n+3)/A020639(A004277(n)))`
-/

namespace A247301.P5632279263636822724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247302 (n + 3) : ℚ) / (A020639 (A004277 n).toNat : ℚ)⌋

end

end A247301.P5632279263636822724

namespace A247301

/-- `floor(A247302(n+3)/A020639(A004277(n)))` -/
def P5632279263636822724.Spec : Prop :=
  ∀ n, P5632279263636822724.a n = A247301 n

end A247301

/-! ## A247301.P15821902787029494623

`A249122(or(1, A247302(n+3)+A036987(n)))`
-/

namespace A247301.P15821902787029494623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (Int.lor 1 (A247302 (n + 3) + A036987 n)).toNat

end

end A247301.P15821902787029494623

namespace A247301

/-- `A249122(or(1, A247302(n+3)+A036987(n)))` -/
def P15821902787029494623.Spec : Prop :=
  ∀ n, P15821902787029494623.a n = A247301 n

end A247301

/-! ## A247301.P6534319653951270606

`A004526(A247302(n+3)+A010054(n))`
-/

namespace A247301.P6534319653951270606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A247302 (n + 3) + A010054 n).toNat

end

end A247301.P6534319653951270606

namespace A247301

/-- `A004526(A247302(n+3)+A010054(n))` -/
def P6534319653951270606.Spec : Prop :=
  ∀ n, P6534319653951270606.a n = A247301 n

end A247301

/-! ## A247301.P11601137901970280995

`A004526(A247302(n+3)+A036987(n))`
-/

namespace A247301.P11601137901970280995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A247302 (n + 3) + A036987 n).toNat

end

end A247301.P11601137901970280995

namespace A247301

/-- `A004526(A247302(n+3)+A036987(n))` -/
def P11601137901970280995.Spec : Prop :=
  ∀ n, P11601137901970280995.a n = A247301 n

end A247301

/-! ## A247301.P16811442118650824146

`A008619(A247302(n+3)+A010054(n))-1`
-/

namespace A247301.P16811442118650824146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A247302 (n + 3) + A010054 n).toNat - 1

end

end A247301.P16811442118650824146

namespace A247301

/-- `A008619(A247302(n+3)+A010054(n))-1` -/
def P16811442118650824146.Spec : Prop :=
  ∀ n, P16811442118650824146.a n = A247301 n

end A247301

/-!
# A247302: Rectangular array read upwards by columns: T = T(n,k) = number of paths from (0,1) to (n,k), where 0 >= k <= 2, consisting of segments given by the vectors (1,1), (2,1), (1,-1).

The programs for A247302, the canonical program `A247302.P9179466868375926850` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247302 has offset 0).

The definition of A247302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247302.P9179466868375926850

`2*a(n-6)+2*a(n-9)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=0, a(7)=2, a(8)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247302

/-- `2*a(n-6)+2*a(n-9)` -/
def P9179466868375926850.Spec : Prop :=
  ∀ n, (P9179466868375926850.a n : ℤ) = A247302 n

theorem P9179466868375926850.correct : P9179466868375926850.Spec := by
  intro n
  simp only [A247302]

end A247302

/-! ## A247302.P123762522141524620

`ogf((x+x^3+x^5+x^8)/(1-2x^6-2x^9))`
-/

namespace A247302.P123762522141524620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1, 0, 1, 0, 0, 1] [1, 0, 0, 0, 0, 0, -2, 0, 0, -2] n

end

end A247302.P123762522141524620

namespace A247302

/-- `ogf((x+x^3+x^5+x^8)/(1-2x^6-2x^9))` -/
def P123762522141524620.Spec : Prop :=
  ∀ n, P123762522141524620.a n = A247302 n

end A247302

/-! ## A247302.P12084347172980350084

`A247301(n+12)-(A247301(n+6)+A247301(n+9))`
-/

namespace A247302.P12084347172980350084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247301 (n + 12) - (A247301 (n + 6) + A247301 (n + 9))

end

end A247302.P12084347172980350084

namespace A247302

/-- `A247301(n+12)-(A247301(n+6)+A247301(n+9))` -/
def P12084347172980350084.Spec : Prop :=
  ∀ n, P12084347172980350084.a n = A247302 n

end A247302

/-! ## A247302.P14932791815850912518

`A247301(n+12)-A110654(A247301(n+15))`
-/

namespace A247302.P14932791815850912518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247301 (n + 12) - A110654 (A247301 (n + 15)).toNat

end

end A247302.P14932791815850912518

namespace A247302

/-- `A247301(n+12)-A110654(A247301(n+15))` -/
def P14932791815850912518.Spec : Prop :=
  ∀ n, P14932791815850912518.a n = A247302 n

end A247302

/-! ## A247302.P1157175764151840336

`A247050(n)+A064911(A290073(n))`
-/

namespace A247302.P1157175764151840336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247050 n + A064911 (A290073 n).toNat

end

end A247302.P1157175764151840336

namespace A247302

/-- `A247050(n)+A064911(A290073(n))` -/
def P1157175764151840336.Spec : Prop :=
  ∀ n, P1157175764151840336.a n = A247302 n

end A247302

/-!
# A247303: Convolution of A010059(n) with itself.

The programs for A247303, the canonical program `A247303.P9256863924315561378` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247303 has offset 0).

The definition of A247303 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247303.P9256863924315561378

`∑{#}[n, (1-A010060(#))*(1-A010060(n-#))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A247303

/-- `∑{#}[n, (1-A010060(#))*(1-A010060(n-#))]` -/
def P9256863924315561378.Spec : Prop :=
  ∀ n, P9256863924315561378.a n = A247303 n

theorem P9256863924315561378.correct : P9256863924315561378.Spec := by
  intro n
  simp only [A247303]

end A247303

/-! ## A247303.P1184775887082739934

`xor(char[2*n], A108804(n))`
-/

namespace A247303.P1184775887082739934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A108804 n)

end

end A247303.P1184775887082739934

namespace A247303

/-- `xor(char[2*n], A108804(n))` -/
def P1184775887082739934.Spec : Prop :=
  ∀ n, P1184775887082739934.a n = A247303 n

end A247303

/-! ## A247303.P4916288497841557002

`A108804(n)+∑[A106400(n)]`
-/

namespace A247303.P4916288497841557002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108804 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247303.P4916288497841557002

namespace A247303

/-- `A108804(n)+∑[A106400(n)]` -/
def P4916288497841557002.Spec : Prop :=
  ∀ n, P4916288497841557002.a n = A247303 n

end A247303

/-! ## A247303.P6178089925059599556

`xor(1, A108804(n)+A000035(n))`
-/

namespace A247303.P6178089925059599556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A108804 n + A000035 n)

end

end A247303.P6178089925059599556

namespace A247303

/-- `xor(1, A108804(n)+A000035(n))` -/
def P6178089925059599556.Spec : Prop :=
  ∀ n, P6178089925059599556.a n = A247303 n

end A247303

/-! ## A247303.P9693082867577608559

`A108804(n)+∑[2-A268676(n)]`
-/

namespace A247303.P9693082867577608559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A268676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108804 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247303.P9693082867577608559

namespace A247303

/-- `A108804(n)+∑[2-A268676(n)]` -/
def P9693082867577608559.Spec : Prop :=
  ∀ n, P9693082867577608559.a n = A247303 n

end A247303

/-! ## A247303.P13991703639406205947

`A108804(n)+A159481(n)-A115384(n)`
-/

namespace A247303.P13991703639406205947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108804 n + (A159481 n - A115384 n)

end

end A247303.P13991703639406205947

namespace A247303

/-- `A108804(n)+A159481(n)-A115384(n)` -/
def P13991703639406205947.Spec : Prop :=
  ∀ n, P13991703639406205947.a n = A247303 n

end A247303

/-! ## A247303.P1235502693566293005

`A228495(n+1)+A108804(n)-A254379(n)`
-/

namespace A247303.P1235502693566293005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (n + 1) + (A108804 n - A254379 n)

end

end A247303.P1235502693566293005

namespace A247303

/-- `A228495(n+1)+A108804(n)-A254379(n)` -/
def P1235502693566293005.Spec : Prop :=
  ∀ n, P1235502693566293005.a n = A247303 n

end A247303

/-! ## A247303.P13057782487396571340

`A108804(2*(n+1))-A108804(n+1)`
-/

namespace A247303.P13057782487396571340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108804 (2 * (n + 1)) - A108804 (n + 1)

end

end A247303.P13057782487396571340

namespace A247303

/-- `A108804(2*(n+1))-A108804(n+1)` -/
def P13057782487396571340.Spec : Prop :=
  ∀ n, P13057782487396571340.a n = A247303 n

end A247303

/-!
# A247304: Expected value of trace(O)^(2n), where O is a 5 X 5 orthogonal matrix randomly selected according to Haar measure.

The programs for A247304, there is no canonical definition to state claims against.
-/

/-! ## A247304.P10174857081837900003

`A095922(2*(n+1))`
-/

namespace A247304.P10174857081837900003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095922 (2 * (n + 1))

end

end A247304.P10174857081837900003

/-! ## A247304.P3116424907629119539

`record[A095922(A004275(n))]`
-/

namespace A247304.P3116424907629119539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095922 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247304.P3116424907629119539

/-! ## A247304.P14475673784174475710

`record[A033999(n)*A095922(n)]`
-/

namespace A247304.P14475673784174475710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A095922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247304.P14475673784174475710

/-! ## A247304.P9514188976698376035

`record[A095922(A000265(n+1)+1)]`
-/

namespace A247304.P9514188976698376035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095922 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247304.P9514188976698376035

/-! ## A247304.P15440232909772918382

`record[A095922(n+1-A020639(n+1))]`
-/

namespace A247304.P15440232909772918382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095922 ((n + 1 : ℤ) - A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247304.P15440232909772918382

/-!
# A247306: Array T(n,k) of the expected value of trace(O)^(2k), where O is an n X n orthogonal matrix randomly selected according to Haar measure, read by antidiagonals.

The programs for A247306, there is no canonical definition to state claims against.
-/

/-! ## A247306.P4251301667122591603

`A173265(2*A209571(n+1))`
-/

namespace A247306.P4251301667122591603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173265 (2 * A209571 (n + 1)).toNat

end

end A247306.P4251301667122591603

/-! ## A247306.P18006094925376307701

`A304337(A003983(n+1)^A059268(n))`
-/

namespace A247306.P18006094925376307701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304337 (SequenceMachineLib.roundAway ((A003983 (n + 1) : ℚ) ^ (A059268 n : ℤ))).toNat

end

end A247306.P18006094925376307701

/-! ## A247306.P11524597543841285585

`A173265(A209571(n+1)+A209571(n+1))`
-/

namespace A247306.P11524597543841285585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173265 (A209571 (n + 1) + A209571 (n + 1)).toNat

end

end A247306.P11524597543841285585

/-! ## A247306.P13650000302716700968

`A212930(A140993(n+1)%A130139(n+4))`
-/

namespace A247306.P13650000302716700968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212930 (Int.tmod (A140993 (n + 1)) (A130139 (n + 4))).toNat

end

end A247306.P13650000302716700968

/-! ## A247306.P2888675081241405592

`A091811(A027935(n)%A000043(3*n+1))`
-/

namespace A247306.P2888675081241405592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091811 (Int.tmod (A027935 n) (A000043 (3 * n + 1))).toNat

end

end A247306.P2888675081241405592

/-!
# A247307: Numbers of the form (4^k - 4)/k.

The programs for A247307, there is no canonical definition to state claims against.
-/

/-! ## A247307.P933176419657628328

`A125592(4^n)/(n+1)`
-/

namespace A247307.P933176419657628328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125592 (4 ^ n) : ℚ) / (n + 1 : ℚ)

end

end A247307.P933176419657628328

/-! ## A247307.P9692237298653073926

`A168328(∑[4^n])/(n+1)`
-/

namespace A247307.P9692237298653073926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168328 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A247307.P9692237298653073926

/-! ## A247307.P10302468071178455225

`A008586(4^n-1)/(n+1)`
-/

namespace A247307.P10302468071178455225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008586 (4 ^ n - 1) : ℚ) / (n + 1 : ℚ)

end

end A247307.P10302468071178455225

/-!
# A247308: Layer counting sequence in the order-5 cubic honeycomb.

The programs for A247308, there is no canonical definition to state claims against.
-/

/-! ## A247308.P3848274069310150957

`∑[A356835(n)]`
-/

namespace A247308.P3848274069310150957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247308.P3848274069310150957

/-! ## A247308.P16802916958457366855

`A317325(A356835(n)+a(n-1))` with `a(0)=1`
-/

namespace A247308.P16802916958457366855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A317325 (A356835 n + a (n - 1)).toNat

end

end A247308.P16802916958457366855

/-!
# A247309: Rectangular array read upwards by columns: T = T(n,k) = number of paths from (0,1) to (n,k), where 0 <= k <= 2, consisting of segments given by the vectors (1,1), (1,0), (1,-1), (1,-2).

The programs for A247309, the canonical program `A247309.P3067545861331404484` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247309 has offset 0).

The definition of A247309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247309.P3067545861331404484

`A247049(2*n-3*A079978(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A247309

/-- `A247049(2*n-3*A079978(n+1))` -/
def P3067545861331404484.Spec : Prop :=
  ∀ n, P3067545861331404484.a n = A247309 n

theorem P3067545861331404484.correct : P3067545861331404484.Spec := by
  intro n
  simp only [A247309]

end A247309

/-! ## A247309.P2599378051457868025

`A212804(round(2*n/3))`
-/

namespace A247309.P2599378051457868025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A247309.P2599378051457868025

namespace A247309

/-- `A212804(round(2*n/3))` -/
def P2599378051457868025.Spec : Prop :=
  ∀ n, P2599378051457868025.a n = A247309 n

end A247309

/-! ## A247309.P1172886950183175367

`A000045(abs(ceil((2*n-1)/3)-1))`
-/

namespace A247309.P1172886950183175367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |⌈((2 * n : ℤ) - 1 : ℚ) / 3⌉ - 1|.toNat

end

end A247309.P1172886950183175367

namespace A247309

/-- `A000045(abs(ceil((2*n-1)/3)-1))` -/
def P1172886950183175367.Spec : Prop :=
  ∀ n, P1172886950183175367.a n = A247309 n

end A247309

/-! ## A247309.P13342905818316466906

`A247049(A004273(n))`
-/

namespace A247309.P13342905818316466906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A004273 n).toNat

end

end A247309.P13342905818316466906

namespace A247309

/-- `A247049(A004273(n))` -/
def P13342905818316466906.Spec : Prop :=
  ∀ n, P13342905818316466906.a n = A247309 n

end A247309

/-! ## A247309.P16103239463947780000

`A247049(A163985(n))`
-/

namespace A247309.P16103239463947780000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A163985 n).toNat

end

end A247309.P16103239463947780000

namespace A247309

/-- `A247049(A163985(n))` -/
def P16103239463947780000.Spec : Prop :=
  ∀ n, P16103239463947780000.a n = A247309 n

end A247309

/-! ## A247309.P4198124767400193934

`A247049(A047240(n+1))`
-/

namespace A247309.P4198124767400193934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A047240 (n + 1)).toNat

end

end A247309.P4198124767400193934

namespace A247309

/-- `A247049(A047240(n+1))` -/
def P4198124767400193934.Spec : Prop :=
  ∀ n, P4198124767400193934.a n = A247309 n

end A247309

/-! ## A247309.P7946634669168098730

`A247049(A047242(n+1))`
-/

namespace A247309.P7946634669168098730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A047242 (n + 1)).toNat

end

end A247309.P7946634669168098730

namespace A247309

/-- `A247049(A047242(n+1))` -/
def P7946634669168098730.Spec : Prop :=
  ∀ n, P7946634669168098730.a n = A247309 n

end A247309

/-! ## A247309.P9782746724912090776

`A247049(A047244(n+1))`
-/

namespace A247309.P9782746724912090776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A047244 (n + 1)).toNat

end

end A247309.P9782746724912090776

namespace A247309

/-- `A247049(A047244(n+1))` -/
def P9782746724912090776.Spec : Prop :=
  ∀ n, P9782746724912090776.a n = A247309 n

end A247309

/-! ## A247309.P10965596729759205650

`A247049(A130824(n)/2)`
-/

namespace A247309.P10965596729759205650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (SequenceMachineLib.roundAway ((A130824 n : ℚ) / 2)).toNat

end

end A247309.P10965596729759205650

namespace A247309

/-- `A247049(A130824(n)/2)` -/
def P10965596729759205650.Spec : Prop :=
  ∀ n, P10965596729759205650.a n = A247309 n

end A247309

/-! ## A247309.P13328999140820954053

`A247049(A008486(n)-(n+1))`
-/

namespace A247309.P13328999140820954053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A008486 n - (n + 1 : ℤ)).toNat

end

end A247309.P13328999140820954053

namespace A247309

/-- `A247049(A008486(n)-(n+1))` -/
def P13328999140820954053.Spec : Prop :=
  ∀ n, P13328999140820954053.a n = A247309 n

end A247309

/-! ## A247309.P5161202179104194191

`A247049(A008486(n)-1-n)`
-/

namespace A247309.P5161202179104194191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A008486 n - 1 - (n : ℤ)).toNat

end

end A247309.P5161202179104194191

namespace A247309

/-- `A247049(A008486(n)-1-n)` -/
def P5161202179104194191.Spec : Prop :=
  ∀ n, P5161202179104194191.a n = A247309 n

end A247309

/-! ## A247309.P6820154404300944885

`A247049(A319451(n)-2*n)`
-/

namespace A247309.P6820154404300944885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A319451 n - (2 * n : ℤ)).toNat

end

end A247309.P6820154404300944885

namespace A247309

/-- `A247049(A319451(n)-2*n)` -/
def P6820154404300944885.Spec : Prop :=
  ∀ n, P6820154404300944885.a n = A247309 n

end A247309

/-! ## A247309.P15984717863811250640

`A247049(A319451(n)-n-n)`
-/

namespace A247309.P15984717863811250640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A319451 n - (n : ℤ) - (n : ℤ)).toNat

end

end A247309.P15984717863811250640

namespace A247309

/-- `A247049(A319451(n)-n-n)` -/
def P15984717863811250640.Spec : Prop :=
  ∀ n, P15984717863811250640.a n = A247309 n

end A247309

/-! ## A247309.P7185872593428673525

`A001611(abs(1-A004396(n)))-1`
-/

namespace A247309.P7185872593428673525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 |1 - A004396 n|.toNat - 1

end

end A247309.P7185872593428673525

namespace A247309

/-- `A001611(abs(1-A004396(n)))-1` -/
def P7185872593428673525.Spec : Prop :=
  ∀ n, P7185872593428673525.a n = A247309 n

end A247309

/-! ## A247309.P8530402913079963650

`A247049(2*n-A079978(n+1))`
-/

namespace A247309.P8530402913079963650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 ((2 * n : ℤ) - A079978 (n + 1)).toNat

end

end A247309.P8530402913079963650

namespace A247309

/-- `A247049(2*n-A079978(n+1))` -/
def P8530402913079963650.Spec : Prop :=
  ∀ n, P8530402913079963650.a n = A247309 n

end A247309

/-! ## A247309.P3799066213376709016

`A247049(A092220(2*n)+2*n)`
-/

namespace A247309.P3799066213376709016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A092220 (2 * n) + (2 * n : ℤ)).toNat

end

end A247309.P3799066213376709016

namespace A247309

/-- `A247049(A092220(2*n)+2*n)` -/
def P3799066213376709016.Spec : Prop :=
  ∀ n, P3799066213376709016.a n = A247309 n

end A247309

/-! ## A247309.P6436547665686594785

`A118658(A002264(2*n+1))/2`
-/

namespace A247309.P6436547665686594785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118658 (A002264 (2 * n + 1)).toNat : ℚ) / 2

end

end A247309.P6436547665686594785

namespace A247309

/-- `A118658(A002264(2*n+1))/2` -/
def P6436547665686594785.Spec : Prop :=
  ∀ n, P6436547665686594785.a n = (A247309 n : ℚ)

end A247309

/-! ## A247309.P6223613117525408696

`A118658(A285870(2*n+1))/2`
-/

namespace A247309.P6223613117525408696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118658 (A285870 (2 * n + 1)).toNat : ℚ) / 2

end

end A247309.P6223613117525408696

namespace A247309

/-- `A118658(A285870(2*n+1))/2` -/
def P6223613117525408696.Spec : Prop :=
  ∀ n, P6223613117525408696.a n = (A247309 n : ℚ)

end A247309

/-! ## A247309.P10394203780324258662

`A000045(A008620(2*n+1))-A000045(A002264(2*n+1))`
-/

namespace A247309.P10394203780324258662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008620 (2 * n + 1)).toNat - A000045 (A002264 (2 * n + 1)).toNat

end

end A247309.P10394203780324258662

namespace A247309

/-- `A000045(A008620(2*n+1))-A000045(A002264(2*n+1))` -/
def P10394203780324258662.Spec : Prop :=
  ∀ n, P10394203780324258662.a n = A247309 n

end A247309

/-! ## A247309.P15365923635683486849

`A123736(A004396(n)²+1)`
-/

namespace A247309.P15365923635683486849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123736 (A004396 n ^ 2 + 1).toNat

end

end A247309.P15365923635683486849

namespace A247309

/-- `A123736(A004396(n)²+1)` -/
def P15365923635683486849.Spec : Prop :=
  ∀ n, P15365923635683486849.a n = A247309 n

end A247309

/-!
# A247310: Rectangular array read upwards by columns: T = T(n,k) = number of paths from (0,1) to (n,k), where 0 <= k <= 2, consisting of segments given by the vectors (1,1), (1,2), (1,-1), (1,-2), where no segment is followed by a segment in the same direction.

The programs for A247310, the canonical program `A247310.P1069587211851915091` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247310 has offset 0).

The definition of A247310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247310.P1069587211851915091

`A000045(or(1, n)²%3*A008611(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A247310

/-- `A000045(or(1, n)²%3*A008611(n))` -/
def P1069587211851915091.Spec : Prop :=
  ∀ n, P1069587211851915091.a n = A247310 n

theorem P1069587211851915091.correct : P1069587211851915091.Spec := by
  intro n
  simp only [A247310]

end A247310

/-! ## A247310.P10317345048376169760

`A000045(lcm(A008611(n), A134668(n)))`
-/

namespace A247310.P10317345048376169760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.lcm (A008611 n) (A134668 n))

end

end A247310.P10317345048376169760

namespace A247310

/-- `A000045(lcm(A008611(n), A134668(n)))` -/
def P10317345048376169760.Spec : Prop :=
  ∀ n, P10317345048376169760.a n = A247310 n

end A247310

/-! ## A247310.P12312372973491758288

`lcm(A000045(A008611(n)), A309970(n))`
-/

namespace A247310.P12312372973491758288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000045 (A008611 n).toNat) (A309970 n)

end

end A247310.P12312372973491758288

namespace A247310

/-- `lcm(A000045(A008611(n)), A309970(n))` -/
def P12312372973491758288.Spec : Prop :=
  ∀ n, (P12312372973491758288.a n : ℤ) = A247310 n

end A247310

/-! ## A247310.P15904302007945056951

`A000045(A134668(n)²*A008611(n))`
-/

namespace A247310.P15904302007945056951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A134668 n ^ 2 * A008611 n).toNat

end

end A247310.P15904302007945056951

namespace A247310

/-- `A000045(A134668(n)²*A008611(n))` -/
def P15904302007945056951.Spec : Prop :=
  ∀ n, P15904302007945056951.a n = A247310 n

end A247310

/-! ## A247310.P14536878361470631137

`A000045(A309970(n)²*A008611(n))`
-/

namespace A247310.P14536878361470631137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A309970 n ^ 2 * A008611 n).toNat

end

end A247310.P14536878361470631137

namespace A247310

/-- `A000045(A309970(n)²*A008611(n))` -/
def P14536878361470631137.Spec : Prop :=
  ∀ n, P14536878361470631137.a n = A247310 n

end A247310

/-! ## A247310.P7216266612024046063

`A000045((A001057(n)+1)²%3*A008611(n))`
-/

namespace A247310.P7216266612024046063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod ((A001057 n + 1) ^ 2) 3 * A008611 n).toNat

end

end A247310.P7216266612024046063

namespace A247310

/-- `A000045((A001057(n)+1)²%3*A008611(n))` -/
def P7216266612024046063.Spec : Prop :=
  ∀ n, P7216266612024046063.a n = A247310 n

end A247310

/-! ## A247310.P2407516023733853281

`A000045(A008611(n)*A134668(n)*A134668(n))`
-/

namespace A247310.P2407516023733853281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008611 n * A134668 n * A134668 n).toNat

end

end A247310.P2407516023733853281

namespace A247310

/-- `A000045(A008611(n)*A134668(n)*A134668(n))` -/
def P2407516023733853281.Spec : Prop :=
  ∀ n, P2407516023733853281.a n = A247310 n

end A247310

/-! ## A247310.P13125364172003526650

`A000045(A008611(n)*A309970(n)*A309970(n))`
-/

namespace A247310.P13125364172003526650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008611 n * A309970 n * A309970 n).toNat

end

end A247310.P13125364172003526650

namespace A247310

/-- `A000045(A008611(n)*A309970(n)*A309970(n))` -/
def P13125364172003526650.Spec : Prop :=
  ∀ n, P13125364172003526650.a n = A247310 n

end A247310

/-!
# A247313: a(n) = 5*a(n-1) - 2^n for n>0, a(0)=1.

The programs for A247313, the canonical program `A247313.P13197956833150267392` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247313 has offset 0).

The definition of A247313 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-2^n` (program `A247313.P13197956833150267392`, by `A247313.P13197956833150267392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247313.P6943496338885438798

`ogf((1-4x)/(1-7x+10x^2))`
-/

namespace A247313.P6943496338885438798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -7, 10] n

end

end A247313.P6943496338885438798

namespace A247313

/-- `ogf((1-4x)/(1-7x+10x^2))` -/
def P6943496338885438798.Spec : Prop :=
  ∀ n, P6943496338885438798.a n = A247313 n

end A247313

/-! ## A247313.P1138405516461939961

`(2^(n+1)+5^n)/3`
-/

namespace A247313.P1138405516461939961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) + 5 ^ n : ℚ) / 3

end

end A247313.P1138405516461939961

namespace A247313

/-- `(2^(n+1)+5^n)/3` -/
def P1138405516461939961.Spec : Prop :=
  ∀ n, P1138405516461939961.a n = (A247313 n : ℚ)

theorem P1138405516461939961.correct : P1138405516461939961.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A247313, Nat.add_sub_cancel, A247313.P1138405516461939961.a, A247313.P13197956833150267392.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A247313, Nat.add_sub_cancel, A247313.P1138405516461939961.a, A247313.P13197956833150267392.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A247313

/-! ## A247313.P13197956833150267392

`5*a(n-1)-2^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247313

/-- `5*a(n-1)-2^n` -/
def P13197956833150267392.Spec : Prop :=
  ∀ n, P13197956833150267392.a n = A247313 n

theorem P13197956833150267392.correct : P13197956833150267392.Spec := by
  intro n
  simp only [A247313]

end A247313

/-! ## A247313.P7255642512352769454

`lcm(5, a(n-1))-2^n` with `a(0)=1`
-/

namespace A247313.P7255642512352769454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - (2 ^ n : ℤ)

end

end A247313.P7255642512352769454

namespace A247313

/-- `lcm(5, a(n-1))-2^n` -/
def P7255642512352769454.Spec : Prop :=
  ∀ n, P7255642512352769454.a n = A247313 n

end A247313

/-! ## A247313.P6169835648119833887

`a(n-1)+a(n-1)+5^(n-1)` with `a(0)=1`
-/

namespace A247313.P6169835648119833887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A247313.P6169835648119833887

namespace A247313

/-- `a(n-1)+a(n-1)+5^(n-1)` -/
def P6169835648119833887.Spec : Prop :=
  ∀ n, P6169835648119833887.a n = (A247313 n : ℚ)

end A247313

/-! ## A247313.P11339856651320784602

`floor(5*a(n-1)-A000079(n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A247313.P11339856651320784602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A000079 n

end

end A247313.P11339856651320784602

namespace A247313

/-- `floor(5*a(n-1)-A000079(n))` -/
def P11339856651320784602.Spec : Prop :=
  ∀ n, P11339856651320784602.a n = A247313 n

theorem P11339856651320784602.correct : P11339856651320784602.Spec := by
  intro n
  simp only [A247313, Nat.add_sub_cancel, A247313.P11339856651320784602.a, A247313.P13197956833150267392.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247313

/-! ## A247313.P17152190673697317730

`5*a(n-1)+2-A052548(n)` with `a(0)=1`
-/

namespace A247313.P17152190673697317730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + 2 - A052548 n

end

end A247313.P17152190673697317730

namespace A247313

/-- `5*a(n-1)+2-A052548(n)` -/
def P17152190673697317730.Spec : Prop :=
  ∀ n, P17152190673697317730.a n = A247313 n

theorem P17152190673697317730.correct : P17152190673697317730.Spec := by
  intro n
  simp only [A247313, Nat.add_sub_cancel, A247313.P17152190673697317730.a, A247313.P13197956833150267392.a, A052548, A052548.P18180923888402085992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247313

/-! ## A247313.P1625968593335268176

`A001045(n+1)+2*A015531(n)`
-/

namespace A247313.P1625968593335268176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + 2 * A015531 n

end

end A247313.P1625968593335268176

namespace A247313

/-- `A001045(n+1)+2*A015531(n)` -/
def P1625968593335268176.Spec : Prop :=
  ∀ n, P1625968593335268176.a n = A247313 n

end A247313

/-! ## A247313.P2283619121283969707

`A001045(n+1)+A123010(n+2)/2`
-/

namespace A247313.P2283619121283969707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) : ℚ) + (A123010 (n + 2) : ℚ) / 2

end

end A247313.P2283619121283969707

namespace A247313

/-- `A001045(n+1)+A123010(n+2)/2` -/
def P2283619121283969707.Spec : Prop :=
  ∀ n, P2283619121283969707.a n = (A247313 n : ℚ)

end A247313

/-! ## A247313.P17839985708789303972

`5*a(n-1)-A131577(n)-A131577(n)` with `a(0)=1`
-/

namespace A247313.P17839985708789303972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A131577 n - A131577 n

end

end A247313.P17839985708789303972

namespace A247313

/-- `5*a(n-1)-A131577(n)-A131577(n)` -/
def P17839985708789303972.Spec : Prop :=
  ∀ n, P17839985708789303972.a n = A247313 n

end A247313

/-! ## A247313.P12882311271686044728

`A078008(n+1)+A109500(n)+A015531(n)`
-/

namespace A247313.P12882311271686044728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n + 1) + (A109500 n + A015531 n)

end

end A247313.P12882311271686044728

namespace A247313

/-- `A078008(n+1)+A109500(n)+A015531(n)` -/
def P12882311271686044728.Spec : Prop :=
  ∀ n, P12882311271686044728.a n = A247313 n

end A247313

/-! ## A247313.P4186934473860506842

`2*A000351(n)-A016127(n)`
-/

namespace A247313.P4186934473860506842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000351 n - A016127 n

end

end A247313.P4186934473860506842

namespace A247313

/-- `2*A000351(n)-A016127(n)` -/
def P4186934473860506842.Spec : Prop :=
  ∀ n, P4186934473860506842.a n = A247313 n

end A247313

/-!
# A247315: Numbers x such that the sum of all their cyclic permutations is equal to that of all cyclic permutations of sigma(x).

The programs for A247315, there is no canonical definition to state claims against.
-/

/-! ## A247315.P5880427705903125480

`∩[A067343(n+1), A092191(n+1)]`
-/

namespace A247315.P5880427705903125480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247315.P5880427705903125480

/-! ## A247315.P14276327411950524796

`A067343(lt[A129902(3*n+4), A008460(n+1)])`
-/

namespace A247315.P14276327411950524796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129902 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067343 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247315.P14276327411950524796

/-!
# A247317: Numbers x such that the sum of all their cyclic permutations is equal to that of all cyclic permutations of sigma(x) and all cyclic permutations of Euler totient function phi(x).

The programs for A247317, there is no canonical definition to state claims against.
-/

/-! ## A247317.P6240345214356664994

`∩[A247315(n+1), A247316(n+1)]`
-/

namespace A247317.P6240345214356664994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247317.P6240345214356664994

/-!
# A247322: Number of paths from (0,0) to the line x = n, each consisting of segments given by the vectors (1,1), (1,2), (1,-1), with vertices (i,k) satisfying 0 <= k <= 3.

The programs for A247322, the canonical program `A247322.P11556022761336588647` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247322 has offset 0).

The definition of A247322 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A247323, A247325, A247326, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A247322.P11556022761336588647

`A247323(n)+A247323(n+1)+A247325(n)+A247326(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A247322

/-- `A247323(n)+A247323(n+1)+A247325(n)+A247326(n)` -/
def P11556022761336588647.Spec : Prop :=
  ∀ n, P11556022761336588647.a n = A247322 n

theorem P11556022761336588647.correct : P11556022761336588647.Spec := by
  intro n
  simp only [A247322]

end A247322

/-! ## A247322.P10848985597005456182

`ogf((1+2x+2x^2+x^3)/(1-3x^2-2x^3+x^4))`
-/

namespace A247322.P10848985597005456182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 1] [1, 0, -3, -2, 1] n

end

end A247322.P10848985597005456182

namespace A247322

/-- `ogf((1+2x+2x^2+x^3)/(1-3x^2-2x^3+x^4))` -/
def P10848985597005456182.Spec : Prop :=
  ∀ n, P10848985597005456182.a n = A247322 n

end A247322

/-! ## A247322.P5804554374636931619

`A247325(n+1)+A247325(n)`
-/

namespace A247322.P5804554374636931619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247325 (n + 1) + A247325 n

end

end A247322.P5804554374636931619

namespace A247322

/-- `A247325(n+1)+A247325(n)` -/
def P5804554374636931619.Spec : Prop :=
  ∀ n, P5804554374636931619.a n = A247322 n

end A247322

/-! ## A247322.P10790611688076815630

`A247326(n+1)+A247326(n)+A247323(n)`
-/

namespace A247322.P10790611688076815630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247326 (n + 1) + (A247326 n + A247323 n)

end

end A247322.P10790611688076815630

namespace A247322

/-- `A247326(n+1)+A247326(n)+A247323(n)` -/
def P10790611688076815630.Spec : Prop :=
  ∀ n, P10790611688076815630.a n = A247322 n

end A247322

/-! ## A247322.P15097816493593441431

`A247355(n+1)+A247355(n)-A247354(n)`
-/

namespace A247322.P15097816493593441431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247355 (n + 1) + (A247355 n - A247354 n)

end

end A247322.P15097816493593441431

namespace A247322

/-- `A247355(n+1)+A247355(n)-A247354(n)` -/
def P15097816493593441431.Spec : Prop :=
  ∀ n, P15097816493593441431.a n = A247322 n

end A247322

/-! ## A247322.P4566889979211443742

`3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=9`
-/

namespace A247322.P4566889979211443742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 9] fun n a =>
  3 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A247322.P4566889979211443742

namespace A247322

/-- `3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P4566889979211443742.Spec : Prop :=
  ∀ n, P4566889979211443742.a n = A247322 n

end A247322

/-! ## A247322.P6891471376041404234

`A247353(n)-A247354(n)`
-/

namespace A247322.P6891471376041404234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247353 n - A247354 n

end

end A247322.P6891471376041404234

namespace A247322

/-- `A247353(n)-A247354(n)` -/
def P6891471376041404234.Spec : Prop :=
  ∀ n, P6891471376041404234.a n = A247322 n

end A247322

/-! ## A247322.P9741771119609394584

`A247326(n+2)-A247323(n)`
-/

namespace A247322.P9741771119609394584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247326 (n + 2) - A247323 n

end

end A247322.P9741771119609394584

namespace A247322

/-- `A247326(n+2)-A247323(n)` -/
def P9741771119609394584.Spec : Prop :=
  ∀ n, P9741771119609394584.a n = A247322 n

end A247322

/-!
# A247323: Number of paths from (0,0) to (n,0), with vertices (i,k) satisfying 0 <= k <= 3, consisting of segments given by the vectors (1,1), (1,2), (1,-1).

The programs for A247323, the canonical program `A247323.P1959809033628123209` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247323 has offset 0).

The definition of A247323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 351 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247323.P2336865796786367530

`ogf((-1+2x^2+x^3)/(-1+3x^2+2x^3-x^4))`
-/

namespace A247323.P2336865796786367530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, -1] [1, 0, -3, -2, 1] n

end

end A247323.P2336865796786367530

namespace A247323

/-- `ogf((-1+2x^2+x^3)/(-1+3x^2+2x^3-x^4))` -/
def P2336865796786367530.Spec : Prop :=
  ∀ n, P2336865796786367530.a n = A247323 n

end A247323

/-! ## A247323.P1959809033628123209

`3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247323

/-- `3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P1959809033628123209.Spec : Prop :=
  ∀ n, P1959809033628123209.a n = A247323 n

theorem P1959809033628123209.correct : P1959809033628123209.Spec := by
  intro n
  simp only [A247323]

end A247323

/-! ## A247323.P4249847577184352263

`A247322(n)-(A247326(n+1)+A247326(n))`
-/

namespace A247323.P4249847577184352263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247322 n - (A247326 (n + 1) + A247326 n)

end

end A247323.P4249847577184352263

namespace A247323

/-- `A247322(n)-(A247326(n+1)+A247326(n))` -/
def P4249847577184352263.Spec : Prop :=
  ∀ n, P4249847577184352263.a n = A247323 n

end A247323

/-! ## A247323.P1419654935717046469

`A247326(n+2)-A247322(n)`
-/

namespace A247323.P1419654935717046469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247326 (n + 2) - A247322 n

end

end A247323.P1419654935717046469

namespace A247323

/-- `A247326(n+2)-A247322(n)` -/
def P1419654935717046469.Spec : Prop :=
  ∀ n, P1419654935717046469.a n = A247323 n

end A247323

/-! ## A247323.P10376288126895369430

`∑[A247322(n)]+2-A247322(n+1)`
-/

namespace A247323.P10376288126895369430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A247322 (n + 1))

end

end A247323.P10376288126895369430

namespace A247323

/-- `∑[A247322(n)]+2-A247322(n+1)` -/
def P10376288126895369430.Spec : Prop :=
  ∀ n, P10376288126895369430.a n = A247323 n

end A247323

/-! ## A247323.P5250425422866327340

`A247321(4*n)`
-/

namespace A247323.P5250425422866327340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247321 (4 * n)

end

end A247323.P5250425422866327340

namespace A247323

/-- `A247321(4*n)` -/
def P5250425422866327340.Spec : Prop :=
  ∀ n, P5250425422866327340.a n = A247323 n

end A247323

/-!
# A247324: Numbers k such that d(r,k) != d(s,k), where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {sqrt(3)}, and { } = fractional part.

The programs for A247324, there is no canonical definition to state claims against.
-/

/-! ## A247324.P1204950075030534085

`∪[A246357(n+1), A246358(n+1)]`
-/

namespace A247324.P1204950075030534085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247324.P1204950075030534085

/-! ## A247324.P8928694872034815225

`eq[1, A004547(n+1)+A004539(n+1)]`
-/

namespace A247324.P8928694872034815225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1) + A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247324.P8928694872034815225

/-! ## A247324.P16219858550201046747

`eq[char[A247454(n+1)], A151622(n)]`
-/

namespace A247324.P16219858550201046747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247454 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A247324.P16219858550201046747

/-!
# A247325: Number of paths from (0,0) to (n,2), with vertices (i,k) satisfying 0 <= k <= 3, consisting of segments given by the vectors (1,1), (1,2), (1,-1).

The programs for A247325, the canonical program `A247325.P17532943088981505861` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247325 has offset 0).

The definition of A247325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247325.P8660176176393033682

`ogf((x+x^2+x^3)/(1-3x^2-2x^3+x^4))`
-/

namespace A247325.P8660176176393033682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1] [1, 0, -3, -2, 1] n

end

end A247325.P8660176176393033682

namespace A247325

/-- `ogf((x+x^2+x^3)/(1-3x^2-2x^3+x^4))` -/
def P8660176176393033682.Spec : Prop :=
  ∀ n, P8660176176393033682.a n = A247325 n

end A247325

/-! ## A247325.P17532943088981505861

`3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247325

/-- `3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P17532943088981505861.Spec : Prop :=
  ∀ n, P17532943088981505861.a n = A247325 n

theorem P17532943088981505861.correct : P17532943088981505861.Spec := by
  intro n
  simp only [A247325]

end A247325

/-! ## A247325.P5247953728843083079

`A247323(n+2)-A247323(n)`
-/

namespace A247325.P5247953728843083079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247323 (n + 2) - A247323 n

end

end A247325.P5247953728843083079

namespace A247325

/-- `A247323(n+2)-A247323(n)` -/
def P5247953728843083079.Spec : Prop :=
  ∀ n, P5247953728843083079.a n = A247325 n

end A247325

/-! ## A247325.P4029557994538067521

`A247322(n)-(A247355(n)+A247354(n+1))`
-/

namespace A247325.P4029557994538067521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247322 n - (A247355 n + A247354 (n + 1))

end

end A247325.P4029557994538067521

namespace A247325

/-- `A247322(n)-(A247355(n)+A247354(n+1))` -/
def P4029557994538067521.Spec : Prop :=
  ∀ n, P4029557994538067521.a n = A247325 n

end A247325

/-! ## A247325.P12187814005331836684

`A247355(n+1)-(A247354(n+1)+A247354(n))`
-/

namespace A247325.P12187814005331836684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247355 (n + 1) - (A247354 (n + 1) + A247354 n)

end

end A247325.P12187814005331836684

namespace A247325

/-- `A247355(n+1)-(A247354(n+1)+A247354(n))` -/
def P12187814005331836684.Spec : Prop :=
  ∀ n, P12187814005331836684.a n = A247325 n

end A247325

/-! ## A247325.P12867432408637728764

`A247353(n)+A247353(n)-A247322(n+1)`
-/

namespace A247325.P12867432408637728764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247353 n + (A247353 n - A247322 (n + 1))

end

end A247325.P12867432408637728764

namespace A247325

/-- `A247353(n)+A247353(n)-A247322(n+1)` -/
def P12867432408637728764.Spec : Prop :=
  ∀ n, P12867432408637728764.a n = A247325 n

end A247325

/-! ## A247325.P4217255475791657404

`A247321(4*n+2)`
-/

namespace A247325.P4217255475791657404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247321 (4 * n + 2)

end

end A247325.P4217255475791657404

namespace A247325

/-- `A247321(4*n+2)` -/
def P4217255475791657404.Spec : Prop :=
  ∀ n, P4217255475791657404.a n = A247325 n

end A247325

/-! ## A247325.P3878340400304106970

`A247352(4*n+3)`
-/

namespace A247325.P3878340400304106970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247352 (4 * n + 3)

end

end A247325.P3878340400304106970

namespace A247325

/-- `A247352(4*n+3)` -/
def P3878340400304106970.Spec : Prop :=
  ∀ n, P3878340400304106970.a n = A247325 n

end A247325

/-! ## A247325.P10939133075352220865

`A057427(n)*A247321(A004767(n)-1)`
-/

namespace A247325.P10939133075352220865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A247321 (A004767 n - 1).toNat

end

end A247325.P10939133075352220865

namespace A247325

/-- `A057427(n)*A247321(A004767(n)-1)` -/
def P10939133075352220865.Spec : Prop :=
  ∀ n, P10939133075352220865.a n = A247325 n

end A247325

/-!
# A247326: Number of paths from (0,0) to (n,3), with vertices (i,k) satisfying 0 <= k <= 3, consisting of segments given by the vectors (1,1), (1,2), (1,-1).

The programs for A247326, the canonical program `A247326.P3283791322204976538` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247326 has offset 0).

The definition of A247326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247326.P5507932105189099857

`ogf((2x^2+2x^3)/(1-3x^2-2x^3+x^4))`
-/

namespace A247326.P5507932105189099857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 2] [1, 0, -3, -2, 1] n

end

end A247326.P5507932105189099857

namespace A247326

/-- `ogf((2x^2+2x^3)/(1-3x^2-2x^3+x^4))` -/
def P5507932105189099857.Spec : Prop :=
  ∀ n, P5507932105189099857.a n = A247326 n

end A247326

/-! ## A247326.P3283791322204976538

`3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247326

/-- `3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P3283791322204976538.Spec : Prop :=
  ∀ n, P3283791322204976538.a n = A247326 n

theorem P3283791322204976538.correct : P3283791322204976538.Spec := by
  intro n
  simp only [A247326]

end A247326

/-! ## A247326.P16064123072102276711

`2*(∑[A247354(n)]-A247354(n))`
-/

namespace A247326.P16064123072102276711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A247354 n)

end

end A247326.P16064123072102276711

namespace A247326

/-- `2*(∑[A247354(n)]-A247354(n))` -/
def P16064123072102276711.Spec : Prop :=
  ∀ n, P16064123072102276711.a n = A247326 n

end A247326

/-! ## A247326.P3009529898439267150

`A247325(n+1)-(A247323(n+1)+A247323(n))`
-/

namespace A247326.P3009529898439267150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247325 (n + 1) - (A247323 (n + 1) + A247323 n)

end

end A247326.P3009529898439267150

namespace A247326

/-- `A247325(n+1)-(A247323(n+1)+A247323(n))` -/
def P3009529898439267150.Spec : Prop :=
  ∀ n, P3009529898439267150.a n = A247326 n

end A247326

/-! ## A247326.P17714892749302694285

`A247321(4*n+3)`
-/

namespace A247326.P17714892749302694285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247321 (4 * n + 3)

end

end A247326.P17714892749302694285

namespace A247326

/-- `A247321(4*n+3)` -/
def P17714892749302694285.Spec : Prop :=
  ∀ n, P17714892749302694285.a n = A247326 n

end A247326

/-! ## A247326.P5818318506356882524

`lcm(2, A247321(A004767(n)))`
-/

namespace A247326.P5818318506356882524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A247321 (A004767 n).toNat)

end

end A247326.P5818318506356882524

namespace A247326

/-- `lcm(2, A247321(A004767(n)))` -/
def P5818318506356882524.Spec : Prop :=
  ∀ n, (P5818318506356882524.a n : ℤ) = A247326 n

end A247326

/-! ## A247326.P14503267843237790300

`A057427(n)*A247321(A004767(n))`
-/

namespace A247326.P14503267843237790300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A247321 (A004767 n).toNat

end

end A247326.P14503267843237790300

namespace A247326

/-- `A057427(n)*A247321(A004767(n))` -/
def P14503267843237790300.Spec : Prop :=
  ∀ n, P14503267843237790300.a n = A247326 n

end A247326

/-! ## A247326.P573512498494865584

`A247321(A004767(n))%A087161(n+1)`
-/

namespace A247326.P573512498494865584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247321 (A004767 n).toNat) (A087161 (n + 1))

end

end A247326.P573512498494865584

namespace A247326

/-- `A247321(A004767(n))%A087161(n+1)` -/
def P573512498494865584.Spec : Prop :=
  ∀ n, P573512498494865584.a n = A247326 n

end A247326

/-!
# A247327: Triangle read by rows: T(n,k) = sum of k-th row of n X n square filled with odd numbers 1 through 2*n^2-1 reading across rows left-to-right.

The programs for A247327, there is no canonical definition to state claims against.
-/

/-! ## A247327.P9113452789630392396

`(row(n)+1)²*(col(n)+1+col(n))`
-/

namespace A247327.P9113452789630392396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1) ^ 2 * (SequenceMachineLib.triCol n + 1 + SequenceMachineLib.triCol n)

end

end A247327.P9113452789630392396

/-! ## A247327.P17337568484018556827

`(2*col(n)+1)*(row(n)+1)*(row(n)+1)`
-/

namespace A247327.P17337568484018556827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.triCol n + 1) * ((SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triRow n + 1))

end

end A247327.P17337568484018556827

/-! ## A247327.P13465024510959856209

`(2*(n-C(∑[char[∑[n]]], 2))+1)*∑[char[∑[n]]]²`
-/

namespace A247327.P13465024510959856209
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
  (2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 1) * (((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ)

end

end A247327.P13465024510959856209

/-! ## A247327.P6642746381505880672

`∑[char[∑[n]]]*A079297(n+1)`
-/

namespace A247327.P6642746381505880672
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A079297 (n + 1)

end

end A247327.P6642746381505880672

/-! ## A247327.P17574889701073640182

`∑[char[∑[n]]]²*A158405(n+1)`
-/

namespace A247327.P17574889701073640182
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A158405 (n + 1)

end

end A247327.P17574889701073640182

/-! ## A247327.P12142568550648482950

`(2*A002262(n)+1)*∑[char[∑[n]]]²`
-/

namespace A247327.P12142568550648482950
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A002262 n + 1) * (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A247327.P12142568550648482950

/-! ## A247327.P11572450054171549978

`∑[char[∑[n]]]²*A074294(2*n+1)`
-/

namespace A247327.P11572450054171549978
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A074294 (2 * n + 1)

end

end A247327.P11572450054171549978

/-! ## A247327.P13443054661566533787

`∑[char[∑[n]]]²*A171173(2*(n+1))`
-/

namespace A247327.P13443054661566533787
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A171173 (2 * (n + 1))

end

end A247327.P13443054661566533787

/-! ## A247327.P15470556093403061698

`A103218(A245300(n))`
-/

namespace A247327.P15470556093403061698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103218 (A245300 n).toNat

end

end A247327.P15470556093403061698

/-! ## A247327.P15582945305879656679

`A158405(n+1)*A093995(n+1)`
-/

namespace A247327.P15582945305879656679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) * A093995 (n + 1)

end

end A247327.P15582945305879656679

/-!
# A247328: 

The programs for A247328, there is no canonical definition to state claims against.
-/

/-! ## A247328.P12577816758637376629

`record[gcd(lcm(4, n+1)/4, A294890(n+1))]`
-/

namespace A247328.P12577816758637376629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)) (A294890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247328.P12577816758637376629

/-! ## A247328.P14867861152750910958

`eq[A341620(n+1)+1, (n+1)%2]+1`
-/

namespace A247328.P14867861152750910958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A247328.P14867861152750910958

/-! ## A247328.P1675760957087998466

`∩[2*n+1, A005100(n+1)]`
-/

namespace A247328.P1675760957087998466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247328.P1675760957087998466

/-! ## A247328.P9082448071886118941

`record[A000265(A005100(n+1))]`
-/

namespace A247328.P9082448071886118941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A005100 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247328.P9082448071886118941

/-! ## A247328.P8725121687181762165

`eq[n%2, A033630(n)]`
-/

namespace A247328.P8725121687181762165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247328.P8725121687181762165

/-! ## A247328.P2149738235057555609

`lt[A039653(n), lcm(2, n)]`
-/

namespace A247328.P2149738235057555609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A247328.P2149738235057555609

/-! ## A247328.P1581153294757301875

`lt[A001065(n+1), -((n+1)/or(n+1, -(n+1)))]+1`
-/

namespace A247328.P1581153294757301875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A247328.P1581153294757301875

/-! ## A247328.P9818028698387529234

`eq[A000035(n), A033630(n)]`
-/

namespace A247328.P9818028698387529234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247328.P9818028698387529234

/-!
# A247329: a(n) = Sum_{k=0..n} (-1)^(n-k) * C(n,k) * Stirling1(n+1, k+1).

The programs for A247329, there is no canonical definition to state claims against.
-/

/-! ## A247329.P1499269024945269714

`A271699(∑[n+2])`
-/

namespace A247329.P1499269024945269714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271699 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247329.P1499269024945269714

/-! ## A247329.P17921317441499844329

`record[A271699(A056943(n))]`
-/

namespace A247329.P17921317441499844329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271699 (A056943 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247329.P17921317441499844329

/-! ## A247329.P9484480809273141046

`record[A271699(A061579(n))]`
-/

namespace A247329.P9484480809273141046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271699 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247329.P9484480809273141046

/-! ## A247329.P6430912163807210975

`record[A271699(A286099(n))]`
-/

namespace A247329.P6430912163807210975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271699 (A286099 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247329.P6430912163807210975

/-! ## A247329.P10014787209051014596

`A388788((n+1)²+n²)`
-/

namespace A247329.P10014787209051014596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388788 ((n + 1) ^ 2 + n ^ 2)

end

end A247329.P10014787209051014596

/-!
# A247330: G.f. satisfies: A(x) = Sum_{n>=0} x^n * (2 + A(x)^n)^n.

The programs for A247330, there is no canonical definition to state claims against.
-/

/-! ## A247330.P10647194818800489592

`A330471(and(n, Δ[-n²])+n^(n%2))+∑[n]`
-/

namespace A247330.P10647194818800489592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330471 (Int.land (n : ℤ) (f1 (n + 1) - f1 n) + (n ^ (n % 2) : ℤ)).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A247330.P10647194818800489592

/-!
# A247331: G.f. satisfies: A(x) = Sum_{n>=0} x^n * (3 + A(x)^n)^n.

The programs for A247331, there is no canonical definition to state claims against.
-/

/-! ## A247331.P6518963487878078799

`A265667(or(floor(10^n/9), Δ[n²]))`
-/

namespace A247331.P6518963487878078799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (Int.lor ⌊(10 ^ n : ℚ) / 9⌋ ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A247331.P6518963487878078799

/-!
# A247332: G.f. A(x) satisfies: 1-x = Sum_{n>=0} (A(x) + (-x)^n)^n * (-x)^n.

The programs for A247332, there is no canonical definition to state claims against.
-/

/-! ## A247332.P17776407362888852426

`A127180(n+1)-A002877(n+1)`
-/

namespace A247332.P17776407362888852426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127180 (n + 1) - A002877 (n + 1)

end

end A247332.P17776407362888852426

/-! ## A247332.P4914733586484339964

`A239456((n+1)²)+A085313(n+1)`
-/

namespace A247332.P4914733586484339964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239456 ((n + 1) ^ 2) + A085313 (n + 1)

end

end A247332.P4914733586484339964

/-! ## A247332.P2110708897309388588

`A054846(A149623(n)+A026741(n))`
-/

namespace A247332.P2110708897309388588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A149623 n + A026741 n).toNat

end

end A247332.P2110708897309388588

/-! ## A247332.P5285021336320689400

`A325446(A126367(n))+A001654(n)`
-/

namespace A247332.P5285021336320689400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325446 (A126367 n).toNat + A001654 n

end

end A247332.P5285021336320689400

/-!
# A247333: Number of Dyck paths of semilength n avoiding the consecutive step pattern UDUDU, where U=(1,1) and D=(1,-1).

The programs for A247333, there is no canonical definition to state claims against.
-/

/-! ## A247333.P9802277054793812309

`A246188(A022856(n+2))`
-/

namespace A247333.P9802277054793812309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246188 (A022856 (n + 2)).toNat

end

end A247333.P9802277054793812309

/-! ## A247333.P10685699973231802282

`A246188(A000124(n)-A004275(n))`
-/

namespace A247333.P10685699973231802282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246188 (A000124 n - A004275 n).toNat

end

end A247333.P10685699973231802282

/-! ## A247333.P15191565805549105491

`A246188(A133263(n)-A004280(n+1))`
-/

namespace A247333.P15191565805549105491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246188 (A133263 n - A004280 (n + 1)).toNat

end

end A247333.P15191565805549105491

/-! ## A247333.P16485447851830297398

`A246188(lt[A123975(n+1), A135333(n)])`
-/

namespace A247333.P16485447851830297398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246188 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247333.P16485447851830297398

/-! ## A247333.P13620069534923150827

`A246188(lt[A123975(n+1), A246188(n)])`
-/

namespace A247333.P13620069534923150827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246188 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247333.P13620069534923150827

/-!
# A247335: The curvature of touching circles inscribed in a special way in the larger segment of circle of radius 10/9 divided by a chord of length 4/3.

The programs for A247335, the canonical program `A247335.P274043918989071057` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247335 has offset 0).

The definition of A247335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247335.P274043918989071057

`(1+A078986(n))/2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A247335

/-- `(1+A078986(n))/2` -/
def P274043918989071057.Spec : Prop :=
  ∀ n, P274043918989071057.a n = (A247335 n : ℚ)

end A247335

/-! ## A247335.P16582802935161593521

`(19+6*sqrt(10))^-n*(1+(19+6*sqrt(10))^n)²/4`
-/

namespace A247335.P16582802935161593521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (19 + 6 * Real.sqrt (10 : ℝ)) ^ (-(n : ℤ) : ℤ) * (1 + (19 + 6 * Real.sqrt (10 : ℝ)) ^ n) ^ 2 / 4

end

end A247335.P16582802935161593521

namespace A247335

/-- `(19+6*sqrt(10))^-n*(1+(19+6*sqrt(10))^n)²/4` -/
def P16582802935161593521.Spec : Prop :=
  ∀ n, P16582802935161593521.a n = (A247335 n : ℝ)

end A247335

/-! ## A247335.P11643733447984368190

`ogf((1-29x+10x^2)/(1-39x+39x^2-x^3))`
-/

namespace A247335.P11643733447984368190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -29, 10] [1, -39, 39, -1] n

end

end A247335.P11643733447984368190

namespace A247335

/-- `ogf((1-29x+10x^2)/(1-39x+39x^2-x^3))` -/
def P11643733447984368190.Spec : Prop :=
  ∀ n, P11643733447984368190.a n = A247335 n

end A247335

/-! ## A247335.P12379652388203571171

`39*a(n-1)-39*a(n-2)+a(n-3)` with `a(0)=1, a(1)=10, a(2)=361`
-/

namespace A247335.P12379652388203571171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 361] fun n a =>
  39 * a (n - 1) - 39 * a (n - 2) + a (n - 3)

end

end A247335.P12379652388203571171

namespace A247335

/-- `39*a(n-1)-39*a(n-2)+a(n-3)` -/
def P12379652388203571171.Spec : Prop :=
  ∀ n, P12379652388203571171.a n = A247335 n

end A247335

/-! ## A247335.P9392589242889619485

`A132593(n)+1`
-/

namespace A247335.P9392589242889619485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132593 n + 1

end

end A247335.P9392589242889619485

namespace A247335

/-- `A132593(n)+1` -/
def P9392589242889619485.Spec : Prop :=
  ∀ n, P9392589242889619485.a n = A247335 n

end A247335

/-! ## A247335.P10903685477387653479

`ceil(A078986(n)/2)`
-/

namespace A247335.P10903685477387653479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078986 n : ℚ) / 2⌉

end

end A247335.P10903685477387653479

namespace A247335

/-- `ceil(A078986(n)/2)` -/
def P10903685477387653479.Spec : Prop :=
  ∀ n, P10903685477387653479.a n = A247335 n

end A247335

/-! ## A247335.P7050360224826909339

`ceil(A005667(2*n)/2)`
-/

namespace A247335.P7050360224826909339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005667 (2 * n) : ℚ) / 2⌉

end

end A247335.P7050360224826909339

namespace A247335

/-- `ceil(A005667(2*n)/2)` -/
def P7050360224826909339.Spec : Prop :=
  ∀ n, P7050360224826909339.a n = A247335 n

end A247335

/-! ## A247335.P4047010331945457132

`ceil(A031149(A017005(n))/2)`
-/

namespace A247335.P4047010331945457132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A031149 (A017005 n).toNat : ℚ) / 2⌉

end

end A247335.P4047010331945457132

namespace A247335

/-- `ceil(A031149(A017005(n))/2)` -/
def P4047010331945457132.Spec : Prop :=
  ∀ n, P4047010331945457132.a n = A247335 n

end A247335

/-! ## A247335.P15477007645480874455

`A221875(2*n+1)-A129556(2*n+1)`
-/

namespace A247335.P15477007645480874455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221875 (2 * n + 1) - A129556 (2 * n + 1)

end

end A247335.P15477007645480874455

namespace A247335

/-- `A221875(2*n+1)-A129556(2*n+1)` -/
def P15477007645480874455.Spec : Prop :=
  ∀ n, P15477007645480874455.a n = A247335 n

end A247335

/-!
# A247336: Numbers of the form m^k - k - 1 with k > 0 and m > 1.

The programs for A247336, there is no canonical definition to state claims against.
-/

/-! ## A247336.P16820414682426016372

`lt[1, A057898(A028310(n)+1)]`
-/

namespace A247336.P16820414682426016372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057898 (A028310 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A247336.P16820414682426016372

/-! ## A247336.P10798701113277769730

`record[n*A323022(A057898(n+1))]`
-/

namespace A247336.P10798701113277769730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A323022 (A057898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247336.P10798701113277769730

/-! ## A247336.P4216902959737983683

`lt[A001222(n+1), A057898(n+1)²]`
-/

namespace A247336.P4216902959737983683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057898 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247336.P4216902959737983683

/-! ## A247336.P6267947221540266003

`A057897(A028310(n))-A054977(n)`
-/

namespace A247336.P6267947221540266003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057897 (A028310 n).toNat - A054977 n

end

end A247336.P6267947221540266003

/-! ## A247336.P8786233890629052830

`A057897(A028310(n))-(A000007(n)+1)`
-/

namespace A247336.P8786233890629052830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057897 (A028310 n).toNat - (A000007 n + 1)

end

end A247336.P8786233890629052830

/-! ## A247336.P7147009804377996553

`lt[A001222(A034684(n+1)), A057898(n+1)]`
-/

namespace A247336.P7147009804377996553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034684 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247336.P7147009804377996553

/-! ## A247336.P9723712006963436713

`lt[A001222(A304181(n+1)), A057898(n+1)]`
-/

namespace A247336.P9723712006963436713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A304181 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247336.P9723712006963436713

/-! ## A247336.P7366635030057943078

`A001222(2*A006530(n+1))+A057897(A028310(n))-3`
-/

namespace A247336.P7366635030057943078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A006530 (n + 1)).toNat + (A057897 (A028310 n).toNat - 3)

end

end A247336.P7366635030057943078

/-! ## A247336.P14579868014025993251

`A001222(2*A020639(n+1))+A057897(A028310(n))-3`
-/

namespace A247336.P14579868014025993251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A020639 (n + 1)).toNat + (A057897 (A028310 n).toNat - 3)

end

end A247336.P14579868014025993251

/-!
# A247337: a(n) = Lucas(n) concatenated with Fibonacci(n).

The programs for A247337, there is no canonical definition to state claims against.
-/

/-! ## A247337.P13732671632634390349

`A022372(A141769(n+1))-A022345(n)`
-/

namespace A247337.P13732671632634390349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022372 (A141769 (n + 1)).toNat - A022345 n

end

end A247337.P13732671632634390349

/-! ## A247337.P4203994455765321499

`A206909(A280154(n))+A028310(n)`
-/

namespace A247337.P4203994455765321499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206909 (A280154 n).toNat + A028310 n

end

end A247337.P4203994455765321499

/-!
# A247339: a(n) is the least number k such that the greatest prime divisor of k^2+1 is the smallest prime divisor of n^2+1.

The programs for A247339, there is no canonical definition to state claims against.
-/

/-! ## A247339.P8424836701864285492

`A070669(A089120(n+1))`
-/

namespace A247339.P8424836701864285492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (A089120 (n + 1)).toNat

end

end A247339.P8424836701864285492

/-! ## A247339.P3453442652481025267

`A070669(A020639((n+1)²+1))`
-/

namespace A247339.P3453442652481025267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (A020639 ((n + 1) ^ 2 + 1)).toNat

end

end A247339.P3453442652481025267

/-! ## A247339.P8664169032066089050

`∏{d}[A078311(A102631(n+1)), A070669(#)]`
-/

namespace A247339.P8664169032066089050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078311 (A102631 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A070669 d

end

end A247339.P8664169032066089050

/-! ## A247339.P15122567745708190528

`A070669(A014442(n+1)-A252096(n+1))`
-/

namespace A247339.P15122567745708190528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (A014442 (n + 1) - A252096 (n + 1)).toNat

end

end A247339.P15122567745708190528

/-! ## A247339.P12032049869215695640

`A070669(A250069(n+1)+1-A252096(n+1))`
-/

namespace A247339.P12032049869215695640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (A250069 (n + 1) + (1 - A252096 (n + 1))).toNat

end

end A247339.P12032049869215695640

/-! ## A247339.P10397366033055622959

`∏{d}[A078311((n+1)*A003557(n+1)), A070669(#)]`
-/

namespace A247339.P10397366033055622959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078311 ((n + 1 : ℤ) * A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A070669 d

end

end A247339.P10397366033055622959

/-! ## A247339.P12058844073473222644

`A070669(A006530((n+1)²+1)-A252096(n+1))`
-/

namespace A247339.P12058844073473222644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (A006530 ((n + 1) ^ 2 + 1) - A252096 (n + 1)).toNat

end

end A247339.P12058844073473222644

/-! ## A247339.P10727861560518966151

`∏{d}[A000027(A020639(n*(n+1)+n+2)), A070669(#)]`
-/

namespace A247339.P10727861560518966151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A020639 (n * (n + 1) + (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A070669 d

end

end A247339.P10727861560518966151

/-! ## A247339.P5142778461640385590

`A070669(A002522(n+1)/A248516(n+1)-A252096(n+1))`
-/

namespace A247339.P5142778461640385590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (SequenceMachineLib.roundAway ((A002522 (n + 1) : ℚ) / (A248516 (n + 1) : ℚ) - (A252096 (n + 1) : ℚ))).toNat

end

end A247339.P5142778461640385590

/-!
# A247340: Numbers n such that each prime divisor of the semiprime n^2+1 is also a divisor of a^2+1 and b^2+1 respectively for some a, b < n.

The programs for A247340, the canonical program `A247340.P2472310352921209645` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247340 has offset 1).

The definition of A247340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247340.P3687201646368636256

`∩[A085722(n+1), A252496(n+1)]`
-/

namespace A247340.P3687201646368636256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247340.P3687201646368636256

namespace A247340

/-- `∩[A085722(n+1), A252496(n+1)]` -/
def P3687201646368636256.Spec : Prop :=
  ∀ n, (P3687201646368636256.a n : ℤ) = A247340 (n + 1)

end A247340

/-! ## A247340.P4518756194521045742

`∩[A002312(n+1), A085722(n+1)]`
-/

namespace A247340.P4518756194521045742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247340.P4518756194521045742

namespace A247340

/-- `∩[A002312(n+1), A085722(n+1)]` -/
def P4518756194521045742.Spec : Prop :=
  ∀ n, (P4518756194521045742.a n : ℤ) = A247340 (n + 1)

end A247340

/-! ## A247340.P10082469258089832991

`∩[A002312(n+1), A333635(n+1)]`
-/

namespace A247340.P10082469258089832991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247340.P10082469258089832991

namespace A247340

/-- `∩[A002312(n+1), A333635(n+1)]` -/
def P10082469258089832991.Spec : Prop :=
  ∀ n, (P10082469258089832991.a n : ℤ) = A247340 (n + 1)

end A247340

/-! ## A247340.P15541550381963283785

`∩[A252496(n+1), A333635(n+1)]`
-/

namespace A247340.P15541550381963283785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247340.P15541550381963283785

namespace A247340

/-- `∩[A252496(n+1), A333635(n+1)]` -/
def P15541550381963283785.Spec : Prop :=
  ∀ n, (P15541550381963283785.a n : ℤ) = A247340 (n + 1)

end A247340

/-! ## A247340.P2472310352921209645

`eq[1, A249122(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A247340

/-- `eq[1, A249122(n+1)]+1` -/
def P2472310352921209645.Spec : Prop :=
  ∀ n, (P2472310352921209645.a n : ℤ) = A247340 (n + 1)

theorem P2472310352921209645.correct : P2472310352921209645.Spec := by
  intro n
  simp only [A247340, Nat.add_sub_cancel]

end A247340

/-! ## A247340.P11094732505299832759

`eq[1, A249122(A028310(n))]`
-/

namespace A247340.P11094732505299832759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247340.P11094732505299832759

namespace A247340

/-- `eq[1, A249122(A028310(n))]` -/
def P11094732505299832759.Spec : Prop :=
  ∀ n, (P11094732505299832759.a n : ℤ) = A247340 (n + 1)

end A247340

/-! ## A247340.P6752636721116155745

`A020725(eq[1, A249122(n+1)])`
-/

namespace A247340.P6752636721116155745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247340.P6752636721116155745

namespace A247340

/-- `A020725(eq[1, A249122(n+1)])` -/
def P6752636721116155745.Spec : Prop :=
  ∀ n, P6752636721116155745.a n = A247340 (n + 1)

end A247340

/-! ## A247340.P853203606965937996

`A065475(eq[1, A249122(n+1)])`
-/

namespace A247340.P853203606965937996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247340.P853203606965937996

namespace A247340

/-- `A065475(eq[1, A249122(n+1)])` -/
def P853203606965937996.Spec : Prop :=
  ∀ n, P853203606965937996.a n = A247340 (n + 1)

end A247340

/-! ## A247340.P4485071216992902349

`eq[1, A249122(A000007(n)+n)]`
-/

namespace A247340.P4485071216992902349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247340.P4485071216992902349

namespace A247340

/-- `eq[1, A249122(A000007(n)+n)]` -/
def P4485071216992902349.Spec : Prop :=
  ∀ n, (P4485071216992902349.a n : ℤ) = A247340 (n + 1)

end A247340

/-! ## A247340.P7626966440723339214

`eq[1, A249122(A000038(n)+n)]`
-/

namespace A247340.P7626966440723339214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247340.P7626966440723339214

namespace A247340

/-- `eq[1, A249122(A000038(n)+n)]` -/
def P7626966440723339214.Spec : Prop :=
  ∀ n, (P7626966440723339214.a n : ℤ) = A247340 (n + 1)

end A247340

/-!
# A247342: Let b_k=3...3 consist of k>=1 3's. Then a(n) is the smallest k such that the odd part (A000265) of concatenation b_k 2^n is prime, or a(n)=0 if there is no such prime.

The programs for A247342, there is no canonical definition to state claims against.
-/

/-! ## A247342.P1946301362809407405

`gcd(A003273(n+1), A265136(A093891(n+1)))`
-/

namespace A247342.P1946301362809407405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003273 (n + 1)) (A265136 (A093891 (n + 1)).toNat)

end

end A247342.P1946301362809407405

/-! ## A247342.P17289517588557644764

`gcd(A005187(A183026(n+1)), A333764(n+1))`
-/

namespace A247342.P17289517588557644764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005187 (A183026 (n + 1)).toNat) (A333764 (n + 1))

end

end A247342.P17289517588557644764

/-! ## A247342.P6852392964672090728

`gcd(A018721(n+1)², A189666(n+1))`
-/

namespace A247342.P6852392964672090728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018721 (n + 1) ^ 2) (A189666 (n + 1))

end

end A247342.P6852392964672090728

/-! ## A247342.P10500299937829476024

`gcd(A004451(A268491(n+1)), A215448(n))`
-/

namespace A247342.P10500299937829476024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004451 (A268491 (n + 1)).toNat) (A215448 n)

end

end A247342.P10500299937829476024

/-! ## A247342.P10100675041159973648

`gcd(A179205(A179234(n+1)), A179255(n+3))`
-/

namespace A247342.P10100675041159973648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A179205 (A179234 (n + 1)).toNat) (A179255 (n + 3))

end

end A247342.P10100675041159973648

/-!
# A247343: Moebius transform applied four times to sequence 1,0,0,0,....

The programs for A247343, the canonical program `A247343.P16054937885260863727` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247343 has offset 1).

The definition of A247343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247343.P1775585028121750935

`∑{d}[n+1, A341831(#)]`
-/

namespace A247343.P1775585028121750935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341831 d

end

end A247343.P1775585028121750935

namespace A247343

/-- `∑{d}[n+1, A341831(#)]` -/
def P1775585028121750935.Spec : Prop :=
  ∀ n, P1775585028121750935.a n = A247343 (n + 1)

end A247343

/-! ## A247343.P16054937885260863727

`∑{d}[n+1, A007427(#)*A007427((n+1)/#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A247343

/-- `∑{d}[n+1, A007427(#)*A007427((n+1)/#)]` -/
def P16054937885260863727.Spec : Prop :=
  ∀ n, P16054937885260863727.a n = A247343 (n + 1)

theorem P16054937885260863727.correct : P16054937885260863727.Spec := by
  intro n
  simp only [A247343, Nat.add_sub_cancel]

end A247343

/-! ## A247343.P6306576961785273116

`∑{d}[n+1, A007428(#)*A008683((n+1)/#)]`
-/

namespace A247343.P6306576961785273116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247343.P6306576961785273116

namespace A247343

/-- `∑{d}[n+1, A007428(#)*A008683((n+1)/#)]` -/
def P6306576961785273116.Spec : Prop :=
  ∀ n, P6306576961785273116.a n = A247343 (n + 1)

end A247343

/-! ## A247343.P10270062350969167324

`∑{d}[n+1, A007432(#)*A046692((n+1)/#)]`
-/

namespace A247343.P10270062350969167324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247343.P10270062350969167324

namespace A247343

/-- `∑{d}[n+1, A007432(#)*A046692((n+1)/#)]` -/
def P10270062350969167324.Spec : Prop :=
  ∀ n, P10270062350969167324.a n = A247343 (n + 1)

end A247343

/-! ## A247343.P7370304381956247298

`∑{d}[n+1, A000005(#)*A341832((n+1)/#)]`
-/

namespace A247343.P7370304381956247298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A341832 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247343.P7370304381956247298

namespace A247343

/-- `∑{d}[n+1, A000005(#)*A341832((n+1)/#)]` -/
def P7370304381956247298.Spec : Prop :=
  ∀ n, P7370304381956247298.a n = A247343 (n + 1)

end A247343

/-! ## A247343.P11841532127850110688

`∑{d}[n+1, A007425(#)*A341833((n+1)/#)]`
-/

namespace A247343.P11841532127850110688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A341833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247343.P11841532127850110688

namespace A247343

/-- `∑{d}[n+1, A007425(#)*A341833((n+1)/#)]` -/
def P11841532127850110688.Spec : Prop :=
  ∀ n, P11841532127850110688.a n = A247343 (n + 1)

end A247343

/-! ## A247343.P79873406107919778

`∑{d}[n+1, A007426(#)*A341834((n+1)/#)]`
-/

namespace A247343.P79873406107919778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A341834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247343.P79873406107919778

namespace A247343

/-- `∑{d}[n+1, A007426(#)*A341834((n+1)/#)]` -/
def P79873406107919778.Spec : Prop :=
  ∀ n, P79873406107919778.a n = A247343 (n + 1)

end A247343

/-! ## A247343.P7610830919214972330

`∑{d}[n+1, A034695(#)*A341836((n+1)/#)]`
-/

namespace A247343.P7610830919214972330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034695 d * A341836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247343.P7610830919214972330

namespace A247343

/-- `∑{d}[n+1, A034695(#)*A341836((n+1)/#)]` -/
def P7610830919214972330.Spec : Prop :=
  ∀ n, P7610830919214972330.a n = A247343 (n + 1)

end A247343

/-! ## A247343.P18387476213064520213

`∑{d}[n+1, A061200(#)*A341835((n+1)/#)]`
-/

namespace A247343.P18387476213064520213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061200 d * A341835 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247343.P18387476213064520213

namespace A247343

/-- `∑{d}[n+1, A061200(#)*A341835((n+1)/#)]` -/
def P18387476213064520213.Spec : Prop :=
  ∀ n, P18387476213064520213.a n = A247343 (n + 1)

end A247343

/-! ## A247343.P13301968231914919199

`∑{d}[n+1, A143275(#)*A327960((n+1)/#)]`
-/

namespace A247343.P13301968231914919199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143275 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247343.P13301968231914919199

namespace A247343

/-- `∑{d}[n+1, A143275(#)*A327960((n+1)/#)]` -/
def P13301968231914919199.Spec : Prop :=
  ∀ n, P13301968231914919199.a n = A247343 (n + 1)

end A247343

/-! ## A247343.P6607993524685260029

`∑{d}[n+1, A307445(#)*A326415((n+1)/#)]`
-/

namespace A247343.P6607993524685260029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307445 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247343.P6607993524685260029

namespace A247343

/-- `∑{d}[n+1, A307445(#)*A326415((n+1)/#)]` -/
def P6607993524685260029.Spec : Prop :=
  ∀ n, P6607993524685260029.a n = A247343 (n + 1)

end A247343

/-! ## A247343.P14623456288714498171

`A346148(A167614(n+2)+1)`
-/

namespace A247343.P14623456288714498171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346148 (A167614 (n + 2) + 1).toNat

end

end A247343.P14623456288714498171

namespace A247343

/-- `A346148(A167614(n+2)+1)` -/
def P14623456288714498171.Spec : Prop :=
  ∀ n, P14623456288714498171.a n = A247343 (n + 1)

end A247343

/-!
# A247345: a(1) = 16. For n > 1, a(n) is the position of the first occurrence of a(n-1) after the decimal point in the decimal expansion of Pi.

The programs for A247345, there is no canonical definition to state claims against.
-/

/-! ## A247345.P7939608836140783549

`A014777(a(n-1))` with `a(0)=16`
-/

namespace A247345.P7939608836140783549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A014777 (a (n - 1)).toNat

end

end A247345.P7939608836140783549

/-! ## A247345.P7524724905880175625

`A032445(a(n-1))-1` with `a(0)=16`
-/

namespace A247345.P7524724905880175625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A032445 (a (n - 1)).toNat - 1

end

end A247345.P7524724905880175625

/-!
# A247346: Odd numbers n containing 1024 as the highest power of 2 in their Collatz (3x+1) iteration.

The programs for A247346, there is no canonical definition to state claims against.
-/

/-! ## A247346.P2598612900920210179

`eq[10, A135282(A266303(n))]`
-/

namespace A247346.P2598612900920210179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135282 (A266303 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247346.P2598612900920210179

/-!
# A247347: Primes p such that (p-k)/(k+1) is also prime for k = 1, 2, 3.

The programs for A247347, there is no canonical definition to state claims against.
-/

/-! ## A247347.P17843685031881086922

`∩[A066179(n+1), A181841(n+1)]`
-/

namespace A247347.P17843685031881086922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247347.P17843685031881086922

/-! ## A247347.P2086306406067870356

`∩[A126330(n+1), A181841(n+1)]`
-/

namespace A247347.P2086306406067870356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247347.P2086306406067870356

/-! ## A247347.P10622568944879669700

`∩[A066179(n+1), A094524(n+1)]`
-/

namespace A247347.P10622568944879669700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247347.P10622568944879669700

/-! ## A247347.P5147013096365526934

`∩[A004767(A000040(n+1)), A181841(n+1)]`
-/

namespace A247347.P5147013096365526934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247347.P5147013096365526934

/-!
# A247349: Regular triangle obtained by procedure described in comment in the case of m=3.

The programs for A247349, there is no canonical definition to state claims against.
-/

/-! ## A247349.P13757757170509414162

`A076489(A000124(n+4)*A008472(3*n+4))`
-/

namespace A247349.P13757757170509414162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A000124 (n + 4) * A008472 (3 * n + 4)).toNat

end

end A247349.P13757757170509414162

/-! ## A247349.P2965808955966388605

`A118458(A007953(n)+A006093(n+1))`
-/

namespace A247349.P2965808955966388605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118458 (A007953 n + A006093 (n + 1)).toNat

end

end A247349.P2965808955966388605

/-! ## A247349.P10374175675320421599

`A351014(A110550(n)+A046839(3*n+4))`
-/

namespace A247349.P10374175675320421599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A110550 n + A046839 (3 * n + 4)).toNat

end

end A247349.P10374175675320421599

/-! ## A247349.P13570686585469425225

`A001221(or(A216888(n+5), A216889(n+1)))`
-/

namespace A247349.P13570686585469425225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A216888 (n + 5)) (A216889 (n + 1))).toNat

end

end A247349.P13570686585469425225

/-! ## A247349.P12039781232021870490

`A105194(A092809(n))`
-/

namespace A247349.P12039781232021870490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105194 (A092809 n).toNat

end

end A247349.P12039781232021870490

/-!
# A247352: Rectangular array read by upwards by columns: T = T(n,k) = number of paths from (0,1) to (n,k), where 0 <= k <= 3, consisting of segments given by the vectors (1,1), (1,2), (1,-1).

The programs for A247352, there is no canonical definition to state claims against.
-/

/-! ## A247352.P1687056102944007123

`xor(A014083(A329675(n)), A227310(n+3))`
-/

namespace A247352.P1687056102944007123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014083 (A329675 n).toNat) (A227310 (n + 3))

end

end A247352.P1687056102944007123

/-! ## A247352.P16429552319887726012

`A037819(A201542(n+2))`
-/

namespace A247352.P16429552319887726012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (A201542 (n + 2)).toNat

end

end A247352.P16429552319887726012

/-! ## A247352.P2871997971840339524

`A037806(∑[A003961(A023499(n))])`
-/

namespace A247352.P2871997971840339524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A023499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037806 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247352.P2871997971840339524

/-! ## A247352.P7042024870204395705

`A139354(xor(A104725(n), A372517(n+1)))`
-/

namespace A247352.P7042024870204395705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 (Int.xor (A104725 n) (A372517 (n + 1))).toNat

end

end A247352.P7042024870204395705

/-! ## A247352.P15469122241018438479

`A196564(C(A161577(n+1), A000700(n+1)))`
-/

namespace A247352.P15469122241018438479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (Nat.choose (A161577 (n + 1)).toNat (A000700 (n + 1)).toNat)

end

end A247352.P15469122241018438479

/-!
# A247353: Number of paths from (0,1) to the line x = n, each consisting of segments given by the vectors (1,1), (1,2), (1,-1), with vertices (i,k) satisfying 0 <= k <= 3.

The programs for A247353, the canonical program `A247353.P1463054899831379923` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247353 has offset 0).

The definition of A247353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247353.P12337932266920898604

`ogf((1+3x+2x^2)/(1-3x^2-2x^3+x^4))`
-/

namespace A247353.P12337932266920898604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, 0, -3, -2, 1] n

end

end A247353.P12337932266920898604

namespace A247353

/-- `ogf((1+3x+2x^2)/(1-3x^2-2x^3+x^4))` -/
def P12337932266920898604.Spec : Prop :=
  ∀ n, P12337932266920898604.a n = A247353 n

end A247353

/-! ## A247353.P1463054899831379923

`3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=11`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247353

/-- `3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P1463054899831379923.Spec : Prop :=
  ∀ n, P1463054899831379923.a n = A247353 n

theorem P1463054899831379923.correct : P1463054899831379923.Spec := by
  intro n
  simp only [A247353]

end A247353

/-! ## A247353.P9229661048341824413

`A247354(n)+A247322(n)`
-/

namespace A247353.P9229661048341824413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247354 n + A247322 n

end

end A247353.P9229661048341824413

namespace A247353

/-- `A247354(n)+A247322(n)` -/
def P9229661048341824413.Spec : Prop :=
  ∀ n, P9229661048341824413.a n = A247353 n

end A247353

/-! ## A247353.P7838735964728958525

`A247355(n+1)+A247355(n)`
-/

namespace A247353.P7838735964728958525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247355 (n + 1) + A247355 n

end

end A247353.P7838735964728958525

namespace A247353

/-- `A247355(n+1)+A247355(n)` -/
def P7838735964728958525.Spec : Prop :=
  ∀ n, P7838735964728958525.a n = A247353 n

end A247353

/-! ## A247353.P16154776849157961092

`A247325(n+2)-A247354(n)`
-/

namespace A247353.P16154776849157961092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247325 (n + 2) - A247354 n

end

end A247353.P16154776849157961092

namespace A247353

/-- `A247325(n+2)-A247354(n)` -/
def P16154776849157961092.Spec : Prop :=
  ∀ n, P16154776849157961092.a n = A247353 n

end A247353

/-! ## A247353.P3844747001938560441

`A247325(n+1)+A247354(n)+A247325(n)`
-/

namespace A247353.P3844747001938560441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247325 (n + 1) + (A247354 n + A247325 n)

end

end A247353.P3844747001938560441

namespace A247353

/-- `A247325(n+1)+A247354(n)+A247325(n)` -/
def P3844747001938560441.Spec : Prop :=
  ∀ n, P3844747001938560441.a n = A247353 n

end A247353

/-!
# A247354: Number of paths from (0,1) to (n,0), with vertices (i,k) satisfying 0 <= k <= 3, consisting of segments given by the vectors (1,1), (1,2), (1,-1).

The programs for A247354, the canonical program `A247354.P9779441761565092487` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247354 has offset 0).

The definition of A247354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247354.P7525104923733843019

`ogf((x-x^3)/(1-3x^2-2x^3+x^4))`
-/

namespace A247354.P7525104923733843019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -1] [1, 0, -3, -2, 1] n

end

end A247354.P7525104923733843019

namespace A247354

/-- `ogf((x-x^3)/(1-3x^2-2x^3+x^4))` -/
def P7525104923733843019.Spec : Prop :=
  ∀ n, P7525104923733843019.a n = A247354 n

end A247354

/-! ## A247354.P9779441761565092487

`3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247354

/-- `3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P9779441761565092487.Spec : Prop :=
  ∀ n, P9779441761565092487.a n = A247354 n

theorem P9779441761565092487.correct : P9779441761565092487.Spec := by
  intro n
  simp only [A247354]

end A247354

/-! ## A247354.P18248160000543378943

`Δ[A247326(n)/2]`
-/

namespace A247354.P18248160000543378943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247326 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247354.P18248160000543378943

namespace A247354

/-- `Δ[A247326(n)/2]` -/
def P18248160000543378943.Spec : Prop :=
  ∀ n, P18248160000543378943.a n = (A247354 n : ℚ)

end A247354

/-! ## A247354.P6510478175144600196

`A247355(n+1)+A247355(n)-A247322(n)`
-/

namespace A247354.P6510478175144600196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247355 (n + 1) + (A247355 n - A247322 n)

end

end A247354.P6510478175144600196

namespace A247354

/-- `A247355(n+1)+A247355(n)-A247322(n)` -/
def P6510478175144600196.Spec : Prop :=
  ∀ n, P6510478175144600196.a n = A247354 n

end A247354

/-! ## A247354.P16060368699368911662

`A247353(n)-A247322(n)`
-/

namespace A247354.P16060368699368911662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247353 n - A247322 n

end

end A247354.P16060368699368911662

namespace A247354

/-- `A247353(n)-A247322(n)` -/
def P16060368699368911662.Spec : Prop :=
  ∀ n, P16060368699368911662.a n = A247354 n

end A247354

/-! ## A247354.P721986690863140697

`A247325(n+2)-A247353(n)`
-/

namespace A247354.P721986690863140697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247325 (n + 2) - A247353 n

end

end A247354.P721986690863140697

namespace A247354

/-- `A247325(n+2)-A247353(n)` -/
def P721986690863140697.Spec : Prop :=
  ∀ n, P721986690863140697.a n = A247354 n

end A247354

/-! ## A247354.P11054229891820484429

`A247352(4*n)`
-/

namespace A247354.P11054229891820484429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247352 (4 * n)

end

end A247354.P11054229891820484429

namespace A247354

/-- `A247352(4*n)` -/
def P11054229891820484429.Spec : Prop :=
  ∀ n, P11054229891820484429.a n = A247354 n

end A247354

/-! ## A247354.P8136407839752235604

`Δ[A247321(record[xor(3, n)])]/2`
-/

namespace A247354.P8136407839752235604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247321 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A247354.P8136407839752235604

namespace A247354

/-- `Δ[A247321(record[xor(3, n)])]/2` -/
def P8136407839752235604.Spec : Prop :=
  ∀ n, P8136407839752235604.a n = (A247354 n : ℚ)

end A247354

/-! ## A247354.P15994654221688233598

`Δ[A247321(3*(n+1)+n)]/2`
-/

namespace A247354.P15994654221688233598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247321 (3 * (n + 1) + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A247354.P15994654221688233598

namespace A247354

/-- `Δ[A247321(3*(n+1)+n)]/2` -/
def P15994654221688233598.Spec : Prop :=
  ∀ n, P15994654221688233598.a n = (A247354 n : ℚ)

end A247354

/-! ## A247354.P13317172686887723602

`Δ[A247321(A004767(n))/2]`
-/

namespace A247354.P13317172686887723602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247321 (A004767 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247354.P13317172686887723602

namespace A247354

/-- `Δ[A247321(A004767(n))/2]` -/
def P13317172686887723602.Spec : Prop :=
  ∀ n, P13317172686887723602.a n = (A247354 n : ℚ)

end A247354

/-!
# A247355: Number of paths from (0,1) to (n,2), with vertices (i,k) satisfying 0 <= k <= 3, consisting of segments given by the vectors (1,1), (1,2), (1,-1).

The programs for A247355, the canonical program `A247355.P3536291591416333867` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247355 has offset 0).

The definition of A247355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247355.P9434666035483497475

`ogf((x+2x^2)/(1-3x^2-2x^3+x^4))`
-/

namespace A247355.P9434666035483497475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, 0, -3, -2, 1] n

end

end A247355.P9434666035483497475

namespace A247355

/-- `ogf((x+2x^2)/(1-3x^2-2x^3+x^4))` -/
def P9434666035483497475.Spec : Prop :=
  ∀ n, P9434666035483497475.a n = A247355 n

end A247355

/-! ## A247355.P3536291591416333867

`3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247355

/-- `3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P3536291591416333867.Spec : Prop :=
  ∀ n, P3536291591416333867.a n = A247355 n

theorem P3536291591416333867.correct : P3536291591416333867.Spec := by
  intro n
  simp only [A247355]

end A247355

/-! ## A247355.P5343617119618226284

`A247354(n+2)-A247354(n)`
-/

namespace A247355.P5343617119618226284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247354 (n + 2) - A247354 n

end

end A247355.P5343617119618226284

namespace A247355

/-- `A247354(n+2)-A247354(n)` -/
def P5343617119618226284.Spec : Prop :=
  ∀ n, P5343617119618226284.a n = A247355 n

end A247355

/-! ## A247355.P11395879751891492064

`Δ[A247354(n+1)+A247354(n)]`
-/

namespace A247355.P11395879751891492064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247354 (n + 1) + A247354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247355.P11395879751891492064

namespace A247355

/-- `Δ[A247354(n+1)+A247354(n)]` -/
def P11395879751891492064.Spec : Prop :=
  ∀ n, P11395879751891492064.a n = A247355 n

end A247355

/-! ## A247355.P5033375709112889153

`A247322(n+1)+A247325(n+1)-A247353(n+1)`
-/

namespace A247355.P5033375709112889153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247322 (n + 1) + (A247325 (n + 1) - A247353 (n + 1))

end

end A247355.P5033375709112889153

namespace A247355

/-- `A247322(n+1)+A247325(n+1)-A247353(n+1)` -/
def P5033375709112889153.Spec : Prop :=
  ∀ n, P5033375709112889153.a n = A247355 n

end A247355

/-! ## A247355.P7563785303154255948

`record[A247352(2*n)]`
-/

namespace A247355.P7563785303154255948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247352 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247355.P7563785303154255948

namespace A247355

/-- `record[A247352(2*n)]` -/
def P7563785303154255948.Spec : Prop :=
  ∀ n, P7563785303154255948.a n = A247355 n

end A247355

/-! ## A247355.P13179312372266302442

`A247352(4*n+2)`
-/

namespace A247355.P13179312372266302442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247352 (4 * n + 2)

end

end A247355.P13179312372266302442

namespace A247355

/-- `A247352(4*n+2)` -/
def P13179312372266302442.Spec : Prop :=
  ∀ n, P13179312372266302442.a n = A247355 n

end A247355

/-!
# A247356: Numbers k such that d(r,k) = 1 and d(s,k) = 1, where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {sqrt(3)}, and { } = fractional part.

The programs for A247356, there is no canonical definition to state claims against.
-/

/-! ## A247356.P18318525395656831226

`∩[A092855(n+1), A247454(n+1)]`
-/

namespace A247356.P18318525395656831226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247356.P18318525395656831226

/-! ## A247356.P3490147814322771244

`∩[A247454(n+1), comp[A320985(n+1)]]`
-/

namespace A247356.P3490147814322771244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247454 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A247356.P3490147814322771244

/-! ## A247356.P13024107818650136520

`∩[comp[A246356(n+1)], A247454(n+1)]`
-/

namespace A247356.P13024107818650136520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246356 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A247356.P13024107818650136520

/-!
# A247357: Least m such that (4/m^2)*Sum_{k=0..m} sqrt(m^2 - k^2) < Pi + 1/n.

The programs for A247357, there is no canonical definition to state claims against.
-/

/-! ## A247357.P5060325069324783863

`Δ[n²]-A180447(A248333(n))`
-/

namespace A247357.P5060325069324783863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A180447 (A248333 n).toNat

end

end A247357.P5060325069324783863

/-! ## A247357.P3492472746526838600

`A005843(n)-A180447(A248333(n))+1`
-/

namespace A247357.P3492472746526838600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A180447 (A248333 n).toNat + 1

end

end A247357.P3492472746526838600

/-! ## A247357.P4238708668672731343

`Δ[A048058(n)]-(A180447(A248333(n))+1)`
-/

namespace A247357.P4238708668672731343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A180447 (A248333 n).toNat + 1)

end

end A247357.P4238708668672731343

/-! ## A247357.P6302327673218649004

`A131173(A131173(2*(n+1)))-(A180447(A248333(n))+1)`
-/

namespace A247357.P6302327673218649004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131173 (A131173 (2 * (n + 1))).toNat - (A180447 (A248333 n).toNat + 1)

end

end A247357.P6302327673218649004

/-! ## A247357.P7112119201671894176

`record[A028242(n)-A262352(A000217(n))]`
-/

namespace A247357.P7112119201671894176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n - A262352 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247357.P7112119201671894176

/-!
# A247358: Triangle read by rows: n-th row contains powers b^e with b + e = n + 1 in natural order.

The programs for A247358, there is no canonical definition to state claims against.
-/

/-! ## A247358.P14366682315388947968

`A051128(A059399(n+1))%A141214(2*(n+1))`
-/

namespace A247358.P14366682315388947968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051128 (A059399 (n + 1)).toNat) (A141214 (2 * (n + 1)))

end

end A247358.P14366682315388947968

/-! ## A247358.P15078400637215864458

`A057058(n+1)^A057059(A187829(n+1))`
-/

namespace A247358.P15078400637215864458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057058 (n + 1) : ℚ) ^ (A057059 (A187829 (n + 1)).toNat : ℤ)

end

end A247358.P15078400637215864458

/-! ## A247358.P11820116627377740525

`A271914(A379460(n))`
-/

namespace A247358.P11820116627377740525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271914 (A379460 n).toNat

end

end A247358.P11820116627377740525

/-! ## A247358.P2655933843666855682

`A324473(A371686(n))`
-/

namespace A247358.P2655933843666855682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324473 (A371686 n).toNat

end

end A247358.P2655933843666855682

/-! ## A247358.P12849484910432645462

`A142240(A193603(n))`
-/

namespace A247358.P12849484910432645462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142240 (A193603 n).toNat

end

end A247358.P12849484910432645462

/-!
# A247363: Central terms of triangle A247358.

The programs for A247363, there is no canonical definition to state claims against.
-/

/-! ## A247363.P14409768577000172050

`A247358(∑[4*n]+1)`
-/

namespace A247363.P14409768577000172050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247358 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A247363.P14409768577000172050

/-! ## A247363.P15951354443270340339

`record[gcd(A114327(n), A247358(n+1))]`
-/

namespace A247363.P15951354443270340339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A247358 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247363.P15951354443270340339

/-! ## A247363.P11035700742703985729

`-((1-4/2)*A247358(A001844(n)))`
-/

namespace A247363.P11035700742703985729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((1 - (4 : ℚ) / 2) * (A247358 (A001844 n).toNat : ℚ))

end

end A247363.P11035700742703985729

/-! ## A247363.P9165502641313053703

`or(A000007(n), A247358(A001844(n)))`
-/

namespace A247363.P9165502641313053703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A247358 (A001844 n).toNat)

end

end A247363.P9165502641313053703

/-! ## A247363.P13641847444069916001

`A007318(C(2, n+2))*A247358(A001844(n))`
-/

namespace A247363.P13641847444069916001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A247358 (A001844 n).toNat

end

end A247363.P13641847444069916001

/-!
# A247364: Riordan array (f(x), (f(x)-1)/f(x)) where f(x) = (1 + x - sqrt(1 - 2x - 3x^2))/(2*x).

The programs for A247364, there is no canonical definition to state claims against.
-/

/-! ## A247364.P17010925153432273015

`A034928(A061579(n+1))`
-/

namespace A247364.P17010925153432273015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034928 (A061579 (n + 1)).toNat

end

end A247364.P17010925153432273015

/-! ## A247364.P1868984092714406102

`A034928(A038722(n+3))`
-/

namespace A247364.P1868984092714406102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034928 (A038722 (n + 3)).toNat

end

end A247364.P1868984092714406102

/-! ## A247364.P430762130930737778

`A034928(∑[A198954(n+1)-1])`
-/

namespace A247364.P430762130930737778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034928 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247364.P430762130930737778

/-! ## A247364.P12209560290115441758

`A034928(A061579(n)-A057427(n))`
-/

namespace A247364.P12209560290115441758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034928 (A061579 n - A057427 n).toNat

end

end A247364.P12209560290115441758

/-! ## A247364.P4213242584410857698

`A204849(n-round(sqrt(2*n)))`
-/

namespace A247364.P4213242584410857698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204849 ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A247364.P4213242584410857698

/-!
# A247365: Central terms of triangles A102472 and A102473.

The programs for A247365, there is no canonical definition to state claims against.
-/

/-! ## A247365.P8797123861674024466

`(-1)^(n+1)*(A001040(n)*A001053(2*(n+1)-1)-A001053(n)*A001040(2*(n+1)-1))`
-/

namespace A247365.P8797123861674024466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (A001040 n * A001053 (2 * (n + 1) - 1) - A001053 n * A001040 (2 * (n + 1) - 1))

end

end A247365.P8797123861674024466

/-! ## A247365.P9013318395511428492

`A102473((n+1)²+n²)`
-/

namespace A247365.P9013318395511428492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102473 ((n + 1) ^ 2 + n ^ 2)

end

end A247365.P9013318395511428492

/-! ## A247365.P16944198561872757571

`A058294(A007742(n)+1)`
-/

namespace A247365.P16944198561872757571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058294 (A007742 n + 1).toNat

end

end A247365.P16944198561872757571

/-! ## A247365.P4085762951863930740

`A058294(A054567(n+1))`
-/

namespace A247365.P4085762951863930740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058294 (A054567 (n + 1)).toNat

end

end A247365.P4085762951863930740

/-! ## A247365.P4935366571899556928

`A058294(A033951(n)-2*n)`
-/

namespace A247365.P4935366571899556928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058294 (A033951 n - (2 * n : ℤ)).toNat

end

end A247365.P4935366571899556928

/-!
# A247366: Integer parts of sqrt(2)^i * sqrt(3)^j with i,j >= 0, in natural order.

The programs for A247366, there is no canonical definition to state claims against.
-/

/-! ## A247366.P1173421674208154010

`floor(root(A003586(n+1), A014673(4*(n+1))))`
-/

namespace A247366.P1173421674208154010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003586 (n + 1) : ℝ) ^ (1 / (A014673 (4 * (n + 1)) : ℝ))⌋

end

end A247366.P1173421674208154010

/-! ## A247366.P17683352871890331776

`floor(sqrt(A000423(n+3)/6))`
-/

namespace A247366.P17683352871890331776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A000423 (n + 3) : ℚ) / 6 : ℝ)⌋

end

end A247366.P17683352871890331776

/-! ## A247366.P16228144387027510012

`floor(A003586(n+1)^2^A008683(A006450(n+1)))`
-/

namespace A247366.P16228144387027510012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003586 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) : ℝ)⌋

end

end A247366.P16228144387027510012

/-! ## A247366.P18219845020819142335

`floor(sqrt(A000079(n)*A007694(n+2)/A000079(n+1)))`
-/

namespace A247366.P18219845020819142335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A000079 n * A007694 (n + 2) : ℚ) / (A000079 (n + 1) : ℚ) : ℝ)⌋

end

end A247366.P18219845020819142335

/-! ## A247366.P63879023006397334

`A023443(ceil(sqrt(A055600(n+1))))`
-/

namespace A247366.P63879023006397334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌈Real.sqrt (A055600 (n + 1) : ℝ)⌉.toNat

end

end A247366.P63879023006397334

/-! ## A247366.P17626493635855157245

`floor(A003586(n+1)^(A014577(A278254(n+1))/2))`
-/

namespace A247366.P17626493635855157245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003586 (n + 1) : ℝ) ^ ((A014577 (A278254 (n + 1)).toNat : ℚ) / 2 : ℝ)⌋

end

end A247366.P17626493635855157245

/-! ## A247366.P14392184877391708938

`floor(sqrt(lt[A318884(n+1), 4]+1))`
-/

namespace A247366.P14392184877391708938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A247366.P14392184877391708938

/-! ## A247366.P13461956404220148441

`floor(sqrt(eq[3, A006530(3*(n+1))]+1))`
-/

namespace A247366.P13461956404220148441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A247366.P13461956404220148441

/-! ## A247366.P16142323710177748627

`floor(record[sqrt(A347123(n+1))])`
-/

namespace A247366.P16142323710177748627
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A347123 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A247366.P16142323710177748627

/-! ## A247366.P6741873999385455098

`floor(record[sqrt(A065331(n+1))])`
-/

namespace A247366.P6741873999385455098
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065331 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A247366.P6741873999385455098

/-!
# A247367: Number of ways to write n as a sum of a square and a nonsquare.

The programs for A247367, the canonical program `A247367.P4275224030839815486` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247367 has offset 0).

The definition of A247367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247367.P9205978172334633890

`∑[char[n²]]-A000925(n)`
-/

namespace A247367.P9205978172334633890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000925 n

end

end A247367.P9205978172334633890

namespace A247367

/-- `∑[char[n²]]-A000925(n)` -/
def P9205978172334633890.Spec : Prop :=
  ∀ n, P9205978172334633890.a n = A247367 n

end A247367

/-! ## A247367.P13422059227460116046

`A393562(n)-A000196(n)`
-/

namespace A247367.P13422059227460116046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393562 n - A000196 n

end

end A247367.P13422059227460116046

namespace A247367

/-- `A393562(n)-A000196(n)` -/
def P13422059227460116046.Spec : Prop :=
  ∀ n, P13422059227460116046.a n = A247367 n

theorem P13422059227460116046.correct : P13422059227460116046.Spec := by
  intro n
  simp only [A247367, Nat.add_sub_cancel, A247367.P13422059227460116046.a, A247367.P4275224030839815486.a, A000196, A000196.P15434771586934192083.a, A000925, A000925.P5258766593392703248.a, A393562, A393562.P13338399434190979828.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A025426, A025426.P2677414616858277204.f1, A025426.P2677414616858277204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247367

/-! ## A247367.P4275224030839815486

`A000196(n)+1-A000925(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A247367

/-- `A000196(n)+1-A000925(n)` -/
def P4275224030839815486.Spec : Prop :=
  ∀ n, P4275224030839815486.a n = A247367 n

theorem P4275224030839815486.correct : P4275224030839815486.Spec := by
  intro n
  simp only [A247367]

end A247367

/-! ## A247367.P17698515509333692099

`abs(A003059(n+1)-A000925(n))`
-/

namespace A247367.P17698515509333692099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003059 (n + 1) - A000925 n|

end

end A247367.P17698515509333692099

namespace A247367

/-- `abs(A003059(n+1)-A000925(n))` -/
def P17698515509333692099.Spec : Prop :=
  ∀ n, P17698515509333692099.a n = A247367 n

end A247367

/-! ## A247367.P14586603334329151360

`A000196(n)-A023443(A000925(n))`
-/

namespace A247367.P14586603334329151360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n - A023443 (A000925 n).toNat

end

end A247367.P14586603334329151360

namespace A247367

/-- `A000196(n)-A023443(A000925(n))` -/
def P14586603334329151360.Spec : Prop :=
  ∀ n, P14586603334329151360.a n = A247367 n

end A247367

/-! ## A247367.P3872959452973001382

`A003059(A123108(2*n))-A002654(A022144(n))`
-/

namespace A247367.P3872959452973001382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A123108 (2 * n)).toNat - A002654 (A022144 n).toNat

end

end A247367.P3872959452973001382

namespace A247367

/-- `A003059(A123108(2*n))-A002654(A022144(n))` -/
def P3872959452973001382.Spec : Prop :=
  ∀ n, P3872959452973001382.a n = A247367 n

end A247367

/-!
# A247368: a(n) = (a(n-1) * a(n-3) - (-1)^n * a(n-2)^2) / a(n-4) with a(0) = 0, a(1) = ... = a(4) = 1.

The programs for A247368, the canonical program `A247368.P428398150144928286` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247368 has offset 0).

The definition of A247368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247368.P428398150144928286

`(a(n-1)*a(n-3)-(-1)^n*a(n-2)²)/a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247368

/-- `(a(n-1)*a(n-3)-(-1)^n*a(n-2)²)/a(n-4)` -/
def P428398150144928286.Spec : Prop :=
  ∀ n, P428398150144928286.a n = (A247368 n : ℚ)

end A247368

/-!
# A247369: a(n) = (a(n-1) * a(n-3) + (-1)^n * a(n-2)^2) / a(n-4), with a(0) = 0, a(1) = -1, a(2) = a(3) = a(4) = 1, a(9) = 3.

The programs for A247369, the canonical program `A247369.P17450206824496480840` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247369 has offset 0).

The definition of A247369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247369.P17450206824496480840

`(a(n-1)*a(n-3)+(-1)^n*a(n-2)²)/a(n-4)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=1, a(4)=1, a(5)=0, a(6)=1, a(7)=1, a(8)=1, a(9)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247369

/-- `(a(n-1)*a(n-3)+(-1)^n*a(n-2)²)/a(n-4)` -/
def P17450206824496480840.Spec : Prop :=
  ∀ n, P17450206824496480840.a n = (A247369 n : ℚ)

end A247369

/-!
# A247370: a(n) = (a(n-1) * a(n-3) - (-1)^n * a(n-2)^2) / a(n-4) with a(0) = 1, a(1) = 1, a(2) = 0, a(3) = 1, a(6) = 2.

The programs for A247370, the canonical program `A247370.P340372997233100819` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247370 has offset 0).

The definition of A247370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247370.P340372997233100819

`(a(n-1)*a(n-3)-(-1)^n*a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=1, a(5)=1, a(6)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247370

/-- `(a(n-1)*a(n-3)-(-1)^n*a(n-2)²)/a(n-4)` -/
def P340372997233100819.Spec : Prop :=
  ∀ n, P340372997233100819.a n = (A247370 n : ℚ)

end A247370

/-!
# A247371: Number of groups of order n for which all Sylow subgroups are cyclic.

The programs for A247371, there is no canonical definition to state claims against.
-/

/-! ## A247371.P1280793862925741626

`∑{d}[A126864(A290480(n+1)), A043534(#)]`
-/

namespace A247371.P1280793862925741626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126864 (A290480 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A043534 d

end

end A247371.P1280793862925741626

/-! ## A247371.P13425943123790775980

`∑{d}[A126864(A290480(n+1)), A124279(#)]`
-/

namespace A247371.P13425943123790775980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126864 (A290480 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A124279 d

end

end A247371.P13425943123790775980

/-! ## A247371.P5523317902462883396

`∑{d}[A126864(A290480(n+1)), A126864(#)]`
-/

namespace A247371.P5523317902462883396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126864 (A290480 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A126864 d

end

end A247371.P5523317902462883396

/-! ## A247371.P16228202883220251612

`∑{digits}[A126864(A290480(n+1)), A000005(#)]`
-/

namespace A247371.P16228202883220251612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126864 (A290480 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000005 x).sum

end

end A247371.P16228202883220251612

/-! ## A247371.P3638938654071393953

`A046951(A109395(n+1)^A173751(n+1))`
-/

namespace A247371.P3638938654071393953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway ((A109395 (n + 1) : ℚ) ^ (A173751 (n + 1) : ℤ))).toNat

end

end A247371.P3638938654071393953

/-!
# A247372: List of b, where b is positive integer solutions of 1/a + 1/b = 1/c and a>b>c and gcd(a,b,c)=1, sorted by ascending a, then b.

The programs for A247372, there is no canonical definition to state claims against.
-/

/-! ## A247372.P1398561910515858132

`A280680(3*n+2)`
-/

namespace A247372.P1398561910515858132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280680 (3 * n + 2)

end

end A247372.P1398561910515858132

/-! ## A247372.P1942879921507932694

`sqrt(A280679(3*n+2))`
-/

namespace A247372.P1942879921507932694
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280679 (3 * n + 2) : ℝ)

end

end A247372.P1942879921507932694

/-! ## A247372.P4912273385213890917

`A280680(A016789(n))%A017127(n)`
-/

namespace A247372.P4912273385213890917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280680 (A016789 n).toNat) (A017127 n)

end

end A247372.P4912273385213890917

/-! ## A247372.P9927900893531584465

`A033999(n)²*A280680(A016789(n))`
-/

namespace A247372.P9927900893531584465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A280680 (A016789 n).toNat

end

end A247372.P9927900893531584465

/-! ## A247372.P12863007751678718906

`A167401(A020483(n))*A280680(A016789(n))`
-/

namespace A247372.P12863007751678718906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167401 (A020483 n).toNat * A280680 (A016789 n).toNat

end

end A247372.P12863007751678718906

/-!
# A247374: Number of button presses required to try every combination of a binary combination lock with n number buttons.

The programs for A247374, the canonical program `A247374.P896856350100825847` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247374 has offset 1).

The definition of A247374 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014314, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A247374.P896856350100825847

`A000079(n+1)+A014495(n+1)+A014314(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A247374

/-- `A000079(n+1)+A014495(n+1)+A014314(n+1)` -/
def P896856350100825847.Spec : Prop :=
  ∀ n, P896856350100825847.a n = A247374 (n + 1)

theorem P896856350100825847.correct : P896856350100825847.Spec := by
  intro n
  simp only [A247374, Nat.add_sub_cancel]

end A247374

/-! ## A247374.P14018294318483882068

`A191386(n+3)+∑[2^n]`
-/

namespace A247374.P14018294318483882068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191386 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A247374.P14018294318483882068

namespace A247374

/-- `A191386(n+3)+∑[2^n]` -/
def P14018294318483882068.Spec : Prop :=
  ∀ n, P14018294318483882068.a n = A247374 (n + 1)

end A247374

/-! ## A247374.P8719522059388389850

`A107373(n+2)-(1-2^(n+2))`
-/

namespace A247374.P8719522059388389850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 2) - (1 - (2 ^ (n + 2) : ℤ))

end

end A247374.P8719522059388389850

namespace A247374

/-- `A107373(n+2)-(1-2^(n+2))` -/
def P8719522059388389850.Spec : Prop :=
  ∀ n, P8719522059388389850.a n = A247374 (n + 1)

end A247374

/-! ## A247374.P5585566030162067605

`A138364(n)+or(1, 2*a(n-1))` with `a(0)=3`
-/

namespace A247374.P5585566030162067605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A138364 n + Int.lor 1 (2 * a (n - 1))

end

end A247374.P5585566030162067605

namespace A247374

/-- `A138364(n)+or(1, 2*a(n-1))` -/
def P5585566030162067605.Spec : Prop :=
  ∀ n, P5585566030162067605.a n = A247374 (n + 1)

end A247374

/-! ## A247374.P13708647850218203471

`A242172(n)+A153893(n)`
-/

namespace A247374.P13708647850218203471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242172 n + A153893 n

end

end A247374.P13708647850218203471

namespace A247374

/-- `A242172(n)+A153893(n)` -/
def P13708647850218203471.Spec : Prop :=
  ∀ n, P13708647850218203471.a n = A247374 (n + 1)

end A247374

/-! ## A247374.P4400462975182294706

`A261681(n+1)+A014314(n+1)`
-/

namespace A247374.P4400462975182294706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261681 (n + 1) + A014314 (n + 1)

end

end A247374.P4400462975182294706

namespace A247374

/-- `A261681(n+1)+A014314(n+1)` -/
def P4400462975182294706.Spec : Prop :=
  ∀ n, P4400462975182294706.a n = A247374 (n + 1)

theorem P4400462975182294706.correct : P4400462975182294706.Spec := by
  intro n
  simp only [A247374, Nat.add_sub_cancel, A247374.P4400462975182294706.a, A247374.P896856350100825847.a, A000079, A000079.P10855139691139572931.a, A014314, A014314.P224106078485910448.a, A014495, A014495.P8648755420632744383.a, A261681, A261681.P9750562906251385611.a, A001405, A001405.P5205018418992951678.a, A191527, A191527.P18257187905751201443.a, A191309, A191309.P18243075712559101294.a, A191524, A191524.P4442675164963678049.a, A000034, A000034.P10773112074177680709.a, A004526, A004526.P10084182425416171735.a, A050168, A050168.P2561838391192846284.a, A139262, A139262.P8524009422663711179.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A247374

/-! ## A247374.P14819264486680883862

`C(n, gcd(n+1, ∑[n+1]))+2*a(n-1)+1` with `a(0)=3`
-/

namespace A247374.P14819264486680883862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.choose n (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)) + (2 * a (n - 1) + 1)

end

end A247374.P14819264486680883862

namespace A247374

/-- `C(n, gcd(n+1, ∑[n+1]))+2*a(n-1)+1` -/
def P14819264486680883862.Spec : Prop :=
  ∀ n, (P14819264486680883862.a n : ℤ) = A247374 (n + 1)

end A247374

/-!
# A247375: Numbers m such that floor(m/2) is a square.

The programs for A247375, the canonical program `A247375.P8619944556294283280` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247375 has offset 0).

The definition of A247375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247375.P5138874330855895605

`ogf((x+x^2-x^3+3x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A247375.P5138874330855895605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -1, 3] [1, -1, -2, 2, 1, -1] n

end

end A247375.P5138874330855895605

namespace A247375

/-- `ogf((x+x^2-x^3+3x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P5138874330855895605.Spec : Prop :=
  ∀ n, P5138874330855895605.a n = A247375 n

end A247375

/-! ## A247375.P8619944556294283280

`1+(2*n*(n-1)+(2*n-3)*(-1)^n-1)/4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247375

/-- `1+(2*n*(n-1)+(2*n-3)*(-1)^n-1)/4` -/
def P8619944556294283280.Spec : Prop :=
  ∀ n, P8619944556294283280.a n = (A247375 n : ℚ)

end A247375

/-! ## A247375.P7383214700508400462

`∪[2*n²+1, 2*n²]`
-/

namespace A247375.P7383214700508400462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A247375.P7383214700508400462

namespace A247375

/-- `∪[2*n²+1, 2*n²]` -/
def P7383214700508400462.Spec : Prop :=
  ∀ n, (P7383214700508400462.a n : ℤ) = A247375 n

end A247375

/-! ## A247375.P3788371089685969061

`gcd(2, n)+(n-1)²-a(n-1)` with `a(0)=0`
-/

namespace A247375.P3788371089685969061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.gcd 2 n : ℤ) + ((n : ℤ) - 1) ^ 2 - a (n - 1)

end

end A247375.P3788371089685969061

namespace A247375

/-- `gcd(2, n)+(n-1)²-a(n-1)` -/
def P3788371089685969061.Spec : Prop :=
  ∀ n, P3788371089685969061.a n = A247375 n

end A247375

/-! ## A247375.P16087899089496738339

`∑[and(-3, A266724(n))]`
-/

namespace A247375.P16087899089496738339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A266724 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247375.P16087899089496738339

namespace A247375

/-- `∑[and(-3, A266724(n))]` -/
def P16087899089496738339.Spec : Prop :=
  ∀ n, P16087899089496738339.a n = A247375 n

end A247375

/-! ## A247375.P9673795579772884799

`abs(A097140(n)+C(n, 2))`
-/

namespace A247375.P9673795579772884799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097140 n + (Nat.choose n 2 : ℤ)|

end

end A247375.P9673795579772884799

namespace A247375

/-- `abs(A097140(n)+C(n, 2))` -/
def P9673795579772884799.Spec : Prop :=
  ∀ n, P9673795579772884799.a n = A247375 n

end A247375

/-! ## A247375.P9646582091231665348

`ceil(A131179(n)-n/2)`
-/

namespace A247375.P9646582091231665348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131179 n : ℚ) - (n : ℚ) / 2⌉

end

end A247375.P9646582091231665348

namespace A247375

/-- `ceil(A131179(n)-n/2)` -/
def P9646582091231665348.Spec : Prop :=
  ∀ n, P9646582091231665348.a n = A247375 n

end A247375

/-! ## A247375.P18144632530569094203

`Δ[A029578(n)+C(n, 3)]`
-/

namespace A247375.P18144632530569094203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n + (Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247375.P18144632530569094203

namespace A247375

/-- `Δ[A029578(n)+C(n, 3)]` -/
def P18144632530569094203.Spec : Prop :=
  ∀ n, P18144632530569094203.a n = A247375 n

end A247375

/-! ## A247375.P8207192914403789928

`or(n%2, A001105(floor(n/2)))`
-/

namespace A247375.P8207192914403789928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A001105 ⌊(n : ℚ) / 2⌋.toNat)

end

end A247375.P8207192914403789928

namespace A247375

/-- `or(n%2, A001105(floor(n/2)))` -/
def P8207192914403789928.Spec : Prop :=
  ∀ n, P8207192914403789928.a n = A247375 n

end A247375

/-! ## A247375.P4997707518064893181

`abs(A099392(char[2*n]+n)-char[2*n])`
-/

namespace A247375.P4997707518064893181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099392 ((if ∃ j, f1 j = n then 1 else 0) + n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)|

end

end A247375.P4997707518064893181

namespace A247375

/-- `abs(A099392(char[2*n]+n)-char[2*n])` -/
def P4997707518064893181.Spec : Prop :=
  ∀ n, P4997707518064893181.a n = A247375 n

end A247375

/-! ## A247375.P10196384994076719640

`A263511(n)%A266257(n)`
-/

namespace A247375.P10196384994076719640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263511 n) (A266257 n)

end

end A247375.P10196384994076719640

namespace A247375

/-- `A263511(n)%A266257(n)` -/
def P10196384994076719640.Spec : Prop :=
  ∀ n, P10196384994076719640.a n = A247375 n

end A247375

/-! ## A247375.P1005176749715136733

`abs(A004526(n)-A131179(n))`
-/

namespace A247375.P1005176749715136733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004526 n - A131179 n|

end

end A247375.P1005176749715136733

namespace A247375

/-- `abs(A004526(n)-A131179(n))` -/
def P1005176749715136733.Spec : Prop :=
  ∀ n, P1005176749715136733.a n = A247375 n

end A247375

/-! ## A247375.P17845381743432899987

`(A010000(n)-A266256(n))/2`
-/

namespace A247375.P17845381743432899987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010000 n - A266256 n : ℚ) / 2

end

end A247375.P17845381743432899987

namespace A247375

/-- `(A010000(n)-A266256(n))/2` -/
def P17845381743432899987.Spec : Prop :=
  ∀ n, P17845381743432899987.a n = (A247375 n : ℚ)

end A247375

/-! ## A247375.P7403555564045058692

`abs(∑[A028310(n)]-A266285(n))`
-/

namespace A247375.P7403555564045058692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A266285 n|

end

end A247375.P7403555564045058692

namespace A247375

/-- `abs(∑[A028310(n)]-A266285(n))` -/
def P7403555564045058692.Spec : Prop :=
  ∀ n, P7403555564045058692.a n = A247375 n

end A247375

/-! ## A247375.P10102197032340746262

`∑[A017281(n)%A042963(n+1)]`
-/

namespace A247375.P10102197032340746262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017281 n) (A042963 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247375.P10102197032340746262

namespace A247375

/-- `∑[A017281(n)%A042963(n+1)]` -/
def P10102197032340746262.Spec : Prop :=
  ∀ n, P10102197032340746262.a n = A247375 n

end A247375

/-! ## A247375.P4880934790510469517

`or(A000035(n), A001105(A004526(n)))`
-/

namespace A247375.P4880934790510469517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A001105 (A004526 n).toNat)

end

end A247375.P4880934790510469517

namespace A247375

/-- `or(A000035(n), A001105(A004526(n)))` -/
def P4880934790510469517.Spec : Prop :=
  ∀ n, P4880934790510469517.a n = A247375 n

end A247375

/-! ## A247375.P12147527290372897369

`Δ[A029579(n)+C(n, 3)]`
-/

namespace A247375.P12147527290372897369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n + (Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247375.P12147527290372897369

namespace A247375

/-- `Δ[A029579(n)+C(n, 3)]` -/
def P12147527290372897369.Spec : Prop :=
  ∀ n, P12147527290372897369.a n = A247375 n

end A247375

/-! ## A247375.P13930632205285558304

`∑[n-A097141(A014681(n))]`
-/

namespace A247375.P13930632205285558304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A097141 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247375.P13930632205285558304

namespace A247375

/-- `∑[n-A097141(A014681(n))]` -/
def P13930632205285558304.Spec : Prop :=
  ∀ n, P13930632205285558304.a n = A247375 n

end A247375

/-! ## A247375.P3468511011298113491

`∑[A131877(n+1)%A014601(n+1)]`
-/

namespace A247375.P3468511011298113491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131877 (n + 1)) (A014601 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247375.P3468511011298113491

namespace A247375

/-- `∑[A131877(n+1)%A014601(n+1)]` -/
def P3468511011298113491.Spec : Prop :=
  ∀ n, P3468511011298113491.a n = A247375 n

end A247375

/-! ## A247375.P1264009010432881731

`∑[A014681(A097141(n)+n)]`
-/

namespace A247375.P1264009010432881731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A097141 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247375.P1264009010432881731

namespace A247375

/-- `∑[A014681(A097141(n)+n)]` -/
def P1264009010432881731.Spec : Prop :=
  ∀ n, P1264009010432881731.a n = A247375 n

end A247375

/-!
# A247378: a(n) = (a(n-1) * a(n-3) - (-1)^n * a(n-2)^2) / a(n-4) with a(1) = a(3) = a(4) = 1, a(2) = -2.

The programs for A247378, the canonical program `A247378.P5533474230899339767` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247378 has offset 1).

The definition of A247378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247378.P5533474230899339767

`(a(n-1)*a(n-3)-(-1)^(n+1)*a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=-2, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247378

/-- `(a(n-1)*a(n-3)-(-1)^(n+1)*a(n-2)²)/a(n-4)` -/
def P5533474230899339767.Spec : Prop :=
  ∀ n, P5533474230899339767.a n = (A247378 (n + 1) : ℚ)

end A247378

/-!
# A247379: a(n) = gcd(EKG(n),n) with EKG = A064413.

The programs for A247379, there is no canonical definition to state claims against.
-/

/-! ## A247379.P17537600542729728502

`gcd(n+1, Δ[A065057(n)])`
-/

namespace A247379.P17537600542729728502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A247379.P17537600542729728502

/-! ## A247379.P7391782404062961122

`sqrt(gcd((n+1)², A104125(n+1)))`
-/

namespace A247379.P7391782404062961122
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd ((n + 1) ^ 2 : ℤ) (A104125 (n + 1)) : ℝ)

end

end A247379.P7391782404062961122

/-! ## A247379.P5387372789257166786

`gcd(A064413(n+1), A131738(n))`
-/

namespace A247379.P5387372789257166786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064413 (n + 1)) (A131738 n)

end

end A247379.P5387372789257166786

/-! ## A247379.P15819007879501950065

`gcd(A000027(n+1), A065519(n+1))`
-/

namespace A247379.P15819007879501950065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A065519 (n + 1))

end

end A247379.P15819007879501950065

/-! ## A247379.P232390911142203933

`gcd(abs(A065519(n+1)), A008611(3*n))`
-/

namespace A247379.P232390911142203933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A065519 (n + 1)| (A008611 (3 * n))

end

end A247379.P232390911142203933

/-!
# A247380: First differences of A117495.

The programs for A247380, the canonical program `A247380.P8040246546011606999` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247380 has offset 1).

The definition of A247380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247380.P8040246546011606999

`A117495(n+2)-A117495(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A247380

/-- `A117495(n+2)-A117495(n+1)` -/
def P8040246546011606999.Spec : Prop :=
  ∀ n, P8040246546011606999.a n = A247380 (n + 1)

theorem P8040246546011606999.correct : P8040246546011606999.Spec := by
  intro n
  simp only [A247380, Nat.add_sub_cancel]

end A247380

/-! ## A247380.P11256923945059660676

`A000040(n+2)*(n+1)-A000040(n+1)*n`
-/

namespace A247380.P11256923945059660676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * (n + 1 : ℤ) - A000040 (n + 1) * (n : ℤ)

end

end A247380.P11256923945059660676

namespace A247380

/-- `A000040(n+2)*(n+1)-A000040(n+1)*n` -/
def P11256923945059660676.Spec : Prop :=
  ∀ n, P11256923945059660676.a n = A247380 (n + 1)

theorem P11256923945059660676.correct : P11256923945059660676.Spec := by
  intro n
  simp only [A247380, Nat.add_sub_cancel, A247380.P11256923945059660676.a, A247380.P8040246546011606999.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A117495, A117495.P9366338507972242085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247380

/-! ## A247380.P7955376659297748444

`Δ[n*(A055670(n+1)-1)]`
-/

namespace A247380.P7955376659297748444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A055670 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247380.P7955376659297748444

namespace A247380

/-- `Δ[n*(A055670(n+1)-1)]` -/
def P7955376659297748444.Spec : Prop :=
  ∀ n, P7955376659297748444.a n = A247380 (n + 1)

end A247380

/-! ## A247380.P12175001926488413094

`Δ[n*A001748(n+1)/3]`
-/

namespace A247380.P12175001926488413094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A001748 (n + 1) : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247380.P12175001926488413094

namespace A247380

/-- `Δ[n*A001748(n+1)/3]` -/
def P12175001926488413094.Spec : Prop :=
  ∀ n, P12175001926488413094.a n = (A247380 (n + 1) : ℚ)

theorem P12175001926488413094.correct : P12175001926488413094.Spec := by
  intro n
  simp only [A247380, Nat.add_sub_cancel, A247380.P12175001926488413094.f1, A247380.P12175001926488413094.a, A247380.P8040246546011606999.a, A001748, A001748.P16019639290970068825.a, A117495, A117495.P9366338507972242085.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247380

/-! ## A247380.P11320153590223774426

`Δ[n*A001749(n+1)/4]`
-/

namespace A247380.P11320153590223774426
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A001749 (n + 1) : ℚ) / 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247380.P11320153590223774426

namespace A247380

/-- `Δ[n*A001749(n+1)/4]` -/
def P11320153590223774426.Spec : Prop :=
  ∀ n, P11320153590223774426.a n = (A247380 (n + 1) : ℚ)

theorem P11320153590223774426.correct : P11320153590223774426.Spec := by
  intro n
  simp only [A247380, Nat.add_sub_cancel, A247380.P11320153590223774426.f1, A247380.P11320153590223774426.a, A247380.P8040246546011606999.a, A001749, A001749.P16106244962881767471.a, A117495, A117495.P9366338507972242085.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247380

/-! ## A247380.P18376658160631465205

`A033287(n)-A001223(n+1)`
-/

namespace A247380.P18376658160631465205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n - A001223 (n + 1)

end

end A247380.P18376658160631465205

namespace A247380

/-- `A033287(n)-A001223(n+1)` -/
def P18376658160631465205.Spec : Prop :=
  ∀ n, P18376658160631465205.a n = A247380 (n + 1)

theorem P18376658160631465205.correct : P18376658160631465205.Spec := by
  intro n
  simp only [A247380, Nat.add_sub_cancel, A247380.P18376658160631465205.a, A247380.P8040246546011606999.a, A001223, A001223.P5034056745985311719.a, A033287, A033287.P5066765549217672205.a, A117495, A117495.P9366338507972242085.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A062357, A062357.P6547862121818116138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247380

/-! ## A247380.P17416950923251338458

`A141042(n+1)+Δ[A007504(n)]`
-/

namespace A247380.P17416950923251338458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1) + (f1 (n + 1) - f1 n)

end

end A247380.P17416950923251338458

namespace A247380

/-- `A141042(n+1)+Δ[A007504(n)]` -/
def P17416950923251338458.Spec : Prop :=
  ∀ n, P17416950923251338458.a n = A247380 (n + 1)

end A247380

/-! ## A247380.P15599895413434445766

`Δ[n*∪[A060191(n), A060192(n)]]`
-/

namespace A247380.P15599895413434445766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A247380.P15599895413434445766

namespace A247380

/-- `Δ[n*∪[A060191(n), A060192(n)]]` -/
def P15599895413434445766.Spec : Prop :=
  ∀ n, P15599895413434445766.a n = A247380 (n + 1)

end A247380

/-! ## A247380.P6631601751221548191

`A000040(n+1)+A141042(n+1)`
-/

namespace A247380.P6631601751221548191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A141042 (n + 1)

end

end A247380.P6631601751221548191

namespace A247380

/-- `A000040(n+1)+A141042(n+1)` -/
def P6631601751221548191.Spec : Prop :=
  ∀ n, P6631601751221548191.a n = A247380 (n + 1)

theorem P6631601751221548191.correct : P6631601751221548191.Spec := by
  intro n
  simp only [A247380, Nat.add_sub_cancel, A247380.P6631601751221548191.a, A247380.P8040246546011606999.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A117495, A117495.P9366338507972242085.a, A141042, A141042.P12825020349384849254.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247380

/-! ## A247380.P525065222206291040

`A147967(n+1)+A014688(n+1)`
-/

namespace A247380.P525065222206291040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147967 (n + 1) + A014688 (n + 1)

end

end A247380.P525065222206291040

namespace A247380

/-- `A147967(n+1)+A014688(n+1)` -/
def P525065222206291040.Spec : Prop :=
  ∀ n, P525065222206291040.a n = A247380 (n + 1)

end A247380

/-! ## A247380.P16632213434332748193

`A100484(n+1)+A062357(n+1)`
-/

namespace A247380.P16632213434332748193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A062357 (n + 1)

end

end A247380.P16632213434332748193

namespace A247380

/-- `A100484(n+1)+A062357(n+1)` -/
def P16632213434332748193.Spec : Prop :=
  ∀ n, P16632213434332748193.a n = A247380 (n + 1)

theorem P16632213434332748193.correct : P16632213434332748193.Spec := by
  intro n
  simp only [A247380, Nat.add_sub_cancel, A247380.P16632213434332748193.a, A247380.P8040246546011606999.a, A062357, A062357.P6547862121818116138.a, A100484, A100484.P9678625670825099636.a, A117495, A117495.P9366338507972242085.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247380

/-! ## A247380.P10112994541627057817

`A065091(n+1)+n*A001223(n+1)`
-/

namespace A247380.P10112994541627057817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (n : ℤ) * A001223 (n + 1)

end

end A247380.P10112994541627057817

namespace A247380

/-- `A065091(n+1)+n*A001223(n+1)` -/
def P10112994541627057817.Spec : Prop :=
  ∀ n, P10112994541627057817.a n = A247380 (n + 1)

theorem P10112994541627057817.correct : P10112994541627057817.Spec := by
  intro n
  simp only [A247380, Nat.add_sub_cancel, A247380.P10112994541627057817.a, A247380.P8040246546011606999.a, A001223, A001223.P5034056745985311719.a, A065091, A065091.P6971844946592549357.a, A117495, A117495.P9366338507972242085.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247380

/-! ## A247380.P13896738817635737709

`A007504(n+1)+A141042(n+1)-A007504(n)`
-/

namespace A247380.P13896738817635737709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A141042 (n + 1) - A007504 n)

end

end A247380.P13896738817635737709

namespace A247380

/-- `A007504(n+1)+A141042(n+1)-A007504(n)` -/
def P13896738817635737709.Spec : Prop :=
  ∀ n, P13896738817635737709.a n = A247380 (n + 1)

end A247380

/-! ## A247380.P15387873793356848046

`A000040(n+1)+A062357(n+1)+A000040(n+1)`
-/

namespace A247380.P15387873793356848046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A062357 (n + 1) + A000040 (n + 1))

end

end A247380.P15387873793356848046

namespace A247380

/-- `A000040(n+1)+A062357(n+1)+A000040(n+1)` -/
def P15387873793356848046.Spec : Prop :=
  ∀ n, P15387873793356848046.a n = A247380 (n + 1)

theorem P15387873793356848046.correct : P15387873793356848046.Spec := by
  intro n
  simp only [A247380, Nat.add_sub_cancel, A247380.P15387873793356848046.a, A247380.P8040246546011606999.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A062357, A062357.P6547862121818116138.a, A117495, A117495.P9366338507972242085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247380

/-! ## A247380.P12085940878026092191

`A141042(n+1)+A189892(n+1)-A152535(n+1)`
-/

namespace A247380.P12085940878026092191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1) + (A189892 (n + 1) - A152535 (n + 1))

end

end A247380.P12085940878026092191

namespace A247380

/-- `A141042(n+1)+A189892(n+1)-A152535(n+1)` -/
def P12085940878026092191.Spec : Prop :=
  ∀ n, P12085940878026092191.a n = A247380 (n + 1)

end A247380

/-! ## A247380.P5485879499511597518

`A141042(n+1)+A161522(n+1)/A014689(n+1)`
-/

namespace A247380.P5485879499511597518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141042 (n + 1) : ℚ) + (A161522 (n + 1) : ℚ) / (A014689 (n + 1) : ℚ)

end

end A247380.P5485879499511597518

namespace A247380

/-- `A141042(n+1)+A161522(n+1)/A014689(n+1)` -/
def P5485879499511597518.Spec : Prop :=
  ∀ n, P5485879499511597518.a n = (A247380 (n + 1) : ℚ)

end A247380

/-! ## A247380.P5724414268258256073

`Δ[A117495(n+1)]`
-/

namespace A247380.P5724414268258256073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247380.P5724414268258256073

namespace A247380

/-- `Δ[A117495(n+1)]` -/
def P5724414268258256073.Spec : Prop :=
  ∀ n, P5724414268258256073.a n = A247380 (n + 1)

theorem P5724414268258256073.correct : P5724414268258256073.Spec := by
  intro n
  simp only [A247380, Nat.add_sub_cancel, A247380.P5724414268258256073.f1, A247380.P5724414268258256073.a, A247380.P8040246546011606999.a, SequenceMachineLib.memo_apply]

end A247380

/-! ## A247380.P12172203191729419363

`Δ[n*Δ[A007504(n)]]`
-/

namespace A247380.P12172203191729419363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247380.P12172203191729419363

namespace A247380

/-- `Δ[n*Δ[A007504(n)]]` -/
def P12172203191729419363.Spec : Prop :=
  ∀ n, P12172203191729419363.a n = A247380 (n + 1)

end A247380

/-! ## A247380.P738637382636004632

`Δ[n*p?[A259153(n)]]`
-/

namespace A247380.P738637382636004632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247380.P738637382636004632

namespace A247380

/-- `Δ[n*p?[A259153(n)]]` -/
def P738637382636004632.Spec : Prop :=
  ∀ n, P738637382636004632.a n = A247380 (n + 1)

end A247380

/-! ## A247380.P5320035220840827563

`Δ[n*A000040(n+1)]`
-/

namespace A247380.P5320035220840827563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247380.P5320035220840827563

namespace A247380

/-- `Δ[n*A000040(n+1)]` -/
def P5320035220840827563.Spec : Prop :=
  ∀ n, P5320035220840827563.a n = A247380 (n + 1)

theorem P5320035220840827563.correct : P5320035220840827563.Spec := by
  intro n
  simp only [A247380, Nat.add_sub_cancel, A247380.P5320035220840827563.f1, A247380.P5320035220840827563.a, A247380.P8040246546011606999.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A117495, A117495.P9366338507972242085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247380

/-!
# A247381: The area of a primitive Heronian triangle K, such that K = k^2*n for the least k, where n is the sequence index.

The programs for A247381, there is no canonical definition to state claims against.
-/

/-! ## A247381.P504254304027461513

`A211437(A076305(n+1))`
-/

namespace A247381.P504254304027461513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211437 (A076305 (n + 1)).toNat

end

end A247381.P504254304027461513

/-!
# A247382: a(n) = (a(n-1) * a(n-3) - (-1)^n * a(n-2)^2) / a(n-4) with a(0) = -3, a(1) = 7, a(2) = 1, a(3) = 46.

The programs for A247382, the canonical program `A247382.P767914865600906793` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247382 has offset 0).

The definition of A247382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247382.P767914865600906793

`(a(n-1)*a(n-3)-(-1)^n*a(n-2)²)/a(n-4)` with `a(0)=-3, a(1)=7, a(2)=1, a(3)=46`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247382

/-- `(a(n-1)*a(n-3)-(-1)^n*a(n-2)²)/a(n-4)` -/
def P767914865600906793.Spec : Prop :=
  ∀ n, P767914865600906793.a n = (A247382 n : ℚ)

end A247382

/-!
# A247385: Erroneous decimal expansion (or digits) of Pi engraved in the wall of the Robertson Tunnel at the Washington Park (MAX station), Portland, Oregon. The digits displayed are digits 1-11, 102-111, 202-211, 302-311, 402-411, 502-511, 602-611, 702-711, 802-811, 902-911, 12-17.

The programs for A247385, there is no canonical definition to state claims against.
-/

/-! ## A247385.P854754697998272858

`A000796(n^A146607(n+1))`
-/

namespace A247385.P854754697998272858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((SequenceMachineLib.roundAway ((n : ℚ) ^ (A146607 (n + 1) : ℤ))).toNat + 1)

end

end A247385.P854754697998272858

/-! ## A247385.P860129279789709346

`A000796(n^A147032(n+1))`
-/

namespace A247385.P860129279789709346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((SequenceMachineLib.roundAway ((n : ℚ) ^ (A147032 (n + 1) : ℤ))).toNat + 1)

end

end A247385.P860129279789709346

/-! ## A247385.P1067363389403358904

`A000796(n^A147120(n+1))`
-/

namespace A247385.P1067363389403358904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((SequenceMachineLib.roundAway ((n : ℚ) ^ (A147120 (n + 1) : ℤ))).toNat + 1)

end

end A247385.P1067363389403358904

/-! ## A247385.P16263159813934367400

`A000796(n^A147136(n+1))`
-/

namespace A247385.P16263159813934367400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((SequenceMachineLib.roundAway ((n : ℚ) ^ (A147136 (n + 1) : ℤ))).toNat + 1)

end

end A247385.P16263159813934367400

/-! ## A247385.P14815763972261032279

`A000796(n^A147159(n+1))`
-/

namespace A247385.P14815763972261032279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((SequenceMachineLib.roundAway ((n : ℚ) ^ (A147159 (n + 1) : ℤ))).toNat + 1)

end

end A247385.P14815763972261032279

/-!
# A247386: Sum of the major index over all standard Young tableaux with n cells.

The programs for A247386, there is no canonical definition to state claims against.
-/

/-! ## A247386.P15694821032513078508

`n/2*A161125(n)`
-/

namespace A247386.P15694821032513078508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A161125 n : ℚ)

end

end A247386.P15694821032513078508

/-! ## A247386.P3307861459633862058

`C(n, 2)/2*A000085(n)`
-/

namespace A247386.P3307861459633862058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℚ) / 2 * (A000085 n : ℚ)

end

end A247386.P3307861459633862058

/-! ## A247386.P358173221753944528

`A000085(n)/2*A161680(n)`
-/

namespace A247386.P358173221753944528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n : ℚ) / 2 * (A161680 n : ℚ)

end

end A247386.P358173221753944528

/-! ## A247386.P16988550645494424801

`A099020(∑[n])/2*A161680(n)`
-/

namespace A247386.P16988550645494424801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099020 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2 * (A161680 n : ℚ)

end

end A247386.P16988550645494424801

/-! ## A247386.P9139220285653302814

`A161680(n)*A238802(A000124(n))`
-/

namespace A247386.P9139220285653302814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n * A238802 (A000124 n).toNat

end

end A247386.P9139220285653302814

/-!
# A247387: Base-n state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (1234567)*.

The programs for A247387, the canonical program `A247387.P5313882624966048986` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247387 has offset 2).

The definition of A247387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247387.P5313882624966048986

`ogf((21+42x+21x^2+42x^3+14x^4+8x^5+7x^6)/(1-x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247387

/-- `ogf((21+42x+21x^2+42x^3+14x^4+8x^5+7x^6)/(1-x^7))` -/
def P5313882624966048986.Spec : Prop :=
  ∀ n, P5313882624966048986.a n = A247387 (n + 2)

theorem P5313882624966048986.correct : P5313882624966048986.Spec := by
  intro n
  simp only [A247387, Nat.add_sub_cancel]

end A247387

/-!
# A247388: Base-n state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (12345678)*.

The programs for A247388, there is no canonical definition to state claims against.
-/

/-! ## A247388.P16749786407293210290

`A306640(A055999(n+4))`
-/

namespace A247388.P16749786407293210290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A055999 (n + 4)).toNat

end

end A247388.P16749786407293210290

/-! ## A247388.P2064110560552636478

`A306640(eq[4, A219347(n)])`
-/

namespace A247388.P2064110560552636478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247388.P2064110560552636478

/-! ## A247388.P4554835987025571175

`A306640(eq[6, A193592(n)])`
-/

namespace A247388.P4554835987025571175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247388.P4554835987025571175

/-! ## A247388.P8511180023893182161

`A306640(Δ[A023551(n+2)])`
-/

namespace A247388.P8511180023893182161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (f1 (n + 1) - f1 n).toNat

end

end A247388.P8511180023893182161

/-! ## A247388.P5080984131791042657

`A306640(A052905(n+4)-1)`
-/

namespace A247388.P5080984131791042657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A052905 (n + 4) - 1).toNat

end

end A247388.P5080984131791042657

/-!
# A247389: Base-n state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123456789)*.

The programs for A247389, there is no canonical definition to state claims against.
-/

/-! ## A247389.P4893228366691941749

`A306640(eq[5, A219347(n)])`
-/

namespace A247389.P4893228366691941749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247389.P4893228366691941749

/-! ## A247389.P15208690517925113976

`A306640(eq[7, A193592(n)])`
-/

namespace A247389.P15208690517925113976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247389.P15208690517925113976

/-! ## A247389.P4400388087626594742

`A306640(A056000(n+4)+3)`
-/

namespace A247389.P4400388087626594742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A056000 (n + 4) + 3).toNat

end

end A247389.P4400388087626594742

/-! ## A247389.P11752472566722931480

`A306640(A046691(n+6)-3)`
-/

namespace A247389.P11752472566722931480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A046691 (n + 6) - 3).toNat

end

end A247389.P11752472566722931480

/-! ## A247389.P1060537375003504128

`A306640(A000096(n+7)-6)`
-/

namespace A247389.P1060537375003504128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000096 (n + 7) - 6).toNat

end

end A247389.P1060537375003504128

/-!
# A247390: Base-n state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (12345678910)*.

The programs for A247390, the canonical program `A247390.P4116146588960445152` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247390 has offset 2).

The definition of A247390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247390.P4116146588960445152

`ogf((41+40x+21x^2+11x^3+11x^4+40x^5+41x^6+20x^7+11x^8+10x^9)/(1-x^10))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247390

/-- `ogf((41+40x+21x^2+11x^3+11x^4+40x^5+41x^6+20x^7+11x^8+10x^9)/(1-x^10))` -/
def P4116146588960445152.Spec : Prop :=
  ∀ n, P4116146588960445152.a n = A247390 (n + 2)

theorem P4116146588960445152.correct : P4116146588960445152.Spec := by
  intro n
  simp only [A247390, Nat.add_sub_cancel]

end A247390

/-!
# A247391: Base-n state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (1234567891011).

The programs for A247391, the canonical program `A247391.P6657019606404001011` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247391 has offset 2).

The definition of A247391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247391.P6657019606404001011

`ogf((110+55x+55x^2+55x^3+110x^4+110x^5+110x^6+55x^7+22x^8+12x^9+11x^10)/(1-x^11))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247391

/-- `ogf((110+55x+55x^2+55x^3+110x^4+110x^5+110x^6+55x^7+22x^8+12x^9+11x^10)/(1-x^11))` -/
def P6657019606404001011.Spec : Prop :=
  ∀ n, P6657019606404001011.a n = A247391 (n + 2)

theorem P6657019606404001011.correct : P6657019606404001011.Spec := by
  intro n
  simp only [A247391, Nat.add_sub_cancel]

end A247391

/-!
# A247393: Numbers n such that the second maximal prime <= sqrt(n) is the least prime divisor of n.

The programs for A247393, there is no canonical definition to state claims against.
-/

/-! ## A247393.P10027042259634087719

`eq[2, A247977(n+1)]+1`
-/

namespace A247393.P10027042259634087719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247977 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A247393.P10027042259634087719

/-! ## A247393.P14615193764446272651

`eq[2, A247977(A028310(n))]`
-/

namespace A247393.P14615193764446272651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247977 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247393.P14615193764446272651

/-! ## A247393.P5618424963923121003

`A020725(eq[2, A247977(n+1)])`
-/

namespace A247393.P5618424963923121003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247393.P5618424963923121003

/-! ## A247393.P18262294835843506719

`eq[2, A247977(A123108(2*n))]`
-/

namespace A247393.P18262294835843506719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247977 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247393.P18262294835843506719

/-! ## A247393.P7448410525679520816

`A113484(eq[2, A247977(n+1)])`
-/

namespace A247393.P7448410525679520816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247393.P7448410525679520816

/-!
# A247394: Numbers k for which the third maximal prime <= sqrt(k) is the least prime divisor of k.

The programs for A247394, there is no canonical definition to state claims against.
-/

/-! ## A247394.P5226179862945445991

`eq[3, A247977(n+1)]+1`
-/

namespace A247394.P5226179862945445991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247977 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A247394.P5226179862945445991

/-! ## A247394.P7121656536798495053

`eq[3, A247977(A028310(n))]`
-/

namespace A247394.P7121656536798495053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247977 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247394.P7121656536798495053

/-! ## A247394.P15272695873086821631

`A020725(eq[3, A247977(n+1)])`
-/

namespace A247394.P15272695873086821631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247394.P15272695873086821631

/-! ## A247394.P17430423895712431549

`eq[3, A247977(A123108(2*n))]`
-/

namespace A247394.P17430423895712431549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247977 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247394.P17430423895712431549

/-! ## A247394.P14338533176393039371

`A113484(eq[3, A247977(n+1)])`
-/

namespace A247394.P14338533176393039371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247394.P14338533176393039371

/-!
# A247395: The smallest numbers of every class in a classification of positive numbers (see comment).

The programs for A247395, the canonical program `A247395.P696793763517772472` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247395 has offset 0).

The definition of A247395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247395.P696793763517772472

`record[n^C(2, ∑{e}[n, #])!+(n%2)^n]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A247395

/-- `record[n^C(2, ∑{e}[n, #])!+(n%2)^n]` -/
def P696793763517772472.Spec : Prop :=
  ∀ n, (P696793763517772472.a n : ℤ) = A247395 n

theorem P696793763517772472.correct : P696793763517772472.Spec := by
  intro n
  simp only [A247395]

end A247395

/-! ## A247395.P9929626757048454266

`record[and(1, n)+(A029579(n)/A143862(n))²]`
-/

namespace A247395.P9929626757048454266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℚ) + ((A029579 n : ℚ) / (A143862 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247395.P9929626757048454266

namespace A247395

/-- `record[and(1, n)+(A029579(n)/A143862(n))²]` -/
def P9929626757048454266.Spec : Prop :=
  ∀ n, P9929626757048454266.a n = (A247395 n : ℚ)

end A247395

/-! ## A247395.P10464797911146642754

`record[A130064(n+1)-round(-(∏{p}[n+1, -#]/(n+3)))]`
-/

namespace A247395.P10464797911146642754
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130064 (n + 1) - SequenceMachineLib.roundAway (-(((∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 3 : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247395.P10464797911146642754

namespace A247395

/-- `record[A130064(n+1)-round(-(∏{p}[n+1, -#]/(n+3)))]` -/
def P10464797911146642754.Spec : Prop :=
  ∀ n, P10464797911146642754.a n = A247395 n

end A247395

/-! ## A247395.P12826031499803872035

`A245092(A158611(n+1)²+1)`
-/

namespace A247395.P12826031499803872035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A158611 (n + 1) ^ 2 + 1).toNat

end

end A247395.P12826031499803872035

namespace A247395

/-- `A245092(A158611(n+1)²+1)` -/
def P12826031499803872035.Spec : Prop :=
  ∀ n, P12826031499803872035.a n = A247395 n

end A247395

/-!
# A247396: Number of even numbers in classes of classification of the positive numbers defined in comment in A247395.

The programs for A247396, the canonical program `A247396.P2802040727128324426` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247396 has offset 0).

The definition of A247396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247396.P2802040727128324426

`floor(Δ[A247395(n)/2])`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A247396

/-- `floor(Δ[A247395(n)/2])` -/
def P2802040727128324426.Spec : Prop :=
  ∀ n, P2802040727128324426.a n = A247396 n

theorem P2802040727128324426.correct : P2802040727128324426.Spec := by
  intro n
  simp only [A247396]

end A247396

/-! ## A247396.P7615058987967104889

`Δ[A247395(n)/A020639(A001223(n+1))]`
-/

namespace A247396.P7615058987967104889
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247395 n : ℚ) / (A020639 (A001223 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247396.P7615058987967104889

namespace A247396

/-- `Δ[A247395(n)/A020639(A001223(n+1))]` -/
def P7615058987967104889.Spec : Prop :=
  ∀ n, P7615058987967104889.a n = (A247396 n : ℚ)

end A247396

/-! ## A247396.P18057234600531508404

`Δ[A000982(A064989(A008578(n+1)))]`
-/

namespace A247396.P18057234600531508404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A064989 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247396.P18057234600531508404

namespace A247396

/-- `Δ[A000982(A064989(A008578(n+1)))]` -/
def P18057234600531508404.Spec : Prop :=
  ∀ n, P18057234600531508404.a n = A247396 n

end A247396

/-! ## A247396.P12561470698822120441

`Δ[A000982(A064989(A001747(n+1)))]`
-/

namespace A247396.P12561470698822120441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A064989 (A001747 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247396.P12561470698822120441

namespace A247396

/-- `Δ[A000982(A064989(A001747(n+1)))]` -/
def P12561470698822120441.Spec : Prop :=
  ∀ n, P12561470698822120441.a n = A247396 n

end A247396

/-! ## A247396.P10219794002846383553

`Δ[A247395(n)/A124927(A000096(n))]`
-/

namespace A247396.P10219794002846383553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247395 n : ℚ) / (A124927 (A000096 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247396.P10219794002846383553

namespace A247396

/-- `Δ[A247395(n)/A124927(A000096(n))]` -/
def P10219794002846383553.Spec : Prop :=
  ∀ n, P10219794002846383553.a n = (A247396 n : ℚ)

end A247396

/-! ## A247396.P1872308422094195057

`A175126(Δ[A247395(n)])`
-/

namespace A247396.P1872308422094195057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (f1 (n + 1) - f1 n).toNat

end

end A247396.P1872308422094195057

namespace A247396

/-- `A175126(Δ[A247395(n)])` -/
def P1872308422094195057.Spec : Prop :=
  ∀ n, P1872308422094195057.a n = A247396 n

end A247396

/-! ## A247396.P5004437501016861433

`A175126(A247395(n+1)-A247395(n))`
-/

namespace A247396.P5004437501016861433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A247395 (n + 1) - A247395 n).toNat

end

end A247396.P5004437501016861433

namespace A247396

/-- `A175126(A247395(n+1)-A247395(n))` -/
def P5004437501016861433.Spec : Prop :=
  ∀ n, P5004437501016861433.a n = A247396 n

end A247396

/-! ## A247396.P4450747932333556223

`A025480(Δ[A247395(n)])`
-/

namespace A247396.P4450747932333556223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (n + 1) - f1 n).toNat

end

end A247396.P4450747932333556223

namespace A247396

/-- `A025480(Δ[A247395(n)])` -/
def P4450747932333556223.Spec : Prop :=
  ∀ n, P4450747932333556223.a n = A247396 n

end A247396

/-!
# A247399: Number of length n+4 0..3 arrays with no disjoint pairs in any consecutive five terms having the same sum.

The programs for A247399, there is no canonical definition to state claims against.
-/

/-! ## A247399.P10970069727748493033

`A247404(∑[n+3]+1)`
-/

namespace A247399.P10970069727748493033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A247399.P10970069727748493033

/-! ## A247399.P6163120837708399280

`lcm(2, A247404(Δ[A008778(n)]))`
-/

namespace A247399.P6163120837708399280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A247404 (f1 (n + 1) - f1 n).toNat)

end

end A247399.P6163120837708399280

/-! ## A247399.P18108898990067734503

`A247404(Δ[A008778(n)])%A075299(n)`
-/

namespace A247399.P18108898990067734503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247404 (f1 (n + 1) - f1 n).toNat) (A075299 n)

end

end A247399.P18108898990067734503

/-! ## A247399.P11032266815484206278

`A106400(n)²*A247404(Δ[A008778(n)])`
-/

namespace A247399.P11032266815484206278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 2 * A247404 (f1 (n + 1) - f1 n).toNat

end

end A247399.P11032266815484206278

/-! ## A247399.P2061989435410618648

`A247404(Δ[A008778(n)])+A000007(n+1)`
-/

namespace A247399.P2061989435410618648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A247399.P2061989435410618648

/-! ## A247399.P1085597751327961851

`A247404(Δ[A008778(n)])+A000035(2*n)`
-/

namespace A247399.P1085597751327961851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (f1 (n + 1) - f1 n).toNat + A000035 (2 * n)

end

end A247399.P1085597751327961851

/-! ## A247399.P4714725272916385459

`A001511(2*n+1)*A247404(Δ[A008778(n)])`
-/

namespace A247399.P4714725272916385459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A247404 (f1 (n + 1) - f1 n).toNat

end

end A247399.P4714725272916385459

