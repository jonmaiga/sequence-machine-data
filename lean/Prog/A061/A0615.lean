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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A061500: Integer part of arithmetic mean of distinct nonzero numbers that can be formed from the digits of n.

The programs for A061500, there is no canonical definition to state claims against.
-/

/-! ## A061500.P15236154285745459641

`floor(A061487(n+1)/A179932(n+1))`
-/

namespace A061500.P15236154285745459641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061487 (n + 1) : ℚ) / (A179932 (n + 1) : ℚ)⌋

end

end A061500.P15236154285745459641

/-!
# A061501: a(1) = 1, a(n+1) = (a(n) + n) mod 10.

The programs for A061501, the canonical program `A061501.P14724890944564030542` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061501 has offset 1).

The definition of A061501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061501.P14724890944564030542

`(a(n-1)+n+1-1)%10` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061501

/-- `(a(n-1)+n+1-1)%10` -/
def P14724890944564030542.Spec : Prop :=
  ∀ n, P14724890944564030542.a n = A061501 (n + 1)

theorem P14724890944564030542.correct : P14724890944564030542.Spec := by
  intro n
  simp only [A061501, Nat.add_sub_cancel]

end A061501

/-!
# A061502: a(n) = Sum_{k<=n} tau(k)^2, where tau = number of divisors function A000005.

The programs for A061502, the canonical program `A061502.P6401795752561712073` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061502 has offset 1).

The definition of A061502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061502.P6401795752561712073

`∑[∏{e}[n+1, (#+1)²]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061502

/-- `∑[∏{e}[n+1, (#+1)²]]` -/
def P6401795752561712073.Spec : Prop :=
  ∀ n, (P6401795752561712073.a n : ℤ) = A061502 (n + 1)

theorem P6401795752561712073.correct : P6401795752561712073.Spec := by
  intro n
  simp only [A061502, Nat.add_sub_cancel]

end A061502

/-! ## A061502.P3833599276841447231

`∑[∑{d}[n+1, gcd(n, #)]²]`
-/

namespace A061502.P3833599276841447231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P3833599276841447231

namespace A061502

/-- `∑[∑{d}[n+1, gcd(n, #)]²]` -/
def P3833599276841447231.Spec : Prop :=
  ∀ n, (P3833599276841447231.a n : ℤ) = A061502 (n + 1)

end A061502

/-! ## A061502.P14726763239600169767

`∑[∏{e}[n+1, #+1]^2]`
-/

namespace A061502.P14726763239600169767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P14726763239600169767

namespace A061502

/-- `∑[∏{e}[n+1, #+1]^2]` -/
def P14726763239600169767.Spec : Prop :=
  ∀ n, (P14726763239600169767.a n : ℤ) = A061502 (n + 1)

end A061502

/-! ## A061502.P17381357513665996078

`∑[∑{d}[n+1, ceil(1/#)]²]`
-/

namespace A061502.P17381357513665996078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P17381357513665996078

namespace A061502

/-- `∑[∑{d}[n+1, ceil(1/#)]²]` -/
def P17381357513665996078.Spec : Prop :=
  ∀ n, P17381357513665996078.a n = A061502 (n + 1)

end A061502

/-! ## A061502.P15324359328353609696

`∑[∏{e}[n+1, #+1]*∏{e}[n+1, #+1]]`
-/

namespace A061502.P15324359328353609696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) * (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P15324359328353609696

namespace A061502

/-- `∑[∏{e}[n+1, #+1]*∏{e}[n+1, #+1]]` -/
def P15324359328353609696.Spec : Prop :=
  ∀ n, (P15324359328353609696.a n : ℤ) = A061502 (n + 1)

end A061502

/-! ## A061502.P5230510299147471080

`∑[A035116(n+1)]`
-/

namespace A061502.P5230510299147471080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P5230510299147471080

namespace A061502

/-- `∑[A035116(n+1)]` -/
def P5230510299147471080.Spec : Prop :=
  ∀ n, P5230510299147471080.a n = A061502 (n + 1)

end A061502

/-! ## A061502.P9647538829792354192

`∑[Δ[A006218(n)]²]`
-/

namespace A061502.P9647538829792354192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P9647538829792354192

namespace A061502

/-- `∑[Δ[A006218(n)]²]` -/
def P9647538829792354192.Spec : Prop :=
  ∀ n, P9647538829792354192.a n = A061502 (n + 1)

end A061502

/-! ## A061502.P15831098068357750747

`∑[Δ[A054519(n)]²]`
-/

namespace A061502.P15831098068357750747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P15831098068357750747

namespace A061502

/-- `∑[Δ[A054519(n)]²]` -/
def P15831098068357750747.Spec : Prop :=
  ∀ n, P15831098068357750747.a n = A061502 (n + 1)

end A061502

/-! ## A061502.P15425614456663267389

`∑[A000005(n+1)²]`
-/

namespace A061502.P15425614456663267389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P15425614456663267389

namespace A061502

/-- `∑[A000005(n+1)²]` -/
def P15425614456663267389.Spec : Prop :=
  ∀ n, P15425614456663267389.a n = A061502 (n + 1)

end A061502

/-! ## A061502.P3960076578149773272

`∑[A329484(n+1)²]`
-/

namespace A061502.P3960076578149773272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P3960076578149773272

namespace A061502

/-- `∑[A329484(n+1)²]` -/
def P3960076578149773272.Spec : Prop :=
  ∀ n, P3960076578149773272.a n = A061502 (n + 1)

end A061502

/-! ## A061502.P14334927952076674744

`∑[log2(A338506(n+1))²]`
-/

namespace A061502.P14334927952076674744
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A338506 (n + 1) : ℝ) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P14334927952076674744

namespace A061502

/-- `∑[log2(A338506(n+1))²]` -/
def P14334927952076674744.Spec : Prop :=
  ∀ n, P14334927952076674744.a n = (A061502 (n + 1) : ℝ)

end A061502

/-! ## A061502.P6347838489820103821

`∑[∑[A341062(n+1)]²]`
-/

namespace A061502.P6347838489820103821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P6347838489820103821

namespace A061502

/-- `∑[∑[A341062(n+1)]²]` -/
def P6347838489820103821.Spec : Prop :=
  ∀ n, P6347838489820103821.a n = A061502 (n + 1)

end A061502

/-! ## A061502.P12246468197651525759

`∑[(A032741(n+1)+1)²]`
-/

namespace A061502.P12246468197651525759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P12246468197651525759

namespace A061502

/-- `∑[(A032741(n+1)+1)²]` -/
def P12246468197651525759.Spec : Prop :=
  ∀ n, P12246468197651525759.a n = A061502 (n + 1)

end A061502

/-! ## A061502.P7235634861140595838

`∑[(1-A334954(n+1))²]`
-/

namespace A061502.P7235634861140595838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A334954 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P7235634861140595838

namespace A061502

/-- `∑[(1-A334954(n+1))²]` -/
def P7235634861140595838.Spec : Prop :=
  ∀ n, P7235634861140595838.a n = A061502 (n + 1)

end A061502

/-! ## A061502.P12406846029001975416

`∑[(2-A378216(n+1))²]`
-/

namespace A061502.P12406846029001975416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A378216 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P12406846029001975416

namespace A061502

/-- `∑[(2-A378216(n+1))²]` -/
def P12406846029001975416.Spec : Prop :=
  ∀ n, P12406846029001975416.a n = A061502 (n + 1)

end A061502

/-! ## A061502.P15945444560714974011

`∑[A320111(2*(n+1))²]`
-/

namespace A061502.P15945444560714974011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P15945444560714974011

namespace A061502

/-- `∑[A320111(2*(n+1))²]` -/
def P15945444560714974011.Spec : Prop :=
  ∀ n, P15945444560714974011.a n = A061502 (n + 1)

end A061502

/-! ## A061502.P3058352789690625366

`∑[(A062011(n+1)/2)²]`
-/

namespace A061502.P3058352789690625366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A062011 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P3058352789690625366

namespace A061502

/-- `∑[(A062011(n+1)/2)²]` -/
def P3058352789690625366.Spec : Prop :=
  ∀ n, P3058352789690625366.a n = (A061502 (n + 1) : ℚ)

end A061502

/-! ## A061502.P11646078662066258750

`∑[(A158907(n+1)-n)²]`
-/

namespace A061502.P11646078662066258750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158907 (n + 1) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P11646078662066258750

namespace A061502

/-- `∑[(A158907(n+1)-n)²]` -/
def P11646078662066258750.Spec : Prop :=
  ∀ n, P11646078662066258750.a n = A061502 (n + 1)

end A061502

/-! ## A061502.P15660222435635728338

`∑[(n+1-A049820(n+1))²]`
-/

namespace A061502.P15660222435635728338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A049820 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P15660222435635728338

namespace A061502

/-- `∑[(n+1-A049820(n+1))²]` -/
def P15660222435635728338.Spec : Prop :=
  ∀ n, P15660222435635728338.a n = A061502 (n + 1)

end A061502

/-! ## A061502.P3311801646527820809

`∑[(n+1-A062249(n+1))²]`
-/

namespace A061502.P3311801646527820809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A062249 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061502.P3311801646527820809

namespace A061502

/-- `∑[(n+1-A062249(n+1))²]` -/
def P3311801646527820809.Spec : Prop :=
  ∀ n, P3311801646527820809.a n = A061502 (n + 1)

end A061502

/-!
# A061503: a(n) = Sum_{k=1..n} tau(k^2), where tau is the number of divisors function A000005.

The programs for A061503, the canonical program `A061503.P8299083701735158403` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061503 has offset 1).

The definition of A061503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061503.P8299083701735158403

`∑[∏{e}[n+1, 2*#+1]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061503

/-- `∑[∏{e}[n+1, 2*#+1]]` -/
def P8299083701735158403.Spec : Prop :=
  ∀ n, (P8299083701735158403.a n : ℤ) = A061503 (n + 1)

theorem P8299083701735158403.correct : P8299083701735158403.Spec := by
  intro n
  simp only [A061503, Nat.add_sub_cancel]

end A061503

/-! ## A061503.P6944203882836354041

`∑[A048691(n+1)]`
-/

namespace A061503.P6944203882836354041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061503.P6944203882836354041

namespace A061503

/-- `∑[A048691(n+1)]` -/
def P6944203882836354041.Spec : Prop :=
  ∀ n, P6944203882836354041.a n = A061503 (n + 1)

end A061503

/-! ## A061503.P1240731546450864423

`∑[A117677(n+1)+2]-1`
-/

namespace A061503.P1240731546450864423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117677 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A061503.P1240731546450864423

namespace A061503

/-- `∑[A117677(n+1)+2]-1` -/
def P1240731546450864423.Spec : Prop :=
  ∀ n, P1240731546450864423.a n = A061503 (n + 1)

end A061503

/-! ## A061503.P12631432605708388972

`∑[2*A063647(n+1)+1]`
-/

namespace A061503.P12631432605708388972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063647 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061503.P12631432605708388972

namespace A061503

/-- `∑[2*A063647(n+1)+1]` -/
def P12631432605708388972.Spec : Prop :=
  ∀ n, P12631432605708388972.a n = A061503 (n + 1)

end A061503

/-! ## A061503.P2886763688263644204

`∑[2*A018892(n+1)-1]`
-/

namespace A061503.P2886763688263644204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018892 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061503.P2886763688263644204

namespace A061503

/-- `∑[2*A018892(n+1)-1]` -/
def P2886763688263644204.Spec : Prop :=
  ∀ n, P2886763688263644204.a n = A061503 (n + 1)

end A061503

/-! ## A061503.P2042271740601954124

`∑[∑{d}[n+1, 2^A001221(#)]]`
-/

namespace A061503.P2042271740601954124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (2 : ℚ) ^ (A001221 d : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061503.P2042271740601954124

namespace A061503

/-- `∑[∑{d}[n+1, 2^A001221(#)]]` -/
def P2042271740601954124.Spec : Prop :=
  ∀ n, P2042271740601954124.a n = (A061503 (n + 1) : ℚ)

end A061503

/-! ## A061503.P2727816749549969856

`2*A182082(n+1)-(n+1)`
-/

namespace A061503.P2727816749549969856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182082 (n + 1) - (n + 1 : ℤ)

end

end A061503.P2727816749549969856

namespace A061503

/-- `2*A182082(n+1)-(n+1)` -/
def P2727816749549969856.Spec : Prop :=
  ∀ n, P2727816749549969856.a n = A061503 (n + 1)

end A061503

/-! ## A061503.P5897066163243443918

`∑[2*A046079(2*(n+1))+1]`
-/

namespace A061503.P5897066163243443918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046079 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061503.P5897066163243443918

namespace A061503

/-- `∑[2*A046079(2*(n+1))+1]` -/
def P5897066163243443918.Spec : Prop :=
  ∀ n, P5897066163243443918.a n = A061503 (n + 1)

end A061503

/-! ## A061503.P12973153864054567184

`∑[A005408(A046079(2*(n+1)))]`
-/

namespace A061503.P12973153864054567184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A046079 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061503.P12973153864054567184

namespace A061503

/-- `∑[A005408(A046079(2*(n+1)))]` -/
def P12973153864054567184.Spec : Prop :=
  ∀ n, P12973153864054567184.a n = A061503 (n + 1)

end A061503

/-! ## A061503.P10785564138656539168

`∑[A008620(2*A146564(n+1))]`
-/

namespace A061503.P10785564138656539168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * A146564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061503.P10785564138656539168

namespace A061503

/-- `∑[A008620(2*A146564(n+1))]` -/
def P10785564138656539168.Spec : Prop :=
  ∀ n, P10785564138656539168.a n = A061503 (n + 1)

end A061503

/-! ## A061503.P1011257924801540752

`∑[A229949(2*n+1)]`
-/

namespace A061503.P1011257924801540752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229949 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061503.P1011257924801540752

namespace A061503

/-- `∑[A229949(2*n+1)]` -/
def P1011257924801540752.Spec : Prop :=
  ∀ n, P1011257924801540752.a n = A061503 (n + 1)

end A061503

/-! ## A061503.P13366322653226565217

`∑[A068074(4*(n+1))]`
-/

namespace A061503.P13366322653226565217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068074 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061503.P13366322653226565217

namespace A061503

/-- `∑[A068074(4*(n+1))]` -/
def P13366322653226565217.Spec : Prop :=
  ∀ n, P13366322653226565217.a n = A061503 (n + 1)

end A061503

/-! ## A061503.P4272394231335436257

`∑[∑{d}[(n+1)², gcd(n, #)]]`
-/

namespace A061503.P4272394231335436257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061503.P4272394231335436257

namespace A061503

/-- `∑[∑{d}[(n+1)², gcd(n, #)]]` -/
def P4272394231335436257.Spec : Prop :=
  ∀ n, (P4272394231335436257.a n : ℤ) = A061503 (n + 1)

end A061503

/-! ## A061503.P14839318581122632781

`∑[∑{d}[(n+1)², ceil(1/#)]]`
-/

namespace A061503.P14839318581122632781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061503.P14839318581122632781

namespace A061503

/-- `∑[∑{d}[(n+1)², ceil(1/#)]]` -/
def P14839318581122632781.Spec : Prop :=
  ∀ n, P14839318581122632781.a n = A061503 (n + 1)

end A061503

/-! ## A061503.P17115943651417320773

`∑[A000005(A278254(n+1))]`
-/

namespace A061503.P17115943651417320773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061503.P17115943651417320773

namespace A061503

/-- `∑[A000005(A278254(n+1))]` -/
def P17115943651417320773.Spec : Prop :=
  ∀ n, P17115943651417320773.a n = A061503 (n + 1)

end A061503

/-! ## A061503.P17302978869056869708

`∑[A000005(A046523(n+1)²)]`
-/

namespace A061503.P17302978869056869708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A046523 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061503.P17302978869056869708

namespace A061503

/-- `∑[A000005(A046523(n+1)²)]` -/
def P17302978869056869708.Spec : Prop :=
  ∀ n, P17302978869056869708.a n = A061503 (n + 1)

end A061503

/-! ## A061503.P12699839947313500129

`∑[A000005((n+1)²)]`
-/

namespace A061503.P12699839947313500129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061503.P12699839947313500129

namespace A061503

/-- `∑[A000005((n+1)²)]` -/
def P12699839947313500129.Spec : Prop :=
  ∀ n, P12699839947313500129.a n = A061503 (n + 1)

end A061503

/-! ## A061503.P17941142421474630227

`∑[or(1, A000005(∑[2*n+1]))]`
-/

namespace A061503.P17941142421474630227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000005 (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061503.P17941142421474630227

namespace A061503

/-- `∑[or(1, A000005(∑[2*n+1]))]` -/
def P17941142421474630227.Spec : Prop :=
  ∀ n, P17941142421474630227.a n = A061503 (n + 1)

end A061503

/-! ## A061503.P3534479976917179171

`A000005(C(n+1, n)²)+a(n-1)` with `a(0)=1`
-/

namespace A061503.P3534479976917179171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (Nat.choose (n + 1) n ^ 2) + a (n - 1)

end

end A061503.P3534479976917179171

namespace A061503

/-- `A000005(C(n+1, n)²)+a(n-1)` -/
def P3534479976917179171.Spec : Prop :=
  ∀ n, P3534479976917179171.a n = A061503 (n + 1)

end A061503

/-! ## A061503.P5772256414042765653

`∑[2-A378216((n+1)²)]`
-/

namespace A061503.P5772256414042765653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A378216 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061503.P5772256414042765653

namespace A061503

/-- `∑[2-A378216((n+1)²)]` -/
def P5772256414042765653.Spec : Prop :=
  ∀ n, P5772256414042765653.a n = A061503 (n + 1)

end A061503

/-!
# A061505: Leading digit of n^n.

The programs for A061505, there is no canonical definition to state claims against.
-/

/-! ## A061505.P17042120025255868959

`A062018(round(sqrt(n²+1)))%10`
-/

namespace A061505.P17042120025255868959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062018 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) 10

end

end A061505.P17042120025255868959

/-!
# A061506: a(n) = lcm(6n+2, 6n+4, 6n+6).

The programs for A061506, the canonical program `A061506.P12700610903727524690` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061506 has offset 0).

The definition of A061506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061506.P17347188770588721280

`lcm(2, 3*n+1)/2*∑[a(n-1)+36]` with `a(0)=12`
-/

namespace A061506.P17347188770588721280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (3 * n + 1) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A061506.P17347188770588721280

namespace A061506

/-- `lcm(2, 3*n+1)/2*∑[a(n-1)+36]` -/
def P17347188770588721280.Spec : Prop :=
  ∀ n, P17347188770588721280.a n = (A061506 n : ℚ)

end A061506

/-! ## A061506.P12700610903727524690

`2*A061495(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061506

/-- `2*A061495(n)` -/
def P12700610903727524690.Spec : Prop :=
  ∀ n, P12700610903727524690.a n = A061506 n

theorem P12700610903727524690.correct : P12700610903727524690.Spec := by
  intro n
  simp only [A061506]

end A061506

/-! ## A061506.P1133517145490641056

`gcd(2, n)*A054776(n+1)`
-/

namespace A061506.P1133517145490641056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A054776 (n + 1)

end

end A061506.P1133517145490641056

namespace A061506

/-- `gcd(2, n)*A054776(n+1)` -/
def P1133517145490641056.Spec : Prop :=
  ∀ n, P1133517145490641056.a n = A061506 n

end A061506

/-! ## A061506.P5270833945098163937

`A000217(3*n+1)*A298036(n+1)`
-/

namespace A061506.P5270833945098163937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n + 1) * A298036 (n + 1)

end

end A061506.P5270833945098163937

namespace A061506

/-- `A000217(3*n+1)*A298036(n+1)` -/
def P5270833945098163937.Spec : Prop :=
  ∀ n, P5270833945098163937.a n = A061506 n

end A061506

/-! ## A061506.P18958982095628282

`A061495(A005843(n)/2)+A061495(n)`
-/

namespace A061506.P18958982095628282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061495 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A061495 n

end

end A061506.P18958982095628282

namespace A061506

/-- `A061495(A005843(n)/2)+A061495(n)` -/
def P18958982095628282.Spec : Prop :=
  ∀ n, P18958982095628282.a n = A061506 n

end A061506

/-! ## A061506.P12101098415733723490

`A165355(n)*A298028(n+1)*A166304(n)`
-/

namespace A061506.P12101098415733723490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 n * A298028 (n + 1) * A166304 n

end

end A061506.P12101098415733723490

namespace A061506

/-- `A165355(n)*A298028(n+1)*A166304(n)` -/
def P12101098415733723490.Spec : Prop :=
  ∀ n, P12101098415733723490.a n = A061506 n

end A061506

/-! ## A061506.P11620348554151771639

`(18*n+12)*A329404(n+1)`
-/

namespace A061506.P11620348554151771639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (18 * n + 12 : ℤ) * A329404 (n + 1)

end

end A061506.P11620348554151771639

namespace A061506

/-- `(18*n+12)*A329404(n+1)` -/
def P11620348554151771639.Spec : Prop :=
  ∀ n, P11620348554151771639.a n = A061506 n

end A061506

/-! ## A061506.P17670693210510449120

`lcm(2*A152743(n+1), A000567(n+1))`
-/

namespace A061506.P17670693210510449120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * A152743 (n + 1)) (A000567 (n + 1))

end

end A061506.P17670693210510449120

namespace A061506

/-- `lcm(2*A152743(n+1), A000567(n+1))` -/
def P17670693210510449120.Spec : Prop :=
  ∀ n, (P17670693210510449120.a n : ℤ) = A061506 n

end A061506

/-! ## A061506.P16933909630423861361

`lcm(2*A049450(n+1), A152751(n+1))`
-/

namespace A061506.P16933909630423861361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * A049450 (n + 1)) (A152751 (n + 1))

end

end A061506.P16933909630423861361

namespace A061506

/-- `lcm(2*A049450(n+1), A152751(n+1))` -/
def P16933909630423861361.Spec : Prop :=
  ∀ n, (P16933909630423861361.a n : ℤ) = A061506 n

end A061506

/-! ## A061506.P3939158398499542525

`2*lcm(Δ[A002378(n)]+n+1, A001504(n))`
-/

namespace A061506.P3939158398499542525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm (f1 (n + 1) - f1 n + (n + 1 : ℤ)) (A001504 n)

end

end A061506.P3939158398499542525

namespace A061506

/-- `2*lcm(Δ[A002378(n)]+n+1, A001504(n))` -/
def P3939158398499542525.Spec : Prop :=
  ∀ n, (P3939158398499542525.a n : ℤ) = A061506 n

end A061506

/-! ## A061506.P9490948210427395819

`A165988(n+1)*A166304(n)*A165355(n)`
-/

namespace A061506.P9490948210427395819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165988 (n + 1) * A166304 n * A165355 n

end

end A061506.P9490948210427395819

namespace A061506

/-- `A165988(n+1)*A166304(n)*A165355(n)` -/
def P9490948210427395819.Spec : Prop :=
  ∀ n, P9490948210427395819.a n = A061506 n

end A061506

/-! ## A061506.P15863153463937049863

`A165351(n+1)*A166138(n)*A166304(n)`
-/

namespace A061506.P15863153463937049863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165351 (n + 1) * A166138 n * A166304 n

end

end A061506.P15863153463937049863

namespace A061506

/-- `A165351(n+1)*A166138(n)*A166304(n)` -/
def P15863153463937049863.Spec : Prop :=
  ∀ n, P15863153463937049863.a n = A061506 n

end A061506

/-! ## A061506.P10157147803071077207

`2*lcm(A008585(n+1), A173102(2*n+1))`
-/

namespace A061506.P10157147803071077207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm (A008585 (n + 1)) (A173102 (2 * n + 1))

end

end A061506.P10157147803071077207

namespace A061506

/-- `2*lcm(A008585(n+1), A173102(2*n+1))` -/
def P10157147803071077207.Spec : Prop :=
  ∀ n, (P10157147803071077207.a n : ℤ) = A061506 n

end A061506

/-! ## A061506.P6763031410883613742

`2*A033931(3*n+1)`
-/

namespace A061506.P6763031410883613742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033931 (3 * n + 1)

end

end A061506.P6763031410883613742

namespace A061506

/-- `2*A033931(3*n+1)` -/
def P6763031410883613742.Spec : Prop :=
  ∀ n, P6763031410883613742.a n = A061506 n

end A061506

/-! ## A061506.P10746324481524278569

`lcm(∑[A016945(3*n)], A016957(n))`
-/

namespace A061506.P10746324481524278569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A016957 n)

end

end A061506.P10746324481524278569

namespace A061506

/-- `lcm(∑[A016945(3*n)], A016957(n))` -/
def P10746324481524278569.Spec : Prop :=
  ∀ n, (P10746324481524278569.a n : ℤ) = A061506 n

end A061506

/-! ## A061506.P11952159902872097477

`lcm(Δ[A003215(n)], A046092(3*n+1))`
-/

namespace A061506.P11952159902872097477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A046092 (3 * n + 1))

end

end A061506.P11952159902872097477

namespace A061506

/-- `lcm(Δ[A003215(n)], A046092(3*n+1))` -/
def P11952159902872097477.Spec : Prop :=
  ∀ n, (P11952159902872097477.a n : ℤ) = A061506 n

end A061506

/-! ## A061506.P4586863991294173698

`2*lcm(A265225(3*n), A276805(3*n+1))`
-/

namespace A061506.P4586863991294173698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm (A265225 (3 * n)) (A276805 (3 * n + 1))

end

end A061506.P4586863991294173698

namespace A061506

/-- `2*lcm(A265225(3*n), A276805(3*n+1))` -/
def P4586863991294173698.Spec : Prop :=
  ∀ n, (P4586863991294173698.a n : ℤ) = A061506 n

end A061506

/-! ## A061506.P14067610629587427185

`lcm(A005563(A016777(n)), 6*n+4)`
-/

namespace A061506.P14067610629587427185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005563 (A016777 n).toNat) (6 * n + 4 : ℤ)

end

end A061506.P14067610629587427185

namespace A061506

/-- `lcm(A005563(A016777(n)), 6*n+4)` -/
def P14067610629587427185.Spec : Prop :=
  ∀ n, (P14067610629587427185.a n : ℤ) = A061506 n

end A061506

/-! ## A061506.P13461304895783941075

`A000567(n+1)*A298028(3*n+2)`
-/

namespace A061506.P13461304895783941075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (n + 1) * A298028 (3 * n + 2)

end

end A061506.P13461304895783941075

namespace A061506

/-- `A000567(n+1)*A298028(3*n+2)` -/
def P13461304895783941075.Spec : Prop :=
  ∀ n, P13461304895783941075.a n = A061506 n

end A061506

/-! ## A061506.P10745022680111950411

`A005563(3*n+1)*A022998(3*n+2)`
-/

namespace A061506.P10745022680111950411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (3 * n + 1) * A022998 (3 * n + 2)

end

end A061506.P10745022680111950411

namespace A061506

/-- `A005563(3*n+1)*A022998(3*n+2)` -/
def P10745022680111950411.Spec : Prop :=
  ∀ n, P10745022680111950411.a n = A061506 n

end A061506

/-!
# A061507: Numbers with all odd digits, in which each digit divides the number formed by the rest, i.e., the number obtained by just removing this digit.

The programs for A061507, there is no canonical definition to state claims against.
-/

/-! ## A061507.P3635199843455575122

`∩[A014261(n+1), A353729(n+1)]`
-/

namespace A061507.P3635199843455575122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061507.P3635199843455575122

/-! ## A061507.P12782717631018324250

`∩[A014261(n+1), A061362(n+1)]`
-/

namespace A061507.P12782717631018324250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061507.P12782717631018324250

/-! ## A061507.P14513263342151263661

`record[A000265(A353729(n+1))]`
-/

namespace A061507.P14513263342151263661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A353729 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061507.P14513263342151263661

/-! ## A061507.P14643472307181170696

`record[A093178(A353729(n+2))]`
-/

namespace A061507.P14643472307181170696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A353729 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061507.P14643472307181170696

/-! ## A061507.P14844330402006839152

`∩[A004273(n), A353729(n+1)]`
-/

namespace A061507.P14844330402006839152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061507.P14844330402006839152

/-! ## A061507.P12425130529790708677

`∩[A060747(n), A353729(n+1)]`
-/

namespace A061507.P12425130529790708677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061507.P12425130529790708677

/-! ## A061507.P2520002645321735211

`∩[A277599(n+1), A353729(n+1)]`
-/

namespace A061507.P2520002645321735211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061507.P2520002645321735211

/-!
# A061508: Smallest positive m such that n^m has at least n digits.

The programs for A061508, there is no canonical definition to state claims against.
-/

/-! ## A061508.P12962645096766689912

`A130245(A115995(n)+2*n+1)`
-/

namespace A061508.P12962645096766689912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A115995 n + (2 * n + 1 : ℤ)).toNat

end

end A061508.P12962645096766689912

/-! ## A061508.P14724906655489070319

`A130245(A202342(n+1)+A115995(n))`
-/

namespace A061508.P14724906655489070319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A202342 (n + 1) + A115995 n).toNat

end

end A061508.P14724906655489070319

/-! ## A061508.P7991126757234471988

`A163400(A262879(3*n+1)+A027890(n+1))`
-/

namespace A061508.P7991126757234471988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163400 (A262879 (3 * n + 1) + A027890 (n + 1)).toNat

end

end A061508.P7991126757234471988

/-! ## A061508.P12674647003320518270

`A109167(A357875(3*(n+1))-A055457(n+1))`
-/

namespace A061508.P12674647003320518270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109167 (A357875 (3 * (n + 1)) - A055457 (n + 1)).toNat

end

end A061508.P12674647003320518270

/-!
# A061509: Write n in decimal, omit 0's, replace the k-th digit d[k] with the k-th prime, raised to d[k]-th power and multiply.

The programs for A061509, there is no canonical definition to state claims against.
-/

/-! ## A061509.P5953319356735770306

`A054842(A118759(A004086(n)))`
-/

namespace A061509.P5953319356735770306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A118759 (A004086 n).toNat).toNat

end

end A061509.P5953319356735770306

/-! ## A061509.P11817202080920130116

`A054842(A000196(A004086(n)²))`
-/

namespace A061509.P11817202080920130116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A000196 (A004086 n ^ 2).toNat).toNat

end

end A061509.P11817202080920130116

/-! ## A061509.P234717993319122635

`A054842(A037213(A004086(n)²))`
-/

namespace A061509.P234717993319122635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A037213 (A004086 n ^ 2).toNat).toNat

end

end A061509.P234717993319122635

/-! ## A061509.P8223785368125260639

`A054842(A004086(n)%A143823(n))`
-/

namespace A061509.P8223785368125260639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (Int.tmod (A004086 n) (A143823 n)).toNat

end

end A061509.P8223785368125260639

/-! ## A061509.P2516176605236511715

`lcm(A054842(A004086(n)), A112348(n))`
-/

namespace A061509.P2516176605236511715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054842 (A004086 n).toNat) (A112348 n)

end

end A061509.P2516176605236511715

/-! ## A061509.P9486481626889688886

`A054842(A053186(n²)+A004086(n))`
-/

namespace A061509.P9486481626889688886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A053186 (n ^ 2) + A004086 n).toNat

end

end A061509.P9486481626889688886

/-! ## A061509.P17967469919420146254

`A054842(A004086(n)-A053186(n²))`
-/

namespace A061509.P17967469919420146254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A004086 n - A053186 (n ^ 2)).toNat

end

end A061509.P17967469919420146254

/-! ## A061509.P13634294639290903059

`A054842(A004086(n)^A067898(n)!)`
-/

namespace A061509.P13634294639290903059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A004086 n ^ Nat.factorial (A067898 n).toNat).toNat

end

end A061509.P13634294639290903059

/-!
# A061510: Write n in decimal, omit 0's, raise each digit k to k-th power and multiply.

The programs for A061510, the canonical program `A061510.P17152116736630638625` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061510 has offset 0).

The definition of A061510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061510.P17152116736630638625

`∏{digits}[n, #^#]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061510

/-- `∏{digits}[n, #^#]` -/
def P17152116736630638625.Spec : Prop :=
  ∀ n, (P17152116736630638625.a n : ℤ) = A061510 n

theorem P17152116736630638625.correct : P17152116736630638625.Spec := by
  intro n
  simp only [A061510]

end A061510

/-! ## A061510.P11413719202053500129

`2^∑{digits}[n, log2(#^#)]`
-/

namespace A061510.P11413719202053500129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.logb 2 (x ^ x : ℝ)).sum

end

end A061510.P11413719202053500129

namespace A061510

/-- `2^∑{digits}[n, log2(#^#)]` -/
def P11413719202053500129.Spec : Prop :=
  ∀ n, P11413719202053500129.a n = (A061510 n : ℝ)

end A061510

/-! ## A061510.P5781798111978490484

`∏{e}[A054842(n), A000312(#)]`
-/

namespace A061510.P5781798111978490484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000312 (Nat.factorization (f1 n).natAbs p)

end

end A061510.P5781798111978490484

namespace A061510

/-- `∏{e}[A054842(n), A000312(#)]` -/
def P5781798111978490484.Spec : Prop :=
  ∀ n, P5781798111978490484.a n = A061510 n

end A061510

/-! ## A061510.P3019065094589758084

`∏{e}[A061509(n), A000312(#)]`
-/

namespace A061510.P3019065094589758084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000312 (Nat.factorization (f1 n).natAbs p)

end

end A061510.P3019065094589758084

namespace A061510

/-- `∏{e}[A061509(n), A000312(#)]` -/
def P3019065094589758084.Spec : Prop :=
  ∀ n, P3019065094589758084.a n = A061510 n

end A061510

/-! ## A061510.P301756431535445667

`∏{e}[A061509(n), A045503(#)]`
-/

namespace A061510.P301756431535445667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A045503 (Nat.factorization (f1 n).natAbs p)

end

end A061510.P301756431535445667

namespace A061510

/-- `∏{e}[A061509(n), A045503(#)]` -/
def P301756431535445667.Spec : Prop :=
  ∀ n, P301756431535445667.a n = A061510 n

end A061510

/-!
# A061511: a(0) = 0; a(n) is obtained by incrementing each digit of a(n-1) by 1.

The programs for A061511, there is no canonical definition to state claims against.
-/

/-! ## A061511.P1440961625413382750

`A216556(a(n-1))` with `a(0)=0`
-/

namespace A061511.P1440961625413382750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A216556 (a (n - 1)).toNat

end

end A061511.P1440961625413382750

/-! ## A061511.P1913530041652959067

`A216556(abs(a(A023443(n))))` with `a(0)=0`
-/

namespace A061511.P1913530041652959067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A216556 |a (A023443 n).toNat|.toNat

end

end A061511.P1913530041652959067

/-! ## A061511.P14877123426001987266

`comp[11*gcd(11, n)+n-1]`
-/

namespace A061511.P14877123426001987266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * Nat.gcd 11 n : ℤ) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A061511.P14877123426001987266

/-! ## A061511.P12399144562823214761

`eq[0, (11*floor(n/10))%(n+1)]`
-/

namespace A061511.P12399144562823214761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (11 * ⌊(n : ℚ) / 10⌋) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061511.P12399144562823214761

/-! ## A061511.P3217459904196860707

`eq[11*floor(n/10), lcm(n+1, 11*floor(n/10))]`
-/

namespace A061511.P3217459904196860707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌊(n : ℚ) / 10⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (11 * ⌊(n : ℚ) / 10⌋)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A061511.P3217459904196860707

/-!
# A061512: a(0) = 1; a(n) is obtained by incrementing each digit of a(n-1) by 2.

The programs for A061512, the canonical program `A061512.P7842128052913906926` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061512 has offset 0).

The definition of A061512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061512.P7842128052913906926

`(10^2^floor(n/5)-1)/9*(n%5*2+1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061512

/-- `(10^2^floor(n/5)-1)/9*(n%5*2+1)` -/
def P7842128052913906926.Spec : Prop :=
  ∀ n, P7842128052913906926.a n = (A061512 n : ℝ)

end A061512

/-! ## A061512.P5992734712055316276

`A061513(n)+1`
-/

namespace A061512.P5992734712055316276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061513 n + 1

end

end A061512.P5992734712055316276

namespace A061512

/-- `A061513(n)+1` -/
def P5992734712055316276.Spec : Prop :=
  ∀ n, P5992734712055316276.a n = A061512 n

end A061512

/-! ## A061512.P15965959071809581150

`or(1, A061513(2*n-n))`
-/

namespace A061512.P15965959071809581150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A061513 (2 * n - n))

end

end A061512.P15965959071809581150

namespace A061512

/-- `or(1, A061513(2*n-n))` -/
def P15965959071809581150.Spec : Prop :=
  ∀ n, P15965959071809581150.a n = A061512 n

end A061512

/-! ## A061512.P3524176070395183979

`xor(A061462(3*n), A061513(n))`
-/

namespace A061512.P3524176070395183979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061462 (3 * n)) (A061513 n)

end

end A061512.P3524176070395183979

namespace A061512

/-- `xor(A061462(3*n), A061513(n))` -/
def P3524176070395183979.Spec : Prop :=
  ∀ n, P3524176070395183979.a n = A061512 n

end A061512

/-! ## A061512.P8959186545343226016

`or(A061513(n), A178401(A035931(n)))`
-/

namespace A061512.P8959186545343226016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061513 n) (A178401 (A035931 n).toNat)

end

end A061512.P8959186545343226016

namespace A061512

/-- `or(A061513(n), A178401(A035931(n)))` -/
def P8959186545343226016.Spec : Prop :=
  ∀ n, P8959186545343226016.a n = A061512 n

end A061512

/-!
# A061513: a(0) = 0; a(n) is obtained by incrementing each digit of a(n-1) by 2.

The programs for A061513, the canonical program `A061513.P8629884518458591812` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061513 has offset 0).

The definition of A061513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061513.P14955218305677952196

`(10^2^floor(n/5)-1)/9*(n%5*2+1)-1`
-/

namespace A061513.P14955218305677952196
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((10 : ℝ) ^ ((2 : ℚ) ^ (⌊(n : ℚ) / 5⌋ : ℤ) : ℝ) - 1) / 9 * ((n % 5 * 2 + 1 : ℕ) : ℝ) - 1

end

end A061513.P14955218305677952196

namespace A061513

/-- `(10^2^floor(n/5)-1)/9*(n%5*2+1)-1` -/
def P14955218305677952196.Spec : Prop :=
  ∀ n, P14955218305677952196.a n = (A061513 n : ℝ)

end A061513

/-! ## A061513.P8629884518458591812

`A061512(n)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061513

/-- `A061512(n)-1` -/
def P8629884518458591812.Spec : Prop :=
  ∀ n, P8629884518458591812.a n = A061513 n

theorem P8629884518458591812.correct : P8629884518458591812.Spec := by
  intro n
  simp only [A061513]

end A061513

/-! ## A061513.P17743457144005365639

`xor(abs(A033999(n)), A061512(n))`
-/

namespace A061513.P17743457144005365639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |A033999 n| (A061512 n)

end

end A061513.P17743457144005365639

namespace A061513

/-- `xor(abs(A033999(n)), A061512(n))` -/
def P17743457144005365639.Spec : Prop :=
  ∀ n, P17743457144005365639.a n = A061513 n

end A061513

/-!
# A061514: a(0) = 0; a(n) is obtained by incrementing each digit of a(n-1) by 3.

The programs for A061514, there is no canonical definition to state claims against.
-/

/-! ## A061514.P5319086573522033870

`A061515(n+3)%A061515(n)`
-/

namespace A061514.P5319086573522033870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061515 (n + 3)) (A061515 n)

end

end A061514.P5319086573522033870

/-!
# A061515: a(0) = 1; a(n) is obtained by incrementing each digit of a(n-1) by 3.

The programs for A061515, there is no canonical definition to state claims against.
-/

/-! ## A061515.P13254294819101242075

`∑[gcd(33, A089423(3*n))]`
-/

namespace A061515.P13254294819101242075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 33 (A089423 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061515.P13254294819101242075

/-! ## A061515.P11423533807440765786

`A283104(A113867(n+1))`
-/

namespace A061515.P11423533807440765786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283104 (A113867 (n + 1)).toNat

end

end A061515.P11423533807440765786

/-! ## A061515.P12203065175649239233

`∩[A061511(n), A069212(n+1)]`
-/

namespace A061515.P12203065175649239233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061511 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061515.P12203065175649239233

/-!
# A061516: a(0) = 1; a(n) is obtained by incrementing each digit of a(n-1) by 4.

The programs for A061516, there is no canonical definition to state claims against.
-/

/-! ## A061516.P959957373343185206

`A061517(n)+1`
-/

namespace A061516.P959957373343185206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061517 n + 1

end

end A061516.P959957373343185206

/-! ## A061516.P2778990219408075468

`xor(A033999(n)², A061517(n))`
-/

namespace A061516.P2778990219408075468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n ^ 2) (A061517 n)

end

end A061516.P2778990219408075468

/-! ## A061516.P15983408616633330785

`xor(A061512(n)%2, A061517(n))`
-/

namespace A061516.P15983408616633330785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A061512 n) 2) (A061517 n)

end

end A061516.P15983408616633330785

/-! ## A061516.P8457006754045828690

`or(A007318(A193823(n)), A061517(n))`
-/

namespace A061516.P8457006754045828690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 (A193823 n).toNat) (A061517 n)

end

end A061516.P8457006754045828690

/-!
# A061517: a(0) = 0; a(n) is obtained by incrementing each digit of a(n-1) by 4.

The programs for A061517, there is no canonical definition to state claims against.
-/

/-! ## A061517.P14741242679323138698

`A061516(n)-1`
-/

namespace A061517.P14741242679323138698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061516 n - 1

end

end A061517.P14741242679323138698

/-! ## A061517.P2760124632053646592

`xor(1, A061516(A071669(n)))`
-/

namespace A061517.P2760124632053646592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A061516 (A071669 n).toNat)

end

end A061517.P2760124632053646592

/-! ## A061517.P10969615328723839002

`xor(A065357(n)², A061516(n))`
-/

namespace A061517.P10969615328723839002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A065357 n ^ 2) (A061516 n)

end

end A061517.P10969615328723839002

/-! ## A061517.P17114938907545314518

`xor(A014963((n+1)*Δ[n^3]), A061516(n))`
-/

namespace A061517.P17114938907545314518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat) (A061516 n)

end

end A061517.P17114938907545314518

/-!
# A061518: a(0) = 0; a(n) is obtained by incrementing each digit of a(n-1) by 5.

The programs for A061518, there is no canonical definition to state claims against.
-/

/-! ## A061518.P9677288752667234714

`A061519(n)-1`
-/

namespace A061518.P9677288752667234714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061519 n - 1

end

end A061518.P9677288752667234714

/-! ## A061518.P2546842359152378067

`record[Δ[A061519(A257685(n))]]`
-/

namespace A061518.P2546842359152378067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061519 (A257685 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061518.P2546842359152378067

/-! ## A061518.P18176236099015078617

`A106400(A001316(n))+A061519(n)`
-/

namespace A061518.P18176236099015078617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A001316 n).toNat + A061519 n

end

end A061518.P18176236099015078617

/-! ## A061518.P14496063209554405085

`A282038(A061494(n+1))+A061519(n)`
-/

namespace A061518.P14496063209554405085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (A061494 (n + 1)).toNat + A061519 n

end

end A061518.P14496063209554405085

/-! ## A061518.P3850133613873702793

`A316441(A260179(n+1))+A061519(n)`
-/

namespace A061518.P3850133613873702793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A260179 (n + 1)).toNat + A061519 n

end

end A061518.P3850133613873702793

/-!
# A061519: a(0) = 1; a(n) is obtained by incrementing each digit of a(n-1) by 5.

The programs for A061519, there is no canonical definition to state claims against.
-/

/-! ## A061519.P13817678098386013839

`A061518(n)+1`
-/

namespace A061519.P13817678098386013839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061518 n + 1

end

end A061519.P13817678098386013839

/-! ## A061519.P8008623959169866101

`abs(xor(A033999(n), A061518(n)))`
-/

namespace A061519.P8008623959169866101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A033999 n) (A061518 n)|

end

end A061519.P8008623959169866101

/-! ## A061519.P2990383487993129282

`A061512(n)-(A061513(n)-A061518(n))`
-/

namespace A061519.P2990383487993129282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061512 n - (A061513 n - A061518 n)

end

end A061519.P2990383487993129282

/-! ## A061519.P17676194456990285171

`A061516(n)-(A061517(n)-A061518(n))`
-/

namespace A061519.P17676194456990285171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061516 n - (A061517 n - A061518 n)

end

end A061519.P17676194456990285171

/-! ## A061519.P14821201070173581602

`A061521(n)-(A061520(n)-A061518(n))`
-/

namespace A061519.P14821201070173581602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061521 n - (A061520 n - A061518 n)

end

end A061519.P14821201070173581602

/-!
# A061520: a(0) = 0; a(n) is obtained by incrementing each digit of a(n-1) by 6.

The programs for A061520, there is no canonical definition to state claims against.
-/

/-! ## A061520.P12657864155728185076

`A061521(n)-1`
-/

namespace A061520.P12657864155728185076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061521 n - 1

end

end A061520.P12657864155728185076

/-! ## A061520.P13679796537314222385

`xor(A014963(A061561(n)), A061521(n))`
-/

namespace A061520.P13679796537314222385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (A061561 n).toNat) (A061521 n)

end

end A061520.P13679796537314222385

/-! ## A061520.P16733064687428397330

`xor(1, A061521(A061479(n)))`
-/

namespace A061520.P16733064687428397330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A061521 (A061479 n).toNat)

end

end A061520.P16733064687428397330

/-! ## A061520.P16131629247027867726

`xor(A014963(A061550(n)), A061521(n))`
-/

namespace A061520.P16131629247027867726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (A061550 n).toNat) (A061521 n)

end

end A061520.P16131629247027867726

/-!
# A061521: a(0) = 1; a(n) is obtained by incrementing each digit of a(n-1) by 6.

The programs for A061521, there is no canonical definition to state claims against.
-/

/-! ## A061521.P270625521926304266

`A061520(n)+1`
-/

namespace A061521.P270625521926304266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061520 n + 1

end

end A061521.P270625521926304266

/-! ## A061521.P15530176580803306930

`or(A007318(A000096(n)), A061520(n))`
-/

namespace A061521.P15530176580803306930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 (A000096 n).toNat) (A061520 n)

end

end A061521.P15530176580803306930

/-! ## A061521.P2251002147044929505

`or(A007318(A000217(n)), A061520(n))`
-/

namespace A061521.P2251002147044929505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 (A000217 n).toNat) (A061520 n)

end

end A061521.P2251002147044929505

/-! ## A061521.P17746810513005009668

`or(A007318(A029400(n)), A061520(n))`
-/

namespace A061521.P17746810513005009668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 (A029400 n).toNat) (A061520 n)

end

end A061521.P17746810513005009668

/-! ## A061521.P714069031251692986

`or(A007318(A070565(n)), A061520(n))`
-/

namespace A061521.P714069031251692986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 (A070565 n).toNat) (A061520 n)

end

end A061521.P714069031251692986

/-!
# A061522: a(0) = 0; a(n) is obtained by incrementing each digit of a(n-1) by 7.

The programs for A061522, there is no canonical definition to state claims against.
-/

/-! ## A061522.P3669226848577108158

`A061746(gcd(7*n, (2*n)²))-1`
-/

namespace A061522.P3669226848577108158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061746 (Nat.gcd (7 * n) ((2 * n) ^ 2)) - 1

end

end A061522.P3669226848577108158

/-! ## A061522.P4886723309272023036

`A061746(A024640(n))-1`
-/

namespace A061522.P4886723309272023036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061746 (A024640 n).toNat - 1

end

end A061522.P4886723309272023036

/-! ## A061522.P3716097343576373867

`A061746(A073788(n))-1`
-/

namespace A061522.P3716097343576373867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061746 (A073788 n).toNat - 1

end

end A061522.P3716097343576373867

/-!
# A061523: Integer part of the blowup factor for A025587(n).

The programs for A061523, there is no canonical definition to state claims against.
-/

/-! ## A061523.P10165104379790021449

`record[floor(A006885(n+1)/A006884(n+1))]`
-/

namespace A061523.P10165104379790021449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006885 (n + 1) : ℚ) / (A006884 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061523.P10165104379790021449

/-! ## A061523.P8028900260062768268

`record[A087262(n+1)]`
-/

namespace A061523.P8028900260062768268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061523.P8028900260062768268

/-! ## A061523.P13472545933388481810

`record[floor(A025586(n+1)/(n+1))]`
-/

namespace A061523.P13472545933388481810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025586 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061523.P13472545933388481810

/-! ## A061523.P14934526168124193608

`A087262(A025587(n))`
-/

namespace A061523.P14934526168124193608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087262 (A025587 n).toNat

end

end A061523.P14934526168124193608

/-! ## A061523.P10871132496643231037

`record[floor(A270570(2*(n+1))/(n+1))]`
-/

namespace A061523.P10871132496643231037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A270570 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061523.P10871132496643231037

/-!
# A061524: Surround numbers of an n X 2 rectangle when n is even.

The programs for A061524, there is no canonical definition to state claims against.
-/

/-! ## A061524.P2393030735914914920

`A302576(n+2)+A067998(A028560(n+2))`
-/

namespace A061524.P2393030735914914920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302576 (n + 2) + A067998 (A028560 (n + 2)).toNat

end

end A061524.P2393030735914914920

/-!
# A061532: Nearest integer to n^7/49.

The programs for A061532, the canonical program `A061532.P14564513251766287861` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061532 has offset 1).

The definition of A061532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061532.P14564513251766287861

`round((n+1)^7/49)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061532

/-- `round((n+1)^7/49)` -/
def P14564513251766287861.Spec : Prop :=
  ∀ n, P14564513251766287861.a n = A061532 (n + 1)

theorem P14564513251766287861.correct : P14564513251766287861.Spec := by
  intro n
  simp only [A061532, Nat.add_sub_cancel]

end A061532

/-!
# A061534: Expansion of (1-x^2)/(1-3*x-x^2+x^3).

The programs for A061534, the canonical program `A061534.P2694106044777421645` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061534 has offset 0).

The definition of A061534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-3x-x^2+x^3))` (program `A061534.P2694106044777421645`, by `A061534.P2694106044777421645.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061534.P2694106044777421645

`ogf((1-x^2)/(1-3x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061534

/-- `ogf((1-x^2)/(1-3x-x^2+x^3))` -/
def P2694106044777421645.Spec : Prop :=
  ∀ n, P2694106044777421645.a n = A061534 n

theorem P2694106044777421645.correct : P2694106044777421645.Spec := by
  intro n
  simp only [A061534]

end A061534

/-! ## A061534.P11050263456145813542

`3*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A061534.P11050263456145813542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  3 * a (n - 1) + a (n - 2) - a (n - 3)

end

end A061534.P11050263456145813542

namespace A061534

/-- `3*a(n-1)+a(n-2)-a(n-3)` -/
def P11050263456145813542.Spec : Prop :=
  ∀ n, P11050263456145813542.a n = A061534 n

end A061534

/-! ## A061534.P12010702544571828933

`∑[A181301(n)]`
-/

namespace A061534.P12010702544571828933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061534.P12010702544571828933

namespace A061534

/-- `∑[A181301(n)]` -/
def P12010702544571828933.Spec : Prop :=
  ∀ n, P12010702544571828933.a n = A061534 n

end A061534

/-! ## A061534.P9288762699063301975

`2*A287275(n+1)-1`
-/

namespace A061534.P9288762699063301975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A287275 (n + 1) - 1

end

end A061534.P9288762699063301975

namespace A061534

/-- `2*A287275(n+1)-1` -/
def P9288762699063301975.Spec : Prop :=
  ∀ n, P9288762699063301975.a n = A061534 n

end A061534

/-! ## A061534.P6579934695484908321

`∑[2*Δ[A287275(n)]]+1`
-/

namespace A061534.P6579934695484908321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061534.P6579934695484908321

namespace A061534

/-- `∑[2*Δ[A287275(n)]]+1` -/
def P6579934695484908321.Spec : Prop :=
  ∀ n, P6579934695484908321.a n = A061534 n

end A061534

/-! ## A061534.P8109433794212833122

`Δ[A030186(n)-2*A287275(n)]`
-/

namespace A061534.P8109433794212833122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 n - 2 * A287275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061534.P8109433794212833122

namespace A061534

/-- `Δ[A030186(n)-2*A287275(n)]` -/
def P8109433794212833122.Spec : Prop :=
  ∀ n, P8109433794212833122.a n = A061534 n

end A061534

/-! ## A061534.P13792304612601924340

`Δ[A033505(n)-A287275(n)]-A033505(n)`
-/

namespace A061534.P13792304612601924340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n - A287275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033505 n

end

end A061534.P13792304612601924340

namespace A061534

/-- `Δ[A033505(n)-A287275(n)]-A033505(n)` -/
def P13792304612601924340.Spec : Prop :=
  ∀ n, P13792304612601924340.a n = A061534 n

end A061534

/-! ## A061534.P14047233441932835433

`A030186(n)+Δ[A033505(n)]%A033505(n)`
-/

namespace A061534.P14047233441932835433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 n + Int.tmod (f1 (n + 1) - f1 n) (A033505 n)

end

end A061534.P14047233441932835433

namespace A061534

/-- `A030186(n)+Δ[A033505(n)]%A033505(n)` -/
def P14047233441932835433.Spec : Prop :=
  ∀ n, P14047233441932835433.a n = A061534 n

end A061534

/-! ## A061534.P12677025341920261865

`A030186(n+1)+A030186(n)-A181301(n+1)`
-/

namespace A061534.P12677025341920261865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 (n + 1) + (A030186 n - A181301 (n + 1))

end

end A061534.P12677025341920261865

namespace A061534

/-- `A030186(n+1)+A030186(n)-A181301(n+1)` -/
def P12677025341920261865.Spec : Prop :=
  ∀ n, P12677025341920261865.a n = A061534 n

end A061534

/-!
# A061535: a(n) = a(n-1) + the number of primes <= a(n-1).

The programs for A061535, the canonical program `A061535.P17802745771944927140` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061535 has offset 1).

The definition of A061535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061535.P17802745771944927140

`a(n-1)+A000720(a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061535

/-- `a(n-1)+A000720(a(n-1))` -/
def P17802745771944927140.Spec : Prop :=
  ∀ n, P17802745771944927140.a n = A061535 (n + 1)

theorem P17802745771944927140.correct : P17802745771944927140.Spec := by
  intro n
  simp only [A061535, Nat.add_sub_cancel]

end A061535

/-! ## A061535.P12040429938915755841

`∑[A337334(n)]+1`
-/

namespace A061535.P12040429938915755841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061535.P12040429938915755841

namespace A061535

/-- `∑[A337334(n)]+1` -/
def P12040429938915755841.Spec : Prop :=
  ∀ n, P12040429938915755841.a n = A061535 (n + 1)

end A061535

/-! ## A061535.P373202865238590064

`∑[A337334(abs(1-n)-log2(1/2))]`
-/

namespace A061535.P373202865238590064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337334 (SequenceMachineLib.roundAway ((|1 - (n : ℤ)| : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061535.P373202865238590064

namespace A061535

/-- `∑[A337334(abs(1-n)-log2(1/2))]` -/
def P373202865238590064.Spec : Prop :=
  ∀ n, P373202865238590064.a n = A061535 (n + 1)

end A061535

/-! ## A061535.P9427024288356942305

`∑[A054977(n)*A337334(n)]`
-/

namespace A061535.P9427024288356942305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A337334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061535.P9427024288356942305

namespace A061535

/-- `∑[A054977(n)*A337334(n)]` -/
def P9427024288356942305.Spec : Prop :=
  ∀ n, P9427024288356942305.a n = A061535 (n + 1)

end A061535

/-! ## A061535.P10555325550666443223

`∑[1-(A057427(n)-A337334(n))]`
-/

namespace A061535.P10555325550666443223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A057427 n - A337334 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061535.P10555325550666443223

namespace A061535

/-- `∑[1-(A057427(n)-A337334(n))]` -/
def P10555325550666443223.Spec : Prop :=
  ∀ n, P10555325550666443223.a n = A061535 (n + 1)

end A061535

/-! ## A061535.P8881638570773264660

`a(n-1)+A337334(n)+A000038(n)` with `a(0)=2`
-/

namespace A061535.P8881638570773264660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A337334 n + A000038 n)

end

end A061535.P8881638570773264660

namespace A061535

/-- `a(n-1)+A337334(n)+A000038(n)` -/
def P8881638570773264660.Spec : Prop :=
  ∀ n, P8881638570773264660.a n = A061535 (n + 1)

end A061535

/-!
# A061536: a(1) = 1 and a(n) = a(n-1) + (the number of primes <= n) for n > 1.

The programs for A061536, the canonical program `A061536.P1966979558929038729` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061536 has offset 1).

The definition of A061536 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061536.P1966979558929038729

`1+A046992(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061536

/-- `1+A046992(n+1)` -/
def P1966979558929038729.Spec : Prop :=
  ∀ n, P1966979558929038729.a n = A061536 (n + 1)

theorem P1966979558929038729.correct : P1966979558929038729.Spec := by
  intro n
  simp only [A061536, Nat.add_sub_cancel]

end A061536

/-! ## A061536.P3116808006283122703

`a(n-1)+A000720(n+1)` with `a(0)=1`
-/

namespace A061536.P3116808006283122703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000720 (n + 1)

end

end A061536.P3116808006283122703

namespace A061536

/-- `a(n-1)+A000720(n+1)` -/
def P3116808006283122703.Spec : Prop :=
  ∀ n, P3116808006283122703.a n = A061536 (n + 1)

end A061536

/-! ## A061536.P2179176513261016740

`∑[∑{p}[n+1, floor(#/(n+1))]]+a(n-1)` with `a(0)=1`
-/

namespace A061536.P2179176513261016740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A061536.P2179176513261016740

namespace A061536

/-- `∑[∑{p}[n+1, floor(#/(n+1))]]+a(n-1)` -/
def P2179176513261016740.Spec : Prop :=
  ∀ n, P2179176513261016740.a n = A061536 (n + 1)

end A061536

/-! ## A061536.P1522509829465253532

`A002815(n+1)-n`
-/

namespace A061536.P1522509829465253532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 (n + 1) - (n : ℤ)

end

end A061536.P1522509829465253532

namespace A061536

/-- `A002815(n+1)-n` -/
def P1522509829465253532.Spec : Prop :=
  ∀ n, P1522509829465253532.a n = A061536 (n + 1)

theorem P1522509829465253532.correct : P1522509829465253532.Spec := by
  intro n
  simp only [A061536, Nat.add_sub_cancel, A061536.P1522509829465253532.a, A061536.P1966979558929038729.a, A002815, A002815.P11144953744924913715.f1, A002815.P11144953744924913715.a, A046992, A046992.P5723550036857346414.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061536

/-! ## A061536.P14280213649984564648

`∑[∑[A080545(n+1)]]`
-/

namespace A061536.P14280213649984564648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061536.P14280213649984564648

namespace A061536

/-- `∑[∑[A080545(n+1)]]` -/
def P14280213649984564648.Spec : Prop :=
  ∀ n, P14280213649984564648.a n = A061536 (n + 1)

end A061536

/-! ## A061536.P11958798694088390437

`∑[A000720(n+1)]+1`
-/

namespace A061536.P11958798694088390437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061536.P11958798694088390437

namespace A061536

/-- `∑[A000720(n+1)]+1` -/
def P11958798694088390437.Spec : Prop :=
  ∀ n, P11958798694088390437.a n = A061536 (n + 1)

end A061536

/-! ## A061536.P4908991843969566468

`∑[A033270(n+1)+1]`
-/

namespace A061536.P4908991843969566468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061536.P4908991843969566468

namespace A061536

/-- `∑[A033270(n+1)+1]` -/
def P4908991843969566468.Spec : Prop :=
  ∀ n, P4908991843969566468.a n = A061536 (n + 1)

end A061536

/-! ## A061536.P18054856309626150388

`∑[A036234(n+1)]-n`
-/

namespace A061536.P18054856309626150388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A061536.P18054856309626150388

namespace A061536

/-- `∑[A036234(n+1)]-n` -/
def P18054856309626150388.Spec : Prop :=
  ∀ n, P18054856309626150388.a n = A061536 (n + 1)

end A061536

/-! ## A061536.P9225099484532690024

`∑[∑[A010051(n+1)]]+1`
-/

namespace A061536.P9225099484532690024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061536.P9225099484532690024

namespace A061536

/-- `∑[∑[A010051(n+1)]]+1` -/
def P9225099484532690024.Spec : Prop :=
  ∀ n, P9225099484532690024.a n = A061536 (n + 1)

end A061536

/-! ## A061536.P479245207649608335

`∑[∑[A353471(2*(n+1))]]`
-/

namespace A061536.P479245207649608335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353471 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061536.P479245207649608335

namespace A061536

/-- `∑[∑[A353471(2*(n+1))]]` -/
def P479245207649608335.Spec : Prop :=
  ∀ n, P479245207649608335.a n = A061536 (n + 1)

end A061536

/-! ## A061536.P7163867900415511994

`∑[∑[and(1, A257727(n+1))]]`
-/

namespace A061536.P7163867900415511994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A257727 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061536.P7163867900415511994

namespace A061536

/-- `∑[∑[and(1, A257727(n+1))]]` -/
def P7163867900415511994.Spec : Prop :=
  ∀ n, P7163867900415511994.a n = A061536 (n + 1)

end A061536

/-! ## A061536.P6272750798777032667

`∑[∑[A080339(n+1)]]-n`
-/

namespace A061536.P6272750798777032667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A061536.P6272750798777032667

namespace A061536

/-- `∑[∑[A080339(n+1)]]-n` -/
def P6272750798777032667.Spec : Prop :=
  ∀ n, P6272750798777032667.a n = A061536 (n + 1)

end A061536

/-! ## A061536.P3197479895784199112

`∑[n-A065855(n+1)]+1`
-/

namespace A061536.P3197479895784199112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A065855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061536.P3197479895784199112

namespace A061536

/-- `∑[n-A065855(n+1)]+1` -/
def P3197479895784199112.Spec : Prop :=
  ∀ n, P3197479895784199112.a n = A061536 (n + 1)

end A061536

/-! ## A061536.P13094265601775413118

`∑[∑[abs(A151763(n+1))]+1]`
-/

namespace A061536.P13094265601775413118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A151763 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061536.P13094265601775413118

namespace A061536

/-- `∑[∑[abs(A151763(n+1))]+1]` -/
def P13094265601775413118.Spec : Prop :=
  ∀ n, P13094265601775413118.a n = A061536 (n + 1)

end A061536

/-! ## A061536.P17445211717325466784

`∑[∑[A129950(n+1)²]]+1`
-/

namespace A061536.P17445211717325466784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061536.P17445211717325466784

namespace A061536

/-- `∑[∑[A129950(n+1)²]]+1` -/
def P17445211717325466784.Spec : Prop :=
  ∀ n, P17445211717325466784.a n = A061536 (n + 1)

end A061536

/-! ## A061536.P11217845294859623694

`∑[∑[A267133(n+1)²]]-n`
-/

namespace A061536.P11217845294859623694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267133 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A061536.P11217845294859623694

namespace A061536

/-- `∑[∑[A267133(n+1)²]]-n` -/
def P11217845294859623694.Spec : Prop :=
  ∀ n, P11217845294859623694.a n = A061536 (n + 1)

end A061536

/-! ## A061536.P8251306725398203964

`∑[∑[A064911(2*(n+1))]]+1`
-/

namespace A061536.P8251306725398203964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061536.P8251306725398203964

namespace A061536

/-- `∑[∑[A064911(2*(n+1))]]+1` -/
def P8251306725398203964.Spec : Prop :=
  ∀ n, P8251306725398203964.a n = A061536 (n + 1)

end A061536

/-! ## A061536.P13880609401103999921

`∑[∑[char[record[A000010(n+1)]]]]+1`
-/

namespace A061536.P13880609401103999921
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061536.P13880609401103999921

namespace A061536

/-- `∑[∑[char[record[A000010(n+1)]]]]+1` -/
def P13880609401103999921.Spec : Prop :=
  ∀ n, (P13880609401103999921.a n : ℤ) = A061536 (n + 1)

end A061536

/-! ## A061536.P12769145962661842521

`∑[∑[char[A000040(n+1)-1]]]+1`
-/

namespace A061536.P12769145962661842521
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061536.P12769145962661842521

namespace A061536

/-- `∑[∑[char[A000040(n+1)-1]]]+1` -/
def P12769145962661842521.Spec : Prop :=
  ∀ n, (P12769145962661842521.a n : ℤ) = A061536 (n + 1)

end A061536

/-! ## A061536.P15873174987976526851

`∑[∑[C(2, A000005(n+1))]-2]+1`
-/

namespace A061536.P15873174987976526851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061536.P15873174987976526851

namespace A061536

/-- `∑[∑[C(2, A000005(n+1))]-2]+1` -/
def P15873174987976526851.Spec : Prop :=
  ∀ n, P15873174987976526851.a n = A061536 (n + 1)

end A061536

/-!
# A061537: Product of the unitary divisors of n: a(n) = Product_{d|n, gcd(d,n/d) = 1} d.

The programs for A061537, the canonical program `A061537.P7218639686472403361` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061537 has offset 1).

The definition of A061537 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061537.P7218639686472403361

`(n+1)^(A034444(n+1)/2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061537

/-- `(n+1)^(A034444(n+1)/2)` -/
def P7218639686472403361.Spec : Prop :=
  ∀ n, P7218639686472403361.a n = (A061537 (n + 1) : ℝ)

end A061537

/-! ## A061537.P17524148914800543166

`(n+1)^2^(A001221(n+1)-1)`
-/

namespace A061537.P17524148914800543166
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((2 : ℚ) ^ (A001221 (n + 1) - 1 : ℤ) : ℝ)

end

end A061537.P17524148914800543166

namespace A061537

/-- `(n+1)^2^(A001221(n+1)-1)` -/
def P17524148914800543166.Spec : Prop :=
  ∀ n, P17524148914800543166.a n = (A061537 (n + 1) : ℝ)

end A061537

/-! ## A061537.P9076252014804813643

`(n+1)*A290480(n+1)`
-/

namespace A061537.P9076252014804813643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A290480 (n + 1)

end

end A061537.P9076252014804813643

namespace A061537

/-- `(n+1)*A290480(n+1)` -/
def P9076252014804813643.Spec : Prop :=
  ∀ n, P9076252014804813643.a n = A061537 (n + 1)

end A061537

/-! ## A061537.P8200961740907353381

`(n+1)^A007875(n+1)`
-/

namespace A061537.P8200961740907353381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A007875 (n + 1) : ℤ)

end

end A061537.P8200961740907353381

namespace A061537

/-- `(n+1)^A007875(n+1)` -/
def P8200961740907353381.Spec : Prop :=
  ∀ n, P8200961740907353381.a n = (A061537 (n + 1) : ℚ)

end A061537

/-! ## A061537.P1849280548267734077

`sqrt(n+1)^A034444(n+1)`
-/

namespace A061537.P1849280548267734077
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A034444 (n + 1) : ℤ)

end

end A061537.P1849280548267734077

namespace A061537

/-- `sqrt(n+1)^A034444(n+1)` -/
def P1849280548267734077.Spec : Prop :=
  ∀ n, P1849280548267734077.a n = (A061537 (n + 1) : ℝ)

end A061537

/-! ## A061537.P9300716616060662188

`(n+1)^2^A297155(n+1)`
-/

namespace A061537.P9300716616060662188
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((2 : ℚ) ^ (A297155 (n + 1) : ℤ) : ℝ)

end

end A061537.P9300716616060662188

namespace A061537

/-- `(n+1)^2^A297155(n+1)` -/
def P9300716616060662188.Spec : Prop :=
  ∀ n, P9300716616060662188.a n = (A061537 (n + 1) : ℝ)

end A061537

/-! ## A061537.P3888957735301988036

`(n+1)^A038548(∏{p}[n+1, #])`
-/

namespace A061537.P3888957735301988036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A038548 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)

end

end A061537.P3888957735301988036

namespace A061537

/-- `(n+1)^A038548(∏{p}[n+1, #])` -/
def P3888957735301988036.Spec : Prop :=
  ∀ n, P3888957735301988036.a n = (A061537 (n + 1) : ℚ)

end A061537

/-! ## A061537.P8006833765028977194

`sqrt(n+1)^2^A001221(n+1)`
-/

namespace A061537.P8006833765028977194
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ ((2 : ℚ) ^ (A001221 (n + 1) : ℤ) : ℝ)

end

end A061537.P8006833765028977194

namespace A061537

/-- `sqrt(n+1)^2^A001221(n+1)` -/
def P8006833765028977194.Spec : Prop :=
  ∀ n, P8006833765028977194.a n = (A061537 (n + 1) : ℝ)

end A061537

/-! ## A061537.P10104301557060731814

`sqrt(n+1)^A000005(∏{p}[n+1, #])`
-/

namespace A061537.P10104301557060731814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)

end

end A061537.P10104301557060731814

namespace A061537

/-- `sqrt(n+1)^A000005(∏{p}[n+1, #])` -/
def P10104301557060731814.Spec : Prop :=
  ∀ n, P10104301557060731814.a n = (A061537 (n + 1) : ℝ)

end A061537

/-! ## A061537.P3250413947734788089

`(n+1)^(A229347(n+1)/(n+1))`
-/

namespace A061537.P3250413947734788089
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A229347 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A061537.P3250413947734788089

namespace A061537

/-- `(n+1)^(A229347(n+1)/(n+1))` -/
def P3250413947734788089.Spec : Prop :=
  ∀ n, P3250413947734788089.a n = (A061537 (n + 1) : ℝ)

end A061537

/-! ## A061537.P15067087682785550470

`A062509(n+1)*A062513(n+1)`
-/

namespace A061537.P15067087682785550470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062509 (n + 1) * A062513 (n + 1)

end

end A061537.P15067087682785550470

namespace A061537

/-- `A062509(n+1)*A062513(n+1)` -/
def P15067087682785550470.Spec : Prop :=
  ∀ n, P15067087682785550470.a n = A061537 (n + 1)

end A061537

/-! ## A061537.P1559301849984561363

`∏{d}[n+1, #]/A061538(n+1)`
-/

namespace A061537.P1559301849984561363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A061538 (n + 1) : ℚ)

end

end A061537.P1559301849984561363

namespace A061537

/-- `∏{d}[n+1, #]/A061538(n+1)` -/
def P1559301849984561363.Spec : Prop :=
  ∀ n, P1559301849984561363.a n = (A061537 (n + 1) : ℚ)

end A061537

/-! ## A061537.P5367182226070129901

`A007955(n+1)/A061538(n+1)`
-/

namespace A061537.P5367182226070129901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A061538 (n + 1) : ℚ)

end

end A061537.P5367182226070129901

namespace A061537

/-- `A007955(n+1)/A061538(n+1)` -/
def P5367182226070129901.Spec : Prop :=
  ∀ n, P5367182226070129901.a n = (A061537 (n + 1) : ℚ)

end A061537

/-! ## A061537.P317421515343283599

`A183091(n+1)/A061538(n+1)*A183092(n+1)`
-/

namespace A061537.P317421515343283599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183091 (n + 1) : ℚ) / (A061538 (n + 1) : ℚ) * (A183092 (n + 1) : ℚ)

end

end A061537.P317421515343283599

namespace A061537

/-- `A183091(n+1)/A061538(n+1)*A183092(n+1)` -/
def P317421515343283599.Spec : Prop :=
  ∀ n, P317421515343283599.a n = (A061537 (n + 1) : ℚ)

end A061537

/-! ## A061537.P855633204243849853

`(n+1)^A024361((n+1)²)`
-/

namespace A061537.P855633204243849853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A024361 ((n + 1) ^ 2) : ℤ)

end

end A061537.P855633204243849853

namespace A061537

/-- `(n+1)^A024361((n+1)²)` -/
def P855633204243849853.Spec : Prop :=
  ∀ n, P855633204243849853.a n = (A061537 (n + 1) : ℚ)

end A061537

/-! ## A061537.P9737330541104171189

`A384716((n+1)²)/A384716(n+1)`
-/

namespace A061537.P9737330541104171189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384716 ((n + 1) ^ 2) : ℚ) / (A384716 (n + 1) : ℚ)

end

end A061537.P9737330541104171189

namespace A061537

/-- `A384716((n+1)²)/A384716(n+1)` -/
def P9737330541104171189.Spec : Prop :=
  ∀ n, P9737330541104171189.a n = (A061537 (n + 1) : ℚ)

end A061537

/-! ## A061537.P6472200127154954716

`A384763((n+1)²)/A384763(n+1)`
-/

namespace A061537.P6472200127154954716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384763 ((n + 1) ^ 2) : ℚ) / (A384763 (n + 1) : ℚ)

end

end A061537.P6472200127154954716

namespace A061537

/-- `A384763((n+1)²)/A384763(n+1)` -/
def P6472200127154954716.Spec : Prop :=
  ∀ n, P6472200127154954716.a n = (A061537 (n + 1) : ℚ)

end A061537

/-! ## A061537.P3187809372630341681

`(n+1)^A000010(A034444((n+1)²))`
-/

namespace A061537.P3187809372630341681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000010 (A034444 ((n + 1) ^ 2)).toNat : ℤ)

end

end A061537.P3187809372630341681

namespace A061537

/-- `(n+1)^A000010(A034444((n+1)²))` -/
def P3187809372630341681.Spec : Prop :=
  ∀ n, P3187809372630341681.a n = (A061537 (n + 1) : ℚ)

end A061537

/-! ## A061537.P17735252377834178682

`(n+1)^A000010(A158522((n+1)²))`
-/

namespace A061537.P17735252377834178682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000010 (A158522 ((n + 1) ^ 2)).toNat : ℤ)

end

end A061537.P17735252377834178682

namespace A061537

/-- `(n+1)^A000010(A158522((n+1)²))` -/
def P17735252377834178682.Spec : Prop :=
  ∀ n, P17735252377834178682.a n = (A061537 (n + 1) : ℚ)

end A061537

/-! ## A061537.P14597332541286972063

`(n+1)^A000010(A333749((n+1)²))`
-/

namespace A061537.P14597332541286972063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000010 (A333749 ((n + 1) ^ 2)).toNat : ℤ)

end

end A061537.P14597332541286972063

namespace A061537

/-- `(n+1)^A000010(A333749((n+1)²))` -/
def P14597332541286972063.Spec : Prop :=
  ∀ n, P14597332541286972063.a n = (A061537 (n + 1) : ℚ)

end A061537

/-!
# A061538: Product of all divisors of n, divided by product of unitary divisors; or equivalently product of non-unitary divisors of n.

The programs for A061538, the canonical program `A061538.P6238861604211954641` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061538 has offset 1).

The definition of A061538 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048105, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061538.P6238861604211954641

`(n+1)^(A048105(n+1)/2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061538

/-- `(n+1)^(A048105(n+1)/2)` -/
def P6238861604211954641.Spec : Prop :=
  ∀ n, P6238861604211954641.a n = (A061538 (n + 1) : ℝ)

end A061538

/-! ## A061538.P17265664262212580824

`(n+1)^((A000005(n+1)-A034444(n+1))/2)`
-/

namespace A061538.P17265664262212580824
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (n + 1) - A034444 (n + 1) : ℚ) / 2 : ℝ)

end

end A061538.P17265664262212580824

namespace A061538

/-- `(n+1)^((A000005(n+1)-A034444(n+1))/2)` -/
def P17265664262212580824.Spec : Prop :=
  ∀ n, P17265664262212580824.a n = (A061538 (n + 1) : ℝ)

end A061538

/-! ## A061538.P7168853207487538997

`∏{d}[n+1, #]/A061537(n+1)`
-/

namespace A061538.P7168853207487538997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A061537 (n + 1) : ℚ)

end

end A061538.P7168853207487538997

namespace A061538

/-- `∏{d}[n+1, #]/A061537(n+1)` -/
def P7168853207487538997.Spec : Prop :=
  ∀ n, P7168853207487538997.a n = (A061538 (n + 1) : ℚ)

end A061538

/-! ## A061538.P5771055835776245906

`A007955(n+1)/A061537(n+1)`
-/

namespace A061538.P5771055835776245906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A061537 (n + 1) : ℚ)

end

end A061538.P5771055835776245906

namespace A061538

/-- `A007955(n+1)/A061537(n+1)` -/
def P5771055835776245906.Spec : Prop :=
  ∀ n, P5771055835776245906.a n = (A061538 (n + 1) : ℚ)

end A061538

/-! ## A061538.P1358096024847683247

`A007956(n+1)/A290480(n+1)`
-/

namespace A061538.P1358096024847683247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007956 (n + 1) : ℚ) / (A290480 (n + 1) : ℚ)

end

end A061538.P1358096024847683247

namespace A061538

/-- `A007956(n+1)/A290480(n+1)` -/
def P1358096024847683247.Spec : Prop :=
  ∀ n, P1358096024847683247.a n = (A061538 (n + 1) : ℚ)

end A061538

/-! ## A061538.P2533423764488881109

`(n+1)*A007956(n+1)/A061537(n+1)`
-/

namespace A061538.P2533423764488881109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A007956 (n + 1) : ℚ) / (A061537 (n + 1) : ℚ))

end

end A061538.P2533423764488881109

namespace A061538

/-- `(n+1)*A007956(n+1)/A061537(n+1)` -/
def P2533423764488881109.Spec : Prop :=
  ∀ n, P2533423764488881109.a n = (A061538 (n + 1) : ℚ)

end A061538

/-! ## A061538.P15443015940675818694

`sqrt(n+1)^Δ[A006218(n)]/A061537(n+1)`
-/

namespace A061538.P15443015940675818694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (f1 (n + 1) - f1 n : ℤ) / (A061537 (n + 1) : ℝ)

end

end A061538.P15443015940675818694

namespace A061538

/-- `sqrt(n+1)^Δ[A006218(n)]/A061537(n+1)` -/
def P15443015940675818694.Spec : Prop :=
  ∀ n, P15443015940675818694.a n = (A061538 (n + 1) : ℝ)

end A061538

/-! ## A061538.P5374680634822512734

`(n+1)^(A000005(n+1)/2)/A061537(n+1)`
-/

namespace A061538.P5374680634822512734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (n + 1) : ℚ) / 2 : ℝ) / (A061537 (n + 1) : ℝ)

end

end A061538.P5374680634822512734

namespace A061538

/-- `(n+1)^(A000005(n+1)/2)/A061537(n+1)` -/
def P5374680634822512734.Spec : Prop :=
  ∀ n, P5374680634822512734.a n = (A061538 (n + 1) : ℝ)

end A061538

/-! ## A061538.P4313701651683193256

`A183091(n+1)/A061537(n+1)*A183092(n+1)`
-/

namespace A061538.P4313701651683193256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183091 (n + 1) : ℚ) / (A061537 (n + 1) : ℚ) * (A183092 (n + 1) : ℚ)

end

end A061538.P4313701651683193256

namespace A061538

/-- `A183091(n+1)/A061537(n+1)*A183092(n+1)` -/
def P4313701651683193256.Spec : Prop :=
  ∀ n, P4313701651683193256.a n = (A061538 (n + 1) : ℚ)

end A061538

/-! ## A061538.P6311033530127846448

`A291186(n+1)/A061537(n+1)*A306671(n+1)`
-/

namespace A061538.P6311033530127846448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291186 (n + 1) : ℚ) / (A061537 (n + 1) : ℚ) * (A306671 (n + 1) : ℚ)

end

end A061538.P6311033530127846448

namespace A061538

/-- `A291186(n+1)/A061537(n+1)*A306671(n+1)` -/
def P6311033530127846448.Spec : Prop :=
  ∀ n, P6311033530127846448.a n = (A061538 (n + 1) : ℚ)

end A061538

/-! ## A061538.P12787521246445924810

`sqrt((n+1)^A048105(n+1))`
-/

namespace A061538.P12787521246445924810
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℚ) ^ (A048105 (n + 1) : ℤ) : ℝ)

end

end A061538.P12787521246445924810

namespace A061538

/-- `sqrt((n+1)^A048105(n+1))` -/
def P12787521246445924810.Spec : Prop :=
  ∀ n, P12787521246445924810.a n = (A061538 (n + 1) : ℝ)

end A061538

/-! ## A061538.P12017093246657045054

`sqrt(A062758(n+1))/A061537(n+1)`
-/

namespace A061538.P12017093246657045054
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062758 (n + 1) : ℝ) / (A061537 (n + 1) : ℝ)

end

end A061538.P12017093246657045054

namespace A061538

/-- `sqrt(A062758(n+1))/A061537(n+1)` -/
def P12017093246657045054.Spec : Prop :=
  ∀ n, P12017093246657045054.a n = (A061538 (n + 1) : ℝ)

end A061538

/-!
# A061539: Number of signed permutations in B_n which correspond to smooth Schubert varieties. These permutations avoid the following patterns: (-2 -1) (1 2 -3) (1 -2 -3) (-1 2 -3) (2 -1 -3) (-2 1 -3) (3 -2 1) (2 -4 3 1) (-2 -4 3 1) (3412) (3 4 -1 2) (-3 4 1 2) (4 1 3 -2) (4 -1 3 -2) (4 2 3 1) (4 2 3 -1) (-4 2 3 1).

The programs for A061539, there is no canonical definition to state claims against.
-/

/-! ## A061539.P16109664982521963769

`A032351(n+1)+A224240(n)-A224066(n)`
-/

namespace A061539.P16109664982521963769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032351 (n + 1) + (A224240 n - A224066 n)

end

end A061539.P16109664982521963769

/-! ## A061539.P17299892470378731618

`A027925(A150299(n))`
-/

namespace A061539.P17299892470378731618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027925 (A150299 n).toNat

end

end A061539.P17299892470378731618

/-!
# A061540: Number of connected labeled graphs with n nodes and n+1 edges.

The programs for A061540, there is no canonical definition to state claims against.
-/

/-! ## A061540.P13127832305777337432

`A343088(∑[n+3])`
-/

namespace A061540.P13127832305777337432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061540.P13127832305777337432

/-! ## A061540.P11903313066116453477

`A343088(A141214(n))%A258487(n+1)`
-/

namespace A061540.P11903313066116453477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343088 (A141214 n).toNat) (A258487 (n + 1))

end

end A061540.P11903313066116453477

/-! ## A061540.P17274507629880558759

`A343088(A141214(n))^A128936(n)`
-/

namespace A061540.P17274507629880558759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343088 (A141214 n).toNat : ℚ) ^ (A128936 n : ℤ)

end

end A061540.P17274507629880558759

/-!
# A061541: Number of connected labeled graphs with n nodes and n+2 edges.

The programs for A061541, there is no canonical definition to state claims against.
-/

/-! ## A061541.P3512246901164290473

`A343088(∑[n+3]+n+3)`
-/

namespace A061541.P3512246901164290473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A061541.P3512246901164290473

/-! ## A061541.P7847047961443269281

`A343088(A046691(n+2))/A010684(2*n)`
-/

namespace A061541.P7847047961443269281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343088 (A046691 (n + 2)).toNat : ℚ) / (A010684 (2 * n) : ℚ)

end

end A061541.P7847047961443269281

/-! ## A061541.P16878869870231848448

`A343088(A046691(n+2))+A000035(2*(n+1))`
-/

namespace A061541.P16878869870231848448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (A046691 (n + 2)).toNat + A000035 (2 * (n + 1))

end

end A061541.P16878869870231848448

/-! ## A061541.P885037382061594773

`A343088(A046691(n+2))+A063524(2*(n+1))`
-/

namespace A061541.P885037382061594773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (A046691 (n + 2)).toNat + A063524 (2 * (n + 1))

end

end A061541.P885037382061594773

/-!
# A061542: Number of connected labeled graphs with n nodes and n+3 edges.

The programs for A061542, there is no canonical definition to state claims against.
-/

/-! ## A061542.P15368972045698492187

`A343088(A052905(n+2))`
-/

namespace A061542.P15368972045698492187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (A052905 (n + 2)).toNat

end

end A061542.P15368972045698492187

/-! ## A061542.P6399435462267017579

`A343088(eq[4, A025581(n)])`
-/

namespace A061542.P6399435462267017579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061542.P6399435462267017579

/-! ## A061542.P14465793062167273695

`A343088(eq[9, A099375(n)])`
-/

namespace A061542.P14465793062167273695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061542.P14465793062167273695

/-! ## A061542.P8339227502390420533

`A343088(eq[16, A130321(n)])`
-/

namespace A061542.P8339227502390420533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061542.P8339227502390420533

/-! ## A061542.P14269066148306796731

`A343088(A055998(n+3)-2)`
-/

namespace A061542.P14269066148306796731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (A055998 (n + 3) - 2).toNat

end

end A061542.P14269066148306796731

/-!
# A061543: Number of connected labeled graphs with n nodes and n+4 edges.

The programs for A061543, there is no canonical definition to state claims against.
-/

/-! ## A061543.P11932052517152876464

`A343088(∑[n+6]+9)`
-/

namespace A061543.P11932052517152876464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A061543.P11932052517152876464

/-! ## A061543.P16754953159646791448

`A025439(or(A011782(n), 2*n)²*n)`
-/

namespace A061543.P16754953159646791448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 (Int.lor (A011782 n) (2 * n : ℤ) ^ 2 * (n : ℤ)).toNat

end

end A061543.P16754953159646791448

/-!
# A061544: Number of connected labeled graphs with n nodes and n+6 edges.

The programs for A061544, there is no canonical definition to state claims against.
-/

/-! ## A061544.P10642822998772412032

`A343088(A155212(n+4))`
-/

namespace A061544.P10642822998772412032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (A155212 (n + 4)).toNat

end

end A061544.P10642822998772412032

/-! ## A061544.P16284037980069220321

`A343088(A056126(n)+28)`
-/

namespace A061544.P16284037980069220321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (A056126 n + 28).toNat

end

end A061544.P16284037980069220321

/-! ## A061544.P5161672253001421770

`A343088(eq[7, A025581(n)])`
-/

namespace A061544.P5161672253001421770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061544.P5161672253001421770

/-! ## A061544.P5795168724113480042

`A343088(eq[8, A195663(n)])`
-/

namespace A061544.P5795168724113480042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061544.P5795168724113480042

/-! ## A061544.P17546521063049743436

`A343088(eq[15, A099375(n)])`
-/

namespace A061544.P17546521063049743436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061544.P17546521063049743436

/-!
# A061546: Harmonic mean of digits is 7.

The programs for A061546, there is no canonical definition to state claims against.
-/

/-! ## A061546.P9943669528481886850

`A061829(5^n)+2`
-/

namespace A061546.P9943669528481886850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061829 (5 ^ n) + 2

end

end A061546.P9943669528481886850

/-!
# A061547: Number of 132 and 213-avoiding derangements of {1,2,...,n}.

The programs for A061547, the canonical program `A061547.P17363509105597455886` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061547 has offset 0).

The definition of A061547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061547.P17363509105597455886

`4*a(n-2)+2` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061547

/-- `4*a(n-2)+2` -/
def P17363509105597455886.Spec : Prop :=
  ∀ n, (P17363509105597455886.a n : ℤ) = A061547 n

theorem P17363509105597455886.correct : P17363509105597455886.Spec := by
  intro n
  simp only [A061547]

end A061547

/-! ## A061547.P6484594319255626839

`ceil(abs(3/8*2^n+1/24*(-2)^n-2/3))`
-/

namespace A061547.P6484594319255626839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(3 : ℚ) / 8 * (2 ^ n : ℚ) + (1 : ℚ) / 24 * ((-2) ^ n : ℚ) - (2 : ℚ) / 3|⌉

end

end A061547.P6484594319255626839

namespace A061547

/-- `ceil(abs(3/8*2^n+1/24*(-2)^n-2/3))` -/
def P6484594319255626839.Spec : Prop :=
  ∀ n, P6484594319255626839.a n = A061547 n

end A061547

/-! ## A061547.P17619121330107387429

`∑[ogf((1-x-3x^2+5x^3)/(1-4x^2))]`
-/

namespace A061547.P17619121330107387429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -3, 5] [1, 0, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061547.P17619121330107387429

namespace A061547

/-- `∑[ogf((1-x-3x^2+5x^3)/(1-4x^2))]` -/
def P17619121330107387429.Spec : Prop :=
  ∀ n, P17619121330107387429.a n = A061547 n

end A061547

/-! ## A061547.P17972171592966806296

`ogf((1-x-3x^2+5x^3)/(1-x-4x^2+4x^3))`
-/

namespace A061547.P17972171592966806296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -3, 5] [1, -1, -4, 4] n

end

end A061547.P17972171592966806296

namespace A061547

/-- `ogf((1-x-3x^2+5x^3)/(1-x-4x^2+4x^3))` -/
def P17972171592966806296.Spec : Prop :=
  ∀ n, P17972171592966806296.a n = A061547 n

end A061547

/-! ## A061547.P6219599187056844326

`or(2, 4*a(n-2))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A061547.P6219599187056844326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  Nat.lor 2 (4 * a (n - 2))

end

end A061547.P6219599187056844326

namespace A061547

/-- `or(2, 4*a(n-2))` -/
def P6219599187056844326.Spec : Prop :=
  ∀ n, (P6219599187056844326.a n : ℤ) = A061547 n

end A061547

/-! ## A061547.P4564665210315813259

`xor(2, 4*a(n-2))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A061547.P4564665210315813259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  Nat.xor 2 (4 * a (n - 2))

end

end A061547.P4564665210315813259

namespace A061547

/-- `xor(2, 4*a(n-2))` -/
def P4564665210315813259.Spec : Prop :=
  ∀ n, (P4564665210315813259.a n : ℤ) = A061547 n

end A061547

/-! ## A061547.P8181303157104503965

`∑[4*a(n-2)]` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=1`
-/

namespace A061547.P8181303157104503965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, 1] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061547.P8181303157104503965

namespace A061547

/-- `∑[4*a(n-2)]` -/
def P8181303157104503965.Spec : Prop :=
  ∀ n, P8181303157104503965.a n = A061547 n

end A061547

/-! ## A061547.P16959007881622518208

`2-(a(n-2)-5*a(n-2))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A061547.P16959007881622518208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  2 - (a (n - 2) - 5 * a (n - 2))

end

end A061547.P16959007881622518208

namespace A061547

/-- `2-(a(n-2)-5*a(n-2))` -/
def P16959007881622518208.Spec : Prop :=
  ∀ n, P16959007881622518208.a n = A061547 n

end A061547

/-! ## A061547.P9651708623579106670

`abs(1-∑[A158780(n)²])`
-/

namespace A061547.P9651708623579106670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A061547.P9651708623579106670

namespace A061547

/-- `abs(1-∑[A158780(n)²])` -/
def P9651708623579106670.Spec : Prop :=
  ∀ n, P9651708623579106670.a n = A061547 n

end A061547

/-! ## A061547.P12404243482242193463

`A305750(n)+A057428(n)`
-/

namespace A061547.P12404243482242193463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n + A057428 n

end

end A061547.P12404243482242193463

namespace A061547

/-- `A305750(n)+A057428(n)` -/
def P12404243482242193463.Spec : Prop :=
  ∀ n, P12404243482242193463.a n = A061547 n

end A061547

/-! ## A061547.P9376914977601313120

`A305750(n)-A057427(n)`
-/

namespace A061547.P9376914977601313120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n - A057427 n

end

end A061547.P9376914977601313120

namespace A061547

/-- `A305750(n)-A057427(n)` -/
def P9376914977601313120.Spec : Prop :=
  ∀ n, P9376914977601313120.a n = A061547 n

end A061547

/-! ## A061547.P920427472598881043

`A305750(n)-A157928(n+1)`
-/

namespace A061547.P920427472598881043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n - A157928 (n + 1)

end

end A061547.P920427472598881043

namespace A061547

/-- `A305750(n)-A157928(n+1)` -/
def P920427472598881043.Spec : Prop :=
  ∀ n, P920427472598881043.a n = A061547 n

end A061547

/-! ## A061547.P8843730059894532608

`A305750(n)-n/A028310(n)`
-/

namespace A061547.P8843730059894532608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305750 n : ℚ) - (n : ℚ) / (A028310 n : ℚ)

end

end A061547.P8843730059894532608

namespace A061547

/-- `A305750(n)-n/A028310(n)` -/
def P8843730059894532608.Spec : Prop :=
  ∀ n, P8843730059894532608.a n = (A061547 n : ℚ)

end A061547

/-! ## A061547.P6631338350649484134

`A305750(n)-(n-A014681(n))²`
-/

namespace A061547.P6631338350649484134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n - ((n : ℤ) - A014681 n) ^ 2

end

end A061547.P6631338350649484134

namespace A061547

/-- `A305750(n)-(n-A014681(n))²` -/
def P6631338350649484134.Spec : Prop :=
  ∀ n, P6631338350649484134.a n = A061547 n

end A061547

/-! ## A061547.P564996020627411035

`char[A189549(n+1)]+A305750(n)-1`
-/

namespace A061547.P564996020627411035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189549 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A305750 n - 1)

end

end A061547.P564996020627411035

namespace A061547

/-- `char[A189549(n+1)]+A305750(n)-1` -/
def P564996020627411035.Spec : Prop :=
  ∀ n, P564996020627411035.a n = A061547 n

end A061547

/-! ## A061547.P16851190938935679379

`A305750(n)-and(1, A000225(n))`
-/

namespace A061547.P16851190938935679379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n - Int.land 1 (A000225 n)

end

end A061547.P16851190938935679379

namespace A061547

/-- `A305750(n)-and(1, A000225(n))` -/
def P16851190938935679379.Spec : Prop :=
  ∀ n, P16851190938935679379.a n = A061547 n

end A061547

/-! ## A061547.P772598628368543225

`abs(Δ[A001045(n)-A117575(n)²])`
-/

namespace A061547.P772598628368543225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n - A117575 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A061547.P772598628368543225

namespace A061547

/-- `abs(Δ[A001045(n)-A117575(n)²])` -/
def P772598628368543225.Spec : Prop :=
  ∀ n, P772598628368543225.a n = A061547 n

end A061547

/-! ## A061547.P15891140324738550761

`A305750(n)-A131577(n)/Δ[A131577(n)]`
-/

namespace A061547.P15891140324738550761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305750 n : ℚ) - (A131577 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A061547.P15891140324738550761

namespace A061547

/-- `A305750(n)-A131577(n)/Δ[A131577(n)]` -/
def P15891140324738550761.Spec : Prop :=
  ∀ n, P15891140324738550761.a n = (A061547 n : ℚ)

end A061547

/-! ## A061547.P11735158251499860925

`xor(A055010(n), A136326(n))`
-/

namespace A061547.P11735158251499860925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055010 n) (A136326 n)

end

end A061547.P11735158251499860925

namespace A061547

/-- `xor(A055010(n), A136326(n))` -/
def P11735158251499860925.Spec : Prop :=
  ∀ n, P11735158251499860925.a n = A061547 n

end A061547

/-! ## A061547.P7537532948400611469

`A176965(n+1)%A257113(n+1)`
-/

namespace A061547.P7537532948400611469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176965 (n + 1)) (A257113 (n + 1))

end

end A061547.P7537532948400611469

namespace A061547

/-- `A176965(n+1)%A257113(n+1)` -/
def P7537532948400611469.Spec : Prop :=
  ∀ n, P7537532948400611469.a n = A061547 n

end A061547

/-!
# A061548: Numerator of probability that there is no error when average of n numbers is computed, assuming errors of +1, -1 are possible and they each occur with p = 1/4.

The programs for A061548, the canonical program `A061548.P13837351600793897947` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061548 has offset 0).

The definition of A061548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061548.P13837351600793897947

`A001448(n)/A001316(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061548

/-- `A001448(n)/A001316(n)` -/
def P13837351600793897947.Spec : Prop :=
  ∀ n, P13837351600793897947.a n = (A061548 n : ℚ)

end A061548

/-! ## A061548.P740566896921566286

`2*A001448(n)/A117973(n)`
-/

namespace A061548.P740566896921566286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001448 n : ℚ) / (A117973 n : ℚ)

end

end A061548.P740566896921566286

namespace A061548

/-- `2*A001448(n)/A117973(n)` -/
def P740566896921566286.Spec : Prop :=
  ∀ n, P740566896921566286.a n = (A061548 n : ℚ)

end A061548

/-! ## A061548.P14319824364043556629

`record[-((2*n-1)*a(n-1)/gcd(n, a(n-1)))]` with `a(0)=1`
-/

namespace A061548.P14319824364043556629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  -(((2 * n : ℤ) - 1 : ℚ) * (f1 (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061548.P14319824364043556629

namespace A061548

/-- `record[-((2*n-1)*a(n-1)/gcd(n, a(n-1)))]` -/
def P14319824364043556629.Spec : Prop :=
  ∀ n, P14319824364043556629.a n = (A061548 n : ℚ)

end A061548

/-! ## A061548.P12567492918487492636

`A001790(2*n)`
-/

namespace A061548.P12567492918487492636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (2 * n)

end

end A061548.P12567492918487492636

namespace A061548

/-- `A001790(2*n)` -/
def P12567492918487492636.Spec : Prop :=
  ∀ n, P12567492918487492636.a n = A061548 n

end A061548

/-! ## A061548.P5908614262794017849

`record[A001790(n)/(-1)^n]`
-/

namespace A061548.P5908614262794017849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061548.P5908614262794017849

namespace A061548

/-- `record[A001790(n)/(-1)^n]` -/
def P5908614262794017849.Spec : Prop :=
  ∀ n, P5908614262794017849.a n = (A061548 n : ℚ)

end A061548

/-! ## A061548.P4626881478992920437

`(2*n+1)*A001795(n)`
-/

namespace A061548.P4626881478992920437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A001795 n

end

end A061548.P4626881478992920437

namespace A061548

/-- `(2*n+1)*A001795(n)` -/
def P4626881478992920437.Spec : Prop :=
  ∀ n, P4626881478992920437.a n = A061548 n

end A061548

/-! ## A061548.P1998860351518931961

`record[A001790(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A061548.P1998860351518931961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001790 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061548.P1998860351518931961

namespace A061548

/-- `record[A001790(C(n, a(n-1)))]` -/
def P1998860351518931961.Spec : Prop :=
  ∀ n, P1998860351518931961.a n = A061548 n

end A061548

/-! ## A061548.P2731255107894150853

`(2*n+1)*A098597(2*n)`
-/

namespace A061548.P2731255107894150853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A098597 (2 * n)

end

end A061548.P2731255107894150853

namespace A061548

/-- `(2*n+1)*A098597(2*n)` -/
def P2731255107894150853.Spec : Prop :=
  ∀ n, P2731255107894150853.a n = A061548 n

end A061548

/-! ## A061548.P5311111326158467869

`Δ[n²]*A002596(2*n+1)`
-/

namespace A061548.P5311111326158467869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A002596 (2 * n + 1)

end

end A061548.P5311111326158467869

namespace A061548

/-- `Δ[n²]*A002596(2*n+1)` -/
def P5311111326158467869.Spec : Prop :=
  ∀ n, P5311111326158467869.a n = A061548 n

end A061548

/-! ## A061548.P522041674744946184

`record[A001790(floor(n/(n%2+1)))]`
-/

namespace A061548.P522041674744946184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061548.P522041674744946184

namespace A061548

/-- `record[A001790(floor(n/(n%2+1)))]` -/
def P522041674744946184.Spec : Prop :=
  ∀ n, P522041674744946184.a n = A061548 n

end A061548

/-!
# A061549: Denominator of probability that there is no error when average of n numbers is computed, assuming errors of +1, -1 are possible and they each occur with p=1/4.

The programs for A061549, the canonical program `A061549.P10960663828498957261` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061549 has offset 0).

The definition of A061549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061549.P10960663828498957261

`16^n/A001316(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061549

/-- `16^n/A001316(n)` -/
def P10960663828498957261.Spec : Prop :=
  ∀ n, P10960663828498957261.a n = (A061549 n : ℚ)

end A061549

/-! ## A061549.P10090996687626881058

`abs(A067624(n)/A117972(n))`
-/

namespace A061549.P10090996687626881058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A067624 n : ℚ) / (A117972 n : ℚ)|

end

end A061549.P10090996687626881058

namespace A061549

/-- `abs(A067624(n)/A117972(n))` -/
def P10090996687626881058.Spec : Prop :=
  ∀ n, P10090996687626881058.a n = (A061549 n : ℚ)

end A061549

/-! ## A061549.P517264736357923800

`∏[gcd(8*n, (4^n)²)]`
-/

namespace A061549.P517264736357923800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (8 * n) ((4 ^ n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A061549.P517264736357923800

namespace A061549

/-- `∏[gcd(8*n, (4^n)²)]` -/
def P517264736357923800.Spec : Prop :=
  ∀ n, (P517264736357923800.a n : ℤ) = A061549 n

end A061549

/-! ## A061549.P10825835210607074551

`record[xor(n, -n)*a(n-1)]` with `a(0)=1`
-/

namespace A061549.P10825835210607074551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (n : ℤ) (-(n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061549.P10825835210607074551

namespace A061549

/-- `record[xor(n, -n)*a(n-1)]` -/
def P10825835210607074551.Spec : Prop :=
  ∀ n, P10825835210607074551.a n = A061549 n

end A061549

/-! ## A061549.P17995703229187340392

`4^n*∏[gcd(2*n, 2^n)]`
-/

namespace A061549.P17995703229187340392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A061549.P17995703229187340392

namespace A061549

/-- `4^n*∏[gcd(2*n, 2^n)]` -/
def P17995703229187340392.Spec : Prop :=
  ∀ n, (P17995703229187340392.a n : ℤ) = A061549 n

end A061549

/-! ## A061549.P10798568008809071364

`8*gcd(n, a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A061549.P10798568008809071364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  8 * (Nat.gcd n (a (n - 1)) * a (n - 1))

end

end A061549.P10798568008809071364

namespace A061549

/-- `8*gcd(n, a(n-1))*a(n-1)` -/
def P10798568008809071364.Spec : Prop :=
  ∀ n, (P10798568008809071364.a n : ℤ) = A061549 n

end A061549

/-! ## A061549.P9276481935123338289

`record[or(2*n, -(2*n))*a(n-1)]` with `a(0)=1`
-/

namespace A061549.P9276481935123338289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lor (2 * n : ℤ) (-(2 * n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061549.P9276481935123338289

namespace A061549

/-- `record[or(2*n, -(2*n))*a(n-1)]` -/
def P9276481935123338289.Spec : Prop :=
  ∀ n, P9276481935123338289.a n = A061549 n

end A061549

/-! ## A061549.P10803972612423355688

`record[-(and(n+2, -(n+2))*a(n-2))]` with `a(0)=1, a(1)=1`
-/

namespace A061549.P10803972612423355688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  -(Int.land (n + 2 : ℤ) (-(n + 2 : ℤ)) * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061549.P10803972612423355688

namespace A061549

/-- `record[-(and(n+2, -(n+2))*a(n-2))]` -/
def P10803972612423355688.Spec : Prop :=
  ∀ n, P10803972612423355688.a n = A061549 n

end A061549

/-! ## A061549.P15318359543144051879

`A046161(2*n)`
-/

namespace A061549.P15318359543144051879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (2 * n)

end

end A061549.P15318359543144051879

namespace A061549

/-- `A046161(2*n)` -/
def P15318359543144051879.Spec : Prop :=
  ∀ n, P15318359543144051879.a n = A061549 n

end A061549

/-! ## A061549.P1634855987008954242

`A120777(2*n)`
-/

namespace A061549.P1634855987008954242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120777 (2 * n)

end

end A061549.P1634855987008954242

namespace A061549

/-- `A120777(2*n)` -/
def P1634855987008954242.Spec : Prop :=
  ∀ n, P1634855987008954242.a n = A061549 n

end A061549

/-!
# A061550: a(n) = (2*n+1)*(2*n+3)*(2*n+5).

The programs for A061550, the canonical program `A061550.P11575397276040476215` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061550 has offset 0).

The definition of A061550 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(2*n+3)*(2*n+5)` (program `A061550.P11575397276040476215`, by `A061550.P11575397276040476215.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061550.P11575397276040476215

`(2*n+1)*(2*n+3)*(2*n+5)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061550

/-- `(2*n+1)*(2*n+3)*(2*n+5)` -/
def P11575397276040476215.Spec : Prop :=
  ∀ n, (P11575397276040476215.a n : ℤ) = A061550 n

theorem P11575397276040476215.correct : P11575397276040476215.Spec := by
  intro n
  simp only [A061550]

end A061550

/-! ## A061550.P3280073912622471598

`Δ[C(2*n*(n+2), 2)]`
-/

namespace A061550.P3280073912622471598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n * (n + 2))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A061550.P3280073912622471598

namespace A061550

/-- `Δ[C(2*n*(n+2), 2)]` -/
def P3280073912622471598.Spec : Prop :=
  ∀ n, P3280073912622471598.a n = A061550 n

theorem P3280073912622471598.correct : P3280073912622471598.Spec := by
  intro n
  simp only [A061550, Nat.add_sub_cancel, A061550.P3280073912622471598.f1, A061550.P3280073912622471598.a, A061550.P11575397276040476215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061550

/-! ## A061550.P9849212462399175529

`record[lcm(n+3, 4-(n+3)²)]`
-/

namespace A061550.P9849212462399175529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) (4 - ((n + 3) ^ 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061550.P9849212462399175529

namespace A061550

/-- `record[lcm(n+3, 4-(n+3)²)]` -/
def P9849212462399175529.Spec : Prop :=
  ∀ n, (P9849212462399175529.a n : ℤ) = A061550 n

end A061550

/-! ## A061550.P17598766738029386623

`Δ[A196506(n)]`
-/

namespace A061550.P17598766738029386623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061550.P17598766738029386623

namespace A061550

/-- `Δ[A196506(n)]` -/
def P17598766738029386623.Spec : Prop :=
  ∀ n, P17598766738029386623.a n = A061550 n

theorem P17598766738029386623.correct : P17598766738029386623.Spec := by
  intro n
  simp only [A061550, Nat.add_sub_cancel, A061550.P17598766738029386623.f1, A061550.P17598766738029386623.a, A061550.P11575397276040476215.a, A196506, A196506.P13094109565414344105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061550

/-! ## A061550.P13706577037574087217

`A016755(n+1)-(8*n+12)`
-/

namespace A061550.P13706577037574087217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 (n + 1) - (8 * n + 12 : ℤ)

end

end A061550.P13706577037574087217

namespace A061550

/-- `A016755(n+1)-(8*n+12)` -/
def P13706577037574087217.Spec : Prop :=
  ∀ n, P13706577037574087217.a n = A061550 n

theorem P13706577037574087217.correct : P13706577037574087217.Spec := by
  intro n
  simp only [A061550, Nat.add_sub_cancel, A061550.P13706577037574087217.a, A061550.P11575397276040476215.a, A016755, A016755.P5941101717872313811.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061550

/-! ## A061550.P11513516141732914383

`A369922(n)+A304505(n)`
-/

namespace A061550.P11513516141732914383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369922 n + A304505 n

end

end A061550.P11513516141732914383

namespace A061550

/-- `A369922(n)+A304505(n)` -/
def P11513516141732914383.Spec : Prop :=
  ∀ n, P11513516141732914383.a n = A061550 n

theorem P11513516141732914383.correct : P11513516141732914383.Spec := by
  intro n
  simp only [A061550, Nat.add_sub_cancel, A061550.P11513516141732914383.a, A061550.P11575397276040476215.a, A304505, A304505.P6536953699317814335.a, A369922, A369922.P11658645378781673811.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061550

/-! ## A061550.P12212402987368453054

`∪[A133766(n), A133767(n)]`
-/

namespace A061550.P12212402987368453054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A061550.P12212402987368453054

namespace A061550

/-- `∪[A133766(n), A133767(n)]` -/
def P12212402987368453054.Spec : Prop :=
  ∀ n, (P12212402987368453054.a n : ℤ) = A061550 n

end A061550

/-! ## A061550.P909102020417435523

`A192848(n+1)+A016945(n)`
-/

namespace A061550.P909102020417435523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192848 (n + 1) + A016945 n

end

end A061550.P909102020417435523

namespace A061550

/-- `A192848(n+1)+A016945(n)` -/
def P909102020417435523.Spec : Prop :=
  ∀ n, P909102020417435523.a n = A061550 n

theorem P909102020417435523.correct : P909102020417435523.Spec := by
  intro n
  simp only [A061550, Nat.add_sub_cancel, A061550.P909102020417435523.a, A061550.P11575397276040476215.a, A016945, A016945.P12463160785118576711.a, A192848, A192848.P2598608813376400390.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061550

/-! ## A061550.P11491781901036391568

`A196506(n+1)-A196506(n)`
-/

namespace A061550.P11491781901036391568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196506 (n + 1) - A196506 n

end

end A061550.P11491781901036391568

namespace A061550

/-- `A196506(n+1)-A196506(n)` -/
def P11491781901036391568.Spec : Prop :=
  ∀ n, P11491781901036391568.a n = A061550 n

theorem P11491781901036391568.correct : P11491781901036391568.Spec := by
  intro n
  simp only [A061550, Nat.add_sub_cancel, A061550.P11491781901036391568.a, A061550.P11575397276040476215.a, A196506, A196506.P13094109565414344105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061550

/-! ## A061550.P4949166494148089804

`A162540(n)+2*A162540(n)`
-/

namespace A061550.P4949166494148089804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162540 n + 2 * A162540 n

end

end A061550.P4949166494148089804

namespace A061550

/-- `A162540(n)+2*A162540(n)` -/
def P4949166494148089804.Spec : Prop :=
  ∀ n, P4949166494148089804.a n = A061550 n

end A061550

/-! ## A061550.P8589839131387747670

`lcm(A078371(n), A103991(n+1))`
-/

namespace A061550.P8589839131387747670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078371 n) (A103991 (n + 1))

end

end A061550.P8589839131387747670

namespace A061550

/-- `lcm(A078371(n), A103991(n+1))` -/
def P8589839131387747670.Spec : Prop :=
  ∀ n, (P8589839131387747670.a n : ℤ) = A061550 n

end A061550

/-! ## A061550.P6667225095747949706

`A000466(n+1)+A000466(n+1)*A103517(n+1)`
-/

namespace A061550.P6667225095747949706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (n + 1) + A000466 (n + 1) * A103517 (n + 1)

end

end A061550.P6667225095747949706

namespace A061550

/-- `A000466(n+1)+A000466(n+1)*A103517(n+1)` -/
def P6667225095747949706.Spec : Prop :=
  ∀ n, P6667225095747949706.a n = A061550 n

end A061550

/-! ## A061550.P6220949025647641928

`A370912(Δ[n²])`
-/

namespace A061550.P6220949025647641928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370912 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A061550.P6220949025647641928

namespace A061550

/-- `A370912(Δ[n²])` -/
def P6220949025647641928.Spec : Prop :=
  ∀ n, P6220949025647641928.a n = A061550 n

end A061550

/-! ## A061550.P11710527372919168303

`A212836(2*(n+1))-2`
-/

namespace A061550.P11710527372919168303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212836 (2 * (n + 1)) - 2

end

end A061550.P11710527372919168303

namespace A061550

/-- `A212836(2*(n+1))-2` -/
def P11710527372919168303.Spec : Prop :=
  ∀ n, P11710527372919168303.a n = A061550 n

end A061550

/-! ## A061550.P3452682757234194987

`A096382(2*n+3)/2`
-/

namespace A061550.P3452682757234194987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096382 (2 * n + 3) : ℚ) / 2

end

end A061550.P3452682757234194987

namespace A061550

/-- `A096382(2*n+3)/2` -/
def P3452682757234194987.Spec : Prop :=
  ∀ n, P3452682757234194987.a n = (A061550 n : ℚ)

theorem P3452682757234194987.correct : P3452682757234194987.Spec := by
  intro n
  simp only [A061550, Nat.add_sub_cancel, A061550.P3452682757234194987.a, A061550.P11575397276040476215.a, A096382, A096382.P13222923210308492109.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061550

/-! ## A061550.P5782697974583460651

`lcm(3, A370912(2*n+1))`
-/

namespace A061550.P5782697974583460651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A370912 (2 * n + 1))

end

end A061550.P5782697974583460651

namespace A061550

/-- `lcm(3, A370912(2*n+1))` -/
def P5782697974583460651.Spec : Prop :=
  ∀ n, (P5782697974583460651.a n : ℤ) = A061550 n

end A061550

/-! ## A061550.P10638979067483036949

`A151974(2*n+1)/∑[n+1]`
-/

namespace A061550.P10638979067483036949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151974 (2 * n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A061550.P10638979067483036949

namespace A061550

/-- `A151974(2*n+1)/∑[n+1]` -/
def P10638979067483036949.Spec : Prop :=
  ∀ n, P10638979067483036949.a n = (A061550 n : ℚ)

end A061550

/-! ## A061550.P3914414699182192435

`A090197(2*n+1)+A016813(n)`
-/

namespace A061550.P3914414699182192435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090197 (2 * n + 1) + A016813 n

end

end A061550.P3914414699182192435

namespace A061550

/-- `A090197(2*n+1)+A016813(n)` -/
def P3914414699182192435.Spec : Prop :=
  ∀ n, P3914414699182192435.a n = A061550 n

theorem P3914414699182192435.correct : P3914414699182192435.Spec := by
  intro n
  simp only [A061550, Nat.add_sub_cancel, A061550.P3914414699182192435.a, A061550.P11575397276040476215.a, A016813, A016813.P15626904835145642280.a, A090197, A090197.P16054348597824220922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061550

/-! ## A061550.P16769680064289902631

`A370912(2*n+1)+A000007(n+1)`
-/

namespace A061550.P16769680064289902631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370912 (2 * n + 1) + A000007 (n + 1)

end

end A061550.P16769680064289902631

namespace A061550

/-- `A370912(2*n+1)+A000007(n+1)` -/
def P16769680064289902631.Spec : Prop :=
  ∀ n, P16769680064289902631.a n = A061550 n

theorem P16769680064289902631.correct : P16769680064289902631.Spec := by
  intro n
  simp only [A061550, Nat.add_sub_cancel, A061550.P16769680064289902631.a, A061550.P11575397276040476215.a, A000007, A000007.P6599383543502402472.a, A370912, A370912.P13249200892205574452.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061550

/-! ## A061550.P13604081854664597678

`A064043(2*(n+1))-3`
-/

namespace A061550.P13604081854664597678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064043 (2 * (n + 1)) - 3

end

end A061550.P13604081854664597678

namespace A061550

/-- `A064043(2*(n+1))-3` -/
def P13604081854664597678.Spec : Prop :=
  ∀ n, P13604081854664597678.a n = A061550 n

theorem P13604081854664597678.correct : P13604081854664597678.Spec := by
  intro n
  simp only [A061550, Nat.add_sub_cancel, A061550.P13604081854664597678.a, A061550.P11575397276040476215.a, A064043, A064043.P3578565822102951633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061550

/-!
# A061551: Number of paths along a corridor width 8, starting from one side.

The programs for A061551, the canonical program `A061551.P15914493708777200643` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061551 has offset 0).

The definition of A061551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061551.P9500965535420307461

`A187498(3*n+2)`
-/

namespace A061551.P9500965535420307461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187498 (3 * n + 2)

end

end A061551.P9500965535420307461

namespace A061551

/-- `A187498(3*n+2)` -/
def P9500965535420307461.Spec : Prop :=
  ∀ n, P9500965535420307461.a n = A061551 n

end A061551

/-! ## A061551.P15914493708777200643

`a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061551

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` -/
def P15914493708777200643.Spec : Prop :=
  ∀ n, P15914493708777200643.a n = A061551 n

theorem P15914493708777200643.correct : P15914493708777200643.Spec := by
  intro n
  simp only [A061551]

end A061551

/-! ## A061551.P9278041028953888516

`∑[ogf((-1+2x^2)/(-1+3x^2+x^3))]`
-/

namespace A061551.P9278041028953888516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, 0, -3, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061551.P9278041028953888516

namespace A061551

/-- `∑[ogf((-1+2x^2)/(-1+3x^2+x^3))]` -/
def P9278041028953888516.Spec : Prop :=
  ∀ n, P9278041028953888516.a n = A061551 n

end A061551

/-! ## A061551.P15502759000162000601

`ogf((1-2x^2)/(1-x-3x^2+2x^3+x^4))`
-/

namespace A061551.P15502759000162000601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -1, -3, 2, 1] n

end

end A061551.P15502759000162000601

namespace A061551

/-- `ogf((1-2x^2)/(1-x-3x^2+2x^3+x^4))` -/
def P15502759000162000601.Spec : Prop :=
  ∀ n, P15502759000162000601.a n = A061551 n

end A061551

/-! ## A061551.P8207125458324328895

`∑[a(n-3)+3*a(n-2)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A061551.P8207125458324328895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 3) + 3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061551.P8207125458324328895

namespace A061551

/-- `∑[a(n-3)+3*a(n-2)]` -/
def P8207125458324328895.Spec : Prop :=
  ∀ n, (P8207125458324328895.a n : ℤ) = A061551 n

end A061551

/-! ## A061551.P782344841557806609

`3*a(n-2)+a(n-3)-1` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A061551.P782344841557806609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  3 * a (n - 2) + (a (n - 3) - 1)

end

end A061551.P782344841557806609

namespace A061551

/-- `3*a(n-2)+a(n-3)-1` -/
def P782344841557806609.Spec : Prop :=
  ∀ n, P782344841557806609.a n = A061551 n

end A061551

/-! ## A061551.P18267739959698976951

`3*a(n-2)-(1-a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A061551.P18267739959698976951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  3 * a (n - 2) - (1 - a (n - 3))

end

end A061551.P18267739959698976951

namespace A061551

/-- `3*a(n-2)-(1-a(n-3))` -/
def P18267739959698976951.Spec : Prop :=
  ∀ n, P18267739959698976951.a n = A061551 n

end A061551

/-! ## A061551.P8013994141125801287

`∑[A188022(abs(1-n))]`
-/

namespace A061551.P8013994141125801287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061551.P8013994141125801287

namespace A061551

/-- `∑[A188022(abs(1-n))]` -/
def P8013994141125801287.Spec : Prop :=
  ∀ n, P8013994141125801287.a n = A061551 n

end A061551

/-! ## A061551.P17067390824155819366

`A188022(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A061551.P17067390824155819366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188022 (n - 1) + a (n - 1)

end

end A061551.P17067390824155819366

namespace A061551

/-- `A188022(n-1)+a(n-1)` -/
def P17067390824155819366.Spec : Prop :=
  ∀ n, P17067390824155819366.a n = A061551 n

end A061551

/-! ## A061551.P2736920818708474239

`∑[A188048(n)+A188048(n)-A052931(n)]`
-/

namespace A061551.P2736920818708474239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 n + (A188048 n - A052931 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061551.P2736920818708474239

namespace A061551

/-- `∑[A188048(n)+A188048(n)-A052931(n)]` -/
def P2736920818708474239.Spec : Prop :=
  ∀ n, P2736920818708474239.a n = A061551 n

end A061551

/-! ## A061551.P8783342115773013128

`A188022(n+1)-A188021(n)`
-/

namespace A061551.P8783342115773013128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (n + 1) - A188021 n

end

end A061551.P8783342115773013128

namespace A061551

/-- `A188022(n+1)-A188021(n)` -/
def P8783342115773013128.Spec : Prop :=
  ∀ n, P8783342115773013128.a n = A061551 n

end A061551

/-! ## A061551.P17980395492597872161

`∑[A188022(n)]+1-A188022(n)`
-/

namespace A061551.P17980395492597872161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A188022 n)

end

end A061551.P17980395492597872161

namespace A061551

/-- `∑[A188022(n)]+1-A188022(n)` -/
def P17980395492597872161.Spec : Prop :=
  ∀ n, P17980395492597872161.a n = A061551 n

end A061551

/-! ## A061551.P8402066035641556715

`∑[2*A188048(n)-A052931(n)]`
-/

namespace A061551.P8402066035641556715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188048 n - A052931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061551.P8402066035641556715

namespace A061551

/-- `∑[2*A188048(n)-A052931(n)]` -/
def P8402066035641556715.Spec : Prop :=
  ∀ n, P8402066035641556715.a n = A061551 n

end A061551

/-! ## A061551.P18135829528245430615

`A153340(n+1)-A090992(n+1)`
-/

namespace A061551.P18135829528245430615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153340 (n + 1) - A090992 (n + 1)

end

end A061551.P18135829528245430615

namespace A061551

/-- `A153340(n+1)-A090992(n+1)` -/
def P18135829528245430615.Spec : Prop :=
  ∀ n, P18135829528245430615.a n = A061551 n

theorem P18135829528245430615.correct : P18135829528245430615.Spec := by
  intro n
  simp only [A061551, Nat.add_sub_cancel, A061551.P18135829528245430615.a, A061551.P15914493708777200643.a, A090992, A090992.P10614762273881832958.a, A153340, A153340.P9472442687798973603.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061551

/-! ## A061551.P16912760712579188159

`A216236(eq[1, A216230(n)])`
-/

namespace A061551.P16912760712579188159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061551.P16912760712579188159

namespace A061551

/-- `A216236(eq[1, A216230(n)])` -/
def P16912760712579188159.Spec : Prop :=
  ∀ n, P16912760712579188159.a n = A061551 n

end A061551

/-! ## A061551.P6607129649569073343

`A216236(A007590(n)+n)`
-/

namespace A061551.P6607129649569073343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216236 (A007590 n + (n : ℤ)).toNat

end

end A061551.P6607129649569073343

namespace A061551

/-- `A216236(A007590(n)+n)` -/
def P6607129649569073343.Spec : Prop :=
  ∀ n, P6607129649569073343.a n = A061551 n

end A061551

/-!
# A061552: Number of 1324-avoiding permutations of length n.

The programs for A061552, there is no canonical definition to state claims against.
-/

/-! ## A061552.P17213705141114452409

`A395725(∑[n]+1)`
-/

namespace A061552.P17213705141114452409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395725 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A061552.P17213705141114452409

/-! ## A061552.P18350559729449770619

`A005802(n)+Δ[A079900(A079900(3*n+1))]`
-/

namespace A061552.P18350559729449770619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079900 (A079900 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005802 n + (f1 (n + 1) - f1 n)

end

end A061552.P18350559729449770619

/-! ## A061552.P14312420272580330008

`A028310(A338752(n))`
-/

namespace A061552.P14312420272580330008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A338752 n).toNat

end

end A061552.P14312420272580330008

/-! ## A061552.P7056152214059367472

`A023443(A338752(n)+1)`
-/

namespace A061552.P7056152214059367472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A338752 n + 1).toNat

end

end A061552.P7056152214059367472

/-!
# A061553: Sum of absolute values of coefficients of expansion of (1-x)(1-x^2)(1-x^3)...(1-x^n).

The programs for A061553, there is no canonical definition to state claims against.
-/

/-! ## A061553.P16032145386250105981

`A343953(∑[n+2]-2)+A008815(n)`
-/

namespace A061553.P16032145386250105981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343953 (∑ j ∈ Finset.range (n + 1), f1 j - 2) + A008815 n

end

end A061553.P16032145386250105981

/-! ## A061553.P13361020056282278185

`lt[A318954(n+1), A318935(A167197(n+6))]`
-/

namespace A061553.P13361020056282278185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318935 (A167197 (n + 6)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061553.P13361020056282278185

/-! ## A061553.P10338368948208012065

`A185284(n)+A343953(A055998(n))+A008815(n)`
-/

namespace A061553.P10338368948208012065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + (A343953 (A055998 n).toNat + A008815 n)

end

end A061553.P10338368948208012065

/-! ## A061553.P4383767044750040194

`lt[lcm(8, n+5), 56]+1`
-/

namespace A061553.P4383767044750040194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 8 (n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  56

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A061553.P4383767044750040194

/-! ## A061553.P16410303088392588279

`lt[2*n/gcd(8, n+4), log2(∑[3*n+2]-1)]`
-/

namespace A061553.P16410303088392588279
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (Nat.gcd 8 (n + 4) : ℚ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A061553.P16410303088392588279

/-!
# A061554: Square table read by antidiagonals: a(n,k) = binomial(n+k, floor(k/2)).

The programs for A061554, the canonical program `A061554.P3182441581472903683` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061554 has offset 0).

The definition of A061554 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(col(n)+row(n)-col(n), floor((row(n)-col(n))/2))` (program `A061554.P3182441581472903683`, by `A061554.P3182441581472903683.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061554.P3742358844460885789

`C(row(n), floor((row(n)-col(n))/2))`
-/

namespace A061554.P3742358844460885789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) ⌊((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) / 2⌋.toNat

end

end A061554.P3742358844460885789

namespace A061554

/-- `C(row(n), floor((row(n)-col(n))/2))` -/
def P3742358844460885789.Spec : Prop :=
  ∀ n, (P3742358844460885789.a n : ℤ) = A061554 n

theorem P3742358844460885789.correct : P3742358844460885789.Spec := by
  intro n
  simp only [A061554, Nat.add_sub_cancel, A061554.P3742358844460885789.a, A061554.P3182441581472903683.a, SequenceMachineLib.memo_apply]
  try simp

end A061554

/-! ## A061554.P3182441581472903683

`C(col(n)+row(n)-col(n), floor((row(n)-col(n))/2))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061554

/-- `C(col(n)+row(n)-col(n), floor((row(n)-col(n))/2))` -/
def P3182441581472903683.Spec : Prop :=
  ∀ n, (P3182441581472903683.a n : ℤ) = A061554 n

theorem P3182441581472903683.correct : P3182441581472903683.Spec := by
  intro n
  simp only [A061554]

end A061554

/-! ## A061554.P17550537901128183345

`C(row(n), floor((row(n)+col(n)+1)/2))`
-/

namespace A061554.P17550537901128183345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) ⌊(SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 1 : ℚ) / 2⌋.toNat

end

end A061554.P17550537901128183345

namespace A061554

/-- `C(row(n), floor((row(n)+col(n)+1)/2))` -/
def P17550537901128183345.Spec : Prop :=
  ∀ n, (P17550537901128183345.a n : ℤ) = A061554 n

end A061554

/-! ## A061554.P8118819243292032882

`A007318(A375779(n+1))`
-/

namespace A061554.P8118819243292032882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A375779 (n + 1)).toNat

end

end A061554.P8118819243292032882

namespace A061554

/-- `A007318(A375779(n+1))` -/
def P8118819243292032882.Spec : Prop :=
  ∀ n, P8118819243292032882.a n = A061554 n

end A061554

/-! ## A061554.P4855388179582726977

`A007318(A057028(n+1)-1)`
-/

namespace A061554.P4855388179582726977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A057028 (n + 1) - 1).toNat

end

end A061554.P4855388179582726977

namespace A061554

/-- `A007318(A057028(n+1)-1)` -/
def P4855388179582726977.Spec : Prop :=
  ∀ n, P4855388179582726977.a n = A061554 n

end A061554

/-! ## A061554.P9744622382311613388

`A007318(round(A025581(n)/2+n))`
-/

namespace A061554.P9744622382311613388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((A025581 n : ℚ) / 2 + (n : ℚ))).toNat

end

end A061554.P9744622382311613388

namespace A061554

/-- `A007318(round(A025581(n)/2+n))` -/
def P9744622382311613388.Spec : Prop :=
  ∀ n, P9744622382311613388.a n = A061554 n

end A061554

/-! ## A061554.P3186504673658884258

`C(A003056(n), A004526(A025581(n)))`
-/

namespace A061554.P3186504673658884258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A004526 (A025581 n).toNat).toNat

end

end A061554.P3186504673658884258

namespace A061554

/-- `C(A003056(n), A004526(A025581(n)))` -/
def P3186504673658884258.Spec : Prop :=
  ∀ n, (P3186504673658884258.a n : ℤ) = A061554 n

end A061554

/-! ## A061554.P16319445361508015436

`C(A003056(n), A002265(2*A025581(n)))`
-/

namespace A061554.P16319445361508015436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A002265 (2 * A025581 n).toNat).toNat

end

end A061554.P16319445361508015436

namespace A061554

/-- `C(A003056(n), A002265(2*A025581(n)))` -/
def P16319445361508015436.Spec : Prop :=
  ∀ n, (P16319445361508015436.a n : ℤ) = A061554 n

end A061554

/-! ## A061554.P16555287860996309867

`gcd(Δ[A108044(n)], A108044(n))`
-/

namespace A061554.P16555287860996309867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A108044 n)

end

end A061554.P16555287860996309867

namespace A061554

/-- `gcd(Δ[A108044(n)], A108044(n))` -/
def P16555287860996309867.Spec : Prop :=
  ∀ n, (P16555287860996309867.a n : ℤ) = A061554 n

end A061554

/-! ## A061554.P2866511756899845114

`A131923(A375779(n+1))-A003056(n)`
-/

namespace A061554.P2866511756899845114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131923 (A375779 (n + 1)).toNat - A003056 n

end

end A061554.P2866511756899845114

namespace A061554

/-- `A131923(A375779(n+1))-A003056(n)` -/
def P2866511756899845114.Spec : Prop :=
  ∀ n, P2866511756899845114.a n = A061554 n

end A061554

/-! ## A061554.P7657063403168632456

`A107430(A061579(n))`
-/

namespace A061554.P7657063403168632456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 (A061579 n).toNat

end

end A061554.P7657063403168632456

namespace A061554

/-- `A107430(A061579(n))` -/
def P7657063403168632456.Spec : Prop :=
  ∀ n, P7657063403168632456.a n = A061554 n

end A061554

/-! ## A061554.P16815623363081259259

`A107430(A114327(n)+n)`
-/

namespace A061554.P16815623363081259259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 (A114327 n + (n : ℤ)).toNat

end

end A061554.P16815623363081259259

namespace A061554

/-- `A107430(A114327(n)+n)` -/
def P16815623363081259259.Spec : Prop :=
  ∀ n, P16815623363081259259.a n = A061554 n

end A061554

/-! ## A061554.P8467262563218975687

`A107430(A038722(n+1)-1)`
-/

namespace A061554.P8467262563218975687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 (A038722 (n + 1) - 1).toNat

end

end A061554.P8467262563218975687

namespace A061554

/-- `A107430(A038722(n+1)-1)` -/
def P8467262563218975687.Spec : Prop :=
  ∀ n, P8467262563218975687.a n = A061554 n

end A061554

/-! ## A061554.P15679238077444332969

`A007318(A209293(n+1)-1)`
-/

namespace A061554.P15679238077444332969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A209293 (n + 1) - 1).toNat

end

end A061554.P15679238077444332969

namespace A061554

/-- `A007318(A209293(n+1)-1)` -/
def P15679238077444332969.Spec : Prop :=
  ∀ n, P15679238077444332969.a n = A061554 n

end A061554

/-! ## A061554.P4501703952753486671

`A107430(A002024(n+1)²-(n+1))`
-/

namespace A061554.P4501703952753486671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A061554.P4501703952753486671

namespace A061554

/-- `A107430(A002024(n+1)²-(n+1))` -/
def P4501703952753486671.Spec : Prop :=
  ∀ n, P4501703952753486671.a n = A061554 n

end A061554

/-! ## A061554.P6823943768318377075

`A107430(A038722(n+2))`
-/

namespace A061554.P6823943768318377075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 (A038722 (n + 2)).toNat

end

end A061554.P6823943768318377075

namespace A061554

/-- `A107430(A038722(n+2))` -/
def P6823943768318377075.Spec : Prop :=
  ∀ n, P6823943768318377075.a n = A061554 n

end A061554

/-! ## A061554.P18244712038904311523

`A127159(n)-A107430(n)`
-/

namespace A061554.P18244712038904311523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127159 n - A107430 n

end

end A061554.P18244712038904311523

namespace A061554

/-- `A127159(n)-A107430(n)` -/
def P18244712038904311523.Spec : Prop :=
  ∀ n, P18244712038904311523.a n = A061554 n

theorem P18244712038904311523.correct : P18244712038904311523.Spec := by
  intro n
  simp only [A061554, Nat.add_sub_cancel, A061554.P18244712038904311523.a, A061554.P3182441581472903683.a, A107430, A107430.P13838651932909551531.a, A127159, A127159.P3391310337848141613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061554

/-! ## A061554.P18132254377227378171

`A249095(A063657(n+1)-A128174(n+1))`
-/

namespace A061554.P18132254377227378171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249095 (A063657 (n + 1) - A128174 (n + 1)).toNat

end

end A061554.P18132254377227378171

namespace A061554

/-- `A249095(A063657(n+1)-A128174(n+1))` -/
def P18132254377227378171.Spec : Prop :=
  ∀ n, P18132254377227378171.a n = A061554 n

end A061554

/-! ## A061554.P17637642468252562126

`A152905(A064801(n+1))`
-/

namespace A061554.P17637642468252562126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (A064801 (n + 1)).toNat

end

end A061554.P17637642468252562126

namespace A061554

/-- `A152905(A064801(n+1))` -/
def P17637642468252562126.Spec : Prop :=
  ∀ n, P17637642468252562126.a n = A061554 n

end A061554

/-! ## A061554.P6395008374645374473

`A140751(A004201(n+1))`
-/

namespace A061554.P6395008374645374473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140751 (A004201 (n + 1)).toNat

end

end A061554.P6395008374645374473

namespace A061554

/-- `A140751(A004201(n+1))` -/
def P6395008374645374473.Spec : Prop :=
  ∀ n, P6395008374645374473.a n = A061554 n

end A061554

/-!
# A061555: Integer part of sigma(n!)/n!.

The programs for A061555, there is no canonical definition to state claims against.
-/

/-! ## A061555.P826828974885166749

`A028310(∑[char[A061556(n)]])`
-/

namespace A061555.P826828974885166749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061556 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061555.P826828974885166749

/-! ## A061555.P10993000551140935721

`A000007(n)+∑[char[A061556(n)]]`
-/

namespace A061555.P10993000551140935721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061556 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A061555.P10993000551140935721

/-! ## A061555.P10259652489996218304

`∑[char[A061556(n)]]+A004277(n)%2`
-/

namespace A061555.P10259652489996218304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061556 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A004277 n) 2

end

end A061555.P10259652489996218304

/-! ## A061555.P10532121418787297163

`∑[char[A061556(n)]]+A151569(n)%2`
-/

namespace A061555.P10532121418787297163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061556 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A151569 n) 2

end

end A061555.P10532121418787297163

/-! ## A061555.P10701246553971481030

`∑[char[A061556(n)]]+A008486(n)%3`
-/

namespace A061555.P10701246553971481030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061556 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A008486 n) 3

end

end A061555.P10701246553971481030

/-! ## A061555.P1364224075572660303

`∑[char[A061556(n)]]^A070750(n+1)²`
-/

namespace A061555.P1364224075572660303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061556 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A070750 (n + 1) ^ 2 : ℤ)

end

end A061555.P1364224075572660303

/-! ## A061555.P1562235898782314065

`floor(A062569(n)/A000142(n))`
-/

namespace A061555.P1562235898782314065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062569 n : ℚ) / (A000142 n : ℚ)⌋

end

end A061555.P1562235898782314065

/-! ## A061555.P10558122846984719009

`A000523(A102821(n)-A065120(n))`
-/

namespace A061555.P10558122846984719009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A102821 n - A065120 n).toNat

end

end A061555.P10558122846984719009

/-! ## A061555.P6081315360431252374

`A069624(A309098(n+1))`
-/

namespace A061555.P6081315360431252374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069624 (A309098 (n + 1)).toNat

end

end A061555.P6081315360431252374

/-!
# A061556: a(n) is the least k > 0 such that sigma(k!) >= n*k!.

The programs for A061556, there is no canonical definition to state claims against.
-/

/-! ## A061556.P11967955284069883638

`or(A229167(n), A324572(A229167(n)))`
-/

namespace A061556.P11967955284069883638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A229167 n) (A324572 (A229167 n).toNat)

end

end A061556.P11967955284069883638

/-! ## A061556.P7157123256447567938

`A003986(A318227(n+3)+A304019(n+1))`
-/

namespace A061556.P7157123256447567938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A318227 (n + 3) + A304019 (n + 1)).toNat

end

end A061556.P7157123256447567938

/-! ## A061556.P2618243980341759416

`or(A178786(A096237(n+1)), A352895(n+1))`
-/

namespace A061556.P2618243980341759416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178786 (A096237 (n + 1)).toNat) (A352895 (n + 1))

end

end A061556.P2618243980341759416

/-! ## A061556.P2412140870337540376

`C(A191853(A280664(2*(n+1))), A184828(n+1))`
-/

namespace A061556.P2412140870337540376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A191853 (A280664 (2 * (n + 1))).toNat).toNat (A184828 (n + 1)).toNat

end

end A061556.P2412140870337540376

/-!
# A061557: a(n) = (7*n+2)*C(n)/(n+2), where C(n) is the n-th Catalan number.

The programs for A061557, the canonical program `A061557.P14359171966651569724` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061557 has offset 1).

The definition of A061557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061557.P14359171966651569724

`(7*(n+1)+2)*A000108(n+1)/(n+3)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061557

/-- `(7*(n+1)+2)*A000108(n+1)/(n+3)` -/
def P14359171966651569724.Spec : Prop :=
  ∀ n, P14359171966651569724.a n = (A061557 (n + 1) : ℚ)

end A061557

/-! ## A061557.P6533906729672181008

`A000782(n+2)`
-/

namespace A061557.P6533906729672181008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000782 (n + 2)

end

end A061557.P6533906729672181008

namespace A061557

/-- `A000782(n+2)` -/
def P6533906729672181008.Spec : Prop :=
  ∀ n, P6533906729672181008.a n = A061557 (n + 1)

end A061557

/-! ## A061557.P4248658848153535622

`Δ[A081293(n+1)]`
-/

namespace A061557.P4248658848153535622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061557.P4248658848153535622

namespace A061557

/-- `Δ[A081293(n+1)]` -/
def P4248658848153535622.Spec : Prop :=
  ∀ n, P4248658848153535622.a n = A061557 (n + 1)

end A061557

/-! ## A061557.P6310750937762352200

`A005508(2*(n+1))`
-/

namespace A061557.P6310750937762352200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005508 (2 * (n + 1))

end

end A061557.P6310750937762352200

namespace A061557

/-- `A005508(2*(n+1))` -/
def P6310750937762352200.Spec : Prop :=
  ∀ n, P6310750937762352200.a n = A061557 (n + 1)

end A061557

/-! ## A061557.P202620081801284923

`∑[A071735(n+1)]+1`
-/

namespace A061557.P202620081801284923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061557.P202620081801284923

namespace A061557

/-- `∑[A071735(n+1)]+1` -/
def P202620081801284923.Spec : Prop :=
  ∀ n, P202620081801284923.a n = A061557 (n + 1)

end A061557

/-! ## A061557.P16832078403732933308

`record[A005508(A014681(n+1))]`
-/

namespace A061557.P16832078403732933308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005508 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061557.P16832078403732933308

namespace A061557

/-- `record[A005508(A014681(n+1))]` -/
def P16832078403732933308.Spec : Prop :=
  ∀ n, P16832078403732933308.a n = A061557 (n + 1)

end A061557

/-! ## A061557.P13026626122237867528

`A071717(n+1)+A026012(n)`
-/

namespace A061557.P13026626122237867528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071717 (n + 1) + A026012 n

end

end A061557.P13026626122237867528

namespace A061557

/-- `A071717(n+1)+A026012(n)` -/
def P13026626122237867528.Spec : Prop :=
  ∀ n, P13026626122237867528.a n = A061557 (n + 1)

end A061557

/-! ## A061557.P4872607937216694407

`A099376(n)+A005807(n+1)`
-/

namespace A061557.P4872607937216694407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A005807 (n + 1)

end

end A061557.P4872607937216694407

namespace A061557

/-- `A099376(n)+A005807(n+1)` -/
def P4872607937216694407.Spec : Prop :=
  ∀ n, P4872607937216694407.a n = A061557 (n + 1)

end A061557

/-! ## A061557.P4346680322412906981

`A099376(n)+A071716(n+2)`
-/

namespace A061557.P4346680322412906981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A071716 (n + 2)

end

end A061557.P4346680322412906981

namespace A061557

/-- `A099376(n)+A071716(n+2)` -/
def P4346680322412906981.Spec : Prop :=
  ∀ n, P4346680322412906981.a n = A061557 (n + 1)

end A061557

/-! ## A061557.P14871701699093249076

`A228180(n+2)+A014137(n)`
-/

namespace A061557.P14871701699093249076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228180 (n + 2) + A014137 n

end

end A061557.P14871701699093249076

namespace A061557

/-- `A228180(n+2)+A014137(n)` -/
def P14871701699093249076.Spec : Prop :=
  ∀ n, P14871701699093249076.a n = A061557 (n + 1)

end A061557

/-! ## A061557.P7101685842351946949

`Δ[A068875(n+1)+A014137(n)]`
-/

namespace A061557.P7101685842351946949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (n + 1) + A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061557.P7101685842351946949

namespace A061557

/-- `Δ[A068875(n+1)+A014137(n)]` -/
def P7101685842351946949.Spec : Prop :=
  ∀ n, P7101685842351946949.a n = A061557 (n + 1)

end A061557

/-! ## A061557.P10003130153189198632

`Δ[A068875(n+1)+A014138(n)]`
-/

namespace A061557.P10003130153189198632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (n + 1) + A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061557.P10003130153189198632

namespace A061557

/-- `Δ[A068875(n+1)+A014138(n)]` -/
def P10003130153189198632.Spec : Prop :=
  ∀ n, P10003130153189198632.a n = A061557 (n + 1)

end A061557

/-! ## A061557.P9845958069392746244

`∑[A071724(n)+2*A026012(n)]`
-/

namespace A061557.P9845958069392746244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n + 2 * A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061557.P9845958069392746244

namespace A061557

/-- `∑[A071724(n)+2*A026012(n)]` -/
def P9845958069392746244.Spec : Prop :=
  ∀ n, P9845958069392746244.a n = A061557 (n + 1)

end A061557

/-! ## A061557.P12929389413200499579

`A068875(n+2)-record[A097331(n)]`
-/

namespace A061557.P12929389413200499579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061557.P12929389413200499579

namespace A061557

/-- `A068875(n+2)-record[A097331(n)]` -/
def P12929389413200499579.Spec : Prop :=
  ∀ n, P12929389413200499579.a n = A061557 (n + 1)

end A061557

/-! ## A061557.P5778009449216048717

`A068875(n+2)-record[A126120(n)]`
-/

namespace A061557.P5778009449216048717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061557.P5778009449216048717

namespace A061557

/-- `A068875(n+2)-record[A126120(n)]` -/
def P5778009449216048717.Spec : Prop :=
  ∀ n, P5778009449216048717.a n = A061557 (n + 1)

end A061557

/-! ## A061557.P3702653343141921996

`A071721(n+1)+A000108(n+1)`
-/

namespace A061557.P3702653343141921996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 (n + 1) + A000108 (n + 1)

end

end A061557.P3702653343141921996

namespace A061557

/-- `A071721(n+1)+A000108(n+1)` -/
def P3702653343141921996.Spec : Prop :=
  ∀ n, P3702653343141921996.a n = A061557 (n + 1)

end A061557

/-! ## A061557.P2584993152525371431

`A000245(n+1)+A000108(n+2)`
-/

namespace A061557.P2584993152525371431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + A000108 (n + 2)

end

end A061557.P2584993152525371431

namespace A061557

/-- `A000245(n+1)+A000108(n+2)` -/
def P2584993152525371431.Spec : Prop :=
  ∀ n, P2584993152525371431.a n = A061557 (n + 1)

end A061557

/-! ## A061557.P10492254004857077856

`A071724(n+1)+A000108(n+2)`
-/

namespace A061557.P10492254004857077856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) + A000108 (n + 2)

end

end A061557.P10492254004857077856

namespace A061557

/-- `A071724(n+1)+A000108(n+2)` -/
def P10492254004857077856.Spec : Prop :=
  ∀ n, P10492254004857077856.a n = A061557 (n + 1)

end A061557

/-!
# A061558: The smallest difference of an increasing arithmetic progression of n primes with the minimal possible first term (A007918(n)).

The programs for A061558, there is no canonical definition to state claims against.
-/

/-! ## A061558.P15902886311649304557

`A130791(A133263(n))-A151800(n)`
-/

namespace A061558.P15902886311649304557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130791 (A133263 n).toNat - A151800 n

end

end A061558.P15902886311649304557

/-! ## A061558.P2611352867438427842

`A130791(A133263(n))-Δ[A117842(n)]`
-/

namespace A061558.P2611352867438427842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130791 (A133263 n).toNat - (f1 (n + 1) - f1 n)

end

end A061558.P2611352867438427842

/-! ## A061558.P18086450939301643489

`A130791(A133263(n))-A007918(n+1)`
-/

namespace A061558.P18086450939301643489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130791 (A133263 n).toNat - A007918 (n + 1)

end

end A061558.P18086450939301643489

/-! ## A061558.P2709061302373400451

`A130791(A133263(n))-(A013632(n)+n)`
-/

namespace A061558.P2709061302373400451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130791 (A133263 n).toNat - (A013632 n + (n : ℤ))

end

end A061558.P2709061302373400451

/-! ## A061558.P7064600264410481968

`A130791(A133263(n))-A000040(A230980(n)+1)`
-/

namespace A061558.P7064600264410481968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130791 (A133263 n).toNat - A000040 (A230980 n + 1).toNat

end

end A061558.P7064600264410481968

/-!
# A061560: Lengths of Farey-series (A005728) which are not primes.

The programs for A061560, the canonical program `A061560.P7270422985362392314` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061560 has offset 1).

The definition of A061560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061560.P2945579756490556650

`record[A171435(A005728(n))]`
-/

namespace A061560.P2945579756490556650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A005728 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061560.P2945579756490556650

namespace A061560

/-- `record[A171435(A005728(n))]` -/
def P2945579756490556650.Spec : Prop :=
  ∀ n, P2945579756490556650.a n = A061560 (n + 1)

end A061560

/-! ## A061560.P7270422985362392314

`record[A171435(A049643(n+1))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A061560

/-- `record[A171435(A049643(n+1))]` -/
def P7270422985362392314.Spec : Prop :=
  ∀ n, P7270422985362392314.a n = A061560 (n + 1)

theorem P7270422985362392314.correct : P7270422985362392314.Spec := by
  intro n
  simp only [A061560, Nat.add_sub_cancel]

end A061560

/-! ## A061560.P14946829940977766641

`record[A171435(A049696(n)/2+1)]`
-/

namespace A061560.P14946829940977766641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (SequenceMachineLib.roundAway ((A049696 n : ℚ) / 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061560.P14946829940977766641

namespace A061560

/-- `record[A171435(A049696(n)/2+1)]` -/
def P14946829940977766641.Spec : Prop :=
  ∀ n, P14946829940977766641.a n = A061560 (n + 1)

end A061560

/-! ## A061560.P12825379825940063380

`record[A171435(A140466(n)/4+1)]`
-/

namespace A061560.P12825379825940063380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (SequenceMachineLib.roundAway ((A140466 n : ℚ) / 4 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061560.P12825379825940063380

namespace A061560

/-- `record[A171435(A140466(n)/4+1)]` -/
def P12825379825940063380.Spec : Prop :=
  ∀ n, P12825379825940063380.a n = A061560 (n + 1)

end A061560

/-! ## A061560.P5880296615937312167

`record[A171435(∑[A000010(n+1)]+1)]`
-/

namespace A061560.P5880296615937312167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061560.P5880296615937312167

namespace A061560

/-- `record[A171435(∑[A000010(n+1)]+1)]` -/
def P5880296615937312167.Spec : Prop :=
  ∀ n, P5880296615937312167.a n = A061560 (n + 1)

end A061560

/-! ## A061560.P18273919171880581863

`A005728(eq[0, A010051(A005728(n))])`
-/

namespace A061560.P18273919171880581863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A005728 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061560.P18273919171880581863

namespace A061560

/-- `A005728(eq[0, A010051(A005728(n))])` -/
def P18273919171880581863.Spec : Prop :=
  ∀ n, P18273919171880581863.a n = A061560 (n + 1)

end A061560

/-! ## A061560.P12606384457769339712

`filter[A005728(n), A005171(#)]`
-/

namespace A061560.P12606384457769339712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A061560.P12606384457769339712

namespace A061560

/-- `filter[A005728(n), A005171(#)]` -/
def P12606384457769339712.Spec : Prop :=
  ∀ n, P12606384457769339712.a n = A061560 (n + 1)

end A061560

/-! ## A061560.P10268295728553424468

`filter[A005728(n), A292438(#)]`
-/

namespace A061560.P10268295728553424468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A061560.P10268295728553424468

namespace A061560

/-- `filter[A005728(n), A292438(#)]` -/
def P10268295728553424468.Spec : Prop :=
  ∀ n, P10268295728553424468.a n = A061560 (n + 1)

end A061560

/-! ## A061560.P1944887753620924014

`∩[A014076(n+1), A005728(n)]`
-/

namespace A061560.P1944887753620924014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061560.P1944887753620924014

namespace A061560

/-- `∩[A014076(n+1), A005728(n)]` -/
def P1944887753620924014.Spec : Prop :=
  ∀ n, (P1944887753620924014.a n : ℤ) = A061560 (n + 1)

end A061560

/-! ## A061560.P494456353651692217

`∩[A264828(n+1), A005728(n)]`
-/

namespace A061560.P494456353651692217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061560.P494456353651692217

namespace A061560

/-- `∩[A264828(n+1), A005728(n)]` -/
def P494456353651692217.Spec : Prop :=
  ∀ n, (P494456353651692217.a n : ℤ) = A061560 (n + 1)

end A061560

/-! ## A061560.P7976318923226189695

`∩[A018252(n+1), A005728(n)]`
-/

namespace A061560.P7976318923226189695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061560.P7976318923226189695

namespace A061560

/-- `∩[A018252(n+1), A005728(n)]` -/
def P7976318923226189695.Spec : Prop :=
  ∀ n, (P7976318923226189695.a n : ℤ) = A061560 (n + 1)

end A061560

/-! ## A061560.P10235799754822293701

`∩[A141468(n+1), A005728(n)]`
-/

namespace A061560.P10235799754822293701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061560.P10235799754822293701

namespace A061560

/-- `∩[A141468(n+1), A005728(n)]` -/
def P10235799754822293701.Spec : Prop :=
  ∀ n, (P10235799754822293701.a n : ℤ) = A061560 (n + 1)

end A061560

/-! ## A061560.P16682624694670116865

`∩[A325037(n+1), A005728(n)]`
-/

namespace A061560.P16682624694670116865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061560.P16682624694670116865

namespace A061560

/-- `∩[A325037(n+1), A005728(n)]` -/
def P16682624694670116865.Spec : Prop :=
  ∀ n, (P16682624694670116865.a n : ℤ) = A061560 (n + 1)

end A061560

/-! ## A061560.P5916631016874977323

`∩[A164276(n+1), A005728(n)]`
-/

namespace A061560.P5916631016874977323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061560.P5916631016874977323

namespace A061560

/-- `∩[A164276(n+1), A005728(n)]` -/
def P5916631016874977323.Spec : Prop :=
  ∀ n, (P5916631016874977323.a n : ℤ) = A061560 (n + 1)

end A061560

/-! ## A061560.P15231283847500961731

`∩[A056653(n+1), A005728(n)]`
-/

namespace A061560.P15231283847500961731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061560.P15231283847500961731

namespace A061560

/-- `∩[A056653(n+1), A005728(n)]` -/
def P15231283847500961731.Spec : Prop :=
  ∀ n, (P15231283847500961731.a n : ℤ) = A061560 (n + 1)

end A061560

/-! ## A061560.P12867070947815901928

`A000265(record[A191558(A005728(n))])`
-/

namespace A061560.P12867070947815901928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A005728 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A061560.P12867070947815901928

namespace A061560

/-- `A000265(record[A191558(A005728(n))])` -/
def P12867070947815901928.Spec : Prop :=
  ∀ n, P12867070947815901928.a n = A061560 (n + 1)

end A061560

/-! ## A061560.P3471631648709862705

`A018252(record[A239968(A005728(n))])`
-/

namespace A061560.P3471631648709862705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 (A005728 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A061560.P3471631648709862705

namespace A061560

/-- `A018252(record[A239968(A005728(n))])` -/
def P3471631648709862705.Spec : Prop :=
  ∀ n, P3471631648709862705.a n = A061560 (n + 1)

end A061560

/-! ## A061560.P2963885794155289115

`A005728(eq[0, A285701(A005728(n))])`
-/

namespace A061560.P2963885794155289115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285701 (A005728 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061560.P2963885794155289115

namespace A061560

/-- `A005728(eq[0, A285701(A005728(n))])` -/
def P2963885794155289115.Spec : Prop :=
  ∀ n, P2963885794155289115.a n = A061560 (n + 1)

end A061560

/-!
# A061561: Trajectory of 22 under the Reverse and Add! operation carried out in base 2.

The programs for A061561, there is no canonical definition to state claims against.
-/

/-! ## A061561.P7415641454531999787

`A055944(a(n-1))` with `a(0)=22`
-/

namespace A061561.P7415641454531999787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [22] fun n a =>
  A055944 (a (n - 1)).toNat

end

end A061561.P7415641454531999787

/-! ## A061561.P1237257607690135417

`A055944(a(A023443(n)))+A000007(n)` with `a(0)=22`
-/

namespace A061561.P1237257607690135417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [22] fun n a =>
  A055944 (a (A023443 n).toNat).toNat + A000007 n

end

end A061561.P1237257607690135417

/-! ## A061561.P5862797265138996722

`A055944(a(A023443(n)))+A000038(n)` with `a(0)=22`
-/

namespace A061561.P5862797265138996722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [22] fun n a =>
  A055944 (a (A023443 n).toNat).toNat + A000038 n

end

end A061561.P5862797265138996722

/-! ## A061561.P4699603030378001559

`A055944(a(A023443(n)))%A058042(n)` with `a(0)=22`
-/

namespace A061561.P4699603030378001559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [22] fun n a =>
  Int.tmod (A055944 (a (A023443 n).toNat).toNat) (A058042 n)

end

end A061561.P4699603030378001559

/-!
# A061563: Start with n; add to itself with digits reversed; if palindrome, stop; otherwise repeat; a(n) gives palindrome at which it stops, or -1 if no palindrome is ever reached.

The programs for A061563, there is no canonical definition to state claims against.
-/

/-! ## A061563.P1952323302959134195

`A033865(A052008(n))`
-/

namespace A061563.P1952323302959134195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (A052008 n).toNat

end

end A061563.P1952323302959134195

/-! ## A061563.P7330742948965313814

`A033865(A056964(n))`
-/

namespace A061563.P7330742948965313814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (A056964 n).toNat

end

end A061563.P7330742948965313814

/-! ## A061563.P883310559859597514

`A033865(A004086(n)+n)`
-/

namespace A061563.P883310559859597514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (A004086 n + (n : ℤ)).toNat

end

end A061563.P883310559859597514

/-! ## A061563.P18139470851573029772

`A033865(A160927(n+1)-1)`
-/

namespace A061563.P18139470851573029772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (A160927 (n + 1) - 1).toNat

end

end A061563.P18139470851573029772

/-! ## A061563.P5363659630508847874

`A033865(2*n-A056965(n))`
-/

namespace A061563.P5363659630508847874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 ((2 * n : ℤ) - A056965 n).toNat

end

end A061563.P5363659630508847874

/-! ## A061563.P5552700908082918237

`A033865(n*(3-A043562(n)))`
-/

namespace A061563.P5552700908082918237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 ((n : ℤ) * (3 - A043562 n)).toNat

end

end A061563.P5552700908082918237

/-! ## A061563.P17755892286012782390

`A033865(2*n/A043562(n))`
-/

namespace A061563.P17755892286012782390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / (A043562 n : ℚ)))).toNat

end

end A061563.P17755892286012782390

/-! ## A061563.P15983825574737517988

`A033865(n-A056965(n)+n)`
-/

namespace A061563.P15983825574737517988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 ((n : ℤ) - A056965 n + (n : ℤ)).toNat

end

end A061563.P15983825574737517988

/-! ## A061563.P12636464958758503558

`A033865(n-(A056965(n)-n))`
-/

namespace A061563.P12636464958758503558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 ((n : ℤ) - (A056965 n - (n : ℤ))).toNat

end

end A061563.P12636464958758503558

/-! ## A061563.P10194758374510173673

`A033865(n*(char[A033865(n)]+1))`
-/

namespace A061563.P10194758374510173673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (n * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1))

end

end A061563.P10194758374510173673

/-!
# A061564: Numbers k such that the repeating part of the decimal expansion of 1/k (omitting leading or trailing zeros) forms a prime number.

The programs for A061564, there is no canonical definition to state claims against.
-/

/-! ## A061564.P13207048620201137021

`∑[A131818(4^A010307(n))]`
-/

namespace A061564.P13207048620201137021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A010307 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061564.P13207048620201137021

/-! ## A061564.P6488525141283335112

`∑[dr(A220857(A084498(n+1)))]`
-/

namespace A061564.P6488525141283335112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A220857 (A084498 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061564.P6488525141283335112

/-! ## A061564.P1294882078584259493

`∑[A180596(5*A227234(n+1))]`
-/

namespace A061564.P1294882078584259493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180596 (5 * A227234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061564.P1294882078584259493

/-! ## A061564.P10939344467339774491

`∑[A180592(6*A227234(n+1))]`
-/

namespace A061564.P10939344467339774491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180592 (6 * A227234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061564.P10939344467339774491

/-!
# A061565: Floor( product_{k = 1..n} k^(1/k) ).

The programs for A061565, the canonical program `A061565.P17957196544315878947` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061565 has offset 1).

The definition of A061565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 929 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061565.P17957196544315878947

`floor(∏[root(n+1, n+1)])`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061565

/-- `floor(∏[root(n+1, n+1)])` -/
def P17957196544315878947.Spec : Prop :=
  ∀ n, P17957196544315878947.a n = A061565 (n + 1)

theorem P17957196544315878947.correct : P17957196544315878947.Spec := by
  intro n
  simp only [A061565, Nat.add_sub_cancel]

end A061565

/-! ## A061565.P2690912107711833408

`A000194(A244895(n)+A061567(n+1))`
-/

namespace A061565.P2690912107711833408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A244895 n + A061567 (n + 1)).toNat

end

end A061565.P2690912107711833408

namespace A061565

/-- `A000194(A244895(n)+A061567(n+1))` -/
def P2690912107711833408.Spec : Prop :=
  ∀ n, P2690912107711833408.a n = A061565 (n + 1)

end A061565

/-! ## A061565.P7978010062512163127

`A000194(A061567(n+1)-A004197(n))`
-/

namespace A061565.P7978010062512163127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A061567 (n + 1) - A004197 n).toNat

end

end A061565.P7978010062512163127

namespace A061565

/-- `A000194(A061567(n+1)-A004197(n))` -/
def P7978010062512163127.Spec : Prop :=
  ∀ n, P7978010062512163127.a n = A061565 (n + 1)

end A061565

/-! ## A061565.P4470301559850210801

`A137734(A061567(n+1)-A004197(n))`
-/

namespace A061565.P4470301559850210801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A061567 (n + 1) - A004197 n).toNat

end

end A061565.P4470301559850210801

namespace A061565

/-- `A137734(A061567(n+1)-A004197(n))` -/
def P4470301559850210801.Spec : Prop :=
  ∀ n, P4470301559850210801.a n = A061565 (n + 1)

end A061565

/-! ## A061565.P15162708436913947464

`A137734(A061567(n+1)-A072233(n))`
-/

namespace A061565.P15162708436913947464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A061567 (n + 1) - A072233 n).toNat

end

end A061565.P15162708436913947464

namespace A061565

/-- `A137734(A061567(n+1)-A072233(n))` -/
def P15162708436913947464.Spec : Prop :=
  ∀ n, P15162708436913947464.a n = A061565 (n + 1)

end A061565

/-!
# A061566: a(n) = floor(log(n)^n).

The programs for A061566, the canonical program `A061566.P4324287983892403301` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061566 has offset 1).

The definition of A061566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061566.P4324287983892403301

`floor(log(n+1)^(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061566

/-- `floor(log(n+1)^(n+1))` -/
def P4324287983892403301.Spec : Prop :=
  ∀ n, P4324287983892403301.a n = A061566 (n + 1)

theorem P4324287983892403301.correct : P4324287983892403301.Spec := by
  intro n
  simp only [A061566, Nat.add_sub_cancel]

end A061566

/-! ## A061566.P15825695700333544156

`round(log(n+1)^(n+1))-A022003(A305561(n))`
-/

namespace A061566.P15825695700333544156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (n + 1 : ℝ) ^ (n + 1)) - A022003 (A305561 n).toNat

end

end A061566.P15825695700333544156

namespace A061566

/-- `round(log(n+1)^(n+1))-A022003(A305561(n))` -/
def P15825695700333544156.Spec : Prop :=
  ∀ n, P15825695700333544156.a n = A061566 (n + 1)

end A061566

/-! ## A061566.P15298762186920884680

`round(log(n+1)^(n+1))-A286096(A163590(n))`
-/

namespace A061566.P15298762186920884680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (n + 1 : ℝ) ^ (n + 1)) - A286096 (A163590 n).toNat

end

end A061566.P15298762186920884680

namespace A061566

/-- `round(log(n+1)^(n+1))-A286096(A163590(n))` -/
def P15298762186920884680.Spec : Prop :=
  ∀ n, P15298762186920884680.a n = A061566 (n + 1)

end A061566

/-! ## A061566.P3650434880530467363

`A090620(floor(sqrt(A284844(n+1))))`
-/

namespace A061566.P3650434880530467363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (Int.sqrt (A284844 (n + 1))).toNat

end

end A061566.P3650434880530467363

namespace A061566

/-- `A090620(floor(sqrt(A284844(n+1))))` -/
def P3650434880530467363.Spec : Prop :=
  ∀ n, P3650434880530467363.a n = A061566 (n + 1)

end A061566

/-!
# A061567: a(n) = floor(n^log(n)).

The programs for A061567, the canonical program `A061567.P10614835406159612714` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061567 has offset 1).

The definition of A061567 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^log(n+1))` (program `A061567.P10614835406159612714`, by `A061567.P10614835406159612714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061567.P10614835406159612714

`floor((n+1)^log(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061567

/-- `floor((n+1)^log(n+1))` -/
def P10614835406159612714.Spec : Prop :=
  ∀ n, P10614835406159612714.a n = A061567 (n + 1)

theorem P10614835406159612714.correct : P10614835406159612714.Spec := by
  intro n
  simp only [A061567, Nat.add_sub_cancel]

end A061567

/-! ## A061567.P17229148776226609191

`ceil(A057428(n)+exp(log(n+1)²))`
-/

namespace A061567.P17229148776226609191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + Real.exp (Real.log (n + 1 : ℝ) ^ 2)⌉

end

end A061567.P17229148776226609191

namespace A061567

/-- `ceil(A057428(n)+exp(log(n+1)²))` -/
def P17229148776226609191.Spec : Prop :=
  ∀ n, P17229148776226609191.a n = A061567 (n + 1)

end A061567

/-!
# A061568: Number of primes <= sum of first n primes.

The programs for A061568, the canonical program `A061568.P18203611541489259856` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061568 has offset 1).

The definition of A061568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061568.P18203611541489259856

`A000720(A007504(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061568

/-- `A000720(A007504(n+1))` -/
def P18203611541489259856.Spec : Prop :=
  ∀ n, P18203611541489259856.a n = A061568 (n + 1)

theorem P18203611541489259856.correct : P18203611541489259856.Spec := by
  intro n
  simp only [A061568, Nat.add_sub_cancel]

end A061568

/-! ## A061568.P5677533652282331675

`∑[A225854(n+1)]`
-/

namespace A061568.P5677533652282331675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061568.P5677533652282331675

namespace A061568

/-- `∑[A225854(n+1)]` -/
def P5677533652282331675.Spec : Prop :=
  ∀ n, P5677533652282331675.a n = A061568 (n + 1)

end A061568

/-! ## A061568.P18081597909970679902

`A225854(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A061568.P18081597909970679902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A225854 (n + 1) + a (A023443 n).toNat

end

end A061568.P18081597909970679902

namespace A061568

/-- `A225854(n+1)+a(A023443(n))` -/
def P18081597909970679902.Spec : Prop :=
  ∀ n, P18081597909970679902.a n = A061568 (n + 1)

end A061568

/-! ## A061568.P7213118551850214555

`a(n-1)+A225854(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A061568.P7213118551850214555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A225854 (n + 1) + A000007 n)

end

end A061568.P7213118551850214555

namespace A061568

/-- `a(n-1)+A225854(n+1)+A000007(n)` -/
def P7213118551850214555.Spec : Prop :=
  ∀ n, P7213118551850214555.a n = A061568 (n + 1)

end A061568

/-! ## A061568.P15272387724104329633

`a(n-1)+A225854(n+1)%A017185(n)` with `a(0)=1, a(1)=3`
-/

namespace A061568.P15272387724104329633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + Int.tmod (A225854 (n + 1)) (A017185 n)

end

end A061568.P15272387724104329633

namespace A061568

/-- `a(n-1)+A225854(n+1)%A017185(n)` -/
def P15272387724104329633.Spec : Prop :=
  ∀ n, P15272387724104329633.a n = A061568 (n + 1)

end A061568

/-! ## A061568.P2762376646410373049

`A225854(n+1)+a(A000720(A008578(n)))` with `a(0)=1`
-/

namespace A061568.P2762376646410373049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A225854 (n + 1) + a (A000720 (A008578 n).toNat).toNat

end

end A061568.P2762376646410373049

namespace A061568

/-- `A225854(n+1)+a(A000720(A008578(n)))` -/
def P2762376646410373049.Spec : Prop :=
  ∀ n, P2762376646410373049.a n = A061568 (n + 1)

end A061568

/-! ## A061568.P12537334202568894354

`A000720(A066039(n+1))`
-/

namespace A061568.P12537334202568894354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A066039 (n + 1)).toNat

end

end A061568.P12537334202568894354

namespace A061568

/-- `A000720(A066039(n+1))` -/
def P12537334202568894354.Spec : Prop :=
  ∀ n, P12537334202568894354.a n = A061568 (n + 1)

end A061568

/-! ## A061568.P2286980437579439985

`A000720(∑[A000040(n+1)])`
-/

namespace A061568.P2286980437579439985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061568.P2286980437579439985

namespace A061568

/-- `A000720(∑[A000040(n+1)])` -/
def P2286980437579439985.Spec : Prop :=
  ∀ n, P2286980437579439985.a n = A061568 (n + 1)

end A061568

/-! ## A061568.P17174646431049472215

`A000720(∑[A008578(n+2)])`
-/

namespace A061568.P17174646431049472215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061568.P17174646431049472215

namespace A061568

/-- `A000720(∑[A008578(n+2)])` -/
def P17174646431049472215.Spec : Prop :=
  ∀ n, P17174646431049472215.a n = A061568 (n + 1)

end A061568

/-! ## A061568.P18252332665017291621

`A000720(∑[A158611(n+3)])`
-/

namespace A061568.P18252332665017291621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061568.P18252332665017291621

namespace A061568

/-- `A000720(∑[A158611(n+3)])` -/
def P18252332665017291621.Spec : Prop :=
  ∀ n, P18252332665017291621.a n = A061568 (n + 1)

end A061568

/-! ## A061568.P8969292012676918604

`A000720(record[A160793(n+2)])`
-/

namespace A061568.P8969292012676918604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A061568.P8969292012676918604

namespace A061568

/-- `A000720(record[A160793(n+2)])` -/
def P8969292012676918604.Spec : Prop :=
  ∀ n, P8969292012676918604.a n = A061568 (n + 1)

end A061568

/-! ## A061568.P11662148607102231773

`A000720(∑[eq[1, A003415(n)]])`
-/

namespace A061568.P11662148607102231773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061568.P11662148607102231773

namespace A061568

/-- `A000720(∑[eq[1, A003415(n)]])` -/
def P11662148607102231773.Spec : Prop :=
  ∀ n, P11662148607102231773.a n = A061568 (n + 1)

end A061568

/-! ## A061568.P2113043859792078365

`A000720(∑[eq[1, A105700(n)]])`
-/

namespace A061568.P2113043859792078365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061568.P2113043859792078365

namespace A061568

/-- `A000720(∑[eq[1, A105700(n)]])` -/
def P2113043859792078365.Spec : Prop :=
  ∀ n, P2113043859792078365.a n = A061568 (n + 1)

end A061568

/-! ## A061568.P4816336291532256908

`A000720(A237589(n+1)+1)`
-/

namespace A061568.P4816336291532256908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A237589 (n + 1) + 1).toNat

end

end A061568.P4816336291532256908

namespace A061568

/-- `A000720(A237589(n+1)+1)` -/
def P4816336291532256908.Spec : Prop :=
  ∀ n, P4816336291532256908.a n = A061568 (n + 1)

theorem P4816336291532256908.correct : P4816336291532256908.Spec := by
  intro n
  simp only [A061568, Nat.add_sub_cancel, A061568.P4816336291532256908.a, A061568.P18203611541489259856.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A007504, A007504.P14310834286015847203.a, A237589, A237589.P15064465826932885110.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061568

/-! ## A061568.P13145709182418764959

`A000720(A202301(n+1)-1)`
-/

namespace A061568.P13145709182418764959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A202301 (n + 1) - 1).toNat

end

end A061568.P13145709182418764959

namespace A061568

/-- `A000720(A202301(n+1)-1)` -/
def P13145709182418764959.Spec : Prop :=
  ∀ n, P13145709182418764959.a n = A061568 (n + 1)

end A061568

/-! ## A061568.P13689238896964419737

`A000720(A014284(n+2)-1)`
-/

namespace A061568.P13689238896964419737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A014284 (n + 2) - 1).toNat

end

end A061568.P13689238896964419737

namespace A061568

/-- `A000720(A014284(n+2)-1)` -/
def P13689238896964419737.Spec : Prop :=
  ∀ n, P13689238896964419737.a n = A061568 (n + 1)

theorem P13689238896964419737.correct : P13689238896964419737.Spec := by
  intro n
  simp only [A061568, Nat.add_sub_cancel, A061568.P13689238896964419737.a, A061568.P18203611541489259856.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A007504, A007504.P14310834286015847203.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061568

/-! ## A061568.P16114168650297362503

`A000720(A160793(2*(n+1)))`
-/

namespace A061568.P16114168650297362503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A160793 (2 * (n + 1))).toNat

end

end A061568.P16114168650297362503

namespace A061568

/-- `A000720(A160793(2*(n+1)))` -/
def P16114168650297362503.Spec : Prop :=
  ∀ n, P16114168650297362503.a n = A061568 (n + 1)

end A061568

/-! ## A061568.P2639656096483431692

`A000720(∑[sqrt(A001248(n+1))])`
-/

namespace A061568.P2639656096483431692
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A061568.P2639656096483431692

namespace A061568

/-- `A000720(∑[sqrt(A001248(n+1))])` -/
def P2639656096483431692.Spec : Prop :=
  ∀ n, P2639656096483431692.a n = A061568 (n + 1)

end A061568

/-! ## A061568.P3771372198448075865

`A000720(∑[∑[A054541(n+1)]])`
-/

namespace A061568.P3771372198448075865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061568.P3771372198448075865

namespace A061568

/-- `A000720(∑[∑[A054541(n+1)]])` -/
def P3771372198448075865.Spec : Prop :=
  ∀ n, P3771372198448075865.a n = A061568 (n + 1)

end A061568

/-! ## A061568.P5955731623216370219

`A000720(∑[record[A006530(n+2)]])`
-/

namespace A061568.P5955731623216370219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061568.P5955731623216370219

namespace A061568

/-- `A000720(∑[record[A006530(n+2)]])` -/
def P5955731623216370219.Spec : Prop :=
  ∀ n, P5955731623216370219.a n = A061568 (n + 1)

end A061568

/-!
# A061569: Number of irreducible representations of the symmetric group S_n such that their degree is divisible by 3.

The programs for A061569, there is no canonical definition to state claims against.
-/

/-! ## A061569.P5676134883309824264

`A000041(n+1)-A060840(n+1)`
-/

namespace A061569.P5676134883309824264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A060840 (n + 1)

end

end A061569.P5676134883309824264

/-! ## A061569.P11308387963981233807

`∑[A187219(n+1)]-A060840(n+1)`
-/

namespace A061569.P11308387963981233807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A060840 (n + 1)

end

end A061569.P11308387963981233807

/-! ## A061569.P17638731165177111023

`A059867(n+1)+A060368(n+1)-A060840(n+1)`
-/

namespace A061569.P17638731165177111023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059867 (n + 1) + (A060368 (n + 1) - A060840 (n + 1))

end

end A061569.P17638731165177111023

/-! ## A061569.P11062913321172297814

`Δ[A000070(n)]-A060840(n+1)`
-/

namespace A061569.P11062913321172297814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A060840 (n + 1)

end

end A061569.P11062913321172297814

/-! ## A061569.P14793703948406649649

`record[A035363(n)]-A060840(n+1)`
-/

namespace A061569.P14793703948406649649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A060840 (n + 1)

end

end A061569.P14793703948406649649

/-! ## A061569.P6329194548761298773

`record[A035444(n)]-A060840(n+1)`
-/

namespace A061569.P6329194548761298773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A060840 (n + 1)

end

end A061569.P6329194548761298773

/-!
# A061570: a(1)=0, a(2)=1, a(n)=3*n-1 for n >= 3.

The programs for A061570, the canonical program `A061570.P8432826731998822334` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061570 has offset 1).

The definition of A061570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061570.P8432826731998822334

`2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=11`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061570

/-- `2*a(n-1)-a(n-2)` -/
def P8432826731998822334.Spec : Prop :=
  ∀ n, P8432826731998822334.a n = A061570 (n + 1)

theorem P8432826731998822334.correct : P8432826731998822334.Spec := by
  intro n
  simp only [A061570, Nat.add_sub_cancel]

end A061570

/-!
# A061572: a(n) = (n!)^2 * Sum_{k=1..n} 1/(k^2*(k-1)!).

The programs for A061572, the canonical program `A061572.P11906309302530543523` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061572 has offset 1).

The definition of A061572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061572.P11906309302530543523

`((n+1)²+n+1-1)*a(n-1)-n^3*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061572

/-- `((n+1)²+n+1-1)*a(n-1)-n^3*a(n-2)` -/
def P11906309302530543523.Spec : Prop :=
  ∀ n, P11906309302530543523.a n = A061572 (n + 1)

theorem P11906309302530543523.correct : P11906309302530543523.Spec := by
  intro n
  simp only [A061572, Nat.add_sub_cancel]

end A061572

/-! ## A061572.P16508756516172064244

`a(n-1)*(n+1)²+n!` with `a(0)=1`
-/

namespace A061572.P16508756516172064244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (n + 1) ^ 2 + Nat.factorial n

end

end A061572.P16508756516172064244

namespace A061572

/-- `a(n-1)*(n+1)²+n!` -/
def P16508756516172064244.Spec : Prop :=
  ∀ n, (P16508756516172064244.a n : ℤ) = A061572 (n + 1)

end A061572

/-! ## A061572.P8414471704103424629

`n!+a(n-1)*∑[2*n+1]` with `a(0)=1`
-/

namespace A061572.P8414471704103424629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial n + a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061572.P8414471704103424629

namespace A061572

/-- `n!+a(n-1)*∑[2*n+1]` -/
def P8414471704103424629.Spec : Prop :=
  ∀ n, (P8414471704103424629.a n : ℤ) = A061572 (n + 1)

end A061572

/-! ## A061572.P2237671055166695854

`n!+(n+1)*(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A061572.P2237671055166695854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial n + (n + 1) * ((n + 1) * a (n - 1))

end

end A061572.P2237671055166695854

namespace A061572

/-- `n!+(n+1)*(n+1)*a(n-1)` -/
def P2237671055166695854.Spec : Prop :=
  ∀ n, (P2237671055166695854.a n : ℤ) = A061572 (n + 1)

end A061572

/-! ## A061572.P14621491740590114678

`A000142(n)+(n+1)²*a(n-1)` with `a(0)=1`
-/

namespace A061572.P14621491740590114678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000142 n + ((n + 1) ^ 2 : ℤ) * a (n - 1)

end

end A061572.P14621491740590114678

namespace A061572

/-- `A000142(n)+(n+1)²*a(n-1)` -/
def P14621491740590114678.Spec : Prop :=
  ∀ n, P14621491740590114678.a n = A061572 (n + 1)

end A061572

/-!
# A061573: a(n) = (n!)^2*Sum_{k=1..n} 1/k!.

The programs for A061573, the canonical program `A061573.P9066956734734051469` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061573 has offset 1).

The definition of A061573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061573.P3579619743605641969

`(n+1)*(n+2)*a(n-1)-(n+1)*n²*a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A061573.P3579619743605641969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  ((n + 1) * (n + 2) : ℤ) * a (n - 1) - ((n + 1) * n ^ 2 : ℤ) * a (n - 2)

end

end A061573.P3579619743605641969

namespace A061573

/-- `(n+1)*(n+2)*a(n-1)-(n+1)*n²*a(n-2)` -/
def P3579619743605641969.Spec : Prop :=
  ∀ n, P3579619743605641969.a n = A061573 (n + 1)

end A061573

/-! ## A061573.P9066956734734051469

`(n+1)!*A002627(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061573

/-- `(n+1)!*A002627(n+1)` -/
def P9066956734734051469.Spec : Prop :=
  ∀ n, P9066956734734051469.a n = A061573 (n + 1)

theorem P9066956734734051469.correct : P9066956734734051469.Spec := by
  intro n
  simp only [A061573, Nat.add_sub_cancel]

end A061573

/-! ## A061573.P204639026051157917

`(n+1)!+(n+1)²*a(n-1)` with `a(0)=1`
-/

namespace A061573.P204639026051157917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial (n + 1) + (n + 1) ^ 2 * a (n - 1)

end

end A061573.P204639026051157917

namespace A061573

/-- `(n+1)!+(n+1)²*a(n-1)` -/
def P204639026051157917.Spec : Prop :=
  ∀ n, (P204639026051157917.a n : ℤ) = A061573 (n + 1)

end A061573

/-! ## A061573.P15159195434502521648

`∏[n+1]+(n+1)²*a(n-1)` with `a(0)=1`
-/

namespace A061573.P15159195434502521648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2 * a (n - 1)

end

end A061573.P15159195434502521648

namespace A061573

/-- `∏[n+1]+(n+1)²*a(n-1)` -/
def P15159195434502521648.Spec : Prop :=
  ∀ n, (P15159195434502521648.a n : ℤ) = A061573 (n + 1)

end A061573

/-! ## A061573.P8241606649117753655

`(n+1)*(n!+(n+1)*a(n-1))` with `a(0)=1`
-/

namespace A061573.P8241606649117753655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * (Nat.factorial n + (n + 1) * a (n - 1))

end

end A061573.P8241606649117753655

namespace A061573

/-- `(n+1)*(n!+(n+1)*a(n-1))` -/
def P8241606649117753655.Spec : Prop :=
  ∀ n, (P8241606649117753655.a n : ℤ) = A061573 (n + 1)

end A061573

/-!
# A061575: Number of planar planted trees with n non-root nodes and without isolated 2-valent nodes.

The programs for A061575, there is no canonical definition to state claims against.
-/

/-! ## A061575.P9945268559972519034

`A003056(A003422(n)-A128613(2*n+1))`
-/

namespace A061575.P9945268559972519034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A003422 n - A128613 (2 * n + 1)).toNat

end

end A061575.P9945268559972519034

/-!
# A061576: Smallest prime of irregularity index n.

The programs for A061576, there is no canonical definition to state claims against.
-/

/-! ## A061576.P1474540269383950467

`A368278(A077802(n))`
-/

namespace A061576.P1474540269383950467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368278 (A077802 n).toNat

end

end A061576.P1474540269383950467

/-!
# A061577: Sequence and first differences (A061578) include all numbers.

The programs for A061577, there is no canonical definition to state claims against.
-/

/-! ## A061577.P12493532776936878880

`A294397(n)+1-char[1]`
-/

namespace A061577.P12493532776936878880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294397 n + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A061577.P12493532776936878880

/-! ## A061577.P16433125350146125263

`A061578(n)+a(n-1)` with `a(0)=2`
-/

namespace A061577.P16433125350146125263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A061578 n + a (n - 1)

end

end A061577.P16433125350146125263

/-! ## A061577.P8093034786636482962

`floor(A005228(n+1)+acot(n))`
-/

namespace A061577.P8093034786636482962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005228 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A061577.P8093034786636482962

/-! ## A061577.P9208776849191976051

`A030124(n)+a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A061577.P9208776849191976051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A030124 n + a (n - 1)

end

end A061577.P9208776849191976051

/-! ## A061577.P7489607723143162498

`A005228(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A061577.P7489607723143162498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005228 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A061577.P7489607723143162498

/-! ## A061577.P12548399511558396993

`A081689(n)+A054977(n)`
-/

namespace A061577.P12548399511558396993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 n + A054977 n

end

end A061577.P12548399511558396993

/-! ## A061577.P8522938610402954869

`A005228(n+1)+A000007(n)`
-/

namespace A061577.P8522938610402954869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) + A000007 n

end

end A061577.P8522938610402954869

/-! ## A061577.P12940239363292709914

`A005228(n+1)*A054977(n)`
-/

namespace A061577.P12940239363292709914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) * A054977 n

end

end A061577.P12940239363292709914

/-! ## A061577.P642533299874238143

`A005228(n+1)+A057428(n)+1`
-/

namespace A061577.P642533299874238143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) + (A057428 n + 1)

end

end A061577.P642533299874238143

/-! ## A061577.P9134523113147432291

`A005228(n+1)+1-A057427(n)`
-/

namespace A061577.P9134523113147432291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) + (1 - A057427 n)

end

end A061577.P9134523113147432291

/-! ## A061577.P13235941861320857540

`A005228(n+2)-A061578(n+1)`
-/

namespace A061577.P13235941861320857540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 2) - A061578 (n + 1)

end

end A061577.P13235941861320857540

/-! ## A061577.P983209112698628061

`A005228(n+1)+A004277(n)%2`
-/

namespace A061577.P983209112698628061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) + Int.tmod (A004277 n) 2

end

end A061577.P983209112698628061

/-! ## A061577.P10201448746985511240

`A005228(n+1)+A006093(n+1)%2`
-/

namespace A061577.P10201448746985511240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) + Int.tmod (A006093 (n + 1)) 2

end

end A061577.P10201448746985511240

/-! ## A061577.P9696884448185552634

`A328672(C(2, (n+1)²))+A005228(n+1)`
-/

namespace A061577.P9696884448185552634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328672 (Nat.choose 2 ((n + 1) ^ 2)) + A005228 (n + 1)

end

end A061577.P9696884448185552634

/-! ## A061577.P5817275319960345153

`A005228(n+1)+A022951(n+1)-A022947(n+1)`
-/

namespace A061577.P5817275319960345153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) + (A022951 (n + 1) - A022947 (n + 1))

end

end A061577.P5817275319960345153

/-!
# A061578: First differences of A061577.

The programs for A061578, there is no canonical definition to state claims against.
-/

/-! ## A061578.P5081320346142643287

`A030124(n+1)-floor(acot(n))`
-/

namespace A061578.P5081320346142643287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030124 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A061578.P5081320346142643287

/-! ## A061578.P2671439007887330605

`Δ[A030124(n)+a(n-1)]` with `a(0)=2, a(1)=3`
-/

namespace A061578.P2671439007887330605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  A030124 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061578.P2671439007887330605

/-! ## A061578.P11903265753968874160

`A030124(n+1)-A000007(n)`
-/

namespace A061578.P11903265753968874160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030124 (n + 1) - A000007 n

end

end A061578.P11903265753968874160

/-! ## A061578.P10667059730031245274

`A030124(n+1)/A054977(n)`
-/

namespace A061578.P10667059730031245274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030124 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A061578.P10667059730031245274

/-! ## A061578.P17284829996107787158

`Δ[A005228(n+1)]-A000007(n)`
-/

namespace A061578.P17284829996107787158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000007 n

end

end A061578.P17284829996107787158

/-! ## A061578.P789787817829927833

`A225687(n+1)+A087156(n+1)`
-/

namespace A061578.P789787817829927833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (n + 1) + A087156 (n + 1)

end

end A061578.P789787817829927833

/-! ## A061578.P8504106965692478710

`A005228(n+2)-A061577(n+1)`
-/

namespace A061578.P8504106965692478710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 2) - A061577 (n + 1)

end

end A061578.P8504106965692478710

/-! ## A061578.P4015457482289520239

`A030124(n+1)^and(1, A000040(n+1))`
-/

namespace A061578.P4015457482289520239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030124 (n + 1) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A061578.P4015457482289520239

/-! ## A061578.P9753753200044521369

`A030124(n+1)-A010054(n+1)*A010054(n)`
-/

namespace A061578.P9753753200044521369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030124 (n + 1) - A010054 (n + 1) * A010054 n

end

end A061578.P9753753200044521369

/-! ## A061578.P1736014539774172170

`A005228(n+1)*A030124(n+1)/A061577(n+1)`
-/

namespace A061578.P1736014539774172170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005228 (n + 1) * A030124 (n + 1) : ℚ) / (A061577 (n + 1) : ℚ)

end

end A061578.P1736014539774172170

/-! ## A061578.P9401483706407290166

`Δ[A061577(n+1)]`
-/

namespace A061578.P9401483706407290166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061578.P9401483706407290166

/-! ## A061578.P4413545062124794269

`Δ[floor(A081689(n)+acot(n))]`
-/

namespace A061578.P4413545062124794269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081689 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061578.P4413545062124794269

/-! ## A061578.P6729887644344703420

`A061577(n+2)-A061577(n+1)`
-/

namespace A061578.P6729887644344703420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061577 (n + 2) - A061577 (n + 1)

end

end A061578.P6729887644344703420

/-! ## A061578.P12958546625993808560

`Δ[A081689(n)-and(1, A000040(n+1))]`
-/

namespace A061578.P12958546625993808560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 n - Int.land 1 (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061578.P12958546625993808560

/-! ## A061578.P583811405255143350

`Δ[A081689(n)-A020639(A000010(n+2))]`
-/

namespace A061578.P583811405255143350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 n - A020639 (A000010 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061578.P583811405255143350

/-! ## A061578.P18357670483666239514

`A030124(n+1)+A081689(n+1)-A294397(n+1)`
-/

namespace A061578.P18357670483666239514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030124 (n + 1) + (A081689 (n + 1) - A294397 (n + 1))

end

end A061578.P18357670483666239514

/-! ## A061578.P13439777176587426302

`A081688(n+1)+A005228(n+2)-A294397(n+1)`
-/

namespace A061578.P13439777176587426302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081688 (n + 1) + (A005228 (n + 2) - A294397 (n + 1))

end

end A061578.P13439777176587426302

/-! ## A061578.P8776910894836435757

`A030124(n+1)+A022941(n+2)-A022940(n+2)`
-/

namespace A061578.P8776910894836435757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030124 (n + 1) + (A022941 (n + 2) - A022940 (n + 2))

end

end A061578.P8776910894836435757

/-! ## A061578.P7058144236387927523

`A065475(A081688(n+1))`
-/

namespace A061578.P7058144236387927523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A081688 (n + 1)).toNat

end

end A061578.P7058144236387927523

/-! ## A061578.P16473368476557839800

`A171526(A030124(n+1))`
-/

namespace A061578.P16473368476557839800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (A030124 (n + 1)).toNat

end

end A061578.P16473368476557839800

/-!
# A061579: Reverse one number (0), then two numbers (2,1), then three (5,4,3), then four (9,8,7,6), etc.

The programs for A061579, the canonical program `A061579.P7462537595056690109` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061579 has offset 0).

The definition of A061579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061579.P14363093806014796103

`row(n)*(row(n)+3)/2-col(n)`
-/

namespace A061579.P14363093806014796103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 3) : ℚ) / 2 - (SequenceMachineLib.triCol n : ℚ)

end

end A061579.P14363093806014796103

namespace A061579

/-- `row(n)*(row(n)+3)/2-col(n)` -/
def P14363093806014796103.Spec : Prop :=
  ∀ n, P14363093806014796103.a n = (A061579 n : ℚ)

end A061579

/-! ## A061579.P7462537595056690109

`floor(sqrt(2*n+1)-1/2)*floor(sqrt(2*n+1)+3/2)-n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061579

/-- `floor(sqrt(2*n+1)-1/2)*floor(sqrt(2*n+1)+3/2)-n` -/
def P7462537595056690109.Spec : Prop :=
  ∀ n, P7462537595056690109.a n = A061579 n

theorem P7462537595056690109.correct : P7462537595056690109.Spec := by
  intro n
  simp only [A061579]

end A061579

/-! ## A061579.P11682956711218455766

`∑[2*n]%comp[∑[n]]`
-/

namespace A061579.P11682956711218455766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A061579.P11682956711218455766

namespace A061579

/-- `∑[2*n]%comp[∑[n]]` -/
def P11682956711218455766.Spec : Prop :=
  ∀ n, (P11682956711218455766.a n : ℤ) = A061579 n

end A061579

/-! ## A061579.P11072322077550641409

`xor(n-∑[char[∑[n]]]², -1)`
-/

namespace A061579.P11072322077550641409
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)) (-1)

end

end A061579.P11072322077550641409

namespace A061579

/-- `xor(n-∑[char[∑[n]]]², -1)` -/
def P11072322077550641409.Spec : Prop :=
  ∀ n, P11072322077550641409.a n = A061579 n

end A061579

/-! ## A061579.P13551799856754257892

`∑[A198954(n)-1]`
-/

namespace A061579.P13551799856754257892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061579.P13551799856754257892

namespace A061579

/-- `∑[A198954(n)-1]` -/
def P13551799856754257892.Spec : Prop :=
  ∀ n, P13551799856754257892.a n = A061579 n

end A061579

/-! ## A061579.P16966788660025477447

`abs(A114327(n)+n)`
-/

namespace A061579.P16966788660025477447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114327 n + (n : ℤ)|

end

end A061579.P16966788660025477447

namespace A061579

/-- `abs(A114327(n)+n)` -/
def P16966788660025477447.Spec : Prop :=
  ∀ n, P16966788660025477447.a n = A061579 n

end A061579

/-! ## A061579.P4177390048194540915

`∑[abs(A010816(n))-1]`
-/

namespace A061579.P4177390048194540915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010816 n| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061579.P4177390048194540915

namespace A061579

/-- `∑[abs(A010816(n))-1]` -/
def P4177390048194540915.Spec : Prop :=
  ∀ n, P4177390048194540915.a n = A061579 n

end A061579

/-! ## A061579.P11439324230650686735

`∑[abs(A133089(n))-1]`
-/

namespace A061579.P11439324230650686735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133089 n| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061579.P11439324230650686735

namespace A061579

/-- `∑[abs(A133089(n))-1]` -/
def P11439324230650686735.Spec : Prop :=
  ∀ n, P11439324230650686735.a n = A061579 n

end A061579

/-! ## A061579.P8102782996631642814

`∑[Δ[A274093(n)²]-1]`
-/

namespace A061579.P8102782996631642814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274093 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061579.P8102782996631642814

namespace A061579

/-- `∑[Δ[A274093(n)²]-1]` -/
def P8102782996631642814.Spec : Prop :=
  ∀ n, P8102782996631642814.a n = A061579 n

end A061579

/-! ## A061579.P4415345075269300300

`A163360(A163357(n))`
-/

namespace A061579.P4415345075269300300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163360 (A163357 n).toNat

end

end A061579.P4415345075269300300

namespace A061579

/-- `A163360(A163357(n))` -/
def P4415345075269300300.Spec : Prop :=
  ∀ n, P4415345075269300300.a n = A061579 n

end A061579

/-! ## A061579.P7073907621594675387

`A163358(A163359(n))`
-/

namespace A061579.P7073907621594675387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A163359 n).toNat

end

end A061579.P7073907621594675387

namespace A061579

/-- `A163358(A163359(n))` -/
def P7073907621594675387.Spec : Prop :=
  ∀ n, P7073907621594675387.a n = A061579 n

end A061579

/-! ## A061579.P13893442303824770659

`∑[A023443(A198954(n))]`
-/

namespace A061579.P13893442303824770659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061579.P13893442303824770659

namespace A061579

/-- `∑[A023443(A198954(n))]` -/
def P13893442303824770659.Spec : Prop :=
  ∀ n, P13893442303824770659.a n = A061579 n

end A061579

/-! ## A061579.P5263279922391016506

`∑[Δ[A123578(n)²]-1]`
-/

namespace A061579.P5263279922391016506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061579.P5263279922391016506

namespace A061579

/-- `∑[Δ[A123578(n)²]-1]` -/
def P5263279922391016506.Spec : Prop :=
  ∀ n, P5263279922391016506.a n = A061579 n

end A061579

/-! ## A061579.P11071046089895669690

`A023443(A038722(n+1))`
-/

namespace A061579.P11071046089895669690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A038722 (n + 1)).toNat

end

end A061579.P11071046089895669690

namespace A061579

/-- `A023443(A038722(n+1))` -/
def P11071046089895669690.Spec : Prop :=
  ∀ n, P11071046089895669690.a n = A061579 n

end A061579

/-! ## A061579.P14229076559601148530

`A056943(∑[A035214(n)])`
-/

namespace A061579.P14229076559601148530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061579.P14229076559601148530

namespace A061579

/-- `A056943(∑[A035214(n)])` -/
def P14229076559601148530.Spec : Prop :=
  ∀ n, P14229076559601148530.a n = A061579 n

end A061579

/-! ## A061579.P822985499900664659

`A056943(A014132(n+1))`
-/

namespace A061579.P822985499900664659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 (A014132 (n + 1)).toNat

end

end A061579.P822985499900664659

namespace A061579

/-- `A056943(A014132(n+1))` -/
def P822985499900664659.Spec : Prop :=
  ∀ n, P822985499900664659.a n = A061579 n

end A061579

/-! ## A061579.P4795904583046729196

`A056943(A003056(n)+2+n)`
-/

namespace A061579.P4795904583046729196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 (A003056 n + 2 + (n : ℤ)).toNat

end

end A061579.P4795904583046729196

namespace A061579

/-- `A056943(A003056(n)+2+n)` -/
def P4795904583046729196.Spec : Prop :=
  ∀ n, P4795904583046729196.a n = A061579 n

end A061579

/-! ## A061579.P17187400253968687723

`A056943(A002024(n+1)+n+1)`
-/

namespace A061579.P17187400253968687723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 (A002024 (n + 1) + (n + 1 : ℤ)).toNat

end

end A061579.P17187400253968687723

namespace A061579

/-- `A056943(A002024(n+1)+n+1)` -/
def P17187400253968687723.Spec : Prop :=
  ∀ n, P17187400253968687723.a n = A061579 n

end A061579

/-! ## A061579.P8617138068438150289

`∑[A245552(2*n+1)-1]`
-/

namespace A061579.P8617138068438150289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245552 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061579.P8617138068438150289

namespace A061579

/-- `∑[A245552(2*n+1)-1]` -/
def P8617138068438150289.Spec : Prop :=
  ∀ n, P8617138068438150289.a n = A061579 n

end A061579

/-! ## A061579.P14220320485181978742

`∑[Δ[A053187(2*n)]-1]`
-/

namespace A061579.P14220320485181978742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061579.P14220320485181978742

namespace A061579

/-- `∑[Δ[A053187(2*n)]-1]` -/
def P14220320485181978742.Spec : Prop :=
  ∀ n, P14220320485181978742.a n = A061579 n

end A061579

/-!
# A061581: a(1) = 1, a(n) = number obtained by replacing each digit of a(n-1) with its double.

The programs for A061581, there is no canonical definition to state claims against.
-/

/-! ## A061581.P12722463428059455396

`A102260(n+2)/10`
-/

namespace A061581.P12722463428059455396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102260 (n + 2) : ℚ) / 10

end

end A061581.P12722463428059455396

/-! ## A061581.P694797030480726680

`A322131(a(n-1))` with `a(0)=1`
-/

namespace A061581.P694797030480726680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322131 (a (n - 1)).toNat

end

end A061581.P694797030480726680

/-! ## A061581.P13716247695925006111

`2*A330336(a(n-1))` with `a(0)=1`
-/

namespace A061581.P13716247695925006111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A330336 (a (n - 1)).toNat

end

end A061581.P13716247695925006111

/-! ## A061581.P11967759886262638314

`A004277(A330336(a(n-1)))` with `a(0)=1`
-/

namespace A061581.P11967759886262638314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004277 (A330336 (a (n - 1)).toNat).toNat

end

end A061581.P11967759886262638314

/-! ## A061581.P9681691748959352450

`2/A330336(a(n-1))^A129667(A038881(n+1))` with `a(0)=1`
-/

namespace A061581.P9681691748959352450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 / (A330336 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) ^ (A129667 (A038881 (n + 1)).toNat : ℤ)

end

end A061581.P9681691748959352450

/-!
# A061582: a(1) = 1, a(n) = number obtained by replacing each digit of a(n-1) with three times its value.

The programs for A061582, there is no canonical definition to state claims against.
-/

/-! ## A061582.P2316697511778441863

`3*A330336(a(n-1))` with `a(0)=1`
-/

namespace A061582.P2316697511778441863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A330336 (a (n - 1)).toNat

end

end A061582.P2316697511778441863

/-! ## A061582.P8761899865555982218

`A061898(A083147(n+1))`
-/

namespace A061582.P8761899865555982218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A083147 (n + 1)).toNat

end

end A061582.P8761899865555982218

/-!
# A061583: a(1) = 1, a(n) is the number obtained by replacing each digit of a(n-1) with five times its value.

The programs for A061583, there is no canonical definition to state claims against.
-/

/-! ## A061583.P8082484990322524713

`∑[A249398(A018022(n))]`
-/

namespace A061583.P8082484990322524713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249398 (A018022 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061583.P8082484990322524713

/-!
# A061584: a(1) = 1, a(n)= number obtained by replacing each digit of a(n-1) with six times its value.

The programs for A061584, there is no canonical definition to state claims against.
-/

/-! ## A061584.P8789077159173633148

`6*A051022(a(n-1))` with `a(0)=1`
-/

namespace A061584.P8789077159173633148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * A051022 (a (n - 1)).toNat

end

end A061584.P8789077159173633148

/-!
# A061585: a(1) = 1, a(n)= number obtained by replacing each digit of a(n-1) with seven times its value.

The programs for A061585, there is no canonical definition to state claims against.
-/

/-! ## A061585.P17962663043958292389

`7*A051022(a(n-1))` with `a(0)=1`
-/

namespace A061585.P17962663043958292389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * A051022 (a (n - 1)).toNat

end

end A061585.P17962663043958292389

/-!
# A061586: a(1) = 1, a(n)= number obtained by replacing each digit of a(n-1) with eight times its value.

The programs for A061586, there is no canonical definition to state claims against.
-/

/-! ## A061586.P501675801576021923

`8*A051022(a(n-1))` with `a(0)=1`
-/

namespace A061586.P501675801576021923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * A051022 (a (n - 1)).toNat

end

end A061586.P501675801576021923

/-!
# A061588: a(1) = 2; thereafter a(n) is the number obtained by replacing each digit of a(n-1) with its square.

The programs for A061588, there is no canonical definition to state claims against.
-/

/-! ## A061588.P829401118652239811

`A048385(a(n-1))` with `a(0)=2`
-/

namespace A061588.P829401118652239811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A048385 (a (n - 1)).toNat

end

end A061588.P829401118652239811

/-! ## A061588.P7557790963158752650

`A048385(abs(a(A080465(n))))` with `a(0)=2`
-/

namespace A061588.P7557790963158752650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A048385 |a (A080465 (n + 10)).toNat|.toNat

end

end A061588.P7557790963158752650

/-!
# A061589: a(1) = 11, a(n) = number obtained by adding to each digit of a(n-1) the next digit.

The programs for A061589, there is no canonical definition to state claims against.
-/

/-! ## A061589.P3248010200573459987

`∑[C(∏[1-(∑{digits}[n, #]-n)], 9*n)+10]`
-/

namespace A061589.P3248010200573459987
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ j ∈ Finset.range (n + 1), f2 j).toNat (9 * n) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061589.P3248010200573459987

/-! ## A061589.P13278835270565474829

`∑[and(n-1, A177292(n))²+10]`
-/

namespace A061589.P13278835270565474829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (A177292 n) ^ 2 + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061589.P13278835270565474829

/-! ## A061589.P8528044383133195204

`∑[C(A081651(n)², 9*n)+10]`
-/

namespace A061589.P8528044383133195204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A081651 n ^ 2).toNat (9 * n) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061589.P8528044383133195204

/-! ## A061589.P17833247618072465795

`∑[A220645(9*5*10*n)+10]`
-/

namespace A061589.P17833247618072465795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220645 (9 * (5 * (10 * n))) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061589.P17833247618072465795

/-! ## A061589.P4262247176720491062

`∑[A053735(A028384(n))²+10]`
-/

namespace A061589.P4262247176720491062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A028384 n).toNat ^ 2 + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061589.P4262247176720491062

/-!
# A061590: a(1) = 10, a(n)= number obtained by adding to each digit of a(n-1) the next digit and adding the leading digit to the final digit.

The programs for A061590, there is no canonical definition to state claims against.
-/

/-! ## A061590.P9949119229991133242

`A004277(A330336(a(n-1)))` with `a(0)=10, a(1)=11`
-/

namespace A061590.P9949119229991133242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 11] fun n a =>
  A004277 (A330336 (a (n - 1)).toNat).toNat

end

end A061590.P9949119229991133242

/-! ## A061590.P16922980534959816693

`A028310(A322131(a(n-1)))` with `a(0)=10, a(1)=11`
-/

namespace A061590.P16922980534959816693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 11] fun n a =>
  A028310 (A322131 (a (n - 1)).toNat).toNat

end

end A061590.P16922980534959816693

/-!
# A061591: 

The programs for A061591, there is no canonical definition to state claims against.
-/

/-! ## A061591.P252608800442399152

`2^C(A000040(n+1), 2)`
-/

namespace A061591.P252608800442399152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose (A000040 (n + 1)).toNat 2

end

end A061591.P252608800442399152

/-! ## A061591.P13274861922016232074

`2^C(record[A006530(n+2)], 2)`
-/

namespace A061591.P13274861922016232074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A061591.P13274861922016232074

/-! ## A061591.P10148031368478372745

`floor(2^(A000010(p?[round(8*n/7)]²)/2))`
-/

namespace A061591.P10148031368478372745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ ((A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat : ℚ) / 2 : ℝ)⌋

end

end A061591.P10148031368478372745

/-! ## A061591.P13680485185342488992

`A006125(A000040(n+1))`
-/

namespace A061591.P13680485185342488992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (A000040 (n + 1)).toNat

end

end A061591.P13680485185342488992

/-! ## A061591.P1988220326025598550

`A006125(A038612(n+1))`
-/

namespace A061591.P1988220326025598550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (A038612 (n + 1)).toNat

end

end A061591.P1988220326025598550

/-!
# A061593: Number of ways to place 2n nonattacking kings on a 4 X 2n chessboard.

The programs for A061593, the canonical program `A061593.P3672767219440793987` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061593 has offset 1).

The definition of A061593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061593.P12395361075635833784

`(17*(n+1)-109)*3^(n+1)+2*A000045(2*(n+1)+10)`
-/

namespace A061593.P12395361075635833784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((17 * (n + 1) : ℤ) - 109) * (3 ^ (n + 1) : ℤ) + 2 * A000045 (2 * (n + 1) + 10)

end

end A061593.P12395361075635833784

namespace A061593

/-- `(17*(n+1)-109)*3^(n+1)+2*A000045(2*(n+1)+10)` -/
def P12395361075635833784.Spec : Prop :=
  ∀ n, P12395361075635833784.a n = A061593 (n + 1)

end A061593

/-! ## A061593.P3672767219440793987

`17*A027471(n+3)-126*A000244(n+1)+A025169(n+5)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061593

/-- `17*A027471(n+3)-126*A000244(n+1)+A025169(n+5)` -/
def P3672767219440793987.Spec : Prop :=
  ∀ n, P3672767219440793987.a n = A061593 (n + 1)

theorem P3672767219440793987.correct : P3672767219440793987.Spec := by
  intro n
  simp only [A061593, Nat.add_sub_cancel]

end A061593

/-! ## A061593.P12644721539950488370

`A350815(A167614(3*n+4)+2)`
-/

namespace A061593.P12644721539950488370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350815 (A167614 (3 * n + 4) + 2).toNat

end

end A061593.P12644721539950488370

namespace A061593

/-- `A350815(A167614(3*n+4)+2)` -/
def P12644721539950488370.Spec : Prop :=
  ∀ n, P12644721539950488370.a n = A061593 (n + 1)

end A061593

/-!
# A061594: Number of ways to place 3n nonattacking kings on a 6 X 2n chessboard.

The programs for A061594, there is no canonical definition to state claims against.
-/

/-! ## A061594.P9528782976665510031

`A350819(∑[n+4]+2)`
-/

namespace A061594.P9528782976665510031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350819 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A061594.P9528782976665510031

/-! ## A061594.P8931761793025500728

`record[A350819(comp[A201816(n+1)])]`
-/

namespace A061594.P8931761793025500728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201816 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350819 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061594.P8931761793025500728

/-! ## A061594.P13735790548659129047

`A350819(A060577(n+3))%A122372(n+2)`
-/

namespace A061594.P13735790548659129047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350819 (A060577 (n + 3)).toNat) (A122372 (n + 2))

end

end A061594.P13735790548659129047

/-!
# A061595: Product of digits + 1 is prime, sum of digits + 1 is prime and sum of digits - 1 is prime.

The programs for A061595, there is no canonical definition to state claims against.
-/

/-! ## A061595.P15603148982119699728

`∩[A086379(n+1), A167711(n+1)]`
-/

namespace A061595.P15603148982119699728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061595.P15603148982119699728

/-! ## A061595.P15077720567685879982

`2*A171178(∑[A279510(n+1)])`
-/

namespace A061595.P15077720567685879982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171178 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061595.P15077720567685879982

/-!
# A061596: Product of digits + 1 is prime, product of digits - 1 is prime, sum of digits + 1 is prime and sum of digits - 1 is prime.

The programs for A061596, there is no canonical definition to state claims against.
-/

/-! ## A061596.P8694879201961822162

`∩[A061595(n+1), A089377(n+1)]`
-/

namespace A061596.P8694879201961822162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061596.P8694879201961822162

/-! ## A061596.P12167863110262920446

`∩[A061595(n+1), A244607(n+1)]`
-/

namespace A061596.P12167863110262920446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061596.P12167863110262920446

/-!
# A061597: Numbers whose sum of digits s equals its product of digits and s + 1 and s - 1 are both prime.

The programs for A061597, there is no canonical definition to state claims against.
-/

/-! ## A061597.P3954003297419850026

`∩[A034710(n+1), A061596(n)]`
-/

namespace A061597.P3954003297419850026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061596 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061597.P3954003297419850026

/-! ## A061597.P3788542211864063406

`∩[A061596(n), A064158(n+1)]`
-/

namespace A061597.P3788542211864063406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061597.P3788542211864063406

/-! ## A061597.P11536488846741864181

`∩[A066307(n+1), A061596(n)]`
-/

namespace A061597.P11536488846741864181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061596 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061597.P11536488846741864181

/-! ## A061597.P11484185341531880843

`∩[A249334(n+1), A061596(n)]`
-/

namespace A061597.P11484185341531880843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061596 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061597.P11484185341531880843

/-! ## A061597.P4124628611283978599

`∩[A342048(n+1), A061596(n)]`
-/

namespace A061597.P4124628611283978599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061596 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061597.P4124628611283978599

/-!
# A061598: Distance to the largest Catalan number which is less than, but divides the n-th Catalan number; i.e., a(n) gives minimum k (> 0) such that C_{n-k}|C_n.

The programs for A061598, there is no canonical definition to state claims against.
-/

/-! ## A061598.P2905214387633142206

`A000120(A364466(2*(n+2))%A001045(n+4))`
-/

namespace A061598.P2905214387633142206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A364466 (2 * (n + 2))) (A001045 (n + 4))).toNat

end

end A061598.P2905214387633142206

/-!
# A061599: Primes p such that the greatest prime divisor of p-1 is 5.

The programs for A061599, there is no canonical definition to state claims against.
-/

/-! ## A061599.P8867035355277998829

`∩[A002200(n+1), A080193(n+1)+1]`
-/

namespace A061599.P8867035355277998829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061599.P8867035355277998829

/-! ## A061599.P292554813657821296

`∩[A080193(n+1)+1, A174144(n+1)]`
-/

namespace A061599.P292554813657821296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061599.P292554813657821296

/-! ## A061599.P13372799397137079192

`∩[A002200(n+1), A005110(n+1)]`
-/

namespace A061599.P13372799397137079192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061599.P13372799397137079192

/-! ## A061599.P7862753472863115876

`∩[A002200(n+1), A030430(n+1)]`
-/

namespace A061599.P7862753472863115876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061599.P7862753472863115876

/-! ## A061599.P12627251266825741697

`p?[A080193(n+1)+1]`
-/

namespace A061599.P12627251266825741697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061599.P12627251266825741697

/-! ## A061599.P2000559606305441056

`p?[A325198(n+1)+1]`
-/

namespace A061599.P2000559606305441056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325198 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061599.P2000559606305441056

/-! ## A061599.P10652198055071580241

`p?[5*A051037(n+1)+1]`
-/

namespace A061599.P10652198055071580241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A051037 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061599.P10652198055071580241

/-! ## A061599.P5860919216921595360

`p?[ceil((A143204(n+1)+2)/3)]`
-/

namespace A061599.P5860919216921595360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A143204 (n + 1) + 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061599.P5860919216921595360

/-! ## A061599.P6179704101354860081

`p?[xor(1, A080193(A080513(2*n)))]`
-/

namespace A061599.P6179704101354860081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A080193 (A080513 (2 * n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061599.P6179704101354860081

