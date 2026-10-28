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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A230600: a(n) = Lucas(2^n - 1).

The programs for A230600, the canonical program `A230600.P9476386221300362793` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230600 has offset 0).

The definition of A230600 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(2^n-1)` (program `A230600.P9476386221300362793`, by `A230600.P9476386221300362793.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A230600.P689905884833054323

`floor(ϕ*a(n-1)²)+4` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A230600.P689905884833054323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 4] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) ^ 2 : ℝ)⌋ + 4

end

end A230600.P689905884833054323

namespace A230600

/-- `floor(ϕ*a(n-1)²)+4` -/
def P689905884833054323.Spec : Prop :=
  ∀ n, P689905884833054323.a n = A230600 n

end A230600

/-! ## A230600.P9476386221300362793

`A000032(2^n-1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A230600

/-- `A000032(2^n-1)` -/
def P9476386221300362793.Spec : Prop :=
  ∀ n, P9476386221300362793.a n = A230600 n

theorem P9476386221300362793.correct : P9476386221300362793.Spec := by
  intro n
  simp only [A230600]

end A230600

/-! ## A230600.P17218235086826429973

`floor(ϕ*(a(n-1)²+2))` with `a(0)=2, a(1)=1`
-/

namespace A230600.P17218235086826429973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) ^ 2 + 2 : ℝ)⌋

end

end A230600.P17218235086826429973

namespace A230600

/-- `floor(ϕ*(a(n-1)²+2))` -/
def P17218235086826429973.Spec : Prop :=
  ∀ n, P17218235086826429973.a n = A230600 n

end A230600

/-! ## A230600.P9707561974632345789

`abs(A061084(2^n))`
-/

namespace A230600.P9707561974632345789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061084 (2 ^ n)|

end

end A230600.P9707561974632345789

namespace A230600

/-- `abs(A061084(2^n))` -/
def P9707561974632345789.Spec : Prop :=
  ∀ n, P9707561974632345789.a n = A230600 n

end A230600

/-! ## A230600.P11692266434006641293

`A090244(∑[2^n])`
-/

namespace A230600.P11692266434006641293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A230600.P11692266434006641293

namespace A230600

/-- `A090244(∑[2^n])` -/
def P11692266434006641293.Spec : Prop :=
  ∀ n, P11692266434006641293.a n = A230600 n

end A230600

/-!
# A230601: a(n) = Lucas(2^n + 2).

The programs for A230601, the canonical program `A230601.P4868218983335923162` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230601 has offset 0).

The definition of A230601 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(2^n+2)` (program `A230601.P4868218983335923162`, by `A230601.P4868218983335923162.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A230601.P5551143622569531067

`floor((2-ϕ)*a(n-1)²)` with `a(0)=4, a(1)=7`
-/

namespace A230601.P5551143622569531067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 7] fun n a =>
  ⌊(2 - Real.goldenRatio) * (a (n - 1) ^ 2 : ℝ)⌋

end

end A230601.P5551143622569531067

namespace A230601

/-- `floor((2-ϕ)*a(n-1)²)` -/
def P5551143622569531067.Spec : Prop :=
  ∀ n, P5551143622569531067.a n = A230601 n

end A230601

/-! ## A230601.P4868218983335923162

`A000032(2^n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A230601

/-- `A000032(2^n+2)` -/
def P4868218983335923162.Spec : Prop :=
  ∀ n, P4868218983335923162.a n = A230601 n

theorem P4868218983335923162.correct : P4868218983335923162.Spec := by
  intro n
  simp only [A230601]

end A230601

/-! ## A230601.P899771155339869079

`A000045(2^n+3)+A000045(2^n+1)`
-/

namespace A230601.P899771155339869079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 ^ n + 3) + A000045 (2 ^ n + 1)

end

end A230601.P899771155339869079

namespace A230601

/-- `A000045(2^n+3)+A000045(2^n+1)` -/
def P899771155339869079.Spec : Prop :=
  ∀ n, P899771155339869079.a n = A230601 n

end A230601

/-! ## A230601.P17079073390139672634

`round(ϕ^(2^n+2))`
-/

namespace A230601.P17079073390139672634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (2 ^ n + 2))

end

end A230601.P17079073390139672634

namespace A230601

/-- `round(ϕ^(2^n+2))` -/
def P17079073390139672634.Spec : Prop :=
  ∀ n, P17079073390139672634.a n = A230601 n

end A230601

/-! ## A230601.P17074170399149561917

`floor((a(n-1)/ϕ)²)` with `a(0)=4, a(1)=7`
-/

namespace A230601.P17074170399149561917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 7] fun n a =>
  ⌊((a (n - 1) : ℝ) / Real.goldenRatio) ^ 2⌋

end

end A230601.P17074170399149561917

namespace A230601

/-- `floor((a(n-1)/ϕ)²)` -/
def P17074170399149561917.Spec : Prop :=
  ∀ n, P17074170399149561917.a n = A230601 n

end A230601

/-!
# A230602: a(n) = Lucas(2^n - 2).

The programs for A230602, the canonical program `A230602.P16738094475432567071` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230602 has offset 1).

The definition of A230602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(2^(n+1)-2)` (program `A230602.P16738094475432567071`, by `A230602.P16738094475432567071.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A230602.P7850793878077712568

`floor(ϕ²*a(n-1)²)-5` with `a(0)=2, a(1)=3`
-/

namespace A230602.P7850793878077712568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 1) ^ 2 : ℝ)⌋ - 5

end

end A230602.P7850793878077712568

namespace A230602

/-- `floor(ϕ²*a(n-1)²)-5` -/
def P7850793878077712568.Spec : Prop :=
  ∀ n, P7850793878077712568.a n = A230602 (n + 1)

end A230602

/-! ## A230602.P16738094475432567071

`A000032(2^(n+1)-2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A230602

/-- `A000032(2^(n+1)-2)` -/
def P16738094475432567071.Spec : Prop :=
  ∀ n, P16738094475432567071.a n = A230602 (n + 1)

theorem P16738094475432567071.correct : P16738094475432567071.Spec := by
  intro n
  simp only [A230602, Nat.add_sub_cancel]

end A230602

/-! ## A230602.P6255716680554727763

`ceil(ϕ^∑[ceil(atan(n))^n])`
-/

namespace A230602.P6255716680554727763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ)⌉ ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌉

end

end A230602.P6255716680554727763

namespace A230602

/-- `ceil(ϕ^∑[ceil(atan(n))^n])` -/
def P6255716680554727763.Spec : Prop :=
  ∀ n, P6255716680554727763.a n = A230602 (n + 1)

end A230602

/-! ## A230602.P11752818858885282602

`ϕ^(2^(n+1)-2)+(1/ϕ)^(2^(n+1)-2)`
-/

namespace A230602.P11752818858885282602
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ ((2 ^ (n + 1) : ℤ) - 2 : ℤ) + (1 / Real.goldenRatio) ^ ((2 ^ (n + 1) : ℤ) - 2 : ℤ)

end

end A230602.P11752818858885282602

namespace A230602

/-- `ϕ^(2^(n+1)-2)+(1/ϕ)^(2^(n+1)-2)` -/
def P11752818858885282602.Spec : Prop :=
  ∀ n, P11752818858885282602.a n = (A230602 (n + 1) : ℝ)

end A230602

/-!
# A230603: Generalized Fibonacci word. Binary complement of A221150.

The programs for A230603, the canonical program `A230603.P2271851094965990060` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230603 has offset 0).

The definition of A230603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230603.P2271851094965990060

`floor((n+2)/(3-ϕ))-floor((n+1)/(3-ϕ))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230603

/-- `floor((n+2)/(3-ϕ))-floor((n+1)/(3-ϕ))` -/
def P2271851094965990060.Spec : Prop :=
  ∀ n, P2271851094965990060.a n = A230603 n

theorem P2271851094965990060.correct : P2271851094965990060.Spec := by
  intro n
  simp only [A230603]

end A230603

/-! ## A230603.P3205724006575698913

`comp[2*floor(ϕ*n)]%2`
-/

namespace A230603.P3205724006575698913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A230603.P3205724006575698913

namespace A230603

/-- `comp[2*floor(ϕ*n)]%2` -/
def P3205724006575698913.Spec : Prop :=
  ∀ n, (P3205724006575698913.a n : ℤ) = A230603 n

end A230603

/-! ## A230603.P10633417367254562315

`and(1, comp[2*floor(ϕ*n)])`
-/

namespace A230603.P10633417367254562315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A230603.P10633417367254562315

namespace A230603

/-- `and(1, comp[2*floor(ϕ*n)])` -/
def P10633417367254562315.Spec : Prop :=
  ∀ n, (P10633417367254562315.a n : ℤ) = A230603 n

end A230603

/-! ## A230603.P9058652837436601742

`xor(1, char[comp[floor(ϕ*n)]+n])`
-/

namespace A230603.P9058652837436601742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A230603.P9058652837436601742

namespace A230603

/-- `xor(1, char[comp[floor(ϕ*n)]+n])` -/
def P9058652837436601742.Spec : Prop :=
  ∀ n, (P9058652837436601742.a n : ℤ) = A230603 n

end A230603

/-! ## A230603.P14885061014876739409

`floor(cos(char[comp[floor(ϕ*n)]+n]))`
-/

namespace A230603.P14885061014876739409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A230603.P14885061014876739409

namespace A230603

/-- `floor(cos(char[comp[floor(ϕ*n)]+n]))` -/
def P14885061014876739409.Spec : Prop :=
  ∀ n, P14885061014876739409.a n = A230603 n

end A230603

/-! ## A230603.P12235389950824840554

`floor(acot(char[comp[floor(ϕ*n)]+n]))`
-/

namespace A230603.P12235389950824840554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A230603.P12235389950824840554

namespace A230603

/-- `floor(acot(char[comp[floor(ϕ*n)]+n]))` -/
def P12235389950824840554.Spec : Prop :=
  ∀ n, P12235389950824840554.a n = A230603 n

end A230603

/-! ## A230603.P218675524414712143

`char[(3*n)%(floor(ϕ*n)+2)]`
-/

namespace A230603.P218675524414712143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * n : ℤ) (⌊Real.goldenRatio * (n : ℝ)⌋ + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A230603.P218675524414712143

namespace A230603

/-- `char[(3*n)%(floor(ϕ*n)+2)]` -/
def P218675524414712143.Spec : Prop :=
  ∀ n, (P218675524414712143.a n : ℤ) = A230603 n

end A230603

/-! ## A230603.P11049217788188275293

`char[A063732(n+1)]`
-/

namespace A230603.P11049217788188275293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A230603.P11049217788188275293

namespace A230603

/-- `char[A063732(n+1)]` -/
def P11049217788188275293.Spec : Prop :=
  ∀ n, (P11049217788188275293.a n : ℤ) = A230603 n

end A230603

/-! ## A230603.P7710406135868804862

`char[∑[A284620(n+1)]]`
-/

namespace A230603.P7710406135868804862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A230603.P7710406135868804862

namespace A230603

/-- `char[∑[A284620(n+1)]]` -/
def P7710406135868804862.Spec : Prop :=
  ∀ n, (P7710406135868804862.a n : ℤ) = A230603 n

end A230603

/-! ## A230603.P15069585403981478812

`(1-A284387(n+1))²`
-/

namespace A230603.P15069585403981478812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A284387 (n + 1)) ^ 2

end

end A230603.P15069585403981478812

namespace A230603

/-- `(1-A284387(n+1))²` -/
def P15069585403981478812.Spec : Prop :=
  ∀ n, P15069585403981478812.a n = A230603 n

end A230603

/-! ## A230603.P12788183281319474261

`A287772(n^a(n-1))` with `a(0)=1`
-/

namespace A230603.P12788183281319474261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287772 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A230603.P12788183281319474261

namespace A230603

/-- `A287772(n^a(n-1))` -/
def P12788183281319474261.Spec : Prop :=
  ∀ n, P12788183281319474261.a n = A230603 n

end A230603

/-! ## A230603.P14464872420475271358

`A287772(n+1-a(n-1))` with `a(0)=1`
-/

namespace A230603.P14464872420475271358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287772 ((n + 1 : ℤ) - a (n - 1)).toNat

end

end A230603.P14464872420475271358

namespace A230603

/-- `A287772(n+1-a(n-1))` -/
def P14464872420475271358.Spec : Prop :=
  ∀ n, P14464872420475271358.a n = A230603 n

end A230603

/-! ## A230603.P2236572219498155168

`A287772(A287772(n+1)+n)`
-/

namespace A230603.P2236572219498155168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287772 (A287772 (n + 1) + (n : ℤ)).toNat

end

end A230603.P2236572219498155168

namespace A230603

/-- `A287772(A287772(n+1)+n)` -/
def P2236572219498155168.Spec : Prop :=
  ∀ n, P2236572219498155168.a n = A230603 n

end A230603

/-! ## A230603.P12422989932911851932

`A286746(n+2)`
-/

namespace A230603.P12422989932911851932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286746 (n + 2)

end

end A230603.P12422989932911851932

namespace A230603

/-- `A286746(n+2)` -/
def P12422989932911851932.Spec : Prop :=
  ∀ n, P12422989932911851932.a n = A230603 n

theorem P12422989932911851932.correct : P12422989932911851932.Spec := by
  intro n
  simp only [A230603, Nat.add_sub_cancel, A230603.P12422989932911851932.a, A230603.P2271851094965990060.a, A286746, A286746.P13513340777740574846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230603

/-! ## A230603.P12858977028193503231

`floor(sqrt(A284387(n+2)))`
-/

namespace A230603.P12858977028193503231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A284387 (n + 2))

end

end A230603.P12858977028193503231

namespace A230603

/-- `floor(sqrt(A284387(n+2)))` -/
def P12858977028193503231.Spec : Prop :=
  ∀ n, P12858977028193503231.a n = A230603 n

end A230603

/-! ## A230603.P2159008099456034373

`floor(sqrt(A284749(n+2)))`
-/

namespace A230603.P2159008099456034373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A284749 (n + 2))

end

end A230603.P2159008099456034373

namespace A230603

/-- `floor(sqrt(A284749(n+2)))` -/
def P2159008099456034373.Spec : Prop :=
  ∀ n, P2159008099456034373.a n = A230603 n

end A230603

/-! ## A230603.P17192003263196087919

`log2(Δ[A182760(n+1)])`
-/

namespace A230603.P17192003263196087919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182760 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A230603.P17192003263196087919

namespace A230603

/-- `log2(Δ[A182760(n+1)])` -/
def P17192003263196087919.Spec : Prop :=
  ∀ n, P17192003263196087919.a n = (A230603 n : ℝ)

end A230603

/-! ## A230603.P4032709071332374817

`A383422((n+1)^a(n-1))` with `a(0)=1`
-/

namespace A230603.P4032709071332374817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A383422 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A230603.P4032709071332374817

namespace A230603

/-- `A383422((n+1)^a(n-1))` -/
def P4032709071332374817.Spec : Prop :=
  ∀ n, P4032709071332374817.a n = A230603 n

end A230603

/-! ## A230603.P6492837200900551494

`A383422(n+2-A383422(n))`
-/

namespace A230603.P6492837200900551494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383422 ((n + 2 : ℤ) - A383422 n).toNat

end

end A230603.P6492837200900551494

namespace A230603

/-- `A383422(n+2-A383422(n))` -/
def P6492837200900551494.Spec : Prop :=
  ∀ n, P6492837200900551494.a n = A230603 n

end A230603

/-!
# A230605: Composite numbers n such that number of non-divisors of n divides sum of non-divisors of n.

The programs for A230605, there is no canonical definition to state claims against.
-/

/-! ## A230605.P11403666040627587701

`∩[2*n, A140826(n+1)]`
-/

namespace A230605.P11403666040627587701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230605.P11403666040627587701

/-! ## A230605.P2841949164263934396

`filter[A140826(n+1), A005171(#)]`
-/

namespace A230605.P2841949164263934396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A230605.P2841949164263934396

/-!
# A230606: Numbers n such that sigma(n) = k*(n+1) for some integer k.

The programs for A230606, the canonical program `A230606.P12267848131961719917` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230606 has offset 1).

The definition of A230606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230606.P12267848131961719917

`record[A339964(n+2)-1]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A230606

/-- `record[A339964(n+2)-1]` -/
def P12267848131961719917.Spec : Prop :=
  ∀ n, P12267848131961719917.a n = A230606 (n + 1)

theorem P12267848131961719917.correct : P12267848131961719917.Spec := by
  intro n
  simp only [A230606, Nat.add_sub_cancel]

end A230606

/-! ## A230606.P155362546724048956

`eq[1, A339966(n+1)]+1`
-/

namespace A230606.P155362546724048956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230606.P155362546724048956

namespace A230606

/-- `eq[1, A339966(n+1)]+1` -/
def P155362546724048956.Spec : Prop :=
  ∀ n, (P155362546724048956.a n : ℤ) = A230606 (n + 1)

end A230606

/-! ## A230606.P6252417590555465891

`lt[A248008(n+1), 2]+1`
-/

namespace A230606.P6252417590555465891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248008 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A230606.P6252417590555465891

namespace A230606

/-- `lt[A248008(n+1), 2]+1` -/
def P6252417590555465891.Spec : Prop :=
  ∀ n, (P6252417590555465891.a n : ℤ) = A230606 (n + 1)

end A230606

/-! ## A230606.P5330867127926780603

`eq[n+2, A339964(n+1)]+1`
-/

namespace A230606.P5330867127926780603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230606.P5330867127926780603

namespace A230606

/-- `eq[n+2, A339964(n+1)]+1` -/
def P5330867127926780603.Spec : Prop :=
  ∀ n, (P5330867127926780603.a n : ℤ) = A230606 (n + 1)

end A230606

/-! ## A230606.P12669028776722129567

`eq[1, A339966(A028310(n))]`
-/

namespace A230606.P12669028776722129567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339966 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230606.P12669028776722129567

namespace A230606

/-- `eq[1, A339966(A028310(n))]` -/
def P12669028776722129567.Spec : Prop :=
  ∀ n, (P12669028776722129567.a n : ℤ) = A230606 (n + 1)

end A230606

/-! ## A230606.P13641824123806616394

`A020725(eq[1, A339966(n+1)])`
-/

namespace A230606.P13641824123806616394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230606.P13641824123806616394

namespace A230606

/-- `A020725(eq[1, A339966(n+1)])` -/
def P13641824123806616394.Spec : Prop :=
  ∀ n, P13641824123806616394.a n = A230606 (n + 1)

end A230606

/-! ## A230606.P11221786290276351430

`eq[A039653(n), A399682(n+1)]`
-/

namespace A230606.P11221786290276351430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230606.P11221786290276351430

namespace A230606

/-- `eq[A039653(n), A399682(n+1)]` -/
def P11221786290276351430.Spec : Prop :=
  ∀ n, (P11221786290276351430.a n : ℤ) = A230606 (n + 1)

end A230606

/-! ## A230606.P2143225554035316487

`A020725(eq[n+2, A339964(n+1)])`
-/

namespace A230606.P2143225554035316487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230606.P2143225554035316487

namespace A230606

/-- `A020725(eq[n+2, A339964(n+1)])` -/
def P2143225554035316487.Spec : Prop :=
  ∀ n, P2143225554035316487.a n = A230606 (n + 1)

end A230606

/-! ## A230606.P3859681707961178564

`filter[A384354(n+2), A340363(#)]`
-/

namespace A230606.P3859681707961178564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384354 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A230606.P3859681707961178564

namespace A230606

/-- `filter[A384354(n+2), A340363(#)]` -/
def P3859681707961178564.Spec : Prop :=
  ∀ n, P3859681707961178564.a n = A230606 (n + 1)

end A230606

/-! ## A230606.P14404161180804410996

`filter[A384354(n+2), A340371(#)]`
-/

namespace A230606.P14404161180804410996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384354 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A230606.P14404161180804410996

namespace A230606

/-- `filter[A384354(n+2), A340371(#)]` -/
def P14404161180804410996.Spec : Prop :=
  ∀ n, P14404161180804410996.a n = A230606 (n + 1)

end A230606

/-!
# A230607: Primes in the tribonacci-like sequence A214899.

The programs for A230607, there is no canonical definition to state claims against.
-/

/-! ## A230607.P14093509190269709788

`A214899(A233190(n+1))`
-/

namespace A230607.P14093509190269709788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 (A233190 (n + 1)).toNat

end

end A230607.P14093509190269709788

/-!
# A230609: Number of n X n 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230609, there is no canonical definition to state claims against.
-/

/-! ## A230609.P16729059773919607440

`A230614(∑[4*n]+1)`
-/

namespace A230609.P16729059773919607440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230609.P16729059773919607440

/-! ## A230609.P1431170773684182357

`lcm(2, A230614(A001844(n)))`
-/

namespace A230609.P1431170773684182357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230614 (A001844 n).toNat)

end

end A230609.P1431170773684182357

/-! ## A230609.P9912048002536374283

`A057427(n)*A230614(A001844(n))`
-/

namespace A230609.P9912048002536374283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A230614 (A001844 n).toNat

end

end A230609.P9912048002536374283

/-! ## A230609.P2062035615132986447

`and(A057428(n), A230614(A001844(n)))`
-/

namespace A230609.P2062035615132986447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A230614 (A001844 n).toNat)

end

end A230609.P2062035615132986447

/-! ## A230609.P9226069482051056803

`A230614(A001844(n))*A267687(n²)`
-/

namespace A230609.P9226069482051056803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A001844 n).toNat * A267687 (n ^ 2)

end

end A230609.P9226069482051056803

/-!
# A230610: Number of nX4 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230610, there is no canonical definition to state claims against.
-/

/-! ## A230610.P5525840832171702420

`A230614(A141214(n+1))`
-/

namespace A230610.P5525840832171702420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A141214 (n + 1)).toNat

end

end A230610.P5525840832171702420

/-! ## A230610.P15069240136536161180

`A230614(A055998(n+2))`
-/

namespace A230610.P15069240136536161180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A055998 (n + 2)).toNat

end

end A230610.P15069240136536161180

/-! ## A230610.P17328899158741290061

`A230614(A155212(n)+5)`
-/

namespace A230610.P17328899158741290061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A155212 n + 5).toNat

end

end A230610.P17328899158741290061

/-! ## A230610.P4542559676359874257

`A230614(A056000(n)+7)`
-/

namespace A230610.P4542559676359874257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A056000 n + 7).toNat

end

end A230610.P4542559676359874257

/-! ## A230610.P1372670318133866973

`A230614(eq[2, A225094(n)])`
-/

namespace A230610.P1372670318133866973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230610.P1372670318133866973

/-!
# A230611: Number of n X 5 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230611, there is no canonical definition to state claims against.
-/

/-! ## A230611.P1955047509818541441

`A230614(Δ[A264443(n)])`
-/

namespace A230611.P1955047509818541441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (f1 (n + 1) - f1 n).toNat

end

end A230611.P1955047509818541441

/-! ## A230611.P9162921378514903872

`A230614(eq[4, A193592(n)])`
-/

namespace A230611.P9162921378514903872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230611.P9162921378514903872

/-! ## A230611.P1811499343246626756

`A230614(Δ[A023545(n+1)])`
-/

namespace A230611.P1811499343246626756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (f1 (n + 1) - f1 n).toNat

end

end A230611.P1811499343246626756

/-! ## A230611.P14929940074898385711

`A230614(A052905(n+2)+1)`
-/

namespace A230611.P14929940074898385711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A052905 (n + 2) + 1).toNat

end

end A230611.P14929940074898385711

/-! ## A230611.P5535134638719905257

`A230614(eq[6, A345710(n+1)])`
-/

namespace A230611.P5535134638719905257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230611.P5535134638719905257

/-!
# A230612: Number of n X 6 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230612, there is no canonical definition to state claims against.
-/

/-! ## A230612.P4025111500765901704

`A230614(A052905(n+3))`
-/

namespace A230612.P4025111500765901704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A052905 (n + 3)).toNat

end

end A230612.P4025111500765901704

/-! ## A230612.P10800058810152775233

`A230614(eq[3, A219347(n)])`
-/

namespace A230612.P10800058810152775233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230612.P10800058810152775233

/-! ## A230612.P4784544115268469721

`A230614(eq[5, A193592(n)])`
-/

namespace A230612.P4784544115268469721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230612.P4784544115268469721

/-! ## A230612.P5255284001734159489

`A230614(A046691(n+4)-1)`
-/

namespace A230612.P5255284001734159489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A046691 (n + 4) - 1).toNat

end

end A230612.P5255284001734159489

/-! ## A230612.P7156438268079834714

`A230614(eq[8, A243070(n+1)])`
-/

namespace A230612.P7156438268079834714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230612.P7156438268079834714

/-!
# A230613: Number of n X 7 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230613, there is no canonical definition to state claims against.
-/

/-! ## A230613.P1184535459193722753

`A230614(eq[4, A219347(n)])`
-/

namespace A230613.P1184535459193722753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230613.P1184535459193722753

/-! ## A230613.P6357012180625988939

`A230614(eq[6, A193592(n)])`
-/

namespace A230613.P6357012180625988939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230613.P6357012180625988939

/-! ## A230613.P13557368818661823548

`A230614(A052905(n+4)-1)`
-/

namespace A230613.P13557368818661823548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A052905 (n + 4) - 1).toNat

end

end A230613.P13557368818661823548

/-! ## A230613.P17356830962318616958

`A230614(eq[7, A200370(n+1)])`
-/

namespace A230613.P17356830962318616958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230613.P17356830962318616958

/-! ## A230613.P16003643559758668906

`A230614(eq[10, A185782(n+1)])`
-/

namespace A230613.P16003643559758668906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230613.P16003643559758668906

/-!
# A230614: T(n,k)=Number of nXk 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230614, there is no canonical definition to state claims against.
-/

/-! ## A230614.P6771666696225824334

`A230730(n+1)%A089696(n)`
-/

namespace A230614.P6771666696225824334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230730 (n + 1)) (A089696 n)

end

end A230614.P6771666696225824334

/-! ## A230614.P9708173713247427954

`A230730(n+1)^exp(A117980(n))`
-/

namespace A230614.P9708173713247427954
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A230730 (n + 1) : ℝ) ^ (Real.exp (A117980 n : ℝ))

end

end A230614.P9708173713247427954

/-! ## A230614.P9005661833314566257

`A230730(n+1)^A007920(n)!`
-/

namespace A230614.P9005661833314566257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (n + 1) ^ Nat.factorial (A007920 n).toNat

end

end A230614.P9005661833314566257

/-! ## A230614.P15078970486307195139

`A230730(n+1)^A081130(n)!`
-/

namespace A230614.P15078970486307195139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (n + 1) ^ Nat.factorial (A081130 n).toNat

end

end A230614.P15078970486307195139

/-! ## A230614.P8644501550025122486

`A230730(n+1)^Δ[A007091(n)]`
-/

namespace A230614.P8644501550025122486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230730 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A230614.P8644501550025122486

/-!
# A230615: Number of 3Xn 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230615, there is no canonical definition to state claims against.
-/

/-! ## A230615.P18161168337868803107

`A230614(∑[n+2]+4)`
-/

namespace A230615.P18161168337868803107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230615.P18161168337868803107

/-! ## A230615.P2058745131815147403

`lcm(2, A230614(A167614(n+1)))`
-/

namespace A230615.P2058745131815147403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230614 (A167614 (n + 1)).toNat)

end

end A230615.P2058745131815147403

/-! ## A230615.P7039226219708166023

`A230614(A167614(n+1))+A184946(n)`
-/

namespace A230615.P7039226219708166023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A167614 (n + 1)).toNat + A184946 n

end

end A230615.P7039226219708166023

/-! ## A230615.P11448082670536409373

`A054977(n)*A230614(A167614(n+1))`
-/

namespace A230615.P11448082670536409373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A230614 (A167614 (n + 1)).toNat

end

end A230615.P11448082670536409373

/-! ## A230615.P11351172322735707169

`A178489(n)*A230614(A167614(n+1))`
-/

namespace A230615.P11351172322735707169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A230614 (A167614 (n + 1)).toNat

end

end A230615.P11351172322735707169

/-!
# A230616: Number of 4Xn 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230616, there is no canonical definition to state claims against.
-/

/-! ## A230616.P14466312796450322796

`A230614(A141214(n)+7)`
-/

namespace A230616.P14466312796450322796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A141214 n + 7).toNat

end

end A230616.P14466312796450322796

/-! ## A230616.P12297436158382488981

`A230614(A052905(n)+9)`
-/

namespace A230616.P12297436158382488981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A052905 n + 9).toNat

end

end A230616.P12297436158382488981

/-! ## A230616.P17871431539147123341

`A230614(A167614(n+2)+1)`
-/

namespace A230616.P17871431539147123341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A167614 (n + 2) + 1).toNat

end

end A230616.P17871431539147123341

/-! ## A230616.P3194961343893713000

`A230614(A167499(n+2)-1)`
-/

namespace A230616.P3194961343893713000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A167499 (n + 2) - 1).toNat

end

end A230616.P3194961343893713000

/-! ## A230616.P13824296676757134929

`A230614(A340266(n+2)+2)`
-/

namespace A230616.P13824296676757134929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A340266 (n + 2) + 2).toNat

end

end A230616.P13824296676757134929

/-!
# A230617: Number of 5Xn 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230617, there is no canonical definition to state claims against.
-/

/-! ## A230617.P14929738027640398816

`A230614(A056000(n)+15)`
-/

namespace A230617.P14929738027640398816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A056000 n + 15).toNat

end

end A230617.P14929738027640398816

/-! ## A230617.P5340689019043283699

`A230614(A167614(n+3)+2)`
-/

namespace A230617.P5340689019043283699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A167614 (n + 3) + 2).toNat

end

end A230617.P5340689019043283699

/-! ## A230617.P662459640467790489

`A230614(A000124(n+4)+4)`
-/

namespace A230617.P662459640467790489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A000124 (n + 4) + 4).toNat

end

end A230617.P662459640467790489

/-! ## A230617.P14853105245898011374

`A230614(eq[6, A131818(n+1)])`
-/

namespace A230617.P14853105245898011374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230617.P14853105245898011374

/-! ## A230617.P15338219610489146632

`A230614(eq[6, A135223(n+1)])`
-/

namespace A230617.P15338219610489146632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230617.P15338219610489146632

/-!
# A230618: Number of 6Xn 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230618, there is no canonical definition to state claims against.
-/

/-! ## A230618.P11107704691872168423

`A230614(A166136(n+4))`
-/

namespace A230618.P11107704691872168423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A166136 (n + 4)).toNat

end

end A230618.P11107704691872168423

/-! ## A230618.P1747884632022154306

`A230614(A056115(n)+21)`
-/

namespace A230618.P1747884632022154306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A056115 n + 21).toNat

end

end A230618.P1747884632022154306

/-! ## A230618.P13247217453358813078

`A230614(eq[6, A256910(n)])`
-/

namespace A230618.P13247217453358813078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230618.P13247217453358813078

/-! ## A230618.P4870257061894991769

`A230614(A000217(n+5)+6)`
-/

namespace A230618.P4870257061894991769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A000217 (n + 5) + 6).toNat

end

end A230618.P4870257061894991769

/-! ## A230618.P14312898106693969515

`A230614(eq[7, A131818(n+1)])`
-/

namespace A230618.P14312898106693969515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230618.P14312898106693969515

/-!
# A230619: Number of 7Xn 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230619, there is no canonical definition to state claims against.
-/

/-! ## A230619.P15042385953883491202

`A230614(eq[11, A066657(n)])`
-/

namespace A230619.P15042385953883491202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230619.P15042385953883491202

/-! ## A230619.P5297782496851858534

`A230614(A167614(n+5)+4)`
-/

namespace A230619.P5297782496851858534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A167614 (n + 5) + 4).toNat

end

end A230619.P5297782496851858534

/-! ## A230619.P14080407624241824907

`A230614(A000217(n+6)+7)`
-/

namespace A230619.P14080407624241824907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A000217 (n + 6) + 7).toNat

end

end A230619.P14080407624241824907

/-! ## A230619.P17901094253574346518

`A230614(eq[6, A002262(n)]+1)`
-/

namespace A230619.P17901094253574346518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A230619.P17901094253574346518

/-! ## A230619.P597777430304460129

`A230614(eq[8, A131818(n+1)])`
-/

namespace A230619.P597777430304460129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230619.P597777430304460129

/-!
# A230620: Number of permutations of [n] with at least two (possibly overlapping) occurrences of the consecutive step pattern {up}^2.

The programs for A230620, there is no canonical definition to state claims against.
-/

/-! ## A230620.P13258341204401006937

`n!-(A274997(n)+A049774(n))`
-/

namespace A230620.P13258341204401006937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (A274997 n + A049774 n)

end

end A230620.P13258341204401006937

/-! ## A230620.P3640775327440422983

`A065429(round(sqrt(n²+1)))-A274997(n)`
-/

namespace A230620.P3640775327440422983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065429 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A274997 n

end

end A230620.P3640775327440422983

/-! ## A230620.P1513942451301548968

`A000142(n)-(A274997(n)+A049774(n))`
-/

namespace A230620.P1513942451301548968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (A274997 n + A049774 n)

end

end A230620.P1513942451301548968

/-! ## A230620.P7823952888691080498

`A028310(n)!-A049774(n)-A274997(n)`
-/

namespace A230620.P7823952888691080498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A028310 n).toNat : ℤ) - A049774 n - A274997 n

end

end A230620.P7823952888691080498

/-!
# A230622: Values of x such that x^2 + y^2 = 17^n with x and y coprime and 0 < x < y.

The programs for A230622, there is no canonical definition to state claims against.
-/

/-! ## A230622.P16905329892386335440

`A101943(A068156(n))-(1-char[1])`
-/

namespace A230622.P16905329892386335440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101943 (A068156 n).toNat - (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A230622.P16905329892386335440

/-!
# A230623: Values of y such that x^2 + y^2 = 17^n with x and y coprime and 0 < x < y.

The programs for A230623, there is no canonical definition to state claims against.
-/

/-! ## A230623.P12212756807630837047

`A258851(A002275(n))+A001523(2*n+3)`
-/

namespace A230623.P12212756807630837047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A002275 n).toNat + A001523 (2 * n + 3)

end

end A230623.P12212756807630837047

/-!
# A230624: Numbers k with property that for every base b >= 2, there is a number m such that m+s(m) = k, where s(m) = sum of digits in the base-b expansion of m.

The programs for A230624, there is no canonical definition to state claims against.
-/

/-! ## A230624.P12462094172031596576

`∑[A349823(A028310(n))]-2`
-/

namespace A230624.P12462094172031596576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349823 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A230624.P12462094172031596576

/-! ## A230624.P9452961595715632512

`∑[A057427(n)*A349823(A028310(n))]`
-/

namespace A230624.P9452961595715632512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A349823 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230624.P9452961595715632512

/-! ## A230624.P13700563307230421181

`∑[A349823(A028310(n))%A006000(n)]`
-/

namespace A230624.P13700563307230421181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349823 (A028310 n).toNat) (A006000 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230624.P13700563307230421181

/-! ## A230624.P12160015716443278548

`∑[A019427(2*n)*A349823(A028310(n))]`
-/

namespace A230624.P12160015716443278548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (2 * n) * A349823 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230624.P12160015716443278548

/-! ## A230624.P6322704518211118546

`∑[A349823(n+1)]-A349823(n+1)`
-/

namespace A230624.P6322704518211118546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A349823 (n + 1)

end

end A230624.P6322704518211118546

/-! ## A230624.P16578645965644865155

`2*A349821(n+1)`
-/

namespace A230624.P16578645965644865155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A349821 (n + 1)

end

end A230624.P16578645965644865155

/-! ## A230624.P10033160963642679491

`A349821(n+2)+A349821(n+2)-A349823(n+1)`
-/

namespace A230624.P10033160963642679491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349821 (n + 2) + (A349821 (n + 2) - A349823 (n + 1))

end

end A230624.P10033160963642679491

/-!
# A230626: Iterate the map x -> A230625(x) starting at n; sequence gives number of steps to reach a prime, or -1 if no prime is ever reached.

The programs for A230626, there is no canonical definition to state claims against.
-/

/-! ## A230626.P1937333647994898555

`A102354(A166650(n+2))`
-/

namespace A230626.P1937333647994898555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (A166650 (n + 2)).toNat

end

end A230626.P1937333647994898555

/-! ## A230626.P8069736553495520061

`A014083(9*A007658(n+1))`
-/

namespace A230626.P8069736553495520061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014083 (9 * A007658 (n + 1)).toNat

end

end A230626.P8069736553495520061

/-! ## A230626.P11746952259258152868

`A014083(lcm(9, A007658(n+1)))`
-/

namespace A230626.P11746952259258152868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014083 (Int.lcm 9 (A007658 (n + 1)))

end

end A230626.P11746952259258152868

/-! ## A230626.P11666331261246703993

`A124010(A281113(n+2)^round(sqrt(2*n)))`
-/

namespace A230626.P11666331261246703993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (SequenceMachineLib.roundAway ((A281113 (n + 2) : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) : ℤ))).toNat

end

end A230626.P11666331261246703993

/-! ## A230626.P523401768560936381

`A118914(n+2)-A121373(A279872(n))`
-/

namespace A230626.P523401768560936381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (n + 2) - A121373 (A279872 n).toNat

end

end A230626.P523401768560936381

/-!
# A230627: Prime reached in A230626, or -1 if no prime is reached.

The programs for A230627, there is no canonical definition to state claims against.
-/

/-! ## A230627.P9480425922703609001

`A048986(A230625(n+2)%A007658(2*n+3))`
-/

namespace A230627.P9480425922703609001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048986 (Int.tmod (A230625 (n + 2)) (A007658 (2 * n + 3))).toNat

end

end A230627.P9480425922703609001

/-! ## A230627.P8730208479824486522

`A290329(A230625(A230625(A230625(n+2))))`
-/

namespace A230627.P8730208479824486522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290329 (A230625 (A230625 (A230625 (n + 2)).toNat).toNat).toNat

end

end A230627.P8730208479824486522

/-!
# A230628: Maximum number of colors needed to color a planar map of several empires, each empire consisting of n countries.

The programs for A230628, the canonical program `A230628.P14968213509653526715` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230628 has offset 1).

The definition of A230628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230628.P14968213509653526715

`ogf((4+4x-2x^2)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230628

/-- `ogf((4+4x-2x^2)/(1-2x+x^2))` -/
def P14968213509653526715.Spec : Prop :=
  ∀ n, P14968213509653526715.a n = A230628 (n + 1)

theorem P14968213509653526715.correct : P14968213509653526715.Spec := by
  intro n
  simp only [A230628, Nat.add_sub_cancel]

end A230628

/-!
# A230629: a(0) = 0; thereafter a(n) = (1 + a(floor(n/2))) mod 3.

The programs for A230629, the canonical program `A230629.P16455597813582009546` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230629 has offset 0).

The definition of A230629 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+a(floor(n/2)))%3` (program `A230629.P16455597813582009546`, by `A230629.P16455597813582009546.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A230629.P16455597813582009546

`(1+a(floor(n/2)))%3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230629

/-- `(1+a(floor(n/2)))%3` -/
def P16455597813582009546.Spec : Prop :=
  ∀ n, (P16455597813582009546.a n : ℤ) = A230629 n

theorem P16455597813582009546.correct : P16455597813582009546.Spec := by
  intro n
  simp only [A230629]

end A230629

/-! ## A230629.P1595417326753896289

`ceil(log2(n+1))%3`
-/

namespace A230629.P1595417326753896289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.logb 2 (n + 1 : ℝ)⌉ 3

end

end A230629.P1595417326753896289

namespace A230629

/-- `ceil(log2(n+1))%3` -/
def P1595417326753896289.Spec : Prop :=
  ∀ n, P1595417326753896289.a n = A230629 n

end A230629

/-! ## A230629.P10930010757834514434

`a(floor(n/8))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A230629.P10930010757834514434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2] fun n a =>
  a ⌊(n : ℚ) / 8⌋.toNat

end

end A230629.P10930010757834514434

namespace A230629

/-- `a(floor(n/8))` -/
def P10930010757834514434.Spec : Prop :=
  ∀ n, (P10930010757834514434.a n : ℤ) = A230629 n

end A230629

/-! ## A230629.P14143817496131557892

`dr(floor(log2(2*n+1))%3)`
-/

namespace A230629.P14143817496131557892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((Nat.log 2 (2 * n + 1) % 3 : ℕ) : ℤ)

end

end A230629.P14143817496131557892

namespace A230629

/-- `dr(floor(log2(2*n+1))%3)` -/
def P14143817496131557892.Spec : Prop :=
  ∀ n, (P14143817496131557892.a n : ℤ) = A230629 n

end A230629

/-! ## A230629.P13172026349978912329

`abs(floor(log2(acos(0)+2*n))%3)`
-/

namespace A230629.P13172026349978912329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ⌊Real.logb 2 (Real.arccos (0 : ℝ) + (2 * n : ℝ))⌋ 3|

end

end A230629.P13172026349978912329

namespace A230629

/-- `abs(floor(log2(acos(0)+2*n))%3)` -/
def P13172026349978912329.Spec : Prop :=
  ∀ n, P13172026349978912329.a n = A230629 n

end A230629

/-! ## A230629.P3110538708305279460

`A230630(Δ[n²])`
-/

namespace A230629.P3110538708305279460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230630 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A230629.P3110538708305279460

namespace A230629

/-- `A230630(Δ[n²])` -/
def P3110538708305279460.Spec : Prop :=
  ∀ n, P3110538708305279460.a n = A230629 n

end A230629

/-! ## A230629.P13067785074504713603

`A010872(ceil(log2(n+1)))`
-/

namespace A230629.P13067785074504713603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

end

end A230629.P13067785074504713603

namespace A230629

/-- `A010872(ceil(log2(n+1)))` -/
def P13067785074504713603.Spec : Prop :=
  ∀ n, P13067785074504713603.a n = A230629 n

end A230629

/-! ## A230629.P17410813133057897275

`dr(A230630(2*n+1))`
-/

namespace A230629.P17410813133057897275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A230630 (2 * n + 1))

end

end A230629.P17410813133057897275

namespace A230629

/-- `dr(A230630(2*n+1))` -/
def P17410813133057897275.Spec : Prop :=
  ∀ n, (P17410813133057897275.a n : ℤ) = A230629 n

end A230629

/-! ## A230629.P18269063998729723007

`abs(log2(2*n+1-A006257(n))%3)`
-/

namespace A230629.P18269063998729723007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 ((2 * n + 1 : ℤ) - A006257 n : ℝ))) 3|

end

end A230629.P18269063998729723007

namespace A230629

/-- `abs(log2(2*n+1-A006257(n))%3)` -/
def P18269063998729723007.Spec : Prop :=
  ∀ n, P18269063998729723007.a n = A230629 n

end A230629

/-! ## A230629.P519608001724641757

`(∑[char[Δ[A000225(n)]]]%3-1)%2+1`
-/

namespace A230629.P519608001724641757
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ) - 1) 2 + 1

end

end A230629.P519608001724641757

namespace A230629

/-- `(∑[char[Δ[A000225(n)]]]%3-1)%2+1` -/
def P519608001724641757.Spec : Prop :=
  ∀ n, P519608001724641757.a n = A230629 n

end A230629

/-! ## A230629.P4674764059623063560

`A284620(A083662(n))`
-/

namespace A230629.P4674764059623063560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (A083662 n).toNat

end

end A230629.P4674764059623063560

namespace A230629

/-- `A284620(A083662(n))` -/
def P4674764059623063560.Spec : Prop :=
  ∀ n, P4674764059623063560.a n = A230629 n

end A230629

/-! ## A230629.P13720663240219547586

`A000122(a(A004526(n)))` with `a(0)=0`
-/

namespace A230629.P13720663240219547586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000122 (a (A004526 n).toNat).toNat

end

end A230629.P13720663240219547586

namespace A230629

/-- `A000122(a(A004526(n)))` -/
def P13720663240219547586.Spec : Prop :=
  ∀ n, P13720663240219547586.a n = A230629 n

end A230629

/-! ## A230629.P3551298144886292947

`A151669(a(A004526(n)))` with `a(0)=0`
-/

namespace A230629.P3551298144886292947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A151669 (a (A004526 n).toNat).toNat

end

end A230629.P3551298144886292947

namespace A230629

/-- `A151669(a(A004526(n)))` -/
def P3551298144886292947.Spec : Prop :=
  ∀ n, P3551298144886292947.a n = A230629 n

end A230629

/-! ## A230629.P1088493264676895186

`A053879(A003817(n))`
-/

namespace A230629.P1088493264676895186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053879 (A003817 n).toNat

end

end A230629.P1088493264676895186

namespace A230629

/-- `A053879(A003817(n))` -/
def P1088493264676895186.Spec : Prop :=
  ∀ n, P1088493264676895186.a n = A230629 n

end A230629

/-! ## A230629.P8408933962941694005

`A101650(A062383(n))`
-/

namespace A230629.P8408933962941694005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101650 (A062383 n).toNat

end

end A230629.P8408933962941694005

namespace A230629

/-- `A101650(A062383(n))` -/
def P8408933962941694005.Spec : Prop :=
  ∀ n, P8408933962941694005.a n = A230629 n

end A230629

/-! ## A230629.P12855472061051300430

`A053879(2*n-A006257(n))`
-/

namespace A230629.P12855472061051300430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053879 ((2 * n : ℤ) - A006257 n).toNat

end

end A230629.P12855472061051300430

namespace A230629

/-- `A053879(2*n-A006257(n))` -/
def P12855472061051300430.Spec : Prop :=
  ∀ n, P12855472061051300430.a n = A230629 n

end A230629

/-! ## A230629.P8955802002822859651

`A071858(2*n-A006257(n))`
-/

namespace A230629.P8955802002822859651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 ((2 * n : ℤ) - A006257 n).toNat

end

end A230629.P8955802002822859651

namespace A230629

/-- `A071858(2*n-A006257(n))` -/
def P8955802002822859651.Spec : Prop :=
  ∀ n, P8955802002822859651.a n = A230629 n

end A230629

/-! ## A230629.P17710947530318140257

`A101661(2*n-A006257(n))`
-/

namespace A230629.P17710947530318140257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101661 ((2 * n : ℤ) - A006257 n).toNat

end

end A230629.P17710947530318140257

namespace A230629

/-- `A101661(2*n-A006257(n))` -/
def P17710947530318140257.Spec : Prop :=
  ∀ n, P17710947530318140257.a n = A230629 n

end A230629

/-! ## A230629.P17355988067401193279

`A053879(n-A006257(n)+n)`
-/

namespace A230629.P17355988067401193279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053879 ((n : ℤ) - A006257 n + (n : ℤ)).toNat

end

end A230629.P17355988067401193279

namespace A230629

/-- `A053879(n-A006257(n)+n)` -/
def P17355988067401193279.Spec : Prop :=
  ∀ n, P17355988067401193279.a n = A230629 n

end A230629

/-! ## A230629.P7326780982763534560

`A101661(n-A006257(n)+n)`
-/

namespace A230629.P7326780982763534560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101661 ((n : ℤ) - A006257 n + (n : ℤ)).toNat

end

end A230629.P7326780982763534560

namespace A230629

/-- `A101661(n-A006257(n)+n)` -/
def P7326780982763534560.Spec : Prop :=
  ∀ n, P7326780982763534560.a n = A230629 n

end A230629

/-!
# A230630: a(1)=0; thereafter a(n) = (1 + a(floor(n/2))) mod 3.

The programs for A230630, the canonical program `A230630.P12053999016726266476` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230630 has offset 1).

The definition of A230630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+a(floor((n+1)/2)-1))%3` (program `A230630.P12053999016726266476`, by `A230630.P12053999016726266476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A230630.P12053999016726266476

`(1+a(floor((n+1)/2)-1))%3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230630

/-- `(1+a(floor((n+1)/2)-1))%3` -/
def P12053999016726266476.Spec : Prop :=
  ∀ n, (P12053999016726266476.a n : ℤ) = A230630 (n + 1)

theorem P12053999016726266476.correct : P12053999016726266476.Spec := by
  intro n
  simp only [A230630, Nat.add_sub_cancel]

end A230630

/-! ## A230630.P16122807037608630852

`floor(log2(n+1))%3`
-/

namespace A230630.P16122807037608630852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (n + 1) % 3

end

end A230630.P16122807037608630852

namespace A230630

/-- `floor(log2(n+1))%3` -/
def P16122807037608630852.Spec : Prop :=
  ∀ n, (P16122807037608630852.a n : ℤ) = A230630 (n + 1)

end A230630

/-! ## A230630.P2369712515615334059

`dr(∑[char[∑[2^n]]]%3)`
-/

namespace A230630.P2369712515615334059
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ)

end

end A230630.P2369712515615334059

namespace A230630

/-- `dr(∑[char[∑[2^n]]]%3)` -/
def P2369712515615334059.Spec : Prop :=
  ∀ n, (P2369712515615334059.a n : ℤ) = A230630 (n + 1)

end A230630

/-! ## A230630.P5507388785075913036

`C(2, a(floor((n-1)/2))²)` with `a(0)=0`
-/

namespace A230630.P5507388785075913036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose 2 (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat ^ 2)

end

end A230630.P5507388785075913036

namespace A230630

/-- `C(2, a(floor((n-1)/2))²)` -/
def P5507388785075913036.Spec : Prop :=
  ∀ n, (P5507388785075913036.a n : ℤ) = A230630 (n + 1)

end A230630

/-! ## A230630.P13755398210752223148

`A230629(ceil(n/2))`
-/

namespace A230630.P13755398210752223148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230629 ⌈(n : ℚ) / 2⌉.toNat

end

end A230630.P13755398210752223148

namespace A230630

/-- `A230629(ceil(n/2))` -/
def P13755398210752223148.Spec : Prop :=
  ∀ n, P13755398210752223148.a n = A230630 (n + 1)

end A230630

/-! ## A230630.P14626192717670460939

`A010872(floor(log2(n+1)))`
-/

namespace A230630.P14626192717670460939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (Nat.log 2 (n + 1))

end

end A230630.P14626192717670460939

namespace A230630

/-- `A010872(floor(log2(n+1)))` -/
def P14626192717670460939.Spec : Prop :=
  ∀ n, P14626192717670460939.a n = A230630 (n + 1)

end A230630

/-! ## A230630.P16108015497364089556

`A053879(A092323(n+1))`
-/

namespace A230630.P16108015497364089556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053879 (A092323 (n + 1)).toNat

end

end A230630.P16108015497364089556

namespace A230630

/-- `A053879(A092323(n+1))` -/
def P16108015497364089556.Spec : Prop :=
  ∀ n, P16108015497364089556.a n = A230630 (n + 1)

end A230630

/-! ## A230630.P11903107002643557650

`A101650(A053644(n+1))`
-/

namespace A230630.P11903107002643557650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101650 (A053644 (n + 1)).toNat

end

end A230630.P11903107002643557650

namespace A230630

/-- `A101650(A053644(n+1))` -/
def P11903107002643557650.Spec : Prop :=
  ∀ n, P11903107002643557650.a n = A230630 (n + 1)

end A230630

/-! ## A230630.P6350913568663624182

`1-A010892(2*A000523(n+1))`
-/

namespace A230630.P6350913568663624182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010892 (2 * A000523 (n + 1)).toNat

end

end A230630.P6350913568663624182

namespace A230630

/-- `1-A010892(2*A000523(n+1))` -/
def P6350913568663624182.Spec : Prop :=
  ∀ n, P6350913568663624182.a n = A230630 (n + 1)

end A230630

/-! ## A230630.P4169683225654348354

`A101650(A062383(n+1)/2)`
-/

namespace A230630.P4169683225654348354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101650 (SequenceMachineLib.roundAway ((A062383 (n + 1) : ℚ) / 2)).toNat

end

end A230630.P4169683225654348354

namespace A230630

/-- `A101650(A062383(n+1)/2)` -/
def P4169683225654348354.Spec : Prop :=
  ∀ n, P4169683225654348354.a n = A230630 (n + 1)

end A230630

/-! ## A230630.P6145203670704535130

`A071858(A142151(n))`
-/

namespace A230630.P6145203670704535130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (A142151 n).toNat

end

end A230630.P6145203670704535130

namespace A230630

/-- `A071858(A142151(n))` -/
def P6145203670704535130.Spec : Prop :=
  ∀ n, P6145203670704535130.a n = A230630 (n + 1)

end A230630

/-! ## A230630.P1611451295803208206

`A101650(A062383(n+1)+1)`
-/

namespace A230630.P1611451295803208206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101650 (A062383 (n + 1) + 1).toNat

end

end A230630.P1611451295803208206

namespace A230630

/-- `A101650(A062383(n+1)+1)` -/
def P1611451295803208206.Spec : Prop :=
  ∀ n, P1611451295803208206.a n = A230630 (n + 1)

end A230630

/-! ## A230630.P14668284916942201011

`A071858(A035327(n+1)+n)`
-/

namespace A230630.P14668284916942201011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (A035327 (n + 1) + (n : ℤ)).toNat

end

end A230630.P14668284916942201011

namespace A230630

/-- `A071858(A035327(n+1)+n)` -/
def P14668284916942201011.Spec : Prop :=
  ∀ n, P14668284916942201011.a n = A230630 (n + 1)

end A230630

/-! ## A230630.P7597739980313333559

`A101650(A338623(A004756(n+1)-n))`
-/

namespace A230630.P7597739980313333559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101650 (A338623 (A004756 (n + 1) - (n : ℤ)).toNat).toNat

end

end A230630.P7597739980313333559

namespace A230630

/-- `A101650(A338623(A004756(n+1)-n))` -/
def P7597739980313333559.Spec : Prop :=
  ∀ n, P7597739980313333559.a n = A230630 (n + 1)

end A230630

/-! ## A230630.P4518211530358027958

`A101650(A004756(A004756(n+1))-(n+1))`
-/

namespace A230630.P4518211530358027958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101650 (A004756 (A004756 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A230630.P4518211530358027958

namespace A230630

/-- `A101650(A004756(A004756(n+1))-(n+1))` -/
def P4518211530358027958.Spec : Prop :=
  ∀ n, P4518211530358027958.a n = A230630 (n + 1)

end A230630

/-! ## A230630.P7507141646437124504

`A053838(A137951(n))`
-/

namespace A230630.P7507141646437124504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (A137951 n).toNat

end

end A230630.P7507141646437124504

namespace A230630

/-- `A053838(A137951(n))` -/
def P7507141646437124504.Spec : Prop :=
  ∀ n, P7507141646437124504.a n = A230630 (n + 1)

end A230630

/-! ## A230630.P10178237727326187179

`A026612(A147991(n+1))`
-/

namespace A230630.P10178237727326187179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026612 (A147991 (n + 1)).toNat

end

end A230630.P10178237727326187179

namespace A230630

/-- `A026612(A147991(n+1))` -/
def P10178237727326187179.Spec : Prop :=
  ∀ n, P10178237727326187179.a n = A230630 (n + 1)

end A230630

/-! ## A230630.P13087201305854181939

`2-A151899(A147562(n+2))`
-/

namespace A230630.P13087201305854181939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A151899 (A147562 (n + 2)).toNat

end

end A230630.P13087201305854181939

namespace A230630

/-- `2-A151899(A147562(n+2))` -/
def P13087201305854181939.Spec : Prop :=
  ∀ n, P13087201305854181939.a n = A230630 (n + 1)

end A230630

/-!
# A230631: a(n) = n + (sum of digits in base-4 representation of n).

The programs for A230631, the canonical program `A230631.P4210711857821606968` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230631 has offset 0).

The definition of A230631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230631.P4210711857821606968

`A053737(n)+n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A230631

/-- `A053737(n)+n` -/
def P4210711857821606968.Spec : Prop :=
  ∀ n, P4210711857821606968.a n = A230631 n

theorem P4210711857821606968.correct : P4210711857821606968.Spec := by
  intro n
  simp only [A230631]

end A230631

/-! ## A230631.P16678723433361464582

`∑{digits}[A007090(n), #]+n`
-/

namespace A230631.P16678723433361464582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + n

end

end A230631.P16678723433361464582

namespace A230631

/-- `∑{digits}[A007090(n), #]+n` -/
def P16678723433361464582.Spec : Prop :=
  ∀ n, (P16678723433361464582.a n : ℤ) = A230631 n

end A230631

/-! ## A230631.P5152294935286729461

`A139352(n)+A092391(n)`
-/

namespace A230631.P5152294935286729461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n + A092391 n

end

end A230631.P5152294935286729461

namespace A230631

/-- `A139352(n)+A092391(n)` -/
def P5152294935286729461.Spec : Prop :=
  ∀ n, P5152294935286729461.a n = A230631 n

theorem P5152294935286729461.correct : P5152294935286729461.Spec := by
  intro n
  simp only [A230631, Nat.add_sub_cancel, A230631.P5152294935286729461.a, A230631.P4210711857821606968.a, A053737, A053737.P2884229603739038868.a, A092391, A092391.P1831081500129819331.a, A139352, A139352.P2034447244462371406.a, A000120, A000120.P2816527436160941581.a, A054893, A054893.P4971289715501713883.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230631

/-! ## A230631.P14191655806919530285

`A000120(n)+A139352(n)+n`
-/

namespace A230631.P14191655806919530285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A139352 n + (n : ℤ))

end

end A230631.P14191655806919530285

namespace A230631

/-- `A000120(n)+A139352(n)+n` -/
def P14191655806919530285.Spec : Prop :=
  ∀ n, P14191655806919530285.a n = A230631 n

theorem P14191655806919530285.correct : P14191655806919530285.Spec := by
  intro n
  simp only [A230631, Nat.add_sub_cancel, A230631.P14191655806919530285.a, A230631.P4210711857821606968.a, A000120, A000120.P2816527436160941581.a, A053737, A053737.P2884229603739038868.a, A139352, A139352.P2034447244462371406.a, A005187, A005187.P3874015513960485494.a, A054893, A054893.P4971289715501713883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230631

/-! ## A230631.P12286118190493686603

`A005843(n)-(n-A053737(n))`
-/

namespace A230631.P12286118190493686603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A053737 n)

end

end A230631.P12286118190493686603

namespace A230631

/-- `A005843(n)-(n-A053737(n))` -/
def P12286118190493686603.Spec : Prop :=
  ∀ n, P12286118190493686603.a n = A230631 n

theorem P12286118190493686603.correct : P12286118190493686603.Spec := by
  intro n
  simp only [A230631, Nat.add_sub_cancel, A230631.P12286118190493686603.a, A230631.P4210711857821606968.a, A005843, A005843.P3167286115683555970.a, A053737, A053737.P2884229603739038868.a, A054893, A054893.P4971289715501713883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230631

/-! ## A230631.P1964326748492392563

`A000120(n)+A000120(A059906(n))+n`
-/

namespace A230631.P1964326748492392563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A000120 (A059906 n).toNat + (n : ℤ))

end

end A230631.P1964326748492392563

namespace A230631

/-- `A000120(n)+A000120(A059906(n))+n` -/
def P1964326748492392563.Spec : Prop :=
  ∀ n, P1964326748492392563.a n = A230631 n

end A230631

/-! ## A230631.P5429838765514916996

`A000120(n)+A000120(A063695(n))+n`
-/

namespace A230631.P5429838765514916996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A000120 (A063695 n).toNat + (n : ℤ))

end

end A230631.P5429838765514916996

namespace A230631

/-- `A000120(n)+A000120(A063695(n))+n` -/
def P5429838765514916996.Spec : Prop :=
  ∀ n, P5429838765514916996.a n = A230631 n

end A230631

/-! ## A230631.P6282399742533547920

`A001222(A001316(n))+A139352(n)+n`
-/

namespace A230631.P6282399742533547920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 n).toNat + (A139352 n + (n : ℤ))

end

end A230631.P6282399742533547920

namespace A230631

/-- `A001222(A001316(n))+A139352(n)+n` -/
def P6282399742533547920.Spec : Prop :=
  ∀ n, P6282399742533547920.a n = A230631 n

end A230631

/-! ## A230631.P3099024918807553494

`A000120(n)+A139351(2*n)+n`
-/

namespace A230631.P3099024918807553494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A139351 (2 * n) + (n : ℤ))

end

end A230631.P3099024918807553494

namespace A230631

/-- `A000120(n)+A139351(2*n)+n` -/
def P3099024918807553494.Spec : Prop :=
  ∀ n, P3099024918807553494.a n = A230631 n

end A230631

/-! ## A230631.P15160641078422825801

`A053824(A020654(n+1))+n`
-/

namespace A230631.P15160641078422825801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A020654 (n + 1)).toNat + (n : ℤ)

end

end A230631.P15160641078422825801

namespace A230631

/-- `A053824(A020654(n+1))+n` -/
def P15160641078422825801.Spec : Prop :=
  ∀ n, P15160641078422825801.a n = A230631 n

end A230631

/-! ## A230631.P8724401781919297303

`A053824(A020655(n+1)-1)+n`
-/

namespace A230631.P8724401781919297303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A020655 (n + 1) - 1).toNat + (n : ℤ)

end

end A230631.P8724401781919297303

namespace A230631

/-- `A053824(A020655(n+1)-1)+n` -/
def P8724401781919297303.Spec : Prop :=
  ∀ n, P8724401781919297303.a n = A230631 n

end A230631

/-! ## A230631.P16984360705921760151

`n-(1-A053737(A016813(n)))`
-/

namespace A230631.P16984360705921760151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - A053737 (A016813 n).toNat)

end

end A230631.P16984360705921760151

namespace A230631

/-- `n-(1-A053737(A016813(n)))` -/
def P16984360705921760151.Spec : Prop :=
  ∀ n, P16984360705921760151.a n = A230631 n

end A230631

/-! ## A230631.P17844865364945431402

`A053827(A037460(n))+n`
-/

namespace A230631.P17844865364945431402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A037460 n).toNat + (n : ℤ)

end

end A230631.P17844865364945431402

namespace A230631

/-- `A053827(A037460(n))+n` -/
def P17844865364945431402.Spec : Prop :=
  ∀ n, P17844865364945431402.a n = A230631 n

end A230631

/-! ## A230631.P3427790060710602018

`A053830(A037463(n))+n`
-/

namespace A230631.P3427790060710602018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037463 n).toNat + (n : ℤ)

end

end A230631.P3427790060710602018

namespace A230631

/-- `A053830(A037463(n))+n` -/
def P3427790060710602018.Spec : Prop :=
  ∀ n, P3427790060710602018.a n = A230631 n

end A230631

/-! ## A230631.P2697771473945206217

`A053829(A037462(n))+n`
-/

namespace A230631.P2697771473945206217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037462 n).toNat + (n : ℤ)

end

end A230631.P2697771473945206217

namespace A230631

/-- `A053829(A037462(n))+n` -/
def P2697771473945206217.Spec : Prop :=
  ∀ n, P2697771473945206217.a n = A230631 n

end A230631

/-! ## A230631.P4605152983941502387

`n-(1-A053737(A158057(n)))`
-/

namespace A230631.P4605152983941502387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - A053737 (A158057 n).toNat)

end

end A230631.P4605152983941502387

namespace A230631

/-- `n-(1-A053737(A158057(n)))` -/
def P4605152983941502387.Spec : Prop :=
  ∀ n, P4605152983941502387.a n = A230631 n

end A230631

/-! ## A230631.P17347334481958344120

`A007953(A007090(n))+n`
-/

namespace A230631.P17347334481958344120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007090 n).toNat + (n : ℤ)

end

end A230631.P17347334481958344120

namespace A230631

/-- `A007953(A007090(n))+n` -/
def P17347334481958344120.Spec : Prop :=
  ∀ n, P17347334481958344120.a n = A230631 n

end A230631

/-! ## A230631.P6439371673135059310

`A057536(A007284(n))+n`
-/

namespace A230631.P6439371673135059310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057536 (A007284 n).toNat + (n : ℤ)

end

end A230631.P6439371673135059310

namespace A230631

/-- `A057536(A007284(n))+n` -/
def P6439371673135059310.Spec : Prop :=
  ∀ n, P6439371673135059310.a n = A230631 n

end A230631

/-! ## A230631.P2248671309052949786

`A057536(A046030(n+1))+n`
-/

namespace A230631.P2248671309052949786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057536 (A046030 (n + 1)).toNat + (n : ℤ)

end

end A230631.P2248671309052949786

namespace A230631

/-- `A057536(A046030(n+1))+n` -/
def P2248671309052949786.Spec : Prop :=
  ∀ n, P2248671309052949786.a n = A230631 n

end A230631

/-! ## A230631.P3484416889009175801

`A007953(record[A064770(n)])+n`
-/

namespace A230631.P3484416889009175801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (n : ℤ)

end

end A230631.P3484416889009175801

namespace A230631

/-- `A007953(record[A064770(n)])+n` -/
def P3484416889009175801.Spec : Prop :=
  ∀ n, P3484416889009175801.a n = A230631 n

end A230631

/-!
# A230632: Number of integers m such that m + (sum of digits in base-4 representation of m) = n.

The programs for A230632, there is no canonical definition to state claims against.
-/

/-! ## A230632.P11179276146102553469

`char[A230634(n+1)]+char[A230631(n)]`
-/

namespace A230632.P11179276146102553469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230631 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A230632.P11179276146102553469

/-! ## A230632.P16851938164259721135

`A052343(A014312(A322044(n)+A056171(n+1)))`
-/

namespace A230632.P16851938164259721135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (A014312 (A322044 n + A056171 (n + 1)).toNat).toNat

end

end A230632.P16851938164259721135

/-! ## A230632.P13445075086450968042

`A146292(A059481(n))-A156064(A068526(n+1))`
-/

namespace A230632.P13445075086450968042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146292 (A059481 n).toNat - A156064 (A068526 (n + 1)).toNat

end

end A230632.P13445075086450968042

/-! ## A230632.P4879081875044870824

`A247504(A047813(∑[A065033(n)]))`
-/

namespace A230632.P4879081875044870824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247504 (A047813 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A230632.P4879081875044870824

/-! ## A230632.P14178052874622604131

`A355745(A310125(n+1))`
-/

namespace A230632.P14178052874622604131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355745 (A310125 (n + 1)).toNat

end

end A230632.P14178052874622604131

/-!
# A230633: Numbers n such that m + (sum of digits in base-4 representation of m) = n has exactly one solution.

The programs for A230633, there is no canonical definition to state claims against.
-/

/-! ## A230633.P14179363748785624658

`eq[1, A230632(n)]`
-/

namespace A230633.P14179363748785624658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230633.P14179363748785624658

/-! ## A230633.P4548455897117556869

`record[A130884(n)%(A230632(n)+n)]`
-/

namespace A230633.P4548455897117556869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130884 n) (A230632 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230633.P4548455897117556869

/-! ## A230633.P14788955618122573710

`record[A257645(n)%(A230632(n)+n)]`
-/

namespace A230633.P14788955618122573710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257645 n) (A230632 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230633.P14788955618122573710

/-! ## A230633.P15664278530275348244

`record[(n*A230632(n))%A053438(n)]`
-/

namespace A230633.P15664278530275348244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A230632 n) (A053438 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230633.P15664278530275348244

/-! ## A230633.P13950208831595029080

`record[(A054000(n+1)+1)%(A230632(n)+n)]`
-/

namespace A230633.P13950208831595029080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054000 (n + 1) + 1) (A230632 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230633.P13950208831595029080

/-! ## A230633.P544396980682964503

`record[A158463(n+1)%(A230632(n)+n)]`
-/

namespace A230633.P544396980682964503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158463 (n + 1)) (A230632 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230633.P544396980682964503

/-!
# A230634: Numbers n such that m + (sum of digits in base-4 representation of m) = n has exactly two solutions.

The programs for A230634, there is no canonical definition to state claims against.
-/

/-! ## A230634.P15891854169640916945

`lt[1, A230632(n)]`
-/

namespace A230634.P15891854169640916945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A230634.P15891854169640916945

/-! ## A230634.P13006261935977362808

`eq[2, A230632(A028310(n))]`
-/

namespace A230634.P13006261935977362808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230634.P13006261935977362808

/-! ## A230634.P2460980493052344969

`eq[A165063(n+1), A230632(n)]`
-/

namespace A230634.P2460980493052344969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230634.P2460980493052344969

/-! ## A230634.P6165105758272862568

`eq[A161872(n+2), A230632(n)]`
-/

namespace A230634.P6165105758272862568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161872 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230634.P6165105758272862568

/-! ## A230634.P10653955651194567365

`eq[A134451(and(2*n, -n)), A230632(n)]`
-/

namespace A230634.P10653955651194567365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (Int.land (2 * n : ℤ) (-(n : ℤ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230634.P10653955651194567365

/-! ## A230634.P12646696156120398924

`eq[A001222(A001358(n+1)), A230632(n)]`
-/

namespace A230634.P12646696156120398924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001358 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230634.P12646696156120398924

/-! ## A230634.P9153558640546181732

`eq[A230632(n), A236213(n+1)]`
-/

namespace A230634.P9153558640546181732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230634.P9153558640546181732

/-! ## A230634.P4334987261573179147

`eq[A034077(n+2), A230632(n)]`
-/

namespace A230634.P4334987261573179147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034077 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230634.P4334987261573179147

/-! ## A230634.P335534352646908793

`eq[A154068(n+4), A230632(n)]`
-/

namespace A230634.P335534352646908793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154068 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230634.P335534352646908793

/-! ## A230634.P14952775055561435664

`eq[n*A230632(n)², A008574(n)]`
-/

namespace A230634.P14952775055561435664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A230632 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230634.P14952775055561435664

/-! ## A230634.P18330424396271710254

`eq[A020639(A230628(n+1)), A230632(n)]`
-/

namespace A230634.P18330424396271710254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A230628 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230634.P18330424396271710254

/-! ## A230634.P7837089128398165538

`eq[A007978(A005408(n)), A230632(n)]`
-/

namespace A230634.P7837089128398165538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A005408 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230634.P7837089128398165538

/-! ## A230634.P10564546882260114931

`eq[A228826(A008574(n)), A230632(n)]`
-/

namespace A230634.P10564546882260114931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230634.P10564546882260114931

/-! ## A230634.P12982479407156875628

`eq[A000005(A006450(n+1)), A230632(n)]`
-/

namespace A230634.P12982479407156875628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006450 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230634.P12982479407156875628

/-! ## A230634.P923595256859680439

`eq[A230632(n), A251619(n+1)]`
-/

namespace A230634.P923595256859680439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251619 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230634.P923595256859680439

/-! ## A230634.P11048829429437546582

`eq[A000005(A246931(n+1)), A230632(n)]`
-/

namespace A230634.P11048829429437546582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A246931 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230634.P11048829429437546582

/-! ## A230634.P16029664747780898438

`eq[A040255(A082285(n)), A230632(n)]`
-/

namespace A230634.P16029664747780898438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040255 (A082285 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230634.P16029664747780898438

/-!
# A230639: Let M(1)=0 and for n>1, B(n)=(M(ceiling(n/2))+M(floor(n/2))+2)/2, M(n)=3^B(n)+M(floor(n/2))+1. This sequence gives B(n).

The programs for A230639, there is no canonical definition to state claims against.
-/

/-! ## A230639.P2767954864937053621

`A271800(A094623(n+1))`
-/

namespace A230639.P2767954864937053621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271800 (A094623 (n + 1)).toNat

end

end A230639.P2767954864937053621

/-! ## A230639.P17209374432224111362

`∑[A265485(∑[A097331(n)])]`
-/

namespace A230639.P17209374432224111362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265485 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230639.P17209374432224111362

/-! ## A230639.P2334331943459959770

`∑[A114571(∏[A072345(n)])]`
-/

namespace A230639.P2334331943459959770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114571 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230639.P2334331943459959770

/-!
# A230640: Let M(1)=0 and for n>1, B(n)=(M(ceiling(n/2))+M(floor(n/2))+2)/2, M(n)=3^B(n)+M(floor(n/2))+1. This sequence gives M(n).

The programs for A230640, there is no canonical definition to state claims against.
-/

/-! ## A230640.P1577137167910525121

`A230639(2*(n+1))-1`
-/

namespace A230640.P1577137167910525121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230639 (2 * (n + 1)) - 1

end

end A230640.P1577137167910525121

/-!
# A230641: a(n) = n + (sum of digits in base-3 representation of n).

The programs for A230641, the canonical program `A230641.P12572480448472300178` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230641 has offset 0).

The definition of A230641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230641.P12572480448472300178

`n+A053735(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A230641

/-- `n+A053735(n)` -/
def P12572480448472300178.Spec : Prop :=
  ∀ n, P12572480448472300178.a n = A230641 n

theorem P12572480448472300178.correct : P12572480448472300178.Spec := by
  intro n
  simp only [A230641]

end A230641

/-! ## A230641.P18194005200623142885

`2*A089792(n)`
-/

namespace A230641.P18194005200623142885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089792 n

end

end A230641.P18194005200623142885

namespace A230641

/-- `2*A089792(n)` -/
def P18194005200623142885.Spec : Prop :=
  ∀ n, P18194005200623142885.a n = A230641 n

theorem P18194005200623142885.correct : P18194005200623142885.Spec := by
  intro n
  simp only [A230641, Nat.add_sub_cancel, A230641.P18194005200623142885.a, A230641.P12572480448472300178.a, A053735, A053735.P3640341592284089632.a, A089792, A089792.P9464686631977204043.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230641

/-! ## A230641.P16444847800880821057

`2*(n-A054861(n))`
-/

namespace A230641.P16444847800880821057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A054861 n)

end

end A230641.P16444847800880821057

namespace A230641

/-- `2*(n-A054861(n))` -/
def P16444847800880821057.Spec : Prop :=
  ∀ n, P16444847800880821057.a n = A230641 n

theorem P16444847800880821057.correct : P16444847800880821057.Spec := by
  intro n
  simp only [A230641, Nat.add_sub_cancel, A230641.P16444847800880821057.a, A230641.P12572480448472300178.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230641

/-! ## A230641.P11591802568776553604

`2*n-A344853(n)`
-/

namespace A230641.P11591802568776553604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A344853 n

end

end A230641.P11591802568776553604

namespace A230641

/-- `2*n-A344853(n)` -/
def P11591802568776553604.Spec : Prop :=
  ∀ n, P11591802568776553604.a n = A230641 n

theorem P11591802568776553604.correct : P11591802568776553604.Spec := by
  intro n
  simp only [A230641, Nat.add_sub_cancel, A230641.P11591802568776553604.a, A230641.P12572480448472300178.a, A053735, A053735.P3640341592284089632.a, A344853, A344853.P1953230496886263085.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230641

/-! ## A230641.P33129953565671701

`A365722(3*n)+n`
-/

namespace A230641.P33129953565671701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365722 (3 * n) + (n : ℤ)

end

end A230641.P33129953565671701

namespace A230641

/-- `A365722(3*n)+n` -/
def P33129953565671701.Spec : Prop :=
  ∀ n, P33129953565671701.a n = A230641 n

end A230641

/-! ## A230641.P5212868893799359120

`4*n-A346502(n)`
-/

namespace A230641.P5212868893799359120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A346502 n

end

end A230641.P5212868893799359120

namespace A230641

/-- `4*n-A346502(n)` -/
def P5212868893799359120.Spec : Prop :=
  ∀ n, P5212868893799359120.a n = A230641 n

end A230641

/-! ## A230641.P4916752755931888979

`A173523(n+1)-1+n`
-/

namespace A230641.P4916752755931888979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1) - 1 + (n : ℤ)

end

end A230641.P4916752755931888979

namespace A230641

/-- `A173523(n+1)-1+n` -/
def P4916752755931888979.Spec : Prop :=
  ∀ n, P4916752755931888979.a n = A230641 n

theorem P4916752755931888979.correct : P4916752755931888979.Spec := by
  intro n
  simp only [A230641, Nat.add_sub_cancel, A230641.P4916752755931888979.a, A230641.P12572480448472300178.a, A053735, A053735.P3640341592284089632.a, A173523, A173523.P2383759421144788857.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230641

/-! ## A230641.P5155359200600382192

`2*(n-∑[val(A028310(n), 3)])`
-/

namespace A230641.P5155359200600382192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028310 n).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A230641.P5155359200600382192

namespace A230641

/-- `2*(n-∑[val(A028310(n), 3)])` -/
def P5155359200600382192.Spec : Prop :=
  ∀ n, P5155359200600382192.a n = A230641 n

end A230641

/-! ## A230641.P7154539514970312932

`A005843(A089792(n))`
-/

namespace A230641.P7154539514970312932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A089792 n).toNat

end

end A230641.P7154539514970312932

namespace A230641

/-- `A005843(A089792(n))` -/
def P7154539514970312932.Spec : Prop :=
  ∀ n, P7154539514970312932.a n = A230641 n

end A230641

/-! ## A230641.P13818835315747060481

`A003313(A006047(n))+n`
-/

namespace A230641.P13818835315747060481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A006047 n).toNat + (n : ℤ)

end

end A230641.P13818835315747060481

namespace A230641

/-- `A003313(A006047(n))+n` -/
def P13818835315747060481.Spec : Prop :=
  ∀ n, P13818835315747060481.a n = A230641 n

end A230641

/-! ## A230641.P2328400585072085378

`A096288(n)+A011371(n)`
-/

namespace A230641.P2328400585072085378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 n + A011371 n

end

end A230641.P2328400585072085378

namespace A230641

/-- `A096288(n)+A011371(n)` -/
def P2328400585072085378.Spec : Prop :=
  ∀ n, P2328400585072085378.a n = A230641 n

theorem P2328400585072085378.correct : P2328400585072085378.Spec := by
  intro n
  simp only [A230641, Nat.add_sub_cancel, A230641.P2328400585072085378.a, A230641.P12572480448472300178.a, A011371, A011371.P12398255777927387864.a, A053735, A053735.P3640341592284089632.a, A096288, A096288.P13797560073647368963.a, A000120, A000120.P2816527436160941581.a, A054861, A054861.P6137810495506521191.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230641

/-! ## A230641.P6062419605465194477

`A180017(n)+A092391(n)`
-/

namespace A230641.P6062419605465194477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n + A092391 n

end

end A230641.P6062419605465194477

namespace A230641

/-- `A180017(n)+A092391(n)` -/
def P6062419605465194477.Spec : Prop :=
  ∀ n, P6062419605465194477.a n = A230641 n

theorem P6062419605465194477.correct : P6062419605465194477.Spec := by
  intro n
  simp only [A230641, Nat.add_sub_cancel, A230641.P6062419605465194477.a, A230641.P12572480448472300178.a, A053735, A053735.P3640341592284089632.a, A092391, A092391.P1831081500129819331.a, A180017, A180017.P1955405444060819929.a, A000120, A000120.P2816527436160941581.a, A011371, A011371.P12398255777927387864.a, A054861, A054861.P6137810495506521191.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230641

/-! ## A230641.P5852983345505480731

`A056239(A331279(n))+n`
-/

namespace A230641.P5852983345505480731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A331279 n).toNat + (n : ℤ)

end

end A230641.P5852983345505480731

namespace A230641

/-- `A056239(A331279(n))+n` -/
def P5852983345505480731.Spec : Prop :=
  ∀ n, P5852983345505480731.a n = A230641 n

end A230641

/-! ## A230641.P4809846089801274849

`A053735(n)-A001489(n)`
-/

namespace A230641.P4809846089801274849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - A001489 n

end

end A230641.P4809846089801274849

namespace A230641

/-- `A053735(n)-A001489(n)` -/
def P4809846089801274849.Spec : Prop :=
  ∀ n, P4809846089801274849.a n = A230641 n

theorem P4809846089801274849.correct : P4809846089801274849.Spec := by
  intro n
  simp only [A230641, Nat.add_sub_cancel, A230641.P4809846089801274849.a, A230641.P12572480448472300178.a, A001489, A001489.P15233530513763566776.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230641

/-! ## A230641.P11730205356180133917

`A005843(n-A054861(n))`
-/

namespace A230641.P11730205356180133917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n : ℤ) - A054861 n).toNat

end

end A230641.P11730205356180133917

namespace A230641

/-- `A005843(n-A054861(n))` -/
def P11730205356180133917.Spec : Prop :=
  ∀ n, P11730205356180133917.a n = A230641 n

end A230641

/-! ## A230641.P6882422381912302912

`A062028(n)-A180019(n)`
-/

namespace A230641.P6882422381912302912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - A180019 n

end

end A230641.P6882422381912302912

namespace A230641

/-- `A062028(n)-A180019(n)` -/
def P6882422381912302912.Spec : Prop :=
  ∀ n, P6882422381912302912.a n = A230641 n

theorem P6882422381912302912.correct : P6882422381912302912.Spec := by
  intro n
  simp only [A230641, Nat.add_sub_cancel, A230641.P6882422381912302912.a, A230641.P12572480448472300178.a, A053735, A053735.P3640341592284089632.a, A062028, A062028.P8420805724104474199.a, A180019, A180019.P15303784812221257268.a, A007953, A007953.P3472751987379697826.a, A054861, A054861.P6137810495506521191.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230641

/-! ## A230641.P7668732599764043536

`A173523(n+1)+A023443(n)`
-/

namespace A230641.P7668732599764043536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1) + A023443 n

end

end A230641.P7668732599764043536

namespace A230641

/-- `A173523(n+1)+A023443(n)` -/
def P7668732599764043536.Spec : Prop :=
  ∀ n, P7668732599764043536.a n = A230641 n

theorem P7668732599764043536.correct : P7668732599764043536.Spec := by
  intro n
  simp only [A230641, Nat.add_sub_cancel, A230641.P7668732599764043536.a, A230641.P12572480448472300178.a, A023443, A023443.P2966051066474347068.a, A053735, A053735.P3640341592284089632.a, A173523, A173523.P2383759421144788857.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230641

/-! ## A230641.P16307022639374334786

`2*(n-A004128(A002264(n)))`
-/

namespace A230641.P16307022639374334786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A004128 (A002264 n).toNat)

end

end A230641.P16307022639374334786

namespace A230641

/-- `2*(n-A004128(A002264(n)))` -/
def P16307022639374334786.Spec : Prop :=
  ∀ n, P16307022639374334786.a n = A230641 n

end A230641

/-! ## A230641.P13218025474796118030

`A005843(2*n-A004128(n))`
-/

namespace A230641.P13218025474796118030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((2 * n : ℤ) - A004128 n).toNat

end

end A230641.P13218025474796118030

namespace A230641

/-- `A005843(2*n-A004128(n))` -/
def P13218025474796118030.Spec : Prop :=
  ∀ n, P13218025474796118030.a n = A230641 n

end A230641

/-! ## A230641.P7244004223540122252

`A008586(n-A054861(n))/2`
-/

namespace A230641.P7244004223540122252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008586 ((n : ℤ) - A054861 n).toNat : ℚ) / 2

end

end A230641.P7244004223540122252

namespace A230641

/-- `A008586(n-A054861(n))/2` -/
def P7244004223540122252.Spec : Prop :=
  ∀ n, P7244004223540122252.a n = (A230641 n : ℚ)

end A230641

/-! ## A230641.P3541723684715073870

`2*(n-val(n!, 3))`
-/

namespace A230641.P3541723684715073870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - (SequenceMachineLib.valuation (Nat.factorial n) 3 : ℤ))

end

end A230641.P3541723684715073870

namespace A230641

/-- `2*(n-val(n!, 3))` -/
def P3541723684715073870.Spec : Prop :=
  ∀ n, P3541723684715073870.a n = A230641 n

end A230641

/-!
# A230642: Number of integers m such that m + (sum of digits in base-3 representation of m) = n.

The programs for A230642, there is no canonical definition to state claims against.
-/

/-! ## A230642.P10617524914834845337

`A230643(A142150(n))-A000035(n)`
-/

namespace A230642.P10617524914834845337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 (A142150 n).toNat - A000035 n

end

end A230642.P10617524914834845337

/-! ## A230642.P4996559602278538192

`A059841(n)*A230643(A065033(n))`
-/

namespace A230642.P4996559602278538192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A230643 (A065033 n).toNat

end

end A230642.P4996559602278538192

/-! ## A230642.P17563562240813807835

`Δ[A110654(n)]*A230643(A110654(n))`
-/

namespace A230642.P17563562240813807835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A230643 (A110654 n).toNat

end

end A230642.P17563562240813807835

/-! ## A230642.P3536735200330794994

`A059841(n)*A230643(A001281(n*A059841(n)))`
-/

namespace A230642.P3536735200330794994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A230643 (A001281 ((n : ℤ) * A059841 n).toNat).toNat

end

end A230642.P3536735200330794994

/-! ## A230642.P10189713657314497952

`A059841(n)*A230643(A006370(n*A059841(n)))`
-/

namespace A230642.P10189713657314497952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A230643 (A006370 ((n : ℤ) * A059841 n).toNat).toNat

end

end A230642.P10189713657314497952

/-! ## A230642.P98717916283352306

`A000035(n+1)*A230643(A142150(n))`
-/

namespace A230642.P98717916283352306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A230643 (A142150 n).toNat

end

end A230642.P98717916283352306

/-! ## A230642.P12769099723433253618

`A166514(2*n+1)*A230643(A166514(n))`
-/

namespace A230642.P12769099723433253618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (2 * n + 1) * A230643 (A166514 n).toNat

end

end A230642.P12769099723433253618

/-! ## A230642.P13988621720876448534

`A059841(n)*A230643(A001281(n))`
-/

namespace A230642.P13988621720876448534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A230643 (A001281 n).toNat

end

end A230642.P13988621720876448534

/-! ## A230642.P11956715325321367296

`A059841(n)*A230643(A006370(n))`
-/

namespace A230642.P11956715325321367296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A230643 (A006370 n).toNat

end

end A230642.P11956715325321367296

/-! ## A230642.P905015007613526031

`and(A077896(n), A230643(A004526(n)))`
-/

namespace A230642.P905015007613526031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077896 n) (A230643 (A004526 n).toNat)

end

end A230642.P905015007613526031

/-!
# A230643: Number of integers m such that m + (sum of digits in base-3 representation of m) = 2n.

The programs for A230643, there is no canonical definition to state claims against.
-/

/-! ## A230643.P8967269801474409070

`A230642(2*n)`
-/

namespace A230643.P8967269801474409070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230642 (2 * n)

end

end A230643.P8967269801474409070

/-! ## A230643.P12405073111888139354

`A230642(n+n)%8`
-/

namespace A230643.P12405073111888139354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230642 (n + n)) 8

end

end A230643.P12405073111888139354

/-! ## A230643.P16727474223825027475

`gcd(12, A230642(A005843(n)))`
-/

namespace A230643.P16727474223825027475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (A230642 (A005843 n).toNat)

end

end A230643.P16727474223825027475

/-! ## A230643.P8244127607045727293

`dr(A230642(record[A230641(n)]))`
-/

namespace A230643.P8244127607045727293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A230642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A230643.P8244127607045727293

/-! ## A230643.P75535241020614541

`A230642(A004277(n))+C(2, n+2)`
-/

namespace A230643.P75535241020614541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230642 (A004277 n).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A230643.P75535241020614541

/-! ## A230643.P5209926543340310456

`A230642(A004277(n))+A000007(n)`
-/

namespace A230643.P5209926543340310456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230642 (A004277 n).toNat + A000007 n

end

end A230643.P5209926543340310456

/-! ## A230643.P6045002498039167365

`or(A000007(n), A230642(A005843(n)))`
-/

namespace A230643.P6045002498039167365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A230642 (A005843 n).toNat)

end

end A230643.P6045002498039167365

/-! ## A230643.P17661436635478588085

`A243823(A006530(n+1))+A230642(n+n)`
-/

namespace A230643.P17661436635478588085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (A006530 (n + 1)).toNat + A230642 (n + n)

end

end A230643.P17661436635478588085

/-! ## A230643.P12280302772494757769

`dr(A230642(record[A038608(n)]))`
-/

namespace A230643.P12280302772494757769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A230642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A230643.P12280302772494757769

/-! ## A230643.P17158612009234481684

`A230642(n+n)^A230642(A230853(n+1))`
-/

namespace A230643.P17158612009234481684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230642 (n + n) : ℚ) ^ (A230642 (A230853 (n + 1)).toNat : ℤ)

end

end A230643.P17158612009234481684

/-! ## A230643.P286280572202916795

`A230642(n+n)+A230642(A106964(n+1))`
-/

namespace A230643.P286280572202916795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230642 (n + n) + A230642 (A106964 (n + 1)).toNat

end

end A230643.P286280572202916795

/-!
# A230646: Number of n X n 0..2 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230646, there is no canonical definition to state claims against.
-/

/-! ## A230646.P1712400421889680153

`A230652(∑[4*n]+1)`
-/

namespace A230646.P1712400421889680153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230646.P1712400421889680153

/-! ## A230646.P8476532927579460999

`lcm(3, A230652(A001844(n)))`
-/

namespace A230646.P8476532927579460999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A230652 (A001844 n).toNat)

end

end A230646.P8476532927579460999

/-! ## A230646.P17583244058481385633

`A057427(n)*A230652(A001844(n))`
-/

namespace A230646.P17583244058481385633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A230652 (A001844 n).toNat

end

end A230646.P17583244058481385633

/-! ## A230646.P11610000257372417427

`A007318(∑[n])*A230652(A001844(n))`
-/

namespace A230646.P11610000257372417427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A230652 (A001844 n).toNat

end

end A230646.P11610000257372417427

/-! ## A230646.P14220273496109929514

`A014963(4*n+6)*A230652(A001844(n))`
-/

namespace A230646.P14220273496109929514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A230652 (A001844 n).toNat

end

end A230646.P14220273496109929514

/-!
# A230647: Number of nX3 0..2 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230647, the canonical program `A230647.P10367987494496474510` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230647 has offset 1).

The definition of A230647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230647.P10367987494496474510

`9*a(n-2)-4*a(n-4)` with `a(0)=0, a(1)=3, a(2)=3, a(3)=21`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230647

/-- `9*a(n-2)-4*a(n-4)` -/
def P10367987494496474510.Spec : Prop :=
  ∀ n, P10367987494496474510.a n = A230647 (n + 1)

theorem P10367987494496474510.correct : P10367987494496474510.Spec := by
  intro n
  simp only [A230647, Nat.add_sub_cancel]

end A230647

/-! ## A230647.P12193821720325526039

`lcm(5, A230658(n+1))/5`
-/

namespace A230647.P12193821720325526039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 5 (A230658 (n + 1)) : ℚ) / 5

end

end A230647.P12193821720325526039

namespace A230647

/-- `lcm(5, A230658(n+1))/5` -/
def P12193821720325526039.Spec : Prop :=
  ∀ n, P12193821720325526039.a n = (A230647 (n + 1) : ℚ)

end A230647

/-! ## A230647.P3403271506444012193

`A230658(n+1)/A176260(n)`
-/

namespace A230647.P3403271506444012193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230658 (n + 1) : ℚ) / (A176260 n : ℚ)

end

end A230647.P3403271506444012193

namespace A230647

/-- `A230658(n+1)/A176260(n)` -/
def P3403271506444012193.Spec : Prop :=
  ∀ n, P3403271506444012193.a n = (A230647 (n + 1) : ℚ)

end A230647

/-! ## A230647.P14696533617138111517

`A230658(n+1)/A014551(n)%6`
-/

namespace A230647.P14696533617138111517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230658 (n + 1) : ℚ) / (Int.tmod (A014551 n) 6 : ℚ)

end

end A230647.P14696533617138111517

namespace A230647

/-- `A230658(n+1)/A014551(n)%6` -/
def P14696533617138111517.Spec : Prop :=
  ∀ n, P14696533617138111517.a n = (A230647 (n + 1) : ℚ)

end A230647

/-! ## A230647.P11031436681144996559

`A230658(n+1)/A313670(∑[A033999(n)])`
-/

namespace A230647.P11031436681144996559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230658 (n + 1) : ℚ) / (A313670 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A230647.P11031436681144996559

namespace A230647

/-- `A230658(n+1)/A313670(∑[A033999(n)])` -/
def P11031436681144996559.Spec : Prop :=
  ∀ n, P11031436681144996559.a n = (A230647 (n + 1) : ℚ)

end A230647

/-!
# A230648: Number of nX4 0..2 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230648, the canonical program `A230648.P11002407159052971798` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230648 has offset 1).

The definition of A230648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230648.P11002407159052971798

`3*a(n-1)+8*a(n-2)-a(n-3)-a(n-4)` with `a(0)=0, a(1)=9, a(2)=21, a(3)=123, a(4)=531`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230648

/-- `3*a(n-1)+8*a(n-2)-a(n-3)-a(n-4)` -/
def P11002407159052971798.Spec : Prop :=
  ∀ n, P11002407159052971798.a n = A230648 (n + 1)

theorem P11002407159052971798.correct : P11002407159052971798.Spec := by
  intro n
  simp only [A230648, Nat.add_sub_cancel]

end A230648

/-! ## A230648.P11613599941194858400

`sqrt(A230064(n+1))`
-/

namespace A230648.P11613599941194858400
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A230064 (n + 1) : ℝ)

end

end A230648.P11613599941194858400

namespace A230648

/-- `sqrt(A230064(n+1))` -/
def P11613599941194858400.Spec : Prop :=
  ∀ n, P11613599941194858400.a n = (A230648 (n + 1) : ℝ)

end A230648

/-! ## A230648.P9441602224012279134

`A230652(A167614(n+2)+1)`
-/

namespace A230648.P9441602224012279134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (A167614 (n + 2) + 1).toNat

end

end A230648.P9441602224012279134

namespace A230648

/-- `A230652(A167614(n+2)+1)` -/
def P9441602224012279134.Spec : Prop :=
  ∀ n, P9441602224012279134.a n = A230648 (n + 1)

end A230648

/-! ## A230648.P17913580046208520277

`A230652(A141214(n+1))`
-/

namespace A230648.P17913580046208520277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (A141214 (n + 1)).toNat

end

end A230648.P17913580046208520277

namespace A230648

/-- `A230652(A141214(n+1))` -/
def P17913580046208520277.Spec : Prop :=
  ∀ n, P17913580046208520277.a n = A230648 (n + 1)

end A230648

/-! ## A230648.P9839384295159647882

`A230652(A374004(n+1))`
-/

namespace A230648.P9839384295159647882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (A374004 (n + 1)).toNat

end

end A230648.P9839384295159647882

namespace A230648

/-- `A230652(A374004(n+1))` -/
def P9839384295159647882.Spec : Prop :=
  ∀ n, P9839384295159647882.a n = A230648 (n + 1)

end A230648

/-!
# A230649: Number of nX5 0..2 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230649, there is no canonical definition to state claims against.
-/

/-! ## A230649.P612182865447299972

`A230652(A167499(n+3))`
-/

namespace A230649.P612182865447299972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (A167499 (n + 3)).toNat

end

end A230649.P612182865447299972

/-! ## A230649.P4217784050661884129

`A230652(A155212(n)+13)`
-/

namespace A230649.P4217784050661884129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (A155212 n + 13).toNat

end

end A230649.P4217784050661884129

/-! ## A230649.P7836586076668185518

`A230652(A056000(n)+15)`
-/

namespace A230649.P7836586076668185518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (A056000 n + 15).toNat

end

end A230649.P7836586076668185518

/-! ## A230649.P9273673026266530387

`A230652(A167614(n+3)+2)`
-/

namespace A230649.P9273673026266530387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (A167614 (n + 3) + 2).toNat

end

end A230649.P9273673026266530387

/-! ## A230649.P8240770449622994183

`A230652(A133263(n+4)+3)`
-/

namespace A230649.P8240770449622994183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (A133263 (n + 4) + 3).toNat

end

end A230649.P8240770449622994183

/-!
# A230650: Number of nX6 0..2 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230650, there is no canonical definition to state claims against.
-/

/-! ## A230650.P5980877972286840557

`sqrt(A230066(n+1))`
-/

namespace A230650.P5980877972286840557
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A230066 (n + 1) : ℝ)

end

end A230650.P5980877972286840557

/-! ## A230650.P284819177083808962

`A230652(A000217(n+7)-7-2*n)`
-/

namespace A230650.P284819177083808962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (A000217 (n + 7) - 7 - (2 * n : ℤ)).toNat

end

end A230650.P284819177083808962

/-! ## A230650.P2064831289293245209

`A230652(A374007(n+1))`
-/

namespace A230650.P2064831289293245209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (A374007 (n + 1)).toNat

end

end A230650.P2064831289293245209

/-! ## A230650.P1627155807959758441

`A230652(eq[5, A152157(n)])`
-/

namespace A230650.P1627155807959758441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230650.P1627155807959758441

/-! ## A230650.P2096678359086611559

`A230661(A000217(n+7)-7-2*n)`
-/

namespace A230650.P2096678359086611559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230661 (A000217 (n + 7) - 7 - (2 * n : ℤ)).toNat

end

end A230650.P2096678359086611559

/-!
# A230651: Number of nX7 0..2 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230651, there is no canonical definition to state claims against.
-/

/-! ## A230651.P1435464677986275143

`A230652(A000096(n+5)+8)`
-/

namespace A230651.P1435464677986275143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (A000096 (n + 5) + 8).toNat

end

end A230651.P1435464677986275143

/-! ## A230651.P9820309600869106216

`A230652(eq[8, A131818(n+1)])`
-/

namespace A230651.P9820309600869106216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230651.P9820309600869106216

/-! ## A230651.P5454900513261518788

`A230652(A374008(n+1))`
-/

namespace A230651.P5454900513261518788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (A374008 (n + 1)).toNat

end

end A230651.P5454900513261518788

/-! ## A230651.P1861228738635252111

`A230652(A055999(n+4))`
-/

namespace A230651.P1861228738635252111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (A055999 (n + 4)).toNat

end

end A230651.P1861228738635252111

/-! ## A230651.P15111072528736745407

`A230652(eq[6, A193592(n)])`
-/

namespace A230651.P15111072528736745407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230651.P15111072528736745407

/-!
# A230652: T(n,k)=Number of nXk 0..2 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230652, there is no canonical definition to state claims against.
-/

/-! ## A230652.P15710976258253772317

`A230068(n+1)/or(1, A230661(n+1))`
-/

namespace A230652.P15710976258253772317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230068 (n + 1) : ℚ) / (Int.lor 1 (A230661 (n + 1)) : ℚ)

end

end A230652.P15710976258253772317

/-! ## A230652.P5608971200503198016

`A230068(n+1)/A028310(A230661(n+1))`
-/

namespace A230652.P5608971200503198016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230068 (n + 1) : ℚ) / (A028310 (A230661 (n + 1)).toNat : ℚ)

end

end A230652.P5608971200503198016

/-! ## A230652.P1688731326487781912

`A026741(A262689(A230068(n+1)))`
-/

namespace A230652.P1688731326487781912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A262689 (A230068 (n + 1)).toNat).toNat

end

end A230652.P1688731326487781912

/-! ## A230652.P11139118522903941542

`A262689(A230068(n+1))/A000034(A303888(n+1))`
-/

namespace A230652.P11139118522903941542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262689 (A230068 (n + 1)).toNat : ℚ) / (A000034 (A303888 (n + 1)).toNat : ℚ)

end

end A230652.P11139118522903941542

/-! ## A230652.P15617777030277232244

`A262689(A230068(n+1))/A000034(A305281(n+1))`
-/

namespace A230652.P15617777030277232244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262689 (A230068 (n + 1)).toNat : ℚ) / (A000034 (A305281 (n + 1)).toNat : ℚ)

end

end A230652.P15617777030277232244

/-!
# A230653: Numbers k such that tau(k+1) - tau(k) = 3, where tau(k) = the number of divisors of k (A000005).

The programs for A230653, there is no canonical definition to state claims against.
-/

/-! ## A230653.P11986173763795761325

`eq[3, A341062(n+1)]`
-/

namespace A230653.P11986173763795761325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230653.P11986173763795761325

/-!
# A230654: Numbers n such that tau(n+1) - tau(n) = 4, where tau(n) = the number of divisors of n (A000005).

The programs for A230654, the canonical program `A230654.P9728224852520061212` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230654 has offset 1).

The definition of A230654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1883 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230654.P9728224852520061212

`eq[4, A051950(n+2)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A230654

/-- `eq[4, A051950(n+2)]+1` -/
def P9728224852520061212.Spec : Prop :=
  ∀ n, (P9728224852520061212.a n : ℤ) = A230654 (n + 1)

theorem P9728224852520061212.correct : P9728224852520061212.Spec := by
  intro n
  simp only [A230654, Nat.add_sub_cancel]

end A230654

/-! ## A230654.P12016383220787195364

`eq[4, A341062(n+1)]`
-/

namespace A230654.P12016383220787195364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230654.P12016383220787195364

namespace A230654

/-- `eq[4, A341062(n+1)]` -/
def P12016383220787195364.Spec : Prop :=
  ∀ n, (P12016383220787195364.a n : ℤ) = A230654 (n + 1)

end A230654

/-! ## A230654.P8435715254383498929

`eq[A032741(n)+4, A032741(n+1)]`
-/

namespace A230654.P8435715254383498929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230654.P8435715254383498929

namespace A230654

/-- `eq[A032741(n)+4, A032741(n+1)]` -/
def P8435715254383498929.Spec : Prop :=
  ∀ n, (P8435715254383498929.a n : ℤ) = A230654 (n + 1)

end A230654

/-! ## A230654.P13743449135096765423

`eq[A000005(A028310(n))+2, A070824(n+1)]`
-/

namespace A230654.P13743449135096765423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230654.P13743449135096765423

namespace A230654

/-- `eq[A000005(A028310(n))+2, A070824(n+1)]` -/
def P13743449135096765423.Spec : Prop :=
  ∀ n, (P13743449135096765423.a n : ℤ) = A230654 (n + 1)

end A230654

/-! ## A230654.P13451569388212640950

`eq[A000005(A143051(n+1))+4, A000005(n+1)]`
-/

namespace A230654.P13451569388212640950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A143051 (n + 1)).toNat + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230654.P13451569388212640950

namespace A230654

/-- `eq[A000005(A143051(n+1))+4, A000005(n+1)]` -/
def P13451569388212640950.Spec : Prop :=
  ∀ n, (P13451569388212640950.a n : ℤ) = A230654 (n + 1)

end A230654

/-! ## A230654.P7721693260275898145

`A000027(eq[A070824(n+1)+4, A070824(n+2)]+1)`
-/

namespace A230654.P7721693260275898145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A230654.P7721693260275898145

namespace A230654

/-- `A000027(eq[A070824(n+1)+4, A070824(n+2)]+1)` -/
def P7721693260275898145.Spec : Prop :=
  ∀ n, P7721693260275898145.a n = A230654 (n + 1)

end A230654

/-!
# A230655: Squared radii of circles around a point of the hexagonal lattice that contain a record number of lattice points.

The programs for A230655, there is no canonical definition to state claims against.
-/

/-! ## A230655.P4237449457326161056

`A003136(A230656(n))`
-/

namespace A230655.P4237449457326161056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (A230656 n).toNat

end

end A230655.P4237449457326161056

/-! ## A230655.P2785001974340871591

`A270050(A230656(n))/A000034(2*n+1)`
-/

namespace A230655.P2785001974340871591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270050 (A230656 n).toNat : ℚ) / (A000034 (2 * n + 1) : ℚ)

end

end A230655.P2785001974340871591

/-!
# A230656: Position of the circles with center at a lattice point that contain record numbers of lattice points, in the list of Loeschian numbers A003136.

The programs for A230656, there is no canonical definition to state claims against.
-/

/-! ## A230656.P830692020346645472

`A054384(A148903(n+1))`
-/

namespace A230656.P830692020346645472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054384 (A148903 (n + 1)).toNat

end

end A230656.P830692020346645472

/-! ## A230656.P64572215272812619

`A353767(n+1)+A065770(A351810(n))`
-/

namespace A230656.P64572215272812619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353767 (n + 1) + A065770 (A351810 n).toNat

end

end A230656.P64572215272812619

/-!
# A230657: Number of n X n 0..2 black square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230657, there is no canonical definition to state claims against.
-/

/-! ## A230657.P15700657731206821876

`A230661(∑[4*n]+1)`
-/

namespace A230657.P15700657731206821876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230661 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230657.P15700657731206821876

/-! ## A230657.P3420004037216467604

`or(1, A230661(A001844(n)))`
-/

namespace A230657.P3420004037216467604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A230661 (A001844 n).toNat)

end

end A230657.P3420004037216467604

/-! ## A230657.P3931822271479852223

`A326542(n)+A230661(A001844(n))`
-/

namespace A230657.P3931822271479852223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326542 n + A230661 (A001844 n).toNat

end

end A230657.P3931822271479852223

/-! ## A230657.P3843179660458458104

`A014963(6*(n+1))*A230661(A001844(n))`
-/

namespace A230657.P3843179660458458104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A230661 (A001844 n).toNat

end

end A230657.P3843179660458458104

/-! ## A230657.P2372049755233288787

`A000045(gcd(n, n+1))*A230661(A001844(n))`
-/

namespace A230657.P2372049755233288787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A230661 (A001844 n).toNat

end

end A230657.P2372049755233288787

/-!
# A230658: Number of nX3 0..2 black square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230658, the canonical program `A230658.P2566350779855235100` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230658 has offset 1).

The definition of A230658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230658.P2566350779855235100

`lcm(5, a(n-1))+2*a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230658

/-- `lcm(5, a(n-1))+2*a(n-2)` -/
def P2566350779855235100.Spec : Prop :=
  ∀ n, (P2566350779855235100.a n : ℤ) = A230658 (n + 1)

theorem P2566350779855235100.correct : P2566350779855235100.Spec := by
  intro n
  simp only [A230658, Nat.add_sub_cancel]

end A230658

/-! ## A230658.P13974553615364269349

`9*a(n-2)-4*a(n-4)` with `a(0)=0, a(1)=3, a(2)=15, a(3)=21`
-/

namespace A230658.P13974553615364269349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 15, 21] fun n a =>
  9 * a (n - 2) - 4 * a (n - 4)

end

end A230658.P13974553615364269349

namespace A230658

/-- `9*a(n-2)-4*a(n-4)` -/
def P13974553615364269349.Spec : Prop :=
  ∀ n, P13974553615364269349.a n = A230658 (n + 1)

end A230658

/-! ## A230658.P4373826505618317596

`gcd(5, n%2)*A230647(n+1)`
-/

namespace A230658.P4373826505618317596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 5 (n % 2) : ℤ) * A230647 (n + 1)

end

end A230658.P4373826505618317596

namespace A230658

/-- `gcd(5, n%2)*A230647(n+1)` -/
def P4373826505618317596.Spec : Prop :=
  ∀ n, P4373826505618317596.a n = A230658 (n + 1)

end A230658

/-! ## A230658.P4275237679953288314

`A176260(n)*A230647(n+1)`
-/

namespace A230658.P4275237679953288314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176260 n * A230647 (n + 1)

end

end A230658.P4275237679953288314

namespace A230658

/-- `A176260(n)*A230647(n+1)` -/
def P4275237679953288314.Spec : Prop :=
  ∀ n, P4275237679953288314.a n = A230658 (n + 1)

end A230658

/-! ## A230658.P15957230552438962433

`A014551(n)%6*A230647(n+1)`
-/

namespace A230658.P15957230552438962433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014551 n) 6 * A230647 (n + 1)

end

end A230658.P15957230552438962433

namespace A230658

/-- `A014551(n)%6*A230647(n+1)` -/
def P15957230552438962433.Spec : Prop :=
  ∀ n, P15957230552438962433.a n = A230658 (n + 1)

end A230658

/-! ## A230658.P5820805866921798101

`A096940(gcd(n, n+2))*A230647(n+1)`
-/

namespace A230658.P5820805866921798101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 (Nat.gcd n (n + 2)) * A230647 (n + 1)

end

end A230658.P5820805866921798101

namespace A230658

/-- `A096940(gcd(n, n+2))*A230647(n+1)` -/
def P5820805866921798101.Spec : Prop :=
  ∀ n, P5820805866921798101.a n = A230658 (n + 1)

end A230658

/-!
# A230659: Number of n X 5 0..2 black square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230659, there is no canonical definition to state claims against.
-/

/-! ## A230659.P15684387483841453991

`A230661(A374005(n+1))`
-/

namespace A230659.P15684387483841453991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230661 (A374005 (n + 1)).toNat

end

end A230659.P15684387483841453991

/-! ## A230659.P15089056579830508728

`A230661(A155212(n)+13)`
-/

namespace A230659.P15089056579830508728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230661 (A155212 n + 13).toNat

end

end A230659.P15089056579830508728

/-! ## A230659.P11516444621596441895

`A230661(A056000(n)+15)`
-/

namespace A230659.P11516444621596441895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230661 (A056000 n + 15).toNat

end

end A230659.P11516444621596441895

/-! ## A230659.P1335901457446033233

`A230661(A000217(n+4)+5)`
-/

namespace A230659.P1335901457446033233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230661 (A000217 (n + 4) + 5).toNat

end

end A230659.P1335901457446033233

/-! ## A230659.P15100561841742961158

`A230661(A034856(n+3)+7)`
-/

namespace A230659.P15100561841742961158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230661 (A034856 (n + 3) + 7).toNat

end

end A230659.P15100561841742961158

/-!
# A230660: Number of nX7 0..2 black square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230660, there is no canonical definition to state claims against.
-/

/-! ## A230660.P15317917993639685351

`A230661(A374008(n+1))`
-/

namespace A230660.P15317917993639685351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230661 (A374008 (n + 1)).toNat

end

end A230660.P15317917993639685351

/-! ## A230660.P17645764379520760648

`A230661(eq[8, A131818(n+1)])`
-/

namespace A230660.P17645764379520760648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230661 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230660.P17645764379520760648

/-! ## A230660.P14470816205619945201

`A230661(eq[4, A219347(n)])`
-/

namespace A230660.P14470816205619945201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230661 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230660.P14470816205619945201

/-! ## A230660.P14662370202428283326

`A230661(eq[7, A152157(n)])`
-/

namespace A230660.P14662370202428283326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230661 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230660.P14662370202428283326

/-! ## A230660.P15093356970537988652

`A230661(A000217(n+6)+n+1)`
-/

namespace A230660.P15093356970537988652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230661 (A000217 (n + 6) + (n : ℤ) + 1).toNat

end

end A230660.P15093356970537988652

/-!
# A230661: T(n,k)=Number of nXk 0..2 black square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230661, there is no canonical definition to state claims against.
-/

/-! ## A230661.P9574148015375442244

`A061800(xor(A091536(n), A117401(n)))`
-/

namespace A230661.P9574148015375442244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (Int.xor (A091536 n) (A117401 n)).toNat

end

end A230661.P9574148015375442244

/-! ## A230661.P5284509858787240273

`A105423(xor(A077028(n), A091536(n)))`
-/

namespace A230661.P5284509858787240273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105423 (Int.xor (A077028 n) (A091536 n)).toNat

end

end A230661.P5284509858787240273

/-! ## A230661.P660859779464709161

`A091563(xor(A091536(n), A117401(n)))`
-/

namespace A230661.P660859779464709161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091563 (Int.xor (A091536 n) (A117401 n)).toNat

end

end A230661.P660859779464709161

/-! ## A230661.P1741808836100600232

`A061800(abs(A091536(n)-A117401(n)))`
-/

namespace A230661.P1741808836100600232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 |A091536 n - A117401 n|.toNat

end

end A230661.P1741808836100600232

/-! ## A230661.P16077177843338913011

`A105423(abs(A077028(n)-A091536(n)))`
-/

namespace A230661.P16077177843338913011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105423 |A077028 n - A091536 n|.toNat

end

end A230661.P16077177843338913011

/-!
# A230664: a(n) = floor(3^n/n^2).

The programs for A230664, the canonical program `A230664.P1082762737809948491` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230664 has offset 1).

The definition of A230664 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3^(n+1)/(n+1)²)` (program `A230664.P1082762737809948491`, by `A230664.P1082762737809948491.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A230664.P1082762737809948491

`floor(3^(n+1)/(n+1)²)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230664

/-- `floor(3^(n+1)/(n+1)²)` -/
def P1082762737809948491.Spec : Prop :=
  ∀ n, P1082762737809948491.a n = A230664 (n + 1)

theorem P1082762737809948491.correct : P1082762737809948491.Spec := by
  intro n
  simp only [A230664, Nat.add_sub_cancel]

end A230664

/-! ## A230664.P13451737202012867136

`ceil((A092763(n+1)-n)/(n+1))`
-/

namespace A230664.P13451737202012867136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092763 (n + 1) - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A230664.P13451737202012867136

namespace A230664

/-- `ceil((A092763(n+1)-n)/(n+1))` -/
def P13451737202012867136.Spec : Prop :=
  ∀ n, P13451737202012867136.a n = A230664 (n + 1)

end A230664

/-! ## A230664.P14972235575843685523

`floor(floor(3*3^n/(n+1))/(n+1))%(Δ[3^n]+2)`
-/

namespace A230664.P14972235575843685523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(⌊3 * ((3 ^ n : ℚ) / (n + 1 : ℚ))⌋ : ℚ) / (n + 1 : ℚ)⌋ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2)

end

end A230664.P14972235575843685523

namespace A230664

/-- `floor(floor(3*3^n/(n+1))/(n+1))%(Δ[3^n]+2)` -/
def P14972235575843685523.Spec : Prop :=
  ∀ n, P14972235575843685523.a n = A230664 (n + 1)

end A230664

/-! ## A230664.P69429918808775064

`ceil(A034472(n+1)/(n+1)²)-1`
-/

namespace A230664.P69429918808775064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034472 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)⌉ - 1

end

end A230664.P69429918808775064

namespace A230664

/-- `ceil(A034472(n+1)/(n+1)²)-1` -/
def P69429918808775064.Spec : Prop :=
  ∀ n, P69429918808775064.a n = A230664 (n + 1)

end A230664

/-! ## A230664.P12240537764446512029

`(A000244(n+1)-A233471(n+1))/(n+1)²`
-/

namespace A230664.P12240537764446512029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 (n + 1) - A233471 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A230664.P12240537764446512029

namespace A230664

/-- `(A000244(n+1)-A233471(n+1))/(n+1)²` -/
def P12240537764446512029.Spec : Prop :=
  ∀ n, P12240537764446512029.a n = (A230664 (n + 1) : ℚ)

end A230664

/-!
# A230665: Primes which are equal to the digit sum of 38^n, in the order that they are found.

The programs for A230665, there is no canonical definition to state claims against.
-/

/-! ## A230665.P11067174009111366052

`p?[∑{digits}[A009982(n), #]]`
-/

namespace A230665.P11067174009111366052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009982 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A230665.P11067174009111366052

/-!
# A230669: Number of n X n 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230669, there is no canonical definition to state claims against.
-/

/-! ## A230669.P13862967945420992985

`A230675((n+1)²+n²)`
-/

namespace A230669.P13862967945420992985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 ((n + 1) ^ 2 + n ^ 2)

end

end A230669.P13862967945420992985

/-!
# A230670: Number of n X 3 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230670, there is no canonical definition to state claims against.
-/

/-! ## A230670.P14267895432259743543

`ogf((3+45x-72x^2+93x^3-63x^4)/(1-14x-9x^2+9x^3-30x^4+19x^5))`
-/

namespace A230670.P14267895432259743543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 45, -72, 93, -63] [1, -14, -9, 9, -30, 19] n

end

end A230670.P14267895432259743543

/-! ## A230670.P15845873600760331991

`A230675(∑[n+3]+1)`
-/

namespace A230670.P15845873600760331991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230670.P15845873600760331991

/-! ## A230670.P770931129762915157

`or(1, A230675(A034856(n+2)))`
-/

namespace A230670.P770931129762915157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A230675 (A034856 (n + 2)).toNat)

end

end A230670.P770931129762915157

/-! ## A230670.P9055506921737414845

`record[Δ[A230675(A130297(n+1))]]`
-/

namespace A230670.P9055506921737414845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A130297 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230670.P9055506921737414845

/-!
# A230671: Number of nX4 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230671, there is no canonical definition to state claims against.
-/

/-! ## A230671.P6153058444692106541

`A230675(A141214(n+1))`
-/

namespace A230671.P6153058444692106541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A141214 (n + 1)).toNat

end

end A230671.P6153058444692106541

/-! ## A230671.P17222534387113199166

`A230675(A027379(n+2))`
-/

namespace A230671.P17222534387113199166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A027379 (n + 2)).toNat

end

end A230671.P17222534387113199166

/-! ## A230671.P9055256245380007306

`A230675(A155212(n)+5)`
-/

namespace A230671.P9055256245380007306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A155212 n + 5).toNat

end

end A230671.P9055256245380007306

/-! ## A230671.P2981767521402480095

`A230675(eq[3, A193592(n)])`
-/

namespace A230671.P2981767521402480095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230671.P2981767521402480095

/-! ## A230671.P7523375568872827903

`A230675(A052905(n+1)+2)`
-/

namespace A230671.P7523375568872827903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A052905 (n + 1) + 2).toNat

end

end A230671.P7523375568872827903

/-!
# A230672: Number of n X 5 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230672, there is no canonical definition to state claims against.
-/

/-! ## A230672.P10258214657502697439

`A230675(eq[4, A193592(n)])`
-/

namespace A230672.P10258214657502697439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230672.P10258214657502697439

/-! ## A230672.P14574865154746464201

`A230675(Δ[A023545(n+1)])`
-/

namespace A230672.P14574865154746464201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (f1 (n + 1) - f1 n).toNat

end

end A230672.P14574865154746464201

/-! ## A230672.P13508077244779444998

`A230675(A000124(n+5)-5)`
-/

namespace A230672.P13508077244779444998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A000124 (n + 5) - 5).toNat

end

end A230672.P13508077244779444998

/-! ## A230672.P9945677169381252676

`A230675(eq[6, A185782(n+1)])`
-/

namespace A230672.P9945677169381252676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230672.P9945677169381252676

/-! ## A230672.P18175603361684140618

`A230675(eq[7, A131818(n+1)]-10)`
-/

namespace A230672.P18175603361684140618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 10)

end

end A230672.P18175603361684140618

/-!
# A230673: Number of nX6 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230673, there is no canonical definition to state claims against.
-/

/-! ## A230673.P16365246987778860513

`A230675(eq[5, A193592(n)])`
-/

namespace A230673.P16365246987778860513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230673.P16365246987778860513

/-! ## A230673.P12341534649188524151

`A230675(A167614(n+5)-8)`
-/

namespace A230673.P12341534649188524151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A167614 (n + 5) - 8).toNat

end

end A230673.P12341534649188524151

/-! ## A230673.P8218478752280714924

`A230675(Δ[A023545(n+2)]-1)`
-/

namespace A230673.P8218478752280714924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (f1 (n + 1) - f1 n - 1).toNat

end

end A230673.P8218478752280714924

/-!
# A230674: Number of nX7 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230674, there is no canonical definition to state claims against.
-/

/-! ## A230674.P4878133249991458795

`A230675(eq[6, A193592(n)])`
-/

namespace A230674.P4878133249991458795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230674.P4878133249991458795

/-!
# A230676: Number of 2 X n 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230676, the canonical program `A230676.P5413153161374503042` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230676 has offset 1).

The definition of A230676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230676.P5413153161374503042

`ogf((15x+12x^2-12x^3)/(1-5x-6x^2-20x^3-12x^4-8x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230676

/-- `ogf((15x+12x^2-12x^3)/(1-5x-6x^2-20x^3-12x^4-8x^5))` -/
def P5413153161374503042.Spec : Prop :=
  ∀ n, P5413153161374503042.a n = A230676 (n + 1)

theorem P5413153161374503042.correct : P5413153161374503042.Spec := by
  intro n
  simp only [A230676, Nat.add_sub_cancel]

end A230676

/-! ## A230676.P799481178816210157

`A230675(∑[n+1]+2)`
-/

namespace A230676.P799481178816210157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230676.P799481178816210157

namespace A230676

/-- `A230675(∑[n+1]+2)` -/
def P799481178816210157.Spec : Prop :=
  ∀ n, P799481178816210157.a n = A230676 (n + 1)

end A230676

/-!
# A230677: Number of 3Xn 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230677, there is no canonical definition to state claims against.
-/

/-! ## A230677.P11914374598428878718

`A230675(∑[n+2]+4)`
-/

namespace A230677.P11914374598428878718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230677.P11914374598428878718

/-! ## A230677.P16330352803855160604

`lcm(3, A230675(A167614(n+1)))`
-/

namespace A230677.P16330352803855160604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A230675 (A167614 (n + 1)).toNat)

end

end A230677.P16330352803855160604

/-! ## A230677.P6863176831694174220

`A230675(A167614(n+1))+A025442(n)`
-/

namespace A230677.P6863176831694174220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A167614 (n + 1)).toNat + A025442 n

end

end A230677.P6863176831694174220

/-! ## A230677.P15026747249369037963

`A057427(n)*A230675(A167614(n+1))`
-/

namespace A230677.P15026747249369037963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A230675 (A167614 (n + 1)).toNat

end

end A230677.P15026747249369037963

/-! ## A230677.P4522182497182389379

`and(A057428(n), A230675(A167614(n+1)))`
-/

namespace A230677.P4522182497182389379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A230675 (A167614 (n + 1)).toNat)

end

end A230677.P4522182497182389379

/-!
# A230678: Number of 4Xn 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230678, there is no canonical definition to state claims against.
-/

/-! ## A230678.P2906856491341340099

`A230675(A141214(n)+7)`
-/

namespace A230678.P2906856491341340099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A141214 n + 7).toNat

end

end A230678.P2906856491341340099

/-! ## A230678.P12767484914221987937

`A230675(A052905(n)+9)`
-/

namespace A230678.P12767484914221987937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A052905 n + 9).toNat

end

end A230678.P12767484914221987937

/-! ## A230678.P13104297960298700724

`A230675(A055999(n)+10)`
-/

namespace A230678.P13104297960298700724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A055999 n + 10).toNat

end

end A230678.P13104297960298700724

/-! ## A230678.P10865103730072615417

`A230675(A167614(n+2)+1)`
-/

namespace A230678.P10865103730072615417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A167614 (n + 2) + 1).toNat

end

end A230678.P10865103730072615417

/-! ## A230678.P15666221055317299682

`A230675(A027379(n+1)+7)`
-/

namespace A230678.P15666221055317299682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A027379 (n + 1) + 7).toNat

end

end A230678.P15666221055317299682

/-!
# A230679: Number of 5 X n 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230679, there is no canonical definition to state claims against.
-/

/-! ## A230679.P3098705547760739566

`A230675(A155212(n)+13)`
-/

namespace A230679.P3098705547760739566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A155212 n + 13).toNat

end

end A230679.P3098705547760739566

/-! ## A230679.P5592560037668959742

`A230675(A056000(n)+15)`
-/

namespace A230679.P5592560037668959742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A056000 n + 15).toNat

end

end A230679.P5592560037668959742

/-! ## A230679.P8374412729980537923

`A230675(eq[7, A066657(n)])`
-/

namespace A230679.P8374412729980537923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230679.P8374412729980537923

/-! ## A230679.P14408207394877893233

`A230675(A167614(n+3)+2)`
-/

namespace A230679.P14408207394877893233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A167614 (n + 3) + 2).toNat

end

end A230679.P14408207394877893233

/-! ## A230679.P11301667688829320176

`A230675(eq[6, A131818(n+1)])`
-/

namespace A230679.P11301667688829320176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230679.P11301667688829320176

/-!
# A230680: Number of 6Xn 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230680, there is no canonical definition to state claims against.
-/

/-! ## A230680.P12647189224112221518

`A230675(eq[6, A130270(n+1)])`
-/

namespace A230680.P12647189224112221518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230680.P12647189224112221518

/-! ## A230680.P12111646218134267770

`A230675(eq[7, A123229(n+1)])`
-/

namespace A230680.P12111646218134267770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230680.P12111646218134267770

/-!
# A230681: Number of 7Xn 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230681, there is no canonical definition to state claims against.
-/

/-! ## A230681.P1896383971178244474

`A230675(A167614(n+5)+4)`
-/

namespace A230681.P1896383971178244474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A167614 (n + 5) + 4).toNat

end

end A230681.P1896383971178244474

/-! ## A230681.P2721221919468028581

`A230675(A000096(n+5)+8)`
-/

namespace A230681.P2721221919468028581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A000096 (n + 5) + 8).toNat

end

end A230681.P2721221919468028581

/-! ## A230681.P18279847963846200778

`A230675(eq[8, A131818(n+1)])`
-/

namespace A230681.P18279847963846200778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230681.P18279847963846200778

/-!
# A230682: O.g.f.: Sum_{n>=0} x^n * Product_{k=1..n} (k^2 + x)/(1 + k^2*x).

The programs for A230682, there is no canonical definition to state claims against.
-/

/-! ## A230682.P16827639016994383713

`A277673(n)+A071281(A277673(n))`
-/

namespace A230682.P16827639016994383713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277673 n + A071281 (A277673 n).toNat

end

end A230682.P16827639016994383713

/-! ## A230682.P7063255370751229700

`A050292(A346405(n)+A261767(n))`
-/

namespace A230682.P7063255370751229700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (A346405 n + A261767 n).toNat

end

end A230682.P7063255370751229700

/-!
# A230683: Number of n X 4 0..6 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 7, and upper left element zero.

The programs for A230683, there is no canonical definition to state claims against.
-/

/-! ## A230683.P4651802826874746426

`A230686(∑[n+4]+3)`
-/

namespace A230683.P4651802826874746426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A230683.P4651802826874746426

/-! ## A230683.P17609707428984590758

`A230529(Δ[A024649(n)²])`
-/

namespace A230683.P17609707428984590758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024649 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230529 (f1 (n + 1) - f1 n).toNat

end

end A230683.P17609707428984590758

/-! ## A230683.P17445460797420856466

`A201629(A230529(Δ[n²]))`
-/

namespace A230683.P17445460797420856466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (A230529 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A230683.P17445460797420856466

/-!
# A230684: Number of nX5 0..6 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 7, and upper left element zero.

The programs for A230684, there is no canonical definition to state claims against.
-/

/-! ## A230684.P16013456203560975458

`A230686(∑[n+5]+6)`
-/

namespace A230684.P16013456203560975458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A230684.P16013456203560975458

/-! ## A230684.P6160788149465736213

`A230686(A046691(n+3))+A033665(n)`
-/

namespace A230684.P6160788149465736213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (A046691 (n + 3)).toNat + A033665 n

end

end A230684.P6160788149465736213

/-! ## A230684.P9940044889361433273

`A230686(A046691(n+3))+A084904(n)`
-/

namespace A230684.P9940044889361433273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (A046691 (n + 3)).toNat + A084904 n

end

end A230684.P9940044889361433273

/-!
# A230685: Number of nX6 0..6 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 7, and upper left element zero.

The programs for A230685, there is no canonical definition to state claims against.
-/

/-! ## A230685.P1558313447890679133

`A230686(A052905(n+3))`
-/

namespace A230685.P1558313447890679133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (A052905 (n + 3)).toNat

end

end A230685.P1558313447890679133

/-! ## A230685.P4655590739331252922

`A230686(A056119(n)+16)`
-/

namespace A230685.P4655590739331252922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (A056119 n + 16).toNat

end

end A230685.P4655590739331252922

/-!
# A230686: T(n,k)=Number of nXk 0..6 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 7, and upper left element zero.

The programs for A230686, there is no canonical definition to state claims against.
-/

/-! ## A230686.P14868685006866995751

`68%A338876(A219987(n))`
-/

namespace A230686.P14868685006866995751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 68 (A338876 (A219987 n).toNat)

end

end A230686.P14868685006866995751

/-! ## A230686.P7838179570298764475

`and(70, A058343(A076831(n)))`
-/

namespace A230686.P7838179570298764475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 70 (A058343 (A076831 n).toNat)

end

end A230686.P7838179570298764475

/-! ## A230686.P11432728968037704249

`and(70, A146607(A007318(n)))`
-/

namespace A230686.P11432728968037704249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 70 (A146607 (A007318 n).toNat)

end

end A230686.P11432728968037704249

/-! ## A230686.P247198064654138027

`and(70, A058343(A210489(n)))`
-/

namespace A230686.P247198064654138027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 70 (A058343 (A210489 n).toNat)

end

end A230686.P247198064654138027

/-! ## A230686.P9084066032540829232

`A316401(or(1, A324802(n+1)))`
-/

namespace A230686.P9084066032540829232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316401 (Int.lor 1 (A324802 (n + 1))).toNat

end

end A230686.P9084066032540829232

/-!
# A230687: Number of 3Xn 0..6 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 7, and upper left element zero.

The programs for A230687, there is no canonical definition to state claims against.
-/

/-! ## A230687.P3654382743738471406

`A230686(∑[n+2]+4)`
-/

namespace A230687.P3654382743738471406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230687.P3654382743738471406

/-! ## A230687.P3353581462204221775

`lcm(2, A230686(A167614(n+1)))`
-/

namespace A230687.P3353581462204221775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230686 (A167614 (n + 1)).toNat)

end

end A230687.P3353581462204221775

/-! ## A230687.P187094811790663056

`∑{d}[A167614(n+1), A230686(#)]`
-/

namespace A230687.P187094811790663056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A230686 d

end

end A230687.P187094811790663056

/-! ## A230687.P5007414972268559837

`A230686(A167614(n+1))+A025439(n)`
-/

namespace A230687.P5007414972268559837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (A167614 (n + 1)).toNat + A025439 n

end

end A230687.P5007414972268559837

/-! ## A230687.P10950770614345635593

`A230686(A167614(n+1))+A025442(n)`
-/

namespace A230687.P10950770614345635593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (A167614 (n + 1)).toNat + A025442 n

end

end A230687.P10950770614345635593

/-!
# A230688: Number of 4Xn 0..6 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 7, and upper left element zero.

The programs for A230688, there is no canonical definition to state claims against.
-/

/-! ## A230688.P9344848566080917525

`A230686(∑[n+3]+7)`
-/

namespace A230688.P9344848566080917525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A230688.P9344848566080917525

/-!
# A230689: Number of 5Xn 0..6 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 7, and upper left element zero.

The programs for A230689, there is no canonical definition to state claims against.
-/

/-! ## A230689.P17504126756308666313

`A230686(A167499(n+3))`
-/

namespace A230689.P17504126756308666313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (A167499 (n + 3)).toNat

end

end A230689.P17504126756308666313

/-! ## A230689.P7719685767351250390

`A230686(A155212(n)+13)`
-/

namespace A230689.P7719685767351250390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (A155212 n + 13).toNat

end

end A230689.P7719685767351250390

/-! ## A230689.P4228300785580096320

`A230686(A056000(n)+15)`
-/

namespace A230689.P4228300785580096320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (A056000 n + 15).toNat

end

end A230689.P4228300785580096320

/-! ## A230689.P919073654129272222

`A230686(eq[7, A066657(n)])`
-/

namespace A230689.P919073654129272222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230689.P919073654129272222

/-!
# A230690: Number of (n+2)X(1+2) 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least two elements with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230690, there is no canonical definition to state claims against.
-/

/-! ## A230690.P9524708244682150658

`A230694(∑[n]+1)`
-/

namespace A230690.P9524708244682150658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230694 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230690.P9524708244682150658

/-! ## A230690.P6432449516794976989

`record[A010054(n)*A230694(n+1)]`
-/

namespace A230690.P6432449516794976989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A230694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230690.P6432449516794976989

/-! ## A230690.P8981552565451665344

`record[A230694(n+1)/A022167(n)]`
-/

namespace A230690.P8981552565451665344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230694 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230690.P8981552565451665344

/-! ## A230690.P17353399241267000130

`record[A230694(n+1)/A099927(n)]`
-/

namespace A230690.P17353399241267000130
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230694 (n + 1) : ℚ) / (A099927 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230690.P17353399241267000130

/-! ## A230690.P11031114676356864914

`record[A230694(n+1)/A333157(n)]`
-/

namespace A230690.P11031114676356864914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230694 (n + 1) : ℚ) / (A333157 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230690.P11031114676356864914

/-!
# A230691: Number of (n+2)X(2+2) 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least two elements with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230691, there is no canonical definition to state claims against.
-/

/-! ## A230691.P8036751850981240268

`A230694(∑[n+1]+2)`
-/

namespace A230691.P8036751850981240268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230694 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230691.P8036751850981240268

/-! ## A230691.P3364455596339809601

`record[A010054(n)*A230694(n+2)]`
-/

namespace A230691.P3364455596339809601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A230694 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230691.P3364455596339809601

/-! ## A230691.P8369489851573296026

`record[A230694(A133263(∏{e}[n+1, #]))]`
-/

namespace A230691.P8369489851573296026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230694 (A133263 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230691.P8369489851573296026

/-! ## A230691.P7086739570256162837

`record[A230694(abs(A201163(n)))]`
-/

namespace A230691.P7086739570256162837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230694 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230691.P7086739570256162837

/-! ## A230691.P17476872242455892203

`lcm(A152157(n), A230694(A000096(n+1)))`
-/

namespace A230691.P17476872242455892203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A152157 n) (A230694 (A000096 (n + 1)).toNat)

end

end A230691.P17476872242455892203

/-!
# A230692: Number of (n+2)X(3+2) 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least two elements with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230692, there is no canonical definition to state claims against.
-/

/-! ## A230692.P16187151834746287449

`A230694(∑[n+2]+4)`
-/

namespace A230692.P16187151834746287449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230694 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230692.P16187151834746287449

/-! ## A230692.P17059307532329304043

`record[gcd(A230675(n+1), A230694(n+4))]`
-/

namespace A230692.P17059307532329304043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A230675 (n + 1)) (A230694 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230692.P17059307532329304043

/-! ## A230692.P11678575987357043622

`A230694(A167614(n+1))+A025442(n)`
-/

namespace A230692.P11678575987357043622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230694 (A167614 (n + 1)).toNat + A025442 n

end

end A230692.P11678575987357043622

/-! ## A230692.P379111970294215442

`A230694(A167614(n+1))+A033665(n)`
-/

namespace A230692.P379111970294215442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230694 (A167614 (n + 1)).toNat + A033665 n

end

end A230692.P379111970294215442

/-! ## A230692.P3214519973636628148

`A230694(A167614(n+1))+A107846(n)`
-/

namespace A230692.P3214519973636628148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230694 (A167614 (n + 1)).toNat + A107846 n

end

end A230692.P3214519973636628148

/-!
# A230693: Number of (n+2)X(4+2) 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least two elements with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230693, there is no canonical definition to state claims against.
-/

/-! ## A230693.P16754918302913966407

`A230694(A374004(n+1))`
-/

namespace A230693.P16754918302913966407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230694 (A374004 (n + 1)).toNat

end

end A230693.P16754918302913966407

/-! ## A230693.P17766862693514452100

`A230694(A141214(n)+7)`
-/

namespace A230693.P17766862693514452100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230694 (A141214 n + 7).toNat

end

end A230693.P17766862693514452100

/-! ## A230693.P1284774141762028268

`A230694(A052905(n)+9)`
-/

namespace A230693.P1284774141762028268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230694 (A052905 n + 9).toNat

end

end A230693.P1284774141762028268

/-! ## A230693.P7306850608329237444

`A230694(A055999(n)+10)`
-/

namespace A230693.P7306850608329237444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230694 (A055999 n + 10).toNat

end

end A230693.P7306850608329237444

/-!
# A230695: Number T(n,k) of permutations of [n] with exactly k (possibly overlapping) occurrences of the consecutive step pattern up, down, down, up; triangle T(n,k), n>=0, 0<=k<=max(0,floor((n-2)/3)), read by rows.

The programs for A230695, there is no canonical definition to state claims against.
-/

/-! ## A230695.P17198390449827812519

`A360917(∑{d}[n!, #])`
-/

namespace A230695.P17198390449827812519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360917 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A230695.P17198390449827812519

/-! ## A230695.P2481395312379913146

`A030307(A034216(n))`
-/

namespace A230695.P2481395312379913146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030307 (A034216 n).toNat

end

end A230695.P2481395312379913146

/-!
# A230696: Triangle read by rows related to double factorial of odd numbers (A001147).

The programs for A230696, the canonical program `A230696.P616635411651818039` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230696 has offset 0).

The definition of A230696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230696.P616635411651818039

`2*T(n-1,k-1)+(2*row(n)-3)²*T(n-2,k)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230696

/-- `2*T(n-1,k-1)+(2*row(n)-3)²*T(n-2,k)` -/
def P616635411651818039.Spec : Prop :=
  ∀ n, P616635411651818039.a n = A230696 n

theorem P616635411651818039.correct : P616635411651818039.Spec := by
  intro n
  simp only [A230696]

end A230696

/-!
# A230697: Length of shortest addition-multiplication chain for n.

The programs for A230697, there is no canonical definition to state claims against.
-/

/-! ## A230697.P1642656508450101186

`A384384(A265329(n+1))`
-/

namespace A230697.P1642656508450101186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384384 (A265329 (n + 1)).toNat

end

end A230697.P1642656508450101186

/-! ## A230697.P1584390177710921766

`A384384(A153679(n+1))`
-/

namespace A230697.P1584390177710921766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384384 (A153679 (n + 1)).toNat

end

end A230697.P1584390177710921766

/-! ## A230697.P7498677850041775516

`A384384(A281873(n+1))`
-/

namespace A230697.P7498677850041775516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384384 (A281873 (n + 1)).toNat

end

end A230697.P7498677850041775516

/-! ## A230697.P11227975598673497720

`and(A062241(n), A384384(n+1))`
-/

namespace A230697.P11227975598673497720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062241 n) (A384384 (n + 1))

end

end A230697.P11227975598673497720

/-! ## A230697.P3363199437974315888

`and(A127581(n), A384384(n+1))`
-/

namespace A230697.P3363199437974315888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127581 n) (A384384 (n + 1))

end

end A230697.P3363199437974315888

/-!
# A230698: Triangle read by rows: T(n,k) = T(n-1,k-1) + n*T(n-2,k); T(0,0) = T(1,0) = T(1,1) = 1, T(n,k) = 0 if k>n or if k<0.

The programs for A230698, the canonical program `A230698.P5513965054141912987` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230698 has offset 0).

The definition of A230698 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k-1)+row(n)*T(n-2,k)` (program `A230698.P5513965054141912987`, by `A230698.P5513965054141912987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A230698.P5513965054141912987

`T(n-1,k-1)+row(n)*T(n-2,k)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230698

/-- `T(n-1,k-1)+row(n)*T(n-2,k)` -/
def P5513965054141912987.Spec : Prop :=
  ∀ n, (P5513965054141912987.a n : ℤ) = A230698 n

theorem P5513965054141912987.correct : P5513965054141912987.Spec := by
  intro n
  simp only [A230698]

end A230698

/-! ## A230698.P9681833495248964832

`T(n-1,k-1)-(T(n-2,k)-2*T(n-2,k))*row(n)` with `a(0)=1, a(1)=1`
-/

namespace A230698.P9681833495248964832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUp2 a n - 2 * SequenceMachineLib.triUp2 a n) * (SequenceMachineLib.triRow n : ℤ)

end

end A230698.P9681833495248964832

namespace A230698

/-- `T(n-1,k-1)-(T(n-2,k)-2*T(n-2,k))*row(n)` -/
def P9681833495248964832.Spec : Prop :=
  ∀ n, P9681833495248964832.a n = A230698 n

end A230698

/-! ## A230698.P8541153575266149294

`A194550(∑[A123108(n)+A000120(n)])`
-/

namespace A230698.P8541153575266149294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n + A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194550 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A230698.P8541153575266149294

namespace A230698

/-- `A194550(∑[A123108(n)+A000120(n)])` -/
def P8541153575266149294.Spec : Prop :=
  ∀ n, P8541153575266149294.a n = A230698 n

end A230698

/-! ## A230698.P5490312707990011436

`A297243(A152541(n))+A143364(n+1)`
-/

namespace A230698.P5490312707990011436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (A152541 n).toNat + A143364 (n + 1)

end

end A230698.P5490312707990011436

namespace A230698

/-- `A297243(A152541(n))+A143364(n+1)` -/
def P5490312707990011436.Spec : Prop :=
  ∀ n, P5490312707990011436.a n = A230698 n

end A230698

/-! ## A230698.P6370647820645155522

`A255238(A029447(n+1)*A318757(n+1))`
-/

namespace A230698.P6370647820645155522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255238 (A029447 (n + 1) * A318757 (n + 1)).toNat

end

end A230698.P6370647820645155522

namespace A230698

/-- `A255238(A029447(n+1)*A318757(n+1))` -/
def P6370647820645155522.Spec : Prop :=
  ∀ n, P6370647820645155522.a n = A230698 n

end A230698

