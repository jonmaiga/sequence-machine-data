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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
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
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A317300: Sequence obtained by taking the general formula for generalized k-gonal numbers: m*((k - 2)*m - k + 4)/2, where m = 0, +1, -1, +2, -2, +3, -3, ... and k >= 5. Here k = 0.

The programs for A317300, the canonical program `A317300.P13438762233841147975` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317300 has offset 0).

The definition of A317300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317300.P13438762233841147975

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=-3, a(3)=0, a(4)=-8`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317300

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P13438762233841147975.Spec : Prop :=
  ∀ n, P13438762233841147975.a n = A317300 n

theorem P13438762233841147975.correct : P13438762233841147975.Spec := by
  intro n
  simp only [A317300]

end A317300

/-! ## A317300.P17137324807294415446

`-A174474(n+1)`
-/

namespace A317300.P17137324807294415446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A174474 (n + 1)

end

end A317300.P17137324807294415446

namespace A317300

/-- `-A174474(n+1)` -/
def P17137324807294415446.Spec : Prop :=
  ∀ n, P17137324807294415446.a n = A317300 n

end A317300

/-! ## A317300.P4611999864347774844

`1-ceil(xor(1, n)/2)²`
-/

namespace A317300.P4611999864347774844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈(Nat.xor 1 n : ℚ) / 2⌉ ^ 2

end

end A317300.P4611999864347774844

namespace A317300

/-- `1-ceil(xor(1, n)/2)²` -/
def P4611999864347774844.Spec : Prop :=
  ∀ n, P4611999864347774844.a n = A317300 n

end A317300

/-! ## A317300.P11895476653556317816

`1-round(xor(1, n)/2)²`
-/

namespace A317300.P11895476653556317816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2) ^ 2

end

end A317300.P11895476653556317816

namespace A317300

/-- `1-round(xor(1, n)/2)²` -/
def P11895476653556317816.Spec : Prop :=
  ∀ n, P11895476653556317816.a n = A317300 n

end A317300

/-! ## A317300.P5436560346285454943

`1-Δ[lcm(2, n)/2]²`
-/

namespace A317300.P5436560346285454943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) ^ 2

end

end A317300.P5436560346285454943

namespace A317300

/-- `1-Δ[lcm(2, n)/2]²` -/
def P5436560346285454943.Spec : Prop :=
  ∀ n, P5436560346285454943.a n = (A317300 n : ℚ)

end A317300

/-! ## A317300.P1912763485334046437

`∑[n*(2-gcd(2, n)²)]`
-/

namespace A317300.P1912763485334046437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - (Nat.gcd 2 n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317300.P1912763485334046437

namespace A317300

/-- `∑[n*(2-gcd(2, n)²)]` -/
def P1912763485334046437.Spec : Prop :=
  ∀ n, P1912763485334046437.a n = A317300 n

end A317300

/-! ## A317300.P13471212115345964820

`1-Δ[ceil((n/2)²)]²`
-/

namespace A317300.P13471212115345964820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) ^ 2

end

end A317300.P13471212115345964820

namespace A317300

/-- `1-Δ[ceil((n/2)²)]²` -/
def P13471212115345964820.Spec : Prop :=
  ∀ n, P13471212115345964820.a n = A317300 n

end A317300

/-! ## A317300.P8385971344795020858

`∑[2*n/Δ[n-a(n-1)]]` with `a(0)=1`
-/

namespace A317300.P8385971344795020858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317300.P8385971344795020858

namespace A317300

/-- `∑[2*n/Δ[n-a(n-1)]]` -/
def P8385971344795020858.Spec : Prop :=
  ∀ n, P8385971344795020858.a n = (A317300 n : ℚ)

end A317300

/-! ## A317300.P15078515994823511415

`A258837(A028242(n))`
-/

namespace A317300.P15078515994823511415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258837 (A028242 n).toNat

end

end A317300.P15078515994823511415

namespace A317300

/-- `A258837(A028242(n))` -/
def P15078515994823511415.Spec : Prop :=
  ∀ n, P15078515994823511415.a n = A317300 n

end A317300

/-! ## A317300.P12828515422647665056

`A001057(n)*A195084(n)`
-/

namespace A317300.P12828515422647665056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n * A195084 n

end

end A317300.P12828515422647665056

namespace A317300

/-- `A001057(n)*A195084(n)` -/
def P12828515422647665056.Spec : Prop :=
  ∀ n, P12828515422647665056.a n = A317300 n

end A317300

/-! ## A317300.P748870159057612278

`A110427(n+1)%A245524(n+1)`
-/

namespace A317300.P748870159057612278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110427 (n + 1)) (A245524 (n + 1))

end

end A317300.P748870159057612278

namespace A317300

/-- `A110427(n+1)%A245524(n+1)` -/
def P748870159057612278.Spec : Prop :=
  ∀ n, P748870159057612278.a n = A317300 n

end A317300

/-! ## A317300.P8123184204171441912

`∑[n*A327767(n+2)]`
-/

namespace A317300.P8123184204171441912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317300.P8123184204171441912

namespace A317300

/-- `∑[n*A327767(n+2)]` -/
def P8123184204171441912.Spec : Prop :=
  ∀ n, P8123184204171441912.a n = A317300 n

end A317300

/-! ## A317300.P3685406872176383380

`∑[n*A134430(2*n+1)]`
-/

namespace A317300.P3685406872176383380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134430 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317300.P3685406872176383380

namespace A317300

/-- `∑[n*A134430(2*n+1)]` -/
def P3685406872176383380.Spec : Prop :=
  ∀ n, P3685406872176383380.a n = A317300 n

end A317300

/-! ## A317300.P17382601051541095359

`A303301(∑[n]+n)`
-/

namespace A317300.P17382601051541095359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303301 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A317300.P17382601051541095359

namespace A317300

/-- `A303301(∑[n]+n)` -/
def P17382601051541095359.Spec : Prop :=
  ∀ n, P17382601051541095359.a n = A317300 n

end A317300

/-! ## A317300.P14706563523342956502

`A024000(A028242(n)²)`
-/

namespace A317300.P14706563523342956502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A028242 n ^ 2).toNat

end

end A317300.P14706563523342956502

namespace A317300

/-- `A024000(A028242(n)²)` -/
def P14706563523342956502.Spec : Prop :=
  ∀ n, P14706563523342956502.a n = A317300 n

end A317300

/-! ## A317300.P6315839682136942642

`A022959(A267942(n+1))`
-/

namespace A317300.P6315839682136942642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022959 (A267942 (n + 1)).toNat

end

end A317300.P6315839682136942642

namespace A317300

/-- `A022959(A267942(n+1))` -/
def P6315839682136942642.Spec : Prop :=
  ∀ n, P6315839682136942642.a n = A317300 n

end A317300

/-!
# A317301: Sequence obtained by taking the general formula for generalized k-gonal numbers: m*((k - 2)*m - k + 4)/2, where m = 0, +1, -1, +2, -2, +3, -3, ... and k >= 5. Here k = 1.

The programs for A317301, the canonical program `A317301.P10546817494848290581` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317301 has offset 0).

The definition of A317301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317301.P10546817494848290581

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=-2, a(3)=1, a(4)=-5`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317301

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P10546817494848290581.Spec : Prop :=
  ∀ n, P10546817494848290581.a n = A317301 n

theorem P10546817494848290581.correct : P10546817494848290581.Spec := by
  intro n
  simp only [A317301]

end A317301

/-! ## A317301.P212722719044387800

`∑[n*(5/gcd(2, n)-4)]`
-/

namespace A317301.P212722719044387800
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (5 / (Nat.gcd 2 n : ℚ) - 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317301.P212722719044387800

namespace A317301

/-- `∑[n*(5/gcd(2, n)-4)]` -/
def P212722719044387800.Spec : Prop :=
  ∀ n, P212722719044387800.a n = (A317301 n : ℚ)

end A317301

/-! ## A317301.P6726891514068611419

`n%2-a(n-1)-floor((n/2)²)` with `a(0)=0`
-/

namespace A317301.P6726891514068611419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n % 2 : ℕ) : ℤ) - a (n - 1) - ⌊((n : ℚ) / 2) ^ 2⌋

end

end A317301.P6726891514068611419

namespace A317301

/-- `n%2-a(n-1)-floor((n/2)²)` -/
def P6726891514068611419.Spec : Prop :=
  ∀ n, P6726891514068611419.a n = A317301 n

end A317301

/-! ## A317301.P2305730881354373568

`∑[a(n-2)-1]-a(n-1)` with `a(0)=0, a(1)=1, a(2)=-2`
-/

namespace A317301.P2305730881354373568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -2] fun n f1 =>
  f1 (n - 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A317301.P2305730881354373568

namespace A317301

/-- `∑[a(n-2)-1]-a(n-1)` -/
def P2305730881354373568.Spec : Prop :=
  ∀ n, P2305730881354373568.a n = A317301 n

end A317301

/-! ## A317301.P6034623995085652587

`a(n-2)-Δ[a(n-2)+n-2]` with `a(0)=0, a(1)=1`
-/

namespace A317301.P6034623995085652587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - (f1 (n + 1) - f1 n)

end

end A317301.P6034623995085652587

namespace A317301

/-- `a(n-2)-Δ[a(n-2)+n-2]` -/
def P6034623995085652587.Spec : Prop :=
  ∀ n, P6034623995085652587.a n = A317301 n

end A317301

/-! ## A317301.P15242069527797258442

`1-∑[A280167(n)]`
-/

namespace A317301.P15242069527797258442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317301.P15242069527797258442

namespace A317301

/-- `1-∑[A280167(n)]` -/
def P15242069527797258442.Spec : Prop :=
  ∀ n, P15242069527797258442.a n = A317301 n

end A317301

/-! ## A317301.P13640284041475470337

`1-C(A084964(n), 2)`
-/

namespace A317301.P13640284041475470337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A084964 n).toNat 2 : ℤ)

end

end A317301.P13640284041475470337

namespace A317301

/-- `1-C(A084964(n), 2)` -/
def P13640284041475470337.Spec : Prop :=
  ∀ n, P13640284041475470337.a n = A317301 n

end A317301

/-! ## A317301.P16535266350848122663

`∑[2*n-A195159(n)]`
-/

namespace A317301.P16535266350848122663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A195159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317301.P16535266350848122663

namespace A317301

/-- `∑[2*n-A195159(n)]` -/
def P16535266350848122663.Spec : Prop :=
  ∀ n, P16535266350848122663.a n = A317301 n

end A317301

/-! ## A317301.P15079255786515231143

`∑[2*n]-A195160(n)`
-/

namespace A317301.P15079255786515231143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A195160 n

end

end A317301.P15079255786515231143

namespace A317301

/-- `∑[2*n]-A195160(n)` -/
def P15079255786515231143.Spec : Prop :=
  ∀ n, P15079255786515231143.a n = A317301 n

end A317301

/-! ## A317301.P3878491547964194366

`A057570(n+1)-∑[2*n]`
-/

namespace A317301.P3878491547964194366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057570 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A317301.P3878491547964194366

namespace A317301

/-- `A057570(n+1)-∑[2*n]` -/
def P3878491547964194366.Spec : Prop :=
  ∀ n, P3878491547964194366.a n = A317301 n

end A317301

/-! ## A317301.P14566861300324822808

`1-(A097066(n)+a(n-1))` with `a(0)=0`
-/

namespace A317301.P14566861300324822808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (A097066 n + a (n - 1))

end

end A317301.P14566861300324822808

namespace A317301

/-- `1-(A097066(n)+a(n-1))` -/
def P14566861300324822808.Spec : Prop :=
  ∀ n, P14566861300324822808.a n = A317301 n

end A317301

/-! ## A317301.P15727367018913644675

`A080956(A084964(n))`
-/

namespace A317301.P15727367018913644675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 (A084964 n).toNat

end

end A317301.P15727367018913644675

namespace A317301

/-- `A080956(A084964(n))` -/
def P15727367018913644675.Spec : Prop :=
  ∀ n, P15727367018913644675.a n = A317301 n

end A317301

/-! ## A317301.P17348027014945863362

`A080956(A267182(n+1))`
-/

namespace A317301.P17348027014945863362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 (A267182 (n + 1)).toNat

end

end A317301.P17348027014945863362

namespace A317301

/-- `A080956(A267182(n+1))` -/
def P17348027014945863362.Spec : Prop :=
  ∀ n, P17348027014945863362.a n = A317301 n

end A317301

/-! ## A317301.P1315393029197228168

`A152271(n)-A008795(n)`
-/

namespace A317301.P1315393029197228168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n - A008795 n

end

end A317301.P1315393029197228168

namespace A317301

/-- `A152271(n)-A008795(n)` -/
def P1315393029197228168.Spec : Prop :=
  ∀ n, P1315393029197228168.a n = A317301 n

end A317301

/-! ## A317301.P9216444650158665755

`A014682(n)-A165157(n)`
-/

namespace A317301.P9216444650158665755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n - A165157 n

end

end A317301.P9216444650158665755

namespace A317301

/-- `A014682(n)-A165157(n)` -/
def P9216444650158665755.Spec : Prop :=
  ∀ n, P9216444650158665755.a n = A317301 n

end A317301

/-! ## A317301.P2211045867909679610

`A152749(n)-A118277(n)`
-/

namespace A317301.P2211045867909679610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n - A118277 n

end

end A317301.P2211045867909679610

namespace A317301

/-- `A152749(n)-A118277(n)` -/
def P2211045867909679610.Spec : Prop :=
  ∀ n, P2211045867909679610.a n = A317301 n

end A317301

/-! ## A317301.P15141286636704297186

`A001057(n)-∑[A142150(n)]`
-/

namespace A317301.P15141286636704297186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317301.P15141286636704297186

namespace A317301

/-- `A001057(n)-∑[A142150(n)]` -/
def P15141286636704297186.Spec : Prop :=
  ∀ n, P15141286636704297186.a n = A317301 n

end A317301

/-! ## A317301.P18043260243312021706

`A064455(n+1)-A101881(n)`
-/

namespace A317301.P18043260243312021706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 1) - A101881 n

end

end A317301.P18043260243312021706

namespace A317301

/-- `A064455(n+1)-A101881(n)` -/
def P18043260243312021706.Spec : Prop :=
  ∀ n, P18043260243312021706.a n = A317301 n

end A317301

/-! ## A317301.P11101502314236352950

`A274830(n+1)-A074377(n)`
-/

namespace A317301.P11101502314236352950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274830 (n + 1) - A074377 n

end

end A317301.P11101502314236352950

namespace A317301

/-- `A274830(n+1)-A074377(n)` -/
def P11101502314236352950.Spec : Prop :=
  ∀ n, P11101502314236352950.a n = A317301 n

end A317301

/-! ## A317301.P17930957731459121114

`A266438(n)-A111712(n+1)`
-/

namespace A317301.P17930957731459121114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266438 n - A111712 (n + 1)

end

end A317301.P17930957731459121114

namespace A317301

/-- `A266438(n)-A111712(n+1)` -/
def P17930957731459121114.Spec : Prop :=
  ∀ n, P17930957731459121114.a n = A317301 n

end A317301

/-!
# A317302: Square array T(n,k) = (n - 2)*(k - 1)*k/2 + k, with n >= 0, k >= 0, read by antidiagonals upwards.

The programs for A317302, there is no canonical definition to state claims against.
-/

/-! ## A317302.P6227144169884884922

`A244911(n)-A159798(n+1)`
-/

namespace A317302.P6227144169884884922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244911 n - A159798 (n + 1)

end

end A317302.P6227144169884884922

/-! ## A317302.P14144654993317789518

`A057145(n+2)-A162609(n+1)`
-/

namespace A317302.P14144654993317789518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) - A162609 (n + 1)

end

end A317302.P14144654993317789518

/-! ## A317302.P6788530075962000217

`A057145(n+2)+n-A176798(n)`
-/

namespace A317302.P6788530075962000217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) + ((n : ℤ) - A176798 n)

end

end A317302.P6788530075962000217

/-! ## A317302.P18342594948244070687

`A139600(comp[∑[n]])-A162609(n+1)`
-/

namespace A317302.P18342594948244070687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A162609 (n + 1)

end

end A317302.P18342594948244070687

/-! ## A317302.P11136534320703235669

`A057145(n+2)-A159798(comp[∑[n]])`
-/

namespace A317302.P11136534320703235669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) - A159798 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A317302.P11136534320703235669

/-! ## A317302.P15012177727414585247

`A057145(n+2)-(A126890(n)+1-n)`
-/

namespace A317302.P15012177727414585247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) - (A126890 n + (1 - (n : ℤ)))

end

end A317302.P15012177727414585247

/-! ## A317302.P1556260198633612083

`A062707(∑[2*n]%comp[∑[n]])+1-C(∑[char[∑[n]]], 2)+n-A162609(n+1)`
-/

namespace A317302.P1556260198633612083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ)) - A162609 (n + 1)

end

end A317302.P1556260198633612083

/-! ## A317302.P15625543776079730970

`A086271(n+1)-A303273(A245300(n))`
-/

namespace A317302.P15625543776079730970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (n + 1) - A303273 (A245300 n).toNat

end

end A317302.P15625543776079730970

/-! ## A317302.P6459099481718186816

`A002262(n)+A139600(n)-A143844(n)`
-/

namespace A317302.P6459099481718186816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A139600 n - A143844 n)

end

end A317302.P6459099481718186816

/-! ## A317302.P8190179651662152850

`A134394(A038722(n+1))-A162609(n+1)`
-/

namespace A317302.P8190179651662152850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134394 (A038722 (n + 1)).toNat - A162609 (n + 1)

end

end A317302.P8190179651662152850

/-!
# A317303: Numbers k such that both Dyck paths of the symmetric representation of sigma(k) have a central peak.

The programs for A317303, there is no canonical definition to state claims against.
-/

/-! ## A317303.P947747852159147455

`2*C(floor(sqrt(n))+2, 2)+n`
-/

namespace A317303.P947747852159147455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (Nat.sqrt n + 2) 2 + n

end

end A317303.P947747852159147455

/-! ## A317303.P8133049170788999652

`floor((floor(sqrt(n))+3/2)²+n)`
-/

namespace A317303.P8133049170788999652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.sqrt n : ℚ) + (3 : ℚ) / 2) ^ 2 + (n : ℚ)⌋

end

end A317303.P8133049170788999652

/-! ## A317303.P1612468260188122222

`comp[2*C(n, 2)]+∑[char[n²]]²`
-/

namespace A317303.P1612468260188122222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A317303.P1612468260188122222

/-! ## A317303.P13354588787423683409

`comp[lcm(n, n+1)]+∑[char[n²]]²`
-/

namespace A317303.P13354588787423683409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A317303.P13354588787423683409

/-! ## A317303.P4024199082559799904

`comp[∑[2*n]]+(∑[char[n²]]%10)²`
-/

namespace A317303.P4024199082559799904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ((∑ j ∈ Finset.range (n + 1), f3 j) % 10) ^ 2

end

end A317303.P4024199082559799904

/-! ## A317303.P3407321478913214234

`∑[(char[(n+1)²]+1)!]+ceil((n+1)^(tanh(7)/2))²`
-/

namespace A317303.P3407321478913214234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈(n + 1 : ℝ) ^ (Real.tanh (7 : ℝ) / 2)⌉ ^ 2

end

end A317303.P3407321478913214234

/-! ## A317303.P7353997676174669745

`∑[(char[(n+1)²]+1)%3]+ceil((n+1)^(tanh(7)/2))²`
-/

namespace A317303.P7353997676174669745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + 1) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈(n + 1 : ℝ) ^ (Real.tanh (7 : ℝ) / 2)⌉ ^ 2

end

end A317303.P7353997676174669745

/-! ## A317303.P12313664668922767837

`eq[0, A115718(n)]+1`
-/

namespace A317303.P12313664668922767837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A317303.P12313664668922767837

/-! ## A317303.P3234541531106692780

`lt[A260327(n)+1, 1]`
-/

namespace A317303.P3234541531106692780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260327 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A317303.P3234541531106692780

/-!
# A317304: Numbers k with the property that both Dyck paths of the symmetric representation of sigma(k) have a central valley.

The programs for A317304, there is no canonical definition to state claims against.
-/

/-! ## A317304.P14611324151572676400

`(n-comp[n²])²+n`
-/

namespace A317304.P14611324151572676400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 + (n : ℤ)

end

end A317304.P14611324151572676400

/-! ## A317304.P7811992418250023507

`comp[2*C(floor(sqrt(n)), 2)+n]`
-/

namespace A317304.P7811992418250023507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (Nat.sqrt n) 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A317304.P7811992418250023507

/-! ## A317304.P14085017024877787698

`comp[2*n-(n-2*C(floor(sqrt(n)), 2))]`
-/

namespace A317304.P14085017024877787698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - (2 * Nat.choose (Nat.sqrt n) 2 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A317304.P14085017024877787698

/-! ## A317304.P13978459843969211794

`eq[0, 1-a(n-floor(sqrt(2*n)))]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A317304.P13978459843969211794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  1 - f2 (n - Nat.sqrt (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317304.P13978459843969211794

/-! ## A317304.P16657913394464738795

`comp[(1-round(sqrt(n+1))%2)*round(n/2)]`
-/

namespace A317304.P16657913394464738795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))) 2) * SequenceMachineLib.roundAway ((n : ℚ) / 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A317304.P16657913394464738795

/-! ## A317304.P5497149324959642757

`lt[(n²+n)%round(sqrt(2*(n+1)))², n]`
-/

namespace A317304.P5497149324959642757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 + n : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A317304.P5497149324959642757

/-! ## A317304.P16276152150099775083

`lt[1, A260327(n)]`
-/

namespace A317304.P16276152150099775083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A317304.P16276152150099775083

/-! ## A317304.P9249725745107904147

`A007606(comp[n²])`
-/

namespace A317304.P9249725745107904147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A317304.P9249725745107904147

/-! ## A317304.P1306328822644026223

`A161983(comp[n²])`
-/

namespace A317304.P1306328822644026223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A317304.P1306328822644026223

/-! ## A317304.P16437838511825780410

`A174803(comp[n²])`
-/

namespace A317304.P16437838511825780410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174803 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A317304.P16437838511825780410

/-!
# A317305: Sum of divisors of the n-th number whose divisors increase by a factor of 2 or less.

The programs for A317305, there is no canonical definition to state claims against.
-/

/-! ## A317305.P2940735605945560862

`A000203(A174973(n+1))`
-/

namespace A317305.P2940735605945560862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A174973 (n + 1)).toNat

end

end A317305.P2940735605945560862

/-! ## A317305.P10033073862600644970

`∑{d}[A047836(n+1)/2, #]`
-/

namespace A317305.P10033073862600644970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047836 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A317305.P10033073862600644970

/-! ## A317305.P17570390000526062313

`A000203(A047836(n+1)/2)`
-/

namespace A317305.P17570390000526062313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A047836 (n + 1) : ℚ) / 2)).toNat

end

end A317305.P17570390000526062313

/-! ## A317305.P4313001780323941828

`A000203(eq[1, A237271(n+1)]+1)`
-/

namespace A317305.P4313001780323941828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A317305.P4313001780323941828

/-! ## A317305.P12233865379868796725

`A000203(record[A245092(n+1)/A237271(n+1)])`
-/

namespace A317305.P12233865379868796725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (n + 1) : ℚ) / (A237271 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A317305.P12233865379868796725

/-! ## A317305.P10218298970787581917

`A088580(A174973(n+1))-A152271(2*(n+1))`
-/

namespace A317305.P10218298970787581917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (A174973 (n + 1)).toNat - A152271 (2 * (n + 1))

end

end A317305.P10218298970787581917

/-! ## A317305.P12467125561312657440

`A326065(A047836(n+1))`
-/

namespace A317305.P12467125561312657440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A047836 (n + 1)).toNat

end

end A317305.P12467125561312657440

/-! ## A317305.P15319301196929559056

`∑{d}[A047836(n+1), A142150(#)]`
-/

namespace A317305.P15319301196929559056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A142150 d

end

end A317305.P15319301196929559056

/-! ## A317305.P5852783081440988821

`∑{d}[A002265(4*(lt[A237271(n+1), 2]+1)), #]`
-/

namespace A317305.P5852783081440988821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (4 * (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A317305.P5852783081440988821

/-! ## A317305.P2008317505736693171

`A241558(A174973(2*n+1-n))`
-/

namespace A317305.P2008317505736693171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241558 (A174973 (2 * n + 1 - n)).toNat

end

end A317305.P2008317505736693171

/-!
# A317306: Powers of 2 and even perfect numbers.

The programs for A317306, there is no canonical definition to state claims against.
-/

/-! ## A317306.P10012235676216953973

`ceil(A317307(n+1)/2)`
-/

namespace A317306.P10012235676216953973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A317307 (n + 1) : ℚ) / 2⌉

end

end A317306.P10012235676216953973

/-! ## A317306.P17905463137014952270

`round(A317307(gcd(n+1, ∑[4*n]))/2)`
-/

namespace A317306.P17905463137014952270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A317307 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)) : ℚ) / 2)

end

end A317306.P17905463137014952270

/-! ## A317306.P13576915467067690109

`(A007318(n)%2)!*round(A317307(n+1)/2)`
-/

namespace A317306.P13576915467067690109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℤ) * SequenceMachineLib.roundAway ((A317307 (n + 1) : ℚ) / 2)

end

end A317306.P13576915467067690109

/-! ## A317306.P6196439508802449063

`A000041(C(2, n+2))*round(A317307(n+1)/2)`
-/

namespace A317306.P6196439508802449063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * SequenceMachineLib.roundAway ((A317307 (n + 1) : ℚ) / 2)

end

end A317306.P6196439508802449063

/-! ## A317306.P4195647723896245317

`A007318(∑[n])*round(A317307(n+1)/2)`
-/

namespace A317306.P4195647723896245317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A317307 (n + 1) : ℚ) / 2)

end

end A317306.P4195647723896245317

/-!
# A317307: Sum of divisors of powers of 2 and sum of divisors of even perfect numbers.

The programs for A317307, there is no canonical definition to state claims against.
-/

/-! ## A317307.P307235054041800119

`A000203(A317306(n+1))`
-/

namespace A317307.P307235054041800119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A317306 (n + 1)).toNat

end

end A317307.P307235054041800119

/-! ## A317307.P12141346071426939832

`eq[n+1, A000203(floor(n/2)+1)]+1`
-/

namespace A317307.P12141346071426939832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (⌊(n : ℚ) / 2⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A317307.P12141346071426939832

/-! ## A317307.P18334396014572554904

`A227131(A317306(n+1)-A000007(n))`
-/

namespace A317307.P18334396014572554904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227131 (A317306 (n + 1) - A000007 n).toNat

end

end A317307.P18334396014572554904

/-!
# A317308: Primes p such that the largest Dyck path of the symmetric representation of sigma(p) has a central peak.

The programs for A317308, the canonical program `A317308.P11964886592269125503` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317308 has offset 1).

The definition of A317308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9056 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317308.P11964886592269125503

`∏{d}[p?[floor((floor(sqrt(n))+3/2)²+n)], #]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317308

/-- `∏{d}[p?[floor((floor(sqrt(n))+3/2)²+n)], #]` -/
def P11964886592269125503.Spec : Prop :=
  ∀ n, (P11964886592269125503.a n : ℤ) = A317308 (n + 1)

theorem P11964886592269125503.correct : P11964886592269125503.Spec := by
  intro n
  simp only [A317308, Nat.add_sub_cancel]

end A317308

/-! ## A317308.P1361036459367047473

`∑{p}[p?[floor((floor(sqrt(n))+3/2)²+n)], #]`
-/

namespace A317308.P1361036459367047473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.sqrt n : ℚ) + (3 : ℚ) / 2) ^ 2 + (n : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A317308.P1361036459367047473

namespace A317308

/-- `∑{p}[p?[floor((floor(sqrt(n))+3/2)²+n)], #]` -/
def P1361036459367047473.Spec : Prop :=
  ∀ n, (P1361036459367047473.a n : ℤ) = A317308 (n + 1)

end A317308

/-! ## A317308.P18360299593534577946

`∏{p}[p?[floor((floor(sqrt(n))+3/2)²+n)], #]`
-/

namespace A317308.P18360299593534577946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.sqrt n : ℚ) + (3 : ℚ) / 2) ^ 2 + (n : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A317308.P18360299593534577946

namespace A317308

/-- `∏{p}[p?[floor((floor(sqrt(n))+3/2)²+n)], #]` -/
def P18360299593534577946.Spec : Prop :=
  ∀ n, (P18360299593534577946.a n : ℤ) = A317308 (n + 1)

end A317308

/-! ## A317308.P17820868600143117602

`or(ceil(sin(n)²), p?[floor((floor(sqrt(n))+3/2)²+n)])`
-/

namespace A317308.P17820868600143117602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.sqrt n : ℚ) + (3 : ℚ) / 2) ^ 2 + (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈Real.sin (n : ℝ) ^ 2⌉ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A317308.P17820868600143117602

namespace A317308

/-- `or(ceil(sin(n)²), p?[floor((floor(sqrt(n))+3/2)²+n)])` -/
def P17820868600143117602.Spec : Prop :=
  ∀ n, P17820868600143117602.a n = A317308 (n + 1)

end A317308

/-! ## A317308.P12708627645209573707

`lcm(1-and(2, n), p?[floor((floor(sqrt(n))+3/2)²+n)])`
-/

namespace A317308.P12708627645209573707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.sqrt n : ℚ) + (3 : ℚ) / 2) ^ 2 + (n : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A317308.P12708627645209573707

namespace A317308

/-- `lcm(1-and(2, n), p?[floor((floor(sqrt(n))+3/2)²+n)])` -/
def P12708627645209573707.Spec : Prop :=
  ∀ n, (P12708627645209573707.a n : ℤ) = A317308 (n + 1)

end A317308

/-! ## A317308.P4204750771459799712

`p?[floor((floor(sqrt(n))+3/2)²+n)]%(∑[50*n]+6)`
-/

namespace A317308.P4204750771459799712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.sqrt n : ℚ) + (3 : ℚ) / 2) ^ 2 + (n : ℚ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((∑ j ∈ Finset.range (n + 1), f2 j + 6 : ℕ) : ℤ)

end

end A317308.P4204750771459799712

namespace A317308

/-- `p?[floor((floor(sqrt(n))+3/2)²+n)]%(∑[50*n]+6)` -/
def P4204750771459799712.Spec : Prop :=
  ∀ n, P4204750771459799712.a n = A317308 (n + 1)

end A317308

/-! ## A317308.P13885516099594547869

`p?[round(sqrt(n+1))²+n]`
-/

namespace A317308.P13885516099594547869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A317308.P13885516099594547869

namespace A317308

/-- `p?[round(sqrt(n+1))²+n]` -/
def P13885516099594547869.Spec : Prop :=
  ∀ n, P13885516099594547869.a n = A317308 (n + 1)

end A317308

/-! ## A317308.P1622789308900625489

`∩[round(sqrt(n+1))²+n, A000040(n+1)]`
-/

namespace A317308.P1622789308900625489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317308.P1622789308900625489

namespace A317308

/-- `∩[round(sqrt(n+1))²+n, A000040(n+1)]` -/
def P1622789308900625489.Spec : Prop :=
  ∀ n, (P1622789308900625489.a n : ℤ) = A317308 (n + 1)

end A317308

/-! ## A317308.P3519785553265332572

`record[A020639(round(sqrt(n+2))²+1+n)]`
-/

namespace A317308.P3519785553265332572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (n + 2 : ℝ)) ^ 2 + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317308.P3519785553265332572

namespace A317308

/-- `record[A020639(round(sqrt(n+2))²+1+n)]` -/
def P3519785553265332572.Spec : Prop :=
  ∀ n, P3519785553265332572.a n = A317308 (n + 1)

end A317308

/-! ## A317308.P2505947812150552085

`record[A006530(floor((floor(sqrt(n))+3/2)²+n))]`
-/

namespace A317308.P2505947812150552085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊((Nat.sqrt n : ℚ) + (3 : ℚ) / 2) ^ 2 + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317308.P2505947812150552085

namespace A317308

/-- `record[A006530(floor((floor(sqrt(n))+3/2)²+n))]` -/
def P2505947812150552085.Spec : Prop :=
  ∀ n, P2505947812150552085.a n = A317308 (n + 1)

end A317308

/-! ## A317308.P3143079551041630119

`filter[A162917(n+1), A010051(#)]`
-/

namespace A317308.P3143079551041630119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A317308.P3143079551041630119

namespace A317308

/-- `filter[A162917(n+1), A010051(#)]` -/
def P3143079551041630119.Spec : Prop :=
  ∀ n, P3143079551041630119.a n = A317308 (n + 1)

end A317308

/-! ## A317308.P2320449692505642351

`∩[A007607(n+1), A045344(n+1)]`
-/

namespace A317308.P2320449692505642351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317308.P2320449692505642351

namespace A317308

/-- `∩[A007607(n+1), A045344(n+1)]` -/
def P2320449692505642351.Spec : Prop :=
  ∀ n, (P2320449692505642351.a n : ℤ) = A317308 (n + 1)

end A317308

/-! ## A317308.P8275313667134215612

`∩[A000040(n+1), A162917(n+1)]`
-/

namespace A317308.P8275313667134215612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317308.P8275313667134215612

namespace A317308

/-- `∩[A000040(n+1), A162917(n+1)]` -/
def P8275313667134215612.Spec : Prop :=
  ∀ n, (P8275313667134215612.a n : ℤ) = A317308 (n + 1)

end A317308

/-! ## A317308.P328416378496641480

`∩[A045319(n+1), A162917(n+1)]`
-/

namespace A317308.P328416378496641480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317308.P328416378496641480

namespace A317308

/-- `∩[A045319(n+1), A162917(n+1)]` -/
def P328416378496641480.Spec : Prop :=
  ∀ n, (P328416378496641480.a n : ℤ) = A317308 (n + 1)

end A317308

/-! ## A317308.P10106926022555620175

`∩[A045344(n+1), A162917(n+1)]`
-/

namespace A317308.P10106926022555620175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317308.P10106926022555620175

namespace A317308

/-- `∩[A045344(n+1), A162917(n+1)]` -/
def P10106926022555620175.Spec : Prop :=
  ∀ n, (P10106926022555620175.a n : ℤ) = A317308 (n + 1)

end A317308

/-! ## A317308.P15044429809088542110

`∩[A162917(n+1), A175787(n+1)]`
-/

namespace A317308.P15044429809088542110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317308.P15044429809088542110

namespace A317308

/-- `∩[A162917(n+1), A175787(n+1)]` -/
def P15044429809088542110.Spec : Prop :=
  ∀ n, (P15044429809088542110.a n : ℤ) = A317308 (n + 1)

end A317308

/-! ## A317308.P2833477174106921266

`∩[A007607(n+1), A335402(n+1)]`
-/

namespace A317308.P2833477174106921266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317308.P2833477174106921266

namespace A317308

/-- `∩[A007607(n+1), A335402(n+1)]` -/
def P2833477174106921266.Spec : Prop :=
  ∀ n, (P2833477174106921266.a n : ℤ) = A317308 (n + 1)

end A317308

/-! ## A317308.P3088745441808308139

`∩[A162917(n+1), A182986(n+1)]`
-/

namespace A317308.P3088745441808308139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317308.P3088745441808308139

namespace A317308

/-- `∩[A162917(n+1), A182986(n+1)]` -/
def P3088745441808308139.Spec : Prop :=
  ∀ n, (P3088745441808308139.a n : ℤ) = A317308 (n + 1)

end A317308

/-! ## A317308.P7999165620163518354

`∩[A162917(n+1), A348283(n+1)]`
-/

namespace A317308.P7999165620163518354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317308.P7999165620163518354

namespace A317308

/-- `∩[A162917(n+1), A348283(n+1)]` -/
def P7999165620163518354.Spec : Prop :=
  ∀ n, (P7999165620163518354.a n : ℤ) = A317308 (n + 1)

end A317308

/-! ## A317308.P8101263203189874229

`filter[A116942(2*n+1), A010051(#)]`
-/

namespace A317308.P8101263203189874229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A317308.P8101263203189874229

namespace A317308

/-- `filter[A116942(2*n+1), A010051(#)]` -/
def P8101263203189874229.Spec : Prop :=
  ∀ n, P8101263203189874229.a n = A317308 (n + 1)

end A317308

/-!
# A317309: Primes p such that the largest Dyck path of the symmetric representation of sigma(p) has a central valley.

The programs for A317309, the canonical program `A317309.P7409434306546883799` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317309 has offset 1).

The definition of A317309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8952 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317309.P7409434306546883799

`or(1, p?[floor(sqrt(n))*ceil(sqrt(n))+n])`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317309

/-- `or(1, p?[floor(sqrt(n))*ceil(sqrt(n))+n])` -/
def P7409434306546883799.Spec : Prop :=
  ∀ n, P7409434306546883799.a n = A317309 (n + 1)

theorem P7409434306546883799.correct : P7409434306546883799.Spec := by
  intro n
  simp only [A317309, Nat.add_sub_cancel]

end A317309

/-! ## A317309.P3635235245478515091

`p?[floor(sqrt(n))*ceil(sqrt(n))+n]+floor(acot(n))`
-/

namespace A317309.P3635235245478515091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt n : ℤ) * ⌈Real.sqrt (n : ℝ)⌉ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A317309.P3635235245478515091

namespace A317309

/-- `p?[floor(sqrt(n))*ceil(sqrt(n))+n]+floor(acot(n))` -/
def P3635235245478515091.Spec : Prop :=
  ∀ n, P3635235245478515091.a n = A317309 (n + 1)

end A317309

/-! ## A317309.P3840932719905570908

`p?[comp[round(sqrt(n+1))²+n]]`
-/

namespace A317309.P3840932719905570908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A317309.P3840932719905570908

namespace A317309

/-- `p?[comp[round(sqrt(n+1))²+n]]` -/
def P3840932719905570908.Spec : Prop :=
  ∀ n, (P3840932719905570908.a n : ℤ) = A317309 (n + 1)

end A317309

/-! ## A317309.P13831366121814584346

`filter[A161983(n+1), A010051(#)]`
-/

namespace A317309.P13831366121814584346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A317309.P13831366121814584346

namespace A317309

/-- `filter[A161983(n+1), A010051(#)]` -/
def P13831366121814584346.Spec : Prop :=
  ∀ n, P13831366121814584346.a n = A317309 (n + 1)

end A317309

/-! ## A317309.P17068560725053157426

`filter[A161983(n+1), A323153(#)]`
-/

namespace A317309.P17068560725053157426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A317309.P17068560725053157426

namespace A317309

/-- `filter[A161983(n+1), A323153(#)]` -/
def P17068560725053157426.Spec : Prop :=
  ∀ n, P17068560725053157426.a n = A317309 (n + 1)

end A317309

/-! ## A317309.P10950148466397668854

`∩[A000040(n+1), A161983(n)]`
-/

namespace A317309.P10950148466397668854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317309.P10950148466397668854

namespace A317309

/-- `∩[A000040(n+1), A161983(n)]` -/
def P10950148466397668854.Spec : Prop :=
  ∀ n, (P10950148466397668854.a n : ℤ) = A317309 (n + 1)

end A317309

/-! ## A317309.P13927376655441775930

`∩[A006005(n+1), A161983(n)]`
-/

namespace A317309.P13927376655441775930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317309.P13927376655441775930

namespace A317309

/-- `∩[A006005(n+1), A161983(n)]` -/
def P13927376655441775930.Spec : Prop :=
  ∀ n, (P13927376655441775930.a n : ℤ) = A317309 (n + 1)

end A317309

/-! ## A317309.P12200801887803236905

`∩[A008578(n+1), A161983(n)]`
-/

namespace A317309.P12200801887803236905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317309.P12200801887803236905

namespace A317309

/-- `∩[A008578(n+1), A161983(n)]` -/
def P12200801887803236905.Spec : Prop :=
  ∀ n, (P12200801887803236905.a n : ℤ) = A317309 (n + 1)

end A317309

/-! ## A317309.P16547452899929791069

`∩[A033946(n+1), A161983(n)]`
-/

namespace A317309.P16547452899929791069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317309.P16547452899929791069

namespace A317309

/-- `∩[A033946(n+1), A161983(n)]` -/
def P16547452899929791069.Spec : Prop :=
  ∀ n, (P16547452899929791069.a n : ℤ) = A317309 (n + 1)

end A317309

/-! ## A317309.P14771374961538588342

`∩[A053813(n+1), A161983(n)]`
-/

namespace A317309.P14771374961538588342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317309.P14771374961538588342

namespace A317309

/-- `∩[A053813(n+1), A161983(n)]` -/
def P14771374961538588342.Spec : Prop :=
  ∀ n, (P14771374961538588342.a n : ℤ) = A317309 (n + 1)

end A317309

/-! ## A317309.P14199428718598794553

`∩[A065091(n+1), A161983(n)]`
-/

namespace A317309.P14199428718598794553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317309.P14199428718598794553

namespace A317309

/-- `∩[A065091(n+1), A161983(n)]` -/
def P14199428718598794553.Spec : Prop :=
  ∀ n, (P14199428718598794553.a n : ℤ) = A317309 (n + 1)

end A317309

/-! ## A317309.P1327045563181955455

`∩[A116974(n+1), A161983(n)]`
-/

namespace A317309.P1327045563181955455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317309.P1327045563181955455

namespace A317309

/-- `∩[A116974(n+1), A161983(n)]` -/
def P1327045563181955455.Spec : Prop :=
  ∀ n, (P1327045563181955455.a n : ℤ) = A317309 (n + 1)

end A317309

/-! ## A317309.P1783784886981616805

`filter[A161983(2*n+1), A323152(#)]`
-/

namespace A317309.P1783784886981616805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A317309.P1783784886981616805

namespace A317309

/-- `filter[A161983(2*n+1), A323152(#)]` -/
def P1783784886981616805.Spec : Prop :=
  ∀ n, P1783784886981616805.a n = A317309 (n + 1)

end A317309

/-! ## A317309.P3508421964611500087

`filter[A161983(2*n+1), A340371(#)]`
-/

namespace A317309.P3508421964611500087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A317309.P3508421964611500087

namespace A317309

/-- `filter[A161983(2*n+1), A340371(#)]` -/
def P3508421964611500087.Spec : Prop :=
  ∀ n, P3508421964611500087.a n = A317309 (n + 1)

end A317309

/-! ## A317309.P2506404546128467894

`filter[A128059(n), A051341(#)]`
-/

namespace A317309.P2506404546128467894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A051341 (f1 j).toNat = 1) n)

end

end A317309.P2506404546128467894

namespace A317309

/-- `filter[A128059(n), A051341(#)]` -/
def P2506404546128467894.Spec : Prop :=
  ∀ n, P2506404546128467894.a n = A317309 (n + 1)

end A317309

/-! ## A317309.P17215302069506434819

`filter[A130008(n), A051341(#)]`
-/

namespace A317309.P17215302069506434819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A051341 (f1 j).toNat = 1) n)

end

end A317309.P17215302069506434819

namespace A317309

/-- `filter[A130008(n), A051341(#)]` -/
def P17215302069506434819.Spec : Prop :=
  ∀ n, P17215302069506434819.a n = A317309 (n + 1)

end A317309

/-! ## A317309.P11257261837959151040

`eq[A051341(n), A072491(n)]`
-/

namespace A317309.P11257261837959151040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317309.P11257261837959151040

namespace A317309

/-- `eq[A051341(n), A072491(n)]` -/
def P11257261837959151040.Spec : Prop :=
  ∀ n, (P11257261837959151040.a n : ℤ) = A317309 (n + 1)

end A317309

/-! ## A317309.P1665161172642293294

`eq[A051341(n), A074206(n)]`
-/

namespace A317309.P1665161172642293294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317309.P1665161172642293294

namespace A317309

/-- `eq[A051341(n), A074206(n)]` -/
def P1665161172642293294.Spec : Prop :=
  ∀ n, (P1665161172642293294.a n : ℤ) = A317309 (n + 1)

end A317309

/-! ## A317309.P6333123498426485637

`eq[A051341(n), A078898(n)]`
-/

namespace A317309.P6333123498426485637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317309.P6333123498426485637

namespace A317309

/-- `eq[A051341(n), A078898(n)]` -/
def P6333123498426485637.Spec : Prop :=
  ∀ n, (P6333123498426485637.a n : ℤ) = A317309 (n + 1)

end A317309

/-! ## A317309.P18365662264263695000

`eq[A051341(n), A104725(n)]`
-/

namespace A317309.P18365662264263695000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317309.P18365662264263695000

namespace A317309

/-- `eq[A051341(n), A104725(n)]` -/
def P18365662264263695000.Spec : Prop :=
  ∀ n, (P18365662264263695000.a n : ℤ) = A317309 (n + 1)

end A317309

/-!
# A317311: Multiples of 11 and odd numbers interleaved.

The programs for A317311, the canonical program `A317311.P6227971398230635534` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317311 has offset 0).

The definition of A317311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317311.P343952486639058743

`(13+9*(-1)^n)*n/4`
-/

namespace A317311.P343952486639058743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((13 + 9 * (-1) ^ n) * (n : ℤ) : ℚ) / 4

end

end A317311.P343952486639058743

namespace A317311

/-- `(13+9*(-1)^n)*n/4` -/
def P343952486639058743.Spec : Prop :=
  ∀ n, P343952486639058743.a n = (A317311 n : ℚ)

theorem P343952486639058743.correct : P343952486639058743.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A317311, Nat.add_sub_cancel, A317311.P343952486639058743.a, A317311.P6227971398230635534.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A317311, Nat.add_sub_cancel, A317311.P343952486639058743.a, A317311.P6227971398230635534.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A317311

/-! ## A317311.P6227971398230635534

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=11, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317311

/-- `2*a(n-2)-a(n-4)` -/
def P6227971398230635534.Spec : Prop :=
  ∀ n, P6227971398230635534.a n = A317311 n

theorem P6227971398230635534.correct : P6227971398230635534.Spec := by
  intro n
  simp only [A317311]

end A317311

/-! ## A317311.P1403195863404714957

`n%or(1, n)+n*(8-7/gcd(2, n))`
-/

namespace A317311.P1403195863404714957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % Nat.lor 1 n : ℕ) : ℚ) + (n : ℚ) * (8 - 7 / (Nat.gcd 2 n : ℚ))

end

end A317311.P1403195863404714957

namespace A317311

/-- `n%or(1, n)+n*(8-7/gcd(2, n))` -/
def P1403195863404714957.Spec : Prop :=
  ∀ n, P1403195863404714957.a n = (A317311 n : ℚ)

end A317311

/-! ## A317311.P3092342450342117387

`abs(2*n-A317315(n))`
-/

namespace A317311.P3092342450342117387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A317315 n|

end

end A317311.P3092342450342117387

namespace A317311

/-- `abs(2*n-A317315(n))` -/
def P3092342450342117387.Spec : Prop :=
  ∀ n, P3092342450342117387.a n = A317311 n

end A317311

/-! ## A317311.P1157060733831599903

`A195817(n)+n-gcd(n, ∑[n])`
-/

namespace A317311.P1157060733831599903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195817 n + ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A317311.P1157060733831599903

namespace A317311

/-- `A195817(n)+n-gcd(n, ∑[n])` -/
def P1157060733831599903.Spec : Prop :=
  ∀ n, P1157060733831599903.a n = A317311 n

end A317311

/-! ## A317311.P13095240090499669182

`A195817(n)+A142150(n)`
-/

namespace A317311.P13095240090499669182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195817 n + A142150 n

end

end A317311.P13095240090499669182

namespace A317311

/-- `A195817(n)+A142150(n)` -/
def P13095240090499669182.Spec : Prop :=
  ∀ n, P13095240090499669182.a n = A317311 n

end A317311

/-! ## A317311.P10731305290584481592

`A237420(n)+A195312(n)`
-/

namespace A317311.P10731305290584481592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n + A195312 n

end

end A317311.P10731305290584481592

namespace A317311

/-- `A237420(n)+A195312(n)` -/
def P10731305290584481592.Spec : Prop :=
  ∀ n, P10731305290584481592.a n = A317311 n

end A317311

/-! ## A317311.P5968068394305827579

`A008589(n)-A174012(n)`
-/

namespace A317311.P5968068394305827579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n - A174012 n

end

end A317311.P5968068394305827579

namespace A317311

/-- `A008589(n)-A174012(n)` -/
def P5968068394305827579.Spec : Prop :=
  ∀ n, P5968068394305827579.a n = A317311 n

end A317311

/-! ## A317311.P10167430205724507236

`A165988(n)-A064680(n)`
-/

namespace A317311.P10167430205724507236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165988 n - A064680 n

end

end A317311.P10167430205724507236

namespace A317311

/-- `A165988(n)-A064680(n)` -/
def P10167430205724507236.Spec : Prop :=
  ∀ n, P10167430205724507236.a n = A317311 n

end A317311

/-! ## A317311.P10648858878419865569

`A317312(n)-A142150(n)`
-/

namespace A317311.P10648858878419865569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317312 n - A142150 n

end

end A317311.P10648858878419865569

namespace A317311

/-- `A317312(n)-A142150(n)` -/
def P10648858878419865569.Spec : Prop :=
  ∀ n, P10648858878419865569.a n = A317311 n

end A317311

/-! ## A317311.P282249059752212339

`A317313(n)-A237420(n)`
-/

namespace A317311.P282249059752212339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317313 n - A237420 n

end

end A317311.P282249059752212339

namespace A317311

/-- `A317313(n)-A237420(n)` -/
def P282249059752212339.Spec : Prop :=
  ∀ n, P282249059752212339.a n = A317311 n

end A317311

/-! ## A317311.P1519171911748742696

`A004188(n)%A008458(n)`
-/

namespace A317311.P1519171911748742696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004188 n) (A008458 n)

end

end A317311.P1519171911748742696

namespace A317311

/-- `A004188(n)%A008458(n)` -/
def P1519171911748742696.Spec : Prop :=
  ∀ n, P1519171911748742696.a n = A317311 n

end A317311

/-! ## A317311.P6520213745150170719

`A317323(n)%A008458(n)`
-/

namespace A317311.P6520213745150170719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317323 n) (A008458 n)

end

end A317311.P6520213745150170719

namespace A317311

/-- `A317323(n)%A008458(n)` -/
def P6520213745150170719.Spec : Prop :=
  ∀ n, P6520213745150170719.a n = A317311 n

end A317311

/-! ## A317311.P7873643645467943988

`gcd(A152740(n), A317322(n))`
-/

namespace A317311.P7873643645467943988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A152740 n) (A317322 n)

end

end A317311.P7873643645467943988

namespace A317311

/-- `gcd(A152740(n), A317322(n))` -/
def P7873643645467943988.Spec : Prop :=
  ∀ n, (P7873643645467943988.a n : ℤ) = A317311 n

end A317311

/-! ## A317311.P10779877114455925042

`A195159(n)+2*A237420(n)`
-/

namespace A317311.P10779877114455925042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 n + 2 * A237420 n

end

end A317311.P10779877114455925042

namespace A317311

/-- `A195159(n)+2*A237420(n)` -/
def P10779877114455925042.Spec : Prop :=
  ∀ n, P10779877114455925042.a n = A317311 n

end A317311

/-! ## A317311.P1290381276690872821

`2*A195161(n)-A195140(n)`
-/

namespace A317311.P1290381276690872821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195161 n - A195140 n

end

end A317311.P1290381276690872821

namespace A317311

/-- `2*A195161(n)-A195140(n)` -/
def P1290381276690872821.Spec : Prop :=
  ∀ n, P1290381276690872821.a n = A317311 n

end A317311

/-! ## A317311.P15199319474415491470

`2*A195312(n)-A195159(n)`
-/

namespace A317311.P15199319474415491470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195312 n - A195159 n

end

end A317311.P15199319474415491470

namespace A317311

/-- `2*A195312(n)-A195159(n)` -/
def P15199319474415491470.Spec : Prop :=
  ∀ n, P15199319474415491470.a n = A317311 n

end A317311

/-!
# A317312: Multiples of 12 and odd numbers interleaved.

The programs for A317312, the canonical program `A317312.P1976828774688156424` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317312 has offset 0).

The definition of A317312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317312.P9808037309902694323

`(7+5*(-1)^n)*n/2`
-/

namespace A317312.P9808037309902694323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 + 5 * (-1) ^ n) * (n : ℤ) : ℚ) / 2

end

end A317312.P9808037309902694323

namespace A317312

/-- `(7+5*(-1)^n)*n/2` -/
def P9808037309902694323.Spec : Prop :=
  ∀ n, P9808037309902694323.a n = (A317312 n : ℚ)

theorem P9808037309902694323.correct : P9808037309902694323.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A317312, Nat.add_sub_cancel, A317312.P9808037309902694323.a, A317312.P1976828774688156424.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A317312, Nat.add_sub_cancel, A317312.P9808037309902694323.a, A317312.P1976828774688156424.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A317312

/-! ## A317312.P1976828774688156424

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=12, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317312

/-- `2*a(n-2)-a(n-4)` -/
def P1976828774688156424.Spec : Prop :=
  ∀ n, P1976828774688156424.a n = A317312 n

theorem P1976828774688156424.correct : P1976828774688156424.Spec := by
  intro n
  simp only [A317312]

end A317312

/-! ## A317312.P10123870845158980785

`∑{d}[4-a(n-1), n*#]` with `a(0)=5`
-/

namespace A317312.P10123870845158980785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, n * d

end

end A317312.P10123870845158980785

namespace A317312

/-- `∑{d}[4-a(n-1), n*#]` -/
def P10123870845158980785.Spec : Prop :=
  ∀ n, (P10123870845158980785.a n : ℤ) = A317312 n

end A317312

/-! ## A317312.P8653953164295411344

`2*A195159(n)-n`
-/

namespace A317312.P8653953164295411344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195159 n - (n : ℤ)

end

end A317312.P8653953164295411344

namespace A317312

/-- `2*A195159(n)-n` -/
def P8653953164295411344.Spec : Prop :=
  ∀ n, P8653953164295411344.a n = A317312 n

end A317312

/-! ## A317312.P6844021850992033914

`5*A237420(n)+n`
-/

namespace A317312.P6844021850992033914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A237420 n + (n : ℤ)

end

end A317312.P6844021850992033914

namespace A317312

/-- `5*A237420(n)+n` -/
def P6844021850992033914.Spec : Prop :=
  ∀ n, P6844021850992033914.a n = A317312 n

end A317312

/-! ## A317312.P8802488173699100768

`A237420(n)+A195817(n)`
-/

namespace A317312.P8802488173699100768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n + A195817 n

end

end A317312.P8802488173699100768

namespace A317312

/-- `A237420(n)+A195817(n)` -/
def P8802488173699100768.Spec : Prop :=
  ∀ n, P8802488173699100768.a n = A317312 n

end A317312

/-! ## A317312.P5888943587566984653

`A317311(n)+A142150(n)`
-/

namespace A317312.P5888943587566984653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317311 n + A142150 n

end

end A317312.P5888943587566984653

namespace A317312

/-- `A317311(n)+A142150(n)` -/
def P5888943587566984653.Spec : Prop :=
  ∀ n, P5888943587566984653.a n = A317312 n

end A317312

/-! ## A317312.P6481880481003533938

`A317313(n)-A142150(n)`
-/

namespace A317312.P6481880481003533938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317313 n - A142150 n

end

end A317312.P6481880481003533938

namespace A317312

/-- `A317313(n)-A142150(n)` -/
def P6481880481003533938.Spec : Prop :=
  ∀ n, P6481880481003533938.a n = A317312 n

end A317312

/-! ## A317312.P15802681206611224258

`A317314(n)-A237420(n)`
-/

namespace A317312.P15802681206611224258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317314 n - A237420 n

end

end A317312.P15802681206611224258

namespace A317312

/-- `A317314(n)-A237420(n)` -/
def P15802681206611224258.Spec : Prop :=
  ∀ n, P15802681206611224258.a n = A317312 n

end A317312

/-! ## A317312.P4056025845633290412

`A322462(n)-A396652(n)`
-/

namespace A317312.P4056025845633290412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322462 n - A396652 n

end

end A317312.P4056025845633290412

namespace A317312

/-- `A322462(n)-A396652(n)` -/
def P4056025845633290412.Spec : Prop :=
  ∀ n, P4056025845633290412.a n = A317312 n

end A317312

/-! ## A317312.P659825947607858083

`A054608(n)%A022144(n)`
-/

namespace A317312.P659825947607858083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054608 n) (A022144 n)

end

end A317312.P659825947607858083

namespace A317312

/-- `A054608(n)%A022144(n)` -/
def P659825947607858083.Spec : Prop :=
  ∀ n, P659825947607858083.a n = A317312 n

end A317312

/-! ## A317312.P14760772547526152758

`gcd(A008588(n), A212682(n))`
-/

namespace A317312.P14760772547526152758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008588 n) (A212682 n)

end

end A317312.P14760772547526152758

namespace A317312

/-- `gcd(A008588(n), A212682(n))` -/
def P14760772547526152758.Spec : Prop :=
  ∀ n, (P14760772547526152758.a n : ℤ) = A317312 n

end A317312

/-! ## A317312.P887037994078405598

`lcm(A022998(n), A257143(n))`
-/

namespace A317312.P887037994078405598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A022998 n) (A257143 n)

end

end A317312.P887037994078405598

namespace A317312

/-- `lcm(A022998(n), A257143(n))` -/
def P887037994078405598.Spec : Prop :=
  ∀ n, (P887037994078405598.a n : ℤ) = A317312 n

end A317312

/-! ## A317312.P6327206887418484810

`A163756(n)%A113801(n+1)`
-/

namespace A317312.P6327206887418484810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163756 n) (A113801 (n + 1))

end

end A317312.P6327206887418484810

namespace A317312

/-- `A163756(n)%A113801(n+1)` -/
def P6327206887418484810.Spec : Prop :=
  ∀ n, P6327206887418484810.a n = A317312 n

end A317312

/-! ## A317312.P16744218920182622267

`A316729(n)%A113801(n+1)`
-/

namespace A317312.P16744218920182622267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316729 n) (A113801 (n + 1))

end

end A317312.P16744218920182622267

namespace A317312

/-- `A316729(n)%A113801(n+1)` -/
def P16744218920182622267.Spec : Prop :=
  ∀ n, P16744218920182622267.a n = A317312 n

end A317312

/-!
# A317313: Multiples of 13 and odd numbers interleaved.

The programs for A317313, the canonical program `A317313.P6616821738574118500` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317313 has offset 0).

The definition of A317313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317313.P10673513276794394098

`(15+11*(-1)^n)*n/4`
-/

namespace A317313.P10673513276794394098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((15 + 11 * (-1) ^ n) * (n : ℤ) : ℚ) / 4

end

end A317313.P10673513276794394098

namespace A317313

/-- `(15+11*(-1)^n)*n/4` -/
def P10673513276794394098.Spec : Prop :=
  ∀ n, P10673513276794394098.a n = (A317313 n : ℚ)

theorem P10673513276794394098.correct : P10673513276794394098.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A317313, Nat.add_sub_cancel, A317313.P10673513276794394098.a, A317313.P6616821738574118500.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A317313, Nat.add_sub_cancel, A317313.P10673513276794394098.a, A317313.P6616821738574118500.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A317313

/-! ## A317313.P6616821738574118500

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=13, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317313

/-- `2*a(n-2)-a(n-4)` -/
def P6616821738574118500.Spec : Prop :=
  ∀ n, P6616821738574118500.a n = A317313 n

theorem P6616821738574118500.correct : P6616821738574118500.Spec := by
  intro n
  simp only [A317313]

end A317313

/-! ## A317313.P7455013948660712377

`abs(11*(gcd(n, ∑[n])-n)-n)`
-/

namespace A317313.P7455013948660712377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |11 * ((Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n : ℤ)) - (n : ℤ)|

end

end A317313.P7455013948660712377

namespace A317313

/-- `abs(11*(gcd(n, ∑[n])-n)-n)` -/
def P7455013948660712377.Spec : Prop :=
  ∀ n, P7455013948660712377.a n = A317313 n

end A317313

/-! ## A317313.P14584695780551892621

`A317312(n)+A142150(n)`
-/

namespace A317313.P14584695780551892621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317312 n + A142150 n

end

end A317313.P14584695780551892621

namespace A317313

/-- `A317312(n)+A142150(n)` -/
def P14584695780551892621.Spec : Prop :=
  ∀ n, P14584695780551892621.a n = A317313 n

end A317313

/-! ## A317313.P7638341898481371247

`A317311(A237420(n))+n`
-/

namespace A317313.P7638341898481371247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317311 (A237420 n).toNat + (n : ℤ)

end

end A317313.P7638341898481371247

namespace A317313

/-- `A317311(A237420(n))+n` -/
def P7638341898481371247.Spec : Prop :=
  ∀ n, P7638341898481371247.a n = A317313 n

end A317313

/-! ## A317313.P6152636607468156140

`A317314(n)-A142150(n)`
-/

namespace A317313.P6152636607468156140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317314 n - A142150 n

end

end A317313.P6152636607468156140

namespace A317313

/-- `A317314(n)-A142150(n)` -/
def P6152636607468156140.Spec : Prop :=
  ∀ n, P6152636607468156140.a n = A317313 n

end A317313

/-! ## A317313.P16389569181111535840

`A317315(n)-A237420(n)`
-/

namespace A317313.P16389569181111535840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317315 n - A237420 n

end

end A317313.P16389569181111535840

namespace A317313

/-- `A317315(n)-A237420(n)` -/
def P16389569181111535840.Spec : Prop :=
  ∀ n, P16389569181111535840.a n = A317313 n

end A317313

/-! ## A317313.P3043724252865829083

`gcd(A152741(n), A317326(n))`
-/

namespace A317313.P3043724252865829083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A152741 n) (A317326 n)

end

end A317313.P3043724252865829083

namespace A317313

/-- `gcd(A152741(n), A317326(n))` -/
def P3043724252865829083.Spec : Prop :=
  ∀ n, (P3043724252865829083.a n : ℤ) = A317313 n

end A317313

/-! ## A317313.P10455237669248949011

`A195312(n)+2*A237420(n)`
-/

namespace A317313.P10455237669248949011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195312 n + 2 * A237420 n

end

end A317313.P10455237669248949011

namespace A317313

/-- `A195312(n)+2*A237420(n)` -/
def P10455237669248949011.Spec : Prop :=
  ∀ n, P10455237669248949011.a n = A317313 n

end A317313

/-! ## A317313.P1931678377520160749

`2*A195159(n)-A026741(n)`
-/

namespace A317313.P1931678377520160749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195159 n - A026741 n

end

end A317313.P1931678377520160749

namespace A317313

/-- `2*A195159(n)-A026741(n)` -/
def P1931678377520160749.Spec : Prop :=
  ∀ n, P1931678377520160749.a n = A317313 n

end A317313

/-! ## A317313.P7941924885347759032

`2*A195312(n)-A195140(n)`
-/

namespace A317313.P7941924885347759032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195312 n - A195140 n

end

end A317313.P7941924885347759032

namespace A317313

/-- `2*A195312(n)-A195140(n)` -/
def P7941924885347759032.Spec : Prop :=
  ∀ n, P7941924885347759032.a n = A317313 n

end A317313

/-! ## A317313.P6930162869030986766

`2*A195817(n)-A195159(n)`
-/

namespace A317313.P6930162869030986766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195817 n - A195159 n

end

end A317313.P6930162869030986766

namespace A317313

/-- `2*A195817(n)-A195159(n)` -/
def P6930162869030986766.Spec : Prop :=
  ∀ n, P6930162869030986766.a n = A317313 n

end A317313

/-! ## A317313.P3013949773040763204

`A317315(n)-2*A142150(n)`
-/

namespace A317313.P3013949773040763204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317315 n - 2 * A142150 n

end

end A317313.P3013949773040763204

namespace A317313

/-- `A317315(n)-2*A142150(n)` -/
def P3013949773040763204.Spec : Prop :=
  ∀ n, P3013949773040763204.a n = A317313 n

end A317313

/-!
# A317314: Multiples of 14 and odd numbers interleaved.

The programs for A317314, the canonical program `A317314.P6781213423248898032` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317314 has offset 0).

The definition of A317314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317314.P6781213423248898032

`4*n+3*n*(-1)^n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317314

/-- `4*n+3*n*(-1)^n` -/
def P6781213423248898032.Spec : Prop :=
  ∀ n, P6781213423248898032.a n = A317314 n

theorem P6781213423248898032.correct : P6781213423248898032.Spec := by
  intro n
  simp only [A317314]

end A317314

/-! ## A317314.P1011647242850893299

`n*gcd(7, n%2)`
-/

namespace A317314.P1011647242850893299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 7 (n % 2)

end

end A317314.P1011647242850893299

namespace A317314

/-- `n*gcd(7, n%2)` -/
def P1011647242850893299.Spec : Prop :=
  ∀ n, (P1011647242850893299.a n : ℤ) = A317314 n

end A317314

/-! ## A317314.P5193676208015577779

`n*dr(gcd(2, n)^4)`
-/

namespace A317314.P5193676208015577779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (Nat.gcd 2 n ^ 4 : ℤ)

end

end A317314.P5193676208015577779

namespace A317314

/-- `n*dr(gcd(2, n)^4)` -/
def P5193676208015577779.Spec : Prop :=
  ∀ n, (P5193676208015577779.a n : ℤ) = A317314 n

end A317314

/-! ## A317314.P3843470217441574491

`n*dr(gcd(4, n²)²)`
-/

namespace A317314.P3843470217441574491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (Nat.gcd 4 (n ^ 2) ^ 2 : ℤ)

end

end A317314.P3843470217441574491

namespace A317314

/-- `n*dr(gcd(4, n²)²)` -/
def P3843470217441574491.Spec : Prop :=
  ∀ n, (P3843470217441574491.a n : ℤ) = A317314 n

end A317314

/-! ## A317314.P11568225148596645695

`n*7^((n+1)%2)`
-/

namespace A317314.P11568225148596645695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 7 ^ ((n + 1) % 2)

end

end A317314.P11568225148596645695

namespace A317314

/-- `n*7^((n+1)%2)` -/
def P11568225148596645695.Spec : Prop :=
  ∀ n, (P11568225148596645695.a n : ℤ) = A317314 n

end A317314

/-! ## A317314.P10886665220577148877

`n/7^((1-n)%2)`
-/

namespace A317314.P10886665220577148877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (7 : ℚ) ^ (Int.tmod (1 - (n : ℤ)) 2 : ℤ)

end

end A317314.P10886665220577148877

namespace A317314

/-- `n/7^((1-n)%2)` -/
def P10886665220577148877.Spec : Prop :=
  ∀ n, P10886665220577148877.a n = (A317314 n : ℚ)

end A317314

/-! ## A317314.P350322834160706123

`n*7^and(1, n+1)`
-/

namespace A317314.P350322834160706123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 7 ^ Nat.land 1 (n + 1)

end

end A317314.P350322834160706123

namespace A317314

/-- `n*7^and(1, n+1)` -/
def P350322834160706123.Spec : Prop :=
  ∀ n, (P350322834160706123.a n : ℤ) = A317314 n

end A317314

/-! ## A317314.P9383268695144762361

`n*C(7, (n+3)%2)`
-/

namespace A317314.P9383268695144762361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 7 ((n + 3) % 2)

end

end A317314.P9383268695144762361

namespace A317314

/-- `n*C(7, (n+3)%2)` -/
def P9383268695144762361.Spec : Prop :=
  ∀ n, (P9383268695144762361.a n : ℤ) = A317314 n

end A317314

/-! ## A317314.P17891767868011346134

`n*C(7, and(1, n+1))`
-/

namespace A317314.P17891767868011346134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 7 (Nat.land 1 (n + 1))

end

end A317314.P17891767868011346134

namespace A317314

/-- `n*C(7, and(1, n+1))` -/
def P17891767868011346134.Spec : Prop :=
  ∀ n, (P17891767868011346134.a n : ℤ) = A317314 n

end A317314

/-! ## A317314.P6095280343800916693

`n*∏[1/a(n-1)]` with `a(0)=7`
-/

namespace A317314.P6095280343800916693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [7] fun n f1 =>
  1 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A317314.P6095280343800916693

namespace A317314

/-- `n*∏[1/a(n-1)]` -/
def P6095280343800916693.Spec : Prop :=
  ∀ n, P6095280343800916693.a n = (A317314 n : ℚ)

end A317314

/-! ## A317314.P12184553627624594883

`∑{d}[3-a(n-1), n*#]` with `a(0)=4`
-/

namespace A317314.P12184553627624594883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, n * d

end

end A317314.P12184553627624594883

namespace A317314

/-- `∑{d}[3-a(n-1), n*#]` -/
def P12184553627624594883.Spec : Prop :=
  ∀ n, (P12184553627624594883.a n : ℤ) = A317314 n

end A317314

/-! ## A317314.P857789030458634326

`n*(∑[2-a(n-1)]-n)` with `a(0)=7`
-/

namespace A317314.P857789030458634326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A317314.P857789030458634326

namespace A317314

/-- `n*(∑[2-a(n-1)]-n)` -/
def P857789030458634326.Spec : Prop :=
  ∀ n, P857789030458634326.a n = A317314 n

end A317314

/-! ## A317314.P11569121767726444564

`∑{d}[gcd(2*n, (n+2)²), n*#]`
-/

namespace A317314.P11569121767726444564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) ((n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), n * d

end

end A317314.P11569121767726444564

namespace A317314

/-- `∑{d}[gcd(2*n, (n+2)²), n*#]` -/
def P11569121767726444564.Spec : Prop :=
  ∀ n, (P11569121767726444564.a n : ℤ) = A317314 n

end A317314

/-! ## A317314.P16636983631812971412

`n*A176415(n)`
-/

namespace A317314.P16636983631812971412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A176415 n

end

end A317314.P16636983631812971412

namespace A317314

/-- `n*A176415(n)` -/
def P16636983631812971412.Spec : Prop :=
  ∀ n, P16636983631812971412.a n = A317314 n

end A317314

/-! ## A317314.P4731160240020101916

`lcm(n, A195159(n))`
-/

namespace A317314.P4731160240020101916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A195159 n)

end

end A317314.P4731160240020101916

namespace A317314

/-- `lcm(n, A195159(n))` -/
def P4731160240020101916.Spec : Prop :=
  ∀ n, (P4731160240020101916.a n : ℤ) = A317314 n

end A317314

/-! ## A317314.P2202414064797194461

`n*(A021169(n)+1)`
-/

namespace A317314.P2202414064797194461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A021169 n + 1)

end

end A317314.P2202414064797194461

namespace A317314

/-- `n*(A021169(n)+1)` -/
def P2202414064797194461.Spec : Prop :=
  ∀ n, P2202414064797194461.a n = A317314 n

end A317314

/-! ## A317314.P3923014486543108213

`n*(A040015(n)-1)`
-/

namespace A317314.P3923014486543108213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A040015 n - 1)

end

end A317314.P3923014486543108213

namespace A317314

/-- `n*(A040015(n)-1)` -/
def P3923014486543108213.Spec : Prop :=
  ∀ n, P3923014486543108213.a n = A317314 n

end A317314

/-! ## A317314.P6042414323457359668

`(A317326(n)+n)/2`
-/

namespace A317314.P6042414323457359668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317326 n + (n : ℤ) : ℚ) / 2

end

end A317314.P6042414323457359668

namespace A317314

/-- `(A317326(n)+n)/2` -/
def P6042414323457359668.Spec : Prop :=
  ∀ n, P6042414323457359668.a n = (A317314 n : ℚ)

end A317314

/-! ## A317314.P6693612861226042320

`n*(A174971(n)+4)`
-/

namespace A317314.P6693612861226042320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A174971 n + 4)

end

end A317314.P6693612861226042320

namespace A317314

/-- `n*(A174971(n)+4)` -/
def P6693612861226042320.Spec : Prop :=
  ∀ n, P6693612861226042320.a n = A317314 n

end A317314

/-! ## A317314.P9561691137559303770

`n/2*A040048(n)`
-/

namespace A317314.P9561691137559303770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A040048 n : ℚ)

end

end A317314.P9561691137559303770

namespace A317314

/-- `n/2*A040048(n)` -/
def P9561691137559303770.Spec : Prop :=
  ∀ n, P9561691137559303770.a n = (A317314 n : ℚ)

end A317314

/-!
# A317315: Multiples of 15 and odd numbers interleaved.

The programs for A317315, the canonical program `A317315.P16996846850452903242` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317315 has offset 0).

The definition of A317315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317315.P16996846850452903242

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=15, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317315

/-- `2*a(n-2)-a(n-4)` -/
def P16996846850452903242.Spec : Prop :=
  ∀ n, P16996846850452903242.a n = A317315 n

theorem P16996846850452903242.correct : P16996846850452903242.Spec := by
  intro n
  simp only [A317315]

end A317315

/-! ## A317315.P4867470069520741069

`a(n-2)/(1-2/n)` with `a(0)=0, a(1)=1, a(2)=15`
-/

namespace A317315.P4867470069520741069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 15] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A317315.P4867470069520741069

namespace A317315

/-- `a(n-2)/(1-2/n)` -/
def P4867470069520741069.Spec : Prop :=
  ∀ n, P4867470069520741069.a n = (A317315 n : ℚ)

end A317315

/-! ## A317315.P14444561717215080587

`13*(n-A026741(n))+n`
-/

namespace A317315.P14444561717215080587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * ((n : ℤ) - A026741 n) + (n : ℤ)

end

end A317315.P14444561717215080587

namespace A317315

/-- `13*(n-A026741(n))+n` -/
def P14444561717215080587.Spec : Prop :=
  ∀ n, P14444561717215080587.a n = A317315 n

end A317315

/-! ## A317315.P23811035499707518

`A317314(n)+A142150(n)`
-/

namespace A317315.P23811035499707518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317314 n + A142150 n

end

end A317315.P23811035499707518

namespace A317315

/-- `A317314(n)+A142150(n)` -/
def P23811035499707518.Spec : Prop :=
  ∀ n, P23811035499707518.a n = A317315 n

end A317315

/-! ## A317315.P5380256252704891547

`A317313(A237420(n))+n`
-/

namespace A317315.P5380256252704891547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317313 (A237420 n).toNat + (n : ℤ)

end

end A317315.P5380256252704891547

namespace A317315

/-- `A317313(A237420(n))+n` -/
def P5380256252704891547.Spec : Prop :=
  ∀ n, P5380256252704891547.a n = A317315 n

end A317315

/-! ## A317315.P9566383688708576394

`A317316(n)-A142150(n)`
-/

namespace A317315.P9566383688708576394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317316 n - A142150 n

end

end A317315.P9566383688708576394

namespace A317315

/-- `A317316(n)-A142150(n)` -/
def P9566383688708576394.Spec : Prop :=
  ∀ n, P9566383688708576394.a n = A317315 n

end A317315

/-! ## A317315.P7832618478641859982

`A317317(n)-A237420(n)`
-/

namespace A317315.P7832618478641859982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317317 n - A237420 n

end

end A317315.P7832618478641859982

namespace A317315

/-- `A317317(n)-A237420(n)` -/
def P7832618478641859982.Spec : Prop :=
  ∀ n, P7832618478641859982.a n = A317315 n

end A317315

/-! ## A317315.P18273800971840346626

`A176040(n)*A195140(n)`
-/

namespace A317315.P18273800971840346626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n * A195140 n

end

end A317315.P18273800971840346626

namespace A317315

/-- `A176040(n)*A195140(n)` -/
def P18273800971840346626.Spec : Prop :=
  ∀ n, P18273800971840346626.a n = A317315 n

end A317315

/-! ## A317315.P2972720918495729854

`lcm(A195140(n), A257143(n))`
-/

namespace A317315.P2972720918495729854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A195140 n) (A257143 n)

end

end A317315.P2972720918495729854

namespace A317315

/-- `lcm(A195140(n), A257143(n))` -/
def P2972720918495729854.Spec : Prop :=
  ∀ n, (P2972720918495729854.a n : ℤ) = A317315 n

end A317315

/-! ## A317315.P18234368192624808065

`A153284(n+1)*A195140(n)`
-/

namespace A317315.P18234368192624808065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (n + 1) * A195140 n

end

end A317315.P18234368192624808065

namespace A317315

/-- `A153284(n+1)*A195140(n)` -/
def P18234368192624808065.Spec : Prop :=
  ∀ n, P18234368192624808065.a n = A317315 n

end A317315

/-! ## A317315.P4751646670520370939

`A317311(n)+2*A237420(n)`
-/

namespace A317315.P4751646670520370939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317311 n + 2 * A237420 n

end

end A317315.P4751646670520370939

namespace A317315

/-- `A317311(n)+2*A237420(n)` -/
def P4751646670520370939.Spec : Prop :=
  ∀ n, P4751646670520370939.a n = A317315 n

end A317315

/-! ## A317315.P1984691443725118081

`2*A195161(n)-A026741(n)`
-/

namespace A317315.P1984691443725118081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195161 n - A026741 n

end

end A317315.P1984691443725118081

namespace A317315

/-- `2*A195161(n)-A026741(n)` -/
def P1984691443725118081.Spec : Prop :=
  ∀ n, P1984691443725118081.a n = A317315 n

end A317315

/-! ## A317315.P1290694347423873902

`(A317326(n)+A022998(n))/2`
-/

namespace A317315.P1290694347423873902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317326 n + A022998 n : ℚ) / 2

end

end A317315.P1290694347423873902

namespace A317315

/-- `(A317326(n)+A022998(n))/2` -/
def P1290694347423873902.Spec : Prop :=
  ∀ n, P1290694347423873902.a n = (A317315 n : ℚ)

end A317315

/-! ## A317315.P18251861954474193532

`2*A195817(n)-A195140(n)`
-/

namespace A317315.P18251861954474193532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195817 n - A195140 n

end

end A317315.P18251861954474193532

namespace A317315

/-- `2*A195817(n)-A195140(n)` -/
def P18251861954474193532.Spec : Prop :=
  ∀ n, P18251861954474193532.a n = A317315 n

end A317315

/-! ## A317315.P17905946655819273370

`A317317(n)-2*A142150(n)`
-/

namespace A317315.P17905946655819273370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317317 n - 2 * A142150 n

end

end A317315.P17905946655819273370

namespace A317315

/-- `A317317(n)-2*A142150(n)` -/
def P17905946655819273370.Spec : Prop :=
  ∀ n, P17905946655819273370.a n = A317315 n

end A317315

/-! ## A317315.P3602416674040539985

`2*A317311(n)-A195159(n)`
-/

namespace A317315.P3602416674040539985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317311 n - A195159 n

end

end A317315.P3602416674040539985

namespace A317315

/-- `2*A317311(n)-A195159(n)` -/
def P3602416674040539985.Spec : Prop :=
  ∀ n, P3602416674040539985.a n = A317315 n

end A317315

/-! ## A317315.P15463409625696161180

`(A317325(n)+A195140(n))/2`
-/

namespace A317315.P15463409625696161180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317325 n + A195140 n : ℚ) / 2

end

end A317315.P15463409625696161180

namespace A317315

/-- `(A317325(n)+A195140(n))/2` -/
def P15463409625696161180.Spec : Prop :=
  ∀ n, P15463409625696161180.a n = (A317315 n : ℚ)

end A317315

/-! ## A317315.P10713372303334825089

`(A317322(n)+A195161(n))/2`
-/

namespace A317315.P10713372303334825089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317322 n + A195161 n : ℚ) / 2

end

end A317315.P10713372303334825089

namespace A317315

/-- `(A317322(n)+A195161(n))/2` -/
def P10713372303334825089.Spec : Prop :=
  ∀ n, P10713372303334825089.a n = (A317315 n : ℚ)

end A317315

/-! ## A317315.P10472227357943686333

`(A317321(n)+A195312(n))/2`
-/

namespace A317315.P10472227357943686333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317321 n + A195312 n : ℚ) / 2

end

end A317315.P10472227357943686333

namespace A317315

/-- `(A317321(n)+A195312(n))/2` -/
def P10472227357943686333.Spec : Prop :=
  ∀ n, P10472227357943686333.a n = (A317315 n : ℚ)

end A317315

/-! ## A317315.P12967569049769906690

`A317314(n)+A237420(n)/2`
-/

namespace A317315.P12967569049769906690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317314 n : ℚ) + (A237420 n : ℚ) / 2

end

end A317315.P12967569049769906690

namespace A317315

/-- `A317314(n)+A237420(n)/2` -/
def P12967569049769906690.Spec : Prop :=
  ∀ n, P12967569049769906690.a n = (A317315 n : ℚ)

end A317315

/-!
# A317316: Multiples of 16 and odd numbers interleaved.

The programs for A317316, the canonical program `A317316.P9152008076450725031` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317316 has offset 0).

The definition of A317316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317316.P9152008076450725031

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=16, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317316

/-- `2*a(n-2)-a(n-4)` -/
def P9152008076450725031.Spec : Prop :=
  ∀ n, P9152008076450725031.a n = A317316 n

theorem P9152008076450725031.correct : P9152008076450725031.Spec := by
  intro n
  simp only [A317316]

end A317316

/-! ## A317316.P6789188125714244707

`n*gcd(2, n)^3`
-/

namespace A317316.P6789188125714244707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n ^ 3

end

end A317316.P6789188125714244707

namespace A317316

/-- `n*gcd(2, n)^3` -/
def P6789188125714244707.Spec : Prop :=
  ∀ n, (P6789188125714244707.a n : ℤ) = A317316 n

end A317316

/-! ## A317316.P4862981559208593335

`n*gcd(8, n%2)`
-/

namespace A317316.P4862981559208593335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 8 (n % 2)

end

end A317316.P4862981559208593335

namespace A317316

/-- `n*gcd(8, n%2)` -/
def P4862981559208593335.Spec : Prop :=
  ∀ n, (P4862981559208593335.a n : ℤ) = A317316 n

end A317316

/-! ## A317316.P3738659976380161515

`gcd(8*n, n²²)`
-/

namespace A317316.P3738659976380161515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (8 * n) ((n ^ 2) ^ 2)

end

end A317316.P3738659976380161515

namespace A317316

/-- `gcd(8*n, n²²)` -/
def P3738659976380161515.Spec : Prop :=
  ∀ n, (P3738659976380161515.a n : ℤ) = A317316 n

end A317316

/-! ## A317316.P3412507540107797802

`n*8^∑[(-1)^n]`
-/

namespace A317316.P3412507540107797802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (8 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A317316.P3412507540107797802

namespace A317316

/-- `n*8^∑[(-1)^n]` -/
def P3412507540107797802.Spec : Prop :=
  ∀ n, P3412507540107797802.a n = (A317316 n : ℚ)

end A317316

/-! ## A317316.P5075094744773669063

`n/8^((1-n)%2)`
-/

namespace A317316.P5075094744773669063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (8 : ℚ) ^ (Int.tmod (1 - (n : ℤ)) 2 : ℤ)

end

end A317316.P5075094744773669063

namespace A317316

/-- `n/8^((1-n)%2)` -/
def P5075094744773669063.Spec : Prop :=
  ∀ n, P5075094744773669063.a n = (A317316 n : ℚ)

end A317316

/-! ## A317316.P7184083577130673402

`n/2^∑[floor(a(n-2))]` with `a(0)=-3, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A317316.P7184083577130673402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-3, 3] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A317316.P7184083577130673402

namespace A317316

/-- `n/2^∑[floor(a(n-2))]` -/
def P7184083577130673402.Spec : Prop :=
  ∀ n, P7184083577130673402.a n = (A317316 n : ℚ)

end A317316

/-! ## A317316.P10320960218018157745

`n/2^(gcd(4, a(n-1))-4)` with `a(0)=0`
-/

namespace A317316.P10320960218018157745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) / (2 : ℚ) ^ ((Int.gcd 4 (SequenceMachineLib.roundAway (a (n - 1))) : ℤ) - 4 : ℤ)

end

end A317316.P10320960218018157745

namespace A317316

/-- `n/2^(gcd(4, a(n-1))-4)` -/
def P10320960218018157745.Spec : Prop :=
  ∀ n, P10320960218018157745.a n = (A317316 n : ℚ)

end A317316

/-! ## A317316.P976209498707743797

`2*A195312(n)-n`
-/

namespace A317316.P976209498707743797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195312 n - (n : ℤ)

end

end A317316.P976209498707743797

namespace A317316

/-- `2*A195312(n)-n` -/
def P976209498707743797.Spec : Prop :=
  ∀ n, P976209498707743797.a n = A317316 n

end A317316

/-! ## A317316.P248961986117553940

`n/2^A115634(n)`
-/

namespace A317316.P248961986117553940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 : ℚ) ^ (A115634 n : ℤ)

end

end A317316.P248961986117553940

namespace A317316

/-- `n/2^A115634(n)` -/
def P248961986117553940.Spec : Prop :=
  ∀ n, P248961986117553940.a n = (A317316 n : ℚ)

end A317316

/-! ## A317316.P1336614946806440037

`A144532(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A317316.P1336614946806440037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A144532 n + a (n - 2)

end

end A317316.P1336614946806440037

namespace A317316

/-- `A144532(n)+a(n-2)` -/
def P1336614946806440037.Spec : Prop :=
  ∀ n, P1336614946806440037.a n = A317316 n

end A317316

/-! ## A317316.P17491325956257358776

`A317315(n)+A142150(n)`
-/

namespace A317316.P17491325956257358776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317315 n + A142150 n

end

end A317316.P17491325956257358776

namespace A317316

/-- `A317315(n)+A142150(n)` -/
def P17491325956257358776.Spec : Prop :=
  ∀ n, P17491325956257358776.a n = A317316 n

end A317316

/-! ## A317316.P514857252156919527

`A317314(A237420(n))+n`
-/

namespace A317316.P514857252156919527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317314 (A237420 n).toNat + (n : ℤ)

end

end A317316.P514857252156919527

namespace A317316

/-- `A317314(A237420(n))+n` -/
def P514857252156919527.Spec : Prop :=
  ∀ n, P514857252156919527.a n = A317316 n

end A317316

/-! ## A317316.P17573798662476491249

`A317317(n)-A142150(n)`
-/

namespace A317316.P17573798662476491249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317317 n - A142150 n

end

end A317316.P17573798662476491249

namespace A317316

/-- `A317317(n)-A142150(n)` -/
def P17573798662476491249.Spec : Prop :=
  ∀ n, P17573798662476491249.a n = A317316 n

end A317316

/-! ## A317316.P10670600669851673596

`A317318(n)-A237420(n)`
-/

namespace A317316.P10670600669851673596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317318 n - A237420 n

end

end A317316.P10670600669851673596

namespace A317316

/-- `A317318(n)-A237420(n)` -/
def P10670600669851673596.Spec : Prop :=
  ∀ n, P10670600669851673596.a n = A317316 n

end A317316

/-! ## A317316.P4375004278661265515

`A008590(n)/A010689(n)`
-/

namespace A317316.P4375004278661265515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008590 n : ℚ) / (A010689 n : ℚ)

end

end A317316.P4375004278661265515

namespace A317316

/-- `A008590(n)/A010689(n)` -/
def P4375004278661265515.Spec : Prop :=
  ∀ n, P4375004278661265515.a n = (A317316 n : ℚ)

end A317316

/-! ## A317316.P9670943215440325123

`A195161(n)+A195312(n)-A026741(n)`
-/

namespace A317316.P9670943215440325123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 n + (A195312 n - A026741 n)

end

end A317316.P9670943215440325123

namespace A317316

/-- `A195161(n)+A195312(n)-A026741(n)` -/
def P9670943215440325123.Spec : Prop :=
  ∀ n, P9670943215440325123.a n = A317316 n

end A317316

/-! ## A317316.P18352066820446457781

`A195161(A022998(n))`
-/

namespace A317316.P18352066820446457781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (A022998 n).toNat

end

end A317316.P18352066820446457781

namespace A317316

/-- `A195161(A022998(n))` -/
def P18352066820446457781.Spec : Prop :=
  ∀ n, P18352066820446457781.a n = A317316 n

end A317316

/-! ## A317316.P2694164389524355904

`A195161(A281098(2*n))`
-/

namespace A317316.P2694164389524355904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (A281098 (2 * n)).toNat

end

end A317316.P2694164389524355904

namespace A317316

/-- `A195161(A281098(2*n))` -/
def P2694164389524355904.Spec : Prop :=
  ∀ n, P2694164389524355904.a n = A317316 n

end A317316

/-! ## A317316.P14203762467932722370

`A195161(A043547(n+2)-2)`
-/

namespace A317316.P14203762467932722370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (A043547 (n + 2) - 2).toNat

end

end A317316.P14203762467932722370

namespace A317316

/-- `A195161(A043547(n+2)-2)` -/
def P14203762467932722370.Spec : Prop :=
  ∀ n, P14203762467932722370.a n = A317316 n

end A317316

/-!
# A317317: Multiples of 17 and odd numbers interleaved.

The programs for A317317, the canonical program `A317317.P12661896457632763052` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317317 has offset 0).

The definition of A317317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317317.P12661896457632763052

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=17, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317317

/-- `2*a(n-2)-a(n-4)` -/
def P12661896457632763052.Spec : Prop :=
  ∀ n, P12661896457632763052.a n = A317317 n

theorem P12661896457632763052.correct : P12661896457632763052.Spec := by
  intro n
  simp only [A317317]

end A317317

/-! ## A317317.P11302992259884590071

`a(n-2)/(1-2/n)` with `a(0)=0, a(1)=1, a(2)=17`
-/

namespace A317317.P11302992259884590071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 17] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A317317.P11302992259884590071

namespace A317317

/-- `a(n-2)/(1-2/n)` -/
def P11302992259884590071.Spec : Prop :=
  ∀ n, P11302992259884590071.a n = (A317317 n : ℚ)

end A317317

/-! ## A317317.P8826991578403468468

`((char[2*n]+1)^4+1)*n/2`
-/

namespace A317317.P8826991578403468468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((if ∃ j, f1 j = n then 1 else 0) + 1) ^ 4 + 1 : ℕ) : ℚ) * ((n : ℚ) / 2)

end

end A317317.P8826991578403468468

namespace A317317

/-- `((char[2*n]+1)^4+1)*n/2` -/
def P8826991578403468468.Spec : Prop :=
  ∀ n, P8826991578403468468.a n = (A317317 n : ℚ)

end A317317

/-! ## A317317.P18037005434729625958

`A317316(n)+A142150(n)`
-/

namespace A317317.P18037005434729625958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317316 n + A142150 n

end

end A317317.P18037005434729625958

namespace A317317

/-- `A317316(n)+A142150(n)` -/
def P18037005434729625958.Spec : Prop :=
  ∀ n, P18037005434729625958.a n = A317317 n

end A317317

/-! ## A317317.P128531139842338229

`A317315(A237420(n))+n`
-/

namespace A317317.P128531139842338229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317315 (A237420 n).toNat + (n : ℤ)

end

end A317317.P128531139842338229

namespace A317317

/-- `A317315(A237420(n))+n` -/
def P128531139842338229.Spec : Prop :=
  ∀ n, P128531139842338229.a n = A317317 n

end A317317

/-! ## A317317.P1189129101471359021

`A317318(n)-A142150(n)`
-/

namespace A317317.P1189129101471359021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317318 n - A142150 n

end

end A317317.P1189129101471359021

namespace A317317

/-- `A317318(n)-A142150(n)` -/
def P1189129101471359021.Spec : Prop :=
  ∀ n, P1189129101471359021.a n = A317317 n

end A317317

/-! ## A317317.P3034358077729761854

`A317319(n)-A237420(n)`
-/

namespace A317317.P3034358077729761854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317319 n - A237420 n

end

end A317317.P3034358077729761854

namespace A317317

/-- `A317319(n)-A237420(n)` -/
def P3034358077729761854.Spec : Prop :=
  ∀ n, P3034358077729761854.a n = A317317 n

end A317317

/-! ## A317317.P13828386657084909575

`A317313(n)+2*A237420(n)`
-/

namespace A317317.P13828386657084909575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317313 n + 2 * A237420 n

end

end A317317.P13828386657084909575

namespace A317317

/-- `A317313(n)+2*A237420(n)` -/
def P13828386657084909575.Spec : Prop :=
  ∀ n, P13828386657084909575.a n = A317317 n

end A317317

/-! ## A317317.P12229605903145875218

`2*A195312(n)-A026741(n)`
-/

namespace A317317.P12229605903145875218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195312 n - A026741 n

end

end A317317.P12229605903145875218

namespace A317317

/-- `2*A195312(n)-A026741(n)` -/
def P12229605903145875218.Spec : Prop :=
  ∀ n, P12229605903145875218.a n = A317317 n

end A317317

/-! ## A317317.P1415158380007107253

`A317319(n)-2*A142150(n)`
-/

namespace A317317.P1415158380007107253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317319 n - 2 * A142150 n

end

end A317317.P1415158380007107253

namespace A317317

/-- `A317319(n)-2*A142150(n)` -/
def P1415158380007107253.Spec : Prop :=
  ∀ n, P1415158380007107253.a n = A317317 n

end A317317

/-! ## A317317.P13696327177442965673

`2*A317311(n)-A195140(n)`
-/

namespace A317317.P13696327177442965673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317311 n - A195140 n

end

end A317317.P13696327177442965673

namespace A317317

/-- `2*A317311(n)-A195140(n)` -/
def P13696327177442965673.Spec : Prop :=
  ∀ n, P13696327177442965673.a n = A317317 n

end A317317

/-! ## A317317.P6355594419682348051

`2*A317312(n)-A195159(n)`
-/

namespace A317317.P6355594419682348051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317312 n - A195159 n

end

end A317317.P6355594419682348051

namespace A317317

/-- `2*A317312(n)-A195159(n)` -/
def P6355594419682348051.Spec : Prop :=
  ∀ n, P6355594419682348051.a n = A317317 n

end A317317

/-! ## A317317.P14267024993320717845

`(A317325(n)+A195312(n))/2`
-/

namespace A317317.P14267024993320717845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317325 n + A195312 n : ℚ) / 2

end

end A317317.P14267024993320717845

namespace A317317

/-- `(A317325(n)+A195312(n))/2` -/
def P14267024993320717845.Spec : Prop :=
  ∀ n, P14267024993320717845.a n = (A317317 n : ℚ)

end A317317

/-! ## A317317.P6486463881542697592

`(A317324(n)+A195817(n))/2`
-/

namespace A317317.P6486463881542697592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317324 n + A195817 n : ℚ) / 2

end

end A317317.P6486463881542697592

namespace A317317

/-- `(A317324(n)+A195817(n))/2` -/
def P6486463881542697592.Spec : Prop :=
  ∀ n, P6486463881542697592.a n = (A317317 n : ℚ)

end A317317

/-! ## A317317.P2096693349881129277

`A317316(n)+A237420(n)/2`
-/

namespace A317317.P2096693349881129277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317316 n : ℚ) + (A237420 n : ℚ) / 2

end

end A317317.P2096693349881129277

namespace A317317

/-- `A317316(n)+A237420(n)/2` -/
def P2096693349881129277.Spec : Prop :=
  ∀ n, P2096693349881129277.a n = (A317317 n : ℚ)

end A317317

/-! ## A317317.P14033029624313199512

`A317321(n)-2*A237420(n)`
-/

namespace A317317.P14033029624313199512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317321 n - 2 * A237420 n

end

end A317317.P14033029624313199512

namespace A317317

/-- `A317321(n)-2*A237420(n)` -/
def P14033029624313199512.Spec : Prop :=
  ∀ n, P14033029624313199512.a n = A317317 n

end A317317

/-! ## A317317.P3476950282897340780

`2*A317314(n)-A317311(n)`
-/

namespace A317317.P3476950282897340780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317314 n - A317311 n

end

end A317317.P3476950282897340780

namespace A317317

/-- `2*A317314(n)-A317311(n)` -/
def P3476950282897340780.Spec : Prop :=
  ∀ n, P3476950282897340780.a n = A317317 n

end A317317

/-! ## A317317.P9272255874588004972

`2*A317316(n)-A317315(n)`
-/

namespace A317317.P9272255874588004972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317316 n - A317315 n

end

end A317317.P9272255874588004972

namespace A317317

/-- `2*A317316(n)-A317315(n)` -/
def P9272255874588004972.Spec : Prop :=
  ∀ n, P9272255874588004972.a n = A317317 n

end A317317

/-! ## A317317.P6305602034934176053

`2*A317318(n)-A317319(n)`
-/

namespace A317317.P6305602034934176053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317318 n - A317319 n

end

end A317317.P6305602034934176053

namespace A317317

/-- `2*A317318(n)-A317319(n)` -/
def P6305602034934176053.Spec : Prop :=
  ∀ n, P6305602034934176053.a n = A317317 n

end A317317

/-! ## A317317.P9692310436037573423

`A317318(n)-A237420(n)/2`
-/

namespace A317317.P9692310436037573423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317318 n : ℚ) - (A237420 n : ℚ) / 2

end

end A317317.P9692310436037573423

namespace A317317

/-- `A317318(n)-A237420(n)/2` -/
def P9692310436037573423.Spec : Prop :=
  ∀ n, P9692310436037573423.a n = (A317317 n : ℚ)

end A317317

/-!
# A317318: Multiples of 18 and odd numbers interleaved.

The programs for A317318, the canonical program `A317318.P4119249595905022289` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317318 has offset 0).

The definition of A317318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317318.P4119249595905022289

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=18, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317318

/-- `2*a(n-2)-a(n-4)` -/
def P4119249595905022289.Spec : Prop :=
  ∀ n, P4119249595905022289.a n = A317318 n

theorem P4119249595905022289.correct : P4119249595905022289.Spec := by
  intro n
  simp only [A317318]

end A317318

/-! ## A317318.P11567149630828124398

`n*gcd(9, n%2)`
-/

namespace A317318.P11567149630828124398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 9 (n % 2)

end

end A317318.P11567149630828124398

namespace A317318

/-- `n*gcd(9, n%2)` -/
def P11567149630828124398.Spec : Prop :=
  ∀ n, (P11567149630828124398.a n : ℤ) = A317318 n

end A317318

/-! ## A317318.P16729369326934311937

`n*or(1, gcd(2, n))²`
-/

namespace A317318.P16729369326934311937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 (Nat.gcd 2 n) ^ 2

end

end A317318.P16729369326934311937

namespace A317318

/-- `n*or(1, gcd(2, n))²` -/
def P16729369326934311937.Spec : Prop :=
  ∀ n, (P16729369326934311937.a n : ℤ) = A317318 n

end A317318

/-! ## A317318.P9398937932892797619

`n*gcd(3, and(1, n))²`
-/

namespace A317318.P9398937932892797619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 3 (Nat.land 1 n) ^ 2

end

end A317318.P9398937932892797619

namespace A317318

/-- `n*gcd(3, and(1, n))²` -/
def P9398937932892797619.Spec : Prop :=
  ∀ n, (P9398937932892797619.a n : ℤ) = A317318 n

end A317318

/-! ## A317318.P15780667504124989714

`n*Δ[xor(1, -n)]²`
-/

namespace A317318.P15780667504124989714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) ^ 2

end

end A317318.P15780667504124989714

namespace A317318

/-- `n*Δ[xor(1, -n)]²` -/
def P15780667504124989714.Spec : Prop :=
  ∀ n, P15780667504124989714.a n = A317318 n

end A317318

/-! ## A317318.P17730099106747941801

`n*((-1)^n+2)²`
-/

namespace A317318.P17730099106747941801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((-1) ^ n + 2) ^ 2

end

end A317318.P17730099106747941801

namespace A317318

/-- `n*((-1)^n+2)²` -/
def P17730099106747941801.Spec : Prop :=
  ∀ n, P17730099106747941801.a n = A317318 n

theorem P17730099106747941801.correct : P17730099106747941801.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A317318, Nat.add_sub_cancel, A317318.P17730099106747941801.a, A317318.P4119249595905022289.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A317318, Nat.add_sub_cancel, A317318.P17730099106747941801.a, A317318.P4119249595905022289.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A317318

/-! ## A317318.P14204251235036744169

`n/(3^((1-n)%2))²`
-/

namespace A317318.P14204251235036744169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((3 : ℚ) ^ (Int.tmod (1 - (n : ℤ)) 2 : ℤ)) ^ 2

end

end A317318.P14204251235036744169

namespace A317318

/-- `n/(3^((1-n)%2))²` -/
def P14204251235036744169.Spec : Prop :=
  ∀ n, P14204251235036744169.a n = (A317318 n : ℚ)

end A317318

/-! ## A317318.P7758863935529364299

`n/(and(3, 2*n+1)/3)²`
-/

namespace A317318.P7758863935529364299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((Nat.land 3 (2 * n + 1) : ℚ) / 3) ^ 2

end

end A317318.P7758863935529364299

namespace A317318

/-- `n/(and(3, 2*n+1)/3)²` -/
def P7758863935529364299.Spec : Prop :=
  ∀ n, P7758863935529364299.a n = (A317318 n : ℚ)

end A317318

/-! ## A317318.P9395711242582657946

`n/3^∑[floor(a(n-2))]` with `a(0)=-2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A317318.P9395711242582657946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A317318.P9395711242582657946

namespace A317318

/-- `n/3^∑[floor(a(n-2))]` -/
def P9395711242582657946.Spec : Prop :=
  ∀ n, P9395711242582657946.a n = (A317318 n : ℚ)

end A317318

/-! ## A317318.P13928939711154347793

`n/3^((-1)^a(n-1)-1)` with `a(0)=0`
-/

namespace A317318.P13928939711154347793
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℝ) / (3 : ℝ) ^ ((-1 : ℝ) ^ (a (n - 1)) - 1)

end

end A317318.P13928939711154347793

namespace A317318

/-- `n/3^((-1)^a(n-1)-1)` -/
def P13928939711154347793.Spec : Prop :=
  ∀ n, P13928939711154347793.a n = (A317318 n : ℝ)

end A317318

/-! ## A317318.P6734190806744043147

`floor(n*(2-(-1)^a(n-1))²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A317318.P6734190806744043147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) * (2 - (-1 : ℚ) ^ (a (n - 1) : ℤ)) ^ 2⌋

end

end A317318.P6734190806744043147

namespace A317318

/-- `floor(n*(2-(-1)^a(n-1))²)` -/
def P6734190806744043147.Spec : Prop :=
  ∀ n, P6734190806744043147.a n = A317318 n

end A317318

/-! ## A317318.P8374206662514096995

`floor(n*3^∑[floor(a(n-2))])` with `a(0)=2, a(1)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A317318.P8374206662514096995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A317318.P8374206662514096995

namespace A317318

/-- `floor(n*3^∑[floor(a(n-2))])` -/
def P8374206662514096995.Spec : Prop :=
  ∀ n, P8374206662514096995.a n = A317318 n

end A317318

/-! ## A317318.P13921132332447644478

`lcm(n, A195312(n))`
-/

namespace A317318.P13921132332447644478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A195312 n)

end

end A317318.P13921132332447644478

namespace A317318

/-- `lcm(n, A195312(n))` -/
def P13921132332447644478.Spec : Prop :=
  ∀ n, (P13921132332447644478.a n : ℤ) = A317318 n

end A317318

/-! ## A317318.P12999013793280272908

`2*A195817(n)-n`
-/

namespace A317318.P12999013793280272908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195817 n - (n : ℤ)

end

end A317318.P12999013793280272908

namespace A317318

/-- `2*A195817(n)-n` -/
def P12999013793280272908.Spec : Prop :=
  ∀ n, P12999013793280272908.a n = A317318 n

end A317318

/-! ## A317318.P5329474593433373506

`n*A040024(n)-n`
-/

namespace A317318.P5329474593433373506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040024 n - (n : ℤ)

end

end A317318.P5329474593433373506

namespace A317318

/-- `n*A040024(n)-n` -/
def P5329474593433373506.Spec : Prop :=
  ∀ n, P5329474593433373506.a n = A317318 n

end A317318

/-! ## A317318.P3569449345881027678

`A317317(n)+A142150(n)`
-/

namespace A317318.P3569449345881027678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317317 n + A142150 n

end

end A317318.P3569449345881027678

namespace A317318

/-- `A317317(n)+A142150(n)` -/
def P3569449345881027678.Spec : Prop :=
  ∀ n, P3569449345881027678.a n = A317318 n

end A317318

/-! ## A317318.P10466770554962474979

`A317316(A237420(n))+n`
-/

namespace A317318.P10466770554962474979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317316 (A237420 n).toNat + (n : ℤ)

end

end A317318.P10466770554962474979

namespace A317318

/-- `A317316(A237420(n))+n` -/
def P10466770554962474979.Spec : Prop :=
  ∀ n, P10466770554962474979.a n = A317318 n

end A317318

/-! ## A317318.P13425963659946532457

`A317319(n)-A142150(n)`
-/

namespace A317318.P13425963659946532457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317319 n - A142150 n

end

end A317318.P13425963659946532457

namespace A317318

/-- `A317319(n)-A142150(n)` -/
def P13425963659946532457.Spec : Prop :=
  ∀ n, P13425963659946532457.a n = A317318 n

end A317318

/-! ## A317318.P14529111738946598070

`A317320(n)-A237420(n)`
-/

namespace A317318.P14529111738946598070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317320 n - A237420 n

end

end A317318.P14529111738946598070

namespace A317318

/-- `A317320(n)-A237420(n)` -/
def P14529111738946598070.Spec : Prop :=
  ∀ n, P14529111738946598070.a n = A317318 n

end A317318

/-! ## A317318.P4549415908237061550

`A276916(n)-A383464(n)`
-/

namespace A317318.P4549415908237061550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276916 n - A383464 n

end

end A317318.P4549415908237061550

namespace A317318

/-- `A276916(n)-A383464(n)` -/
def P4549415908237061550.Spec : Prop :=
  ∀ n, P4549415908237061550.a n = A317318 n

end A317318

/-!
# A317319: Multiples of 19 and odd numbers interleaved.

The programs for A317319, the canonical program `A317319.P8527410939588968157` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317319 has offset 0).

The definition of A317319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317319.P8527410939588968157

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=19, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317319

/-- `2*a(n-2)-a(n-4)` -/
def P8527410939588968157.Spec : Prop :=
  ∀ n, P8527410939588968157.a n = A317319 n

theorem P8527410939588968157.correct : P8527410939588968157.Spec := by
  intro n
  simp only [A317319]

end A317319

/-! ## A317319.P17623533373329490474

`a(n-2)/(1-2/n)` with `a(0)=0, a(1)=1, a(2)=19`
-/

namespace A317319.P17623533373329490474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 19] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A317319.P17623533373329490474

namespace A317319

/-- `a(n-2)/(1-2/n)` -/
def P17623533373329490474.Spec : Prop :=
  ∀ n, P17623533373329490474.a n = (A317319 n : ℚ)

end A317319

/-! ## A317319.P2830117628340689235

`2*A195817(n)-gcd(n, ∑[n])`
-/

namespace A317319.P2830117628340689235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195817 n - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A317319.P2830117628340689235

namespace A317319

/-- `2*A195817(n)-gcd(n, ∑[n])` -/
def P2830117628340689235.Spec : Prop :=
  ∀ n, P2830117628340689235.a n = A317319 n

end A317319

/-! ## A317319.P17990936275899412047

`A008599(A142150(n))+n`
-/

namespace A317319.P17990936275899412047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 (A142150 n).toNat + (n : ℤ)

end

end A317319.P17990936275899412047

namespace A317319

/-- `A008599(A142150(n))+n` -/
def P17990936275899412047.Spec : Prop :=
  ∀ n, P17990936275899412047.a n = A317319 n

end A317319

/-! ## A317319.P17757623845420021024

`A317318(n)+A142150(n)`
-/

namespace A317319.P17757623845420021024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317318 n + A142150 n

end

end A317319.P17757623845420021024

namespace A317319

/-- `A317318(n)+A142150(n)` -/
def P17757623845420021024.Spec : Prop :=
  ∀ n, P17757623845420021024.a n = A317319 n

end A317319

/-! ## A317319.P3092202605209133717

`A317317(A237420(n))+n`
-/

namespace A317319.P3092202605209133717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317317 (A237420 n).toNat + (n : ℤ)

end

end A317319.P3092202605209133717

namespace A317319

/-- `A317317(A237420(n))+n` -/
def P3092202605209133717.Spec : Prop :=
  ∀ n, P3092202605209133717.a n = A317319 n

end A317319

/-! ## A317319.P6935987908383412466

`A317320(n)-A142150(n)`
-/

namespace A317319.P6935987908383412466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317320 n - A142150 n

end

end A317319.P6935987908383412466

namespace A317319

/-- `A317320(n)-A142150(n)` -/
def P6935987908383412466.Spec : Prop :=
  ∀ n, P6935987908383412466.a n = A317319 n

end A317319

/-! ## A317319.P8862241294305986840

`A317321(n)-A237420(n)`
-/

namespace A317319.P8862241294305986840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317321 n - A237420 n

end

end A317319.P8862241294305986840

namespace A317319

/-- `A317321(n)-A237420(n)` -/
def P8862241294305986840.Spec : Prop :=
  ∀ n, P8862241294305986840.a n = A317319 n

end A317319

/-! ## A317319.P10373999596196016562

`A317315(n)+2*A237420(n)`
-/

namespace A317319.P10373999596196016562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317315 n + 2 * A237420 n

end

end A317319.P10373999596196016562

namespace A317319

/-- `A317315(n)+2*A237420(n)` -/
def P10373999596196016562.Spec : Prop :=
  ∀ n, P10373999596196016562.a n = A317319 n

end A317319

/-! ## A317319.P4520222770071153364

`2*A195817(n)-A026741(n)`
-/

namespace A317319.P4520222770071153364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195817 n - A026741 n

end

end A317319.P4520222770071153364

namespace A317319

/-- `2*A195817(n)-A026741(n)` -/
def P4520222770071153364.Spec : Prop :=
  ∀ n, P4520222770071153364.a n = A317319 n

end A317319

/-! ## A317319.P8647610745369185448

`A317321(n)-2*A142150(n)`
-/

namespace A317319.P8647610745369185448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317321 n - 2 * A142150 n

end

end A317319.P8647610745369185448

namespace A317319

/-- `A317321(n)-2*A142150(n)` -/
def P8647610745369185448.Spec : Prop :=
  ∀ n, P8647610745369185448.a n = A317319 n

end A317319

/-! ## A317319.P2745354012742799364

`2*A317312(n)-A195140(n)`
-/

namespace A317319.P2745354012742799364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317312 n - A195140 n

end

end A317319.P2745354012742799364

namespace A317319

/-- `2*A317312(n)-A195140(n)` -/
def P2745354012742799364.Spec : Prop :=
  ∀ n, P2745354012742799364.a n = A317319 n

end A317319

/-! ## A317319.P13595490859599758709

`A317318(n)+A237420(n)/2`
-/

namespace A317319.P13595490859599758709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317318 n : ℚ) + (A237420 n : ℚ) / 2

end

end A317319.P13595490859599758709

namespace A317319

/-- `A317318(n)+A237420(n)/2` -/
def P13595490859599758709.Spec : Prop :=
  ∀ n, P13595490859599758709.a n = (A317319 n : ℚ)

end A317319

/-! ## A317319.P12800695349485671174

`A317323(n)-2*A237420(n)`
-/

namespace A317319.P12800695349485671174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317323 n - 2 * A237420 n

end

end A317319.P12800695349485671174

namespace A317319

/-- `A317323(n)-2*A237420(n)` -/
def P12800695349485671174.Spec : Prop :=
  ∀ n, P12800695349485671174.a n = A317319 n

end A317319

/-! ## A317319.P2933126020545713078

`A317320(n)-A237420(n)/2`
-/

namespace A317319.P2933126020545713078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317320 n : ℚ) - (A237420 n : ℚ) / 2

end

end A317319.P2933126020545713078

namespace A317319

/-- `A317320(n)-A237420(n)/2` -/
def P2933126020545713078.Spec : Prop :=
  ∀ n, P2933126020545713078.a n = (A317319 n : ℚ)

end A317319

/-! ## A317319.P14148157419245614342

`A317317(A022998(n)-n)+n`
-/

namespace A317319.P14148157419245614342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317317 (A022998 n - (n : ℤ)).toNat + (n : ℤ)

end

end A317319.P14148157419245614342

namespace A317319

/-- `A317317(A022998(n)-n)+n` -/
def P14148157419245614342.Spec : Prop :=
  ∀ n, P14148157419245614342.a n = A317319 n

end A317319

/-! ## A317319.P15909157455854504998

`A317321(n)+n-A022998(n)`
-/

namespace A317319.P15909157455854504998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317321 n + ((n : ℤ) - A022998 n)

end

end A317319.P15909157455854504998

namespace A317319

/-- `A317321(n)+n-A022998(n)` -/
def P15909157455854504998.Spec : Prop :=
  ∀ n, P15909157455854504998.a n = A317319 n

end A317319

/-! ## A317319.P18132716796271398723

`A026741(n)+A317320(n)-n`
-/

namespace A317319.P18132716796271398723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + (A317320 n - (n : ℤ))

end

end A317319.P18132716796271398723

namespace A317319

/-- `A026741(n)+A317320(n)-n` -/
def P18132716796271398723.Spec : Prop :=
  ∀ n, P18132716796271398723.a n = A317319 n

end A317319

/-! ## A317319.P5513813317379239089

`A317318(n)+n-A026741(n)`
-/

namespace A317319.P5513813317379239089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317318 n + ((n : ℤ) - A026741 n)

end

end A317319.P5513813317379239089

namespace A317319

/-- `A317318(n)+n-A026741(n)` -/
def P5513813317379239089.Spec : Prop :=
  ∀ n, P5513813317379239089.a n = A317319 n

end A317319

/-! ## A317319.P8909797773483579805

`A195140(n)+A317316(n)-n`
-/

namespace A317319.P8909797773483579805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n + (A317316 n - (n : ℤ))

end

end A317319.P8909797773483579805

namespace A317319

/-- `A195140(n)+A317316(n)-n` -/
def P8909797773483579805.Spec : Prop :=
  ∀ n, P8909797773483579805.a n = A317319 n

end A317319

/-!
# A317320: Multiples of 20 and odd numbers interleaved.

The programs for A317320, the canonical program `A317320.P2422371653751942767` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317320 has offset 0).

The definition of A317320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317320.P2422371653751942767

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=20, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317320

/-- `2*a(n-2)-a(n-4)` -/
def P2422371653751942767.Spec : Prop :=
  ∀ n, P2422371653751942767.a n = A317320 n

theorem P2422371653751942767.correct : P2422371653751942767.Spec := by
  intro n
  simp only [A317320]

end A317320

/-! ## A317320.P14324853007732920887

`n*gcd(10, n%2)`
-/

namespace A317320.P14324853007732920887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 10 (n % 2)

end

end A317320.P14324853007732920887

namespace A317320

/-- `n*gcd(10, n%2)` -/
def P14324853007732920887.Spec : Prop :=
  ∀ n, (P14324853007732920887.a n : ℤ) = A317320 n

end A317320

/-! ## A317320.P9859987075820092726

`n*10^∑[(-1)^n]`
-/

namespace A317320.P9859987075820092726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (10 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A317320.P9859987075820092726

namespace A317320

/-- `n*10^∑[(-1)^n]` -/
def P9859987075820092726.Spec : Prop :=
  ∀ n, P9859987075820092726.a n = (A317320 n : ℚ)

end A317320

/-! ## A317320.P10341667057622343753

`n*∑[2-a(n-1)]-n²` with `a(0)=10`
-/

namespace A317320.P10341667057622343753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n ^ 2 : ℤ)

end

end A317320.P10341667057622343753

namespace A317320

/-- `n*∑[2-a(n-1)]-n²` -/
def P10341667057622343753.Spec : Prop :=
  ∀ n, P10341667057622343753.a n = A317320 n

end A317320

/-! ## A317320.P341951041597605085

`2*A317311(n)-n`
-/

namespace A317320.P341951041597605085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317311 n - (n : ℤ)

end

end A317320.P341951041597605085

namespace A317320

/-- `2*A317311(n)-n` -/
def P341951041597605085.Spec : Prop :=
  ∀ n, P341951041597605085.a n = A317320 n

end A317320

/-! ## A317320.P10191619135030944347

`lcm(n, gcd(and(1, n), A008592(n)))`
-/

namespace A317320.P10191619135030944347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Int.gcd (Nat.land 1 n : ℤ) (A008592 n))

end

end A317320.P10191619135030944347

namespace A317320

/-- `lcm(n, gcd(and(1, n), A008592(n)))` -/
def P10191619135030944347.Spec : Prop :=
  ∀ n, (P10191619135030944347.a n : ℤ) = A317320 n

end A317320

/-! ## A317320.P17927890308410832512

`10*n/A008000(Δ[or(1, n)])`
-/

namespace A317320.P17927890308410832512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * n : ℚ) / (A008000 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A317320.P17927890308410832512

namespace A317320

/-- `10*n/A008000(Δ[or(1, n)])` -/
def P17927890308410832512.Spec : Prop :=
  ∀ n, P17927890308410832512.a n = (A317320 n : ℚ)

end A317320

/-! ## A317320.P13413800861950569058

`floor(n/5^((1-n)%2)*A040001(n))`
-/

namespace A317320.P13413800861950569058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (5 : ℚ) ^ (Int.tmod (1 - (n : ℤ)) 2 : ℤ) * (A040001 n : ℚ)⌋

end

end A317320.P13413800861950569058

namespace A317320

/-- `floor(n/5^((1-n)%2)*A040001(n))` -/
def P13413800861950569058.Spec : Prop :=
  ∀ n, P13413800861950569058.a n = A317320 n

end A317320

/-! ## A317320.P8544761971916916384

`A317319(n)+A142150(n)`
-/

namespace A317320.P8544761971916916384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317319 n + A142150 n

end

end A317320.P8544761971916916384

namespace A317320

/-- `A317319(n)+A142150(n)` -/
def P8544761971916916384.Spec : Prop :=
  ∀ n, P8544761971916916384.a n = A317320 n

end A317320

/-! ## A317320.P17571830231669021581

`A317318(A237420(n))+n`
-/

namespace A317320.P17571830231669021581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317318 (A237420 n).toNat + (n : ℤ)

end

end A317320.P17571830231669021581

namespace A317320

/-- `A317318(A237420(n))+n` -/
def P17571830231669021581.Spec : Prop :=
  ∀ n, P17571830231669021581.a n = A317320 n

end A317320

/-! ## A317320.P11871596748891327418

`A317321(n)-A142150(n)`
-/

namespace A317320.P11871596748891327418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317321 n - A142150 n

end

end A317320.P11871596748891327418

namespace A317320

/-- `A317321(n)-A142150(n)` -/
def P11871596748891327418.Spec : Prop :=
  ∀ n, P11871596748891327418.a n = A317320 n

end A317320

/-! ## A317320.P261001299996148883

`A317322(n)-A237420(n)`
-/

namespace A317320.P261001299996148883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317322 n - A237420 n

end

end A317320.P261001299996148883

namespace A317320

/-- `A317322(n)-A237420(n)` -/
def P261001299996148883.Spec : Prop :=
  ∀ n, P261001299996148883.a n = A317320 n

end A317320

/-! ## A317320.P14310382651079917157

`A008592(n)/A010691(n)`
-/

namespace A317320.P14310382651079917157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n : ℚ) / (A010691 n : ℚ)

end

end A317320.P14310382651079917157

namespace A317320

/-- `A008592(n)/A010691(n)` -/
def P14310382651079917157.Spec : Prop :=
  ∀ n, P14310382651079917157.a n = (A317320 n : ℚ)

end A317320

/-! ## A317320.P995714933265836896

`A086605(n)%A298038(n)`
-/

namespace A317320.P995714933265836896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086605 n) (A298038 n)

end

end A317320.P995714933265836896

namespace A317320

/-- `A086605(n)%A298038(n)` -/
def P995714933265836896.Spec : Prop :=
  ∀ n, P995714933265836896.a n = A317320 n

end A317320

/-! ## A317320.P13515543265186659283

`gcd(A008592(n), A127906(n))`
-/

namespace A317320.P13515543265186659283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008592 n) (A127906 n)

end

end A317320.P13515543265186659283

namespace A317320

/-- `gcd(A008592(n), A127906(n))` -/
def P13515543265186659283.Spec : Prop :=
  ∀ n, (P13515543265186659283.a n : ℤ) = A317320 n

end A317320

/-! ## A317320.P12483323870569827585

`lcm(A022998(n), A195140(n))`
-/

namespace A317320.P12483323870569827585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A022998 n) (A195140 n)

end

end A317320.P12483323870569827585

namespace A317320

/-- `lcm(A022998(n), A195140(n))` -/
def P12483323870569827585.Spec : Prop :=
  ∀ n, (P12483323870569827585.a n : ℤ) = A317320 n

end A317320

/-! ## A317320.P7285064592057555999

`lcm(A195817(n), A257088(n))`
-/

namespace A317320.P7285064592057555999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A195817 n) (A257088 n)

end

end A317320.P7285064592057555999

namespace A317320

/-- `lcm(A195817(n), A257088(n))` -/
def P7285064592057555999.Spec : Prop :=
  ∀ n, (P7285064592057555999.a n : ℤ) = A317320 n

end A317320

/-! ## A317320.P16765810972516791033

`A026741(n)+A317317(n)-A181983(n)`
-/

namespace A317320.P16765810972516791033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + (A317317 n - A181983 n)

end

end A317320.P16765810972516791033

namespace A317320

/-- `A026741(n)+A317317(n)-A181983(n)` -/
def P16765810972516791033.Spec : Prop :=
  ∀ n, P16765810972516791033.a n = A317320 n

end A317320

/-! ## A317320.P6317504051728805488

`A195312(n)+A317315(n)-A022998(n)`
-/

namespace A317320.P6317504051728805488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195312 n + (A317315 n - A022998 n)

end

end A317320.P6317504051728805488

namespace A317320

/-- `A195312(n)+A317315(n)-A022998(n)` -/
def P6317504051728805488.Spec : Prop :=
  ∀ n, P6317504051728805488.a n = A317320 n

end A317320

/-! ## A317320.P11892064519281798798

`A317312(n)+A317312(n)-A022998(n)`
-/

namespace A317320.P11892064519281798798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317312 n + (A317312 n - A022998 n)

end

end A317320.P11892064519281798798

namespace A317320

/-- `A317312(n)+A317312(n)-A022998(n)` -/
def P11892064519281798798.Spec : Prop :=
  ∀ n, P11892064519281798798.a n = A317320 n

end A317320

/-!
# A317321: Multiples of 21 and odd numbers interleaved.

The programs for A317321, the canonical program `A317321.P4760436045191473003` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317321 has offset 0).

The definition of A317321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317321.P1220798186800227045

`n*(6-5/gcd(2, n))*gcd(3, n%2)`
-/

namespace A317321.P1220798186800227045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (6 - 5 / (Nat.gcd 2 n : ℚ)) * (Nat.gcd 3 (n % 2) : ℚ)

end

end A317321.P1220798186800227045

namespace A317321

/-- `n*(6-5/gcd(2, n))*gcd(3, n%2)` -/
def P1220798186800227045.Spec : Prop :=
  ∀ n, P1220798186800227045.a n = (A317321 n : ℚ)

end A317321

/-! ## A317321.P14852669649399986362

`abs(2*n-abs(27*n*char[2*n]/2-n))`
-/

namespace A317321.P14852669649399986362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((2 * n : ℚ) - |(27 * n : ℚ) * (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 2) - (n : ℚ)|)|

end

end A317321.P14852669649399986362

namespace A317321

/-- `abs(2*n-abs(27*n*char[2*n]/2-n))` -/
def P14852669649399986362.Spec : Prop :=
  ∀ n, P14852669649399986362.a n = (A317321 n : ℚ)

end A317321

/-! ## A317321.P4760436045191473003

`23*(n-1)-2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317321

/-- `23*(n-1)-2*a(n-1)-a(n-2)` -/
def P4760436045191473003.Spec : Prop :=
  ∀ n, P4760436045191473003.a n = A317321 n

theorem P4760436045191473003.correct : P4760436045191473003.Spec := by
  intro n
  simp only [A317321]

end A317321

/-! ## A317321.P15810551575874048391

`n*(A040399(n)/2+1)/2`
-/

namespace A317321.P15810551575874048391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((A040399 n : ℚ) / 2 + 1) / 2)

end

end A317321.P15810551575874048391

namespace A317321

/-- `n*(A040399(n)/2+1)/2` -/
def P15810551575874048391.Spec : Prop :=
  ∀ n, P15810551575874048391.a n = (A317321 n : ℚ)

end A317321

/-! ## A317321.P14775460118061431795

`A317320(n)+A142150(n)`
-/

namespace A317321.P14775460118061431795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317320 n + A142150 n

end

end A317321.P14775460118061431795

namespace A317321

/-- `A317320(n)+A142150(n)` -/
def P14775460118061431795.Spec : Prop :=
  ∀ n, P14775460118061431795.a n = A317321 n

end A317321

/-! ## A317321.P5923901322740422789

`A317319(A237420(n))+n`
-/

namespace A317321.P5923901322740422789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317319 (A237420 n).toNat + (n : ℤ)

end

end A317321.P5923901322740422789

namespace A317321

/-- `A317319(A237420(n))+n` -/
def P5923901322740422789.Spec : Prop :=
  ∀ n, P5923901322740422789.a n = A317321 n

end A317321

/-! ## A317321.P5811375826480662982

`A317322(n)-A142150(n)`
-/

namespace A317321.P5811375826480662982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317322 n - A142150 n

end

end A317321.P5811375826480662982

namespace A317321

/-- `A317322(n)-A142150(n)` -/
def P5811375826480662982.Spec : Prop :=
  ∀ n, P5811375826480662982.a n = A317321 n

end A317321

/-! ## A317321.P15224997284183256570

`A317323(n)-A237420(n)`
-/

namespace A317321.P15224997284183256570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317323 n - A237420 n

end

end A317321.P15224997284183256570

namespace A317321

/-- `A317323(n)-A237420(n)` -/
def P15224997284183256570.Spec : Prop :=
  ∀ n, P15224997284183256570.a n = A317321 n

end A317321

/-! ## A317321.P2152078385757425379

`A176040(n)*A195159(n)`
-/

namespace A317321.P2152078385757425379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n * A195159 n

end

end A317321.P2152078385757425379

namespace A317321

/-- `A176040(n)*A195159(n)` -/
def P2152078385757425379.Spec : Prop :=
  ∀ n, P2152078385757425379.a n = A317321 n

end A317321

/-! ## A317321.P17185930127210023490

`lcm(A195159(n), A257143(n))`
-/

namespace A317321.P17185930127210023490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A195159 n) (A257143 n)

end

end A317321.P17185930127210023490

namespace A317321

/-- `lcm(A195159(n), A257143(n))` -/
def P17185930127210023490.Spec : Prop :=
  ∀ n, (P17185930127210023490.a n : ℤ) = A317321 n

end A317321

/-! ## A317321.P3746920987747224429

`A153284(n+1)*A195159(n)`
-/

namespace A317321.P3746920987747224429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (n + 1) * A195159 n

end

end A317321.P3746920987747224429

namespace A317321

/-- `A153284(n+1)*A195159(n)` -/
def P3746920987747224429.Spec : Prop :=
  ∀ n, P3746920987747224429.a n = A317321 n

end A317321

/-! ## A317321.P9852516237101415973

`A317317(n)+2*A237420(n)`
-/

namespace A317321.P9852516237101415973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317317 n + 2 * A237420 n

end

end A317321.P9852516237101415973

namespace A317321

/-- `A317317(n)+2*A237420(n)` -/
def P9852516237101415973.Spec : Prop :=
  ∀ n, P9852516237101415973.a n = A317321 n

end A317321

/-! ## A317321.P7532257146065419872

`2*A317311(n)-A026741(n)`
-/

namespace A317321.P7532257146065419872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317311 n - A026741 n

end

end A317321.P7532257146065419872

namespace A317321

/-- `2*A317311(n)-A026741(n)` -/
def P7532257146065419872.Spec : Prop :=
  ∀ n, P7532257146065419872.a n = A317321 n

end A317321

/-! ## A317321.P5306327857364990027

`A317323(n)-2*A142150(n)`
-/

namespace A317321.P5306327857364990027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317323 n - 2 * A142150 n

end

end A317321.P5306327857364990027

namespace A317321

/-- `A317323(n)-2*A142150(n)` -/
def P5306327857364990027.Spec : Prop :=
  ∀ n, P5306327857364990027.a n = A317321 n

end A317321

/-! ## A317321.P4406675067154065273

`2*A317313(n)-A195140(n)`
-/

namespace A317321.P4406675067154065273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317313 n - A195140 n

end

end A317321.P4406675067154065273

namespace A317321

/-- `2*A317313(n)-A195140(n)` -/
def P4406675067154065273.Spec : Prop :=
  ∀ n, P4406675067154065273.a n = A317321 n

end A317321

/-! ## A317321.P13194791654273446470

`2*A317314(n)-A195159(n)`
-/

namespace A317321.P13194791654273446470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317314 n - A195159 n

end

end A317321.P13194791654273446470

namespace A317321

/-- `2*A317314(n)-A195159(n)` -/
def P13194791654273446470.Spec : Prop :=
  ∀ n, P13194791654273446470.a n = A317321 n

end A317321

/-! ## A317321.P16381322914828394495

`2*A317315(n)-A195312(n)`
-/

namespace A317321.P16381322914828394495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317315 n - A195312 n

end

end A317321.P16381322914828394495

namespace A317321

/-- `2*A317315(n)-A195312(n)` -/
def P16381322914828394495.Spec : Prop :=
  ∀ n, P16381322914828394495.a n = A317321 n

end A317321

/-! ## A317321.P18000284683146072422

`A317320(n)+A237420(n)/2`
-/

namespace A317321.P18000284683146072422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317320 n : ℚ) + (A237420 n : ℚ) / 2

end

end A317321.P18000284683146072422

namespace A317321

/-- `A317320(n)+A237420(n)/2` -/
def P18000284683146072422.Spec : Prop :=
  ∀ n, P18000284683146072422.a n = (A317321 n : ℚ)

end A317321

/-! ## A317321.P11935793939673653514

`A317325(n)-2*A237420(n)`
-/

namespace A317321.P11935793939673653514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317325 n - 2 * A237420 n

end

end A317321.P11935793939673653514

namespace A317321

/-- `A317325(n)-2*A237420(n)` -/
def P11935793939673653514.Spec : Prop :=
  ∀ n, P11935793939673653514.a n = A317321 n

end A317321

/-! ## A317321.P10073309025195078816

`(A317323(n)+A317319(n))/2`
-/

namespace A317321.P10073309025195078816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317323 n + A317319 n : ℚ) / 2

end

end A317321.P10073309025195078816

namespace A317321

/-- `(A317323(n)+A317319(n))/2` -/
def P10073309025195078816.Spec : Prop :=
  ∀ n, P10073309025195078816.a n = (A317321 n : ℚ)

end A317321

/-!
# A317322: Multiples of 22 and odd numbers interleaved.

The programs for A317322, the canonical program `A317322.P5388276744862398965` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317322 has offset 0).

The definition of A317322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317322.P5388276744862398965

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=22, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317322

/-- `2*a(n-2)-a(n-4)` -/
def P5388276744862398965.Spec : Prop :=
  ∀ n, P5388276744862398965.a n = A317322 n

theorem P5388276744862398965.correct : P5388276744862398965.Spec := by
  intro n
  simp only [A317322]

end A317322

/-! ## A317322.P13689188838522764374

`n*gcd(11, n%2)`
-/

namespace A317322.P13689188838522764374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 11 (n % 2)

end

end A317322.P13689188838522764374

namespace A317322

/-- `n*gcd(11, n%2)` -/
def P13689188838522764374.Spec : Prop :=
  ∀ n, (P13689188838522764374.a n : ℤ) = A317322 n

end A317322

/-! ## A317322.P10018140684037455723

`n*11^∑[(-1)^n]`
-/

namespace A317322.P10018140684037455723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (11 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A317322.P10018140684037455723

namespace A317322

/-- `n*11^∑[(-1)^n]` -/
def P10018140684037455723.Spec : Prop :=
  ∀ n, P10018140684037455723.a n = (A317322 n : ℚ)

end A317322

/-! ## A317322.P13787314845189595862

`a(n-2)/(1-2/n)` with `a(0)=0, a(1)=1, a(2)=22`
-/

namespace A317322.P13787314845189595862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 22] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A317322.P13787314845189595862

namespace A317322

/-- `a(n-2)/(1-2/n)` -/
def P13787314845189595862.Spec : Prop :=
  ∀ n, P13787314845189595862.a n = (A317322 n : ℚ)

end A317322

/-! ## A317322.P10272381133978051983

`2*n*∑[-a(n-1)]+n` with `a(0)=5`
-/

namespace A317322.P10272381133978051983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A317322.P10272381133978051983

namespace A317322

/-- `2*n*∑[-a(n-1)]+n` -/
def P10272381133978051983.Spec : Prop :=
  ∀ n, P10272381133978051983.a n = A317322 n

end A317322

/-! ## A317322.P16121282000863497091

`lcm(n, A317311(n))`
-/

namespace A317322.P16121282000863497091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A317311 n)

end

end A317322.P16121282000863497091

namespace A317322

/-- `lcm(n, A317311(n))` -/
def P16121282000863497091.Spec : Prop :=
  ∀ n, (P16121282000863497091.a n : ℤ) = A317322 n

end A317322

/-! ## A317322.P16168962509277400

`2*A317312(n)-n`
-/

namespace A317322.P16168962509277400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317312 n - (n : ℤ)

end

end A317322.P16168962509277400

namespace A317322

/-- `2*A317312(n)-n` -/
def P16168962509277400.Spec : Prop :=
  ∀ n, P16168962509277400.a n = A317322 n

end A317322

/-! ## A317322.P6714196317218360057

`A317321(n)+A142150(n)`
-/

namespace A317322.P6714196317218360057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317321 n + A142150 n

end

end A317322.P6714196317218360057

namespace A317322

/-- `A317321(n)+A142150(n)` -/
def P6714196317218360057.Spec : Prop :=
  ∀ n, P6714196317218360057.a n = A317322 n

end A317322

/-! ## A317322.P16587801947801015307

`A317320(A237420(n))+n`
-/

namespace A317322.P16587801947801015307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317320 (A237420 n).toNat + (n : ℤ)

end

end A317322.P16587801947801015307

namespace A317322

/-- `A317320(A237420(n))+n` -/
def P16587801947801015307.Spec : Prop :=
  ∀ n, P16587801947801015307.a n = A317322 n

end A317322

/-! ## A317322.P17696805062795687472

`A317323(n)-A142150(n)`
-/

namespace A317322.P17696805062795687472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317323 n - A142150 n

end

end A317322.P17696805062795687472

namespace A317322

/-- `A317323(n)-A142150(n)` -/
def P17696805062795687472.Spec : Prop :=
  ∀ n, P17696805062795687472.a n = A317322 n

end A317322

/-! ## A317322.P1068504083632962162

`A317324(n)-A237420(n)`
-/

namespace A317322.P1068504083632962162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317324 n - A237420 n

end

end A317322.P1068504083632962162

namespace A317322

/-- `A317324(n)-A237420(n)` -/
def P1068504083632962162.Spec : Prop :=
  ∀ n, P1068504083632962162.a n = A317322 n

end A317322

/-! ## A317322.P2789226179956052268

`A008593(n)/A266327(n)`
-/

namespace A317322.P2789226179956052268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008593 n : ℚ) / (A266327 n : ℚ)

end

end A317322.P2789226179956052268

namespace A317322

/-- `A008593(n)/A266327(n)` -/
def P2789226179956052268.Spec : Prop :=
  ∀ n, P2789226179956052268.a n = (A317322 n : ℚ)

end A317322

/-! ## A317322.P4007419472681375305

`A317320(n)+2*A142150(n)`
-/

namespace A317322.P4007419472681375305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317320 n + 2 * A142150 n

end

end A317322.P4007419472681375305

namespace A317322

/-- `A317320(n)+2*A142150(n)` -/
def P4007419472681375305.Spec : Prop :=
  ∀ n, P4007419472681375305.a n = A317322 n

end A317322

/-! ## A317322.P9820937460772655270

`A317318(n)+2*A237420(n)`
-/

namespace A317322.P9820937460772655270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317318 n + 2 * A237420 n

end

end A317322.P9820937460772655270

namespace A317322

/-- `A317318(n)+2*A237420(n)` -/
def P9820937460772655270.Spec : Prop :=
  ∀ n, P9820937460772655270.a n = A317322 n

end A317322

/-! ## A317322.P10015006525814663882

`2*A317313(n)-A022998(n)`
-/

namespace A317322.P10015006525814663882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317313 n - A022998 n

end

end A317322.P10015006525814663882

namespace A317322

/-- `2*A317313(n)-A022998(n)` -/
def P10015006525814663882.Spec : Prop :=
  ∀ n, P10015006525814663882.a n = A317322 n

end A317322

/-! ## A317322.P5903373974086612718

`A317324(n)-2*A142150(n)`
-/

namespace A317322.P5903373974086612718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317324 n - 2 * A142150 n

end

end A317322.P5903373974086612718

namespace A317322

/-- `A317324(n)-2*A142150(n)` -/
def P5903373974086612718.Spec : Prop :=
  ∀ n, P5903373974086612718.a n = A317322 n

end A317322

/-! ## A317322.P6391912641772803160

`2*A317315(n)-A195161(n)`
-/

namespace A317322.P6391912641772803160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317315 n - A195161 n

end

end A317322.P6391912641772803160

namespace A317322

/-- `2*A317315(n)-A195161(n)` -/
def P6391912641772803160.Spec : Prop :=
  ∀ n, P6391912641772803160.a n = A317322 n

end A317322

/-! ## A317322.P16462055070648535115

`A317321(n)+A237420(n)/2`
-/

namespace A317322.P16462055070648535115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317321 n : ℚ) + (A237420 n : ℚ) / 2

end

end A317322.P16462055070648535115

namespace A317322

/-- `A317321(n)+A237420(n)/2` -/
def P16462055070648535115.Spec : Prop :=
  ∀ n, P16462055070648535115.a n = (A317322 n : ℚ)

end A317322

/-! ## A317322.P8925828009346819426

`A317326(n)-2*A237420(n)`
-/

namespace A317322.P8925828009346819426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317326 n - 2 * A237420 n

end

end A317322.P8925828009346819426

namespace A317322

/-- `A317326(n)-2*A237420(n)` -/
def P8925828009346819426.Spec : Prop :=
  ∀ n, P8925828009346819426.a n = A317322 n

end A317322

/-! ## A317322.P10783956050467314982

`2*A317323(n)-A317324(n)`
-/

namespace A317322.P10783956050467314982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317323 n - A317324 n

end

end A317322.P10783956050467314982

namespace A317322

/-- `2*A317323(n)-A317324(n)` -/
def P10783956050467314982.Spec : Prop :=
  ∀ n, P10783956050467314982.a n = A317322 n

end A317322

/-!
# A317323: Multiples of 23 and odd numbers interleaved.

The programs for A317323, the canonical program `A317323.P12912198030716233661` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317323 has offset 0).

The definition of A317323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317323.P12912198030716233661

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=23, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317323

/-- `2*a(n-2)-a(n-4)` -/
def P12912198030716233661.Spec : Prop :=
  ∀ n, P12912198030716233661.a n = A317323 n

theorem P12912198030716233661.correct : P12912198030716233661.Spec := by
  intro n
  simp only [A317323]

end A317323

/-! ## A317323.P5656321635723397232

`n*(A040131(n)+1)/2`
-/

namespace A317323.P5656321635723397232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (A040131 n + 1) : ℚ) / 2

end

end A317323.P5656321635723397232

namespace A317323

/-- `n*(A040131(n)+1)/2` -/
def P5656321635723397232.Spec : Prop :=
  ∀ n, P5656321635723397232.a n = (A317323 n : ℚ)

end A317323

/-! ## A317323.P340508084448836481

`(3*n*A010689(abs(1-n))-n)/2`
-/

namespace A317323.P340508084448836481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) * A010689 |1 - (n : ℤ)|.toNat - (n : ℤ) : ℚ) / 2

end

end A317323.P340508084448836481

namespace A317323

/-- `(3*n*A010689(abs(1-n))-n)/2` -/
def P340508084448836481.Spec : Prop :=
  ∀ n, P340508084448836481.a n = (A317323 n : ℚ)

end A317323

/-! ## A317323.P12694280529038748948

`((C(A176260(n), 2)+1)*gcd(2, n)+1)*n/2`
-/

namespace A317323.P12694280529038748948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (A176260 n).toNat 2 + 1) * Nat.gcd 2 n + 1 : ℚ) * ((n : ℚ) / 2)

end

end A317323.P12694280529038748948

namespace A317323

/-- `((C(A176260(n), 2)+1)*gcd(2, n)+1)*n/2` -/
def P12694280529038748948.Spec : Prop :=
  ∀ n, P12694280529038748948.a n = (A317323 n : ℚ)

end A317323

/-! ## A317323.P7091453528512975319

`A317322(n)+A142150(n)`
-/

namespace A317323.P7091453528512975319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317322 n + A142150 n

end

end A317323.P7091453528512975319

namespace A317323

/-- `A317322(n)+A142150(n)` -/
def P7091453528512975319.Spec : Prop :=
  ∀ n, P7091453528512975319.a n = A317323 n

end A317323

/-! ## A317323.P13273700409929228936

`A317321(A237420(n))+n`
-/

namespace A317323.P13273700409929228936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317321 (A237420 n).toNat + (n : ℤ)

end

end A317323.P13273700409929228936

namespace A317323

/-- `A317321(A237420(n))+n` -/
def P13273700409929228936.Spec : Prop :=
  ∀ n, P13273700409929228936.a n = A317323 n

end A317323

/-! ## A317323.P17809718832145144883

`A317324(n)-A142150(n)`
-/

namespace A317323.P17809718832145144883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317324 n - A142150 n

end

end A317323.P17809718832145144883

namespace A317323

/-- `A317324(n)-A142150(n)` -/
def P17809718832145144883.Spec : Prop :=
  ∀ n, P17809718832145144883.a n = A317323 n

end A317323

/-! ## A317323.P8208300637543063549

`A317325(n)-A237420(n)`
-/

namespace A317323.P8208300637543063549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317325 n - A237420 n

end

end A317323.P8208300637543063549

namespace A317323

/-- `A317325(n)-A237420(n)` -/
def P8208300637543063549.Spec : Prop :=
  ∀ n, P8208300637543063549.a n = A317323 n

end A317323

/-! ## A317323.P2768517365866319252

`A317321(2*A142150(n))+n`
-/

namespace A317323.P2768517365866319252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317321 (2 * A142150 n).toNat + (n : ℤ)

end

end A317323.P2768517365866319252

namespace A317323

/-- `A317321(2*A142150(n))+n` -/
def P2768517365866319252.Spec : Prop :=
  ∀ n, P2768517365866319252.a n = A317323 n

end A317323

/-! ## A317323.P4701188627895768411

`A317319(n)+2*A237420(n)`
-/

namespace A317323.P4701188627895768411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317319 n + 2 * A237420 n

end

end A317323.P4701188627895768411

namespace A317323

/-- `A317319(n)+2*A237420(n)` -/
def P4701188627895768411.Spec : Prop :=
  ∀ n, P4701188627895768411.a n = A317323 n

end A317323

/-! ## A317323.P8383235228507851446

`2*A317312(n)-A026741(n)`
-/

namespace A317323.P8383235228507851446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317312 n - A026741 n

end

end A317323.P8383235228507851446

namespace A317323

/-- `2*A317312(n)-A026741(n)` -/
def P8383235228507851446.Spec : Prop :=
  ∀ n, P8383235228507851446.a n = A317323 n

end A317323

/-! ## A317323.P6305707401335880330

`A317325(n)-2*A142150(n)`
-/

namespace A317323.P6305707401335880330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317325 n - 2 * A142150 n

end

end A317323.P6305707401335880330

namespace A317323

/-- `A317325(n)-2*A142150(n)` -/
def P6305707401335880330.Spec : Prop :=
  ∀ n, P6305707401335880330.a n = A317323 n

end A317323

/-! ## A317323.P15602719407922465921

`2*A317314(n)-A195140(n)`
-/

namespace A317323.P15602719407922465921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317314 n - A195140 n

end

end A317323.P15602719407922465921

namespace A317323

/-- `2*A317314(n)-A195140(n)` -/
def P15602719407922465921.Spec : Prop :=
  ∀ n, P15602719407922465921.a n = A317323 n

end A317323

/-! ## A317323.P3550765247822952300

`2*A317315(n)-A195159(n)`
-/

namespace A317323.P3550765247822952300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317315 n - A195159 n

end

end A317323.P3550765247822952300

namespace A317323

/-- `2*A317315(n)-A195159(n)` -/
def P3550765247822952300.Spec : Prop :=
  ∀ n, P3550765247822952300.a n = A317323 n

end A317323

/-! ## A317323.P8422211134089449344

`2*A317316(n)-A195312(n)`
-/

namespace A317323.P8422211134089449344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317316 n - A195312 n

end

end A317323.P8422211134089449344

namespace A317323

/-- `2*A317316(n)-A195312(n)` -/
def P8422211134089449344.Spec : Prop :=
  ∀ n, P8422211134089449344.a n = A317323 n

end A317323

/-! ## A317323.P7320267840078252127

`A317322(n)+A237420(n)/2`
-/

namespace A317323.P7320267840078252127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317322 n : ℚ) + (A237420 n : ℚ) / 2

end

end A317323.P7320267840078252127

namespace A317323

/-- `A317322(n)+A237420(n)/2` -/
def P7320267840078252127.Spec : Prop :=
  ∀ n, P7320267840078252127.a n = (A317323 n : ℚ)

end A317323

/-! ## A317323.P6809841052870395311

`A317324(n)-A237420(n)/2`
-/

namespace A317323.P6809841052870395311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317324 n : ℚ) - (A237420 n : ℚ) / 2

end

end A317323.P6809841052870395311

namespace A317323

/-- `A317324(n)-A237420(n)/2` -/
def P6809841052870395311.Spec : Prop :=
  ∀ n, P6809841052870395311.a n = (A317323 n : ℚ)

end A317323

/-! ## A317323.P2151242824794687021

`A317321(A022998(n)-n)+n`
-/

namespace A317323.P2151242824794687021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317321 (A022998 n - (n : ℤ)).toNat + (n : ℤ)

end

end A317323.P2151242824794687021

namespace A317323

/-- `A317321(A022998(n)-n)+n` -/
def P2151242824794687021.Spec : Prop :=
  ∀ n, P2151242824794687021.a n = A317323 n

end A317323

/-! ## A317323.P5418268888321179687

`A317325(n)+n-A022998(n)`
-/

namespace A317323.P5418268888321179687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317325 n + ((n : ℤ) - A022998 n)

end

end A317323.P5418268888321179687

namespace A317323

/-- `A317325(n)+n-A022998(n)` -/
def P5418268888321179687.Spec : Prop :=
  ∀ n, P5418268888321179687.a n = A317323 n

end A317323

/-! ## A317323.P4788724102163062777

`A026741(n)+A317324(n)-n`
-/

namespace A317323.P4788724102163062777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + (A317324 n - (n : ℤ))

end

end A317323.P4788724102163062777

namespace A317323

/-- `A026741(n)+A317324(n)-n` -/
def P4788724102163062777.Spec : Prop :=
  ∀ n, P4788724102163062777.a n = A317323 n

end A317323

/-!
# A317324: Multiples of 24 and odd numbers interleaved.

The programs for A317324, the canonical program `A317324.P1389458733700003515` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317324 has offset 0).

The definition of A317324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317324.P1389458733700003515

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=24, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317324

/-- `2*a(n-2)-a(n-4)` -/
def P1389458733700003515.Spec : Prop :=
  ∀ n, P1389458733700003515.a n = A317324 n

theorem P1389458733700003515.correct : P1389458733700003515.Spec := by
  intro n
  simp only [A317324]

end A317324

/-! ## A317324.P2210768571010765545

`n*gcd(12, n%2)`
-/

namespace A317324.P2210768571010765545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 12 (n % 2)

end

end A317324.P2210768571010765545

namespace A317324

/-- `n*gcd(12, n%2)` -/
def P2210768571010765545.Spec : Prop :=
  ∀ n, (P2210768571010765545.a n : ℤ) = A317324 n

end A317324

/-! ## A317324.P5919064052857569990

`n*12^∑[(-1)^n]`
-/

namespace A317324.P5919064052857569990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (12 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A317324.P5919064052857569990

namespace A317324

/-- `n*12^∑[(-1)^n]` -/
def P5919064052857569990.Spec : Prop :=
  ∀ n, P5919064052857569990.a n = (A317324 n : ℚ)

end A317324

/-! ## A317324.P14699961686934225889

`abs(13*n*(n-1)%2-n)`
-/

namespace A317324.P14699961686934225889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(13 * n : ℤ) * Int.tmod ((n : ℤ) - 1) 2 - (n : ℤ)|

end

end A317324.P14699961686934225889

namespace A317324

/-- `abs(13*n*(n-1)%2-n)` -/
def P14699961686934225889.Spec : Prop :=
  ∀ n, P14699961686934225889.a n = A317324 n

end A317324

/-! ## A317324.P217765570661129241

`a(n-2)/(1-2/n)` with `a(0)=0, a(1)=1, a(2)=24`
-/

namespace A317324.P217765570661129241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 24] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A317324.P217765570661129241

namespace A317324

/-- `a(n-2)/(1-2/n)` -/
def P217765570661129241.Spec : Prop :=
  ∀ n, P217765570661129241.a n = (A317324 n : ℚ)

end A317324

/-! ## A317324.P8989132495251863863

`2*A317313(n)-n`
-/

namespace A317324.P8989132495251863863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317313 n - (n : ℤ)

end

end A317324.P8989132495251863863

namespace A317324

/-- `2*A317313(n)-n` -/
def P8989132495251863863.Spec : Prop :=
  ∀ n, P8989132495251863863.a n = A317324 n

end A317324

/-! ## A317324.P2405626288625640498

`A317323(n)+A142150(n)`
-/

namespace A317324.P2405626288625640498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317323 n + A142150 n

end

end A317324.P2405626288625640498

namespace A317324

/-- `A317323(n)+A142150(n)` -/
def P2405626288625640498.Spec : Prop :=
  ∀ n, P2405626288625640498.a n = A317324 n

end A317324

/-! ## A317324.P5168354366702115403

`A317322(A237420(n))+n`
-/

namespace A317324.P5168354366702115403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317322 (A237420 n).toNat + (n : ℤ)

end

end A317324.P5168354366702115403

namespace A317324

/-- `A317322(A237420(n))+n` -/
def P5168354366702115403.Spec : Prop :=
  ∀ n, P5168354366702115403.a n = A317324 n

end A317324

/-! ## A317324.P17119408205440475159

`A317325(n)-A142150(n)`
-/

namespace A317324.P17119408205440475159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317325 n - A142150 n

end

end A317324.P17119408205440475159

namespace A317324

/-- `A317325(n)-A142150(n)` -/
def P17119408205440475159.Spec : Prop :=
  ∀ n, P17119408205440475159.a n = A317324 n

end A317324

/-! ## A317324.P1630736794161819378

`A317326(n)-A237420(n)`
-/

namespace A317324.P1630736794161819378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317326 n - A237420 n

end

end A317324.P1630736794161819378

namespace A317324

/-- `A317326(n)-A237420(n)` -/
def P1630736794161819378.Spec : Prop :=
  ∀ n, P1630736794161819378.a n = A317324 n

end A317324

/-! ## A317324.P2762235746741872883

`lcm(A195161(n), A257143(n))`
-/

namespace A317324.P2762235746741872883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A195161 n) (A257143 n)

end

end A317324.P2762235746741872883

namespace A317324

/-- `lcm(A195161(n), A257143(n))` -/
def P2762235746741872883.Spec : Prop :=
  ∀ n, (P2762235746741872883.a n : ℤ) = A317324 n

end A317324

/-! ## A317324.P10033697606179721163

`A317322(n)+2*A142150(n)`
-/

namespace A317324.P10033697606179721163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317322 n + 2 * A142150 n

end

end A317324.P10033697606179721163

namespace A317324

/-- `A317322(n)+2*A142150(n)` -/
def P10033697606179721163.Spec : Prop :=
  ∀ n, P10033697606179721163.a n = A317324 n

end A317324

/-! ## A317324.P5474967806313608906

`A317320(n)+2*A237420(n)`
-/

namespace A317324.P5474967806313608906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317320 n + 2 * A237420 n

end

end A317324.P5474967806313608906

namespace A317324

/-- `A317320(n)+2*A237420(n)` -/
def P5474967806313608906.Spec : Prop :=
  ∀ n, P5474967806313608906.a n = A317324 n

end A317324

/-! ## A317324.P8181990909575046798

`2*A317314(n)-A022998(n)`
-/

namespace A317324.P8181990909575046798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317314 n - A022998 n

end

end A317324.P8181990909575046798

namespace A317324

/-- `2*A317314(n)-A022998(n)` -/
def P8181990909575046798.Spec : Prop :=
  ∀ n, P8181990909575046798.a n = A317324 n

end A317324

/-! ## A317324.P8000106289274670362

`A317326(n)-2*A142150(n)`
-/

namespace A317324.P8000106289274670362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317326 n - 2 * A142150 n

end

end A317324.P8000106289274670362

namespace A317324

/-- `A317326(n)-2*A142150(n)` -/
def P8000106289274670362.Spec : Prop :=
  ∀ n, P8000106289274670362.a n = A317324 n

end A317324

/-! ## A317324.P16593733699469636694

`2*A317316(n)-A195161(n)`
-/

namespace A317324.P16593733699469636694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317316 n - A195161 n

end

end A317324.P16593733699469636694

namespace A317324

/-- `2*A317316(n)-A195161(n)` -/
def P16593733699469636694.Spec : Prop :=
  ∀ n, P16593733699469636694.a n = A317324 n

end A317324

/-! ## A317324.P15128405766313378425

`A317323(n)+A237420(n)/2`
-/

namespace A317324.P15128405766313378425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317323 n : ℚ) + (A237420 n : ℚ) / 2

end

end A317324.P15128405766313378425

namespace A317324

/-- `A317323(n)+A237420(n)/2` -/
def P15128405766313378425.Spec : Prop :=
  ∀ n, P15128405766313378425.a n = (A317324 n : ℚ)

end A317324

/-! ## A317324.P7996058813275846264

`A317325(n)-A237420(n)/2`
-/

namespace A317324.P7996058813275846264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317325 n : ℚ) - (A237420 n : ℚ) / 2

end

end A317324.P7996058813275846264

namespace A317324

/-- `A317325(n)-A237420(n)/2` -/
def P7996058813275846264.Spec : Prop :=
  ∀ n, P7996058813275846264.a n = (A317324 n : ℚ)

end A317324

/-! ## A317324.P14430710318479833292

`A022998(n)+A317322(n)-n`
-/

namespace A317324.P14430710318479833292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n + (A317322 n - (n : ℤ))

end

end A317324.P14430710318479833292

namespace A317324

/-- `A022998(n)+A317322(n)-n` -/
def P14430710318479833292.Spec : Prop :=
  ∀ n, P14430710318479833292.a n = A317324 n

end A317324

/-! ## A317324.P1638252060420533266

`A317326(n)+n-A022998(n)`
-/

namespace A317324.P1638252060420533266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317326 n + ((n : ℤ) - A022998 n)

end

end A317324.P1638252060420533266

namespace A317324

/-- `A317326(n)+n-A022998(n)` -/
def P1638252060420533266.Spec : Prop :=
  ∀ n, P1638252060420533266.a n = A317324 n

end A317324

/-!
# A317325: Multiples of 25 and odd numbers interleaved.

The programs for A317325, the canonical program `A317325.P14024191946450246089` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317325 has offset 0).

The definition of A317325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317325.P14024191946450246089

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=25, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317325

/-- `2*a(n-2)-a(n-4)` -/
def P14024191946450246089.Spec : Prop :=
  ∀ n, P14024191946450246089.a n = A317325 n

theorem P14024191946450246089.correct : P14024191946450246089.Spec := by
  intro n
  simp only [A317325]

end A317325

/-! ## A317325.P13122052876423369544

`a(n-2)/(1-2/n)` with `a(0)=0, a(1)=1, a(2)=25`
-/

namespace A317325.P13122052876423369544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 25] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A317325.P13122052876423369544

namespace A317325

/-- `a(n-2)/(1-2/n)` -/
def P13122052876423369544.Spec : Prop :=
  ∀ n, P13122052876423369544.a n = (A317325 n : ℚ)

end A317325

/-! ## A317325.P5987267489246144228

`abs(27*n*char[2*n]/2-n)`
-/

namespace A317325.P5987267489246144228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(27 * n : ℚ) * (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 2) - (n : ℚ)|

end

end A317325.P5987267489246144228

namespace A317325

/-- `abs(27*n*char[2*n]/2-n)` -/
def P5987267489246144228.Spec : Prop :=
  ∀ n, P5987267489246144228.a n = (A317325 n : ℚ)

end A317325

/-! ## A317325.P14935450702110009092

`(A040155(n)+1)*n/2`
-/

namespace A317325.P14935450702110009092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040155 n + 1 : ℚ) * ((n : ℚ) / 2)

end

end A317325.P14935450702110009092

namespace A317325

/-- `(A040155(n)+1)*n/2` -/
def P14935450702110009092.Spec : Prop :=
  ∀ n, P14935450702110009092.a n = (A317325 n : ℚ)

end A317325

/-! ## A317325.P16307185331152530963

`n*A040649(n)/gcd(2, n)/gcd(2, n)`
-/

namespace A317325.P16307185331152530963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A040649 n : ℚ) / (Nat.gcd 2 n : ℚ)) / (Nat.gcd 2 n : ℚ)

end

end A317325.P16307185331152530963

namespace A317325

/-- `n*A040649(n)/gcd(2, n)/gcd(2, n)` -/
def P16307185331152530963.Spec : Prop :=
  ∀ n, P16307185331152530963.a n = (A317325 n : ℚ)

end A317325

/-! ## A317325.P11367152878155817994

`A317324(n)+A142150(n)`
-/

namespace A317325.P11367152878155817994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317324 n + A142150 n

end

end A317325.P11367152878155817994

namespace A317325

/-- `A317324(n)+A142150(n)` -/
def P11367152878155817994.Spec : Prop :=
  ∀ n, P11367152878155817994.a n = A317325 n

end A317325

/-! ## A317325.P7052047486939240906

`A317323(A237420(n))+n`
-/

namespace A317325.P7052047486939240906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317323 (A237420 n).toNat + (n : ℤ)

end

end A317325.P7052047486939240906

namespace A317325

/-- `A317323(A237420(n))+n` -/
def P7052047486939240906.Spec : Prop :=
  ∀ n, P7052047486939240906.a n = A317325 n

end A317325

/-! ## A317325.P952700475097373062

`A317326(n)-A142150(n)`
-/

namespace A317325.P952700475097373062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317326 n - A142150 n

end

end A317325.P952700475097373062

namespace A317325

/-- `A317326(n)-A142150(n)` -/
def P952700475097373062.Spec : Prop :=
  ∀ n, P952700475097373062.a n = A317325 n

end A317325

/-! ## A317325.P6476569832387939631

`A176260(n)*A195140(n)`
-/

namespace A317325.P6476569832387939631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176260 n * A195140 n

end

end A317325.P6476569832387939631

namespace A317325

/-- `A176260(n)*A195140(n)` -/
def P6476569832387939631.Spec : Prop :=
  ∀ n, P6476569832387939631.a n = A317325 n

end A317325

/-! ## A317325.P1180737075558712057

`A195817(n)²/A257088(n)`
-/

namespace A317325.P1180737075558712057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195817 n ^ 2 : ℚ) / (A257088 n : ℚ)

end

end A317325.P1180737075558712057

namespace A317325

/-- `A195817(n)²/A257088(n)` -/
def P1180737075558712057.Spec : Prop :=
  ∀ n, P1180737075558712057.a n = (A317325 n : ℚ)

end A317325

/-! ## A317325.P14831258622915092706

`A317323(2*A142150(n))+n`
-/

namespace A317325.P14831258622915092706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317323 (2 * A142150 n).toNat + (n : ℤ)

end

end A317325.P14831258622915092706

namespace A317325

/-- `A317323(2*A142150(n))+n` -/
def P14831258622915092706.Spec : Prop :=
  ∀ n, P14831258622915092706.a n = A317325 n

end A317325

/-! ## A317325.P15955045928177111633

`A317321(n)+2*A237420(n)`
-/

namespace A317325.P15955045928177111633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317321 n + 2 * A237420 n

end

end A317325.P15955045928177111633

namespace A317325

/-- `A317321(n)+2*A237420(n)` -/
def P15955045928177111633.Spec : Prop :=
  ∀ n, P15955045928177111633.a n = A317325 n

end A317325

/-! ## A317325.P9356417660713408662

`2*A317313(n)-A026741(n)`
-/

namespace A317325.P9356417660713408662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317313 n - A026741 n

end

end A317325.P9356417660713408662

namespace A317325

/-- `2*A317313(n)-A026741(n)` -/
def P9356417660713408662.Spec : Prop :=
  ∀ n, P9356417660713408662.a n = A317325 n

end A317325

/-! ## A317325.P13108085754689188998

`2*A317315(n)-A195140(n)`
-/

namespace A317325.P13108085754689188998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317315 n - A195140 n

end

end A317325.P13108085754689188998

namespace A317325

/-- `2*A317315(n)-A195140(n)` -/
def P13108085754689188998.Spec : Prop :=
  ∀ n, P13108085754689188998.a n = A317325 n

end A317325

/-! ## A317325.P3024983519068626029

`2*A317316(n)-A195159(n)`
-/

namespace A317325.P3024983519068626029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317316 n - A195159 n

end

end A317325.P3024983519068626029

namespace A317325

/-- `2*A317316(n)-A195159(n)` -/
def P3024983519068626029.Spec : Prop :=
  ∀ n, P3024983519068626029.a n = A317325 n

end A317325

/-! ## A317325.P1341794581598626083

`2*A317317(n)-A195312(n)`
-/

namespace A317325.P1341794581598626083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317317 n - A195312 n

end

end A317325.P1341794581598626083

namespace A317325

/-- `2*A317317(n)-A195312(n)` -/
def P1341794581598626083.Spec : Prop :=
  ∀ n, P1341794581598626083.a n = A317325 n

end A317325

/-! ## A317325.P8067725907717763403

`A317324(n)+A237420(n)/2`
-/

namespace A317325.P8067725907717763403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317324 n : ℚ) + (A237420 n : ℚ) / 2

end

end A317325.P8067725907717763403

namespace A317325

/-- `A317324(n)+A237420(n)/2` -/
def P8067725907717763403.Spec : Prop :=
  ∀ n, P8067725907717763403.a n = (A317325 n : ℚ)

end A317325

/-! ## A317325.P10028458421210172336

`2*A317324(n)-A317323(n)`
-/

namespace A317325.P10028458421210172336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317324 n - A317323 n

end

end A317325.P10028458421210172336

namespace A317325

/-- `2*A317324(n)-A317323(n)` -/
def P10028458421210172336.Spec : Prop :=
  ∀ n, P10028458421210172336.a n = A317325 n

end A317325

/-! ## A317325.P5591701318803731109

`A317326(n)-A237420(n)/2`
-/

namespace A317325.P5591701318803731109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317326 n : ℚ) - (A237420 n : ℚ) / 2

end

end A317325.P5591701318803731109

namespace A317325

/-- `A317326(n)-A237420(n)/2` -/
def P5591701318803731109.Spec : Prop :=
  ∀ n, P5591701318803731109.a n = (A317325 n : ℚ)

end A317325

/-! ## A317325.P5384624706377765150

`A317323(A022998(n)-n)+n`
-/

namespace A317325.P5384624706377765150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317323 (A022998 n - (n : ℤ)).toNat + (n : ℤ)

end

end A317325.P5384624706377765150

namespace A317325

/-- `A317323(A022998(n)-n)+n` -/
def P5384624706377765150.Spec : Prop :=
  ∀ n, P5384624706377765150.a n = A317325 n

end A317325

/-!
# A317326: Multiples of 26 and odd numbers interleaved.

The programs for A317326, the canonical program `A317326.P12920288651940710635` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317326 has offset 0).

The definition of A317326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317326.P12920288651940710635

`(7+6*(-1)^n)*n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317326

/-- `(7+6*(-1)^n)*n` -/
def P12920288651940710635.Spec : Prop :=
  ∀ n, P12920288651940710635.a n = A317326 n

theorem P12920288651940710635.correct : P12920288651940710635.Spec := by
  intro n
  simp only [A317326]

end A317326

/-! ## A317326.P8964613530821494349

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=26, a(3)=3`
-/

namespace A317326.P8964613530821494349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 26, 3] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A317326.P8964613530821494349

namespace A317326

/-- `2*a(n-2)-a(n-4)` -/
def P8964613530821494349.Spec : Prop :=
  ∀ n, P8964613530821494349.a n = A317326 n

theorem P8964613530821494349.correct : P8964613530821494349.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A317326, Nat.add_sub_cancel, A317326.P8964613530821494349.a, A317326.P12920288651940710635.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A317326, Nat.add_sub_cancel, A317326.P8964613530821494349.a, A317326.P12920288651940710635.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [h2, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A317326

/-! ## A317326.P1133864947325157566

`lcm(n, A317313(n))`
-/

namespace A317326.P1133864947325157566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A317313 n)

end

end A317326.P1133864947325157566

namespace A317326

/-- `lcm(n, A317313(n))` -/
def P1133864947325157566.Spec : Prop :=
  ∀ n, (P1133864947325157566.a n : ℤ) = A317326 n

end A317326

/-! ## A317326.P15503227983430700952

`2*A317314(n)-n`
-/

namespace A317326.P15503227983430700952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317314 n - (n : ℤ)

end

end A317326.P15503227983430700952

namespace A317326

/-- `2*A317314(n)-n` -/
def P15503227983430700952.Spec : Prop :=
  ∀ n, P15503227983430700952.a n = A317326 n

end A317326

/-! ## A317326.P14322103657528942343

`n*A040048(n)-n`
-/

namespace A317326.P14322103657528942343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040048 n - (n : ℤ)

end

end A317326.P14322103657528942343

namespace A317326

/-- `n*A040048(n)-n` -/
def P14322103657528942343.Spec : Prop :=
  ∀ n, P14322103657528942343.a n = A317326 n

end A317326

/-! ## A317326.P10191867219320994075

`A317325(n)+A142150(n)`
-/

namespace A317326.P10191867219320994075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317325 n + A142150 n

end

end A317326.P10191867219320994075

namespace A317326

/-- `A317325(n)+A142150(n)` -/
def P10191867219320994075.Spec : Prop :=
  ∀ n, P10191867219320994075.a n = A317326 n

end A317326

/-! ## A317326.P2155030797060594217

`A317324(A237420(n))+n`
-/

namespace A317326.P2155030797060594217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317324 (A237420 n).toNat + (n : ℤ)

end

end A317326.P2155030797060594217

namespace A317326

/-- `A317324(A237420(n))+n` -/
def P2155030797060594217.Spec : Prop :=
  ∀ n, P2155030797060594217.a n = A317326 n

end A317326

/-! ## A317326.P2495070495887055860

`A317324(2*A142150(n))+n`
-/

namespace A317326.P2495070495887055860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317324 (2 * A142150 n).toNat + (n : ℤ)

end

end A317326.P2495070495887055860

namespace A317326

/-- `A317324(2*A142150(n))+n` -/
def P2495070495887055860.Spec : Prop :=
  ∀ n, P2495070495887055860.a n = A317326 n

end A317326

/-! ## A317326.P1152837637061029579

`A317322(n)+2*A237420(n)`
-/

namespace A317326.P1152837637061029579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317322 n + 2 * A237420 n

end

end A317326.P1152837637061029579

namespace A317326

/-- `A317322(n)+2*A237420(n)` -/
def P1152837637061029579.Spec : Prop :=
  ∀ n, P1152837637061029579.a n = A317326 n

end A317326

/-! ## A317326.P7096856180257846552

`2*A317315(n)-A022998(n)`
-/

namespace A317326.P7096856180257846552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317315 n - A022998 n

end

end A317326.P7096856180257846552

namespace A317326

/-- `2*A317315(n)-A022998(n)` -/
def P7096856180257846552.Spec : Prop :=
  ∀ n, P7096856180257846552.a n = A317326 n

end A317326

/-! ## A317326.P9569827263875738511

`2*A317317(n)-A195161(n)`
-/

namespace A317326.P9569827263875738511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317317 n - A195161 n

end

end A317326.P9569827263875738511

namespace A317326

/-- `2*A317317(n)-A195161(n)` -/
def P9569827263875738511.Spec : Prop :=
  ∀ n, P9569827263875738511.a n = A317326 n

end A317326

/-! ## A317326.P839467410744548270

`A317325(n)+A237420(n)/2`
-/

namespace A317326.P839467410744548270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317325 n : ℚ) + (A237420 n : ℚ) / 2

end

end A317326.P839467410744548270

namespace A317326

/-- `A317325(n)+A237420(n)/2` -/
def P839467410744548270.Spec : Prop :=
  ∀ n, P839467410744548270.a n = (A317326 n : ℚ)

end A317326

/-! ## A317326.P11731483371937583231

`A008594(A022998(n)-n)+n`
-/

namespace A317326.P11731483371937583231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A022998 n - (n : ℤ)).toNat + (n : ℤ)

end

end A317326.P11731483371937583231

namespace A317326

/-- `A008594(A022998(n)-n)+n` -/
def P11731483371937583231.Spec : Prop :=
  ∀ n, P11731483371937583231.a n = A317326 n

end A317326

/-! ## A317326.P11049850019256413541

`A008606(n-A026741(n))+n`
-/

namespace A317326.P11049850019256413541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 ((n : ℤ) - A026741 n).toNat + (n : ℤ)

end

end A317326.P11049850019256413541

namespace A317326

/-- `A008606(n-A026741(n))+n` -/
def P11049850019256413541.Spec : Prop :=
  ∀ n, P11049850019256413541.a n = A317326 n

end A317326

/-! ## A317326.P10348804115644460460

`A317324(A022998(n)-n)+n`
-/

namespace A317326.P10348804115644460460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317324 (A022998 n - (n : ℤ)).toNat + (n : ℤ)

end

end A317326.P10348804115644460460

namespace A317326

/-- `A317324(A022998(n)-n)+n` -/
def P10348804115644460460.Spec : Prop :=
  ∀ n, P10348804115644460460.a n = A317326 n

end A317326

/-! ## A317326.P7975100033913641438

`A317325(n)+n-A026741(n)`
-/

namespace A317326.P7975100033913641438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317325 n + ((n : ℤ) - A026741 n)

end

end A317326.P7975100033913641438

namespace A317326

/-- `A317325(n)+n-A026741(n)` -/
def P7975100033913641438.Spec : Prop :=
  ∀ n, P7975100033913641438.a n = A317326 n

end A317326

/-! ## A317326.P9406619604414479357

`A195140(n)+A317323(n)-n`
-/

namespace A317326.P9406619604414479357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n + (A317323 n - (n : ℤ))

end

end A317326.P9406619604414479357

namespace A317326

/-- `A195140(n)+A317323(n)-n` -/
def P9406619604414479357.Spec : Prop :=
  ∀ n, P9406619604414479357.a n = A317326 n

end A317326

/-! ## A317326.P7644172904697616207

`A195161(n)+A317320(n)-n`
-/

namespace A317326.P7644172904697616207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 n + (A317320 n - (n : ℤ))

end

end A317326.P7644172904697616207

namespace A317326

/-- `A195161(n)+A317320(n)-n` -/
def P7644172904697616207.Spec : Prop :=
  ∀ n, P7644172904697616207.a n = A317326 n

end A317326

/-! ## A317326.P14576938172577200035

`A022998(n)-(n-A317324(n))`
-/

namespace A317326.P14576938172577200035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n - ((n : ℤ) - A317324 n)

end

end A317326.P14576938172577200035

namespace A317326

/-- `A022998(n)-(n-A317324(n))` -/
def P14576938172577200035.Spec : Prop :=
  ∀ n, P14576938172577200035.a n = A317326 n

end A317326

/-! ## A317326.P16391827984725902794

`A195140(n)+A317322(n)-A026741(n)`
-/

namespace A317326.P16391827984725902794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n + (A317322 n - A026741 n)

end

end A317326.P16391827984725902794

namespace A317326

/-- `A195140(n)+A317322(n)-A026741(n)` -/
def P16391827984725902794.Spec : Prop :=
  ∀ n, P16391827984725902794.a n = A317326 n

end A317326

/-!
# A317328: Total number of distinct run lengths summed over all permutations of [n] with exactly k distinct lengths of increasing runs.

The programs for A317328, there is no canonical definition to state claims against.
-/

/-! ## A317328.P7445137712035065586

`2*n!-1-A237053(∏[n+6]/6)`
-/

namespace A317328.P7445137712035065586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial n : ℤ) - 1 - A237053 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6)).toNat

end

end A317328.P7445137712035065586

/-! ## A317328.P10437383101464267618

`A324690(A349488(n+1))`
-/

namespace A317328.P10437383101464267618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324690 (A349488 (n + 1)).toNat

end

end A317328.P10437383101464267618

/-!
# A317329: Number of permutations of [n] with equal lengths of increasing runs.

The programs for A317329, there is no canonical definition to state claims against.
-/

/-! ## A317329.P10943205129188173593

`A317327(A075349(n+2))`
-/

namespace A317329.P10943205129188173593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317327 (A075349 (n + 2)).toNat

end

end A317329.P10943205129188173593

/-! ## A317329.P398150232861235645

`A317327(A060432(n+1)+1)`
-/

namespace A317329.P398150232861235645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317327 (A060432 (n + 1) + 1).toNat

end

end A317329.P398150232861235645

/-! ## A317329.P17702564395514352867

`A317327(A006463(n+1)+n+2)`
-/

namespace A317329.P17702564395514352867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317327 (A006463 (n + 1) + (n + 2 : ℤ)).toNat

end

end A317329.P17702564395514352867

/-! ## A317329.P12305557265402499943

`A317327(eq[A057427(n), A219311(n)])`
-/

namespace A317329.P12305557265402499943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317327 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A317329.P12305557265402499943

/-! ## A317329.P3485379942822758971

`A317327(A014132(n+1)+A006463(n))`
-/

namespace A317329.P3485379942822758971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317327 (A014132 (n + 1) + A006463 n).toNat

end

end A317329.P3485379942822758971

/-!
# A317330: a(n) is the smallest positive integer not yet in the sequence that contains a digit equal to the sum of the digits of a(n-1) (mod 10); a(1)=0.

The programs for A317330, there is no canonical definition to state claims against.
-/

/-! ## A317330.P5440437910534285029

`A107408(n)%A000010(A258700(n))`
-/

namespace A317330.P5440437910534285029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107408 n) (A000010 (A258700 n).toNat)

end

end A317330.P5440437910534285029

/-! ## A317330.P30226692343010355

`A098760(lt[A098760(n), 22])`
-/

namespace A317330.P30226692343010355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A317330.P30226692343010355

/-!
# A317331: Indices m for which A058304(m) = 1.

The programs for A317331, the canonical program `A317331.P16205827188817232498` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317331 has offset 1).

The definition of A317331 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014577, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A317331.P16205827188817232498

`4*(n+1)+A014577(n)-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A317331

/-- `4*(n+1)+A014577(n)-1` -/
def P16205827188817232498.Spec : Prop :=
  ∀ n, P16205827188817232498.a n = A317331 (n + 1)

theorem P16205827188817232498.correct : P16205827188817232498.Spec := by
  intro n
  simp only [A317331, Nat.add_sub_cancel]

end A317331

/-! ## A317331.P6505136728063014503

`floor(A317332(n+1)/2)`
-/

namespace A317331.P6505136728063014503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A317332 (n + 1) : ℚ) / 2⌋

end

end A317331.P6505136728063014503

namespace A317331

/-- `floor(A317332(n+1)/2)` -/
def P6505136728063014503.Spec : Prop :=
  ∀ n, P6505136728063014503.a n = A317331 (n + 1)

end A317331

/-! ## A317331.P1674138349391435155

`comp[n-A073089(n+1)]`
-/

namespace A317331.P1674138349391435155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A073089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A317331.P1674138349391435155

namespace A317331

/-- `comp[n-A073089(n+1)]` -/
def P1674138349391435155.Spec : Prop :=
  ∀ n, (P1674138349391435155.a n : ℤ) = A317331 (n + 1)

end A317331

/-! ## A317331.P15538595377731960009

`A014710(n)+4*n+2`
-/

namespace A317331.P15538595377731960009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 n + (4 * n + 2 : ℤ)

end

end A317331.P15538595377731960009

namespace A317331

/-- `A014710(n)+4*n+2` -/
def P15538595377731960009.Spec : Prop :=
  ∀ n, P15538595377731960009.a n = A317331 (n + 1)

end A317331

/-! ## A317331.P8157743791646770508

`A014577(n)+4*n+3`
-/

namespace A317331.P8157743791646770508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n + (4 * n + 3 : ℤ)

end

end A317331.P8157743791646770508

namespace A317331

/-- `A014577(n)+4*n+3` -/
def P8157743791646770508.Spec : Prop :=
  ∀ n, P8157743791646770508.a n = A317331 (n + 1)

theorem P8157743791646770508.correct : P8157743791646770508.Spec := by
  intro n
  simp only [A317331, Nat.add_sub_cancel, A317331.P8157743791646770508.a, A317331.P16205827188817232498.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A317331

/-! ## A317331.P4752885465695745560

`4*(n+1)-A038189(n+1)`
-/

namespace A317331.P4752885465695745560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A038189 (n + 1)

end

end A317331.P4752885465695745560

namespace A317331

/-- `4*(n+1)-A038189(n+1)` -/
def P4752885465695745560.Spec : Prop :=
  ∀ n, P4752885465695745560.a n = A317331 (n + 1)

end A317331

/-! ## A317331.P6135144526818086212

`xor(4*n-1, A014707(n))+5`
-/

namespace A317331.P6135144526818086212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((4 * n : ℤ) - 1) (A014707 n) + 5

end

end A317331.P6135144526818086212

namespace A317331

/-- `xor(4*n-1, A014707(n))+5` -/
def P6135144526818086212.Spec : Prop :=
  ∀ n, P6135144526818086212.a n = A317331 (n + 1)

end A317331

/-! ## A317331.P5074722000191836014

`A004767(n)+ceil(1/Δ[xor(n+1, 2*n+1)])`
-/

namespace A317331.P5074722000191836014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + ⌈1 / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)⌉

end

end A317331.P5074722000191836014

namespace A317331

/-- `A004767(n)+ceil(1/Δ[xor(n+1, 2*n+1)])` -/
def P5074722000191836014.Spec : Prop :=
  ∀ n, P5074722000191836014.a n = A317331 (n + 1)

end A317331

/-! ## A317331.P180661266848475715

`A016825(n)+A014710(n)`
-/

namespace A317331.P180661266848475715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + A014710 n

end

end A317331.P180661266848475715

namespace A317331

/-- `A016825(n)+A014710(n)` -/
def P180661266848475715.Spec : Prop :=
  ∀ n, P180661266848475715.a n = A317331 (n + 1)

end A317331

/-! ## A317331.P6342357741829483255

`A004766(n+1)-A014709(n)`
-/

namespace A317331.P6342357741829483255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1) - A014709 n

end

end A317331.P6342357741829483255

namespace A317331

/-- `A004766(n+1)-A014709(n)` -/
def P6342357741829483255.Spec : Prop :=
  ∀ n, P6342357741829483255.a n = A317331 (n + 1)

end A317331

/-! ## A317331.P17062366783880738748

`A016825(n)+3-A014709(n)`
-/

namespace A317331.P17062366783880738748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + (3 - A014709 n)

end

end A317331.P17062366783880738748

namespace A317331

/-- `A016825(n)+3-A014709(n)` -/
def P17062366783880738748.Spec : Prop :=
  ∀ n, P17062366783880738748.a n = A317331 (n + 1)

end A317331

/-! ## A317331.P18277692571272600243

`(A034947(n+1)+A004771(n))/2`
-/

namespace A317331.P18277692571272600243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034947 (n + 1) + A004771 n : ℚ) / 2

end

end A317331.P18277692571272600243

namespace A317331

/-- `(A034947(n+1)+A004771(n))/2` -/
def P18277692571272600243.Spec : Prop :=
  ∀ n, P18277692571272600243.a n = (A317331 (n + 1) : ℚ)

end A317331

/-! ## A317331.P14123620686335050441

`(A317332(n+1)-A014577(n))/2`
-/

namespace A317331.P14123620686335050441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317332 (n + 1) - A014577 n : ℚ) / 2

end

end A317331.P14123620686335050441

namespace A317331

/-- `(A317332(n+1)-A014577(n))/2` -/
def P14123620686335050441.Spec : Prop :=
  ∀ n, P14123620686335050441.a n = (A317331 (n + 1) : ℚ)

end A317331

/-! ## A317331.P15778414420565124870

`A016825(n+1)-(A038189(n+1)+2)`
-/

namespace A317331.P15778414420565124870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (n + 1) - (A038189 (n + 1) + 2)

end

end A317331.P15778414420565124870

namespace A317331

/-- `A016825(n+1)-(A038189(n+1)+2)` -/
def P15778414420565124870.Spec : Prop :=
  ∀ n, P15778414420565124870.a n = A317331 (n + 1)

end A317331

/-! ## A317331.P17534055070499804137

`A016813(n+1)-(A014707(n)+1)`
-/

namespace A317331.P17534055070499804137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (n + 1) - (A014707 n + 1)

end

end A317331.P17534055070499804137

namespace A317331

/-- `A016813(n+1)-(A014707(n)+1)` -/
def P17534055070499804137.Spec : Prop :=
  ∀ n, P17534055070499804137.a n = A317331 (n + 1)

end A317331

/-! ## A317331.P3305306693941631931

`A016813(n+1)-(A038189(n+1)+1)`
-/

namespace A317331.P3305306693941631931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (n + 1) - (A038189 (n + 1) + 1)

end

end A317331.P3305306693941631931

namespace A317331

/-- `A016813(n+1)-(A038189(n+1)+1)` -/
def P3305306693941631931.Spec : Prop :=
  ∀ n, P3305306693941631931.a n = A317331 (n + 1)

end A317331

/-! ## A317331.P2824819208452068741

`A005843(2*n+1)+2/A014709(2*n+1)`
-/

namespace A317331.P2824819208452068741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (2 * n + 1) : ℚ) + 2 / (A014709 (2 * n + 1) : ℚ)

end

end A317331.P2824819208452068741

namespace A317331

/-- `A005843(2*n+1)+2/A014709(2*n+1)` -/
def P2824819208452068741.Spec : Prop :=
  ∀ n, P2824819208452068741.a n = (A317331 (n + 1) : ℚ)

end A317331

/-! ## A317331.P2356680849187478483

`A005408(A005408(n))+1-A014707(n)`
-/

namespace A317331.P2356680849187478483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005408 n).toNat + (1 - A014707 n)

end

end A317331.P2356680849187478483

namespace A317331

/-- `A005408(A005408(n))+1-A014707(n)` -/
def P2356680849187478483.Spec : Prop :=
  ∀ n, P2356680849187478483.a n = A317331 (n + 1)

end A317331

/-! ## A317331.P4004902714920032409

`eq[1, A004200(n+1)]`
-/

namespace A317331.P4004902714920032409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317331.P4004902714920032409

namespace A317331

/-- `eq[1, A004200(n+1)]` -/
def P4004902714920032409.Spec : Prop :=
  ∀ n, (P4004902714920032409.a n : ℤ) = A317331 (n + 1)

end A317331

/-!
# A317332: Indices m for which A058304(m) = 8.

The programs for A317332, the canonical program `A317332.P4749212783667228786` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317332 has offset 1).

The definition of A317332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317332.P5177986329130393913

`8*(n+1)+A317335(n+1)`
-/

namespace A317332.P5177986329130393913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) + A317335 (n + 1)

end

end A317332.P5177986329130393913

namespace A317332

/-- `8*(n+1)+A317335(n+1)` -/
def P5177986329130393913.Spec : Prop :=
  ∀ n, P5177986329130393913.a n = A317332 (n + 1)

end A317332

/-! ## A317332.P4749212783667228786

`xor(1, A317331(2*(n+1)))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A317332

/-- `xor(1, A317331(2*(n+1)))` -/
def P4749212783667228786.Spec : Prop :=
  ∀ n, P4749212783667228786.a n = A317332 (n + 1)

theorem P4749212783667228786.correct : P4749212783667228786.Spec := by
  intro n
  simp only [A317332, Nat.add_sub_cancel]

end A317332

/-! ## A317332.P817398931537004622

`8*n+10-A014709(n)²`
-/

namespace A317332.P817398931537004622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 10 : ℤ) - A014709 n ^ 2

end

end A317332.P817398931537004622

namespace A317332

/-- `8*n+10-A014709(n)²` -/
def P817398931537004622.Spec : Prop :=
  ∀ n, P817398931537004622.a n = A317332 (n + 1)

end A317332

/-! ## A317332.P13179872613581143289

`A004769(n)-(A014709(n)²+1)`
-/

namespace A317332.P13179872613581143289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 n - (A014709 n ^ 2 + 1)

end

end A317332.P13179872613581143289

namespace A317332

/-- `A004769(n)-(A014709(n)²+1)` -/
def P13179872613581143289.Spec : Prop :=
  ∀ n, P13179872613581143289.a n = A317332 (n + 1)

end A317332

/-! ## A317332.P10555515549732625114

`A014577(n)+2*A317331(n+1)`
-/

namespace A317332.P10555515549732625114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n + 2 * A317331 (n + 1)

end

end A317332.P10555515549732625114

namespace A317332

/-- `A014577(n)+2*A317331(n+1)` -/
def P10555515549732625114.Spec : Prop :=
  ∀ n, P10555515549732625114.a n = A317332 (n + 1)

end A317332

/-! ## A317332.P10104204961221711402

`A317331(2*(n+1))+A034947(n+1)`
-/

namespace A317332.P10104204961221711402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317331 (2 * (n + 1)) + A034947 (n + 1)

end

end A317332.P10104204961221711402

namespace A317332

/-- `A317331(2*(n+1))+A034947(n+1)` -/
def P10104204961221711402.Spec : Prop :=
  ∀ n, P10104204961221711402.a n = A317332 (n + 1)

end A317332

/-! ## A317332.P11868317482698864514

`1-A014707(n)+2*A317331(n+1)`
-/

namespace A317332.P11868317482698864514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014707 n + 2 * A317331 (n + 1)

end

end A317332.P11868317482698864514

namespace A317332

/-- `1-A014707(n)+2*A317331(n+1)` -/
def P11868317482698864514.Spec : Prop :=
  ∀ n, P11868317482698864514.a n = A317332 (n + 1)

end A317332

/-! ## A317332.P885686598388505663

`A000040(Δ[A005811(n)]+2)+8*n+4`
-/

namespace A317332.P885686598388505663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n + 2).toNat + (8 * n : ℤ) + 4

end

end A317332.P885686598388505663

namespace A317332

/-- `A000040(Δ[A005811(n)]+2)+8*n+4` -/
def P885686598388505663.Spec : Prop :=
  ∀ n, P885686598388505663.a n = A317332 (n + 1)

end A317332

/-! ## A317332.P5972959309160615738

`A317333(n+1)+A317335(n+1)-A317336(n+1)`
-/

namespace A317332.P5972959309160615738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317333 (n + 1) + (A317335 (n + 1) - A317336 (n + 1))

end

end A317332.P5972959309160615738

namespace A317332

/-- `A317333(n+1)+A317335(n+1)-A317336(n+1)` -/
def P5972959309160615738.Spec : Prop :=
  ∀ n, P5972959309160615738.a n = A317332 (n + 1)

end A317332

/-! ## A317332.P14138435290481347223

`A317331(n+1)+A317331(n+1)+A082410(n+2)`
-/

namespace A317332.P14138435290481347223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317331 (n + 1) + (A317331 (n + 1) + A082410 (n + 2))

end

end A317332.P14138435290481347223

namespace A317332

/-- `A317331(n+1)+A317331(n+1)+A082410(n+2)` -/
def P14138435290481347223.Spec : Prop :=
  ∀ n, P14138435290481347223.a n = A317332 (n + 1)

end A317332

/-! ## A317332.P13647883554298818819

`A004771(2*n+1)-A317333(n+2)`
-/

namespace A317332.P13647883554298818819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (2 * n + 1) - A317333 (n + 2)

end

end A317332.P13647883554298818819

namespace A317332

/-- `A004771(2*n+1)-A317333(n+2)` -/
def P13647883554298818819.Spec : Prop :=
  ∀ n, P13647883554298818819.a n = A317332 (n + 1)

end A317332

/-! ## A317332.P14046291501053489854

`A037834(2*(n+1))+A317331(2*(n+1))-A037834(2*n+1)`
-/

namespace A317332.P14046291501053489854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (2 * (n + 1)) + (A317331 (2 * (n + 1)) - A037834 (2 * n + 1))

end

end A317332.P14046291501053489854

namespace A317332

/-- `A037834(2*(n+1))+A317331(2*(n+1))-A037834(2*n+1)` -/
def P14046291501053489854.Spec : Prop :=
  ∀ n, P14046291501053489854.a n = A317332 (n + 1)

end A317332

/-! ## A317332.P14964289521101675434

`A047616(A317331(n+1)-n)+1`
-/

namespace A317332.P14964289521101675434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047616 (A317331 (n + 1) - (n : ℤ)).toNat + 1

end

end A317332.P14964289521101675434

namespace A317332

/-- `A047616(A317331(n+1)-n)+1` -/
def P14964289521101675434.Spec : Prop :=
  ∀ n, P14964289521101675434.a n = A317332 (n + 1)

end A317332

/-! ## A317332.P1333308373543217953

`A047618(A317331(n+1)-n)+1`
-/

namespace A317332.P1333308373543217953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047618 (A317331 (n + 1) - (n : ℤ)).toNat + 1

end

end A317332.P1333308373543217953

namespace A317332

/-- `A047618(A317331(n+1)-n)+1` -/
def P1333308373543217953.Spec : Prop :=
  ∀ n, P1333308373543217953.a n = A317332 (n + 1)

end A317332

/-! ## A317332.P3479121535971096034

`A236535(A317331(n+1)-n)-A014709(n)`
-/

namespace A317332.P3479121535971096034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236535 (A317331 (n + 1) - (n : ℤ)).toNat - A014709 n

end

end A317332.P3479121535971096034

namespace A317332

/-- `A236535(A317331(n+1)-n)-A014709(n)` -/
def P3479121535971096034.Spec : Prop :=
  ∀ n, P3479121535971096034.a n = A317332 (n + 1)

end A317332

/-! ## A317332.P3499045649324042049

`lt[A322015(n), A322017(A322017(n))]`
-/

namespace A317332.P3499045649324042049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322017 (A322017 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317332.P3499045649324042049

namespace A317332

/-- `lt[A322015(n), A322017(A322017(n))]` -/
def P3499045649324042049.Spec : Prop :=
  ∀ n, (P3499045649324042049.a n : ℤ) = A317332 (n + 1)

end A317332

/-! ## A317332.P8672864776543125710

`∩[A047396(n+1), A317253(n+1)]`
-/

namespace A317332.P8672864776543125710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317332.P8672864776543125710

namespace A317332

/-- `∩[A047396(n+1), A317253(n+1)]` -/
def P8672864776543125710.Spec : Prop :=
  ∀ n, (P8672864776543125710.a n : ℤ) = A317332 (n + 1)

end A317332

/-! ## A317332.P6869630553941917173

`∩[A047438(n+1), A317253(n+1)]`
-/

namespace A317332.P6869630553941917173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317332.P6869630553941917173

namespace A317332

/-- `∩[A047438(n+1), A317253(n+1)]` -/
def P6869630553941917173.Spec : Prop :=
  ∀ n, (P6869630553941917173.a n : ℤ) = A317332 (n + 1)

end A317332

/-! ## A317332.P16938729593973887404

`∩[A047452(n+1), A317253(n+1)]`
-/

namespace A317332.P16938729593973887404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317332.P16938729593973887404

namespace A317332

/-- `∩[A047452(n+1), A317253(n+1)]` -/
def P16938729593973887404.Spec : Prop :=
  ∀ n, (P16938729593973887404.a n : ℤ) = A317332 (n + 1)

end A317332

/-! ## A317332.P13603412974210865281

`∩[A075123(n+1), A317253(n+1)]`
-/

namespace A317332.P13603412974210865281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317332.P13603412974210865281

namespace A317332

/-- `∩[A075123(n+1), A317253(n+1)]` -/
def P13603412974210865281.Spec : Prop :=
  ∀ n, (P13603412974210865281.a n : ℤ) = A317332 (n + 1)

end A317332

/-!
# A317333: Indices m for which A058304(m) = 9.

The programs for A317333, the canonical program `A317333.P17629716713966033561` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317333 has offset 1).

The definition of A317333 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317336, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A317333.P17629716713966033561

`8*(n+1)+A317336(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A317333

/-- `8*(n+1)+A317336(n+1)` -/
def P17629716713966033561.Spec : Prop :=
  ∀ n, P17629716713966033561.a n = A317333 (n + 1)

theorem P17629716713966033561.correct : P17629716713966033561.Spec := by
  intro n
  simp only [A317333, Nat.add_sub_cancel]

end A317333

/-! ## A317333.P13997237364585521024

`A317332(n+1)+A317336(n+1)-A317335(n+1)`
-/

namespace A317333.P13997237364585521024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1) + (A317336 (n + 1) - A317335 (n + 1))

end

end A317333.P13997237364585521024

namespace A317333

/-- `A317332(n+1)+A317336(n+1)-A317335(n+1)` -/
def P13997237364585521024.Spec : Prop :=
  ∀ n, P13997237364585521024.a n = A317333 (n + 1)

end A317333

/-! ## A317333.P3839313318308040830

`A073088(2*(n+1))-A073089(2*n+1)`
-/

namespace A317333.P3839313318308040830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (2 * (n + 1)) - A073089 (2 * n + 1)

end

end A317333.P3839313318308040830

namespace A317333

/-- `A073088(2*(n+1))-A073089(2*n+1)` -/
def P3839313318308040830.Spec : Prop :=
  ∀ n, P3839313318308040830.a n = A317333 (n + 1)

end A317333

/-! ## A317333.P13142707948707769111

`A317539(A016813(n))-A016813(n)`
-/

namespace A317333.P13142707948707769111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317539 (A016813 n).toNat - A016813 n

end

end A317333.P13142707948707769111

namespace A317333

/-- `A317539(A016813(n))-A016813(n)` -/
def P13142707948707769111.Spec : Prop :=
  ∀ n, P13142707948707769111.a n = A317333 (n + 1)

end A317333

/-! ## A317333.P2461838611833800840

`8*n+2-A070352(A166404(2*n))`
-/

namespace A317333.P2461838611833800840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 2 : ℤ) - A070352 (A166404 (2 * n)).toNat

end

end A317333.P2461838611833800840

namespace A317333

/-- `8*n+2-A070352(A166404(2*n))` -/
def P2461838611833800840.Spec : Prop :=
  ∀ n, P2461838611833800840.a n = A317333 (n + 1)

end A317333

/-! ## A317333.P8208924682231012991

`A042963(A038189(n)+A008574(n))`
-/

namespace A317333.P8208924682231012991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (A038189 n + A008574 n).toNat

end

end A317333.P8208924682231012991

namespace A317333

/-- `A042963(A038189(n)+A008574(n))` -/
def P8208924682231012991.Spec : Prop :=
  ∀ n, P8208924682231012991.a n = A317333 (n + 1)

end A317333

/-! ## A317333.P17224233752166922019

`A047415(A038189(n)+A008574(n))`
-/

namespace A317333.P17224233752166922019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047415 (A038189 n + A008574 n).toNat

end

end A317333.P17224233752166922019

namespace A317333

/-- `A047415(A038189(n)+A008574(n))` -/
def P17224233752166922019.Spec : Prop :=
  ∀ n, P17224233752166922019.a n = A317333 (n + 1)

end A317333

/-! ## A317333.P869016131800383324

`A042963(xor(A008574(n), A038189(n)))`
-/

namespace A317333.P869016131800383324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (Int.xor (A008574 n) (A038189 n)).toNat

end

end A317333.P869016131800383324

namespace A317333

/-- `A042963(xor(A008574(n), A038189(n)))` -/
def P869016131800383324.Spec : Prop :=
  ∀ n, P869016131800383324.a n = A317333 (n + 1)

end A317333

/-! ## A317333.P810948511756006163

`A317539(4*n+1)+1-A168232(4*n+1)`
-/

namespace A317333.P810948511756006163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317539 (4 * n + 1) + (1 - A168232 (4 * n + 1))

end

end A317333.P810948511756006163

namespace A317333

/-- `A317539(4*n+1)+1-A168232(4*n+1)` -/
def P810948511756006163.Spec : Prop :=
  ∀ n, P810948511756006163.a n = A317333 (n + 1)

end A317333

/-! ## A317333.P11652083016793955019

`A073088(2*n+2)-A021913(A073088(2*n+2))`
-/

namespace A317333.P11652083016793955019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (2 * n + 2) - A021913 (A073088 (2 * n + 2)).toNat

end

end A317333.P11652083016793955019

namespace A317333

/-- `A073088(2*n+2)-A021913(A073088(2*n+2))` -/
def P11652083016793955019.Spec : Prop :=
  ∀ n, P11652083016793955019.a n = A317333 (n + 1)

end A317333

/-!
# A317335: a(n) = A317332(n) - 8*n.

The programs for A317335, the canonical program `A317335.P6494193205708932808` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317335 has offset 1).

The definition of A317335 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317332, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A317335.P6494193205708932808

`A317332(n+1)-8*(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A317335

/-- `A317332(n+1)-8*(n+1)` -/
def P6494193205708932808.Spec : Prop :=
  ∀ n, P6494193205708932808.a n = A317335 (n + 1)

theorem P6494193205708932808.correct : P6494193205708932808.Spec := by
  intro n
  simp only [A317335, Nat.add_sub_cancel]

end A317335

/-! ## A317335.P15194932066087274471

`floor(atan(Δ[2*xor(n, 2*n)]))`
-/

namespace A317335.P15194932066087274471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌋

end

end A317335.P15194932066087274471

namespace A317335

/-- `floor(atan(Δ[2*xor(n, 2*n)]))` -/
def P15194932066087274471.Spec : Prop :=
  ∀ n, P15194932066087274471.a n = A317335 (n + 1)

end A317335

/-! ## A317335.P3499961146482848978

`xor(1, -char[or(n, n-1)+n])`
-/

namespace A317335.P3499961146482848978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A317335.P3499961146482848978

namespace A317335

/-- `xor(1, -char[or(n, n-1)+n])` -/
def P3499961146482848978.Spec : Prop :=
  ∀ n, P3499961146482848978.a n = A317335 (n + 1)

end A317335

/-! ## A317335.P6062749079175860509

`floor(ϕ*Δ[xor(n, 2*n)]%2)`
-/

namespace A317335.P6062749079175860509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 : ℝ)⌋

end

end A317335.P6062749079175860509

namespace A317335

/-- `floor(ϕ*Δ[xor(n, 2*n)]%2)` -/
def P6062749079175860509.Spec : Prop :=
  ∀ n, P6062749079175860509.a n = A317335 (n + 1)

end A317335

/-! ## A317335.P15026669136364142036

`2-ceil(ratio[acot(xor(n, 2*n))])²`
-/

namespace A317335.P15026669136364142036
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.xor n (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌈f1 (n + 1) / f1 n⌉ ^ 2

end

end A317335.P15026669136364142036

namespace A317335

/-- `2-ceil(ratio[acot(xor(n, 2*n))])²` -/
def P15026669136364142036.Spec : Prop :=
  ∀ n, P15026669136364142036.a n = A317335 (n + 1)

end A317335

/-! ## A317335.P11109031523521579469

`xor(-char[and(n, n+1)+n], -2)`
-/

namespace A317335.P11109031523521579469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (-2)

end

end A317335.P11109031523521579469

namespace A317335

/-- `xor(-char[and(n, n+1)+n], -2)` -/
def P11109031523521579469.Spec : Prop :=
  ∀ n, P11109031523521579469.a n = A317335 (n + 1)

end A317335

/-! ## A317335.P18196637841600430913

`3*char[and(n, n+1)+n]-2`
-/

namespace A317335.P18196637841600430913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) - 2

end

end A317335.P18196637841600430913

namespace A317335

/-- `3*char[and(n, n+1)+n]-2` -/
def P18196637841600430913.Spec : Prop :=
  ∀ n, P18196637841600430913.a n = A317335 (n + 1)

end A317335

/-! ## A317335.P13076243786600343599

`1-3*char[or(n, n-1)+n]`
-/

namespace A317335.P13076243786600343599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((3 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

end

end A317335.P13076243786600343599

namespace A317335

/-- `1-3*char[or(n, n-1)+n]` -/
def P13076243786600343599.Spec : Prop :=
  ∀ n, P13076243786600343599.a n = A317335 (n + 1)

end A317335

/-! ## A317335.P10174450251227055170

`1-3*floor(ratio[acot(xor(n, 2*n))])`
-/

namespace A317335.P10174450251227055170
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.xor n (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 3 * ⌊f1 (n + 1) / f1 n⌋

end

end A317335.P10174450251227055170

namespace A317335

/-- `1-3*floor(ratio[acot(xor(n, 2*n))])` -/
def P10174450251227055170.Spec : Prop :=
  ∀ n, P10174450251227055170.a n = A317335 (n + 1)

end A317335

/-! ## A317335.P2248931544789885973

`4-3*ceil(ratio[acot(xor(n, 2*n))])`
-/

namespace A317335.P2248931544789885973
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.xor n (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - 3 * ⌈f1 (n + 1) / f1 n⌉

end

end A317335.P2248931544789885973

namespace A317335

/-- `4-3*ceil(ratio[acot(xor(n, 2*n))])` -/
def P2248931544789885973.Spec : Prop :=
  ∀ n, P2248931544789885973.a n = A317335 (n + 1)

end A317335

/-! ## A317335.P156415509014669640

`(char[and(n, n+1)+n]+1)²-3`
-/

namespace A317335.P156415509014669640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((if ∃ j, f1 j = n then 1 else 0) + 1) ^ 2 : ℕ) : ℤ) - 3

end

end A317335.P156415509014669640

namespace A317335

/-- `(char[and(n, n+1)+n]+1)²-3` -/
def P156415509014669640.Spec : Prop :=
  ∀ n, P156415509014669640.a n = A317335 (n + 1)

end A317335

/-! ## A317335.P16251337829089209060

`(-2)^(1-char[and(n, n+1)+n])`
-/

namespace A317335.P16251337829089209060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A317335.P16251337829089209060

namespace A317335

/-- `(-2)^(1-char[and(n, n+1)+n])` -/
def P16251337829089209060.Spec : Prop :=
  ∀ n, P16251337829089209060.a n = (A317335 (n + 1) : ℚ)

end A317335

/-! ## A317335.P10618451602202570016

`2-A014709(n)²`
-/

namespace A317335.P10618451602202570016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014709 n ^ 2

end

end A317335.P10618451602202570016

namespace A317335

/-- `2-A014709(n)²` -/
def P10618451602202570016.Spec : Prop :=
  ∀ n, P10618451602202570016.a n = A317335 (n + 1)

end A317335

/-! ## A317335.P18294961553562004978

`A014710(n)²-3`
-/

namespace A317335.P18294961553562004978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 n ^ 2 - 3

end

end A317335.P18294961553562004978

namespace A317335

/-- `A014710(n)²-3` -/
def P18294961553562004978.Spec : Prop :=
  ∀ n, P18294961553562004978.a n = A317335 (n + 1)

end A317335

/-! ## A317335.P4402794874308782399

`floor(tan(Δ[A005811(n)]))`
-/

namespace A317335.P4402794874308782399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (f1 (n + 1) - f1 n : ℝ)⌋

end

end A317335.P4402794874308782399

namespace A317335

/-- `floor(tan(Δ[A005811(n)]))` -/
def P4402794874308782399.Spec : Prop :=
  ∀ n, P4402794874308782399.a n = A317335 (n + 1)

end A317335

/-! ## A317335.P3712487427295241445

`1-3*A014707(n)`
-/

namespace A317335.P3712487427295241445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 3 * A014707 n

end

end A317335.P3712487427295241445

namespace A317335

/-- `1-3*A014707(n)` -/
def P3712487427295241445.Spec : Prop :=
  ∀ n, P3712487427295241445.a n = A317335 (n + 1)

end A317335

/-! ## A317335.P4765975989593361362

`3*A014577(n)-2`
-/

namespace A317335.P4765975989593361362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014577 n - 2

end

end A317335.P4765975989593361362

namespace A317335

/-- `3*A014577(n)-2` -/
def P4765975989593361362.Spec : Prop :=
  ∀ n, P4765975989593361362.a n = A317335 (n + 1)

end A317335

/-! ## A317335.P15661294236802078578

`2-round(sqrt(A343180(n)))²`
-/

namespace A317335.P15661294236802078578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - SequenceMachineLib.roundAway (Real.sqrt (A343180 n : ℝ)) ^ 2

end

end A317335.P15661294236802078578

namespace A317335

/-- `2-round(sqrt(A343180(n)))²` -/
def P15661294236802078578.Spec : Prop :=
  ∀ n, P15661294236802078578.a n = A317335 (n + 1)

end A317335

/-! ## A317335.P3526337181215104929

`floor(1/acot(Δ[A088748(n)]))`
-/

namespace A317335.P3526337181215104929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌋

end

end A317335.P3526337181215104929

namespace A317335

/-- `floor(1/acot(Δ[A088748(n)]))` -/
def P3526337181215104929.Spec : Prop :=
  ∀ n, P3526337181215104929.a n = A317335 (n + 1)

end A317335

/-! ## A317335.P1964876108804417576

`1-3*A038189(n+1)`
-/

namespace A317335.P1964876108804417576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 3 * A038189 (n + 1)

end

end A317335.P1964876108804417576

namespace A317335

/-- `1-3*A038189(n+1)` -/
def P1964876108804417576.Spec : Prop :=
  ∀ n, P1964876108804417576.a n = A317335 (n + 1)

end A317335

/-!
# A317336: a(n) = A317333(n) - 8*n.

The programs for A317336, the canonical program `A317336.P2580992099563760864` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317336 has offset 1).

The definition of A317336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317336.P17124883105013808958

`A317333(n+1)-8*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A317336.P17124883105013808958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317333 (n + 1) - (8 * (n + 1) : ℤ)

end

end A317336.P17124883105013808958

namespace A317336

/-- `A317333(n+1)-8*(n+1)` -/
def P17124883105013808958.Spec : Prop :=
  ∀ n, P17124883105013808958.a n = A317336 (n + 1)

end A317336

/-! ## A317336.P2580992099563760864

`3*A089013(n)-10`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A317336

/-- `3*A089013(n)-10` -/
def P2580992099563760864.Spec : Prop :=
  ∀ n, P2580992099563760864.a n = A317336 (n + 1)

theorem P2580992099563760864.correct : P2580992099563760864.Spec := by
  intro n
  simp only [A317336, Nat.add_sub_cancel]

end A317336

/-! ## A317336.P5834635917208464900

`2-3*(A082410(n+1)+3)`
-/

namespace A317336.P5834635917208464900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - 3 * (A082410 (n + 1) + 3)

end

end A317336.P5834635917208464900

namespace A317336

/-- `2-3*(A082410(n+1)+3)` -/
def P5834635917208464900.Spec : Prop :=
  ∀ n, P5834635917208464900.a n = A317336 (n + 1)

end A317336

/-! ## A317336.P1993460154990849197

`A000034(A103391(n+1))²-11`
-/

namespace A317336.P1993460154990849197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A103391 (n + 1)).toNat ^ 2 - 11

end

end A317336.P1993460154990849197

namespace A317336

/-- `A000034(A103391(n+1))²-11` -/
def P1993460154990849197.Spec : Prop :=
  ∀ n, P1993460154990849197.a n = A317336 (n + 1)

end A317336

/-! ## A317336.P8798038274486794145

`A317333(n+1)+3-A004769(n)`
-/

namespace A317336.P8798038274486794145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317333 (n + 1) + 3 - A004769 n

end

end A317336.P8798038274486794145

namespace A317336

/-- `A317333(n+1)+3-A004769(n)` -/
def P8798038274486794145.Spec : Prop :=
  ∀ n, P8798038274486794145.a n = A317336 (n + 1)

end A317336

/-! ## A317336.P6338227926296500086

`A317335(n+1)+A317333(n+1)-A317332(n+1)`
-/

namespace A317336.P6338227926296500086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317335 (n + 1) + (A317333 (n + 1) - A317332 (n + 1))

end

end A317336.P6338227926296500086

namespace A317336

/-- `A317335(n+1)+A317333(n+1)-A317332(n+1)` -/
def P6338227926296500086.Spec : Prop :=
  ∀ n, P6338227926296500086.a n = A317336 (n + 1)

end A317336

/-! ## A317336.P10394387989265143700

`A317335(A317333(n+1))-8`
-/

namespace A317336.P10394387989265143700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317335 (A317333 (n + 1)).toNat - 8

end

end A317336.P10394387989265143700

namespace A317336

/-- `A317335(A317333(n+1))-8` -/
def P10394387989265143700.Spec : Prop :=
  ∀ n, P10394387989265143700.a n = A317336 (n + 1)

end A317336

/-! ## A317336.P12309649079246691338

`A090740(A317333(n+1)+11)-11`
-/

namespace A317336.P12309649079246691338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090740 (A317333 (n + 1) + 11).toNat - 11

end

end A317336.P12309649079246691338

namespace A317336

/-- `A090740(A317333(n+1)+11)-11` -/
def P12309649079246691338.Spec : Prop :=
  ∀ n, P12309649079246691338.a n = A317336 (n + 1)

end A317336

/-!
# A317339: G.f. A(x) satisfies: Sum_{n>=0} ( 1/A(x) - 1/(1+x)^n )^n = 1.

The programs for A317339, there is no canonical definition to state claims against.
-/

/-! ## A317339.P7202723420780216567

`A178101(A000629(n))+A000621(n+1)`
-/

namespace A317339.P7202723420780216567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (A000629 n).toNat + A000621 (n + 1)

end

end A317339.P7202723420780216567

/-! ## A317339.P10917556460741508124

`A289207(A000311(n))+A189281(A004523(n))`
-/

namespace A317339.P10917556460741508124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A000311 n).toNat + A189281 (A004523 n).toNat

end

end A317339.P10917556460741508124

/-!
# A317340: G.f. A(x) satisfies: 1+x = Sum_{n>=0} ((1+x)^(n+1) - A(x))^n.

The programs for A317340, there is no canonical definition to state claims against.
-/

/-! ## A317340.P747838275894697604

`A245327(9^∑[∑{e}[n, #]])`
-/

namespace A317340.P747838275894697604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (9 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A317340.P747838275894697604

/-!
# A317341: E.g.f. A(x) satisfies: [x^n] 1/(1-x)^(n^2) / A(x)^n = 0 for n >= 1.

The programs for A317341, there is no canonical definition to state claims against.
-/

/-! ## A317341.P8028907636442971459

`A176095(A153302(n))+1`
-/

namespace A317341.P8028907636442971459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (A153302 n).toNat + 1

end

end A317341.P8028907636442971459

/-!
# A317342: O.g.f. A(x) satisfies: [x^n] 1/(1-x)^(n^2) / exp( n*A(x) ) = 0 for n >= 1.

The programs for A317342, there is no canonical definition to state claims against.
-/

/-! ## A317342.P15263419292514555585

`A338975(a(n-2))-2*(∑[n]-3)` with `a(0)=1, a(1)=2`
-/

namespace A317342.P15263419292514555585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A338975 (a (n - 2)).toNat - 2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3)

end

end A317342.P15263419292514555585

/-!
# A317343: E.g.f. A(x) satisfies: [x^n] exp(n^2*x) / A(x)^n = 0 for n >= 1.

The programs for A317343, there is no canonical definition to state claims against.
-/

/-! ## A317343.P3205552583891184164

`n*xor(n%2, A341218(n*round(2^n/3)))+1`
-/

namespace A317343.P3205552583891184164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor ((n % 2 : ℕ) : ℤ) (A341218 ((n : ℤ) * SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)).toNat) + 1

end

end A317343.P3205552583891184164

/-!
# A317344: O.g.f. A(x) satisfies [x^n] exp( n^2*x - n*A(x) ) = 0 for n >= 1.

The programs for A317344, there is no canonical definition to state claims against.
-/

/-! ## A317344.P3599319171840495251

`A356974(A357011(n))`
-/

namespace A317344.P3599319171840495251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356974 (A357011 n).toNat

end

end A317344.P3599319171840495251

/-!
# A317347: O.g.f. A(x) satisfies [x^n] exp( n^3*x - n*A(x) ) = 0 for n >= 1.

The programs for A317347, there is no canonical definition to state claims against.
-/

/-! ## A317347.P9700683820993567334

`A393760(∑[n]+n)`
-/

namespace A317347.P9700683820993567334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393760 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A317347.P9700683820993567334

/-! ## A317347.P1975421540059750887

`record[A393760(n)/A122843(n+1)]`
-/

namespace A317347.P1975421540059750887
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393760 n : ℚ) / (A122843 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317347.P1975421540059750887

/-! ## A317347.P2565521005599085350

`record[A393760(n)/A173333(n+1)]`
-/

namespace A317347.P2565521005599085350
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393760 n : ℚ) / (A173333 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317347.P2565521005599085350

/-!
# A317348: E.g.f. A(x) satisfies: Sum_{n>=0} ( 1/A(x) - exp(-n*x) )^n = 1.

The programs for A317348, there is no canonical definition to state claims against.
-/

/-! ## A317348.P6306608682148684606

`A081606(∑[ceil(n/2)]!)`
-/

namespace A317348.P6306608682148684606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081606 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A317348.P6306608682148684606

/-!
# A317349: G.f. A(x) satisfies: Sum_{n>=0} ( 1/A(x) - (1-x)^n )^n = 1.

The programs for A317349, there is no canonical definition to state claims against.
-/

/-! ## A317349.P6922583609098856965

`A013936(∏[∑[A062761(n)]])`
-/

namespace A317349.P6922583609098856965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062761 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013936 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A317349.P6922583609098856965

/-!
# A317350: G.f. satisfies: A(x) = Sum_{n>=0} ( (1+x)^n - A(x) )^n / (2 - (1+x)^n*A(x))^(n+1).

The programs for A317350, there is no canonical definition to state claims against.
-/

/-! ## A317350.P6509534047039642719

`n*A312282(a(n-1)-1)` with `a(0)=1`
-/

namespace A317350.P6509534047039642719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A312282 (a (n - 1) - 1).toNat

end

end A317350.P6509534047039642719

/-! ## A317350.P7572733398978249852

`A063198(A304637(n))+1`
-/

namespace A317350.P7572733398978249852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063198 (A304637 n).toNat + 1

end

end A317350.P7572733398978249852

/-!
# A317351: G.f. satisfies: A(x) = Sum_{n>=0} ( (1+x)^(n+1) - A(x) )^n / (2 - (1+x)^n*A(x))^(n+1).

The programs for A317351, there is no canonical definition to state claims against.
-/

/-! ## A317351.P12821490767297718247

`A283554(a(n-1))+1` with `a(0)=1, a(1)=2`
-/

namespace A317351.P12821490767297718247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A283554 (a (n - 1)).toNat + 1

end

end A317351.P12821490767297718247

/-!
# A317352: G.f. satisfies: A(x) = 1 + x*A(x) * ( d/dx x*A(x)^2 ).

The programs for A317352, there is no canonical definition to state claims against.
-/

/-! ## A317352.P11384823915975033019

`∏{p}[A360578(n+1)², #]`
-/

namespace A317352.P11384823915975033019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360578 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A317352.P11384823915975033019

/-!
# A317353: G.f. satisfies: A(x) = 1 + x*A(x) * ( d/dx x*A(x)^3 ).

The programs for A317353, there is no canonical definition to state claims against.
-/

/-! ## A317353.P3900568209411372957

`A326835(2*n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A317353.P3900568209411372957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A326835 ((2 * n : ℤ) * a (n - 1)).toNat

end

end A317353.P3900568209411372957

/-!
# A317354: G.f. satisfies: A(x) = 1 + x*A(x) * ( d/dx x*A(x)^4 ).

The programs for A317354, there is no canonical definition to state claims against.
-/

/-! ## A317354.P6103214447609088479

`A295190(n)+A004524(A295183(n))`
-/

namespace A317354.P6103214447609088479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295190 n + A004524 (A295183 n).toNat

end

end A317354.P6103214447609088479

/-!
# A317355: E.g.f. satisfies: A(x) = Sum_{n>=0} ( exp(n*x) - A(x) )^n / (2 - exp(n*x)*A(x))^(n+1).

The programs for A317355, there is no canonical definition to state claims against.
-/

/-! ## A317355.P12668321713494606521

`A119456(∏[∑[A006129(n)]])`
-/

namespace A317355.P12668321713494606521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119456 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A317355.P12668321713494606521

/-!
# A317356: E.g.f. satisfies: A(x) = Sum_{n>=0} ( exp((n+1)*x) - A(x) )^n / (2 - exp(n*x)*A(x))^(n+1).

The programs for A317356, there is no canonical definition to state claims against.
-/

/-! ## A317356.P4524307553386100426

`A284460(∏[record[A184880(n)]])`
-/

namespace A317356.P4524307553386100426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184880 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284460 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A317356.P4524307553386100426

/-!
# A317358: a(n) is the smallest number k > 1 such that 1^(k-1) + 2^(k-1) + ... + n^(k-1) == n (mod k).

The programs for A317358, there is no canonical definition to state claims against.
-/

/-! ## A317358.P8921305017636275920

`and(A133907(n+1), A211997(n+1))`
-/

namespace A317358.P8921305017636275920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133907 (n + 1)) (A211997 (n + 1))

end

end A317358.P8921305017636275920

/-! ## A317358.P17055924119965909840

`A133907(n+1)%record[A133906(2*n+3)]`
-/

namespace A317358.P17055924119965909840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133906 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133907 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A317358.P17055924119965909840

/-! ## A317358.P4113432094172740610

`A133907(n+1)+A073424(A046127(n))`
-/

namespace A317358.P4113432094172740610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133907 (n + 1) + A073424 (A046127 n).toNat

end

end A317358.P4113432094172740610

/-! ## A317358.P1287697687453922506

`A133907(n+1)+A000038(A237714(n))`
-/

namespace A317358.P1287697687453922506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133907 (n + 1) + A000038 (A237714 n).toNat

end

end A317358.P1287697687453922506

/-! ## A317358.P6076421670310956843

`A133907(n+1)+A010054(A071695(3*n+5))`
-/

namespace A317358.P6076421670310956843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133907 (n + 1) + A010054 (A071695 (3 * n + 5)).toNat

end

end A317358.P6076421670310956843

/-!
# A317364: Expansion of e.g.f. exp(2*x/(1 + x)).

The programs for A317364, there is no canonical definition to state claims against.
-/

/-! ## A317364.P10356931010577905556

`(2*a(n-1)+(n-1)*a(n-2))*(2-n)` with `a(0)=1, a(1)=2`
-/

namespace A317364.P10356931010577905556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 * a (n - 1) + ((n : ℤ) - 1) * a (n - 2)) * (2 - (n : ℤ))

end

end A317364.P10356931010577905556

/-!
# A317365: Expansion of e.g.f. x*exp(x/(1 + x))/(1 + x).

The programs for A317365, there is no canonical definition to state claims against.
-/

/-! ## A317365.P12432809096654186618

`n*A056920(A004275(n))`
-/

namespace A317365.P12432809096654186618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056920 (A004275 n).toNat

end

end A317365.P12432809096654186618

/-! ## A317365.P3854875745504431549

`n*A056920(record[A056944(n)])`
-/

namespace A317365.P3854875745504431549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056920 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A317365.P3854875745504431549

/-! ## A317365.P7454311681443797789

`A111884(n)-A056920(2*n)`
-/

namespace A317365.P7454311681443797789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111884 n - A056920 (2 * n)

end

end A317365.P7454311681443797789

/-! ## A317365.P113811375154666960

`(A293116(n)-A009940(n))*A033999(n)`
-/

namespace A317365.P113811375154666960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A293116 n - A009940 n) * A033999 n

end

end A317365.P113811375154666960

/-! ## A317365.P9404250057736471259

`n*A131758(A161680(n))`
-/

namespace A317365.P9404250057736471259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131758 (A161680 n).toNat

end

end A317365.P9404250057736471259

/-! ## A317365.P4919370643898015307

`n*A131758(A000217(n)-n)`
-/

namespace A317365.P4919370643898015307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131758 (A000217 n - (n : ℤ)).toNat

end

end A317365.P4919370643898015307

/-!
# A317366: Expansion of e.g.f. exp(exp(x/(1 - x)) - 1)/(1 - x).

The programs for A317366, there is no canonical definition to state claims against.
-/

/-! ## A317366.P9448283542853234245

`A084357(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A317366.P9448283542853234245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084357 n + (n : ℤ) * a (n - 1)

end

end A317366.P9448283542853234245

/-! ## A317366.P5904345869656463188

`A152912(a(n-1)-1)` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A317366.P5904345869656463188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  A152912 (a (n - 1) - 1).toNat

end

end A317366.P5904345869656463188

/-!
# A317367: Sprague-Grundy values for the Node-Kayles game played on the scalloped graph where vertices that are 3 away from each other are connected.

The programs for A317367, there is no canonical definition to state claims against.
-/

/-! ## A317367.P7004798160092678020

`A071461(A043320(n+1)+9)`
-/

namespace A317367.P7004798160092678020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071461 (A043320 (n + 1) + 9).toNat

end

end A317367.P7004798160092678020

/-!
# A317370: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317370, there is no canonical definition to state claims against.
-/

/-! ## A317370.P15980889378813149259

`A317376(∑[4*n]+1)`
-/

namespace A317370.P15980889378813149259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317370.P15980889378813149259

/-! ## A317370.P15538785756323827104

`A317376(A001844(n))+A011736(n)`
-/

namespace A317370.P15538785756323827104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (A001844 n).toNat + A011736 n

end

end A317370.P15538785756323827104

/-! ## A317370.P1320737755188827045

`A317376(A001844(n))+A185284(n)`
-/

namespace A317370.P1320737755188827045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (A001844 n).toNat + A185284 n

end

end A317370.P1320737755188827045

/-! ## A317370.P8088477359841788881

`A145568(n)*A317376(A001844(n))`
-/

namespace A317370.P8088477359841788881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 n * A317376 (A001844 n).toNat

end

end A317370.P8088477359841788881

/-!
# A317371: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317371, there is no canonical definition to state claims against.
-/

/-! ## A317371.P5134532305910883015

`A317376(∑[n+2]+4)`
-/

namespace A317371.P5134532305910883015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317371.P5134532305910883015

/-! ## A317371.P9302794539469451646

`A317376(A167614(n+1))+A025469(n)`
-/

namespace A317371.P9302794539469451646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (A167614 (n + 1)).toNat + A025469 n

end

end A317371.P9302794539469451646

/-! ## A317371.P12661165041682332990

`A096811(n)*A317376(A167614(n+1))`
-/

namespace A317371.P12661165041682332990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096811 n * A317376 (A167614 (n + 1)).toNat

end

end A317371.P12661165041682332990

/-! ## A317371.P5897731203414869194

`A317376(A167614(n+1))^A178487(n)`
-/

namespace A317371.P5897731203414869194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317376 (A167614 (n + 1)).toNat : ℚ) ^ (A178487 n : ℤ)

end

end A317371.P5897731203414869194

/-! ## A317371.P13054565774468712893

`A317376(A167614(n+1))%A199552(n)`
-/

namespace A317371.P13054565774468712893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317376 (A167614 (n + 1)).toNat) (A199552 n)

end

end A317371.P13054565774468712893

/-!
# A317372: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317372, there is no canonical definition to state claims against.
-/

/-! ## A317372.P14261154715589318558

`A317376(A374004(n+1))`
-/

namespace A317372.P14261154715589318558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (A374004 (n + 1)).toNat

end

end A317372.P14261154715589318558

/-! ## A317372.P9913437135638463714

`A317376(A141214(n)+7)`
-/

namespace A317372.P9913437135638463714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (A141214 n + 7).toNat

end

end A317372.P9913437135638463714

/-! ## A317372.P17005065717088753740

`A317376(A052905(n)+9)`
-/

namespace A317372.P17005065717088753740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (A052905 n + 9).toNat

end

end A317372.P17005065717088753740

/-! ## A317372.P7521295973706980238

`A317376(A055999(n)+10)`
-/

namespace A317372.P7521295973706980238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (A055999 n + 10).toNat

end

end A317372.P7521295973706980238

/-! ## A317372.P15950603277019543317

`A317376(A167614(n+2)+1)`
-/

namespace A317372.P15950603277019543317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (A167614 (n + 2) + 1).toNat

end

end A317372.P15950603277019543317

/-!
# A317373: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317373, there is no canonical definition to state claims against.
-/

/-! ## A317373.P11825801691513960584

`A317376(A374005(n+1))`
-/

namespace A317373.P11825801691513960584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (A374005 (n + 1)).toNat

end

end A317373.P11825801691513960584

/-! ## A317373.P13287152940976564212

`A317376(A167499(n+3))`
-/

namespace A317373.P13287152940976564212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (A167499 (n + 3)).toNat

end

end A317373.P13287152940976564212

/-! ## A317373.P2990201318845327722

`A317376(eq[6, A131818(n+1)])`
-/

namespace A317373.P2990201318845327722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317373.P2990201318845327722

/-! ## A317373.P17129125207309246590

`A317376(Δ[A264443(n)])`
-/

namespace A317373.P17129125207309246590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (f1 (n + 1) - f1 n).toNat

end

end A317373.P17129125207309246590

/-! ## A317373.P14131532788201248391

`A317376(eq[2, A092921(n)])`
-/

namespace A317373.P14131532788201248391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317373.P14131532788201248391

/-!
# A317374: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317374, there is no canonical definition to state claims against.
-/

/-! ## A317374.P13060406928831042906

`A317376(A374007(n+1))`
-/

namespace A317374.P13060406928831042906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (A374007 (n + 1)).toNat

end

end A317374.P13060406928831042906

/-! ## A317374.P15313471947847685419

`A317376(eq[7, A131818(n+1)])`
-/

namespace A317374.P15313471947847685419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317374.P15313471947847685419

/-! ## A317374.P15638041140260526383

`A317376(A052905(n+3))`
-/

namespace A317374.P15638041140260526383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (A052905 (n + 3)).toNat

end

end A317374.P15638041140260526383

/-! ## A317374.P3184828270117640036

`A317376(eq[3, A219347(n)])`
-/

namespace A317374.P3184828270117640036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317374.P3184828270117640036

/-! ## A317374.P14045489191448955158

`A317376(eq[5, A193592(n)])`
-/

namespace A317374.P14045489191448955158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317374.P14045489191448955158

/-!
# A317375: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317375, there is no canonical definition to state claims against.
-/

/-! ## A317375.P15370048793186347494

`A317376(A374008(n+1))`
-/

namespace A317375.P15370048793186347494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (A374008 (n + 1)).toNat

end

end A317375.P15370048793186347494

/-! ## A317375.P1614060107707330705

`A317376(A167487(n+5))`
-/

namespace A317375.P1614060107707330705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (A167487 (n + 5)).toNat

end

end A317375.P1614060107707330705

/-! ## A317375.P7420871515422692281

`A317376(eq[8, A131818(n+1)])`
-/

namespace A317375.P7420871515422692281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317375.P7420871515422692281

/-! ## A317375.P3582560713754908961

`A317376(eq[4, A219347(n)])`
-/

namespace A317375.P3582560713754908961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317375.P3582560713754908961

/-! ## A317375.P3368515844618808805

`A317376(eq[6, A193592(n)])`
-/

namespace A317375.P3368515844618808805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317375.P3368515844618808805

/-!
# A317376: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317376, there is no canonical definition to state claims against.
-/

/-! ## A317376.P3258132201669627563

`A306143(n+1)+A116087(A250486(n))`
-/

namespace A317376.P3258132201669627563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (n + 1) + A116087 (A250486 n).toNat

end

end A317376.P3258132201669627563

/-! ## A317376.P8563697775465655292

`A306143(n+1)+A014707(A022171(n))`
-/

namespace A317376.P8563697775465655292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (n + 1) + A014707 (A022171 n).toNat

end

end A317376.P8563697775465655292

/-! ## A317376.P15312161027141421470

`A306143(n+1)+A037824(A022173(n))`
-/

namespace A317376.P15312161027141421470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (n + 1) + A037824 (A022173 n).toNat

end

end A317376.P15312161027141421470

/-! ## A317376.P4480803326005471571

`A316383(n+1)+A166301(A022166(n))`
-/

namespace A317376.P4480803326005471571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (n + 1) + A166301 (A022166 n).toNat

end

end A317376.P4480803326005471571

/-! ## A317376.P1567893553438164164

`A306143(n+1)+A094186(A174674(n))`
-/

namespace A317376.P1567893553438164164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (n + 1) + A094186 (A174674 n).toNat

end

end A317376.P1567893553438164164

/-!
# A317377: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317377, there is no canonical definition to state claims against.
-/

/-! ## A317377.P4512364264164456811

`A317383(∑[4*n]+1)`
-/

namespace A317377.P4512364264164456811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317383 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317377.P4512364264164456811

/-! ## A317377.P9604589442113510049

`record[A003982(n)*A317383(n+1)]`
-/

namespace A317377.P9604589442113510049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A317383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317377.P9604589442113510049

/-! ## A317377.P7921779909318768952

`record[gcd(A008482(n), A317383(n+1))]`
-/

namespace A317377.P7921779909318768952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A317383 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317377.P7921779909318768952

/-! ## A317377.P8421619668632634049

`or(A000007(n), A317383(A001844(n)))`
-/

namespace A317377.P8421619668632634049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A317383 (A001844 n).toNat)

end

end A317377.P8421619668632634049

/-! ## A317377.P9318144990283051773

`or(A001842(n), A317383(A001844(n)))`
-/

namespace A317377.P9318144990283051773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001842 n) (A317383 (A001844 n).toNat)

end

end A317377.P9318144990283051773

/-!
# A317378: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317378, there is no canonical definition to state claims against.
-/

/-! ## A317378.P9698923549987481184

`A317383(∑[n+2]+4)`
-/

namespace A317378.P9698923549987481184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317383 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317378.P9698923549987481184

/-! ## A317378.P6000706262525136625

`A317383(A167614(n+1))+A185284(n)`
-/

namespace A317378.P6000706262525136625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317383 (A167614 (n + 1)).toNat + A185284 n

end

end A317378.P6000706262525136625

/-! ## A317378.P6725712421242511435

`A317383(A167614(n+1))%A041240(n)`
-/

namespace A317378.P6725712421242511435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317383 (A167614 (n + 1)).toNat) (A041240 n)

end

end A317378.P6725712421242511435

/-! ## A317378.P9227399277873790939

`lcm(A033999(n), A317383(A167614(n+1)))`
-/

namespace A317378.P9227399277873790939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A317383 (A167614 (n + 1)).toNat)

end

end A317378.P9227399277873790939

/-! ## A317378.P12473424669861243039

`or(A048298(n), A317383(A167614(n+1)))`
-/

namespace A317378.P12473424669861243039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048298 n) (A317383 (A167614 (n + 1)).toNat)

end

end A317378.P12473424669861243039

/-!
# A317379: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317379, there is no canonical definition to state claims against.
-/

/-! ## A317379.P10051846332679413096

`A317383(∑[n+3]+7)`
-/

namespace A317379.P10051846332679413096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317383 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A317379.P10051846332679413096

/-! ## A317379.P16288522379887454351

`lcm(A146291(n+1), A317383(A027379(n+2)))`
-/

namespace A317379.P16288522379887454351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A146291 (n + 1)) (A317383 (A027379 (n + 2)).toNat)

end

end A317379.P16288522379887454351

/-!
# A317380: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317380, there is no canonical definition to state claims against.
-/

/-! ## A317380.P740665950951684028

`A317383(A167499(n+3))`
-/

namespace A317380.P740665950951684028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317383 (A167499 (n + 3)).toNat

end

end A317380.P740665950951684028

/-! ## A317380.P7591671068042792080

`A317383(A155212(n)+13)`
-/

namespace A317380.P7591671068042792080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317383 (A155212 n + 13).toNat

end

end A317380.P7591671068042792080

/-! ## A317380.P3813307953248969468

`A317383(A133263(n+4)+3)`
-/

namespace A317380.P3813307953248969468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317383 (A133263 (n + 4) + 3).toNat

end

end A317380.P3813307953248969468

/-! ## A317380.P13491486426749886206

`A317383(A167614(n+1)+A005408(n)+8)`
-/

namespace A317380.P13491486426749886206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317383 (A167614 (n + 1) + A005408 n + 8).toNat

end

end A317380.P13491486426749886206

/-! ## A317380.P2420619481450910129

`A317383(A374005(n+1))`
-/

namespace A317380.P2420619481450910129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317383 (A374005 (n + 1)).toNat

end

end A317380.P2420619481450910129

/-!
# A317381: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317381, there is no canonical definition to state claims against.
-/

/-! ## A317381.P9854727487459022764

`A317383(∑[n+5]+16)`
-/

namespace A317381.P9854727487459022764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317383 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A317381.P9854727487459022764

/-! ## A317381.P2200603872498544101

`char[A014682(n)]*A317383(A052905(n+3))`
-/

namespace A317381.P2200603872498544101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A317383 (A052905 (n + 3)).toNat

end

end A317381.P2200603872498544101

/-! ## A317381.P6461920135848537784

`(n-A004442(n))²*A317383(A052905(n+3))`
-/

namespace A317381.P6461920135848537784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004442 n) ^ 2 * A317383 (A052905 (n + 3)).toNat

end

end A317381.P6461920135848537784

/-! ## A317381.P11215903681620821966

`A008683(∏{p}[n+1, #])²*A317383(A052905(n+3))`
-/

namespace A317381.P11215903681620821966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f1 n), p) ^ 2 * A317383 (A052905 (n + 3)).toNat

end

end A317381.P11215903681620821966

/-! ## A317381.P7690737319106711323

`A001221(A006450(n+1))*A317383(A052905(n+3))`
-/

namespace A317381.P7690737319106711323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006450 (n + 1)).toNat * A317383 (A052905 (n + 3)).toNat

end

end A317381.P7690737319106711323

/-!
# A317382: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317382, there is no canonical definition to state claims against.
-/

/-! ## A317382.P5200652963701855838

`A317383(A167487(n+5))`
-/

namespace A317382.P5200652963701855838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317383 (A167487 (n + 5)).toNat

end

end A317382.P5200652963701855838

/-! ## A317382.P8691739536772466386

`A317383(A167499(n+5)+2)`
-/

namespace A317382.P8691739536772466386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317383 (A167499 (n + 5) + 2).toNat

end

end A317382.P8691739536772466386

/-! ## A317382.P10586429210505200473

`A317383(A000124(n+6)+6)`
-/

namespace A317382.P10586429210505200473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317383 (A000124 (n + 6) + 6).toNat

end

end A317382.P10586429210505200473

/-! ## A317382.P4484857515302659600

`A317383(A000217(n+6)+7)`
-/

namespace A317382.P4484857515302659600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317383 (A000217 (n + 6) + 7).toNat

end

end A317382.P4484857515302659600

/-! ## A317382.P14365327851541488973

`A317383(A000096(n+6)-(n-1))`
-/

namespace A317382.P14365327851541488973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317383 (A000096 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A317382.P14365327851541488973

/-!
# A317383: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317383, there is no canonical definition to state claims against.
-/

/-! ## A317383.P16175827539733892869

`A306166(n+1)+A321936(A001263(n+1))²`
-/

namespace A317383.P16175827539733892869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (n + 1) + A321936 (A001263 (n + 1)).toNat ^ 2

end

end A317383.P16175827539733892869

/-! ## A317383.P10682357092754982813

`A306166(n+1)+A316717(A316576(n+1))²`
-/

namespace A317383.P10682357092754982813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (n + 1) + A316717 (A316576 (n + 1)).toNat ^ 2

end

end A317383.P10682357092754982813

/-! ## A317383.P11276221445823567327

`A306166(n+1)+A014707(A022171(n))`
-/

namespace A317383.P11276221445823567327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (n + 1) + A014707 (A022171 n).toNat

end

end A317383.P11276221445823567327

/-! ## A317383.P13823232543615302793

`A306166(n+1)+A240328(A051885(2*n+3))`
-/

namespace A317383.P13823232543615302793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (n + 1) + A240328 (A051885 (2 * n + 3)).toNat

end

end A317383.P13823232543615302793

/-! ## A317383.P5215060342224241023

`A306166(n+1)+A058348(A116533(n+1))`
-/

namespace A317383.P5215060342224241023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (n + 1) + A058348 (A116533 (n + 1)).toNat

end

end A317383.P5215060342224241023

/-!
# A317385: Smallest positive integer that has exactly n representations of the form 1 + p1 * (1 + p2* ... * (1 + p_j)...), where [p1, ..., p_j] is a (possibly empty) list of distinct primes.

The programs for A317385, there is no canonical definition to state claims against.
-/

/-! ## A317385.P13804302539215911641

`A317390(∑[n]+1)`
-/

namespace A317385.P13804302539215911641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317385.P13804302539215911641

/-! ## A317385.P6167574830854524132

`or(char[1], A317390(A000124(n)))`
-/

namespace A317385.P6167574830854524132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A317390 (A000124 n).toNat)

end

end A317385.P6167574830854524132

/-! ## A317385.P8480066210351015665

`A317390(A000124(n))%A278124(n)`
-/

namespace A317385.P8480066210351015665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317390 (A000124 n).toNat) (A278124 n)

end

end A317385.P8480066210351015665

/-! ## A317385.P5217649073582113283

`A007318(∑[n])*A317390(A000124(n))`
-/

namespace A317385.P5217649073582113283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A317390 (A000124 n).toNat

end

end A317385.P5217649073582113283

/-! ## A317385.P10499379595516080710

`A057427(n+1)*A317390(A000124(n))`
-/

namespace A317385.P10499379595516080710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A317390 (A000124 n).toNat

end

end A317385.P10499379595516080710

/-!
# A317386: a(n) = abs(A317330(n) - n).

The programs for A317386, there is no canonical definition to state claims against.
-/

/-! ## A317386.P17346279959519556089

`abs(A317330(n+1)-(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A317386.P17346279959519556089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317330 (n + 1) - (n + 1 : ℤ)|

end

end A317386.P17346279959519556089

/-! ## A317386.P6085667064571475509

`lcm(n+1-A317330(n+1), A057077(n))`
-/

namespace A317386.P6085667064571475509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) - A317330 (n + 1)) (A057077 n)

end

end A317386.P6085667064571475509

/-! ## A317386.P10851203608739918684

`A097140(n)+A010688(A056107(3*(n+1)))`
-/

namespace A317386.P10851203608739918684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 n + A010688 (A056107 (3 * (n + 1))).toNat

end

end A317386.P10851203608739918684

/-! ## A317386.P7490915289133213200

`A303847(n+1)%A162880(A303784(n+1))`
-/

namespace A317386.P7490915289133213200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303847 (n + 1)) (A162880 (A303784 (n + 1)).toNat)

end

end A317386.P7490915289133213200

/-! ## A317386.P12220679740736682873

`A004438(A303785(n+1))-A142150(3*n+3)`
-/

namespace A317386.P12220679740736682873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (A303785 (n + 1)).toNat - A142150 (3 * n + 3)

end

end A317386.P12220679740736682873

/-!
# A317387: Square array T(n, k) read by antidiagonals upwards, n > 0 and k > 0: T(n, k) is the least positive multiple of n that contains k as a substring in its decimal representation.

The programs for A317387, there is no canonical definition to state claims against.
-/

/-! ## A317387.P14962094052518170624

`(C(comp[∑[n]]-n, 2)-n)*A317175(n+1)`
-/

namespace A317387.P14962094052518170624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A317175 (n + 1)

end

end A317387.P14962094052518170624

/-! ## A317387.P2543990557858240758

`A004736(n+1)*A317175(n+1)`
-/

namespace A317387.P2543990557858240758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A317175 (n + 1)

end

end A317387.P2543990557858240758

/-! ## A317387.P6033181118113221664

`(A025581(n)+1)*A317175(n+1)`
-/

namespace A317387.P6033181118113221664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A317175 (n + 1)

end

end A317387.P6033181118113221664

/-! ## A317387.P8755629370386419131

`A317175(n+1)*A373214(n+1)`
-/

namespace A317387.P8755629370386419131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317175 (n + 1) * A373214 (n + 1)

end

end A317387.P8755629370386419131

/-! ## A317387.P15173109222550835601

`A193592(comp[∑[n]])*A317175(n+1)`
-/

namespace A317387.P15173109222550835601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A317175 (n + 1)

end

end A317387.P15173109222550835601

/-! ## A317387.P9553739063903946763

`sqrt(A055461(n+1))*A317175(n+1)`
-/

namespace A317387.P9553739063903946763
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) * (A317175 (n + 1) : ℝ)

end

end A317387.P9553739063903946763

/-! ## A317387.P743089164963994459

`A057555(2*(n+1))*A317175(n+1)`
-/

namespace A317387.P743089164963994459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * (n + 1)) * A317175 (n + 1)

end

end A317387.P743089164963994459

/-! ## A317387.P6229706546480547131

`A005496(A025581(n))*A317175(n+1)`
-/

namespace A317387.P6229706546480547131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A025581 n).toNat * A317175 (n + 1)

end

end A317387.P6229706546480547131

/-! ## A317387.P13538739627802361746

`A008619(A099375(n))*A317175(n+1)`
-/

namespace A317387.P13538739627802361746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A099375 n).toNat * A317175 (n + 1)

end

end A317387.P13538739627802361746

/-! ## A317387.P10522318961694303852

`A000005(A130321(n))*A317175(n+1)`
-/

namespace A317387.P10522318961694303852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A317175 (n + 1)

end

end A317387.P10522318961694303852

/-!
# A317391: Positive integers that have a unique representation of the form 1 + p1 * (1 + p2* ... * (1 + p_j)...), where [p1, ..., p_j] is a (possibly empty) list of distinct primes.

The programs for A317391, there is no canonical definition to state claims against.
-/

/-! ## A317391.P5730906557773131753

`record[(n+2)/A000032(A317241(n+2))]`
-/

namespace A317391.P5730906557773131753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A000032 (A317241 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317391.P5730906557773131753

/-! ## A317391.P3612543674778579617

`eq[1, A317241(n+1)]+1`
-/

namespace A317391.P3612543674778579617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A317391.P3612543674778579617

/-! ## A317391.P7935474225835840703

`eq[1, A317241(A000038(n)+n)]`
-/

namespace A317391.P7935474225835840703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317391.P7935474225835840703

/-! ## A317391.P14083403550671453890

`eq[A054977(n), A317241(A028310(n))]`
-/

namespace A317391.P14083403550671453890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317391.P14083403550671453890

/-! ## A317391.P15372063476667473312

`eq[A057427(n), A317241(A028310(n))]`
-/

namespace A317391.P15372063476667473312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317391.P15372063476667473312

/-! ## A317391.P9881455731186679089

`eq[A000038(n)!, A317241(A028310(n))]`
-/

namespace A317391.P9881455731186679089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317391.P9881455731186679089

/-! ## A317391.P4131879589745411144

`eq[A019429(2*n), A317241(A028310(n))]`
-/

namespace A317391.P4131879589745411144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317391.P4131879589745411144

/-! ## A317391.P14710995224102901906

`eq[A178334(n)², A317241(A028310(n))]`
-/

namespace A317391.P14710995224102901906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317391.P14710995224102901906

/-! ## A317391.P9053014653286608787

`eq[A011602(n²), A317241(A028310(n))]`
-/

namespace A317391.P9053014653286608787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317391.P9053014653286608787

/-!
# A317392: Positive integers that have exactly two representations of the form 1 + p1 * (1 + p2* ... * (1 + p_j)...), where [p1, ..., p_j] is a (possibly empty) list of distinct primes.

The programs for A317392, there is no canonical definition to state claims against.
-/

/-! ## A317392.P9182143315870795427

`eq[2, A317241(n+1)]+1`
-/

namespace A317392.P9182143315870795427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A317392.P9182143315870795427

/-! ## A317392.P5612108979948107041

`A020725(eq[2, A317241(n+1)])`
-/

namespace A317392.P5612108979948107041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317392.P5612108979948107041

/-! ## A317392.P8691320335645457511

`A114637(eq[2, A317241(n+1)])`
-/

namespace A317392.P8691320335645457511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317392.P8691320335645457511

/-! ## A317392.P6147488427921733339

`eq[2, A317241(A028310(n))]`
-/

namespace A317392.P6147488427921733339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317392.P6147488427921733339

/-! ## A317392.P11337395816321947011

`eq[2, A317241(A000038(n)+n)]`
-/

namespace A317392.P11337395816321947011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317392.P11337395816321947011

/-! ## A317392.P15400323703303618000

`eq[2, A317241(A065033(2*n))]`
-/

namespace A317392.P15400323703303618000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317392.P15400323703303618000

/-! ## A317392.P11356555648736208191

`eq[2, A317241(A008619(A004273(n)))]`
-/

namespace A317392.P11356555648736208191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317392.P11356555648736208191

/-! ## A317392.P939323711203290504

`eq[2, A317241(A233583(n+1))]`
-/

namespace A317392.P939323711203290504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317392.P939323711203290504

/-!
# A317393: Positive integers that have exactly three representations of the form 1 + p1 * (1 + p2* ... * (1 + p_j)...), where [p1, ..., p_j] is a (possibly empty) list of distinct primes.

The programs for A317393, there is no canonical definition to state claims against.
-/

/-! ## A317393.P7174995659582667140

`eq[3, A317241(n+1)]+1`
-/

namespace A317393.P7174995659582667140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A317393.P7174995659582667140

/-! ## A317393.P4601700730524714871

`eq[3, A317241(A028310(n))]`
-/

namespace A317393.P4601700730524714871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317393.P4601700730524714871

/-! ## A317393.P13867115880803610245

`A020725(eq[3, A317241(n+1)])`
-/

namespace A317393.P13867115880803610245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317393.P13867115880803610245

/-! ## A317393.P2491338771818296912

`A114637(eq[3, A317241(n+1)])`
-/

namespace A317393.P2491338771818296912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317393.P2491338771818296912

/-! ## A317393.P15340353603236918845

`eq[3, A317241(A065033(2*n))]`
-/

namespace A317393.P15340353603236918845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317393.P15340353603236918845

/-! ## A317393.P6207810104976761640

`eq[3, A317241(A233583(n+1))]`
-/

namespace A317393.P6207810104976761640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317393.P6207810104976761640

/-!
# A317394: Positive integers that have exactly four representations of the form 1 + p1 * (1 + p2* ... * (1 + p_j)...), where [p1, ..., p_j] is a (possibly empty) list of distinct primes.

The programs for A317394, there is no canonical definition to state claims against.
-/

/-! ## A317394.P3458365773238515088

`eq[4, A317241(A028310(n))]`
-/

namespace A317394.P3458365773238515088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317394.P3458365773238515088

/-! ## A317394.P12029073086812941336

`A020725(eq[4, A317241(n+1)])`
-/

namespace A317394.P12029073086812941336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317394.P12029073086812941336

/-! ## A317394.P8214872924513524377

`A114637(eq[4, A317241(n+1)])`
-/

namespace A317394.P8214872924513524377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317394.P8214872924513524377

/-! ## A317394.P5935641415087509013

`A317390(∑[n+5]+6)`
-/

namespace A317394.P5935641415087509013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A317394.P5935641415087509013

/-! ## A317394.P14245076101172736470

`A317390(Δ[A023545(n+1)])+C(n, 64)`
-/

namespace A317394.P14245076101172736470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (f1 (n + 1) - f1 n).toNat + (Nat.choose n 64 : ℤ)

end

end A317394.P14245076101172736470

/-!
# A317395: Positive integers that have exactly five representations of the form 1 + p1 * (1 + p2* ... * (1 + p_j)...), where [p1, ..., p_j] is a (possibly empty) list of distinct primes.

The programs for A317395, there is no canonical definition to state claims against.
-/

/-! ## A317395.P5441065558794543715

`A317390(∑[n+6]+10)`
-/

namespace A317395.P5441065558794543715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A317395.P5441065558794543715

/-! ## A317395.P6623062379832411642

`or(char[2], A317390(A155212(n+2)+3))`
-/

namespace A317395.P6623062379832411642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A317390 (A155212 (n + 2) + 3).toNat)

end

end A317395.P6623062379832411642

/-! ## A317395.P18166647194258376756

`A007318(C(n, 2))*A317390(A155212(n+2)+3)`
-/

namespace A317395.P18166647194258376756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A317390 (A155212 (n + 2) + 3).toNat

end

end A317395.P18166647194258376756

/-! ## A317395.P13187062797097777532

`A317390(A155212(n+2)+3)/A007318(C(2, n))`
-/

namespace A317395.P13187062797097777532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317390 (A155212 (n + 2) + 3).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A317395.P13187062797097777532

/-! ## A317395.P14193301520628162899

`A317390(A155212(n+2)+3)+char[A000045(n+16)]`
-/

namespace A317395.P14193301520628162899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 16)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (A155212 (n + 2) + 3).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A317395.P14193301520628162899

/-!
# A317396: Positive integers that have exactly six representations of the form 1 + p1 * (1 + p2* ... * (1 + p_j)...), where [p1, ..., p_j] is a (possibly empty) list of distinct primes.

The programs for A317396, there is no canonical definition to state claims against.
-/

/-! ## A317396.P12569790817493594483

`A317390(A055999(n+4))`
-/

namespace A317396.P12569790817493594483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (A055999 (n + 4)).toNat

end

end A317396.P12569790817493594483

/-! ## A317396.P16980633842058903432

`A317390(eq[4, A219347(n)])`
-/

namespace A317396.P16980633842058903432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317396.P16980633842058903432

/-! ## A317396.P17332940648105590164

`A317390(eq[6, A193592(n)])`
-/

namespace A317396.P17332940648105590164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317396.P17332940648105590164

/-! ## A317396.P95036639925852651

`A317390(Δ[A023551(n+2)])`
-/

namespace A317396.P95036639925852651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (f1 (n + 1) - f1 n).toNat

end

end A317396.P95036639925852651

/-! ## A317396.P7687411308135790399

`A317390(A141214(n+4)-3)`
-/

namespace A317396.P7687411308135790399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (A141214 (n + 4) - 3).toNat

end

end A317396.P7687411308135790399

/-!
# A317397: Positive integers that have exactly seven representations of the form 1 + p1 * (1 + p2* ... * (1 + p_j)...), where [p1, ..., p_j] is a (possibly empty) list of distinct primes.

The programs for A317397, there is no canonical definition to state claims against.
-/

/-! ## A317397.P18376998908997222610

`A317390(eq[5, A219347(n)])`
-/

namespace A317397.P18376998908997222610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317397.P18376998908997222610

/-! ## A317397.P8081176559967732562

`A317390(eq[7, A193592(n)])`
-/

namespace A317397.P8081176559967732562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317397.P8081176559967732562

/-! ## A317397.P5017113718257556542

`A317390(A155212(n+4)+1)`
-/

namespace A317397.P5017113718257556542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (A155212 (n + 4) + 1).toNat

end

end A317397.P5017113718257556542

/-! ## A317397.P7442878828055545160

`A317390(A052905(n+5)-2)`
-/

namespace A317397.P7442878828055545160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (A052905 (n + 5) - 2).toNat

end

end A317397.P7442878828055545160

/-! ## A317397.P8489508365541431921

`A317390(A000096(n+7)-6)`
-/

namespace A317397.P8489508365541431921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (A000096 (n + 7) - 6).toNat

end

end A317397.P8489508365541431921

/-!
# A317398: Positive integers that have exactly eight representations of the form 1 + p1 * (1 + p2* ... * (1 + p_j)...), where [p1, ..., p_j] is a (possibly empty) list of distinct primes.

The programs for A317398, there is no canonical definition to state claims against.
-/

/-! ## A317398.P4735312799487398342

`A317390(A155212(n+5))`
-/

namespace A317398.P4735312799487398342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (A155212 (n + 5)).toNat

end

end A317398.P4735312799487398342

/-! ## A317398.P10220152700523705575

`A317390(eq[5, A264391(n)])`
-/

namespace A317398.P10220152700523705575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317398.P10220152700523705575

/-! ## A317398.P14214222452660636108

`A317390(eq[6, A219347(n)])`
-/

namespace A317398.P14214222452660636108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317398.P14214222452660636108

/-! ## A317398.P11522996799514821682

`A317390(eq[8, A193592(n)])`
-/

namespace A317398.P11522996799514821682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317398.P11522996799514821682

/-! ## A317398.P15422573531254910627

`A317390(A000217(n+9)-8)`
-/

namespace A317398.P15422573531254910627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (A000217 (n + 9) - 8).toNat

end

end A317398.P15422573531254910627

/-!
# A317399: Positive integers that have exactly nine representations of the form 1 + p1 * (1 + p2* ... * (1 + p_j)...), where [p1, ..., p_j] is a (possibly empty) list of distinct primes.

The programs for A317399, there is no canonical definition to state claims against.
-/

/-! ## A317399.P11301316631013734853

`A317390(eq[9, A193592(n)])`
-/

namespace A317399.P11301316631013734853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317399.P11301316631013734853

/-! ## A317399.P14670827074528638138

`A317390(A055999(n+7)-3)`
-/

namespace A317399.P14670827074528638138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (A055999 (n + 7) - 3).toNat

end

end A317399.P14670827074528638138

/-! ## A317399.P317317460363022573

`A317390(A000217(n+10)-9)`
-/

namespace A317399.P317317460363022573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (A000217 (n + 10) - 9).toNat

end

end A317399.P317317460363022573

/-! ## A317399.P12674474990018431830

`A317390(A000124(n+10)-10)`
-/

namespace A317399.P12674474990018431830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (A000124 (n + 10) - 10).toNat

end

end A317399.P12674474990018431830

/-! ## A317399.P3959689091951222823

`A317390(n+2+A000096(n+8))`
-/

namespace A317399.P3959689091951222823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 ((n + 2 : ℤ) + A000096 (n + 8)).toNat

end

end A317399.P3959689091951222823

