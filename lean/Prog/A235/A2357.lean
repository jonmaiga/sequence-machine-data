import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C025

/-!
# A235700: a(n+1) = a(n) + (a(n) mod 5), a(1)=1.

The programs for A235700, the canonical program `A235700.P12679169612853868862` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235700 has offset 1).

The definition of A235700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235700.P12679169612853868862

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C026`.
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

/-! ## A235700.P1705920747124854933

`∑[A000032(and(3, 2-n))]-2`
-/

namespace A235700.P1705920747124854933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.land 3 (2 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A235700.P1705920747124854933

namespace A235700

/-- `∑[A000032(and(3, 2-n))]-2` -/
def P1705920747124854933.Spec : Prop :=
  ∀ n, P1705920747124854933.a n = A235700 (n + 1)

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

/-!
# A235701: Number of n step walks (each step +/ - 1 starting from 0) which are never more than 6 or less than -6.

The programs for A235701, there is no canonical definition to state claims against.
-/

/-! ## A235701.P348600707391175924

`A068913(A167487(n+5)-1)`
-/

namespace A235701.P348600707391175924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (A167487 (n + 5) - 1).toNat

end

end A235701.P348600707391175924

/-! ## A235701.P1703185247813080980

`A068913(A134869(n+6)+5)`
-/

namespace A235701.P1703185247813080980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (A134869 (n + 6) + 5).toNat

end

end A235701.P1703185247813080980

/-! ## A235701.P11282260766750112721

`A068913(eq[6, A002262(n)])`
-/

namespace A235701.P11282260766750112721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235701.P11282260766750112721

/-! ## A235701.P13437563015412629853

`A000079(n)-A338466(A226372(2*n+1))`
-/

namespace A235701.P13437563015412629853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A338466 (A226372 (2 * n + 1)).toNat

end

end A235701.P13437563015412629853

/-! ## A235701.P2826300214892312171

`A185283(A135343(n))`
-/

namespace A235701.P2826300214892312171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A135343 n).toNat

end

end A235701.P2826300214892312171

/-!
# A235702: Fixed points of A001175 (Pisano periods).

The programs for A235702, the canonical program `A235702.P14204163830145164762` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235702 has offset 1).

The definition of A235702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235702.P14204163830145164762

`5*a(n-1)` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A235702

/-- `5*a(n-1)` -/
def P14204163830145164762.Spec : Prop :=
  ∀ n, (P14204163830145164762.a n : ℤ) = A235702 (n + 1)

theorem P14204163830145164762.correct : P14204163830145164762.Spec := by
  intro n
  simp only [A235702, Nat.add_sub_cancel]

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

/-! ## A235704.P18223112491410042788

`(A057427(n+1)+A000065(A046641(n+1)))/(n+1)`
-/

namespace A235704.P18223112491410042788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 (n + 1) + A000065 (A046641 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A235704.P18223112491410042788

/-! ## A235704.P1648849033393678678

`(n+1)^A326188(A093178(2*n))*A072871(n+1)`
-/

namespace A235704.P1648849033393678678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A326188 (A093178 (2 * n)).toNat : ℤ) * (A072871 (n + 1) : ℚ)

end

end A235704.P1648849033393678678

/-! ## A235704.P1788359775713273640

`floor((A000065(A046641(n+1))+A006530(n+1))/(n+1))`
-/

namespace A235704.P1788359775713273640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000065 (A046641 (n + 1)).toNat + A006530 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A235704.P1788359775713273640

/-! ## A235704.P7769331776395667548

`(A000065(A046641(n+1))+A000040(n+2)%2)/(n+1)`
-/

namespace A235704.P7769331776395667548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000065 (A046641 (n + 1)).toNat + Int.tmod (A000040 (n + 2)) 2 : ℚ) / (n + 1 : ℚ)

end

end A235704.P7769331776395667548

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

The programs for A235706, the canonical program `A235706.P10237978910986662273` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235706 has offset 0).

The definition of A235706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235706.P10237978910986662273

`A094587(n)*A122431(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A235706

/-- `A094587(n)*A122431(n)` -/
def P10237978910986662273.Spec : Prop :=
  ∀ n, P10237978910986662273.a n = A235706 n

theorem P10237978910986662273.correct : P10237978910986662273.Spec := by
  intro n
  simp only [A235706]

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

/-! ## A235706.P3802287638054239034

`A122431(n)*A329154(n)`
-/

namespace A235706.P3802287638054239034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122431 n * A329154 n

end

end A235706.P3802287638054239034

namespace A235706

/-- `A122431(n)*A329154(n)` -/
def P3802287638054239034.Spec : Prop :=
  ∀ n, P3802287638054239034.a n = A235706 n

end A235706

/-!
# A235707: a(n) = floor(n^2 * log(n)).

The programs for A235707, the canonical program `A235707.P2231086236960811436` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235707 has offset 1).

The definition of A235707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235707.P2231086236960811436

`floor((n+1)²*log(n+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A235707

/-- `floor((n+1)²*log(n+1))` -/
def P2231086236960811436.Spec : Prop :=
  ∀ n, P2231086236960811436.a n = A235707 (n + 1)

theorem P2231086236960811436.correct : P2231086236960811436.Spec := by
  intro n
  simp only [A235707, Nat.add_sub_cancel]

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

/-! ## A235707.P629211825023297346

`floor(A050504((n+1)²)/2)%((n+1)^3)`
-/

namespace A235707.P629211825023297346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A050504 ((n + 1) ^ 2) : ℚ) / 2⌋ ((n + 1) ^ 3 : ℤ)

end

end A235707.P629211825023297346

namespace A235707

/-- `floor(A050504((n+1)²)/2)%((n+1)^3)` -/
def P629211825023297346.Spec : Prop :=
  ∀ n, P629211825023297346.a n = A235707 (n + 1)

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

/-! ## A235707.P15648610225755578120

`floor(A050504((n+1)²)/2)*A057427(n)`
-/

namespace A235707.P15648610225755578120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A050504 ((n + 1) ^ 2) : ℚ) / 2⌋ * A057427 n

end

end A235707.P15648610225755578120

namespace A235707

/-- `floor(A050504((n+1)²)/2)*A057427(n)` -/
def P15648610225755578120.Spec : Prop :=
  ∀ n, P15648610225755578120.a n = A235707 (n + 1)

end A235707

/-! ## A235707.P6945898699988754921

`lcm(floor(A050504((n+1)²)/2), A087960(n))`
-/

namespace A235707.P6945898699988754921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(A050504 ((n + 1) ^ 2) : ℚ) / 2⌋ (A087960 n)

end

end A235707.P6945898699988754921

namespace A235707

/-- `lcm(floor(A050504((n+1)²)/2), A087960(n))` -/
def P6945898699988754921.Spec : Prop :=
  ∀ n, (P6945898699988754921.a n : ℤ) = A235707 (n + 1)

end A235707

/-! ## A235707.P9903438246518921624

`floor(A050504((n+1)²)/2)*A000034(2*n)`
-/

namespace A235707.P9903438246518921624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A050504 ((n + 1) ^ 2) : ℚ) / 2⌋ * A000034 (2 * n)

end

end A235707.P9903438246518921624

namespace A235707

/-- `floor(A050504((n+1)²)/2)*A000034(2*n)` -/
def P9903438246518921624.Spec : Prop :=
  ∀ n, P9903438246518921624.a n = A235707 (n + 1)

end A235707

/-! ## A235707.P16663770751694806193

`floor(A050504((n+1)²)/2)/A010684(2*n)`
-/

namespace A235707.P16663770751694806193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A050504 ((n + 1) ^ 2) : ℚ) / 2⌋ : ℚ) / (A010684 (2 * n) : ℚ)

end

end A235707.P16663770751694806193

namespace A235707

/-- `floor(A050504((n+1)²)/2)/A010684(2*n)` -/
def P16663770751694806193.Spec : Prop :=
  ∀ n, P16663770751694806193.a n = (A235707 (n + 1) : ℚ)

end A235707

/-! ## A235707.P6954277160967470398

`A007318(and(1, -n))*floor(A050504((n+1)²)/2)`
-/

namespace A235707.P6954277160967470398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * ⌊(A050504 ((n + 1) ^ 2) : ℚ) / 2⌋

end

end A235707.P6954277160967470398

namespace A235707

/-- `A007318(and(1, -n))*floor(A050504((n+1)²)/2)` -/
def P6954277160967470398.Spec : Prop :=
  ∀ n, P6954277160967470398.a n = A235707 (n + 1)

end A235707

/-! ## A235707.P13953675913064254269

`floor(A050504((n+1)²)/2)*A000010(C(2, n)!)`
-/

namespace A235707.P13953675913064254269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A050504 ((n + 1) ^ 2) : ℚ) / 2⌋ * A000010 (Nat.factorial (Nat.choose 2 n))

end

end A235707.P13953675913064254269

namespace A235707

/-- `floor(A050504((n+1)²)/2)*A000010(C(2, n)!)` -/
def P13953675913064254269.Spec : Prop :=
  ∀ n, P13953675913064254269.a n = A235707 (n + 1)

end A235707

/-! ## A235707.P1541034521962143388

`A008683(8*n+4)+floor(A050504((n+1)²)/2)`
-/

namespace A235707.P1541034521962143388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * n + 4) + ⌊(A050504 ((n + 1) ^ 2) : ℚ) / 2⌋

end

end A235707.P1541034521962143388

namespace A235707

/-- `A008683(8*n+4)+floor(A050504((n+1)²)/2)` -/
def P1541034521962143388.Spec : Prop :=
  ∀ n, P1541034521962143388.a n = A235707 (n + 1)

end A235707

/-! ## A235707.P11612113371635960022

`floor(A050504((n+1)²)/2)+Δ[A000040(n+2)]%2`
-/

namespace A235707.P11612113371635960022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A050504 ((n + 1) ^ 2) : ℚ) / 2⌋ + Int.tmod (f1 (n + 1) - f1 n) 2

end

end A235707.P11612113371635960022

namespace A235707

/-- `floor(A050504((n+1)²)/2)+Δ[A000040(n+2)]%2` -/
def P11612113371635960022.Spec : Prop :=
  ∀ n, P11612113371635960022.a n = A235707 (n + 1)

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

/-! ## A235708.P13540273998866112891

`gcd(A168382(n+1), A339500(A003557(n+2)))`
-/

namespace A235708.P13540273998866112891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168382 (n + 1)) (A339500 (A003557 (n + 2)).toNat)

end

end A235708.P13540273998866112891

/-!
# A235711: Arithmetic derivative of quarter squares.

The programs for A235711, the canonical program `A235711.P5553264463072486028` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235711 has offset 0).

The definition of A235711 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A235711.P5553264463072486028

`A003415(A002620(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A235711

/-- `A003415(A002620(n))` -/
def P5553264463072486028.Spec : Prop :=
  ∀ n, P5553264463072486028.a n = A235711 n

theorem P5553264463072486028.correct : P5553264463072486028.Spec := by
  intro n
  simp only [A235711]

end A235711

/-! ## A235711.P10886604004988306168

`∑{d}[A002620(n), A300251(#)]`
-/

namespace A235711.P10886604004988306168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A235711.P10886604004988306168

namespace A235711

/-- `∑{d}[A002620(n), A300251(#)]` -/
def P10886604004988306168.Spec : Prop :=
  ∀ n, P10886604004988306168.a n = A235711 n

end A235711

/-! ## A235711.P4700245927796669875

`∑{d}[∑[A004526(n)], A300251(#)]`
-/

namespace A235711.P4700245927796669875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A235711.P4700245927796669875

namespace A235711

/-- `∑{d}[∑[A004526(n)], A300251(#)]` -/
def P4700245927796669875.Spec : Prop :=
  ∀ n, P4700245927796669875.a n = A235711 n

end A235711

/-! ## A235711.P16526878249361038073

`∑{d}[∑[A008619(n)-1], A300251(#)]`
-/

namespace A235711.P16526878249361038073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A235711.P16526878249361038073

namespace A235711

/-- `∑{d}[∑[A008619(n)-1], A300251(#)]` -/
def P16526878249361038073.Spec : Prop :=
  ∀ n, P16526878249361038073.a n = A235711 n

end A235711

/-! ## A235711.P12941641463605305043

`∑{d}[A008838(A008574(n)), A300251(#)]`
-/

namespace A235711.P12941641463605305043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A235711.P12941641463605305043

namespace A235711

/-- `∑{d}[A008838(A008574(n)), A300251(#)]` -/
def P12941641463605305043.Spec : Prop :=
  ∀ n, P12941641463605305043.a n = A235711 n

end A235711

/-! ## A235711.P1753239201678738079

`∑{d}[A008838(A008586(n)), A300251(#)]`
-/

namespace A235711.P1753239201678738079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 (A008586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A235711.P1753239201678738079

namespace A235711

/-- `∑{d}[A008838(A008586(n)), A300251(#)]` -/
def P1753239201678738079.Spec : Prop :=
  ∀ n, P1753239201678738079.a n = A235711 n

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

end A235711

/-! ## A235711.P9311905248205803627

`A003415(∑[and(n, -2)/2])%A072338(n)`
-/

namespace A235711.P9311905248205803627
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) (A072338 n)

end

end A235711.P9311905248205803627

namespace A235711

/-- `A003415(∑[and(n, -2)/2])%A072338(n)` -/
def P9311905248205803627.Spec : Prop :=
  ∀ n, P9311905248205803627.a n = A235711 n

end A235711

/-! ## A235711.P12633753412674751237

`A003415(∑[n-∑[n%2]])%A072338(n)`
-/

namespace A235711.P12633753412674751237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A072338 n)

end

end A235711.P12633753412674751237

namespace A235711

/-- `A003415(∑[n-∑[n%2]])%A072338(n)` -/
def P12633753412674751237.Spec : Prop :=
  ∀ n, P12633753412674751237.a n = A235711 n

end A235711

/-! ## A235711.P12237031392942767116

`A003415(A056822(2*n))%A072338(n)`
-/

namespace A235711.P12237031392942767116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A056822 (2 * n)).toNat) (A072338 n)

end

end A235711.P12237031392942767116

namespace A235711

/-- `A003415(A056822(2*n))%A072338(n)` -/
def P12237031392942767116.Spec : Prop :=
  ∀ n, P12237031392942767116.a n = A235711 n

end A235711

/-! ## A235711.P11357648418078039855

`A003415(sqrt(A030179(n)))%A214092(n+1)`
-/

namespace A235711.P11357648418078039855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (SequenceMachineLib.roundAway (Real.sqrt (A030179 n : ℝ))).toNat) (A214092 (n + 1))

end

end A235711.P11357648418078039855

namespace A235711

/-- `A003415(sqrt(A030179(n)))%A214092(n+1)` -/
def P11357648418078039855.Spec : Prop :=
  ∀ n, P11357648418078039855.a n = A235711 n

end A235711

/-! ## A235711.P16247031899999783917

`A003415(∑[A004526(n)])%A214092(n+1)`
-/

namespace A235711.P16247031899999783917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A214092 (n + 1))

end

end A235711.P16247031899999783917

namespace A235711

/-- `A003415(∑[A004526(n)])%A214092(n+1)` -/
def P16247031899999783917.Spec : Prop :=
  ∀ n, P16247031899999783917.a n = A235711 n

end A235711

/-! ## A235711.P7688293902244738427

`A003415(A008217(2*n+1))%A007096(n)`
-/

namespace A235711.P7688293902244738427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A008217 (2 * n + 1)).toNat) (A007096 n)

end

end A235711.P7688293902244738427

namespace A235711

/-- `A003415(A008217(2*n+1))%A007096(n)` -/
def P7688293902244738427.Spec : Prop :=
  ∀ n, P7688293902244738427.a n = A235711 n

end A235711

/-! ## A235711.P10888516572948129838

`A003415(∑[A002265(2*n)])%A214092(n+1)`
-/

namespace A235711.P10888516572948129838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A214092 (n + 1))

end

end A235711.P10888516572948129838

namespace A235711

/-- `A003415(∑[A002265(2*n)])%A214092(n+1)` -/
def P10888516572948129838.Spec : Prop :=
  ∀ n, P10888516572948129838.a n = A235711 n

end A235711

/-! ## A235711.P10269115169616405126

`A003415(A002265(n²))%A214092(n+1)`
-/

namespace A235711.P10269115169616405126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A002265 (n ^ 2)).toNat) (A214092 (n + 1))

end

end A235711.P10269115169616405126

namespace A235711

/-- `A003415(A002265(n²))%A214092(n+1)` -/
def P10269115169616405126.Spec : Prop :=
  ∀ n, P10269115169616405126.a n = A235711 n

end A235711

/-!
# A235715: a(n) = number of times (n-1) occurs in the fundamental period of Fibonacci numbers modulo n.

The programs for A235715, there is no canonical definition to state claims against.
-/

/-! ## A235715.P3600284349582272204

`A128924(∑[n+1])`
-/

namespace A235715.P3600284349582272204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128924 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A235715.P3600284349582272204

/-! ## A235715.P13522060663022287690

`dr(A128924(Δ[A000292(n)]))`
-/

namespace A235715.P13522060663022287690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A128924 (f1 (n + 1) - f1 n).toNat)

end

end A235715.P13522060663022287690

/-! ## A235715.P1042270034989917452

`dr(A128924(record[A008795(n)]))`
-/

namespace A235715.P1042270034989917452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A128924 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A235715.P1042270034989917452

/-! ## A235715.P4437121971446039274

`dr(A128924(A000096(n)+1))`
-/

namespace A235715.P4437121971446039274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A128924 (A000096 n + 1).toNat)

end

end A235715.P4437121971446039274

/-! ## A235715.P17039487125191455159

`dr(A128924(A000217(n+1)))`
-/

namespace A235715.P17039487125191455159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A128924 (A000217 (n + 1)).toNat)

end

end A235715.P17039487125191455159

/-! ## A235715.P3392121975245738860

`dr(A128924(A161680(n+2)))`
-/

namespace A235715.P3392121975245738860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A128924 (A161680 (n + 2)).toNat)

end

end A235715.P3392121975245738860

/-! ## A235715.P9611666970090029895

`dr(A128924(∑[A008619(2*n)]))`
-/

namespace A235715.P9611666970090029895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A128924 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A235715.P9611666970090029895

/-!
# A235716: Average of twin prime pairs n having their decimal expansion of the form abcabc or abcabc0 such that n contains three twin primes as divisors.

The programs for A235716, there is no canonical definition to state claims against.
-/

/-! ## A235716.P13745390657715135313

`A060232(n+1)+1`
-/

namespace A235716.P13745390657715135313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060232 (n + 1) + 1

end

end A235716.P13745390657715135313

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

/-! ## A235717.P15459051318122424998

`A018885(n+5)`
-/

namespace A235717.P15459051318122424998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018885 (n + 5)

end

end A235717.P15459051318122424998

/-! ## A235717.P7021604010480196050

`A016069(n+1)^A020639(2*(n+1))`
-/

namespace A235717.P7021604010480196050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016069 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A235717.P7021604010480196050

/-! ## A235717.P18047515968945460049

`A016069(n+1)^A000005(A053998(n))`
-/

namespace A235717.P18047515968945460049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016069 (n + 1) : ℚ) ^ (A000005 (A053998 n).toNat : ℤ)

end

end A235717.P18047515968945460049

/-! ## A235717.P15668052161114022183

`A016069(n+1)^A000005(A053999(n))`
-/

namespace A235717.P15668052161114022183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016069 (n + 1) : ℚ) ^ (A000005 (A053999 n).toNat : ℤ)

end

end A235717.P15668052161114022183

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

/-! ## A235718.P978802295791148514

`A054031(n+1)^A020639(A054002(n+1))`
-/

namespace A235718.P978802295791148514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054031 (n + 1) : ℚ) ^ (A020639 (A054002 (n + 1)).toNat : ℤ)

end

end A235718.P978802295791148514

/-! ## A235718.P8835589606009382329

`A054031(n+1)*A054031((n+1)%A054031(n+1))`
-/

namespace A235718.P8835589606009382329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054031 (n + 1) * A054031 (Int.tmod (n + 1 : ℤ) (A054031 (n + 1))).toNat

end

end A235718.P8835589606009382329

/-! ## A235718.P7417393984782417423

`A011264(A014963(n+1))*A054031(n+1)*A054031(n+1)`
-/

namespace A235718.P7417393984782417423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011264 (A014963 (n + 1)).toNat * A054031 (n + 1) * A054031 (n + 1)

end

end A235718.P7417393984782417423

/-! ## A235718.P8459730176479044163

`A054031(n+1)*A054031((n+1)%A272567(n))`
-/

namespace A235718.P8459730176479044163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054031 (n + 1) * A054031 (Int.tmod (n + 1 : ℤ) (A272567 n)).toNat

end

end A235718.P8459730176479044163

/-! ## A235718.P2488007608543569289

`A054031(n+1)^A020639(A054006(n+1))`
-/

namespace A235718.P2488007608543569289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054031 (n + 1) : ℚ) ^ (A020639 (A054006 (n + 1)).toNat : ℤ)

end

end A235718.P2488007608543569289

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

/-! ## A235718.P11063761252113721419

`A000290(eq[1, A309432(n)-2])`
-/

namespace A235718.P11063761252113721419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309432 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235718.P11063761252113721419

/-! ## A235718.P18236274933588336817

`∩[A031962(n+1), n²]`
-/

namespace A235718.P18236274933588336817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A235718.P18236274933588336817

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

/-! ## A235719.P12194912584100447214

`A054032(A000027(n+1))*A054032(n+1)`
-/

namespace A235719.P12194912584100447214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054032 (A000027 (n + 1)).toNat * A054032 (n + 1)

end

end A235719.P12194912584100447214

/-! ## A235719.P5735692333818000278

`A054032(n+1)^A020639(A054002(n+1))`
-/

namespace A235719.P5735692333818000278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054032 (n + 1) : ℚ) ^ (A020639 (A054002 (n + 1)).toNat : ℤ)

end

end A235719.P5735692333818000278

/-! ## A235719.P134789896264511428

`A054032(n+1)%A054032(n+2)*A054032(n+1)`
-/

namespace A235719.P134789896264511428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054032 (n + 1)) (A054032 (n + 2)) * A054032 (n + 1)

end

end A235719.P134789896264511428

/-! ## A235719.P14985627293229906850

`A054032(n+1)^A000005(A000040(n+1))`
-/

namespace A235719.P14985627293229906850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054032 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A235719.P14985627293229906850

/-! ## A235719.P10734765804645174087

`A054032(A008619(2*n))*A054032(n+1)`
-/

namespace A235719.P10734765804645174087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054032 (A008619 (2 * n)).toNat * A054032 (n + 1)

end

end A235719.P10734765804645174087

/-! ## A235719.P13714557131474928639

`A054032(n+1)^A020639(A054006(n+1))`
-/

namespace A235719.P13714557131474928639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054032 (n + 1) : ℚ) ^ (A020639 (A054006 (n + 1)).toNat : ℤ)

end

end A235719.P13714557131474928639

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

/-! ## A235719.P5745130798920481744

`A000290(eq[2, A309432(n)/2])`
-/

namespace A235719.P5745130798920481744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309432 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A235719.P5745130798920481744

/-! ## A235719.P1379713384662903352

`A000290(A054032(2*(n+1)-(n+1)))`
-/

namespace A235719.P1379713384662903352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A054032 (2 * (n + 1) - (n + 1))).toNat

end

end A235719.P1379713384662903352

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

/-! ## A235720.P7939156725040781280

`A054033(n+1)^A153310(∑[-a(n-1)])` with `a(0)=3`
-/

namespace A235720.P7939156725040781280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054033 (n + 1) : ℚ) ^ (A153310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ)

end

end A235720.P7939156725040781280

/-! ## A235720.P807762483004667050

`A054033(A000027(n+1))*A054033(n+1)`
-/

namespace A235720.P807762483004667050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054033 (A000027 (n + 1)).toNat * A054033 (n + 1)

end

end A235720.P807762483004667050

/-! ## A235720.P8672268591889755475

`A054033(n+1)^A020639(A054002(n+1))`
-/

namespace A235720.P8672268591889755475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054033 (n + 1) : ℚ) ^ (A020639 (A054002 (n + 1)).toNat : ℤ)

end

end A235720.P8672268591889755475

/-! ## A235720.P10646894945721513521

`A054033(n+1)^A153310(val(A141056(n), 9))`
-/

namespace A235720.P10646894945721513521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054033 (n + 1) : ℚ) ^ (A153310 (SequenceMachineLib.valuation (A141056 n).toNat 9) : ℤ)

end

end A235720.P10646894945721513521

/-! ## A235720.P14994325313369742832

`A054033(n+1)*A054033((n+1)%A054031(n+1))`
-/

namespace A235720.P14994325313369742832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054033 (n + 1) * A054033 (Int.tmod (n + 1 : ℤ) (A054031 (n + 1))).toNat

end

end A235720.P14994325313369742832

/-! ## A235720.P304558495384786166

`(A054033(n+1)+char[A054038(n+1)])*A054033(n+1)`
-/

namespace A235720.P304558495384786166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054038 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054033 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A054033 (n + 1)

end

end A235720.P304558495384786166

/-! ## A235720.P543421433578138903

`A054033(n+1)^A141056(2*n+1)`
-/

namespace A235720.P543421433578138903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054033 (n + 1) : ℚ) ^ (A141056 (2 * n + 1) : ℤ)

end

end A235720.P543421433578138903

/-! ## A235720.P360315848725152405

`A054033(n+1)^A020639(A054006(n+1))`
-/

namespace A235720.P360315848725152405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054033 (n + 1) : ℚ) ^ (A020639 (A054006 (n + 1)).toNat : ℤ)

end

end A235720.P360315848725152405

/-! ## A235720.P200577908080955517

`A054033(n+1)^A020639(A054000(n+4))`
-/

namespace A235720.P200577908080955517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054033 (n + 1) : ℚ) ^ (A020639 (A054000 (n + 4)).toNat : ℤ)

end

end A235720.P200577908080955517

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

/-! ## A235721.P13424884679468506297

`A054034(n+1)^A001316(A001316(n))`
-/

namespace A235721.P13424884679468506297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054034 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A235721.P13424884679468506297

/-! ## A235721.P9374796034475032270

`A054034(n+1)^A020639(A133265(n))`
-/

namespace A235721.P9374796034475032270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054034 (n + 1) : ℚ) ^ (A020639 (A133265 n).toNat : ℤ)

end

end A235721.P9374796034475032270

/-! ## A235721.P9886511734438597143

`A054034(A000027(n+1))*A054034(n+1)`
-/

namespace A235721.P9886511734438597143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054034 (A000027 (n + 1)).toNat * A054034 (n + 1)

end

end A235721.P9886511734438597143

/-! ## A235721.P3475125661267993705

`A054034(n+1)^A020639(A054002(n+1))`
-/

namespace A235721.P3475125661267993705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054034 (n + 1) : ℚ) ^ (A020639 (A054002 (n + 1)).toNat : ℤ)

end

end A235721.P3475125661267993705

/-! ## A235721.P8214296055325282599

`A054034(n+1)^A020639(A054844(n+1))`
-/

namespace A235721.P8214296055325282599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054034 (n + 1) : ℚ) ^ (A020639 (A054844 (n + 1)).toNat : ℤ)

end

end A235721.P8214296055325282599

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

/-! ## A235721.P17453627023389515643

`A054034(n+1)^A000005(A283454(n+1))`
-/

namespace A235721.P17453627023389515643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054034 (n + 1) : ℚ) ^ (A000005 (A283454 (n + 1)).toNat : ℤ)

end

end A235721.P17453627023389515643

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

/-! ## A235722.P2532706221762793278

`A054035(n+1)^A078880(Δ[floor(ϕ*n)])`
-/

namespace A235722.P2532706221762793278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054035 (n + 1) : ℚ) ^ (A078880 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A235722.P2532706221762793278

/-! ## A235722.P14932968388217475186

`A054035(A000027(n+1))*A054035(n+1)`
-/

namespace A235722.P14932968388217475186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054035 (A000027 (n + 1)).toNat * A054035 (n + 1)

end

end A235722.P14932968388217475186

/-! ## A235722.P6688218284640005971

`A054035(n+1)^A020639(A054002(n+1))`
-/

namespace A235722.P6688218284640005971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054035 (n + 1) : ℚ) ^ (A020639 (A054002 (n + 1)).toNat : ℤ)

end

end A235722.P6688218284640005971

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

/-! ## A235722.P15643283817340295465

`A054035(A001057(2*n+1))*A054035(n+1)`
-/

namespace A235722.P15643283817340295465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054035 (A001057 (2 * n + 1)).toNat * A054035 (n + 1)

end

end A235722.P15643283817340295465

/-! ## A235722.P11882194151733731700

`A054035(n+1)^A020639(A054006(n+1))`
-/

namespace A235722.P11882194151733731700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054035 (n + 1) : ℚ) ^ (A020639 (A054006 (n + 1)).toNat : ℤ)

end

end A235722.P11882194151733731700

/-! ## A235722.P27429656313481538

`A000290(A054035(2*(n+1)-(n+1)))`
-/

namespace A235722.P27429656313481538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A054035 (2 * (n + 1) - (n + 1))).toNat

end

end A235722.P27429656313481538

/-! ## A235722.P13572776395366576659

`A054035(n+1)^∏{e}[A053998(n), #+1]`
-/

namespace A235722.P13572776395366576659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054035 (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A235722.P13572776395366576659

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

/-! ## A235723.P4772574801352965931

`A054036(n+1)^A020639(2*(n+1))`
-/

namespace A235723.P4772574801352965931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054036 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A235723.P4772574801352965931

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

/-! ## A235723.P1488952780353537863

`A054036(n+1)^A000005(A008578(n+2))`
-/

namespace A235723.P1488952780353537863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054036 (n + 1) : ℚ) ^ (A000005 (A008578 (n + 2)).toNat : ℤ)

end

end A235723.P1488952780353537863

/-! ## A235723.P16479084027381364867

`A054036(n+1)^A000005(A053998(n))`
-/

namespace A235723.P16479084027381364867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054036 (n + 1) : ℚ) ^ (A000005 (A053998 n).toNat : ℤ)

end

end A235723.P16479084027381364867

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

/-! ## A235724.P1686671165268710533

`A054037(n+1)^A020639(2*(n+1))`
-/

namespace A235724.P1686671165268710533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054037 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A235724.P1686671165268710533

/-! ## A235724.P5026898413826197678

`A054037(n+1)^(2%A054031(n+1))`
-/

namespace A235724.P5026898413826197678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054037 (n + 1) : ℚ) ^ (Int.tmod 2 (A054031 (n + 1)) : ℤ)

end

end A235724.P5026898413826197678

/-! ## A235724.P3035619355459242154

`A054037(A000027(n+1))*A054037(n+1)`
-/

namespace A235724.P3035619355459242154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054037 (A000027 (n + 1)).toNat * A054037 (n + 1)

end

end A235724.P3035619355459242154

/-! ## A235724.P10225069568689257403

`A054037(n+1)^A001222(A001358(n+1))`
-/

namespace A235724.P10225069568689257403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054037 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A235724.P10225069568689257403

/-! ## A235724.P198063916868245600

`A054037(n+1)^A000005(A008578(n+2))`
-/

namespace A235724.P198063916868245600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054037 (n + 1) : ℚ) ^ (A000005 (A008578 (n + 2)).toNat : ℤ)

end

end A235724.P198063916868245600

/-! ## A235724.P1578747650760089348

`A054037(n+1)^A000005(A000355(n+1))`
-/

namespace A235724.P1578747650760089348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054037 (n + 1) : ℚ) ^ (A000005 (A000355 (n + 1)).toNat : ℤ)

end

end A235724.P1578747650760089348

/-! ## A235724.P14736898129677929936

`A054037(n+1)^A000005(A053998(n))`
-/

namespace A235724.P14736898129677929936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054037 (n + 1) : ℚ) ^ (A000005 (A053998 n).toNat : ℤ)

end

end A235724.P14736898129677929936

/-!
# A235726: Lexicographically earliest sequence of positive integers such that a(nm) != a(n + m) for all positive integers n and m such that nm != n + m.

The programs for A235726, there is no canonical definition to state claims against.
-/

/-! ## A235726.P250893288650431716

`A285325(A285324(n+1))%p?[A008288(n)]`
-/

namespace A235726.P250893288650431716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285325 (A285324 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A235726.P250893288650431716

/-! ## A235726.P2419164343832505099

`A051162(A285324(n+1))%A341542(n+1)`
-/

namespace A235726.P2419164343832505099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051162 (A285324 (n + 1)).toNat) (A341542 (n + 1))

end

end A235726.P2419164343832505099

/-! ## A235726.P17739413313412956970

`A134478(A285324(n+1))%A285319(n+1)`
-/

namespace A235726.P17739413313412956970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134478 (A285324 (n + 1)).toNat) (A285319 (n + 1))

end

end A235726.P17739413313412956970

/-! ## A235726.P8386065549509750150

`A285325(A285324(n+1)%A285319(n+1))`
-/

namespace A235726.P8386065549509750150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285325 (Int.tmod (A285324 (n + 1)) (A285319 (n + 1))).toNat

end

end A235726.P8386065549509750150

/-! ## A235726.P7896759167322563846

`A001221(A299053(A193267(n+1)))`
-/

namespace A235726.P7896759167322563846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A299053 (A193267 (n + 1)).toNat).toNat

end

end A235726.P7896759167322563846

/-!
# A235729: Number of (n+1) X (n+1) 0..1 arrays with the sum of each 2 X 2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235729, there is no canonical definition to state claims against.
-/

/-! ## A235729.P1277403495945142033

`A235736((n+1)²+n²)`
-/

namespace A235729.P1277403495945142033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 ((n + 1) ^ 2 + n ^ 2)

end

end A235729.P1277403495945142033

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

/-! ## A235730.P3279814027658499905

`A235736(A133263(n+1))%A235512(n+1)`
-/

namespace A235730.P3279814027658499905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235736 (A133263 (n + 1)).toNat) (A235512 (n + 1))

end

end A235730.P3279814027658499905

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

/-! ## A235731.P9905885131741591391

`lcm(A033999(n), A235736(A167614(n+1)))`
-/

namespace A235731.P9905885131741591391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A235736 (A167614 (n + 1)).toNat)

end

end A235731.P9905885131741591391

/-! ## A235731.P3679603223479712830

`or(A000007(n), A235736(A167614(n+1)))`
-/

namespace A235731.P3679603223479712830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A235736 (A167614 (n + 1)).toNat)

end

end A235731.P3679603223479712830

/-! ## A235731.P17838428900808832417

`A235736(A167614(n+1))%A235513(n+1)`
-/

namespace A235731.P17838428900808832417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235736 (A167614 (n + 1)).toNat) (A235513 (n + 1))

end

end A235731.P17838428900808832417

/-! ## A235731.P14784560963131952332

`or(A083894(n+1), A235736(A167614(n+1)))`
-/

namespace A235731.P14784560963131952332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083894 (n + 1)) (A235736 (A167614 (n + 1)).toNat)

end

end A235731.P14784560963131952332

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

/-! ## A235732.P3083109604854222225

`A235736(A052905(n)+9)`
-/

namespace A235732.P3083109604854222225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (A052905 n + 9).toNat

end

end A235732.P3083109604854222225

/-! ## A235732.P6060332230838978615

`A235736(A055999(n)+10)`
-/

namespace A235732.P6060332230838978615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (A055999 n + 10).toNat

end

end A235732.P6060332230838978615

/-! ## A235732.P14811340299219537238

`A235736(A167614(n+2)+1)`
-/

namespace A235732.P14811340299219537238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (A167614 (n + 2) + 1).toNat

end

end A235732.P14811340299219537238

/-! ## A235732.P6533456399449221916

`A235736(eq[3, A002262(n)]+1)`
-/

namespace A235732.P6533456399449221916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A235732.P6533456399449221916

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

/-! ## A235733.P1115139276696876572

`A235736(A167499(n+3))`
-/

namespace A235733.P1115139276696876572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (A167499 (n + 3)).toNat

end

end A235733.P1115139276696876572

/-! ## A235733.P16253171946983577332

`A235736(A000217(n+4)+5)`
-/

namespace A235733.P16253171946983577332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (A000217 (n + 4) + 5).toNat

end

end A235733.P16253171946983577332

/-! ## A235733.P6426193725491812177

`A235736(eq[4, A002262(n)]+1)`
-/

namespace A235733.P6426193725491812177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A235733.P6426193725491812177

/-! ## A235733.P10567854483127041938

`A235736(eq[6, A131818(n+1)])`
-/

namespace A235733.P10567854483127041938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235733.P10567854483127041938

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

/-! ## A235734.P12080256589064061992

`A235736(Δ[A264443(n)]+10)`
-/

namespace A235734.P12080256589064061992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (f1 (n + 1) - f1 n + 10).toNat

end

end A235734.P12080256589064061992

/-! ## A235734.P12459816278711087107

`A235736(A167499(n+4)+1)`
-/

namespace A235734.P12459816278711087107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (A167499 (n + 4) + 1).toNat

end

end A235734.P12459816278711087107

/-! ## A235734.P193921076974645254

`A235736(eq[7, A131818(n+1)])`
-/

namespace A235734.P193921076974645254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235734.P193921076974645254

/-! ## A235734.P2477134394250478779

`A235736(A052905(n+3))`
-/

namespace A235734.P2477134394250478779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (A052905 (n + 3)).toNat

end

end A235734.P2477134394250478779

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

/-! ## A235735.P10137551505502101062

`A235736(eq[8, A131818(n+1)])`
-/

namespace A235735.P10137551505502101062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235735.P10137551505502101062

/-! ## A235735.P6546553609510669118

`A235736(eq[6, A193592(n)])`
-/

namespace A235735.P6546553609510669118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235735.P6546553609510669118

/-! ## A235735.P2883504544690797782

`A235736(A052905(n+4)-1)`
-/

namespace A235735.P2883504544690797782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (A052905 (n + 4) - 1).toNat

end

end A235735.P2883504544690797782

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

/-! ## A235738.P2508095258516706561

`or(A235046(n), A235742(A000096(n+1)))`
-/

namespace A235738.P2508095258516706561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A235046 n) (A235742 (A000096 (n + 1)).toNat)

end

end A235738.P2508095258516706561

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

/-! ## A235739.P11423522909722863926

`A235742(A167614(n+1))+A011856(n)`
-/

namespace A235739.P11423522909722863926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235742 (A167614 (n + 1)).toNat + A011856 n

end

end A235739.P11423522909722863926

/-! ## A235739.P16229591538785150330

`A235742(A167614(n+1))+A051058(n)`
-/

namespace A235739.P16229591538785150330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235742 (A167614 (n + 1)).toNat + A051058 n

end

end A235739.P16229591538785150330

/-! ## A235739.P15425641013404862727

`A235742(A167614(n+1))+A107846(n)`
-/

namespace A235739.P15425641013404862727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235742 (A167614 (n + 1)).toNat + A107846 n

end

end A235739.P15425641013404862727

/-! ## A235739.P14685431916356877622

`A326591(n)+A235742(A167614(n+1))`
-/

namespace A235739.P14685431916356877622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326591 n + A235742 (A167614 (n + 1)).toNat

end

end A235739.P14685431916356877622

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

/-! ## A235740.P17809821735988336725

`A235742(A052905(n)+9)`
-/

namespace A235740.P17809821735988336725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235742 (A052905 n + 9).toNat

end

end A235740.P17809821735988336725

/-! ## A235740.P3519195563969459567

`A235742(A055999(n)+10)`
-/

namespace A235740.P3519195563969459567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235742 (A055999 n + 10).toNat

end

end A235740.P3519195563969459567

/-! ## A235740.P9030054052013525181

`A235742(A167614(n+2)+1)`
-/

namespace A235740.P9030054052013525181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235742 (A167614 (n + 2) + 1).toNat

end

end A235740.P9030054052013525181

/-! ## A235740.P8275418022933344435

`A235742(eq[5, A131818(n+1)])`
-/

namespace A235740.P8275418022933344435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235740.P8275418022933344435

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

/-! ## A235741.P12542075340413350550

`A235742(Δ[A023545(n+1)])`
-/

namespace A235741.P12542075340413350550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235742 (f1 (n + 1) - f1 n).toNat

end

end A235741.P12542075340413350550

/-!
# A235743: Primes p(k) such that p(k) + p(k+3) = p(k+1) + p(k+2) + 4.

The programs for A235743, the canonical program `A235743.P3971823922931559072` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235743 has offset 1).

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

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A235743

/-- `A000040(eq[A031131(n+1)+4, A031131(n+2)]+1)` -/
def P3971823922931559072.Spec : Prop :=
  ∀ n, P3971823922931559072.a n = A235743 (n + 1)

theorem P3971823922931559072.correct : P3971823922931559072.Spec := by
  intro n
  simp only [A235743, Nat.add_sub_cancel]

end A235743

/-! ## A235743.P11619629053937473407

`A000040(eq[4, A036263(n+2)+A036263(n+1)]+1)`
-/

namespace A235743.P11619629053937473407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 2) + A036263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A235743.P11619629053937473407

namespace A235743

/-- `A000040(eq[4, A036263(n+2)+A036263(n+1)]+1)` -/
def P11619629053937473407.Spec : Prop :=
  ∀ n, P11619629053937473407.a n = A235743 (n + 1)

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

/-! ## A235746.P18179212834412827325

`A235747(A000124(n+4)-(n+1))`
-/

namespace A235746.P18179212834412827325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235747 (A000124 (n + 4) - (n + 1 : ℤ)).toNat

end

end A235746.P18179212834412827325

/-!
# A235748: Ruler function associated with the set of permutations generated by cyclic shift, array read by rows.

The programs for A235748, there is no canonical definition to state claims against.
-/

/-! ## A235748.P12065054400169801929

`A235757(comp[Δ[A127054(n)]])`
-/

namespace A235748.P12065054400169801929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235757 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A235748.P12065054400169801929

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

/-! ## A235748.P11047910265459934237

`gcd(A002379(A183063(n+1)), A258206(n+1))`
-/

namespace A235748.P11047910265459934237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002379 (A183063 (n + 1)).toNat) (A258206 (n + 1))

end

end A235748.P11047910265459934237

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

/-! ## A235749.P8672588038733913117

`and(-1, A235815(A000124(n)))`
-/

namespace A235749.P8672588038733913117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A235815 (A000124 n).toNat)

end

end A235749.P8672588038733913117

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

/-! ## A235749.P13770528510877836547

`record[A010054(n)*A235752(n+1)]`
-/

namespace A235749.P13770528510877836547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235749.P13770528510877836547

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

/-! ## A235750.P15504430965982063200

`record[gcd(A235752(n+3), A274581(n+1))]`
-/

namespace A235750.P15504430965982063200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A235752 (n + 3)) (A274581 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235750.P15504430965982063200

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

/-! ## A235751.P6326939157261497811

`A235752(A167614(n+1))+char[12]`
-/

namespace A235751.P6326939157261497811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235752 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A235751.P6326939157261497811

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

/-! ## A235754.P4904426053778115014

`A235756(A167614(n+1))+A033665(n)`
-/

namespace A235754.P4904426053778115014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235756 (A167614 (n + 1)).toNat + A033665 n

end

end A235754.P4904426053778115014

/-! ## A235754.P16995335700033540073

`A235756(A167614(n+1))+A086016(n)`
-/

namespace A235754.P16995335700033540073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235756 (A167614 (n + 1)).toNat + A086016 n

end

end A235754.P16995335700033540073

/-! ## A235754.P1972206456065706957

`A235756(A167614(n+1))+A102683(n)`
-/

namespace A235754.P1972206456065706957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235756 (A167614 (n + 1)).toNat + A102683 n

end

end A235754.P1972206456065706957

/-! ## A235754.P3622464149488894805

`A249733(n)+A235756(A167614(n+1))`
-/

namespace A235754.P3622464149488894805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249733 n + A235756 (A167614 (n + 1)).toNat

end

end A235754.P3622464149488894805

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

/-! ## A235755.P7536172286404998578

`A235756(A141214(n)+7)`
-/

namespace A235755.P7536172286404998578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235756 (A141214 n + 7).toNat

end

end A235755.P7536172286404998578

/-! ## A235755.P941859275987742309

`A235756(A052905(n)+9)`
-/

namespace A235755.P941859275987742309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235756 (A052905 n + 9).toNat

end

end A235755.P941859275987742309

/-! ## A235755.P7753972261514948866

`A235756(A055999(n)+10)`
-/

namespace A235755.P7753972261514948866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235756 (A055999 n + 10).toNat

end

end A235755.P7753972261514948866

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

/-! ## A235758.P9658576132799560771

`lcm(2, A235765(A001844(n)))`
-/

namespace A235758.P9658576132799560771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235765 (A001844 n).toNat)

end

end A235758.P9658576132799560771

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

/-! ## A235759.P13233519927897533472

`A235765(∑[n+1]+2)`
-/

namespace A235759.P13233519927897533472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235759.P13233519927897533472

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

/-! ## A235759.P2856989918129916211

`record[A235765(Δ[A003453(n+5)])]`
-/

namespace A235759.P2856989918129916211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235759.P2856989918129916211

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

/-! ## A235760.P6151511536758606571

`((-1)^n)²*A235765(A167614(n+1))`
-/

namespace A235760.P6151511536758606571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A235765 (A167614 (n + 1)).toNat

end

end A235760.P6151511536758606571

/-! ## A235760.P6544504069962482398

`A235765(A167614(n+1))+A025437(n)`
-/

namespace A235760.P6544504069962482398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A167614 (n + 1)).toNat + A025437 n

end

end A235760.P6544504069962482398

/-! ## A235760.P1574435734369280570

`A235765(A167614(n+1))+A137579(n)`
-/

namespace A235760.P1574435734369280570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A167614 (n + 1)).toNat + A137579 n

end

end A235760.P1574435734369280570

/-! ## A235760.P13843349526423742765

`A235765(A167614(n+1))+A185037(n)`
-/

namespace A235760.P13843349526423742765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A167614 (n + 1)).toNat + A185037 n

end

end A235760.P13843349526423742765

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

/-! ## A235761.P944756307339539887

`A235765(A052905(n)+9)`
-/

namespace A235761.P944756307339539887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A052905 n + 9).toNat

end

end A235761.P944756307339539887

/-! ## A235761.P693897147205911504

`A235765(A055999(n)+10)`
-/

namespace A235761.P693897147205911504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A055999 n + 10).toNat

end

end A235761.P693897147205911504

/-! ## A235761.P3922131169986311977

`A235765(eq[5, A066657(n)])`
-/

namespace A235761.P3922131169986311977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235761.P3922131169986311977

/-! ## A235761.P15726787793329019003

`A235765(A167614(n+2)+1)`
-/

namespace A235761.P15726787793329019003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A167614 (n + 2) + 1).toNat

end

end A235761.P15726787793329019003

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

/-! ## A235762.P6360245599155921390

`A235765(A155212(n)+13)`
-/

namespace A235762.P6360245599155921390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A155212 n + 13).toNat

end

end A235762.P6360245599155921390

/-! ## A235762.P13828681006336286659

`A235765(A056000(n)+15)`
-/

namespace A235762.P13828681006336286659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A056000 n + 15).toNat

end

end A235762.P13828681006336286659

/-! ## A235762.P582858945905577430

`A235765(eq[7, A066657(n)])`
-/

namespace A235762.P582858945905577430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235762.P582858945905577430

/-! ## A235762.P11713123892455728565

`A235765(A167614(n+3)+2)`
-/

namespace A235762.P11713123892455728565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A167614 (n + 3) + 2).toNat

end

end A235762.P11713123892455728565

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

/-! ## A235763.P10888889956847099201

`A235765(eq[7, A131818(n+1)])`
-/

namespace A235763.P10888889956847099201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235763.P10888889956847099201

/-! ## A235763.P2305110110155897509

`A235765(A374007(n+1))`
-/

namespace A235763.P2305110110155897509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A374007 (n + 1)).toNat

end

end A235763.P2305110110155897509

/-! ## A235763.P280826812643547624

`A235765(A052905(n+3))`
-/

namespace A235763.P280826812643547624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A052905 (n + 3)).toNat

end

end A235763.P280826812643547624

/-! ## A235763.P10440472506338936094

`A235765(A056119(n)+16)`
-/

namespace A235763.P10440472506338936094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A056119 n + 16).toNat

end

end A235763.P10440472506338936094

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

/-! ## A235764.P3564509291082864473

`A235765(eq[11, A066657(n)])`
-/

namespace A235764.P3564509291082864473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235764.P3564509291082864473

/-! ## A235764.P17778231613007184527

`A235765(eq[8, A131818(n+1)])`
-/

namespace A235764.P17778231613007184527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235764.P17778231613007184527

/-! ## A235764.P12856689624980566169

`A235765(A374008(n+1))`
-/

namespace A235764.P12856689624980566169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A374008 (n + 1)).toNat

end

end A235764.P12856689624980566169

/-! ## A235764.P8461040375059906167

`A235765(A055999(n+4))`
-/

namespace A235764.P8461040375059906167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A055999 (n + 4)).toNat

end

end A235764.P8461040375059906167

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

/-! ## A235767.P12124724879870505232

`A235772(∑[n+1]+2)`
-/

namespace A235767.P12124724879870505232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235767.P12124724879870505232

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

/-! ## A235768.P8237000159322655356

`A235772(A167614(n+1))+and(1, 2*n)`
-/

namespace A235768.P8237000159322655356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A167614 (n + 1)).toNat + (Nat.land 1 (2 * n) : ℤ)

end

end A235768.P8237000159322655356

/-! ## A235768.P6033319865237429969

`A235772(A167614(n+1))+A011731(n)`
-/

namespace A235768.P6033319865237429969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A167614 (n + 1)).toNat + A011731 n

end

end A235768.P6033319865237429969

/-! ## A235768.P4804268506890263421

`A235772(A167614(n+1))+A025466(n)`
-/

namespace A235768.P4804268506890263421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A167614 (n + 1)).toNat + A025466 n

end

end A235768.P4804268506890263421

/-! ## A235768.P3829891114117182373

`A235772(A167614(n+1))+A178798(n)`
-/

namespace A235768.P3829891114117182373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A167614 (n + 1)).toNat + A178798 n

end

end A235768.P3829891114117182373

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

/-! ## A235769.P6510639462181634829

`A235772(A141214(n)+7)`
-/

namespace A235769.P6510639462181634829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A141214 n + 7).toNat

end

end A235769.P6510639462181634829

/-! ## A235769.P583155349291849926

`A235772(A052905(n)+9)`
-/

namespace A235769.P583155349291849926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A052905 n + 9).toNat

end

end A235769.P583155349291849926

/-! ## A235769.P13624371373076337337

`A235772(A055999(n)+10)`
-/

namespace A235769.P13624371373076337337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A055999 n + 10).toNat

end

end A235769.P13624371373076337337

/-! ## A235769.P3667316178073134124

`A235772(eq[5, A066657(n)])`
-/

namespace A235769.P3667316178073134124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235769.P3667316178073134124

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

/-! ## A235770.P14239083899382312625

`A235772(A167499(n+3))`
-/

namespace A235770.P14239083899382312625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A167499 (n + 3)).toNat

end

end A235770.P14239083899382312625

/-! ## A235770.P3130856538357228185

`A235772(A155212(n)+13)`
-/

namespace A235770.P3130856538357228185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A155212 n + 13).toNat

end

end A235770.P3130856538357228185

/-! ## A235770.P374176107913940786

`A235772(A056000(n)+15)`
-/

namespace A235770.P374176107913940786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A056000 n + 15).toNat

end

end A235770.P374176107913940786

/-! ## A235770.P5779294393001289262

`A235772(eq[7, A066657(n)])`
-/

namespace A235770.P5779294393001289262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235770.P5779294393001289262

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

/-! ## A235771.P14105491419359077012

`A235772(A056115(n)+21)`
-/

namespace A235771.P14105491419359077012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A056115 n + 21).toNat

end

end A235771.P14105491419359077012

/-! ## A235771.P18249935374273289642

`A235772(A167499(n+4)+1)`
-/

namespace A235771.P18249935374273289642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A167499 (n + 4) + 1).toNat

end

end A235771.P18249935374273289642

/-! ## A235771.P410597839469560247

`A235772(A167614(n+4)+3)`
-/

namespace A235771.P410597839469560247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A167614 (n + 4) + 3).toNat

end

end A235771.P410597839469560247

/-! ## A235771.P16360580193098764822

`A235772(A000124(n+5)+5)`
-/

namespace A235771.P16360580193098764822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A000124 (n + 5) + 5).toNat

end

end A235771.P16360580193098764822

/-!
# A235772: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235772, there is no canonical definition to state claims against.
-/

/-! ## A235772.P3913452373871179936

`A265370(A251167(n+1)+15)`
-/

namespace A235772.P3913452373871179936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (A251167 (n + 1) + 15).toNat

end

end A235772.P3913452373871179936

/-! ## A235772.P18312857984065932849

`A204616(n+1)-A001222(A207135(n))`
-/

namespace A235772.P18312857984065932849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (n + 1) - A001222 (A207135 n).toNat

end

end A235772.P18312857984065932849

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

/-! ## A235775.P3604743946841816234

`A045918(A045918(n))-A097601(A045918(n))`
-/

namespace A235775.P3604743946841816234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (A045918 n).toNat - A097601 (A045918 n).toNat

end

end A235775.P3604743946841816234

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

/-! ## A235780.P1368303006159974022

`A235784(∑[n+2])`
-/

namespace A235780.P1368303006159974022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A235780.P1368303006159974022

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

/-! ## A235780.P13856476647938630642

`or(1, A235784(A000096(n+1)))`
-/

namespace A235780.P13856476647938630642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235784 (A000096 (n + 1)).toNat)

end

end A235780.P13856476647938630642

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

/-! ## A235780.P13461097798001822166

`A235784(A000096(n+1))+A059995(n)`
-/

namespace A235780.P13461097798001822166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (A000096 (n + 1)).toNat + A059995 n

end

end A235780.P13461097798001822166

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

/-! ## A235781.P14241415480587704246

`or(1, A235784(A034856(n+2)))`
-/

namespace A235781.P14241415480587704246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235784 (A034856 (n + 2)).toNat)

end

end A235781.P14241415480587704246

/-! ## A235781.P15652661076671302819

`A187188(n+1)*A235784(A034856(n+2))`
-/

namespace A235781.P15652661076671302819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (n + 1) * A235784 (A034856 (n + 2)).toNat

end

end A235781.P15652661076671302819

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

/-! ## A235785.P3198692155971307233

`or(1, A235784(A133263(n+1)))`
-/

namespace A235785.P3198692155971307233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235784 (A133263 (n + 1)).toNat)

end

end A235785.P3198692155971307233

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

/-! ## A235786.P4684090986029408299

`or(1, A235784(A167614(n+1)))`
-/

namespace A235786.P4684090986029408299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235784 (A167614 (n + 1)).toNat)

end

end A235786.P4684090986029408299

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

/-! ## A235786.P10609836968029937944

`A235784(A167614(n+1))+A025463(n)`
-/

namespace A235786.P10609836968029937944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (A167614 (n + 1)).toNat + A025463 n

end

end A235786.P10609836968029937944

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

/-! ## A235787.P5425445182980291335

`A235784(A055999(n)+10)+A088157(3*n+2)`
-/

namespace A235787.P5425445182980291335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (A055999 n + 10).toNat + A088157 (3 * n + 2)

end

end A235787.P5425445182980291335

/-!
# A235788: Number of (5+1)X(n+1) 0..2 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235788, there is no canonical definition to state claims against.
-/

/-! ## A235788.P1490956599113764280

`A235784(eq[7, A066657(n)])`
-/

namespace A235788.P1490956599113764280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235788.P1490956599113764280

/-! ## A235788.P2007492014372682974

`A235784(A167614(n+3)+2)`
-/

namespace A235788.P2007492014372682974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (A167614 (n + 3) + 2).toNat

end

end A235788.P2007492014372682974

/-! ## A235788.P16990533052689728421

`A235784(eq[6, A131818(n+1)])`
-/

namespace A235788.P16990533052689728421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235788.P16990533052689728421

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

/-! ## A235790.P15342035170081936772

`2*A359481(n+1)`
-/

namespace A235790.P15342035170081936772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359481 (n + 1)

end

end A235790.P15342035170081936772

/-! ## A235790.P3019185869959106047

`A004277(A359481(n+1))`
-/

namespace A235790.P3019185869959106047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A359481 (n + 1)).toNat

end

end A235790.P3019185869959106047

/-! ## A235790.P17676511317235285486

`A359481(A000027(n+1))+A359481(n+1)`
-/

namespace A235790.P17676511317235285486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359481 (A000027 (n + 1)).toNat + A359481 (n + 1)

end

end A235790.P17676511317235285486

/-! ## A235790.P8177888968381045493

`A005843(A359481(n+1)²)/A359481(n+1)`
-/

namespace A235790.P8177888968381045493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A359481 (n + 1) ^ 2).toNat : ℚ) / (A359481 (n + 1) : ℚ)

end

end A235790.P8177888968381045493

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

/-! ## A235791.P732321475842645524

`(A338721(n+1)+1)/2`
-/

namespace A235791.P732321475842645524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338721 (n + 1) + 1 : ℚ) / 2

end

end A235791.P732321475842645524

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

/-! ## A235791.P7881656684736608002

`A236104(n+1)^((n+1)/A005843(n+1))`
-/

namespace A235791.P7881656684736608002
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236104 (n + 1) : ℝ) ^ ((n + 1 : ℚ) / (A005843 (n + 1) : ℚ) : ℝ)

end

end A235791.P7881656684736608002

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

/-! ## A235791.P6554844002912301237

`A127093(A236104(n+1)+A236104(n+1))`
-/

namespace A235791.P6554844002912301237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A236104 (n + 1) + A236104 (n + 1)).toNat

end

end A235791.P6554844002912301237

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

/-! ## A235791.P11259190466452213543

`A004736(2*A236104(n+1)+1)`
-/

namespace A235791.P11259190466452213543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (2 * A236104 (n + 1) + 1).toNat

end

end A235791.P11259190466452213543

/-! ## A235791.P15447255164203594925

`A339575(2*A236104(n+1))/2`
-/

namespace A235791.P15447255164203594925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339575 (2 * A236104 (n + 1)).toNat : ℚ) / 2

end

end A235791.P15447255164203594925

/-! ## A235791.P6799718411438166536

`A004736(A236104(n+1)+A236104(n+1)+1)`
-/

namespace A235791.P6799718411438166536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A236104 (n + 1) + (A236104 (n + 1) + 1)).toNat

end

end A235791.P6799718411438166536

/-!
# A235792: Total number of parts in all overpartitions of n.

The programs for A235792, there is no canonical definition to state claims against.
-/

/-! ## A235792.P13021098450667287292

`2*A305105(n+1)`
-/

namespace A235792.P13021098450667287292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305105 (n + 1)

end

end A235792.P13021098450667287292

/-! ## A235792.P1493911758164112431

`2*(A305102(n+1)-A305104(n+1))`
-/

namespace A235792.P1493911758164112431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A305102 (n + 1) - A305104 (n + 1))

end

end A235792.P1493911758164112431

/-! ## A235792.P6174721271840003231

`A305105(A028310(n+1))+A305105(n+1)`
-/

namespace A235792.P6174721271840003231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305105 (A028310 (n + 1)).toNat + A305105 (n + 1)

end

end A235792.P6174721271840003231

/-! ## A235792.P8072039358256997213

`A305102(n+1)+A305124(n+1)+A305122(n+1)`
-/

namespace A235792.P8072039358256997213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305102 (n + 1) + (A305124 (n + 1) + A305122 (n + 1))

end

end A235792.P8072039358256997213

/-! ## A235792.P11446226750904031454

`A305102(n+1)+A305105(n+1)-A305104(n+1)`
-/

namespace A235792.P11446226750904031454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305102 (n + 1) + (A305105 (n + 1) - A305104 (n + 1))

end

end A235792.P11446226750904031454

/-! ## A235792.P3661587079271388735

`A305105(n+1)+A305105((n+1)%A000040(n+1))`
-/

namespace A235792.P3661587079271388735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305105 (n + 1) + A305105 (Int.tmod (n + 1 : ℤ) (A000040 (n + 1))).toNat

end

end A235792.P3661587079271388735

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

/-! ## A235793.P5481659142880725346

`(n+1)*Δ[A277643(n)]`
-/

namespace A235793.P5481659142880725346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A235793.P5481659142880725346

/-! ## A235793.P11152805230972710739

`(n+1)*A015128(n+1)`
-/

namespace A235793.P11152805230972710739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A015128 (n + 1)

end

end A235793.P11152805230972710739

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

/-! ## A235795.P14869253193154133564

`A245943(n+1)-2`
-/

namespace A235795.P14869253193154133564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245943 (n + 1) - 2

end

end A235795.P14869253193154133564

/-! ## A235795.P3176373298999081415

`A023444(A245943(n+1))`
-/

namespace A235795.P3176373298999081415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A245943 (n + 1)).toNat

end

end A235795.P3176373298999081415

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

/-! ## A235795.P7784823061493546822

`A289207(root(A245943(n+1), 2)²)`
-/

namespace A235795.P7784823061493546822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (SequenceMachineLib.roundAway (((A245943 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A235795.P7784823061493546822

/-! ## A235795.P2064525605583741281

`A289207(or(char[3], A245943(n+1)))`
-/

namespace A235795.P2064525605583741281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A245943 (n + 1))).toNat

end

end A235795.P2064525605583741281

/-!
# A235796: 2*n - 1 - sigma(n).

The programs for A235796, the canonical program `A235796.P10282550748648679139` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235796 has offset 1).

The definition of A235796 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A235796.P10282550748648679139

`A033879(n+1)-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A235796

/-- `A033879(n+1)-1` -/
def P10282550748648679139.Spec : Prop :=
  ∀ n, P10282550748648679139.a n = A235796 (n + 1)

theorem P10282550748648679139.correct : P10282550748648679139.Spec := by
  intro n
  simp only [A235796, Nat.add_sub_cancel]

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

end A235796

/-! ## A235796.P15452780321787485770

`2*n-A039653(n+1)`
-/

namespace A235796.P15452780321787485770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A039653 (n + 1)

end

end A235796.P15452780321787485770

namespace A235796

/-- `2*n-A039653(n+1)` -/
def P15452780321787485770.Spec : Prop :=
  ∀ n, P15452780321787485770.a n = A235796 (n + 1)

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

/-! ## A235796.P14471068051878659038

`Δ[n²]-A000203(n+1)`
-/

namespace A235796.P14471068051878659038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A000203 (n + 1)

end

end A235796.P14471068051878659038

namespace A235796

/-- `Δ[n²]-A000203(n+1)` -/
def P14471068051878659038.Spec : Prop :=
  ∀ n, P14471068051878659038.a n = A235796 (n + 1)

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

end A235796

/-! ## A235796.P2756036870640479273

`∑{d}[n+1, A000010(#)-#]+n`
-/

namespace A235796.P2756036870640479273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d - (d : ℤ)) + (n : ℤ)

end

end A235796.P2756036870640479273

namespace A235796

/-- `∑{d}[n+1, A000010(#)-#]+n` -/
def P2756036870640479273.Spec : Prop :=
  ∀ n, P2756036870640479273.a n = A235796 (n + 1)

end A235796

/-! ## A235796.P14315189047530232768

`2*n+1-A245092(2*n+1)`
-/

namespace A235796.P14315189047530232768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A245092 (2 * n + 1)

end

end A235796.P14315189047530232768

namespace A235796

/-- `2*n+1-A245092(2*n+1)` -/
def P14315189047530232768.Spec : Prop :=
  ∀ n, P14315189047530232768.a n = A235796 (n + 1)

end A235796

/-!
# A235799: a(n) = n^2 - sigma(n).

The programs for A235799, the canonical program `A235799.P2518108065630090782` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235799 has offset 1).

The definition of A235799 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024816, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A235799.P2518108065630090782

`A024816(n+1)+A000217(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A235799

/-- `A024816(n+1)+A000217(n)` -/
def P2518108065630090782.Spec : Prop :=
  ∀ n, P2518108065630090782.a n = A235799 (n + 1)

theorem P2518108065630090782.correct : P2518108065630090782.Spec := by
  intro n
  simp only [A235799, Nat.add_sub_cancel]

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

/-! ## A235799.P12165919038416102872

`(n+1)²-∑{d}[n+1, #]`
-/

namespace A235799.P12165919038416102872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A235799.P12165919038416102872

namespace A235799

/-- `(n+1)²-∑{d}[n+1, #]` -/
def P12165919038416102872.Spec : Prop :=
  ∀ n, P12165919038416102872.a n = A235799 (n + 1)

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

/-! ## A235799.P7816509240272329688

`(n+1)²-A000203(n+1)`
-/

namespace A235799.P7816509240272329688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000203 (n + 1)

end

end A235799.P7816509240272329688

namespace A235799

/-- `(n+1)²-A000203(n+1)` -/
def P7816509240272329688.Spec : Prop :=
  ∀ n, P7816509240272329688.a n = A235799 (n + 1)

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

/-! ## A235799.P14288085203912709422

`∑{d}[n+1, (n+1)*A000010(#)-#]`
-/

namespace A235799.P14288085203912709422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℤ) * A000010 d - (d : ℤ))

end

end A235799.P14288085203912709422

namespace A235799

/-- `∑{d}[n+1, (n+1)*A000010(#)-#]` -/
def P14288085203912709422.Spec : Prop :=
  ∀ n, P14288085203912709422.a n = A235799 (n + 1)

end A235799

/-! ## A235799.P17993331315365237376

`∑{d}[n+1, #*A046151((n+1)/#)]`
-/

namespace A235799.P17993331315365237376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A046151 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A235799.P17993331315365237376

namespace A235799

/-- `∑{d}[n+1, #*A046151((n+1)/#)]` -/
def P17993331315365237376.Spec : Prop :=
  ∀ n, P17993331315365237376.a n = A235799 (n + 1)

end A235799

/-! ## A235799.P9414573664992662878

`Δ[a(n-1)-(A000203(n)-n²)]` with `a(0)=0`
-/

namespace A235799.P9414573664992662878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (A000203 n - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235799.P9414573664992662878

namespace A235799

/-- `Δ[a(n-1)-(A000203(n)-n²)]` -/
def P9414573664992662878.Spec : Prop :=
  ∀ n, P9414573664992662878.a n = A235799 (n + 1)

end A235799

/-! ## A235799.P8455547098259330893

`∑[2*n]+n+1-A000203(C(n+1, n))`
-/

namespace A235799.P8455547098259330893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n + 1 : ℤ) - A000203 (Nat.choose (n + 1) n))

end

end A235799.P8455547098259330893

namespace A235799

/-- `∑[2*n]+n+1-A000203(C(n+1, n))` -/
def P8455547098259330893.Spec : Prop :=
  ∀ n, P8455547098259330893.a n = A235799 (n + 1)

end A235799

