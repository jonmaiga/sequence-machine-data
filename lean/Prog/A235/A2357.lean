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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A235700: a(n+1) = a(n) + (a(n) mod 5), a(1)=1.

The programs for A235700, the canonical program `A235700.P12679169612853868862` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235700 has offset 1).

The definition of A235700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235700.P7134902185019876085

`ogf((1+2x^2+2x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A235700.P7134902185019876085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, 2] [1, -2, 2, -2, 1] n

end

end A235700.P7134902185019876085

namespace A235700

/-- `ogf((1+2x^2+2x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P7134902185019876085.Spec : Prop :=
  ∀ n, P7134902185019876085.a n = A235700 (n + 1)

end A235700

/-! ## A235700.P12679169612853868862

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A235700

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P12679169612853868862.Spec : Prop :=
  ∀ n, P12679169612853868862.a n = A235700 (n + 1)

theorem P12679169612853868862.correct : P12679169612853868862.Spec := by
  intro n
  simp only [A235700, Nat.add_sub_cancel]

end A235700

/-! ## A235700.P5507584025794322577

`a(n-4)+10` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A235700.P5507584025794322577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  a (n - 4) + 10

end

end A235700.P5507584025794322577

namespace A235700

/-- `a(n-4)+10` -/
def P5507584025794322577.Spec : Prop :=
  ∀ n, (P5507584025794322577.a n : ℤ) = A235700 (n + 1)

end A235700

/-! ## A235700.P14177678100555152790

`∑[5-a(n-2)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A235700.P14177678100555152790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  5 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235700.P14177678100555152790

namespace A235700

/-- `∑[5-a(n-2)]` -/
def P14177678100555152790.Spec : Prop :=
  ∀ n, P14177678100555152790.a n = A235700 (n + 1)

end A235700

/-! ## A235700.P12141868009716845656

`∑[2^and(2, n)]-and(2, n)`
-/

namespace A235700.P12141868009716845656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land 2 n : ℤ)

end

end A235700.P12141868009716845656

namespace A235700

/-- `∑[2^and(2, n)]-and(2, n)` -/
def P12141868009716845656.Spec : Prop :=
  ∀ n, P12141868009716845656.a n = A235700 (n + 1)

end A235700

/-! ## A235700.P11358110634521508419

`∑[∑[ogf((1+2x^2+2x^3)/(1+x^2))]]`
-/

namespace A235700.P11358110634521508419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, 2] [1, 0, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235700.P11358110634521508419

namespace A235700

/-- `∑[∑[ogf((1+2x^2+2x^3)/(1+x^2))]]` -/
def P11358110634521508419.Spec : Prop :=
  ∀ n, P11358110634521508419.a n = A235700 (n + 1)

end A235700

/-! ## A235700.P3257458286119222336

`5*(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A235700.P3257458286119222336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  5 * ((n : ℤ) - 1) - a (n - 2)

end

end A235700.P3257458286119222336

namespace A235700

/-- `5*(n-1)-a(n-2)` -/
def P3257458286119222336.Spec : Prop :=
  ∀ n, P3257458286119222336.a n = A235700 (n + 1)

end A235700

/-! ## A235700.P14982595584311740085

`5-(a(n-2)-a(n-1)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A235700.P14982595584311740085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  5 - (a (n - 2) - a (n - 1) - a (n - 3))

end

end A235700.P14982595584311740085

namespace A235700

/-- `5-(a(n-2)-a(n-1)-a(n-3))` -/
def P14982595584311740085.Spec : Prop :=
  ∀ n, P14982595584311740085.a n = A235700 (n + 1)

end A235700

/-! ## A235700.P4427958517548452364

`A002081(n)/2`
-/

namespace A235700.P4427958517548452364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002081 n : ℚ) / 2

end

end A235700.P4427958517548452364

namespace A235700

/-- `A002081(n)/2` -/
def P4427958517548452364.Spec : Prop :=
  ∀ n, P4427958517548452364.a n = (A235700 (n + 1) : ℚ)

theorem P4427958517548452364.correct : P4427958517548452364.Spec := by
  intro n
  simp only [A235700, Nat.add_sub_cancel, A235700.P4427958517548452364.a, A235700.P12679169612853868862.a, A002081, A002081.P6483890857808447145.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235700

/-! ## A235700.P6087321975478854799

`∑[round(A000689(n)/2)]`
-/

namespace A235700.P6087321975478854799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000689 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235700.P6087321975478854799

namespace A235700

/-- `∑[round(A000689(n)/2)]` -/
def P6087321975478854799.Spec : Prop :=
  ∀ n, P6087321975478854799.a n = A235700 (n + 1)

end A235700

/-! ## A235700.P395235049038125206

`A028836(n+1)+floor(n/4)`
-/

namespace A235700.P395235049038125206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028836 (n + 1) + ⌊(n : ℚ) / 4⌋

end

end A235700.P395235049038125206

namespace A235700

/-- `A028836(n+1)+floor(n/4)` -/
def P395235049038125206.Spec : Prop :=
  ∀ n, P395235049038125206.a n = A235700 (n + 1)

end A235700

/-! ## A235700.P3051473830076036830

`A047397(n+1)+∑[and(1, n+1)]`
-/

namespace A235700.P3051473830076036830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047397 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A235700.P3051473830076036830

namespace A235700

/-- `A047397(n+1)+∑[and(1, n+1)]` -/
def P3051473830076036830.Spec : Prop :=
  ∀ n, P3051473830076036830.a n = A235700 (n + 1)

end A235700

/-! ## A235700.P9527554376079268193

`gcd(2, ∑[n])+lt[A020639(n+2), 4]+n-1`
-/

namespace A235700.P9527554376079268193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + ((SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) + ((n : ℤ) - 1))

end

end A235700.P9527554376079268193

namespace A235700

/-- `gcd(2, ∑[n])+lt[A020639(n+2), 4]+n-1` -/
def P9527554376079268193.Spec : Prop :=
  ∀ n, P9527554376079268193.a n = A235700 (n + 1)

end A235700

/-! ## A235700.P9992874167310545030

`A122461(n)+A003485(n)`
-/

namespace A235700.P9992874167310545030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122461 n + A003485 n

end

end A235700.P9992874167310545030

namespace A235700

/-- `A122461(n)+A003485(n)` -/
def P9992874167310545030.Spec : Prop :=
  ∀ n, P9992874167310545030.a n = A235700 (n + 1)

end A235700

/-! ## A235700.P12483808465868544720

`A131379(n)+A047215(n)`
-/

namespace A235700.P12483808465868544720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131379 n + A047215 n

end

end A235700.P12483808465868544720

namespace A235700

/-- `A131379(n)+A047215(n)` -/
def P12483808465868544720.Spec : Prop :=
  ∀ n, P12483808465868544720.a n = A235700 (n + 1)

end A235700

/-! ## A235700.P6178599351712758593

`A047533(n+1)+A004526(n)`
-/

namespace A235700.P6178599351712758593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047533 (n + 1) + A004526 n

end

end A235700.P6178599351712758593

namespace A235700

/-- `A047533(n+1)+A004526(n)` -/
def P6178599351712758593.Spec : Prop :=
  ∀ n, P6178599351712758593.a n = A235700 (n + 1)

end A235700

/-! ## A235700.P3252915500254258412

`A047541(n+1)+A004524(n)`
-/

namespace A235700.P3252915500254258412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (n + 1) + A004524 n

end

end A235700.P3252915500254258412

namespace A235700

/-- `A047541(n+1)+A004524(n)` -/
def P3252915500254258412.Spec : Prop :=
  ∀ n, P3252915500254258412.a n = A235700 (n + 1)

end A235700

/-! ## A235700.P1664679985913920128

`A047397(n+1)+A008619(n)`
-/

namespace A235700.P1664679985913920128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047397 (n + 1) + A008619 n

end

end A235700.P1664679985913920128

namespace A235700

/-- `A047397(n+1)+A008619(n)` -/
def P1664679985913920128.Spec : Prop :=
  ∀ n, P1664679985913920128.a n = A235700 (n + 1)

end A235700

/-! ## A235700.P14061078315011252283

`A047388(n+1)+A037915(n)`
-/

namespace A235700.P14061078315011252283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047388 (n + 1) + A037915 n

end

end A235700.P14061078315011252283

namespace A235700

/-- `A047388(n+1)+A037915(n)` -/
def P14061078315011252283.Spec : Prop :=
  ∀ n, P14061078315011252283.a n = A235700 (n + 1)

end A235700

/-! ## A235700.P2180844976843675814

`A057353(n)+A047286(n+1)`
-/

namespace A235700.P2180844976843675814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n + A047286 (n + 1)

end

end A235700.P2180844976843675814

namespace A235700

/-- `A057353(n)+A047286(n+1)` -/
def P2180844976843675814.Spec : Prop :=
  ∀ n, P2180844976843675814.a n = A235700 (n + 1)

end A235700

/-!
# A235701: Number of n step walks (each step +- 1 starting from 0) which are never more than 6 or less than -6.

The programs for A235701, the canonical program `A235701.P1710375283682396327` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235701 has offset 0).

The definition of A235701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235701.P1710375283682396327

`ogf((1+2x-3x^2-6x^3+2x^4+4x^5+x^6)/(1-7x^2+14x^4-7x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A235701

/-- `ogf((1+2x-3x^2-6x^3+2x^4+4x^5+x^6)/(1-7x^2+14x^4-7x^6))` -/
def P1710375283682396327.Spec : Prop :=
  ∀ n, P1710375283682396327.a n = A235701 n

theorem P1710375283682396327.correct : P1710375283682396327.Spec := by
  intro n
  simp only [A235701]

end A235701

/-! ## A235701.P16133957376302001979

`A068913(eq[6, col(n)])`
-/

namespace A235701.P16133957376302001979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A235701.P16133957376302001979

namespace A235701

/-- `A068913(eq[6, col(n)])` -/
def P16133957376302001979.Spec : Prop :=
  ∀ n, P16133957376302001979.a n = A235701 n

end A235701

/-! ## A235701.P2826300214892312171

`A185283(A135343(n))`
-/

namespace A235701.P2826300214892312171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A135343 n).toNat

end

end A235701.P2826300214892312171

namespace A235701

/-- `A185283(A135343(n))` -/
def P2826300214892312171.Spec : Prop :=
  ∀ n, P2826300214892312171.a n = A235701 n

end A235701

/-! ## A235701.P8373081845175009906

`A385890(A181600(n+1))`
-/

namespace A235701.P8373081845175009906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385890 (A181600 (n + 1)).toNat

end

end A235701.P8373081845175009906

namespace A235701

/-- `A385890(A181600(n+1))` -/
def P8373081845175009906.Spec : Prop :=
  ∀ n, P8373081845175009906.a n = A235701 n

end A235701

/-!
# A235702: Fixed points of A001175 (Pisano periods).

The programs for A235702, the canonical program `A235702.P14204163830145164762` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235702 has offset 1).

The definition of A235702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235702.P10556174603077395317

`ogf((1+19x)/(1-5x))`
-/

namespace A235702.P10556174603077395317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 19] [1, -5] n

end

end A235702.P10556174603077395317

namespace A235702

/-- `ogf((1+19x)/(1-5x))` -/
def P10556174603077395317.Spec : Prop :=
  ∀ n, P10556174603077395317.a n = A235702 (n + 1)

end A235702

/-! ## A235702.P14204163830145164762

`5*a(n-1)` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A235702

/-- `5*a(n-1)` -/
def P14204163830145164762.Spec : Prop :=
  ∀ n, (P14204163830145164762.a n : ℤ) = A235702 (n + 1)

theorem P14204163830145164762.correct : P14204163830145164762.Spec := by
  intro n
  simp only [A235702, Nat.add_sub_cancel]

end A235702

/-! ## A235702.P7468328954774836450

`record[5*T(n-1,k)]` with `a(0)=1, a(1)=24`
-/

namespace A235702.P7468328954774836450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 24] fun n f1 =>
  5 * SequenceMachineLib.triUp f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235702.P7468328954774836450

namespace A235702

/-- `record[5*T(n-1,k)]` -/
def P7468328954774836450.Spec : Prop :=
  ∀ n, (P7468328954774836450.a n : ℤ) = A235702 (n + 1)

end A235702

/-! ## A235702.P5381456291837298053

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=24, a(2)=5`
-/

namespace A235702.P5381456291837298053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 24, 5] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A235702.P5381456291837298053

namespace A235702

/-- `abs(∏[-a(n-1)])` -/
def P5381456291837298053.Spec : Prop :=
  ∀ n, P5381456291837298053.a n = A235702 (n + 1)

end A235702

/-! ## A235702.P14163046887150085015

`lcm(floor(6*5^(n-1)), Δ[A020699(n)])`
-/

namespace A235702.P14163046887150085015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊6 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (f1 (n + 1) - f1 n)

end

end A235702.P14163046887150085015

namespace A235702

/-- `lcm(floor(6*5^(n-1)), Δ[A020699(n)])` -/
def P14163046887150085015.Spec : Prop :=
  ∀ n, (P14163046887150085015.a n : ℤ) = A235702 (n + 1)

end A235702

/-! ## A235702.P5940305349544985401

`A105953(A016921(n))`
-/

namespace A235702.P5940305349544985401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105953 (A016921 n).toNat

end

end A235702.P5940305349544985401

namespace A235702

/-- `A105953(A016921(n))` -/
def P5940305349544985401.Spec : Prop :=
  ∀ n, P5940305349544985401.a n = A235702 (n + 1)

end A235702

/-! ## A235702.P3714748356652645540

`A003948(n)*A123932(n)`
-/

namespace A235702.P3714748356652645540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 n * A123932 n

end

end A235702.P3714748356652645540

namespace A235702

/-- `A003948(n)*A123932(n)` -/
def P3714748356652645540.Spec : Prop :=
  ∀ n, P3714748356652645540.a n = A235702 (n + 1)

end A235702

/-! ## A235702.P17742597408669940259

`A040000(n)²*A003948(n)`
-/

namespace A235702.P17742597408669940259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n ^ 2 * A003948 n

end

end A235702.P17742597408669940259

namespace A235702

/-- `A040000(n)²*A003948(n)` -/
def P17742597408669940259.Spec : Prop :=
  ∀ n, P17742597408669940259.a n = A235702 (n + 1)

end A235702

/-! ## A235702.P2234391638758965251

`lcm(Δ[A020699(n)], A003948(n))`
-/

namespace A235702.P2234391638758965251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A003948 n)

end

end A235702.P2234391638758965251

namespace A235702

/-- `lcm(Δ[A020699(n)], A003948(n))` -/
def P2234391638758965251.Spec : Prop :=
  ∀ n, (P2234391638758965251.a n : ℤ) = A235702 (n + 1)

end A235702

/-! ## A235702.P15442977216235530696

`∩[A105953(n+1), A138278(n)]`
-/

namespace A235702.P15442977216235530696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138278 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235702.P15442977216235530696

namespace A235702

/-- `∩[A105953(n+1), A138278(n)]` -/
def P15442977216235530696.Spec : Prop :=
  ∀ n, (P15442977216235530696.a n : ℤ) = A235702 (n + 1)

end A235702

/-! ## A235702.P3652129157865038399

`(1-A157532(n+1))²*A003948(n)`
-/

namespace A235702.P3652129157865038399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A157532 (n + 1)) ^ 2 * A003948 n

end

end A235702.P3652129157865038399

namespace A235702

/-- `(1-A157532(n+1))²*A003948(n)` -/
def P3652129157865038399.Spec : Prop :=
  ∀ n, P3652129157865038399.a n = A235702 (n + 1)

end A235702

/-! ## A235702.P17207309960842244295

`A020639(A004277(n))²*A003948(n)`
-/

namespace A235702.P17207309960842244295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat ^ 2 * A003948 n

end

end A235702.P17207309960842244295

namespace A235702

/-- `A020639(A004277(n))²*A003948(n)` -/
def P17207309960842244295.Spec : Prop :=
  ∀ n, P17207309960842244295.a n = A235702 (n + 1)

end A235702

/-! ## A235702.P2820028357941044590

`A005054(n)*A165827(A020639(n+1))`
-/

namespace A235702.P2820028357941044590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n * A165827 (A020639 (n + 1)).toNat

end

end A235702.P2820028357941044590

namespace A235702

/-- `A005054(n)*A165827(A020639(n+1))` -/
def P2820028357941044590.Spec : Prop :=
  ∀ n, P2820028357941044590.a n = A235702 (n + 1)

end A235702

/-! ## A235702.P10467477103566793371

`Δ[xor(2, floor(6*5^(n-1)))]`
-/

namespace A235702.P10467477103566793371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ⌊6 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235702.P10467477103566793371

namespace A235702

/-- `Δ[xor(2, floor(6*5^(n-1)))]` -/
def P10467477103566793371.Spec : Prop :=
  ∀ n, P10467477103566793371.a n = A235702 (n + 1)

end A235702

/-! ## A235702.P4825515203923069632

`Δ[or(4, A003948(n))]`
-/

namespace A235702.P4825515203923069632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A003948 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235702.P4825515203923069632

namespace A235702

/-- `Δ[or(4, A003948(n))]` -/
def P4825515203923069632.Spec : Prop :=
  ∀ n, P4825515203923069632.a n = A235702 (n + 1)

end A235702

/-! ## A235702.P7496535805249047744

`Δ[A003948(n)]^A178334(n)`
-/

namespace A235702.P7496535805249047744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A178334 n : ℤ)

end

end A235702.P7496535805249047744

namespace A235702

/-- `Δ[A003948(n)]^A178334(n)` -/
def P7496535805249047744.Spec : Prop :=
  ∀ n, P7496535805249047744.a n = (A235702 (n + 1) : ℚ)

end A235702

/-!
# A235704: a(n) is the smallest number k such that n*k is a partition number.

The programs for A235704, there is no canonical definition to state claims against.
-/

/-! ## A235704.P8599138561121697794

`A072871(n+1)/(n+1)`
-/

namespace A235704.P8599138561121697794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072871 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A235704.P8599138561121697794

/-! ## A235704.P2530694757616089015

`A000041(A046641(n+1))/(n+1)`
-/

namespace A235704.P2530694757616089015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (A046641 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A235704.P2530694757616089015

/-! ## A235704.P8270776529047962763

`∑{d}[A046641(n+1), A000837(#)/(n+1)]`
-/

namespace A235704.P8270776529047962763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000837 d : ℚ) / (n + 1 : ℚ)

end

end A235704.P8270776529047962763

/-! ## A235704.P4668327166556347715

`tan(acot(A000027(n+1)))*A072871(n+1)`
-/

namespace A235704.P4668327166556347715
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (A000027 (n + 1) : ℝ)) * (A072871 (n + 1) : ℝ)

end

end A235704.P4668327166556347715

/-! ## A235704.P1788359775713273640

`floor((A000065(A046641(n+1))+A006530(n+1))/(n+1))`
-/

namespace A235704.P1788359775713273640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000065 (A046641 (n + 1)).toNat + A006530 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A235704.P1788359775713273640

/-!
# A235705: Primes p such that (p^3 + 6)/5 is prime.

The programs for A235705, there is no canonical definition to state claims against.
-/

/-! ## A235705.P8501118630611841971

`p?[A166520(A294847(n))]`
-/

namespace A235705.P8501118630611841971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166520 (A294847 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235705.P8501118630611841971

/-!
# A235706: (I + A132440)^3: Coefficients for normalized generalized Laguerre polynomials n!*Lag(n, 3-n, -x).

The programs for A235706, the canonical program `A235706.P1563117294380961210` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235706 has offset 0).

The definition of A235706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235706.P1563117294380961210

`C(3, row(n)-col(n))*row(n)!/col(n)!`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A235706

/-- `C(3, row(n)-col(n))*row(n)!/col(n)!` -/
def P1563117294380961210.Spec : Prop :=
  ∀ n, P1563117294380961210.a n = (A235706 n : ℚ)

end A235706

/-! ## A235706.P3018698189430347050

`T(n-1,k-1)+T(n-1,k)+(col(n)+3-row(n))*T(n-1,k)` with `a(0)=1`
-/

namespace A235706.P3018698189430347050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + ((SequenceMachineLib.triCol n + 3 : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUp a n

end

end A235706.P3018698189430347050

namespace A235706

/-- `T(n-1,k-1)+T(n-1,k)+(col(n)+3-row(n))*T(n-1,k)` -/
def P3018698189430347050.Spec : Prop :=
  ∀ n, P3018698189430347050.a n = A235706 n

end A235706

/-! ## A235706.P17537642833210123600

`(5-A004736(n+1))*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A235706.P17537642833210123600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 - A004736 (n + 1)) * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n

end

end A235706.P17537642833210123600

namespace A235706

/-- `(5-A004736(n+1))*T(n-1,k)+T(n-1,k-1)` -/
def P17537642833210123600.Spec : Prop :=
  ∀ n, P17537642833210123600.a n = A235706 n

end A235706

/-! ## A235706.P10237978910986662273

`A094587(n)*A122431(n)`
-/

namespace A235706.P10237978910986662273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A122431 n

end

end A235706.P10237978910986662273

namespace A235706

/-- `A094587(n)*A122431(n)` -/
def P10237978910986662273.Spec : Prop :=
  ∀ n, P10237978910986662273.a n = A235706 n

end A235706

/-! ## A235706.P14563346715023402034

`C(3, A025581(n))*A094587(n)`
-/

namespace A235706.P14563346715023402034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 (A025581 n).toNat : ℤ) * A094587 n

end

end A235706.P14563346715023402034

namespace A235706

/-- `C(3, A025581(n))*A094587(n)` -/
def P14563346715023402034.Spec : Prop :=
  ∀ n, P14563346715023402034.a n = A235706 n

end A235706

/-! ## A235706.P5826795432932208667

`and(3, A119502(n))*A131111(n)`
-/

namespace A235706.P5826795432932208667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A119502 n) * A131111 n

end

end A235706.P5826795432932208667

namespace A235706

/-- `and(3, A119502(n))*A131111(n)` -/
def P5826795432932208667.Spec : Prop :=
  ∀ n, P5826795432932208667.a n = A235706 n

end A235706

/-! ## A235706.P13031487718035015208

`C(3, log2(A130321(n)))*A094587(n)`
-/

namespace A235706.P13031487718035015208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat : ℤ) * A094587 n

end

end A235706.P13031487718035015208

namespace A235706

/-- `C(3, log2(A130321(n)))*A094587(n)` -/
def P13031487718035015208.Spec : Prop :=
  ∀ n, P13031487718035015208.a n = A235706 n

end A235706

/-! ## A235706.P10435386909805226120

`C(3, sqrt(A095831(n+1)))*A094587(n)`
-/

namespace A235706.P10435386909805226120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 (SequenceMachineLib.roundAway (Real.sqrt (A095831 (n + 1) : ℝ))).toNat : ℤ) * A094587 n

end

end A235706.P10435386909805226120

namespace A235706

/-- `C(3, sqrt(A095831(n+1)))*A094587(n)` -/
def P10435386909805226120.Spec : Prop :=
  ∀ n, P10435386909805226120.a n = A235706 n

end A235706

/-! ## A235706.P15360741310751044509

`C(3, A004202(n+1)%(n+1))*A094587(n)`
-/

namespace A235706.P15360741310751044509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 (Int.tmod (A004202 (n + 1)) (n + 1 : ℤ)).toNat : ℤ) * A094587 n

end

end A235706.P15360741310751044509

namespace A235706

/-- `C(3, A004202(n+1)%(n+1))*A094587(n)` -/
def P15360741310751044509.Spec : Prop :=
  ∀ n, P15360741310751044509.a n = A235706 n

end A235706

/-! ## A235706.P14318019614177679143

`A008279(A061579(n))*A122431(n)`
-/

namespace A235706.P14318019614177679143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A061579 n).toNat * A122431 n

end

end A235706.P14318019614177679143

namespace A235706

/-- `A008279(A061579(n))*A122431(n)` -/
def P14318019614177679143.Spec : Prop :=
  ∀ n, P14318019614177679143.a n = A235706 n

end A235706

/-! ## A235706.P6565250920365149984

`A034188(A099375(n))*A094587(n)`
-/

namespace A235706.P6565250920365149984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034188 (A099375 n).toNat * A094587 n

end

end A235706.P6565250920365149984

namespace A235706

/-- `A034188(A099375(n))*A094587(n)` -/
def P6565250920365149984.Spec : Prop :=
  ∀ n, P6565250920365149984.a n = A235706 n

end A235706

/-! ## A235706.P4784221632920003102

`C(3, A263254(A263256(n)))*A094587(n)`
-/

namespace A235706.P4784221632920003102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 (A263254 (A263256 n).toNat).toNat : ℤ) * A094587 n

end

end A235706.P4784221632920003102

namespace A235706

/-- `C(3, A263254(A263256(n)))*A094587(n)` -/
def P4784221632920003102.Spec : Prop :=
  ∀ n, P4784221632920003102.a n = A235706 n

end A235706

/-!
# A235707: a(n) = floor(n^2 * log(n)).

The programs for A235707, the canonical program `A235707.P2231086236960811436` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235707 has offset 1).

The definition of A235707 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)²*log(n+1))` (program `A235707.P2231086236960811436`, by `A235707.P2231086236960811436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A235707.P2231086236960811436

`floor((n+1)²*log(n+1))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A235707

/-- `floor((n+1)²*log(n+1))` -/
def P2231086236960811436.Spec : Prop :=
  ∀ n, P2231086236960811436.a n = A235707 (n + 1)

theorem P2231086236960811436.correct : P2231086236960811436.Spec := by
  intro n
  simp only [A235707, Nat.add_sub_cancel]

end A235707

/-! ## A235707.P7885700795196146999

`ceil((n+1)²*log(A028310(n)+1))-1`
-/

namespace A235707.P7885700795196146999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℝ) * Real.log (A028310 n + 1 : ℝ)⌉ - 1

end

end A235707.P7885700795196146999

namespace A235707

/-- `ceil((n+1)²*log(A028310(n)+1))-1` -/
def P7885700795196146999.Spec : Prop :=
  ∀ n, P7885700795196146999.a n = A235707 (n + 1)

end A235707

/-! ## A235707.P1272360292896811474

`floor((n+1)*(n+1)*log(n+1))%A204867(n+1)`
-/

namespace A235707.P1272360292896811474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) * ((n + 1 : ℝ) * Real.log (n + 1 : ℝ))⌋ (A204867 (n + 1))

end

end A235707.P1272360292896811474

namespace A235707

/-- `floor((n+1)*(n+1)*log(n+1))%A204867(n+1)` -/
def P1272360292896811474.Spec : Prop :=
  ∀ n, P1272360292896811474.a n = A235707 (n + 1)

end A235707

/-! ## A235707.P1106490338103676395

`A316681((n+1)²)`
-/

namespace A235707.P1106490338103676395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316681 ((n + 1) ^ 2)

end

end A235707.P1106490338103676395

namespace A235707

/-- `A316681((n+1)²)` -/
def P1106490338103676395.Spec : Prop :=
  ∀ n, P1106490338103676395.a n = A235707 (n + 1)

end A235707

/-! ## A235707.P723974232522745469

`record[A316681(abs(A051494(n)))]`
-/

namespace A235707.P723974232522745469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316681 |A051494 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235707.P723974232522745469

namespace A235707

/-- `record[A316681(abs(A051494(n)))]` -/
def P723974232522745469.Spec : Prop :=
  ∀ n, P723974232522745469.a n = A235707 (n + 1)

end A235707

/-! ## A235707.P6967778606026507365

`record[A316681(A117910(n)²)]`
-/

namespace A235707.P6967778606026507365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316681 (A117910 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235707.P6967778606026507365

namespace A235707

/-- `record[A316681(A117910(n)²)]` -/
def P6967778606026507365.Spec : Prop :=
  ∀ n, P6967778606026507365.a n = A235707 (n + 1)

end A235707

/-! ## A235707.P15102165504562036503

`record[A316681(A133310(n)²)]`
-/

namespace A235707.P15102165504562036503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316681 (A133310 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235707.P15102165504562036503

namespace A235707

/-- `record[A316681(A133310(n)²)]` -/
def P15102165504562036503.Spec : Prop :=
  ∀ n, P15102165504562036503.a n = A235707 (n + 1)

end A235707

/-! ## A235707.P10745707328226164916

`record[A316681(A134478(n)²)]`
-/

namespace A235707.P10745707328226164916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316681 (A134478 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235707.P10745707328226164916

namespace A235707

/-- `record[A316681(A134478(n)²)]` -/
def P10745707328226164916.Spec : Prop :=
  ∀ n, P10745707328226164916.a n = A235707 (n + 1)

end A235707

/-! ## A235707.P15387394972633213106

`record[A316681(A291769(n)²)]`
-/

namespace A235707.P15387394972633213106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316681 (A291769 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235707.P15387394972633213106

namespace A235707

/-- `record[A316681(A291769(n)²)]` -/
def P15387394972633213106.Spec : Prop :=
  ∀ n, P15387394972633213106.a n = A235707 (n + 1)

end A235707

/-! ## A235707.P11808819858532026701

`record[A316681(A000463(n+1))]`
-/

namespace A235707.P11808819858532026701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316681 (A000463 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235707.P11808819858532026701

namespace A235707

/-- `record[A316681(A000463(n+1))]` -/
def P11808819858532026701.Spec : Prop :=
  ∀ n, P11808819858532026701.a n = A235707 (n + 1)

end A235707

/-! ## A235707.P3195937697004444478

`record[A316681(A236104(n+1))]`
-/

namespace A235707.P3195937697004444478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316681 (A236104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235707.P3195937697004444478

namespace A235707

/-- `record[A316681(A236104(n+1))]` -/
def P3195937697004444478.Spec : Prop :=
  ∀ n, P3195937697004444478.a n = A235707 (n + 1)

end A235707

/-!
# A235708: Largest base in which n is pandigital.

The programs for A235708, there is no canonical definition to state claims against.
-/

/-! ## A235708.P2222601667354781786

`A327936(A037914(n+1)^A001223(n+1))`
-/

namespace A235708.P2222601667354781786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327936 (SequenceMachineLib.roundAway ((A037914 (n + 1) : ℚ) ^ (A001223 (n + 1) : ℤ))).toNat

end

end A235708.P2222601667354781786

/-! ## A235708.P5936548846951523215

`A001221(A022367(n)-A184753(n+1))`
-/

namespace A235708.P5936548846951523215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A022367 n - A184753 (n + 1)).toNat

end

end A235708.P5936548846951523215

/-! ## A235708.P9550406176679491418

`gcd(A037914(n+1), A072473(A104182(n+1)))`
-/

namespace A235708.P9550406176679491418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037914 (n + 1)) (A072473 (A104182 (n + 1)).toNat)

end

end A235708.P9550406176679491418

/-! ## A235708.P2583999407934750281

`A064372(or(A064380(n+2), A216166(n+1)))`
-/

namespace A235708.P2583999407934750281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064372 (Int.lor (A064380 (n + 2)) (A216166 (n + 1))).toNat

end

end A235708.P2583999407934750281

/-! ## A235708.P17436326117639092191

`A026490(A046704(n+1)+A030179(n))`
-/

namespace A235708.P17436326117639092191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026490 (A046704 (n + 1) + A030179 n).toNat

end

end A235708.P17436326117639092191

/-!
# A235711: Arithmetic derivative of quarter squares.

The programs for A235711, the canonical program `A235711.P5553264463072486028` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235711 has offset 0).

The definition of A235711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235711.P5553264463072486028

`A003415(A002620(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A235711

/-- `A003415(A002620(n))` -/
def P5553264463072486028.Spec : Prop :=
  ∀ n, P5553264463072486028.a n = A235711 n

theorem P5553264463072486028.correct : P5553264463072486028.Spec := by
  intro n
  simp only [A235711]

end A235711

/-! ## A235711.P9194510154476492131

`∑{d}[floor((n/2)²), A300251(#)]`
-/

namespace A235711.P9194510154476492131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A235711.P9194510154476492131

namespace A235711

/-- `∑{d}[floor((n/2)²), A300251(#)]` -/
def P9194510154476492131.Spec : Prop :=
  ∀ n, P9194510154476492131.a n = A235711 n

end A235711

/-! ## A235711.P4169283456708121727

`∑{d}[A002620(n), A300251(#)%A078334(n+1)]`
-/

namespace A235711.P4169283456708121727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A300251 d) (A078334 (n + 1))

end

end A235711.P4169283456708121727

namespace A235711

/-- `∑{d}[A002620(n), A300251(#)%A078334(n+1)]` -/
def P4169283456708121727.Spec : Prop :=
  ∀ n, P4169283456708121727.a n = A235711 n

end A235711

/-! ## A235711.P362702117543604914

`A003415(floor((n/2)²))`
-/

namespace A235711.P362702117543604914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

end

end A235711.P362702117543604914

namespace A235711

/-- `A003415(floor((n/2)²))` -/
def P362702117543604914.Spec : Prop :=
  ∀ n, P362702117543604914.a n = A235711 n

theorem P362702117543604914.correct : P362702117543604914.Spec := by
  intro n
  simp only [A235711, Nat.add_sub_cancel, A235711.P362702117543604914.a, A235711.P5553264463072486028.a, A002620, A002620.P9002536657626793813.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235711

/-! ## A235711.P11112680792266498776

`A236412(A151522(n+1))`
-/

namespace A235711.P11112680792266498776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236412 (A151522 (n + 1)).toNat

end

end A235711.P11112680792266498776

namespace A235711

/-- `A236412(A151522(n+1))` -/
def P11112680792266498776.Spec : Prop :=
  ∀ n, P11112680792266498776.a n = A235711 n

end A235711

/-!
# A235715: a(n) = number of times (n-1) occurs in the fundamental period of Fibonacci numbers modulo n.

The programs for A235715, there is no canonical definition to state claims against.
-/

/-! ## A235715.P3849297806492857222

`A128924(∑[1+n])`
-/

namespace A235715.P3849297806492857222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128924 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A235715.P3849297806492857222

/-!
# A235716: Average of twin prime pairs n having their decimal expansion of the form abcabc or abcabc0 such that n contains three twin primes as divisors.

The programs for A235716, there is no canonical definition to state claims against.
-/

/-! ## A235716.P11292810319812207913

`1+A060232(n+1)`
-/

namespace A235716.P11292810319812207913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A060232 (n + 1)

end

end A235716.P11292810319812207913

/-! ## A235716.P7930716129270586756

`∑{d}[A060232(A005555(n)), #]`
-/

namespace A235716.P7930716129270586756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060232 (A005555 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A235716.P7930716129270586756

/-! ## A235716.P14123689209241222441

`∑{d}[A060232(A008728(n)), #]`
-/

namespace A235716.P14123689209241222441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060232 (A008728 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A235716.P14123689209241222441

/-! ## A235716.P10779024401835308109

`∑{d}[A060232(A089898(n)), #]`
-/

namespace A235716.P10779024401835308109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060232 (A089898 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A235716.P10779024401835308109

/-! ## A235716.P4227875098821903933

`∩[A248038(n+1), A384530(n+1)]`
-/

namespace A235716.P4227875098821903933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235716.P4227875098821903933

/-!
# A235717: Squares which have one or more occurrences of exactly two different digits.

The programs for A235717, there is no canonical definition to state claims against.
-/

/-! ## A235717.P4951940679746865078

`A016069(n+1)²`
-/

namespace A235717.P4951940679746865078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016069 (n + 1) ^ 2

end

end A235717.P4951940679746865078

/-! ## A235717.P9487005230591787593

`A018885(5+n)`
-/

namespace A235717.P9487005230591787593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018885 (5 + n)

end

end A235717.P9487005230591787593

/-! ## A235717.P8179686968155581107

`record[A016069(A263017(n))²]`
-/

namespace A235717.P8179686968155581107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016069 (A263017 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235717.P8179686968155581107

/-! ## A235717.P12619402908092829685

`record[A016069(A365393(n))²]`
-/

namespace A235717.P12619402908092829685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016069 (A365393 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235717.P12619402908092829685

/-! ## A235717.P5179501667431843905

`A016069(A000027(n+1))^2`
-/

namespace A235717.P5179501667431843905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016069 (A000027 (n + 1)).toNat ^ 2

end

end A235717.P5179501667431843905

/-!
# A235718: Squares which have one or more occurrences of exactly three different digits.

The programs for A235718, there is no canonical definition to state claims against.
-/

/-! ## A235718.P17285672878072463186

`A054031(n+1)²`
-/

namespace A235718.P17285672878072463186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054031 (n + 1) ^ 2

end

end A235718.P17285672878072463186

/-! ## A235718.P4449935442364911703

`(A054031(n+1)%A054031(n+2))^2`
-/

namespace A235718.P4449935442364911703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054031 (n + 1)) (A054031 (n + 2)) ^ 2

end

end A235718.P4449935442364911703

/-! ## A235718.P9963665067264119779

`A054031(1+n)*A054031(A000027(n+1))`
-/

namespace A235718.P9963665067264119779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054031 (1 + n) * A054031 (A000027 (n + 1)).toNat

end

end A235718.P9963665067264119779

/-! ## A235718.P8835589606009382329

`A054031(n+1)*A054031((n+1)%A054031(n+1))`
-/

namespace A235718.P8835589606009382329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054031 (n + 1) * A054031 (Int.tmod (n + 1 : ℤ) (A054031 (n + 1))).toNat

end

end A235718.P8835589606009382329

/-! ## A235718.P8459730176479044163

`A054031(n+1)*A054031((n+1)%A272567(n))`
-/

namespace A235718.P8459730176479044163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054031 (n + 1) * A054031 (Int.tmod (n + 1 : ℤ) (A272567 n)).toNat

end

end A235718.P8459730176479044163

/-! ## A235718.P16774836425728486223

`eq[3, A309432(n)]²`
-/

namespace A235718.P16774836425728486223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A235718.P16774836425728486223

/-! ## A235718.P11154899296176596573

`A000290(A054031(1+n))`
-/

namespace A235718.P11154899296176596573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A054031 (1 + n)).toNat

end

end A235718.P11154899296176596573

/-! ## A235718.P18286902412796342632

`∩[n², A031962(n+1)]`
-/

namespace A235718.P18286902412796342632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235718.P18286902412796342632

/-!
# A235719: Squares which have one or more occurrences of exactly four different digits.

The programs for A235719, there is no canonical definition to state claims against.
-/

/-! ## A235719.P9997247551827376289

`A054032(n+1)²`
-/

namespace A235719.P9997247551827376289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054032 (n + 1) ^ 2

end

end A235719.P9997247551827376289

/-! ## A235719.P13034604622509926161

`A054032(A000027(1+n))^2`
-/

namespace A235719.P13034604622509926161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054032 (A000027 (1 + n)).toNat ^ 2

end

end A235719.P13034604622509926161

/-! ## A235719.P12194912584100447214

`A054032(A000027(n+1))*A054032(n+1)`
-/

namespace A235719.P12194912584100447214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054032 (A000027 (n + 1)).toNat * A054032 (n + 1)

end

end A235719.P12194912584100447214

/-! ## A235719.P134789896264511428

`A054032(n+1)%A054032(n+2)*A054032(n+1)`
-/

namespace A235719.P134789896264511428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054032 (n + 1)) (A054032 (n + 2)) * A054032 (n + 1)

end

end A235719.P134789896264511428

/-! ## A235719.P10734765804645174087

`A054032(A008619(2*n))*A054032(n+1)`
-/

namespace A235719.P10734765804645174087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054032 (A008619 (2 * n)).toNat * A054032 (n + 1)

end

end A235719.P10734765804645174087

/-! ## A235719.P16611065356289486627

`eq[4, A309432(n)]²`
-/

namespace A235719.P16611065356289486627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A235719.P16611065356289486627

/-! ## A235719.P4911352594011969422

`A000290(eq[2, A309432(n)-2])`
-/

namespace A235719.P4911352594011969422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309432 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235719.P4911352594011969422

/-! ## A235719.P13654533236176640987

`A002620(2*A054032(n+1))`
-/

namespace A235719.P13654533236176640987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A054032 (n + 1)).toNat

end

end A235719.P13654533236176640987

/-! ## A235719.P16317373446424962175

`A000290(2*A054032(n+1))/4`
-/

namespace A235719.P16317373446424962175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (2 * A054032 (n + 1)).toNat : ℚ) / 4

end

end A235719.P16317373446424962175

/-!
# A235720: Squares which have one or more occurrences of exactly five different digits.

The programs for A235720, there is no canonical definition to state claims against.
-/

/-! ## A235720.P3448302917082843466

`A054033(n+1)²`
-/

namespace A235720.P3448302917082843466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054033 (n + 1) ^ 2

end

end A235720.P3448302917082843466

/-! ## A235720.P1273590036135142129

`A054033(1+n)^2`
-/

namespace A235720.P1273590036135142129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054033 (1 + n) ^ 2

end

end A235720.P1273590036135142129

/-! ## A235720.P807762483004667050

`A054033(A000027(n+1))*A054033(n+1)`
-/

namespace A235720.P807762483004667050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054033 (A000027 (n + 1)).toNat * A054033 (n + 1)

end

end A235720.P807762483004667050

/-! ## A235720.P14994325313369742832

`A054033(n+1)*A054033((n+1)%A054031(n+1))`
-/

namespace A235720.P14994325313369742832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054033 (n + 1) * A054033 (Int.tmod (n + 1 : ℤ) (A054031 (n + 1))).toNat

end

end A235720.P14994325313369742832

/-! ## A235720.P6982424301881750617

`A002620(2*A054033(n+1))`
-/

namespace A235720.P6982424301881750617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A054033 (n + 1)).toNat

end

end A235720.P6982424301881750617

/-!
# A235721: Squares which have one or more occurrences of exactly six different digits.

The programs for A235721, there is no canonical definition to state claims against.
-/

/-! ## A235721.P13752170459249880243

`A054034(n+1)²`
-/

namespace A235721.P13752170459249880243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054034 (n + 1) ^ 2

end

end A235721.P13752170459249880243

/-! ## A235721.P5498973063035319764

`A054034(1+n)^2`
-/

namespace A235721.P5498973063035319764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054034 (1 + n) ^ 2

end

end A235721.P5498973063035319764

/-! ## A235721.P9886511734438597143

`A054034(A000027(n+1))*A054034(n+1)`
-/

namespace A235721.P9886511734438597143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054034 (A000027 (n + 1)).toNat * A054034 (n + 1)

end

end A235721.P9886511734438597143

/-! ## A235721.P13934311200531513506

`A054034(n+1)*A054034((n+1)%A054031(n+1))`
-/

namespace A235721.P13934311200531513506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054034 (n + 1) * A054034 (Int.tmod (n + 1 : ℤ) (A054031 (n + 1))).toNat

end

end A235721.P13934311200531513506

/-! ## A235721.P3857899870182057852

`A054034(n+1)%A054035(n+1)*A054034(n+1)`
-/

namespace A235721.P3857899870182057852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054034 (n + 1)) (A054035 (n + 1)) * A054034 (n + 1)

end

end A235721.P3857899870182057852

/-! ## A235721.P14489082389994836371

`A000290(A054034(gcd(n+1, n+1)))`
-/

namespace A235721.P14489082389994836371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A054034 (Nat.gcd (n + 1) (n + 1))).toNat

end

end A235721.P14489082389994836371

/-! ## A235721.P14823067365356511496

`A002620(2*A054034(n+1))`
-/

namespace A235721.P14823067365356511496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A054034 (n + 1)).toNat

end

end A235721.P14823067365356511496

/-! ## A235721.P14402695468762358190

`A008794(A054034(n+1)+A054034(n+1))`
-/

namespace A235721.P14402695468762358190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A054034 (n + 1) + A054034 (n + 1)).toNat

end

end A235721.P14402695468762358190

/-!
# A235722: Squares which have one or more occurrences of exactly seven different digits.

The programs for A235722, there is no canonical definition to state claims against.
-/

/-! ## A235722.P13702366943312498696

`A054035(n+1)²`
-/

namespace A235722.P13702366943312498696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054035 (n + 1) ^ 2

end

end A235722.P13702366943312498696

/-! ## A235722.P6651474038753018306

`A054035(A000027(1+n))^2`
-/

namespace A235722.P6651474038753018306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054035 (A000027 (1 + n)).toNat ^ 2

end

end A235722.P6651474038753018306

/-! ## A235722.P5836932624885096231

`(A054035(n+1)/A033999(n))^2`
-/

namespace A235722.P5836932624885096231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A054035 (n + 1) : ℚ) / (A033999 n : ℚ)) ^ 2

end

end A235722.P5836932624885096231

/-! ## A235722.P14932968388217475186

`A054035(A000027(n+1))*A054035(n+1)`
-/

namespace A235722.P14932968388217475186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054035 (A000027 (n + 1)).toNat * A054035 (n + 1)

end

end A235722.P14932968388217475186

/-! ## A235722.P1175765802286825107

`A054035(n+1)*A054035((n+1)%A268346(n))`
-/

namespace A235722.P1175765802286825107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054035 (n + 1) * A054035 (Int.tmod (n + 1 : ℤ) (A268346 n)).toNat

end

end A235722.P1175765802286825107

/-! ## A235722.P3234384560232666854

`A054035(n+1)%A054038(n+1)*A054035(n+1)`
-/

namespace A235722.P3234384560232666854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054035 (n + 1)) (A054038 (n + 1)) * A054035 (n + 1)

end

end A235722.P3234384560232666854

/-! ## A235722.P13352734492808426839

`record[A054035(A152271(n))²]`
-/

namespace A235722.P13352734492808426839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054035 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235722.P13352734492808426839

/-! ## A235722.P15643283817340295465

`A054035(A001057(2*n+1))*A054035(n+1)`
-/

namespace A235722.P15643283817340295465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054035 (A001057 (2 * n + 1)).toNat * A054035 (n + 1)

end

end A235722.P15643283817340295465

/-! ## A235722.P27429656313481538

`A000290(A054035(2*(n+1)-(n+1)))`
-/

namespace A235722.P27429656313481538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A054035 (2 * (n + 1) - (n + 1))).toNat

end

end A235722.P27429656313481538

/-! ## A235722.P2566250614477633024

`A002620(2*A054035(n+1))`
-/

namespace A235722.P2566250614477633024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A054035 (n + 1)).toNat

end

end A235722.P2566250614477633024

/-!
# A235723: Squares which have one or more occurrences of exactly eight different digits.

The programs for A235723, there is no canonical definition to state claims against.
-/

/-! ## A235723.P8794521591460101063

`A054036(n+1)²`
-/

namespace A235723.P8794521591460101063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054036 (n + 1) ^ 2

end

end A235723.P8794521591460101063

/-! ## A235723.P3200124616975816615

`A054036(A000027(n+1))*A054036(n+1)`
-/

namespace A235723.P3200124616975816615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054036 (A000027 (n + 1)).toNat * A054036 (n + 1)

end

end A235723.P3200124616975816615

/-! ## A235723.P16799949673948254259

`A054036(n+1)*A054036((n+1)%A054031(n+1))`
-/

namespace A235723.P16799949673948254259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054036 (n + 1) * A054036 (Int.tmod (n + 1 : ℤ) (A054031 (n + 1))).toNat

end

end A235723.P16799949673948254259

/-! ## A235723.P16442169110000758481

`A054036(n+1)%A054038(n+1)*A054036(n+1)`
-/

namespace A235723.P16442169110000758481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054036 (n + 1)) (A054038 (n + 1)) * A054036 (n + 1)

end

end A235723.P16442169110000758481

/-! ## A235723.P4757744658094607946

`A054036(lcm(n+1, A020639(n+1)))*A054036(n+1)`
-/

namespace A235723.P4757744658094607946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054036 (Int.lcm (n + 1 : ℤ) (A020639 (n + 1))) * A054036 (n + 1)

end

end A235723.P4757744658094607946

/-! ## A235723.P10422701317557827236

`A054036(n+1)*A054036(A004526(2*n+3))`
-/

namespace A235723.P10422701317557827236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054036 (n + 1) * A054036 (A004526 (2 * n + 3)).toNat

end

end A235723.P10422701317557827236

/-!
# A235724: Squares which have one or more occurrences of exactly nine different digits.

The programs for A235724, there is no canonical definition to state claims against.
-/

/-! ## A235724.P810392098355196106

`A054037(n+1)²`
-/

namespace A235724.P810392098355196106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054037 (n + 1) ^ 2

end

end A235724.P810392098355196106

/-! ## A235724.P13121674760173313077

`A054037(A000027(n+1))^2`
-/

namespace A235724.P13121674760173313077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054037 (A000027 (n + 1)).toNat ^ 2

end

end A235724.P13121674760173313077

/-! ## A235724.P3035619355459242154

`A054037(A000027(n+1))*A054037(n+1)`
-/

namespace A235724.P3035619355459242154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054037 (A000027 (n + 1)).toNat * A054037 (n + 1)

end

end A235724.P3035619355459242154

/-!
# A235726: Lexicographically earliest sequence of positive integers such that a(nm) != a(n + m) for all positive integers n and m such that nm != n + m.

The programs for A235726, there is no canonical definition to state claims against.
-/

/-! ## A235726.P2541467444806367626

`A285325(A285324(n+1))`
-/

namespace A235726.P2541467444806367626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285325 (A285324 (n + 1)).toNat

end

end A235726.P2541467444806367626

/-! ## A235726.P10331380857282082512

`A051162(A285324(n+1))`
-/

namespace A235726.P10331380857282082512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A285324 (n + 1)).toNat

end

end A235726.P10331380857282082512

/-! ## A235726.P7896759167322563846

`A001221(A299053(A193267(n+1)))`
-/

namespace A235726.P7896759167322563846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A299053 (A193267 (n + 1)).toNat).toNat

end

end A235726.P7896759167322563846

/-! ## A235726.P4515206599567866130

`A363228(A080770(n+1))`
-/

namespace A235726.P4515206599567866130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363228 (A080770 (n + 1)).toNat

end

end A235726.P4515206599567866130

/-! ## A235726.P405419510650317519

`A265331(A265075(n+1))`
-/

namespace A235726.P405419510650317519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265331 (A265075 (n + 1)).toNat

end

end A235726.P405419510650317519

/-!
# A235729: Number of (n+1) X (n+1) 0..1 arrays with the sum of each 2 X 2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235729, there is no canonical definition to state claims against.
-/

/-! ## A235729.P5092173291825077605

`A235736(∑[4*n]+1)`
-/

namespace A235729.P5092173291825077605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235729.P5092173291825077605

/-!
# A235730: Number of (n+1)X(2+1) 0..1 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235730, there is no canonical definition to state claims against.
-/

/-! ## A235730.P17452319048597180055

`A235736(∑[n+1]+2)`
-/

namespace A235730.P17452319048597180055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235730.P17452319048597180055

/-! ## A235730.P6397696187079289066

`record[gcd(A002262(n), A235736(n+2))]`
-/

namespace A235730.P6397696187079289066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235736 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235730.P6397696187079289066

/-! ## A235730.P5128386715757664637

`record[A235736(Δ[A003453(n+5)])]`
-/

namespace A235730.P5128386715757664637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235730.P5128386715757664637

/-! ## A235730.P7363200177525378423

`record[A235736(A133263(val(n+1, 2)+1))]`
-/

namespace A235730.P7363200177525378423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235730.P7363200177525378423

/-!
# A235731: Number of (n+1)X(3+1) 0..1 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235731, there is no canonical definition to state claims against.
-/

/-! ## A235731.P833817005039196110

`A235736(∑[n+2]+4)`
-/

namespace A235731.P833817005039196110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235731.P833817005039196110

/-!
# A235732: Number of (n+1)X(4+1) 0..1 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235732, there is no canonical definition to state claims against.
-/

/-! ## A235732.P6622544631430088405

`A235736(A374004(n+1))`
-/

namespace A235732.P6622544631430088405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (A374004 (n + 1)).toNat

end

end A235732.P6622544631430088405

/-! ## A235732.P696285704638508769

`A235736(A141214(n+1))`
-/

namespace A235732.P696285704638508769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (A141214 (n + 1)).toNat

end

end A235732.P696285704638508769

/-!
# A235733: Number of (n+1)X(5+1) 0..1 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235733, there is no canonical definition to state claims against.
-/

/-! ## A235733.P13468776566891895686

`A235736(A374005(n+1))`
-/

namespace A235733.P13468776566891895686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (A374005 (n + 1)).toNat

end

end A235733.P13468776566891895686

/-!
# A235734: Number of (n+1)X(6+1) 0..1 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235734, there is no canonical definition to state claims against.
-/

/-! ## A235734.P5873965838982054959

`A235736(A374007(n+1))`
-/

namespace A235734.P5873965838982054959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (A374007 (n + 1)).toNat

end

end A235734.P5873965838982054959

/-!
# A235735: Number of (n+1)X(7+1) 0..1 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235735, there is no canonical definition to state claims against.
-/

/-! ## A235735.P9772024481483965759

`A235736(A374008(n+1))`
-/

namespace A235735.P9772024481483965759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (A374008 (n + 1)).toNat

end

end A235735.P9772024481483965759

/-!
# A235736: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235736, there is no canonical definition to state claims against.
-/

/-! ## A235736.P8151475385937078759

`A246950(A076044(n))+A235517(n+1)`
-/

namespace A235736.P8151475385937078759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246950 (A076044 n).toNat + A235517 (n + 1)

end

end A235736.P8151475385937078759

/-! ## A235736.P1923212240033205093

`A235517(n+1)+A168058(A178473(n))`
-/

namespace A235736.P1923212240033205093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (n + 1) + A168058 (A178473 n).toNat

end

end A235736.P1923212240033205093

/-! ## A235736.P9470306714749230791

`A341027(A055417(n))+A235679(n+1)`
-/

namespace A235736.P9470306714749230791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341027 ((A055417 n).toNat + 220) + A235679 (n + 1)

end

end A235736.P9470306714749230791

/-!
# A235737: Number of (n+1)X(1+1) 0..2 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235737, there is no canonical definition to state claims against.
-/

/-! ## A235737.P9416888159772377560

`A235742(∑[n]+1)`
-/

namespace A235737.P9416888159772377560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235742 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235737.P9416888159772377560

/-! ## A235737.P12009696115227214837

`record[A010054(n)*A235742(n+1)]`
-/

namespace A235737.P12009696115227214837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235737.P12009696115227214837

/-! ## A235737.P13534805385531367385

`record[A235742(n+1)/A156690(n)]`
-/

namespace A235737.P13534805385531367385
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235742 (n + 1) : ℚ) / (A156690 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235737.P13534805385531367385

/-! ## A235737.P18152845669869679019

`record[A235742(n+1)/A156691(n)]`
-/

namespace A235737.P18152845669869679019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235742 (n + 1) : ℚ) / (A156691 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235737.P18152845669869679019

/-! ## A235737.P10836442194956071337

`record[A235742(n+1)/A156692(n)]`
-/

namespace A235737.P10836442194956071337
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235742 (n + 1) : ℚ) / (A156692 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235737.P10836442194956071337

/-!
# A235738: Number of (n+1)X(2+1) 0..2 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235738, there is no canonical definition to state claims against.
-/

/-! ## A235738.P13975278252249036415

`A235742(∑[n+1]+2)`
-/

namespace A235738.P13975278252249036415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235742 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235738.P13975278252249036415

/-! ## A235738.P14870945920176494139

`record[A010054(n)*A235742(n+2)]`
-/

namespace A235738.P14870945920176494139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235742 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235738.P14870945920176494139

/-! ## A235738.P6274139663474782462

`record[A235742(A075301(n+2))]`
-/

namespace A235738.P6274139663474782462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235742 (A075301 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235738.P6274139663474782462

/-! ## A235738.P18026348683102430947

`record[A235742(n+2)/A156692(n+2)]`
-/

namespace A235738.P18026348683102430947
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235742 (n + 2) : ℚ) / (A156692 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235738.P18026348683102430947

/-!
# A235739: Number of (n+1)X(3+1) 0..2 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235739, there is no canonical definition to state claims against.
-/

/-! ## A235739.P17246543994356248679

`A235742(∑[n+2]+4)`
-/

namespace A235739.P17246543994356248679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235742 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235739.P17246543994356248679

/-!
# A235740: Number of (n+1)X(4+1) 0..2 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235740, there is no canonical definition to state claims against.
-/

/-! ## A235740.P4102219171615542991

`A235742(A141214(n)+7)`
-/

namespace A235740.P4102219171615542991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235742 (A141214 n + 7).toNat

end

end A235740.P4102219171615542991

/-!
# A235741: Number of (n+1)X(5+1) 0..2 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235741, there is no canonical definition to state claims against.
-/

/-! ## A235741.P14091743645434180827

`A235742(eq[6, A131818(n+1)])`
-/

namespace A235741.P14091743645434180827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235741.P14091743645434180827

/-! ## A235741.P6910020579954718291

`A235742(A374005(n+1))`
-/

namespace A235741.P6910020579954718291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235742 (A374005 (n + 1)).toNat

end

end A235741.P6910020579954718291

/-!
# A235743: Primes p(k) such that p(k) + p(k+3) = p(k+1) + p(k+2) + 4.

The programs for A235743, the canonical program `A235743.P3971823922931559072` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235743 has offset 1).

The definition of A235743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235743.P7054282293212086039

`A045319(eq[4, A261470(n+1)])`
-/

namespace A235743.P7054282293212086039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235743.P7054282293212086039

namespace A235743

/-- `A045319(eq[4, A261470(n+1)])` -/
def P7054282293212086039.Spec : Prop :=
  ∀ n, P7054282293212086039.a n = A235743 (n + 1)

end A235743

/-! ## A235743.P9712920130161928758

`A065091(eq[4, A261470(n+1)])`
-/

namespace A235743.P9712920130161928758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235743.P9712920130161928758

namespace A235743

/-- `A065091(eq[4, A261470(n+1)])` -/
def P9712920130161928758.Spec : Prop :=
  ∀ n, P9712920130161928758.a n = A235743 (n + 1)

end A235743

/-! ## A235743.P3971823922931559072

`A000040(eq[A031131(n+1)+4, A031131(n+2)]+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A235743

/-- `A000040(eq[A031131(n+1)+4, A031131(n+2)]+1)` -/
def P3971823922931559072.Spec : Prop :=
  ∀ n, P3971823922931559072.a n = A235743 (n + 1)

theorem P3971823922931559072.correct : P3971823922931559072.Spec := by
  intro n
  simp only [A235743, Nat.add_sub_cancel]

end A235743

/-! ## A235743.P7586208263922603509

`p?[(A261470(n+1)-3)*A000040(n+1)]`
-/

namespace A235743.P7586208263922603509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A261470 (n + 1) - 3) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235743.P7586208263922603509

namespace A235743

/-- `p?[(A261470(n+1)-3)*A000040(n+1)]` -/
def P7586208263922603509.Spec : Prop :=
  ∀ n, P7586208263922603509.a n = A235743 (n + 1)

end A235743

/-! ## A235743.P5289963398236671633

`p?[(A261470(n+1)-3)*A219606(2*(n+1))]`
-/

namespace A235743.P5289963398236671633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A261470 (n + 1) - 3) * A219606 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235743.P5289963398236671633

namespace A235743

/-- `p?[(A261470(n+1)-3)*A219606(2*(n+1))]` -/
def P5289963398236671633.Spec : Prop :=
  ∀ n, P5289963398236671633.a n = A235743 (n + 1)

end A235743

/-!
# A235744: Number of (n+1)X(2+1) 0..3 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235744, there is no canonical definition to state claims against.
-/

/-! ## A235744.P4732777756865986504

`A235747(∑[n+1]+2)`
-/

namespace A235744.P4732777756865986504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235747 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235744.P4732777756865986504

/-! ## A235744.P8945996699921419728

`record[gcd(A002262(n), A235747(n+2))]`
-/

namespace A235744.P8945996699921419728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235747 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235744.P8945996699921419728

/-!
# A235745: Number of (n+1)X(3+1) 0..3 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235745, there is no canonical definition to state claims against.
-/

/-! ## A235745.P6558737696842061928

`A235747(A167614(n+1))`
-/

namespace A235745.P6558737696842061928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235747 (A167614 (n + 1)).toNat

end

end A235745.P6558737696842061928

/-! ## A235745.P10192069799067339476

`A235747(∑[n+3]+1)`
-/

namespace A235745.P10192069799067339476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235747 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235745.P10192069799067339476

/-!
# A235746: Number of (n+1)X(4+1) 0..3 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235746, there is no canonical definition to state claims against.
-/

/-! ## A235746.P12320936757351435912

`A235747(A052905(n)+9)`
-/

namespace A235746.P12320936757351435912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235747 (A052905 n + 9).toNat

end

end A235746.P12320936757351435912

/-! ## A235746.P16929659073730162152

`A235747(A020752(n+1))`
-/

namespace A235746.P16929659073730162152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235747 (A020752 (n + 1)).toNat

end

end A235746.P16929659073730162152

/-!
# A235748: Ruler function associated with the set of permutations generated by cyclic shift, array read by rows.

The programs for A235748, there is no canonical definition to state claims against.
-/

/-! ## A235748.P7170801143982923454

`gcd(A055874(n+1), A089940(A026201(n+1)))`
-/

namespace A235748.P7170801143982923454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055874 (n + 1)) (A089940 (A026201 (n + 1)).toNat)

end

end A235748.P7170801143982923454

/-! ## A235748.P3180632073780590385

`gcd(A055881(n+1), A282408(A008640(n)))`
-/

namespace A235748.P3180632073780590385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055881 (n + 1)) (A282408 (A008640 n).toNat)

end

end A235748.P3180632073780590385

/-! ## A235748.P2143794926052696592

`gcd(A138845(A001055(n+1)), A232098(n+1))`
-/

namespace A235748.P2143794926052696592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138845 (A001055 (n + 1)).toNat) (A232098 (n + 1))

end

end A235748.P2143794926052696592

/-! ## A235748.P11047910265459934237

`gcd(A002379(A183063(n+1)), A258206(n+1))`
-/

namespace A235748.P11047910265459934237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002379 (A183063 (n + 1)).toNat) (A258206 (n + 1))

end

end A235748.P11047910265459934237

/-! ## A235748.P10593110372570983650

`gcd(∑{e}[n+1, #], A103465(A078898(n+3)))`
-/

namespace A235748.P10593110372570983650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A103465 (A078898 (n + 3)).toNat)

end

end A235748.P10593110372570983650

/-!
# A235749: Number of (n+1)X(1+1) 0..3 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235749, there is no canonical definition to state claims against.
-/

/-! ## A235749.P11199016654471480970

`A235752(∑[n]+1)`
-/

namespace A235749.P11199016654471480970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235752 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235749.P11199016654471480970

/-! ## A235749.P10491192586688121078

`A235815(∑[n]+1)`
-/

namespace A235749.P10491192586688121078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235815 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235749.P10491192586688121078

/-! ## A235749.P14941516013206334726

`∑{digits}[n, A235815(A000124(#))]`
-/

namespace A235749.P14941516013206334726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A235815 (A000124 x).toNat).sum

end

end A235749.P14941516013206334726

/-! ## A235749.P2554961605948201767

`record[A235752(A246276(n+1))]`
-/

namespace A235749.P2554961605948201767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235752 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235749.P2554961605948201767

/-!
# A235750: Number of (n+1)X(2+1) 0..3 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235750, there is no canonical definition to state claims against.
-/

/-! ## A235750.P6374098060892906275

`A235752(∑[n+1]+2)`
-/

namespace A235750.P6374098060892906275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235752 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235750.P6374098060892906275

/-! ## A235750.P7789037542231727859

`record[A010054(n)*A235752(n+2)]`
-/

namespace A235750.P7789037542231727859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235752 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235750.P7789037542231727859

/-! ## A235750.P6512941714575151411

`record[gcd(A002262(n), A235752(n+2))]`
-/

namespace A235750.P6512941714575151411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235752 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235750.P6512941714575151411

/-! ## A235750.P4202952405876349822

`record[A154990(n+1)*A235752(n+3)]`
-/

namespace A235750.P4202952405876349822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) * A235752 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235750.P4202952405876349822

/-!
# A235751: Number of (n+1)X(3+1) 0..3 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235751, there is no canonical definition to state claims against.
-/

/-! ## A235751.P4102773039831774415

`A235752(∑[n+2]+4)`
-/

namespace A235751.P4102773039831774415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235752 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235751.P4102773039831774415

/-! ## A235751.P9663982208924421133

`record[A154990(n+1)*A235752(n+4)]`
-/

namespace A235751.P9663982208924421133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) * A235752 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235751.P9663982208924421133

/-!
# A235753: Number of (n+1)X(2+1) 0..2 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235753, there is no canonical definition to state claims against.
-/

/-! ## A235753.P15133094746846141438

`A235756(∑[n+1]+2)`
-/

namespace A235753.P15133094746846141438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235756 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235753.P15133094746846141438

/-! ## A235753.P5101065996164641461

`record[A010054(n)*A235756(n+2)]`
-/

namespace A235753.P5101065996164641461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235756 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235753.P5101065996164641461

/-! ## A235753.P11440650927390645765

`record[A235756(A286234(n+1)+A010054(n+1))]`
-/

namespace A235753.P11440650927390645765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235756 (A286234 (n + 1) + A010054 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235753.P11440650927390645765

/-! ## A235753.P14399862477029751876

`record[gcd(A235756(n+3), A354615(n+1))]`
-/

namespace A235753.P14399862477029751876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A235756 (n + 3)) (A354615 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235753.P14399862477029751876

/-!
# A235754: Number of (n+1)X(3+1) 0..2 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235754, there is no canonical definition to state claims against.
-/

/-! ## A235754.P17611527338348689230

`A235756(∑[n+2]+4)`
-/

namespace A235754.P17611527338348689230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235756 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235754.P17611527338348689230

/-! ## A235754.P3063532399563634880

`record[A154990(n+1)*A235756(n+4)]`
-/

namespace A235754.P3063532399563634880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) * A235756 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235754.P3063532399563634880

/-!
# A235755: Number of (n+1)X(4+1) 0..2 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235755, there is no canonical definition to state claims against.
-/

/-! ## A235755.P18152361701120098022

`A235756(A374004(n+1))`
-/

namespace A235755.P18152361701120098022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235756 (A374004 (n + 1)).toNat

end

end A235755.P18152361701120098022

/-! ## A235755.P5378378550157852571

`A235756(A141214(n+1))`
-/

namespace A235755.P5378378550157852571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235756 (A141214 (n + 1)).toNat

end

end A235755.P5378378550157852571

/-!
# A235756: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235756, there is no canonical definition to state claims against.
-/

/-! ## A235756.P8461506401241957385

`A235531(n+1)-A304263(A206296(n))`
-/

namespace A235756.P8461506401241957385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235531 (n + 1) - A304263 (A206296 n).toNat

end

end A235756.P8461506401241957385

/-!
# A235757: Ruler function associated with the set of permutations generated by cyclic shift in cyclic order, array read by rows.

The programs for A235757, there is no canonical definition to state claims against.
-/

/-! ## A235757.P7958627525777603254

`A115572(A326661(n+2)+1)`
-/

namespace A235757.P7958627525777603254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115572 (A326661 (n + 2) + 1).toNat

end

end A235757.P7958627525777603254

/-! ## A235757.P9963056881742660465

`A294859(gcd(A008778(n), A294864(n)))`
-/

namespace A235757.P9963056881742660465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294859 (Int.gcd (A008778 n) (A294864 n))

end

end A235757.P9963056881742660465

/-! ## A235757.P12260423216882206882

`A122385(gcd(A047725(n+1), A133263(n)))`
-/

namespace A235757.P12260423216882206882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122385 (Int.gcd (A047725 (n + 1)) (A133263 n))

end

end A235757.P12260423216882206882

/-! ## A235757.P3139555087409091205

`A096309(gcd(A220656(3*n+5), A234521(2*n+1)))`
-/

namespace A235757.P3139555087409091205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096309 (Int.gcd (A220656 (3 * n + 5)) (A234521 (2 * n + 1)))

end

end A235757.P3139555087409091205

/-! ## A235757.P2571445532602964646

`gcd(A031087(n+2), A115572(A115589(3*(n+1))))`
-/

namespace A235757.P2571445532602964646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031087 (n + 2)) (A115572 (A115589 (3 * (n + 1))).toNat)

end

end A235757.P2571445532602964646

/-!
# A235758: Number of (n+1)X(n+1) 0..1 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235758, there is no canonical definition to state claims against.
-/

/-! ## A235758.P5437124801094001931

`A235765(∑[4*n]+1)`
-/

namespace A235758.P5437124801094001931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235758.P5437124801094001931

/-! ## A235758.P8188191904060208412

`record[A235765(A330613(n+1))]`
-/

namespace A235758.P8188191904060208412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235758.P8188191904060208412

/-! ## A235758.P3916061981950874997

`record[A235765(A001844(∑{e}[n+1, #]))]`
-/

namespace A235758.P3916061981950874997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A001844 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235758.P3916061981950874997

/-!
# A235759: Number of (n+1)X(2+1) 0..1 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235759, there is no canonical definition to state claims against.
-/

/-! ## A235759.P8990870977495331806

`A235765(2+∑[1+n])`
-/

namespace A235759.P8990870977495331806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A235759.P8990870977495331806

/-! ## A235759.P6773284998044269659

`record[gcd(A235765(n+2), A319047(n))]`
-/

namespace A235759.P6773284998044269659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A235765 (n + 2)) (A319047 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235759.P6773284998044269659

/-! ## A235759.P12821571236872681156

`record[A235765(n+2)/A089072(n+1)]`
-/

namespace A235759.P12821571236872681156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235765 (n + 2) : ℚ) / (A089072 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235759.P12821571236872681156

/-! ## A235759.P9465068419605884815

`record[A154990(n+1)*A235765(n+3)]`
-/

namespace A235759.P9465068419605884815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) * A235765 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235759.P9465068419605884815

/-! ## A235759.P9336139521808293779

`record[root(A235765(n+2), A200370(n+1))]`
-/

namespace A235759.P9336139521808293779
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235765 (n + 2) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235759.P9336139521808293779

/-!
# A235760: Number of (n+1) X (3+1) 0..1 arrays with the sum of each 2 X 2 subblock two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235760, there is no canonical definition to state claims against.
-/

/-! ## A235760.P12643568671377564053

`A235765(∑[n+2]+4)`
-/

namespace A235760.P12643568671377564053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235760.P12643568671377564053

/-!
# A235761: Number of (n+1)X(4+1) 0..1 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235761, there is no canonical definition to state claims against.
-/

/-! ## A235761.P2848369777581330332

`A235765(A141214(n)+7)`
-/

namespace A235761.P2848369777581330332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A141214 n + 7).toNat

end

end A235761.P2848369777581330332

/-! ## A235761.P5093330608547089669

`A235765(A141214(n+1))`
-/

namespace A235761.P5093330608547089669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A141214 (n + 1)).toNat

end

end A235761.P5093330608547089669

/-!
# A235762: Number of (n+1)X(5+1) 0..1 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235762, there is no canonical definition to state claims against.
-/

/-! ## A235762.P13922326541758969654

`A235765(A167499(n+3))`
-/

namespace A235762.P13922326541758969654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A167499 (n + 3)).toNat

end

end A235762.P13922326541758969654

/-! ## A235762.P17016647183209592129

`A235765(A374005(n+1))`
-/

namespace A235762.P17016647183209592129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A374005 (n + 1)).toNat

end

end A235762.P17016647183209592129

/-!
# A235763: Number of (n+1) X (6+1) 0..1 arrays with the sum of each 2 X 2 subblock two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235763, there is no canonical definition to state claims against.
-/

/-! ## A235763.P15110380292447862099

`A235765(A000124(n+5)+5)`
-/

namespace A235763.P15110380292447862099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A000124 (n + 5) + 5).toNat

end

end A235763.P15110380292447862099

/-! ## A235763.P2305110110155897509

`A235765(A374007(n+1))`
-/

namespace A235763.P2305110110155897509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A374007 (n + 1)).toNat

end

end A235763.P2305110110155897509

/-!
# A235764: Number of (n+1)X(7+1) 0..1 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235764, there is no canonical definition to state claims against.
-/

/-! ## A235764.P807506223350534351

`A235765(A056119(n)+28)`
-/

namespace A235764.P807506223350534351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A056119 n + 28).toNat

end

end A235764.P807506223350534351

/-! ## A235764.P12856689624980566169

`A235765(A374008(n+1))`
-/

namespace A235764.P12856689624980566169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A374008 (n + 1)).toNat

end

end A235764.P12856689624980566169

/-!
# A235765: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235765, there is no canonical definition to state claims against.
-/

/-! ## A235765.P11228926136974874277

`A235548(n+1)-A058911(A056940(n))`
-/

namespace A235765.P11228926136974874277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (n + 1) - A058911 (A056940 n).toNat

end

end A235765.P11228926136974874277

/-! ## A235765.P13550542218758251186

`A235548(n+1)-A074016(A333560(n))`
-/

namespace A235765.P13550542218758251186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (n + 1) - A074016 (A333560 n).toNat

end

end A235765.P13550542218758251186

/-! ## A235765.P7662131999353586416

`A235548(n+1)-A127268(A205206(n+1))`
-/

namespace A235765.P7662131999353586416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (n + 1) - A127268 (A205206 (n + 1)).toNat

end

end A235765.P7662131999353586416

/-!
# A235767: Number of (n+1)X(2+1) 0..1 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235767, there is no canonical definition to state claims against.
-/

/-! ## A235767.P5307870719958390768

`A235772(∑[1+n]+2)`
-/

namespace A235767.P5307870719958390768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235767.P5307870719958390768

/-! ## A235767.P8481417608035683508

`record[A235772(A114091(n+1)+1)]`
-/

namespace A235767.P8481417608035683508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235767.P8481417608035683508

/-! ## A235767.P9415248932618621206

`record[gcd(A002262(n), A235772(n+2))]`
-/

namespace A235767.P9415248932618621206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235772 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235767.P9415248932618621206

/-! ## A235767.P4163176927559718201

`record[A235772(Δ[A053436(n+1)]+1)]`
-/

namespace A235767.P4163176927559718201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235767.P4163176927559718201

/-! ## A235767.P11148488972232050145

`record[A235772(Δ[A003453(n+5)])]`
-/

namespace A235767.P11148488972232050145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235767.P11148488972232050145

/-!
# A235768: Number of (n+1)X(3+1) 0..1 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235768, there is no canonical definition to state claims against.
-/

/-! ## A235768.P7711926735590524130

`A235772(∑[n+2]+4)`
-/

namespace A235768.P7711926735590524130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235768.P7711926735590524130

/-!
# A235769: Number of (n+1) X (4+1) 0..1 arrays with the sum of each 2 X 2 subblock two extreme terms minus its two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235769, there is no canonical definition to state claims against.
-/

/-! ## A235769.P4576214127205285171

`A235772(A374004(n+1))`
-/

namespace A235769.P4576214127205285171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A374004 (n + 1)).toNat

end

end A235769.P4576214127205285171

/-! ## A235769.P12837329895363096557

`A235772(A141214(n+1))`
-/

namespace A235769.P12837329895363096557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A141214 (n + 1)).toNat

end

end A235769.P12837329895363096557

/-!
# A235770: Number of (n+1)X(5+1) 0..1 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235770, there is no canonical definition to state claims against.
-/

/-! ## A235770.P10641141163878950508

`A235772(A374005(n+1))`
-/

namespace A235770.P10641141163878950508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A374005 (n + 1)).toNat

end

end A235770.P10641141163878950508

/-!
# A235771: Number of (n+1)X(6+1) 0..1 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235771, there is no canonical definition to state claims against.
-/

/-! ## A235771.P7131918045562464558

`A235772(A374007(n+1))`
-/

namespace A235771.P7131918045562464558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A374007 (n + 1)).toNat

end

end A235771.P7131918045562464558

/-!
# A235772: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235772, there is no canonical definition to state claims against.
-/

/-! ## A235772.P6873931515995075717

`A235555(n+1)-A155487(A155497(n))`
-/

namespace A235772.P6873931515995075717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (n + 1) - A155487 (A155497 n).toNat

end

end A235772.P6873931515995075717

/-! ## A235772.P4233984895367176617

`A235555(n+1)-A156874(A156646(n))`
-/

namespace A235772.P4233984895367176617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (n + 1) - A156874 (A156646 n).toNat

end

end A235772.P4233984895367176617

/-!
# A235774: Let b(k) = A164555(k)/A027642(k), the sequence of "original" Bernoulli numbers with -1 instead of A164555(0)=1; then a(n) = numerator of the n-th term of the binomial transform of the b(k) sequence.

The programs for A235774, there is no canonical definition to state claims against.
-/

/-! ## A235774.P14169282206944717198

`A164558(n)-2*A027642(n)`
-/

namespace A235774.P14169282206944717198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164558 n - 2 * A027642 n

end

end A235774.P14169282206944717198

/-! ## A235774.P13059718365349325055

`A176327(n)+(n-2)*A176289(n)`
-/

namespace A235774.P13059718365349325055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 n + ((n : ℤ) - 2) * A176289 n

end

end A235774.P13059718365349325055

/-! ## A235774.P7334526965471310452

`A164869(n)-(A165226(n)+A027642(n))`
-/

namespace A235774.P7334526965471310452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164869 n - (A165226 n + A027642 n)

end

end A235774.P7334526965471310452

/-! ## A235774.P11027212020714000068

`A164558(n)-(A141056(n)+A106458(n))`
-/

namespace A235774.P11027212020714000068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164558 n - (A141056 n + A106458 n)

end

end A235774.P11027212020714000068

/-! ## A235774.P4907565570720716992

`A164555(n)+A023444(n)*A027642(n)`
-/

namespace A235774.P4907565570720716992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n + A023444 n * A027642 n

end

end A235774.P4907565570720716992

/-!
# A235775: a(n) = A047842(A047842(n)), say what you see, once repeated.

The programs for A235775, there is no canonical definition to state claims against.
-/

/-! ## A235775.P8222425851705998842

`A047842(A047842(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A235775.P8222425851705998842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A047842 n).toNat

end

end A235775.P8222425851705998842

/-! ## A235775.P12528765941867908129

`A045918(A244112(n))-A097601(A244112(n))`
-/

namespace A235775.P12528765941867908129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (A244112 n).toNat - A097601 (A244112 n).toNat

end

end A235775.P12528765941867908129

/-! ## A235775.P15830127032325139343

`A047842(A045918(n))`
-/

namespace A235775.P15830127032325139343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A045918 n).toNat

end

end A235775.P15830127032325139343

/-!
# A235776: E.g.f.: exp( Sum_{n>=1} x^(2*n) * Sum_{k=1..n} 1/k^2 ).

The programs for A235776, there is no canonical definition to state claims against.
-/

/-! ## A235776.P4048746135082974930

`A000984(n)*A182529(n)`
-/

namespace A235776.P4048746135082974930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A182529 n

end

end A235776.P4048746135082974930

/-! ## A235776.P15545814634529216185

`record[A182411(n)]*A182529(n)`
-/

namespace A235776.P15545814634529216185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A182529 n

end

end A235776.P15545814634529216185

/-! ## A235776.P12745761047009225928

`A001405(2*n)*A182529(n)`
-/

namespace A235776.P12745761047009225928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A182529 n

end

end A235776.P12745761047009225928

/-! ## A235776.P11275786948309685979

`A007318(A046092(n))*A182529(n)`
-/

namespace A235776.P11275786948309685979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A046092 n).toNat * A182529 n

end

end A235776.P11275786948309685979

/-!
# A235777: Number of (n+1)X(2+1) 0..3 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235777, there is no canonical definition to state claims against.
-/

/-! ## A235777.P7749970927180285263

`A235779(∑[n+1]+2)`
-/

namespace A235777.P7749970927180285263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235779 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235777.P7749970927180285263

/-! ## A235777.P7659976810022700027

`record[A010054(n)*A235779(n+2)]`
-/

namespace A235777.P7659976810022700027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235779 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235777.P7659976810022700027

/-! ## A235777.P9022481230535585766

`record[gcd(A002262(n), A235779(n+2))]`
-/

namespace A235777.P9022481230535585766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235779 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235777.P9022481230535585766

/-!
# A235778: Number of (n+1) X (3+1) 0..3 arrays with the sum of each 2 X 2 subblock two extreme terms minus its two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235778, there is no canonical definition to state claims against.
-/

/-! ## A235778.P16462724772876611414

`A235779(∑[n+2]+4)`
-/

namespace A235778.P16462724772876611414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235779 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235778.P16462724772876611414

/-! ## A235778.P8696041302844788922

`record[A235779(∑[A290795(n)])]`
-/

namespace A235778.P8696041302844788922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290795 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235779 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235778.P8696041302844788922

/-!
# A235780: Number of (n+1)X(2+1) 0..2 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235780, there is no canonical definition to state claims against.
-/

/-! ## A235780.P10730335664480965295

`A235784(∑[2+n])`
-/

namespace A235780.P10730335664480965295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A235780.P10730335664480965295

/-! ## A235780.P13681379027483090981

`record[A235784(abs(A201163(n)))]`
-/

namespace A235780.P13681379027483090981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235780.P13681379027483090981

/-! ## A235780.P13281035640007553254

`record[A235784(lt[A153653(n+1), n])]`
-/

namespace A235780.P13281035640007553254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153653 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235780.P13281035640007553254

/-! ## A235780.P8433108278004561230

`record[A097806(n+1)*A235784(n+2)]`
-/

namespace A235780.P8433108278004561230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (n + 1) * A235784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235780.P8433108278004561230

/-!
# A235781: Number of (n+1)X(3+1) 0..2 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235781, there is no canonical definition to state claims against.
-/

/-! ## A235781.P3246012130641517786

`A235784(∑[n+3]+1)`
-/

namespace A235781.P3246012130641517786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235781.P3246012130641517786

/-!
# A235782: Number of (n+1)X(4+1) 0..2 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235782, there is no canonical definition to state claims against.
-/

/-! ## A235782.P3244936491437741183

`A235784(∑[n+4]+3)`
-/

namespace A235782.P3244936491437741183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A235782.P3244936491437741183

/-!
# A235783: Number of (n+1)X(5+1) 0..2 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235783, there is no canonical definition to state claims against.
-/

/-! ## A235783.P8880632623573488632

`A235784(∑[round(sqrt(n²+1))+5]+5)`
-/

namespace A235783.P8880632623573488632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A235783.P8880632623573488632

/-!
# A235785: Number of (2+1)X(n+1) 0..2 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235785, there is no canonical definition to state claims against.
-/

/-! ## A235785.P4255512638883148327

`A235784(∑[n+1]+2)`
-/

namespace A235785.P4255512638883148327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235785.P4255512638883148327

/-! ## A235785.P1947735312730400621

`record[A235784(A220693(n+1)+2)]`
-/

namespace A235785.P1947735312730400621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (A220693 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235785.P1947735312730400621

/-! ## A235785.P2932924172664866357

`record[A010054(n)*A235784(n+2)]`
-/

namespace A235785.P2932924172664866357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235785.P2932924172664866357

/-! ## A235785.P10882803476298684909

`record[gcd(A213177(n), A235784(n+2))]`
-/

namespace A235785.P10882803476298684909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213177 n) (A235784 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235785.P10882803476298684909

/-!
# A235786: Number of (3+1)X(n+1) 0..2 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235786, there is no canonical definition to state claims against.
-/

/-! ## A235786.P18437732252961098713

`A235784(∑[n+2]+4)`
-/

namespace A235786.P18437732252961098713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235786.P18437732252961098713

/-! ## A235786.P16374133423036986257

`record[A103452(n)*A235784(n+4)]`
-/

namespace A235786.P16374133423036986257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A235784 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235786.P16374133423036986257

/-! ## A235786.P3851333096324435941

`record[gcd(A094718(n+1), A235784(n+4))]`
-/

namespace A235786.P3851333096324435941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094718 (n + 1)) (A235784 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235786.P3851333096324435941

/-!
# A235787: Number of (4+1) X (n+1) 0..2 arrays with the difference of the upper and lower median value of each 2 X 2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235787, there is no canonical definition to state claims against.
-/

/-! ## A235787.P15692044838194137243

`A235784(∑[round(sqrt(n²+1))+3]+6)`
-/

namespace A235787.P15692044838194137243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A235787.P15692044838194137243

/-!
# A235788: Number of (5+1)X(n+1) 0..2 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235788, there is no canonical definition to state claims against.
-/

/-! ## A235788.P5667752680905022652

`A235784(A167499(n+3))`
-/

namespace A235788.P5667752680905022652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (A167499 (n + 3)).toNat

end

end A235788.P5667752680905022652

/-!
# A235789: Expansion of x * (1 - 2*x + 8*x^5 - 8*x^6) / (1 - 4*x^4)^2.

The programs for A235789, the canonical program `A235789.P14279097678059584050` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235789 has offset 0).

The definition of A235789 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-2x^2+8x^6-8x^7)/(1-8x^4+16x^8))` (program `A235789.P14279097678059584050`, by `A235789.P14279097678059584050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A235789.P14279097678059584050

`ogf((x-2x^2+8x^6-8x^7)/(1-8x^4+16x^8))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A235789

/-- `ogf((x-2x^2+8x^6-8x^7)/(1-8x^4+16x^8))` -/
def P14279097678059584050.Spec : Prop :=
  ∀ n, P14279097678059584050.a n = A235789 n

theorem P14279097678059584050.correct : P14279097678059584050.Spec := by
  intro n
  simp only [A235789]

end A235789

/-!
# A235790: Triangle read by rows: T(n,k) = 2^k*A116608(n,k), n>=1, k>=1.

The programs for A235790, there is no canonical definition to state claims against.
-/

/-! ## A235790.P1280302879802851983

`A116608(n+1)/A235998(n+1)*A235999(n+1)`
-/

namespace A235790.P1280302879802851983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116608 (n + 1) : ℚ) / (A235998 (n + 1) : ℚ) * (A235999 (n + 1) : ℚ)

end

end A235790.P1280302879802851983

/-! ## A235790.P13355123057579834691

`2*A359481(1+n)`
-/

namespace A235790.P13355123057579834691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359481 (1 + n)

end

end A235790.P13355123057579834691

/-! ## A235790.P3019185869959106047

`A004277(A359481(n+1))`
-/

namespace A235790.P3019185869959106047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A359481 (n + 1)).toNat

end

end A235790.P3019185869959106047

/-! ## A235790.P13457308263544851452

`A359481(n+1)+A359481(1+n)`
-/

namespace A235790.P13457308263544851452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359481 (n + 1) + A359481 (1 + n)

end

end A235790.P13457308263544851452

/-!
# A235791: Irregular triangle read by rows: T(n,k), n >= 1, k >= 1, in which column k lists k copies of every positive integer in nondecreasing order, and the first element of column k is in row k(k+1)/2.

The programs for A235791, there is no canonical definition to state claims against.
-/

/-! ## A235791.P1453873165829840859

`sqrt(A236104(n+1))`
-/

namespace A235791.P1453873165829840859
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A236104 (n + 1) : ℝ)

end

end A235791.P1453873165829840859

/-! ## A235791.P14284850635090653941

`ceil(A338721(1+n)/2)`
-/

namespace A235791.P14284850635090653941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A338721 (1 + n) : ℚ) / 2⌉

end

end A235791.P14284850635090653941

/-! ## A235791.P11909808629674959185

`round(A338721(n+1)/2)`
-/

namespace A235791.P11909808629674959185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A338721 (n + 1) : ℚ) / 2)

end

end A235791.P11909808629674959185

/-! ## A235791.P10938911271706702175

`(A338721(C(1+n, n))+1)/2`
-/

namespace A235791.P10938911271706702175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338721 (Nat.choose (1 + n) n) + 1 : ℚ) / 2

end

end A235791.P10938911271706702175

/-! ## A235791.P11557733764179648221

`A000463(A338721(n+1))`
-/

namespace A235791.P11557733764179648221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A338721 (n + 1)).toNat

end

end A235791.P11557733764179648221

/-! ## A235791.P11674343627511932940

`A001281(A338721(n+1)+1)`
-/

namespace A235791.P11674343627511932940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A338721 (n + 1) + 1).toNat

end

end A235791.P11674343627511932940

/-! ## A235791.P10341950668629926691

`A004526(A338721(n+1)+1)`
-/

namespace A235791.P10341950668629926691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A338721 (n + 1) + 1).toNat

end

end A235791.P10341950668629926691

/-! ## A235791.P7856064933324211394

`A056926(2*A236104(n+1)-A236104(n+1))`
-/

namespace A235791.P7856064933324211394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (2 * A236104 (n + 1) - A236104 (n + 1)).toNat

end

end A235791.P7856064933324211394

/-! ## A235791.P6247277601628679571

`A237591(n+1)+A048158(∑[A237591(n+1)])`
-/

namespace A235791.P6247277601628679571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (n + 1) + A048158 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235791.P6247277601628679571

/-! ## A235791.P745081094207692217

`A237591(n+1)+A053616(∑[A237591(n+1)])`
-/

namespace A235791.P745081094207692217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (n + 1) + A053616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235791.P745081094207692217

/-! ## A235791.P4015019359433874593

`A000196(A236104(1+n))`
-/

namespace A235791.P4015019359433874593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A236104 (1 + n)).toNat

end

end A235791.P4015019359433874593

/-! ## A235791.P13957645788776489719

`A257213(A236104(n+1)-1)`
-/

namespace A235791.P13957645788776489719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257213 (A236104 (n + 1) - 1).toNat

end

end A235791.P13957645788776489719

/-! ## A235791.P1898791563087502598

`A003059(A236104(2*n+1-n))`
-/

namespace A235791.P1898791563087502598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A236104 (2 * n + 1 - n)).toNat

end

end A235791.P1898791563087502598

/-! ## A235791.P4859458686270349806

`A339575(A008619(A236104(A008619(2*n))))`
-/

namespace A235791.P4859458686270349806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339575 (A008619 (A236104 (A008619 (2 * n)).toNat).toNat).toNat

end

end A235791.P4859458686270349806

/-! ## A235791.P7592981014525316330

`A000194(A236104(n+1)+1)`
-/

namespace A235791.P7592981014525316330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A236104 (n + 1) + 1).toNat

end

end A235791.P7592981014525316330

/-! ## A235791.P16099493601921929649

`A002260(2*A236104(n+1))`
-/

namespace A235791.P16099493601921929649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A236104 (n + 1)).toNat

end

end A235791.P16099493601921929649

/-! ## A235791.P16329942872038040523

`A127093(2*A236104(n+1))`
-/

namespace A235791.P16329942872038040523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (2 * A236104 (n + 1)).toNat

end

end A235791.P16329942872038040523

/-! ## A235791.P1628274680445743357

`A050873(2*A236104(n+1))`
-/

namespace A235791.P1628274680445743357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (2 * A236104 (n + 1)).toNat

end

end A235791.P1628274680445743357

/-! ## A235791.P14486989719687350079

`A351846(2*A236104(n+1))`
-/

namespace A235791.P14486989719687350079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (2 * A236104 (n + 1)).toNat

end

end A235791.P14486989719687350079

/-!
# A235792: Total number of parts in all overpartitions of n.

The programs for A235792, there is no canonical definition to state claims against.
-/

/-! ## A235792.P5659757198109177363

`2*A305105(1+n)`
-/

namespace A235792.P5659757198109177363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305105 (1 + n)

end

end A235792.P5659757198109177363

/-! ## A235792.P2377995935455364286

`A305105(n+1)+A305105(n+1)`
-/

namespace A235792.P2377995935455364286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305105 (n + 1) + A305105 (n + 1)

end

end A235792.P2377995935455364286

/-! ## A235792.P1493911758164112431

`2*(A305102(n+1)-A305104(n+1))`
-/

namespace A235792.P1493911758164112431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A305102 (n + 1) - A305104 (n + 1))

end

end A235792.P1493911758164112431

/-! ## A235792.P8072039358256997213

`A305102(n+1)+A305124(n+1)+A305122(n+1)`
-/

namespace A235792.P8072039358256997213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305102 (n + 1) + (A305124 (n + 1) + A305122 (n + 1))

end

end A235792.P8072039358256997213

/-! ## A235792.P2781573637689588652

`A305102(n+1)+A305101(n+1)`
-/

namespace A235792.P2781573637689588652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305102 (n + 1) + A305101 (n + 1)

end

end A235792.P2781573637689588652

/-!
# A235793: Sum of all parts of all overpartitions of n.

The programs for A235793, there is no canonical definition to state claims against.
-/

/-! ## A235793.P11152805230972710739

`(n+1)*A015128(n+1)`
-/

namespace A235793.P11152805230972710739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A015128 (n + 1)

end

end A235793.P11152805230972710739

/-! ## A235793.P7889836482687264983

`(1+n)*Δ[A277643(n)]`
-/

namespace A235793.P7889836482687264983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * (f1 (n + 1) - f1 n)

end

end A235793.P7889836482687264983

/-! ## A235793.P12728494385845282572

`(n+1)*abs(A004402(n+1))`
-/

namespace A235793.P12728494385845282572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |A004402 (n + 1)|

end

end A235793.P12728494385845282572

/-! ## A235793.P16989592448729583312

`(n+1)*(A304627(n+1)+2)`
-/

namespace A235793.P16989592448729583312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A304627 (n + 1) + 2)

end

end A235793.P16989592448729583312

/-! ## A235793.P12127989565403775304

`2*(n+1)*A014968(n+1)`
-/

namespace A235793.P12127989565403775304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A014968 (n + 1))

end

end A235793.P12127989565403775304

/-! ## A235793.P1241820636037015879

`(n+1)*(∑[A211971(n+1)]+1)`
-/

namespace A235793.P1241820636037015879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235793.P1241820636037015879

/-! ## A235793.P17546412474486365829

`A004277(n+1)*A014968(n+1)`
-/

namespace A235793.P17546412474486365829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) * A014968 (n + 1)

end

end A235793.P17546412474486365829

/-! ## A235793.P4009865360600541850

`A005843(n+1)*A014968(n+1)`
-/

namespace A235793.P4009865360600541850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A014968 (n + 1)

end

end A235793.P4009865360600541850

/-! ## A235793.P12578743051834203381

`record[A008611(n)*A015128(A008611(n))]`
-/

namespace A235793.P12578743051834203381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A015128 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235793.P12578743051834203381

/-! ## A235793.P9511946000288980221

`(n+1)*A359670(∑[n+1])`
-/

namespace A235793.P9511946000288980221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A359670 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A235793.P9511946000288980221

/-!
# A235794: Triangle read by rows: T(n,k), n>=1, k>=1, in which column k starts with k zeros and then lists the odd numbers interleaved with k zeros, and the first element of column k is in row k(k+1)/2.

The programs for A235794, there is no canonical definition to state claims against.
-/

/-! ## A235794.P945093404773253861

`A239446(comp[A006527(n)])`
-/

namespace A235794.P945093404773253861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239446 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A235794.P945093404773253861

/-! ## A235794.P9791697736833648423

`A230424(A252269(n+1))%A064004(n+1)`
-/

namespace A235794.P9791697736833648423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230424 (A252269 (n + 1)).toNat) (A064004 (n + 1))

end

end A235794.P9791697736833648423

/-!
# A235795: Triangle read by rows T(n,k) in which row n gives the trajectory of n in Collatz problem including the trajectory [1, 4, 2, 1] for n = 1.

The programs for A235795, there is no canonical definition to state claims against.
-/

/-! ## A235795.P3368872711916241723

`A245943(1+n)-2`
-/

namespace A235795.P3368872711916241723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245943 (1 + n) - 2

end

end A235795.P3368872711916241723

/-! ## A235795.P10747801502225978681

`A023444(A245943(1+n))`
-/

namespace A235795.P10747801502225978681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A245943 (1 + n)).toNat

end

end A235795.P10747801502225978681

/-! ## A235795.P11269852005051369528

`A289207(A245943(n+1))`
-/

namespace A235795.P11269852005051369528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A245943 (n + 1)).toNat

end

end A235795.P11269852005051369528

/-! ## A235795.P819855161675486295

`A023445(A245943(n+1)+1)`
-/

namespace A235795.P819855161675486295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A245943 (n + 1) + 1).toNat

end

end A235795.P819855161675486295

/-! ## A235795.P12831947784702190442

`A023447(A245943(n+1)+3)`
-/

namespace A235795.P12831947784702190442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A245943 (n + 1) + 3).toNat

end

end A235795.P12831947784702190442

/-! ## A235795.P17468051342348449570

`A152832(2*A245943(n+1))`
-/

namespace A235795.P17468051342348449570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152832 (2 * A245943 (n + 1)).toNat

end

end A235795.P17468051342348449570

/-! ## A235795.P14188934242290309813

`A023451(A245943(n+1)+7)`
-/

namespace A235795.P14188934242290309813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023451 (A245943 (n + 1) + 7).toNat

end

end A235795.P14188934242290309813

/-! ## A235795.P17548867547597716855

`A349315(A245943(n+1)+7)`
-/

namespace A235795.P17548867547597716855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349315 (A245943 (n + 1) + 7).toNat

end

end A235795.P17548867547597716855

/-! ## A235795.P17194987499888344510

`A056951(C(A245943(n+1), 2))`
-/

namespace A235795.P17194987499888344510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (Nat.choose (A245943 (n + 1)).toNat 2)

end

end A235795.P17194987499888344510

/-! ## A235795.P11043669844311539753

`A254078(n+2)%A245943(n+1)`
-/

namespace A235795.P11043669844311539753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254078 (n + 2)) (A245943 (n + 1))

end

end A235795.P11043669844311539753

/-!
# A235796: 2*n - 1 - sigma(n).

The programs for A235796, the canonical program `A235796.P5769590272751401819` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235796 has offset 1).

The definition of A235796 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)-1-A000203(n+1)` (program `A235796.P5769590272751401819`, by `A235796.P5769590272751401819.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A235796.P10282550748648679139

`A033879(n+1)-1`
-/

namespace A235796.P10282550748648679139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) - 1

end

end A235796.P10282550748648679139

namespace A235796

/-- `A033879(n+1)-1` -/
def P10282550748648679139.Spec : Prop :=
  ∀ n, P10282550748648679139.a n = A235796 (n + 1)

theorem P10282550748648679139.correct : P10282550748648679139.Spec := by
  intro n
  simp only [A235796, Nat.add_sub_cancel, A235796.P10282550748648679139.a, A235796.P5769590272751401819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P5965131822542929609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235796

/-! ## A235796.P7795080801203084284

`n-A001065(n+1)`
-/

namespace A235796.P7795080801203084284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001065 (n + 1)

end

end A235796.P7795080801203084284

namespace A235796

/-- `n-A001065(n+1)` -/
def P7795080801203084284.Spec : Prop :=
  ∀ n, P7795080801203084284.a n = A235796 (n + 1)

theorem P7795080801203084284.correct : P7795080801203084284.Spec := by
  intro n
  simp only [A235796, Nat.add_sub_cancel, A235796.P7795080801203084284.a, A235796.P5769590272751401819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235796

/-! ## A235796.P18184533128559132655

`2*(n+1)-A088580(n+1)`
-/

namespace A235796.P18184533128559132655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A088580 (n + 1)

end

end A235796.P18184533128559132655

namespace A235796

/-- `2*(n+1)-A088580(n+1)` -/
def P18184533128559132655.Spec : Prop :=
  ∀ n, P18184533128559132655.a n = A235796 (n + 1)

theorem P18184533128559132655.correct : P18184533128559132655.Spec := by
  intro n
  simp only [A235796, Nat.add_sub_cancel, A235796.P18184533128559132655.a, A235796.P5769590272751401819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235796

/-! ## A235796.P5769590272751401819

`2*(n+1)-1-A000203(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A235796

/-- `2*(n+1)-1-A000203(n+1)` -/
def P5769590272751401819.Spec : Prop :=
  ∀ n, P5769590272751401819.a n = A235796 (n + 1)

theorem P5769590272751401819.correct : P5769590272751401819.Spec := by
  intro n
  simp only [A235796, Nat.add_sub_cancel]

end A235796

/-! ## A235796.P5284059813145905452

`2*(n+1)-2-A039653(n+1)`
-/

namespace A235796.P5284059813145905452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 2 - A039653 (n + 1)

end

end A235796.P5284059813145905452

namespace A235796

/-- `2*(n+1)-2-A039653(n+1)` -/
def P5284059813145905452.Spec : Prop :=
  ∀ n, P5284059813145905452.a n = A235796 (n + 1)

end A235796

/-! ## A235796.P7693935560373735830

`Δ[n²-∑[∑{d}[n, #]]]`
-/

namespace A235796.P7693935560373735830
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235796.P7693935560373735830

namespace A235796

/-- `Δ[n²-∑[∑{d}[n, #]]]` -/
def P7693935560373735830.Spec : Prop :=
  ∀ n, P7693935560373735830.a n = A235796 (n + 1)

end A235796

/-! ## A235796.P587283696422693947

`Δ[n²]-∑{d}[n+1, #]`
-/

namespace A235796.P587283696422693947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A235796.P587283696422693947

namespace A235796

/-- `Δ[n²]-∑{d}[n+1, #]` -/
def P587283696422693947.Spec : Prop :=
  ∀ n, P587283696422693947.a n = A235796 (n + 1)

theorem P587283696422693947.correct : P587283696422693947.Spec := by
  intro n
  simp only [A235796, Nat.add_sub_cancel, A235796.P587283696422693947.f1, A235796.P587283696422693947.f2, A235796.P587283696422693947.a, A235796.P5769590272751401819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235796

/-! ## A235796.P4242377735491395560

`2*n+1-∑{d}[n+1, #]`
-/

namespace A235796.P4242377735491395560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))

end

end A235796.P4242377735491395560

namespace A235796

/-- `2*n+1-∑{d}[n+1, #]` -/
def P4242377735491395560.Spec : Prop :=
  ∀ n, P4242377735491395560.a n = A235796 (n + 1)

theorem P4242377735491395560.correct : P4242377735491395560.Spec := by
  intro n
  simp only [A235796, Nat.add_sub_cancel, A235796.P4242377735491395560.f1, A235796.P4242377735491395560.a, A235796.P5769590272751401819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235796

/-! ## A235796.P17466642455219352607

`n+1-∑{d}[n+1, #]+n`
-/

namespace A235796.P17466642455219352607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (n : ℤ)

end

end A235796.P17466642455219352607

namespace A235796

/-- `n+1-∑{d}[n+1, #]+n` -/
def P17466642455219352607.Spec : Prop :=
  ∀ n, P17466642455219352607.a n = A235796 (n + 1)

theorem P17466642455219352607.correct : P17466642455219352607.Spec := by
  intro n
  simp only [A235796, Nat.add_sub_cancel, A235796.P17466642455219352607.f1, A235796.P17466642455219352607.a, A235796.P5769590272751401819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235796

/-! ## A235796.P17705356203407577264

`-A237588(n+1)`
-/

namespace A235796.P17705356203407577264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A237588 (n + 1)

end

end A235796.P17705356203407577264

namespace A235796

/-- `-A237588(n+1)` -/
def P17705356203407577264.Spec : Prop :=
  ∀ n, P17705356203407577264.a n = A235796 (n + 1)

theorem P17705356203407577264.correct : P17705356203407577264.Spec := by
  intro n
  simp only [A235796, Nat.add_sub_cancel, A235796.P17705356203407577264.a, A235796.P5769590272751401819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A237588, A237588.P10590847318200798620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235796

/-! ## A235796.P15802487818536591337

`Δ[A111490(n)]-1`
-/

namespace A235796.P15802487818536591337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A235796.P15802487818536591337

namespace A235796

/-- `Δ[A111490(n)]-1` -/
def P15802487818536591337.Spec : Prop :=
  ∀ n, P15802487818536591337.a n = A235796 (n + 1)

end A235796

/-! ## A235796.P6615259910055089997

`Δ[n²-A160664(n)]`
-/

namespace A235796.P6615259910055089997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235796.P6615259910055089997

namespace A235796

/-- `Δ[n²-A160664(n)]` -/
def P6615259910055089997.Spec : Prop :=
  ∀ n, P6615259910055089997.a n = A235796 (n + 1)

end A235796

/-! ## A235796.P5997149496346790691

`A235799(n+1)-n²`
-/

namespace A235796.P5997149496346790691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235799 (n + 1) - (n ^ 2 : ℤ)

end

end A235796.P5997149496346790691

namespace A235796

/-- `A235799(n+1)-n²` -/
def P5997149496346790691.Spec : Prop :=
  ∀ n, P5997149496346790691.a n = A235796 (n + 1)

theorem P5997149496346790691.correct : P5997149496346790691.Spec := by
  intro n
  simp only [A235796, Nat.add_sub_cancel, A235796.P5997149496346790691.a, A235796.P5769590272751401819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A235799, A235799.P7816509240272329688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235796

/-! ## A235796.P13487329757785080275

`A353190(n+1)-(n+1)`
-/

namespace A235796.P13487329757785080275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353190 (n + 1) - (n + 1 : ℤ)

end

end A235796.P13487329757785080275

namespace A235796

/-- `A353190(n+1)-(n+1)` -/
def P13487329757785080275.Spec : Prop :=
  ∀ n, P13487329757785080275.a n = A235796 (n + 1)

theorem P13487329757785080275.correct : P13487329757785080275.Spec := by
  intro n
  simp only [A235796, Nat.add_sub_cancel, A235796.P13487329757785080275.a, A235796.P5769590272751401819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A353190, A353190.P11422691785722745783.a, A001065, A001065.P4097147489331274860.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235796

/-! ## A235796.P16576839122375781661

`A033885(n+1)-(n+2)`
-/

namespace A235796.P16576839122375781661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 1) - (n + 2 : ℤ)

end

end A235796.P16576839122375781661

namespace A235796

/-- `A033885(n+1)-(n+2)` -/
def P16576839122375781661.Spec : Prop :=
  ∀ n, P16576839122375781661.a n = A235796 (n + 1)

theorem P16576839122375781661.correct : P16576839122375781661.Spec := by
  intro n
  simp only [A235796, Nat.add_sub_cancel, A235796.P16576839122375781661.a, A235796.P5769590272751401819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033885, A033885.P621255430935931612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235796

/-! ## A235796.P12397258716343089784

`n-A091818(n+1)/2`
-/

namespace A235796.P12397258716343089784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A091818 (n + 1) : ℚ) / 2

end

end A235796.P12397258716343089784

namespace A235796

/-- `n-A091818(n+1)/2` -/
def P12397258716343089784.Spec : Prop :=
  ∀ n, P12397258716343089784.a n = (A235796 (n + 1) : ℚ)

theorem P12397258716343089784.correct : P12397258716343089784.Spec := by
  intro n
  simp only [A235796, Nat.add_sub_cancel, A235796.P12397258716343089784.a, A235796.P5769590272751401819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A091818, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235796

/-! ## A235796.P15184381006503122283

`A024816(n+1)-C(n, 2)`
-/

namespace A235796.P15184381006503122283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) - (Nat.choose n 2 : ℤ)

end

end A235796.P15184381006503122283

namespace A235796

/-- `A024816(n+1)-C(n, 2)` -/
def P15184381006503122283.Spec : Prop :=
  ∀ n, P15184381006503122283.a n = A235796 (n + 1)

end A235796

/-! ## A235796.P17262502273077489104

`∑[2-A340793(n+1)]-1`
-/

namespace A235796.P17262502273077489104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A235796.P17262502273077489104

namespace A235796

/-- `∑[2-A340793(n+1)]-1` -/
def P17262502273077489104.Spec : Prop :=
  ∀ n, P17262502273077489104.a n = A235796 (n + 1)

end A235796

/-! ## A235796.P10727484668699183617

`4*(n+1)-A387001(n+1)`
-/

namespace A235796.P10727484668699183617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A387001 (n + 1)

end

end A235796.P10727484668699183617

namespace A235796

/-- `4*(n+1)-A387001(n+1)` -/
def P10727484668699183617.Spec : Prop :=
  ∀ n, P10727484668699183617.a n = A235796 (n + 1)

theorem P10727484668699183617.correct : P10727484668699183617.Spec := by
  intro n
  simp only [A235796, Nat.add_sub_cancel, A235796.P10727484668699183617.a, A235796.P5769590272751401819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A387001, A387001.P16811340479551848930.a, A224880, A224880.P6780601834210635688.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235796

/-! ## A235796.P465086595249497655

`n+1-A000203(n+1)+n`
-/

namespace A235796.P465086595249497655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000203 (n + 1) + (n : ℤ)

end

end A235796.P465086595249497655

namespace A235796

/-- `n+1-A000203(n+1)+n` -/
def P465086595249497655.Spec : Prop :=
  ∀ n, P465086595249497655.a n = A235796 (n + 1)

theorem P465086595249497655.correct : P465086595249497655.Spec := by
  intro n
  simp only [A235796, Nat.add_sub_cancel, A235796.P465086595249497655.a, A235796.P5769590272751401819.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A235796

/-!
# A235799: a(n) = n^2 - sigma(n).

The programs for A235799, the canonical program `A235799.P7816509240272329688` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235799 has offset 1).

The definition of A235799 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²-A000203(n+1)` (program `A235799.P7816509240272329688`, by `A235799.P7816509240272329688.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A235799.P7816509240272329688

`(n+1)²-A000203(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A235799

/-- `(n+1)²-A000203(n+1)` -/
def P7816509240272329688.Spec : Prop :=
  ∀ n, P7816509240272329688.a n = A235799 (n + 1)

theorem P7816509240272329688.correct : P7816509240272329688.Spec := by
  intro n
  simp only [A235799, Nat.add_sub_cancel]

end A235799

/-! ## A235799.P2518108065630090782

`A024816(n+1)+A000217(n)`
-/

namespace A235799.P2518108065630090782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) + A000217 n

end

end A235799.P2518108065630090782

namespace A235799

/-- `A024816(n+1)+A000217(n)` -/
def P2518108065630090782.Spec : Prop :=
  ∀ n, P2518108065630090782.a n = A235799 (n + 1)

end A235799

/-! ## A235799.P7816866999268488075

`A067436(n+1)+A153485(n+1)+A244048(n+1)`
-/

namespace A235799.P7816866999268488075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067436 (n + 1) + A153485 (n + 1) + A244048 (n + 1)

end

end A235799.P7816866999268488075

namespace A235799

/-- `A067436(n+1)+A153485(n+1)+A244048(n+1)` -/
def P7816866999268488075.Spec : Prop :=
  ∀ n, P7816866999268488075.a n = A235799 (n + 1)

end A235799

/-! ## A235799.P13278616771094570470

`∑[Δ[n²]-Δ[∑{d}[n, #]]]`
-/

namespace A235799.P13278616771094570470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235799.P13278616771094570470

namespace A235799

/-- `∑[Δ[n²]-Δ[∑{d}[n, #]]]` -/
def P13278616771094570470.Spec : Prop :=
  ∀ n, P13278616771094570470.a n = A235799 (n + 1)

end A235799

/-! ## A235799.P12817681843226702845

`(1+n)²-∑{d}[1+n, #]`
-/

namespace A235799.P12817681843226702845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 + n) ^ 2 : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A235799.P12817681843226702845

namespace A235799

/-- `(1+n)²-∑{d}[1+n, #]` -/
def P12817681843226702845.Spec : Prop :=
  ∀ n, P12817681843226702845.a n = A235799 (n + 1)

theorem P12817681843226702845.correct : P12817681843226702845.Spec := by
  intro n
  simp only [A235799, Nat.add_sub_cancel, A235799.P12817681843226702845.f1, A235799.P12817681843226702845.a, A235799.P7816509240272329688.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235799

/-! ## A235799.P5381684542680521761

`∑[2*n]-∑[Δ[∑{d}[n, #]]-1]`
-/

namespace A235799.P5381684542680521761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A235799.P5381684542680521761

namespace A235799

/-- `∑[2*n]-∑[Δ[∑{d}[n, #]]-1]` -/
def P5381684542680521761.Spec : Prop :=
  ∀ n, P5381684542680521761.a n = A235799 (n + 1)

end A235799

/-! ## A235799.P5884644627335447565

`∑[n+1-Δ[∑{d}[n, #]]]+∑[n]`
-/

namespace A235799.P5884644627335447565
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A235799.P5884644627335447565

namespace A235799

/-- `∑[n+1-Δ[∑{d}[n, #]]]+∑[n]` -/
def P5884644627335447565.Spec : Prop :=
  ∀ n, P5884644627335447565.a n = A235799 (n + 1)

end A235799

/-! ## A235799.P16333947112818736732

`∑[2*n]+n+1-∑{d}[n+1, #]`
-/

namespace A235799.P16333947112818736732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

end

end A235799.P16333947112818736732

namespace A235799

/-- `∑[2*n]+n+1-∑{d}[n+1, #]` -/
def P16333947112818736732.Spec : Prop :=
  ∀ n, P16333947112818736732.a n = A235799 (n + 1)

end A235799

/-! ## A235799.P8890513983770446664

`n*n-(∑{d}[n+1, #]-Δ[n^2])`
-/

namespace A235799.P8890513983770446664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n : ℤ) - (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

end

end A235799.P8890513983770446664

namespace A235799

/-- `n*n-(∑{d}[n+1, #]-Δ[n^2])` -/
def P8890513983770446664.Spec : Prop :=
  ∀ n, P8890513983770446664.a n = A235799 (n + 1)

theorem P8890513983770446664.correct : P8890513983770446664.Spec := by
  intro n
  simp only [A235799, Nat.add_sub_cancel, A235799.P8890513983770446664.f1, A235799.P8890513983770446664.f2, A235799.P8890513983770446664.a, A235799.P7816509240272329688.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235799

/-! ## A235799.P15496374387099378584

`A235796(n+1)+n²`
-/

namespace A235799.P15496374387099378584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) + (n ^ 2 : ℤ)

end

end A235799.P15496374387099378584

namespace A235799

/-- `A235796(n+1)+n²` -/
def P15496374387099378584.Spec : Prop :=
  ∀ n, P15496374387099378584.a n = A235799 (n + 1)

theorem P15496374387099378584.correct : P15496374387099378584.Spec := by
  intro n
  simp only [A235799, Nat.add_sub_cancel, A235799.P15496374387099378584.a, A235799.P7816509240272329688.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A235796, A235796.P5769590272751401819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235799

/-! ## A235799.P2545892322076621037

`n²-A237588(n+1)`
-/

namespace A235799.P2545892322076621037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A237588 (n + 1)

end

end A235799.P2545892322076621037

namespace A235799

/-- `n²-A237588(n+1)` -/
def P2545892322076621037.Spec : Prop :=
  ∀ n, P2545892322076621037.a n = A235799 (n + 1)

theorem P2545892322076621037.correct : P2545892322076621037.Spec := by
  intro n
  simp only [A235799, Nat.add_sub_cancel, A235799.P2545892322076621037.a, A235799.P7816509240272329688.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A237588, A237588.P10590847318200798620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235799

/-! ## A235799.P13658332954700792409

`A024816(n+1)+∑[n]`
-/

namespace A235799.P13658332954700792409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A235799.P13658332954700792409

namespace A235799

/-- `A024816(n+1)+∑[n]` -/
def P13658332954700792409.Spec : Prop :=
  ∀ n, P13658332954700792409.a n = A235799 (n + 1)

end A235799

/-! ## A235799.P15171113666152748409

`(n+1)²-Δ[A160664(n)]`
-/

namespace A235799.P15171113666152748409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A235799.P15171113666152748409

namespace A235799

/-- `(n+1)²-Δ[A160664(n)]` -/
def P15171113666152748409.Spec : Prop :=
  ∀ n, P15171113666152748409.a n = A235799 (n + 1)

end A235799

/-! ## A235799.P1470367721031692786

`A033879(n+1)+n²-1`
-/

namespace A235799.P1470367721031692786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + ((n ^ 2 : ℤ) - 1)

end

end A235799.P1470367721031692786

namespace A235799

/-- `A033879(n+1)+n²-1` -/
def P1470367721031692786.Spec : Prop :=
  ∀ n, P1470367721031692786.a n = A235799 (n + 1)

theorem P1470367721031692786.correct : P1470367721031692786.Spec := by
  intro n
  simp only [A235799, Nat.add_sub_cancel, A235799.P1470367721031692786.a, A235799.P7816509240272329688.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P5965131822542929609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235799

/-! ## A235799.P13346802227659316109

`n²-(A033880(n+1)+1)`
-/

namespace A235799.P13346802227659316109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (A033880 (n + 1) + 1)

end

end A235799.P13346802227659316109

namespace A235799

/-- `n²-(A033880(n+1)+1)` -/
def P13346802227659316109.Spec : Prop :=
  ∀ n, P13346802227659316109.a n = A235799 (n + 1)

theorem P13346802227659316109.correct : P13346802227659316109.Spec := by
  intro n
  simp only [A235799, Nat.add_sub_cancel, A235799.P13346802227659316109.a, A235799.P7816509240272329688.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235799

/-! ## A235799.P5584579490970261380

`∑[2*n]-A001065(n+1)`
-/

namespace A235799.P5584579490970261380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001065 (n + 1)

end

end A235799.P5584579490970261380

namespace A235799

/-- `∑[2*n]-A001065(n+1)` -/
def P5584579490970261380.Spec : Prop :=
  ∀ n, P5584579490970261380.a n = A235799 (n + 1)

end A235799

/-! ## A235799.P17185448783798341935

`∑[Δ[n²]-A340793(n+1)]`
-/

namespace A235799.P17185448783798341935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235799.P17185448783798341935

namespace A235799

/-- `∑[Δ[n²]-A340793(n+1)]` -/
def P17185448783798341935.Spec : Prop :=
  ∀ n, P17185448783798341935.a n = A235799 (n + 1)

end A235799

/-! ## A235799.P17801346348323798417

`n*(n+2)-A039653(n+1)`
-/

namespace A235799.P17801346348323798417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - A039653 (n + 1)

end

end A235799.P17801346348323798417

namespace A235799

/-- `n*(n+2)-A039653(n+1)` -/
def P17801346348323798417.Spec : Prop :=
  ∀ n, P17801346348323798417.a n = A235799 (n + 1)

end A235799

/-! ## A235799.P7791171896847991560

`a(n-1)+A163553(n)+n` with `a(0)=0`
-/

namespace A235799.P7791171896847991560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A163553 n + (n : ℤ))

end

end A235799.P7791171896847991560

namespace A235799

/-- `a(n-1)+A163553(n)+n` -/
def P7791171896847991560.Spec : Prop :=
  ∀ n, P7791171896847991560.a n = A235799 (n + 1)

theorem P7791171896847991560.correct : P7791171896847991560.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A235799, Nat.add_sub_cancel, A235799.P7791171896847991560.a, A235799.P7816509240272329688.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A163553, A163553.P3851183957942676447.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A235799, Nat.add_sub_cancel, A235799.P7791171896847991560.a, A235799.P7816509240272329688.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A163553, A163553.P3851183957942676447.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A235799

/-! ## A235799.P7376843220701005566

`(n+1)²-A245092(2*n+1)`
-/

namespace A235799.P7376843220701005566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A245092 (2 * n + 1)

end

end A235799.P7376843220701005566

namespace A235799

/-- `(n+1)²-A245092(2*n+1)` -/
def P7376843220701005566.Spec : Prop :=
  ∀ n, P7376843220701005566.a n = A235799 (n + 1)

end A235799

