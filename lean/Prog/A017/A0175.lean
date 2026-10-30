import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C000
import Seq.Opaque.C001

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A017500: a(n) = (11*n + 9)^4.

The programs for A017500, the canonical program `A017500.P12977093269737068978` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017500 has offset 0).

The definition of A017500 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+9)^4` (program `A017500.P12977093269737068978`, by `A017500.P12977093269737068978.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017500.P12977093269737068978

`(11*n+9)^4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017500

/-- `(11*n+9)^4` -/
def P12977093269737068978.Spec : Prop :=
  ∀ n, (P12977093269737068978.a n : ℤ) = A017500 n

theorem P12977093269737068978.correct : P12977093269737068978.Spec := by
  intro n
  simp only [A017500]

end A017500

/-! ## A017500.P16899958482373276570

`A017498(n)²`
-/

namespace A017500.P16899958482373276570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017498 n ^ 2

end

end A017500.P16899958482373276570

namespace A017500

/-- `A017498(n)²` -/
def P16899958482373276570.Spec : Prop :=
  ∀ n, P16899958482373276570.a n = A017500 n

theorem P16899958482373276570.correct : P16899958482373276570.Spec := by
  intro n
  simp only [A017500, Nat.add_sub_cancel, A017500.P16899958482373276570.a, A017500.P12977093269737068978.a, A017498, A017498.P11433022045752089983.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017500

/-! ## A017500.P4538643271232972045

`sqrt(A017504(n))`
-/

namespace A017500.P4538643271232972045
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017504 n : ℝ)

end

end A017500.P4538643271232972045

namespace A017500

/-- `sqrt(A017504(n))` -/
def P4538643271232972045.Spec : Prop :=
  ∀ n, P4538643271232972045.a n = (A017500 n : ℝ)

end A017500

/-! ## A017500.P11279557241398161416

`A017497(n)²²`
-/

namespace A017500.P11279557241398161416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017497 n ^ 2) ^ 2

end

end A017500.P11279557241398161416

namespace A017500

/-- `A017497(n)²²` -/
def P11279557241398161416.Spec : Prop :=
  ∀ n, P11279557241398161416.a n = A017500 n

theorem P11279557241398161416.correct : P11279557241398161416.Spec := by
  intro n
  simp only [A017500, Nat.add_sub_cancel, A017500.P11279557241398161416.a, A017500.P12977093269737068978.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017500

/-! ## A017500.P16730599295908493441

`(A017485(n)+1)²²`
-/

namespace A017500.P16730599295908493441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017485 n + 1) ^ 2) ^ 2

end

end A017500.P16730599295908493441

namespace A017500

/-- `(A017485(n)+1)²²` -/
def P16730599295908493441.Spec : Prop :=
  ∀ n, P16730599295908493441.a n = A017500 n

theorem P16730599295908493441.correct : P16730599295908493441.Spec := by
  intro n
  simp only [A017500, Nat.add_sub_cancel, A017500.P16730599295908493441.a, A017500.P12977093269737068978.a, A017485, A017485.P4370091181196038588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017500

/-! ## A017500.P746771017682927600

`(A017473(n)+2)²²`
-/

namespace A017500.P746771017682927600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017473 n + 2) ^ 2) ^ 2

end

end A017500.P746771017682927600

namespace A017500

/-- `(A017473(n)+2)²²` -/
def P746771017682927600.Spec : Prop :=
  ∀ n, P746771017682927600.a n = A017500 n

theorem P746771017682927600.correct : P746771017682927600.Spec := by
  intro n
  simp only [A017500, Nat.add_sub_cancel, A017500.P746771017682927600.a, A017500.P12977093269737068978.a, A017473, A017473.P6794540674081733570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017500

/-! ## A017500.P6909237545902481472

`(1-A017509(n))²²`
-/

namespace A017500.P6909237545902481472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017509 n) ^ 2) ^ 2

end

end A017500.P6909237545902481472

namespace A017500

/-- `(1-A017509(n))²²` -/
def P6909237545902481472.Spec : Prop :=
  ∀ n, P6909237545902481472.a n = A017500 n

theorem P6909237545902481472.correct : P6909237545902481472.Spec := by
  intro n
  simp only [A017500, Nat.add_sub_cancel, A017500.P6909237545902481472.a, A017500.P12977093269737068978.a, A017509, A017509.P7373483985674399481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017500

/-! ## A017500.P4478435469478759012

`(A017461(n)+3)²²`
-/

namespace A017500.P4478435469478759012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017461 n + 3) ^ 2) ^ 2

end

end A017500.P4478435469478759012

namespace A017500

/-- `(A017461(n)+3)²²` -/
def P4478435469478759012.Spec : Prop :=
  ∀ n, P4478435469478759012.a n = A017500 n

theorem P4478435469478759012.correct : P4478435469478759012.Spec := by
  intro n
  simp only [A017500, Nat.add_sub_cancel, A017500.P4478435469478759012.a, A017500.P12977093269737068978.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017500

/-! ## A017500.P5135674715391365950

`(A017377(n)+n)²²`
-/

namespace A017500.P5135674715391365950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017377 n + (n : ℤ)) ^ 2) ^ 2

end

end A017500.P5135674715391365950

namespace A017500

/-- `(A017377(n)+n)²²` -/
def P5135674715391365950.Spec : Prop :=
  ∀ n, P5135674715391365950.a n = A017500 n

theorem P5135674715391365950.correct : P5135674715391365950.Spec := by
  intro n
  simp only [A017500, Nat.add_sub_cancel, A017500.P5135674715391365950.a, A017500.P12977093269737068978.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017500

/-! ## A017500.P3114212685862984106

`(n-A017629(n))²²`
-/

namespace A017500.P3114212685862984106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017629 n) ^ 2) ^ 2

end

end A017500.P3114212685862984106

namespace A017500

/-- `(n-A017629(n))²²` -/
def P3114212685862984106.Spec : Prop :=
  ∀ n, P3114212685862984106.a n = A017500 n

theorem P3114212685862984106.correct : P3114212685862984106.Spec := by
  intro n
  simp only [A017500, Nat.add_sub_cancel, A017500.P3114212685862984106.a, A017500.P12977093269737068978.a, A017629, A017629.P13557474233053533782.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017500

/-! ## A017500.P4843336358544432466

`(sqrt(A017486(n))+1)²²`
-/

namespace A017500.P4843336358544432466
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017486 n : ℝ) + 1) ^ 2) ^ 2

end

end A017500.P4843336358544432466

namespace A017500

/-- `(sqrt(A017486(n))+1)²²` -/
def P4843336358544432466.Spec : Prop :=
  ∀ n, P4843336358544432466.a n = (A017500 n : ℝ)

end A017500

/-! ## A017500.P14955830853132049618

`(sqrt(A017474(n))+2)²²`
-/

namespace A017500.P14955830853132049618
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017474 n : ℝ) + 2) ^ 2) ^ 2

end

end A017500.P14955830853132049618

namespace A017500

/-- `(sqrt(A017474(n))+2)²²` -/
def P14955830853132049618.Spec : Prop :=
  ∀ n, P14955830853132049618.a n = (A017500 n : ℝ)

end A017500

/-! ## A017500.P17175257880977540463

`(1-sqrt(A017510(n)))²²`
-/

namespace A017500.P17175257880977540463
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017510 n : ℝ)) ^ 2) ^ 2

end

end A017500.P17175257880977540463

namespace A017500

/-- `(1-sqrt(A017510(n)))²²` -/
def P17175257880977540463.Spec : Prop :=
  ∀ n, P17175257880977540463.a n = (A017500 n : ℝ)

end A017500

/-! ## A017500.P18405849482845865652

`(sqrt(A017378(n))+n)²²`
-/

namespace A017500.P18405849482845865652
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017378 n : ℝ) + (n : ℝ)) ^ 2) ^ 2

end

end A017500.P18405849482845865652

namespace A017500

/-- `(sqrt(A017378(n))+n)²²` -/
def P18405849482845865652.Spec : Prop :=
  ∀ n, P18405849482845865652.a n = (A017500 n : ℝ)

end A017500

/-! ## A017500.P17669897465348705195

`(n-sqrt(A017630(n)))²²`
-/

namespace A017500.P17669897465348705195
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) - Real.sqrt (A017630 n : ℝ)) ^ 2) ^ 2

end

end A017500.P17669897465348705195

namespace A017500

/-- `(n-sqrt(A017630(n)))²²` -/
def P17669897465348705195.Spec : Prop :=
  ∀ n, P17669897465348705195.a n = (A017500 n : ℝ)

end A017500

/-! ## A017500.P7381200165140494109

`(n-Δ[A195319(n)])²²`
-/

namespace A017500.P7381200165140494109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - (f1 (n + 1) - f1 n)) ^ 2) ^ 2

end

end A017500.P7381200165140494109

namespace A017500

/-- `(n-Δ[A195319(n)])²²` -/
def P7381200165140494109.Spec : Prop :=
  ∀ n, P7381200165140494109.a n = A017500 n

theorem P7381200165140494109.correct : P7381200165140494109.Spec := by
  intro n
  simp only [A017500, Nat.add_sub_cancel, A017500.P7381200165140494109.f1, A017500.P7381200165140494109.a, A017500.P12977093269737068978.a, A195319, A195319.P14159989131175070761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017500

/-! ## A017500.P2662837939155427238

`(2-A008593(n+1))²²`
-/

namespace A017500.P2662837939155427238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A008593 (n + 1)) ^ 2) ^ 2

end

end A017500.P2662837939155427238

namespace A017500

/-- `(2-A008593(n+1))²²` -/
def P2662837939155427238.Spec : Prop :=
  ∀ n, P2662837939155427238.a n = A017500 n

theorem P2662837939155427238.correct : P2662837939155427238.Spec := by
  intro n
  simp only [A017500, Nat.add_sub_cancel, A017500.P2662837939155427238.a, A017500.P12977093269737068978.a, A008593, A008593.P2680892499938115192.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017500

/-! ## A017500.P16771704875846988415

`(A017365(n)+n+1)²²`
-/

namespace A017500.P16771704875846988415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017365 n + (n + 1 : ℤ)) ^ 2) ^ 2

end

end A017500.P16771704875846988415

namespace A017500

/-- `(A017365(n)+n+1)²²` -/
def P16771704875846988415.Spec : Prop :=
  ∀ n, P16771704875846988415.a n = A017500 n

theorem P16771704875846988415.correct : P16771704875846988415.Spec := by
  intro n
  simp only [A017500, Nat.add_sub_cancel, A017500.P16771704875846988415.a, A017500.P12977093269737068978.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017500

/-! ## A017500.P8603424515196862053

`(A017353(n)+n+2)²²`
-/

namespace A017500.P8603424515196862053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017353 n + (n + 2 : ℤ)) ^ 2) ^ 2

end

end A017500.P8603424515196862053

namespace A017500

/-- `(A017353(n)+n+2)²²` -/
def P8603424515196862053.Spec : Prop :=
  ∀ n, P8603424515196862053.a n = A017500 n

theorem P8603424515196862053.correct : P8603424515196862053.Spec := by
  intro n
  simp only [A017500, Nat.add_sub_cancel, A017500.P8603424515196862053.a, A017500.P12977093269737068978.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017500

/-! ## A017500.P3039082333851860250

`(n-(A017617(n)+1))²²`
-/

namespace A017500.P3039082333851860250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - (A017617 n + 1)) ^ 2) ^ 2

end

end A017500.P3039082333851860250

namespace A017500

/-- `(n-(A017617(n)+1))²²` -/
def P3039082333851860250.Spec : Prop :=
  ∀ n, P3039082333851860250.a n = A017500 n

theorem P3039082333851860250.correct : P3039082333851860250.Spec := by
  intro n
  simp only [A017500, Nat.add_sub_cancel, A017500.P3039082333851860250.a, A017500.P12977093269737068978.a, A017617, A017617.P15573883131522867575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017500

/-!
# A017501: a(n) = (11*n + 9)^5.

The programs for A017501, the canonical program `A017501.P15025448043727104509` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017501 has offset 0).

The definition of A017501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+9)^5` (program `A017501.P15025448043727104509`, by `A017501.P15025448043727104509.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017501.P15025448043727104509

`(11*n+9)^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017501

/-- `(11*n+9)^5` -/
def P15025448043727104509.Spec : Prop :=
  ∀ n, (P15025448043727104509.a n : ℤ) = A017501 n

theorem P15025448043727104509.correct : P15025448043727104509.Spec := by
  intro n
  simp only [A017501]

end A017501

/-! ## A017501.P3719570199870856666

`sqrt(A017506(n))`
-/

namespace A017501.P3719570199870856666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017506 n : ℝ)

end

end A017501.P3719570199870856666

namespace A017501

/-- `sqrt(A017506(n))` -/
def P3719570199870856666.Spec : Prop :=
  ∀ n, P3719570199870856666.a n = (A017501 n : ℝ)

end A017501

/-! ## A017501.P1240086695409512050

`sqrt(A017498(n)^5)`
-/

namespace A017501.P1240086695409512050
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017498 n ^ 5 : ℝ)

end

end A017501.P1240086695409512050

namespace A017501

/-- `sqrt(A017498(n)^5)` -/
def P1240086695409512050.Spec : Prop :=
  ∀ n, P1240086695409512050.a n = (A017501 n : ℝ)

end A017501

/-! ## A017501.P1225652374153539426

`(11*n+9)²*A017499(n)`
-/

namespace A017501.P1225652374153539426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((11 * n + 9) ^ 2 : ℤ) * A017499 n

end

end A017501.P1225652374153539426

namespace A017501

/-- `(11*n+9)²*A017499(n)` -/
def P1225652374153539426.Spec : Prop :=
  ∀ n, P1225652374153539426.a n = A017501 n

theorem P1225652374153539426.correct : P1225652374153539426.Spec := by
  intro n
  simp only [A017501, Nat.add_sub_cancel, A017501.P1225652374153539426.a, A017501.P15025448043727104509.a, A017499, A017499.P1618840416987338505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017501

/-! ## A017501.P5611865757435250498

`(11*n+9)*(1-A017509(n))²²`
-/

namespace A017501.P5611865757435250498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n + 9 : ℤ) * ((1 - A017509 n) ^ 2) ^ 2

end

end A017501.P5611865757435250498

namespace A017501

/-- `(11*n+9)*(1-A017509(n))²²` -/
def P5611865757435250498.Spec : Prop :=
  ∀ n, P5611865757435250498.a n = A017501 n

theorem P5611865757435250498.correct : P5611865757435250498.Spec := by
  intro n
  simp only [A017501, Nat.add_sub_cancel, A017501.P5611865757435250498.a, A017501.P15025448043727104509.a, A017509, A017509.P7373483985674399481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017501

/-! ## A017501.P6893625584409425755

`A017497(n)*A017500(n)`
-/

namespace A017501.P6893625584409425755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n * A017500 n

end

end A017501.P6893625584409425755

namespace A017501

/-- `A017497(n)*A017500(n)` -/
def P6893625584409425755.Spec : Prop :=
  ∀ n, P6893625584409425755.a n = A017501 n

theorem P6893625584409425755.correct : P6893625584409425755.Spec := by
  intro n
  simp only [A017501, Nat.add_sub_cancel, A017501.P6893625584409425755.a, A017501.P15025448043727104509.a, A017497, A017497.P15469120572134644275.a, A017500, A017500.P12977093269737068978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017501

/-! ## A017501.P9824401306827453260

`A017502(n)/A017497(n)`
-/

namespace A017501.P9824401306827453260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017502 n : ℚ) / (A017497 n : ℚ)

end

end A017501.P9824401306827453260

namespace A017501

/-- `A017502(n)/A017497(n)` -/
def P9824401306827453260.Spec : Prop :=
  ∀ n, P9824401306827453260.a n = (A017501 n : ℚ)

end A017501

/-! ## A017501.P13698602840574612580

`A017503(n)/A017498(n)`
-/

namespace A017501.P13698602840574612580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017503 n : ℚ) / (A017498 n : ℚ)

end

end A017501.P13698602840574612580

namespace A017501

/-- `A017503(n)/A017498(n)` -/
def P13698602840574612580.Spec : Prop :=
  ∀ n, P13698602840574612580.a n = (A017501 n : ℚ)

end A017501

/-! ## A017501.P14231660504264993415

`A017504(n)/A017499(n)`
-/

namespace A017501.P14231660504264993415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017504 n : ℚ) / (A017499 n : ℚ)

end

end A017501.P14231660504264993415

namespace A017501

/-- `A017504(n)/A017499(n)` -/
def P14231660504264993415.Spec : Prop :=
  ∀ n, P14231660504264993415.a n = (A017501 n : ℚ)

end A017501

/-! ## A017501.P18393609245763755366

`A017505(n)/A017500(n)`
-/

namespace A017501.P18393609245763755366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017505 n : ℚ) / (A017500 n : ℚ)

end

end A017501.P18393609245763755366

namespace A017501

/-- `A017505(n)/A017500(n)` -/
def P18393609245763755366.Spec : Prop :=
  ∀ n, P18393609245763755366.a n = (A017501 n : ℚ)

end A017501

/-! ## A017501.P1540423447536802570

`A017507(n)/A017502(n)`
-/

namespace A017501.P1540423447536802570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017507 n : ℚ) / (A017502 n : ℚ)

end

end A017501.P1540423447536802570

namespace A017501

/-- `A017507(n)/A017502(n)` -/
def P1540423447536802570.Spec : Prop :=
  ∀ n, P1540423447536802570.a n = (A017501 n : ℚ)

end A017501

/-! ## A017501.P8379216962383100843

`A017508(n)/A017503(n)`
-/

namespace A017501.P8379216962383100843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017508 n : ℚ) / (A017503 n : ℚ)

end

end A017501.P8379216962383100843

namespace A017501

/-- `A017508(n)/A017503(n)` -/
def P8379216962383100843.Spec : Prop :=
  ∀ n, P8379216962383100843.a n = (A017501 n : ℚ)

end A017501

/-! ## A017501.P1933135365175935498

`A017498(n)²*A017497(n)`
-/

namespace A017501.P1933135365175935498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017498 n ^ 2 * A017497 n

end

end A017501.P1933135365175935498

namespace A017501

/-- `A017498(n)²*A017497(n)` -/
def P1933135365175935498.Spec : Prop :=
  ∀ n, P1933135365175935498.a n = A017501 n

theorem P1933135365175935498.correct : P1933135365175935498.Spec := by
  intro n
  simp only [A017501, Nat.add_sub_cancel, A017501.P1933135365175935498.a, A017501.P15025448043727104509.a, A017497, A017497.P15469120572134644275.a, A017498, A017498.P11433022045752089983.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017501

/-! ## A017501.P3596242757593135340

`A017499(n)²/A017497(n)`
-/

namespace A017501.P3596242757593135340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017499 n ^ 2 : ℚ) / (A017497 n : ℚ)

end

end A017501.P3596242757593135340

namespace A017501

/-- `A017499(n)²/A017497(n)` -/
def P3596242757593135340.Spec : Prop :=
  ∀ n, P3596242757593135340.a n = (A017501 n : ℚ)

end A017501

/-! ## A017501.P14952336151643835003

`A017500(n)²/A017499(n)`
-/

namespace A017501.P14952336151643835003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017500 n ^ 2 : ℚ) / (A017499 n : ℚ)

end

end A017501.P14952336151643835003

namespace A017501

/-- `A017500(n)²/A017499(n)` -/
def P14952336151643835003.Spec : Prop :=
  ∀ n, P14952336151643835003.a n = (A017501 n : ℚ)

end A017501

/-! ## A017501.P14337351578729234463

`A017503(n)/A017497(n)²`
-/

namespace A017501.P14337351578729234463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017503 n : ℚ) / (A017497 n ^ 2 : ℚ)

end

end A017501.P14337351578729234463

namespace A017501

/-- `A017503(n)/A017497(n)²` -/
def P14337351578729234463.Spec : Prop :=
  ∀ n, P14337351578729234463.a n = (A017501 n : ℚ)

end A017501

/-! ## A017501.P12211733488080785851

`A017505(n)/A017498(n)²`
-/

namespace A017501.P12211733488080785851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017505 n : ℚ) / (A017498 n ^ 2 : ℚ)

end

end A017501.P12211733488080785851

namespace A017501

/-- `A017505(n)/A017498(n)²` -/
def P12211733488080785851.Spec : Prop :=
  ∀ n, P12211733488080785851.a n = (A017501 n : ℚ)

end A017501

/-! ## A017501.P17425956764293302149

`A017502(n)²/A017503(n)`
-/

namespace A017501.P17425956764293302149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017502 n ^ 2 : ℚ) / (A017503 n : ℚ)

end

end A017501.P17425956764293302149

namespace A017501

/-- `A017502(n)²/A017503(n)` -/
def P17425956764293302149.Spec : Prop :=
  ∀ n, P17425956764293302149.a n = (A017501 n : ℚ)

end A017501

/-! ## A017501.P8654373877068297432

`A017507(n)/A017499(n)²`
-/

namespace A017501.P8654373877068297432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017507 n : ℚ) / (A017499 n ^ 2 : ℚ)

end

end A017501.P8654373877068297432

namespace A017501

/-- `A017507(n)/A017499(n)²` -/
def P8654373877068297432.Spec : Prop :=
  ∀ n, P8654373877068297432.a n = (A017501 n : ℚ)

end A017501

/-! ## A017501.P7818332564964515129

`A017504(n)²/A017507(n)`
-/

namespace A017501.P7818332564964515129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017504 n ^ 2 : ℚ) / (A017507 n : ℚ)

end

end A017501.P7818332564964515129

namespace A017501

/-- `A017504(n)²/A017507(n)` -/
def P7818332564964515129.Spec : Prop :=
  ∀ n, P7818332564964515129.a n = (A017501 n : ℚ)

end A017501

/-!
# A017502: a(n) = (11*n + 9)^6.

The programs for A017502, the canonical program `A017502.P11280341892169286540` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017502 has offset 0).

The definition of A017502 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+9)^6` (program `A017502.P11280341892169286540`, by `A017502.P11280341892169286540.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017502.P11280341892169286540

`(11*n+9)^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017502

/-- `(11*n+9)^6` -/
def P11280341892169286540.Spec : Prop :=
  ∀ n, (P11280341892169286540.a n : ℤ) = A017502 n

theorem P11280341892169286540.correct : P11280341892169286540.Spec := by
  intro n
  simp only [A017502]

end A017502

/-! ## A017502.P216766800353767992

`A017499(n)²`
-/

namespace A017502.P216766800353767992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017499 n ^ 2

end

end A017502.P216766800353767992

namespace A017502

/-- `A017499(n)²` -/
def P216766800353767992.Spec : Prop :=
  ∀ n, P216766800353767992.a n = A017502 n

theorem P216766800353767992.correct : P216766800353767992.Spec := by
  intro n
  simp only [A017502, Nat.add_sub_cancel, A017502.P216766800353767992.a, A017502.P11280341892169286540.a, A017499, A017499.P1618840416987338505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017502

/-! ## A017502.P4968374793825438428

`sqrt(A017508(n))`
-/

namespace A017502.P4968374793825438428
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017508 n : ℝ)

end

end A017502.P4968374793825438428

namespace A017502

/-- `sqrt(A017508(n))` -/
def P4968374793825438428.Spec : Prop :=
  ∀ n, P4968374793825438428.a n = (A017502 n : ℝ)

end A017502

/-! ## A017502.P12709719431498032438

`(A017497(n)^3)²`
-/

namespace A017502.P12709719431498032438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017497 n ^ 3) ^ 2

end

end A017502.P12709719431498032438

namespace A017502

/-- `(A017497(n)^3)²` -/
def P12709719431498032438.Spec : Prop :=
  ∀ n, P12709719431498032438.a n = A017502 n

theorem P12709719431498032438.correct : P12709719431498032438.Spec := by
  intro n
  simp only [A017502, Nat.add_sub_cancel, A017502.P12709719431498032438.a, A017502.P11280341892169286540.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017502

/-! ## A017502.P4041676849290064026

`sqrt(A017500(n)^3)`
-/

namespace A017502.P4041676849290064026
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017500 n ^ 3 : ℝ)

end

end A017502.P4041676849290064026

namespace A017502

/-- `sqrt(A017500(n)^3)` -/
def P4041676849290064026.Spec : Prop :=
  ∀ n, P4041676849290064026.a n = (A017502 n : ℝ)

end A017502

/-! ## A017502.P4098103526931007539

`-(-A017498(n))^3`
-/

namespace A017502.P4098103526931007539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-A017498 n) ^ 3)

end

end A017502.P4098103526931007539

namespace A017502

/-- `-(-A017498(n))^3` -/
def P4098103526931007539.Spec : Prop :=
  ∀ n, P4098103526931007539.a n = A017502 n

theorem P4098103526931007539.correct : P4098103526931007539.Spec := by
  intro n
  simp only [A017502, Nat.add_sub_cancel, A017502.P4098103526931007539.a, A017502.P11280341892169286540.a, A017498, A017498.P11433022045752089983.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017502

/-! ## A017502.P5102302319889693054

`((A017509(n)-1)^3)²`
-/

namespace A017502.P5102302319889693054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017509 n - 1) ^ 3) ^ 2

end

end A017502.P5102302319889693054

namespace A017502

/-- `((A017509(n)-1)^3)²` -/
def P5102302319889693054.Spec : Prop :=
  ∀ n, P5102302319889693054.a n = A017502 n

theorem P5102302319889693054.correct : P5102302319889693054.Spec := by
  intro n
  simp only [A017502, Nat.add_sub_cancel, A017502.P5102302319889693054.a, A017502.P11280341892169286540.a, A017509, A017509.P7373483985674399481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017502

/-! ## A017502.P10903520537628676632

`A017497(n)*A017501(n)`
-/

namespace A017502.P10903520537628676632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n * A017501 n

end

end A017502.P10903520537628676632

namespace A017502

/-- `A017497(n)*A017501(n)` -/
def P10903520537628676632.Spec : Prop :=
  ∀ n, P10903520537628676632.a n = A017502 n

theorem P10903520537628676632.correct : P10903520537628676632.Spec := by
  intro n
  simp only [A017502, Nat.add_sub_cancel, A017502.P10903520537628676632.a, A017502.P11280341892169286540.a, A017497, A017497.P15469120572134644275.a, A017501, A017501.P15025448043727104509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017502

/-! ## A017502.P14851051665610742683

`A017498(n)*A017500(n)`
-/

namespace A017502.P14851051665610742683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017498 n * A017500 n

end

end A017502.P14851051665610742683

namespace A017502

/-- `A017498(n)*A017500(n)` -/
def P14851051665610742683.Spec : Prop :=
  ∀ n, P14851051665610742683.a n = A017502 n

theorem P14851051665610742683.correct : P14851051665610742683.Spec := by
  intro n
  simp only [A017502, Nat.add_sub_cancel, A017502.P14851051665610742683.a, A017502.P11280341892169286540.a, A017498, A017498.P11433022045752089983.a, A017500, A017500.P12977093269737068978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017502

/-! ## A017502.P6265503953727099406

`A017503(n)/A017497(n)`
-/

namespace A017502.P6265503953727099406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017503 n : ℚ) / (A017497 n : ℚ)

end

end A017502.P6265503953727099406

namespace A017502

/-- `A017503(n)/A017497(n)` -/
def P6265503953727099406.Spec : Prop :=
  ∀ n, P6265503953727099406.a n = (A017502 n : ℚ)

end A017502

/-! ## A017502.P3781059544225338457

`A017504(n)/A017498(n)`
-/

namespace A017502.P3781059544225338457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017504 n : ℚ) / (A017498 n : ℚ)

end

end A017502.P3781059544225338457

namespace A017502

/-- `A017504(n)/A017498(n)` -/
def P3781059544225338457.Spec : Prop :=
  ∀ n, P3781059544225338457.a n = (A017502 n : ℚ)

end A017502

/-! ## A017502.P5066151600273562758

`A017505(n)/A017499(n)`
-/

namespace A017502.P5066151600273562758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017505 n : ℚ) / (A017499 n : ℚ)

end

end A017502.P5066151600273562758

namespace A017502

/-- `A017505(n)/A017499(n)` -/
def P5066151600273562758.Spec : Prop :=
  ∀ n, P5066151600273562758.a n = (A017502 n : ℚ)

end A017502

/-! ## A017502.P8003646474218837702

`A017506(n)/A017500(n)`
-/

namespace A017502.P8003646474218837702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017506 n : ℚ) / (A017500 n : ℚ)

end

end A017502.P8003646474218837702

namespace A017502

/-- `A017506(n)/A017500(n)` -/
def P8003646474218837702.Spec : Prop :=
  ∀ n, P8003646474218837702.a n = (A017502 n : ℚ)

end A017502

/-! ## A017502.P6803945173231584706

`A017507(n)/A017501(n)`
-/

namespace A017502.P6803945173231584706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017507 n : ℚ) / (A017501 n : ℚ)

end

end A017502.P6803945173231584706

namespace A017502

/-- `A017507(n)/A017501(n)` -/
def P6803945173231584706.Spec : Prop :=
  ∀ n, P6803945173231584706.a n = (A017502 n : ℚ)

end A017502

/-! ## A017502.P18146089936627275333

`(A017497(n)*A017498(n))²`
-/

namespace A017502.P18146089936627275333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017497 n * A017498 n) ^ 2

end

end A017502.P18146089936627275333

namespace A017502

/-- `(A017497(n)*A017498(n))²` -/
def P18146089936627275333.Spec : Prop :=
  ∀ n, P18146089936627275333.a n = A017502 n

theorem P18146089936627275333.correct : P18146089936627275333.Spec := by
  intro n
  simp only [A017502, Nat.add_sub_cancel, A017502.P18146089936627275333.a, A017502.P11280341892169286540.a, A017497, A017497.P15469120572134644275.a, A017498, A017498.P11433022045752089983.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017502

/-! ## A017502.P10691994261846246699

`A017497(n)²*A017500(n)`
-/

namespace A017502.P10691994261846246699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n ^ 2 * A017500 n

end

end A017502.P10691994261846246699

namespace A017502

/-- `A017497(n)²*A017500(n)` -/
def P10691994261846246699.Spec : Prop :=
  ∀ n, P10691994261846246699.a n = A017502 n

theorem P10691994261846246699.correct : P10691994261846246699.Spec := by
  intro n
  simp only [A017502, Nat.add_sub_cancel, A017502.P10691994261846246699.a, A017502.P11280341892169286540.a, A017497, A017497.P15469120572134644275.a, A017500, A017500.P12977093269737068978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017502

/-! ## A017502.P9013102860442934129

`(A017501(n)/A017498(n))²`
-/

namespace A017502.P9013102860442934129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017501 n : ℚ) / (A017498 n : ℚ)) ^ 2

end

end A017502.P9013102860442934129

namespace A017502

/-- `(A017501(n)/A017498(n))²` -/
def P9013102860442934129.Spec : Prop :=
  ∀ n, P9013102860442934129.a n = (A017502 n : ℚ)

end A017502

/-! ## A017502.P16517554744081180249

`A017501(n)²/A017500(n)`
-/

namespace A017502.P16517554744081180249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017501 n ^ 2 : ℚ) / (A017500 n : ℚ)

end

end A017502.P16517554744081180249

namespace A017502

/-- `A017501(n)²/A017500(n)` -/
def P16517554744081180249.Spec : Prop :=
  ∀ n, P16517554744081180249.a n = (A017502 n : ℚ)

end A017502

/-! ## A017502.P3162606244944461990

`A017504(n)/A017497(n)²`
-/

namespace A017502.P3162606244944461990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017504 n : ℚ) / (A017497 n ^ 2 : ℚ)

end

end A017502.P3162606244944461990

namespace A017502

/-- `A017504(n)/A017497(n)²` -/
def P3162606244944461990.Spec : Prop :=
  ∀ n, P3162606244944461990.a n = (A017502 n : ℚ)

end A017502

/-! ## A017502.P461474589176373183

`(A017503(n)/A017500(n))²`
-/

namespace A017502.P461474589176373183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017503 n : ℚ) / (A017500 n : ℚ)) ^ 2

end

end A017502.P461474589176373183

namespace A017502

/-- `(A017503(n)/A017500(n))²` -/
def P461474589176373183.Spec : Prop :=
  ∀ n, P461474589176373183.a n = (A017502 n : ℚ)

end A017502

/-!
# A017503: a(n) = (11*n + 9)^7.

The programs for A017503, the canonical program `A017503.P4353550749841167247` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017503 has offset 0).

The definition of A017503 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+9)^7` (program `A017503.P4353550749841167247`, by `A017503.P4353550749841167247.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017503.P4353550749841167247

`(11*n+9)^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017503

/-- `(11*n+9)^7` -/
def P4353550749841167247.Spec : Prop :=
  ∀ n, (P4353550749841167247.a n : ℤ) = A017503 n

theorem P4353550749841167247.correct : P4353550749841167247.Spec := by
  intro n
  simp only [A017503]

end A017503

/-! ## A017503.P8083181639494376763

`A001015(A017497(n))`
-/

namespace A017503.P8083181639494376763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A017497 n).toNat

end

end A017503.P8083181639494376763

namespace A017503

/-- `A001015(A017497(n))` -/
def P8083181639494376763.Spec : Prop :=
  ∀ n, P8083181639494376763.a n = A017503 n

end A017503

/-! ## A017503.P12048044882983980675

`(11*n+9)²²*A017499(n)`
-/

namespace A017503.P12048044882983980675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((11 * n + 9) ^ 2) ^ 2 : ℤ) * A017499 n

end

end A017503.P12048044882983980675

namespace A017503

/-- `(11*n+9)²²*A017499(n)` -/
def P12048044882983980675.Spec : Prop :=
  ∀ n, P12048044882983980675.a n = A017503 n

theorem P12048044882983980675.correct : P12048044882983980675.Spec := by
  intro n
  simp only [A017503, Nat.add_sub_cancel, A017503.P12048044882983980675.a, A017503.P4353550749841167247.a, A017499, A017499.P1618840416987338505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017503

/-! ## A017503.P4196431088998929385

`sqrt(A017498(n))*(7*n-Δ[(3*n)²])^6`
-/

namespace A017503.P4196431088998929385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017498 n : ℝ) * (((7 * n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 6 : ℝ)

end

end A017503.P4196431088998929385

namespace A017503

/-- `sqrt(A017498(n))*(7*n-Δ[(3*n)²])^6` -/
def P4196431088998929385.Spec : Prop :=
  ∀ n, P4196431088998929385.a n = (A017503 n : ℝ)

end A017503

/-! ## A017503.P6356030733944652969

`A017497(n)*A017502(n)`
-/

namespace A017503.P6356030733944652969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n * A017502 n

end

end A017503.P6356030733944652969

namespace A017503

/-- `A017497(n)*A017502(n)` -/
def P6356030733944652969.Spec : Prop :=
  ∀ n, P6356030733944652969.a n = A017503 n

theorem P6356030733944652969.correct : P6356030733944652969.Spec := by
  intro n
  simp only [A017503, Nat.add_sub_cancel, A017503.P6356030733944652969.a, A017503.P4353550749841167247.a, A017497, A017497.P15469120572134644275.a, A017502, A017502.P11280341892169286540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017503

/-! ## A017503.P14910529771294974833

`A017498(n)*A017501(n)`
-/

namespace A017503.P14910529771294974833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017498 n * A017501 n

end

end A017503.P14910529771294974833

namespace A017503

/-- `A017498(n)*A017501(n)` -/
def P14910529771294974833.Spec : Prop :=
  ∀ n, P14910529771294974833.a n = A017503 n

theorem P14910529771294974833.correct : P14910529771294974833.Spec := by
  intro n
  simp only [A017503, Nat.add_sub_cancel, A017503.P14910529771294974833.a, A017503.P4353550749841167247.a, A017498, A017498.P11433022045752089983.a, A017501, A017501.P15025448043727104509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017503

/-! ## A017503.P9596686676883819681

`A017499(n)*A017500(n)`
-/

namespace A017503.P9596686676883819681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017499 n * A017500 n

end

end A017503.P9596686676883819681

namespace A017503

/-- `A017499(n)*A017500(n)` -/
def P9596686676883819681.Spec : Prop :=
  ∀ n, P9596686676883819681.a n = A017503 n

theorem P9596686676883819681.correct : P9596686676883819681.Spec := by
  intro n
  simp only [A017503, Nat.add_sub_cancel, A017503.P9596686676883819681.a, A017503.P4353550749841167247.a, A017499, A017499.P1618840416987338505.a, A017500, A017500.P12977093269737068978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017503

/-! ## A017503.P11324394905706337934

`A017504(n)/A017497(n)`
-/

namespace A017503.P11324394905706337934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017504 n : ℚ) / (A017497 n : ℚ)

end

end A017503.P11324394905706337934

namespace A017503

/-- `A017504(n)/A017497(n)` -/
def P11324394905706337934.Spec : Prop :=
  ∀ n, P11324394905706337934.a n = (A017503 n : ℚ)

end A017503

/-! ## A017503.P7976308896245367513

`A017505(n)/A017498(n)`
-/

namespace A017503.P7976308896245367513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017505 n : ℚ) / (A017498 n : ℚ)

end

end A017503.P7976308896245367513

namespace A017503

/-- `A017505(n)/A017498(n)` -/
def P7976308896245367513.Spec : Prop :=
  ∀ n, P7976308896245367513.a n = (A017503 n : ℚ)

end A017503

/-! ## A017503.P8489914971893619130

`A017506(n)/A017499(n)`
-/

namespace A017503.P8489914971893619130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017506 n : ℚ) / (A017499 n : ℚ)

end

end A017503.P8489914971893619130

namespace A017503

/-- `A017506(n)/A017499(n)` -/
def P8489914971893619130.Spec : Prop :=
  ∀ n, P8489914971893619130.a n = (A017503 n : ℚ)

end A017503

/-! ## A017503.P10057226837505381916

`A017507(n)/A017500(n)`
-/

namespace A017503.P10057226837505381916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017507 n : ℚ) / (A017500 n : ℚ)

end

end A017503.P10057226837505381916

namespace A017503

/-- `A017507(n)/A017500(n)` -/
def P10057226837505381916.Spec : Prop :=
  ∀ n, P10057226837505381916.a n = (A017503 n : ℚ)

end A017503

/-! ## A017503.P7992127943282832182

`A017508(n)/A017501(n)`
-/

namespace A017503.P7992127943282832182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017508 n : ℚ) / (A017501 n : ℚ)

end

end A017503.P7992127943282832182

namespace A017503

/-- `A017508(n)/A017501(n)` -/
def P7992127943282832182.Spec : Prop :=
  ∀ n, P7992127943282832182.a n = (A017503 n : ℚ)

end A017503

/-! ## A017503.P11404458533156814831

`A017499(n)²*A017497(n)`
-/

namespace A017503.P11404458533156814831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017499 n ^ 2 * A017497 n

end

end A017503.P11404458533156814831

namespace A017503

/-- `A017499(n)²*A017497(n)` -/
def P11404458533156814831.Spec : Prop :=
  ∀ n, P11404458533156814831.a n = A017503 n

theorem P11404458533156814831.correct : P11404458533156814831.Spec := by
  intro n
  simp only [A017503, Nat.add_sub_cancel, A017503.P11404458533156814831.a, A017503.P4353550749841167247.a, A017497, A017497.P15469120572134644275.a, A017499, A017499.P1618840416987338505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017503

/-! ## A017503.P5461847522542999984

`A017497(n)²*A017501(n)`
-/

namespace A017503.P5461847522542999984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n ^ 2 * A017501 n

end

end A017503.P5461847522542999984

namespace A017503

/-- `A017497(n)²*A017501(n)` -/
def P5461847522542999984.Spec : Prop :=
  ∀ n, P5461847522542999984.a n = A017503 n

theorem P5461847522542999984.correct : P5461847522542999984.Spec := by
  intro n
  simp only [A017503, Nat.add_sub_cancel, A017503.P5461847522542999984.a, A017503.P4353550749841167247.a, A017497, A017497.P15469120572134644275.a, A017501, A017501.P15025448043727104509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017503

/-! ## A017503.P17356957531674708848

`A017500(n)²/A017497(n)`
-/

namespace A017503.P17356957531674708848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017500 n ^ 2 : ℚ) / (A017497 n : ℚ)

end

end A017503.P17356957531674708848

namespace A017503

/-- `A017500(n)²/A017497(n)` -/
def P17356957531674708848.Spec : Prop :=
  ∀ n, P17356957531674708848.a n = (A017503 n : ℚ)

end A017503

/-! ## A017503.P10847792912737885722

`A017501(n)²/A017499(n)`
-/

namespace A017503.P10847792912737885722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017501 n ^ 2 : ℚ) / (A017499 n : ℚ)

end

end A017503.P10847792912737885722

namespace A017503

/-- `A017501(n)²/A017499(n)` -/
def P10847792912737885722.Spec : Prop :=
  ∀ n, P10847792912737885722.a n = (A017503 n : ℚ)

end A017503

/-! ## A017503.P13609091136782903701

`A017505(n)/A017497(n)²`
-/

namespace A017503.P13609091136782903701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017505 n : ℚ) / (A017497 n ^ 2 : ℚ)

end

end A017503.P13609091136782903701

namespace A017503

/-- `A017505(n)/A017497(n)²` -/
def P13609091136782903701.Spec : Prop :=
  ∀ n, P13609091136782903701.a n = (A017503 n : ℚ)

end A017503

/-! ## A017503.P104931805624541670

`A017502(n)²/A017501(n)`
-/

namespace A017503.P104931805624541670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017502 n ^ 2 : ℚ) / (A017501 n : ℚ)

end

end A017503.P104931805624541670

namespace A017503

/-- `A017502(n)²/A017501(n)` -/
def P104931805624541670.Spec : Prop :=
  ∀ n, P104931805624541670.a n = (A017503 n : ℚ)

end A017503

/-! ## A017503.P8886225044580077523

`A017507(n)/A017498(n)²`
-/

namespace A017503.P8886225044580077523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017507 n : ℚ) / (A017498 n ^ 2 : ℚ)

end

end A017503.P8886225044580077523

namespace A017503

/-- `A017507(n)/A017498(n)²` -/
def P8886225044580077523.Spec : Prop :=
  ∀ n, P8886225044580077523.a n = (A017503 n : ℚ)

end A017503

/-! ## A017503.P683042189271854442

`A017498(n)²²/A017497(n)`
-/

namespace A017503.P683042189271854442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017498 n ^ 2) ^ 2 : ℚ) / (A017497 n : ℚ)

end

end A017503.P683042189271854442

namespace A017503

/-- `A017498(n)²²/A017497(n)` -/
def P683042189271854442.Spec : Prop :=
  ∀ n, P683042189271854442.a n = (A017503 n : ℚ)

end A017503

/-!
# A017504: a(n) = (11*n + 9)^8.

The programs for A017504, the canonical program `A017504.P18128295178749533471` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017504 has offset 0).

The definition of A017504 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+9)^8` (program `A017504.P18128295178749533471`, by `A017504.P18128295178749533471.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017504.P18128295178749533471

`(11*n+9)^8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017504

/-- `(11*n+9)^8` -/
def P18128295178749533471.Spec : Prop :=
  ∀ n, (P18128295178749533471.a n : ℤ) = A017504 n

theorem P18128295178749533471.correct : P18128295178749533471.Spec := by
  intro n
  simp only [A017504]

end A017504

/-! ## A017504.P3123910721786911348

`A017500(n)²`
-/

namespace A017504.P3123910721786911348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017500 n ^ 2

end

end A017504.P3123910721786911348

namespace A017504

/-- `A017500(n)²` -/
def P3123910721786911348.Spec : Prop :=
  ∀ n, P3123910721786911348.a n = A017504 n

theorem P3123910721786911348.correct : P3123910721786911348.Spec := by
  intro n
  simp only [A017504, Nat.add_sub_cancel, A017504.P3123910721786911348.a, A017504.P18128295178749533471.a, A017500, A017500.P12977093269737068978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017504

/-! ## A017504.P15166091167598536933

`A017498(n)²²`
-/

namespace A017504.P15166091167598536933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017498 n ^ 2) ^ 2

end

end A017504.P15166091167598536933

namespace A017504

/-- `A017498(n)²²` -/
def P15166091167598536933.Spec : Prop :=
  ∀ n, P15166091167598536933.a n = A017504 n

theorem P15166091167598536933.correct : P15166091167598536933.Spec := by
  intro n
  simp only [A017504, Nat.add_sub_cancel, A017504.P15166091167598536933.a, A017504.P18128295178749533471.a, A017498, A017498.P11433022045752089983.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017504

/-! ## A017504.P2257942338237476166

`(A017497(n)^4)²`
-/

namespace A017504.P2257942338237476166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017497 n ^ 4) ^ 2

end

end A017504.P2257942338237476166

namespace A017504

/-- `(A017497(n)^4)²` -/
def P2257942338237476166.Spec : Prop :=
  ∀ n, P2257942338237476166.a n = A017504 n

theorem P2257942338237476166.correct : P2257942338237476166.Spec := by
  intro n
  simp only [A017504, Nat.add_sub_cancel, A017504.P2257942338237476166.a, A017504.P18128295178749533471.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017504

/-! ## A017504.P1528748453766372675

`((A017485(n)+1)^4)²`
-/

namespace A017504.P1528748453766372675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017485 n + 1) ^ 4) ^ 2

end

end A017504.P1528748453766372675

namespace A017504

/-- `((A017485(n)+1)^4)²` -/
def P1528748453766372675.Spec : Prop :=
  ∀ n, P1528748453766372675.a n = A017504 n

theorem P1528748453766372675.correct : P1528748453766372675.Spec := by
  intro n
  simp only [A017504, Nat.add_sub_cancel, A017504.P1528748453766372675.a, A017504.P18128295178749533471.a, A017485, A017485.P4370091181196038588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017504

/-! ## A017504.P1107539666524730605

`(A017473(n)+2)²²²`
-/

namespace A017504.P1107539666524730605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017473 n + 2) ^ 2) ^ 2) ^ 2

end

end A017504.P1107539666524730605

namespace A017504

/-- `(A017473(n)+2)²²²` -/
def P1107539666524730605.Spec : Prop :=
  ∀ n, P1107539666524730605.a n = A017504 n

theorem P1107539666524730605.correct : P1107539666524730605.Spec := by
  intro n
  simp only [A017504, Nat.add_sub_cancel, A017504.P1107539666524730605.a, A017504.P18128295178749533471.a, A017473, A017473.P6794540674081733570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017504

/-! ## A017504.P13474927779663740888

`(1-A017509(n))²²²`
-/

namespace A017504.P13474927779663740888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017509 n) ^ 2) ^ 2) ^ 2

end

end A017504.P13474927779663740888

namespace A017504

/-- `(1-A017509(n))²²²` -/
def P13474927779663740888.Spec : Prop :=
  ∀ n, P13474927779663740888.a n = A017504 n

theorem P13474927779663740888.correct : P13474927779663740888.Spec := by
  intro n
  simp only [A017504, Nat.add_sub_cancel, A017504.P13474927779663740888.a, A017504.P18128295178749533471.a, A017509, A017509.P7373483985674399481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017504

/-! ## A017504.P15735943605631915423

`(A017377(n)+n)²²²`
-/

namespace A017504.P15735943605631915423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017377 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017504.P15735943605631915423

namespace A017504

/-- `(A017377(n)+n)²²²` -/
def P15735943605631915423.Spec : Prop :=
  ∀ n, P15735943605631915423.a n = A017504 n

theorem P15735943605631915423.correct : P15735943605631915423.Spec := by
  intro n
  simp only [A017504, Nat.add_sub_cancel, A017504.P15735943605631915423.a, A017504.P18128295178749533471.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017504

/-! ## A017504.P16689360055596149498

`(n-A017629(n))²²²`
-/

namespace A017504.P16689360055596149498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017629 n) ^ 2) ^ 2) ^ 2

end

end A017504.P16689360055596149498

namespace A017504

/-- `(n-A017629(n))²²²` -/
def P16689360055596149498.Spec : Prop :=
  ∀ n, P16689360055596149498.a n = A017504 n

theorem P16689360055596149498.correct : P16689360055596149498.Spec := by
  intro n
  simp only [A017504, Nat.add_sub_cancel, A017504.P16689360055596149498.a, A017504.P18128295178749533471.a, A017629, A017629.P13557474233053533782.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017504

/-! ## A017504.P10113266673095201890

`A017497(n)*A017503(n)`
-/

namespace A017504.P10113266673095201890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n * A017503 n

end

end A017504.P10113266673095201890

namespace A017504

/-- `A017497(n)*A017503(n)` -/
def P10113266673095201890.Spec : Prop :=
  ∀ n, P10113266673095201890.a n = A017504 n

theorem P10113266673095201890.correct : P10113266673095201890.Spec := by
  intro n
  simp only [A017504, Nat.add_sub_cancel, A017504.P10113266673095201890.a, A017504.P18128295178749533471.a, A017497, A017497.P15469120572134644275.a, A017503, A017503.P4353550749841167247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017504

/-! ## A017504.P12317513470445334562

`A017498(n)*A017502(n)`
-/

namespace A017504.P12317513470445334562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017498 n * A017502 n

end

end A017504.P12317513470445334562

namespace A017504

/-- `A017498(n)*A017502(n)` -/
def P12317513470445334562.Spec : Prop :=
  ∀ n, P12317513470445334562.a n = A017504 n

theorem P12317513470445334562.correct : P12317513470445334562.Spec := by
  intro n
  simp only [A017504, Nat.add_sub_cancel, A017504.P12317513470445334562.a, A017504.P18128295178749533471.a, A017498, A017498.P11433022045752089983.a, A017502, A017502.P11280341892169286540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017504

/-! ## A017504.P497628491107393069

`A017499(n)*A017501(n)`
-/

namespace A017504.P497628491107393069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017499 n * A017501 n

end

end A017504.P497628491107393069

namespace A017504

/-- `A017499(n)*A017501(n)` -/
def P497628491107393069.Spec : Prop :=
  ∀ n, P497628491107393069.a n = A017504 n

theorem P497628491107393069.correct : P497628491107393069.Spec := by
  intro n
  simp only [A017504, Nat.add_sub_cancel, A017504.P497628491107393069.a, A017504.P18128295178749533471.a, A017499, A017499.P1618840416987338505.a, A017501, A017501.P15025448043727104509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017504

/-! ## A017504.P16534872678187891017

`A017505(n)/A017497(n)`
-/

namespace A017504.P16534872678187891017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017505 n : ℚ) / (A017497 n : ℚ)

end

end A017504.P16534872678187891017

namespace A017504

/-- `A017505(n)/A017497(n)` -/
def P16534872678187891017.Spec : Prop :=
  ∀ n, P16534872678187891017.a n = (A017504 n : ℚ)

end A017504

/-! ## A017504.P1609554482415789145

`A017506(n)/A017498(n)`
-/

namespace A017504.P1609554482415789145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017506 n : ℚ) / (A017498 n : ℚ)

end

end A017504.P1609554482415789145

namespace A017504

/-- `A017506(n)/A017498(n)` -/
def P1609554482415789145.Spec : Prop :=
  ∀ n, P1609554482415789145.a n = (A017504 n : ℚ)

end A017504

/-! ## A017504.P8326012692189179374

`A017507(n)/A017499(n)`
-/

namespace A017504.P8326012692189179374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017507 n : ℚ) / (A017499 n : ℚ)

end

end A017504.P8326012692189179374

namespace A017504

/-- `A017507(n)/A017499(n)` -/
def P8326012692189179374.Spec : Prop :=
  ∀ n, P8326012692189179374.a n = (A017504 n : ℚ)

end A017504

/-! ## A017504.P17414773864901429744

`A017508(n)/A017500(n)`
-/

namespace A017504.P17414773864901429744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017508 n : ℚ) / (A017500 n : ℚ)

end

end A017504.P17414773864901429744

namespace A017504

/-- `A017508(n)/A017500(n)` -/
def P17414773864901429744.Spec : Prop :=
  ∀ n, P17414773864901429744.a n = (A017504 n : ℚ)

end A017504

/-! ## A017504.P11255791983675406700

`(A017503(n)/A017499(n))²`
-/

namespace A017504.P11255791983675406700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017503 n : ℚ) / (A017499 n : ℚ)) ^ 2

end

end A017504.P11255791983675406700

namespace A017504

/-- `(A017503(n)/A017499(n))²` -/
def P11255791983675406700.Spec : Prop :=
  ∀ n, P11255791983675406700.a n = (A017504 n : ℚ)

end A017504

/-! ## A017504.P11931344956596844548

`A017503(n)²/A017502(n)`
-/

namespace A017504.P11931344956596844548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017503 n ^ 2 : ℚ) / (A017502 n : ℚ)

end

end A017504.P11931344956596844548

namespace A017504

/-- `A017503(n)²/A017502(n)` -/
def P11931344956596844548.Spec : Prop :=
  ∀ n, P11931344956596844548.a n = (A017504 n : ℚ)

end A017504

/-! ## A017504.P4181079792938683654

`(A017505(n)/A017501(n))²`
-/

namespace A017504.P4181079792938683654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017505 n : ℚ) / (A017501 n : ℚ)) ^ 2

end

end A017504.P4181079792938683654

namespace A017504

/-- `(A017505(n)/A017501(n))²` -/
def P4181079792938683654.Spec : Prop :=
  ∀ n, P4181079792938683654.a n = (A017504 n : ℚ)

end A017504

/-! ## A017504.P14909377118489080739

`(A017506(n)/A017502(n))²`
-/

namespace A017504.P14909377118489080739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017506 n : ℚ) / (A017502 n : ℚ)) ^ 2

end

end A017504.P14909377118489080739

namespace A017504

/-- `(A017506(n)/A017502(n))²` -/
def P14909377118489080739.Spec : Prop :=
  ∀ n, P14909377118489080739.a n = (A017504 n : ℚ)

end A017504

/-!
# A017505: a(n) = (11*n + 9)^9.

The programs for A017505, the canonical program `A017505.P10249622861256034686` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017505 has offset 0).

The definition of A017505 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+9)^9` (program `A017505.P10249622861256034686`, by `A017505.P10249622861256034686.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017505.P10249622861256034686

`(11*n+9)^9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017505

/-- `(11*n+9)^9` -/
def P10249622861256034686.Spec : Prop :=
  ∀ n, (P10249622861256034686.a n : ℤ) = A017505 n

theorem P10249622861256034686.correct : P10249622861256034686.Spec := by
  intro n
  simp only [A017505]

end A017505

/-! ## A017505.P3381090810616343736

`sqrt(A017502(n)^3)`
-/

namespace A017505.P3381090810616343736
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017502 n ^ 3 : ℝ)

end

end A017505.P3381090810616343736

namespace A017505

/-- `sqrt(A017502(n)^3)` -/
def P3381090810616343736.Spec : Prop :=
  ∀ n, P3381090810616343736.a n = (A017505 n : ℝ)

end A017505

/-! ## A017505.P10341518401070272960

`A017497(n)*A017504(n)`
-/

namespace A017505.P10341518401070272960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n * A017504 n

end

end A017505.P10341518401070272960

namespace A017505

/-- `A017497(n)*A017504(n)` -/
def P10341518401070272960.Spec : Prop :=
  ∀ n, P10341518401070272960.a n = A017505 n

theorem P10341518401070272960.correct : P10341518401070272960.Spec := by
  intro n
  simp only [A017505, Nat.add_sub_cancel, A017505.P10341518401070272960.a, A017505.P10249622861256034686.a, A017497, A017497.P15469120572134644275.a, A017504, A017504.P18128295178749533471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017505

/-! ## A017505.P15218742009469060948

`A017498(n)*A017503(n)`
-/

namespace A017505.P15218742009469060948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017498 n * A017503 n

end

end A017505.P15218742009469060948

namespace A017505

/-- `A017498(n)*A017503(n)` -/
def P15218742009469060948.Spec : Prop :=
  ∀ n, P15218742009469060948.a n = A017505 n

theorem P15218742009469060948.correct : P15218742009469060948.Spec := by
  intro n
  simp only [A017505, Nat.add_sub_cancel, A017505.P15218742009469060948.a, A017505.P10249622861256034686.a, A017498, A017498.P11433022045752089983.a, A017503, A017503.P4353550749841167247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017505

/-! ## A017505.P15194296520109887876

`A017499(n)*A017502(n)`
-/

namespace A017505.P15194296520109887876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017499 n * A017502 n

end

end A017505.P15194296520109887876

namespace A017505

/-- `A017499(n)*A017502(n)` -/
def P15194296520109887876.Spec : Prop :=
  ∀ n, P15194296520109887876.a n = A017505 n

theorem P15194296520109887876.correct : P15194296520109887876.Spec := by
  intro n
  simp only [A017505, Nat.add_sub_cancel, A017505.P15194296520109887876.a, A017505.P10249622861256034686.a, A017499, A017499.P1618840416987338505.a, A017502, A017502.P11280341892169286540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017505

/-! ## A017505.P16438078236475301068

`A017500(n)*A017501(n)`
-/

namespace A017505.P16438078236475301068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017500 n * A017501 n

end

end A017505.P16438078236475301068

namespace A017505

/-- `A017500(n)*A017501(n)` -/
def P16438078236475301068.Spec : Prop :=
  ∀ n, P16438078236475301068.a n = A017505 n

theorem P16438078236475301068.correct : P16438078236475301068.Spec := by
  intro n
  simp only [A017505, Nat.add_sub_cancel, A017505.P16438078236475301068.a, A017505.P10249622861256034686.a, A017500, A017500.P12977093269737068978.a, A017501, A017501.P15025448043727104509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017505

/-! ## A017505.P7620107439967624807

`A017506(n)/A017497(n)`
-/

namespace A017505.P7620107439967624807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017506 n : ℚ) / (A017497 n : ℚ)

end

end A017505.P7620107439967624807

namespace A017505

/-- `A017506(n)/A017497(n)` -/
def P7620107439967624807.Spec : Prop :=
  ∀ n, P7620107439967624807.a n = (A017505 n : ℚ)

end A017505

/-! ## A017505.P12246867923660124685

`A017507(n)/A017498(n)`
-/

namespace A017505.P12246867923660124685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017507 n : ℚ) / (A017498 n : ℚ)

end

end A017505.P12246867923660124685

namespace A017505

/-- `A017507(n)/A017498(n)` -/
def P12246867923660124685.Spec : Prop :=
  ∀ n, P12246867923660124685.a n = (A017505 n : ℚ)

end A017505

/-! ## A017505.P13236723672033671947

`A017508(n)/A017499(n)`
-/

namespace A017505.P13236723672033671947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017508 n : ℚ) / (A017499 n : ℚ)

end

end A017505.P13236723672033671947

namespace A017505

/-- `A017508(n)/A017499(n)` -/
def P13236723672033671947.Spec : Prop :=
  ∀ n, P13236723672033671947.a n = (A017505 n : ℚ)

end A017505

/-! ## A017505.P4465106047059810675

`A017500(n)²*A017497(n)`
-/

namespace A017505.P4465106047059810675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017500 n ^ 2 * A017497 n

end

end A017505.P4465106047059810675

namespace A017505

/-- `A017500(n)²*A017497(n)` -/
def P4465106047059810675.Spec : Prop :=
  ∀ n, P4465106047059810675.a n = A017505 n

theorem P4465106047059810675.correct : P4465106047059810675.Spec := by
  intro n
  simp only [A017505, Nat.add_sub_cancel, A017505.P4465106047059810675.a, A017505.P10249622861256034686.a, A017497, A017497.P15469120572134644275.a, A017500, A017500.P12977093269737068978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017505

/-! ## A017505.P15186595590708104477

`A017498(n)²*A017501(n)`
-/

namespace A017505.P15186595590708104477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017498 n ^ 2 * A017501 n

end

end A017505.P15186595590708104477

namespace A017505

/-- `A017498(n)²*A017501(n)` -/
def P15186595590708104477.Spec : Prop :=
  ∀ n, P15186595590708104477.a n = A017505 n

theorem P15186595590708104477.correct : P15186595590708104477.Spec := by
  intro n
  simp only [A017505, Nat.add_sub_cancel, A017505.P15186595590708104477.a, A017505.P10249622861256034686.a, A017498, A017498.P11433022045752089983.a, A017501, A017501.P15025448043727104509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017505

/-! ## A017505.P13121394681840863282

`A017497(n)²*A017503(n)`
-/

namespace A017505.P13121394681840863282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n ^ 2 * A017503 n

end

end A017505.P13121394681840863282

namespace A017505

/-- `A017497(n)²*A017503(n)` -/
def P13121394681840863282.Spec : Prop :=
  ∀ n, P13121394681840863282.a n = A017505 n

theorem P13121394681840863282.correct : P13121394681840863282.Spec := by
  intro n
  simp only [A017505, Nat.add_sub_cancel, A017505.P13121394681840863282.a, A017505.P10249622861256034686.a, A017497, A017497.P15469120572134644275.a, A017503, A017503.P4353550749841167247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017505

/-! ## A017505.P9882458453603946729

`A017501(n)²/A017497(n)`
-/

namespace A017505.P9882458453603946729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017501 n ^ 2 : ℚ) / (A017497 n : ℚ)

end

end A017505.P9882458453603946729

namespace A017505

/-- `A017501(n)²/A017497(n)` -/
def P9882458453603946729.Spec : Prop :=
  ∀ n, P9882458453603946729.a n = (A017505 n : ℚ)

end A017505

/-! ## A017505.P13290201507864988222

`A017503(n)²/A017501(n)`
-/

namespace A017505.P13290201507864988222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017503 n ^ 2 : ℚ) / (A017501 n : ℚ)

end

end A017505.P13290201507864988222

namespace A017505

/-- `A017503(n)²/A017501(n)` -/
def P13290201507864988222.Spec : Prop :=
  ∀ n, P13290201507864988222.a n = (A017505 n : ℚ)

end A017505

/-! ## A017505.P14711350170485572790

`A017507(n)/A017497(n)²`
-/

namespace A017505.P14711350170485572790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017507 n : ℚ) / (A017497 n ^ 2 : ℚ)

end

end A017505.P14711350170485572790

namespace A017505

/-- `A017507(n)/A017497(n)²` -/
def P14711350170485572790.Spec : Prop :=
  ∀ n, P14711350170485572790.a n = (A017505 n : ℚ)

end A017505

/-! ## A017505.P7403175148158158118

`A017500(n)²²/A017503(n)`
-/

namespace A017505.P7403175148158158118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017500 n ^ 2) ^ 2 : ℚ) / (A017503 n : ℚ)

end

end A017505.P7403175148158158118

namespace A017505

/-- `A017500(n)²²/A017503(n)` -/
def P7403175148158158118.Spec : Prop :=
  ∀ n, P7403175148158158118.a n = (A017505 n : ℚ)

end A017505

/-! ## A017505.P12234571999158055555

`A017497(n)*A017498(n)*A017502(n)`
-/

namespace A017505.P12234571999158055555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n * A017498 n * A017502 n

end

end A017505.P12234571999158055555

namespace A017505

/-- `A017497(n)*A017498(n)*A017502(n)` -/
def P12234571999158055555.Spec : Prop :=
  ∀ n, P12234571999158055555.a n = A017505 n

theorem P12234571999158055555.correct : P12234571999158055555.Spec := by
  intro n
  simp only [A017505, Nat.add_sub_cancel, A017505.P12234571999158055555.a, A017505.P10249622861256034686.a, A017497, A017497.P15469120572134644275.a, A017498, A017498.P11433022045752089983.a, A017502, A017502.P11280341892169286540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017505

/-! ## A017505.P8676746798872684924

`A017501(n)²²/A017507(n)`
-/

namespace A017505.P8676746798872684924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017501 n ^ 2) ^ 2 : ℚ) / (A017507 n : ℚ)

end

end A017505.P8676746798872684924

namespace A017505

/-- `A017501(n)²²/A017507(n)` -/
def P8676746798872684924.Spec : Prop :=
  ∀ n, P8676746798872684924.a n = (A017505 n : ℚ)

end A017505

/-! ## A017505.P15910365332179047850

`A001017(A017497(n))`
-/

namespace A017505.P15910365332179047850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017497 n).toNat

end

end A017505.P15910365332179047850

namespace A017505

/-- `A001017(A017497(n))` -/
def P15910365332179047850.Spec : Prop :=
  ∀ n, P15910365332179047850.a n = A017505 n

end A017505

/-!
# A017506: a(n) = (11*n + 9)^10.

The programs for A017506, the canonical program `A017506.P2119078812924604675` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017506 has offset 0).

The definition of A017506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017506.P2119078812924604675

`(11*n+9)^10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017506

/-- `(11*n+9)^10` -/
def P2119078812924604675.Spec : Prop :=
  ∀ n, (P2119078812924604675.a n : ℤ) = A017506 n

theorem P2119078812924604675.correct : P2119078812924604675.Spec := by
  intro n
  simp only [A017506]

end A017506

/-! ## A017506.P17531752706750113711

`A017501(n)²`
-/

namespace A017506.P17531752706750113711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017501 n ^ 2

end

end A017506.P17531752706750113711

namespace A017506

/-- `A017501(n)²` -/
def P17531752706750113711.Spec : Prop :=
  ∀ n, P17531752706750113711.a n = A017506 n

theorem P17531752706750113711.correct : P17531752706750113711.Spec := by
  intro n
  simp only [A017506, Nat.add_sub_cancel, A017506.P17531752706750113711.a, A017506.P2119078812924604675.a, A017501, A017501.P15025448043727104509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017506

/-! ## A017506.P15607671840214497996

`(A017497(n)^5)²`
-/

namespace A017506.P15607671840214497996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017497 n ^ 5) ^ 2

end

end A017506.P15607671840214497996

namespace A017506

/-- `(A017497(n)^5)²` -/
def P15607671840214497996.Spec : Prop :=
  ∀ n, P15607671840214497996.a n = A017506 n

theorem P15607671840214497996.correct : P15607671840214497996.Spec := by
  intro n
  simp only [A017506, Nat.add_sub_cancel, A017506.P15607671840214497996.a, A017506.P2119078812924604675.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017506

/-! ## A017506.P22218530150301703

`A017497(n)*A017505(n)`
-/

namespace A017506.P22218530150301703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n * A017505 n

end

end A017506.P22218530150301703

namespace A017506

/-- `A017497(n)*A017505(n)` -/
def P22218530150301703.Spec : Prop :=
  ∀ n, P22218530150301703.a n = A017506 n

theorem P22218530150301703.correct : P22218530150301703.Spec := by
  intro n
  simp only [A017506, Nat.add_sub_cancel, A017506.P22218530150301703.a, A017506.P2119078812924604675.a, A017497, A017497.P15469120572134644275.a, A017505, A017505.P10249622861256034686.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017506

/-! ## A017506.P16571687742005924753

`A017498(n)*A017504(n)`
-/

namespace A017506.P16571687742005924753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017498 n * A017504 n

end

end A017506.P16571687742005924753

namespace A017506

/-- `A017498(n)*A017504(n)` -/
def P16571687742005924753.Spec : Prop :=
  ∀ n, P16571687742005924753.a n = A017506 n

theorem P16571687742005924753.correct : P16571687742005924753.Spec := by
  intro n
  simp only [A017506, Nat.add_sub_cancel, A017506.P16571687742005924753.a, A017506.P2119078812924604675.a, A017498, A017498.P11433022045752089983.a, A017504, A017504.P18128295178749533471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017506

/-! ## A017506.P8314791024852428989

`A017499(n)*A017503(n)`
-/

namespace A017506.P8314791024852428989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017499 n * A017503 n

end

end A017506.P8314791024852428989

namespace A017506

/-- `A017499(n)*A017503(n)` -/
def P8314791024852428989.Spec : Prop :=
  ∀ n, P8314791024852428989.a n = A017506 n

theorem P8314791024852428989.correct : P8314791024852428989.Spec := by
  intro n
  simp only [A017506, Nat.add_sub_cancel, A017506.P8314791024852428989.a, A017506.P2119078812924604675.a, A017499, A017499.P1618840416987338505.a, A017503, A017503.P4353550749841167247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017506

/-! ## A017506.P13038910102964921444

`A017500(n)*A017502(n)`
-/

namespace A017506.P13038910102964921444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017500 n * A017502 n

end

end A017506.P13038910102964921444

namespace A017506

/-- `A017500(n)*A017502(n)` -/
def P13038910102964921444.Spec : Prop :=
  ∀ n, P13038910102964921444.a n = A017506 n

theorem P13038910102964921444.correct : P13038910102964921444.Spec := by
  intro n
  simp only [A017506, Nat.add_sub_cancel, A017506.P13038910102964921444.a, A017506.P2119078812924604675.a, A017500, A017500.P12977093269737068978.a, A017502, A017502.P11280341892169286540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017506

/-! ## A017506.P18082825124032862096

`A017507(n)/A017497(n)`
-/

namespace A017506.P18082825124032862096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017507 n : ℚ) / (A017497 n : ℚ)

end

end A017506.P18082825124032862096

namespace A017506

/-- `A017507(n)/A017497(n)` -/
def P18082825124032862096.Spec : Prop :=
  ∀ n, P18082825124032862096.a n = (A017506 n : ℚ)

end A017506

/-! ## A017506.P1404374327275588843

`A017508(n)/A017498(n)`
-/

namespace A017506.P1404374327275588843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017508 n : ℚ) / (A017498 n : ℚ)

end

end A017506.P1404374327275588843

namespace A017506

/-- `A017508(n)/A017498(n)` -/
def P1404374327275588843.Spec : Prop :=
  ∀ n, P1404374327275588843.a n = (A017506 n : ℚ)

end A017506

/-! ## A017506.P13941982753308127131

`(A017497(n)*A017500(n))²`
-/

namespace A017506.P13941982753308127131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017497 n * A017500 n) ^ 2

end

end A017506.P13941982753308127131

namespace A017506

/-- `(A017497(n)*A017500(n))²` -/
def P13941982753308127131.Spec : Prop :=
  ∀ n, P13941982753308127131.a n = A017506 n

theorem P13941982753308127131.correct : P13941982753308127131.Spec := by
  intro n
  simp only [A017506, Nat.add_sub_cancel, A017506.P13941982753308127131.a, A017506.P2119078812924604675.a, A017497, A017497.P15469120572134644275.a, A017500, A017500.P12977093269737068978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017506

/-! ## A017506.P695986072310163570

`(A017498(n)*A017499(n))²`
-/

namespace A017506.P695986072310163570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017498 n * A017499 n) ^ 2

end

end A017506.P695986072310163570

namespace A017506

/-- `(A017498(n)*A017499(n))²` -/
def P695986072310163570.Spec : Prop :=
  ∀ n, P695986072310163570.a n = A017506 n

theorem P695986072310163570.correct : P695986072310163570.Spec := by
  intro n
  simp only [A017506, Nat.add_sub_cancel, A017506.P695986072310163570.a, A017506.P2119078812924604675.a, A017498, A017498.P11433022045752089983.a, A017499, A017499.P1618840416987338505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017506

/-! ## A017506.P4534119391489507277

`A017500(n)²*A017498(n)`
-/

namespace A017506.P4534119391489507277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017500 n ^ 2 * A017498 n

end

end A017506.P4534119391489507277

namespace A017506

/-- `A017500(n)²*A017498(n)` -/
def P4534119391489507277.Spec : Prop :=
  ∀ n, P4534119391489507277.a n = A017506 n

theorem P4534119391489507277.correct : P4534119391489507277.Spec := by
  intro n
  simp only [A017506, Nat.add_sub_cancel, A017506.P4534119391489507277.a, A017506.P2119078812924604675.a, A017498, A017498.P11433022045752089983.a, A017500, A017500.P12977093269737068978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017506

/-! ## A017506.P14519992470815128473

`A017499(n)²*A017500(n)`
-/

namespace A017506.P14519992470815128473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017499 n ^ 2 * A017500 n

end

end A017506.P14519992470815128473

namespace A017506

/-- `A017499(n)²*A017500(n)` -/
def P14519992470815128473.Spec : Prop :=
  ∀ n, P14519992470815128473.a n = A017506 n

theorem P14519992470815128473.correct : P14519992470815128473.Spec := by
  intro n
  simp only [A017506, Nat.add_sub_cancel, A017506.P14519992470815128473.a, A017506.P2119078812924604675.a, A017499, A017499.P1618840416987338505.a, A017500, A017500.P12977093269737068978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017506

/-! ## A017506.P11524417450484834778

`A017498(n)²*A017502(n)`
-/

namespace A017506.P11524417450484834778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017498 n ^ 2 * A017502 n

end

end A017506.P11524417450484834778

namespace A017506

/-- `A017498(n)²*A017502(n)` -/
def P11524417450484834778.Spec : Prop :=
  ∀ n, P11524417450484834778.a n = A017506 n

theorem P11524417450484834778.correct : P11524417450484834778.Spec := by
  intro n
  simp only [A017506, Nat.add_sub_cancel, A017506.P11524417450484834778.a, A017506.P2119078812924604675.a, A017498, A017498.P11433022045752089983.a, A017502, A017502.P11280341892169286540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017506

/-! ## A017506.P7462516384126829425

`A017497(n)²*A017504(n)`
-/

namespace A017506.P7462516384126829425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n ^ 2 * A017504 n

end

end A017506.P7462516384126829425

namespace A017506

/-- `A017497(n)²*A017504(n)` -/
def P7462516384126829425.Spec : Prop :=
  ∀ n, P7462516384126829425.a n = A017506 n

theorem P7462516384126829425.correct : P7462516384126829425.Spec := by
  intro n
  simp only [A017506, Nat.add_sub_cancel, A017506.P7462516384126829425.a, A017506.P2119078812924604675.a, A017497, A017497.P15469120572134644275.a, A017504, A017504.P18128295178749533471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017506

/-! ## A017506.P3327415465954110309

`(A017502(n)/A017497(n))²`
-/

namespace A017506.P3327415465954110309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017502 n : ℚ) / (A017497 n : ℚ)) ^ 2

end

end A017506.P3327415465954110309

namespace A017506

/-- `(A017502(n)/A017497(n))²` -/
def P3327415465954110309.Spec : Prop :=
  ∀ n, P3327415465954110309.a n = (A017506 n : ℚ)

end A017506

/-! ## A017506.P17360210707378274377

`(A017503(n)/A017498(n))²`
-/

namespace A017506.P17360210707378274377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017503 n : ℚ) / (A017498 n : ℚ)) ^ 2

end

end A017506.P17360210707378274377

namespace A017506

/-- `(A017503(n)/A017498(n))²` -/
def P17360210707378274377.Spec : Prop :=
  ∀ n, P17360210707378274377.a n = (A017506 n : ℚ)

end A017506

/-! ## A017506.P12486927644785188240

`A017503(n)²/A017500(n)`
-/

namespace A017506.P12486927644785188240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017503 n ^ 2 : ℚ) / (A017500 n : ℚ)

end

end A017506.P12486927644785188240

namespace A017506

/-- `A017503(n)²/A017500(n)` -/
def P12486927644785188240.Spec : Prop :=
  ∀ n, P12486927644785188240.a n = (A017506 n : ℚ)

end A017506

/-!
# A017507: a(n) = (11*n + 9)^11.

The programs for A017507, the canonical program `A017507.P15911326435497819495` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017507 has offset 0).

The definition of A017507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017507.P15911326435497819495

`(11*n+9)^11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017507

/-- `(11*n+9)^11` -/
def P15911326435497819495.Spec : Prop :=
  ∀ n, (P15911326435497819495.a n : ℤ) = A017507 n

theorem P15911326435497819495.correct : P15911326435497819495.Spec := by
  intro n
  simp only [A017507]

end A017507

/-! ## A017507.P8341469056011420792

`A017497(n)*A017506(n)`
-/

namespace A017507.P8341469056011420792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n * A017506 n

end

end A017507.P8341469056011420792

namespace A017507

/-- `A017497(n)*A017506(n)` -/
def P8341469056011420792.Spec : Prop :=
  ∀ n, P8341469056011420792.a n = A017507 n

theorem P8341469056011420792.correct : P8341469056011420792.Spec := by
  intro n
  simp only [A017507, Nat.add_sub_cancel, A017507.P8341469056011420792.a, A017507.P15911326435497819495.a, A017497, A017497.P15469120572134644275.a, A017506, A017506.P2119078812924604675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017507

/-! ## A017507.P5710488598409309396

`A017498(n)*A017505(n)`
-/

namespace A017507.P5710488598409309396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017498 n * A017505 n

end

end A017507.P5710488598409309396

namespace A017507

/-- `A017498(n)*A017505(n)` -/
def P5710488598409309396.Spec : Prop :=
  ∀ n, P5710488598409309396.a n = A017507 n

theorem P5710488598409309396.correct : P5710488598409309396.Spec := by
  intro n
  simp only [A017507, Nat.add_sub_cancel, A017507.P5710488598409309396.a, A017507.P15911326435497819495.a, A017498, A017498.P11433022045752089983.a, A017505, A017505.P10249622861256034686.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017507

/-! ## A017507.P948273585300966804

`A017499(n)*A017504(n)`
-/

namespace A017507.P948273585300966804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017499 n * A017504 n

end

end A017507.P948273585300966804

namespace A017507

/-- `A017499(n)*A017504(n)` -/
def P948273585300966804.Spec : Prop :=
  ∀ n, P948273585300966804.a n = A017507 n

theorem P948273585300966804.correct : P948273585300966804.Spec := by
  intro n
  simp only [A017507, Nat.add_sub_cancel, A017507.P948273585300966804.a, A017507.P15911326435497819495.a, A017499, A017499.P1618840416987338505.a, A017504, A017504.P18128295178749533471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017507

/-! ## A017507.P14372582494865537207

`A017500(n)*A017503(n)`
-/

namespace A017507.P14372582494865537207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017500 n * A017503 n

end

end A017507.P14372582494865537207

namespace A017507

/-- `A017500(n)*A017503(n)` -/
def P14372582494865537207.Spec : Prop :=
  ∀ n, P14372582494865537207.a n = A017507 n

theorem P14372582494865537207.correct : P14372582494865537207.Spec := by
  intro n
  simp only [A017507, Nat.add_sub_cancel, A017507.P14372582494865537207.a, A017507.P15911326435497819495.a, A017500, A017500.P12977093269737068978.a, A017503, A017503.P4353550749841167247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017507

/-! ## A017507.P350682315442031354

`A017501(n)*A017502(n)`
-/

namespace A017507.P350682315442031354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017501 n * A017502 n

end

end A017507.P350682315442031354

namespace A017507

/-- `A017501(n)*A017502(n)` -/
def P350682315442031354.Spec : Prop :=
  ∀ n, P350682315442031354.a n = A017507 n

theorem P350682315442031354.correct : P350682315442031354.Spec := by
  intro n
  simp only [A017507, Nat.add_sub_cancel, A017507.P350682315442031354.a, A017507.P15911326435497819495.a, A017501, A017501.P15025448043727104509.a, A017502, A017502.P11280341892169286540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017507

/-! ## A017507.P3155217334669133586

`A017508(n)/A017497(n)`
-/

namespace A017507.P3155217334669133586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017508 n : ℚ) / (A017497 n : ℚ)

end

end A017507.P3155217334669133586

namespace A017507

/-- `A017508(n)/A017497(n)` -/
def P3155217334669133586.Spec : Prop :=
  ∀ n, P3155217334669133586.a n = (A017507 n : ℚ)

end A017507

/-! ## A017507.P6653427464569697361

`A017501(n)²*A017497(n)`
-/

namespace A017507.P6653427464569697361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017501 n ^ 2 * A017497 n

end

end A017507.P6653427464569697361

namespace A017507

/-- `A017501(n)²*A017497(n)` -/
def P6653427464569697361.Spec : Prop :=
  ∀ n, P6653427464569697361.a n = A017507 n

theorem P6653427464569697361.correct : P6653427464569697361.Spec := by
  intro n
  simp only [A017507, Nat.add_sub_cancel, A017507.P6653427464569697361.a, A017507.P15911326435497819495.a, A017497, A017497.P15469120572134644275.a, A017501, A017501.P15025448043727104509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017507

/-! ## A017507.P13642920596723028613

`A017500(n)²*A017499(n)`
-/

namespace A017507.P13642920596723028613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017500 n ^ 2 * A017499 n

end

end A017507.P13642920596723028613

namespace A017507

/-- `A017500(n)²*A017499(n)` -/
def P13642920596723028613.Spec : Prop :=
  ∀ n, P13642920596723028613.a n = A017507 n

theorem P13642920596723028613.correct : P13642920596723028613.Spec := by
  intro n
  simp only [A017507, Nat.add_sub_cancel, A017507.P13642920596723028613.a, A017507.P15911326435497819495.a, A017499, A017499.P1618840416987338505.a, A017500, A017500.P12977093269737068978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017507

/-! ## A017507.P6635209235825804016

`A017499(n)²*A017501(n)`
-/

namespace A017507.P6635209235825804016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017499 n ^ 2 * A017501 n

end

end A017507.P6635209235825804016

namespace A017507

/-- `A017499(n)²*A017501(n)` -/
def P6635209235825804016.Spec : Prop :=
  ∀ n, P6635209235825804016.a n = A017507 n

theorem P6635209235825804016.correct : P6635209235825804016.Spec := by
  intro n
  simp only [A017507, Nat.add_sub_cancel, A017507.P6635209235825804016.a, A017507.P15911326435497819495.a, A017499, A017499.P1618840416987338505.a, A017501, A017501.P15025448043727104509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017507

/-! ## A017507.P5559877809149348757

`A017498(n)²*A017503(n)`
-/

namespace A017507.P5559877809149348757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017498 n ^ 2 * A017503 n

end

end A017507.P5559877809149348757

namespace A017507

/-- `A017498(n)²*A017503(n)` -/
def P5559877809149348757.Spec : Prop :=
  ∀ n, P5559877809149348757.a n = A017507 n

theorem P5559877809149348757.correct : P5559877809149348757.Spec := by
  intro n
  simp only [A017507, Nat.add_sub_cancel, A017507.P5559877809149348757.a, A017507.P15911326435497819495.a, A017498, A017498.P11433022045752089983.a, A017503, A017503.P4353550749841167247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017507

/-! ## A017507.P12285136082035739581

`A017497(n)²*A017505(n)`
-/

namespace A017507.P12285136082035739581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n ^ 2 * A017505 n

end

end A017507.P12285136082035739581

namespace A017507

/-- `A017497(n)²*A017505(n)` -/
def P12285136082035739581.Spec : Prop :=
  ∀ n, P12285136082035739581.a n = A017507 n

theorem P12285136082035739581.correct : P12285136082035739581.Spec := by
  intro n
  simp only [A017507, Nat.add_sub_cancel, A017507.P12285136082035739581.a, A017507.P15911326435497819495.a, A017497, A017497.P15469120572134644275.a, A017505, A017505.P10249622861256034686.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017507

/-! ## A017507.P13349284178319663726

`A017502(n)²/A017497(n)`
-/

namespace A017507.P13349284178319663726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017502 n ^ 2 : ℚ) / (A017497 n : ℚ)

end

end A017507.P13349284178319663726

namespace A017507

/-- `A017502(n)²/A017497(n)` -/
def P13349284178319663726.Spec : Prop :=
  ∀ n, P13349284178319663726.a n = (A017507 n : ℚ)

end A017507

/-! ## A017507.P17971847801557850610

`A017503(n)²/A017499(n)`
-/

namespace A017507.P17971847801557850610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017503 n ^ 2 : ℚ) / (A017499 n : ℚ)

end

end A017507.P17971847801557850610

namespace A017507

/-- `A017503(n)²/A017499(n)` -/
def P17971847801557850610.Spec : Prop :=
  ∀ n, P17971847801557850610.a n = (A017507 n : ℚ)

end A017507

/-! ## A017507.P3684124081191637259

`A017504(n)²/A017501(n)`
-/

namespace A017507.P3684124081191637259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017504 n ^ 2 : ℚ) / (A017501 n : ℚ)

end

end A017507.P3684124081191637259

namespace A017507

/-- `A017504(n)²/A017501(n)` -/
def P3684124081191637259.Spec : Prop :=
  ∀ n, P3684124081191637259.a n = (A017507 n : ℚ)

end A017507

/-! ## A017507.P7639905354558564147

`A017498(n)²²*A017499(n)`
-/

namespace A017507.P7639905354558564147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017498 n ^ 2) ^ 2 * A017499 n

end

end A017507.P7639905354558564147

namespace A017507

/-- `A017498(n)²²*A017499(n)` -/
def P7639905354558564147.Spec : Prop :=
  ∀ n, P7639905354558564147.a n = A017507 n

theorem P7639905354558564147.correct : P7639905354558564147.Spec := by
  intro n
  simp only [A017507, Nat.add_sub_cancel, A017507.P7639905354558564147.a, A017507.P15911326435497819495.a, A017498, A017498.P11433022045752089983.a, A017499, A017499.P1618840416987338505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017507

/-! ## A017507.P11332707873769306889

`A017497(n)²²*A017503(n)`
-/

namespace A017507.P11332707873769306889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017497 n ^ 2) ^ 2 * A017503 n

end

end A017507.P11332707873769306889

namespace A017507

/-- `A017497(n)²²*A017503(n)` -/
def P11332707873769306889.Spec : Prop :=
  ∀ n, P11332707873769306889.a n = A017507 n

theorem P11332707873769306889.correct : P11332707873769306889.Spec := by
  intro n
  simp only [A017507, Nat.add_sub_cancel, A017507.P11332707873769306889.a, A017507.P15911326435497819495.a, A017497, A017497.P15469120572134644275.a, A017503, A017503.P4353550749841167247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017507

/-! ## A017507.P12481566496734588379

`A017499(n)²²/A017497(n)`
-/

namespace A017507.P12481566496734588379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017499 n ^ 2) ^ 2 : ℚ) / (A017497 n : ℚ)

end

end A017507.P12481566496734588379

namespace A017507

/-- `A017499(n)²²/A017497(n)` -/
def P12481566496734588379.Spec : Prop :=
  ∀ n, P12481566496734588379.a n = (A017507 n : ℚ)

end A017507

/-! ## A017507.P9686439742712024594

`A017500(n)²²/A017501(n)`
-/

namespace A017507.P9686439742712024594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017500 n ^ 2) ^ 2 : ℚ) / (A017501 n : ℚ)

end

end A017507.P9686439742712024594

namespace A017507

/-- `A017500(n)²²/A017501(n)` -/
def P9686439742712024594.Spec : Prop :=
  ∀ n, P9686439742712024594.a n = (A017507 n : ℚ)

end A017507

/-! ## A017507.P12445822868907437651

`A017501(n)²²/A017505(n)`
-/

namespace A017507.P12445822868907437651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017501 n ^ 2) ^ 2 : ℚ) / (A017505 n : ℚ)

end

end A017507.P12445822868907437651

namespace A017507

/-- `A017501(n)²²/A017505(n)` -/
def P12445822868907437651.Spec : Prop :=
  ∀ n, P12445822868907437651.a n = (A017507 n : ℚ)

end A017507

/-!
# A017508: a(n) = (11*n + 9)^12.

The programs for A017508, the canonical program `A017508.P6004458151499002601` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017508 has offset 0).

The definition of A017508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017508.P6004458151499002601

`(11*n+9)^12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017508

/-- `(11*n+9)^12` -/
def P6004458151499002601.Spec : Prop :=
  ∀ n, (P6004458151499002601.a n : ℤ) = A017508 n

theorem P6004458151499002601.correct : P6004458151499002601.Spec := by
  intro n
  simp only [A017508]

end A017508

/-! ## A017508.P9753594761712239561

`A017502(n)²`
-/

namespace A017508.P9753594761712239561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017502 n ^ 2

end

end A017508.P9753594761712239561

namespace A017508

/-- `A017502(n)²` -/
def P9753594761712239561.Spec : Prop :=
  ∀ n, P9753594761712239561.a n = A017508 n

theorem P9753594761712239561.correct : P9753594761712239561.Spec := by
  intro n
  simp only [A017508, Nat.add_sub_cancel, A017508.P9753594761712239561.a, A017508.P6004458151499002601.a, A017502, A017502.P11280341892169286540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017508

/-! ## A017508.P7354230664804853610

`A017497(n)*A017507(n)`
-/

namespace A017508.P7354230664804853610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n * A017507 n

end

end A017508.P7354230664804853610

namespace A017508

/-- `A017497(n)*A017507(n)` -/
def P7354230664804853610.Spec : Prop :=
  ∀ n, P7354230664804853610.a n = A017508 n

theorem P7354230664804853610.correct : P7354230664804853610.Spec := by
  intro n
  simp only [A017508, Nat.add_sub_cancel, A017508.P7354230664804853610.a, A017508.P6004458151499002601.a, A017497, A017497.P15469120572134644275.a, A017507, A017507.P15911326435497819495.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017508

/-! ## A017508.P8036779606467561087

`A017498(n)*A017506(n)`
-/

namespace A017508.P8036779606467561087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017498 n * A017506 n

end

end A017508.P8036779606467561087

namespace A017508

/-- `A017498(n)*A017506(n)` -/
def P8036779606467561087.Spec : Prop :=
  ∀ n, P8036779606467561087.a n = A017508 n

theorem P8036779606467561087.correct : P8036779606467561087.Spec := by
  intro n
  simp only [A017508, Nat.add_sub_cancel, A017508.P8036779606467561087.a, A017508.P6004458151499002601.a, A017498, A017498.P11433022045752089983.a, A017506, A017506.P2119078812924604675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017508

/-! ## A017508.P13552100264697970124

`A017499(n)*A017505(n)`
-/

namespace A017508.P13552100264697970124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017499 n * A017505 n

end

end A017508.P13552100264697970124

namespace A017508

/-- `A017499(n)*A017505(n)` -/
def P13552100264697970124.Spec : Prop :=
  ∀ n, P13552100264697970124.a n = A017508 n

theorem P13552100264697970124.correct : P13552100264697970124.Spec := by
  intro n
  simp only [A017508, Nat.add_sub_cancel, A017508.P13552100264697970124.a, A017508.P6004458151499002601.a, A017499, A017499.P1618840416987338505.a, A017505, A017505.P10249622861256034686.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017508

/-! ## A017508.P931995181016323822

`A017500(n)*A017504(n)`
-/

namespace A017508.P931995181016323822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017500 n * A017504 n

end

end A017508.P931995181016323822

namespace A017508

/-- `A017500(n)*A017504(n)` -/
def P931995181016323822.Spec : Prop :=
  ∀ n, P931995181016323822.a n = A017508 n

theorem P931995181016323822.correct : P931995181016323822.Spec := by
  intro n
  simp only [A017508, Nat.add_sub_cancel, A017508.P931995181016323822.a, A017508.P6004458151499002601.a, A017500, A017500.P12977093269737068978.a, A017504, A017504.P18128295178749533471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017508

/-! ## A017508.P5477381111995535869

`A017501(n)*A017503(n)`
-/

namespace A017508.P5477381111995535869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017501 n * A017503 n

end

end A017508.P5477381111995535869

namespace A017508

/-- `A017501(n)*A017503(n)` -/
def P5477381111995535869.Spec : Prop :=
  ∀ n, P5477381111995535869.a n = A017508 n

theorem P5477381111995535869.correct : P5477381111995535869.Spec := by
  intro n
  simp only [A017508, Nat.add_sub_cancel, A017508.P5477381111995535869.a, A017508.P6004458151499002601.a, A017501, A017501.P15025448043727104509.a, A017503, A017503.P4353550749841167247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017508

/-! ## A017508.P15574796254739905417

`(A017497(n)*A017501(n))²`
-/

namespace A017508.P15574796254739905417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017497 n * A017501 n) ^ 2

end

end A017508.P15574796254739905417

namespace A017508

/-- `(A017497(n)*A017501(n))²` -/
def P15574796254739905417.Spec : Prop :=
  ∀ n, P15574796254739905417.a n = A017508 n

theorem P15574796254739905417.correct : P15574796254739905417.Spec := by
  intro n
  simp only [A017508, Nat.add_sub_cancel, A017508.P15574796254739905417.a, A017508.P6004458151499002601.a, A017497, A017497.P15469120572134644275.a, A017501, A017501.P15025448043727104509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017508

/-! ## A017508.P147785159279593382

`(A017498(n)*A017500(n))²`
-/

namespace A017508.P147785159279593382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017498 n * A017500 n) ^ 2

end

end A017508.P147785159279593382

namespace A017508

/-- `(A017498(n)*A017500(n))²` -/
def P147785159279593382.Spec : Prop :=
  ∀ n, P147785159279593382.a n = A017508 n

theorem P147785159279593382.correct : P147785159279593382.Spec := by
  intro n
  simp only [A017508, Nat.add_sub_cancel, A017508.P147785159279593382.a, A017508.P6004458151499002601.a, A017498, A017498.P11433022045752089983.a, A017500, A017500.P12977093269737068978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017508

/-! ## A017508.P15556834852908649403

`A017501(n)²*A017498(n)`
-/

namespace A017508.P15556834852908649403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017501 n ^ 2 * A017498 n

end

end A017508.P15556834852908649403

namespace A017508

/-- `A017501(n)²*A017498(n)` -/
def P15556834852908649403.Spec : Prop :=
  ∀ n, P15556834852908649403.a n = A017508 n

theorem P15556834852908649403.correct : P15556834852908649403.Spec := by
  intro n
  simp only [A017508, Nat.add_sub_cancel, A017508.P15556834852908649403.a, A017508.P6004458151499002601.a, A017498, A017498.P11433022045752089983.a, A017501, A017501.P15025448043727104509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017508

/-! ## A017508.P5126500046622808500

`A017498(n)²*A017504(n)`
-/

namespace A017508.P5126500046622808500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017498 n ^ 2 * A017504 n

end

end A017508.P5126500046622808500

namespace A017508

/-- `A017498(n)²*A017504(n)` -/
def P5126500046622808500.Spec : Prop :=
  ∀ n, P5126500046622808500.a n = A017508 n

theorem P5126500046622808500.correct : P5126500046622808500.Spec := by
  intro n
  simp only [A017508, Nat.add_sub_cancel, A017508.P5126500046622808500.a, A017508.P6004458151499002601.a, A017498, A017498.P11433022045752089983.a, A017504, A017504.P18128295178749533471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017508

/-! ## A017508.P171374757844345081

`A017497(n)²*A017506(n)`
-/

namespace A017508.P171374757844345081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n ^ 2 * A017506 n

end

end A017508.P171374757844345081

namespace A017508

/-- `A017497(n)²*A017506(n)` -/
def P171374757844345081.Spec : Prop :=
  ∀ n, P171374757844345081.a n = A017508 n

theorem P171374757844345081.correct : P171374757844345081.Spec := by
  intro n
  simp only [A017508, Nat.add_sub_cancel, A017508.P171374757844345081.a, A017508.P6004458151499002601.a, A017497, A017497.P15469120572134644275.a, A017506, A017506.P2119078812924604675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017508

/-! ## A017508.P2123630448817098861

`(A017503(n)/A017497(n))²`
-/

namespace A017508.P2123630448817098861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017503 n : ℚ) / (A017497 n : ℚ)) ^ 2

end

end A017508.P2123630448817098861

namespace A017508

/-- `(A017503(n)/A017497(n))²` -/
def P2123630448817098861.Spec : Prop :=
  ∀ n, P2123630448817098861.a n = (A017508 n : ℚ)

end A017508

/-! ## A017508.P12461976854122050871

`A017503(n)²/A017498(n)`
-/

namespace A017508.P12461976854122050871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017503 n ^ 2 : ℚ) / (A017498 n : ℚ)

end

end A017508.P12461976854122050871

namespace A017508

/-- `A017503(n)²/A017498(n)` -/
def P12461976854122050871.Spec : Prop :=
  ∀ n, P12461976854122050871.a n = (A017508 n : ℚ)

end A017508

/-! ## A017508.P6309176334592897161

`(A017506(n)/A017500(n))²`
-/

namespace A017508.P6309176334592897161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017506 n : ℚ) / (A017500 n : ℚ)) ^ 2

end

end A017508.P6309176334592897161

namespace A017508

/-- `(A017506(n)/A017500(n))²` -/
def P6309176334592897161.Spec : Prop :=
  ∀ n, P6309176334592897161.a n = (A017508 n : ℚ)

end A017508

/-! ## A017508.P4085375682909820885

`(A017507(n)/A017501(n))²`
-/

namespace A017508.P4085375682909820885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017507 n : ℚ) / (A017501 n : ℚ)) ^ 2

end

end A017508.P4085375682909820885

namespace A017508

/-- `(A017507(n)/A017501(n))²` -/
def P4085375682909820885.Spec : Prop :=
  ∀ n, P4085375682909820885.a n = (A017508 n : ℚ)

end A017508

/-!
# A017509: a(n) = 11*n + 10.

The programs for A017509, the canonical program `A017509.P7373483985674399481` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017509 has offset 0).

The definition of A017509 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*n+10` (program `A017509.P7373483985674399481`, by `A017509.P7373483985674399481.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017509.P7373483985674399481

`11*n+10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017509

/-- `11*n+10` -/
def P7373483985674399481.Spec : Prop :=
  ∀ n, (P7373483985674399481.a n : ℤ) = A017509 n

theorem P7373483985674399481.correct : P7373483985674399481.Spec := by
  intro n
  simp only [A017509]

end A017509

/-!
# A017510: a(n) = (11*n + 10)^2.

The programs for A017510, the canonical program `A017510.P5520538972762125414` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017510 has offset 0).

The definition of A017510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+10)²` (program `A017510.P5520538972762125414`, by `A017510.P5520538972762125414.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017510.P5520538972762125414

`(11*n+10)²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017510

/-- `(11*n+10)²` -/
def P5520538972762125414.Spec : Prop :=
  ∀ n, (P5520538972762125414.a n : ℤ) = A017510 n

theorem P5520538972762125414.correct : P5520538972762125414.Spec := by
  intro n
  simp only [A017510]

end A017510

/-! ## A017510.P4291602082134980120

`ogf((100+141x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A017510.P4291602082134980120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [100, 141, 1] [1, -3, 3, -1] n

end

end A017510.P4291602082134980120

namespace A017510

/-- `ogf((100+141x+x^2)/(1-3x+3x^2-x^3))` -/
def P4291602082134980120.Spec : Prop :=
  ∀ n, P4291602082134980120.a n = A017510 n

end A017510

/-! ## A017510.P3370520642952217131

`sqrt(A017512(n))`
-/

namespace A017510.P3370520642952217131
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017512 n : ℝ)

end

end A017510.P3370520642952217131

namespace A017510

/-- `sqrt(A017512(n))` -/
def P3370520642952217131.Spec : Prop :=
  ∀ n, P3370520642952217131.a n = (A017510 n : ℝ)

end A017510

/-! ## A017510.P5361384836813824546

`A017509(n)^2`
-/

namespace A017510.P5361384836813824546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n ^ 2

end

end A017510.P5361384836813824546

namespace A017510

/-- `A017509(n)^2` -/
def P5361384836813824546.Spec : Prop :=
  ∀ n, P5361384836813824546.a n = A017510 n

theorem P5361384836813824546.correct : P5361384836813824546.Spec := by
  intro n
  simp only [A017510, Nat.add_sub_cancel, A017510.P5361384836813824546.a, A017510.P5520538972762125414.a, A017509, A017509.P7373483985674399481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017510

/-! ## A017510.P7598279399277683445

`sqrt(sqrt(A017516(n)))`
-/

namespace A017510.P7598279399277683445
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017516 n : ℝ))

end

end A017510.P7598279399277683445

namespace A017510

/-- `sqrt(sqrt(A017516(n)))` -/
def P7598279399277683445.Spec : Prop :=
  ∀ n, P7598279399277683445.a n = (A017510 n : ℝ)

end A017510

/-! ## A017510.P17057815505801177700

`A017514(n)^(1/3)`
-/

namespace A017510.P17057815505801177700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017514 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017510.P17057815505801177700

namespace A017510

/-- `A017514(n)^(1/3)` -/
def P17057815505801177700.Spec : Prop :=
  ∀ n, P17057815505801177700.a n = (A017510 n : ℝ)

end A017510

/-! ## A017510.P14004463635419960426

`A017511(n)^(2/3)`
-/

namespace A017510.P14004463635419960426
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017511 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017510.P14004463635419960426

namespace A017510

/-- `A017511(n)^(2/3)` -/
def P14004463635419960426.Spec : Prop :=
  ∀ n, P14004463635419960426.a n = (A017510 n : ℝ)

end A017510

/-! ## A017510.P17771410787099032549

`A248339(n)+A017498(n)`
-/

namespace A017510.P17771410787099032549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + A017498 n

end

end A017510.P17771410787099032549

namespace A017510

/-- `A248339(n)+A017498(n)` -/
def P17771410787099032549.Spec : Prop :=
  ∀ n, P17771410787099032549.a n = A017510 n

theorem P17771410787099032549.correct : P17771410787099032549.Spec := by
  intro n
  simp only [A017510, Nat.add_sub_cancel, A017510.P17771410787099032549.a, A017510.P5520538972762125414.a, A017498, A017498.P11433022045752089983.a, A248339, A248339.P12910854868344435228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017510

/-! ## A017510.P17160849590278192916

`A017511(n)/A017509(n)`
-/

namespace A017510.P17160849590278192916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017511 n : ℚ) / (A017509 n : ℚ)

end

end A017510.P17160849590278192916

namespace A017510

/-- `A017511(n)/A017509(n)` -/
def P17160849590278192916.Spec : Prop :=
  ∀ n, P17160849590278192916.a n = (A017510 n : ℚ)

end A017510

/-! ## A017510.P17875900945687952784

`A017513(n)/A017511(n)`
-/

namespace A017510.P17875900945687952784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017513 n : ℚ) / (A017511 n : ℚ)

end

end A017510.P17875900945687952784

namespace A017510

/-- `A017513(n)/A017511(n)` -/
def P17875900945687952784.Spec : Prop :=
  ∀ n, P17875900945687952784.a n = (A017510 n : ℚ)

end A017510

/-! ## A017510.P3866689749111610113

`A017514(n)/A017512(n)`
-/

namespace A017510.P3866689749111610113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017514 n : ℚ) / (A017512 n : ℚ)

end

end A017510.P3866689749111610113

namespace A017510

/-- `A017514(n)/A017512(n)` -/
def P3866689749111610113.Spec : Prop :=
  ∀ n, P3866689749111610113.a n = (A017510 n : ℚ)

end A017510

/-! ## A017510.P748377328701876980

`A017515(n)/A017513(n)`
-/

namespace A017510.P748377328701876980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017515 n : ℚ) / (A017513 n : ℚ)

end

end A017510.P748377328701876980

namespace A017510

/-- `A017515(n)/A017513(n)` -/
def P748377328701876980.Spec : Prop :=
  ∀ n, P748377328701876980.a n = (A017510 n : ℚ)

end A017510

/-! ## A017510.P1354640473074660001

`A017516(n)/A017514(n)`
-/

namespace A017510.P1354640473074660001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017516 n : ℚ) / (A017514 n : ℚ)

end

end A017510.P1354640473074660001

namespace A017510

/-- `A017516(n)/A017514(n)` -/
def P1354640473074660001.Spec : Prop :=
  ∀ n, P1354640473074660001.a n = (A017510 n : ℚ)

end A017510

/-! ## A017510.P5440921900473848056

`A017517(n)/A017515(n)`
-/

namespace A017510.P5440921900473848056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017517 n : ℚ) / (A017515 n : ℚ)

end

end A017510.P5440921900473848056

namespace A017510

/-- `A017517(n)/A017515(n)` -/
def P5440921900473848056.Spec : Prop :=
  ∀ n, P5440921900473848056.a n = (A017510 n : ℚ)

end A017510

/-! ## A017510.P11922743800484451802

`A017518(n)/A017516(n)`
-/

namespace A017510.P11922743800484451802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017518 n : ℚ) / (A017516 n : ℚ)

end

end A017510.P11922743800484451802

namespace A017510

/-- `A017518(n)/A017516(n)` -/
def P11922743800484451802.Spec : Prop :=
  ∀ n, P11922743800484451802.a n = (A017510 n : ℚ)

end A017510

/-! ## A017510.P11591843327628613343

`A017519(n)/A017517(n)`
-/

namespace A017510.P11591843327628613343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017519 n : ℚ) / (A017517 n : ℚ)

end

end A017510.P11591843327628613343

namespace A017510

/-- `A017519(n)/A017517(n)` -/
def P11591843327628613343.Spec : Prop :=
  ∀ n, P11591843327628613343.a n = (A017510 n : ℚ)

end A017510

/-! ## A017510.P7276300231979952514

`A017511(n)²/A017512(n)`
-/

namespace A017510.P7276300231979952514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017511 n ^ 2 : ℚ) / (A017512 n : ℚ)

end

end A017510.P7276300231979952514

namespace A017510

/-- `A017511(n)²/A017512(n)` -/
def P7276300231979952514.Spec : Prop :=
  ∀ n, P7276300231979952514.a n = (A017510 n : ℚ)

end A017510

/-! ## A017510.P2685986590969074967

`A017516(n)/A017511(n)²`
-/

namespace A017510.P2685986590969074967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017516 n : ℚ) / (A017511 n ^ 2 : ℚ)

end

end A017510.P2685986590969074967

namespace A017510

/-- `A017516(n)/A017511(n)²` -/
def P2685986590969074967.Spec : Prop :=
  ∀ n, P2685986590969074967.a n = (A017510 n : ℚ)

end A017510

/-! ## A017510.P6021413020686635398

`(A017497(n)+1)*A017509(n)`
-/

namespace A017510.P6021413020686635398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017497 n + 1) * A017509 n

end

end A017510.P6021413020686635398

namespace A017510

/-- `(A017497(n)+1)*A017509(n)` -/
def P6021413020686635398.Spec : Prop :=
  ∀ n, P6021413020686635398.a n = A017510 n

theorem P6021413020686635398.correct : P6021413020686635398.Spec := by
  intro n
  simp only [A017510, Nat.add_sub_cancel, A017510.P6021413020686635398.a, A017510.P5520538972762125414.a, A017497, A017497.P15469120572134644275.a, A017509, A017509.P7373483985674399481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017510

/-! ## A017510.P12760474294816184451

`A017514(n)/A017509(n)²²`
-/

namespace A017510.P12760474294816184451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017514 n : ℚ) / ((A017509 n ^ 2) ^ 2 : ℚ)

end

end A017510.P12760474294816184451

namespace A017510

/-- `A017514(n)/A017509(n)²²` -/
def P12760474294816184451.Spec : Prop :=
  ∀ n, P12760474294816184451.a n = (A017510 n : ℚ)

end A017510

/-!
# A017511: a(n) = (11*n + 10)^3.

The programs for A017511, the canonical program `A017511.P12732960829151293587` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017511 has offset 0).

The definition of A017511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+10)^3` (program `A017511.P12732960829151293587`, by `A017511.P12732960829151293587.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017511.P12732960829151293587

`(11*n+10)^3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017511

/-- `(11*n+10)^3` -/
def P12732960829151293587.Spec : Prop :=
  ∀ n, (P12732960829151293587.a n : ℤ) = A017511 n

theorem P12732960829151293587.correct : P12732960829151293587.Spec := by
  intro n
  simp only [A017511]

end A017511

/-! ## A017511.P16425844969375902328

`A000578(A017509(n))`
-/

namespace A017511.P16425844969375902328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A017509 n).toNat

end

end A017511.P16425844969375902328

namespace A017511

/-- `A000578(A017509(n))` -/
def P16425844969375902328.Spec : Prop :=
  ∀ n, P16425844969375902328.a n = A017511 n

end A017511

/-! ## A017511.P9482458720998406242

`sqrt(A017514(n))`
-/

namespace A017511.P9482458720998406242
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017514 n : ℝ)

end

end A017511.P9482458720998406242

namespace A017511

/-- `sqrt(A017514(n))` -/
def P9482458720998406242.Spec : Prop :=
  ∀ n, P9482458720998406242.a n = (A017511 n : ℝ)

end A017511

/-! ## A017511.P178042542797614949

`sqrt(sqrt(A017520(n)))`
-/

namespace A017511.P178042542797614949
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017520 n : ℝ))

end

end A017511.P178042542797614949

namespace A017511

/-- `sqrt(sqrt(A017520(n)))` -/
def P178042542797614949.Spec : Prop :=
  ∀ n, P178042542797614949.a n = (A017511 n : ℝ)

end A017511

/-! ## A017511.P8596722879506425613

`sqrt(A017510(n)^3)`
-/

namespace A017511.P8596722879506425613
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017510 n ^ 3 : ℝ)

end

end A017511.P8596722879506425613

namespace A017511

/-- `sqrt(A017510(n)^3)` -/
def P8596722879506425613.Spec : Prop :=
  ∀ n, P8596722879506425613.a n = (A017511 n : ℝ)

end A017511

/-! ## A017511.P9379681086345753159

`A017509(n)*A017510(n)`
-/

namespace A017511.P9379681086345753159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n * A017510 n

end

end A017511.P9379681086345753159

namespace A017511

/-- `A017509(n)*A017510(n)` -/
def P9379681086345753159.Spec : Prop :=
  ∀ n, P9379681086345753159.a n = A017511 n

theorem P9379681086345753159.correct : P9379681086345753159.Spec := by
  intro n
  simp only [A017511, Nat.add_sub_cancel, A017511.P9379681086345753159.a, A017511.P12732960829151293587.a, A017509, A017509.P7373483985674399481.a, A017510, A017510.P5520538972762125414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017511

/-! ## A017511.P950609413573083410

`A017512(n)/A017509(n)`
-/

namespace A017511.P950609413573083410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017512 n : ℚ) / (A017509 n : ℚ)

end

end A017511.P950609413573083410

namespace A017511

/-- `A017512(n)/A017509(n)` -/
def P950609413573083410.Spec : Prop :=
  ∀ n, P950609413573083410.a n = (A017511 n : ℚ)

end A017511

/-! ## A017511.P18029887257056247663

`A017513(n)/A017510(n)`
-/

namespace A017511.P18029887257056247663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017513 n : ℚ) / (A017510 n : ℚ)

end

end A017511.P18029887257056247663

namespace A017511

/-- `A017513(n)/A017510(n)` -/
def P18029887257056247663.Spec : Prop :=
  ∀ n, P18029887257056247663.a n = (A017511 n : ℚ)

end A017511

/-! ## A017511.P12179746539715221853

`A017515(n)/A017512(n)`
-/

namespace A017511.P12179746539715221853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017515 n : ℚ) / (A017512 n : ℚ)

end

end A017511.P12179746539715221853

namespace A017511

/-- `A017515(n)/A017512(n)` -/
def P12179746539715221853.Spec : Prop :=
  ∀ n, P12179746539715221853.a n = (A017511 n : ℚ)

end A017511

/-! ## A017511.P224326031216923183

`A017516(n)/A017513(n)`
-/

namespace A017511.P224326031216923183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017516 n : ℚ) / (A017513 n : ℚ)

end

end A017511.P224326031216923183

namespace A017511

/-- `A017516(n)/A017513(n)` -/
def P224326031216923183.Spec : Prop :=
  ∀ n, P224326031216923183.a n = (A017511 n : ℚ)

end A017511

/-! ## A017511.P6426853397798856119

`A017517(n)/A017514(n)`
-/

namespace A017511.P6426853397798856119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017517 n : ℚ) / (A017514 n : ℚ)

end

end A017511.P6426853397798856119

namespace A017511

/-- `A017517(n)/A017514(n)` -/
def P6426853397798856119.Spec : Prop :=
  ∀ n, P6426853397798856119.a n = (A017511 n : ℚ)

end A017511

/-! ## A017511.P4108073102753016840

`A017518(n)/A017515(n)`
-/

namespace A017511.P4108073102753016840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017518 n : ℚ) / (A017515 n : ℚ)

end

end A017511.P4108073102753016840

namespace A017511

/-- `A017518(n)/A017515(n)` -/
def P4108073102753016840.Spec : Prop :=
  ∀ n, P4108073102753016840.a n = (A017511 n : ℚ)

end A017511

/-! ## A017511.P16179809610233987494

`A017519(n)/A017516(n)`
-/

namespace A017511.P16179809610233987494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017519 n : ℚ) / (A017516 n : ℚ)

end

end A017511.P16179809610233987494

namespace A017511

/-- `A017519(n)/A017516(n)` -/
def P16179809610233987494.Spec : Prop :=
  ∀ n, P16179809610233987494.a n = (A017511 n : ℚ)

end A017511

/-! ## A017511.P15717492786959588218

`A017520(n)/A017517(n)`
-/

namespace A017511.P15717492786959588218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017520 n : ℚ) / (A017517 n : ℚ)

end

end A017511.P15717492786959588218

namespace A017511

/-- `A017520(n)/A017517(n)` -/
def P15717492786959588218.Spec : Prop :=
  ∀ n, P15717492786959588218.a n = (A017511 n : ℚ)

end A017511

/-! ## A017511.P14889622674020925080

`A017513(n)/A017509(n)²`
-/

namespace A017511.P14889622674020925080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017513 n : ℚ) / (A017509 n ^ 2 : ℚ)

end

end A017511.P14889622674020925080

namespace A017511

/-- `A017513(n)/A017509(n)²` -/
def P14889622674020925080.Spec : Prop :=
  ∀ n, P14889622674020925080.a n = (A017511 n : ℚ)

end A017511

/-! ## A017511.P1093927019287770974

`A017512(n)²/A017513(n)`
-/

namespace A017511.P1093927019287770974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017512 n ^ 2 : ℚ) / (A017513 n : ℚ)

end

end A017511.P1093927019287770974

namespace A017511

/-- `A017512(n)²/A017513(n)` -/
def P1093927019287770974.Spec : Prop :=
  ∀ n, P1093927019287770974.a n = (A017511 n : ℚ)

end A017511

/-! ## A017511.P7242586557812315507

`A017515(n)/A017510(n)²`
-/

namespace A017511.P7242586557812315507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017515 n : ℚ) / (A017510 n ^ 2 : ℚ)

end

end A017511.P7242586557812315507

namespace A017511

/-- `A017515(n)/A017510(n)²` -/
def P7242586557812315507.Spec : Prop :=
  ∀ n, P7242586557812315507.a n = (A017511 n : ℚ)

end A017511

/-! ## A017511.P5481691422106798163

`A017515(n)/A017509(n)²²`
-/

namespace A017511.P5481691422106798163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017515 n : ℚ) / ((A017509 n ^ 2) ^ 2 : ℚ)

end

end A017511.P5481691422106798163

namespace A017511

/-- `A017515(n)/A017509(n)²²` -/
def P5481691422106798163.Spec : Prop :=
  ∀ n, P5481691422106798163.a n = (A017511 n : ℚ)

end A017511

/-! ## A017511.P10101734611192027994

`A017509(n)/A017513(n)*A017515(n)`
-/

namespace A017511.P10101734611192027994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017509 n : ℚ) / (A017513 n : ℚ) * (A017515 n : ℚ)

end

end A017511.P10101734611192027994

namespace A017511

/-- `A017509(n)/A017513(n)*A017515(n)` -/
def P10101734611192027994.Spec : Prop :=
  ∀ n, P10101734611192027994.a n = (A017511 n : ℚ)

end A017511

/-! ## A017511.P309663325771308902

`A017510(n)/A017514(n)*A017515(n)`
-/

namespace A017511.P309663325771308902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017510 n : ℚ) / (A017514 n : ℚ) * (A017515 n : ℚ)

end

end A017511.P309663325771308902

namespace A017511

/-- `A017510(n)/A017514(n)*A017515(n)` -/
def P309663325771308902.Spec : Prop :=
  ∀ n, P309663325771308902.a n = (A017511 n : ℚ)

end A017511

/-!
# A017512: a(n) = (11*n + 10)^4.

The programs for A017512, the canonical program `A017512.P12105192073991130614` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017512 has offset 0).

The definition of A017512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+10)^4` (program `A017512.P12105192073991130614`, by `A017512.P12105192073991130614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017512.P12105192073991130614

`(11*n+10)^4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017512

/-- `(11*n+10)^4` -/
def P12105192073991130614.Spec : Prop :=
  ∀ n, (P12105192073991130614.a n : ℤ) = A017512 n

theorem P12105192073991130614.correct : P12105192073991130614.Spec := by
  intro n
  simp only [A017512]

end A017512

/-! ## A017512.P6263254774222208814

`A017510(n)²`
-/

namespace A017512.P6263254774222208814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n ^ 2

end

end A017512.P6263254774222208814

namespace A017512

/-- `A017510(n)²` -/
def P6263254774222208814.Spec : Prop :=
  ∀ n, P6263254774222208814.a n = A017512 n

theorem P6263254774222208814.correct : P6263254774222208814.Spec := by
  intro n
  simp only [A017512, Nat.add_sub_cancel, A017512.P6263254774222208814.a, A017512.P12105192073991130614.a, A017510, A017510.P5520538972762125414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017512

/-! ## A017512.P12245498971330362163

`sqrt(A017516(n))`
-/

namespace A017512.P12245498971330362163
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017516 n : ℝ)

end

end A017512.P12245498971330362163

namespace A017512

/-- `sqrt(A017516(n))` -/
def P12245498971330362163.Spec : Prop :=
  ∀ n, P12245498971330362163.a n = (A017512 n : ℝ)

end A017512

/-! ## A017512.P12418470977830408243

`A017509(n)²²`
-/

namespace A017512.P12418470977830408243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017509 n ^ 2) ^ 2

end

end A017512.P12418470977830408243

namespace A017512

/-- `A017509(n)²²` -/
def P12418470977830408243.Spec : Prop :=
  ∀ n, P12418470977830408243.a n = A017512 n

theorem P12418470977830408243.correct : P12418470977830408243.Spec := by
  intro n
  simp only [A017512, Nat.add_sub_cancel, A017512.P12418470977830408243.a, A017512.P12105192073991130614.a, A017509, A017509.P7373483985674399481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017512

/-! ## A017512.P10131095522002515167

`(A017497(n)+1)²²`
-/

namespace A017512.P10131095522002515167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017497 n + 1) ^ 2) ^ 2

end

end A017512.P10131095522002515167

namespace A017512

/-- `(A017497(n)+1)²²` -/
def P10131095522002515167.Spec : Prop :=
  ∀ n, P10131095522002515167.a n = A017512 n

theorem P10131095522002515167.correct : P10131095522002515167.Spec := by
  intro n
  simp only [A017512, Nat.add_sub_cancel, A017512.P10131095522002515167.a, A017512.P12105192073991130614.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017512

/-! ## A017512.P3364837294291203

`(A017485(n)+2)²²`
-/

namespace A017512.P3364837294291203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017485 n + 2) ^ 2) ^ 2

end

end A017512.P3364837294291203

namespace A017512

/-- `(A017485(n)+2)²²` -/
def P3364837294291203.Spec : Prop :=
  ∀ n, P3364837294291203.a n = A017512 n

theorem P3364837294291203.correct : P3364837294291203.Spec := by
  intro n
  simp only [A017512, Nat.add_sub_cancel, A017512.P3364837294291203.a, A017512.P12105192073991130614.a, A017485, A017485.P4370091181196038588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017512

/-! ## A017512.P11910522219634968639

`(A017473(n)+3)²²`
-/

namespace A017512.P11910522219634968639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017473 n + 3) ^ 2) ^ 2

end

end A017512.P11910522219634968639

namespace A017512

/-- `(A017473(n)+3)²²` -/
def P11910522219634968639.Spec : Prop :=
  ∀ n, P11910522219634968639.a n = A017512 n

theorem P11910522219634968639.correct : P11910522219634968639.Spec := by
  intro n
  simp only [A017512, Nat.add_sub_cancel, A017512.P11910522219634968639.a, A017512.P12105192073991130614.a, A017473, A017473.P6794540674081733570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017512

/-! ## A017512.P5717122318784759483

`(n-A017641(n))²²`
-/

namespace A017512.P5717122318784759483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017641 n) ^ 2) ^ 2

end

end A017512.P5717122318784759483

namespace A017512

/-- `(n-A017641(n))²²` -/
def P5717122318784759483.Spec : Prop :=
  ∀ n, P5717122318784759483.a n = A017512 n

theorem P5717122318784759483.correct : P5717122318784759483.Spec := by
  intro n
  simp only [A017512, Nat.add_sub_cancel, A017512.P5717122318784759483.a, A017512.P12105192073991130614.a, A017641, A017641.P7179824184075428685.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017512

/-! ## A017512.P9609295906229108265

`(sqrt(A017498(n))+1)²²`
-/

namespace A017512.P9609295906229108265
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017498 n : ℝ) + 1) ^ 2) ^ 2

end

end A017512.P9609295906229108265

namespace A017512

/-- `(sqrt(A017498(n))+1)²²` -/
def P9609295906229108265.Spec : Prop :=
  ∀ n, P9609295906229108265.a n = (A017512 n : ℝ)

end A017512

/-! ## A017512.P18104660751225908362

`(sqrt(A017486(n))+2)²²`
-/

namespace A017512.P18104660751225908362
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017486 n : ℝ) + 2) ^ 2) ^ 2

end

end A017512.P18104660751225908362

namespace A017512

/-- `(sqrt(A017486(n))+2)²²` -/
def P18104660751225908362.Spec : Prop :=
  ∀ n, P18104660751225908362.a n = (A017512 n : ℝ)

end A017512

/-! ## A017512.P4565359229934622222

`ceil(A248339(n)/2)²²`
-/

namespace A017512.P4565359229934622222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(A248339 n : ℚ) / 2⌉ ^ 2) ^ 2

end

end A017512.P4565359229934622222

namespace A017512

/-- `ceil(A248339(n)/2)²²` -/
def P4565359229934622222.Spec : Prop :=
  ∀ n, P4565359229934622222.a n = A017512 n

end A017512

/-! ## A017512.P6927405321955139230

`(n-sqrt(A017642(n)))²²`
-/

namespace A017512.P6927405321955139230
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) - Real.sqrt (A017642 n : ℝ)) ^ 2) ^ 2

end

end A017512.P6927405321955139230

namespace A017512

/-- `(n-sqrt(A017642(n)))²²` -/
def P6927405321955139230.Spec : Prop :=
  ∀ n, P6927405321955139230.a n = (A017512 n : ℝ)

end A017512

/-! ## A017512.P1668495887336379260

`(1-A008593(n+1))²²`
-/

namespace A017512.P1668495887336379260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A008593 (n + 1)) ^ 2) ^ 2

end

end A017512.P1668495887336379260

namespace A017512

/-- `(1-A008593(n+1))²²` -/
def P1668495887336379260.Spec : Prop :=
  ∀ n, P1668495887336379260.a n = A017512 n

theorem P1668495887336379260.correct : P1668495887336379260.Spec := by
  intro n
  simp only [A017512, Nat.add_sub_cancel, A017512.P1668495887336379260.a, A017512.P12105192073991130614.a, A008593, A008593.P2680892499938115192.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017512

/-! ## A017512.P13188945369573521444

`(3-A017413(n+1))²²`
-/

namespace A017512.P13188945369573521444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017413 (n + 1)) ^ 2) ^ 2

end

end A017512.P13188945369573521444

namespace A017512

/-- `(3-A017413(n+1))²²` -/
def P13188945369573521444.Spec : Prop :=
  ∀ n, P13188945369573521444.a n = A017512 n

theorem P13188945369573521444.correct : P13188945369573521444.Spec := by
  intro n
  simp only [A017512, Nat.add_sub_cancel, A017512.P13188945369573521444.a, A017512.P12105192073991130614.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017512

/-! ## A017512.P12950181437486270330

`(A017377(n)+n+1)²²`
-/

namespace A017512.P12950181437486270330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017377 n + (n + 1 : ℤ)) ^ 2) ^ 2

end

end A017512.P12950181437486270330

namespace A017512

/-- `(A017377(n)+n+1)²²` -/
def P12950181437486270330.Spec : Prop :=
  ∀ n, P12950181437486270330.a n = A017512 n

theorem P12950181437486270330.correct : P12950181437486270330.Spec := by
  intro n
  simp only [A017512, Nat.add_sub_cancel, A017512.P12950181437486270330.a, A017512.P12105192073991130614.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017512

/-! ## A017512.P4775048760450319662

`(A017365(n)+n+2)²²`
-/

namespace A017512.P4775048760450319662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017365 n + (n + 2 : ℤ)) ^ 2) ^ 2

end

end A017512.P4775048760450319662

namespace A017512

/-- `(A017365(n)+n+2)²²` -/
def P4775048760450319662.Spec : Prop :=
  ∀ n, P4775048760450319662.a n = A017512 n

theorem P4775048760450319662.correct : P4775048760450319662.Spec := by
  intro n
  simp only [A017512, Nat.add_sub_cancel, A017512.P4775048760450319662.a, A017512.P12105192073991130614.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017512

/-! ## A017512.P5846866792397329785

`(n-(A017629(n)+1))²²`
-/

namespace A017512.P5846866792397329785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - (A017629 n + 1)) ^ 2) ^ 2

end

end A017512.P5846866792397329785

namespace A017512

/-- `(n-(A017629(n)+1))²²` -/
def P5846866792397329785.Spec : Prop :=
  ∀ n, P5846866792397329785.a n = A017512 n

theorem P5846866792397329785.correct : P5846866792397329785.Spec := by
  intro n
  simp only [A017512, Nat.add_sub_cancel, A017512.P5846866792397329785.a, A017512.P12105192073991130614.a, A017629, A017629.P13557474233053533782.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017512

/-! ## A017512.P7498675603536995091

`(1-A017653(n)+n)²²`
-/

namespace A017512.P7498675603536995091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017653 n + (n : ℤ)) ^ 2) ^ 2

end

end A017512.P7498675603536995091

namespace A017512

/-- `(1-A017653(n)+n)²²` -/
def P7498675603536995091.Spec : Prop :=
  ∀ n, P7498675603536995091.a n = A017512 n

theorem P7498675603536995091.correct : P7498675603536995091.Spec := by
  intro n
  simp only [A017512, Nat.add_sub_cancel, A017512.P7498675603536995091.a, A017512.P12105192073991130614.a, A017653, A017653.P10378373051193972998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017512

/-! ## A017512.P9970150805192436800

`(A017353(n)+n+3)²²`
-/

namespace A017512.P9970150805192436800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017353 n + (n + 3 : ℤ)) ^ 2) ^ 2

end

end A017512.P9970150805192436800

namespace A017512

/-- `(A017353(n)+n+3)²²` -/
def P9970150805192436800.Spec : Prop :=
  ∀ n, P9970150805192436800.a n = A017512 n

theorem P9970150805192436800.correct : P9970150805192436800.Spec := by
  intro n
  simp only [A017512, Nat.add_sub_cancel, A017512.P9970150805192436800.a, A017512.P12105192073991130614.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017512

/-! ## A017512.P13706591110802978329

`(n-2*A016969(n))²²`
-/

namespace A017512.P13706591110802978329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2 * A016969 n) ^ 2) ^ 2

end

end A017512.P13706591110802978329

namespace A017512

/-- `(n-2*A016969(n))²²` -/
def P13706591110802978329.Spec : Prop :=
  ∀ n, P13706591110802978329.a n = A017512 n

theorem P13706591110802978329.correct : P13706591110802978329.Spec := by
  intro n
  simp only [A017512, Nat.add_sub_cancel, A017512.P13706591110802978329.a, A017512.P12105192073991130614.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017512

/-!
# A017513: a(n) = (11*n + 10)^5.

The programs for A017513, the canonical program `A017513.P2525228607840274152` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017513 has offset 0).

The definition of A017513 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+10)^5` (program `A017513.P2525228607840274152`, by `A017513.P2525228607840274152.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017513.P2525228607840274152

`(11*n+10)^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017513

/-- `(11*n+10)^5` -/
def P2525228607840274152.Spec : Prop :=
  ∀ n, (P2525228607840274152.a n : ℤ) = A017513 n

theorem P2525228607840274152.correct : P2525228607840274152.Spec := by
  intro n
  simp only [A017513]

end A017513

/-! ## A017513.P510998502996541875

`sqrt(A017518(n))`
-/

namespace A017513.P510998502996541875
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017518 n : ℝ)

end

end A017513.P510998502996541875

namespace A017513

/-- `sqrt(A017518(n))` -/
def P510998502996541875.Spec : Prop :=
  ∀ n, P510998502996541875.a n = (A017513 n : ℝ)

end A017513

/-! ## A017513.P6508829846108950785

`sqrt(A017510(n)^5)`
-/

namespace A017513.P6508829846108950785
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017510 n ^ 5 : ℝ)

end

end A017513.P6508829846108950785

namespace A017513

/-- `sqrt(A017510(n)^5)` -/
def P6508829846108950785.Spec : Prop :=
  ∀ n, P6508829846108950785.a n = (A017513 n : ℝ)

end A017513

/-! ## A017513.P17578970119486598207

`A017509(n)*A017512(n)`
-/

namespace A017513.P17578970119486598207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n * A017512 n

end

end A017513.P17578970119486598207

namespace A017513

/-- `A017509(n)*A017512(n)` -/
def P17578970119486598207.Spec : Prop :=
  ∀ n, P17578970119486598207.a n = A017513 n

theorem P17578970119486598207.correct : P17578970119486598207.Spec := by
  intro n
  simp only [A017513, Nat.add_sub_cancel, A017513.P17578970119486598207.a, A017513.P2525228607840274152.a, A017509, A017509.P7373483985674399481.a, A017512, A017512.P12105192073991130614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017513

/-! ## A017513.P8191100894231667775

`A017510(n)*A017511(n)`
-/

namespace A017513.P8191100894231667775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n * A017511 n

end

end A017513.P8191100894231667775

namespace A017513

/-- `A017510(n)*A017511(n)` -/
def P8191100894231667775.Spec : Prop :=
  ∀ n, P8191100894231667775.a n = A017513 n

theorem P8191100894231667775.correct : P8191100894231667775.Spec := by
  intro n
  simp only [A017513, Nat.add_sub_cancel, A017513.P8191100894231667775.a, A017513.P2525228607840274152.a, A017510, A017510.P5520538972762125414.a, A017511, A017511.P12732960829151293587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017513

/-! ## A017513.P12939045157167997686

`A017514(n)/A017509(n)`
-/

namespace A017513.P12939045157167997686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017514 n : ℚ) / (A017509 n : ℚ)

end

end A017513.P12939045157167997686

namespace A017513

/-- `A017514(n)/A017509(n)` -/
def P12939045157167997686.Spec : Prop :=
  ∀ n, P12939045157167997686.a n = (A017513 n : ℚ)

end A017513

/-! ## A017513.P6175498210934104351

`A017515(n)/A017510(n)`
-/

namespace A017513.P6175498210934104351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017515 n : ℚ) / (A017510 n : ℚ)

end

end A017513.P6175498210934104351

namespace A017513

/-- `A017515(n)/A017510(n)` -/
def P6175498210934104351.Spec : Prop :=
  ∀ n, P6175498210934104351.a n = (A017513 n : ℚ)

end A017513

/-! ## A017513.P16443710712435477768

`A017516(n)/A017511(n)`
-/

namespace A017513.P16443710712435477768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017516 n : ℚ) / (A017511 n : ℚ)

end

end A017513.P16443710712435477768

namespace A017513

/-- `A017516(n)/A017511(n)` -/
def P16443710712435477768.Spec : Prop :=
  ∀ n, P16443710712435477768.a n = (A017513 n : ℚ)

end A017513

/-! ## A017513.P1258647679492009522

`A017517(n)/A017512(n)`
-/

namespace A017513.P1258647679492009522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017517 n : ℚ) / (A017512 n : ℚ)

end

end A017513.P1258647679492009522

namespace A017513

/-- `A017517(n)/A017512(n)` -/
def P1258647679492009522.Spec : Prop :=
  ∀ n, P1258647679492009522.a n = (A017513 n : ℚ)

end A017513

/-! ## A017513.P14018060540542855319

`A017519(n)/A017514(n)`
-/

namespace A017513.P14018060540542855319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017519 n : ℚ) / (A017514 n : ℚ)

end

end A017513.P14018060540542855319

namespace A017513

/-- `A017519(n)/A017514(n)` -/
def P14018060540542855319.Spec : Prop :=
  ∀ n, P14018060540542855319.a n = (A017513 n : ℚ)

end A017513

/-! ## A017513.P2273407425744044130

`A017520(n)/A017515(n)`
-/

namespace A017513.P2273407425744044130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017520 n : ℚ) / (A017515 n : ℚ)

end

end A017513.P2273407425744044130

namespace A017513

/-- `A017520(n)/A017515(n)` -/
def P2273407425744044130.Spec : Prop :=
  ∀ n, P2273407425744044130.a n = (A017513 n : ℚ)

end A017513

/-! ## A017513.P2811566838675773424

`A017510(n)²*A017509(n)`
-/

namespace A017513.P2811566838675773424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n ^ 2 * A017509 n

end

end A017513.P2811566838675773424

namespace A017513

/-- `A017510(n)²*A017509(n)` -/
def P2811566838675773424.Spec : Prop :=
  ∀ n, P2811566838675773424.a n = A017513 n

theorem P2811566838675773424.correct : P2811566838675773424.Spec := by
  intro n
  simp only [A017513, Nat.add_sub_cancel, A017513.P2811566838675773424.a, A017513.P2525228607840274152.a, A017509, A017509.P7373483985674399481.a, A017510, A017510.P5520538972762125414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017513

/-! ## A017513.P16998801041986825216

`A017509(n)²*A017511(n)`
-/

namespace A017513.P16998801041986825216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n ^ 2 * A017511 n

end

end A017513.P16998801041986825216

namespace A017513

/-- `A017509(n)²*A017511(n)` -/
def P16998801041986825216.Spec : Prop :=
  ∀ n, P16998801041986825216.a n = A017513 n

theorem P16998801041986825216.correct : P16998801041986825216.Spec := by
  intro n
  simp only [A017513, Nat.add_sub_cancel, A017513.P16998801041986825216.a, A017513.P2525228607840274152.a, A017509, A017509.P7373483985674399481.a, A017511, A017511.P12732960829151293587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017513

/-! ## A017513.P13390647506213748696

`A017512(n)²/A017511(n)`
-/

namespace A017513.P13390647506213748696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017512 n ^ 2 : ℚ) / (A017511 n : ℚ)

end

end A017513.P13390647506213748696

namespace A017513

/-- `A017512(n)²/A017511(n)` -/
def P13390647506213748696.Spec : Prop :=
  ∀ n, P13390647506213748696.a n = (A017513 n : ℚ)

end A017513

/-! ## A017513.P17171656770063111575

`A017515(n)/A017509(n)²`
-/

namespace A017513.P17171656770063111575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017515 n : ℚ) / (A017509 n ^ 2 : ℚ)

end

end A017513.P17171656770063111575

namespace A017513

/-- `A017515(n)/A017509(n)²` -/
def P17171656770063111575.Spec : Prop :=
  ∀ n, P17171656770063111575.a n = (A017513 n : ℚ)

end A017513

/-! ## A017513.P2989137212240105544

`A017517(n)/A017510(n)²`
-/

namespace A017513.P2989137212240105544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017517 n : ℚ) / (A017510 n ^ 2 : ℚ)

end

end A017513.P2989137212240105544

namespace A017513

/-- `A017517(n)/A017510(n)²` -/
def P2989137212240105544.Spec : Prop :=
  ∀ n, P2989137212240105544.a n = (A017513 n : ℚ)

end A017513

/-! ## A017513.P16525414558815556505

`A017514(n)²/A017515(n)`
-/

namespace A017513.P16525414558815556505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017514 n ^ 2 : ℚ) / (A017515 n : ℚ)

end

end A017513.P16525414558815556505

namespace A017513

/-- `A017514(n)²/A017515(n)` -/
def P16525414558815556505.Spec : Prop :=
  ∀ n, P16525414558815556505.a n = (A017513 n : ℚ)

end A017513

/-! ## A017513.P1446453836053807627

`A017519(n)/A017511(n)²`
-/

namespace A017513.P1446453836053807627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017519 n : ℚ) / (A017511 n ^ 2 : ℚ)

end

end A017513.P1446453836053807627

namespace A017513

/-- `A017519(n)/A017511(n)²` -/
def P1446453836053807627.Spec : Prop :=
  ∀ n, P1446453836053807627.a n = (A017513 n : ℚ)

end A017513

/-! ## A017513.P7959691305549872070

`A017509(n)/A017511(n)*A017515(n)`
-/

namespace A017513.P7959691305549872070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017509 n : ℚ) / (A017511 n : ℚ) * (A017515 n : ℚ)

end

end A017513.P7959691305549872070

namespace A017513

/-- `A017509(n)/A017511(n)*A017515(n)` -/
def P7959691305549872070.Spec : Prop :=
  ∀ n, P7959691305549872070.a n = (A017513 n : ℚ)

end A017513

/-! ## A017513.P1966590517034700843

`A017511(n)/A017512(n)*A017514(n)`
-/

namespace A017513.P1966590517034700843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017511 n : ℚ) / (A017512 n : ℚ) * (A017514 n : ℚ)

end

end A017513.P1966590517034700843

namespace A017513

/-- `A017511(n)/A017512(n)*A017514(n)` -/
def P1966590517034700843.Spec : Prop :=
  ∀ n, P1966590517034700843.a n = (A017513 n : ℚ)

end A017513

/-!
# A017514: a(n) = (11*n + 10)^6.

The programs for A017514, the canonical program `A017514.P6907510896689921673` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017514 has offset 0).

The definition of A017514 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+10)^6` (program `A017514.P6907510896689921673`, by `A017514.P6907510896689921673.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017514.P6907510896689921673

`(11*n+10)^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017514

/-- `(11*n+10)^6` -/
def P6907510896689921673.Spec : Prop :=
  ∀ n, (P6907510896689921673.a n : ℤ) = A017514 n

theorem P6907510896689921673.correct : P6907510896689921673.Spec := by
  intro n
  simp only [A017514]

end A017514

/-! ## A017514.P4057319402316244016

`A017511(n)²`
-/

namespace A017514.P4057319402316244016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017511 n ^ 2

end

end A017514.P4057319402316244016

namespace A017514

/-- `A017511(n)²` -/
def P4057319402316244016.Spec : Prop :=
  ∀ n, P4057319402316244016.a n = A017514 n

theorem P4057319402316244016.correct : P4057319402316244016.Spec := by
  intro n
  simp only [A017514, Nat.add_sub_cancel, A017514.P4057319402316244016.a, A017514.P6907510896689921673.a, A017511, A017511.P12732960829151293587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017514

/-! ## A017514.P9461634730864239789

`sqrt(A017520(n))`
-/

namespace A017514.P9461634730864239789
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017520 n : ℝ)

end

end A017514.P9461634730864239789

namespace A017514

/-- `sqrt(A017520(n))` -/
def P9461634730864239789.Spec : Prop :=
  ∀ n, P9461634730864239789.a n = (A017514 n : ℝ)

end A017514

/-! ## A017514.P1591507827839719180

`(A017509(n)^3)²`
-/

namespace A017514.P1591507827839719180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017509 n ^ 3) ^ 2

end

end A017514.P1591507827839719180

namespace A017514

/-- `(A017509(n)^3)²` -/
def P1591507827839719180.Spec : Prop :=
  ∀ n, P1591507827839719180.a n = A017514 n

theorem P1591507827839719180.correct : P1591507827839719180.Spec := by
  intro n
  simp only [A017514, Nat.add_sub_cancel, A017514.P1591507827839719180.a, A017514.P6907510896689921673.a, A017509, A017509.P7373483985674399481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017514

/-! ## A017514.P17851006726270004822

`sqrt(A017512(n)^3)`
-/

namespace A017514.P17851006726270004822
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017512 n ^ 3 : ℝ)

end

end A017514.P17851006726270004822

namespace A017514

/-- `sqrt(A017512(n)^3)` -/
def P17851006726270004822.Spec : Prop :=
  ∀ n, P17851006726270004822.a n = (A017514 n : ℝ)

end A017514

/-! ## A017514.P13788083908634828978

`A017509(n)*A017513(n)`
-/

namespace A017514.P13788083908634828978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n * A017513 n

end

end A017514.P13788083908634828978

namespace A017514

/-- `A017509(n)*A017513(n)` -/
def P13788083908634828978.Spec : Prop :=
  ∀ n, P13788083908634828978.a n = A017514 n

theorem P13788083908634828978.correct : P13788083908634828978.Spec := by
  intro n
  simp only [A017514, Nat.add_sub_cancel, A017514.P13788083908634828978.a, A017514.P6907510896689921673.a, A017509, A017509.P7373483985674399481.a, A017513, A017513.P2525228607840274152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017514

/-! ## A017514.P1690694410332704149

`A017510(n)*A017512(n)`
-/

namespace A017514.P1690694410332704149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n * A017512 n

end

end A017514.P1690694410332704149

namespace A017514

/-- `A017510(n)*A017512(n)` -/
def P1690694410332704149.Spec : Prop :=
  ∀ n, P1690694410332704149.a n = A017514 n

theorem P1690694410332704149.correct : P1690694410332704149.Spec := by
  intro n
  simp only [A017514, Nat.add_sub_cancel, A017514.P1690694410332704149.a, A017514.P6907510896689921673.a, A017510, A017510.P5520538972762125414.a, A017512, A017512.P12105192073991130614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017514

/-! ## A017514.P16989470509438213307

`A017515(n)/A017509(n)`
-/

namespace A017514.P16989470509438213307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017515 n : ℚ) / (A017509 n : ℚ)

end

end A017514.P16989470509438213307

namespace A017514

/-- `A017515(n)/A017509(n)` -/
def P16989470509438213307.Spec : Prop :=
  ∀ n, P16989470509438213307.a n = (A017514 n : ℚ)

end A017514

/-! ## A017514.P7266667279665055473

`A017516(n)/A017510(n)`
-/

namespace A017514.P7266667279665055473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017516 n : ℚ) / (A017510 n : ℚ)

end

end A017514.P7266667279665055473

namespace A017514

/-- `A017516(n)/A017510(n)` -/
def P7266667279665055473.Spec : Prop :=
  ∀ n, P7266667279665055473.a n = (A017514 n : ℚ)

end A017514

/-! ## A017514.P4278717717806829367

`A017517(n)/A017511(n)`
-/

namespace A017514.P4278717717806829367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017517 n : ℚ) / (A017511 n : ℚ)

end

end A017514.P4278717717806829367

namespace A017514

/-- `A017517(n)/A017511(n)` -/
def P4278717717806829367.Spec : Prop :=
  ∀ n, P4278717717806829367.a n = (A017514 n : ℚ)

end A017514

/-! ## A017514.P1536637293332990756

`A017518(n)/A017512(n)`
-/

namespace A017514.P1536637293332990756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017518 n : ℚ) / (A017512 n : ℚ)

end

end A017514.P1536637293332990756

namespace A017514

/-- `A017518(n)/A017512(n)` -/
def P1536637293332990756.Spec : Prop :=
  ∀ n, P1536637293332990756.a n = (A017514 n : ℚ)

end A017514

/-! ## A017514.P1224804068948612595

`A017519(n)/A017513(n)`
-/

namespace A017514.P1224804068948612595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017519 n : ℚ) / (A017513 n : ℚ)

end

end A017514.P1224804068948612595

namespace A017514

/-- `A017519(n)/A017513(n)` -/
def P1224804068948612595.Spec : Prop :=
  ∀ n, P1224804068948612595.a n = (A017514 n : ℚ)

end A017514

/-! ## A017514.P3751785167180914601

`(A017509(n)*A017510(n))²`
-/

namespace A017514.P3751785167180914601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017509 n * A017510 n) ^ 2

end

end A017514.P3751785167180914601

namespace A017514

/-- `(A017509(n)*A017510(n))²` -/
def P3751785167180914601.Spec : Prop :=
  ∀ n, P3751785167180914601.a n = A017514 n

theorem P3751785167180914601.correct : P3751785167180914601.Spec := by
  intro n
  simp only [A017514, Nat.add_sub_cancel, A017514.P3751785167180914601.a, A017514.P6907510896689921673.a, A017509, A017509.P7373483985674399481.a, A017510, A017510.P5520538972762125414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017514

/-! ## A017514.P4991938729035811039

`A017509(n)²*A017512(n)`
-/

namespace A017514.P4991938729035811039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n ^ 2 * A017512 n

end

end A017514.P4991938729035811039

namespace A017514

/-- `A017509(n)²*A017512(n)` -/
def P4991938729035811039.Spec : Prop :=
  ∀ n, P4991938729035811039.a n = A017514 n

theorem P4991938729035811039.correct : P4991938729035811039.Spec := by
  intro n
  simp only [A017514, Nat.add_sub_cancel, A017514.P4991938729035811039.a, A017514.P6907510896689921673.a, A017509, A017509.P7373483985674399481.a, A017512, A017512.P12105192073991130614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017514

/-! ## A017514.P7660885810125403672

`(A017513(n)/A017510(n))²`
-/

namespace A017514.P7660885810125403672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017513 n : ℚ) / (A017510 n : ℚ)) ^ 2

end

end A017514.P7660885810125403672

namespace A017514

/-- `(A017513(n)/A017510(n))²` -/
def P7660885810125403672.Spec : Prop :=
  ∀ n, P7660885810125403672.a n = (A017514 n : ℚ)

end A017514

/-! ## A017514.P10105320007305270533

`A017513(n)²/A017512(n)`
-/

namespace A017514.P10105320007305270533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017513 n ^ 2 : ℚ) / (A017512 n : ℚ)

end

end A017514.P10105320007305270533

namespace A017514

/-- `A017513(n)²/A017512(n)` -/
def P10105320007305270533.Spec : Prop :=
  ∀ n, P10105320007305270533.a n = (A017514 n : ℚ)

end A017514

/-! ## A017514.P6870083165366449441

`A017516(n)/A017509(n)²`
-/

namespace A017514.P6870083165366449441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017516 n : ℚ) / (A017509 n ^ 2 : ℚ)

end

end A017514.P6870083165366449441

namespace A017514

/-- `A017516(n)/A017509(n)²` -/
def P6870083165366449441.Spec : Prop :=
  ∀ n, P6870083165366449441.a n = (A017514 n : ℚ)

end A017514

/-! ## A017514.P2412752837464765640

`(A017515(n)/A017512(n))²`
-/

namespace A017514.P2412752837464765640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017515 n : ℚ) / (A017512 n : ℚ)) ^ 2

end

end A017514.P2412752837464765640

namespace A017514

/-- `(A017515(n)/A017512(n))²` -/
def P2412752837464765640.Spec : Prop :=
  ∀ n, P2412752837464765640.a n = (A017514 n : ℚ)

end A017514

/-! ## A017514.P368353486709577108

`(A017516(n)/A017513(n))²`
-/

namespace A017514.P368353486709577108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017516 n : ℚ) / (A017513 n : ℚ)) ^ 2

end

end A017514.P368353486709577108

namespace A017514

/-- `(A017516(n)/A017513(n))²` -/
def P368353486709577108.Spec : Prop :=
  ∀ n, P368353486709577108.a n = (A017514 n : ℚ)

end A017514

/-! ## A017514.P17703691313156288036

`(A017515(n)/A017510(n)²)²`
-/

namespace A017514.P17703691313156288036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017515 n : ℚ) / (A017510 n ^ 2 : ℚ)) ^ 2

end

end A017514.P17703691313156288036

namespace A017514

/-- `(A017515(n)/A017510(n)²)²` -/
def P17703691313156288036.Spec : Prop :=
  ∀ n, P17703691313156288036.a n = (A017514 n : ℚ)

end A017514

/-!
# A017515: a(n) = (11*n + 10)^7.

The programs for A017515, the canonical program `A017515.P2294465166120881286` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017515 has offset 0).

The definition of A017515 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+10)^7` (program `A017515.P2294465166120881286`, by `A017515.P2294465166120881286.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017515.P2294465166120881286

`(11*n+10)^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017515

/-- `(11*n+10)^7` -/
def P2294465166120881286.Spec : Prop :=
  ∀ n, (P2294465166120881286.a n : ℤ) = A017515 n

theorem P2294465166120881286.correct : P2294465166120881286.Spec := by
  intro n
  simp only [A017515]

end A017515

/-! ## A017515.P3530564688069147341

`(11*n+10)²²*A017511(n)`
-/

namespace A017515.P3530564688069147341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((11 * n + 10) ^ 2) ^ 2 : ℤ) * A017511 n

end

end A017515.P3530564688069147341

namespace A017515

/-- `(11*n+10)²²*A017511(n)` -/
def P3530564688069147341.Spec : Prop :=
  ∀ n, P3530564688069147341.a n = A017515 n

theorem P3530564688069147341.correct : P3530564688069147341.Spec := by
  intro n
  simp only [A017515, Nat.add_sub_cancel, A017515.P3530564688069147341.a, A017515.P2294465166120881286.a, A017511, A017511.P12732960829151293587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017515

/-! ## A017515.P13454820127765445876

`A017509(n)*A017514(n)`
-/

namespace A017515.P13454820127765445876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n * A017514 n

end

end A017515.P13454820127765445876

namespace A017515

/-- `A017509(n)*A017514(n)` -/
def P13454820127765445876.Spec : Prop :=
  ∀ n, P13454820127765445876.a n = A017515 n

theorem P13454820127765445876.correct : P13454820127765445876.Spec := by
  intro n
  simp only [A017515, Nat.add_sub_cancel, A017515.P13454820127765445876.a, A017515.P2294465166120881286.a, A017509, A017509.P7373483985674399481.a, A017514, A017514.P6907510896689921673.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017515

/-! ## A017515.P6950431040961006735

`A017510(n)*A017513(n)`
-/

namespace A017515.P6950431040961006735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n * A017513 n

end

end A017515.P6950431040961006735

namespace A017515

/-- `A017510(n)*A017513(n)` -/
def P6950431040961006735.Spec : Prop :=
  ∀ n, P6950431040961006735.a n = A017515 n

theorem P6950431040961006735.correct : P6950431040961006735.Spec := by
  intro n
  simp only [A017515, Nat.add_sub_cancel, A017515.P6950431040961006735.a, A017515.P2294465166120881286.a, A017510, A017510.P5520538972762125414.a, A017513, A017513.P2525228607840274152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017515

/-! ## A017515.P2183963913966705254

`A017511(n)*A017512(n)`
-/

namespace A017515.P2183963913966705254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017511 n * A017512 n

end

end A017515.P2183963913966705254

namespace A017515

/-- `A017511(n)*A017512(n)` -/
def P2183963913966705254.Spec : Prop :=
  ∀ n, P2183963913966705254.a n = A017515 n

theorem P2183963913966705254.correct : P2183963913966705254.Spec := by
  intro n
  simp only [A017515, Nat.add_sub_cancel, A017515.P2183963913966705254.a, A017515.P2294465166120881286.a, A017511, A017511.P12732960829151293587.a, A017512, A017512.P12105192073991130614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017515

/-! ## A017515.P6577742290758390780

`A017516(n)/A017509(n)`
-/

namespace A017515.P6577742290758390780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017516 n : ℚ) / (A017509 n : ℚ)

end

end A017515.P6577742290758390780

namespace A017515

/-- `A017516(n)/A017509(n)` -/
def P6577742290758390780.Spec : Prop :=
  ∀ n, P6577742290758390780.a n = (A017515 n : ℚ)

end A017515

/-! ## A017515.P6257428386962347059

`A017517(n)/A017510(n)`
-/

namespace A017515.P6257428386962347059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017517 n : ℚ) / (A017510 n : ℚ)

end

end A017515.P6257428386962347059

namespace A017515

/-- `A017517(n)/A017510(n)` -/
def P6257428386962347059.Spec : Prop :=
  ∀ n, P6257428386962347059.a n = (A017515 n : ℚ)

end A017515

/-! ## A017515.P7726932401755906318

`A017518(n)/A017511(n)`
-/

namespace A017515.P7726932401755906318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017518 n : ℚ) / (A017511 n : ℚ)

end

end A017515.P7726932401755906318

namespace A017515

/-- `A017518(n)/A017511(n)` -/
def P7726932401755906318.Spec : Prop :=
  ∀ n, P7726932401755906318.a n = (A017515 n : ℚ)

end A017515

/-! ## A017515.P13532916600279418055

`A017519(n)/A017512(n)`
-/

namespace A017515.P13532916600279418055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017519 n : ℚ) / (A017512 n : ℚ)

end

end A017515.P13532916600279418055

namespace A017515

/-- `A017519(n)/A017512(n)` -/
def P13532916600279418055.Spec : Prop :=
  ∀ n, P13532916600279418055.a n = (A017515 n : ℚ)

end A017515

/-! ## A017515.P2881374253769401180

`A017520(n)/A017513(n)`
-/

namespace A017515.P2881374253769401180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017520 n : ℚ) / (A017513 n : ℚ)

end

end A017515.P2881374253769401180

namespace A017515

/-- `A017520(n)/A017513(n)` -/
def P2881374253769401180.Spec : Prop :=
  ∀ n, P2881374253769401180.a n = (A017515 n : ℚ)

end A017515

/-! ## A017515.P7079727429198498431

`A017511(n)²*A017509(n)`
-/

namespace A017515.P7079727429198498431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017511 n ^ 2 * A017509 n

end

end A017515.P7079727429198498431

namespace A017515

/-- `A017511(n)²*A017509(n)` -/
def P7079727429198498431.Spec : Prop :=
  ∀ n, P7079727429198498431.a n = A017515 n

theorem P7079727429198498431.correct : P7079727429198498431.Spec := by
  intro n
  simp only [A017515, Nat.add_sub_cancel, A017515.P7079727429198498431.a, A017515.P2294465166120881286.a, A017509, A017509.P7373483985674399481.a, A017511, A017511.P12732960829151293587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017515

/-! ## A017515.P13922927916155722451

`A017509(n)²*A017513(n)`
-/

namespace A017515.P13922927916155722451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n ^ 2 * A017513 n

end

end A017515.P13922927916155722451

namespace A017515

/-- `A017509(n)²*A017513(n)` -/
def P13922927916155722451.Spec : Prop :=
  ∀ n, P13922927916155722451.a n = A017515 n

theorem P13922927916155722451.correct : P13922927916155722451.Spec := by
  intro n
  simp only [A017515, Nat.add_sub_cancel, A017515.P13922927916155722451.a, A017515.P2294465166120881286.a, A017509, A017509.P7373483985674399481.a, A017513, A017513.P2525228607840274152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017515

/-! ## A017515.P7726288682034353584

`A017512(n)²/A017509(n)`
-/

namespace A017515.P7726288682034353584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017512 n ^ 2 : ℚ) / (A017509 n : ℚ)

end

end A017515.P7726288682034353584

namespace A017515

/-- `A017512(n)²/A017509(n)` -/
def P7726288682034353584.Spec : Prop :=
  ∀ n, P7726288682034353584.a n = (A017515 n : ℚ)

end A017515

/-! ## A017515.P12219371563129039572

`A017513(n)²/A017511(n)`
-/

namespace A017515.P12219371563129039572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017513 n ^ 2 : ℚ) / (A017511 n : ℚ)

end

end A017515.P12219371563129039572

namespace A017515

/-- `A017513(n)²/A017511(n)` -/
def P12219371563129039572.Spec : Prop :=
  ∀ n, P12219371563129039572.a n = (A017515 n : ℚ)

end A017515

/-! ## A017515.P6769486094242749571

`A017517(n)/A017509(n)²`
-/

namespace A017515.P6769486094242749571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017517 n : ℚ) / (A017509 n ^ 2 : ℚ)

end

end A017515.P6769486094242749571

namespace A017515

/-- `A017517(n)/A017509(n)²` -/
def P6769486094242749571.Spec : Prop :=
  ∀ n, P6769486094242749571.a n = (A017515 n : ℚ)

end A017515

/-! ## A017515.P10851854389585045031

`A017514(n)²/A017513(n)`
-/

namespace A017515.P10851854389585045031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017514 n ^ 2 : ℚ) / (A017513 n : ℚ)

end

end A017515.P10851854389585045031

namespace A017515

/-- `A017514(n)²/A017513(n)` -/
def P10851854389585045031.Spec : Prop :=
  ∀ n, P10851854389585045031.a n = (A017515 n : ℚ)

end A017515

/-! ## A017515.P18346932906919623902

`A017519(n)/A017510(n)²`
-/

namespace A017515.P18346932906919623902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017519 n : ℚ) / (A017510 n ^ 2 : ℚ)

end

end A017515.P18346932906919623902

namespace A017515

/-- `A017519(n)/A017510(n)²` -/
def P18346932906919623902.Spec : Prop :=
  ∀ n, P18346932906919623902.a n = (A017515 n : ℚ)

end A017515

/-! ## A017515.P17158750561594088921

`A017517(n)²/A017519(n)`
-/

namespace A017515.P17158750561594088921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017517 n ^ 2 : ℚ) / (A017519 n : ℚ)

end

end A017515.P17158750561594088921

namespace A017515

/-- `A017517(n)²/A017519(n)` -/
def P17158750561594088921.Spec : Prop :=
  ∀ n, P17158750561594088921.a n = (A017515 n : ℚ)

end A017515

/-! ## A017515.P11815939743178087039

`A017510(n)²²/A017509(n)`
-/

namespace A017515.P11815939743178087039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017510 n ^ 2) ^ 2 : ℚ) / (A017509 n : ℚ)

end

end A017515.P11815939743178087039

namespace A017515

/-- `A017510(n)²²/A017509(n)` -/
def P11815939743178087039.Spec : Prop :=
  ∀ n, P11815939743178087039.a n = (A017515 n : ℚ)

end A017515

/-! ## A017515.P16444527931973533058

`A017509(n)*A017510(n)*A017512(n)`
-/

namespace A017515.P16444527931973533058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n * A017510 n * A017512 n

end

end A017515.P16444527931973533058

namespace A017515

/-- `A017509(n)*A017510(n)*A017512(n)` -/
def P16444527931973533058.Spec : Prop :=
  ∀ n, P16444527931973533058.a n = A017515 n

theorem P16444527931973533058.correct : P16444527931973533058.Spec := by
  intro n
  simp only [A017515, Nat.add_sub_cancel, A017515.P16444527931973533058.a, A017515.P2294465166120881286.a, A017509, A017509.P7373483985674399481.a, A017510, A017510.P5520538972762125414.a, A017512, A017512.P12105192073991130614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017515

/-!
# A017516: a(n) = (11*n + 10)^8.

The programs for A017516, the canonical program `A017516.P12124547662525584615` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017516 has offset 0).

The definition of A017516 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+10)^8` (program `A017516.P12124547662525584615`, by `A017516.P12124547662525584615.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017516.P12124547662525584615

`(11*n+10)^8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017516

/-- `(11*n+10)^8` -/
def P12124547662525584615.Spec : Prop :=
  ∀ n, (P12124547662525584615.a n : ℤ) = A017516 n

theorem P12124547662525584615.correct : P12124547662525584615.Spec := by
  intro n
  simp only [A017516]

end A017516

/-! ## A017516.P2099188095591817192

`A017512(n)²`
-/

namespace A017516.P2099188095591817192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017512 n ^ 2

end

end A017516.P2099188095591817192

namespace A017516

/-- `A017512(n)²` -/
def P2099188095591817192.Spec : Prop :=
  ∀ n, P2099188095591817192.a n = A017516 n

theorem P2099188095591817192.correct : P2099188095591817192.Spec := by
  intro n
  simp only [A017516, Nat.add_sub_cancel, A017516.P2099188095591817192.a, A017516.P12124547662525584615.a, A017512, A017512.P12105192073991130614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017516

/-! ## A017516.P14382777397385802072

`A017510(n)²²`
-/

namespace A017516.P14382777397385802072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017510 n ^ 2) ^ 2

end

end A017516.P14382777397385802072

namespace A017516

/-- `A017510(n)²²` -/
def P14382777397385802072.Spec : Prop :=
  ∀ n, P14382777397385802072.a n = A017516 n

theorem P14382777397385802072.correct : P14382777397385802072.Spec := by
  intro n
  simp only [A017516, Nat.add_sub_cancel, A017516.P14382777397385802072.a, A017516.P12124547662525584615.a, A017510, A017510.P5520538972762125414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017516

/-! ## A017516.P13958508540332424915

`(A017509(n)^4)²`
-/

namespace A017516.P13958508540332424915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017509 n ^ 4) ^ 2

end

end A017516.P13958508540332424915

namespace A017516

/-- `(A017509(n)^4)²` -/
def P13958508540332424915.Spec : Prop :=
  ∀ n, P13958508540332424915.a n = A017516 n

theorem P13958508540332424915.correct : P13958508540332424915.Spec := by
  intro n
  simp only [A017516, Nat.add_sub_cancel, A017516.P13958508540332424915.a, A017516.P12124547662525584615.a, A017509, A017509.P7373483985674399481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017516

/-! ## A017516.P14061218460047383328

`(A017497(n)+1)²²²`
-/

namespace A017516.P14061218460047383328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017497 n + 1) ^ 2) ^ 2) ^ 2

end

end A017516.P14061218460047383328

namespace A017516

/-- `(A017497(n)+1)²²²` -/
def P14061218460047383328.Spec : Prop :=
  ∀ n, P14061218460047383328.a n = A017516 n

theorem P14061218460047383328.correct : P14061218460047383328.Spec := by
  intro n
  simp only [A017516, Nat.add_sub_cancel, A017516.P14061218460047383328.a, A017516.P12124547662525584615.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017516

/-! ## A017516.P9024762721191988832

`(A017485(n)+2)²²²`
-/

namespace A017516.P9024762721191988832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017485 n + 2) ^ 2) ^ 2) ^ 2

end

end A017516.P9024762721191988832

namespace A017516

/-- `(A017485(n)+2)²²²` -/
def P9024762721191988832.Spec : Prop :=
  ∀ n, P9024762721191988832.a n = A017516 n

theorem P9024762721191988832.correct : P9024762721191988832.Spec := by
  intro n
  simp only [A017516, Nat.add_sub_cancel, A017516.P9024762721191988832.a, A017516.P12124547662525584615.a, A017485, A017485.P4370091181196038588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017516

/-! ## A017516.P12547105026270944069

`(n-A017641(n))²²²`
-/

namespace A017516.P12547105026270944069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017641 n) ^ 2) ^ 2) ^ 2

end

end A017516.P12547105026270944069

namespace A017516

/-- `(n-A017641(n))²²²` -/
def P12547105026270944069.Spec : Prop :=
  ∀ n, P12547105026270944069.a n = A017516 n

theorem P12547105026270944069.correct : P12547105026270944069.Spec := by
  intro n
  simp only [A017516, Nat.add_sub_cancel, A017516.P12547105026270944069.a, A017516.P12124547662525584615.a, A017641, A017641.P7179824184075428685.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017516

/-! ## A017516.P67277929309360857

`A017509(n)*A017515(n)`
-/

namespace A017516.P67277929309360857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n * A017515 n

end

end A017516.P67277929309360857

namespace A017516

/-- `A017509(n)*A017515(n)` -/
def P67277929309360857.Spec : Prop :=
  ∀ n, P67277929309360857.a n = A017516 n

theorem P67277929309360857.correct : P67277929309360857.Spec := by
  intro n
  simp only [A017516, Nat.add_sub_cancel, A017516.P67277929309360857.a, A017516.P12124547662525584615.a, A017509, A017509.P7373483985674399481.a, A017515, A017515.P2294465166120881286.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017516

/-! ## A017516.P13602059018332942846

`A017510(n)*A017514(n)`
-/

namespace A017516.P13602059018332942846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n * A017514 n

end

end A017516.P13602059018332942846

namespace A017516

/-- `A017510(n)*A017514(n)` -/
def P13602059018332942846.Spec : Prop :=
  ∀ n, P13602059018332942846.a n = A017516 n

theorem P13602059018332942846.correct : P13602059018332942846.Spec := by
  intro n
  simp only [A017516, Nat.add_sub_cancel, A017516.P13602059018332942846.a, A017516.P12124547662525584615.a, A017510, A017510.P5520538972762125414.a, A017514, A017514.P6907510896689921673.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017516

/-! ## A017516.P2626514459153637332

`A017511(n)*A017513(n)`
-/

namespace A017516.P2626514459153637332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017511 n * A017513 n

end

end A017516.P2626514459153637332

namespace A017516

/-- `A017511(n)*A017513(n)` -/
def P2626514459153637332.Spec : Prop :=
  ∀ n, P2626514459153637332.a n = A017516 n

theorem P2626514459153637332.correct : P2626514459153637332.Spec := by
  intro n
  simp only [A017516, Nat.add_sub_cancel, A017516.P2626514459153637332.a, A017516.P12124547662525584615.a, A017511, A017511.P12732960829151293587.a, A017513, A017513.P2525228607840274152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017516

/-! ## A017516.P13798442117730516597

`A017517(n)/A017509(n)`
-/

namespace A017516.P13798442117730516597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017517 n : ℚ) / (A017509 n : ℚ)

end

end A017516.P13798442117730516597

namespace A017516

/-- `A017517(n)/A017509(n)` -/
def P13798442117730516597.Spec : Prop :=
  ∀ n, P13798442117730516597.a n = (A017516 n : ℚ)

end A017516

/-! ## A017516.P14817906605066694890

`A017518(n)/A017510(n)`
-/

namespace A017516.P14817906605066694890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017518 n : ℚ) / (A017510 n : ℚ)

end

end A017516.P14817906605066694890

namespace A017516

/-- `A017518(n)/A017510(n)` -/
def P14817906605066694890.Spec : Prop :=
  ∀ n, P14817906605066694890.a n = (A017516 n : ℚ)

end A017516

/-! ## A017516.P12380561831314992718

`A017519(n)/A017511(n)`
-/

namespace A017516.P12380561831314992718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017519 n : ℚ) / (A017511 n : ℚ)

end

end A017516.P12380561831314992718

namespace A017516

/-- `A017519(n)/A017511(n)` -/
def P12380561831314992718.Spec : Prop :=
  ∀ n, P12380561831314992718.a n = (A017516 n : ℚ)

end A017516

/-! ## A017516.P16669743879532749078

`A017520(n)/A017512(n)`
-/

namespace A017516.P16669743879532749078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017520 n : ℚ) / (A017512 n : ℚ)

end

end A017516.P16669743879532749078

namespace A017516

/-- `A017520(n)/A017512(n)` -/
def P16669743879532749078.Spec : Prop :=
  ∀ n, P16669743879532749078.a n = (A017516 n : ℚ)

end A017516

/-! ## A017516.P3312732541720070551

`(A017515(n)/A017511(n))²`
-/

namespace A017516.P3312732541720070551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017515 n : ℚ) / (A017511 n : ℚ)) ^ 2

end

end A017516.P3312732541720070551

namespace A017516

/-- `(A017515(n)/A017511(n))²` -/
def P3312732541720070551.Spec : Prop :=
  ∀ n, P3312732541720070551.a n = (A017516 n : ℚ)

end A017516

/-! ## A017516.P8549179527129844302

`A017515(n)²/A017514(n)`
-/

namespace A017516.P8549179527129844302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017515 n ^ 2 : ℚ) / (A017514 n : ℚ)

end

end A017516.P8549179527129844302

namespace A017516

/-- `A017515(n)²/A017514(n)` -/
def P8549179527129844302.Spec : Prop :=
  ∀ n, P8549179527129844302.a n = (A017516 n : ℚ)

end A017516

/-! ## A017516.P15990092959457238320

`(A017517(n)/A017513(n))²`
-/

namespace A017516.P15990092959457238320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017517 n : ℚ) / (A017513 n : ℚ)) ^ 2

end

end A017516.P15990092959457238320

namespace A017516

/-- `(A017517(n)/A017513(n))²` -/
def P15990092959457238320.Spec : Prop :=
  ∀ n, P15990092959457238320.a n = (A017516 n : ℚ)

end A017516

/-! ## A017516.P9257045810034668963

`(A017518(n)/A017514(n))²`
-/

namespace A017516.P9257045810034668963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017518 n : ℚ) / (A017514 n : ℚ)) ^ 2

end

end A017516.P9257045810034668963

namespace A017516

/-- `(A017518(n)/A017514(n))²` -/
def P9257045810034668963.Spec : Prop :=
  ∀ n, P9257045810034668963.a n = (A017516 n : ℚ)

end A017516

/-! ## A017516.P3507399821960635156

`(A017519(n)/A017515(n))²`
-/

namespace A017516.P3507399821960635156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017519 n : ℚ) / (A017515 n : ℚ)) ^ 2

end

end A017516.P3507399821960635156

namespace A017516

/-- `(A017519(n)/A017515(n))²` -/
def P3507399821960635156.Spec : Prop :=
  ∀ n, P3507399821960635156.a n = (A017516 n : ℚ)

end A017516

/-! ## A017516.P8925957629848031912

`(A017513(n)²/A017514(n))²`
-/

namespace A017516.P8925957629848031912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017513 n ^ 2 : ℚ) / (A017514 n : ℚ)) ^ 2

end

end A017516.P8925957629848031912

namespace A017516

/-- `(A017513(n)²/A017514(n))²` -/
def P8925957629848031912.Spec : Prop :=
  ∀ n, P8925957629848031912.a n = (A017516 n : ℚ)

end A017516

/-!
# A017517: a(n) = (11*n + 10)^9.

The programs for A017517, the canonical program `A017517.P4690216428464768893` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017517 has offset 0).

The definition of A017517 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+10)^9` (program `A017517.P4690216428464768893`, by `A017517.P4690216428464768893.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017517.P4690216428464768893

`(11*n+10)^9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017517

/-- `(11*n+10)^9` -/
def P4690216428464768893.Spec : Prop :=
  ∀ n, (P4690216428464768893.a n : ℤ) = A017517 n

theorem P4690216428464768893.correct : P4690216428464768893.Spec := by
  intro n
  simp only [A017517]

end A017517

/-! ## A017517.P16040462886929577684

`sqrt(A017514(n)^3)`
-/

namespace A017517.P16040462886929577684
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017514 n ^ 3 : ℝ)

end

end A017517.P16040462886929577684

namespace A017517

/-- `sqrt(A017514(n)^3)` -/
def P16040462886929577684.Spec : Prop :=
  ∀ n, P16040462886929577684.a n = (A017517 n : ℝ)

end A017517

/-! ## A017517.P10063768094619236786

`A017509(n)*A017516(n)`
-/

namespace A017517.P10063768094619236786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n * A017516 n

end

end A017517.P10063768094619236786

namespace A017517

/-- `A017509(n)*A017516(n)` -/
def P10063768094619236786.Spec : Prop :=
  ∀ n, P10063768094619236786.a n = A017517 n

theorem P10063768094619236786.correct : P10063768094619236786.Spec := by
  intro n
  simp only [A017517, Nat.add_sub_cancel, A017517.P10063768094619236786.a, A017517.P4690216428464768893.a, A017509, A017509.P7373483985674399481.a, A017516, A017516.P12124547662525584615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017517

/-! ## A017517.P6642970825079952622

`A017510(n)*A017515(n)`
-/

namespace A017517.P6642970825079952622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n * A017515 n

end

end A017517.P6642970825079952622

namespace A017517

/-- `A017510(n)*A017515(n)` -/
def P6642970825079952622.Spec : Prop :=
  ∀ n, P6642970825079952622.a n = A017517 n

theorem P6642970825079952622.correct : P6642970825079952622.Spec := by
  intro n
  simp only [A017517, Nat.add_sub_cancel, A017517.P6642970825079952622.a, A017517.P4690216428464768893.a, A017510, A017510.P5520538972762125414.a, A017515, A017515.P2294465166120881286.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017517

/-! ## A017517.P15694144715201466180

`A017511(n)*A017514(n)`
-/

namespace A017517.P15694144715201466180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017511 n * A017514 n

end

end A017517.P15694144715201466180

namespace A017517

/-- `A017511(n)*A017514(n)` -/
def P15694144715201466180.Spec : Prop :=
  ∀ n, P15694144715201466180.a n = A017517 n

theorem P15694144715201466180.correct : P15694144715201466180.Spec := by
  intro n
  simp only [A017517, Nat.add_sub_cancel, A017517.P15694144715201466180.a, A017517.P4690216428464768893.a, A017511, A017511.P12732960829151293587.a, A017514, A017514.P6907510896689921673.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017517

/-! ## A017517.P7782404456669731114

`A017512(n)*A017513(n)`
-/

namespace A017517.P7782404456669731114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017512 n * A017513 n

end

end A017517.P7782404456669731114

namespace A017517

/-- `A017512(n)*A017513(n)` -/
def P7782404456669731114.Spec : Prop :=
  ∀ n, P7782404456669731114.a n = A017517 n

theorem P7782404456669731114.correct : P7782404456669731114.Spec := by
  intro n
  simp only [A017517, Nat.add_sub_cancel, A017517.P7782404456669731114.a, A017517.P4690216428464768893.a, A017512, A017512.P12105192073991130614.a, A017513, A017513.P2525228607840274152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017517

/-! ## A017517.P2808824955090164452

`A017518(n)/A017509(n)`
-/

namespace A017517.P2808824955090164452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017518 n : ℚ) / (A017509 n : ℚ)

end

end A017517.P2808824955090164452

namespace A017517

/-- `A017518(n)/A017509(n)` -/
def P2808824955090164452.Spec : Prop :=
  ∀ n, P2808824955090164452.a n = (A017517 n : ℚ)

end A017517

/-! ## A017517.P4989368703488466760

`A017519(n)/A017510(n)`
-/

namespace A017517.P4989368703488466760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017519 n : ℚ) / (A017510 n : ℚ)

end

end A017517.P4989368703488466760

namespace A017517

/-- `A017519(n)/A017510(n)` -/
def P4989368703488466760.Spec : Prop :=
  ∀ n, P4989368703488466760.a n = (A017517 n : ℚ)

end A017517

/-! ## A017517.P15324157289971188141

`A017520(n)/A017511(n)`
-/

namespace A017517.P15324157289971188141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017520 n : ℚ) / (A017511 n : ℚ)

end

end A017517.P15324157289971188141

namespace A017517

/-- `A017520(n)/A017511(n)` -/
def P15324157289971188141.Spec : Prop :=
  ∀ n, P15324157289971188141.a n = (A017517 n : ℚ)

end A017517

/-! ## A017517.P1000234001198114109

`A017512(n)²*A017509(n)`
-/

namespace A017517.P1000234001198114109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017512 n ^ 2 * A017509 n

end

end A017517.P1000234001198114109

namespace A017517

/-- `A017512(n)²*A017509(n)` -/
def P1000234001198114109.Spec : Prop :=
  ∀ n, P1000234001198114109.a n = A017517 n

theorem P1000234001198114109.correct : P1000234001198114109.Spec := by
  intro n
  simp only [A017517, Nat.add_sub_cancel, A017517.P1000234001198114109.a, A017517.P4690216428464768893.a, A017509, A017509.P7373483985674399481.a, A017512, A017512.P12105192073991130614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017517

/-! ## A017517.P13016021261809990655

`A017510(n)²*A017513(n)`
-/

namespace A017517.P13016021261809990655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n ^ 2 * A017513 n

end

end A017517.P13016021261809990655

namespace A017517

/-- `A017510(n)²*A017513(n)` -/
def P13016021261809990655.Spec : Prop :=
  ∀ n, P13016021261809990655.a n = A017517 n

theorem P13016021261809990655.correct : P13016021261809990655.Spec := by
  intro n
  simp only [A017517, Nat.add_sub_cancel, A017517.P13016021261809990655.a, A017517.P4690216428464768893.a, A017510, A017510.P5520538972762125414.a, A017513, A017513.P2525228607840274152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017517

/-! ## A017517.P1997174340469102944

`A017509(n)²*A017515(n)`
-/

namespace A017517.P1997174340469102944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n ^ 2 * A017515 n

end

end A017517.P1997174340469102944

namespace A017517

/-- `A017509(n)²*A017515(n)` -/
def P1997174340469102944.Spec : Prop :=
  ∀ n, P1997174340469102944.a n = A017517 n

theorem P1997174340469102944.correct : P1997174340469102944.Spec := by
  intro n
  simp only [A017517, Nat.add_sub_cancel, A017517.P1997174340469102944.a, A017517.P4690216428464768893.a, A017509, A017509.P7373483985674399481.a, A017515, A017515.P2294465166120881286.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017517

/-! ## A017517.P16323542771978417378

`A017513(n)²/A017509(n)`
-/

namespace A017517.P16323542771978417378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017513 n ^ 2 : ℚ) / (A017509 n : ℚ)

end

end A017517.P16323542771978417378

namespace A017517

/-- `A017513(n)²/A017509(n)` -/
def P16323542771978417378.Spec : Prop :=
  ∀ n, P16323542771978417378.a n = (A017517 n : ℚ)

end A017517

/-! ## A017517.P16972649066217019143

`A017515(n)²/A017513(n)`
-/

namespace A017517.P16972649066217019143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017515 n ^ 2 : ℚ) / (A017513 n : ℚ)

end

end A017517.P16972649066217019143

namespace A017517

/-- `A017515(n)²/A017513(n)` -/
def P16972649066217019143.Spec : Prop :=
  ∀ n, P16972649066217019143.a n = (A017517 n : ℚ)

end A017517

/-! ## A017517.P10893806911859172680

`A017519(n)/A017509(n)²`
-/

namespace A017517.P10893806911859172680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017519 n : ℚ) / (A017509 n ^ 2 : ℚ)

end

end A017517.P10893806911859172680

namespace A017517

/-- `A017519(n)/A017509(n)²` -/
def P10893806911859172680.Spec : Prop :=
  ∀ n, P10893806911859172680.a n = (A017517 n : ℚ)

end A017517

/-! ## A017517.P9634062047557202527

`A017510(n)²²*A017509(n)`
-/

namespace A017517.P9634062047557202527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017510 n ^ 2) ^ 2 * A017509 n

end

end A017517.P9634062047557202527

namespace A017517

/-- `A017510(n)²²*A017509(n)` -/
def P9634062047557202527.Spec : Prop :=
  ∀ n, P9634062047557202527.a n = A017517 n

theorem P9634062047557202527.correct : P9634062047557202527.Spec := by
  intro n
  simp only [A017517, Nat.add_sub_cancel, A017517.P9634062047557202527.a, A017517.P4690216428464768893.a, A017509, A017509.P7373483985674399481.a, A017510, A017510.P5520538972762125414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017517

/-! ## A017517.P14082346804119226308

`A017512(n)²²/A017515(n)`
-/

namespace A017517.P14082346804119226308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017512 n ^ 2) ^ 2 : ℚ) / (A017515 n : ℚ)

end

end A017517.P14082346804119226308

namespace A017517

/-- `A017512(n)²²/A017515(n)` -/
def P14082346804119226308.Spec : Prop :=
  ∀ n, P14082346804119226308.a n = (A017517 n : ℚ)

end A017517

/-! ## A017517.P13725848275584033552

`A017513(n)²²/A017519(n)`
-/

namespace A017517.P13725848275584033552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017513 n ^ 2) ^ 2 : ℚ) / (A017519 n : ℚ)

end

end A017517.P13725848275584033552

namespace A017517

/-- `A017513(n)²²/A017519(n)` -/
def P13725848275584033552.Spec : Prop :=
  ∀ n, P13725848275584033552.a n = (A017517 n : ℚ)

end A017517

/-! ## A017517.P2150635704389703999

`A001017(A017509(n))`
-/

namespace A017517.P2150635704389703999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017509 n).toNat

end

end A017517.P2150635704389703999

namespace A017517

/-- `A001017(A017509(n))` -/
def P2150635704389703999.Spec : Prop :=
  ∀ n, P2150635704389703999.a n = A017517 n

end A017517

/-! ## A017517.P8575243606968688761

`A001017(A017497(n)+1)`
-/

namespace A017517.P8575243606968688761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017497 n + 1).toNat

end

end A017517.P8575243606968688761

namespace A017517

/-- `A001017(A017497(n)+1)` -/
def P8575243606968688761.Spec : Prop :=
  ∀ n, P8575243606968688761.a n = A017517 n

end A017517

/-!
# A017518: a(n) = (11*n + 10)^10.

The programs for A017518, the canonical program `A017518.P18338840761413465051` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017518 has offset 0).

The definition of A017518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017518.P18338840761413465051

`(11*n+10)^10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017518

/-- `(11*n+10)^10` -/
def P18338840761413465051.Spec : Prop :=
  ∀ n, (P18338840761413465051.a n : ℤ) = A017518 n

theorem P18338840761413465051.correct : P18338840761413465051.Spec := by
  intro n
  simp only [A017518]

end A017518

/-! ## A017518.P6871561149901108277

`A017513(n)²`
-/

namespace A017518.P6871561149901108277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017513 n ^ 2

end

end A017518.P6871561149901108277

namespace A017518

/-- `A017513(n)²` -/
def P6871561149901108277.Spec : Prop :=
  ∀ n, P6871561149901108277.a n = A017518 n

theorem P6871561149901108277.correct : P6871561149901108277.Spec := by
  intro n
  simp only [A017518, Nat.add_sub_cancel, A017518.P6871561149901108277.a, A017518.P18338840761413465051.a, A017513, A017513.P2525228607840274152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017518

/-! ## A017518.P4339258584948005602

`A017509(n)*A017517(n)`
-/

namespace A017518.P4339258584948005602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n * A017517 n

end

end A017518.P4339258584948005602

namespace A017518

/-- `A017509(n)*A017517(n)` -/
def P4339258584948005602.Spec : Prop :=
  ∀ n, P4339258584948005602.a n = A017518 n

theorem P4339258584948005602.correct : P4339258584948005602.Spec := by
  intro n
  simp only [A017518, Nat.add_sub_cancel, A017518.P4339258584948005602.a, A017518.P18338840761413465051.a, A017509, A017509.P7373483985674399481.a, A017517, A017517.P4690216428464768893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017518

/-! ## A017518.P15918449281399232867

`A017510(n)*A017516(n)`
-/

namespace A017518.P15918449281399232867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n * A017516 n

end

end A017518.P15918449281399232867

namespace A017518

/-- `A017510(n)*A017516(n)` -/
def P15918449281399232867.Spec : Prop :=
  ∀ n, P15918449281399232867.a n = A017518 n

theorem P15918449281399232867.correct : P15918449281399232867.Spec := by
  intro n
  simp only [A017518, Nat.add_sub_cancel, A017518.P15918449281399232867.a, A017518.P18338840761413465051.a, A017510, A017510.P5520538972762125414.a, A017516, A017516.P12124547662525584615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017518

/-! ## A017518.P15214504372828380804

`A017511(n)*A017515(n)`
-/

namespace A017518.P15214504372828380804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017511 n * A017515 n

end

end A017518.P15214504372828380804

namespace A017518

/-- `A017511(n)*A017515(n)` -/
def P15214504372828380804.Spec : Prop :=
  ∀ n, P15214504372828380804.a n = A017518 n

theorem P15214504372828380804.correct : P15214504372828380804.Spec := by
  intro n
  simp only [A017518, Nat.add_sub_cancel, A017518.P15214504372828380804.a, A017518.P18338840761413465051.a, A017511, A017511.P12732960829151293587.a, A017515, A017515.P2294465166120881286.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017518

/-! ## A017518.P14089116178971650697

`A017512(n)*A017514(n)`
-/

namespace A017518.P14089116178971650697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017512 n * A017514 n

end

end A017518.P14089116178971650697

namespace A017518

/-- `A017512(n)*A017514(n)` -/
def P14089116178971650697.Spec : Prop :=
  ∀ n, P14089116178971650697.a n = A017518 n

theorem P14089116178971650697.correct : P14089116178971650697.Spec := by
  intro n
  simp only [A017518, Nat.add_sub_cancel, A017518.P14089116178971650697.a, A017518.P18338840761413465051.a, A017512, A017512.P12105192073991130614.a, A017514, A017514.P6907510896689921673.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017518

/-! ## A017518.P983993353056104934

`A017519(n)/A017509(n)`
-/

namespace A017518.P983993353056104934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017519 n : ℚ) / (A017509 n : ℚ)

end

end A017518.P983993353056104934

namespace A017518

/-- `A017519(n)/A017509(n)` -/
def P983993353056104934.Spec : Prop :=
  ∀ n, P983993353056104934.a n = (A017518 n : ℚ)

end A017518

/-! ## A017518.P2794444716344353978

`A017520(n)/A017510(n)`
-/

namespace A017518.P2794444716344353978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017520 n : ℚ) / (A017510 n : ℚ)

end

end A017518.P2794444716344353978

namespace A017518

/-- `A017520(n)/A017510(n)` -/
def P2794444716344353978.Spec : Prop :=
  ∀ n, P2794444716344353978.a n = (A017518 n : ℚ)

end A017518

/-! ## A017518.P13210305865773339155

`(A017509(n)*A017512(n))²`
-/

namespace A017518.P13210305865773339155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017509 n * A017512 n) ^ 2

end

end A017518.P13210305865773339155

namespace A017518

/-- `(A017509(n)*A017512(n))²` -/
def P13210305865773339155.Spec : Prop :=
  ∀ n, P13210305865773339155.a n = A017518 n

theorem P13210305865773339155.correct : P13210305865773339155.Spec := by
  intro n
  simp only [A017518, Nat.add_sub_cancel, A017518.P13210305865773339155.a, A017518.P18338840761413465051.a, A017509, A017509.P7373483985674399481.a, A017512, A017512.P12105192073991130614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017518

/-! ## A017518.P951206280129171591

`(A017510(n)*A017511(n))²`
-/

namespace A017518.P951206280129171591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017510 n * A017511 n) ^ 2

end

end A017518.P951206280129171591

namespace A017518

/-- `(A017510(n)*A017511(n))²` -/
def P951206280129171591.Spec : Prop :=
  ∀ n, P951206280129171591.a n = A017518 n

theorem P951206280129171591.correct : P951206280129171591.Spec := by
  intro n
  simp only [A017518, Nat.add_sub_cancel, A017518.P951206280129171591.a, A017518.P18338840761413465051.a, A017510, A017510.P5520538972762125414.a, A017511, A017511.P12732960829151293587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017518

/-! ## A017518.P10081052731746598882

`A017512(n)²*A017510(n)`
-/

namespace A017518.P10081052731746598882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017512 n ^ 2 * A017510 n

end

end A017518.P10081052731746598882

namespace A017518

/-- `A017512(n)²*A017510(n)` -/
def P10081052731746598882.Spec : Prop :=
  ∀ n, P10081052731746598882.a n = A017518 n

theorem P10081052731746598882.correct : P10081052731746598882.Spec := by
  intro n
  simp only [A017518, Nat.add_sub_cancel, A017518.P10081052731746598882.a, A017518.P18338840761413465051.a, A017510, A017510.P5520538972762125414.a, A017512, A017512.P12105192073991130614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017518

/-! ## A017518.P11539842963433109927

`A017511(n)²*A017512(n)`
-/

namespace A017518.P11539842963433109927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017511 n ^ 2 * A017512 n

end

end A017518.P11539842963433109927

namespace A017518

/-- `A017511(n)²*A017512(n)` -/
def P11539842963433109927.Spec : Prop :=
  ∀ n, P11539842963433109927.a n = A017518 n

theorem P11539842963433109927.correct : P11539842963433109927.Spec := by
  intro n
  simp only [A017518, Nat.add_sub_cancel, A017518.P11539842963433109927.a, A017518.P18338840761413465051.a, A017511, A017511.P12732960829151293587.a, A017512, A017512.P12105192073991130614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017518

/-! ## A017518.P18129677233673686180

`A017510(n)²*A017514(n)`
-/

namespace A017518.P18129677233673686180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n ^ 2 * A017514 n

end

end A017518.P18129677233673686180

namespace A017518

/-- `A017510(n)²*A017514(n)` -/
def P18129677233673686180.Spec : Prop :=
  ∀ n, P18129677233673686180.a n = A017518 n

theorem P18129677233673686180.correct : P18129677233673686180.Spec := by
  intro n
  simp only [A017518, Nat.add_sub_cancel, A017518.P18129677233673686180.a, A017518.P18338840761413465051.a, A017510, A017510.P5520538972762125414.a, A017514, A017514.P6907510896689921673.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017518

/-! ## A017518.P13121541775113811204

`A017509(n)²*A017516(n)`
-/

namespace A017518.P13121541775113811204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n ^ 2 * A017516 n

end

end A017518.P13121541775113811204

namespace A017518

/-- `A017509(n)²*A017516(n)` -/
def P13121541775113811204.Spec : Prop :=
  ∀ n, P13121541775113811204.a n = A017518 n

theorem P13121541775113811204.correct : P13121541775113811204.Spec := by
  intro n
  simp only [A017518, Nat.add_sub_cancel, A017518.P13121541775113811204.a, A017518.P18338840761413465051.a, A017509, A017509.P7373483985674399481.a, A017516, A017516.P12124547662525584615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017518

/-! ## A017518.P13687878167057096484

`(A017514(n)/A017509(n))²`
-/

namespace A017518.P13687878167057096484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017514 n : ℚ) / (A017509 n : ℚ)) ^ 2

end

end A017518.P13687878167057096484

namespace A017518

/-- `(A017514(n)/A017509(n))²` -/
def P13687878167057096484.Spec : Prop :=
  ∀ n, P13687878167057096484.a n = (A017518 n : ℚ)

end A017518

/-! ## A017518.P10156515213294883669

`(A017515(n)/A017510(n))²`
-/

namespace A017518.P10156515213294883669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017515 n : ℚ) / (A017510 n : ℚ)) ^ 2

end

end A017518.P10156515213294883669

namespace A017518

/-- `(A017515(n)/A017510(n))²` -/
def P10156515213294883669.Spec : Prop :=
  ∀ n, P10156515213294883669.a n = (A017518 n : ℚ)

end A017518

/-! ## A017518.P1902522317808016091

`A017515(n)²/A017512(n)`
-/

namespace A017518.P1902522317808016091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017515 n ^ 2 : ℚ) / (A017512 n : ℚ)

end

end A017518.P1902522317808016091

namespace A017518

/-- `A017515(n)²/A017512(n)` -/
def P1902522317808016091.Spec : Prop :=
  ∀ n, P1902522317808016091.a n = (A017518 n : ℚ)

end A017518

/-!
# A017519: a(n) = (11*n + 10)^11.

The programs for A017519, the canonical program `A017519.P17262710236021594759` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017519 has offset 0).

The definition of A017519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017519.P17262710236021594759

`(11*n+10)^11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017519

/-- `(11*n+10)^11` -/
def P17262710236021594759.Spec : Prop :=
  ∀ n, (P17262710236021594759.a n : ℤ) = A017519 n

theorem P17262710236021594759.correct : P17262710236021594759.Spec := by
  intro n
  simp only [A017519]

end A017519

/-! ## A017519.P18397712571849448250

`A017509(n)*A017518(n)`
-/

namespace A017519.P18397712571849448250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n * A017518 n

end

end A017519.P18397712571849448250

namespace A017519

/-- `A017509(n)*A017518(n)` -/
def P18397712571849448250.Spec : Prop :=
  ∀ n, P18397712571849448250.a n = A017519 n

theorem P18397712571849448250.correct : P18397712571849448250.Spec := by
  intro n
  simp only [A017519, Nat.add_sub_cancel, A017519.P18397712571849448250.a, A017519.P17262710236021594759.a, A017509, A017509.P7373483985674399481.a, A017518, A017518.P18338840761413465051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017519

/-! ## A017519.P10271385949545291361

`A017510(n)*A017517(n)`
-/

namespace A017519.P10271385949545291361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n * A017517 n

end

end A017519.P10271385949545291361

namespace A017519

/-- `A017510(n)*A017517(n)` -/
def P10271385949545291361.Spec : Prop :=
  ∀ n, P10271385949545291361.a n = A017519 n

theorem P10271385949545291361.correct : P10271385949545291361.Spec := by
  intro n
  simp only [A017519, Nat.add_sub_cancel, A017519.P10271385949545291361.a, A017519.P17262710236021594759.a, A017510, A017510.P5520538972762125414.a, A017517, A017517.P4690216428464768893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017519

/-! ## A017519.P6264963947205260989

`A017511(n)*A017516(n)`
-/

namespace A017519.P6264963947205260989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017511 n * A017516 n

end

end A017519.P6264963947205260989

namespace A017519

/-- `A017511(n)*A017516(n)` -/
def P6264963947205260989.Spec : Prop :=
  ∀ n, P6264963947205260989.a n = A017519 n

theorem P6264963947205260989.correct : P6264963947205260989.Spec := by
  intro n
  simp only [A017519, Nat.add_sub_cancel, A017519.P6264963947205260989.a, A017519.P17262710236021594759.a, A017511, A017511.P12732960829151293587.a, A017516, A017516.P12124547662525584615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017519

/-! ## A017519.P3030985704872030101

`A017512(n)*A017515(n)`
-/

namespace A017519.P3030985704872030101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017512 n * A017515 n

end

end A017519.P3030985704872030101

namespace A017519

/-- `A017512(n)*A017515(n)` -/
def P3030985704872030101.Spec : Prop :=
  ∀ n, P3030985704872030101.a n = A017519 n

theorem P3030985704872030101.correct : P3030985704872030101.Spec := by
  intro n
  simp only [A017519, Nat.add_sub_cancel, A017519.P3030985704872030101.a, A017519.P17262710236021594759.a, A017512, A017512.P12105192073991130614.a, A017515, A017515.P2294465166120881286.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017519

/-! ## A017519.P12256370584455998074

`A017513(n)*A017514(n)`
-/

namespace A017519.P12256370584455998074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017513 n * A017514 n

end

end A017519.P12256370584455998074

namespace A017519

/-- `A017513(n)*A017514(n)` -/
def P12256370584455998074.Spec : Prop :=
  ∀ n, P12256370584455998074.a n = A017519 n

theorem P12256370584455998074.correct : P12256370584455998074.Spec := by
  intro n
  simp only [A017519, Nat.add_sub_cancel, A017519.P12256370584455998074.a, A017519.P17262710236021594759.a, A017513, A017513.P2525228607840274152.a, A017514, A017514.P6907510896689921673.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017519

/-! ## A017519.P1925623810502632933

`A017520(n)/A017509(n)`
-/

namespace A017519.P1925623810502632933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017520 n : ℚ) / (A017509 n : ℚ)

end

end A017519.P1925623810502632933

namespace A017519

/-- `A017520(n)/A017509(n)` -/
def P1925623810502632933.Spec : Prop :=
  ∀ n, P1925623810502632933.a n = (A017519 n : ℚ)

end A017519

/-! ## A017519.P6310336906933766049

`A017513(n)²*A017509(n)`
-/

namespace A017519.P6310336906933766049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017513 n ^ 2 * A017509 n

end

end A017519.P6310336906933766049

namespace A017519

/-- `A017513(n)²*A017509(n)` -/
def P6310336906933766049.Spec : Prop :=
  ∀ n, P6310336906933766049.a n = A017519 n

theorem P6310336906933766049.correct : P6310336906933766049.Spec := by
  intro n
  simp only [A017519, Nat.add_sub_cancel, A017519.P6310336906933766049.a, A017519.P17262710236021594759.a, A017509, A017509.P7373483985674399481.a, A017513, A017513.P2525228607840274152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017519

/-! ## A017519.P6705896882044200992

`A017512(n)²*A017511(n)`
-/

namespace A017519.P6705896882044200992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017512 n ^ 2 * A017511 n

end

end A017519.P6705896882044200992

namespace A017519

/-- `A017512(n)²*A017511(n)` -/
def P6705896882044200992.Spec : Prop :=
  ∀ n, P6705896882044200992.a n = A017519 n

theorem P6705896882044200992.correct : P6705896882044200992.Spec := by
  intro n
  simp only [A017519, Nat.add_sub_cancel, A017519.P6705896882044200992.a, A017519.P17262710236021594759.a, A017511, A017511.P12732960829151293587.a, A017512, A017512.P12105192073991130614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017519

/-! ## A017519.P2301862156038871110

`A017511(n)²*A017513(n)`
-/

namespace A017519.P2301862156038871110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017511 n ^ 2 * A017513 n

end

end A017519.P2301862156038871110

namespace A017519

/-- `A017511(n)²*A017513(n)` -/
def P2301862156038871110.Spec : Prop :=
  ∀ n, P2301862156038871110.a n = A017519 n

theorem P2301862156038871110.correct : P2301862156038871110.Spec := by
  intro n
  simp only [A017519, Nat.add_sub_cancel, A017519.P2301862156038871110.a, A017519.P17262710236021594759.a, A017511, A017511.P12732960829151293587.a, A017513, A017513.P2525228607840274152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017519

/-! ## A017519.P7118575414935882304

`A017510(n)²*A017515(n)`
-/

namespace A017519.P7118575414935882304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n ^ 2 * A017515 n

end

end A017519.P7118575414935882304

namespace A017519

/-- `A017510(n)²*A017515(n)` -/
def P7118575414935882304.Spec : Prop :=
  ∀ n, P7118575414935882304.a n = A017519 n

theorem P7118575414935882304.correct : P7118575414935882304.Spec := by
  intro n
  simp only [A017519, Nat.add_sub_cancel, A017519.P7118575414935882304.a, A017519.P17262710236021594759.a, A017510, A017510.P5520538972762125414.a, A017515, A017515.P2294465166120881286.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017519

/-! ## A017519.P10357758789416657969

`A017509(n)²*A017517(n)`
-/

namespace A017519.P10357758789416657969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n ^ 2 * A017517 n

end

end A017519.P10357758789416657969

namespace A017519

/-- `A017509(n)²*A017517(n)` -/
def P10357758789416657969.Spec : Prop :=
  ∀ n, P10357758789416657969.a n = A017519 n

theorem P10357758789416657969.correct : P10357758789416657969.Spec := by
  intro n
  simp only [A017519, Nat.add_sub_cancel, A017519.P10357758789416657969.a, A017519.P17262710236021594759.a, A017509, A017509.P7373483985674399481.a, A017517, A017517.P4690216428464768893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017519

/-! ## A017519.P3746367014146435815

`A017514(n)²/A017509(n)`
-/

namespace A017519.P3746367014146435815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017514 n ^ 2 : ℚ) / (A017509 n : ℚ)

end

end A017519.P3746367014146435815

namespace A017519

/-- `A017514(n)²/A017509(n)` -/
def P3746367014146435815.Spec : Prop :=
  ∀ n, P3746367014146435815.a n = (A017519 n : ℚ)

end A017519

/-! ## A017519.P1192539753211997825

`A017515(n)²/A017511(n)`
-/

namespace A017519.P1192539753211997825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017515 n ^ 2 : ℚ) / (A017511 n : ℚ)

end

end A017519.P1192539753211997825

namespace A017519

/-- `A017515(n)²/A017511(n)` -/
def P1192539753211997825.Spec : Prop :=
  ∀ n, P1192539753211997825.a n = (A017519 n : ℚ)

end A017519

/-! ## A017519.P6266301065841067866

`A017516(n)²/A017513(n)`
-/

namespace A017519.P6266301065841067866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017516 n ^ 2 : ℚ) / (A017513 n : ℚ)

end

end A017519.P6266301065841067866

namespace A017519

/-- `A017516(n)²/A017513(n)` -/
def P6266301065841067866.Spec : Prop :=
  ∀ n, P6266301065841067866.a n = (A017519 n : ℚ)

end A017519

/-! ## A017519.P9296474643132944599

`A017517(n)²/A017515(n)`
-/

namespace A017519.P9296474643132944599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017517 n ^ 2 : ℚ) / (A017515 n : ℚ)

end

end A017519.P9296474643132944599

namespace A017519

/-- `A017517(n)²/A017515(n)` -/
def P9296474643132944599.Spec : Prop :=
  ∀ n, P9296474643132944599.a n = (A017519 n : ℚ)

end A017519

/-! ## A017519.P17255271651418590708

`A017510(n)²²*A017511(n)`
-/

namespace A017519.P17255271651418590708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017510 n ^ 2) ^ 2 * A017511 n

end

end A017519.P17255271651418590708

namespace A017519

/-- `A017510(n)²²*A017511(n)` -/
def P17255271651418590708.Spec : Prop :=
  ∀ n, P17255271651418590708.a n = A017519 n

theorem P17255271651418590708.correct : P17255271651418590708.Spec := by
  intro n
  simp only [A017519, Nat.add_sub_cancel, A017519.P17255271651418590708.a, A017519.P17262710236021594759.a, A017510, A017510.P5520538972762125414.a, A017511, A017511.P12732960829151293587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017519

/-!
# A017520: a(n) = (11*n + 10)^12.

The programs for A017520, the canonical program `A017520.P5605822555976302289` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017520 has offset 0).

The definition of A017520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017520.P5605822555976302289

`(11*n+10)^12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017520

/-- `(11*n+10)^12` -/
def P5605822555976302289.Spec : Prop :=
  ∀ n, (P5605822555976302289.a n : ℤ) = A017520 n

theorem P5605822555976302289.correct : P5605822555976302289.Spec := by
  intro n
  simp only [A017520]

end A017520

/-! ## A017520.P6113176785765791298

`A017514(n)²`
-/

namespace A017520.P6113176785765791298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017514 n ^ 2

end

end A017520.P6113176785765791298

namespace A017520

/-- `A017514(n)²` -/
def P6113176785765791298.Spec : Prop :=
  ∀ n, P6113176785765791298.a n = A017520 n

theorem P6113176785765791298.correct : P6113176785765791298.Spec := by
  intro n
  simp only [A017520, Nat.add_sub_cancel, A017520.P6113176785765791298.a, A017520.P5605822555976302289.a, A017514, A017514.P6907510896689921673.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017520

/-! ## A017520.P7426725342108024225

`(A017509(n)^6)²`
-/

namespace A017520.P7426725342108024225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017509 n ^ 6) ^ 2

end

end A017520.P7426725342108024225

namespace A017520

/-- `(A017509(n)^6)²` -/
def P7426725342108024225.Spec : Prop :=
  ∀ n, P7426725342108024225.a n = A017520 n

theorem P7426725342108024225.correct : P7426725342108024225.Spec := by
  intro n
  simp only [A017520, Nat.add_sub_cancel, A017520.P7426725342108024225.a, A017520.P5605822555976302289.a, A017509, A017509.P7373483985674399481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017520

/-! ## A017520.P16403961581248859271

`A017509(n)*A017519(n)`
-/

namespace A017520.P16403961581248859271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n * A017519 n

end

end A017520.P16403961581248859271

namespace A017520

/-- `A017509(n)*A017519(n)` -/
def P16403961581248859271.Spec : Prop :=
  ∀ n, P16403961581248859271.a n = A017520 n

theorem P16403961581248859271.correct : P16403961581248859271.Spec := by
  intro n
  simp only [A017520, Nat.add_sub_cancel, A017520.P16403961581248859271.a, A017520.P5605822555976302289.a, A017509, A017509.P7373483985674399481.a, A017519, A017519.P17262710236021594759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017520

/-! ## A017520.P2047113150311466405

`A017510(n)*A017518(n)`
-/

namespace A017520.P2047113150311466405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n * A017518 n

end

end A017520.P2047113150311466405

namespace A017520

/-- `A017510(n)*A017518(n)` -/
def P2047113150311466405.Spec : Prop :=
  ∀ n, P2047113150311466405.a n = A017520 n

theorem P2047113150311466405.correct : P2047113150311466405.Spec := by
  intro n
  simp only [A017520, Nat.add_sub_cancel, A017520.P2047113150311466405.a, A017520.P5605822555976302289.a, A017510, A017510.P5520538972762125414.a, A017518, A017518.P18338840761413465051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017520

/-! ## A017520.P2348483407728398272

`A017511(n)*A017517(n)`
-/

namespace A017520.P2348483407728398272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017511 n * A017517 n

end

end A017520.P2348483407728398272

namespace A017520

/-- `A017511(n)*A017517(n)` -/
def P2348483407728398272.Spec : Prop :=
  ∀ n, P2348483407728398272.a n = A017520 n

theorem P2348483407728398272.correct : P2348483407728398272.Spec := by
  intro n
  simp only [A017520, Nat.add_sub_cancel, A017520.P2348483407728398272.a, A017520.P5605822555976302289.a, A017511, A017511.P12732960829151293587.a, A017517, A017517.P4690216428464768893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017520

/-! ## A017520.P5150753085407826876

`A017512(n)*A017516(n)`
-/

namespace A017520.P5150753085407826876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017512 n * A017516 n

end

end A017520.P5150753085407826876

namespace A017520

/-- `A017512(n)*A017516(n)` -/
def P5150753085407826876.Spec : Prop :=
  ∀ n, P5150753085407826876.a n = A017520 n

theorem P5150753085407826876.correct : P5150753085407826876.Spec := by
  intro n
  simp only [A017520, Nat.add_sub_cancel, A017520.P5150753085407826876.a, A017520.P5605822555976302289.a, A017512, A017512.P12105192073991130614.a, A017516, A017516.P12124547662525584615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017520

/-! ## A017520.P16929852826797240927

`A017513(n)*A017515(n)`
-/

namespace A017520.P16929852826797240927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017513 n * A017515 n

end

end A017520.P16929852826797240927

namespace A017520

/-- `A017513(n)*A017515(n)` -/
def P16929852826797240927.Spec : Prop :=
  ∀ n, P16929852826797240927.a n = A017520 n

theorem P16929852826797240927.correct : P16929852826797240927.Spec := by
  intro n
  simp only [A017520, Nat.add_sub_cancel, A017520.P16929852826797240927.a, A017520.P5605822555976302289.a, A017513, A017513.P2525228607840274152.a, A017515, A017515.P2294465166120881286.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017520

/-! ## A017520.P9460134904919361949

`(A017509(n)*A017513(n))²`
-/

namespace A017520.P9460134904919361949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017509 n * A017513 n) ^ 2

end

end A017520.P9460134904919361949

namespace A017520

/-- `(A017509(n)*A017513(n))²` -/
def P9460134904919361949.Spec : Prop :=
  ∀ n, P9460134904919361949.a n = A017520 n

theorem P9460134904919361949.correct : P9460134904919361949.Spec := by
  intro n
  simp only [A017520, Nat.add_sub_cancel, A017520.P9460134904919361949.a, A017520.P5605822555976302289.a, A017509, A017509.P7373483985674399481.a, A017513, A017513.P2525228607840274152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017520

/-! ## A017520.P13353890504788061153

`(A017510(n)*A017512(n))²`
-/

namespace A017520.P13353890504788061153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017510 n * A017512 n) ^ 2

end

end A017520.P13353890504788061153

namespace A017520

/-- `(A017510(n)*A017512(n))²` -/
def P13353890504788061153.Spec : Prop :=
  ∀ n, P13353890504788061153.a n = A017520 n

theorem P13353890504788061153.correct : P13353890504788061153.Spec := by
  intro n
  simp only [A017520, Nat.add_sub_cancel, A017520.P13353890504788061153.a, A017520.P5605822555976302289.a, A017510, A017510.P5520538972762125414.a, A017512, A017512.P12105192073991130614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017520

/-! ## A017520.P9650593023006299579

`A017513(n)²*A017510(n)`
-/

namespace A017520.P9650593023006299579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017513 n ^ 2 * A017510 n

end

end A017520.P9650593023006299579

namespace A017520

/-- `A017513(n)²*A017510(n)` -/
def P9650593023006299579.Spec : Prop :=
  ∀ n, P9650593023006299579.a n = A017520 n

theorem P9650593023006299579.correct : P9650593023006299579.Spec := by
  intro n
  simp only [A017520, Nat.add_sub_cancel, A017520.P9650593023006299579.a, A017520.P5605822555976302289.a, A017510, A017510.P5520538972762125414.a, A017513, A017513.P2525228607840274152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017520

/-! ## A017520.P9263572090017527276

`A017510(n)²*A017516(n)`
-/

namespace A017520.P9263572090017527276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n ^ 2 * A017516 n

end

end A017520.P9263572090017527276

namespace A017520

/-- `A017510(n)²*A017516(n)` -/
def P9263572090017527276.Spec : Prop :=
  ∀ n, P9263572090017527276.a n = A017520 n

theorem P9263572090017527276.correct : P9263572090017527276.Spec := by
  intro n
  simp only [A017520, Nat.add_sub_cancel, A017520.P9263572090017527276.a, A017520.P5605822555976302289.a, A017510, A017510.P5520538972762125414.a, A017516, A017516.P12124547662525584615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017520

/-! ## A017520.P14902654303375793410

`A017509(n)²*A017518(n)`
-/

namespace A017520.P14902654303375793410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n ^ 2 * A017518 n

end

end A017520.P14902654303375793410

namespace A017520

/-- `A017509(n)²*A017518(n)` -/
def P14902654303375793410.Spec : Prop :=
  ∀ n, P14902654303375793410.a n = A017520 n

theorem P14902654303375793410.correct : P14902654303375793410.Spec := by
  intro n
  simp only [A017520, Nat.add_sub_cancel, A017520.P14902654303375793410.a, A017520.P5605822555976302289.a, A017509, A017509.P7373483985674399481.a, A017518, A017518.P18338840761413465051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017520

/-! ## A017520.P10363263421410131768

`(A017515(n)/A017509(n))²`
-/

namespace A017520.P10363263421410131768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017515 n : ℚ) / (A017509 n : ℚ)) ^ 2

end

end A017520.P10363263421410131768

namespace A017520

/-- `(A017515(n)/A017509(n))²` -/
def P10363263421410131768.Spec : Prop :=
  ∀ n, P10363263421410131768.a n = (A017520 n : ℚ)

end A017520

/-! ## A017520.P1396985267207209136

`A017515(n)²/A017510(n)`
-/

namespace A017520.P1396985267207209136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017515 n ^ 2 : ℚ) / (A017510 n : ℚ)

end

end A017520.P1396985267207209136

namespace A017520

/-- `A017515(n)²/A017510(n)` -/
def P1396985267207209136.Spec : Prop :=
  ∀ n, P1396985267207209136.a n = (A017520 n : ℚ)

end A017520

/-! ## A017520.P8166530393479361400

`(A017518(n)/A017512(n))²`
-/

namespace A017520.P8166530393479361400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017518 n : ℚ) / (A017512 n : ℚ)) ^ 2

end

end A017520.P8166530393479361400

namespace A017520

/-- `(A017518(n)/A017512(n))²` -/
def P8166530393479361400.Spec : Prop :=
  ∀ n, P8166530393479361400.a n = (A017520 n : ℚ)

end A017520

/-!
# A017521: Expansion of 1/((1-3*x)*(1-5*x)*(1-8*x)).

The programs for A017521, the canonical program `A017521.P6920701402188550665` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017521 has offset 0).

The definition of A017521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017521.P6920701402188550665

`13*a(n-1)-40*a(n-2)+3^n` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017521

/-- `13*a(n-1)-40*a(n-2)+3^n` -/
def P6920701402188550665.Spec : Prop :=
  ∀ n, P6920701402188550665.a n = A017521 n

theorem P6920701402188550665.correct : P6920701402188550665.Spec := by
  intro n
  simp only [A017521]

end A017521

/-! ## A017521.P10134597060736924332

`(2^(7+3*n)+3^(3+n)-5^(3+n))/30`
-/

namespace A017521.P10134597060736924332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (7 + 3 * n) + 3 ^ (3 + n) : ℤ) - (5 ^ (3 + n) : ℤ) : ℚ) / 30

end

end A017521.P10134597060736924332

namespace A017521

/-- `(2^(7+3*n)+3^(3+n)-5^(3+n))/30` -/
def P10134597060736924332.Spec : Prop :=
  ∀ n, P10134597060736924332.a n = (A017521 n : ℚ)

theorem P10134597060736924332.correct : P10134597060736924332.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A017521, Nat.add_sub_cancel, A017521.P10134597060736924332.a, A017521.P6920701402188550665.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A017521, Nat.add_sub_cancel, A017521.P10134597060736924332.a, A017521.P6920701402188550665.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A017521

/-! ## A017521.P8340900288986749729

`A016162(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A017521.P8340900288986749729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016162 n + 3 * a (n - 1)

end

end A017521.P8340900288986749729

namespace A017521

/-- `A016162(n)+3*a(n-1)` -/
def P8340900288986749729.Spec : Prop :=
  ∀ n, P8340900288986749729.a n = A017521 n

end A017521

/-! ## A017521.P3120657226332417535

`A005059(n+1)+8*a(n-1)` with `a(0)=1`
-/

namespace A017521.P3120657226332417535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005059 (n + 1) + 8 * a (n - 1)

end

end A017521.P3120657226332417535

namespace A017521

/-- `A005059(n+1)+8*a(n-1)` -/
def P3120657226332417535.Spec : Prop :=
  ∀ n, P3120657226332417535.a n = A017521 n

end A017521

/-! ## A017521.P18004833163299416829

`2*A016277(n)-A016273(n)`
-/

namespace A017521.P18004833163299416829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016277 n - A016273 n

end

end A017521.P18004833163299416829

namespace A017521

/-- `2*A016277(n)-A016273(n)` -/
def P18004833163299416829.Spec : Prop :=
  ∀ n, P18004833163299416829.a n = A017521 n

end A017521

/-! ## A017521.P11810434657562802234

`A016233(n)+A016233(n)-A016214(n)`
-/

namespace A017521.P11810434657562802234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016233 n + (A016233 n - A016214 n)

end

end A017521.P11810434657562802234

namespace A017521

/-- `A016233(n)+A016233(n)-A016214(n)` -/
def P11810434657562802234.Spec : Prop :=
  ∀ n, P11810434657562802234.a n = A017521 n

end A017521

/-! ## A017521.P7712338129618348661

`2*A016233(n)-A016214(n)`
-/

namespace A017521.P7712338129618348661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016233 n - A016214 n

end

end A017521.P7712338129618348661

namespace A017521

/-- `2*A016233(n)-A016214(n)` -/
def P7712338129618348661.Spec : Prop :=
  ∀ n, P7712338129618348661.a n = A017521 n

end A017521

/-!
# A017522: a(n) = (12*n)^2.

The programs for A017522, the canonical program `A017522.P11201707691828712475` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017522 has offset 0).

The definition of A017522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n)²` (program `A017522.P11201707691828712475`, by `A017522.P11201707691828712475.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017522.P11201707691828712475

`(12*n)²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017522

/-- `(12*n)²` -/
def P11201707691828712475.Spec : Prop :=
  ∀ n, (P11201707691828712475.a n : ℤ) = A017522 n

theorem P11201707691828712475.correct : P11201707691828712475.Spec := by
  intro n
  simp only [A017522]

end A017522

/-!
# A017523: a(n) = (12*n)^3.

The programs for A017523, the canonical program `A017523.P12342318998611944109` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017523 has offset 0).

The definition of A017523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n)^3` (program `A017523.P12342318998611944109`, by `A017523.P12342318998611944109.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017523.P12342318998611944109

`(12*n)^3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017523

/-- `(12*n)^3` -/
def P12342318998611944109.Spec : Prop :=
  ∀ n, (P12342318998611944109.a n : ℤ) = A017523 n

theorem P12342318998611944109.correct : P12342318998611944109.Spec := by
  intro n
  simp only [A017523]

end A017523

/-!
# A017524: a(n) = (12*n)^4.

The programs for A017524, the canonical program `A017524.P351418201084556396` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017524 has offset 0).

The definition of A017524 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n)^4` (program `A017524.P351418201084556396`, by `A017524.P351418201084556396.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017524.P351418201084556396

`(12*n)^4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017524

/-- `(12*n)^4` -/
def P351418201084556396.Spec : Prop :=
  ∀ n, (P351418201084556396.a n : ℤ) = A017524 n

theorem P351418201084556396.correct : P351418201084556396.Spec := by
  intro n
  simp only [A017524]

end A017524

/-!
# A017525: a(n) = (12*n)^5.

The programs for A017525, the canonical program `A017525.P2526327894701238803` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017525 has offset 0).

The definition of A017525 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n)^5` (program `A017525.P2526327894701238803`, by `A017525.P2526327894701238803.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017525.P2526327894701238803

`(12*n)^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017525

/-- `(12*n)^5` -/
def P2526327894701238803.Spec : Prop :=
  ∀ n, (P2526327894701238803.a n : ℤ) = A017525 n

theorem P2526327894701238803.correct : P2526327894701238803.Spec := by
  intro n
  simp only [A017525]

end A017525

/-!
# A017526: a(n) = (12*n)^6.

The programs for A017526, the canonical program `A017526.P9392343094045990752` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017526 has offset 0).

The definition of A017526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n)^6` (program `A017526.P9392343094045990752`, by `A017526.P9392343094045990752.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017526.P9392343094045990752

`(12*n)^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017526

/-- `(12*n)^6` -/
def P9392343094045990752.Spec : Prop :=
  ∀ n, (P9392343094045990752.a n : ℤ) = A017526 n

theorem P9392343094045990752.correct : P9392343094045990752.Spec := by
  intro n
  simp only [A017526]

end A017526

/-!
# A017527: a(n) = (12*n)^7.

The programs for A017527, the canonical program `A017527.P3673250546679108038` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017527 has offset 0).

The definition of A017527 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n)^7` (program `A017527.P3673250546679108038`, by `A017527.P3673250546679108038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017527.P3673250546679108038

`(12*n)^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017527

/-- `(12*n)^7` -/
def P3673250546679108038.Spec : Prop :=
  ∀ n, (P3673250546679108038.a n : ℤ) = A017527 n

theorem P3673250546679108038.correct : P3673250546679108038.Spec := by
  intro n
  simp only [A017527]

end A017527

/-!
# A017528: a(n) = (12*n)^8.

The programs for A017528, the canonical program `A017528.P2051956798237504593` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017528 has offset 0).

The definition of A017528 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n)^8` (program `A017528.P2051956798237504593`, by `A017528.P2051956798237504593.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017528.P2051956798237504593

`(12*n)^8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017528

/-- `(12*n)^8` -/
def P2051956798237504593.Spec : Prop :=
  ∀ n, (P2051956798237504593.a n : ℤ) = A017528 n

theorem P2051956798237504593.correct : P2051956798237504593.Spec := by
  intro n
  simp only [A017528]

end A017528

/-!
# A017529: a(n) = (12*n)^9.

The programs for A017529, the canonical program `A017529.P14060819678279929919` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017529 has offset 0).

The definition of A017529 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n)^9` (program `A017529.P14060819678279929919`, by `A017529.P14060819678279929919.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017529.P14060819678279929919

`(12*n)^9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017529

/-- `(12*n)^9` -/
def P14060819678279929919.Spec : Prop :=
  ∀ n, (P14060819678279929919.a n : ℤ) = A017529 n

theorem P14060819678279929919.correct : P14060819678279929919.Spec := by
  intro n
  simp only [A017529]

end A017529

/-!
# A017530: a(n) = (12*n)^10.

The programs for A017530, the canonical program `A017530.P4551179437338694486` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017530 has offset 0).

The definition of A017530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017530.P4551179437338694486

`(12*n)^10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017530

/-- `(12*n)^10` -/
def P4551179437338694486.Spec : Prop :=
  ∀ n, (P4551179437338694486.a n : ℤ) = A017530 n

theorem P4551179437338694486.correct : P4551179437338694486.Spec := by
  intro n
  simp only [A017530]

end A017530

/-!
# A017531: a(n) = (12*n)^11.

The programs for A017531, the canonical program `A017531.P9594972403432298385` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017531 has offset 0).

The definition of A017531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017531.P9594972403432298385

`(12*n)^11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017531

/-- `(12*n)^11` -/
def P9594972403432298385.Spec : Prop :=
  ∀ n, (P9594972403432298385.a n : ℤ) = A017531 n

theorem P9594972403432298385.correct : P9594972403432298385.Spec := by
  intro n
  simp only [A017531]

end A017531

/-!
# A017532: a(n) = (12*n)^12.

The programs for A017532, the canonical program `A017532.P15576571293824864821` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017532 has offset 0).

The definition of A017532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017532.P15576571293824864821

`(12*n)^12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017532

/-- `(12*n)^12` -/
def P15576571293824864821.Spec : Prop :=
  ∀ n, (P15576571293824864821.a n : ℤ) = A017532 n

theorem P15576571293824864821.correct : P15576571293824864821.Spec := by
  intro n
  simp only [A017532]

end A017532

/-!
# A017533: a(n) = 12*n + 1.

The programs for A017533, the canonical program `A017533.P146508076441825746` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017533 has offset 0).

The definition of A017533 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n+1` (program `A017533.P146508076441825746`, by `A017533.P146508076441825746.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017533.P146508076441825746

`12*n+1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017533

/-- `12*n+1` -/
def P146508076441825746.Spec : Prop :=
  ∀ n, (P146508076441825746.a n : ℤ) = A017533 n

theorem P146508076441825746.correct : P146508076441825746.Spec := by
  intro n
  simp only [A017533]

end A017533

/-!
# A017534: a(n) = (12*n + 1)^2.

The programs for A017534, the canonical program `A017534.P18326514334582417356` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017534 has offset 0).

The definition of A017534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+1)²` (program `A017534.P18326514334582417356`, by `A017534.P18326514334582417356.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017534.P18326514334582417356

`(12*n+1)²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017534

/-- `(12*n+1)²` -/
def P18326514334582417356.Spec : Prop :=
  ∀ n, (P18326514334582417356.a n : ℤ) = A017534 n

theorem P18326514334582417356.correct : P18326514334582417356.Spec := by
  intro n
  simp only [A017534]

end A017534

/-! ## A017534.P6692498043645967648

`ogf((1+166x+121x^2)/(1-3x+3x^2-x^3))`
-/

namespace A017534.P6692498043645967648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 166, 121] [1, -3, 3, -1] n

end

end A017534.P6692498043645967648

namespace A017534

/-- `ogf((1+166x+121x^2)/(1-3x+3x^2-x^3))` -/
def P6692498043645967648.Spec : Prop :=
  ∀ n, P6692498043645967648.a n = A017534 n

end A017534

/-! ## A017534.P16630793100202980375

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=169, a(2)=625`
-/

namespace A017534.P16630793100202980375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 169, 625] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017534.P16630793100202980375

namespace A017534

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P16630793100202980375.Spec : Prop :=
  ∀ n, P16630793100202980375.a n = A017534 n

theorem P16630793100202980375.correct : P16630793100202980375.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017534, Nat.add_sub_cancel, A017534.P16630793100202980375.a, A017534.P18326514334582417356.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017534, Nat.add_sub_cancel, A017534.P16630793100202980375.a, A017534.P18326514334582417356.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A017534

/-! ## A017534.P12772494433894488540

`or(1, 12*n)^2`
-/

namespace A017534.P12772494433894488540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (12 * n) ^ 2

end

end A017534.P12772494433894488540

namespace A017534

/-- `or(1, 12*n)^2` -/
def P12772494433894488540.Spec : Prop :=
  ∀ n, (P12772494433894488540.a n : ℤ) = A017534 n

end A017534

/-! ## A017534.P16891855854828108561

`xor(1, 12*n)*xor(1, 12*n)`
-/

namespace A017534.P16891855854828108561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (12 * n) * Nat.xor 1 (12 * n)

end

end A017534.P16891855854828108561

namespace A017534

/-- `xor(1, 12*n)*xor(1, 12*n)` -/
def P16891855854828108561.Spec : Prop :=
  ∀ n, (P16891855854828108561.a n : ℤ) = A017534 n

end A017534

/-! ## A017534.P11463363433048059804

`sqrt(A017536(n))`
-/

namespace A017534.P11463363433048059804
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017536 n : ℝ)

end

end A017534.P11463363433048059804

namespace A017534

/-- `sqrt(A017536(n))` -/
def P11463363433048059804.Spec : Prop :=
  ∀ n, P11463363433048059804.a n = (A017534 n : ℝ)

end A017534

/-! ## A017534.P1014120060256039098

`A017533(n)^2`
-/

namespace A017534.P1014120060256039098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n ^ 2

end

end A017534.P1014120060256039098

namespace A017534

/-- `A017533(n)^2` -/
def P1014120060256039098.Spec : Prop :=
  ∀ n, P1014120060256039098.a n = A017534 n

theorem P1014120060256039098.correct : P1014120060256039098.Spec := by
  intro n
  simp only [A017534, Nat.add_sub_cancel, A017534.P1014120060256039098.a, A017534.P18326514334582417356.a, A017533, A017533.P146508076441825746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017534

/-! ## A017534.P15031799723673852245

`sqrt(sqrt(A017540(n)))`
-/

namespace A017534.P15031799723673852245
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017540 n : ℝ))

end

end A017534.P15031799723673852245

namespace A017534

/-- `sqrt(sqrt(A017540(n)))` -/
def P15031799723673852245.Spec : Prop :=
  ∀ n, P15031799723673852245.a n = (A017534 n : ℝ)

end A017534

/-! ## A017534.P16030498666304287263

`A017538(n)^(1/3)`
-/

namespace A017534.P16030498666304287263
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017538 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017534.P16030498666304287263

namespace A017534

/-- `A017538(n)^(1/3)` -/
def P16030498666304287263.Spec : Prop :=
  ∀ n, P16030498666304287263.a n = (A017534 n : ℝ)

end A017534

/-! ## A017534.P12586415110839868264

`A017535(n)^(2/3)`
-/

namespace A017534.P12586415110839868264
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017535 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017534.P12586415110839868264

namespace A017534

/-- `A017535(n)^(2/3)` -/
def P12586415110839868264.Spec : Prop :=
  ∀ n, P12586415110839868264.a n = (A017534 n : ℝ)

end A017534

/-! ## A017534.P411674661038832890

`record[(-(2*n+1))^(5-A020639(n+3))]`
-/

namespace A017534.P411674661038832890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(2 * n + 1 : ℤ) : ℚ) ^ (5 - A020639 (n + 3) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017534.P411674661038832890

namespace A017534

/-- `record[(-(2*n+1))^(5-A020639(n+3))]` -/
def P411674661038832890.Spec : Prop :=
  ∀ n, P411674661038832890.a n = (A017534 n : ℚ)

end A017534

/-! ## A017534.P8373809386442119668

`A103214(n)+A017522(n)`
-/

namespace A017534.P8373809386442119668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n + A017522 n

end

end A017534.P8373809386442119668

namespace A017534

/-- `A103214(n)+A017522(n)` -/
def P8373809386442119668.Spec : Prop :=
  ∀ n, P8373809386442119668.a n = A017534 n

theorem P8373809386442119668.correct : P8373809386442119668.Spec := by
  intro n
  simp only [A017534, Nat.add_sub_cancel, A017534.P8373809386442119668.a, A017534.P18326514334582417356.a, A017522, A017522.P11201707691828712475.a, A103214, A103214.P17136705003217623136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017534

/-! ## A017534.P10311698311256749304

`A017535(n)/A017533(n)`
-/

namespace A017534.P10311698311256749304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017535 n : ℚ) / (A017533 n : ℚ)

end

end A017534.P10311698311256749304

namespace A017534

/-- `A017535(n)/A017533(n)` -/
def P10311698311256749304.Spec : Prop :=
  ∀ n, P10311698311256749304.a n = (A017534 n : ℚ)

end A017534

/-! ## A017534.P2408269322171324258

`A017537(n)/A017535(n)`
-/

namespace A017534.P2408269322171324258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017537 n : ℚ) / (A017535 n : ℚ)

end

end A017534.P2408269322171324258

namespace A017534

/-- `A017537(n)/A017535(n)` -/
def P2408269322171324258.Spec : Prop :=
  ∀ n, P2408269322171324258.a n = (A017534 n : ℚ)

end A017534

/-! ## A017534.P13604991533777935643

`A017538(n)/A017536(n)`
-/

namespace A017534.P13604991533777935643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017538 n : ℚ) / (A017536 n : ℚ)

end

end A017534.P13604991533777935643

namespace A017534

/-- `A017538(n)/A017536(n)` -/
def P13604991533777935643.Spec : Prop :=
  ∀ n, P13604991533777935643.a n = (A017534 n : ℚ)

end A017534

/-! ## A017534.P11668801720640469518

`A017535(n)²/A017536(n)`
-/

namespace A017534.P11668801720640469518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017535 n ^ 2 : ℚ) / (A017536 n : ℚ)

end

end A017534.P11668801720640469518

namespace A017534

/-- `A017535(n)²/A017536(n)` -/
def P11668801720640469518.Spec : Prop :=
  ∀ n, P11668801720640469518.a n = (A017534 n : ℚ)

end A017534

/-! ## A017534.P12521853180039835518

`A017538(n)/A017533(n)²²`
-/

namespace A017534.P12521853180039835518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017538 n : ℚ) / ((A017533 n ^ 2) ^ 2 : ℚ)

end

end A017534.P12521853180039835518

namespace A017534

/-- `A017538(n)/A017533(n)²²` -/
def P12521853180039835518.Spec : Prop :=
  ∀ n, P12521853180039835518.a n = (A017534 n : ℚ)

end A017534

/-! ## A017534.P9061491500618203533

`24*n*Δ[A000567(n)]+1`
-/

namespace A017534.P9061491500618203533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * ((n : ℤ) * (f1 (n + 1) - f1 n)) + 1

end

end A017534.P9061491500618203533

namespace A017534

/-- `24*n*Δ[A000567(n)]+1` -/
def P9061491500618203533.Spec : Prop :=
  ∀ n, P9061491500618203533.a n = A017534 n

theorem P9061491500618203533.correct : P9061491500618203533.Spec := by
  intro n
  simp only [A017534, Nat.add_sub_cancel, A017534.P9061491500618203533.f1, A017534.P9061491500618203533.a, A017534.P18326514334582417356.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017534

/-! ## A017534.P7598263262931039858

`A255185(n+1)²/(n+1)²`
-/

namespace A017534.P7598263262931039858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255185 (n + 1) ^ 2 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A017534.P7598263262931039858

namespace A017534

/-- `A255185(n+1)²/(n+1)²` -/
def P7598263262931039858.Spec : Prop :=
  ∀ n, P7598263262931039858.a n = (A017534 n : ℚ)

theorem P7598263262931039858.correct : P7598263262931039858.Spec := by
  intro n
  simp only [A017534, Nat.add_sub_cancel, A017534.P7598263262931039858.a, A017534.P18326514334582417356.a, A255185, A255185.P14062524724034212959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017534

/-! ## A017534.P4793997071077331005

`A016922(2*n)`
-/

namespace A017534.P4793997071077331005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 (2 * n)

end

end A017534.P4793997071077331005

namespace A017534

/-- `A016922(2*n)` -/
def P4793997071077331005.Spec : Prop :=
  ∀ n, P4793997071077331005.a n = A017534 n

theorem P4793997071077331005.correct : P4793997071077331005.Spec := by
  intro n
  simp only [A017534, Nat.add_sub_cancel, A017534.P4793997071077331005.a, A017534.P18326514334582417356.a, A016922, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017534

/-!
# A017535: a(n) = (12*n+1)^3.

The programs for A017535, the canonical program `A017535.P6022267949246297963` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017535 has offset 0).

The definition of A017535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+1)^3` (program `A017535.P6022267949246297963`, by `A017535.P6022267949246297963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017535.P6022267949246297963

`(12*n+1)^3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017535

/-- `(12*n+1)^3` -/
def P6022267949246297963.Spec : Prop :=
  ∀ n, (P6022267949246297963.a n : ℤ) = A017535 n

theorem P6022267949246297963.correct : P6022267949246297963.Spec := by
  intro n
  simp only [A017535]

end A017535

/-! ## A017535.P955605928757555270

`A000578(A017533(n))`
-/

namespace A017535.P955605928757555270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A017533 n).toNat

end

end A017535.P955605928757555270

namespace A017535

/-- `A000578(A017533(n))` -/
def P955605928757555270.Spec : Prop :=
  ∀ n, P955605928757555270.a n = A017535 n

end A017535

/-! ## A017535.P16605091539099089274

`sqrt(A017538(n))`
-/

namespace A017535.P16605091539099089274
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017538 n : ℝ)

end

end A017535.P16605091539099089274

namespace A017535

/-- `sqrt(A017538(n))` -/
def P16605091539099089274.Spec : Prop :=
  ∀ n, P16605091539099089274.a n = (A017535 n : ℝ)

end A017535

/-! ## A017535.P10019415953785675039

`sqrt(A017534(n)^3)`
-/

namespace A017535.P10019415953785675039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017534 n ^ 3 : ℝ)

end

end A017535.P10019415953785675039

namespace A017535

/-- `sqrt(A017534(n)^3)` -/
def P10019415953785675039.Spec : Prop :=
  ∀ n, P10019415953785675039.a n = (A017535 n : ℝ)

end A017535

/-! ## A017535.P10194229514015726465

`A017533(n)*A017534(n)`
-/

namespace A017535.P10194229514015726465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n * A017534 n

end

end A017535.P10194229514015726465

namespace A017535

/-- `A017533(n)*A017534(n)` -/
def P10194229514015726465.Spec : Prop :=
  ∀ n, P10194229514015726465.a n = A017535 n

theorem P10194229514015726465.correct : P10194229514015726465.Spec := by
  intro n
  simp only [A017535, Nat.add_sub_cancel, A017535.P10194229514015726465.a, A017535.P6022267949246297963.a, A017533, A017533.P146508076441825746.a, A017534, A017534.P18326514334582417356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017535

/-! ## A017535.P9223232110895308470

`A017536(n)/A017533(n)`
-/

namespace A017535.P9223232110895308470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017536 n : ℚ) / (A017533 n : ℚ)

end

end A017535.P9223232110895308470

namespace A017535

/-- `A017536(n)/A017533(n)` -/
def P9223232110895308470.Spec : Prop :=
  ∀ n, P9223232110895308470.a n = (A017535 n : ℚ)

end A017535

/-! ## A017535.P4044991340646953719

`A017537(n)/A017534(n)`
-/

namespace A017535.P4044991340646953719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017537 n : ℚ) / (A017534 n : ℚ)

end

end A017535.P4044991340646953719

namespace A017535

/-- `A017537(n)/A017534(n)` -/
def P4044991340646953719.Spec : Prop :=
  ∀ n, P4044991340646953719.a n = (A017535 n : ℚ)

end A017535

/-! ## A017535.P7386167981833460372

`A017537(n)/A017533(n)²`
-/

namespace A017535.P7386167981833460372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017537 n : ℚ) / (A017533 n ^ 2 : ℚ)

end

end A017535.P7386167981833460372

namespace A017535

/-- `A017537(n)/A017533(n)²` -/
def P7386167981833460372.Spec : Prop :=
  ∀ n, P7386167981833460372.a n = (A017535 n : ℚ)

end A017535

/-! ## A017535.P9381186112177853871

`(A008594(n)+1)*A017533(n)²`
-/

namespace A017535.P9381186112177853871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008594 n + 1) * A017533 n ^ 2

end

end A017535.P9381186112177853871

namespace A017535

/-- `(A008594(n)+1)*A017533(n)²` -/
def P9381186112177853871.Spec : Prop :=
  ∀ n, P9381186112177853871.a n = A017535 n

theorem P9381186112177853871.correct : P9381186112177853871.Spec := by
  intro n
  simp only [A017535, Nat.add_sub_cancel, A017535.P9381186112177853871.a, A017535.P6022267949246297963.a, A008594, A008594.P9877215682521385096.a, A017533, A017533.P146508076441825746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017535

/-! ## A017535.P7077771633765295768

`A017538(n)/(A017533(n)²*A017533(n))`
-/

namespace A017535.P7077771633765295768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017538 n : ℚ) / (A017533 n ^ 2 * A017533 n : ℚ)

end

end A017535.P7077771633765295768

namespace A017535

/-- `A017538(n)/(A017533(n)²*A017533(n))` -/
def P7077771633765295768.Spec : Prop :=
  ∀ n, P7077771633765295768.a n = (A017535 n : ℚ)

end A017535

/-! ## A017535.P18057507537648239231

`xor(2, Δ[A051866(n)]^3+1)+1`
-/

namespace A017535.P18057507537648239231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((f1 (n + 1) - f1 n) ^ 3 + 1) + 1

end

end A017535.P18057507537648239231

namespace A017535

/-- `xor(2, Δ[A051866(n)]^3+1)+1` -/
def P18057507537648239231.Spec : Prop :=
  ∀ n, P18057507537648239231.a n = A017535 n

end A017535

/-! ## A017535.P4251428187463644458

`Δ[A033568(n)]²*Δ[A033568(n)]`
-/

namespace A017535.P4251428187463644458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017535.P4251428187463644458

namespace A017535

/-- `Δ[A033568(n)]²*Δ[A033568(n)]` -/
def P4251428187463644458.Spec : Prop :=
  ∀ n, P4251428187463644458.a n = A017535 n

theorem P4251428187463644458.correct : P4251428187463644458.Spec := by
  intro n
  simp only [A017535, Nat.add_sub_cancel, A017535.P4251428187463644458.f1, A017535.P4251428187463644458.f2, A017535.P4251428187463644458.a, A017535.P6022267949246297963.a, A033568, A033568.P8873267953823805199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017535

/-! ## A017535.P3776064892692238578

`Δ[A051866(n)]²*Δ[A051866(n)]`
-/

namespace A017535.P3776064892692238578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017535.P3776064892692238578

namespace A017535

/-- `Δ[A051866(n)]²*Δ[A051866(n)]` -/
def P3776064892692238578.Spec : Prop :=
  ∀ n, P3776064892692238578.a n = A017535 n

theorem P3776064892692238578.correct : P3776064892692238578.Spec := by
  intro n
  simp only [A017535, Nat.add_sub_cancel, A017535.P3776064892692238578.f1, A017535.P3776064892692238578.f2, A017535.P3776064892692238578.a, A017535.P6022267949246297963.a, A051866, A051866.P7037994286834974710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017535

/-! ## A017535.P13248755553591500673

`A017547(2*n)/8`
-/

namespace A017535.P13248755553591500673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017547 (2 * n) : ℚ) / 8

end

end A017535.P13248755553591500673

namespace A017535

/-- `A017547(2*n)/8` -/
def P13248755553591500673.Spec : Prop :=
  ∀ n, P13248755553591500673.a n = (A017535 n : ℚ)

theorem P13248755553591500673.correct : P13248755553591500673.Spec := by
  intro n
  simp only [A017535, Nat.add_sub_cancel, A017535.P13248755553591500673.a, A017535.P6022267949246297963.a, A017547, A017547.P10391440261630002319.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017535

/-! ## A017535.P2990099526837817209

`A016923(2*n)`
-/

namespace A017535.P2990099526837817209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 (2 * n)

end

end A017535.P2990099526837817209

namespace A017535

/-- `A016923(2*n)` -/
def P2990099526837817209.Spec : Prop :=
  ∀ n, P2990099526837817209.a n = A017535 n

theorem P2990099526837817209.correct : P2990099526837817209.Spec := by
  intro n
  simp only [A017535, Nat.add_sub_cancel, A017535.P2990099526837817209.a, A017535.P6022267949246297963.a, A016923, A016923.P17840807225178979514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017535

/-! ## A017535.P12084933210886898027

`sqrt(A016926(2*n))`
-/

namespace A017535.P12084933210886898027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016926 (2 * n) : ℝ)

end

end A017535.P12084933210886898027

namespace A017535

/-- `sqrt(A016926(2*n))` -/
def P12084933210886898027.Spec : Prop :=
  ∀ n, P12084933210886898027.a n = (A017535 n : ℝ)

end A017535

/-! ## A017535.P7150708443684792660

`sqrt(A016922(2*n)^3)`
-/

namespace A017535.P7150708443684792660
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016922 (2 * n) ^ 3 : ℝ)

end

end A017535.P7150708443684792660

namespace A017535

/-- `sqrt(A016922(2*n)^3)` -/
def P7150708443684792660.Spec : Prop :=
  ∀ n, P7150708443684792660.a n = (A017535 n : ℝ)

end A017535

/-! ## A017535.P6836730966166647907

`A016921(2*n)*A017534(n)`
-/

namespace A017535.P6836730966166647907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (2 * n) * A017534 n

end

end A017535.P6836730966166647907

namespace A017535

/-- `A016921(2*n)*A017534(n)` -/
def P6836730966166647907.Spec : Prop :=
  ∀ n, P6836730966166647907.a n = A017535 n

theorem P6836730966166647907.correct : P6836730966166647907.Spec := by
  intro n
  simp only [A017535, Nat.add_sub_cancel, A017535.P6836730966166647907.a, A017535.P6022267949246297963.a, A016921, A016921.P18318603358862595186.a, A017534, A017534.P18326514334582417356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017535

/-! ## A017535.P18101174766820654815

`A016925(2*n)/A017534(n)`
-/

namespace A017535.P18101174766820654815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016925 (2 * n) : ℚ) / (A017534 n : ℚ)

end

end A017535.P18101174766820654815

namespace A017535

/-- `A016925(2*n)/A017534(n)` -/
def P18101174766820654815.Spec : Prop :=
  ∀ n, P18101174766820654815.a n = (A017535 n : ℚ)

theorem P18101174766820654815.correct : P18101174766820654815.Spec := by
  intro n
  simp only [A017535, Nat.add_sub_cancel, A017535.P18101174766820654815.a, A017535.P6022267949246297963.a, A016925, A016925.P3935835382959505019.a, A017534, A017534.P18326514334582417356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017535

/-! ## A017535.P8288329714731440421

`A016921(2*n)*A016922(2*n)`
-/

namespace A017535.P8288329714731440421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (2 * n) * A016922 (2 * n)

end

end A017535.P8288329714731440421

namespace A017535

/-- `A016921(2*n)*A016922(2*n)` -/
def P8288329714731440421.Spec : Prop :=
  ∀ n, P8288329714731440421.a n = A017535 n

theorem P8288329714731440421.correct : P8288329714731440421.Spec := by
  intro n
  simp only [A017535, Nat.add_sub_cancel, A017535.P8288329714731440421.a, A017535.P6022267949246297963.a, A016921, A016921.P18318603358862595186.a, A016922, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017535

/-!
# A017536: a(n) = (12*n + 1)^4.

The programs for A017536, the canonical program `A017536.P11204243538406648055` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017536 has offset 0).

The definition of A017536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+1)^4` (program `A017536.P11204243538406648055`, by `A017536.P11204243538406648055.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017536.P11204243538406648055

`(12*n+1)^4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017536

/-- `(12*n+1)^4` -/
def P11204243538406648055.Spec : Prop :=
  ∀ n, (P11204243538406648055.a n : ℤ) = A017536 n

theorem P11204243538406648055.correct : P11204243538406648055.Spec := by
  intro n
  simp only [A017536]

end A017536

/-! ## A017536.P8181813913894994643

`or(1, 12*n)²²`
-/

namespace A017536.P8181813913894994643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (12 * n) ^ 2) ^ 2

end

end A017536.P8181813913894994643

namespace A017536

/-- `or(1, 12*n)²²` -/
def P8181813913894994643.Spec : Prop :=
  ∀ n, (P8181813913894994643.a n : ℤ) = A017536 n

end A017536

/-! ## A017536.P156968705718069102

`xor(1, 12*n)²²`
-/

namespace A017536.P156968705718069102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (12 * n) ^ 2) ^ 2

end

end A017536.P156968705718069102

namespace A017536

/-- `xor(1, 12*n)²²` -/
def P156968705718069102.Spec : Prop :=
  ∀ n, (P156968705718069102.a n : ℤ) = A017536 n

end A017536

/-! ## A017536.P560009495466521332

`root(or(1, 12*n), 1/4)`
-/

namespace A017536.P560009495466521332
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (12 * n) : ℝ) ^ (1 / ((1 : ℚ) / 4 : ℝ))

end

end A017536.P560009495466521332

namespace A017536

/-- `root(or(1, 12*n), 1/4)` -/
def P560009495466521332.Spec : Prop :=
  ∀ n, P560009495466521332.a n = (A017536 n : ℝ)

end A017536

/-! ## A017536.P8527636269783460823

`or(1, or(1, 12*n)^4)`
-/

namespace A017536.P8527636269783460823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 1 (12 * n) ^ 4)

end

end A017536.P8527636269783460823

namespace A017536

/-- `or(1, or(1, 12*n)^4)` -/
def P8527636269783460823.Spec : Prop :=
  ∀ n, (P8527636269783460823.a n : ℤ) = A017536 n

end A017536

/-! ## A017536.P11860001776629705155

`A017534(n)²`
-/

namespace A017536.P11860001776629705155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017534 n ^ 2

end

end A017536.P11860001776629705155

namespace A017536

/-- `A017534(n)²` -/
def P11860001776629705155.Spec : Prop :=
  ∀ n, P11860001776629705155.a n = A017536 n

theorem P11860001776629705155.correct : P11860001776629705155.Spec := by
  intro n
  simp only [A017536, Nat.add_sub_cancel, A017536.P11860001776629705155.a, A017536.P11204243538406648055.a, A017534, A017534.P18326514334582417356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017536

/-! ## A017536.P8079980464605413082

`sqrt(A017540(n))`
-/

namespace A017536.P8079980464605413082
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017540 n : ℝ)

end

end A017536.P8079980464605413082

namespace A017536

/-- `sqrt(A017540(n))` -/
def P8079980464605413082.Spec : Prop :=
  ∀ n, P8079980464605413082.a n = (A017536 n : ℝ)

end A017536

/-! ## A017536.P14954724559913867112

`A017533(n)²²`
-/

namespace A017536.P14954724559913867112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017533 n ^ 2) ^ 2

end

end A017536.P14954724559913867112

namespace A017536

/-- `A017533(n)²²` -/
def P14954724559913867112.Spec : Prop :=
  ∀ n, P14954724559913867112.a n = A017536 n

theorem P14954724559913867112.correct : P14954724559913867112.Spec := by
  intro n
  simp only [A017536, Nat.add_sub_cancel, A017536.P14954724559913867112.a, A017536.P11204243538406648055.a, A017533, A017533.P146508076441825746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017536

/-! ## A017536.P375335015182272417

`(A008594(n)+1)²²`
-/

namespace A017536.P375335015182272417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008594 n + 1) ^ 2) ^ 2

end

end A017536.P375335015182272417

namespace A017536

/-- `(A008594(n)+1)²²` -/
def P375335015182272417.Spec : Prop :=
  ∀ n, P375335015182272417.a n = A017536 n

theorem P375335015182272417.correct : P375335015182272417.Spec := by
  intro n
  simp only [A017536, Nat.add_sub_cancel, A017536.P375335015182272417.a, A017536.P11204243538406648055.a, A008594, A008594.P9877215682521385096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017536

/-! ## A017536.P9899931150215735486

`(1-A017545(n))²²`
-/

namespace A017536.P9899931150215735486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017545 n) ^ 2) ^ 2

end

end A017536.P9899931150215735486

namespace A017536

/-- `(1-A017545(n))²²` -/
def P9899931150215735486.Spec : Prop :=
  ∀ n, P9899931150215735486.a n = A017536 n

theorem P9899931150215735486.correct : P9899931150215735486.Spec := by
  intro n
  simp only [A017536, Nat.add_sub_cancel, A017536.P9899931150215735486.a, A017536.P11204243538406648055.a, A017545, A017545.P14965093399951293214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017536

/-! ## A017536.P5252264081963200857

`(2-A017557(n))²²`
-/

namespace A017536.P5252264081963200857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017557 n) ^ 2) ^ 2

end

end A017536.P5252264081963200857

namespace A017536

/-- `(2-A017557(n))²²` -/
def P5252264081963200857.Spec : Prop :=
  ∀ n, P5252264081963200857.a n = A017536 n

theorem P5252264081963200857.correct : P5252264081963200857.Spec := by
  intro n
  simp only [A017536, Nat.add_sub_cancel, A017536.P5252264081963200857.a, A017536.P11204243538406648055.a, A017557, A017557.P7719209615978230604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017536

/-! ## A017536.P2084528065030723447

`(3-A017569(n))²²`
-/

namespace A017536.P2084528065030723447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017569 n) ^ 2) ^ 2

end

end A017536.P2084528065030723447

namespace A017536

/-- `(3-A017569(n))²²` -/
def P2084528065030723447.Spec : Prop :=
  ∀ n, P2084528065030723447.a n = A017536 n

theorem P2084528065030723447.correct : P2084528065030723447.Spec := by
  intro n
  simp only [A017536, Nat.add_sub_cancel, A017536.P2084528065030723447.a, A017536.P11204243538406648055.a, A017569, A017569.P14340039372117997380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017536

/-! ## A017536.P18431267963539515431

`(A017401(n)+n)²²`
-/

namespace A017536.P18431267963539515431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017401 n + (n : ℤ)) ^ 2) ^ 2

end

end A017536.P18431267963539515431

namespace A017536

/-- `(A017401(n)+n)²²` -/
def P18431267963539515431.Spec : Prop :=
  ∀ n, P18431267963539515431.a n = A017536 n

theorem P18431267963539515431.correct : P18431267963539515431.Spec := by
  intro n
  simp only [A017536, Nat.add_sub_cancel, A017536.P18431267963539515431.a, A017536.P11204243538406648055.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017536

/-! ## A017536.P209936683816196873

`(n-A190991(n))²²`
-/

namespace A017536.P209936683816196873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A190991 n) ^ 2) ^ 2

end

end A017536.P209936683816196873

namespace A017536

/-- `(n-A190991(n))²²` -/
def P209936683816196873.Spec : Prop :=
  ∀ n, P209936683816196873.a n = A017536 n

theorem P209936683816196873.correct : P209936683816196873.Spec := by
  intro n
  simp only [A017536, Nat.add_sub_cancel, A017536.P209936683816196873.a, A017536.P11204243538406648055.a, A190991, A190991.P11410187498899268460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017536

/-! ## A017536.P15048092010118528120

`(sqrt(A017522(n))+1)²²`
-/

namespace A017536.P15048092010118528120
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017522 n : ℝ) + 1) ^ 2) ^ 2

end

end A017536.P15048092010118528120

namespace A017536

/-- `(sqrt(A017522(n))+1)²²` -/
def P15048092010118528120.Spec : Prop :=
  ∀ n, P15048092010118528120.a n = (A017536 n : ℝ)

end A017536

/-! ## A017536.P4865732650652006543

`(1-sqrt(A017546(n)))²²`
-/

namespace A017536.P4865732650652006543
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017546 n : ℝ)) ^ 2) ^ 2

end

end A017536.P4865732650652006543

namespace A017536

/-- `(1-sqrt(A017546(n)))²²` -/
def P4865732650652006543.Spec : Prop :=
  ∀ n, P4865732650652006543.a n = (A017536 n : ℝ)

end A017536

/-! ## A017536.P12426278221690704211

`(2-sqrt(A017558(n)))²²`
-/

namespace A017536.P12426278221690704211
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - Real.sqrt (A017558 n : ℝ)) ^ 2) ^ 2

end

end A017536.P12426278221690704211

namespace A017536

/-- `(2-sqrt(A017558(n)))²²` -/
def P12426278221690704211.Spec : Prop :=
  ∀ n, P12426278221690704211.a n = (A017536 n : ℝ)

end A017536

/-! ## A017536.P16703371519484595300

`(sqrt(A017402(n))+n)²²`
-/

namespace A017536.P16703371519484595300
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017402 n : ℝ) + (n : ℝ)) ^ 2) ^ 2

end

end A017536.P16703371519484595300

namespace A017536

/-- `(sqrt(A017402(n))+n)²²` -/
def P16703371519484595300.Spec : Prop :=
  ∀ n, P16703371519484595300.a n = (A017536 n : ℝ)

end A017536

/-! ## A017536.P15164864448559160706

`(A008593(n)+n+1)²²`
-/

namespace A017536.P15164864448559160706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008593 n + (n + 1 : ℤ)) ^ 2) ^ 2

end

end A017536.P15164864448559160706

namespace A017536

/-- `(A008593(n)+n+1)²²` -/
def P15164864448559160706.Spec : Prop :=
  ∀ n, P15164864448559160706.a n = A017536 n

theorem P15164864448559160706.correct : P15164864448559160706.Spec := by
  intro n
  simp only [A017536, Nat.add_sub_cancel, A017536.P15164864448559160706.a, A017536.P11204243538406648055.a, A008593, A008593.P2680892499938115192.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017536

/-! ## A017536.P2085028762021268442

`(1-A153080(n)+n)²²`
-/

namespace A017536.P2085028762021268442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A153080 n + (n : ℤ)) ^ 2) ^ 2

end

end A017536.P2085028762021268442

namespace A017536

/-- `(1-A153080(n)+n)²²` -/
def P2085028762021268442.Spec : Prop :=
  ∀ n, P2085028762021268442.a n = A017536 n

theorem P2085028762021268442.correct : P2085028762021268442.Spec := by
  intro n
  simp only [A017536, Nat.add_sub_cancel, A017536.P2085028762021268442.a, A017536.P11204243538406648055.a, A153080, A153080.P12698486162711412259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017536

/-!
# A017537: a(n) = (12*n + 1)^5.

The programs for A017537, the canonical program `A017537.P15357440824703456013` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017537 has offset 0).

The definition of A017537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+1)^5` (program `A017537.P15357440824703456013`, by `A017537.P15357440824703456013.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017537.P15357440824703456013

`(12*n+1)^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017537

/-- `(12*n+1)^5` -/
def P15357440824703456013.Spec : Prop :=
  ∀ n, (P15357440824703456013.a n : ℤ) = A017537 n

theorem P15357440824703456013.correct : P15357440824703456013.Spec := by
  intro n
  simp only [A017537]

end A017537

/-! ## A017537.P15930211446318103655

`or(1, 12*n)^4*or(1, 12*n)`
-/

namespace A017537.P15930211446318103655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (12 * n) ^ 4 * Nat.lor 1 (12 * n)

end

end A017537.P15930211446318103655

namespace A017537

/-- `or(1, 12*n)^4*or(1, 12*n)` -/
def P15930211446318103655.Spec : Prop :=
  ∀ n, (P15930211446318103655.a n : ℤ) = A017537 n

end A017537

/-! ## A017537.P16943739782511127207

`or(1, 12*n)²²*or(1, 12*n)`
-/

namespace A017537.P16943739782511127207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (12 * n) ^ 2) ^ 2 * Nat.lor 1 (12 * n)

end

end A017537.P16943739782511127207

namespace A017537

/-- `or(1, 12*n)²²*or(1, 12*n)` -/
def P16943739782511127207.Spec : Prop :=
  ∀ n, (P16943739782511127207.a n : ℤ) = A017537 n

end A017537

/-! ## A017537.P10925544988646202548

`xor(1, 12*n)²²*xor(1, 12*n)`
-/

namespace A017537.P10925544988646202548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (12 * n) ^ 2) ^ 2 * Nat.xor 1 (12 * n)

end

end A017537.P10925544988646202548

namespace A017537

/-- `xor(1, 12*n)²²*xor(1, 12*n)` -/
def P10925544988646202548.Spec : Prop :=
  ∀ n, (P10925544988646202548.a n : ℤ) = A017537 n

end A017537

/-! ## A017537.P2204293757063583060

`A017533(n)*A017536(n)`
-/

namespace A017537.P2204293757063583060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n * A017536 n

end

end A017537.P2204293757063583060

namespace A017537

/-- `A017533(n)*A017536(n)` -/
def P2204293757063583060.Spec : Prop :=
  ∀ n, P2204293757063583060.a n = A017537 n

theorem P2204293757063583060.correct : P2204293757063583060.Spec := by
  intro n
  simp only [A017537, Nat.add_sub_cancel, A017537.P2204293757063583060.a, A017537.P15357440824703456013.a, A017533, A017533.P146508076441825746.a, A017536, A017536.P11204243538406648055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017537

/-! ## A017537.P8435095277214826143

`A017534(n)*A017535(n)`
-/

namespace A017537.P8435095277214826143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017534 n * A017535 n

end

end A017537.P8435095277214826143

namespace A017537

/-- `A017534(n)*A017535(n)` -/
def P8435095277214826143.Spec : Prop :=
  ∀ n, P8435095277214826143.a n = A017537 n

theorem P8435095277214826143.correct : P8435095277214826143.Spec := by
  intro n
  simp only [A017537, Nat.add_sub_cancel, A017537.P8435095277214826143.a, A017537.P15357440824703456013.a, A017534, A017534.P18326514334582417356.a, A017535, A017535.P6022267949246297963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017537

/-! ## A017537.P14480418323230505104

`A017538(n)/A017533(n)`
-/

namespace A017537.P14480418323230505104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017538 n : ℚ) / (A017533 n : ℚ)

end

end A017537.P14480418323230505104

namespace A017537

/-- `A017538(n)/A017533(n)` -/
def P14480418323230505104.Spec : Prop :=
  ∀ n, P14480418323230505104.a n = (A017537 n : ℚ)

end A017537

/-! ## A017537.P10983092543187150476

`A017534(n)²*A017533(n)`
-/

namespace A017537.P10983092543187150476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017534 n ^ 2 * A017533 n

end

end A017537.P10983092543187150476

namespace A017537

/-- `A017534(n)²*A017533(n)` -/
def P10983092543187150476.Spec : Prop :=
  ∀ n, P10983092543187150476.a n = A017537 n

theorem P10983092543187150476.correct : P10983092543187150476.Spec := by
  intro n
  simp only [A017537, Nat.add_sub_cancel, A017537.P10983092543187150476.a, A017537.P15357440824703456013.a, A017533, A017533.P146508076441825746.a, A017534, A017534.P18326514334582417356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017537

/-! ## A017537.P12130050386334991180

`A017533(n)²*A017535(n)`
-/

namespace A017537.P12130050386334991180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n ^ 2 * A017535 n

end

end A017537.P12130050386334991180

namespace A017537

/-- `A017533(n)²*A017535(n)` -/
def P12130050386334991180.Spec : Prop :=
  ∀ n, P12130050386334991180.a n = A017537 n

theorem P12130050386334991180.correct : P12130050386334991180.Spec := by
  intro n
  simp only [A017537, Nat.add_sub_cancel, A017537.P12130050386334991180.a, A017537.P15357440824703456013.a, A017533, A017533.P146508076441825746.a, A017535, A017535.P6022267949246297963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017537

/-! ## A017537.P3099994763614306818

`A017536(n)²/A017535(n)`
-/

namespace A017537.P3099994763614306818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017536 n ^ 2 : ℚ) / (A017535 n : ℚ)

end

end A017537.P3099994763614306818

namespace A017537

/-- `A017536(n)²/A017535(n)` -/
def P3099994763614306818.Spec : Prop :=
  ∀ n, P3099994763614306818.a n = (A017537 n : ℚ)

end A017537

/-! ## A017537.P5428186366105350299

`record[(n+1)^(gcd(12, n)-7)]`
-/

namespace A017537.P5428186366105350299
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((Nat.gcd 12 n : ℤ) - 7 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017537.P5428186366105350299

namespace A017537

/-- `record[(n+1)^(gcd(12, n)-7)]` -/
def P5428186366105350299.Spec : Prop :=
  ∀ n, P5428186366105350299.a n = (A017537 n : ℚ)

end A017537

/-! ## A017537.P6454157774820694490

`A016925(2*n)`
-/

namespace A017537.P6454157774820694490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016925 (2 * n)

end

end A017537.P6454157774820694490

namespace A017537

/-- `A016925(2*n)` -/
def P6454157774820694490.Spec : Prop :=
  ∀ n, P6454157774820694490.a n = A017537 n

theorem P6454157774820694490.correct : P6454157774820694490.Spec := by
  intro n
  simp only [A017537, Nat.add_sub_cancel, A017537.P6454157774820694490.a, A017537.P15357440824703456013.a, A016925, A016925.P3935835382959505019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017537

/-! ## A017537.P9373623304093634539

`A016927(2*n)/A017534(n)`
-/

namespace A017537.P9373623304093634539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016927 (2 * n) : ℚ) / (A017534 n : ℚ)

end

end A017537.P9373623304093634539

namespace A017537

/-- `A016927(2*n)/A017534(n)` -/
def P9373623304093634539.Spec : Prop :=
  ∀ n, P9373623304093634539.a n = (A017537 n : ℚ)

theorem P9373623304093634539.correct : P9373623304093634539.Spec := by
  intro n
  simp only [A017537, Nat.add_sub_cancel, A017537.P9373623304093634539.a, A017537.P15357440824703456013.a, A016927, A016927.P17931775019733470070.a, A017534, A017534.P18326514334582417356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017537

/-! ## A017537.P1137300103704350305

`A016927(2*n)/A017533(n)²`
-/

namespace A017537.P1137300103704350305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016927 (2 * n) : ℚ) / (A017533 n ^ 2 : ℚ)

end

end A017537.P1137300103704350305

namespace A017537

/-- `A016927(2*n)/A017533(n)²` -/
def P1137300103704350305.Spec : Prop :=
  ∀ n, P1137300103704350305.a n = (A017537 n : ℚ)

theorem P1137300103704350305.correct : P1137300103704350305.Spec := by
  intro n
  simp only [A017537, Nat.add_sub_cancel, A017537.P1137300103704350305.a, A017537.P15357440824703456013.a, A016927, A016927.P17931775019733470070.a, A017533, A017533.P146508076441825746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017537

/-! ## A017537.P2147119352887243371

`A016921(2*n)*A016924(2*n)`
-/

namespace A017537.P2147119352887243371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (2 * n) * A016924 (2 * n)

end

end A017537.P2147119352887243371

namespace A017537

/-- `A016921(2*n)*A016924(2*n)` -/
def P2147119352887243371.Spec : Prop :=
  ∀ n, P2147119352887243371.a n = A017537 n

theorem P2147119352887243371.correct : P2147119352887243371.Spec := by
  intro n
  simp only [A017537, Nat.add_sub_cancel, A017537.P2147119352887243371.a, A017537.P15357440824703456013.a, A016921, A016921.P18318603358862595186.a, A016924, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017537

/-! ## A017537.P8310687889710111134

`A016922(2*n)*A016923(2*n)`
-/

namespace A017537.P8310687889710111134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 (2 * n) * A016923 (2 * n)

end

end A017537.P8310687889710111134

namespace A017537

/-- `A016922(2*n)*A016923(2*n)` -/
def P8310687889710111134.Spec : Prop :=
  ∀ n, P8310687889710111134.a n = A017537 n

theorem P8310687889710111134.correct : P8310687889710111134.Spec := by
  intro n
  simp only [A017537, Nat.add_sub_cancel, A017537.P8310687889710111134.a, A017537.P15357440824703456013.a, A016922, A016922.P12735287873668454303.a, A016923, A016923.P17840807225178979514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017537

/-! ## A017537.P17536494707956566658

`A016926(2*n)/A016921(2*n)`
-/

namespace A017537.P17536494707956566658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016926 (2 * n) : ℚ) / (A016921 (2 * n) : ℚ)

end

end A017537.P17536494707956566658

namespace A017537

/-- `A016926(2*n)/A016921(2*n)` -/
def P17536494707956566658.Spec : Prop :=
  ∀ n, P17536494707956566658.a n = (A017537 n : ℚ)

theorem P17536494707956566658.correct : P17536494707956566658.Spec := by
  intro n
  simp only [A017537, Nat.add_sub_cancel, A017537.P17536494707956566658.a, A017537.P15357440824703456013.a, A016921, A016921.P18318603358862595186.a, A016926, A016926.P17236842597661192459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017537

/-! ## A017537.P6270219772747355099

`A016927(2*n)/A016922(2*n)`
-/

namespace A017537.P6270219772747355099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016927 (2 * n) : ℚ) / (A016922 (2 * n) : ℚ)

end

end A017537.P6270219772747355099

namespace A017537

/-- `A016927(2*n)/A016922(2*n)` -/
def P6270219772747355099.Spec : Prop :=
  ∀ n, P6270219772747355099.a n = (A017537 n : ℚ)

theorem P6270219772747355099.correct : P6270219772747355099.Spec := by
  intro n
  simp only [A017537, Nat.add_sub_cancel, A017537.P6270219772747355099.a, A017537.P15357440824703456013.a, A016922, A016922.P12735287873668454303.a, A016927, A016927.P17931775019733470070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017537

/-! ## A017537.P10938913460014174772

`A016928(2*n)/A016923(2*n)`
-/

namespace A017537.P10938913460014174772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016928 (2 * n) : ℚ) / (A016923 (2 * n) : ℚ)

end

end A017537.P10938913460014174772

namespace A017537

/-- `A016928(2*n)/A016923(2*n)` -/
def P10938913460014174772.Spec : Prop :=
  ∀ n, P10938913460014174772.a n = (A017537 n : ℚ)

theorem P10938913460014174772.correct : P10938913460014174772.Spec := by
  intro n
  simp only [A017537, Nat.add_sub_cancel, A017537.P10938913460014174772.a, A017537.P15357440824703456013.a, A016923, A016923.P17840807225178979514.a, A016928, A016928.P17353680663625733348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017537

/-! ## A017537.P574603182342610566

`A016929(2*n)/A016924(2*n)`
-/

namespace A017537.P574603182342610566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016929 (2 * n) : ℚ) / (A016924 (2 * n) : ℚ)

end

end A017537.P574603182342610566

namespace A017537

/-- `A016929(2*n)/A016924(2*n)` -/
def P574603182342610566.Spec : Prop :=
  ∀ n, P574603182342610566.a n = (A017537 n : ℚ)

theorem P574603182342610566.correct : P574603182342610566.Spec := by
  intro n
  simp only [A017537, Nat.add_sub_cancel, A017537.P574603182342610566.a, A017537.P15357440824703456013.a, A016924, A016924.P9244154985732422165.a, A016929, A016929.P9280878692414037459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017537

/-!
# A017538: a(n) = (12*n + 1)^6.

The programs for A017538, the canonical program `A017538.P16257653880807579146` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017538 has offset 0).

The definition of A017538 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+1)^6` (program `A017538.P16257653880807579146`, by `A017538.P16257653880807579146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017538.P16257653880807579146

`(12*n+1)^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017538

/-- `(12*n+1)^6` -/
def P16257653880807579146.Spec : Prop :=
  ∀ n, (P16257653880807579146.a n : ℤ) = A017538 n

theorem P16257653880807579146.correct : P16257653880807579146.Spec := by
  intro n
  simp only [A017538]

end A017538

/-! ## A017538.P6964289169242243621

`(or(1, 12*n)^3)²`
-/

namespace A017538.P6964289169242243621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (12 * n) ^ 3) ^ 2

end

end A017538.P6964289169242243621

namespace A017538

/-- `(or(1, 12*n)^3)²` -/
def P6964289169242243621.Spec : Prop :=
  ∀ n, (P6964289169242243621.a n : ℤ) = A017538 n

end A017538

/-! ## A017538.P9444767079393923121

`(xor(1, 12*n)^3)²`
-/

namespace A017538.P9444767079393923121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (12 * n) ^ 3) ^ 2

end

end A017538.P9444767079393923121

namespace A017538

/-- `(xor(1, 12*n)^3)²` -/
def P9444767079393923121.Spec : Prop :=
  ∀ n, (P9444767079393923121.a n : ℤ) = A017538 n

end A017538

/-! ## A017538.P14561033192637596907

`root(or(1, 12*n), 2/12)`
-/

namespace A017538.P14561033192637596907
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (12 * n) : ℝ) ^ (1 / ((2 : ℚ) / 12 : ℝ))

end

end A017538.P14561033192637596907

namespace A017538

/-- `root(or(1, 12*n), 2/12)` -/
def P14561033192637596907.Spec : Prop :=
  ∀ n, P14561033192637596907.a n = (A017538 n : ℝ)

end A017538

/-! ## A017538.P580953383585096420

`A017535(n)²`
-/

namespace A017538.P580953383585096420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017535 n ^ 2

end

end A017538.P580953383585096420

namespace A017538

/-- `A017535(n)²` -/
def P580953383585096420.Spec : Prop :=
  ∀ n, P580953383585096420.a n = A017538 n

theorem P580953383585096420.correct : P580953383585096420.Spec := by
  intro n
  simp only [A017538, Nat.add_sub_cancel, A017538.P580953383585096420.a, A017538.P16257653880807579146.a, A017535, A017535.P6022267949246297963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017538

/-! ## A017538.P17112141328387069622

`(A017533(n)^3)²`
-/

namespace A017538.P17112141328387069622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017533 n ^ 3) ^ 2

end

end A017538.P17112141328387069622

namespace A017538

/-- `(A017533(n)^3)²` -/
def P17112141328387069622.Spec : Prop :=
  ∀ n, P17112141328387069622.a n = A017538 n

theorem P17112141328387069622.correct : P17112141328387069622.Spec := by
  intro n
  simp only [A017538, Nat.add_sub_cancel, A017538.P17112141328387069622.a, A017538.P16257653880807579146.a, A017533, A017533.P146508076441825746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017538

/-! ## A017538.P16320880818862038518

`A017533(n)*A017537(n)`
-/

namespace A017538.P16320880818862038518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n * A017537 n

end

end A017538.P16320880818862038518

namespace A017538

/-- `A017533(n)*A017537(n)` -/
def P16320880818862038518.Spec : Prop :=
  ∀ n, P16320880818862038518.a n = A017538 n

theorem P16320880818862038518.correct : P16320880818862038518.Spec := by
  intro n
  simp only [A017538, Nat.add_sub_cancel, A017538.P16320880818862038518.a, A017538.P16257653880807579146.a, A017533, A017533.P146508076441825746.a, A017537, A017537.P15357440824703456013.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017538

/-! ## A017538.P14212837563909049457

`A017534(n)*A017536(n)`
-/

namespace A017538.P14212837563909049457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017534 n * A017536 n

end

end A017538.P14212837563909049457

namespace A017538

/-- `A017534(n)*A017536(n)` -/
def P14212837563909049457.Spec : Prop :=
  ∀ n, P14212837563909049457.a n = A017538 n

theorem P14212837563909049457.correct : P14212837563909049457.Spec := by
  intro n
  simp only [A017538, Nat.add_sub_cancel, A017538.P14212837563909049457.a, A017538.P16257653880807579146.a, A017534, A017534.P18326514334582417356.a, A017536, A017536.P11204243538406648055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017538

/-! ## A017538.P4055331030640312243

`(A017533(n)*A017534(n))²`
-/

namespace A017538.P4055331030640312243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017533 n * A017534 n) ^ 2

end

end A017538.P4055331030640312243

namespace A017538

/-- `(A017533(n)*A017534(n))²` -/
def P4055331030640312243.Spec : Prop :=
  ∀ n, P4055331030640312243.a n = A017538 n

theorem P4055331030640312243.correct : P4055331030640312243.Spec := by
  intro n
  simp only [A017538, Nat.add_sub_cancel, A017538.P4055331030640312243.a, A017538.P16257653880807579146.a, A017533, A017533.P146508076441825746.a, A017534, A017534.P18326514334582417356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017538

/-! ## A017538.P11745982039526369713

`A017533(n)²*A017536(n)`
-/

namespace A017538.P11745982039526369713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n ^ 2 * A017536 n

end

end A017538.P11745982039526369713

namespace A017538

/-- `A017533(n)²*A017536(n)` -/
def P11745982039526369713.Spec : Prop :=
  ∀ n, P11745982039526369713.a n = A017538 n

theorem P11745982039526369713.correct : P11745982039526369713.Spec := by
  intro n
  simp only [A017538, Nat.add_sub_cancel, A017538.P11745982039526369713.a, A017538.P16257653880807579146.a, A017533, A017533.P146508076441825746.a, A017536, A017536.P11204243538406648055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017538

/-! ## A017538.P11531959422839427456

`(A017537(n)/A017534(n))²`
-/

namespace A017538.P11531959422839427456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017537 n : ℚ) / (A017534 n : ℚ)) ^ 2

end

end A017538.P11531959422839427456

namespace A017538

/-- `(A017537(n)/A017534(n))²` -/
def P11531959422839427456.Spec : Prop :=
  ∀ n, P11531959422839427456.a n = (A017538 n : ℚ)

end A017538

/-! ## A017538.P17413155749114762582

`A017540(n)/A017533(n)²`
-/

namespace A017538.P17413155749114762582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017540 n : ℚ) / (A017533 n ^ 2 : ℚ)

end

end A017538.P17413155749114762582

namespace A017538

/-- `A017540(n)/A017533(n)²` -/
def P17413155749114762582.Spec : Prop :=
  ∀ n, P17413155749114762582.a n = (A017538 n : ℚ)

end A017538

/-! ## A017538.P17057401715677440234

`(Δ[A033568(n)]^3)²`
-/

namespace A017538.P17057401715677440234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017538.P17057401715677440234

namespace A017538

/-- `(Δ[A033568(n)]^3)²` -/
def P17057401715677440234.Spec : Prop :=
  ∀ n, P17057401715677440234.a n = A017538 n

theorem P17057401715677440234.correct : P17057401715677440234.Spec := by
  intro n
  simp only [A017538, Nat.add_sub_cancel, A017538.P17057401715677440234.f1, A017538.P17057401715677440234.a, A017538.P16257653880807579146.a, A033568, A033568.P8873267953823805199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017538

/-! ## A017538.P17107729978693810400

`(Δ[A051866(n)]^3)²`
-/

namespace A017538.P17107729978693810400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017538.P17107729978693810400

namespace A017538

/-- `(Δ[A051866(n)]^3)²` -/
def P17107729978693810400.Spec : Prop :=
  ∀ n, P17107729978693810400.a n = A017538 n

theorem P17107729978693810400.correct : P17107729978693810400.Spec := by
  intro n
  simp only [A017538, Nat.add_sub_cancel, A017538.P17107729978693810400.f1, A017538.P17107729978693810400.a, A017538.P16257653880807579146.a, A051866, A051866.P7037994286834974710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017538

/-! ## A017538.P5700557064400079976

`record[(n+1)^(gcd(12, n)-6)]`
-/

namespace A017538.P5700557064400079976
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((Nat.gcd 12 n : ℤ) - 6 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017538.P5700557064400079976

namespace A017538

/-- `record[(n+1)^(gcd(12, n)-6)]` -/
def P5700557064400079976.Spec : Prop :=
  ∀ n, P5700557064400079976.a n = (A017538 n : ℚ)

end A017538

/-! ## A017538.P10991191994828587294

`A016926(2*n)`
-/

namespace A017538.P10991191994828587294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016926 (2 * n)

end

end A017538.P10991191994828587294

namespace A017538

/-- `A016926(2*n)` -/
def P10991191994828587294.Spec : Prop :=
  ∀ n, P10991191994828587294.a n = A017538 n

theorem P10991191994828587294.correct : P10991191994828587294.Spec := by
  intro n
  simp only [A017538, Nat.add_sub_cancel, A017538.P10991191994828587294.a, A017538.P16257653880807579146.a, A016926, A016926.P17236842597661192459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017538

/-! ## A017538.P13484055698180631790

`A016923(2*n)²`
-/

namespace A017538.P13484055698180631790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 (2 * n) ^ 2

end

end A017538.P13484055698180631790

namespace A017538

/-- `A016923(2*n)²` -/
def P13484055698180631790.Spec : Prop :=
  ∀ n, P13484055698180631790.a n = A017538 n

theorem P13484055698180631790.correct : P13484055698180631790.Spec := by
  intro n
  simp only [A017538, Nat.add_sub_cancel, A017538.P13484055698180631790.a, A017538.P16257653880807579146.a, A016923, A016923.P17840807225178979514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017538

/-! ## A017538.P4816096361341637361

`(A016921(2*n)^3)²`
-/

namespace A017538.P4816096361341637361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016921 (2 * n) ^ 3) ^ 2

end

end A017538.P4816096361341637361

namespace A017538

/-- `(A016921(2*n)^3)²` -/
def P4816096361341637361.Spec : Prop :=
  ∀ n, P4816096361341637361.a n = A017538 n

theorem P4816096361341637361.correct : P4816096361341637361.Spec := by
  intro n
  simp only [A017538, Nat.add_sub_cancel, A017538.P4816096361341637361.a, A017538.P16257653880807579146.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017538

/-! ## A017538.P80245653783652796

`A016925(2*n)*A017533(n)`
-/

namespace A017538.P80245653783652796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016925 (2 * n) * A017533 n

end

end A017538.P80245653783652796

namespace A017538

/-- `A016925(2*n)*A017533(n)` -/
def P80245653783652796.Spec : Prop :=
  ∀ n, P80245653783652796.a n = A017538 n

theorem P80245653783652796.correct : P80245653783652796.Spec := by
  intro n
  simp only [A017538, Nat.add_sub_cancel, A017538.P80245653783652796.a, A017538.P16257653880807579146.a, A016925, A016925.P3935835382959505019.a, A017533, A017533.P146508076441825746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017538

/-! ## A017538.P2887206501730442709

`A016927(2*n)/A017533(n)`
-/

namespace A017538.P2887206501730442709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016927 (2 * n) : ℚ) / (A017533 n : ℚ)

end

end A017538.P2887206501730442709

namespace A017538

/-- `A016927(2*n)/A017533(n)` -/
def P2887206501730442709.Spec : Prop :=
  ∀ n, P2887206501730442709.a n = (A017538 n : ℚ)

theorem P2887206501730442709.correct : P2887206501730442709.Spec := by
  intro n
  simp only [A017538, Nat.add_sub_cancel, A017538.P2887206501730442709.a, A017538.P16257653880807579146.a, A016927, A016927.P17931775019733470070.a, A017533, A017533.P146508076441825746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017538

/-!
# A017539: a(n) = (12*n + 1)^7.

The programs for A017539, the canonical program `A017539.P15960070551380638525` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017539 has offset 0).

The definition of A017539 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+1)^7` (program `A017539.P15960070551380638525`, by `A017539.P15960070551380638525.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017539.P15960070551380638525

`(12*n+1)^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017539

/-- `(12*n+1)^7` -/
def P15960070551380638525.Spec : Prop :=
  ∀ n, (P15960070551380638525.a n : ℤ) = A017539 n

theorem P15960070551380638525.correct : P15960070551380638525.Spec := by
  intro n
  simp only [A017539]

end A017539

/-! ## A017539.P5073222206306888757

`A017533(n)*A017538(n)`
-/

namespace A017539.P5073222206306888757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n * A017538 n

end

end A017539.P5073222206306888757

namespace A017539

/-- `A017533(n)*A017538(n)` -/
def P5073222206306888757.Spec : Prop :=
  ∀ n, P5073222206306888757.a n = A017539 n

theorem P5073222206306888757.correct : P5073222206306888757.Spec := by
  intro n
  simp only [A017539, Nat.add_sub_cancel, A017539.P5073222206306888757.a, A017539.P15960070551380638525.a, A017533, A017533.P146508076441825746.a, A017538, A017538.P16257653880807579146.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017539

/-! ## A017539.P7275158442938707097

`A017534(n)*A017537(n)`
-/

namespace A017539.P7275158442938707097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017534 n * A017537 n

end

end A017539.P7275158442938707097

namespace A017539

/-- `A017534(n)*A017537(n)` -/
def P7275158442938707097.Spec : Prop :=
  ∀ n, P7275158442938707097.a n = A017539 n

theorem P7275158442938707097.correct : P7275158442938707097.Spec := by
  intro n
  simp only [A017539, Nat.add_sub_cancel, A017539.P7275158442938707097.a, A017539.P15960070551380638525.a, A017534, A017534.P18326514334582417356.a, A017537, A017537.P15357440824703456013.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017539

/-! ## A017539.P6754641981139256877

`A017535(n)*A017536(n)`
-/

namespace A017539.P6754641981139256877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017535 n * A017536 n

end

end A017539.P6754641981139256877

namespace A017539

/-- `A017535(n)*A017536(n)` -/
def P6754641981139256877.Spec : Prop :=
  ∀ n, P6754641981139256877.a n = A017539 n

theorem P6754641981139256877.correct : P6754641981139256877.Spec := by
  intro n
  simp only [A017539, Nat.add_sub_cancel, A017539.P6754641981139256877.a, A017539.P15960070551380638525.a, A017535, A017535.P6022267949246297963.a, A017536, A017536.P11204243538406648055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017539

/-! ## A017539.P3154075215038614969

`A017540(n)/A017533(n)`
-/

namespace A017539.P3154075215038614969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017540 n : ℚ) / (A017533 n : ℚ)

end

end A017539.P3154075215038614969

namespace A017539

/-- `A017540(n)/A017533(n)` -/
def P3154075215038614969.Spec : Prop :=
  ∀ n, P3154075215038614969.a n = (A017539 n : ℚ)

end A017539

/-! ## A017539.P17009760234194029315

`A017535(n)²*A017533(n)`
-/

namespace A017539.P17009760234194029315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017535 n ^ 2 * A017533 n

end

end A017539.P17009760234194029315

namespace A017539

/-- `A017535(n)²*A017533(n)` -/
def P17009760234194029315.Spec : Prop :=
  ∀ n, P17009760234194029315.a n = A017539 n

theorem P17009760234194029315.correct : P17009760234194029315.Spec := by
  intro n
  simp only [A017539, Nat.add_sub_cancel, A017539.P17009760234194029315.a, A017539.P15960070551380638525.a, A017533, A017533.P146508076441825746.a, A017535, A017535.P6022267949246297963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017539

/-! ## A017539.P10641498317673596080

`A017534(n)²*A017535(n)`
-/

namespace A017539.P10641498317673596080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017534 n ^ 2 * A017535 n

end

end A017539.P10641498317673596080

namespace A017539

/-- `A017534(n)²*A017535(n)` -/
def P10641498317673596080.Spec : Prop :=
  ∀ n, P10641498317673596080.a n = A017539 n

theorem P10641498317673596080.correct : P10641498317673596080.Spec := by
  intro n
  simp only [A017539, Nat.add_sub_cancel, A017539.P10641498317673596080.a, A017539.P15960070551380638525.a, A017534, A017534.P18326514334582417356.a, A017535, A017535.P6022267949246297963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017539

/-! ## A017539.P1493397126069233695

`A017533(n)²*A017537(n)`
-/

namespace A017539.P1493397126069233695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n ^ 2 * A017537 n

end

end A017539.P1493397126069233695

namespace A017539

/-- `A017533(n)²*A017537(n)` -/
def P1493397126069233695.Spec : Prop :=
  ∀ n, P1493397126069233695.a n = A017539 n

theorem P1493397126069233695.correct : P1493397126069233695.Spec := by
  intro n
  simp only [A017539, Nat.add_sub_cancel, A017539.P1493397126069233695.a, A017539.P15960070551380638525.a, A017533, A017533.P146508076441825746.a, A017537, A017537.P15357440824703456013.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017539

/-! ## A017539.P18442008758762413662

`A017536(n)²/A017533(n)`
-/

namespace A017539.P18442008758762413662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017536 n ^ 2 : ℚ) / (A017533 n : ℚ)

end

end A017539.P18442008758762413662

namespace A017539

/-- `A017536(n)²/A017533(n)` -/
def P18442008758762413662.Spec : Prop :=
  ∀ n, P18442008758762413662.a n = (A017539 n : ℚ)

end A017539

/-! ## A017539.P3341388134070335830

`A017534(n)²²/A017533(n)`
-/

namespace A017539.P3341388134070335830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017534 n ^ 2) ^ 2 : ℚ) / (A017533 n : ℚ)

end

end A017539.P3341388134070335830

namespace A017539

/-- `A017534(n)²²/A017533(n)` -/
def P3341388134070335830.Spec : Prop :=
  ∀ n, P3341388134070335830.a n = (A017539 n : ℚ)

end A017539

/-! ## A017539.P9108220391445168392

`A017537(n)/A017535(n)*A017537(n)`
-/

namespace A017539.P9108220391445168392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017537 n : ℚ) / (A017535 n : ℚ) * (A017537 n : ℚ)

end

end A017539.P9108220391445168392

namespace A017539

/-- `A017537(n)/A017535(n)*A017537(n)` -/
def P9108220391445168392.Spec : Prop :=
  ∀ n, P9108220391445168392.a n = (A017539 n : ℚ)

end A017539

/-! ## A017539.P6876083262332702109

`A016927(2*n)`
-/

namespace A017539.P6876083262332702109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016927 (2 * n)

end

end A017539.P6876083262332702109

namespace A017539

/-- `A016927(2*n)` -/
def P6876083262332702109.Spec : Prop :=
  ∀ n, P6876083262332702109.a n = A017539 n

theorem P6876083262332702109.correct : P6876083262332702109.Spec := by
  intro n
  simp only [A017539, Nat.add_sub_cancel, A017539.P6876083262332702109.a, A017539.P15960070551380638525.a, A016927, A016927.P17931775019733470070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017539

/-! ## A017539.P11211246480461029253

`A016925(2*n)*A017534(n)`
-/

namespace A017539.P11211246480461029253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016925 (2 * n) * A017534 n

end

end A017539.P11211246480461029253

namespace A017539

/-- `A016925(2*n)*A017534(n)` -/
def P11211246480461029253.Spec : Prop :=
  ∀ n, P11211246480461029253.a n = A017539 n

theorem P11211246480461029253.correct : P11211246480461029253.Spec := by
  intro n
  simp only [A017539, Nat.add_sub_cancel, A017539.P11211246480461029253.a, A017539.P15960070551380638525.a, A016925, A016925.P3935835382959505019.a, A017534, A017534.P18326514334582417356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017539

/-! ## A017539.P15817507158891544384

`A016921(2*n)*A016926(2*n)`
-/

namespace A017539.P15817507158891544384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (2 * n) * A016926 (2 * n)

end

end A017539.P15817507158891544384

namespace A017539

/-- `A016921(2*n)*A016926(2*n)` -/
def P15817507158891544384.Spec : Prop :=
  ∀ n, P15817507158891544384.a n = A017539 n

theorem P15817507158891544384.correct : P15817507158891544384.Spec := by
  intro n
  simp only [A017539, Nat.add_sub_cancel, A017539.P15817507158891544384.a, A017539.P15960070551380638525.a, A016921, A016921.P18318603358862595186.a, A016926, A016926.P17236842597661192459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017539

/-! ## A017539.P17388280907382199958

`A016922(2*n)*A016925(2*n)`
-/

namespace A017539.P17388280907382199958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 (2 * n) * A016925 (2 * n)

end

end A017539.P17388280907382199958

namespace A017539

/-- `A016922(2*n)*A016925(2*n)` -/
def P17388280907382199958.Spec : Prop :=
  ∀ n, P17388280907382199958.a n = A017539 n

theorem P17388280907382199958.correct : P17388280907382199958.Spec := by
  intro n
  simp only [A017539, Nat.add_sub_cancel, A017539.P17388280907382199958.a, A017539.P15960070551380638525.a, A016922, A016922.P12735287873668454303.a, A016925, A016925.P3935835382959505019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017539

/-! ## A017539.P15409133914629244523

`A016923(2*n)*A016924(2*n)`
-/

namespace A017539.P15409133914629244523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 (2 * n) * A016924 (2 * n)

end

end A017539.P15409133914629244523

namespace A017539

/-- `A016923(2*n)*A016924(2*n)` -/
def P15409133914629244523.Spec : Prop :=
  ∀ n, P15409133914629244523.a n = A017539 n

theorem P15409133914629244523.correct : P15409133914629244523.Spec := by
  intro n
  simp only [A017539, Nat.add_sub_cancel, A017539.P15409133914629244523.a, A017539.P15960070551380638525.a, A016923, A016923.P17840807225178979514.a, A016924, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017539

/-! ## A017539.P14248669503398373087

`A016928(2*n)/A016921(2*n)`
-/

namespace A017539.P14248669503398373087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016928 (2 * n) : ℚ) / (A016921 (2 * n) : ℚ)

end

end A017539.P14248669503398373087

namespace A017539

/-- `A016928(2*n)/A016921(2*n)` -/
def P14248669503398373087.Spec : Prop :=
  ∀ n, P14248669503398373087.a n = (A017539 n : ℚ)

theorem P14248669503398373087.correct : P14248669503398373087.Spec := by
  intro n
  simp only [A017539, Nat.add_sub_cancel, A017539.P14248669503398373087.a, A017539.P15960070551380638525.a, A016921, A016921.P18318603358862595186.a, A016928, A016928.P17353680663625733348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017539

/-! ## A017539.P10641322600293290725

`A016929(2*n)/A016922(2*n)`
-/

namespace A017539.P10641322600293290725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016929 (2 * n) : ℚ) / (A016922 (2 * n) : ℚ)

end

end A017539.P10641322600293290725

namespace A017539

/-- `A016929(2*n)/A016922(2*n)` -/
def P10641322600293290725.Spec : Prop :=
  ∀ n, P10641322600293290725.a n = (A017539 n : ℚ)

theorem P10641322600293290725.correct : P10641322600293290725.Spec := by
  intro n
  simp only [A017539, Nat.add_sub_cancel, A017539.P10641322600293290725.a, A017539.P15960070551380638525.a, A016922, A016922.P12735287873668454303.a, A016929, A016929.P9280878692414037459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017539

/-! ## A017539.P18171835119586726373

`A016922(2*n)²*A016923(2*n)`
-/

namespace A017539.P18171835119586726373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 (2 * n) ^ 2 * A016923 (2 * n)

end

end A017539.P18171835119586726373

namespace A017539

/-- `A016922(2*n)²*A016923(2*n)` -/
def P18171835119586726373.Spec : Prop :=
  ∀ n, P18171835119586726373.a n = A017539 n

theorem P18171835119586726373.correct : P18171835119586726373.Spec := by
  intro n
  simp only [A017539, Nat.add_sub_cancel, A017539.P18171835119586726373.a, A017539.P15960070551380638525.a, A016922, A016922.P12735287873668454303.a, A016923, A016923.P17840807225178979514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017539

/-! ## A017539.P566261190788153497

`A016921(2*n)²*A016925(2*n)`
-/

namespace A017539.P566261190788153497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (2 * n) ^ 2 * A016925 (2 * n)

end

end A017539.P566261190788153497

namespace A017539

/-- `A016921(2*n)²*A016925(2*n)` -/
def P566261190788153497.Spec : Prop :=
  ∀ n, P566261190788153497.a n = A017539 n

theorem P566261190788153497.correct : P566261190788153497.Spec := by
  intro n
  simp only [A017539, Nat.add_sub_cancel, A017539.P566261190788153497.a, A017539.P15960070551380638525.a, A016921, A016921.P18318603358862595186.a, A016925, A016925.P3935835382959505019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017539

/-!
# A017540: a(n) = (12*n + 1)^8.

The programs for A017540, the canonical program `A017540.P552161092019250957` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017540 has offset 0).

The definition of A017540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+1)^8` (program `A017540.P552161092019250957`, by `A017540.P552161092019250957.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017540.P552161092019250957

`(12*n+1)^8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017540

/-- `(12*n+1)^8` -/
def P552161092019250957.Spec : Prop :=
  ∀ n, (P552161092019250957.a n : ℤ) = A017540 n

theorem P552161092019250957.correct : P552161092019250957.Spec := by
  intro n
  simp only [A017540]

end A017540

/-! ## A017540.P11452319337735971632

`A001016(A017533(n))`
-/

namespace A017540.P11452319337735971632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 (A017533 n).toNat

end

end A017540.P11452319337735971632

namespace A017540

/-- `A001016(A017533(n))` -/
def P11452319337735971632.Spec : Prop :=
  ∀ n, P11452319337735971632.a n = A017540 n

end A017540

/-! ## A017540.P761497995069156053

`or(1, 12*n)²²²`
-/

namespace A017540.P761497995069156053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (12 * n) ^ 2) ^ 2) ^ 2

end

end A017540.P761497995069156053

namespace A017540

/-- `or(1, 12*n)²²²` -/
def P761497995069156053.Spec : Prop :=
  ∀ n, (P761497995069156053.a n : ℤ) = A017540 n

end A017540

/-! ## A017540.P11870495014753399854

`A017536(n)²`
-/

namespace A017540.P11870495014753399854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017536 n ^ 2

end

end A017540.P11870495014753399854

namespace A017540

/-- `A017536(n)²` -/
def P11870495014753399854.Spec : Prop :=
  ∀ n, P11870495014753399854.a n = A017540 n

theorem P11870495014753399854.correct : P11870495014753399854.Spec := by
  intro n
  simp only [A017540, Nat.add_sub_cancel, A017540.P11870495014753399854.a, A017540.P552161092019250957.a, A017536, A017536.P11204243538406648055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017540

/-! ## A017540.P7440047194668245090

`A017534(n)²²`
-/

namespace A017540.P7440047194668245090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017534 n ^ 2) ^ 2

end

end A017540.P7440047194668245090

namespace A017540

/-- `A017534(n)²²` -/
def P7440047194668245090.Spec : Prop :=
  ∀ n, P7440047194668245090.a n = A017540 n

theorem P7440047194668245090.correct : P7440047194668245090.Spec := by
  intro n
  simp only [A017540, Nat.add_sub_cancel, A017540.P7440047194668245090.a, A017540.P552161092019250957.a, A017534, A017534.P18326514334582417356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017540

/-! ## A017540.P10596831480362662112

`(A008594(n)+1)²²²`
-/

namespace A017540.P10596831480362662112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008594 n + 1) ^ 2) ^ 2) ^ 2

end

end A017540.P10596831480362662112

namespace A017540

/-- `(A008594(n)+1)²²²` -/
def P10596831480362662112.Spec : Prop :=
  ∀ n, P10596831480362662112.a n = A017540 n

theorem P10596831480362662112.correct : P10596831480362662112.Spec := by
  intro n
  simp only [A017540, Nat.add_sub_cancel, A017540.P10596831480362662112.a, A017540.P552161092019250957.a, A008594, A008594.P9877215682521385096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017540

/-! ## A017540.P12875232380127226510

`(1-A017545(n))²²²`
-/

namespace A017540.P12875232380127226510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017545 n) ^ 2) ^ 2) ^ 2

end

end A017540.P12875232380127226510

namespace A017540

/-- `(1-A017545(n))²²²` -/
def P12875232380127226510.Spec : Prop :=
  ∀ n, P12875232380127226510.a n = A017540 n

theorem P12875232380127226510.correct : P12875232380127226510.Spec := by
  intro n
  simp only [A017540, Nat.add_sub_cancel, A017540.P12875232380127226510.a, A017540.P552161092019250957.a, A017545, A017545.P14965093399951293214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017540

/-! ## A017540.P15556428446011698354

`(2-A017557(n))²²²`
-/

namespace A017540.P15556428446011698354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017557 n) ^ 2) ^ 2) ^ 2

end

end A017540.P15556428446011698354

namespace A017540

/-- `(2-A017557(n))²²²` -/
def P15556428446011698354.Spec : Prop :=
  ∀ n, P15556428446011698354.a n = A017540 n

theorem P15556428446011698354.correct : P15556428446011698354.Spec := by
  intro n
  simp only [A017540, Nat.add_sub_cancel, A017540.P15556428446011698354.a, A017540.P552161092019250957.a, A017557, A017557.P7719209615978230604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017540

/-! ## A017540.P13562058218060735665

`(A017401(n)+n)²²²`
-/

namespace A017540.P13562058218060735665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017401 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017540.P13562058218060735665

namespace A017540

/-- `(A017401(n)+n)²²²` -/
def P13562058218060735665.Spec : Prop :=
  ∀ n, P13562058218060735665.a n = A017540 n

theorem P13562058218060735665.correct : P13562058218060735665.Spec := by
  intro n
  simp only [A017540, Nat.add_sub_cancel, A017540.P13562058218060735665.a, A017540.P552161092019250957.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017540

/-! ## A017540.P3461771105461056782

`(n-A190991(n))²²²`
-/

namespace A017540.P3461771105461056782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A190991 n) ^ 2) ^ 2) ^ 2

end

end A017540.P3461771105461056782

namespace A017540

/-- `(n-A190991(n))²²²` -/
def P3461771105461056782.Spec : Prop :=
  ∀ n, P3461771105461056782.a n = A017540 n

theorem P3461771105461056782.correct : P3461771105461056782.Spec := by
  intro n
  simp only [A017540, Nat.add_sub_cancel, A017540.P3461771105461056782.a, A017540.P552161092019250957.a, A190991, A190991.P11410187498899268460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017540

/-! ## A017540.P3728242413911772069

`A017534(n)*A017538(n)`
-/

namespace A017540.P3728242413911772069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017534 n * A017538 n

end

end A017540.P3728242413911772069

namespace A017540

/-- `A017534(n)*A017538(n)` -/
def P3728242413911772069.Spec : Prop :=
  ∀ n, P3728242413911772069.a n = A017540 n

theorem P3728242413911772069.correct : P3728242413911772069.Spec := by
  intro n
  simp only [A017540, Nat.add_sub_cancel, A017540.P3728242413911772069.a, A017540.P552161092019250957.a, A017534, A017534.P18326514334582417356.a, A017538, A017538.P16257653880807579146.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017540

/-! ## A017540.P15248386420839540077

`A017535(n)*A017537(n)`
-/

namespace A017540.P15248386420839540077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017535 n * A017537 n

end

end A017540.P15248386420839540077

namespace A017540

/-- `A017535(n)*A017537(n)` -/
def P15248386420839540077.Spec : Prop :=
  ∀ n, P15248386420839540077.a n = A017540 n

theorem P15248386420839540077.correct : P15248386420839540077.Spec := by
  intro n
  simp only [A017540, Nat.add_sub_cancel, A017540.P15248386420839540077.a, A017540.P552161092019250957.a, A017535, A017535.P6022267949246297963.a, A017537, A017537.P15357440824703456013.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017540

/-! ## A017540.P6389581365289215070

`Δ[A033568(n)]²²²`
-/

namespace A017540.P6389581365289215070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017540.P6389581365289215070

namespace A017540

/-- `Δ[A033568(n)]²²²` -/
def P6389581365289215070.Spec : Prop :=
  ∀ n, P6389581365289215070.a n = A017540 n

theorem P6389581365289215070.correct : P6389581365289215070.Spec := by
  intro n
  simp only [A017540, Nat.add_sub_cancel, A017540.P6389581365289215070.f1, A017540.P6389581365289215070.a, A017540.P552161092019250957.a, A033568, A033568.P8873267953823805199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017540

/-! ## A017540.P13685046243306961453

`Δ[A051866(n)]²²²`
-/

namespace A017540.P13685046243306961453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017540.P13685046243306961453

namespace A017540

/-- `Δ[A051866(n)]²²²` -/
def P13685046243306961453.Spec : Prop :=
  ∀ n, P13685046243306961453.a n = A017540 n

theorem P13685046243306961453.correct : P13685046243306961453.Spec := by
  intro n
  simp only [A017540, Nat.add_sub_cancel, A017540.P13685046243306961453.f1, A017540.P13685046243306961453.a, A017540.P552161092019250957.a, A051866, A051866.P7037994286834974710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017540

/-! ## A017540.P17208857951080144782

`A016928(2*n)`
-/

namespace A017540.P17208857951080144782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016928 (2 * n)

end

end A017540.P17208857951080144782

namespace A017540

/-- `A016928(2*n)` -/
def P17208857951080144782.Spec : Prop :=
  ∀ n, P17208857951080144782.a n = A017540 n

theorem P17208857951080144782.correct : P17208857951080144782.Spec := by
  intro n
  simp only [A017540, Nat.add_sub_cancel, A017540.P17208857951080144782.a, A017540.P552161092019250957.a, A016928, A016928.P17353680663625733348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017540

/-! ## A017540.P6215644601376551962

`A016924(2*n)²`
-/

namespace A017540.P6215644601376551962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016924 (2 * n) ^ 2

end

end A017540.P6215644601376551962

namespace A017540

/-- `A016924(2*n)²` -/
def P6215644601376551962.Spec : Prop :=
  ∀ n, P6215644601376551962.a n = A017540 n

theorem P6215644601376551962.correct : P6215644601376551962.Spec := by
  intro n
  simp only [A017540, Nat.add_sub_cancel, A017540.P6215644601376551962.a, A017540.P552161092019250957.a, A016924, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017540

/-! ## A017540.P9398682773757014347

`A016922(2*n)²²`
-/

namespace A017540.P9398682773757014347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016922 (2 * n) ^ 2) ^ 2

end

end A017540.P9398682773757014347

namespace A017540

/-- `A016922(2*n)²²` -/
def P9398682773757014347.Spec : Prop :=
  ∀ n, P9398682773757014347.a n = A017540 n

theorem P9398682773757014347.correct : P9398682773757014347.Spec := by
  intro n
  simp only [A017540, Nat.add_sub_cancel, A017540.P9398682773757014347.a, A017540.P552161092019250957.a, A016922, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017540

/-! ## A017540.P16182904380314395311

`A016921(2*n)²²²`
-/

namespace A017540.P16182904380314395311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016921 (2 * n) ^ 2) ^ 2) ^ 2

end

end A017540.P16182904380314395311

namespace A017540

/-- `A016921(2*n)²²²` -/
def P16182904380314395311.Spec : Prop :=
  ∀ n, P16182904380314395311.a n = A017540 n

theorem P16182904380314395311.correct : P16182904380314395311.Spec := by
  intro n
  simp only [A017540, Nat.add_sub_cancel, A017540.P16182904380314395311.a, A017540.P552161092019250957.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017540

/-! ## A017540.P14256996009592079584

`A308196(2*n)²²²`
-/

namespace A017540.P14256996009592079584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A308196 (2 * n) ^ 2) ^ 2) ^ 2

end

end A017540.P14256996009592079584

namespace A017540

/-- `A308196(2*n)²²²` -/
def P14256996009592079584.Spec : Prop :=
  ∀ n, P14256996009592079584.a n = A017540 n

end A017540

/-! ## A017540.P16744125405418964597

`A087445(2*n+1)²²²`
-/

namespace A017540.P16744125405418964597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A087445 (2 * n + 1) ^ 2) ^ 2) ^ 2

end

end A017540.P16744125405418964597

namespace A017540

/-- `A087445(2*n+1)²²²` -/
def P16744125405418964597.Spec : Prop :=
  ∀ n, P16744125405418964597.a n = A017540 n

end A017540

/-!
# A017541: a(n) = (12*n + 1)^9.

The programs for A017541, the canonical program `A017541.P8893077155874648411` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017541 has offset 0).

The definition of A017541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+1)^9` (program `A017541.P8893077155874648411`, by `A017541.P8893077155874648411.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017541.P8893077155874648411

`(12*n+1)^9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017541

/-- `(12*n+1)^9` -/
def P8893077155874648411.Spec : Prop :=
  ∀ n, (P8893077155874648411.a n : ℤ) = A017541 n

theorem P8893077155874648411.correct : P8893077155874648411.Spec := by
  intro n
  simp only [A017541]

end A017541

/-! ## A017541.P4551906553663159779

`A017533(n)*A017540(n)`
-/

namespace A017541.P4551906553663159779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n * A017540 n

end

end A017541.P4551906553663159779

namespace A017541

/-- `A017533(n)*A017540(n)` -/
def P4551906553663159779.Spec : Prop :=
  ∀ n, P4551906553663159779.a n = A017541 n

theorem P4551906553663159779.correct : P4551906553663159779.Spec := by
  intro n
  simp only [A017541, Nat.add_sub_cancel, A017541.P4551906553663159779.a, A017541.P8893077155874648411.a, A017533, A017533.P146508076441825746.a, A017540, A017540.P552161092019250957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017541

/-! ## A017541.P12502190626106757191

`A017535(n)*A017538(n)`
-/

namespace A017541.P12502190626106757191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017535 n * A017538 n

end

end A017541.P12502190626106757191

namespace A017541

/-- `A017535(n)*A017538(n)` -/
def P12502190626106757191.Spec : Prop :=
  ∀ n, P12502190626106757191.a n = A017541 n

theorem P12502190626106757191.correct : P12502190626106757191.Spec := by
  intro n
  simp only [A017541, Nat.add_sub_cancel, A017541.P12502190626106757191.a, A017541.P8893077155874648411.a, A017535, A017535.P6022267949246297963.a, A017538, A017538.P16257653880807579146.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017541

/-! ## A017541.P6366234420728008804

`A017536(n)*A017537(n)`
-/

namespace A017541.P6366234420728008804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017536 n * A017537 n

end

end A017541.P6366234420728008804

namespace A017541

/-- `A017536(n)*A017537(n)` -/
def P6366234420728008804.Spec : Prop :=
  ∀ n, P6366234420728008804.a n = A017541 n

theorem P6366234420728008804.correct : P6366234420728008804.Spec := by
  intro n
  simp only [A017541, Nat.add_sub_cancel, A017541.P6366234420728008804.a, A017541.P8893077155874648411.a, A017536, A017536.P11204243538406648055.a, A017537, A017537.P15357440824703456013.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017541

/-! ## A017541.P15631131083462920984

`A016929(2*n)`
-/

namespace A017541.P15631131083462920984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016929 (2 * n)

end

end A017541.P15631131083462920984

namespace A017541

/-- `A016929(2*n)` -/
def P15631131083462920984.Spec : Prop :=
  ∀ n, P15631131083462920984.a n = A017541 n

theorem P15631131083462920984.correct : P15631131083462920984.Spec := by
  intro n
  simp only [A017541, Nat.add_sub_cancel, A017541.P15631131083462920984.a, A017541.P8893077155874648411.a, A016929, A016929.P9280878692414037459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017541

/-! ## A017541.P8325062231237817944

`A016927(2*n)*A017534(n)`
-/

namespace A017541.P8325062231237817944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016927 (2 * n) * A017534 n

end

end A017541.P8325062231237817944

namespace A017541

/-- `A016927(2*n)*A017534(n)` -/
def P8325062231237817944.Spec : Prop :=
  ∀ n, P8325062231237817944.a n = A017541 n

theorem P8325062231237817944.correct : P8325062231237817944.Spec := by
  intro n
  simp only [A017541, Nat.add_sub_cancel, A017541.P8325062231237817944.a, A017541.P8893077155874648411.a, A016927, A016927.P17931775019733470070.a, A017534, A017534.P18326514334582417356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017541

/-! ## A017541.P16171535685938286641

`A016921(2*n)*A016928(2*n)`
-/

namespace A017541.P16171535685938286641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (2 * n) * A016928 (2 * n)

end

end A017541.P16171535685938286641

namespace A017541

/-- `A016921(2*n)*A016928(2*n)` -/
def P16171535685938286641.Spec : Prop :=
  ∀ n, P16171535685938286641.a n = A017541 n

theorem P16171535685938286641.correct : P16171535685938286641.Spec := by
  intro n
  simp only [A017541, Nat.add_sub_cancel, A017541.P16171535685938286641.a, A017541.P8893077155874648411.a, A016921, A016921.P18318603358862595186.a, A016928, A016928.P17353680663625733348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017541

/-! ## A017541.P9403055156522412999

`A016923(2*n)*A016926(2*n)`
-/

namespace A017541.P9403055156522412999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 (2 * n) * A016926 (2 * n)

end

end A017541.P9403055156522412999

namespace A017541

/-- `A016923(2*n)*A016926(2*n)` -/
def P9403055156522412999.Spec : Prop :=
  ∀ n, P9403055156522412999.a n = A017541 n

theorem P9403055156522412999.correct : P9403055156522412999.Spec := by
  intro n
  simp only [A017541, Nat.add_sub_cancel, A017541.P9403055156522412999.a, A017541.P8893077155874648411.a, A016923, A016923.P17840807225178979514.a, A016926, A016926.P17236842597661192459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017541

/-! ## A017541.P16689517160336643453

`A016821(3*n)`
-/

namespace A017541.P16689517160336643453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016821 (3 * n)

end

end A017541.P16689517160336643453

namespace A017541

/-- `A016821(3*n)` -/
def P16689517160336643453.Spec : Prop :=
  ∀ n, P16689517160336643453.a n = A017541 n

theorem P16689517160336643453.correct : P16689517160336643453.Spec := by
  intro n
  simp only [A017541, Nat.add_sub_cancel, A017541.P16689517160336643453.a, A017541.P8893077155874648411.a, A016821, A016821.P17020598727398080653.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017541

/-! ## A017541.P18167087338366370557

`A016785(4*n)`
-/

namespace A017541.P18167087338366370557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016785 (4 * n)

end

end A017541.P18167087338366370557

namespace A017541

/-- `A016785(4*n)` -/
def P18167087338366370557.Spec : Prop :=
  ∀ n, P18167087338366370557.a n = A017541 n

theorem P18167087338366370557.correct : P18167087338366370557.Spec := by
  intro n
  simp only [A017541, Nat.add_sub_cancel, A017541.P18167087338366370557.a, A017541.P8893077155874648411.a, A016785, A016785.P12257324286826069844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017541

/-! ## A017541.P17334445673909898259

`A016761(6*n)`
-/

namespace A017541.P17334445673909898259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016761 (6 * n)

end

end A017541.P17334445673909898259

namespace A017541

/-- `A016761(6*n)` -/
def P17334445673909898259.Spec : Prop :=
  ∀ n, P17334445673909898259.a n = A017541 n

theorem P17334445673909898259.correct : P17334445673909898259.Spec := by
  intro n
  simp only [A017541, Nat.add_sub_cancel, A017541.P17334445673909898259.a, A017541.P8893077155874648411.a, A016761, A016761.P2892480136193022373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017541

/-! ## A017541.P17504542344155176242

`A001017(A017533(n))`
-/

namespace A017541.P17504542344155176242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017533 n).toNat

end

end A017541.P17504542344155176242

namespace A017541

/-- `A001017(A017533(n))` -/
def P17504542344155176242.Spec : Prop :=
  ∀ n, P17504542344155176242.a n = A017541 n

end A017541

/-!
# A017542: a(n) = (12*n + 1)^10.

The programs for A017542, the canonical program `A017542.P14005761265799138008` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017542 has offset 0).

The definition of A017542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017542.P14005761265799138008

`(11*n+n+1)^10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017542

/-- `(11*n+n+1)^10` -/
def P14005761265799138008.Spec : Prop :=
  ∀ n, (P14005761265799138008.a n : ℤ) = A017542 n

theorem P14005761265799138008.correct : P14005761265799138008.Spec := by
  intro n
  simp only [A017542]

end A017542

/-! ## A017542.P12608888465104981249

`A017537(n)²`
-/

namespace A017542.P12608888465104981249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017537 n ^ 2

end

end A017542.P12608888465104981249

namespace A017542

/-- `A017537(n)²` -/
def P12608888465104981249.Spec : Prop :=
  ∀ n, P12608888465104981249.a n = A017542 n

theorem P12608888465104981249.correct : P12608888465104981249.Spec := by
  intro n
  simp only [A017542, Nat.add_sub_cancel, A017542.P12608888465104981249.a, A017542.P14005761265799138008.a, A017537, A017537.P15357440824703456013.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017542

/-! ## A017542.P15446624628668833964

`A016930(2*n)`
-/

namespace A017542.P15446624628668833964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016930 (2 * n)

end

end A017542.P15446624628668833964

namespace A017542

/-- `A016930(2*n)` -/
def P15446624628668833964.Spec : Prop :=
  ∀ n, P15446624628668833964.a n = A017542 n

theorem P15446624628668833964.correct : P15446624628668833964.Spec := by
  intro n
  simp only [A017542, Nat.add_sub_cancel, A017542.P15446624628668833964.a, A017542.P14005761265799138008.a, A016930, A016930.P13854082548963173773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017542

/-! ## A017542.P12423541172664919124

`A000584(A017533(n))²`
-/

namespace A017542.P12423541172664919124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A017533 n).toNat ^ 2

end

end A017542.P12423541172664919124

namespace A017542

/-- `A000584(A017533(n))²` -/
def P12423541172664919124.Spec : Prop :=
  ∀ n, P12423541172664919124.a n = A017542 n

end A017542

/-! ## A017542.P2195789964555706520

`A008454(A016945(2*n)-2)`
-/

namespace A017542.P2195789964555706520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016945 (2 * n) - 2).toNat

end

end A017542.P2195789964555706520

namespace A017542

/-- `A008454(A016945(2*n)-2)` -/
def P2195789964555706520.Spec : Prop :=
  ∀ n, P2195789964555706520.a n = A017542 n

end A017542

/-!
# A017543: a(n) = (12*n + 1)^11.

The programs for A017543, the canonical program `A017543.P14741278206270986896` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017543 has offset 0).

The definition of A017543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017543.P14741278206270986896

`(12*n+1)^11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017543

/-- `(12*n+1)^11` -/
def P14741278206270986896.Spec : Prop :=
  ∀ n, (P14741278206270986896.a n : ℤ) = A017543 n

theorem P14741278206270986896.correct : P14741278206270986896.Spec := by
  intro n
  simp only [A017543]

end A017543

/-! ## A017543.P12026325245093230882

`A017535(n)²²/A017533(n)`
-/

namespace A017543.P12026325245093230882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017535 n ^ 2) ^ 2 : ℚ) / (A017533 n : ℚ)

end

end A017543.P12026325245093230882

namespace A017543

/-- `A017535(n)²²/A017533(n)` -/
def P12026325245093230882.Spec : Prop :=
  ∀ n, P12026325245093230882.a n = (A017543 n : ℚ)

end A017543

/-! ## A017543.P8346350477184181107

`A016931(2*n)`
-/

namespace A017543.P8346350477184181107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016931 (2 * n)

end

end A017543.P8346350477184181107

namespace A017543

/-- `A016931(2*n)` -/
def P8346350477184181107.Spec : Prop :=
  ∀ n, P8346350477184181107.a n = A017543 n

theorem P8346350477184181107.correct : P8346350477184181107.Spec := by
  intro n
  simp only [A017543, Nat.add_sub_cancel, A017543.P8346350477184181107.a, A017543.P14741278206270986896.a, A016931, A016931.P9569117993905758019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017543

/-! ## A017543.P1163837590601192453

`A016921(2*n)*A016930(2*n)`
-/

namespace A017543.P1163837590601192453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (2 * n) * A016930 (2 * n)

end

end A017543.P1163837590601192453

namespace A017543

/-- `A016921(2*n)*A016930(2*n)` -/
def P1163837590601192453.Spec : Prop :=
  ∀ n, P1163837590601192453.a n = A017543 n

theorem P1163837590601192453.correct : P1163837590601192453.Spec := by
  intro n
  simp only [A017543, Nat.add_sub_cancel, A017543.P1163837590601192453.a, A017543.P14741278206270986896.a, A016921, A016921.P18318603358862595186.a, A016930, A016930.P13854082548963173773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017543

/-! ## A017543.P13404059799474862911

`A016932(2*n)/A016921(2*n)`
-/

namespace A017543.P13404059799474862911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016932 (2 * n) : ℚ) / (A016921 (2 * n) : ℚ)

end

end A017543.P13404059799474862911

namespace A017543

/-- `A016932(2*n)/A016921(2*n)` -/
def P13404059799474862911.Spec : Prop :=
  ∀ n, P13404059799474862911.a n = (A017543 n : ℚ)

theorem P13404059799474862911.correct : P13404059799474862911.Spec := by
  intro n
  simp only [A017543, Nat.add_sub_cancel, A017543.P13404059799474862911.a, A017543.P14741278206270986896.a, A016921, A016921.P18318603358862595186.a, A016932, A016932.P3913389668168339981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017543

/-! ## A017543.P14622538727993760859

`A016921(2*n)²*A016929(2*n)`
-/

namespace A017543.P14622538727993760859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (2 * n) ^ 2 * A016929 (2 * n)

end

end A017543.P14622538727993760859

namespace A017543

/-- `A016921(2*n)²*A016929(2*n)` -/
def P14622538727993760859.Spec : Prop :=
  ∀ n, P14622538727993760859.a n = A017543 n

theorem P14622538727993760859.correct : P14622538727993760859.Spec := by
  intro n
  simp only [A017543, Nat.add_sub_cancel, A017543.P14622538727993760859.a, A017543.P14741278206270986896.a, A016921, A016921.P18318603358862595186.a, A016929, A016929.P9280878692414037459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017543

/-! ## A017543.P627616057462159604

`A016926(2*n)²/A016921(2*n)`
-/

namespace A017543.P627616057462159604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016926 (2 * n) ^ 2 : ℚ) / (A016921 (2 * n) : ℚ)

end

end A017543.P627616057462159604

namespace A017543

/-- `A016926(2*n)²/A016921(2*n)` -/
def P627616057462159604.Spec : Prop :=
  ∀ n, P627616057462159604.a n = (A017543 n : ℚ)

theorem P627616057462159604.correct : P627616057462159604.Spec := by
  intro n
  simp only [A017543, Nat.add_sub_cancel, A017543.P627616057462159604.a, A017543.P14741278206270986896.a, A016921, A016921.P18318603358862595186.a, A016926, A016926.P17236842597661192459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017543

/-! ## A017543.P11068259054591464731

`A016922(2*n)²²*A016923(2*n)`
-/

namespace A017543.P11068259054591464731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016922 (2 * n) ^ 2) ^ 2 * A016923 (2 * n)

end

end A017543.P11068259054591464731

namespace A017543

/-- `A016922(2*n)²²*A016923(2*n)` -/
def P11068259054591464731.Spec : Prop :=
  ∀ n, P11068259054591464731.a n = A017543 n

theorem P11068259054591464731.correct : P11068259054591464731.Spec := by
  intro n
  simp only [A017543, Nat.add_sub_cancel, A017543.P11068259054591464731.a, A017543.P14741278206270986896.a, A016922, A016922.P12735287873668454303.a, A016923, A016923.P17840807225178979514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017543

/-! ## A017543.P1500578884070644883

`A016921(2*n)²²*A016927(2*n)`
-/

namespace A017543.P1500578884070644883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016921 (2 * n) ^ 2) ^ 2 * A016927 (2 * n)

end

end A017543.P1500578884070644883

namespace A017543

/-- `A016921(2*n)²²*A016927(2*n)` -/
def P1500578884070644883.Spec : Prop :=
  ∀ n, P1500578884070644883.a n = A017543 n

theorem P1500578884070644883.correct : P1500578884070644883.Spec := by
  intro n
  simp only [A017543, Nat.add_sub_cancel, A017543.P1500578884070644883.a, A017543.P14741278206270986896.a, A016921, A016921.P18318603358862595186.a, A016927, A016927.P17931775019733470070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017543

/-! ## A017543.P4186653737382125282

`A016923(2*n)²²/A016921(2*n)`
-/

namespace A017543.P4186653737382125282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016923 (2 * n) ^ 2) ^ 2 : ℚ) / (A016921 (2 * n) : ℚ)

end

end A017543.P4186653737382125282

namespace A017543

/-- `A016923(2*n)²²/A016921(2*n)` -/
def P4186653737382125282.Spec : Prop :=
  ∀ n, P4186653737382125282.a n = (A017543 n : ℚ)

theorem P4186653737382125282.correct : P4186653737382125282.Spec := by
  intro n
  simp only [A017543, Nat.add_sub_cancel, A017543.P4186653737382125282.a, A017543.P14741278206270986896.a, A016921, A016921.P18318603358862595186.a, A016923, A016923.P17840807225178979514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017543

/-! ## A017543.P3617445947363591050

`(A000567(2*n+1)-A000567(2*n))*A016930(2*n)`
-/

namespace A017543.P3617445947363591050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000567 (2 * n + 1) - A000567 (2 * n)) * A016930 (2 * n)

end

end A017543.P3617445947363591050

namespace A017543

/-- `(A000567(2*n+1)-A000567(2*n))*A016930(2*n)` -/
def P3617445947363591050.Spec : Prop :=
  ∀ n, P3617445947363591050.a n = A017543 n

theorem P3617445947363591050.correct : P3617445947363591050.Spec := by
  intro n
  simp only [A017543, Nat.add_sub_cancel, A017543.P3617445947363591050.a, A017543.P14741278206270986896.a, A000567, A000567.P17850767079432249295.a, A016930, A016930.P13854082548963173773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017543

/-! ## A017543.P9353852202726423523

`A016932(2*n)/(A000567(2*n+1)-A000567(2*n))`
-/

namespace A017543.P9353852202726423523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016932 (2 * n) : ℚ) / (A000567 (2 * n + 1) - A000567 (2 * n) : ℚ)

end

end A017543.P9353852202726423523

namespace A017543

/-- `A016932(2*n)/(A000567(2*n+1)-A000567(2*n))` -/
def P9353852202726423523.Spec : Prop :=
  ∀ n, P9353852202726423523.a n = (A017543 n : ℚ)

end A017543

/-! ## A017543.P4737590527462060772

`A016823(3*n)`
-/

namespace A017543.P4737590527462060772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016823 (3 * n)

end

end A017543.P4737590527462060772

namespace A017543

/-- `A016823(3*n)` -/
def P4737590527462060772.Spec : Prop :=
  ∀ n, P4737590527462060772.a n = A017543 n

theorem P4737590527462060772.correct : P4737590527462060772.Spec := by
  intro n
  simp only [A017543, Nat.add_sub_cancel, A017543.P4737590527462060772.a, A017543.P14741278206270986896.a, A016823, A016823.P8133131490654501830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017543

/-! ## A017543.P5069485128415954222

`A016787(4*n)`
-/

namespace A017543.P5069485128415954222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016787 (4 * n)

end

end A017543.P5069485128415954222

namespace A017543

/-- `A016787(4*n)` -/
def P5069485128415954222.Spec : Prop :=
  ∀ n, P5069485128415954222.a n = A017543 n

theorem P5069485128415954222.correct : P5069485128415954222.Spec := by
  intro n
  simp only [A017543, Nat.add_sub_cancel, A017543.P5069485128415954222.a, A017543.P14741278206270986896.a, A016787, A016787.P1597524615219779150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017543

/-! ## A017543.P7963774853611838039

`A016763(6*n)`
-/

namespace A017543.P7963774853611838039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016763 (6 * n)

end

end A017543.P7963774853611838039

namespace A017543

/-- `A016763(6*n)` -/
def P7963774853611838039.Spec : Prop :=
  ∀ n, P7963774853611838039.a n = A017543 n

theorem P7963774853611838039.correct : P7963774853611838039.Spec := by
  intro n
  simp only [A017543, Nat.add_sub_cancel, A017543.P7963774853611838039.a, A017543.P14741278206270986896.a, A016763, A016763.P10124515130881189729.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017543

/-!
# A017544: a(n) = (12*n + 1)^12.

The programs for A017544, the canonical program `A017544.P5234558215011940767` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017544 has offset 0).

The definition of A017544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017544.P5234558215011940767

`A017538(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017544

/-- `A017538(n)²` -/
def P5234558215011940767.Spec : Prop :=
  ∀ n, P5234558215011940767.a n = A017544 n

theorem P5234558215011940767.correct : P5234558215011940767.Spec := by
  intro n
  simp only [A017544]

end A017544

/-! ## A017544.P13719882198499714721

`A017536(n)^3`
-/

namespace A017544.P13719882198499714721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017536 n ^ 3

end

end A017544.P13719882198499714721

namespace A017544

/-- `A017536(n)^3` -/
def P13719882198499714721.Spec : Prop :=
  ∀ n, P13719882198499714721.a n = A017544 n

theorem P13719882198499714721.correct : P13719882198499714721.Spec := by
  intro n
  simp only [A017544, Nat.add_sub_cancel, A017544.P13719882198499714721.a, A017544.P5234558215011940767.a, A017536, A017536.P11204243538406648055.a, A017538, A017538.P16257653880807579146.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017544

/-! ## A017544.P7750064219072609586

`A017535(n)^4`
-/

namespace A017544.P7750064219072609586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017535 n ^ 4

end

end A017544.P7750064219072609586

namespace A017544

/-- `A017535(n)^4` -/
def P7750064219072609586.Spec : Prop :=
  ∀ n, P7750064219072609586.a n = A017544 n

theorem P7750064219072609586.correct : P7750064219072609586.Spec := by
  intro n
  simp only [A017544, Nat.add_sub_cancel, A017544.P7750064219072609586.a, A017544.P5234558215011940767.a, A017535, A017535.P6022267949246297963.a, A017538, A017538.P16257653880807579146.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017544

/-! ## A017544.P276682164867314282

`A017533(n)^12`
-/

namespace A017544.P276682164867314282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n ^ 12

end

end A017544.P276682164867314282

namespace A017544

/-- `A017533(n)^12` -/
def P276682164867314282.Spec : Prop :=
  ∀ n, P276682164867314282.a n = A017544 n

theorem P276682164867314282.correct : P276682164867314282.Spec := by
  intro n
  simp only [A017544, Nat.add_sub_cancel, A017544.P276682164867314282.a, A017544.P5234558215011940767.a, A017533, A017533.P146508076441825746.a, A017538, A017538.P16257653880807579146.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017544

/-! ## A017544.P11440145677308582396

`A016922(2*n)^6`
-/

namespace A017544.P11440145677308582396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 (2 * n) ^ 6

end

end A017544.P11440145677308582396

namespace A017544

/-- `A016922(2*n)^6` -/
def P11440145677308582396.Spec : Prop :=
  ∀ n, P11440145677308582396.a n = A017544 n

theorem P11440145677308582396.correct : P11440145677308582396.Spec := by
  intro n
  simp only [A017544, Nat.add_sub_cancel, A017544.P11440145677308582396.a, A017544.P5234558215011940767.a, A016922, A016922.P12735287873668454303.a, A017538, A017538.P16257653880807579146.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017544

/-!
# A017545: a(n) = 12*n + 2.

The programs for A017545, the canonical program `A017545.P14965093399951293214` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017545 has offset 0).

The definition of A017545 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n+2` (program `A017545.P14965093399951293214`, by `A017545.P14965093399951293214.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017545.P14965093399951293214

`12*n+2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017545

/-- `12*n+2` -/
def P14965093399951293214.Spec : Prop :=
  ∀ n, (P14965093399951293214.a n : ℤ) = A017545 n

theorem P14965093399951293214.correct : P14965093399951293214.Spec := by
  intro n
  simp only [A017545]

end A017545

/-!
# A017546: a(n) = (12*n + 2)^2.

The programs for A017546, the canonical program `A017546.P10402567773459972920` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017546 has offset 0).

The definition of A017546 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+2)²` (program `A017546.P10402567773459972920`, by `A017546.P10402567773459972920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017546.P10402567773459972920

`(12*n+2)²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017546

/-- `(12*n+2)²` -/
def P10402567773459972920.Spec : Prop :=
  ∀ n, (P10402567773459972920.a n : ℤ) = A017546 n

theorem P10402567773459972920.correct : P10402567773459972920.Spec := by
  intro n
  simp only [A017546]

end A017546

/-! ## A017546.P2367000667993245025

`ogf((4+184x+100x^2)/(1-3x+3x^2-x^3))`
-/

namespace A017546.P2367000667993245025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 184, 100] [1, -3, 3, -1] n

end

end A017546.P2367000667993245025

namespace A017546

/-- `ogf((4+184x+100x^2)/(1-3x+3x^2-x^3))` -/
def P2367000667993245025.Spec : Prop :=
  ∀ n, P2367000667993245025.a n = A017546 n

end A017546

/-! ## A017546.P17373591112883426134

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=4, a(1)=196, a(2)=676`
-/

namespace A017546.P17373591112883426134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 196, 676] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017546.P17373591112883426134

namespace A017546

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P17373591112883426134.Spec : Prop :=
  ∀ n, P17373591112883426134.a n = A017546 n

theorem P17373591112883426134.correct : P17373591112883426134.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017546, Nat.add_sub_cancel, A017546.P17373591112883426134.a, A017546.P10402567773459972920.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017546, Nat.add_sub_cancel, A017546.P17373591112883426134.a, A017546.P10402567773459972920.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A017546

/-! ## A017546.P14142926883955631901

`or(2, 12*n)^2`
-/

namespace A017546.P14142926883955631901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (12 * n) ^ 2

end

end A017546.P14142926883955631901

namespace A017546

/-- `or(2, 12*n)^2` -/
def P14142926883955631901.Spec : Prop :=
  ∀ n, (P14142926883955631901.a n : ℤ) = A017546 n

end A017546

/-! ## A017546.P7910185783181138227

`4*or(1, 6*n)²`
-/

namespace A017546.P7910185783181138227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.lor 1 (6 * n) ^ 2

end

end A017546.P7910185783181138227

namespace A017546

/-- `4*or(1, 6*n)²` -/
def P7910185783181138227.Spec : Prop :=
  ∀ n, (P7910185783181138227.a n : ℤ) = A017546 n

end A017546

/-! ## A017546.P11411888255992280812

`4*xor(1, 6*n)²`
-/

namespace A017546.P11411888255992280812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.xor 1 (6 * n) ^ 2

end

end A017546.P11411888255992280812

namespace A017546

/-- `4*xor(1, 6*n)²` -/
def P11411888255992280812.Spec : Prop :=
  ∀ n, (P11411888255992280812.a n : ℤ) = A017546 n

end A017546

/-! ## A017546.P10848160917359517603

`sqrt(A017548(n))`
-/

namespace A017546.P10848160917359517603
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017548 n : ℝ)

end

end A017546.P10848160917359517603

namespace A017546

/-- `sqrt(A017548(n))` -/
def P10848160917359517603.Spec : Prop :=
  ∀ n, P10848160917359517603.a n = (A017546 n : ℝ)

end A017546

/-! ## A017546.P3066234834218036626

`4*A016922(n)`
-/

namespace A017546.P3066234834218036626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016922 n

end

end A017546.P3066234834218036626

namespace A017546

/-- `4*A016922(n)` -/
def P3066234834218036626.Spec : Prop :=
  ∀ n, P3066234834218036626.a n = A017546 n

theorem P3066234834218036626.correct : P3066234834218036626.Spec := by
  intro n
  simp only [A017546, Nat.add_sub_cancel, A017546.P3066234834218036626.a, A017546.P10402567773459972920.a, A016922, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017546

/-! ## A017546.P1084179956194637932

`sqrt(sqrt(A017552(n)))`
-/

namespace A017546.P1084179956194637932
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017552 n : ℝ))

end

end A017546.P1084179956194637932

namespace A017546

/-- `sqrt(sqrt(A017552(n)))` -/
def P1084179956194637932.Spec : Prop :=
  ∀ n, P1084179956194637932.a n = (A017546 n : ℝ)

end A017546

/-! ## A017546.P7795064047067357895

`4*A016921(n)²`
-/

namespace A017546.P7795064047067357895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016921 n ^ 2

end

end A017546.P7795064047067357895

namespace A017546

/-- `4*A016921(n)²` -/
def P7795064047067357895.Spec : Prop :=
  ∀ n, P7795064047067357895.a n = A017546 n

theorem P7795064047067357895.correct : P7795064047067357895.Spec := by
  intro n
  simp only [A017546, Nat.add_sub_cancel, A017546.P7795064047067357895.a, A017546.P10402567773459972920.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017546

/-! ## A017546.P16017793871016026045

`4*sqrt(A016924(n))`
-/

namespace A017546.P16017793871016026045
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A016924 n : ℝ)

end

end A017546.P16017793871016026045

namespace A017546

/-- `4*sqrt(A016924(n))` -/
def P16017793871016026045.Spec : Prop :=
  ∀ n, P16017793871016026045.a n = (A017546 n : ℝ)

end A017546

/-! ## A017546.P7731042274238232036

`A017550(n)^(1/3)`
-/

namespace A017546.P7731042274238232036
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017550 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017546.P7731042274238232036

namespace A017546

/-- `A017550(n)^(1/3)` -/
def P7731042274238232036.Spec : Prop :=
  ∀ n, P7731042274238232036.a n = (A017546 n : ℝ)

end A017546

/-! ## A017546.P808615343988185076

`A017547(n)^(2/3)`
-/

namespace A017546.P808615343988185076
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017547 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017546.P808615343988185076

namespace A017546

/-- `A017547(n)^(2/3)` -/
def P808615343988185076.Spec : Prop :=
  ∀ n, P808615343988185076.a n = (A017546 n : ℝ)

end A017546

/-! ## A017546.P18140493480781742305

`A017545(n)*A017545(n)`
-/

namespace A017546.P18140493480781742305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n * A017545 n

end

end A017546.P18140493480781742305

namespace A017546

/-- `A017545(n)*A017545(n)` -/
def P18140493480781742305.Spec : Prop :=
  ∀ n, P18140493480781742305.a n = A017546 n

theorem P18140493480781742305.correct : P18140493480781742305.Spec := by
  intro n
  simp only [A017546, Nat.add_sub_cancel, A017546.P18140493480781742305.a, A017546.P10402567773459972920.a, A017545, A017545.P14965093399951293214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017546

/-! ## A017546.P12341084601053903282

`A017547(n)/A017545(n)`
-/

namespace A017546.P12341084601053903282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017547 n : ℚ) / (A017545 n : ℚ)

end

end A017546.P12341084601053903282

namespace A017546

/-- `A017547(n)/A017545(n)` -/
def P12341084601053903282.Spec : Prop :=
  ∀ n, P12341084601053903282.a n = (A017546 n : ℚ)

end A017546

/-! ## A017546.P17087744478052109400

`A017549(n)/A017547(n)`
-/

namespace A017546.P17087744478052109400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017549 n : ℚ) / (A017547 n : ℚ)

end

end A017546.P17087744478052109400

namespace A017546

/-- `A017549(n)/A017547(n)` -/
def P17087744478052109400.Spec : Prop :=
  ∀ n, P17087744478052109400.a n = (A017546 n : ℚ)

end A017546

/-! ## A017546.P1786007288376789316

`A017550(n)/A017548(n)`
-/

namespace A017546.P1786007288376789316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017550 n : ℚ) / (A017548 n : ℚ)

end

end A017546.P1786007288376789316

namespace A017546

/-- `A017550(n)/A017548(n)` -/
def P1786007288376789316.Spec : Prop :=
  ∀ n, P1786007288376789316.a n = (A017546 n : ℚ)

end A017546

/-! ## A017546.P6335208240840294155

`A017547(n)²/A017548(n)`
-/

namespace A017546.P6335208240840294155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017547 n ^ 2 : ℚ) / (A017548 n : ℚ)

end

end A017546.P6335208240840294155

namespace A017546

/-- `A017547(n)²/A017548(n)` -/
def P6335208240840294155.Spec : Prop :=
  ∀ n, P6335208240840294155.a n = (A017546 n : ℚ)

end A017546

/-! ## A017546.P7461642143555914165

`A017550(n)/A017545(n)²²`
-/

namespace A017546.P7461642143555914165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017550 n : ℚ) / ((A017545 n ^ 2) ^ 2 : ℚ)

end

end A017546.P7461642143555914165

namespace A017546

/-- `A017550(n)/A017545(n)²²` -/
def P7461642143555914165.Spec : Prop :=
  ∀ n, P7461642143555914165.a n = (A017546 n : ℚ)

end A017546

/-! ## A017546.P17752783391086276975

`(2*A016924(n))²/A016926(n)`
-/

namespace A017546.P17752783391086276975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * A016924 n) ^ 2 : ℚ) / (A016926 n : ℚ)

end

end A017546.P17752783391086276975

namespace A017546

/-- `(2*A016924(n))²/A016926(n)` -/
def P17752783391086276975.Spec : Prop :=
  ∀ n, P17752783391086276975.a n = (A017546 n : ℚ)

theorem P17752783391086276975.correct : P17752783391086276975.Spec := by
  intro n
  simp only [A017546, Nat.add_sub_cancel, A017546.P17752783391086276975.a, A017546.P10402567773459972920.a, A016924, A016924.P9244154985732422165.a, A016926, A016926.P17236842597661192459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017546

/-!
# A017547: a(n) = (12*n + 2)^3.

The programs for A017547, the canonical program `A017547.P10391440261630002319` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017547 has offset 0).

The definition of A017547 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+2)^3` (program `A017547.P10391440261630002319`, by `A017547.P10391440261630002319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017547.P10391440261630002319

`(12*n+2)^3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017547

/-- `(12*n+2)^3` -/
def P10391440261630002319.Spec : Prop :=
  ∀ n, (P10391440261630002319.a n : ℤ) = A017547 n

theorem P10391440261630002319.correct : P10391440261630002319.Spec := by
  intro n
  simp only [A017547]

end A017547

/-! ## A017547.P9168974195890589613

`root(or(2, 12*n), 1/3)`
-/

namespace A017547.P9168974195890589613
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (12 * n) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A017547.P9168974195890589613

namespace A017547

/-- `root(or(2, 12*n), 1/3)` -/
def P9168974195890589613.Spec : Prop :=
  ∀ n, P9168974195890589613.a n = (A017547 n : ℝ)

end A017547

/-! ## A017547.P15092100004315139236

`lcm(2, or(2, 12*n)^3)`
-/

namespace A017547.P15092100004315139236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.lor 2 (12 * n) ^ 3)

end

end A017547.P15092100004315139236

namespace A017547

/-- `lcm(2, or(2, 12*n)^3)` -/
def P15092100004315139236.Spec : Prop :=
  ∀ n, (P15092100004315139236.a n : ℤ) = A017547 n

end A017547

/-! ## A017547.P5070029371232406644

`lcm(4, xor(2, 12*n)^3)`
-/

namespace A017547.P5070029371232406644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (Nat.xor 2 (12 * n) ^ 3)

end

end A017547.P5070029371232406644

namespace A017547

/-- `lcm(4, xor(2, 12*n)^3)` -/
def P5070029371232406644.Spec : Prop :=
  ∀ n, (P5070029371232406644.a n : ℤ) = A017547 n

end A017547

/-! ## A017547.P11892122586861757595

`or(8, or(2, 12*n)^3)`
-/

namespace A017547.P11892122586861757595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 8 (Nat.lor 2 (12 * n) ^ 3)

end

end A017547.P11892122586861757595

namespace A017547

/-- `or(8, or(2, 12*n)^3)` -/
def P11892122586861757595.Spec : Prop :=
  ∀ n, (P11892122586861757595.a n : ℤ) = A017547 n

end A017547

/-! ## A017547.P134111513764114858

`sqrt(A017550(n))`
-/

namespace A017547.P134111513764114858
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017550 n : ℝ)

end

end A017547.P134111513764114858

namespace A017547

/-- `sqrt(A017550(n))` -/
def P134111513764114858.Spec : Prop :=
  ∀ n, P134111513764114858.a n = (A017547 n : ℝ)

end A017547

/-! ## A017547.P13774427371173126200

`8*A016923(n)`
-/

namespace A017547.P13774427371173126200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016923 n

end

end A017547.P13774427371173126200

namespace A017547

/-- `8*A016923(n)` -/
def P13774427371173126200.Spec : Prop :=
  ∀ n, P13774427371173126200.a n = A017547 n

theorem P13774427371173126200.correct : P13774427371173126200.Spec := by
  intro n
  simp only [A017547, Nat.add_sub_cancel, A017547.P13774427371173126200.a, A017547.P10391440261630002319.a, A016923, A016923.P17840807225178979514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017547

/-! ## A017547.P15606818264760168698

`sqrt(A017546(n)^3)`
-/

namespace A017547.P15606818264760168698
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017546 n ^ 3 : ℝ)

end

end A017547.P15606818264760168698

namespace A017547

/-- `sqrt(A017546(n)^3)` -/
def P15606818264760168698.Spec : Prop :=
  ∀ n, P15606818264760168698.a n = (A017547 n : ℝ)

end A017547

/-! ## A017547.P14277579688103413522

`A017545(n)*A017546(n)`
-/

namespace A017547.P14277579688103413522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n * A017546 n

end

end A017547.P14277579688103413522

namespace A017547

/-- `A017545(n)*A017546(n)` -/
def P14277579688103413522.Spec : Prop :=
  ∀ n, P14277579688103413522.a n = A017547 n

theorem P14277579688103413522.correct : P14277579688103413522.Spec := by
  intro n
  simp only [A017547, Nat.add_sub_cancel, A017547.P14277579688103413522.a, A017547.P10391440261630002319.a, A017545, A017545.P14965093399951293214.a, A017546, A017546.P10402567773459972920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017547

/-! ## A017547.P4035007426383103854

`A017548(n)/A017545(n)`
-/

namespace A017547.P4035007426383103854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017548 n : ℚ) / (A017545 n : ℚ)

end

end A017547.P4035007426383103854

namespace A017547

/-- `A017548(n)/A017545(n)` -/
def P4035007426383103854.Spec : Prop :=
  ∀ n, P4035007426383103854.a n = (A017547 n : ℚ)

end A017547

/-! ## A017547.P14480227756707073508

`A017549(n)/A017546(n)`
-/

namespace A017547.P14480227756707073508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017549 n : ℚ) / (A017546 n : ℚ)

end

end A017547.P14480227756707073508

namespace A017547

/-- `A017549(n)/A017546(n)` -/
def P14480227756707073508.Spec : Prop :=
  ∀ n, P14480227756707073508.a n = (A017547 n : ℚ)

end A017547

/-! ## A017547.P12569982136602642462

`A017549(n)/A017545(n)²`
-/

namespace A017547.P12569982136602642462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017549 n : ℚ) / (A017545 n ^ 2 : ℚ)

end

end A017547.P12569982136602642462

namespace A017547

/-- `A017549(n)/A017545(n)²` -/
def P12569982136602642462.Spec : Prop :=
  ∀ n, P12569982136602642462.a n = (A017547 n : ℚ)

end A017547

/-! ## A017547.P17601393232397485355

`A017550(n)/(A017545(n)²*A017545(n))`
-/

namespace A017547.P17601393232397485355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017550 n : ℚ) / (A017545 n ^ 2 * A017545 n : ℚ)

end

end A017547.P17601393232397485355

namespace A017547

/-- `A017550(n)/(A017545(n)²*A017545(n))` -/
def P17601393232397485355.Spec : Prop :=
  ∀ n, P17601393232397485355.a n = (A017547 n : ℚ)

end A017547

/-! ## A017547.P11693884527689284262

`A016825(3*n)²*A016825(3*n)`
-/

namespace A017547.P11693884527689284262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (3 * n) ^ 2 * A016825 (3 * n)

end

end A017547.P11693884527689284262

namespace A017547

/-- `A016825(3*n)²*A016825(3*n)` -/
def P11693884527689284262.Spec : Prop :=
  ∀ n, P11693884527689284262.a n = A017547 n

theorem P11693884527689284262.correct : P11693884527689284262.Spec := by
  intro n
  simp only [A017547, Nat.add_sub_cancel, A017547.P11693884527689284262.a, A017547.P10391440261630002319.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017547

/-! ## A017547.P7256621400399740227

`A016933(2*n)²*A016933(2*n)`
-/

namespace A017547.P7256621400399740227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 (2 * n) ^ 2 * A016933 (2 * n)

end

end A017547.P7256621400399740227

namespace A017547

/-- `A016933(2*n)²*A016933(2*n)` -/
def P7256621400399740227.Spec : Prop :=
  ∀ n, P7256621400399740227.a n = A017547 n

theorem P7256621400399740227.correct : P7256621400399740227.Spec := by
  intro n
  simp only [A017547, Nat.add_sub_cancel, A017547.P7256621400399740227.a, A017547.P10391440261630002319.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017547

/-! ## A017547.P3777539083823862824

`A016935(2*n)`
-/

namespace A017547.P3777539083823862824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016935 (2 * n)

end

end A017547.P3777539083823862824

namespace A017547

/-- `A016935(2*n)` -/
def P3777539083823862824.Spec : Prop :=
  ∀ n, P3777539083823862824.a n = A017547 n

theorem P3777539083823862824.correct : P3777539083823862824.Spec := by
  intro n
  simp only [A017547, Nat.add_sub_cancel, A017547.P3777539083823862824.a, A017547.P10391440261630002319.a, A016935, A016935.P257911674419970010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017547

/-! ## A017547.P5487401785276352715

`sqrt(A016938(2*n))`
-/

namespace A017547.P5487401785276352715
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016938 (2 * n) : ℝ)

end

end A017547.P5487401785276352715

namespace A017547

/-- `sqrt(A016938(2*n))` -/
def P5487401785276352715.Spec : Prop :=
  ∀ n, P5487401785276352715.a n = (A017547 n : ℝ)

end A017547

/-! ## A017547.P14380460571367774551

`8*A016779(2*n)`
-/

namespace A017547.P14380460571367774551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016779 (2 * n)

end

end A017547.P14380460571367774551

namespace A017547

/-- `8*A016779(2*n)` -/
def P14380460571367774551.Spec : Prop :=
  ∀ n, P14380460571367774551.a n = A017547 n

theorem P14380460571367774551.correct : P14380460571367774551.Spec := by
  intro n
  simp only [A017547, Nat.add_sub_cancel, A017547.P14380460571367774551.a, A017547.P10391440261630002319.a, A016779, A016779.P12183208488872344435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017547

/-! ## A017547.P11697927902331038272

`A017571(2*n)/8`
-/

namespace A017547.P11697927902331038272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017571 (2 * n) : ℚ) / 8

end

end A017547.P11697927902331038272

namespace A017547

/-- `A017571(2*n)/8` -/
def P11697927902331038272.Spec : Prop :=
  ∀ n, P11697927902331038272.a n = (A017547 n : ℚ)

theorem P11697927902331038272.correct : P11697927902331038272.Spec := by
  intro n
  simp only [A017547, Nat.add_sub_cancel, A017547.P11697927902331038272.a, A017547.P10391440261630002319.a, A017571, A017571.P17779126235710720224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017547

/-! ## A017547.P6198899600119255751

`A016933(2*n)*A016934(2*n)`
-/

namespace A017547.P6198899600119255751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 (2 * n) * A016934 (2 * n)

end

end A017547.P6198899600119255751

namespace A017547

/-- `A016933(2*n)*A016934(2*n)` -/
def P6198899600119255751.Spec : Prop :=
  ∀ n, P6198899600119255751.a n = A017547 n

theorem P6198899600119255751.correct : P6198899600119255751.Spec := by
  intro n
  simp only [A017547, Nat.add_sub_cancel, A017547.P6198899600119255751.a, A017547.P10391440261630002319.a, A016933, A016933.P15647137774340761443.a, A016934, A016934.P9224462813878172161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017547

/-!
# A017548: a(n) = (12*n + 2)^4.

The programs for A017548, the canonical program `A017548.P12289776938983174444` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017548 has offset 0).

The definition of A017548 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+2)^4` (program `A017548.P12289776938983174444`, by `A017548.P12289776938983174444.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017548.P12289776938983174444

`(12*n+2)^4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017548

/-- `(12*n+2)^4` -/
def P12289776938983174444.Spec : Prop :=
  ∀ n, (P12289776938983174444.a n : ℤ) = A017548 n

theorem P12289776938983174444.correct : P12289776938983174444.Spec := by
  intro n
  simp only [A017548]

end A017548

/-! ## A017548.P15621362519815170534

`or(2, 12*n)²²`
-/

namespace A017548.P15621362519815170534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (12 * n) ^ 2) ^ 2

end

end A017548.P15621362519815170534

namespace A017548

/-- `or(2, 12*n)²²` -/
def P15621362519815170534.Spec : Prop :=
  ∀ n, (P15621362519815170534.a n : ℤ) = A017548 n

end A017548

/-! ## A017548.P4025388615373931636

`xor(2, 12*n)²²`
-/

namespace A017548.P4025388615373931636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (12 * n) ^ 2) ^ 2

end

end A017548.P4025388615373931636

namespace A017548

/-- `xor(2, 12*n)²²` -/
def P4025388615373931636.Spec : Prop :=
  ∀ n, (P4025388615373931636.a n : ℤ) = A017548 n

end A017548

/-! ## A017548.P17141754098036245555

`root(or(2, 12*n), 1/4)`
-/

namespace A017548.P17141754098036245555
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (12 * n) : ℝ) ^ (1 / ((1 : ℚ) / 4 : ℝ))

end

end A017548.P17141754098036245555

namespace A017548

/-- `root(or(2, 12*n), 1/4)` -/
def P17141754098036245555.Spec : Prop :=
  ∀ n, P17141754098036245555.a n = (A017548 n : ℝ)

end A017548

/-! ## A017548.P14092956553343117970

`lcm(2, or(2, 12*n)^4)`
-/

namespace A017548.P14092956553343117970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.lor 2 (12 * n) ^ 4)

end

end A017548.P14092956553343117970

namespace A017548

/-- `lcm(2, or(2, 12*n)^4)` -/
def P14092956553343117970.Spec : Prop :=
  ∀ n, (P14092956553343117970.a n : ℤ) = A017548 n

end A017548

/-! ## A017548.P5422281809696911492

`lcm(4, (8*n+4*n+2)²²)`
-/

namespace A017548.P5422281809696911492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (((8 * n + (4 * n + 2)) ^ 2) ^ 2)

end

end A017548.P5422281809696911492

namespace A017548

/-- `lcm(4, (8*n+4*n+2)²²)` -/
def P5422281809696911492.Spec : Prop :=
  ∀ n, (P5422281809696911492.a n : ℤ) = A017548 n

end A017548

/-! ## A017548.P17162048516222062558

`A017546(n)²`
-/

namespace A017548.P17162048516222062558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017546 n ^ 2

end

end A017548.P17162048516222062558

namespace A017548

/-- `A017546(n)²` -/
def P17162048516222062558.Spec : Prop :=
  ∀ n, P17162048516222062558.a n = A017548 n

theorem P17162048516222062558.correct : P17162048516222062558.Spec := by
  intro n
  simp only [A017548, Nat.add_sub_cancel, A017548.P17162048516222062558.a, A017548.P12289776938983174444.a, A017546, A017546.P10402567773459972920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017548

/-! ## A017548.P15271660604294241914

`sqrt(A017552(n))`
-/

namespace A017548.P15271660604294241914
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017552 n : ℝ)

end

end A017548.P15271660604294241914

namespace A017548

/-- `sqrt(A017552(n))` -/
def P15271660604294241914.Spec : Prop :=
  ∀ n, P15271660604294241914.a n = (A017548 n : ℝ)

end A017548

/-! ## A017548.P5743252250224413615

`A017545(n)²²`
-/

namespace A017548.P5743252250224413615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017545 n ^ 2) ^ 2

end

end A017548.P5743252250224413615

namespace A017548

/-- `A017545(n)²²` -/
def P5743252250224413615.Spec : Prop :=
  ∀ n, P5743252250224413615.a n = A017548 n

theorem P5743252250224413615.correct : P5743252250224413615.Spec := by
  intro n
  simp only [A017548, Nat.add_sub_cancel, A017548.P5743252250224413615.a, A017548.P12289776938983174444.a, A017545, A017545.P14965093399951293214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017548

/-! ## A017548.P15243743959223916731

`(4*A016922(n))²`
-/

namespace A017548.P15243743959223916731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A016922 n) ^ 2

end

end A017548.P15243743959223916731

namespace A017548

/-- `(4*A016922(n))²` -/
def P15243743959223916731.Spec : Prop :=
  ∀ n, P15243743959223916731.a n = A017548 n

theorem P15243743959223916731.correct : P15243743959223916731.Spec := by
  intro n
  simp only [A017548, Nat.add_sub_cancel, A017548.P15243743959223916731.a, A017548.P12289776938983174444.a, A016922, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017548

/-! ## A017548.P1572968663128551814

`4*4*A016924(n)`
-/

namespace A017548.P1572968663128551814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (4 * A016924 n)

end

end A017548.P1572968663128551814

namespace A017548

/-- `4*4*A016924(n)` -/
def P1572968663128551814.Spec : Prop :=
  ∀ n, P1572968663128551814.a n = A017548 n

theorem P1572968663128551814.correct : P1572968663128551814.Spec := by
  intro n
  simp only [A017548, Nat.add_sub_cancel, A017548.P1572968663128551814.a, A017548.P12289776938983174444.a, A016924, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017548

/-! ## A017548.P5147723292805560045

`(A017533(n)+1)²²`
-/

namespace A017548.P5147723292805560045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017533 n + 1) ^ 2) ^ 2

end

end A017548.P5147723292805560045

namespace A017548

/-- `(A017533(n)+1)²²` -/
def P5147723292805560045.Spec : Prop :=
  ∀ n, P5147723292805560045.a n = A017548 n

theorem P5147723292805560045.correct : P5147723292805560045.Spec := by
  intro n
  simp only [A017548, Nat.add_sub_cancel, A017548.P5147723292805560045.a, A017548.P12289776938983174444.a, A017533, A017533.P146508076441825746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017548

/-! ## A017548.P8465000318464769792

`(A008594(n)+2)²²`
-/

namespace A017548.P8465000318464769792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008594 n + 2) ^ 2) ^ 2

end

end A017548.P8465000318464769792

namespace A017548

/-- `(A008594(n)+2)²²` -/
def P8465000318464769792.Spec : Prop :=
  ∀ n, P8465000318464769792.a n = A017548 n

theorem P8465000318464769792.correct : P8465000318464769792.Spec := by
  intro n
  simp only [A017548, Nat.add_sub_cancel, A017548.P8465000318464769792.a, A017548.P12289776938983174444.a, A008594, A008594.P9877215682521385096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017548

/-! ## A017548.P15610616148507901517

`(1-A017557(n))²²`
-/

namespace A017548.P15610616148507901517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017557 n) ^ 2) ^ 2

end

end A017548.P15610616148507901517

namespace A017548

/-- `(1-A017557(n))²²` -/
def P15610616148507901517.Spec : Prop :=
  ∀ n, P15610616148507901517.a n = A017548 n

theorem P15610616148507901517.correct : P15610616148507901517.Spec := by
  intro n
  simp only [A017548, Nat.add_sub_cancel, A017548.P15610616148507901517.a, A017548.P12289776938983174444.a, A017557, A017557.P7719209615978230604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017548

/-! ## A017548.P4648084398942982229

`(2-A017569(n))²²`
-/

namespace A017548.P4648084398942982229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017569 n) ^ 2) ^ 2

end

end A017548.P4648084398942982229

namespace A017548

/-- `(2-A017569(n))²²` -/
def P4648084398942982229.Spec : Prop :=
  ∀ n, P4648084398942982229.a n = A017548 n

theorem P4648084398942982229.correct : P4648084398942982229.Spec := by
  intro n
  simp only [A017548, Nat.add_sub_cancel, A017548.P4648084398942982229.a, A017548.P12289776938983174444.a, A017569, A017569.P14340039372117997380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017548

/-! ## A017548.P10929437515655358707

`(2*A016921(n))²²`
-/

namespace A017548.P10929437515655358707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * A016921 n) ^ 2) ^ 2

end

end A017548.P10929437515655358707

namespace A017548

/-- `(2*A016921(n))²²` -/
def P10929437515655358707.Spec : Prop :=
  ∀ n, P10929437515655358707.a n = A017548 n

theorem P10929437515655358707.correct : P10929437515655358707.Spec := by
  intro n
  simp only [A017548, Nat.add_sub_cancel, A017548.P10929437515655358707.a, A017548.P12289776938983174444.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017548

/-! ## A017548.P18400612326823448677

`(3-A017581(n))²²`
-/

namespace A017548.P18400612326823448677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017581 n) ^ 2) ^ 2

end

end A017548.P18400612326823448677

namespace A017548

/-- `(3-A017581(n))²²` -/
def P18400612326823448677.Spec : Prop :=
  ∀ n, P18400612326823448677.a n = A017548 n

theorem P18400612326823448677.correct : P18400612326823448677.Spec := by
  intro n
  simp only [A017548, Nat.add_sub_cancel, A017548.P18400612326823448677.a, A017548.P12289776938983174444.a, A017581, A017581.P8854877261644846518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017548

/-! ## A017548.P7563702727095081923

`(A017413(n)+n)²²`
-/

namespace A017548.P7563702727095081923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017413 n + (n : ℤ)) ^ 2) ^ 2

end

end A017548.P7563702727095081923

namespace A017548

/-- `(A017413(n)+n)²²` -/
def P7563702727095081923.Spec : Prop :=
  ∀ n, P7563702727095081923.a n = A017548 n

theorem P7563702727095081923.correct : P7563702727095081923.Spec := by
  intro n
  simp only [A017548, Nat.add_sub_cancel, A017548.P7563702727095081923.a, A017548.P12289776938983174444.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017548

/-! ## A017548.P4459547335122614929

`(n-A153080(n))²²`
-/

namespace A017548.P4459547335122614929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A153080 n) ^ 2) ^ 2

end

end A017548.P4459547335122614929

namespace A017548

/-- `(n-A153080(n))²²` -/
def P4459547335122614929.Spec : Prop :=
  ∀ n, P4459547335122614929.a n = A017548 n

theorem P4459547335122614929.correct : P4459547335122614929.Spec := by
  intro n
  simp only [A017548, Nat.add_sub_cancel, A017548.P4459547335122614929.a, A017548.P12289776938983174444.a, A153080, A153080.P12698486162711412259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017548

/-! ## A017548.P15502571552029967444

`(sqrt(A017534(n))+1)²²`
-/

namespace A017548.P15502571552029967444
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017534 n : ℝ) + 1) ^ 2) ^ 2

end

end A017548.P15502571552029967444

namespace A017548

/-- `(sqrt(A017534(n))+1)²²` -/
def P15502571552029967444.Spec : Prop :=
  ∀ n, P15502571552029967444.a n = (A017548 n : ℝ)

end A017548

/-!
# A017549: a(n) = (12*n + 2)^5.

The programs for A017549, the canonical program `A017549.P9226642879070126315` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017549 has offset 0).

The definition of A017549 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+2)^5` (program `A017549.P9226642879070126315`, by `A017549.P9226642879070126315.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017549.P9226642879070126315

`(12*n+2)^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017549

/-- `(12*n+2)^5` -/
def P9226642879070126315.Spec : Prop :=
  ∀ n, (P9226642879070126315.a n : ℤ) = A017549 n

theorem P9226642879070126315.correct : P9226642879070126315.Spec := by
  intro n
  simp only [A017549]

end A017549

/-! ## A017549.P11780474290049849767

`(or(2, 12*n)^(5/2))²`
-/

namespace A017549.P11780474290049849767
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 (12 * n) : ℝ) ^ ((5 : ℚ) / 2 : ℝ)) ^ 2

end

end A017549.P11780474290049849767

namespace A017549

/-- `(or(2, 12*n)^(5/2))²` -/
def P11780474290049849767.Spec : Prop :=
  ∀ n, P11780474290049849767.a n = (A017549 n : ℝ)

end A017549

/-! ## A017549.P7491351433821543069

`or(2, 12*n)^4*or(2, 12*n)`
-/

namespace A017549.P7491351433821543069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (12 * n) ^ 4 * Nat.lor 2 (12 * n)

end

end A017549.P7491351433821543069

namespace A017549

/-- `or(2, 12*n)^4*or(2, 12*n)` -/
def P7491351433821543069.Spec : Prop :=
  ∀ n, (P7491351433821543069.a n : ℤ) = A017549 n

end A017549

/-! ## A017549.P3292733602150735301

`or(2, 12*n)²²*or(2, 12*n)`
-/

namespace A017549.P3292733602150735301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (12 * n) ^ 2) ^ 2 * Nat.lor 2 (12 * n)

end

end A017549.P3292733602150735301

namespace A017549

/-- `or(2, 12*n)²²*or(2, 12*n)` -/
def P3292733602150735301.Spec : Prop :=
  ∀ n, (P3292733602150735301.a n : ℤ) = A017549 n

end A017549

/-! ## A017549.P16924740022375722358

`xor(2, 12*n)²²*xor(2, 12*n)`
-/

namespace A017549.P16924740022375722358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (12 * n) ^ 2) ^ 2 * Nat.xor 2 (12 * n)

end

end A017549.P16924740022375722358

namespace A017549

/-- `xor(2, 12*n)²²*xor(2, 12*n)` -/
def P16924740022375722358.Spec : Prop :=
  ∀ n, (P16924740022375722358.a n : ℤ) = A017549 n

end A017549

/-! ## A017549.P6442703239641425922

`A017545(n)*A017548(n)`
-/

namespace A017549.P6442703239641425922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n * A017548 n

end

end A017549.P6442703239641425922

namespace A017549

/-- `A017545(n)*A017548(n)` -/
def P6442703239641425922.Spec : Prop :=
  ∀ n, P6442703239641425922.a n = A017549 n

theorem P6442703239641425922.correct : P6442703239641425922.Spec := by
  intro n
  simp only [A017549, Nat.add_sub_cancel, A017549.P6442703239641425922.a, A017549.P9226642879070126315.a, A017545, A017545.P14965093399951293214.a, A017548, A017548.P12289776938983174444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017549

/-! ## A017549.P723232837431429772

`A017546(n)*A017547(n)`
-/

namespace A017549.P723232837431429772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017546 n * A017547 n

end

end A017549.P723232837431429772

namespace A017549

/-- `A017546(n)*A017547(n)` -/
def P723232837431429772.Spec : Prop :=
  ∀ n, P723232837431429772.a n = A017549 n

theorem P723232837431429772.correct : P723232837431429772.Spec := by
  intro n
  simp only [A017549, Nat.add_sub_cancel, A017549.P723232837431429772.a, A017549.P9226642879070126315.a, A017546, A017546.P10402567773459972920.a, A017547, A017547.P10391440261630002319.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017549

/-! ## A017549.P18006028116009658354

`A017550(n)/A017545(n)`
-/

namespace A017549.P18006028116009658354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017550 n : ℚ) / (A017545 n : ℚ)

end

end A017549.P18006028116009658354

namespace A017549

/-- `A017550(n)/A017545(n)` -/
def P18006028116009658354.Spec : Prop :=
  ∀ n, P18006028116009658354.a n = (A017549 n : ℚ)

end A017549

/-! ## A017549.P5415952853919567212

`A017546(n)²*A017545(n)`
-/

namespace A017549.P5415952853919567212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017546 n ^ 2 * A017545 n

end

end A017549.P5415952853919567212

namespace A017549

/-- `A017546(n)²*A017545(n)` -/
def P5415952853919567212.Spec : Prop :=
  ∀ n, P5415952853919567212.a n = A017549 n

theorem P5415952853919567212.correct : P5415952853919567212.Spec := by
  intro n
  simp only [A017549, Nat.add_sub_cancel, A017549.P5415952853919567212.a, A017549.P9226642879070126315.a, A017545, A017545.P14965093399951293214.a, A017546, A017546.P10402567773459972920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017549

/-! ## A017549.P832341765826048552

`A017545(n)²*A017547(n)`
-/

namespace A017549.P832341765826048552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n ^ 2 * A017547 n

end

end A017549.P832341765826048552

namespace A017549

/-- `A017545(n)²*A017547(n)` -/
def P832341765826048552.Spec : Prop :=
  ∀ n, P832341765826048552.a n = A017549 n

theorem P832341765826048552.correct : P832341765826048552.Spec := by
  intro n
  simp only [A017549, Nat.add_sub_cancel, A017549.P832341765826048552.a, A017549.P9226642879070126315.a, A017545, A017545.P14965093399951293214.a, A017547, A017547.P10391440261630002319.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017549

/-! ## A017549.P8705743686089007557

`A017548(n)²/A017547(n)`
-/

namespace A017549.P8705743686089007557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017548 n ^ 2 : ℚ) / (A017547 n : ℚ)

end

end A017549.P8705743686089007557

namespace A017549

/-- `A017548(n)²/A017547(n)` -/
def P8705743686089007557.Spec : Prop :=
  ∀ n, P8705743686089007557.a n = (A017549 n : ℚ)

end A017549

/-! ## A017549.P6864774452558691159

`A016937(2*n)`
-/

namespace A017549.P6864774452558691159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016937 (2 * n)

end

end A017549.P6864774452558691159

namespace A017549

/-- `A016937(2*n)` -/
def P6864774452558691159.Spec : Prop :=
  ∀ n, P6864774452558691159.a n = A017549 n

theorem P6864774452558691159.correct : P6864774452558691159.Spec := by
  intro n
  simp only [A017549, Nat.add_sub_cancel, A017549.P6864774452558691159.a, A017549.P9226642879070126315.a, A016937, A016937.P4646017052301238627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017549

/-! ## A017549.P14257218692445513595

`abs((A016945(2*n)-1)^5)`
-/

namespace A017549.P14257218692445513595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016945 (2 * n) - 1) ^ 5|

end

end A017549.P14257218692445513595

namespace A017549

/-- `abs((A016945(2*n)-1)^5)` -/
def P14257218692445513595.Spec : Prop :=
  ∀ n, P14257218692445513595.a n = A017549 n

end A017549

/-! ## A017549.P9474725446798742402

`or(32, A016937(A005843(n)))`
-/

namespace A017549.P9474725446798742402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 32 (A016937 (A005843 n).toNat)

end

end A017549.P9474725446798742402

namespace A017549

/-- `or(32, A016937(A005843(n)))` -/
def P9474725446798742402.Spec : Prop :=
  ∀ n, P9474725446798742402.a n = A017549 n

end A017549

/-! ## A017549.P15121306676015019288

`A016933(2*n)*A016936(2*n)`
-/

namespace A017549.P15121306676015019288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 (2 * n) * A016936 (2 * n)

end

end A017549.P15121306676015019288

namespace A017549

/-- `A016933(2*n)*A016936(2*n)` -/
def P15121306676015019288.Spec : Prop :=
  ∀ n, P15121306676015019288.a n = A017549 n

theorem P15121306676015019288.correct : P15121306676015019288.Spec := by
  intro n
  simp only [A017549, Nat.add_sub_cancel, A017549.P15121306676015019288.a, A017549.P9226642879070126315.a, A016933, A016933.P15647137774340761443.a, A016936, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017549

/-! ## A017549.P2535376628662357785

`A016934(2*n)*A016935(2*n)`
-/

namespace A017549.P2535376628662357785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016934 (2 * n) * A016935 (2 * n)

end

end A017549.P2535376628662357785

namespace A017549

/-- `A016934(2*n)*A016935(2*n)` -/
def P2535376628662357785.Spec : Prop :=
  ∀ n, P2535376628662357785.a n = A017549 n

theorem P2535376628662357785.correct : P2535376628662357785.Spec := by
  intro n
  simp only [A017549, Nat.add_sub_cancel, A017549.P2535376628662357785.a, A017549.P9226642879070126315.a, A016934, A016934.P9224462813878172161.a, A016935, A016935.P257911674419970010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017549

/-! ## A017549.P11701557159800478343

`A016938(2*n)/A016933(2*n)`
-/

namespace A017549.P11701557159800478343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016938 (2 * n) : ℚ) / (A016933 (2 * n) : ℚ)

end

end A017549.P11701557159800478343

namespace A017549

/-- `A016938(2*n)/A016933(2*n)` -/
def P11701557159800478343.Spec : Prop :=
  ∀ n, P11701557159800478343.a n = (A017549 n : ℚ)

theorem P11701557159800478343.correct : P11701557159800478343.Spec := by
  intro n
  simp only [A017549, Nat.add_sub_cancel, A017549.P11701557159800478343.a, A017549.P9226642879070126315.a, A016933, A016933.P15647137774340761443.a, A016938, A016938.P15117638160680881893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017549

/-! ## A017549.P1018121075521703358

`A016939(2*n)/A016934(2*n)`
-/

namespace A017549.P1018121075521703358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016939 (2 * n) : ℚ) / (A016934 (2 * n) : ℚ)

end

end A017549.P1018121075521703358

namespace A017549

/-- `A016939(2*n)/A016934(2*n)` -/
def P1018121075521703358.Spec : Prop :=
  ∀ n, P1018121075521703358.a n = (A017549 n : ℚ)

theorem P1018121075521703358.correct : P1018121075521703358.Spec := by
  intro n
  simp only [A017549, Nat.add_sub_cancel, A017549.P1018121075521703358.a, A017549.P9226642879070126315.a, A016934, A016934.P9224462813878172161.a, A016939, A016939.P10686673164026481289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017549

/-! ## A017549.P3587546609318932550

`A016940(2*n)/A016935(2*n)`
-/

namespace A017549.P3587546609318932550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016940 (2 * n) : ℚ) / (A016935 (2 * n) : ℚ)

end

end A017549.P3587546609318932550

namespace A017549

/-- `A016940(2*n)/A016935(2*n)` -/
def P3587546609318932550.Spec : Prop :=
  ∀ n, P3587546609318932550.a n = (A017549 n : ℚ)

theorem P3587546609318932550.correct : P3587546609318932550.Spec := by
  intro n
  simp only [A017549, Nat.add_sub_cancel, A017549.P3587546609318932550.a, A017549.P9226642879070126315.a, A016935, A016935.P257911674419970010.a, A016940, A016940.P13150052677788130134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017549

/-! ## A017549.P10296911067728479054

`A016941(2*n)/A016936(2*n)`
-/

namespace A017549.P10296911067728479054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016941 (2 * n) : ℚ) / (A016936 (2 * n) : ℚ)

end

end A017549.P10296911067728479054

namespace A017549

/-- `A016941(2*n)/A016936(2*n)` -/
def P10296911067728479054.Spec : Prop :=
  ∀ n, P10296911067728479054.a n = (A017549 n : ℚ)

theorem P10296911067728479054.correct : P10296911067728479054.Spec := by
  intro n
  simp only [A017549, Nat.add_sub_cancel, A017549.P10296911067728479054.a, A017549.P9226642879070126315.a, A016936, A016936.P18248798889067781136.a, A016941, A016941.P12406819948871433003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017549

/-!
# A017550: a(n) = (12*n + 2)^6.

The programs for A017550, the canonical program `A017550.P18023443094070702974` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017550 has offset 0).

The definition of A017550 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+2)^6` (program `A017550.P18023443094070702974`, by `A017550.P18023443094070702974.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017550.P18023443094070702974

`(12*n+2)^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017550

/-- `(12*n+2)^6` -/
def P18023443094070702974.Spec : Prop :=
  ∀ n, (P18023443094070702974.a n : ℤ) = A017550 n

theorem P18023443094070702974.correct : P18023443094070702974.Spec := by
  intro n
  simp only [A017550]

end A017550

/-! ## A017550.P18014667835993844619

`(or(2, 12*n)^3)²`
-/

namespace A017550.P18014667835993844619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (12 * n) ^ 3) ^ 2

end

end A017550.P18014667835993844619

namespace A017550

/-- `(or(2, 12*n)^3)²` -/
def P18014667835993844619.Spec : Prop :=
  ∀ n, (P18014667835993844619.a n : ℤ) = A017550 n

end A017550

/-! ## A017550.P1962544335414573356

`(xor(2, 12*n)^3)²`
-/

namespace A017550.P1962544335414573356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (12 * n) ^ 3) ^ 2

end

end A017550.P1962544335414573356

namespace A017550

/-- `(xor(2, 12*n)^3)²` -/
def P1962544335414573356.Spec : Prop :=
  ∀ n, (P1962544335414573356.a n : ℤ) = A017550 n

end A017550

/-! ## A017550.P10069604352553695115

`root(or(2, 12*n), 2/12)`
-/

namespace A017550.P10069604352553695115
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (12 * n) : ℝ) ^ (1 / ((2 : ℚ) / 12 : ℝ))

end

end A017550.P10069604352553695115

namespace A017550

/-- `root(or(2, 12*n), 2/12)` -/
def P10069604352553695115.Spec : Prop :=
  ∀ n, P10069604352553695115.a n = (A017550 n : ℝ)

end A017550

/-! ## A017550.P10949270180256736935

`or(2, 12*n)^5*or(2, 12*n)`
-/

namespace A017550.P10949270180256736935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (12 * n) ^ 5 * Nat.lor 2 (12 * n)

end

end A017550.P10949270180256736935

namespace A017550

/-- `or(2, 12*n)^5*or(2, 12*n)` -/
def P10949270180256736935.Spec : Prop :=
  ∀ n, (P10949270180256736935.a n : ℤ) = A017550 n

end A017550

/-! ## A017550.P2907981288425572300

`(or(2, 12*n)²*or(2, 12*n))²`
-/

namespace A017550.P2907981288425572300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (12 * n) ^ 2 * Nat.lor 2 (12 * n)) ^ 2

end

end A017550.P2907981288425572300

namespace A017550

/-- `(or(2, 12*n)²*or(2, 12*n))²` -/
def P2907981288425572300.Spec : Prop :=
  ∀ n, (P2907981288425572300.a n : ℤ) = A017550 n

end A017550

/-! ## A017550.P7905935142253029843

`A017547(n)²`
-/

namespace A017550.P7905935142253029843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017547 n ^ 2

end

end A017550.P7905935142253029843

namespace A017550

/-- `A017547(n)²` -/
def P7905935142253029843.Spec : Prop :=
  ∀ n, P7905935142253029843.a n = A017550 n

theorem P7905935142253029843.correct : P7905935142253029843.Spec := by
  intro n
  simp only [A017550, Nat.add_sub_cancel, A017550.P7905935142253029843.a, A017550.P18023443094070702974.a, A017547, A017547.P10391440261630002319.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017550

/-! ## A017550.P8582131009753979017

`(A017545(n)^3)²`
-/

namespace A017550.P8582131009753979017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017545 n ^ 3) ^ 2

end

end A017550.P8582131009753979017

namespace A017550

/-- `(A017545(n)^3)²` -/
def P8582131009753979017.Spec : Prop :=
  ∀ n, P8582131009753979017.a n = A017550 n

theorem P8582131009753979017.correct : P8582131009753979017.Spec := by
  intro n
  simp only [A017550, Nat.add_sub_cancel, A017550.P8582131009753979017.a, A017550.P18023443094070702974.a, A017545, A017545.P14965093399951293214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017550

/-! ## A017550.P1796283800943649798

`A017545(n)*A017549(n)`
-/

namespace A017550.P1796283800943649798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n * A017549 n

end

end A017550.P1796283800943649798

namespace A017550

/-- `A017545(n)*A017549(n)` -/
def P1796283800943649798.Spec : Prop :=
  ∀ n, P1796283800943649798.a n = A017550 n

theorem P1796283800943649798.correct : P1796283800943649798.Spec := by
  intro n
  simp only [A017550, Nat.add_sub_cancel, A017550.P1796283800943649798.a, A017550.P18023443094070702974.a, A017545, A017545.P14965093399951293214.a, A017549, A017549.P9226642879070126315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017550

/-! ## A017550.P15207484707803851949

`A017546(n)*A017548(n)`
-/

namespace A017550.P15207484707803851949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017546 n * A017548 n

end

end A017550.P15207484707803851949

namespace A017550

/-- `A017546(n)*A017548(n)` -/
def P15207484707803851949.Spec : Prop :=
  ∀ n, P15207484707803851949.a n = A017550 n

theorem P15207484707803851949.correct : P15207484707803851949.Spec := by
  intro n
  simp only [A017550, Nat.add_sub_cancel, A017550.P15207484707803851949.a, A017550.P18023443094070702974.a, A017546, A017546.P10402567773459972920.a, A017548, A017548.P12289776938983174444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017550

/-! ## A017550.P14488963081116769532

`(A017545(n)*A017546(n))²`
-/

namespace A017550.P14488963081116769532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017545 n * A017546 n) ^ 2

end

end A017550.P14488963081116769532

namespace A017550

/-- `(A017545(n)*A017546(n))²` -/
def P14488963081116769532.Spec : Prop :=
  ∀ n, P14488963081116769532.a n = A017550 n

theorem P14488963081116769532.correct : P14488963081116769532.Spec := by
  intro n
  simp only [A017550, Nat.add_sub_cancel, A017550.P14488963081116769532.a, A017550.P18023443094070702974.a, A017545, A017545.P14965093399951293214.a, A017546, A017546.P10402567773459972920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017550

/-! ## A017550.P7250424237154103228

`A017545(n)²*A017548(n)`
-/

namespace A017550.P7250424237154103228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n ^ 2 * A017548 n

end

end A017550.P7250424237154103228

namespace A017550

/-- `A017545(n)²*A017548(n)` -/
def P7250424237154103228.Spec : Prop :=
  ∀ n, P7250424237154103228.a n = A017550 n

theorem P7250424237154103228.correct : P7250424237154103228.Spec := by
  intro n
  simp only [A017550, Nat.add_sub_cancel, A017550.P7250424237154103228.a, A017550.P18023443094070702974.a, A017545, A017545.P14965093399951293214.a, A017548, A017548.P12289776938983174444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017550

/-! ## A017550.P2016127670719538872

`(A017549(n)/A017546(n))²`
-/

namespace A017550.P2016127670719538872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017549 n : ℚ) / (A017546 n : ℚ)) ^ 2

end

end A017550.P2016127670719538872

namespace A017550

/-- `(A017549(n)/A017546(n))²` -/
def P2016127670719538872.Spec : Prop :=
  ∀ n, P2016127670719538872.a n = (A017550 n : ℚ)

end A017550

/-! ## A017550.P9254643689898806296

`A017552(n)/sqrt(sqrt(A017552(n)))`
-/

namespace A017550.P9254643689898806296
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017552 n : ℝ) / Real.sqrt (Real.sqrt (A017552 n : ℝ))

end

end A017550.P9254643689898806296

namespace A017550

/-- `A017552(n)/sqrt(sqrt(A017552(n)))` -/
def P9254643689898806296.Spec : Prop :=
  ∀ n, P9254643689898806296.a n = (A017550 n : ℝ)

end A017550

/-! ## A017550.P8104872083412683170

`(Δ[A139267(n)]^3)²`
-/

namespace A017550.P8104872083412683170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017550.P8104872083412683170

namespace A017550

/-- `(Δ[A139267(n)]^3)²` -/
def P8104872083412683170.Spec : Prop :=
  ∀ n, P8104872083412683170.a n = A017550 n

theorem P8104872083412683170.correct : P8104872083412683170.Spec := by
  intro n
  simp only [A017550, Nat.add_sub_cancel, A017550.P8104872083412683170.f1, A017550.P8104872083412683170.a, A017550.P18023443094070702974.a, A139267, A139267.P13870518576682485828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017550

/-! ## A017550.P11368793494578672305

`record[xor(1, n+3)^(gcd(12, n)-6)]`
-/

namespace A017550.P11368793494578672305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n + 3) : ℚ) ^ ((Nat.gcd 12 n : ℤ) - 6 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017550.P11368793494578672305

namespace A017550

/-- `record[xor(1, n+3)^(gcd(12, n)-6)]` -/
def P11368793494578672305.Spec : Prop :=
  ∀ n, P11368793494578672305.a n = (A017550 n : ℚ)

end A017550

/-! ## A017550.P12114077729450763407

`A016938(2*n)`
-/

namespace A017550.P12114077729450763407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016938 (2 * n)

end

end A017550.P12114077729450763407

namespace A017550

/-- `A016938(2*n)` -/
def P12114077729450763407.Spec : Prop :=
  ∀ n, P12114077729450763407.a n = A017550 n

theorem P12114077729450763407.correct : P12114077729450763407.Spec := by
  intro n
  simp only [A017550, Nat.add_sub_cancel, A017550.P12114077729450763407.a, A017550.P18023443094070702974.a, A016938, A016938.P15117638160680881893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017550

/-! ## A017550.P13669952989539280866

`A016935(2*n)²`
-/

namespace A017550.P13669952989539280866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016935 (2 * n) ^ 2

end

end A017550.P13669952989539280866

namespace A017550

/-- `A016935(2*n)²` -/
def P13669952989539280866.Spec : Prop :=
  ∀ n, P13669952989539280866.a n = A017550 n

theorem P13669952989539280866.correct : P13669952989539280866.Spec := by
  intro n
  simp only [A017550, Nat.add_sub_cancel, A017550.P13669952989539280866.a, A017550.P18023443094070702974.a, A016935, A016935.P257911674419970010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017550

/-! ## A017550.P8536824221479773495

`A016933(2*n)*A016937(2*n)`
-/

namespace A017550.P8536824221479773495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 (2 * n) * A016937 (2 * n)

end

end A017550.P8536824221479773495

namespace A017550

/-- `A016933(2*n)*A016937(2*n)` -/
def P8536824221479773495.Spec : Prop :=
  ∀ n, P8536824221479773495.a n = A017550 n

theorem P8536824221479773495.correct : P8536824221479773495.Spec := by
  intro n
  simp only [A017550, Nat.add_sub_cancel, A017550.P8536824221479773495.a, A017550.P18023443094070702974.a, A016933, A016933.P15647137774340761443.a, A016937, A016937.P4646017052301238627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017550

/-! ## A017550.P13515021457513270426

`A016934(2*n)*A016936(2*n)`
-/

namespace A017550.P13515021457513270426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016934 (2 * n) * A016936 (2 * n)

end

end A017550.P13515021457513270426

namespace A017550

/-- `A016934(2*n)*A016936(2*n)` -/
def P13515021457513270426.Spec : Prop :=
  ∀ n, P13515021457513270426.a n = A017550 n

theorem P13515021457513270426.correct : P13515021457513270426.Spec := by
  intro n
  simp only [A017550, Nat.add_sub_cancel, A017550.P13515021457513270426.a, A017550.P18023443094070702974.a, A016934, A016934.P9224462813878172161.a, A016936, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017550

/-!
# A017551: a(n) = (12*n + 2)^7.

The programs for A017551, the canonical program `A017551.P7262873385014040978` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017551 has offset 0).

The definition of A017551 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+2)^7` (program `A017551.P7262873385014040978`, by `A017551.P7262873385014040978.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017551.P7262873385014040978

`(12*n+2)^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017551

/-- `(12*n+2)^7` -/
def P7262873385014040978.Spec : Prop :=
  ∀ n, (P7262873385014040978.a n : ℤ) = A017551 n

theorem P7262873385014040978.correct : P7262873385014040978.Spec := by
  intro n
  simp only [A017551]

end A017551

/-! ## A017551.P5477820338647868392

`(12*n+2)²*A017549(n)`
-/

namespace A017551.P5477820338647868392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((12 * n + 2) ^ 2 : ℤ) * A017549 n

end

end A017551.P5477820338647868392

namespace A017551

/-- `(12*n+2)²*A017549(n)` -/
def P5477820338647868392.Spec : Prop :=
  ∀ n, P5477820338647868392.a n = A017551 n

theorem P5477820338647868392.correct : P5477820338647868392.Spec := by
  intro n
  simp only [A017551, Nat.add_sub_cancel, A017551.P5477820338647868392.a, A017551.P7262873385014040978.a, A017549, A017549.P9226642879070126315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017551

/-! ## A017551.P12992557043856933307

`A017545(n)*A017550(n)`
-/

namespace A017551.P12992557043856933307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n * A017550 n

end

end A017551.P12992557043856933307

namespace A017551

/-- `A017545(n)*A017550(n)` -/
def P12992557043856933307.Spec : Prop :=
  ∀ n, P12992557043856933307.a n = A017551 n

theorem P12992557043856933307.correct : P12992557043856933307.Spec := by
  intro n
  simp only [A017551, Nat.add_sub_cancel, A017551.P12992557043856933307.a, A017551.P7262873385014040978.a, A017545, A017545.P14965093399951293214.a, A017550, A017550.P18023443094070702974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017551

/-! ## A017551.P9204679921321031118

`A017547(n)*A017548(n)`
-/

namespace A017551.P9204679921321031118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017547 n * A017548 n

end

end A017551.P9204679921321031118

namespace A017551

/-- `A017547(n)*A017548(n)` -/
def P9204679921321031118.Spec : Prop :=
  ∀ n, P9204679921321031118.a n = A017551 n

theorem P9204679921321031118.correct : P9204679921321031118.Spec := by
  intro n
  simp only [A017551, Nat.add_sub_cancel, A017551.P9204679921321031118.a, A017551.P7262873385014040978.a, A017547, A017547.P10391440261630002319.a, A017548, A017548.P12289776938983174444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017551

/-! ## A017551.P12037709774075924445

`A017547(n)²*A017545(n)`
-/

namespace A017551.P12037709774075924445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017547 n ^ 2 * A017545 n

end

end A017551.P12037709774075924445

namespace A017551

/-- `A017547(n)²*A017545(n)` -/
def P12037709774075924445.Spec : Prop :=
  ∀ n, P12037709774075924445.a n = A017551 n

theorem P12037709774075924445.correct : P12037709774075924445.Spec := by
  intro n
  simp only [A017551, Nat.add_sub_cancel, A017551.P12037709774075924445.a, A017551.P7262873385014040978.a, A017545, A017545.P14965093399951293214.a, A017547, A017547.P10391440261630002319.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017551

/-! ## A017551.P4740800019306836137

`A017546(n)²*A017547(n)`
-/

namespace A017551.P4740800019306836137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017546 n ^ 2 * A017547 n

end

end A017551.P4740800019306836137

namespace A017551

/-- `A017546(n)²*A017547(n)` -/
def P4740800019306836137.Spec : Prop :=
  ∀ n, P4740800019306836137.a n = A017551 n

theorem P4740800019306836137.correct : P4740800019306836137.Spec := by
  intro n
  simp only [A017551, Nat.add_sub_cancel, A017551.P4740800019306836137.a, A017551.P7262873385014040978.a, A017546, A017546.P10402567773459972920.a, A017547, A017547.P10391440261630002319.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017551

/-! ## A017551.P8295690851793302993

`A017548(n)²/A017545(n)`
-/

namespace A017551.P8295690851793302993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017548 n ^ 2 : ℚ) / (A017545 n : ℚ)

end

end A017551.P8295690851793302993

namespace A017551

/-- `A017548(n)²/A017545(n)` -/
def P8295690851793302993.Spec : Prop :=
  ∀ n, P8295690851793302993.a n = (A017551 n : ℚ)

end A017551

/-! ## A017551.P11100935513164304971

`A017546(n)²²/A017545(n)`
-/

namespace A017551.P11100935513164304971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017546 n ^ 2) ^ 2 : ℚ) / (A017545 n : ℚ)

end

end A017551.P11100935513164304971

namespace A017551

/-- `A017546(n)²²/A017545(n)` -/
def P11100935513164304971.Spec : Prop :=
  ∀ n, P11100935513164304971.a n = (A017551 n : ℚ)

end A017551

/-! ## A017551.P190449196845059267

`A016939(2*n)`
-/

namespace A017551.P190449196845059267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016939 (2 * n)

end

end A017551.P190449196845059267

namespace A017551

/-- `A016939(2*n)` -/
def P190449196845059267.Spec : Prop :=
  ∀ n, P190449196845059267.a n = A017551 n

theorem P190449196845059267.correct : P190449196845059267.Spec := by
  intro n
  simp only [A017551, Nat.add_sub_cancel, A017551.P190449196845059267.a, A017551.P7262873385014040978.a, A016939, A016939.P10686673164026481289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017551

/-! ## A017551.P11609602235290272462

`A016933(2*n)*A016938(2*n)`
-/

namespace A017551.P11609602235290272462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 (2 * n) * A016938 (2 * n)

end

end A017551.P11609602235290272462

namespace A017551

/-- `A016933(2*n)*A016938(2*n)` -/
def P11609602235290272462.Spec : Prop :=
  ∀ n, P11609602235290272462.a n = A017551 n

theorem P11609602235290272462.correct : P11609602235290272462.Spec := by
  intro n
  simp only [A017551, Nat.add_sub_cancel, A017551.P11609602235290272462.a, A017551.P7262873385014040978.a, A016933, A016933.P15647137774340761443.a, A016938, A016938.P15117638160680881893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017551

/-! ## A017551.P7320973433938234574

`A016934(2*n)*A016937(2*n)`
-/

namespace A017551.P7320973433938234574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016934 (2 * n) * A016937 (2 * n)

end

end A017551.P7320973433938234574

namespace A017551

/-- `A016934(2*n)*A016937(2*n)` -/
def P7320973433938234574.Spec : Prop :=
  ∀ n, P7320973433938234574.a n = A017551 n

theorem P7320973433938234574.correct : P7320973433938234574.Spec := by
  intro n
  simp only [A017551, Nat.add_sub_cancel, A017551.P7320973433938234574.a, A017551.P7262873385014040978.a, A016934, A016934.P9224462813878172161.a, A016937, A016937.P4646017052301238627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017551

/-! ## A017551.P14434474644405016854

`A016935(2*n)*A016936(2*n)`
-/

namespace A017551.P14434474644405016854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016935 (2 * n) * A016936 (2 * n)

end

end A017551.P14434474644405016854

namespace A017551

/-- `A016935(2*n)*A016936(2*n)` -/
def P14434474644405016854.Spec : Prop :=
  ∀ n, P14434474644405016854.a n = A017551 n

theorem P14434474644405016854.correct : P14434474644405016854.Spec := by
  intro n
  simp only [A017551, Nat.add_sub_cancel, A017551.P14434474644405016854.a, A017551.P7262873385014040978.a, A016935, A016935.P257911674419970010.a, A016936, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017551

/-! ## A017551.P5320798998597603953

`A016940(2*n)/A016933(2*n)`
-/

namespace A017551.P5320798998597603953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016940 (2 * n) : ℚ) / (A016933 (2 * n) : ℚ)

end

end A017551.P5320798998597603953

namespace A017551

/-- `A016940(2*n)/A016933(2*n)` -/
def P5320798998597603953.Spec : Prop :=
  ∀ n, P5320798998597603953.a n = (A017551 n : ℚ)

theorem P5320798998597603953.correct : P5320798998597603953.Spec := by
  intro n
  simp only [A017551, Nat.add_sub_cancel, A017551.P5320798998597603953.a, A017551.P7262873385014040978.a, A016933, A016933.P15647137774340761443.a, A016940, A016940.P13150052677788130134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017551

/-! ## A017551.P7310098068794511402

`A016941(2*n)/A016934(2*n)`
-/

namespace A017551.P7310098068794511402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016941 (2 * n) : ℚ) / (A016934 (2 * n) : ℚ)

end

end A017551.P7310098068794511402

namespace A017551

/-- `A016941(2*n)/A016934(2*n)` -/
def P7310098068794511402.Spec : Prop :=
  ∀ n, P7310098068794511402.a n = (A017551 n : ℚ)

theorem P7310098068794511402.correct : P7310098068794511402.Spec := by
  intro n
  simp only [A017551, Nat.add_sub_cancel, A017551.P7310098068794511402.a, A017551.P7262873385014040978.a, A016934, A016934.P9224462813878172161.a, A016941, A016941.P12406819948871433003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017551

/-! ## A017551.P6947607739639284024

`A016935(2*n)²*A016933(2*n)`
-/

namespace A017551.P6947607739639284024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016935 (2 * n) ^ 2 * A016933 (2 * n)

end

end A017551.P6947607739639284024

namespace A017551

/-- `A016935(2*n)²*A016933(2*n)` -/
def P6947607739639284024.Spec : Prop :=
  ∀ n, P6947607739639284024.a n = A017551 n

theorem P6947607739639284024.correct : P6947607739639284024.Spec := by
  intro n
  simp only [A017551, Nat.add_sub_cancel, A017551.P6947607739639284024.a, A017551.P7262873385014040978.a, A016933, A016933.P15647137774340761443.a, A016935, A016935.P257911674419970010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017551

/-! ## A017551.P5607713265609589721

`A016934(2*n)²*A016935(2*n)`
-/

namespace A017551.P5607713265609589721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016934 (2 * n) ^ 2 * A016935 (2 * n)

end

end A017551.P5607713265609589721

namespace A017551

/-- `A016934(2*n)²*A016935(2*n)` -/
def P5607713265609589721.Spec : Prop :=
  ∀ n, P5607713265609589721.a n = A017551 n

theorem P5607713265609589721.correct : P5607713265609589721.Spec := by
  intro n
  simp only [A017551, Nat.add_sub_cancel, A017551.P5607713265609589721.a, A017551.P7262873385014040978.a, A016934, A016934.P9224462813878172161.a, A016935, A016935.P257911674419970010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017551

/-! ## A017551.P5622888127547825366

`A016933(2*n)²*A016937(2*n)`
-/

namespace A017551.P5622888127547825366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 (2 * n) ^ 2 * A016937 (2 * n)

end

end A017551.P5622888127547825366

namespace A017551

/-- `A016933(2*n)²*A016937(2*n)` -/
def P5622888127547825366.Spec : Prop :=
  ∀ n, P5622888127547825366.a n = A017551 n

theorem P5622888127547825366.correct : P5622888127547825366.Spec := by
  intro n
  simp only [A017551, Nat.add_sub_cancel, A017551.P5622888127547825366.a, A017551.P7262873385014040978.a, A016933, A016933.P15647137774340761443.a, A016937, A016937.P4646017052301238627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017551

/-! ## A017551.P15671524130087856198

`A016936(2*n)²/A016933(2*n)`
-/

namespace A017551.P15671524130087856198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016936 (2 * n) ^ 2 : ℚ) / (A016933 (2 * n) : ℚ)

end

end A017551.P15671524130087856198

namespace A017551

/-- `A016936(2*n)²/A016933(2*n)` -/
def P15671524130087856198.Spec : Prop :=
  ∀ n, P15671524130087856198.a n = (A017551 n : ℚ)

theorem P15671524130087856198.correct : P15671524130087856198.Spec := by
  intro n
  simp only [A017551, Nat.add_sub_cancel, A017551.P15671524130087856198.a, A017551.P7262873385014040978.a, A016933, A016933.P15647137774340761443.a, A016936, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017551

/-! ## A017551.P11734088609027443830

`A016831(3*n)`
-/

namespace A017551.P11734088609027443830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016831 (3 * n)

end

end A017551.P11734088609027443830

namespace A017551

/-- `A016831(3*n)` -/
def P11734088609027443830.Spec : Prop :=
  ∀ n, P11734088609027443830.a n = A017551 n

theorem P11734088609027443830.correct : P11734088609027443830.Spec := by
  intro n
  simp only [A017551, Nat.add_sub_cancel, A017551.P11734088609027443830.a, A017551.P7262873385014040978.a, A016831, A016831.P2624877946558227194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017551

/-! ## A017551.P10114332631130410991

`A016795(4*n)`
-/

namespace A017551.P10114332631130410991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016795 (4 * n)

end

end A017551.P10114332631130410991

namespace A017551

/-- `A016795(4*n)` -/
def P10114332631130410991.Spec : Prop :=
  ∀ n, P10114332631130410991.a n = A017551 n

theorem P10114332631130410991.correct : P10114332631130410991.Spec := by
  intro n
  simp only [A017551, Nat.add_sub_cancel, A017551.P10114332631130410991.a, A017551.P7262873385014040978.a, A016795, A016795.P9782135587463226103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017551

/-!
# A017552: a(n) = (12*n + 2)^8.

The programs for A017552, the canonical program `A017552.P3283277099808188513` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017552 has offset 0).

The definition of A017552 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+2)^8` (program `A017552.P3283277099808188513`, by `A017552.P3283277099808188513.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017552.P3283277099808188513

`(12*n+2)^8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017552

/-- `(12*n+2)^8` -/
def P3283277099808188513.Spec : Prop :=
  ∀ n, (P3283277099808188513.a n : ℤ) = A017552 n

theorem P3283277099808188513.correct : P3283277099808188513.Spec := by
  intro n
  simp only [A017552]

end A017552

/-! ## A017552.P5884348816322590237

`or(2, 12*n)²²²`
-/

namespace A017552.P5884348816322590237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 (12 * n) ^ 2) ^ 2) ^ 2

end

end A017552.P5884348816322590237

namespace A017552

/-- `or(2, 12*n)²²²` -/
def P5884348816322590237.Spec : Prop :=
  ∀ n, (P5884348816322590237.a n : ℤ) = A017552 n

end A017552

/-! ## A017552.P14800278805627243586

`A017548(n)²`
-/

namespace A017552.P14800278805627243586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017548 n ^ 2

end

end A017552.P14800278805627243586

namespace A017552

/-- `A017548(n)²` -/
def P14800278805627243586.Spec : Prop :=
  ∀ n, P14800278805627243586.a n = A017552 n

theorem P14800278805627243586.correct : P14800278805627243586.Spec := by
  intro n
  simp only [A017552, Nat.add_sub_cancel, A017552.P14800278805627243586.a, A017552.P3283277099808188513.a, A017548, A017548.P12289776938983174444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017552

/-! ## A017552.P3759306285156245180

`A017546(n)²²`
-/

namespace A017552.P3759306285156245180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017546 n ^ 2) ^ 2

end

end A017552.P3759306285156245180

namespace A017552

/-- `A017546(n)²²` -/
def P3759306285156245180.Spec : Prop :=
  ∀ n, P3759306285156245180.a n = A017552 n

theorem P3759306285156245180.correct : P3759306285156245180.Spec := by
  intro n
  simp only [A017552, Nat.add_sub_cancel, A017552.P3759306285156245180.a, A017552.P3283277099808188513.a, A017546, A017546.P10402567773459972920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017552

/-! ## A017552.P11184959039203670553

`(A017545(n)^4)²`
-/

namespace A017552.P11184959039203670553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017545 n ^ 4) ^ 2

end

end A017552.P11184959039203670553

namespace A017552

/-- `(A017545(n)^4)²` -/
def P11184959039203670553.Spec : Prop :=
  ∀ n, P11184959039203670553.a n = A017552 n

theorem P11184959039203670553.correct : P11184959039203670553.Spec := by
  intro n
  simp only [A017552, Nat.add_sub_cancel, A017552.P11184959039203670553.a, A017552.P3283277099808188513.a, A017545, A017545.P14965093399951293214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017552

/-! ## A017552.P15788492846474315507

`(A017533(n)+1)²²²`
-/

namespace A017552.P15788492846474315507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017533 n + 1) ^ 2) ^ 2) ^ 2

end

end A017552.P15788492846474315507

namespace A017552

/-- `(A017533(n)+1)²²²` -/
def P15788492846474315507.Spec : Prop :=
  ∀ n, P15788492846474315507.a n = A017552 n

theorem P15788492846474315507.correct : P15788492846474315507.Spec := by
  intro n
  simp only [A017552, Nat.add_sub_cancel, A017552.P15788492846474315507.a, A017552.P3283277099808188513.a, A017533, A017533.P146508076441825746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017552

/-! ## A017552.P766175169731703655

`(A008594(n)+2)²²²`
-/

namespace A017552.P766175169731703655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008594 n + 2) ^ 2) ^ 2) ^ 2

end

end A017552.P766175169731703655

namespace A017552

/-- `(A008594(n)+2)²²²` -/
def P766175169731703655.Spec : Prop :=
  ∀ n, P766175169731703655.a n = A017552 n

theorem P766175169731703655.correct : P766175169731703655.Spec := by
  intro n
  simp only [A017552, Nat.add_sub_cancel, A017552.P766175169731703655.a, A017552.P3283277099808188513.a, A008594, A008594.P9877215682521385096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017552

/-! ## A017552.P4011512723038723637

`(1-A017557(n))²²²`
-/

namespace A017552.P4011512723038723637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017557 n) ^ 2) ^ 2) ^ 2

end

end A017552.P4011512723038723637

namespace A017552

/-- `(1-A017557(n))²²²` -/
def P4011512723038723637.Spec : Prop :=
  ∀ n, P4011512723038723637.a n = A017552 n

theorem P4011512723038723637.correct : P4011512723038723637.Spec := by
  intro n
  simp only [A017552, Nat.add_sub_cancel, A017552.P4011512723038723637.a, A017552.P3283277099808188513.a, A017557, A017557.P7719209615978230604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017552

/-! ## A017552.P16443381855814592130

`(2-A017569(n))²²²`
-/

namespace A017552.P16443381855814592130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017569 n) ^ 2) ^ 2) ^ 2

end

end A017552.P16443381855814592130

namespace A017552

/-- `(2-A017569(n))²²²` -/
def P16443381855814592130.Spec : Prop :=
  ∀ n, P16443381855814592130.a n = A017552 n

theorem P16443381855814592130.correct : P16443381855814592130.Spec := by
  intro n
  simp only [A017552, Nat.add_sub_cancel, A017552.P16443381855814592130.a, A017552.P3283277099808188513.a, A017569, A017569.P14340039372117997380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017552

/-! ## A017552.P10721084676653767551

`(2*A016921(n))²²²`
-/

namespace A017552.P10721084676653767551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * A016921 n) ^ 2) ^ 2) ^ 2

end

end A017552.P10721084676653767551

namespace A017552

/-- `(2*A016921(n))²²²` -/
def P10721084676653767551.Spec : Prop :=
  ∀ n, P10721084676653767551.a n = A017552 n

theorem P10721084676653767551.correct : P10721084676653767551.Spec := by
  intro n
  simp only [A017552, Nat.add_sub_cancel, A017552.P10721084676653767551.a, A017552.P3283277099808188513.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017552

/-! ## A017552.P1863501435126708739

`(A017413(n)+n)²²²`
-/

namespace A017552.P1863501435126708739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017413 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017552.P1863501435126708739

namespace A017552

/-- `(A017413(n)+n)²²²` -/
def P1863501435126708739.Spec : Prop :=
  ∀ n, P1863501435126708739.a n = A017552 n

theorem P1863501435126708739.correct : P1863501435126708739.Spec := by
  intro n
  simp only [A017552, Nat.add_sub_cancel, A017552.P1863501435126708739.a, A017552.P3283277099808188513.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017552

/-! ## A017552.P3902379844715270174

`(n-A153080(n))²²²`
-/

namespace A017552.P3902379844715270174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A153080 n) ^ 2) ^ 2) ^ 2

end

end A017552.P3902379844715270174

namespace A017552

/-- `(n-A153080(n))²²²` -/
def P3902379844715270174.Spec : Prop :=
  ∀ n, P3902379844715270174.a n = A017552 n

theorem P3902379844715270174.correct : P3902379844715270174.Spec := by
  intro n
  simp only [A017552, Nat.add_sub_cancel, A017552.P3902379844715270174.a, A017552.P3283277099808188513.a, A153080, A153080.P12698486162711412259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017552

/-! ## A017552.P6786862361681652035

`A000027(12*n+2)²²²`
-/

namespace A017552.P6786862361681652035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000027 (12 * n + 2) ^ 2) ^ 2) ^ 2

end

end A017552.P6786862361681652035

namespace A017552

/-- `A000027(12*n+2)²²²` -/
def P6786862361681652035.Spec : Prop :=
  ∀ n, P6786862361681652035.a n = A017552 n

theorem P6786862361681652035.correct : P6786862361681652035.Spec := by
  intro n
  simp only [A017552, Nat.add_sub_cancel, A017552.P6786862361681652035.a, A017552.P3283277099808188513.a, A000027, A000027.P10331202704469894836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017552

/-! ## A017552.P11227451115980878036

`A017546(n)*A017550(n)`
-/

namespace A017552.P11227451115980878036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017546 n * A017550 n

end

end A017552.P11227451115980878036

namespace A017552

/-- `A017546(n)*A017550(n)` -/
def P11227451115980878036.Spec : Prop :=
  ∀ n, P11227451115980878036.a n = A017552 n

theorem P11227451115980878036.correct : P11227451115980878036.Spec := by
  intro n
  simp only [A017552, Nat.add_sub_cancel, A017552.P11227451115980878036.a, A017552.P3283277099808188513.a, A017546, A017546.P10402567773459972920.a, A017550, A017550.P18023443094070702974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017552

/-! ## A017552.P15107172309941647420

`A017547(n)*A017549(n)`
-/

namespace A017552.P15107172309941647420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017547 n * A017549 n

end

end A017552.P15107172309941647420

namespace A017552

/-- `A017547(n)*A017549(n)` -/
def P15107172309941647420.Spec : Prop :=
  ∀ n, P15107172309941647420.a n = A017552 n

theorem P15107172309941647420.correct : P15107172309941647420.Spec := by
  intro n
  simp only [A017552, Nat.add_sub_cancel, A017552.P15107172309941647420.a, A017552.P3283277099808188513.a, A017547, A017547.P10391440261630002319.a, A017549, A017549.P9226642879070126315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017552

/-! ## A017552.P13203690088876582892

`(A017545(n)*A017547(n))²`
-/

namespace A017552.P13203690088876582892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017545 n * A017547 n) ^ 2

end

end A017552.P13203690088876582892

namespace A017552

/-- `(A017545(n)*A017547(n))²` -/
def P13203690088876582892.Spec : Prop :=
  ∀ n, P13203690088876582892.a n = A017552 n

theorem P13203690088876582892.correct : P13203690088876582892.Spec := by
  intro n
  simp only [A017552, Nat.add_sub_cancel, A017552.P13203690088876582892.a, A017552.P3283277099808188513.a, A017545, A017545.P14965093399951293214.a, A017547, A017547.P10391440261630002319.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017552

/-! ## A017552.P6620142527512753775

`Δ[A139267(n)]²²²`
-/

namespace A017552.P6620142527512753775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017552.P6620142527512753775

namespace A017552

/-- `Δ[A139267(n)]²²²` -/
def P6620142527512753775.Spec : Prop :=
  ∀ n, P6620142527512753775.a n = A017552 n

theorem P6620142527512753775.correct : P6620142527512753775.Spec := by
  intro n
  simp only [A017552, Nat.add_sub_cancel, A017552.P6620142527512753775.f1, A017552.P6620142527512753775.a, A017552.P3283277099808188513.a, A139267, A139267.P13870518576682485828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017552

/-! ## A017552.P15282722785865780803

`A016825(A008585(n))²²²`
-/

namespace A017552.P15282722785865780803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016825 (A008585 n).toNat ^ 2) ^ 2) ^ 2

end

end A017552.P15282722785865780803

namespace A017552

/-- `A016825(A008585(n))²²²` -/
def P15282722785865780803.Spec : Prop :=
  ∀ n, P15282722785865780803.a n = A017552 n

end A017552

/-! ## A017552.P5298793979355398401

`A016933(2*n)²²²`
-/

namespace A017552.P5298793979355398401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016933 (2 * n) ^ 2) ^ 2) ^ 2

end

end A017552.P5298793979355398401

namespace A017552

/-- `A016933(2*n)²²²` -/
def P5298793979355398401.Spec : Prop :=
  ∀ n, P5298793979355398401.a n = A017552 n

theorem P5298793979355398401.correct : P5298793979355398401.Spec := by
  intro n
  simp only [A017552, Nat.add_sub_cancel, A017552.P5298793979355398401.a, A017552.P3283277099808188513.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017552

/-! ## A017552.P16593014447532284547

`A016940(2*n)`
-/

namespace A017552.P16593014447532284547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016940 (2 * n)

end

end A017552.P16593014447532284547

namespace A017552

/-- `A016940(2*n)` -/
def P16593014447532284547.Spec : Prop :=
  ∀ n, P16593014447532284547.a n = A017552 n

theorem P16593014447532284547.correct : P16593014447532284547.Spec := by
  intro n
  simp only [A017552, Nat.add_sub_cancel, A017552.P16593014447532284547.a, A017552.P3283277099808188513.a, A016940, A016940.P13150052677788130134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017552

/-!
# A017553: a(n) = (12*n + 2)^9.

The programs for A017553, the canonical program `A017553.P3074241193155377504` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017553 has offset 0).

The definition of A017553 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+2)^9` (program `A017553.P3074241193155377504`, by `A017553.P3074241193155377504.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017553.P3074241193155377504

`(12*n+2)^9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017553

/-- `(12*n+2)^9` -/
def P3074241193155377504.Spec : Prop :=
  ∀ n, (P3074241193155377504.a n : ℤ) = A017553 n

theorem P3074241193155377504.correct : P3074241193155377504.Spec := by
  intro n
  simp only [A017553]

end A017553

/-! ## A017553.P1336927265150317319

`A017547(n)*A017550(n)`
-/

namespace A017553.P1336927265150317319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017547 n * A017550 n

end

end A017553.P1336927265150317319

namespace A017553

/-- `A017547(n)*A017550(n)` -/
def P1336927265150317319.Spec : Prop :=
  ∀ n, P1336927265150317319.a n = A017553 n

theorem P1336927265150317319.correct : P1336927265150317319.Spec := by
  intro n
  simp only [A017553, Nat.add_sub_cancel, A017553.P1336927265150317319.a, A017553.P3074241193155377504.a, A017547, A017547.P10391440261630002319.a, A017550, A017550.P18023443094070702974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017553

/-! ## A017553.P2086344568165151033

`A017548(n)*A017549(n)`
-/

namespace A017553.P2086344568165151033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017548 n * A017549 n

end

end A017553.P2086344568165151033

namespace A017553

/-- `A017548(n)*A017549(n)` -/
def P2086344568165151033.Spec : Prop :=
  ∀ n, P2086344568165151033.a n = A017553 n

theorem P2086344568165151033.correct : P2086344568165151033.Spec := by
  intro n
  simp only [A017553, Nat.add_sub_cancel, A017553.P2086344568165151033.a, A017553.P3074241193155377504.a, A017548, A017548.P12289776938983174444.a, A017549, A017549.P9226642879070126315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017553

/-! ## A017553.P10641122033618019249

`A016941(2*n)`
-/

namespace A017553.P10641122033618019249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016941 (2 * n)

end

end A017553.P10641122033618019249

namespace A017553

/-- `A016941(2*n)` -/
def P10641122033618019249.Spec : Prop :=
  ∀ n, P10641122033618019249.a n = A017553 n

theorem P10641122033618019249.correct : P10641122033618019249.Spec := by
  intro n
  simp only [A017553, Nat.add_sub_cancel, A017553.P10641122033618019249.a, A017553.P3074241193155377504.a, A016941, A016941.P12406819948871433003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017553

/-! ## A017553.P1133799285174205165

`A016933(2*n)*A016940(2*n)`
-/

namespace A017553.P1133799285174205165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 (2 * n) * A016940 (2 * n)

end

end A017553.P1133799285174205165

namespace A017553

/-- `A016933(2*n)*A016940(2*n)` -/
def P1133799285174205165.Spec : Prop :=
  ∀ n, P1133799285174205165.a n = A017553 n

theorem P1133799285174205165.correct : P1133799285174205165.Spec := by
  intro n
  simp only [A017553, Nat.add_sub_cancel, A017553.P1133799285174205165.a, A017553.P3074241193155377504.a, A016933, A016933.P15647137774340761443.a, A016940, A016940.P13150052677788130134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017553

/-! ## A017553.P14636863461807612000

`A016934(2*n)*A016939(2*n)`
-/

namespace A017553.P14636863461807612000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016934 (2 * n) * A016939 (2 * n)

end

end A017553.P14636863461807612000

namespace A017553

/-- `A016934(2*n)*A016939(2*n)` -/
def P14636863461807612000.Spec : Prop :=
  ∀ n, P14636863461807612000.a n = A017553 n

theorem P14636863461807612000.correct : P14636863461807612000.Spec := by
  intro n
  simp only [A017553, Nat.add_sub_cancel, A017553.P14636863461807612000.a, A017553.P3074241193155377504.a, A016934, A016934.P9224462813878172161.a, A016939, A016939.P10686673164026481289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017553

/-! ## A017553.P2613475645188420162

`A016935(2*n)*A016938(2*n)`
-/

namespace A017553.P2613475645188420162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016935 (2 * n) * A016938 (2 * n)

end

end A017553.P2613475645188420162

namespace A017553

/-- `A016935(2*n)*A016938(2*n)` -/
def P2613475645188420162.Spec : Prop :=
  ∀ n, P2613475645188420162.a n = A017553 n

theorem P2613475645188420162.correct : P2613475645188420162.Spec := by
  intro n
  simp only [A017553, Nat.add_sub_cancel, A017553.P2613475645188420162.a, A017553.P3074241193155377504.a, A016935, A016935.P257911674419970010.a, A016938, A016938.P15117638160680881893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017553

/-! ## A017553.P14189358022867723063

`A016833(3*n)`
-/

namespace A017553.P14189358022867723063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016833 (3 * n)

end

end A017553.P14189358022867723063

namespace A017553

/-- `A016833(3*n)` -/
def P14189358022867723063.Spec : Prop :=
  ∀ n, P14189358022867723063.a n = A017553 n

theorem P14189358022867723063.correct : P14189358022867723063.Spec := by
  intro n
  simp only [A017553, Nat.add_sub_cancel, A017553.P14189358022867723063.a, A017553.P3074241193155377504.a, A016833, A016833.P12755141053771216048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017553

/-! ## A017553.P5930076085058323982

`A016797(4*n)`
-/

namespace A017553.P5930076085058323982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016797 (4 * n)

end

end A017553.P5930076085058323982

namespace A017553

/-- `A016797(4*n)` -/
def P5930076085058323982.Spec : Prop :=
  ∀ n, P5930076085058323982.a n = A017553 n

theorem P5930076085058323982.correct : P5930076085058323982.Spec := by
  intro n
  simp only [A017553, Nat.add_sub_cancel, A017553.P5930076085058323982.a, A017553.P3074241193155377504.a, A016797, A016797.P16599814047714379854.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017553

/-! ## A017553.P17830635703116777091

`A016749(A016945(n)-2)`
-/

namespace A017553.P17830635703116777091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016749 (A016945 n - 2).toNat

end

end A017553.P17830635703116777091

namespace A017553

/-- `A016749(A016945(n)-2)` -/
def P17830635703116777091.Spec : Prop :=
  ∀ n, P17830635703116777091.a n = A017553 n

end A017553

/-! ## A017553.P10626976629629304749

`A001017(A017545(n))`
-/

namespace A017553.P10626976629629304749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017545 n).toNat

end

end A017553.P10626976629629304749

namespace A017553

/-- `A001017(A017545(n))` -/
def P10626976629629304749.Spec : Prop :=
  ∀ n, P10626976629629304749.a n = A017553 n

end A017553

/-!
# A017554: a(n) = (12*n + 2)^10.

The programs for A017554, the canonical program `A017554.P12838832830848015933` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017554 has offset 0).

The definition of A017554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017554.P12838832830848015933

`A017549(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017554

/-- `A017549(n)²` -/
def P12838832830848015933.Spec : Prop :=
  ∀ n, P12838832830848015933.a n = A017554 n

theorem P12838832830848015933.correct : P12838832830848015933.Spec := by
  intro n
  simp only [A017554]

end A017554

/-! ## A017554.P6258003820221936772

`A016933(2*n)^10`
-/

namespace A017554.P6258003820221936772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 (2 * n) ^ 10

end

end A017554.P6258003820221936772

namespace A017554

/-- `A016933(2*n)^10` -/
def P6258003820221936772.Spec : Prop :=
  ∀ n, P6258003820221936772.a n = A017554 n

theorem P6258003820221936772.correct : P6258003820221936772.Spec := by
  intro n
  simp only [A017554, Nat.add_sub_cancel, A017554.P6258003820221936772.a, A017554.P12838832830848015933.a, A016933, A016933.P15647137774340761443.a, A017549, A017549.P9226642879070126315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017554

/-! ## A017554.P15367577050383013782

`A008454(A016945(2*n)-1)`
-/

namespace A017554.P15367577050383013782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016945 (2 * n) - 1).toNat

end

end A017554.P15367577050383013782

namespace A017554

/-- `A008454(A016945(2*n)-1)` -/
def P15367577050383013782.Spec : Prop :=
  ∀ n, P15367577050383013782.a n = A017554 n

end A017554

/-! ## A017554.P6926890493320107901

`A008454(A016873(2*n)+2*n)`
-/

namespace A017554.P6926890493320107901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016873 (2 * n) + (2 * n : ℤ)).toNat

end

end A017554.P6926890493320107901

namespace A017554

/-- `A008454(A016873(2*n)+2*n)` -/
def P6926890493320107901.Spec : Prop :=
  ∀ n, P6926890493320107901.a n = A017554 n

end A017554

/-! ## A017554.P17673166333068362689

`A008454(A004442(A016945(2*n)))`
-/

namespace A017554.P17673166333068362689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A004442 (A016945 (2 * n)).toNat).toNat

end

end A017554.P17673166333068362689

namespace A017554

/-- `A008454(A004442(A016945(2*n)))` -/
def P17673166333068362689.Spec : Prop :=
  ∀ n, P17673166333068362689.a n = A017554 n

end A017554

/-!
# A017555: a(n) = (12*n + 2)^11.

The programs for A017555, the canonical program `A017555.P9206210978306882125` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017555 has offset 0).

The definition of A017555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017555.P9206210978306882125

`Δ[n*(6*n-4)]^11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017555

/-- `Δ[n*(6*n-4)]^11` -/
def P9206210978306882125.Spec : Prop :=
  ∀ n, P9206210978306882125.a n = A017555 n

theorem P9206210978306882125.correct : P9206210978306882125.Spec := by
  intro n
  simp only [A017555]

end A017555

/-! ## A017555.P11866603949571965681

`A017548(n)*A017551(n)`
-/

namespace A017555.P11866603949571965681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017548 n * A017551 n

end

end A017555.P11866603949571965681

namespace A017555

/-- `A017548(n)*A017551(n)` -/
def P11866603949571965681.Spec : Prop :=
  ∀ n, P11866603949571965681.a n = A017555 n

theorem P11866603949571965681.correct : P11866603949571965681.Spec := by
  intro n
  simp only [A017555, Nat.add_sub_cancel, A017555.P11866603949571965681.a, A017555.P9206210978306882125.f1, A017555.P9206210978306882125.a, A017548, A017548.P12289776938983174444.a, A017551, A017551.P7262873385014040978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017555

/-! ## A017555.P4569587804286246613

`A017549(n)*A017550(n)`
-/

namespace A017555.P4569587804286246613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017549 n * A017550 n

end

end A017555.P4569587804286246613

namespace A017555

/-- `A017549(n)*A017550(n)` -/
def P4569587804286246613.Spec : Prop :=
  ∀ n, P4569587804286246613.a n = A017555 n

theorem P4569587804286246613.correct : P4569587804286246613.Spec := by
  intro n
  simp only [A017555, Nat.add_sub_cancel, A017555.P4569587804286246613.a, A017555.P9206210978306882125.f1, A017555.P9206210978306882125.a, A017549, A017549.P9226642879070126315.a, A017550, A017550.P18023443094070702974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017555

/-! ## A017555.P8538263642931736717

`A016943(2*n)`
-/

namespace A017555.P8538263642931736717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016943 (2 * n)

end

end A017555.P8538263642931736717

namespace A017555

/-- `A016943(2*n)` -/
def P8538263642931736717.Spec : Prop :=
  ∀ n, P8538263642931736717.a n = A017555 n

theorem P8538263642931736717.correct : P8538263642931736717.Spec := by
  intro n
  simp only [A017555, Nat.add_sub_cancel, A017555.P8538263642931736717.a, A017555.P9206210978306882125.f1, A017555.P9206210978306882125.a, A016943, A016943.P7700578974998129496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017555

/-! ## A017555.P15072659379376045236

`A016799(4*n)`
-/

namespace A017555.P15072659379376045236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016799 (4 * n)

end

end A017555.P15072659379376045236

namespace A017555

/-- `A016799(4*n)` -/
def P15072659379376045236.Spec : Prop :=
  ∀ n, P15072659379376045236.a n = A017555 n

theorem P15072659379376045236.correct : P15072659379376045236.Spec := by
  intro n
  simp only [A017555, Nat.add_sub_cancel, A017555.P15072659379376045236.a, A017555.P9206210978306882125.f1, A017555.P9206210978306882125.a, A016799, A016799.P2519602072837116726.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017555

/-! ## A017555.P2454670484544594444

`A008455(A017533(n)+1)`
-/

namespace A017555.P2454670484544594444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017533 n + 1).toNat

end

end A017555.P2454670484544594444

namespace A017555

/-- `A008455(A017533(n)+1)` -/
def P2454670484544594444.Spec : Prop :=
  ∀ n, P2454670484544594444.a n = A017555 n

end A017555

/-! ## A017555.P3209168365322576635

`A008455(A017557(n)-1)`
-/

namespace A017555.P3209168365322576635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017557 n - 1).toNat

end

end A017555.P3209168365322576635

namespace A017555

/-- `A008455(A017557(n)-1)` -/
def P3209168365322576635.Spec : Prop :=
  ∀ n, P3209168365322576635.a n = A017555 n

end A017555

/-! ## A017555.P17829599094994529160

`A008455(2*A016921(n))`
-/

namespace A017555.P17829599094994529160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (2 * A016921 n).toNat

end

end A017555.P17829599094994529160

namespace A017555

/-- `A008455(2*A016921(n))` -/
def P17829599094994529160.Spec : Prop :=
  ∀ n, P17829599094994529160.a n = A017555 n

end A017555

/-! ## A017555.P11170205404000185315

`A008455(lcm(2, A016921(n)))`
-/

namespace A017555.P11170205404000185315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (Int.lcm 2 (A016921 n))

end

end A017555.P11170205404000185315

namespace A017555

/-- `A008455(lcm(2, A016921(n)))` -/
def P11170205404000185315.Spec : Prop :=
  ∀ n, P11170205404000185315.a n = A017555 n

end A017555

/-!
# A017556: a(n) = (12*n + 2)^12.

The programs for A017556, the canonical program `A017556.P2609406232797829026` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017556 has offset 0).

The definition of A017556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017556.P2609406232797829026

`A017550(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017556

/-- `A017550(n)²` -/
def P2609406232797829026.Spec : Prop :=
  ∀ n, P2609406232797829026.a n = A017556 n

theorem P2609406232797829026.correct : P2609406232797829026.Spec := by
  intro n
  simp only [A017556]

end A017556

/-! ## A017556.P10949053678809251067

`A017548(n)^3`
-/

namespace A017556.P10949053678809251067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017548 n ^ 3

end

end A017556.P10949053678809251067

namespace A017556

/-- `A017548(n)^3` -/
def P10949053678809251067.Spec : Prop :=
  ∀ n, P10949053678809251067.a n = A017556 n

theorem P10949053678809251067.correct : P10949053678809251067.Spec := by
  intro n
  simp only [A017556, Nat.add_sub_cancel, A017556.P10949053678809251067.a, A017556.P2609406232797829026.a, A017548, A017548.P12289776938983174444.a, A017550, A017550.P18023443094070702974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017556

/-! ## A017556.P11790635543511661082

`A017547(n)^4`
-/

namespace A017556.P11790635543511661082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017547 n ^ 4

end

end A017556.P11790635543511661082

namespace A017556

/-- `A017547(n)^4` -/
def P11790635543511661082.Spec : Prop :=
  ∀ n, P11790635543511661082.a n = A017556 n

theorem P11790635543511661082.correct : P11790635543511661082.Spec := by
  intro n
  simp only [A017556, Nat.add_sub_cancel, A017556.P11790635543511661082.a, A017556.P2609406232797829026.a, A017547, A017547.P10391440261630002319.a, A017550, A017550.P18023443094070702974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017556

/-! ## A017556.P7810360149156676081

`A017546(n)^6`
-/

namespace A017556.P7810360149156676081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017546 n ^ 6

end

end A017556.P7810360149156676081

namespace A017556

/-- `A017546(n)^6` -/
def P7810360149156676081.Spec : Prop :=
  ∀ n, P7810360149156676081.a n = A017556 n

theorem P7810360149156676081.correct : P7810360149156676081.Spec := by
  intro n
  simp only [A017556, Nat.add_sub_cancel, A017556.P7810360149156676081.a, A017556.P2609406232797829026.a, A017546, A017546.P10402567773459972920.a, A017550, A017550.P18023443094070702974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017556

/-! ## A017556.P6252305145887971234

`Δ[A139267(n)]^12`
-/

namespace A017556.P6252305145887971234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 12

end

end A017556.P6252305145887971234

namespace A017556

/-- `Δ[A139267(n)]^12` -/
def P6252305145887971234.Spec : Prop :=
  ∀ n, P6252305145887971234.a n = A017556 n

theorem P6252305145887971234.correct : P6252305145887971234.Spec := by
  intro n
  simp only [A017556, Nat.add_sub_cancel, A017556.P6252305145887971234.f1, A017556.P6252305145887971234.a, A017556.P2609406232797829026.a, A017550, A017550.P18023443094070702974.a, A139267, A139267.P13870518576682485828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017556

/-! ## A017556.P16138009005288273676

`A016933(2*n)^12`
-/

namespace A017556.P16138009005288273676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 (2 * n) ^ 12

end

end A017556.P16138009005288273676

namespace A017556

/-- `A016933(2*n)^12` -/
def P16138009005288273676.Spec : Prop :=
  ∀ n, P16138009005288273676.a n = A017556 n

theorem P16138009005288273676.correct : P16138009005288273676.Spec := by
  intro n
  simp only [A017556, Nat.add_sub_cancel, A017556.P16138009005288273676.a, A017556.P2609406232797829026.a, A016933, A016933.P15647137774340761443.a, A017550, A017550.P18023443094070702974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017556

/-!
# A017557: a(n) = 12*n + 3.

The programs for A017557, the canonical program `A017557.P7719209615978230604` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017557 has offset 0).

The definition of A017557 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n+3` (program `A017557.P7719209615978230604`, by `A017557.P7719209615978230604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017557.P7719209615978230604

`12*n+3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017557

/-- `12*n+3` -/
def P7719209615978230604.Spec : Prop :=
  ∀ n, (P7719209615978230604.a n : ℤ) = A017557 n

theorem P7719209615978230604.correct : P7719209615978230604.Spec := by
  intro n
  simp only [A017557]

end A017557

/-!
# A017558: a(n) = (12*n + 3)^2.

The programs for A017558, the canonical program `A017558.P11205723934719350193` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017558 has offset 0).

The definition of A017558 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+3)²` (program `A017558.P11205723934719350193`, by `A017558.P11205723934719350193.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017558.P11205723934719350193

`(12*n+3)²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017558

/-- `(12*n+3)²` -/
def P11205723934719350193.Spec : Prop :=
  ∀ n, (P11205723934719350193.a n : ℤ) = A017558 n

theorem P11205723934719350193.correct : P11205723934719350193.Spec := by
  intro n
  simp only [A017558]

end A017558

/-! ## A017558.P8811203954162387153

`ogf((9+198x+81x^2)/(1-3x+3x^2-x^3))`
-/

namespace A017558.P8811203954162387153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 198, 81] [1, -3, 3, -1] n

end

end A017558.P8811203954162387153

namespace A017558

/-- `ogf((9+198x+81x^2)/(1-3x+3x^2-x^3))` -/
def P8811203954162387153.Spec : Prop :=
  ∀ n, P8811203954162387153.a n = A017558 n

end A017558

/-! ## A017558.P12618825567802121415

`a(n-1)+288*n-72` with `a(0)=9`
-/

namespace A017558.P12618825567802121415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + (288 * n : ℤ) - 72

end

end A017558.P12618825567802121415

namespace A017558

/-- `a(n-1)+288*n-72` -/
def P12618825567802121415.Spec : Prop :=
  ∀ n, P12618825567802121415.a n = A017558 n

theorem P12618825567802121415.correct : P12618825567802121415.Spec := by
  intro n
  induction n with
  | zero => simp [A017558, A017558.P12618825567802121415.a, A017558.P11205723934719350193.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A017558, Nat.add_sub_cancel, A017558.P12618825567802121415.a, A017558.P11205723934719350193.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A017558

/-! ## A017558.P6941951254874881390

`9*A016814(n)`
-/

namespace A017558.P6941951254874881390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A016814 n

end

end A017558.P6941951254874881390

namespace A017558

/-- `9*A016814(n)` -/
def P6941951254874881390.Spec : Prop :=
  ∀ n, P6941951254874881390.a n = A017558 n

theorem P6941951254874881390.correct : P6941951254874881390.Spec := by
  intro n
  simp only [A017558, Nat.add_sub_cancel, A017558.P6941951254874881390.a, A017558.P11205723934719350193.a, A016814, A016814.P5668709183610020667.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017558

/-! ## A017558.P16299414382090876393

`or(3, 12*n)^2`
-/

namespace A017558.P16299414382090876393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (12 * n) ^ 2

end

end A017558.P16299414382090876393

namespace A017558

/-- `or(3, 12*n)^2` -/
def P16299414382090876393.Spec : Prop :=
  ∀ n, (P16299414382090876393.a n : ℤ) = A017558 n

end A017558

/-! ## A017558.P13752595823426465095

`xor(3, 12*n)^2`
-/

namespace A017558.P13752595823426465095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (12 * n) ^ 2

end

end A017558.P13752595823426465095

namespace A017558

/-- `xor(3, 12*n)^2` -/
def P13752595823426465095.Spec : Prop :=
  ∀ n, (P13752595823426465095.a n : ℤ) = A017558 n

end A017558

/-! ## A017558.P5793712471292781969

`9*or(1, 4*n)²`
-/

namespace A017558.P5793712471292781969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.lor 1 (4 * n) ^ 2

end

end A017558.P5793712471292781969

namespace A017558

/-- `9*or(1, 4*n)²` -/
def P5793712471292781969.Spec : Prop :=
  ∀ n, (P5793712471292781969.a n : ℤ) = A017558 n

end A017558

/-! ## A017558.P6618345399795208100

`9*xor(1, 4*n)²`
-/

namespace A017558.P6618345399795208100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.xor 1 (4 * n) ^ 2

end

end A017558.P6618345399795208100

namespace A017558

/-- `9*xor(1, 4*n)²` -/
def P6618345399795208100.Spec : Prop :=
  ∀ n, (P6618345399795208100.a n : ℤ) = A017558 n

end A017558

/-! ## A017558.P8996941983158458805

`9*Δ[C(2*n, 2)]²`
-/

namespace A017558.P8996941983158458805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A017558.P8996941983158458805

namespace A017558

/-- `9*Δ[C(2*n, 2)]²` -/
def P8996941983158458805.Spec : Prop :=
  ∀ n, P8996941983158458805.a n = A017558 n

theorem P8996941983158458805.correct : P8996941983158458805.Spec := by
  intro n
  simp only [A017558, Nat.add_sub_cancel, A017558.P8996941983158458805.f1, A017558.P8996941983158458805.a, A017558.P11205723934719350193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017558

/-! ## A017558.P2761227627092368922

`record[(3*(2*n+1))^gcd(2, n)]`
-/

namespace A017558.P2761227627092368922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * (2 * n + 1)) ^ Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017558.P2761227627092368922

namespace A017558

/-- `record[(3*(2*n+1))^gcd(2, n)]` -/
def P2761227627092368922.Spec : Prop :=
  ∀ n, (P2761227627092368922.a n : ℤ) = A017558 n

end A017558

/-! ## A017558.P2850175635465043213

`sqrt(A017560(n))`
-/

namespace A017558.P2850175635465043213
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017560 n : ℝ)

end

end A017558.P2850175635465043213

namespace A017558

/-- `sqrt(A017560(n))` -/
def P2850175635465043213.Spec : Prop :=
  ∀ n, P2850175635465043213.a n = (A017558 n : ℝ)

end A017558

/-! ## A017558.P787544733740330672

`sqrt(sqrt(A017564(n)))`
-/

namespace A017558.P787544733740330672
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017564 n : ℝ))

end

end A017558.P787544733740330672

namespace A017558

/-- `sqrt(sqrt(A017564(n)))` -/
def P787544733740330672.Spec : Prop :=
  ∀ n, P787544733740330672.a n = (A017558 n : ℝ)

end A017558

/-! ## A017558.P9215615236548464366

`9*A016813(n)²`
-/

namespace A017558.P9215615236548464366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A016813 n ^ 2

end

end A017558.P9215615236548464366

namespace A017558

/-- `9*A016813(n)²` -/
def P9215615236548464366.Spec : Prop :=
  ∀ n, P9215615236548464366.a n = A017558 n

theorem P9215615236548464366.correct : P9215615236548464366.Spec := by
  intro n
  simp only [A017558, Nat.add_sub_cancel, A017558.P9215615236548464366.a, A017558.P11205723934719350193.a, A016813, A016813.P15626904835145642280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017558

/-! ## A017558.P17926161936857246181

`A017562(n)^(1/3)`
-/

namespace A017558.P17926161936857246181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017562 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017558.P17926161936857246181

namespace A017558

/-- `A017562(n)^(1/3)` -/
def P17926161936857246181.Spec : Prop :=
  ∀ n, P17926161936857246181.a n = (A017558 n : ℝ)

end A017558

/-! ## A017558.P9342348638289377078

`A017559(n)^(2/3)`
-/

namespace A017558.P9342348638289377078
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017559 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017558.P9342348638289377078

namespace A017558

/-- `A017559(n)^(2/3)` -/
def P9342348638289377078.Spec : Prop :=
  ∀ n, P9342348638289377078.a n = (A017558 n : ℝ)

end A017558

/-! ## A017558.P5844571794074494723

`A017570(n)-A135659(n)`
-/

namespace A017558.P5844571794074494723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017570 n - A135659 n

end

end A017558.P5844571794074494723

namespace A017558

/-- `A017570(n)-A135659(n)` -/
def P5844571794074494723.Spec : Prop :=
  ∀ n, P5844571794074494723.a n = A017558 n

theorem P5844571794074494723.correct : P5844571794074494723.Spec := by
  intro n
  simp only [A017558, Nat.add_sub_cancel, A017558.P5844571794074494723.a, A017558.P11205723934719350193.a, A017570, A017570.P8593875747358616596.a, A135659, A135659.P7688879671155450693.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017558

/-! ## A017558.P9396236706412205724

`A017557(n)*A017557(n)`
-/

namespace A017558.P9396236706412205724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 n * A017557 n

end

end A017558.P9396236706412205724

namespace A017558

/-- `A017557(n)*A017557(n)` -/
def P9396236706412205724.Spec : Prop :=
  ∀ n, P9396236706412205724.a n = A017558 n

theorem P9396236706412205724.correct : P9396236706412205724.Spec := by
  intro n
  simp only [A017558, Nat.add_sub_cancel, A017558.P9396236706412205724.a, A017558.P11205723934719350193.a, A017557, A017557.P7719209615978230604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017558

/-! ## A017558.P12901853293714287698

`A016813(n)*A139609(n)`
-/

namespace A017558.P12901853293714287698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A139609 n

end

end A017558.P12901853293714287698

namespace A017558

/-- `A016813(n)*A139609(n)` -/
def P12901853293714287698.Spec : Prop :=
  ∀ n, P12901853293714287698.a n = A017558 n

theorem P12901853293714287698.correct : P12901853293714287698.Spec := by
  intro n
  simp only [A017558, Nat.add_sub_cancel, A017558.P12901853293714287698.a, A017558.P11205723934719350193.a, A016813, A016813.P15626904835145642280.a, A139609, A139609.P9444052933734431748.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017558

/-! ## A017558.P10317801764029299571

`A017559(n)/A017557(n)`
-/

namespace A017558.P10317801764029299571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017559 n : ℚ) / (A017557 n : ℚ)

end

end A017558.P10317801764029299571

namespace A017558

/-- `A017559(n)/A017557(n)` -/
def P10317801764029299571.Spec : Prop :=
  ∀ n, P10317801764029299571.a n = (A017558 n : ℚ)

end A017558

/-! ## A017558.P17354916839521596142

`A017561(n)/A017559(n)`
-/

namespace A017558.P17354916839521596142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017561 n : ℚ) / (A017559 n : ℚ)

end

end A017558.P17354916839521596142

namespace A017558

/-- `A017561(n)/A017559(n)` -/
def P17354916839521596142.Spec : Prop :=
  ∀ n, P17354916839521596142.a n = (A017558 n : ℚ)

end A017558

/-!
# A017559: a(n) = (12*n + 3)^3.

The programs for A017559, the canonical program `A017559.P17048607132753490720` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017559 has offset 0).

The definition of A017559 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+3)^3` (program `A017559.P17048607132753490720`, by `A017559.P17048607132753490720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017559.P17048607132753490720

`(12*n+3)^3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017559

/-- `(12*n+3)^3` -/
def P17048607132753490720.Spec : Prop :=
  ∀ n, (P17048607132753490720.a n : ℤ) = A017559 n

theorem P17048607132753490720.correct : P17048607132753490720.Spec := by
  intro n
  simp only [A017559]

end A017559

/-! ## A017559.P5020898230972273324

`root(or(3, 12*n), 1/3)`
-/

namespace A017559.P5020898230972273324
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (12 * n) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A017559.P5020898230972273324

namespace A017559

/-- `root(or(3, 12*n), 1/3)` -/
def P5020898230972273324.Spec : Prop :=
  ∀ n, P5020898230972273324.a n = (A017559 n : ℝ)

end A017559

/-! ## A017559.P4887001067801763311

`27*xor(1, 4*n)^3`
-/

namespace A017559.P4887001067801763311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * Nat.xor 1 (4 * n) ^ 3

end

end A017559.P4887001067801763311

namespace A017559

/-- `27*xor(1, 4*n)^3` -/
def P4887001067801763311.Spec : Prop :=
  ∀ n, (P4887001067801763311.a n : ℤ) = A017559 n

end A017559

/-! ## A017559.P2814104895867526797

`or(1, or(3, 12*n)^3)`
-/

namespace A017559.P2814104895867526797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 3 (12 * n) ^ 3)

end

end A017559.P2814104895867526797

namespace A017559

/-- `or(1, or(3, 12*n)^3)` -/
def P2814104895867526797.Spec : Prop :=
  ∀ n, (P2814104895867526797.a n : ℤ) = A017559 n

end A017559

/-! ## A017559.P8986172816427227643

`or(3, 12*n)²*or(3, 12*n)`
-/

namespace A017559.P8986172816427227643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (12 * n) ^ 2 * Nat.lor 3 (12 * n)

end

end A017559.P8986172816427227643

namespace A017559

/-- `or(3, 12*n)²*or(3, 12*n)` -/
def P8986172816427227643.Spec : Prop :=
  ∀ n, (P8986172816427227643.a n : ℤ) = A017559 n

end A017559

/-! ## A017559.P15033467487107496019

`sqrt(A017562(n))`
-/

namespace A017559.P15033467487107496019
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017562 n : ℝ)

end

end A017559.P15033467487107496019

namespace A017559

/-- `sqrt(A017562(n))` -/
def P15033467487107496019.Spec : Prop :=
  ∀ n, P15033467487107496019.a n = (A017559 n : ℝ)

end A017559

/-! ## A017559.P7184969765208941433

`sqrt(A017558(n)^3)`
-/

namespace A017559.P7184969765208941433
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017558 n ^ 3 : ℝ)

end

end A017559.P7184969765208941433

namespace A017559

/-- `sqrt(A017558(n)^3)` -/
def P7184969765208941433.Spec : Prop :=
  ∀ n, P7184969765208941433.a n = (A017559 n : ℝ)

end A017559

/-! ## A017559.P13285507849183993502

`A017557(n)*A017558(n)`
-/

namespace A017559.P13285507849183993502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 n * A017558 n

end

end A017559.P13285507849183993502

namespace A017559

/-- `A017557(n)*A017558(n)` -/
def P13285507849183993502.Spec : Prop :=
  ∀ n, P13285507849183993502.a n = A017559 n

theorem P13285507849183993502.correct : P13285507849183993502.Spec := by
  intro n
  simp only [A017559, Nat.add_sub_cancel, A017559.P13285507849183993502.a, A017559.P17048607132753490720.a, A017557, A017557.P7719209615978230604.a, A017558, A017558.P11205723934719350193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017559

/-! ## A017559.P11549482929219559957

`A017560(n)/A017557(n)`
-/

namespace A017559.P11549482929219559957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017560 n : ℚ) / (A017557 n : ℚ)

end

end A017559.P11549482929219559957

namespace A017559

/-- `A017560(n)/A017557(n)` -/
def P11549482929219559957.Spec : Prop :=
  ∀ n, P11549482929219559957.a n = (A017559 n : ℚ)

end A017559

/-! ## A017559.P1430824394103108814

`A017561(n)/A017558(n)`
-/

namespace A017559.P1430824394103108814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017561 n : ℚ) / (A017558 n : ℚ)

end

end A017559.P1430824394103108814

namespace A017559

/-- `A017561(n)/A017558(n)` -/
def P1430824394103108814.Spec : Prop :=
  ∀ n, P1430824394103108814.a n = (A017559 n : ℚ)

end A017559

/-! ## A017559.P8885016055870258806

`A017561(n)/A017557(n)²`
-/

namespace A017559.P8885016055870258806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017561 n : ℚ) / (A017557 n ^ 2 : ℚ)

end

end A017559.P8885016055870258806

namespace A017559

/-- `A017561(n)/A017557(n)²` -/
def P8885016055870258806.Spec : Prop :=
  ∀ n, P8885016055870258806.a n = (A017559 n : ℚ)

end A017559

/-! ## A017559.P4046654436516209035

`A017562(n)/(A017557(n)²*A017557(n))`
-/

namespace A017559.P4046654436516209035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017562 n : ℚ) / (A017557 n ^ 2 * A017557 n : ℚ)

end

end A017559.P4046654436516209035

namespace A017559

/-- `A017562(n)/(A017557(n)²*A017557(n))` -/
def P4046654436516209035.Spec : Prop :=
  ∀ n, P4046654436516209035.a n = (A017559 n : ℚ)

end A017559

/-! ## A017559.P11089291741499144249

`Δ[A094159(n)]²*Δ[A094159(n)]`
-/

namespace A017559.P11089291741499144249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017559.P11089291741499144249

namespace A017559

/-- `Δ[A094159(n)]²*Δ[A094159(n)]` -/
def P11089291741499144249.Spec : Prop :=
  ∀ n, P11089291741499144249.a n = A017559 n

theorem P11089291741499144249.correct : P11089291741499144249.Spec := by
  intro n
  simp only [A017559, Nat.add_sub_cancel, A017559.P11089291741499144249.f1, A017559.P11089291741499144249.f2, A017559.P11089291741499144249.a, A017559.P17048607132753490720.a, A094159, A094159.P13229722457034603277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017559

/-! ## A017559.P11856346529586026239

`A017595(2*n)/8`
-/

namespace A017559.P11856346529586026239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017595 (2 * n) : ℚ) / 8

end

end A017559.P11856346529586026239

namespace A017559

/-- `A017595(2*n)/8` -/
def P11856346529586026239.Spec : Prop :=
  ∀ n, P11856346529586026239.a n = (A017559 n : ℚ)

theorem P11856346529586026239.correct : P11856346529586026239.Spec := by
  intro n
  simp only [A017559, Nat.add_sub_cancel, A017559.P11856346529586026239.a, A017559.P17048607132753490720.a, A017595, A017595.P5808580862531119874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017559

/-! ## A017559.P10692535148451193145

`27*A016755(2*n)`
-/

namespace A017559.P10692535148451193145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A016755 (2 * n)

end

end A017559.P10692535148451193145

namespace A017559

/-- `27*A016755(2*n)` -/
def P10692535148451193145.Spec : Prop :=
  ∀ n, P10692535148451193145.a n = A017559 n

theorem P10692535148451193145.correct : P10692535148451193145.Spec := by
  intro n
  simp only [A017559, Nat.add_sub_cancel, A017559.P10692535148451193145.a, A017559.P17048607132753490720.a, A016755, A016755.P5941101717872313811.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017559

/-! ## A017559.P3758097976855150027

`A016947(2*n)`
-/

namespace A017559.P3758097976855150027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 (2 * n)

end

end A017559.P3758097976855150027

namespace A017559

/-- `A016947(2*n)` -/
def P3758097976855150027.Spec : Prop :=
  ∀ n, P3758097976855150027.a n = A017559 n

theorem P3758097976855150027.correct : P3758097976855150027.Spec := by
  intro n
  simp only [A017559, Nat.add_sub_cancel, A017559.P3758097976855150027.a, A017559.P17048607132753490720.a, A016947, A016947.P4365293070950782915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017559

/-! ## A017559.P3837241311336883683

`sqrt(A016950(2*n))`
-/

namespace A017559.P3837241311336883683
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016950 (2 * n) : ℝ)

end

end A017559.P3837241311336883683

namespace A017559

/-- `sqrt(A016950(2*n))` -/
def P3837241311336883683.Spec : Prop :=
  ∀ n, P3837241311336883683.a n = (A017559 n : ℝ)

end A017559

/-! ## A017559.P14621987063725425607

`record[A261671(n)^3]`
-/

namespace A017559.P14621987063725425607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261671 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017559.P14621987063725425607

namespace A017559

/-- `record[A261671(n)^3]` -/
def P14621987063725425607.Spec : Prop :=
  ∀ n, P14621987063725425607.a n = A017559 n

end A017559

/-! ## A017559.P1288169850536292360

`A016946(2*n)*A017557(n)`
-/

namespace A017559.P1288169850536292360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 (2 * n) * A017557 n

end

end A017559.P1288169850536292360

namespace A017559

/-- `A016946(2*n)*A017557(n)` -/
def P1288169850536292360.Spec : Prop :=
  ∀ n, P1288169850536292360.a n = A017559 n

theorem P1288169850536292360.correct : P1288169850536292360.Spec := by
  intro n
  simp only [A017559, Nat.add_sub_cancel, A017559.P1288169850536292360.a, A017559.P17048607132753490720.a, A016946, A016946.P16494615086453922637.a, A017557, A017557.P7719209615978230604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017559

/-! ## A017559.P4205538229216539917

`A016945(2*n)*A016946(2*n)`
-/

namespace A017559.P4205538229216539917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (2 * n) * A016946 (2 * n)

end

end A017559.P4205538229216539917

namespace A017559

/-- `A016945(2*n)*A016946(2*n)` -/
def P4205538229216539917.Spec : Prop :=
  ∀ n, P4205538229216539917.a n = A017559 n

theorem P4205538229216539917.correct : P4205538229216539917.Spec := by
  intro n
  simp only [A017559, Nat.add_sub_cancel, A017559.P4205538229216539917.a, A017559.P17048607132753490720.a, A016945, A016945.P12463160785118576711.a, A016946, A016946.P16494615086453922637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017559

/-!
# A017560: a(n) = (12*n + 3)^4.

The programs for A017560, the canonical program `A017560.P5013498380899585749` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017560 has offset 0).

The definition of A017560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+3)^4` (program `A017560.P5013498380899585749`, by `A017560.P5013498380899585749.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017560.P5013498380899585749

`(12*n+3)^4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017560

/-- `(12*n+3)^4` -/
def P5013498380899585749.Spec : Prop :=
  ∀ n, (P5013498380899585749.a n : ℤ) = A017560 n

theorem P5013498380899585749.correct : P5013498380899585749.Spec := by
  intro n
  simp only [A017560]

end A017560

/-! ## A017560.P6072316455602569750

`or(3, 12*n)²²`
-/

namespace A017560.P6072316455602569750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (12 * n) ^ 2) ^ 2

end

end A017560.P6072316455602569750

namespace A017560

/-- `or(3, 12*n)²²` -/
def P6072316455602569750.Spec : Prop :=
  ∀ n, (P6072316455602569750.a n : ℤ) = A017560 n

end A017560

/-! ## A017560.P12441695143256696034

`xor(3, 12*n)²²`
-/

namespace A017560.P12441695143256696034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (12 * n) ^ 2) ^ 2

end

end A017560.P12441695143256696034

namespace A017560

/-- `xor(3, 12*n)²²` -/
def P12441695143256696034.Spec : Prop :=
  ∀ n, (P12441695143256696034.a n : ℤ) = A017560 n

end A017560

/-! ## A017560.P17388828113146538698

`Δ[3*C(2*n, 2)]²²`
-/

namespace A017560.P17388828113146538698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017560.P17388828113146538698

namespace A017560

/-- `Δ[3*C(2*n, 2)]²²` -/
def P17388828113146538698.Spec : Prop :=
  ∀ n, P17388828113146538698.a n = A017560 n

theorem P17388828113146538698.correct : P17388828113146538698.Spec := by
  intro n
  simp only [A017560, Nat.add_sub_cancel, A017560.P17388828113146538698.f1, A017560.P17388828113146538698.a, A017560.P5013498380899585749.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017560

/-! ## A017560.P1827054124331628270

`A017558(n)²`
-/

namespace A017560.P1827054124331628270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017558 n ^ 2

end

end A017560.P1827054124331628270

namespace A017560

/-- `A017558(n)²` -/
def P1827054124331628270.Spec : Prop :=
  ∀ n, P1827054124331628270.a n = A017560 n

theorem P1827054124331628270.correct : P1827054124331628270.Spec := by
  intro n
  simp only [A017560, Nat.add_sub_cancel, A017560.P1827054124331628270.a, A017560.P5013498380899585749.a, A017558, A017558.P11205723934719350193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017560

/-! ## A017560.P9378424712802937618

`sqrt(A017564(n))`
-/

namespace A017560.P9378424712802937618
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017564 n : ℝ)

end

end A017560.P9378424712802937618

namespace A017560

/-- `sqrt(A017564(n))` -/
def P9378424712802937618.Spec : Prop :=
  ∀ n, P9378424712802937618.a n = (A017560 n : ℝ)

end A017560

/-! ## A017560.P1446633072279217489

`A017557(n)²²`
-/

namespace A017560.P1446633072279217489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017557 n ^ 2) ^ 2

end

end A017560.P1446633072279217489

namespace A017560

/-- `A017557(n)²²` -/
def P1446633072279217489.Spec : Prop :=
  ∀ n, P1446633072279217489.a n = A017560 n

theorem P1446633072279217489.correct : P1446633072279217489.Spec := by
  intro n
  simp only [A017560, Nat.add_sub_cancel, A017560.P1446633072279217489.a, A017560.P5013498380899585749.a, A017557, A017557.P7719209615978230604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017560

/-! ## A017560.P13721333332012197574

`(A017545(n)+1)²²`
-/

namespace A017560.P13721333332012197574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017545 n + 1) ^ 2) ^ 2

end

end A017560.P13721333332012197574

namespace A017560

/-- `(A017545(n)+1)²²` -/
def P13721333332012197574.Spec : Prop :=
  ∀ n, P13721333332012197574.a n = A017560 n

theorem P13721333332012197574.correct : P13721333332012197574.Spec := by
  intro n
  simp only [A017560, Nat.add_sub_cancel, A017560.P13721333332012197574.a, A017560.P5013498380899585749.a, A017545, A017545.P14965093399951293214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017560

/-! ## A017560.P16823948477585318484

`(A017533(n)+2)²²`
-/

namespace A017560.P16823948477585318484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017533 n + 2) ^ 2) ^ 2

end

end A017560.P16823948477585318484

namespace A017560

/-- `(A017533(n)+2)²²` -/
def P16823948477585318484.Spec : Prop :=
  ∀ n, P16823948477585318484.a n = A017560 n

theorem P16823948477585318484.correct : P16823948477585318484.Spec := by
  intro n
  simp only [A017560, Nat.add_sub_cancel, A017560.P16823948477585318484.a, A017560.P5013498380899585749.a, A017533, A017533.P146508076441825746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017560

/-! ## A017560.P15371463634825856385

`(1-A017569(n))²²`
-/

namespace A017560.P15371463634825856385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017569 n) ^ 2) ^ 2

end

end A017560.P15371463634825856385

namespace A017560

/-- `(1-A017569(n))²²` -/
def P15371463634825856385.Spec : Prop :=
  ∀ n, P15371463634825856385.a n = A017560 n

theorem P15371463634825856385.correct : P15371463634825856385.Spec := by
  intro n
  simp only [A017560, Nat.add_sub_cancel, A017560.P15371463634825856385.a, A017560.P5013498380899585749.a, A017569, A017569.P14340039372117997380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017560

/-! ## A017560.P13315217651545573366

`(A008594(n)+3)²²`
-/

namespace A017560.P13315217651545573366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008594 n + 3) ^ 2) ^ 2

end

end A017560.P13315217651545573366

namespace A017560

/-- `(A008594(n)+3)²²` -/
def P13315217651545573366.Spec : Prop :=
  ∀ n, P13315217651545573366.a n = A017560 n

theorem P13315217651545573366.correct : P13315217651545573366.Spec := by
  intro n
  simp only [A017560, Nat.add_sub_cancel, A017560.P13315217651545573366.a, A017560.P5013498380899585749.a, A008594, A008594.P9877215682521385096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017560

/-! ## A017560.P9399615093425326993

`(2-A017581(n))²²`
-/

namespace A017560.P9399615093425326993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017581 n) ^ 2) ^ 2

end

end A017560.P9399615093425326993

namespace A017560

/-- `(2-A017581(n))²²` -/
def P9399615093425326993.Spec : Prop :=
  ∀ n, P9399615093425326993.a n = A017560 n

theorem P9399615093425326993.correct : P9399615093425326993.Spec := by
  intro n
  simp only [A017560, Nat.add_sub_cancel, A017560.P9399615093425326993.a, A017560.P5013498380899585749.a, A017581, A017581.P8854877261644846518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017560

/-! ## A017560.P11454692767680921692

`(3-A017593(n))²²`
-/

namespace A017560.P11454692767680921692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017593 n) ^ 2) ^ 2

end

end A017560.P11454692767680921692

namespace A017560

/-- `(3-A017593(n))²²` -/
def P11454692767680921692.Spec : Prop :=
  ∀ n, P11454692767680921692.a n = A017560 n

theorem P11454692767680921692.correct : P11454692767680921692.Spec := by
  intro n
  simp only [A017560, Nat.add_sub_cancel, A017560.P11454692767680921692.a, A017560.P5013498380899585749.a, A017593, A017593.P13091213750843470751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017560

/-! ## A017560.P15017449831284441493

`(3*A016813(n))²²`
-/

namespace A017560.P15017449831284441493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * A016813 n) ^ 2) ^ 2

end

end A017560.P15017449831284441493

namespace A017560

/-- `(3*A016813(n))²²` -/
def P15017449831284441493.Spec : Prop :=
  ∀ n, P15017449831284441493.a n = A017560 n

theorem P15017449831284441493.correct : P15017449831284441493.Spec := by
  intro n
  simp only [A017560, Nat.add_sub_cancel, A017560.P15017449831284441493.a, A017560.P5013498380899585749.a, A016813, A016813.P15626904835145642280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017560

/-! ## A017560.P2878075437189086215

`(A139609(n)/3)²²`
-/

namespace A017560.P2878075437189086215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A139609 n : ℚ) / 3) ^ 2) ^ 2

end

end A017560.P2878075437189086215

namespace A017560

/-- `(A139609(n)/3)²²` -/
def P2878075437189086215.Spec : Prop :=
  ∀ n, P2878075437189086215.a n = (A017560 n : ℚ)

theorem P2878075437189086215.correct : P2878075437189086215.Spec := by
  intro n
  simp only [A017560, Nat.add_sub_cancel, A017560.P2878075437189086215.a, A017560.P5013498380899585749.a, A139609, A139609.P9444052933734431748.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017560

/-! ## A017560.P1329857410539882584

`(A017425(n)+n)²²`
-/

namespace A017560.P1329857410539882584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017425 n + (n : ℤ)) ^ 2) ^ 2

end

end A017560.P1329857410539882584

namespace A017560

/-- `(A017425(n)+n)²²` -/
def P1329857410539882584.Spec : Prop :=
  ∀ n, P1329857410539882584.a n = A017560 n

theorem P1329857410539882584.correct : P1329857410539882584.Spec := by
  intro n
  simp only [A017560, Nat.add_sub_cancel, A017560.P1329857410539882584.a, A017560.P5013498380899585749.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017560

/-! ## A017560.P7152092700847755724

`(sqrt(A017546(n))+1)²²`
-/

namespace A017560.P7152092700847755724
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017546 n : ℝ) + 1) ^ 2) ^ 2

end

end A017560.P7152092700847755724

namespace A017560

/-- `(sqrt(A017546(n))+1)²²` -/
def P7152092700847755724.Spec : Prop :=
  ∀ n, P7152092700847755724.a n = (A017560 n : ℝ)

end A017560

/-! ## A017560.P15725362818188016247

`(sqrt(A017534(n))+2)²²`
-/

namespace A017560.P15725362818188016247
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017534 n : ℝ) + 2) ^ 2) ^ 2

end

end A017560.P15725362818188016247

namespace A017560

/-- `(sqrt(A017534(n))+2)²²` -/
def P15725362818188016247.Spec : Prop :=
  ∀ n, P15725362818188016247.a n = (A017560 n : ℝ)

end A017560

/-! ## A017560.P14541150431233000296

`(1-sqrt(A017570(n)))²²`
-/

namespace A017560.P14541150431233000296
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017570 n : ℝ)) ^ 2) ^ 2

end

end A017560.P14541150431233000296

namespace A017560

/-- `(1-sqrt(A017570(n)))²²` -/
def P14541150431233000296.Spec : Prop :=
  ∀ n, P14541150431233000296.a n = (A017560 n : ℝ)

end A017560

/-! ## A017560.P16912022888842073378

`(2-sqrt(A017582(n)))²²`
-/

namespace A017560.P16912022888842073378
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - Real.sqrt (A017582 n : ℝ)) ^ 2) ^ 2

end

end A017560.P16912022888842073378

namespace A017560

/-- `(2-sqrt(A017582(n)))²²` -/
def P16912022888842073378.Spec : Prop :=
  ∀ n, P16912022888842073378.a n = (A017560 n : ℝ)

end A017560

/-!
# A017561: a(n) = (12*n + 3)^5.

The programs for A017561, the canonical program `A017561.P18243931640452041460` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017561 has offset 0).

The definition of A017561 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+3)^5` (program `A017561.P18243931640452041460`, by `A017561.P18243931640452041460.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017561.P18243931640452041460

`(12*n+3)^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017561

/-- `(12*n+3)^5` -/
def P18243931640452041460.Spec : Prop :=
  ∀ n, (P18243931640452041460.a n : ℤ) = A017561 n

theorem P18243931640452041460.correct : P18243931640452041460.Spec := by
  intro n
  simp only [A017561]

end A017561

/-! ## A017561.P11230180450012327722

`or(1, or(3, 12*n)^5)`
-/

namespace A017561.P11230180450012327722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 3 (12 * n) ^ 5)

end

end A017561.P11230180450012327722

namespace A017561

/-- `or(1, or(3, 12*n)^5)` -/
def P11230180450012327722.Spec : Prop :=
  ∀ n, (P11230180450012327722.a n : ℤ) = A017561 n

end A017561

/-! ## A017561.P10935485054575937059

`(xor(3, 12*n)²^(5/4))²`
-/

namespace A017561.P10935485054575937059
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 3 (12 * n) ^ 2 : ℝ) ^ ((5 : ℚ) / 4 : ℝ)) ^ 2

end

end A017561.P10935485054575937059

namespace A017561

/-- `(xor(3, 12*n)²^(5/4))²` -/
def P10935485054575937059.Spec : Prop :=
  ∀ n, P10935485054575937059.a n = (A017561 n : ℝ)

end A017561

/-! ## A017561.P6929993413640707767

`or(3, 12*n)²²*or(3, 12*n)`
-/

namespace A017561.P6929993413640707767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (12 * n) ^ 2) ^ 2 * Nat.lor 3 (12 * n)

end

end A017561.P6929993413640707767

namespace A017561

/-- `or(3, 12*n)²²*or(3, 12*n)` -/
def P6929993413640707767.Spec : Prop :=
  ∀ n, (P6929993413640707767.a n : ℤ) = A017561 n

end A017561

/-! ## A017561.P9232639455877266095

`xor(3, 12*n)²²*xor(3, 12*n)`
-/

namespace A017561.P9232639455877266095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (12 * n) ^ 2) ^ 2 * Nat.xor 3 (12 * n)

end

end A017561.P9232639455877266095

namespace A017561

/-- `xor(3, 12*n)²²*xor(3, 12*n)` -/
def P9232639455877266095.Spec : Prop :=
  ∀ n, (P9232639455877266095.a n : ℤ) = A017561 n

end A017561

/-! ## A017561.P5918744936835891851

`A017557(n)*A017560(n)`
-/

namespace A017561.P5918744936835891851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 n * A017560 n

end

end A017561.P5918744936835891851

namespace A017561

/-- `A017557(n)*A017560(n)` -/
def P5918744936835891851.Spec : Prop :=
  ∀ n, P5918744936835891851.a n = A017561 n

theorem P5918744936835891851.correct : P5918744936835891851.Spec := by
  intro n
  simp only [A017561, Nat.add_sub_cancel, A017561.P5918744936835891851.a, A017561.P18243931640452041460.a, A017557, A017557.P7719209615978230604.a, A017560, A017560.P5013498380899585749.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017561

/-! ## A017561.P1107351794928651194

`A017558(n)*A017559(n)`
-/

namespace A017561.P1107351794928651194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017558 n * A017559 n

end

end A017561.P1107351794928651194

namespace A017561

/-- `A017558(n)*A017559(n)` -/
def P1107351794928651194.Spec : Prop :=
  ∀ n, P1107351794928651194.a n = A017561 n

theorem P1107351794928651194.correct : P1107351794928651194.Spec := by
  intro n
  simp only [A017561, Nat.add_sub_cancel, A017561.P1107351794928651194.a, A017561.P18243931640452041460.a, A017558, A017558.P11205723934719350193.a, A017559, A017559.P17048607132753490720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017561

/-! ## A017561.P14012149641623902870

`A017562(n)/A017557(n)`
-/

namespace A017561.P14012149641623902870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017562 n : ℚ) / (A017557 n : ℚ)

end

end A017561.P14012149641623902870

namespace A017561

/-- `A017562(n)/A017557(n)` -/
def P14012149641623902870.Spec : Prop :=
  ∀ n, P14012149641623902870.a n = (A017561 n : ℚ)

end A017561

/-! ## A017561.P13400596548819893710

`A017558(n)²*A017557(n)`
-/

namespace A017561.P13400596548819893710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017558 n ^ 2 * A017557 n

end

end A017561.P13400596548819893710

namespace A017561

/-- `A017558(n)²*A017557(n)` -/
def P13400596548819893710.Spec : Prop :=
  ∀ n, P13400596548819893710.a n = A017561 n

theorem P13400596548819893710.correct : P13400596548819893710.Spec := by
  intro n
  simp only [A017561, Nat.add_sub_cancel, A017561.P13400596548819893710.a, A017561.P18243931640452041460.a, A017557, A017557.P7719209615978230604.a, A017558, A017558.P11205723934719350193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017561

/-! ## A017561.P4682965625331163133

`A017557(n)²*A017559(n)`
-/

namespace A017561.P4682965625331163133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 n ^ 2 * A017559 n

end

end A017561.P4682965625331163133

namespace A017561

/-- `A017557(n)²*A017559(n)` -/
def P4682965625331163133.Spec : Prop :=
  ∀ n, P4682965625331163133.a n = A017561 n

theorem P4682965625331163133.correct : P4682965625331163133.Spec := by
  intro n
  simp only [A017561, Nat.add_sub_cancel, A017561.P4682965625331163133.a, A017561.P18243931640452041460.a, A017557, A017557.P7719209615978230604.a, A017559, A017559.P17048607132753490720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017561

/-! ## A017561.P1659362941945714229

`A017560(n)²/A017559(n)`
-/

namespace A017561.P1659362941945714229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017560 n ^ 2 : ℚ) / (A017559 n : ℚ)

end

end A017561.P1659362941945714229

namespace A017561

/-- `A017560(n)²/A017559(n)` -/
def P1659362941945714229.Spec : Prop :=
  ∀ n, P1659362941945714229.a n = (A017561 n : ℚ)

end A017561

/-! ## A017561.P9216935164376451002

`A016949(2*n)`
-/

namespace A017561.P9216935164376451002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016949 (2 * n)

end

end A017561.P9216935164376451002

namespace A017561

/-- `A016949(2*n)` -/
def P9216935164376451002.Spec : Prop :=
  ∀ n, P9216935164376451002.a n = A017561 n

theorem P9216935164376451002.correct : P9216935164376451002.Spec := by
  intro n
  simp only [A017561, Nat.add_sub_cancel, A017561.P9216935164376451002.a, A017561.P18243931640452041460.a, A016949, A016949.P7895979054807280839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017561

/-! ## A017561.P15431843492147596375

`record[A261671(n)^5]`
-/

namespace A017561.P15431843492147596375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261671 n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017561.P15431843492147596375

namespace A017561

/-- `record[A261671(n)^5]` -/
def P15431843492147596375.Spec : Prop :=
  ∀ n, P15431843492147596375.a n = A017561 n

end A017561

/-! ## A017561.P8629481610416594735

`A016945(2*n)*A016948(2*n)`
-/

namespace A017561.P8629481610416594735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (2 * n) * A016948 (2 * n)

end

end A017561.P8629481610416594735

namespace A017561

/-- `A016945(2*n)*A016948(2*n)` -/
def P8629481610416594735.Spec : Prop :=
  ∀ n, P8629481610416594735.a n = A017561 n

theorem P8629481610416594735.correct : P8629481610416594735.Spec := by
  intro n
  simp only [A017561, Nat.add_sub_cancel, A017561.P8629481610416594735.a, A017561.P18243931640452041460.a, A016945, A016945.P12463160785118576711.a, A016948, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017561

/-! ## A017561.P2453230352964091490

`A016946(2*n)*A016947(2*n)`
-/

namespace A017561.P2453230352964091490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 (2 * n) * A016947 (2 * n)

end

end A017561.P2453230352964091490

namespace A017561

/-- `A016946(2*n)*A016947(2*n)` -/
def P2453230352964091490.Spec : Prop :=
  ∀ n, P2453230352964091490.a n = A017561 n

theorem P2453230352964091490.correct : P2453230352964091490.Spec := by
  intro n
  simp only [A017561, Nat.add_sub_cancel, A017561.P2453230352964091490.a, A017561.P18243931640452041460.a, A016946, A016946.P16494615086453922637.a, A016947, A016947.P4365293070950782915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017561

/-! ## A017561.P6055915191073462512

`A016950(2*n)/A016945(2*n)`
-/

namespace A017561.P6055915191073462512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016950 (2 * n) : ℚ) / (A016945 (2 * n) : ℚ)

end

end A017561.P6055915191073462512

namespace A017561

/-- `A016950(2*n)/A016945(2*n)` -/
def P6055915191073462512.Spec : Prop :=
  ∀ n, P6055915191073462512.a n = (A017561 n : ℚ)

theorem P6055915191073462512.correct : P6055915191073462512.Spec := by
  intro n
  simp only [A017561, Nat.add_sub_cancel, A017561.P6055915191073462512.a, A017561.P18243931640452041460.a, A016945, A016945.P12463160785118576711.a, A016950, A016950.P12981427071470377345.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017561

/-! ## A017561.P12214330074724519514

`A016951(2*n)/A016946(2*n)`
-/

namespace A017561.P12214330074724519514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016951 (2 * n) : ℚ) / (A016946 (2 * n) : ℚ)

end

end A017561.P12214330074724519514

namespace A017561

/-- `A016951(2*n)/A016946(2*n)` -/
def P12214330074724519514.Spec : Prop :=
  ∀ n, P12214330074724519514.a n = (A017561 n : ℚ)

theorem P12214330074724519514.correct : P12214330074724519514.Spec := by
  intro n
  simp only [A017561, Nat.add_sub_cancel, A017561.P12214330074724519514.a, A017561.P18243931640452041460.a, A016946, A016946.P16494615086453922637.a, A016951, A016951.P324115468251133091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017561

/-! ## A017561.P1090556774383983253

`A016952(2*n)/A016947(2*n)`
-/

namespace A017561.P1090556774383983253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016952 (2 * n) : ℚ) / (A016947 (2 * n) : ℚ)

end

end A017561.P1090556774383983253

namespace A017561

/-- `A016952(2*n)/A016947(2*n)` -/
def P1090556774383983253.Spec : Prop :=
  ∀ n, P1090556774383983253.a n = (A017561 n : ℚ)

theorem P1090556774383983253.correct : P1090556774383983253.Spec := by
  intro n
  simp only [A017561, Nat.add_sub_cancel, A017561.P1090556774383983253.a, A017561.P18243931640452041460.a, A016947, A016947.P4365293070950782915.a, A016952, A016952.P9247051116776005436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017561

/-! ## A017561.P11530018794185159855

`A016953(2*n)/A016948(2*n)`
-/

namespace A017561.P11530018794185159855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016953 (2 * n) : ℚ) / (A016948 (2 * n) : ℚ)

end

end A017561.P11530018794185159855

namespace A017561

/-- `A016953(2*n)/A016948(2*n)` -/
def P11530018794185159855.Spec : Prop :=
  ∀ n, P11530018794185159855.a n = (A017561 n : ℚ)

theorem P11530018794185159855.correct : P11530018794185159855.Spec := by
  intro n
  simp only [A017561, Nat.add_sub_cancel, A017561.P11530018794185159855.a, A017561.P18243931640452041460.a, A016948, A016948.P2499014121543189589.a, A016953, A016953.P13755673835910557378.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017561

/-! ## A017561.P12743260786189889227

`gcd(A016950(2*n), A017597(2*n))`
-/

namespace A017561.P12743260786189889227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016950 (2 * n)) (A017597 (2 * n))

end

end A017561.P12743260786189889227

namespace A017561

/-- `gcd(A016950(2*n), A017597(2*n))` -/
def P12743260786189889227.Spec : Prop :=
  ∀ n, (P12743260786189889227.a n : ℤ) = A017561 n

end A017561

/-!
# A017562: a(n) = (12*n + 3)^6.

The programs for A017562, the canonical program `A017562.P14875296255181080402` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017562 has offset 0).

The definition of A017562 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+3)^6` (program `A017562.P14875296255181080402`, by `A017562.P14875296255181080402.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017562.P14875296255181080402

`(12*n+3)^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017562

/-- `(12*n+3)^6` -/
def P14875296255181080402.Spec : Prop :=
  ∀ n, (P14875296255181080402.a n : ℤ) = A017562 n

theorem P14875296255181080402.correct : P14875296255181080402.Spec := by
  intro n
  simp only [A017562]

end A017562

/-! ## A017562.P5150753786728071685

`(or(3, 12*n)^3)²`
-/

namespace A017562.P5150753786728071685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (12 * n) ^ 3) ^ 2

end

end A017562.P5150753786728071685

namespace A017562

/-- `(or(3, 12*n)^3)²` -/
def P5150753786728071685.Spec : Prop :=
  ∀ n, (P5150753786728071685.a n : ℤ) = A017562 n

end A017562

/-! ## A017562.P14844722044314162705

`(xor(3, 12*n)^3)²`
-/

namespace A017562.P14844722044314162705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (12 * n) ^ 3) ^ 2

end

end A017562.P14844722044314162705

namespace A017562

/-- `(xor(3, 12*n)^3)²` -/
def P14844722044314162705.Spec : Prop :=
  ∀ n, (P14844722044314162705.a n : ℤ) = A017562 n

end A017562

/-! ## A017562.P9769113605897276101

`root(or(3, 12*n), 2/12)`
-/

namespace A017562.P9769113605897276101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (12 * n) : ℝ) ^ (1 / ((2 : ℚ) / 12 : ℝ))

end

end A017562.P9769113605897276101

namespace A017562

/-- `root(or(3, 12*n), 2/12)` -/
def P9769113605897276101.Spec : Prop :=
  ∀ n, P9769113605897276101.a n = (A017562 n : ℝ)

end A017562

/-! ## A017562.P198583000408709928

`or(3, 12*n)^5*or(3, 12*n)`
-/

namespace A017562.P198583000408709928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (12 * n) ^ 5 * Nat.lor 3 (12 * n)

end

end A017562.P198583000408709928

namespace A017562

/-- `or(3, 12*n)^5*or(3, 12*n)` -/
def P198583000408709928.Spec : Prop :=
  ∀ n, (P198583000408709928.a n : ℤ) = A017562 n

end A017562

/-! ## A017562.P12455611131442022659

`(xor(3, 12*n)²*xor(3, 12*n))²`
-/

namespace A017562.P12455611131442022659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (12 * n) ^ 2 * Nat.xor 3 (12 * n)) ^ 2

end

end A017562.P12455611131442022659

namespace A017562

/-- `(xor(3, 12*n)²*xor(3, 12*n))²` -/
def P12455611131442022659.Spec : Prop :=
  ∀ n, (P12455611131442022659.a n : ℤ) = A017562 n

end A017562

/-! ## A017562.P14848730754941908979

`A017559(n)²`
-/

namespace A017562.P14848730754941908979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017559 n ^ 2

end

end A017562.P14848730754941908979

namespace A017562

/-- `A017559(n)²` -/
def P14848730754941908979.Spec : Prop :=
  ∀ n, P14848730754941908979.a n = A017562 n

theorem P14848730754941908979.correct : P14848730754941908979.Spec := by
  intro n
  simp only [A017562, Nat.add_sub_cancel, A017562.P14848730754941908979.a, A017562.P14875296255181080402.a, A017559, A017559.P17048607132753490720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017562

/-! ## A017562.P822221756899715455

`(A017557(n)^3)²`
-/

namespace A017562.P822221756899715455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017557 n ^ 3) ^ 2

end

end A017562.P822221756899715455

namespace A017562

/-- `(A017557(n)^3)²` -/
def P822221756899715455.Spec : Prop :=
  ∀ n, P822221756899715455.a n = A017562 n

theorem P822221756899715455.correct : P822221756899715455.Spec := by
  intro n
  simp only [A017562, Nat.add_sub_cancel, A017562.P822221756899715455.a, A017562.P14875296255181080402.a, A017557, A017557.P7719209615978230604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017562

/-! ## A017562.P4668360730008340112

`A017557(n)*A017561(n)`
-/

namespace A017562.P4668360730008340112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 n * A017561 n

end

end A017562.P4668360730008340112

namespace A017562

/-- `A017557(n)*A017561(n)` -/
def P4668360730008340112.Spec : Prop :=
  ∀ n, P4668360730008340112.a n = A017562 n

theorem P4668360730008340112.correct : P4668360730008340112.Spec := by
  intro n
  simp only [A017562, Nat.add_sub_cancel, A017562.P4668360730008340112.a, A017562.P14875296255181080402.a, A017557, A017557.P7719209615978230604.a, A017561, A017561.P18243931640452041460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017562

/-! ## A017562.P14390987292805191462

`A017558(n)*A017560(n)`
-/

namespace A017562.P14390987292805191462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017558 n * A017560 n

end

end A017562.P14390987292805191462

namespace A017562

/-- `A017558(n)*A017560(n)` -/
def P14390987292805191462.Spec : Prop :=
  ∀ n, P14390987292805191462.a n = A017562 n

theorem P14390987292805191462.correct : P14390987292805191462.Spec := by
  intro n
  simp only [A017562, Nat.add_sub_cancel, A017562.P14390987292805191462.a, A017562.P14875296255181080402.a, A017558, A017558.P11205723934719350193.a, A017560, A017560.P5013498380899585749.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017562

/-! ## A017562.P1716270095407645831

`(A017557(n)*A017558(n))²`
-/

namespace A017562.P1716270095407645831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017557 n * A017558 n) ^ 2

end

end A017562.P1716270095407645831

namespace A017562

/-- `(A017557(n)*A017558(n))²` -/
def P1716270095407645831.Spec : Prop :=
  ∀ n, P1716270095407645831.a n = A017562 n

theorem P1716270095407645831.correct : P1716270095407645831.Spec := by
  intro n
  simp only [A017562, Nat.add_sub_cancel, A017562.P1716270095407645831.a, A017562.P14875296255181080402.a, A017557, A017557.P7719209615978230604.a, A017558, A017558.P11205723934719350193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017562

/-! ## A017562.P11790447652078772484

`A017557(n)²*A017560(n)`
-/

namespace A017562.P11790447652078772484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 n ^ 2 * A017560 n

end

end A017562.P11790447652078772484

namespace A017562

/-- `A017557(n)²*A017560(n)` -/
def P11790447652078772484.Spec : Prop :=
  ∀ n, P11790447652078772484.a n = A017562 n

theorem P11790447652078772484.correct : P11790447652078772484.Spec := by
  intro n
  simp only [A017562, Nat.add_sub_cancel, A017562.P11790447652078772484.a, A017562.P14875296255181080402.a, A017557, A017557.P7719209615978230604.a, A017560, A017560.P5013498380899585749.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017562

/-! ## A017562.P3036559693807508700

`(A017561(n)/A017558(n))²`
-/

namespace A017562.P3036559693807508700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017561 n : ℚ) / (A017558 n : ℚ)) ^ 2

end

end A017562.P3036559693807508700

namespace A017562

/-- `(A017561(n)/A017558(n))²` -/
def P3036559693807508700.Spec : Prop :=
  ∀ n, P3036559693807508700.a n = (A017562 n : ℚ)

end A017562

/-! ## A017562.P12998268795185442683

`A017564(n)/sqrt(sqrt(A017564(n)))`
-/

namespace A017562.P12998268795185442683
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017564 n : ℝ) / Real.sqrt (Real.sqrt (A017564 n : ℝ))

end

end A017562.P12998268795185442683

namespace A017562

/-- `A017564(n)/sqrt(sqrt(A017564(n)))` -/
def P12998268795185442683.Spec : Prop :=
  ∀ n, P12998268795185442683.a n = (A017562 n : ℝ)

end A017562

/-! ## A017562.P1132814233106582078

`(Δ[A094159(n)]^3)²`
-/

namespace A017562.P1132814233106582078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017562.P1132814233106582078

namespace A017562

/-- `(Δ[A094159(n)]^3)²` -/
def P1132814233106582078.Spec : Prop :=
  ∀ n, P1132814233106582078.a n = A017562 n

theorem P1132814233106582078.correct : P1132814233106582078.Spec := by
  intro n
  simp only [A017562, Nat.add_sub_cancel, A017562.P1132814233106582078.f1, A017562.P1132814233106582078.a, A017562.P14875296255181080402.a, A094159, A094159.P13229722457034603277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017562

/-! ## A017562.P10912621784945822463

`A016950(2*n)`
-/

namespace A017562.P10912621784945822463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016950 (2 * n)

end

end A017562.P10912621784945822463

namespace A017562

/-- `A016950(2*n)` -/
def P10912621784945822463.Spec : Prop :=
  ∀ n, P10912621784945822463.a n = A017562 n

theorem P10912621784945822463.correct : P10912621784945822463.Spec := by
  intro n
  simp only [A017562, Nat.add_sub_cancel, A017562.P10912621784945822463.a, A017562.P14875296255181080402.a, A016950, A016950.P12981427071470377345.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017562

/-! ## A017562.P3392678474547447531

`A016947(2*n)²`
-/

namespace A017562.P3392678474547447531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 (2 * n) ^ 2

end

end A017562.P3392678474547447531

namespace A017562

/-- `A016947(2*n)²` -/
def P3392678474547447531.Spec : Prop :=
  ∀ n, P3392678474547447531.a n = A017562 n

theorem P3392678474547447531.correct : P3392678474547447531.Spec := by
  intro n
  simp only [A017562, Nat.add_sub_cancel, A017562.P3392678474547447531.a, A017562.P14875296255181080402.a, A016947, A016947.P4365293070950782915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017562

/-! ## A017562.P7111172602962282135

`A016949(2*n)*(12*n+3)`
-/

namespace A017562.P7111172602962282135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016949 (2 * n) * (12 * n + 3 : ℤ)

end

end A017562.P7111172602962282135

namespace A017562

/-- `A016949(2*n)*(12*n+3)` -/
def P7111172602962282135.Spec : Prop :=
  ∀ n, P7111172602962282135.a n = A017562 n

theorem P7111172602962282135.correct : P7111172602962282135.Spec := by
  intro n
  simp only [A017562, Nat.add_sub_cancel, A017562.P7111172602962282135.a, A017562.P14875296255181080402.a, A016949, A016949.P7895979054807280839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017562

/-! ## A017562.P13120506689254691830

`A016945(2*n)*A016949(2*n)`
-/

namespace A017562.P13120506689254691830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (2 * n) * A016949 (2 * n)

end

end A017562.P13120506689254691830

namespace A017562

/-- `A016945(2*n)*A016949(2*n)` -/
def P13120506689254691830.Spec : Prop :=
  ∀ n, P13120506689254691830.a n = A017562 n

theorem P13120506689254691830.correct : P13120506689254691830.Spec := by
  intro n
  simp only [A017562, Nat.add_sub_cancel, A017562.P13120506689254691830.a, A017562.P14875296255181080402.a, A016945, A016945.P12463160785118576711.a, A016949, A016949.P7895979054807280839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017562

/-! ## A017562.P6953518789666395610

`A016946(2*n)*A016948(2*n)`
-/

namespace A017562.P6953518789666395610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 (2 * n) * A016948 (2 * n)

end

end A017562.P6953518789666395610

namespace A017562

/-- `A016946(2*n)*A016948(2*n)` -/
def P6953518789666395610.Spec : Prop :=
  ∀ n, P6953518789666395610.a n = A017562 n

theorem P6953518789666395610.correct : P6953518789666395610.Spec := by
  intro n
  simp only [A017562, Nat.add_sub_cancel, A017562.P6953518789666395610.a, A017562.P14875296255181080402.a, A016946, A016946.P16494615086453922637.a, A016948, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017562

/-!
# A017563: a(n) = (12*n + 3)^7.

The programs for A017563, the canonical program `A017563.P11096917542315473086` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017563 has offset 0).

The definition of A017563 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+3)^7` (program `A017563.P11096917542315473086`, by `A017563.P11096917542315473086.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017563.P11096917542315473086

`(12*n+3)^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017563

/-- `(12*n+3)^7` -/
def P11096917542315473086.Spec : Prop :=
  ∀ n, (P11096917542315473086.a n : ℤ) = A017563 n

theorem P11096917542315473086.correct : P11096917542315473086.Spec := by
  intro n
  simp only [A017563]

end A017563

/-! ## A017563.P5312348698094729666

`A017557(n)*A017562(n)`
-/

namespace A017563.P5312348698094729666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 n * A017562 n

end

end A017563.P5312348698094729666

namespace A017563

/-- `A017557(n)*A017562(n)` -/
def P5312348698094729666.Spec : Prop :=
  ∀ n, P5312348698094729666.a n = A017563 n

theorem P5312348698094729666.correct : P5312348698094729666.Spec := by
  intro n
  simp only [A017563, Nat.add_sub_cancel, A017563.P5312348698094729666.a, A017563.P11096917542315473086.a, A017557, A017557.P7719209615978230604.a, A017562, A017562.P14875296255181080402.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017563

/-! ## A017563.P18064674989917744985

`A017558(n)*A017561(n)`
-/

namespace A017563.P18064674989917744985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017558 n * A017561 n

end

end A017563.P18064674989917744985

namespace A017563

/-- `A017558(n)*A017561(n)` -/
def P18064674989917744985.Spec : Prop :=
  ∀ n, P18064674989917744985.a n = A017563 n

theorem P18064674989917744985.correct : P18064674989917744985.Spec := by
  intro n
  simp only [A017563, Nat.add_sub_cancel, A017563.P18064674989917744985.a, A017563.P11096917542315473086.a, A017558, A017558.P11205723934719350193.a, A017561, A017561.P18243931640452041460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017563

/-! ## A017563.P1082250344034233852

`A017559(n)*A017560(n)`
-/

namespace A017563.P1082250344034233852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017559 n * A017560 n

end

end A017563.P1082250344034233852

namespace A017563

/-- `A017559(n)*A017560(n)` -/
def P1082250344034233852.Spec : Prop :=
  ∀ n, P1082250344034233852.a n = A017563 n

theorem P1082250344034233852.correct : P1082250344034233852.Spec := by
  intro n
  simp only [A017563, Nat.add_sub_cancel, A017563.P1082250344034233852.a, A017563.P11096917542315473086.a, A017559, A017559.P17048607132753490720.a, A017560, A017560.P5013498380899585749.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017563

/-! ## A017563.P2226610443181709444

`A017559(n)²*A017557(n)`
-/

namespace A017563.P2226610443181709444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017559 n ^ 2 * A017557 n

end

end A017563.P2226610443181709444

namespace A017563

/-- `A017559(n)²*A017557(n)` -/
def P2226610443181709444.Spec : Prop :=
  ∀ n, P2226610443181709444.a n = A017563 n

theorem P2226610443181709444.correct : P2226610443181709444.Spec := by
  intro n
  simp only [A017563, Nat.add_sub_cancel, A017563.P2226610443181709444.a, A017563.P11096917542315473086.a, A017557, A017557.P7719209615978230604.a, A017559, A017559.P17048607132753490720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017563

/-! ## A017563.P7446140087140867746

`A017558(n)²*A017559(n)`
-/

namespace A017563.P7446140087140867746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017558 n ^ 2 * A017559 n

end

end A017563.P7446140087140867746

namespace A017563

/-- `A017558(n)²*A017559(n)` -/
def P7446140087140867746.Spec : Prop :=
  ∀ n, P7446140087140867746.a n = A017563 n

theorem P7446140087140867746.correct : P7446140087140867746.Spec := by
  intro n
  simp only [A017563, Nat.add_sub_cancel, A017563.P7446140087140867746.a, A017563.P11096917542315473086.a, A017558, A017558.P11205723934719350193.a, A017559, A017559.P17048607132753490720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017563

/-! ## A017563.P7993820985610364492

`A017557(n)²*A017561(n)`
-/

namespace A017563.P7993820985610364492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 n ^ 2 * A017561 n

end

end A017563.P7993820985610364492

namespace A017563

/-- `A017557(n)²*A017561(n)` -/
def P7993820985610364492.Spec : Prop :=
  ∀ n, P7993820985610364492.a n = A017563 n

theorem P7993820985610364492.correct : P7993820985610364492.Spec := by
  intro n
  simp only [A017563, Nat.add_sub_cancel, A017563.P7993820985610364492.a, A017563.P11096917542315473086.a, A017557, A017557.P7719209615978230604.a, A017561, A017561.P18243931640452041460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017563

/-! ## A017563.P3561720241265379800

`A017560(n)²/A017557(n)`
-/

namespace A017563.P3561720241265379800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017560 n ^ 2 : ℚ) / (A017557 n : ℚ)

end

end A017563.P3561720241265379800

namespace A017563

/-- `A017560(n)²/A017557(n)` -/
def P3561720241265379800.Spec : Prop :=
  ∀ n, P3561720241265379800.a n = (A017563 n : ℚ)

end A017563

/-! ## A017563.P6648975525985832200

`A017558(n)²²/A017557(n)`
-/

namespace A017563.P6648975525985832200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017558 n ^ 2) ^ 2 : ℚ) / (A017557 n : ℚ)

end

end A017563.P6648975525985832200

namespace A017563

/-- `A017558(n)²²/A017557(n)` -/
def P6648975525985832200.Spec : Prop :=
  ∀ n, P6648975525985832200.a n = (A017563 n : ℚ)

end A017563

/-! ## A017563.P13979598622900571815

`A017561(n)/A017559(n)*A017561(n)`
-/

namespace A017563.P13979598622900571815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017561 n : ℚ) / (A017559 n : ℚ) * (A017561 n : ℚ)

end

end A017563.P13979598622900571815

namespace A017563

/-- `A017561(n)/A017559(n)*A017561(n)` -/
def P13979598622900571815.Spec : Prop :=
  ∀ n, P13979598622900571815.a n = (A017563 n : ℚ)

end A017563

/-! ## A017563.P16659400783466766811

`A016951(2*n)`
-/

namespace A017563.P16659400783466766811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016951 (2 * n)

end

end A017563.P16659400783466766811

namespace A017563

/-- `A016951(2*n)` -/
def P16659400783466766811.Spec : Prop :=
  ∀ n, P16659400783466766811.a n = A017563 n

theorem P16659400783466766811.correct : P16659400783466766811.Spec := by
  intro n
  simp only [A017563, Nat.add_sub_cancel, A017563.P16659400783466766811.a, A017563.P11096917542315473086.a, A016951, A016951.P324115468251133091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017563

/-! ## A017563.P4778049153828680879

`record[A261671(n)^7]`
-/

namespace A017563.P4778049153828680879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261671 n ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017563.P4778049153828680879

namespace A017563

/-- `record[A261671(n)^7]` -/
def P4778049153828680879.Spec : Prop :=
  ∀ n, P4778049153828680879.a n = A017563 n

end A017563

/-! ## A017563.P9005631189843893370

`xor(1, A016951(n+n))+1`
-/

namespace A017563.P9005631189843893370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A016951 (n + n)) + 1

end

end A017563.P9005631189843893370

namespace A017563

/-- `xor(1, A016951(n+n))+1` -/
def P9005631189843893370.Spec : Prop :=
  ∀ n, P9005631189843893370.a n = A017563 n

end A017563

/-! ## A017563.P10573688869709183946

`record[A016951(n)^((n+1)%2)]`
-/

namespace A017563.P10573688869709183946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016951 n ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017563.P10573688869709183946

namespace A017563

/-- `record[A016951(n)^((n+1)%2)]` -/
def P10573688869709183946.Spec : Prop :=
  ∀ n, P10573688869709183946.a n = A017563 n

end A017563

/-! ## A017563.P16876351243991314931

`A016950(2*n)*(12*n+3)`
-/

namespace A017563.P16876351243991314931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016950 (2 * n) * (12 * n + 3 : ℤ)

end

end A017563.P16876351243991314931

namespace A017563

/-- `A016950(2*n)*(12*n+3)` -/
def P16876351243991314931.Spec : Prop :=
  ∀ n, P16876351243991314931.a n = A017563 n

theorem P16876351243991314931.correct : P16876351243991314931.Spec := by
  intro n
  simp only [A017563, Nat.add_sub_cancel, A017563.P16876351243991314931.a, A017563.P11096917542315473086.a, A016950, A016950.P12981427071470377345.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017563

/-! ## A017563.P6710265309930477262

`A016945(2*n)*A016950(2*n)`
-/

namespace A017563.P6710265309930477262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (2 * n) * A016950 (2 * n)

end

end A017563.P6710265309930477262

namespace A017563

/-- `A016945(2*n)*A016950(2*n)` -/
def P6710265309930477262.Spec : Prop :=
  ∀ n, P6710265309930477262.a n = A017563 n

theorem P6710265309930477262.correct : P6710265309930477262.Spec := by
  intro n
  simp only [A017563, Nat.add_sub_cancel, A017563.P6710265309930477262.a, A017563.P11096917542315473086.a, A016945, A016945.P12463160785118576711.a, A016950, A016950.P12981427071470377345.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017563

/-! ## A017563.P403049191361837110

`A016946(2*n)*A016949(2*n)`
-/

namespace A017563.P403049191361837110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 (2 * n) * A016949 (2 * n)

end

end A017563.P403049191361837110

namespace A017563

/-- `A016946(2*n)*A016949(2*n)` -/
def P403049191361837110.Spec : Prop :=
  ∀ n, P403049191361837110.a n = A017563 n

theorem P403049191361837110.correct : P403049191361837110.Spec := by
  intro n
  simp only [A017563, Nat.add_sub_cancel, A017563.P403049191361837110.a, A017563.P11096917542315473086.a, A016946, A016946.P16494615086453922637.a, A016949, A016949.P7895979054807280839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017563

/-! ## A017563.P16560891544926875554

`A016947(2*n)*A016948(2*n)`
-/

namespace A017563.P16560891544926875554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 (2 * n) * A016948 (2 * n)

end

end A017563.P16560891544926875554

namespace A017563

/-- `A016947(2*n)*A016948(2*n)` -/
def P16560891544926875554.Spec : Prop :=
  ∀ n, P16560891544926875554.a n = A017563 n

theorem P16560891544926875554.correct : P16560891544926875554.Spec := by
  intro n
  simp only [A017563, Nat.add_sub_cancel, A017563.P16560891544926875554.a, A017563.P11096917542315473086.a, A016947, A016947.P4365293070950782915.a, A016948, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017563

/-! ## A017563.P5039463254004680711

`A016952(2*n)/A016945(2*n)`
-/

namespace A017563.P5039463254004680711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016952 (2 * n) : ℚ) / (A016945 (2 * n) : ℚ)

end

end A017563.P5039463254004680711

namespace A017563

/-- `A016952(2*n)/A016945(2*n)` -/
def P5039463254004680711.Spec : Prop :=
  ∀ n, P5039463254004680711.a n = (A017563 n : ℚ)

theorem P5039463254004680711.correct : P5039463254004680711.Spec := by
  intro n
  simp only [A017563, Nat.add_sub_cancel, A017563.P5039463254004680711.a, A017563.P11096917542315473086.a, A016945, A016945.P12463160785118576711.a, A016952, A016952.P9247051116776005436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017563

/-! ## A017563.P4509382681403311456

`A016953(2*n)/A016946(2*n)`
-/

namespace A017563.P4509382681403311456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016953 (2 * n) : ℚ) / (A016946 (2 * n) : ℚ)

end

end A017563.P4509382681403311456

namespace A017563

/-- `A016953(2*n)/A016946(2*n)` -/
def P4509382681403311456.Spec : Prop :=
  ∀ n, P4509382681403311456.a n = (A017563 n : ℚ)

theorem P4509382681403311456.correct : P4509382681403311456.Spec := by
  intro n
  simp only [A017563, Nat.add_sub_cancel, A017563.P4509382681403311456.a, A017563.P11096917542315473086.a, A016946, A016946.P16494615086453922637.a, A016953, A016953.P13755673835910557378.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017563

/-!
# A017564: a(n) = (12*n + 3)^8.

The programs for A017564, the canonical program `A017564.P6469577045853772247` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017564 has offset 0).

The definition of A017564 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+3)^8` (program `A017564.P6469577045853772247`, by `A017564.P6469577045853772247.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017564.P6469577045853772247

`(12*n+3)^8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017564

/-- `(12*n+3)^8` -/
def P6469577045853772247.Spec : Prop :=
  ∀ n, (P6469577045853772247.a n : ℤ) = A017564 n

theorem P6469577045853772247.correct : P6469577045853772247.Spec := by
  intro n
  simp only [A017564]

end A017564

/-! ## A017564.P12523788190005902716

`or(3, 12*n)²²²`
-/

namespace A017564.P12523788190005902716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 3 (12 * n) ^ 2) ^ 2) ^ 2

end

end A017564.P12523788190005902716

namespace A017564

/-- `or(3, 12*n)²²²` -/
def P12523788190005902716.Spec : Prop :=
  ∀ n, (P12523788190005902716.a n : ℤ) = A017564 n

end A017564

/-! ## A017564.P9833507119651156644

`A017560(n)²`
-/

namespace A017564.P9833507119651156644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017560 n ^ 2

end

end A017564.P9833507119651156644

namespace A017564

/-- `A017560(n)²` -/
def P9833507119651156644.Spec : Prop :=
  ∀ n, P9833507119651156644.a n = A017564 n

theorem P9833507119651156644.correct : P9833507119651156644.Spec := by
  intro n
  simp only [A017564, Nat.add_sub_cancel, A017564.P9833507119651156644.a, A017564.P6469577045853772247.a, A017560, A017560.P5013498380899585749.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017564

/-! ## A017564.P566419578503545532

`A017558(n)²²`
-/

namespace A017564.P566419578503545532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017558 n ^ 2) ^ 2

end

end A017564.P566419578503545532

namespace A017564

/-- `A017558(n)²²` -/
def P566419578503545532.Spec : Prop :=
  ∀ n, P566419578503545532.a n = A017564 n

theorem P566419578503545532.correct : P566419578503545532.Spec := by
  intro n
  simp only [A017564, Nat.add_sub_cancel, A017564.P566419578503545532.a, A017564.P6469577045853772247.a, A017558, A017558.P11205723934719350193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017564

/-! ## A017564.P5090813455232578103

`(A017557(n)^4)²`
-/

namespace A017564.P5090813455232578103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017557 n ^ 4) ^ 2

end

end A017564.P5090813455232578103

namespace A017564

/-- `(A017557(n)^4)²` -/
def P5090813455232578103.Spec : Prop :=
  ∀ n, P5090813455232578103.a n = A017564 n

theorem P5090813455232578103.correct : P5090813455232578103.Spec := by
  intro n
  simp only [A017564, Nat.add_sub_cancel, A017564.P5090813455232578103.a, A017564.P6469577045853772247.a, A017557, A017557.P7719209615978230604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017564

/-! ## A017564.P11685795383382593156

`(A017545(n)+1)²²²`
-/

namespace A017564.P11685795383382593156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017545 n + 1) ^ 2) ^ 2) ^ 2

end

end A017564.P11685795383382593156

namespace A017564

/-- `(A017545(n)+1)²²²` -/
def P11685795383382593156.Spec : Prop :=
  ∀ n, P11685795383382593156.a n = A017564 n

theorem P11685795383382593156.correct : P11685795383382593156.Spec := by
  intro n
  simp only [A017564, Nat.add_sub_cancel, A017564.P11685795383382593156.a, A017564.P6469577045853772247.a, A017545, A017545.P14965093399951293214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017564

/-! ## A017564.P3218535981685085218

`(A017533(n)+2)²²²`
-/

namespace A017564.P3218535981685085218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017533 n + 2) ^ 2) ^ 2) ^ 2

end

end A017564.P3218535981685085218

namespace A017564

/-- `(A017533(n)+2)²²²` -/
def P3218535981685085218.Spec : Prop :=
  ∀ n, P3218535981685085218.a n = A017564 n

theorem P3218535981685085218.correct : P3218535981685085218.Spec := by
  intro n
  simp only [A017564, Nat.add_sub_cancel, A017564.P3218535981685085218.a, A017564.P6469577045853772247.a, A017533, A017533.P146508076441825746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017564

/-! ## A017564.P14879948173377725890

`(1-A017569(n))²²²`
-/

namespace A017564.P14879948173377725890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017569 n) ^ 2) ^ 2) ^ 2

end

end A017564.P14879948173377725890

namespace A017564

/-- `(1-A017569(n))²²²` -/
def P14879948173377725890.Spec : Prop :=
  ∀ n, P14879948173377725890.a n = A017564 n

theorem P14879948173377725890.correct : P14879948173377725890.Spec := by
  intro n
  simp only [A017564, Nat.add_sub_cancel, A017564.P14879948173377725890.a, A017564.P6469577045853772247.a, A017569, A017569.P14340039372117997380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017564

/-! ## A017564.P2940422506792752554

`(2-A017581(n))²²²`
-/

namespace A017564.P2940422506792752554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017581 n) ^ 2) ^ 2) ^ 2

end

end A017564.P2940422506792752554

namespace A017564

/-- `(2-A017581(n))²²²` -/
def P2940422506792752554.Spec : Prop :=
  ∀ n, P2940422506792752554.a n = A017564 n

theorem P2940422506792752554.correct : P2940422506792752554.Spec := by
  intro n
  simp only [A017564, Nat.add_sub_cancel, A017564.P2940422506792752554.a, A017564.P6469577045853772247.a, A017581, A017581.P8854877261644846518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017564

/-! ## A017564.P13423826199326658352

`(A017425(n)+n)²²²`
-/

namespace A017564.P13423826199326658352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017425 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017564.P13423826199326658352

namespace A017564

/-- `(A017425(n)+n)²²²` -/
def P13423826199326658352.Spec : Prop :=
  ∀ n, P13423826199326658352.a n = A017564 n

theorem P13423826199326658352.correct : P13423826199326658352.Spec := by
  intro n
  simp only [A017564, Nat.add_sub_cancel, A017564.P13423826199326658352.a, A017564.P6469577045853772247.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017564

/-! ## A017564.P7753427338918257376

`(A259752(n+1)/2)²²²`
-/

namespace A017564.P7753427338918257376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((A259752 (n + 1) : ℚ) / 2) ^ 2) ^ 2) ^ 2

end

end A017564.P7753427338918257376

namespace A017564

/-- `(A259752(n+1)/2)²²²` -/
def P7753427338918257376.Spec : Prop :=
  ∀ n, P7753427338918257376.a n = (A017564 n : ℚ)

theorem P7753427338918257376.correct : P7753427338918257376.Spec := by
  intro n
  simp only [A017564, Nat.add_sub_cancel, A017564.P7753427338918257376.a, A017564.P6469577045853772247.a, A259752, A259752.P893208831791855020.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017564

/-! ## A017564.P12979222605950483093

`A017558(n)*A017562(n)`
-/

namespace A017564.P12979222605950483093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017558 n * A017562 n

end

end A017564.P12979222605950483093

namespace A017564

/-- `A017558(n)*A017562(n)` -/
def P12979222605950483093.Spec : Prop :=
  ∀ n, P12979222605950483093.a n = A017564 n

theorem P12979222605950483093.correct : P12979222605950483093.Spec := by
  intro n
  simp only [A017564, Nat.add_sub_cancel, A017564.P12979222605950483093.a, A017564.P6469577045853772247.a, A017558, A017558.P11205723934719350193.a, A017562, A017562.P14875296255181080402.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017564

/-! ## A017564.P17105585495790475230

`A017559(n)*A017561(n)`
-/

namespace A017564.P17105585495790475230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017559 n * A017561 n

end

end A017564.P17105585495790475230

namespace A017564

/-- `A017559(n)*A017561(n)` -/
def P17105585495790475230.Spec : Prop :=
  ∀ n, P17105585495790475230.a n = A017564 n

theorem P17105585495790475230.correct : P17105585495790475230.Spec := by
  intro n
  simp only [A017564, Nat.add_sub_cancel, A017564.P17105585495790475230.a, A017564.P6469577045853772247.a, A017559, A017559.P17048607132753490720.a, A017561, A017561.P18243931640452041460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017564

/-! ## A017564.P2852620860337545468

`Δ[A094159(n)]²²²`
-/

namespace A017564.P2852620860337545468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017564.P2852620860337545468

namespace A017564

/-- `Δ[A094159(n)]²²²` -/
def P2852620860337545468.Spec : Prop :=
  ∀ n, P2852620860337545468.a n = A017564 n

theorem P2852620860337545468.correct : P2852620860337545468.Spec := by
  intro n
  simp only [A017564, Nat.add_sub_cancel, A017564.P2852620860337545468.f1, A017564.P2852620860337545468.a, A017564.P6469577045853772247.a, A094159, A094159.P13229722457034603277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017564

/-! ## A017564.P8379631232567605325

`(A144410(2*n)+1)²²`
-/

namespace A017564.P8379631232567605325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A144410 (2 * n) + 1) ^ 2) ^ 2

end

end A017564.P8379631232567605325

namespace A017564

/-- `(A144410(2*n)+1)²²` -/
def P8379631232567605325.Spec : Prop :=
  ∀ n, P8379631232567605325.a n = A017564 n

theorem P8379631232567605325.correct : P8379631232567605325.Spec := by
  intro n
  simp only [A017564, Nat.add_sub_cancel, A017564.P8379631232567605325.a, A017564.P6469577045853772247.a, A144410, A144410.P8365255097243004447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017564

/-! ## A017564.P8414244167282045151

`A016952(2*n)`
-/

namespace A017564.P8414244167282045151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016952 (2 * n)

end

end A017564.P8414244167282045151

namespace A017564

/-- `A016952(2*n)` -/
def P8414244167282045151.Spec : Prop :=
  ∀ n, P8414244167282045151.a n = A017564 n

theorem P8414244167282045151.correct : P8414244167282045151.Spec := by
  intro n
  simp only [A017564, Nat.add_sub_cancel, A017564.P8414244167282045151.a, A017564.P6469577045853772247.a, A016952, A016952.P9247051116776005436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017564

/-! ## A017564.P10409686641140023452

`A016948(2*n)²`
-/

namespace A017564.P10409686641140023452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016948 (2 * n) ^ 2

end

end A017564.P10409686641140023452

namespace A017564

/-- `A016948(2*n)²` -/
def P10409686641140023452.Spec : Prop :=
  ∀ n, P10409686641140023452.a n = A017564 n

theorem P10409686641140023452.correct : P10409686641140023452.Spec := by
  intro n
  simp only [A017564, Nat.add_sub_cancel, A017564.P10409686641140023452.a, A017564.P6469577045853772247.a, A016948, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017564

/-! ## A017564.P17714278683498722470

`record[A261671(n)^8]`
-/

namespace A017564.P17714278683498722470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261671 n ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017564.P17714278683498722470

namespace A017564

/-- `record[A261671(n)^8]` -/
def P17714278683498722470.Spec : Prop :=
  ∀ n, P17714278683498722470.a n = A017564 n

end A017564

/-! ## A017564.P10810021777116114999

`A016946(2*n)²²`
-/

namespace A017564.P10810021777116114999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016946 (2 * n) ^ 2) ^ 2

end

end A017564.P10810021777116114999

namespace A017564

/-- `A016946(2*n)²²` -/
def P10810021777116114999.Spec : Prop :=
  ∀ n, P10810021777116114999.a n = A017564 n

theorem P10810021777116114999.correct : P10810021777116114999.Spec := by
  intro n
  simp only [A017564, Nat.add_sub_cancel, A017564.P10810021777116114999.a, A017564.P6469577045853772247.a, A016946, A016946.P16494615086453922637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017564

/-! ## A017564.P3903293977712896169

`A016945(2*n)²²²`
-/

namespace A017564.P3903293977712896169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016945 (2 * n) ^ 2) ^ 2) ^ 2

end

end A017564.P3903293977712896169

namespace A017564

/-- `A016945(2*n)²²²` -/
def P3903293977712896169.Spec : Prop :=
  ∀ n, P3903293977712896169.a n = A017564 n

theorem P3903293977712896169.correct : P3903293977712896169.Spec := by
  intro n
  simp only [A017564, Nat.add_sub_cancel, A017564.P3903293977712896169.a, A017564.P6469577045853772247.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017564

/-!
# A017565: a(n) = (12*n + 3)^9.

The programs for A017565, the canonical program `A017565.P1231787160327804675` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017565 has offset 0).

The definition of A017565 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+3)^9` (program `A017565.P1231787160327804675`, by `A017565.P1231787160327804675.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017565.P1231787160327804675

`(12*n+3)^9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017565

/-- `(12*n+3)^9` -/
def P1231787160327804675.Spec : Prop :=
  ∀ n, (P1231787160327804675.a n : ℤ) = A017565 n

theorem P1231787160327804675.correct : P1231787160327804675.Spec := by
  intro n
  simp only [A017565]

end A017565

/-! ## A017565.P17994696288260337949

`A017559(n)*A017562(n)`
-/

namespace A017565.P17994696288260337949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017559 n * A017562 n

end

end A017565.P17994696288260337949

namespace A017565

/-- `A017559(n)*A017562(n)` -/
def P17994696288260337949.Spec : Prop :=
  ∀ n, P17994696288260337949.a n = A017565 n

theorem P17994696288260337949.correct : P17994696288260337949.Spec := by
  intro n
  simp only [A017565, Nat.add_sub_cancel, A017565.P17994696288260337949.a, A017565.P1231787160327804675.a, A017559, A017559.P17048607132753490720.a, A017562, A017562.P14875296255181080402.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017565

/-! ## A017565.P17770741903225937130

`A017560(n)*A017561(n)`
-/

namespace A017565.P17770741903225937130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017560 n * A017561 n

end

end A017565.P17770741903225937130

namespace A017565

/-- `A017560(n)*A017561(n)` -/
def P17770741903225937130.Spec : Prop :=
  ∀ n, P17770741903225937130.a n = A017565 n

theorem P17770741903225937130.correct : P17770741903225937130.Spec := by
  intro n
  simp only [A017565, Nat.add_sub_cancel, A017565.P17770741903225937130.a, A017565.P1231787160327804675.a, A017560, A017560.P5013498380899585749.a, A017561, A017561.P18243931640452041460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017565

/-! ## A017565.P4138514470064588892

`A016953(2*n)`
-/

namespace A017565.P4138514470064588892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016953 (2 * n)

end

end A017565.P4138514470064588892

namespace A017565

/-- `A016953(2*n)` -/
def P4138514470064588892.Spec : Prop :=
  ∀ n, P4138514470064588892.a n = A017565 n

theorem P4138514470064588892.correct : P4138514470064588892.Spec := by
  intro n
  simp only [A017565, Nat.add_sub_cancel, A017565.P4138514470064588892.a, A017565.P1231787160327804675.a, A016953, A016953.P13755673835910557378.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017565

/-! ## A017565.P15849284378549806519

`A016945(2*n)*A016952(2*n)`
-/

namespace A017565.P15849284378549806519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (2 * n) * A016952 (2 * n)

end

end A017565.P15849284378549806519

namespace A017565

/-- `A016945(2*n)*A016952(2*n)` -/
def P15849284378549806519.Spec : Prop :=
  ∀ n, P15849284378549806519.a n = A017565 n

theorem P15849284378549806519.correct : P15849284378549806519.Spec := by
  intro n
  simp only [A017565, Nat.add_sub_cancel, A017565.P15849284378549806519.a, A017565.P1231787160327804675.a, A016945, A016945.P12463160785118576711.a, A016952, A016952.P9247051116776005436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017565

/-! ## A017565.P12796817741898703479

`A016946(2*n)*A016951(2*n)`
-/

namespace A017565.P12796817741898703479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 (2 * n) * A016951 (2 * n)

end

end A017565.P12796817741898703479

namespace A017565

/-- `A016946(2*n)*A016951(2*n)` -/
def P12796817741898703479.Spec : Prop :=
  ∀ n, P12796817741898703479.a n = A017565 n

theorem P12796817741898703479.correct : P12796817741898703479.Spec := by
  intro n
  simp only [A017565, Nat.add_sub_cancel, A017565.P12796817741898703479.a, A017565.P1231787160327804675.a, A016946, A016946.P16494615086453922637.a, A016951, A016951.P324115468251133091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017565

/-! ## A017565.P17085486892957561335

`A016947(2*n)*A016950(2*n)`
-/

namespace A017565.P17085486892957561335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 (2 * n) * A016950 (2 * n)

end

end A017565.P17085486892957561335

namespace A017565

/-- `A016947(2*n)*A016950(2*n)` -/
def P17085486892957561335.Spec : Prop :=
  ∀ n, P17085486892957561335.a n = A017565 n

theorem P17085486892957561335.correct : P17085486892957561335.Spec := by
  intro n
  simp only [A017565, Nat.add_sub_cancel, A017565.P17085486892957561335.a, A017565.P1231787160327804675.a, A016947, A016947.P4365293070950782915.a, A016950, A016950.P12981427071470377345.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017565

/-! ## A017565.P11591684406819496278

`A016845(3*n)`
-/

namespace A017565.P11591684406819496278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016845 (3 * n)

end

end A017565.P11591684406819496278

namespace A017565

/-- `A016845(3*n)` -/
def P11591684406819496278.Spec : Prop :=
  ∀ n, P11591684406819496278.a n = A017565 n

theorem P11591684406819496278.correct : P11591684406819496278.Spec := by
  intro n
  simp only [A017565, Nat.add_sub_cancel, A017565.P11591684406819496278.a, A017565.P1231787160327804675.a, A016845, A016845.P1544239424656120646.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017565

/-! ## A017565.P14807483373113998417

`A016761(A016945(n)-2)`
-/

namespace A017565.P14807483373113998417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016761 (A016945 n - 2).toNat

end

end A017565.P14807483373113998417

namespace A017565

/-- `A016761(A016945(n)-2)` -/
def P14807483373113998417.Spec : Prop :=
  ∀ n, P14807483373113998417.a n = A017565 n

end A017565

/-! ## A017565.P12809431143367527470

`A001017(A017557(n))`
-/

namespace A017565.P12809431143367527470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017557 n).toNat

end

end A017565.P12809431143367527470

namespace A017565

/-- `A001017(A017557(n))` -/
def P12809431143367527470.Spec : Prop :=
  ∀ n, P12809431143367527470.a n = A017565 n

end A017565

/-!
# A017566: a(n) = (12*n + 3)^10.

The programs for A017566, the canonical program `A017566.P2276773873941802290` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017566 has offset 0).

The definition of A017566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017566.P2276773873941802290

`(12*n+3)^10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017566

/-- `(12*n+3)^10` -/
def P2276773873941802290.Spec : Prop :=
  ∀ n, (P2276773873941802290.a n : ℤ) = A017566 n

theorem P2276773873941802290.correct : P2276773873941802290.Spec := by
  intro n
  simp only [A017566]

end A017566

/-! ## A017566.P18214811086751689543

`A017561(n)²`
-/

namespace A017566.P18214811086751689543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017561 n ^ 2

end

end A017566.P18214811086751689543

namespace A017566

/-- `A017561(n)²` -/
def P18214811086751689543.Spec : Prop :=
  ∀ n, P18214811086751689543.a n = A017566 n

theorem P18214811086751689543.correct : P18214811086751689543.Spec := by
  intro n
  simp only [A017566, Nat.add_sub_cancel, A017566.P18214811086751689543.a, A017566.P2276773873941802290.a, A017561, A017561.P18243931640452041460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017566

/-! ## A017566.P1645648543645476884

`A016949(A005843(n))²`
-/

namespace A017566.P1645648543645476884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016949 (A005843 n).toNat ^ 2

end

end A017566.P1645648543645476884

namespace A017566

/-- `A016949(A005843(n))²` -/
def P1645648543645476884.Spec : Prop :=
  ∀ n, P1645648543645476884.a n = A017566 n

end A017566

/-! ## A017566.P6185395916670541054

`A008454(A016945(2*n))`
-/

namespace A017566.P6185395916670541054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016945 (2 * n)).toNat

end

end A017566.P6185395916670541054

namespace A017566

/-- `A008454(A016945(2*n))` -/
def P6185395916670541054.Spec : Prop :=
  ∀ n, P6185395916670541054.a n = A017566 n

end A017566

/-! ## A017566.P10716530782686434732

`A000584(A016945(A004442(2*n+1)))²`
-/

namespace A017566.P10716530782686434732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A016945 (A004442 (2 * n + 1)).toNat).toNat ^ 2

end

end A017566.P10716530782686434732

namespace A017566

/-- `A000584(A016945(A004442(2*n+1)))²` -/
def P10716530782686434732.Spec : Prop :=
  ∀ n, P10716530782686434732.a n = A017566 n

end A017566

/-!
# A017567: a(n) = (12*n + 3)^11.

The programs for A017567, the canonical program `A017567.P14812745180799152199` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017567 has offset 0).

The definition of A017567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017567.P14812745180799152199

`Δ[3*C(2*n, 2)]^11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017567

/-- `Δ[3*C(2*n, 2)]^11` -/
def P14812745180799152199.Spec : Prop :=
  ∀ n, P14812745180799152199.a n = A017567 n

theorem P14812745180799152199.correct : P14812745180799152199.Spec := by
  intro n
  simp only [A017567]

end A017567

/-! ## A017567.P6240417187274095095

`Δ[A094159(n)]^11`
-/

namespace A017567.P6240417187274095095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 11

end

end A017567.P6240417187274095095

namespace A017567

/-- `Δ[A094159(n)]^11` -/
def P6240417187274095095.Spec : Prop :=
  ∀ n, P6240417187274095095.a n = A017567 n

theorem P6240417187274095095.correct : P6240417187274095095.Spec := by
  intro n
  simp only [A017567, Nat.add_sub_cancel, A017567.P6240417187274095095.f1, A017567.P6240417187274095095.a, A017567.P14812745180799152199.f1, A017567.P14812745180799152199.a, A094159, A094159.P13229722457034603277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017567

/-! ## A017567.P17797451531089975500

`A016945(2*n)*A016954(2*n)`
-/

namespace A017567.P17797451531089975500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (2 * n) * A016954 (2 * n)

end

end A017567.P17797451531089975500

namespace A017567

/-- `A016945(2*n)*A016954(2*n)` -/
def P17797451531089975500.Spec : Prop :=
  ∀ n, P17797451531089975500.a n = A017567 n

theorem P17797451531089975500.correct : P17797451531089975500.Spec := by
  intro n
  simp only [A017567, Nat.add_sub_cancel, A017567.P17797451531089975500.a, A017567.P14812745180799152199.f1, A017567.P14812745180799152199.a, A016945, A016945.P12463160785118576711.a, A016954, A016954.P9572574025296649151.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017567

/-! ## A017567.P2184156838538994897

`sqrt(A017558(n)^11)`
-/

namespace A017567.P2184156838538994897
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017558 n ^ 11 : ℝ)

end

end A017567.P2184156838538994897

namespace A017567

/-- `sqrt(A017558(n)^11)` -/
def P2184156838538994897.Spec : Prop :=
  ∀ n, P2184156838538994897.a n = (A017567 n : ℝ)

end A017567

/-! ## A017567.P17299635670099474139

`A004274(A016945(n))^11`
-/

namespace A017567.P17299635670099474139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A016945 n).toNat ^ 11

end

end A017567.P17299635670099474139

namespace A017567

/-- `A004274(A016945(n))^11` -/
def P17299635670099474139.Spec : Prop :=
  ∀ n, P17299635670099474139.a n = A017567 n

end A017567

/-! ## A017567.P10256505895618385231

`A023443(A017569(n))^11`
-/

namespace A017567.P10256505895618385231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A017569 n).toNat ^ 11

end

end A017567.P10256505895618385231

namespace A017567

/-- `A023443(A017569(n))^11` -/
def P10256505895618385231.Spec : Prop :=
  ∀ n, P10256505895618385231.a n = A017567 n

end A017567

/-!
# A017568: a(n) = (12*n + 3)^12.

The programs for A017568, the canonical program `A017568.P2427107847406153520` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017568 has offset 0).

The definition of A017568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017568.P2427107847406153520

`Δ[3*C(2*n, 2)]^12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017568

/-- `Δ[3*C(2*n, 2)]^12` -/
def P2427107847406153520.Spec : Prop :=
  ∀ n, P2427107847406153520.a n = A017568 n

theorem P2427107847406153520.correct : P2427107847406153520.Spec := by
  intro n
  simp only [A017568]

end A017568

/-! ## A017568.P14502548494645572750

`A017562(n)²`
-/

namespace A017568.P14502548494645572750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017562 n ^ 2

end

end A017568.P14502548494645572750

namespace A017568

/-- `A017562(n)²` -/
def P14502548494645572750.Spec : Prop :=
  ∀ n, P14502548494645572750.a n = A017568 n

theorem P14502548494645572750.correct : P14502548494645572750.Spec := by
  intro n
  simp only [A017568, Nat.add_sub_cancel, A017568.P14502548494645572750.a, A017568.P2427107847406153520.f1, A017568.P2427107847406153520.a, A017562, A017562.P14875296255181080402.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017568

/-! ## A017568.P12363041518963198222

`A017559(n)^4`
-/

namespace A017568.P12363041518963198222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017559 n ^ 4

end

end A017568.P12363041518963198222

namespace A017568

/-- `A017559(n)^4` -/
def P12363041518963198222.Spec : Prop :=
  ∀ n, P12363041518963198222.a n = A017568 n

theorem P12363041518963198222.correct : P12363041518963198222.Spec := by
  intro n
  simp only [A017568, Nat.add_sub_cancel, A017568.P12363041518963198222.a, A017568.P2427107847406153520.f1, A017568.P2427107847406153520.a, A017559, A017559.P17048607132753490720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017568

/-! ## A017568.P15428051473872589402

`A017558(n)^6`
-/

namespace A017568.P15428051473872589402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017558 n ^ 6

end

end A017568.P15428051473872589402

namespace A017568

/-- `A017558(n)^6` -/
def P15428051473872589402.Spec : Prop :=
  ∀ n, P15428051473872589402.a n = A017568 n

theorem P15428051473872589402.correct : P15428051473872589402.Spec := by
  intro n
  simp only [A017568, Nat.add_sub_cancel, A017568.P15428051473872589402.a, A017568.P2427107847406153520.f1, A017568.P2427107847406153520.a, A017558, A017558.P11205723934719350193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017568

/-! ## A017568.P13808153076053219015

`A017557(n)^12`
-/

namespace A017568.P13808153076053219015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 n ^ 12

end

end A017568.P13808153076053219015

namespace A017568

/-- `A017557(n)^12` -/
def P13808153076053219015.Spec : Prop :=
  ∀ n, P13808153076053219015.a n = A017568 n

theorem P13808153076053219015.correct : P13808153076053219015.Spec := by
  intro n
  simp only [A017568, Nat.add_sub_cancel, A017568.P13808153076053219015.a, A017568.P2427107847406153520.f1, A017568.P2427107847406153520.a, A017557, A017557.P7719209615978230604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017568

/-! ## A017568.P946776790877264475

`A000578(A016945(2*n))²²`
-/

namespace A017568.P946776790877264475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016945 (2 * n)).toNat ^ 2) ^ 2

end

end A017568.P946776790877264475

namespace A017568

/-- `A000578(A016945(2*n))²²` -/
def P946776790877264475.Spec : Prop :=
  ∀ n, P946776790877264475.a n = A017568 n

end A017568

/-!
# A017569: a(n) = 12*n + 4.

The programs for A017569, the canonical program `A017569.P14340039372117997380` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017569 has offset 0).

The definition of A017569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n+4` (program `A017569.P14340039372117997380`, by `A017569.P14340039372117997380.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017569.P14340039372117997380

`12*n+4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017569

/-- `12*n+4` -/
def P14340039372117997380.Spec : Prop :=
  ∀ n, (P14340039372117997380.a n : ℤ) = A017569 n

theorem P14340039372117997380.correct : P14340039372117997380.Spec := by
  intro n
  simp only [A017569]

end A017569

/-!
# A017570: a(n) = (12*n + 4)^2.

The programs for A017570, the canonical program `A017570.P8593875747358616596` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017570 has offset 0).

The definition of A017570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+4)²` (program `A017570.P8593875747358616596`, by `A017570.P8593875747358616596.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017570.P8593875747358616596

`(12*n+4)²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017570

/-- `(12*n+4)²` -/
def P8593875747358616596.Spec : Prop :=
  ∀ n, (P8593875747358616596.a n : ℤ) = A017570 n

theorem P8593875747358616596.correct : P8593875747358616596.Spec := by
  intro n
  simp only [A017570]

end A017570

/-! ## A017570.P925951161465980534

`ogf((16+208x+64x^2)/(1-3x+3x^2-x^3))`
-/

namespace A017570.P925951161465980534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, 208, 64] [1, -3, 3, -1] n

end

end A017570.P925951161465980534

namespace A017570

/-- `ogf((16+208x+64x^2)/(1-3x+3x^2-x^3))` -/
def P925951161465980534.Spec : Prop :=
  ∀ n, P925951161465980534.a n = A017570 n

end A017570

/-! ## A017570.P16386826444588883596

`a(n-1)+288*n-48` with `a(0)=16`
-/

namespace A017570.P16386826444588883596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  a (n - 1) + (288 * n : ℤ) - 48

end

end A017570.P16386826444588883596

namespace A017570

/-- `a(n-1)+288*n-48` -/
def P16386826444588883596.Spec : Prop :=
  ∀ n, P16386826444588883596.a n = A017570 n

theorem P16386826444588883596.correct : P16386826444588883596.Spec := by
  intro n
  induction n with
  | zero => simp [A017570, A017570.P16386826444588883596.a, A017570.P8593875747358616596.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A017570, Nat.add_sub_cancel, A017570.P16386826444588883596.a, A017570.P8593875747358616596.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A017570

/-! ## A017570.P2833377084277422281

`16*A016778(n)`
-/

namespace A017570.P2833377084277422281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A016778 n

end

end A017570.P2833377084277422281

namespace A017570

/-- `16*A016778(n)` -/
def P2833377084277422281.Spec : Prop :=
  ∀ n, P2833377084277422281.a n = A017570 n

theorem P2833377084277422281.correct : P2833377084277422281.Spec := by
  intro n
  simp only [A017570, Nat.add_sub_cancel, A017570.P2833377084277422281.a, A017570.P8593875747358616596.a, A016778, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017570

/-! ## A017570.P11222736393561524001

`xor(12*n, -4)^2`
-/

namespace A017570.P11222736393561524001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (12 * n : ℤ) (-4) ^ 2

end

end A017570.P11222736393561524001

namespace A017570

/-- `xor(12*n, -4)^2` -/
def P11222736393561524001.Spec : Prop :=
  ∀ n, P11222736393561524001.a n = A017570 n

end A017570

/-! ## A017570.P1471918430395305561

`(or(1, 12*n)+3)^2`
-/

namespace A017570.P1471918430395305561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (12 * n) + 3) ^ 2

end

end A017570.P1471918430395305561

namespace A017570

/-- `(or(1, 12*n)+3)^2` -/
def P1471918430395305561.Spec : Prop :=
  ∀ n, (P1471918430395305561.a n : ℤ) = A017570 n

end A017570

/-! ## A017570.P9033616975401222441

`16*xor(3*n, -1)²`
-/

namespace A017570.P9033616975401222441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * Int.xor (3 * n : ℤ) (-1) ^ 2

end

end A017570.P9033616975401222441

namespace A017570

/-- `16*xor(3*n, -1)²` -/
def P9033616975401222441.Spec : Prop :=
  ∀ n, P9033616975401222441.a n = A017570 n

end A017570

/-! ## A017570.P15371976840078678198

`record[(2-6*xor(1, n))²]`
-/

namespace A017570.P15371976840078678198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (6 * Nat.xor 1 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017570.P15371976840078678198

namespace A017570

/-- `record[(2-6*xor(1, n))²]` -/
def P15371976840078678198.Spec : Prop :=
  ∀ n, P15371976840078678198.a n = A017570 n

end A017570

/-! ## A017570.P13060933639917141014

`(1-xor(1, 12*n+4))^2`
-/

namespace A017570.P13060933639917141014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.xor 1 (12 * n + 4) : ℤ)) ^ 2

end

end A017570.P13060933639917141014

namespace A017570

/-- `(1-xor(1, 12*n+4))^2` -/
def P13060933639917141014.Spec : Prop :=
  ∀ n, P13060933639917141014.a n = A017570 n

end A017570

/-! ## A017570.P256357900695487052

`lcm(2, Δ[Δ[2*n*(n-1)²]]²)`
-/

namespace A017570.P256357900695487052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((f1 (n + 1) - f1 n) ^ 2)

end

end A017570.P256357900695487052

namespace A017570

/-- `lcm(2, Δ[Δ[2*n*(n-1)²]]²)` -/
def P256357900695487052.Spec : Prop :=
  ∀ n, (P256357900695487052.a n : ℤ) = A017570 n

end A017570

/-! ## A017570.P1764415197675737206

`sqrt(A017572(n))`
-/

namespace A017570.P1764415197675737206
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017572 n : ℝ)

end

end A017570.P1764415197675737206

namespace A017570

/-- `sqrt(A017572(n))` -/
def P1764415197675737206.Spec : Prop :=
  ∀ n, P1764415197675737206.a n = (A017570 n : ℝ)

end A017570

/-! ## A017570.P14075322952057232980

`4*A016934(n)`
-/

namespace A017570.P14075322952057232980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016934 n

end

end A017570.P14075322952057232980

namespace A017570

/-- `4*A016934(n)` -/
def P14075322952057232980.Spec : Prop :=
  ∀ n, P14075322952057232980.a n = A017570 n

theorem P14075322952057232980.correct : P14075322952057232980.Spec := by
  intro n
  simp only [A017570, Nat.add_sub_cancel, A017570.P14075322952057232980.a, A017570.P8593875747358616596.a, A016934, A016934.P9224462813878172161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017570

/-! ## A017570.P7829202531415355996

`sqrt(sqrt(A017576(n)))`
-/

namespace A017570.P7829202531415355996
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017576 n : ℝ))

end

end A017570.P7829202531415355996

namespace A017570

/-- `sqrt(sqrt(A017576(n)))` -/
def P7829202531415355996.Spec : Prop :=
  ∀ n, P7829202531415355996.a n = (A017570 n : ℝ)

end A017570

/-! ## A017570.P15856049794420840412

`4*A016933(n)²`
-/

namespace A017570.P15856049794420840412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016933 n ^ 2

end

end A017570.P15856049794420840412

namespace A017570

/-- `4*A016933(n)²` -/
def P15856049794420840412.Spec : Prop :=
  ∀ n, P15856049794420840412.a n = A017570 n

theorem P15856049794420840412.correct : P15856049794420840412.Spec := by
  intro n
  simp only [A017570, Nat.add_sub_cancel, A017570.P15856049794420840412.a, A017570.P8593875747358616596.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017570

/-! ## A017570.P6154610994444127605

`4*sqrt(A016936(n))`
-/

namespace A017570.P6154610994444127605
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A016936 n : ℝ)

end

end A017570.P6154610994444127605

namespace A017570

/-- `4*sqrt(A016936(n))` -/
def P6154610994444127605.Spec : Prop :=
  ∀ n, P6154610994444127605.a n = (A017570 n : ℝ)

end A017570

/-! ## A017570.P6150286133497909107

`A017574(n)^(1/3)`
-/

namespace A017570.P6150286133497909107
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017574 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017570.P6150286133497909107

namespace A017570

/-- `A017574(n)^(1/3)` -/
def P6150286133497909107.Spec : Prop :=
  ∀ n, P6150286133497909107.a n = (A017570 n : ℝ)

end A017570

/-! ## A017570.P9978087157010485739

`A017571(n)^(2/3)`
-/

namespace A017570.P9978087157010485739
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017571 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017570.P9978087157010485739

namespace A017570

/-- `A017571(n)^(2/3)` -/
def P9978087157010485739.Spec : Prop :=
  ∀ n, P9978087157010485739.a n = (A017570 n : ℝ)

end A017570

/-! ## A017570.P10063925210423462580

`4*(1-A016945(n))²`
-/

namespace A017570.P10063925210423462580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (1 - A016945 n) ^ 2

end

end A017570.P10063925210423462580

namespace A017570

/-- `4*(1-A016945(n))²` -/
def P10063925210423462580.Spec : Prop :=
  ∀ n, P10063925210423462580.a n = A017570 n

theorem P10063925210423462580.correct : P10063925210423462580.Spec := by
  intro n
  simp only [A017570, Nat.add_sub_cancel, A017570.P10063925210423462580.a, A017570.P8593875747358616596.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017570

/-! ## A017570.P3849078802797256028

`A135659(n)+A017558(n)`
-/

namespace A017570.P3849078802797256028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n + A017558 n

end

end A017570.P3849078802797256028

namespace A017570

/-- `A135659(n)+A017558(n)` -/
def P3849078802797256028.Spec : Prop :=
  ∀ n, P3849078802797256028.a n = A017570 n

theorem P3849078802797256028.correct : P3849078802797256028.Spec := by
  intro n
  simp only [A017570, Nat.add_sub_cancel, A017570.P3849078802797256028.a, A017570.P8593875747358616596.a, A017558, A017558.P11205723934719350193.a, A135659, A135659.P7688879671155450693.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017570

/-! ## A017570.P3793506385847961914

`A017569(n)*A017569(n)`
-/

namespace A017570.P3793506385847961914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n * A017569 n

end

end A017570.P3793506385847961914

namespace A017570

/-- `A017569(n)*A017569(n)` -/
def P3793506385847961914.Spec : Prop :=
  ∀ n, P3793506385847961914.a n = A017570 n

theorem P3793506385847961914.correct : P3793506385847961914.Spec := by
  intro n
  simp only [A017570, Nat.add_sub_cancel, A017570.P3793506385847961914.a, A017570.P8593875747358616596.a, A017569, A017569.P14340039372117997380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017570

/-!
# A017571: a(n) = (12n+4)^3.

The programs for A017571, the canonical program `A017571.P17779126235710720224` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017571 has offset 0).

The definition of A017571 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+4)^3` (program `A017571.P17779126235710720224`, by `A017571.P17779126235710720224.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017571.P17779126235710720224

`(12*n+4)^3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017571

/-- `(12*n+4)^3` -/
def P17779126235710720224.Spec : Prop :=
  ∀ n, (P17779126235710720224.a n : ℤ) = A017571 n

theorem P17779126235710720224.correct : P17779126235710720224.Spec := by
  intro n
  simp only [A017571]

end A017571

/-! ## A017571.P8057962934290131719

`64*A016779(n)`
-/

namespace A017571.P8057962934290131719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A016779 n

end

end A017571.P8057962934290131719

namespace A017571

/-- `64*A016779(n)` -/
def P8057962934290131719.Spec : Prop :=
  ∀ n, P8057962934290131719.a n = A017571 n

theorem P8057962934290131719.correct : P8057962934290131719.Spec := by
  intro n
  simp only [A017571, Nat.add_sub_cancel, A017571.P8057962934290131719.a, A017571.P17779126235710720224.a, A016779, A016779.P12183208488872344435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017571

/-! ## A017571.P1648468057186888637

`A000578(A017569(n))`
-/

namespace A017571.P1648468057186888637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A017569 n).toNat

end

end A017571.P1648468057186888637

namespace A017571

/-- `A000578(A017569(n))` -/
def P1648468057186888637.Spec : Prop :=
  ∀ n, P1648468057186888637.a n = A017571 n

end A017571

/-! ## A017571.P14935099497761528456

`filter[(4*n)^3, dr(#)]`
-/

namespace A017571.P14935099497761528456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.digitalRoot (f1 j : ℤ) = 1) n)

end

end A017571.P14935099497761528456

namespace A017571

/-- `filter[(4*n)^3, dr(#)]` -/
def P14935099497761528456.Spec : Prop :=
  ∀ n, (P14935099497761528456.a n : ℤ) = A017571 n

end A017571

/-! ## A017571.P13570968836051023401

`abs(xor(12*n, -4)^3)`
-/

namespace A017571.P13570968836051023401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (12 * n : ℤ) (-4) ^ 3|

end

end A017571.P13570968836051023401

namespace A017571

/-- `abs(xor(12*n, -4)^3)` -/
def P13570968836051023401.Spec : Prop :=
  ∀ n, P13570968836051023401.a n = A017571 n

end A017571

/-! ## A017571.P13826916746507274475

`-xor(12*n, -4)^3`
-/

namespace A017571.P13826916746507274475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (12 * n : ℤ) (-4) ^ 3)

end

end A017571.P13826916746507274475

namespace A017571

/-- `-xor(12*n, -4)^3` -/
def P13826916746507274475.Spec : Prop :=
  ∀ n, P13826916746507274475.a n = A017571 n

end A017571

/-! ## A017571.P8733355758763259595

`record[xor(2, 6*xor(1, n))^3]`
-/

namespace A017571.P8733355758763259595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * Nat.xor 1 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017571.P8733355758763259595

namespace A017571

/-- `record[xor(2, 6*xor(1, n))^3]` -/
def P8733355758763259595.Spec : Prop :=
  ∀ n, (P8733355758763259595.a n : ℤ) = A017571 n

end A017571

/-! ## A017571.P4792659127646667945

`record[((n+2)²-n²)^gcd(3, n)]`
-/

namespace A017571.P4792659127646667945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 : ℤ) - (n ^ 2 : ℤ)) ^ Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017571.P4792659127646667945

namespace A017571

/-- `record[((n+2)²-n²)^gcd(3, n)]` -/
def P4792659127646667945.Spec : Prop :=
  ∀ n, P4792659127646667945.a n = A017571 n

end A017571

/-! ## A017571.P15654879184359073755

`(or(1, 12*n)+3)*(or(1, 12*n)+3)²`
-/

namespace A017571.P15654879184359073755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (12 * n) + 3) * (Nat.lor 1 (12 * n) + 3) ^ 2

end

end A017571.P15654879184359073755

namespace A017571

/-- `(or(1, 12*n)+3)*(or(1, 12*n)+3)²` -/
def P15654879184359073755.Spec : Prop :=
  ∀ n, (P15654879184359073755.a n : ℤ) = A017571 n

end A017571

/-! ## A017571.P18138534091827100892

`sqrt(A017574(n))`
-/

namespace A017571.P18138534091827100892
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017574 n : ℝ)

end

end A017571.P18138534091827100892

namespace A017571

/-- `sqrt(A017574(n))` -/
def P18138534091827100892.Spec : Prop :=
  ∀ n, P18138534091827100892.a n = (A017571 n : ℝ)

end A017571

/-! ## A017571.P538904190378775067

`8*A016935(n)`
-/

namespace A017571.P538904190378775067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016935 n

end

end A017571.P538904190378775067

namespace A017571

/-- `8*A016935(n)` -/
def P538904190378775067.Spec : Prop :=
  ∀ n, P538904190378775067.a n = A017571 n

theorem P538904190378775067.correct : P538904190378775067.Spec := by
  intro n
  simp only [A017571, Nat.add_sub_cancel, A017571.P538904190378775067.a, A017571.P17779126235710720224.a, A016935, A016935.P257911674419970010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017571

/-! ## A017571.P2907118025943231609

`sqrt(A017570(n)^3)`
-/

namespace A017571.P2907118025943231609
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017570 n ^ 3 : ℝ)

end

end A017571.P2907118025943231609

namespace A017571

/-- `sqrt(A017570(n)^3)` -/
def P2907118025943231609.Spec : Prop :=
  ∀ n, P2907118025943231609.a n = (A017571 n : ℝ)

end A017571

/-! ## A017571.P4748889244440075540

`A017569(n)*A017570(n)`
-/

namespace A017571.P4748889244440075540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n * A017570 n

end

end A017571.P4748889244440075540

namespace A017571

/-- `A017569(n)*A017570(n)` -/
def P4748889244440075540.Spec : Prop :=
  ∀ n, P4748889244440075540.a n = A017571 n

theorem P4748889244440075540.correct : P4748889244440075540.Spec := by
  intro n
  simp only [A017571, Nat.add_sub_cancel, A017571.P4748889244440075540.a, A017571.P17779126235710720224.a, A017569, A017569.P14340039372117997380.a, A017570, A017570.P8593875747358616596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017571

/-! ## A017571.P6147718273300458699

`A016938(n)/A016779(n)`
-/

namespace A017571.P6147718273300458699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016938 n : ℚ) / (A016779 n : ℚ)

end

end A017571.P6147718273300458699

namespace A017571

/-- `A016938(n)/A016779(n)` -/
def P6147718273300458699.Spec : Prop :=
  ∀ n, P6147718273300458699.a n = (A017571 n : ℚ)

theorem P6147718273300458699.correct : P6147718273300458699.Spec := by
  intro n
  simp only [A017571, Nat.add_sub_cancel, A017571.P6147718273300458699.a, A017571.P17779126235710720224.a, A016779, A016779.P12183208488872344435.a, A016938, A016938.P15117638160680881893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017571

/-! ## A017571.P8655579418251597189

`A017572(n)/A017569(n)`
-/

namespace A017571.P8655579418251597189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017572 n : ℚ) / (A017569 n : ℚ)

end

end A017571.P8655579418251597189

namespace A017571

/-- `A017572(n)/A017569(n)` -/
def P8655579418251597189.Spec : Prop :=
  ∀ n, P8655579418251597189.a n = (A017571 n : ℚ)

end A017571

/-! ## A017571.P3335858903319734927

`A017573(n)/A017570(n)`
-/

namespace A017571.P3335858903319734927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017573 n : ℚ) / (A017570 n : ℚ)

end

end A017571.P3335858903319734927

namespace A017571

/-- `A017573(n)/A017570(n)` -/
def P3335858903319734927.Spec : Prop :=
  ∀ n, P3335858903319734927.a n = (A017571 n : ℚ)

end A017571

/-! ## A017571.P13526181045784229943

`A017573(n)/A017569(n)²`
-/

namespace A017571.P13526181045784229943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017573 n : ℚ) / (A017569 n ^ 2 : ℚ)

end

end A017571.P13526181045784229943

namespace A017571

/-- `A017573(n)/A017569(n)²` -/
def P13526181045784229943.Spec : Prop :=
  ∀ n, P13526181045784229943.a n = (A017571 n : ℚ)

end A017571

/-! ## A017571.P12738858828453671089

`2/A016778(n)*A016937(n)`
-/

namespace A017571.P12738858828453671089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A016778 n : ℚ) * (A016937 n : ℚ)

end

end A017571.P12738858828453671089

namespace A017571

/-- `2/A016778(n)*A016937(n)` -/
def P12738858828453671089.Spec : Prop :=
  ∀ n, P12738858828453671089.a n = (A017571 n : ℚ)

theorem P12738858828453671089.correct : P12738858828453671089.Spec := by
  intro n
  simp only [A017571, Nat.add_sub_cancel, A017571.P12738858828453671089.a, A017571.P17779126235710720224.a, A016778, A016778.P16000663877604072744.a, A016937, A016937.P4646017052301238627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017571

/-! ## A017571.P3518499119957017064

`A016939(n)/(2*A016780(n))`
-/

namespace A017571.P3518499119957017064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016939 n : ℚ) / (2 * A016780 n : ℚ)

end

end A017571.P3518499119957017064

namespace A017571

/-- `A016939(n)/(2*A016780(n))` -/
def P3518499119957017064.Spec : Prop :=
  ∀ n, P3518499119957017064.a n = (A017571 n : ℚ)

theorem P3518499119957017064.correct : P3518499119957017064.Spec := by
  intro n
  simp only [A017571, Nat.add_sub_cancel, A017571.P3518499119957017064.a, A017571.P17779126235710720224.a, A016780, A016780.P5276202049473501293.a, A016939, A016939.P10686673164026481289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017571

/-! ## A017571.P6056236963026380717

`A017575(n)/A017569(n)²²`
-/

namespace A017571.P6056236963026380717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017575 n : ℚ) / ((A017569 n ^ 2) ^ 2 : ℚ)

end

end A017571.P6056236963026380717

namespace A017571

/-- `A017575(n)/A017569(n)²²` -/
def P6056236963026380717.Spec : Prop :=
  ∀ n, P6056236963026380717.a n = (A017571 n : ℚ)

end A017571

/-!
# A017572: a(n) = (12*n + 4)^4.

The programs for A017572, the canonical program `A017572.P10075396123048036539` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017572 has offset 0).

The definition of A017572 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+4)^4` (program `A017572.P10075396123048036539`, by `A017572.P10075396123048036539.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017572.P10075396123048036539

`(12*n+4)^4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017572

/-- `(12*n+4)^4` -/
def P10075396123048036539.Spec : Prop :=
  ∀ n, (P10075396123048036539.a n : ℤ) = A017572 n

theorem P10075396123048036539.correct : P10075396123048036539.Spec := by
  intro n
  simp only [A017572]

end A017572

/-! ## A017572.P7627414184564355964

`xor(12*n, -4)²²`
-/

namespace A017572.P7627414184564355964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (12 * n : ℤ) (-4) ^ 2) ^ 2

end

end A017572.P7627414184564355964

namespace A017572

/-- `xor(12*n, -4)²²` -/
def P7627414184564355964.Spec : Prop :=
  ∀ n, P7627414184564355964.a n = A017572 n

end A017572

/-! ## A017572.P10225316390155100786

`lcm(2, (12*n+4)²²)`
-/

namespace A017572.P10225316390155100786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (((12 * n + 4) ^ 2) ^ 2)

end

end A017572.P10225316390155100786

namespace A017572

/-- `lcm(2, (12*n+4)²²)` -/
def P10225316390155100786.Spec : Prop :=
  ∀ n, (P10225316390155100786.a n : ℤ) = A017572 n

end A017572

/-! ## A017572.P11279221086388081221

`(or(1, 12*n)+3)²²`
-/

namespace A017572.P11279221086388081221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (12 * n) + 3) ^ 2) ^ 2

end

end A017572.P11279221086388081221

namespace A017572

/-- `(or(1, 12*n)+3)²²` -/
def P11279221086388081221.Spec : Prop :=
  ∀ n, (P11279221086388081221.a n : ℤ) = A017572 n

end A017572

/-! ## A017572.P8959414441340952197

`(xor(2, 12*n)+2)²²`
-/

namespace A017572.P8959414441340952197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 2 (12 * n) + 2) ^ 2) ^ 2

end

end A017572.P8959414441340952197

namespace A017572

/-- `(xor(2, 12*n)+2)²²` -/
def P8959414441340952197.Spec : Prop :=
  ∀ n, (P8959414441340952197.a n : ℤ) = A017572 n

end A017572

/-! ## A017572.P5293263823913301532

`A017570(n)²`
-/

namespace A017572.P5293263823913301532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017570 n ^ 2

end

end A017572.P5293263823913301532

namespace A017572

/-- `A017570(n)²` -/
def P5293263823913301532.Spec : Prop :=
  ∀ n, P5293263823913301532.a n = A017572 n

theorem P5293263823913301532.correct : P5293263823913301532.Spec := by
  intro n
  simp only [A017572, Nat.add_sub_cancel, A017572.P5293263823913301532.a, A017572.P10075396123048036539.a, A017570, A017570.P8593875747358616596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017572

/-! ## A017572.P11466056551242830738

`sqrt(A017576(n))`
-/

namespace A017572.P11466056551242830738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017576 n : ℝ)

end

end A017572.P11466056551242830738

namespace A017572

/-- `sqrt(A017576(n))` -/
def P11466056551242830738.Spec : Prop :=
  ∀ n, P11466056551242830738.a n = (A017572 n : ℝ)

end A017572

/-! ## A017572.P13900337064301640904

`16*A016936(n)`
-/

namespace A017572.P13900337064301640904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A016936 n

end

end A017572.P13900337064301640904

namespace A017572

/-- `16*A016936(n)` -/
def P13900337064301640904.Spec : Prop :=
  ∀ n, P13900337064301640904.a n = A017572 n

theorem P13900337064301640904.correct : P13900337064301640904.Spec := by
  intro n
  simp only [A017572, Nat.add_sub_cancel, A017572.P13900337064301640904.a, A017572.P10075396123048036539.a, A016936, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017572

/-! ## A017572.P11440527696878555096

`A017569(n)²²`
-/

namespace A017572.P11440527696878555096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017569 n ^ 2) ^ 2

end

end A017572.P11440527696878555096

namespace A017572

/-- `A017569(n)²²` -/
def P11440527696878555096.Spec : Prop :=
  ∀ n, P11440527696878555096.a n = A017572 n

theorem P11440527696878555096.correct : P11440527696878555096.Spec := by
  intro n
  simp only [A017572, Nat.add_sub_cancel, A017572.P11440527696878555096.a, A017572.P10075396123048036539.a, A017569, A017569.P14340039372117997380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017572

/-! ## A017572.P5844304430877841992

`(4*A016934(n))²`
-/

namespace A017572.P5844304430877841992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A016934 n) ^ 2

end

end A017572.P5844304430877841992

namespace A017572

/-- `(4*A016934(n))²` -/
def P5844304430877841992.Spec : Prop :=
  ∀ n, P5844304430877841992.a n = A017572 n

theorem P5844304430877841992.correct : P5844304430877841992.Spec := by
  intro n
  simp only [A017572, Nat.add_sub_cancel, A017572.P5844304430877841992.a, A017572.P10075396123048036539.a, A016934, A016934.P9224462813878172161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017572

/-! ## A017572.P7273915430859028898

`(A017557(n)+1)²²`
-/

namespace A017572.P7273915430859028898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017557 n + 1) ^ 2) ^ 2

end

end A017572.P7273915430859028898

namespace A017572

/-- `(A017557(n)+1)²²` -/
def P7273915430859028898.Spec : Prop :=
  ∀ n, P7273915430859028898.a n = A017572 n

theorem P7273915430859028898.correct : P7273915430859028898.Spec := by
  intro n
  simp only [A017572, Nat.add_sub_cancel, A017572.P7273915430859028898.a, A017572.P10075396123048036539.a, A017557, A017557.P7719209615978230604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017572

/-! ## A017572.P5815405197725478128

`(A017545(n)+2)²²`
-/

namespace A017572.P5815405197725478128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017545 n + 2) ^ 2) ^ 2

end

end A017572.P5815405197725478128

namespace A017572

/-- `(A017545(n)+2)²²` -/
def P5815405197725478128.Spec : Prop :=
  ∀ n, P5815405197725478128.a n = A017572 n

theorem P5815405197725478128.correct : P5815405197725478128.Spec := by
  intro n
  simp only [A017572, Nat.add_sub_cancel, A017572.P5815405197725478128.a, A017572.P10075396123048036539.a, A017545, A017545.P14965093399951293214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017572

/-! ## A017572.P13564113092390721235

`(1-A017581(n))²²`
-/

namespace A017572.P13564113092390721235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017581 n) ^ 2) ^ 2

end

end A017572.P13564113092390721235

namespace A017572

/-- `(1-A017581(n))²²` -/
def P13564113092390721235.Spec : Prop :=
  ∀ n, P13564113092390721235.a n = A017572 n

theorem P13564113092390721235.correct : P13564113092390721235.Spec := by
  intro n
  simp only [A017572, Nat.add_sub_cancel, A017572.P13564113092390721235.a, A017572.P10075396123048036539.a, A017581, A017581.P8854877261644846518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017572

/-! ## A017572.P16719369760635392066

`(A017533(n)+3)²²`
-/

namespace A017572.P16719369760635392066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017533 n + 3) ^ 2) ^ 2

end

end A017572.P16719369760635392066

namespace A017572

/-- `(A017533(n)+3)²²` -/
def P16719369760635392066.Spec : Prop :=
  ∀ n, P16719369760635392066.a n = A017572 n

theorem P16719369760635392066.correct : P16719369760635392066.Spec := by
  intro n
  simp only [A017572, Nat.add_sub_cancel, A017572.P16719369760635392066.a, A017572.P10075396123048036539.a, A017533, A017533.P146508076441825746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017572

/-! ## A017572.P11093364040765458247

`(2-A017593(n))²²`
-/

namespace A017572.P11093364040765458247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017593 n) ^ 2) ^ 2

end

end A017572.P11093364040765458247

namespace A017572

/-- `(2-A017593(n))²²` -/
def P11093364040765458247.Spec : Prop :=
  ∀ n, P11093364040765458247.a n = A017572 n

theorem P11093364040765458247.correct : P11093364040765458247.Spec := by
  intro n
  simp only [A017572, Nat.add_sub_cancel, A017572.P11093364040765458247.a, A017572.P10075396123048036539.a, A017593, A017593.P13091213750843470751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017572

/-! ## A017572.P2298566486520220175

`(2*A016933(n))²²`
-/

namespace A017572.P2298566486520220175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * A016933 n) ^ 2) ^ 2

end

end A017572.P2298566486520220175

namespace A017572

/-- `(2*A016933(n))²²` -/
def P2298566486520220175.Spec : Prop :=
  ∀ n, P2298566486520220175.a n = A017572 n

theorem P2298566486520220175.correct : P2298566486520220175.Spec := by
  intro n
  simp only [A017572, Nat.add_sub_cancel, A017572.P2298566486520220175.a, A017572.P10075396123048036539.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017572

/-! ## A017572.P6697200877770038960

`(3-A017605(n))²²`
-/

namespace A017572.P6697200877770038960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017605 n) ^ 2) ^ 2

end

end A017572.P6697200877770038960

namespace A017572

/-- `(3-A017605(n))²²` -/
def P6697200877770038960.Spec : Prop :=
  ∀ n, P6697200877770038960.a n = A017572 n

theorem P6697200877770038960.correct : P6697200877770038960.Spec := by
  intro n
  simp only [A017572, Nat.add_sub_cancel, A017572.P6697200877770038960.a, A017572.P10075396123048036539.a, A017605, A017605.P12903970419572684084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017572

/-! ## A017572.P6697913134912766630

`(A017437(n)+n)²²`
-/

namespace A017572.P6697913134912766630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017437 n + (n : ℤ)) ^ 2) ^ 2

end

end A017572.P6697913134912766630

namespace A017572

/-- `(A017437(n)+n)²²` -/
def P6697913134912766630.Spec : Prop :=
  ∀ n, P6697913134912766630.a n = A017572 n

theorem P6697913134912766630.correct : P6697913134912766630.Spec := by
  intro n
  simp only [A017572, Nat.add_sub_cancel, A017572.P6697913134912766630.a, A017572.P10075396123048036539.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017572

/-! ## A017572.P13944449469935416753

`(n-A127547(n))²²`
-/

namespace A017572.P13944449469935416753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A127547 n) ^ 2) ^ 2

end

end A017572.P13944449469935416753

namespace A017572

/-- `(n-A127547(n))²²` -/
def P13944449469935416753.Spec : Prop :=
  ∀ n, P13944449469935416753.a n = A017572 n

theorem P13944449469935416753.correct : P13944449469935416753.Spec := by
  intro n
  simp only [A017572, Nat.add_sub_cancel, A017572.P13944449469935416753.a, A017572.P10075396123048036539.a, A127547, A127547.P10889722998451657340.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017572

/-! ## A017572.P12079393034895349299

`A017569(n)*A017571(n)`
-/

namespace A017572.P12079393034895349299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n * A017571 n

end

end A017572.P12079393034895349299

namespace A017572

/-- `A017569(n)*A017571(n)` -/
def P12079393034895349299.Spec : Prop :=
  ∀ n, P12079393034895349299.a n = A017572 n

theorem P12079393034895349299.correct : P12079393034895349299.Spec := by
  intro n
  simp only [A017572, Nat.add_sub_cancel, A017572.P12079393034895349299.a, A017572.P10075396123048036539.a, A017569, A017569.P14340039372117997380.a, A017571, A017571.P17779126235710720224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017572

/-!
# A017573: a(n) = (12n+4)^5.

The programs for A017573, the canonical program `A017573.P15855649599427515520` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017573 has offset 0).

The definition of A017573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+4)^5` (program `A017573.P15855649599427515520`, by `A017573.P15855649599427515520.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017573.P15855649599427515520

`(12*n+4)^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017573

/-- `(12*n+4)^5` -/
def P15855649599427515520.Spec : Prop :=
  ∀ n, (P15855649599427515520.a n : ℤ) = A017573 n

theorem P15855649599427515520.correct : P15855649599427515520.Spec := by
  intro n
  simp only [A017573]

end A017573

/-! ## A017573.P4805223178869483841

`A000584(A017569(n))`
-/

namespace A017573.P4805223178869483841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A017569 n).toNat

end

end A017573.P4805223178869483841

namespace A017573

/-- `A000584(A017569(n))` -/
def P4805223178869483841.Spec : Prop :=
  ∀ n, P4805223178869483841.a n = A017573 n

end A017573

/-! ## A017573.P9653947371741465069

`32*A016937(n)`
-/

namespace A017573.P9653947371741465069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A016937 n

end

end A017573.P9653947371741465069

namespace A017573

/-- `32*A016937(n)` -/
def P9653947371741465069.Spec : Prop :=
  ∀ n, P9653947371741465069.a n = A017573 n

theorem P9653947371741465069.correct : P9653947371741465069.Spec := by
  intro n
  simp only [A017573, Nat.add_sub_cancel, A017573.P9653947371741465069.a, A017573.P15855649599427515520.a, A016937, A016937.P4646017052301238627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017573

/-! ## A017573.P9445945164356087554

`A017569(n)*A017572(n)`
-/

namespace A017573.P9445945164356087554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n * A017572 n

end

end A017573.P9445945164356087554

namespace A017573

/-- `A017569(n)*A017572(n)` -/
def P9445945164356087554.Spec : Prop :=
  ∀ n, P9445945164356087554.a n = A017573 n

theorem P9445945164356087554.correct : P9445945164356087554.Spec := by
  intro n
  simp only [A017573, Nat.add_sub_cancel, A017573.P9445945164356087554.a, A017573.P15855649599427515520.a, A017569, A017569.P14340039372117997380.a, A017572, A017572.P10075396123048036539.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017573

/-! ## A017573.P1649763759834476043

`A017570(n)*A017571(n)`
-/

namespace A017573.P1649763759834476043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017570 n * A017571 n

end

end A017573.P1649763759834476043

namespace A017573

/-- `A017570(n)*A017571(n)` -/
def P1649763759834476043.Spec : Prop :=
  ∀ n, P1649763759834476043.a n = A017573 n

theorem P1649763759834476043.correct : P1649763759834476043.Spec := by
  intro n
  simp only [A017573, Nat.add_sub_cancel, A017573.P1649763759834476043.a, A017573.P15855649599427515520.a, A017570, A017570.P8593875747358616596.a, A017571, A017571.P17779126235710720224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017573

/-! ## A017573.P12540029918369281710

`A016942(n)/A016781(n)`
-/

namespace A017573.P12540029918369281710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016942 n : ℚ) / (A016781 n : ℚ)

end

end A017573.P12540029918369281710

namespace A017573

/-- `A016942(n)/A016781(n)` -/
def P12540029918369281710.Spec : Prop :=
  ∀ n, P12540029918369281710.a n = (A017573 n : ℚ)

theorem P12540029918369281710.correct : P12540029918369281710.Spec := by
  intro n
  simp only [A017573, Nat.add_sub_cancel, A017573.P12540029918369281710.a, A017573.P15855649599427515520.a, A016781, A016781.P2935993440358225274.a, A016942, A016942.P12209540957497363050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017573

/-! ## A017573.P2954383842596444705

`A017574(n)/A017569(n)`
-/

namespace A017573.P2954383842596444705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017574 n : ℚ) / (A017569 n : ℚ)

end

end A017573.P2954383842596444705

namespace A017573

/-- `A017574(n)/A017569(n)` -/
def P2954383842596444705.Spec : Prop :=
  ∀ n, P2954383842596444705.a n = (A017573 n : ℚ)

end A017573

/-! ## A017573.P10076328065670842800

`A017570(n)²*A017569(n)`
-/

namespace A017573.P10076328065670842800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017570 n ^ 2 * A017569 n

end

end A017573.P10076328065670842800

namespace A017573

/-- `A017570(n)²*A017569(n)` -/
def P10076328065670842800.Spec : Prop :=
  ∀ n, P10076328065670842800.a n = A017573 n

theorem P10076328065670842800.correct : P10076328065670842800.Spec := by
  intro n
  simp only [A017573, Nat.add_sub_cancel, A017573.P10076328065670842800.a, A017573.P15855649599427515520.a, A017569, A017569.P14340039372117997380.a, A017570, A017570.P8593875747358616596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017573

/-! ## A017573.P2095297810833584806

`A017569(n)²*A017571(n)`
-/

namespace A017573.P2095297810833584806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n ^ 2 * A017571 n

end

end A017573.P2095297810833584806

namespace A017573

/-- `A017569(n)²*A017571(n)` -/
def P2095297810833584806.Spec : Prop :=
  ∀ n, P2095297810833584806.a n = A017573 n

theorem P2095297810833584806.correct : P2095297810833584806.Spec := by
  intro n
  simp only [A017573, Nat.add_sub_cancel, A017573.P2095297810833584806.a, A017573.P15855649599427515520.a, A017569, A017569.P14340039372117997380.a, A017571, A017571.P17779126235710720224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017573

/-! ## A017573.P18148084478510317623

`A017572(n)²/A017571(n)`
-/

namespace A017573.P18148084478510317623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017572 n ^ 2 : ℚ) / (A017571 n : ℚ)

end

end A017573.P18148084478510317623

namespace A017573

/-- `A017572(n)²/A017571(n)` -/
def P18148084478510317623.Spec : Prop :=
  ∀ n, P18148084478510317623.a n = (A017573 n : ℚ)

end A017573

/-! ## A017573.P15738655977913648484

`A017575(n)/A017569(n)²`
-/

namespace A017573.P15738655977913648484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017575 n : ℚ) / (A017569 n ^ 2 : ℚ)

end

end A017573.P15738655977913648484

namespace A017573

/-- `A017575(n)/A017569(n)²` -/
def P15738655977913648484.Spec : Prop :=
  ∀ n, P15738655977913648484.a n = (A017573 n : ℚ)

end A017573

/-! ## A017573.P5660798010861223362

`A017577(n)/A017569(n)²²`
-/

namespace A017573.P5660798010861223362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017577 n : ℚ) / ((A017569 n ^ 2) ^ 2 : ℚ)

end

end A017573.P5660798010861223362

namespace A017573

/-- `A017577(n)/A017569(n)²²` -/
def P5660798010861223362.Spec : Prop :=
  ∀ n, P5660798010861223362.a n = (A017573 n : ℚ)

end A017573

/-! ## A017573.P1838545057471857965

`32*A016793(2*n)`
-/

namespace A017573.P1838545057471857965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A016793 (2 * n)

end

end A017573.P1838545057471857965

namespace A017573

/-- `32*A016793(2*n)` -/
def P1838545057471857965.Spec : Prop :=
  ∀ n, P1838545057471857965.a n = A017573 n

theorem P1838545057471857965.correct : P1838545057471857965.Spec := by
  intro n
  simp only [A017573, Nat.add_sub_cancel, A017573.P1838545057471857965.a, A017573.P15855649599427515520.a, A016793, A016793.P7571111589597192072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017573

/-! ## A017573.P14793270842745149680

`A166304(2*n)²²*A166304(2*n)`
-/

namespace A017573.P14793270842745149680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166304 (2 * n) ^ 2) ^ 2 * A166304 (2 * n)

end

end A017573.P14793270842745149680

namespace A017573

/-- `A166304(2*n)²²*A166304(2*n)` -/
def P14793270842745149680.Spec : Prop :=
  ∀ n, P14793270842745149680.a n = A017573 n

end A017573

/-! ## A017573.P15587056294335105700

`A016961(2*n)`
-/

namespace A017573.P15587056294335105700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016961 (2 * n)

end

end A017573.P15587056294335105700

namespace A017573

/-- `A016961(2*n)` -/
def P15587056294335105700.Spec : Prop :=
  ∀ n, P15587056294335105700.a n = A017573 n

theorem P15587056294335105700.correct : P15587056294335105700.Spec := by
  intro n
  simp only [A017573, Nat.add_sub_cancel, A017573.P15587056294335105700.a, A017573.P15855649599427515520.a, A016961, A016961.P3953090399951261462.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017573

/-! ## A017573.P1934713102172413880

`sqrt(A016966(2*n))`
-/

namespace A017573.P1934713102172413880
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016966 (2 * n) : ℝ)

end

end A017573.P1934713102172413880

namespace A017573

/-- `sqrt(A016966(2*n))` -/
def P1934713102172413880.Spec : Prop :=
  ∀ n, P1934713102172413880.a n = (A017573 n : ℝ)

end A017573

/-! ## A017573.P14406200253489005164

`(12*n+4)*A016960(2*n)`
-/

namespace A017573.P14406200253489005164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 4 : ℤ) * A016960 (2 * n)

end

end A017573.P14406200253489005164

namespace A017573

/-- `(12*n+4)*A016960(2*n)` -/
def P14406200253489005164.Spec : Prop :=
  ∀ n, P14406200253489005164.a n = A017573 n

theorem P14406200253489005164.correct : P14406200253489005164.Spec := by
  intro n
  simp only [A017573, Nat.add_sub_cancel, A017573.P14406200253489005164.a, A017573.P15855649599427515520.a, A016960, A016960.P14442042451729592915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017573

/-! ## A017573.P8721509012352724727

`A016958(2*n)²*(12*n+4)`
-/

namespace A017573.P8721509012352724727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 (2 * n) ^ 2 * (12 * n + 4 : ℤ)

end

end A017573.P8721509012352724727

namespace A017573

/-- `A016958(2*n)²*(12*n+4)` -/
def P8721509012352724727.Spec : Prop :=
  ∀ n, P8721509012352724727.a n = A017573 n

theorem P8721509012352724727.correct : P8721509012352724727.Spec := by
  intro n
  simp only [A017573, Nat.add_sub_cancel, A017573.P8721509012352724727.a, A017573.P15855649599427515520.a, A016958, A016958.P743767780414774553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017573

/-! ## A017573.P14224021344365279901

`A017570(n)²*A016957(2*n)`
-/

namespace A017573.P14224021344365279901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017570 n ^ 2 * A016957 (2 * n)

end

end A017573.P14224021344365279901

namespace A017573

/-- `A017570(n)²*A016957(2*n)` -/
def P14224021344365279901.Spec : Prop :=
  ∀ n, P14224021344365279901.a n = A017573 n

theorem P14224021344365279901.correct : P14224021344365279901.Spec := by
  intro n
  simp only [A017573, Nat.add_sub_cancel, A017573.P14224021344365279901.a, A017573.P15855649599427515520.a, A016957, A016957.P9941618694539595759.a, A017570, A017570.P8593875747358616596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017573

/-! ## A017573.P11427461083480249755

`A016958(2*n)*A016959(2*n)`
-/

namespace A017573.P11427461083480249755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 (2 * n) * A016959 (2 * n)

end

end A017573.P11427461083480249755

namespace A017573

/-- `A016958(2*n)*A016959(2*n)` -/
def P11427461083480249755.Spec : Prop :=
  ∀ n, P11427461083480249755.a n = A017573 n

theorem P11427461083480249755.correct : P11427461083480249755.Spec := by
  intro n
  simp only [A017573, Nat.add_sub_cancel, A017573.P11427461083480249755.a, A017573.P15855649599427515520.a, A016958, A016958.P743767780414774553.a, A016959, A016959.P14858127207788600241.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017573

/-!
# A017574: a(n) = (12*n + 4)^6.

The programs for A017574, the canonical program `A017574.P7333778575249703300` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017574 has offset 0).

The definition of A017574 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+4)^6` (program `A017574.P7333778575249703300`, by `A017574.P7333778575249703300.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017574.P7333778575249703300

`(12*n+4)^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017574

/-- `(12*n+4)^6` -/
def P7333778575249703300.Spec : Prop :=
  ∀ n, (P7333778575249703300.a n : ℤ) = A017574 n

theorem P7333778575249703300.correct : P7333778575249703300.Spec := by
  intro n
  simp only [A017574]

end A017574

/-! ## A017574.P10918911261038150034

`A017571(n)²`
-/

namespace A017574.P10918911261038150034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017571 n ^ 2

end

end A017574.P10918911261038150034

namespace A017574

/-- `A017571(n)²` -/
def P10918911261038150034.Spec : Prop :=
  ∀ n, P10918911261038150034.a n = A017574 n

theorem P10918911261038150034.correct : P10918911261038150034.Spec := by
  intro n
  simp only [A017574, Nat.add_sub_cancel, A017574.P10918911261038150034.a, A017574.P7333778575249703300.a, A017571, A017571.P17779126235710720224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017574

/-! ## A017574.P302613240314801527

`64*A016938(n)`
-/

namespace A017574.P302613240314801527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A016938 n

end

end A017574.P302613240314801527

namespace A017574

/-- `64*A016938(n)` -/
def P302613240314801527.Spec : Prop :=
  ∀ n, P302613240314801527.a n = A017574 n

theorem P302613240314801527.correct : P302613240314801527.Spec := by
  intro n
  simp only [A017574, Nat.add_sub_cancel, A017574.P302613240314801527.a, A017574.P7333778575249703300.a, A016938, A016938.P15117638160680881893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017574

/-! ## A017574.P5341757078343128561

`(12*n+4)*A017573(n)`
-/

namespace A017574.P5341757078343128561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 4 : ℤ) * A017573 n

end

end A017574.P5341757078343128561

namespace A017574

/-- `(12*n+4)*A017573(n)` -/
def P5341757078343128561.Spec : Prop :=
  ∀ n, P5341757078343128561.a n = A017574 n

theorem P5341757078343128561.correct : P5341757078343128561.Spec := by
  intro n
  simp only [A017574, Nat.add_sub_cancel, A017574.P5341757078343128561.a, A017574.P7333778575249703300.a, A017573, A017573.P15855649599427515520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017574

/-! ## A017574.P6437563666364608125

`A017570(n)*A017572(n)`
-/

namespace A017574.P6437563666364608125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017570 n * A017572 n

end

end A017574.P6437563666364608125

namespace A017574

/-- `A017570(n)*A017572(n)` -/
def P6437563666364608125.Spec : Prop :=
  ∀ n, P6437563666364608125.a n = A017574 n

theorem P6437563666364608125.correct : P6437563666364608125.Spec := by
  intro n
  simp only [A017574, Nat.add_sub_cancel, A017574.P6437563666364608125.a, A017574.P7333778575249703300.a, A017570, A017570.P8593875747358616596.a, A017572, A017572.P10075396123048036539.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017574

/-! ## A017574.P11245733739476888648

`A017575(n)/A017569(n)`
-/

namespace A017574.P11245733739476888648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017575 n : ℚ) / (A017569 n : ℚ)

end

end A017574.P11245733739476888648

namespace A017574

/-- `A017575(n)/A017569(n)` -/
def P11245733739476888648.Spec : Prop :=
  ∀ n, P11245733739476888648.a n = (A017574 n : ℚ)

end A017574

/-! ## A017574.P14162972824522888113

`(A017569(n)*A017570(n))²`
-/

namespace A017574.P14162972824522888113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017569 n * A017570 n) ^ 2

end

end A017574.P14162972824522888113

namespace A017574

/-- `(A017569(n)*A017570(n))²` -/
def P14162972824522888113.Spec : Prop :=
  ∀ n, P14162972824522888113.a n = A017574 n

theorem P14162972824522888113.correct : P14162972824522888113.Spec := by
  intro n
  simp only [A017574, Nat.add_sub_cancel, A017574.P14162972824522888113.a, A017574.P7333778575249703300.a, A017569, A017569.P14340039372117997380.a, A017570, A017570.P8593875747358616596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017574

/-! ## A017574.P15984965052341429004

`A017569(n)²*A017572(n)`
-/

namespace A017574.P15984965052341429004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n ^ 2 * A017572 n

end

end A017574.P15984965052341429004

namespace A017574

/-- `A017569(n)²*A017572(n)` -/
def P15984965052341429004.Spec : Prop :=
  ∀ n, P15984965052341429004.a n = A017574 n

theorem P15984965052341429004.correct : P15984965052341429004.Spec := by
  intro n
  simp only [A017574, Nat.add_sub_cancel, A017574.P15984965052341429004.a, A017574.P7333778575249703300.a, A017569, A017569.P14340039372117997380.a, A017572, A017572.P10075396123048036539.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017574

/-! ## A017574.P5764317744866975043

`(A016938(n)/A016779(n))²`
-/

namespace A017574.P5764317744866975043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016938 n : ℚ) / (A016779 n : ℚ)) ^ 2

end

end A017574.P5764317744866975043

namespace A017574

/-- `(A016938(n)/A016779(n))²` -/
def P5764317744866975043.Spec : Prop :=
  ∀ n, P5764317744866975043.a n = (A017574 n : ℚ)

theorem P5764317744866975043.correct : P5764317744866975043.Spec := by
  intro n
  simp only [A017574, Nat.add_sub_cancel, A017574.P5764317744866975043.a, A017574.P7333778575249703300.a, A016779, A016779.P12183208488872344435.a, A016938, A016938.P15117638160680881893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017574

/-! ## A017574.P16217100372508203567

`(A017573(n)/A017570(n))²`
-/

namespace A017574.P16217100372508203567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017573 n : ℚ) / (A017570 n : ℚ)) ^ 2

end

end A017574.P16217100372508203567

namespace A017574

/-- `(A017573(n)/A017570(n))²` -/
def P16217100372508203567.Spec : Prop :=
  ∀ n, P16217100372508203567.a n = (A017574 n : ℚ)

end A017574

/-! ## A017574.P8650441638507850000

`A017576(n)/sqrt(sqrt(A017576(n)))`
-/

namespace A017574.P8650441638507850000
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017576 n : ℝ) / Real.sqrt (Real.sqrt (A017576 n : ℝ))

end

end A017574.P8650441638507850000

namespace A017574

/-- `A017576(n)/sqrt(sqrt(A017576(n)))` -/
def P8650441638507850000.Spec : Prop :=
  ∀ n, P8650441638507850000.a n = (A017574 n : ℝ)

end A017574

/-! ## A017574.P8323032962114613265

`(Δ[A033579(n)]^3)²`
-/

namespace A017574.P8323032962114613265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017574.P8323032962114613265

namespace A017574

/-- `(Δ[A033579(n)]^3)²` -/
def P8323032962114613265.Spec : Prop :=
  ∀ n, P8323032962114613265.a n = A017574 n

theorem P8323032962114613265.correct : P8323032962114613265.Spec := by
  intro n
  simp only [A017574, Nat.add_sub_cancel, A017574.P8323032962114613265.f1, A017574.P8323032962114613265.a, A017574.P7333778575249703300.a, A033579, A033579.P8592719016639374159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017574

/-! ## A017574.P8371768429040676765

`A016962(2*n)`
-/

namespace A017574.P8371768429040676765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016962 (2 * n)

end

end A017574.P8371768429040676765

namespace A017574

/-- `A016962(2*n)` -/
def P8371768429040676765.Spec : Prop :=
  ∀ n, P8371768429040676765.a n = A017574 n

theorem P8371768429040676765.correct : P8371768429040676765.Spec := by
  intro n
  simp only [A017574, Nat.add_sub_cancel, A017574.P8371768429040676765.a, A017574.P7333778575249703300.a, A016962, A016962.P16474642828663356160.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017574

/-! ## A017574.P12184734757841942622

`A016959(2*n)²`
-/

namespace A017574.P12184734757841942622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016959 (2 * n) ^ 2

end

end A017574.P12184734757841942622

namespace A017574

/-- `A016959(2*n)²` -/
def P12184734757841942622.Spec : Prop :=
  ∀ n, P12184734757841942622.a n = A017574 n

theorem P12184734757841942622.correct : P12184734757841942622.Spec := by
  intro n
  simp only [A017574, Nat.add_sub_cancel, A017574.P12184734757841942622.a, A017574.P7333778575249703300.a, A016959, A016959.P14858127207788600241.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017574

/-! ## A017574.P982259178063077384

`64*A016794(2*n)`
-/

namespace A017574.P982259178063077384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A016794 (2 * n)

end

end A017574.P982259178063077384

namespace A017574

/-- `64*A016794(2*n)` -/
def P982259178063077384.Spec : Prop :=
  ∀ n, P982259178063077384.a n = A017574 n

theorem P982259178063077384.correct : P982259178063077384.Spec := by
  intro n
  simp only [A017574, Nat.add_sub_cancel, A017574.P982259178063077384.a, A017574.P7333778575249703300.a, A016794, A016794.P16688178066975936005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017574

/-! ## A017574.P621574806127127958

`(A016957(2*n)^3)²`
-/

namespace A017574.P621574806127127958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016957 (2 * n) ^ 3) ^ 2

end

end A017574.P621574806127127958

namespace A017574

/-- `(A016957(2*n)^3)²` -/
def P621574806127127958.Spec : Prop :=
  ∀ n, P621574806127127958.a n = A017574 n

theorem P621574806127127958.correct : P621574806127127958.Spec := by
  intro n
  simp only [A017574, Nat.add_sub_cancel, A017574.P621574806127127958.a, A017574.P7333778575249703300.a, A016957, A016957.P9941618694539595759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017574

/-! ## A017574.P12605323072375820225

`A016957(2*n)*A016961(2*n)`
-/

namespace A017574.P12605323072375820225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (2 * n) * A016961 (2 * n)

end

end A017574.P12605323072375820225

namespace A017574

/-- `A016957(2*n)*A016961(2*n)` -/
def P12605323072375820225.Spec : Prop :=
  ∀ n, P12605323072375820225.a n = A017574 n

theorem P12605323072375820225.correct : P12605323072375820225.Spec := by
  intro n
  simp only [A017574, Nat.add_sub_cancel, A017574.P12605323072375820225.a, A017574.P7333778575249703300.a, A016957, A016957.P9941618694539595759.a, A016961, A016961.P3953090399951261462.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017574

/-! ## A017574.P7935452946393122222

`A016958(2*n)*A016960(2*n)`
-/

namespace A017574.P7935452946393122222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 (2 * n) * A016960 (2 * n)

end

end A017574.P7935452946393122222

namespace A017574

/-- `A016958(2*n)*A016960(2*n)` -/
def P7935452946393122222.Spec : Prop :=
  ∀ n, P7935452946393122222.a n = A017574 n

theorem P7935452946393122222.correct : P7935452946393122222.Spec := by
  intro n
  simp only [A017574, Nat.add_sub_cancel, A017574.P7935452946393122222.a, A017574.P7333778575249703300.a, A016958, A016958.P743767780414774553.a, A016960, A016960.P14442042451729592915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017574

/-! ## A017574.P2957195128238995352

`A016791(2*n)*A017619(2*n)`
-/

namespace A017574.P2957195128238995352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016791 (2 * n) * A017619 (2 * n)

end

end A017574.P2957195128238995352

namespace A017574

/-- `A016791(2*n)*A017619(2*n)` -/
def P2957195128238995352.Spec : Prop :=
  ∀ n, P2957195128238995352.a n = A017574 n

theorem P2957195128238995352.correct : P2957195128238995352.Spec := by
  intro n
  simp only [A017574, Nat.add_sub_cancel, A017574.P2957195128238995352.a, A017574.P7333778575249703300.a, A016791, A016791.P13208806347124039064.a, A017619, A017619.P1557982836546569315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017574

/-! ## A017574.P4017971406271994351

`A016963(2*n)/A016957(2*n)`
-/

namespace A017574.P4017971406271994351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016963 (2 * n) : ℚ) / (A016957 (2 * n) : ℚ)

end

end A017574.P4017971406271994351

namespace A017574

/-- `A016963(2*n)/A016957(2*n)` -/
def P4017971406271994351.Spec : Prop :=
  ∀ n, P4017971406271994351.a n = (A017574 n : ℚ)

theorem P4017971406271994351.correct : P4017971406271994351.Spec := by
  intro n
  simp only [A017574, Nat.add_sub_cancel, A017574.P4017971406271994351.a, A017574.P7333778575249703300.a, A016957, A016957.P9941618694539595759.a, A016963, A016963.P2568350781963201980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017574

/-!
# A017575: a(n) = (12*n + 4)^7.

The programs for A017575, the canonical program `A017575.P12807976386254187303` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017575 has offset 0).

The definition of A017575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+4)^7` (program `A017575.P12807976386254187303`, by `A017575.P12807976386254187303.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017575.P12807976386254187303

`(12*n+4)^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017575

/-- `(12*n+4)^7` -/
def P12807976386254187303.Spec : Prop :=
  ∀ n, (P12807976386254187303.a n : ℤ) = A017575 n

theorem P12807976386254187303.correct : P12807976386254187303.Spec := by
  intro n
  simp only [A017575]

end A017575

/-! ## A017575.P9572924514138100242

`A001015(A017569(n))`
-/

namespace A017575.P9572924514138100242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A017569 n).toNat

end

end A017575.P9572924514138100242

namespace A017575

/-- `A001015(A017569(n))` -/
def P9572924514138100242.Spec : Prop :=
  ∀ n, P9572924514138100242.a n = A017575 n

end A017575

/-! ## A017575.P12314103191667306794

`A017569(n)*A017574(n)`
-/

namespace A017575.P12314103191667306794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n * A017574 n

end

end A017575.P12314103191667306794

namespace A017575

/-- `A017569(n)*A017574(n)` -/
def P12314103191667306794.Spec : Prop :=
  ∀ n, P12314103191667306794.a n = A017575 n

theorem P12314103191667306794.correct : P12314103191667306794.Spec := by
  intro n
  simp only [A017575, Nat.add_sub_cancel, A017575.P12314103191667306794.a, A017575.P12807976386254187303.a, A017569, A017569.P14340039372117997380.a, A017574, A017574.P7333778575249703300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017575

/-! ## A017575.P16042545717487377823

`A017570(n)*A017573(n)`
-/

namespace A017575.P16042545717487377823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017570 n * A017573 n

end

end A017575.P16042545717487377823

namespace A017575

/-- `A017570(n)*A017573(n)` -/
def P16042545717487377823.Spec : Prop :=
  ∀ n, P16042545717487377823.a n = A017575 n

theorem P16042545717487377823.correct : P16042545717487377823.Spec := by
  intro n
  simp only [A017575, Nat.add_sub_cancel, A017575.P16042545717487377823.a, A017575.P12807976386254187303.a, A017570, A017570.P8593875747358616596.a, A017573, A017573.P15855649599427515520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017575

/-! ## A017575.P1193839819659120206

`A017571(n)*A017572(n)`
-/

namespace A017575.P1193839819659120206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017571 n * A017572 n

end

end A017575.P1193839819659120206

namespace A017575

/-- `A017571(n)*A017572(n)` -/
def P1193839819659120206.Spec : Prop :=
  ∀ n, P1193839819659120206.a n = A017575 n

theorem P1193839819659120206.correct : P1193839819659120206.Spec := by
  intro n
  simp only [A017575, Nat.add_sub_cancel, A017575.P1193839819659120206.a, A017575.P12807976386254187303.a, A017571, A017571.P17779126235710720224.a, A017572, A017572.P10075396123048036539.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017575

/-! ## A017575.P17771411244036048880

`A017571(n)²*A017569(n)`
-/

namespace A017575.P17771411244036048880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017571 n ^ 2 * A017569 n

end

end A017575.P17771411244036048880

namespace A017575

/-- `A017571(n)²*A017569(n)` -/
def P17771411244036048880.Spec : Prop :=
  ∀ n, P17771411244036048880.a n = A017575 n

theorem P17771411244036048880.correct : P17771411244036048880.Spec := by
  intro n
  simp only [A017575, Nat.add_sub_cancel, A017575.P17771411244036048880.a, A017575.P12807976386254187303.a, A017569, A017569.P14340039372117997380.a, A017571, A017571.P17779126235710720224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017575

/-! ## A017575.P18328768778529555903

`A017570(n)²*A017571(n)`
-/

namespace A017575.P18328768778529555903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017570 n ^ 2 * A017571 n

end

end A017575.P18328768778529555903

namespace A017575

/-- `A017570(n)²*A017571(n)` -/
def P18328768778529555903.Spec : Prop :=
  ∀ n, P18328768778529555903.a n = A017575 n

theorem P18328768778529555903.correct : P18328768778529555903.Spec := by
  intro n
  simp only [A017575, Nat.add_sub_cancel, A017575.P18328768778529555903.a, A017575.P12807976386254187303.a, A017570, A017570.P8593875747358616596.a, A017571, A017571.P17779126235710720224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017575

/-! ## A017575.P2315157619871180879

`A017569(n)²*A017573(n)`
-/

namespace A017575.P2315157619871180879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n ^ 2 * A017573 n

end

end A017575.P2315157619871180879

namespace A017575

/-- `A017569(n)²*A017573(n)` -/
def P2315157619871180879.Spec : Prop :=
  ∀ n, P2315157619871180879.a n = A017575 n

theorem P2315157619871180879.correct : P2315157619871180879.Spec := by
  intro n
  simp only [A017575, Nat.add_sub_cancel, A017575.P2315157619871180879.a, A017575.P12807976386254187303.a, A017569, A017569.P14340039372117997380.a, A017573, A017573.P15855649599427515520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017575

/-! ## A017575.P5977365519141899394

`A017572(n)²/A017569(n)`
-/

namespace A017575.P5977365519141899394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017572 n ^ 2 : ℚ) / (A017569 n : ℚ)

end

end A017575.P5977365519141899394

namespace A017575

/-- `A017572(n)²/A017569(n)` -/
def P5977365519141899394.Spec : Prop :=
  ∀ n, P5977365519141899394.a n = (A017575 n : ℚ)

end A017575

/-! ## A017575.P11679941244506638901

`A017577(n)/A017569(n)²`
-/

namespace A017575.P11679941244506638901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017577 n : ℚ) / (A017569 n ^ 2 : ℚ)

end

end A017575.P11679941244506638901

namespace A017575

/-- `A017577(n)/A017569(n)²` -/
def P11679941244506638901.Spec : Prop :=
  ∀ n, P11679941244506638901.a n = (A017575 n : ℚ)

end A017575

/-! ## A017575.P1330480770801317805

`A017570(n)²²/A017569(n)`
-/

namespace A017575.P1330480770801317805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017570 n ^ 2) ^ 2 : ℚ) / (A017569 n : ℚ)

end

end A017575.P1330480770801317805

namespace A017575

/-- `A017570(n)²²/A017569(n)` -/
def P1330480770801317805.Spec : Prop :=
  ∀ n, P1330480770801317805.a n = (A017575 n : ℚ)

end A017575

/-! ## A017575.P1884353469124706667

`A016939(n)/A016783(n)*A016939(n)`
-/

namespace A017575.P1884353469124706667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016939 n : ℚ) / (A016783 n : ℚ) * (A016939 n : ℚ)

end

end A017575.P1884353469124706667

namespace A017575

/-- `A016939(n)/A016783(n)*A016939(n)` -/
def P1884353469124706667.Spec : Prop :=
  ∀ n, P1884353469124706667.a n = (A017575 n : ℚ)

theorem P1884353469124706667.correct : P1884353469124706667.Spec := by
  intro n
  simp only [A017575, Nat.add_sub_cancel, A017575.P1884353469124706667.a, A017575.P12807976386254187303.a, A016783, A016783.P4851290957634662023.a, A016939, A016939.P10686673164026481289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017575

/-! ## A017575.P15580601541253951910

`A017573(n)/A017571(n)*A017573(n)`
-/

namespace A017575.P15580601541253951910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017573 n : ℚ) / (A017571 n : ℚ) * (A017573 n : ℚ)

end

end A017575.P15580601541253951910

namespace A017575

/-- `A017573(n)/A017571(n)*A017573(n)` -/
def P15580601541253951910.Spec : Prop :=
  ∀ n, P15580601541253951910.a n = (A017575 n : ℚ)

end A017575

/-! ## A017575.P1649566005620765863

`A016963(2*n)`
-/

namespace A017575.P1649566005620765863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016963 (2 * n)

end

end A017575.P1649566005620765863

namespace A017575

/-- `A016963(2*n)` -/
def P1649566005620765863.Spec : Prop :=
  ∀ n, P1649566005620765863.a n = A017575 n

theorem P1649566005620765863.correct : P1649566005620765863.Spec := by
  intro n
  simp only [A017575, Nat.add_sub_cancel, A017575.P1649566005620765863.a, A017575.P12807976386254187303.a, A016963, A016963.P2568350781963201980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017575

/-! ## A017575.P16295804277148490028

`A016957(2*n)*A016962(2*n)`
-/

namespace A017575.P16295804277148490028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (2 * n) * A016962 (2 * n)

end

end A017575.P16295804277148490028

namespace A017575

/-- `A016957(2*n)*A016962(2*n)` -/
def P16295804277148490028.Spec : Prop :=
  ∀ n, P16295804277148490028.a n = A017575 n

theorem P16295804277148490028.correct : P16295804277148490028.Spec := by
  intro n
  simp only [A017575, Nat.add_sub_cancel, A017575.P16295804277148490028.a, A017575.P12807976386254187303.a, A016957, A016957.P9941618694539595759.a, A016962, A016962.P16474642828663356160.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017575

/-! ## A017575.P9740362246262579472

`A016958(2*n)*A016961(2*n)`
-/

namespace A017575.P9740362246262579472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 (2 * n) * A016961 (2 * n)

end

end A017575.P9740362246262579472

namespace A017575

/-- `A016958(2*n)*A016961(2*n)` -/
def P9740362246262579472.Spec : Prop :=
  ∀ n, P9740362246262579472.a n = A017575 n

theorem P9740362246262579472.correct : P9740362246262579472.Spec := by
  intro n
  simp only [A017575, Nat.add_sub_cancel, A017575.P9740362246262579472.a, A017575.P12807976386254187303.a, A016958, A016958.P743767780414774553.a, A016961, A016961.P3953090399951261462.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017575

/-! ## A017575.P10186089802154775584

`A016959(2*n)*A016960(2*n)`
-/

namespace A017575.P10186089802154775584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016959 (2 * n) * A016960 (2 * n)

end

end A017575.P10186089802154775584

namespace A017575

/-- `A016959(2*n)*A016960(2*n)` -/
def P10186089802154775584.Spec : Prop :=
  ∀ n, P10186089802154775584.a n = A017575 n

theorem P10186089802154775584.correct : P10186089802154775584.Spec := by
  intro n
  simp only [A017575, Nat.add_sub_cancel, A017575.P10186089802154775584.a, A017575.P12807976386254187303.a, A016959, A016959.P14858127207788600241.a, A016960, A016960.P14442042451729592915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017575

/-! ## A017575.P5584518140578794955

`A016964(2*n)/A016957(2*n)`
-/

namespace A017575.P5584518140578794955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016964 (2 * n) : ℚ) / (A016957 (2 * n) : ℚ)

end

end A017575.P5584518140578794955

namespace A017575

/-- `A016964(2*n)/A016957(2*n)` -/
def P5584518140578794955.Spec : Prop :=
  ∀ n, P5584518140578794955.a n = (A017575 n : ℚ)

theorem P5584518140578794955.correct : P5584518140578794955.Spec := by
  intro n
  simp only [A017575, Nat.add_sub_cancel, A017575.P5584518140578794955.a, A017575.P12807976386254187303.a, A016957, A016957.P9941618694539595759.a, A016964, A016964.P4405314615304342496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017575

/-! ## A017575.P13220439837005623486

`A016965(2*n)/A016958(2*n)`
-/

namespace A017575.P13220439837005623486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016965 (2 * n) : ℚ) / (A016958 (2 * n) : ℚ)

end

end A017575.P13220439837005623486

namespace A017575

/-- `A016965(2*n)/A016958(2*n)` -/
def P13220439837005623486.Spec : Prop :=
  ∀ n, P13220439837005623486.a n = (A017575 n : ℚ)

theorem P13220439837005623486.correct : P13220439837005623486.Spec := by
  intro n
  simp only [A017575, Nat.add_sub_cancel, A017575.P13220439837005623486.a, A017575.P12807976386254187303.a, A016958, A016958.P743767780414774553.a, A016965, A016965.P1751004118298795959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017575

/-! ## A017575.P13043152078239869156

`A016807(3*n+1)`
-/

namespace A017575.P13043152078239869156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016807 (3 * n + 1)

end

end A017575.P13043152078239869156

namespace A017575

/-- `A016807(3*n+1)` -/
def P13043152078239869156.Spec : Prop :=
  ∀ n, P13043152078239869156.a n = A017575 n

theorem P13043152078239869156.correct : P13043152078239869156.Spec := by
  intro n
  simp only [A017575, Nat.add_sub_cancel, A017575.P13043152078239869156.a, A017575.P12807976386254187303.a, A016807, A016807.P3617930477537150980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017575

/-!
# A017576: a(n) = (12*n + 4)^8.

The programs for A017576, the canonical program `A017576.P13536854236386471020` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017576 has offset 0).

The definition of A017576 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+4)^8` (program `A017576.P13536854236386471020`, by `A017576.P13536854236386471020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017576.P13536854236386471020

`(12*n+4)^8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017576

/-- `(12*n+4)^8` -/
def P13536854236386471020.Spec : Prop :=
  ∀ n, (P13536854236386471020.a n : ℤ) = A017576 n

theorem P13536854236386471020.correct : P13536854236386471020.Spec := by
  intro n
  simp only [A017576]

end A017576

/-! ## A017576.P10452911830156387426

`A017572(n)²`
-/

namespace A017576.P10452911830156387426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017572 n ^ 2

end

end A017576.P10452911830156387426

namespace A017576

/-- `A017572(n)²` -/
def P10452911830156387426.Spec : Prop :=
  ∀ n, P10452911830156387426.a n = A017576 n

theorem P10452911830156387426.correct : P10452911830156387426.Spec := by
  intro n
  simp only [A017576, Nat.add_sub_cancel, A017576.P10452911830156387426.a, A017576.P13536854236386471020.a, A017572, A017572.P10075396123048036539.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017576

/-! ## A017576.P7502949440913859984

`A017570(n)²²`
-/

namespace A017576.P7502949440913859984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017570 n ^ 2) ^ 2

end

end A017576.P7502949440913859984

namespace A017576

/-- `A017570(n)²²` -/
def P7502949440913859984.Spec : Prop :=
  ∀ n, P7502949440913859984.a n = A017576 n

theorem P7502949440913859984.correct : P7502949440913859984.Spec := by
  intro n
  simp only [A017576, Nat.add_sub_cancel, A017576.P7502949440913859984.a, A017576.P13536854236386471020.a, A017570, A017570.P8593875747358616596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017576

/-! ## A017576.P9849761637332933809

`A017569(n)²²²`
-/

namespace A017576.P9849761637332933809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017569 n ^ 2) ^ 2) ^ 2

end

end A017576.P9849761637332933809

namespace A017576

/-- `A017569(n)²²²` -/
def P9849761637332933809.Spec : Prop :=
  ∀ n, P9849761637332933809.a n = A017576 n

theorem P9849761637332933809.correct : P9849761637332933809.Spec := by
  intro n
  simp only [A017576, Nat.add_sub_cancel, A017576.P9849761637332933809.a, A017576.P13536854236386471020.a, A017569, A017569.P14340039372117997380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017576

/-! ## A017576.P5528084439254581740

`(A017557(n)+1)²²²`
-/

namespace A017576.P5528084439254581740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017557 n + 1) ^ 2) ^ 2) ^ 2

end

end A017576.P5528084439254581740

namespace A017576

/-- `(A017557(n)+1)²²²` -/
def P5528084439254581740.Spec : Prop :=
  ∀ n, P5528084439254581740.a n = A017576 n

theorem P5528084439254581740.correct : P5528084439254581740.Spec := by
  intro n
  simp only [A017576, Nat.add_sub_cancel, A017576.P5528084439254581740.a, A017576.P13536854236386471020.a, A017557, A017557.P7719209615978230604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017576

/-! ## A017576.P11182444140019590004

`(A017545(n)+2)²²²`
-/

namespace A017576.P11182444140019590004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017545 n + 2) ^ 2) ^ 2) ^ 2

end

end A017576.P11182444140019590004

namespace A017576

/-- `(A017545(n)+2)²²²` -/
def P11182444140019590004.Spec : Prop :=
  ∀ n, P11182444140019590004.a n = A017576 n

theorem P11182444140019590004.correct : P11182444140019590004.Spec := by
  intro n
  simp only [A017576, Nat.add_sub_cancel, A017576.P11182444140019590004.a, A017576.P13536854236386471020.a, A017545, A017545.P14965093399951293214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017576

/-! ## A017576.P4863353913449965517

`(1-A017581(n))²²²`
-/

namespace A017576.P4863353913449965517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017581 n) ^ 2) ^ 2) ^ 2

end

end A017576.P4863353913449965517

namespace A017576

/-- `(1-A017581(n))²²²` -/
def P4863353913449965517.Spec : Prop :=
  ∀ n, P4863353913449965517.a n = A017576 n

theorem P4863353913449965517.correct : P4863353913449965517.Spec := by
  intro n
  simp only [A017576, Nat.add_sub_cancel, A017576.P4863353913449965517.a, A017576.P13536854236386471020.a, A017581, A017581.P8854877261644846518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017576

/-! ## A017576.P18178269569640333340

`(2-A017593(n))²²²`
-/

namespace A017576.P18178269569640333340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017593 n) ^ 2) ^ 2) ^ 2

end

end A017576.P18178269569640333340

namespace A017576

/-- `(2-A017593(n))²²²` -/
def P18178269569640333340.Spec : Prop :=
  ∀ n, P18178269569640333340.a n = A017576 n

theorem P18178269569640333340.correct : P18178269569640333340.Spec := by
  intro n
  simp only [A017576, Nat.add_sub_cancel, A017576.P18178269569640333340.a, A017576.P13536854236386471020.a, A017593, A017593.P13091213750843470751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017576

/-! ## A017576.P10389336965089552981

`(2*A016933(n))²²²`
-/

namespace A017576.P10389336965089552981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * A016933 n) ^ 2) ^ 2) ^ 2

end

end A017576.P10389336965089552981

namespace A017576

/-- `(2*A016933(n))²²²` -/
def P10389336965089552981.Spec : Prop :=
  ∀ n, P10389336965089552981.a n = A017576 n

theorem P10389336965089552981.correct : P10389336965089552981.Spec := by
  intro n
  simp only [A017576, Nat.add_sub_cancel, A017576.P10389336965089552981.a, A017576.P13536854236386471020.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017576

/-! ## A017576.P6338485920063022780

`(4-A017617(n))²²²`
-/

namespace A017576.P6338485920063022780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((4 - A017617 n) ^ 2) ^ 2) ^ 2

end

end A017576.P6338485920063022780

namespace A017576

/-- `(4-A017617(n))²²²` -/
def P6338485920063022780.Spec : Prop :=
  ∀ n, P6338485920063022780.a n = A017576 n

theorem P6338485920063022780.correct : P6338485920063022780.Spec := by
  intro n
  simp only [A017576, Nat.add_sub_cancel, A017576.P6338485920063022780.a, A017576.P13536854236386471020.a, A017617, A017617.P15573883131522867575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017576

/-! ## A017576.P11311205307297809511

`(A017437(n)+n)²²²`
-/

namespace A017576.P11311205307297809511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017437 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017576.P11311205307297809511

namespace A017576

/-- `(A017437(n)+n)²²²` -/
def P11311205307297809511.Spec : Prop :=
  ∀ n, P11311205307297809511.a n = A017576 n

theorem P11311205307297809511.correct : P11311205307297809511.Spec := by
  intro n
  simp only [A017576, Nat.add_sub_cancel, A017576.P11311205307297809511.a, A017576.P13536854236386471020.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017576

/-! ## A017576.P6673377099711726290

`(n-A127547(n))²²²`
-/

namespace A017576.P6673377099711726290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A127547 n) ^ 2) ^ 2) ^ 2

end

end A017576.P6673377099711726290

namespace A017576

/-- `(n-A127547(n))²²²` -/
def P6673377099711726290.Spec : Prop :=
  ∀ n, P6673377099711726290.a n = A017576 n

theorem P6673377099711726290.correct : P6673377099711726290.Spec := by
  intro n
  simp only [A017576, Nat.add_sub_cancel, A017576.P6673377099711726290.a, A017576.P13536854236386471020.a, A127547, A127547.P10889722998451657340.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017576

/-! ## A017576.P3282501254672236636

`A017569(n)*A017575(n)`
-/

namespace A017576.P3282501254672236636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n * A017575 n

end

end A017576.P3282501254672236636

namespace A017576

/-- `A017569(n)*A017575(n)` -/
def P3282501254672236636.Spec : Prop :=
  ∀ n, P3282501254672236636.a n = A017576 n

theorem P3282501254672236636.correct : P3282501254672236636.Spec := by
  intro n
  simp only [A017576, Nat.add_sub_cancel, A017576.P3282501254672236636.a, A017576.P13536854236386471020.a, A017569, A017569.P14340039372117997380.a, A017575, A017575.P12807976386254187303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017576

/-! ## A017576.P6453847450482308989

`A017570(n)*A017574(n)`
-/

namespace A017576.P6453847450482308989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017570 n * A017574 n

end

end A017576.P6453847450482308989

namespace A017576

/-- `A017570(n)*A017574(n)` -/
def P6453847450482308989.Spec : Prop :=
  ∀ n, P6453847450482308989.a n = A017576 n

theorem P6453847450482308989.correct : P6453847450482308989.Spec := by
  intro n
  simp only [A017576, Nat.add_sub_cancel, A017576.P6453847450482308989.a, A017576.P13536854236386471020.a, A017570, A017570.P8593875747358616596.a, A017574, A017574.P7333778575249703300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017576

/-! ## A017576.P13924959747881233504

`A017571(n)*A017573(n)`
-/

namespace A017576.P13924959747881233504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017571 n * A017573 n

end

end A017576.P13924959747881233504

namespace A017576

/-- `A017571(n)*A017573(n)` -/
def P13924959747881233504.Spec : Prop :=
  ∀ n, P13924959747881233504.a n = A017576 n

theorem P13924959747881233504.correct : P13924959747881233504.Spec := by
  intro n
  simp only [A017576, Nat.add_sub_cancel, A017576.P13924959747881233504.a, A017576.P13536854236386471020.a, A017571, A017571.P17779126235710720224.a, A017573, A017573.P15855649599427515520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017576

/-! ## A017576.P15600491980409344752

`A017577(n)/A017569(n)`
-/

namespace A017576.P15600491980409344752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017577 n : ℚ) / (A017569 n : ℚ)

end

end A017576.P15600491980409344752

namespace A017576

/-- `A017577(n)/A017569(n)` -/
def P15600491980409344752.Spec : Prop :=
  ∀ n, P15600491980409344752.a n = (A017576 n : ℚ)

end A017576

/-! ## A017576.P12290555688413503379

`Δ[A033579(n)]²²²`
-/

namespace A017576.P12290555688413503379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017576.P12290555688413503379

namespace A017576

/-- `Δ[A033579(n)]²²²` -/
def P12290555688413503379.Spec : Prop :=
  ∀ n, P12290555688413503379.a n = A017576 n

theorem P12290555688413503379.correct : P12290555688413503379.Spec := by
  intro n
  simp only [A017576, Nat.add_sub_cancel, A017576.P12290555688413503379.f1, A017576.P12290555688413503379.a, A017576.P13536854236386471020.a, A033579, A033579.P8592719016639374159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017576

/-! ## A017576.P9868046214467255696

`A166304(2*n)²²²`
-/

namespace A017576.P9868046214467255696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A166304 (2 * n) ^ 2) ^ 2) ^ 2

end

end A017576.P9868046214467255696

namespace A017576

/-- `A166304(2*n)²²²` -/
def P9868046214467255696.Spec : Prop :=
  ∀ n, P9868046214467255696.a n = A017576 n

end A017576

/-! ## A017576.P15162065139401386606

`A016964(2*n)`
-/

namespace A017576.P15162065139401386606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016964 (2 * n)

end

end A017576.P15162065139401386606

namespace A017576

/-- `A016964(2*n)` -/
def P15162065139401386606.Spec : Prop :=
  ∀ n, P15162065139401386606.a n = A017576 n

theorem P15162065139401386606.correct : P15162065139401386606.Spec := by
  intro n
  simp only [A017576, Nat.add_sub_cancel, A017576.P15162065139401386606.a, A017576.P13536854236386471020.a, A016964, A016964.P4405314615304342496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017576

/-! ## A017576.P11958748344932963847

`A016960(2*n)²`
-/

namespace A017576.P11958748344932963847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016960 (2 * n) ^ 2

end

end A017576.P11958748344932963847

namespace A017576

/-- `A016960(2*n)²` -/
def P11958748344932963847.Spec : Prop :=
  ∀ n, P11958748344932963847.a n = A017576 n

theorem P11958748344932963847.correct : P11958748344932963847.Spec := by
  intro n
  simp only [A017576, Nat.add_sub_cancel, A017576.P11958748344932963847.a, A017576.P13536854236386471020.a, A016960, A016960.P14442042451729592915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017576

/-!
# A017577: a(n) = (12*n + 4)^9.

The programs for A017577, the canonical program `A017577.P5568529476745005980` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017577 has offset 0).

The definition of A017577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+4)^9` (program `A017577.P5568529476745005980`, by `A017577.P5568529476745005980.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017577.P5568529476745005980

`(12*n+4)^9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017577

/-- `(12*n+4)^9` -/
def P5568529476745005980.Spec : Prop :=
  ∀ n, (P5568529476745005980.a n : ℤ) = A017577 n

theorem P5568529476745005980.correct : P5568529476745005980.Spec := by
  intro n
  simp only [A017577]

end A017577

/-! ## A017577.P15138943138056353583

`A017571(n)*A017574(n)`
-/

namespace A017577.P15138943138056353583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017571 n * A017574 n

end

end A017577.P15138943138056353583

namespace A017577

/-- `A017571(n)*A017574(n)` -/
def P15138943138056353583.Spec : Prop :=
  ∀ n, P15138943138056353583.a n = A017577 n

theorem P15138943138056353583.correct : P15138943138056353583.Spec := by
  intro n
  simp only [A017577, Nat.add_sub_cancel, A017577.P15138943138056353583.a, A017577.P5568529476745005980.a, A017571, A017571.P17779126235710720224.a, A017574, A017574.P7333778575249703300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017577

/-! ## A017577.P7522265419303036512

`A017572(n)*A017573(n)`
-/

namespace A017577.P7522265419303036512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017572 n * A017573 n

end

end A017577.P7522265419303036512

namespace A017577

/-- `A017572(n)*A017573(n)` -/
def P7522265419303036512.Spec : Prop :=
  ∀ n, P7522265419303036512.a n = A017577 n

theorem P7522265419303036512.correct : P7522265419303036512.Spec := by
  intro n
  simp only [A017577, Nat.add_sub_cancel, A017577.P7522265419303036512.a, A017577.P5568529476745005980.a, A017572, A017572.P10075396123048036539.a, A017573, A017573.P15855649599427515520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017577

/-! ## A017577.P6029159316404281597

`A016965(2*n)`
-/

namespace A017577.P6029159316404281597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016965 (2 * n)

end

end A017577.P6029159316404281597

namespace A017577

/-- `A016965(2*n)` -/
def P6029159316404281597.Spec : Prop :=
  ∀ n, P6029159316404281597.a n = A017577 n

theorem P6029159316404281597.correct : P6029159316404281597.Spec := by
  intro n
  simp only [A017577, Nat.add_sub_cancel, A017577.P6029159316404281597.a, A017577.P5568529476745005980.a, A016965, A016965.P1751004118298795959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017577

/-! ## A017577.P10958270797759877174

`A016959(2*n)*A016962(2*n)`
-/

namespace A017577.P10958270797759877174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016959 (2 * n) * A016962 (2 * n)

end

end A017577.P10958270797759877174

namespace A017577

/-- `A016959(2*n)*A016962(2*n)` -/
def P10958270797759877174.Spec : Prop :=
  ∀ n, P10958270797759877174.a n = A017577 n

theorem P10958270797759877174.correct : P10958270797759877174.Spec := by
  intro n
  simp only [A017577, Nat.add_sub_cancel, A017577.P10958270797759877174.a, A017577.P5568529476745005980.a, A016959, A016959.P14858127207788600241.a, A016962, A016962.P16474642828663356160.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017577

/-! ## A017577.P8464656239330090379

`A016809(3*n+1)`
-/

namespace A017577.P8464656239330090379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016809 (3 * n + 1)

end

end A017577.P8464656239330090379

namespace A017577

/-- `A016809(3*n+1)` -/
def P8464656239330090379.Spec : Prop :=
  ∀ n, P8464656239330090379.a n = A017577 n

theorem P8464656239330090379.correct : P8464656239330090379.Spec := by
  intro n
  simp only [A017577, Nat.add_sub_cancel, A017577.P8464656239330090379.a, A017577.P5568529476745005980.a, A016809, A016809.P17782412585984742465.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017577

/-! ## A017577.P14220513563070467363

`A016785(A016777(n)+n)`
-/

namespace A017577.P14220513563070467363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016785 (A016777 n + (n : ℤ)).toNat

end

end A017577.P14220513563070467363

namespace A017577

/-- `A016785(A016777(n)+n)` -/
def P14220513563070467363.Spec : Prop :=
  ∀ n, P14220513563070467363.a n = A017577 n

end A017577

/-! ## A017577.P194431501308165419

`A016749(A016945(n)-1)`
-/

namespace A017577.P194431501308165419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016749 (A016945 n - 1).toNat

end

end A017577.P194431501308165419

namespace A017577

/-- `A016749(A016945(n)-1)` -/
def P194431501308165419.Spec : Prop :=
  ∀ n, P194431501308165419.a n = A017577 n

end A017577

/-! ## A017577.P11121623401919952594

`A001017(A017569(n))`
-/

namespace A017577.P11121623401919952594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017569 n).toNat

end

end A017577.P11121623401919952594

namespace A017577

/-- `A001017(A017569(n))` -/
def P11121623401919952594.Spec : Prop :=
  ∀ n, P11121623401919952594.a n = A017577 n

end A017577

/-!
# A017578: a(n) = (12*n + 4)^10.

The programs for A017578, the canonical program `A017578.P15039132430599034551` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017578 has offset 0).

The definition of A017578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017578.P15039132430599034551

`A017570(n)^5`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017578

/-- `A017570(n)^5` -/
def P15039132430599034551.Spec : Prop :=
  ∀ n, P15039132430599034551.a n = A017578 n

theorem P15039132430599034551.correct : P15039132430599034551.Spec := by
  intro n
  simp only [A017578]

end A017578

/-! ## A017578.P2226719279900253584

`(A017569(n)^5)²`
-/

namespace A017578.P2226719279900253584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017569 n ^ 5) ^ 2

end

end A017578.P2226719279900253584

namespace A017578

/-- `(A017569(n)^5)²` -/
def P2226719279900253584.Spec : Prop :=
  ∀ n, P2226719279900253584.a n = A017578 n

theorem P2226719279900253584.correct : P2226719279900253584.Spec := by
  intro n
  simp only [A017578, Nat.add_sub_cancel, A017578.P2226719279900253584.a, A017578.P15039132430599034551.a, A017569, A017569.P14340039372117997380.a, A017570, A017570.P8593875747358616596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017578

/-! ## A017578.P8813878805100850784

`A092259(A005408(n))^10`
-/

namespace A017578.P8813878805100850784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092259 (A005408 n).toNat ^ 10

end

end A017578.P8813878805100850784

namespace A017578

/-- `A092259(A005408(n))^10` -/
def P8813878805100850784.Spec : Prop :=
  ∀ n, P8813878805100850784.a n = A017578 n

end A017578

/-! ## A017578.P17690345917191091982

`A008586(A016777(n))^10`
-/

namespace A017578.P17690345917191091982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A016777 n).toNat ^ 10

end

end A017578.P17690345917191091982

namespace A017578

/-- `A008586(A016777(n))^10` -/
def P17690345917191091982.Spec : Prop :=
  ∀ n, P17690345917191091982.a n = A017578 n

end A017578

/-! ## A017578.P4841875509161311840

`A047235(A016825(n))^10`
-/

namespace A017578.P4841875509161311840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (A016825 n).toNat ^ 10

end

end A017578.P4841875509161311840

namespace A017578

/-- `A047235(A016825(n))^10` -/
def P4841875509161311840.Spec : Prop :=
  ∀ n, P4841875509161311840.a n = A017578 n

end A017578

/-! ## A017578.P6853036954923281594

`A008454(A016945(2*n)+1)`
-/

namespace A017578.P6853036954923281594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016945 (2 * n) + 1).toNat

end

end A017578.P6853036954923281594

namespace A017578

/-- `A008454(A016945(2*n)+1)` -/
def P6853036954923281594.Spec : Prop :=
  ∀ n, P6853036954923281594.a n = A017578 n

end A017578

/-!
# A017579: a(n) = (12*n + 4)^11.

The programs for A017579, the canonical program `A017579.P9533638682460359876` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017579 has offset 0).

The definition of A017579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017579.P9533638682460359876

`A017569(n)^11`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017579

/-- `A017569(n)^11` -/
def P9533638682460359876.Spec : Prop :=
  ∀ n, P9533638682460359876.a n = A017579 n

theorem P9533638682460359876.correct : P9533638682460359876.Spec := by
  intro n
  simp only [A017579]

end A017579

/-! ## A017579.P7030283270492539665

`A092259(A005408(n))^11`
-/

namespace A017579.P7030283270492539665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092259 (A005408 n).toNat ^ 11

end

end A017579.P7030283270492539665

namespace A017579

/-- `A092259(A005408(n))^11` -/
def P7030283270492539665.Spec : Prop :=
  ∀ n, P7030283270492539665.a n = A017579 n

end A017579

/-! ## A017579.P16896936860911485625

`A008586(A016777(n))^11`
-/

namespace A017579.P16896936860911485625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A016777 n).toNat ^ 11

end

end A017579.P16896936860911485625

namespace A017579

/-- `A008586(A016777(n))^11` -/
def P16896936860911485625.Spec : Prop :=
  ∀ n, P16896936860911485625.a n = A017579 n

end A017579

/-! ## A017579.P5207344913565950794

`A047235(A016825(n))^11`
-/

namespace A017579.P5207344913565950794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (A016825 n).toNat ^ 11

end

end A017579.P5207344913565950794

namespace A017579

/-- `A047235(A016825(n))^11` -/
def P5207344913565950794.Spec : Prop :=
  ∀ n, P5207344913565950794.a n = A017579 n

end A017579

/-! ## A017579.P18317521216243036793

`A047513(A017209(n))^11`
-/

namespace A017579.P18317521216243036793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (A017209 n).toNat ^ 11

end

end A017579.P18317521216243036793

namespace A017579

/-- `A047513(A017209(n))^11` -/
def P18317521216243036793.Spec : Prop :=
  ∀ n, P18317521216243036793.a n = A017579 n

end A017579

/-!
# A017580: a(n) = (12*n + 4)^12.

The programs for A017580, the canonical program `A017580.P4236672665686554214` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017580 has offset 0).

The definition of A017580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017580.P4236672665686554214

`A017574(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017580

/-- `A017574(n)²` -/
def P4236672665686554214.Spec : Prop :=
  ∀ n, P4236672665686554214.a n = A017580 n

theorem P4236672665686554214.correct : P4236672665686554214.Spec := by
  intro n
  simp only [A017580]

end A017580

/-! ## A017580.P15063679104239468446

`A017572(n)^3`
-/

namespace A017580.P15063679104239468446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017572 n ^ 3

end

end A017580.P15063679104239468446

namespace A017580

/-- `A017572(n)^3` -/
def P15063679104239468446.Spec : Prop :=
  ∀ n, P15063679104239468446.a n = A017580 n

theorem P15063679104239468446.correct : P15063679104239468446.Spec := by
  intro n
  simp only [A017580, Nat.add_sub_cancel, A017580.P15063679104239468446.a, A017580.P4236672665686554214.a, A017572, A017572.P10075396123048036539.a, A017574, A017574.P7333778575249703300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017580

/-! ## A017580.P11091735953377981545

`A017571(n)^4`
-/

namespace A017580.P11091735953377981545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017571 n ^ 4

end

end A017580.P11091735953377981545

namespace A017580

/-- `A017571(n)^4` -/
def P11091735953377981545.Spec : Prop :=
  ∀ n, P11091735953377981545.a n = A017580 n

theorem P11091735953377981545.correct : P11091735953377981545.Spec := by
  intro n
  simp only [A017580, Nat.add_sub_cancel, A017580.P11091735953377981545.a, A017580.P4236672665686554214.a, A017571, A017571.P17779126235710720224.a, A017574, A017574.P7333778575249703300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017580

/-! ## A017580.P6274910407449043285

`A017570(n)^6`
-/

namespace A017580.P6274910407449043285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017570 n ^ 6

end

end A017580.P6274910407449043285

namespace A017580

/-- `A017570(n)^6` -/
def P6274910407449043285.Spec : Prop :=
  ∀ n, P6274910407449043285.a n = A017580 n

theorem P6274910407449043285.correct : P6274910407449043285.Spec := by
  intro n
  simp only [A017580, Nat.add_sub_cancel, A017580.P6274910407449043285.a, A017580.P4236672665686554214.a, A017570, A017570.P8593875747358616596.a, A017574, A017574.P7333778575249703300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017580

/-! ## A017580.P13996994326451599095

`A000578(A016957(2*n))²²`
-/

namespace A017580.P13996994326451599095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016957 (2 * n)).toNat ^ 2) ^ 2

end

end A017580.P13996994326451599095

namespace A017580

/-- `A000578(A016957(2*n))²²` -/
def P13996994326451599095.Spec : Prop :=
  ∀ n, P13996994326451599095.a n = A017580 n

end A017580

/-!
# A017581: a(n) = 12*n + 5.

The programs for A017581, the canonical program `A017581.P8854877261644846518` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017581 has offset 0).

The definition of A017581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n+5` (program `A017581.P8854877261644846518`, by `A017581.P8854877261644846518.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017581.P8854877261644846518

`12*n+5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017581

/-- `12*n+5` -/
def P8854877261644846518.Spec : Prop :=
  ∀ n, (P8854877261644846518.a n : ℤ) = A017581 n

theorem P8854877261644846518.correct : P8854877261644846518.Spec := by
  intro n
  simp only [A017581]

end A017581

/-!
# A017582: a(n) = (12*n + 5)^2.

The programs for A017582, the canonical program `A017582.P1428421118661891129` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017582 has offset 0).

The definition of A017582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+5)²` (program `A017582.P1428421118661891129`, by `A017582.P1428421118661891129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017582.P1428421118661891129

`(12*n+5)²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017582

/-- `(12*n+5)²` -/
def P1428421118661891129.Spec : Prop :=
  ∀ n, (P1428421118661891129.a n : ℤ) = A017582 n

theorem P1428421118661891129.correct : P1428421118661891129.Spec := by
  intro n
  simp only [A017582]

end A017582

/-! ## A017582.P14655239758186463588

`ogf((25+214x+49x^2)/(1-3x+3x^2-x^3))`
-/

namespace A017582.P14655239758186463588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [25, 214, 49] [1, -3, 3, -1] n

end

end A017582.P14655239758186463588

namespace A017582

/-- `ogf((25+214x+49x^2)/(1-3x+3x^2-x^3))` -/
def P14655239758186463588.Spec : Prop :=
  ∀ n, P14655239758186463588.a n = A017582 n

end A017582

/-! ## A017582.P6906578129207836567

`or(1, 12*n+4)^2`
-/

namespace A017582.P6906578129207836567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (12 * n + 4) ^ 2

end

end A017582.P6906578129207836567

namespace A017582

/-- `or(1, 12*n+4)^2` -/
def P6906578129207836567.Spec : Prop :=
  ∀ n, (P6906578129207836567.a n : ℤ) = A017582 n

end A017582

/-! ## A017582.P7701781448958607680

`xor(1, 12*n+4)^2`
-/

namespace A017582.P7701781448958607680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (12 * n + 4) ^ 2

end

end A017582.P7701781448958607680

namespace A017582

/-- `xor(1, 12*n+4)^2` -/
def P7701781448958607680.Spec : Prop :=
  ∀ n, (P7701781448958607680.a n : ℤ) = A017582 n

end A017582

/-! ## A017582.P10078377977724752204

`record[(1-6*xor(1, n))²]`
-/

namespace A017582.P10078377977724752204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (6 * Nat.xor 1 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017582.P10078377977724752204

namespace A017582

/-- `record[(1-6*xor(1, n))²]` -/
def P10078377977724752204.Spec : Prop :=
  ∀ n, P10078377977724752204.a n = A017582 n

end A017582

/-! ## A017582.P3399061892089218542

`record[xor(3, 6*xor(1, n))²]`
-/

namespace A017582.P3399061892089218542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (6 * Nat.xor 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017582.P3399061892089218542

namespace A017582

/-- `record[xor(3, 6*xor(1, n))²]` -/
def P3399061892089218542.Spec : Prop :=
  ∀ n, (P3399061892089218542.a n : ℤ) = A017582 n

end A017582

/-! ## A017582.P6597026159295514928

`Δ[C(6*n, 2)/3]^2`
-/

namespace A017582.P6597026159295514928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (6 * n) 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A017582.P6597026159295514928

namespace A017582

/-- `Δ[C(6*n, 2)/3]^2` -/
def P6597026159295514928.Spec : Prop :=
  ∀ n, P6597026159295514928.a n = (A017582 n : ℚ)

theorem P6597026159295514928.correct : P6597026159295514928.Spec := by
  intro n
  simp only [A017582, Nat.add_sub_cancel, A017582.P6597026159295514928.f1, A017582.P6597026159295514928.a, A017582.P1428421118661891129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017582

/-! ## A017582.P14623303186798181870

`(3*or(3, 4*n)-4)^2`
-/

namespace A017582.P14623303186798181870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.lor 3 (4 * n) : ℤ) - 4) ^ 2

end

end A017582.P14623303186798181870

namespace A017582

/-- `(3*or(3, 4*n)-4)^2` -/
def P14623303186798181870.Spec : Prop :=
  ∀ n, P14623303186798181870.a n = A017582 n

end A017582

/-! ## A017582.P6053818617425630924

`sqrt(A017584(n))`
-/

namespace A017582.P6053818617425630924
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017584 n : ℝ)

end

end A017582.P6053818617425630924

namespace A017582

/-- `sqrt(A017584(n))` -/
def P6053818617425630924.Spec : Prop :=
  ∀ n, P6053818617425630924.a n = (A017582 n : ℝ)

end A017582

/-! ## A017582.P6823898125721200852

`sqrt(sqrt(A017588(n)))`
-/

namespace A017582.P6823898125721200852
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017588 n : ℝ))

end

end A017582.P6823898125721200852

namespace A017582

/-- `sqrt(sqrt(A017588(n)))` -/
def P6823898125721200852.Spec : Prop :=
  ∀ n, P6823898125721200852.a n = (A017582 n : ℝ)

end A017582

/-! ## A017582.P13445692178117974930

`A017586(n)^(1/3)`
-/

namespace A017582.P13445692178117974930
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017586 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017582.P13445692178117974930

namespace A017582

/-- `A017586(n)^(1/3)` -/
def P13445692178117974930.Spec : Prop :=
  ∀ n, P13445692178117974930.a n = (A017582 n : ℝ)

end A017582

/-! ## A017582.P15851273533217551798

`A017583(n)^(2/3)`
-/

namespace A017582.P15851273533217551798
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017583 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017582.P15851273533217551798

namespace A017582

/-- `A017583(n)^(2/3)` -/
def P15851273533217551798.Spec : Prop :=
  ∀ n, P15851273533217551798.a n = (A017582 n : ℝ)

end A017582

/-! ## A017582.P17707105762774218072

`12*(4*n+2)*A016777(n)+1`
-/

namespace A017582.P17707105762774218072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * ((4 * n + 2 : ℤ) * A016777 n) + 1

end

end A017582.P17707105762774218072

namespace A017582

/-- `12*(4*n+2)*A016777(n)+1` -/
def P17707105762774218072.Spec : Prop :=
  ∀ n, P17707105762774218072.a n = A017582 n

theorem P17707105762774218072.correct : P17707105762774218072.Spec := by
  intro n
  simp only [A017582, Nat.add_sub_cancel, A017582.P17707105762774218072.a, A017582.P1428421118661891129.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017582

/-! ## A017582.P16230880894914000057

`A156640(n)-A016874(n)`
-/

namespace A017582.P16230880894914000057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156640 n - A016874 n

end

end A017582.P16230880894914000057

namespace A017582

/-- `A156640(n)-A016874(n)` -/
def P16230880894914000057.Spec : Prop :=
  ∀ n, P16230880894914000057.a n = A017582 n

theorem P16230880894914000057.correct : P16230880894914000057.Spec := by
  intro n
  simp only [A017582, Nat.add_sub_cancel, A017582.P16230880894914000057.a, A017582.P1428421118661891129.a, A016874, A016874.P17500456718272948104.a, A156640, A156640.P14011691115004335223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017582

/-! ## A017582.P9896437480597336513

`A017594(n)-A348845(n)`
-/

namespace A017582.P9896437480597336513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017594 n - A348845 n

end

end A017582.P9896437480597336513

namespace A017582

/-- `A017594(n)-A348845(n)` -/
def P9896437480597336513.Spec : Prop :=
  ∀ n, P9896437480597336513.a n = A017582 n

theorem P9896437480597336513.correct : P9896437480597336513.Spec := by
  intro n
  simp only [A017582, Nat.add_sub_cancel, A017582.P9896437480597336513.a, A017582.P1428421118661891129.a, A017594, A017594.P9971712820933043582.a, A348845, A348845.P252903479349709988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017582

/-! ## A017582.P10298238711343839376

`A017581(n)*A017581(n)`
-/

namespace A017582.P10298238711343839376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n * A017581 n

end

end A017582.P10298238711343839376

namespace A017582

/-- `A017581(n)*A017581(n)` -/
def P10298238711343839376.Spec : Prop :=
  ∀ n, P10298238711343839376.a n = A017582 n

theorem P10298238711343839376.correct : P10298238711343839376.Spec := by
  intro n
  simp only [A017582, Nat.add_sub_cancel, A017582.P10298238711343839376.a, A017582.P1428421118661891129.a, A017581, A017581.P8854877261644846518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017582

/-! ## A017582.P2230411092264567694

`A017583(n)/A017581(n)`
-/

namespace A017582.P2230411092264567694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017583 n : ℚ) / (A017581 n : ℚ)

end

end A017582.P2230411092264567694

namespace A017582

/-- `A017583(n)/A017581(n)` -/
def P2230411092264567694.Spec : Prop :=
  ∀ n, P2230411092264567694.a n = (A017582 n : ℚ)

end A017582

/-! ## A017582.P3381841495828698725

`A017585(n)/A017583(n)`
-/

namespace A017582.P3381841495828698725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017585 n : ℚ) / (A017583 n : ℚ)

end

end A017582.P3381841495828698725

namespace A017582

/-- `A017585(n)/A017583(n)` -/
def P3381841495828698725.Spec : Prop :=
  ∀ n, P3381841495828698725.a n = (A017582 n : ℚ)

end A017582

/-! ## A017582.P14176562482535310561

`A017586(n)/A017584(n)`
-/

namespace A017582.P14176562482535310561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017586 n : ℚ) / (A017584 n : ℚ)

end

end A017582.P14176562482535310561

namespace A017582

/-- `A017586(n)/A017584(n)` -/
def P14176562482535310561.Spec : Prop :=
  ∀ n, P14176562482535310561.a n = (A017582 n : ℚ)

end A017582

/-! ## A017582.P6780960740626140043

`A017583(n)²/A017584(n)`
-/

namespace A017582.P6780960740626140043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017583 n ^ 2 : ℚ) / (A017584 n : ℚ)

end

end A017582.P6780960740626140043

namespace A017582

/-- `A017583(n)²/A017584(n)` -/
def P6780960740626140043.Spec : Prop :=
  ∀ n, P6780960740626140043.a n = (A017582 n : ℚ)

end A017582

/-!
# A017583: a(n) = (12*n + 5)^3.

The programs for A017583, the canonical program `A017583.P9859367136420472610` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017583 has offset 0).

The definition of A017583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+5)^3` (program `A017583.P9859367136420472610`, by `A017583.P9859367136420472610.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017583.P9859367136420472610

`(12*n+5)^3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017583

/-- `(12*n+5)^3` -/
def P9859367136420472610.Spec : Prop :=
  ∀ n, (P9859367136420472610.a n : ℤ) = A017583 n

theorem P9859367136420472610.correct : P9859367136420472610.Spec := by
  intro n
  simp only [A017583]

end A017583

/-! ## A017583.P9291133326199053714

`record[xor(3, 6*xor(1, n))^3]`
-/

namespace A017583.P9291133326199053714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (6 * Nat.xor 1 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017583.P9291133326199053714

namespace A017583

/-- `record[xor(3, 6*xor(1, n))^3]` -/
def P9291133326199053714.Spec : Prop :=
  ∀ n, (P9291133326199053714.a n : ℤ) = A017583 n

end A017583

/-! ## A017583.P15000265668160761148

`or(1, 12*n+4)²*or(1, 12*n+4)`
-/

namespace A017583.P15000265668160761148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (12 * n + 4) ^ 2 * Nat.lor 1 (12 * n + 4)

end

end A017583.P15000265668160761148

namespace A017583

/-- `or(1, 12*n+4)²*or(1, 12*n+4)` -/
def P15000265668160761148.Spec : Prop :=
  ∀ n, (P15000265668160761148.a n : ℤ) = A017583 n

end A017583

/-! ## A017583.P15153533678033751177

`xor(1, 12*n+4)²*xor(1, 12*n+4)`
-/

namespace A017583.P15153533678033751177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (12 * n + 4) ^ 2 * Nat.xor 1 (12 * n + 4)

end

end A017583.P15153533678033751177

namespace A017583

/-- `xor(1, 12*n+4)²*xor(1, 12*n+4)` -/
def P15153533678033751177.Spec : Prop :=
  ∀ n, (P15153533678033751177.a n : ℤ) = A017583 n

end A017583

/-! ## A017583.P12566408518513146314

`sqrt(A017586(n))`
-/

namespace A017583.P12566408518513146314
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017586 n : ℝ)

end

end A017583.P12566408518513146314

namespace A017583

/-- `sqrt(A017586(n))` -/
def P12566408518513146314.Spec : Prop :=
  ∀ n, P12566408518513146314.a n = (A017583 n : ℝ)

end A017583

/-! ## A017583.P17859419349322456750

`sqrt(A017582(n)^3)`
-/

namespace A017583.P17859419349322456750
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017582 n ^ 3 : ℝ)

end

end A017583.P17859419349322456750

namespace A017583

/-- `sqrt(A017582(n)^3)` -/
def P17859419349322456750.Spec : Prop :=
  ∀ n, P17859419349322456750.a n = (A017583 n : ℝ)

end A017583

/-! ## A017583.P2916951765517053695

`A017581(n)*A017582(n)`
-/

namespace A017583.P2916951765517053695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n * A017582 n

end

end A017583.P2916951765517053695

namespace A017583

/-- `A017581(n)*A017582(n)` -/
def P2916951765517053695.Spec : Prop :=
  ∀ n, P2916951765517053695.a n = A017583 n

theorem P2916951765517053695.correct : P2916951765517053695.Spec := by
  intro n
  simp only [A017583, Nat.add_sub_cancel, A017583.P2916951765517053695.a, A017583.P9859367136420472610.a, A017581, A017581.P8854877261644846518.a, A017582, A017582.P1428421118661891129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017583

/-! ## A017583.P5606120323360793023

`A017584(n)/A017581(n)`
-/

namespace A017583.P5606120323360793023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017584 n : ℚ) / (A017581 n : ℚ)

end

end A017583.P5606120323360793023

namespace A017583

/-- `A017584(n)/A017581(n)` -/
def P5606120323360793023.Spec : Prop :=
  ∀ n, P5606120323360793023.a n = (A017583 n : ℚ)

end A017583

/-! ## A017583.P5650233027334906223

`A017585(n)/A017582(n)`
-/

namespace A017583.P5650233027334906223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017585 n : ℚ) / (A017582 n : ℚ)

end

end A017583.P5650233027334906223

namespace A017583

/-- `A017585(n)/A017582(n)` -/
def P5650233027334906223.Spec : Prop :=
  ∀ n, P5650233027334906223.a n = (A017583 n : ℚ)

end A017583

/-! ## A017583.P12748670107381032347

`A017585(n)/A017581(n)²`
-/

namespace A017583.P12748670107381032347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017585 n : ℚ) / (A017581 n ^ 2 : ℚ)

end

end A017583.P12748670107381032347

namespace A017583

/-- `A017585(n)/A017581(n)²` -/
def P12748670107381032347.Spec : Prop :=
  ∀ n, P12748670107381032347.a n = (A017583 n : ℚ)

end A017583

/-! ## A017583.P1257495698711826625

`A017584(n)/(A017569(n)+1)`
-/

namespace A017583.P1257495698711826625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017584 n : ℚ) / (A017569 n + 1 : ℚ)

end

end A017583.P1257495698711826625

namespace A017583

/-- `A017584(n)/(A017569(n)+1)` -/
def P1257495698711826625.Spec : Prop :=
  ∀ n, P1257495698711826625.a n = (A017583 n : ℚ)

theorem P1257495698711826625.correct : P1257495698711826625.Spec := by
  intro n
  simp only [A017583, Nat.add_sub_cancel, A017583.P1257495698711826625.a, A017583.P9859367136420472610.a, A017569, A017569.P14340039372117997380.a, A017584, A017584.P16811490781449679169.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017583

/-! ## A017583.P17380388127845108562

`(A017593(n)-1)*A017582(n)`
-/

namespace A017583.P17380388127845108562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017593 n - 1) * A017582 n

end

end A017583.P17380388127845108562

namespace A017583

/-- `(A017593(n)-1)*A017582(n)` -/
def P17380388127845108562.Spec : Prop :=
  ∀ n, P17380388127845108562.a n = A017583 n

theorem P17380388127845108562.correct : P17380388127845108562.Spec := by
  intro n
  simp only [A017583, Nat.add_sub_cancel, A017583.P17380388127845108562.a, A017583.P9859367136420472610.a, A017582, A017582.P1428421118661891129.a, A017593, A017593.P13091213750843470751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017583

/-! ## A017583.P16148393700592942738

`A017586(n)/(A017581(n)²*A017581(n))`
-/

namespace A017583.P16148393700592942738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017586 n : ℚ) / (A017581 n ^ 2 * A017581 n : ℚ)

end

end A017583.P16148393700592942738

namespace A017583

/-- `A017586(n)/(A017581(n)²*A017581(n))` -/
def P16148393700592942738.Spec : Prop :=
  ∀ n, P16148393700592942738.a n = (A017583 n : ℚ)

end A017583

/-! ## A017583.P11585367921129544685

`A017643(2*n)/8`
-/

namespace A017583.P11585367921129544685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017643 (2 * n) : ℚ) / 8

end

end A017583.P11585367921129544685

namespace A017583

/-- `A017643(2*n)/8` -/
def P11585367921129544685.Spec : Prop :=
  ∀ n, P11585367921129544685.a n = (A017583 n : ℚ)

theorem P11585367921129544685.correct : P11585367921129544685.Spec := by
  intro n
  simp only [A017583, Nat.add_sub_cancel, A017583.P11585367921129544685.a, A017583.P9859367136420472610.a, A017643, A017643.P6451620853756470988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017583

/-! ## A017583.P17222786135432457023

`A016971(2*n)`
-/

namespace A017583.P17222786135432457023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016971 (2 * n)

end

end A017583.P17222786135432457023

namespace A017583

/-- `A016971(2*n)` -/
def P17222786135432457023.Spec : Prop :=
  ∀ n, P17222786135432457023.a n = A017583 n

theorem P17222786135432457023.correct : P17222786135432457023.Spec := by
  intro n
  simp only [A017583, Nat.add_sub_cancel, A017583.P17222786135432457023.a, A017583.P9859367136420472610.a, A016971, A016971.P16829329651816979839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017583

/-! ## A017583.P16961871556795425973

`sqrt(A016974(2*n))`
-/

namespace A017583.P16961871556795425973
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016974 (2 * n) : ℝ)

end

end A017583.P16961871556795425973

namespace A017583

/-- `sqrt(A016974(2*n))` -/
def P16961871556795425973.Spec : Prop :=
  ∀ n, P16961871556795425973.a n = (A017583 n : ℝ)

end A017583

/-! ## A017583.P5621670293761345553

`A016969(2*n)*(12*n+5)²`
-/

namespace A017583.P5621670293761345553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (2 * n) * ((12 * n + 5) ^ 2 : ℤ)

end

end A017583.P5621670293761345553

namespace A017583

/-- `A016969(2*n)*(12*n+5)²` -/
def P5621670293761345553.Spec : Prop :=
  ∀ n, P5621670293761345553.a n = A017583 n

theorem P5621670293761345553.correct : P5621670293761345553.Spec := by
  intro n
  simp only [A017583, Nat.add_sub_cancel, A017583.P5621670293761345553.a, A017583.P9859367136420472610.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017583

/-! ## A017583.P5158139447619729758

`A016973(2*n)/(12*n+5)²`
-/

namespace A017583.P5158139447619729758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016973 (2 * n) : ℚ) / ((12 * n + 5) ^ 2 : ℚ)

end

end A017583.P5158139447619729758

namespace A017583

/-- `A016973(2*n)/(12*n+5)²` -/
def P5158139447619729758.Spec : Prop :=
  ∀ n, P5158139447619729758.a n = (A017583 n : ℚ)

theorem P5158139447619729758.correct : P5158139447619729758.Spec := by
  intro n
  simp only [A017583, Nat.add_sub_cancel, A017583.P5158139447619729758.a, A017583.P9859367136420472610.a, A016973, A016973.P651106833153438276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017583

/-! ## A017583.P11151785851101676483

`A016972(2*n)/A016969(2*n)`
-/

namespace A017583.P11151785851101676483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016972 (2 * n) : ℚ) / (A016969 (2 * n) : ℚ)

end

end A017583.P11151785851101676483

namespace A017583

/-- `A016972(2*n)/A016969(2*n)` -/
def P11151785851101676483.Spec : Prop :=
  ∀ n, P11151785851101676483.a n = (A017583 n : ℚ)

theorem P11151785851101676483.correct : P11151785851101676483.Spec := by
  intro n
  simp only [A017583, Nat.add_sub_cancel, A017583.P11151785851101676483.a, A017583.P9859367136420472610.a, A016969, A016969.P9377817521032485226.a, A016972, A016972.P18248330829088465920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017583

/-! ## A017583.P349591307290126048

`A016975(2*n)/A016972(2*n)`
-/

namespace A017583.P349591307290126048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016975 (2 * n) : ℚ) / (A016972 (2 * n) : ℚ)

end

end A017583.P349591307290126048

namespace A017583

/-- `A016975(2*n)/A016972(2*n)` -/
def P349591307290126048.Spec : Prop :=
  ∀ n, P349591307290126048.a n = (A017583 n : ℚ)

theorem P349591307290126048.correct : P349591307290126048.Spec := by
  intro n
  simp only [A017583, Nat.add_sub_cancel, A017583.P349591307290126048.a, A017583.P9859367136420472610.a, A016972, A016972.P18248330829088465920.a, A016975, A016975.P2603086275989900620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017583

/-!
# A017584: a(n) = (12*n + 5)^4.

The programs for A017584, the canonical program `A017584.P16811490781449679169` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017584 has offset 0).

The definition of A017584 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+5)^4` (program `A017584.P16811490781449679169`, by `A017584.P16811490781449679169.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017584.P16811490781449679169

`(12*n+5)^4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017584

/-- `(12*n+5)^4` -/
def P16811490781449679169.Spec : Prop :=
  ∀ n, (P16811490781449679169.a n : ℤ) = A017584 n

theorem P16811490781449679169.correct : P16811490781449679169.Spec := by
  intro n
  simp only [A017584]

end A017584

/-! ## A017584.P1402147642823802322

`or(1, 12*n+4)²²`
-/

namespace A017584.P1402147642823802322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (12 * n + 4) ^ 2) ^ 2

end

end A017584.P1402147642823802322

namespace A017584

/-- `or(1, 12*n+4)²²` -/
def P1402147642823802322.Spec : Prop :=
  ∀ n, (P1402147642823802322.a n : ℤ) = A017584 n

end A017584

/-! ## A017584.P14147289484290053390

`xor(1, 12*n+4)²²`
-/

namespace A017584.P14147289484290053390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (12 * n + 4) ^ 2) ^ 2

end

end A017584.P14147289484290053390

namespace A017584

/-- `xor(1, 12*n+4)²²` -/
def P14147289484290053390.Spec : Prop :=
  ∀ n, (P14147289484290053390.a n : ℤ) = A017584 n

end A017584

/-! ## A017584.P3383807691310716703

`record[xor(3, 6*xor(1, n))^4]`
-/

namespace A017584.P3383807691310716703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (6 * Nat.xor 1 n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017584.P3383807691310716703

namespace A017584

/-- `record[xor(3, 6*xor(1, n))^4]` -/
def P3383807691310716703.Spec : Prop :=
  ∀ n, (P3383807691310716703.a n : ℤ) = A017584 n

end A017584

/-! ## A017584.P5023630250565505387

`Δ[C(6*n, 2)/3]²²`
-/

namespace A017584.P5023630250565505387
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (6 * n) 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017584.P5023630250565505387

namespace A017584

/-- `Δ[C(6*n, 2)/3]²²` -/
def P5023630250565505387.Spec : Prop :=
  ∀ n, P5023630250565505387.a n = (A017584 n : ℚ)

theorem P5023630250565505387.correct : P5023630250565505387.Spec := by
  intro n
  simp only [A017584, Nat.add_sub_cancel, A017584.P5023630250565505387.f1, A017584.P5023630250565505387.a, A017584.P16811490781449679169.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017584

/-! ## A017584.P5201032993586358104

`(1-6*or(1, 2*n))²²`
-/

namespace A017584.P5201032993586358104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (6 * Nat.lor 1 (2 * n) : ℤ)) ^ 2) ^ 2

end

end A017584.P5201032993586358104

namespace A017584

/-- `(1-6*or(1, 2*n))²²` -/
def P5201032993586358104.Spec : Prop :=
  ∀ n, P5201032993586358104.a n = A017584 n

end A017584

/-! ## A017584.P3715895321236447225

`Δ[C(2*n, 2)+(2*n)²]²²`
-/

namespace A017584.P3715895321236447225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2 + (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017584.P3715895321236447225

namespace A017584

/-- `Δ[C(2*n, 2)+(2*n)²]²²` -/
def P3715895321236447225.Spec : Prop :=
  ∀ n, P3715895321236447225.a n = A017584 n

theorem P3715895321236447225.correct : P3715895321236447225.Spec := by
  intro n
  simp only [A017584, Nat.add_sub_cancel, A017584.P3715895321236447225.f1, A017584.P3715895321236447225.a, A017584.P16811490781449679169.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017584

/-! ## A017584.P9768697467953753041

`A017582(n)²`
-/

namespace A017584.P9768697467953753041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017582 n ^ 2

end

end A017584.P9768697467953753041

namespace A017584

/-- `A017582(n)²` -/
def P9768697467953753041.Spec : Prop :=
  ∀ n, P9768697467953753041.a n = A017584 n

theorem P9768697467953753041.correct : P9768697467953753041.Spec := by
  intro n
  simp only [A017584, Nat.add_sub_cancel, A017584.P9768697467953753041.a, A017584.P16811490781449679169.a, A017582, A017582.P1428421118661891129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017584

/-! ## A017584.P15725064224164323063

`sqrt(A017588(n))`
-/

namespace A017584.P15725064224164323063
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017588 n : ℝ)

end

end A017584.P15725064224164323063

namespace A017584

/-- `sqrt(A017588(n))` -/
def P15725064224164323063.Spec : Prop :=
  ∀ n, P15725064224164323063.a n = (A017584 n : ℝ)

end A017584

/-! ## A017584.P6064354764184159413

`A017581(n)²²`
-/

namespace A017584.P6064354764184159413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017581 n ^ 2) ^ 2

end

end A017584.P6064354764184159413

namespace A017584

/-- `A017581(n)²²` -/
def P6064354764184159413.Spec : Prop :=
  ∀ n, P6064354764184159413.a n = A017584 n

theorem P6064354764184159413.correct : P6064354764184159413.Spec := by
  intro n
  simp only [A017584, Nat.add_sub_cancel, A017584.P6064354764184159413.a, A017584.P16811490781449679169.a, A017581, A017581.P8854877261644846518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017584

/-! ## A017584.P8537723094010383883

`(A017569(n)+1)²²`
-/

namespace A017584.P8537723094010383883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017569 n + 1) ^ 2) ^ 2

end

end A017584.P8537723094010383883

namespace A017584

/-- `(A017569(n)+1)²²` -/
def P8537723094010383883.Spec : Prop :=
  ∀ n, P8537723094010383883.a n = A017584 n

theorem P8537723094010383883.correct : P8537723094010383883.Spec := by
  intro n
  simp only [A017584, Nat.add_sub_cancel, A017584.P8537723094010383883.a, A017584.P16811490781449679169.a, A017569, A017569.P14340039372117997380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017584

/-! ## A017584.P15129080384087773714

`(A017557(n)+2)²²`
-/

namespace A017584.P15129080384087773714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017557 n + 2) ^ 2) ^ 2

end

end A017584.P15129080384087773714

namespace A017584

/-- `(A017557(n)+2)²²` -/
def P15129080384087773714.Spec : Prop :=
  ∀ n, P15129080384087773714.a n = A017584 n

theorem P15129080384087773714.correct : P15129080384087773714.Spec := by
  intro n
  simp only [A017584, Nat.add_sub_cancel, A017584.P15129080384087773714.a, A017584.P16811490781449679169.a, A017557, A017557.P7719209615978230604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017584

/-! ## A017584.P11842084558647233886

`(1-A017593(n))²²`
-/

namespace A017584.P11842084558647233886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017593 n) ^ 2) ^ 2

end

end A017584.P11842084558647233886

namespace A017584

/-- `(1-A017593(n))²²` -/
def P11842084558647233886.Spec : Prop :=
  ∀ n, P11842084558647233886.a n = A017584 n

theorem P11842084558647233886.correct : P11842084558647233886.Spec := by
  intro n
  simp only [A017584, Nat.add_sub_cancel, A017584.P11842084558647233886.a, A017584.P16811490781449679169.a, A017593, A017593.P13091213750843470751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017584

/-! ## A017584.P16003462164375425600

`(A017545(n)+3)²²`
-/

namespace A017584.P16003462164375425600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017545 n + 3) ^ 2) ^ 2

end

end A017584.P16003462164375425600

namespace A017584

/-- `(A017545(n)+3)²²` -/
def P16003462164375425600.Spec : Prop :=
  ∀ n, P16003462164375425600.a n = A017584 n

theorem P16003462164375425600.correct : P16003462164375425600.Spec := by
  intro n
  simp only [A017584, Nat.add_sub_cancel, A017584.P16003462164375425600.a, A017584.P16811490781449679169.a, A017545, A017545.P14965093399951293214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017584

/-! ## A017584.P12729157666433822782

`(2-A017605(n))²²`
-/

namespace A017584.P12729157666433822782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017605 n) ^ 2) ^ 2

end

end A017584.P12729157666433822782

namespace A017584

/-- `(2-A017605(n))²²` -/
def P12729157666433822782.Spec : Prop :=
  ∀ n, P12729157666433822782.a n = A017584 n

theorem P12729157666433822782.correct : P12729157666433822782.Spec := by
  intro n
  simp only [A017584, Nat.add_sub_cancel, A017584.P12729157666433822782.a, A017584.P16811490781449679169.a, A017605, A017605.P12903970419572684084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017584

/-! ## A017584.P6667339831899459895

`(3-A017617(n))²²`
-/

namespace A017584.P6667339831899459895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017617 n) ^ 2) ^ 2

end

end A017584.P6667339831899459895

namespace A017584

/-- `(3-A017617(n))²²` -/
def P6667339831899459895.Spec : Prop :=
  ∀ n, P6667339831899459895.a n = A017584 n

theorem P6667339831899459895.correct : P6667339831899459895.Spec := by
  intro n
  simp only [A017584, Nat.add_sub_cancel, A017584.P6667339831899459895.a, A017584.P16811490781449679169.a, A017617, A017617.P15573883131522867575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017584

/-! ## A017584.P600118748826983169

`(A017449(n)+n)²²`
-/

namespace A017584.P600118748826983169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017449 n + (n : ℤ)) ^ 2) ^ 2

end

end A017584.P600118748826983169

namespace A017584

/-- `(A017449(n)+n)²²` -/
def P600118748826983169.Spec : Prop :=
  ∀ n, P600118748826983169.a n = A017584 n

theorem P600118748826983169.correct : P600118748826983169.Spec := by
  intro n
  simp only [A017584, Nat.add_sub_cancel, A017584.P600118748826983169.a, A017584.P16811490781449679169.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017584

/-! ## A017584.P3099109176065998420

`(n-A154609(n))²²`
-/

namespace A017584.P3099109176065998420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A154609 n) ^ 2) ^ 2

end

end A017584.P3099109176065998420

namespace A017584

/-- `(n-A154609(n))²²` -/
def P3099109176065998420.Spec : Prop :=
  ∀ n, P3099109176065998420.a n = A017584 n

theorem P3099109176065998420.correct : P3099109176065998420.Spec := by
  intro n
  simp only [A017584, Nat.add_sub_cancel, A017584.P3099109176065998420.a, A017584.P16811490781449679169.a, A154609, A154609.P1978391777600562763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017584

/-! ## A017584.P11850358391252300400

`(sqrt(A017570(n))+1)²²`
-/

namespace A017584.P11850358391252300400
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017570 n : ℝ) + 1) ^ 2) ^ 2

end

end A017584.P11850358391252300400

namespace A017584

/-- `(sqrt(A017570(n))+1)²²` -/
def P11850358391252300400.Spec : Prop :=
  ∀ n, P11850358391252300400.a n = (A017584 n : ℝ)

end A017584

/-! ## A017584.P9838204053145593719

`(sqrt(A017558(n))+2)²²`
-/

namespace A017584.P9838204053145593719
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017558 n : ℝ) + 2) ^ 2) ^ 2

end

end A017584.P9838204053145593719

namespace A017584

/-- `(sqrt(A017558(n))+2)²²` -/
def P9838204053145593719.Spec : Prop :=
  ∀ n, P9838204053145593719.a n = (A017584 n : ℝ)

end A017584

/-!
# A017585: a(n) = (12*n + 5)^5.

The programs for A017585, the canonical program `A017585.P15106499126588840710` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017585 has offset 0).

The definition of A017585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+5)^5` (program `A017585.P15106499126588840710`, by `A017585.P15106499126588840710.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017585.P15106499126588840710

`(12*n+5)^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017585

/-- `(12*n+5)^5` -/
def P15106499126588840710.Spec : Prop :=
  ∀ n, (P15106499126588840710.a n : ℤ) = A017585 n

theorem P15106499126588840710.correct : P15106499126588840710.Spec := by
  intro n
  simp only [A017585]

end A017585

/-! ## A017585.P6454597457399538167

`record[xor(3, 6*xor(1, n))^5]`
-/

namespace A017585.P6454597457399538167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (6 * Nat.xor 1 n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017585.P6454597457399538167

namespace A017585

/-- `record[xor(3, 6*xor(1, n))^5]` -/
def P6454597457399538167.Spec : Prop :=
  ∀ n, (P6454597457399538167.a n : ℤ) = A017585 n

end A017585

/-! ## A017585.P12262425742936632059

`or(1, 12*n+4)²²*or(1, 12*n+4)`
-/

namespace A017585.P12262425742936632059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (12 * n + 4) ^ 2) ^ 2 * Nat.lor 1 (12 * n + 4)

end

end A017585.P12262425742936632059

namespace A017585

/-- `or(1, 12*n+4)²²*or(1, 12*n+4)` -/
def P12262425742936632059.Spec : Prop :=
  ∀ n, (P12262425742936632059.a n : ℤ) = A017585 n

end A017585

/-! ## A017585.P10492423636645069725

`A017581(n)*A017584(n)`
-/

namespace A017585.P10492423636645069725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n * A017584 n

end

end A017585.P10492423636645069725

namespace A017585

/-- `A017581(n)*A017584(n)` -/
def P10492423636645069725.Spec : Prop :=
  ∀ n, P10492423636645069725.a n = A017585 n

theorem P10492423636645069725.correct : P10492423636645069725.Spec := by
  intro n
  simp only [A017585, Nat.add_sub_cancel, A017585.P10492423636645069725.a, A017585.P15106499126588840710.a, A017581, A017581.P8854877261644846518.a, A017584, A017584.P16811490781449679169.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017585

/-! ## A017585.P12571858490110040675

`A017582(n)*A017583(n)`
-/

namespace A017585.P12571858490110040675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017582 n * A017583 n

end

end A017585.P12571858490110040675

namespace A017585

/-- `A017582(n)*A017583(n)` -/
def P12571858490110040675.Spec : Prop :=
  ∀ n, P12571858490110040675.a n = A017585 n

theorem P12571858490110040675.correct : P12571858490110040675.Spec := by
  intro n
  simp only [A017585, Nat.add_sub_cancel, A017585.P12571858490110040675.a, A017585.P15106499126588840710.a, A017582, A017582.P1428421118661891129.a, A017583, A017583.P9859367136420472610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017585

/-! ## A017585.P5251996675793684998

`A017586(n)/A017581(n)`
-/

namespace A017585.P5251996675793684998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017586 n : ℚ) / (A017581 n : ℚ)

end

end A017585.P5251996675793684998

namespace A017585

/-- `A017586(n)/A017581(n)` -/
def P5251996675793684998.Spec : Prop :=
  ∀ n, P5251996675793684998.a n = (A017585 n : ℚ)

end A017585

/-! ## A017585.P5373214183751816097

`A017582(n)²*A017581(n)`
-/

namespace A017585.P5373214183751816097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017582 n ^ 2 * A017581 n

end

end A017585.P5373214183751816097

namespace A017585

/-- `A017582(n)²*A017581(n)` -/
def P5373214183751816097.Spec : Prop :=
  ∀ n, P5373214183751816097.a n = A017585 n

theorem P5373214183751816097.correct : P5373214183751816097.Spec := by
  intro n
  simp only [A017585, Nat.add_sub_cancel, A017585.P5373214183751816097.a, A017585.P15106499126588840710.a, A017581, A017581.P8854877261644846518.a, A017582, A017582.P1428421118661891129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017585

/-! ## A017585.P10035044486157696292

`A017581(n)²*A017583(n)`
-/

namespace A017585.P10035044486157696292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n ^ 2 * A017583 n

end

end A017585.P10035044486157696292

namespace A017585

/-- `A017581(n)²*A017583(n)` -/
def P10035044486157696292.Spec : Prop :=
  ∀ n, P10035044486157696292.a n = A017585 n

theorem P10035044486157696292.correct : P10035044486157696292.Spec := by
  intro n
  simp only [A017585, Nat.add_sub_cancel, A017585.P10035044486157696292.a, A017585.P15106499126588840710.a, A017581, A017581.P8854877261644846518.a, A017583, A017583.P9859367136420472610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017585

/-! ## A017585.P12088892360117230511

`A017584(n)²/A017583(n)`
-/

namespace A017585.P12088892360117230511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017584 n ^ 2 : ℚ) / (A017583 n : ℚ)

end

end A017585.P12088892360117230511

namespace A017585

/-- `A017584(n)²/A017583(n)` -/
def P12088892360117230511.Spec : Prop :=
  ∀ n, P12088892360117230511.a n = (A017585 n : ℚ)

end A017585

/-! ## A017585.P3203072400672184213

`(A017569(n)+1)*A017584(n)`
-/

namespace A017585.P3203072400672184213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017569 n + 1) * A017584 n

end

end A017585.P3203072400672184213

namespace A017585

/-- `(A017569(n)+1)*A017584(n)` -/
def P3203072400672184213.Spec : Prop :=
  ∀ n, P3203072400672184213.a n = A017585 n

theorem P3203072400672184213.correct : P3203072400672184213.Spec := by
  intro n
  simp only [A017585, Nat.add_sub_cancel, A017585.P3203072400672184213.a, A017585.P15106499126588840710.a, A017569, A017569.P14340039372117997380.a, A017584, A017584.P16811490781449679169.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017585

/-! ## A017585.P15159412119595842313

`(A017593(n)-1)*A017582(n)²`
-/

namespace A017585.P15159412119595842313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017593 n - 1) * A017582 n ^ 2

end

end A017585.P15159412119595842313

namespace A017585

/-- `(A017593(n)-1)*A017582(n)²` -/
def P15159412119595842313.Spec : Prop :=
  ∀ n, P15159412119595842313.a n = A017585 n

theorem P15159412119595842313.correct : P15159412119595842313.Spec := by
  intro n
  simp only [A017585, Nat.add_sub_cancel, A017585.P15159412119595842313.a, A017585.P15106499126588840710.a, A017582, A017582.P1428421118661891129.a, A017593, A017593.P13091213750843470751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017585

/-! ## A017585.P12619071467699040955

`A016973(2*n)`
-/

namespace A017585.P12619071467699040955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016973 (2 * n)

end

end A017585.P12619071467699040955

namespace A017585

/-- `A016973(2*n)` -/
def P12619071467699040955.Spec : Prop :=
  ∀ n, P12619071467699040955.a n = A017585 n

theorem P12619071467699040955.correct : P12619071467699040955.Spec := by
  intro n
  simp only [A017585, Nat.add_sub_cancel, A017585.P12619071467699040955.a, A017585.P15106499126588840710.a, A016973, A016973.P651106833153438276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017585

/-! ## A017585.P6842841851453548621

`A016975(2*n)/(12*n+5)²`
-/

namespace A017585.P6842841851453548621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016975 (2 * n) : ℚ) / ((12 * n + 5) ^ 2 : ℚ)

end

end A017585.P6842841851453548621

namespace A017585

/-- `A016975(2*n)/(12*n+5)²` -/
def P6842841851453548621.Spec : Prop :=
  ∀ n, P6842841851453548621.a n = (A017585 n : ℚ)

theorem P6842841851453548621.correct : P6842841851453548621.Spec := by
  intro n
  simp only [A017585, Nat.add_sub_cancel, A017585.P6842841851453548621.a, A017585.P15106499126588840710.a, A016975, A016975.P2603086275989900620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017585

/-! ## A017585.P11193805069798770923

`record[A016969(n)^A010686(n+1)]`
-/

namespace A017585.P11193805069798770923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016969 n : ℚ) ^ (A010686 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017585.P11193805069798770923

namespace A017585

/-- `record[A016969(n)^A010686(n+1)]` -/
def P11193805069798770923.Spec : Prop :=
  ∀ n, P11193805069798770923.a n = (A017585 n : ℚ)

end A017585

/-! ## A017585.P9939326867002677360

`A016969(2*n)*A016972(2*n)`
-/

namespace A017585.P9939326867002677360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (2 * n) * A016972 (2 * n)

end

end A017585.P9939326867002677360

namespace A017585

/-- `A016969(2*n)*A016972(2*n)` -/
def P9939326867002677360.Spec : Prop :=
  ∀ n, P9939326867002677360.a n = A017585 n

theorem P9939326867002677360.correct : P9939326867002677360.Spec := by
  intro n
  simp only [A017585, Nat.add_sub_cancel, A017585.P9939326867002677360.a, A017585.P15106499126588840710.a, A016969, A016969.P9377817521032485226.a, A016972, A016972.P18248330829088465920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017585

/-! ## A017585.P12853315924513514272

`A016970(2*n)*A016971(2*n)`
-/

namespace A017585.P12853315924513514272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 (2 * n) * A016971 (2 * n)

end

end A017585.P12853315924513514272

namespace A017585

/-- `A016970(2*n)*A016971(2*n)` -/
def P12853315924513514272.Spec : Prop :=
  ∀ n, P12853315924513514272.a n = A017585 n

theorem P12853315924513514272.correct : P12853315924513514272.Spec := by
  intro n
  simp only [A017585, Nat.add_sub_cancel, A017585.P12853315924513514272.a, A017585.P15106499126588840710.a, A016970, A016970.P15900235009038966583.a, A016971, A016971.P16829329651816979839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017585

/-! ## A017585.P12554098104746746758

`A016974(2*n)/A016969(2*n)`
-/

namespace A017585.P12554098104746746758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016974 (2 * n) : ℚ) / (A016969 (2 * n) : ℚ)

end

end A017585.P12554098104746746758

namespace A017585

/-- `A016974(2*n)/A016969(2*n)` -/
def P12554098104746746758.Spec : Prop :=
  ∀ n, P12554098104746746758.a n = (A017585 n : ℚ)

theorem P12554098104746746758.correct : P12554098104746746758.Spec := by
  intro n
  simp only [A017585, Nat.add_sub_cancel, A017585.P12554098104746746758.a, A017585.P15106499126588840710.a, A016969, A016969.P9377817521032485226.a, A016974, A016974.P548464748958973466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017585

/-! ## A017585.P6080084172381546879

`A016976(2*n)/A016971(2*n)`
-/

namespace A017585.P6080084172381546879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016976 (2 * n) : ℚ) / (A016971 (2 * n) : ℚ)

end

end A017585.P6080084172381546879

namespace A017585

/-- `A016976(2*n)/A016971(2*n)` -/
def P6080084172381546879.Spec : Prop :=
  ∀ n, P6080084172381546879.a n = (A017585 n : ℚ)

theorem P6080084172381546879.correct : P6080084172381546879.Spec := by
  intro n
  simp only [A017585, Nat.add_sub_cancel, A017585.P6080084172381546879.a, A017585.P15106499126588840710.a, A016971, A016971.P16829329651816979839.a, A016976, A016976.P4429947758327785608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017585

/-! ## A017585.P9505516095650227847

`A016977(2*n)/A016972(2*n)`
-/

namespace A017585.P9505516095650227847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016977 (2 * n) : ℚ) / (A016972 (2 * n) : ℚ)

end

end A017585.P9505516095650227847

namespace A017585

/-- `A016977(2*n)/A016972(2*n)` -/
def P9505516095650227847.Spec : Prop :=
  ∀ n, P9505516095650227847.a n = (A017585 n : ℚ)

theorem P9505516095650227847.correct : P9505516095650227847.Spec := by
  intro n
  simp only [A017585, Nat.add_sub_cancel, A017585.P9505516095650227847.a, A017585.P15106499126588840710.a, A016972, A016972.P18248330829088465920.a, A016977, A016977.P697263586240935608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017585

/-! ## A017585.P10734375982369366991

`gcd(A016974(2*n), A017645(2*n))`
-/

namespace A017585.P10734375982369366991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016974 (2 * n)) (A017645 (2 * n))

end

end A017585.P10734375982369366991

namespace A017585

/-- `gcd(A016974(2*n), A017645(2*n))` -/
def P10734375982369366991.Spec : Prop :=
  ∀ n, (P10734375982369366991.a n : ℤ) = A017585 n

end A017585

/-!
# A017586: a(n) = (12*n + 5)^6.

The programs for A017586, the canonical program `A017586.P7448404478609709150` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017586 has offset 0).

The definition of A017586 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+5)^6` (program `A017586.P7448404478609709150`, by `A017586.P7448404478609709150.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017586.P7448404478609709150

`(12*n+5)^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017586

/-- `(12*n+5)^6` -/
def P7448404478609709150.Spec : Prop :=
  ∀ n, (P7448404478609709150.a n : ℤ) = A017586 n

theorem P7448404478609709150.correct : P7448404478609709150.Spec := by
  intro n
  simp only [A017586]

end A017586

/-! ## A017586.P419084612998937984

`A017583(n)²`
-/

namespace A017586.P419084612998937984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017583 n ^ 2

end

end A017586.P419084612998937984

namespace A017586

/-- `A017583(n)²` -/
def P419084612998937984.Spec : Prop :=
  ∀ n, P419084612998937984.a n = A017586 n

theorem P419084612998937984.correct : P419084612998937984.Spec := by
  intro n
  simp only [A017586, Nat.add_sub_cancel, A017586.P419084612998937984.a, A017586.P7448404478609709150.a, A017583, A017583.P9859367136420472610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017586

/-! ## A017586.P3779460710537150208

`(A017581(n)^3)²`
-/

namespace A017586.P3779460710537150208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017581 n ^ 3) ^ 2

end

end A017586.P3779460710537150208

namespace A017586

/-- `(A017581(n)^3)²` -/
def P3779460710537150208.Spec : Prop :=
  ∀ n, P3779460710537150208.a n = A017586 n

theorem P3779460710537150208.correct : P3779460710537150208.Spec := by
  intro n
  simp only [A017586, Nat.add_sub_cancel, A017586.P3779460710537150208.a, A017586.P7448404478609709150.a, A017581, A017581.P8854877261644846518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017586

/-! ## A017586.P9893292949767835562

`A017581(n)*A017585(n)`
-/

namespace A017586.P9893292949767835562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n * A017585 n

end

end A017586.P9893292949767835562

namespace A017586

/-- `A017581(n)*A017585(n)` -/
def P9893292949767835562.Spec : Prop :=
  ∀ n, P9893292949767835562.a n = A017586 n

theorem P9893292949767835562.correct : P9893292949767835562.Spec := by
  intro n
  simp only [A017586, Nat.add_sub_cancel, A017586.P9893292949767835562.a, A017586.P7448404478609709150.a, A017581, A017581.P8854877261644846518.a, A017585, A017585.P15106499126588840710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017586

/-! ## A017586.P7275718012293952220

`A017582(n)*A017584(n)`
-/

namespace A017586.P7275718012293952220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017582 n * A017584 n

end

end A017586.P7275718012293952220

namespace A017586

/-- `A017582(n)*A017584(n)` -/
def P7275718012293952220.Spec : Prop :=
  ∀ n, P7275718012293952220.a n = A017586 n

theorem P7275718012293952220.correct : P7275718012293952220.Spec := by
  intro n
  simp only [A017586, Nat.add_sub_cancel, A017586.P7275718012293952220.a, A017586.P7448404478609709150.a, A017582, A017582.P1428421118661891129.a, A017584, A017584.P16811490781449679169.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017586

/-! ## A017586.P14425028628721696890

`(A017581(n)*A017582(n))²`
-/

namespace A017586.P14425028628721696890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017581 n * A017582 n) ^ 2

end

end A017586.P14425028628721696890

namespace A017586

/-- `(A017581(n)*A017582(n))²` -/
def P14425028628721696890.Spec : Prop :=
  ∀ n, P14425028628721696890.a n = A017586 n

theorem P14425028628721696890.correct : P14425028628721696890.Spec := by
  intro n
  simp only [A017586, Nat.add_sub_cancel, A017586.P14425028628721696890.a, A017586.P7448404478609709150.a, A017581, A017581.P8854877261644846518.a, A017582, A017582.P1428421118661891129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017586

/-! ## A017586.P17740428421350985721

`A017581(n)²*A017584(n)`
-/

namespace A017586.P17740428421350985721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n ^ 2 * A017584 n

end

end A017586.P17740428421350985721

namespace A017586

/-- `A017581(n)²*A017584(n)` -/
def P17740428421350985721.Spec : Prop :=
  ∀ n, P17740428421350985721.a n = A017586 n

theorem P17740428421350985721.correct : P17740428421350985721.Spec := by
  intro n
  simp only [A017586, Nat.add_sub_cancel, A017586.P17740428421350985721.a, A017586.P7448404478609709150.a, A017581, A017581.P8854877261644846518.a, A017584, A017584.P16811490781449679169.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017586

/-! ## A017586.P3981262884825138609

`(A017585(n)/A017582(n))²`
-/

namespace A017586.P3981262884825138609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017585 n : ℚ) / (A017582 n : ℚ)) ^ 2

end

end A017586.P3981262884825138609

namespace A017586

/-- `(A017585(n)/A017582(n))²` -/
def P3981262884825138609.Spec : Prop :=
  ∀ n, P3981262884825138609.a n = (A017586 n : ℚ)

end A017586

/-! ## A017586.P16743097486576626232

`A017588(n)/sqrt(sqrt(A017588(n)))`
-/

namespace A017586.P16743097486576626232
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017588 n : ℝ) / Real.sqrt (Real.sqrt (A017588 n : ℝ))

end

end A017586.P16743097486576626232

namespace A017586

/-- `A017588(n)/sqrt(sqrt(A017588(n)))` -/
def P16743097486576626232.Spec : Prop :=
  ∀ n, P16743097486576626232.a n = (A017586 n : ℝ)

end A017586

/-! ## A017586.P5491760402496621583

`(Δ[A033569(n)]^3)²`
-/

namespace A017586.P5491760402496621583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017586.P5491760402496621583

namespace A017586

/-- `(Δ[A033569(n)]^3)²` -/
def P5491760402496621583.Spec : Prop :=
  ∀ n, P5491760402496621583.a n = A017586 n

theorem P5491760402496621583.correct : P5491760402496621583.Spec := by
  intro n
  simp only [A017586, Nat.add_sub_cancel, A017586.P5491760402496621583.f1, A017586.P5491760402496621583.a, A017586.P7448404478609709150.a, A033569, A033569.P5108390427402809841.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017586

/-! ## A017586.P14556259632246575099

`(Δ[A049452(n)]^3)²`
-/

namespace A017586.P14556259632246575099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017586.P14556259632246575099

namespace A017586

/-- `(Δ[A049452(n)]^3)²` -/
def P14556259632246575099.Spec : Prop :=
  ∀ n, P14556259632246575099.a n = A017586 n

theorem P14556259632246575099.correct : P14556259632246575099.Spec := by
  intro n
  simp only [A017586, Nat.add_sub_cancel, A017586.P14556259632246575099.f1, A017586.P14556259632246575099.a, A017586.P7448404478609709150.a, A049452, A049452.P12714994684333640872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017586

/-! ## A017586.P8196757765564991742

`A016974(2*n)`
-/

namespace A017586.P8196757765564991742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016974 (2 * n)

end

end A017586.P8196757765564991742

namespace A017586

/-- `A016974(2*n)` -/
def P8196757765564991742.Spec : Prop :=
  ∀ n, P8196757765564991742.a n = A017586 n

theorem P8196757765564991742.correct : P8196757765564991742.Spec := by
  intro n
  simp only [A017586, Nat.add_sub_cancel, A017586.P8196757765564991742.a, A017586.P7448404478609709150.a, A016974, A016974.P548464748958973466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017586

/-! ## A017586.P8890969713050357861

`A016971(2*n)²`
-/

namespace A017586.P8890969713050357861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016971 (2 * n) ^ 2

end

end A017586.P8890969713050357861

namespace A017586

/-- `A016971(2*n)²` -/
def P8890969713050357861.Spec : Prop :=
  ∀ n, P8890969713050357861.a n = A017586 n

theorem P8890969713050357861.correct : P8890969713050357861.Spec := by
  intro n
  simp only [A017586, Nat.add_sub_cancel, A017586.P8890969713050357861.a, A017586.P7448404478609709150.a, A016971, A016971.P16829329651816979839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017586

/-! ## A017586.P8625792064190115424

`A016972(2*n)*(12*n+5)²`
-/

namespace A017586.P8625792064190115424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016972 (2 * n) * ((12 * n + 5) ^ 2 : ℤ)

end

end A017586.P8625792064190115424

namespace A017586

/-- `A016972(2*n)*(12*n+5)²` -/
def P8625792064190115424.Spec : Prop :=
  ∀ n, P8625792064190115424.a n = A017586 n

theorem P8625792064190115424.correct : P8625792064190115424.Spec := by
  intro n
  simp only [A017586, Nat.add_sub_cancel, A017586.P8625792064190115424.a, A017586.P7448404478609709150.a, A016972, A016972.P18248330829088465920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017586

/-! ## A017586.P12443880623166516920

`A016976(2*n)/(12*n+5)²`
-/

namespace A017586.P12443880623166516920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016976 (2 * n) : ℚ) / ((12 * n + 5) ^ 2 : ℚ)

end

end A017586.P12443880623166516920

namespace A017586

/-- `A016976(2*n)/(12*n+5)²` -/
def P12443880623166516920.Spec : Prop :=
  ∀ n, P12443880623166516920.a n = (A017586 n : ℚ)

theorem P12443880623166516920.correct : P12443880623166516920.Spec := by
  intro n
  simp only [A017586, Nat.add_sub_cancel, A017586.P12443880623166516920.a, A017586.P7448404478609709150.a, A016976, A016976.P4429947758327785608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017586

/-! ## A017586.P9929704152632660823

`A016969(2*n)*A016973(2*n)`
-/

namespace A017586.P9929704152632660823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (2 * n) * A016973 (2 * n)

end

end A017586.P9929704152632660823

namespace A017586

/-- `A016969(2*n)*A016973(2*n)` -/
def P9929704152632660823.Spec : Prop :=
  ∀ n, P9929704152632660823.a n = A017586 n

theorem P9929704152632660823.correct : P9929704152632660823.Spec := by
  intro n
  simp only [A017586, Nat.add_sub_cancel, A017586.P9929704152632660823.a, A017586.P7448404478609709150.a, A016969, A016969.P9377817521032485226.a, A016973, A016973.P651106833153438276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017586

/-! ## A017586.P18145573327685521165

`A016970(2*n)*A016972(2*n)`
-/

namespace A017586.P18145573327685521165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 (2 * n) * A016972 (2 * n)

end

end A017586.P18145573327685521165

namespace A017586

/-- `A016970(2*n)*A016972(2*n)` -/
def P18145573327685521165.Spec : Prop :=
  ∀ n, P18145573327685521165.a n = A017586 n

theorem P18145573327685521165.correct : P18145573327685521165.Spec := by
  intro n
  simp only [A017586, Nat.add_sub_cancel, A017586.P18145573327685521165.a, A017586.P7448404478609709150.a, A016970, A016970.P15900235009038966583.a, A016972, A016972.P18248330829088465920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017586

/-! ## A017586.P5501132526857923827

`A016975(2*n)/A016969(2*n)`
-/

namespace A017586.P5501132526857923827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016975 (2 * n) : ℚ) / (A016969 (2 * n) : ℚ)

end

end A017586.P5501132526857923827

namespace A017586

/-- `A016975(2*n)/A016969(2*n)` -/
def P5501132526857923827.Spec : Prop :=
  ∀ n, P5501132526857923827.a n = (A017586 n : ℚ)

theorem P5501132526857923827.correct : P5501132526857923827.Spec := by
  intro n
  simp only [A017586, Nat.add_sub_cancel, A017586.P5501132526857923827.a, A017586.P7448404478609709150.a, A016969, A016969.P9377817521032485226.a, A016975, A016975.P2603086275989900620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017586

/-! ## A017586.P5580852129965963178

`gcd(A016975(2*n), A017646(2*n))`
-/

namespace A017586.P5580852129965963178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016975 (2 * n)) (A017646 (2 * n))

end

end A017586.P5580852129965963178

namespace A017586

/-- `gcd(A016975(2*n), A017646(2*n))` -/
def P5580852129965963178.Spec : Prop :=
  ∀ n, (P5580852129965963178.a n : ℤ) = A017586 n

end A017586

/-! ## A017586.P11545530060588012324

`(A016969(2*n)*A016970(2*n))²`
-/

namespace A017586.P11545530060588012324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016969 (2 * n) * A016970 (2 * n)) ^ 2

end

end A017586.P11545530060588012324

namespace A017586

/-- `(A016969(2*n)*A016970(2*n))²` -/
def P11545530060588012324.Spec : Prop :=
  ∀ n, P11545530060588012324.a n = A017586 n

theorem P11545530060588012324.correct : P11545530060588012324.Spec := by
  intro n
  simp only [A017586, Nat.add_sub_cancel, A017586.P11545530060588012324.a, A017586.P7448404478609709150.a, A016969, A016969.P9377817521032485226.a, A016970, A016970.P15900235009038966583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017586

/-!
# A017587: a(n) = (12*n + 5)^7.

The programs for A017587, the canonical program `A017587.P1285015926994325324` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017587 has offset 0).

The definition of A017587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+5)^7` (program `A017587.P1285015926994325324`, by `A017587.P1285015926994325324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017587.P1285015926994325324

`(12*n+5)^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017587

/-- `(12*n+5)^7` -/
def P1285015926994325324.Spec : Prop :=
  ∀ n, (P1285015926994325324.a n : ℤ) = A017587 n

theorem P1285015926994325324.correct : P1285015926994325324.Spec := by
  intro n
  simp only [A017587]

end A017587

/-! ## A017587.P1845332933395313521

`A017581(n)*A017586(n)`
-/

namespace A017587.P1845332933395313521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n * A017586 n

end

end A017587.P1845332933395313521

namespace A017587

/-- `A017581(n)*A017586(n)` -/
def P1845332933395313521.Spec : Prop :=
  ∀ n, P1845332933395313521.a n = A017587 n

theorem P1845332933395313521.correct : P1845332933395313521.Spec := by
  intro n
  simp only [A017587, Nat.add_sub_cancel, A017587.P1845332933395313521.a, A017587.P1285015926994325324.a, A017581, A017581.P8854877261644846518.a, A017586, A017586.P7448404478609709150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017587

/-! ## A017587.P12208975282150199458

`A017582(n)*A017585(n)`
-/

namespace A017587.P12208975282150199458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017582 n * A017585 n

end

end A017587.P12208975282150199458

namespace A017587

/-- `A017582(n)*A017585(n)` -/
def P12208975282150199458.Spec : Prop :=
  ∀ n, P12208975282150199458.a n = A017587 n

theorem P12208975282150199458.correct : P12208975282150199458.Spec := by
  intro n
  simp only [A017587, Nat.add_sub_cancel, A017587.P12208975282150199458.a, A017587.P1285015926994325324.a, A017582, A017582.P1428421118661891129.a, A017585, A017585.P15106499126588840710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017587

/-! ## A017587.P13559433189951294116

`A017583(n)*A017584(n)`
-/

namespace A017587.P13559433189951294116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017583 n * A017584 n

end

end A017587.P13559433189951294116

namespace A017587

/-- `A017583(n)*A017584(n)` -/
def P13559433189951294116.Spec : Prop :=
  ∀ n, P13559433189951294116.a n = A017587 n

theorem P13559433189951294116.correct : P13559433189951294116.Spec := by
  intro n
  simp only [A017587, Nat.add_sub_cancel, A017587.P13559433189951294116.a, A017587.P1285015926994325324.a, A017583, A017583.P9859367136420472610.a, A017584, A017584.P16811490781449679169.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017587

/-! ## A017587.P13475286869911349627

`A017583(n)²*A017581(n)`
-/

namespace A017587.P13475286869911349627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017583 n ^ 2 * A017581 n

end

end A017587.P13475286869911349627

namespace A017587

/-- `A017583(n)²*A017581(n)` -/
def P13475286869911349627.Spec : Prop :=
  ∀ n, P13475286869911349627.a n = A017587 n

theorem P13475286869911349627.correct : P13475286869911349627.Spec := by
  intro n
  simp only [A017587, Nat.add_sub_cancel, A017587.P13475286869911349627.a, A017587.P1285015926994325324.a, A017581, A017581.P8854877261644846518.a, A017583, A017583.P9859367136420472610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017587

/-! ## A017587.P11757272736888987301

`A017582(n)²*A017583(n)`
-/

namespace A017587.P11757272736888987301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017582 n ^ 2 * A017583 n

end

end A017587.P11757272736888987301

namespace A017587

/-- `A017582(n)²*A017583(n)` -/
def P11757272736888987301.Spec : Prop :=
  ∀ n, P11757272736888987301.a n = A017587 n

theorem P11757272736888987301.correct : P11757272736888987301.Spec := by
  intro n
  simp only [A017587, Nat.add_sub_cancel, A017587.P11757272736888987301.a, A017587.P1285015926994325324.a, A017582, A017582.P1428421118661891129.a, A017583, A017583.P9859367136420472610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017587

/-! ## A017587.P5839396086233934614

`A017581(n)²*A017585(n)`
-/

namespace A017587.P5839396086233934614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n ^ 2 * A017585 n

end

end A017587.P5839396086233934614

namespace A017587

/-- `A017581(n)²*A017585(n)` -/
def P5839396086233934614.Spec : Prop :=
  ∀ n, P5839396086233934614.a n = A017587 n

theorem P5839396086233934614.correct : P5839396086233934614.Spec := by
  intro n
  simp only [A017587, Nat.add_sub_cancel, A017587.P5839396086233934614.a, A017587.P1285015926994325324.a, A017581, A017581.P8854877261644846518.a, A017585, A017585.P15106499126588840710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017587

/-! ## A017587.P706669954683529394

`A017584(n)²/A017581(n)`
-/

namespace A017587.P706669954683529394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017584 n ^ 2 : ℚ) / (A017581 n : ℚ)

end

end A017587.P706669954683529394

namespace A017587

/-- `A017584(n)²/A017581(n)` -/
def P706669954683529394.Spec : Prop :=
  ∀ n, P706669954683529394.a n = (A017587 n : ℚ)

end A017587

/-! ## A017587.P17320421375429205676

`A017582(n)²²/A017581(n)`
-/

namespace A017587.P17320421375429205676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017582 n ^ 2) ^ 2 : ℚ) / (A017581 n : ℚ)

end

end A017587.P17320421375429205676

namespace A017587

/-- `A017582(n)²²/A017581(n)` -/
def P17320421375429205676.Spec : Prop :=
  ∀ n, P17320421375429205676.a n = (A017587 n : ℚ)

end A017587

/-! ## A017587.P16810081558967701483

`A017584(n)²/(A017569(n)+1)`
-/

namespace A017587.P16810081558967701483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017584 n ^ 2 : ℚ) / (A017569 n + 1 : ℚ)

end

end A017587.P16810081558967701483

namespace A017587

/-- `A017584(n)²/(A017569(n)+1)` -/
def P16810081558967701483.Spec : Prop :=
  ∀ n, P16810081558967701483.a n = (A017587 n : ℚ)

theorem P16810081558967701483.correct : P16810081558967701483.Spec := by
  intro n
  simp only [A017587, Nat.add_sub_cancel, A017587.P16810081558967701483.a, A017587.P1285015926994325324.a, A017569, A017569.P14340039372117997380.a, A017584, A017584.P16811490781449679169.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017587

/-! ## A017587.P11822055184991282250

`A017585(n)/A017583(n)*A017585(n)`
-/

namespace A017587.P11822055184991282250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017585 n : ℚ) / (A017583 n : ℚ) * (A017585 n : ℚ)

end

end A017587.P11822055184991282250

namespace A017587

/-- `A017585(n)/A017583(n)*A017585(n)` -/
def P11822055184991282250.Spec : Prop :=
  ∀ n, P11822055184991282250.a n = (A017587 n : ℚ)

end A017587

/-! ## A017587.P3749431314214167123

`A016975(2*n)`
-/

namespace A017587.P3749431314214167123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016975 (2 * n)

end

end A017587.P3749431314214167123

namespace A017587

/-- `A016975(2*n)` -/
def P3749431314214167123.Spec : Prop :=
  ∀ n, P3749431314214167123.a n = A017587 n

theorem P3749431314214167123.correct : P3749431314214167123.Spec := by
  intro n
  simp only [A017587, Nat.add_sub_cancel, A017587.P3749431314214167123.a, A017587.P1285015926994325324.a, A016975, A016975.P2603086275989900620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017587

/-! ## A017587.P14032250827547622992

`record[gcd(n%2, A016975(n))]`
-/

namespace A017587.P14032250827547622992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (A016975 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017587.P14032250827547622992

namespace A017587

/-- `record[gcd(n%2, A016975(n))]` -/
def P14032250827547622992.Spec : Prop :=
  ∀ n, (P14032250827547622992.a n : ℤ) = A017587 n

end A017587

/-! ## A017587.P4109719370612216667

`A016973(2*n)*(12*n+5)²`
-/

namespace A017587.P4109719370612216667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016973 (2 * n) * ((12 * n + 5) ^ 2 : ℤ)

end

end A017587.P4109719370612216667

namespace A017587

/-- `A016973(2*n)*(12*n+5)²` -/
def P4109719370612216667.Spec : Prop :=
  ∀ n, P4109719370612216667.a n = A017587 n

theorem P4109719370612216667.correct : P4109719370612216667.Spec := by
  intro n
  simp only [A017587, Nat.add_sub_cancel, A017587.P4109719370612216667.a, A017587.P1285015926994325324.a, A016973, A016973.P651106833153438276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017587

/-! ## A017587.P916204438563128322

`record[A016975(floor(n/2^val(n+1, 2)))]`
-/

namespace A017587.P916204438563128322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016975 ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017587.P916204438563128322

namespace A017587

/-- `record[A016975(floor(n/2^val(n+1, 2)))]` -/
def P916204438563128322.Spec : Prop :=
  ∀ n, P916204438563128322.a n = A017587 n

end A017587

/-! ## A017587.P1075220823401147836

`A016969(2*n)*A016974(2*n)`
-/

namespace A017587.P1075220823401147836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (2 * n) * A016974 (2 * n)

end

end A017587.P1075220823401147836

namespace A017587

/-- `A016969(2*n)*A016974(2*n)` -/
def P1075220823401147836.Spec : Prop :=
  ∀ n, P1075220823401147836.a n = A017587 n

theorem P1075220823401147836.correct : P1075220823401147836.Spec := by
  intro n
  simp only [A017587, Nat.add_sub_cancel, A017587.P1075220823401147836.a, A017587.P1285015926994325324.a, A016969, A016969.P9377817521032485226.a, A016974, A016974.P548464748958973466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017587

/-! ## A017587.P15706282450721490696

`A016970(2*n)*A016973(2*n)`
-/

namespace A017587.P15706282450721490696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 (2 * n) * A016973 (2 * n)

end

end A017587.P15706282450721490696

namespace A017587

/-- `A016970(2*n)*A016973(2*n)` -/
def P15706282450721490696.Spec : Prop :=
  ∀ n, P15706282450721490696.a n = A017587 n

theorem P15706282450721490696.correct : P15706282450721490696.Spec := by
  intro n
  simp only [A017587, Nat.add_sub_cancel, A017587.P15706282450721490696.a, A017587.P1285015926994325324.a, A016970, A016970.P15900235009038966583.a, A016973, A016973.P651106833153438276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017587

/-! ## A017587.P15696359133192265131

`A016971(2*n)*A016972(2*n)`
-/

namespace A017587.P15696359133192265131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016971 (2 * n) * A016972 (2 * n)

end

end A017587.P15696359133192265131

namespace A017587

/-- `A016971(2*n)*A016972(2*n)` -/
def P15696359133192265131.Spec : Prop :=
  ∀ n, P15696359133192265131.a n = A017587 n

theorem P15696359133192265131.correct : P15696359133192265131.Spec := by
  intro n
  simp only [A017587, Nat.add_sub_cancel, A017587.P15696359133192265131.a, A017587.P1285015926994325324.a, A016971, A016971.P16829329651816979839.a, A016972, A016972.P18248330829088465920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017587

/-! ## A017587.P6108221915638383585

`A016976(2*n)/A016969(2*n)`
-/

namespace A017587.P6108221915638383585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016976 (2 * n) : ℚ) / (A016969 (2 * n) : ℚ)

end

end A017587.P6108221915638383585

namespace A017587

/-- `A016976(2*n)/A016969(2*n)` -/
def P6108221915638383585.Spec : Prop :=
  ∀ n, P6108221915638383585.a n = (A017587 n : ℚ)

theorem P6108221915638383585.correct : P6108221915638383585.Spec := by
  intro n
  simp only [A017587, Nat.add_sub_cancel, A017587.P6108221915638383585.a, A017587.P1285015926994325324.a, A016969, A016969.P9377817521032485226.a, A016976, A016976.P4429947758327785608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017587

/-! ## A017587.P12733867137897618981

`A016977(2*n)/A016970(2*n)`
-/

namespace A017587.P12733867137897618981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016977 (2 * n) : ℚ) / (A016970 (2 * n) : ℚ)

end

end A017587.P12733867137897618981

namespace A017587

/-- `A016977(2*n)/A016970(2*n)` -/
def P12733867137897618981.Spec : Prop :=
  ∀ n, P12733867137897618981.a n = (A017587 n : ℚ)

theorem P12733867137897618981.correct : P12733867137897618981.Spec := by
  intro n
  simp only [A017587, Nat.add_sub_cancel, A017587.P12733867137897618981.a, A017587.P1285015926994325324.a, A016970, A016970.P15900235009038966583.a, A016977, A016977.P697263586240935608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017587

/-!
# A017588: a(n) = (12*n + 5)^8.

The programs for A017588, the canonical program `A017588.P5965258687465439751` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017588 has offset 0).

The definition of A017588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+5)^8` (program `A017588.P5965258687465439751`, by `A017588.P5965258687465439751.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017588.P5965258687465439751

`(12*n+5)^8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017588

/-- `(12*n+5)^8` -/
def P5965258687465439751.Spec : Prop :=
  ∀ n, (P5965258687465439751.a n : ℤ) = A017588 n

theorem P5965258687465439751.correct : P5965258687465439751.Spec := by
  intro n
  simp only [A017588]

end A017588

/-! ## A017588.P1069253367790172807

`A017584(n)²`
-/

namespace A017588.P1069253367790172807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017584 n ^ 2

end

end A017588.P1069253367790172807

namespace A017588

/-- `A017584(n)²` -/
def P1069253367790172807.Spec : Prop :=
  ∀ n, P1069253367790172807.a n = A017588 n

theorem P1069253367790172807.correct : P1069253367790172807.Spec := by
  intro n
  simp only [A017588, Nat.add_sub_cancel, A017588.P1069253367790172807.a, A017588.P5965258687465439751.a, A017584, A017584.P16811490781449679169.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017588

/-! ## A017588.P15529298435997252410

`A017582(n)²²`
-/

namespace A017588.P15529298435997252410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017582 n ^ 2) ^ 2

end

end A017588.P15529298435997252410

namespace A017588

/-- `A017582(n)²²` -/
def P15529298435997252410.Spec : Prop :=
  ∀ n, P15529298435997252410.a n = A017588 n

theorem P15529298435997252410.correct : P15529298435997252410.Spec := by
  intro n
  simp only [A017588, Nat.add_sub_cancel, A017588.P15529298435997252410.a, A017588.P5965258687465439751.a, A017582, A017582.P1428421118661891129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017588

/-! ## A017588.P7865129571913773165

`(A017581(n)^4)²`
-/

namespace A017588.P7865129571913773165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017581 n ^ 4) ^ 2

end

end A017588.P7865129571913773165

namespace A017588

/-- `(A017581(n)^4)²` -/
def P7865129571913773165.Spec : Prop :=
  ∀ n, P7865129571913773165.a n = A017588 n

theorem P7865129571913773165.correct : P7865129571913773165.Spec := by
  intro n
  simp only [A017588, Nat.add_sub_cancel, A017588.P7865129571913773165.a, A017588.P5965258687465439751.a, A017581, A017581.P8854877261644846518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017588

/-! ## A017588.P506539629121392047

`(A017569(n)+1)²²²`
-/

namespace A017588.P506539629121392047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017569 n + 1) ^ 2) ^ 2) ^ 2

end

end A017588.P506539629121392047

namespace A017588

/-- `(A017569(n)+1)²²²` -/
def P506539629121392047.Spec : Prop :=
  ∀ n, P506539629121392047.a n = A017588 n

theorem P506539629121392047.correct : P506539629121392047.Spec := by
  intro n
  simp only [A017588, Nat.add_sub_cancel, A017588.P506539629121392047.a, A017588.P5965258687465439751.a, A017569, A017569.P14340039372117997380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017588

/-! ## A017588.P3835850545096230463

`(A017557(n)+2)²²²`
-/

namespace A017588.P3835850545096230463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017557 n + 2) ^ 2) ^ 2) ^ 2

end

end A017588.P3835850545096230463

namespace A017588

/-- `(A017557(n)+2)²²²` -/
def P3835850545096230463.Spec : Prop :=
  ∀ n, P3835850545096230463.a n = A017588 n

theorem P3835850545096230463.correct : P3835850545096230463.Spec := by
  intro n
  simp only [A017588, Nat.add_sub_cancel, A017588.P3835850545096230463.a, A017588.P5965258687465439751.a, A017557, A017557.P7719209615978230604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017588

/-! ## A017588.P18094620005012185209

`(1-A017593(n))²²²`
-/

namespace A017588.P18094620005012185209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017593 n) ^ 2) ^ 2) ^ 2

end

end A017588.P18094620005012185209

namespace A017588

/-- `(1-A017593(n))²²²` -/
def P18094620005012185209.Spec : Prop :=
  ∀ n, P18094620005012185209.a n = A017588 n

theorem P18094620005012185209.correct : P18094620005012185209.Spec := by
  intro n
  simp only [A017588, Nat.add_sub_cancel, A017588.P18094620005012185209.a, A017588.P5965258687465439751.a, A017593, A017593.P13091213750843470751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017588

/-! ## A017588.P505943105170026582

`(2-A017605(n))²²²`
-/

namespace A017588.P505943105170026582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017605 n) ^ 2) ^ 2) ^ 2

end

end A017588.P505943105170026582

namespace A017588

/-- `(2-A017605(n))²²²` -/
def P505943105170026582.Spec : Prop :=
  ∀ n, P505943105170026582.a n = A017588 n

theorem P505943105170026582.correct : P505943105170026582.Spec := by
  intro n
  simp only [A017588, Nat.add_sub_cancel, A017588.P505943105170026582.a, A017588.P5965258687465439751.a, A017605, A017605.P12903970419572684084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017588

/-! ## A017588.P11568105759930556418

`(A017449(n)+n)²²²`
-/

namespace A017588.P11568105759930556418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017449 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017588.P11568105759930556418

namespace A017588

/-- `(A017449(n)+n)²²²` -/
def P11568105759930556418.Spec : Prop :=
  ∀ n, P11568105759930556418.a n = A017588 n

theorem P11568105759930556418.correct : P11568105759930556418.Spec := by
  intro n
  simp only [A017588, Nat.add_sub_cancel, A017588.P11568105759930556418.a, A017588.P5965258687465439751.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017588

/-! ## A017588.P7253019751543347767

`(n-A154609(n))²²²`
-/

namespace A017588.P7253019751543347767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A154609 n) ^ 2) ^ 2) ^ 2

end

end A017588.P7253019751543347767

namespace A017588

/-- `(n-A154609(n))²²²` -/
def P7253019751543347767.Spec : Prop :=
  ∀ n, P7253019751543347767.a n = A017588 n

theorem P7253019751543347767.correct : P7253019751543347767.Spec := by
  intro n
  simp only [A017588, Nat.add_sub_cancel, A017588.P7253019751543347767.a, A017588.P5965258687465439751.a, A154609, A154609.P1978391777600562763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017588

/-! ## A017588.P17563674122840350730

`A017582(n)*A017586(n)`
-/

namespace A017588.P17563674122840350730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017582 n * A017586 n

end

end A017588.P17563674122840350730

namespace A017588

/-- `A017582(n)*A017586(n)` -/
def P17563674122840350730.Spec : Prop :=
  ∀ n, P17563674122840350730.a n = A017588 n

theorem P17563674122840350730.correct : P17563674122840350730.Spec := by
  intro n
  simp only [A017588, Nat.add_sub_cancel, A017588.P17563674122840350730.a, A017588.P5965258687465439751.a, A017582, A017582.P1428421118661891129.a, A017586, A017586.P7448404478609709150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017588

/-! ## A017588.P2976435616616399411

`A017583(n)*A017585(n)`
-/

namespace A017588.P2976435616616399411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017583 n * A017585 n

end

end A017588.P2976435616616399411

namespace A017588

/-- `A017583(n)*A017585(n)` -/
def P2976435616616399411.Spec : Prop :=
  ∀ n, P2976435616616399411.a n = A017588 n

theorem P2976435616616399411.correct : P2976435616616399411.Spec := by
  intro n
  simp only [A017588, Nat.add_sub_cancel, A017588.P2976435616616399411.a, A017588.P5965258687465439751.a, A017583, A017583.P9859367136420472610.a, A017585, A017585.P15106499126588840710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017588

/-! ## A017588.P10219611314215326084

`Δ[A033569(n)]²²²`
-/

namespace A017588.P10219611314215326084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017588.P10219611314215326084

namespace A017588

/-- `Δ[A033569(n)]²²²` -/
def P10219611314215326084.Spec : Prop :=
  ∀ n, P10219611314215326084.a n = A017588 n

theorem P10219611314215326084.correct : P10219611314215326084.Spec := by
  intro n
  simp only [A017588, Nat.add_sub_cancel, A017588.P10219611314215326084.f1, A017588.P10219611314215326084.a, A017588.P5965258687465439751.a, A033569, A033569.P5108390427402809841.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017588

/-! ## A017588.P6102007870348738674

`Δ[A049452(n)]²²²`
-/

namespace A017588.P6102007870348738674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017588.P6102007870348738674

namespace A017588

/-- `Δ[A049452(n)]²²²` -/
def P6102007870348738674.Spec : Prop :=
  ∀ n, P6102007870348738674.a n = A017588 n

theorem P6102007870348738674.correct : P6102007870348738674.Spec := by
  intro n
  simp only [A017588, Nat.add_sub_cancel, A017588.P6102007870348738674.f1, A017588.P6102007870348738674.a, A017588.P5965258687465439751.a, A049452, A049452.P12714994684333640872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017588

/-! ## A017588.P5611749046359504436

`A016976(2*n)`
-/

namespace A017588.P5611749046359504436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016976 (2 * n)

end

end A017588.P5611749046359504436

namespace A017588

/-- `A016976(2*n)` -/
def P5611749046359504436.Spec : Prop :=
  ∀ n, P5611749046359504436.a n = A017588 n

theorem P5611749046359504436.correct : P5611749046359504436.Spec := by
  intro n
  simp only [A017588, Nat.add_sub_cancel, A017588.P5611749046359504436.a, A017588.P5965258687465439751.a, A016976, A016976.P4429947758327785608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017588

/-! ## A017588.P15666853506365601477

`A016972(2*n)²`
-/

namespace A017588.P15666853506365601477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016972 (2 * n) ^ 2

end

end A017588.P15666853506365601477

namespace A017588

/-- `A016972(2*n)²` -/
def P15666853506365601477.Spec : Prop :=
  ∀ n, P15666853506365601477.a n = A017588 n

theorem P15666853506365601477.correct : P15666853506365601477.Spec := by
  intro n
  simp only [A017588, Nat.add_sub_cancel, A017588.P15666853506365601477.a, A017588.P5965258687465439751.a, A016972, A016972.P18248330829088465920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017588

/-! ## A017588.P1809953845748642141

`A016970(2*n)²²`
-/

namespace A017588.P1809953845748642141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016970 (2 * n) ^ 2) ^ 2

end

end A017588.P1809953845748642141

namespace A017588

/-- `A016970(2*n)²²` -/
def P1809953845748642141.Spec : Prop :=
  ∀ n, P1809953845748642141.a n = A017588 n

theorem P1809953845748642141.correct : P1809953845748642141.Spec := by
  intro n
  simp only [A017588, Nat.add_sub_cancel, A017588.P1809953845748642141.a, A017588.P5965258687465439751.a, A016970, A016970.P15900235009038966583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017588

/-! ## A017588.P8548887197051571092

`A174371(Δ[n²])²²`
-/

namespace A017588.P8548887197051571092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174371 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A017588.P8548887197051571092

namespace A017588

/-- `A174371(Δ[n²])²²` -/
def P8548887197051571092.Spec : Prop :=
  ∀ n, P8548887197051571092.a n = A017588 n

end A017588

/-! ## A017588.P4225602473893695956

`A016969(2*n)²²²`
-/

namespace A017588.P4225602473893695956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016969 (2 * n) ^ 2) ^ 2) ^ 2

end

end A017588.P4225602473893695956

namespace A017588

/-- `A016969(2*n)²²²` -/
def P4225602473893695956.Spec : Prop :=
  ∀ n, P4225602473893695956.a n = A017588 n

theorem P4225602473893695956.correct : P4225602473893695956.Spec := by
  intro n
  simp only [A017588, Nat.add_sub_cancel, A017588.P4225602473893695956.a, A017588.P5965258687465439751.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017588

/-! ## A017588.P16833293876186390517

`Δ[A143689(2*n)]²²²`
-/

namespace A017588.P16833293876186390517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017588.P16833293876186390517

namespace A017588

/-- `Δ[A143689(2*n)]²²²` -/
def P16833293876186390517.Spec : Prop :=
  ∀ n, P16833293876186390517.a n = A017588 n

end A017588

/-!
# A017589: a(n) = (12*n + 5)^9.

The programs for A017589, the canonical program `A017589.P15142260348487590779` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017589 has offset 0).

The definition of A017589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+5)^9` (program `A017589.P15142260348487590779`, by `A017589.P15142260348487590779.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017589.P15142260348487590779

`(12*n+5)^9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017589

/-- `(12*n+5)^9` -/
def P15142260348487590779.Spec : Prop :=
  ∀ n, (P15142260348487590779.a n : ℤ) = A017589 n

theorem P15142260348487590779.correct : P15142260348487590779.Spec := by
  intro n
  simp only [A017589]

end A017589

/-! ## A017589.P11727140007159234572

`A017583(n)*A017586(n)`
-/

namespace A017589.P11727140007159234572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017583 n * A017586 n

end

end A017589.P11727140007159234572

namespace A017589

/-- `A017583(n)*A017586(n)` -/
def P11727140007159234572.Spec : Prop :=
  ∀ n, P11727140007159234572.a n = A017589 n

theorem P11727140007159234572.correct : P11727140007159234572.Spec := by
  intro n
  simp only [A017589, Nat.add_sub_cancel, A017589.P11727140007159234572.a, A017589.P15142260348487590779.a, A017583, A017583.P9859367136420472610.a, A017586, A017586.P7448404478609709150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017589

/-! ## A017589.P14161365410188302964

`A017584(n)*A017585(n)`
-/

namespace A017589.P14161365410188302964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017584 n * A017585 n

end

end A017589.P14161365410188302964

namespace A017589

/-- `A017584(n)*A017585(n)` -/
def P14161365410188302964.Spec : Prop :=
  ∀ n, P14161365410188302964.a n = A017589 n

theorem P14161365410188302964.correct : P14161365410188302964.Spec := by
  intro n
  simp only [A017589, Nat.add_sub_cancel, A017589.P14161365410188302964.a, A017589.P15142260348487590779.a, A017584, A017584.P16811490781449679169.a, A017585, A017585.P15106499126588840710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017589

/-! ## A017589.P13484160713420778986

`A016977(2*n)`
-/

namespace A017589.P13484160713420778986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016977 (2 * n)

end

end A017589.P13484160713420778986

namespace A017589

/-- `A016977(2*n)` -/
def P13484160713420778986.Spec : Prop :=
  ∀ n, P13484160713420778986.a n = A017589 n

theorem P13484160713420778986.correct : P13484160713420778986.Spec := by
  intro n
  simp only [A017589, Nat.add_sub_cancel, A017589.P13484160713420778986.a, A017589.P15142260348487590779.a, A016977, A016977.P697263586240935608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017589

/-! ## A017589.P9181692602531022335

`A016969(2*n)*A016976(2*n)`
-/

namespace A017589.P9181692602531022335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (2 * n) * A016976 (2 * n)

end

end A017589.P9181692602531022335

namespace A017589

/-- `A016969(2*n)*A016976(2*n)` -/
def P9181692602531022335.Spec : Prop :=
  ∀ n, P9181692602531022335.a n = A017589 n

theorem P9181692602531022335.correct : P9181692602531022335.Spec := by
  intro n
  simp only [A017589, Nat.add_sub_cancel, A017589.P9181692602531022335.a, A017589.P15142260348487590779.a, A016969, A016969.P9377817521032485226.a, A016976, A016976.P4429947758327785608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017589

/-! ## A017589.P15982764347895646143

`A016970(2*n)*A016975(2*n)`
-/

namespace A017589.P15982764347895646143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 (2 * n) * A016975 (2 * n)

end

end A017589.P15982764347895646143

namespace A017589

/-- `A016970(2*n)*A016975(2*n)` -/
def P15982764347895646143.Spec : Prop :=
  ∀ n, P15982764347895646143.a n = A017589 n

theorem P15982764347895646143.correct : P15982764347895646143.Spec := by
  intro n
  simp only [A017589, Nat.add_sub_cancel, A017589.P15982764347895646143.a, A017589.P15142260348487590779.a, A016970, A016970.P15900235009038966583.a, A016975, A016975.P2603086275989900620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017589

/-! ## A017589.P6473599949415264684

`A016971(2*n)*A016974(2*n)`
-/

namespace A017589.P6473599949415264684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016971 (2 * n) * A016974 (2 * n)

end

end A017589.P6473599949415264684

namespace A017589

/-- `A016971(2*n)*A016974(2*n)` -/
def P6473599949415264684.Spec : Prop :=
  ∀ n, P6473599949415264684.a n = A017589 n

theorem P6473599949415264684.correct : P6473599949415264684.Spec := by
  intro n
  simp only [A017589, Nat.add_sub_cancel, A017589.P6473599949415264684.a, A017589.P15142260348487590779.a, A016971, A016971.P16829329651816979839.a, A016974, A016974.P548464748958973466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017589

/-! ## A017589.P16834162904478150949

`A016797(A016789(2*n)-(2*n+1))`
-/

namespace A017589.P16834162904478150949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016797 (A016789 (2 * n) - (2 * n + 1 : ℤ)).toNat

end

end A017589.P16834162904478150949

namespace A017589

/-- `A016797(A016789(2*n)-(2*n+1))` -/
def P16834162904478150949.Spec : Prop :=
  ∀ n, P16834162904478150949.a n = A017589 n

end A017589

/-! ## A017589.P15402675229251993035

`A016761(A016945(n)-1)`
-/

namespace A017589.P15402675229251993035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016761 (A016945 n - 1).toNat

end

end A017589.P15402675229251993035

namespace A017589

/-- `A016761(A016945(n)-1)` -/
def P15402675229251993035.Spec : Prop :=
  ∀ n, P15402675229251993035.a n = A017589 n

end A017589

/-! ## A017589.P3152278666374836552

`A001017(A017581(n))`
-/

namespace A017589.P3152278666374836552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017581 n).toNat

end

end A017589.P3152278666374836552

namespace A017589

/-- `A001017(A017581(n))` -/
def P3152278666374836552.Spec : Prop :=
  ∀ n, P3152278666374836552.a n = A017589 n

end A017589

/-!
# A017590: a(n) = (12*n + 5)^10.

The programs for A017590, the canonical program `A017590.P8338392382083469832` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017590 has offset 0).

The definition of A017590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017590.P8338392382083469832

`(12*n+5)^10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017590

/-- `(12*n+5)^10` -/
def P8338392382083469832.Spec : Prop :=
  ∀ n, (P8338392382083469832.a n : ℤ) = A017590 n

theorem P8338392382083469832.correct : P8338392382083469832.Spec := by
  intro n
  simp only [A017590]

end A017590

/-! ## A017590.P1660563753678053055

`A017585(n)²`
-/

namespace A017590.P1660563753678053055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017585 n ^ 2

end

end A017590.P1660563753678053055

namespace A017590

/-- `A017585(n)²` -/
def P1660563753678053055.Spec : Prop :=
  ∀ n, P1660563753678053055.a n = A017590 n

theorem P1660563753678053055.correct : P1660563753678053055.Spec := by
  intro n
  simp only [A017590, Nat.add_sub_cancel, A017590.P1660563753678053055.a, A017590.P8338392382083469832.a, A017585, A017585.P15106499126588840710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017590

/-! ## A017590.P14590982285307290844

`(A017581(n)^5)²`
-/

namespace A017590.P14590982285307290844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017581 n ^ 5) ^ 2

end

end A017590.P14590982285307290844

namespace A017590

/-- `(A017581(n)^5)²` -/
def P14590982285307290844.Spec : Prop :=
  ∀ n, P14590982285307290844.a n = A017590 n

theorem P14590982285307290844.correct : P14590982285307290844.Spec := by
  intro n
  simp only [A017590, Nat.add_sub_cancel, A017590.P14590982285307290844.a, A017590.P8338392382083469832.a, A017581, A017581.P8854877261644846518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017590

/-! ## A017590.P8247523087270048973

`abs(Δ[A049452(n)]^10)`
-/

namespace A017590.P8247523087270048973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) ^ 10|

end

end A017590.P8247523087270048973

namespace A017590

/-- `abs(Δ[A049452(n)]^10)` -/
def P8247523087270048973.Spec : Prop :=
  ∀ n, P8247523087270048973.a n = A017590 n

end A017590

/-! ## A017590.P1505771890103267356

`A008454(A016945(2*n)+2)`
-/

namespace A017590.P1505771890103267356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016945 (2 * n) + 2).toNat

end

end A017590.P1505771890103267356

namespace A017590

/-- `A008454(A016945(2*n)+2)` -/
def P1505771890103267356.Spec : Prop :=
  ∀ n, P1505771890103267356.a n = A017590 n

end A017590

/-!
# A017591: a(n) = (12*n + 5)^11.

The programs for A017591, the canonical program `A017591.P4204010285185150958` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017591 has offset 0).

The definition of A017591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017591.P4204010285185150958

`Δ[6*n²-n]^11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017591

/-- `Δ[6*n²-n]^11` -/
def P4204010285185150958.Spec : Prop :=
  ∀ n, P4204010285185150958.a n = A017591 n

theorem P4204010285185150958.correct : P4204010285185150958.Spec := by
  intro n
  simp only [A017591]

end A017591

/-! ## A017591.P12591881869090493486

`(12*n+5)^8*A017583(n)`
-/

namespace A017591.P12591881869090493486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((12 * n + 5) ^ 8 : ℤ) * A017583 n

end

end A017591.P12591881869090493486

namespace A017591

/-- `(12*n+5)^8*A017583(n)` -/
def P12591881869090493486.Spec : Prop :=
  ∀ n, P12591881869090493486.a n = A017591 n

theorem P12591881869090493486.correct : P12591881869090493486.Spec := by
  intro n
  simp only [A017591, Nat.add_sub_cancel, A017591.P12591881869090493486.a, A017591.P4204010285185150958.f1, A017591.P4204010285185150958.a, A017583, A017583.P9859367136420472610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017591

/-! ## A017591.P5204302069260369727

`((12*n+5)^8)²/A017585(n)`
-/

namespace A017591.P5204302069260369727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((12 * n + 5) ^ 8) ^ 2 : ℚ) / (A017585 n : ℚ)

end

end A017591.P5204302069260369727

namespace A017591

/-- `((12*n+5)^8)²/A017585(n)` -/
def P5204302069260369727.Spec : Prop :=
  ∀ n, P5204302069260369727.a n = (A017591 n : ℚ)

theorem P5204302069260369727.correct : P5204302069260369727.Spec := by
  intro n
  simp only [A017591, Nat.add_sub_cancel, A017591.P5204302069260369727.a, A017591.P4204010285185150958.f1, A017591.P4204010285185150958.a, A017585, A017585.P15106499126588840710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017591

/-! ## A017591.P4395823401992507636

`sqrt(A017586(n))*(12*n+5)^8`
-/

namespace A017591.P4395823401992507636
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017586 n : ℝ) * ((12 * n + 5) ^ 8 : ℝ)

end

end A017591.P4395823401992507636

namespace A017591

/-- `sqrt(A017586(n))*(12*n+5)^8` -/
def P4395823401992507636.Spec : Prop :=
  ∀ n, P4395823401992507636.a n = (A017591 n : ℝ)

end A017591

/-! ## A017591.P8759439276115716488

`A017583(n)*A017588(n)`
-/

namespace A017591.P8759439276115716488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017583 n * A017588 n

end

end A017591.P8759439276115716488

namespace A017591

/-- `A017583(n)*A017588(n)` -/
def P8759439276115716488.Spec : Prop :=
  ∀ n, P8759439276115716488.a n = A017591 n

theorem P8759439276115716488.correct : P8759439276115716488.Spec := by
  intro n
  simp only [A017591, Nat.add_sub_cancel, A017591.P8759439276115716488.a, A017591.P4204010285185150958.f1, A017591.P4204010285185150958.a, A017583, A017583.P9859367136420472610.a, A017588, A017588.P5965258687465439751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017591

/-! ## A017591.P11329528116119710074

`A017585(n)*A017586(n)`
-/

namespace A017591.P11329528116119710074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017585 n * A017586 n

end

end A017591.P11329528116119710074

namespace A017591

/-- `A017585(n)*A017586(n)` -/
def P11329528116119710074.Spec : Prop :=
  ∀ n, P11329528116119710074.a n = A017591 n

theorem P11329528116119710074.correct : P11329528116119710074.Spec := by
  intro n
  simp only [A017591, Nat.add_sub_cancel, A017591.P11329528116119710074.a, A017591.P4204010285185150958.f1, A017591.P4204010285185150958.a, A017585, A017585.P15106499126588840710.a, A017586, A017586.P7448404478609709150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017591

/-! ## A017591.P15912829250151657600

`A017584(n)²*sqrt(A017586(n))`
-/

namespace A017591.P15912829250151657600
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017584 n ^ 2 : ℝ) * Real.sqrt (A017586 n : ℝ)

end

end A017591.P15912829250151657600

namespace A017591

/-- `A017584(n)²*sqrt(A017586(n))` -/
def P15912829250151657600.Spec : Prop :=
  ∀ n, P15912829250151657600.a n = (A017591 n : ℝ)

end A017591

/-! ## A017591.P5520124826418724686

`sqrt(A017582(n)^11)`
-/

namespace A017591.P5520124826418724686
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017582 n ^ 11 : ℝ)

end

end A017591.P5520124826418724686

namespace A017591

/-- `sqrt(A017582(n)^11)` -/
def P5520124826418724686.Spec : Prop :=
  ∀ n, P5520124826418724686.a n = (A017591 n : ℝ)

end A017591

/-!
# A017592: a(n) = (12*n + 5)^12.

The programs for A017592, the canonical program `A017592.P3144249784874374152` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017592 has offset 0).

The definition of A017592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017592.P3144249784874374152

`A017586(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017592

/-- `A017586(n)²` -/
def P3144249784874374152.Spec : Prop :=
  ∀ n, P3144249784874374152.a n = A017592 n

theorem P3144249784874374152.correct : P3144249784874374152.Spec := by
  intro n
  simp only [A017592]

end A017592

/-! ## A017592.P4727743270075250724

`A017584(n)^3`
-/

namespace A017592.P4727743270075250724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017584 n ^ 3

end

end A017592.P4727743270075250724

namespace A017592

/-- `A017584(n)^3` -/
def P4727743270075250724.Spec : Prop :=
  ∀ n, P4727743270075250724.a n = A017592 n

theorem P4727743270075250724.correct : P4727743270075250724.Spec := by
  intro n
  simp only [A017592, Nat.add_sub_cancel, A017592.P4727743270075250724.a, A017592.P3144249784874374152.a, A017584, A017584.P16811490781449679169.a, A017586, A017586.P7448404478609709150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017592

/-! ## A017592.P10740845029301937333

`A017583(n)^4`
-/

namespace A017592.P10740845029301937333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017583 n ^ 4

end

end A017592.P10740845029301937333

namespace A017592

/-- `A017583(n)^4` -/
def P10740845029301937333.Spec : Prop :=
  ∀ n, P10740845029301937333.a n = A017592 n

theorem P10740845029301937333.correct : P10740845029301937333.Spec := by
  intro n
  simp only [A017592, Nat.add_sub_cancel, A017592.P10740845029301937333.a, A017592.P3144249784874374152.a, A017583, A017583.P9859367136420472610.a, A017586, A017586.P7448404478609709150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017592

/-! ## A017592.P7042613029739942969

`A017582(n)^6`
-/

namespace A017592.P7042613029739942969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017582 n ^ 6

end

end A017592.P7042613029739942969

namespace A017592

/-- `A017582(n)^6` -/
def P7042613029739942969.Spec : Prop :=
  ∀ n, P7042613029739942969.a n = A017592 n

theorem P7042613029739942969.correct : P7042613029739942969.Spec := by
  intro n
  simp only [A017592, Nat.add_sub_cancel, A017592.P7042613029739942969.a, A017592.P3144249784874374152.a, A017582, A017582.P1428421118661891129.a, A017586, A017586.P7448404478609709150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017592

/-! ## A017592.P8683338225778390007

`A016972(2*n)^3`
-/

namespace A017592.P8683338225778390007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016972 (2 * n) ^ 3

end

end A017592.P8683338225778390007

namespace A017592

/-- `A016972(2*n)^3` -/
def P8683338225778390007.Spec : Prop :=
  ∀ n, P8683338225778390007.a n = A017592 n

theorem P8683338225778390007.correct : P8683338225778390007.Spec := by
  intro n
  simp only [A017592, Nat.add_sub_cancel, A017592.P8683338225778390007.a, A017592.P3144249784874374152.a, A016972, A016972.P18248330829088465920.a, A017586, A017586.P7448404478609709150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017592

/-! ## A017592.P16235744339357484520

`A016980(2*n%A001014(∑[n+1]))`
-/

namespace A017592.P16235744339357484520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016980 (2 * Int.tmod (n : ℤ) (A001014 (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A017592.P16235744339357484520

namespace A017592

/-- `A016980(2*n%A001014(∑[n+1]))` -/
def P16235744339357484520.Spec : Prop :=
  ∀ n, P16235744339357484520.a n = A017592 n

end A017592

/-!
# A017593: a(n) = 12*n + 6.

The programs for A017593, the canonical program `A017593.P13091213750843470751` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017593 has offset 0).

The definition of A017593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n+6` (program `A017593.P13091213750843470751`, by `A017593.P13091213750843470751.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017593.P13091213750843470751

`12*n+6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017593

/-- `12*n+6` -/
def P13091213750843470751.Spec : Prop :=
  ∀ n, (P13091213750843470751.a n : ℤ) = A017593 n

theorem P13091213750843470751.correct : P13091213750843470751.Spec := by
  intro n
  simp only [A017593]

end A017593

/-!
# A017594: a(n) = (12*n + 6)^2.

The programs for A017594, the canonical program `A017594.P9971712820933043582` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017594 has offset 0).

The definition of A017594 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+6)²` (program `A017594.P9971712820933043582`, by `A017594.P9971712820933043582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017594.P9971712820933043582

`(12*n+6)²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017594

/-- `(12*n+6)²` -/
def P9971712820933043582.Spec : Prop :=
  ∀ n, (P9971712820933043582.a n : ℤ) = A017594 n

theorem P9971712820933043582.correct : P9971712820933043582.Spec := by
  intro n
  simp only [A017594]

end A017594

/-! ## A017594.P7755477250364587287

`a(n-1)+288*n` with `a(0)=36`
-/

namespace A017594.P7755477250364587287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [36] fun n a =>
  a (n - 1) + 288 * n

end

end A017594.P7755477250364587287

namespace A017594

/-- `a(n-1)+288*n` -/
def P7755477250364587287.Spec : Prop :=
  ∀ n, (P7755477250364587287.a n : ℤ) = A017594 n

theorem P7755477250364587287.correct : P7755477250364587287.Spec := by
  intro n
  induction n with
  | zero => simp [A017594, A017594.P7755477250364587287.a, A017594.P9971712820933043582.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A017594, Nat.add_sub_cancel, A017594.P7755477250364587287.a, A017594.P9971712820933043582.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A017594

/-! ## A017594.P15517016055774841534

`ogf((36+216x+36x^2)/(1-3x+3x^2-x^3))`
-/

namespace A017594.P15517016055774841534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [36, 216, 36] [1, -3, 3, -1] n

end

end A017594.P15517016055774841534

namespace A017594

/-- `ogf((36+216x+36x^2)/(1-3x+3x^2-x^3))` -/
def P15517016055774841534.Spec : Prop :=
  ∀ n, P15517016055774841534.a n = A017594 n

end A017594

/-! ## A017594.P3343273645612402170

`record[(6*xor(1, n))²]`
-/

namespace A017594.P3343273645612402170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * Nat.xor 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017594.P3343273645612402170

namespace A017594

/-- `record[(6*xor(1, n))²]` -/
def P3343273645612402170.Spec : Prop :=
  ∀ n, (P3343273645612402170.a n : ℤ) = A017594 n

end A017594

/-! ## A017594.P4258629278507518795

`record[lcm(2, 3*(n-1))²]`
-/

namespace A017594.P4258629278507518795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (3 * ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017594.P4258629278507518795

namespace A017594

/-- `record[lcm(2, 3*(n-1))²]` -/
def P4258629278507518795.Spec : Prop :=
  ∀ n, (P4258629278507518795.a n : ℤ) = A017594 n

end A017594

/-! ## A017594.P17058404599701640882

`4*(3*or(1, 2*n))²`
-/

namespace A017594.P17058404599701640882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (3 * Nat.lor 1 (2 * n)) ^ 2

end

end A017594.P17058404599701640882

namespace A017594

/-- `4*(3*or(1, 2*n))²` -/
def P17058404599701640882.Spec : Prop :=
  ∀ n, (P17058404599701640882.a n : ℤ) = A017594 n

end A017594

/-! ## A017594.P13270531699877469694

`4*(3*xor(1, 2*n))²`
-/

namespace A017594.P13270531699877469694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (3 * Nat.xor 1 (2 * n)) ^ 2

end

end A017594.P13270531699877469694

namespace A017594

/-- `4*(3*xor(1, 2*n))²` -/
def P13270531699877469694.Spec : Prop :=
  ∀ n, (P13270531699877469694.a n : ℤ) = A017594 n

end A017594

/-! ## A017594.P4961455647575710181

`(6*(2*n+1))^acos(cos(2))`
-/

namespace A017594.P4961455647575710181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (6 * (2 * n + 1) : ℝ) ^ (Real.arccos (Real.cos (2 : ℝ)))

end

end A017594.P4961455647575710181

namespace A017594

/-- `(6*(2*n+1))^acos(cos(2))` -/
def P4961455647575710181.Spec : Prop :=
  ∀ n, P4961455647575710181.a n = (A017594 n : ℝ)

end A017594

/-! ## A017594.P5501532084239728617

`(6*(2*n+1))^(2%(n+3))`
-/

namespace A017594.P5501532084239728617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * (2 * n + 1)) ^ (2 % (n + 3))

end

end A017594.P5501532084239728617

namespace A017594

/-- `(6*(2*n+1))^(2%(n+3))` -/
def P5501532084239728617.Spec : Prop :=
  ∀ n, (P5501532084239728617.a n : ℤ) = A017594 n

end A017594

/-! ## A017594.P15089823936934634667

`(6*(2*n+1))^gcd(2, 2*n)`
-/

namespace A017594.P15089823936934634667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * (2 * n + 1)) ^ Nat.gcd 2 (2 * n)

end

end A017594.P15089823936934634667

namespace A017594

/-- `(6*(2*n+1))^gcd(2, 2*n)` -/
def P15089823936934634667.Spec : Prop :=
  ∀ n, (P15089823936934634667.a n : ℤ) = A017594 n

theorem P15089823936934634667.correct : P15089823936934634667.Spec := by
  intro n
  simp only [A017594, Nat.add_sub_cancel, A017594.P15089823936934634667.a, A017594.P9971712820933043582.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017594

/-! ## A017594.P16780225494237544496

`(6*(2*n+1))^ceil(atan(n+2))`
-/

namespace A017594.P16780225494237544496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * (2 * n + 1) : ℚ) ^ (⌈Real.arctan (n + 2 : ℝ)⌉ : ℤ)

end

end A017594.P16780225494237544496

namespace A017594

/-- `(6*(2*n+1))^ceil(atan(n+2))` -/
def P16780225494237544496.Spec : Prop :=
  ∀ n, P16780225494237544496.a n = (A017594 n : ℚ)

end A017594

/-! ## A017594.P7184415348962354352

`sqrt(A017596(n))`
-/

namespace A017594.P7184415348962354352
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017596 n : ℝ)

end

end A017594.P7184415348962354352

namespace A017594

/-- `sqrt(A017596(n))` -/
def P7184415348962354352.Spec : Prop :=
  ∀ n, P7184415348962354352.a n = (A017594 n : ℝ)

end A017594

/-! ## A017594.P3717963699898373454

`4*A016946(n)`
-/

namespace A017594.P3717963699898373454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016946 n

end

end A017594.P3717963699898373454

namespace A017594

/-- `4*A016946(n)` -/
def P3717963699898373454.Spec : Prop :=
  ∀ n, P3717963699898373454.a n = A017594 n

theorem P3717963699898373454.correct : P3717963699898373454.Spec := by
  intro n
  simp only [A017594, Nat.add_sub_cancel, A017594.P3717963699898373454.a, A017594.P9971712820933043582.a, A016946, A016946.P16494615086453922637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017594

/-! ## A017594.P11166350692244554247

`6*A260955(n)`
-/

namespace A017594.P11166350692244554247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A260955 n

end

end A017594.P11166350692244554247

namespace A017594

/-- `6*A260955(n)` -/
def P11166350692244554247.Spec : Prop :=
  ∀ n, P11166350692244554247.a n = A017594 n

theorem P11166350692244554247.correct : P11166350692244554247.Spec := by
  intro n
  simp only [A017594, Nat.add_sub_cancel, A017594.P11166350692244554247.a, A017594.P9971712820933043582.a, A260955, A260955.P4305537005508239230.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017594

/-! ## A017594.P10533894268511036328

`9*A016826(n)`
-/

namespace A017594.P10533894268511036328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A016826 n

end

end A017594.P10533894268511036328

namespace A017594

/-- `9*A016826(n)` -/
def P10533894268511036328.Spec : Prop :=
  ∀ n, P10533894268511036328.a n = A017594 n

theorem P10533894268511036328.correct : P10533894268511036328.Spec := by
  intro n
  simp only [A017594, Nat.add_sub_cancel, A017594.P10533894268511036328.a, A017594.P9971712820933043582.a, A016826, A016826.P3235835473290805917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017594

/-! ## A017594.P12380254282422248678

`sqrt(sqrt(A017600(n)))`
-/

namespace A017594.P12380254282422248678
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017600 n : ℝ))

end

end A017594.P12380254282422248678

namespace A017594

/-- `sqrt(sqrt(A017600(n)))` -/
def P12380254282422248678.Spec : Prop :=
  ∀ n, P12380254282422248678.a n = (A017594 n : ℝ)

end A017594

/-! ## A017594.P373953273330942477

`4*A016945(n)²`
-/

namespace A017594.P373953273330942477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016945 n ^ 2

end

end A017594.P373953273330942477

namespace A017594

/-- `4*A016945(n)²` -/
def P373953273330942477.Spec : Prop :=
  ∀ n, P373953273330942477.a n = A017594 n

theorem P373953273330942477.correct : P373953273330942477.Spec := by
  intro n
  simp only [A017594, Nat.add_sub_cancel, A017594.P373953273330942477.a, A017594.P9971712820933043582.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017594

/-! ## A017594.P9923085354556783229

`4*sqrt(A016948(n))`
-/

namespace A017594.P9923085354556783229
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A016948 n : ℝ)

end

end A017594.P9923085354556783229

namespace A017594

/-- `4*sqrt(A016948(n))` -/
def P9923085354556783229.Spec : Prop :=
  ∀ n, P9923085354556783229.a n = (A017594 n : ℝ)

end A017594

/-! ## A017594.P744805197068445961

`lcm(2, A017593(n)²)`
-/

namespace A017594.P744805197068445961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A017593 n ^ 2)

end

end A017594.P744805197068445961

namespace A017594

/-- `lcm(2, A017593(n)²)` -/
def P744805197068445961.Spec : Prop :=
  ∀ n, (P744805197068445961.a n : ℤ) = A017594 n

end A017594

/-! ## A017594.P9547601038376721365

`4*(A144410(n)+1)`
-/

namespace A017594.P9547601038376721365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A144410 n + 1)

end

end A017594.P9547601038376721365

namespace A017594

/-- `4*(A144410(n)+1)` -/
def P9547601038376721365.Spec : Prop :=
  ∀ n, P9547601038376721365.a n = A017594 n

theorem P9547601038376721365.correct : P9547601038376721365.Spec := by
  intro n
  simp only [A017594, Nat.add_sub_cancel, A017594.P9547601038376721365.a, A017594.P9971712820933043582.a, A144410, A144410.P8365255097243004447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017594

/-!
# A017595: a(n) = (12*n + 6)^3.

The programs for A017595, the canonical program `A017595.P5808580862531119874` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017595 has offset 0).

The definition of A017595 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+6)^3` (program `A017595.P5808580862531119874`, by `A017595.P5808580862531119874.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017595.P5808580862531119874

`(12*n+6)^3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017595

/-- `(12*n+6)^3` -/
def P5808580862531119874.Spec : Prop :=
  ∀ n, (P5808580862531119874.a n : ℤ) = A017595 n

theorem P5808580862531119874.correct : P5808580862531119874.Spec := by
  intro n
  simp only [A017595]

end A017595

/-! ## A017595.P6394380535783233613

`record[(6*xor(1, n))^3]`
-/

namespace A017595.P6394380535783233613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * Nat.xor 1 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017595.P6394380535783233613

namespace A017595

/-- `record[(6*xor(1, n))^3]` -/
def P6394380535783233613.Spec : Prop :=
  ∀ n, (P6394380535783233613.a n : ℤ) = A017595 n

end A017595

/-! ## A017595.P16959211598789974749

`record[lcm(2, 3*(n-1))^3]`
-/

namespace A017595.P16959211598789974749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (3 * ((n : ℤ) - 1)) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017595.P16959211598789974749

namespace A017595

/-- `record[lcm(2, 3*(n-1))^3]` -/
def P16959211598789974749.Spec : Prop :=
  ∀ n, (P16959211598789974749.a n : ℤ) = A017595 n

end A017595

/-! ## A017595.P7564417034881778788

`6*or(1, 2*n)*(6*or(1, 2*n))²`
-/

namespace A017595.P7564417034881778788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.lor 1 (2 * n) * (6 * Nat.lor 1 (2 * n)) ^ 2

end

end A017595.P7564417034881778788

namespace A017595

/-- `6*or(1, 2*n)*(6*or(1, 2*n))²` -/
def P7564417034881778788.Spec : Prop :=
  ∀ n, (P7564417034881778788.a n : ℤ) = A017595 n

end A017595

/-! ## A017595.P1991341511293547293

`sqrt(A017598(n))`
-/

namespace A017595.P1991341511293547293
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017598 n : ℝ)

end

end A017595.P1991341511293547293

namespace A017595

/-- `sqrt(A017598(n))` -/
def P1991341511293547293.Spec : Prop :=
  ∀ n, P1991341511293547293.a n = (A017595 n : ℝ)

end A017595

/-! ## A017595.P2777598820817989834

`8*A016947(n)`
-/

namespace A017595.P2777598820817989834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016947 n

end

end A017595.P2777598820817989834

namespace A017595

/-- `8*A016947(n)` -/
def P2777598820817989834.Spec : Prop :=
  ∀ n, P2777598820817989834.a n = A017595 n

theorem P2777598820817989834.correct : P2777598820817989834.Spec := by
  intro n
  simp only [A017595, Nat.add_sub_cancel, A017595.P2777598820817989834.a, A017595.P5808580862531119874.a, A016947, A016947.P4365293070950782915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017595

/-! ## A017595.P13026533174857649397

`sqrt(A017594(n)^3)`
-/

namespace A017595.P13026533174857649397
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017594 n ^ 3 : ℝ)

end

end A017595.P13026533174857649397

namespace A017595

/-- `sqrt(A017594(n)^3)` -/
def P13026533174857649397.Spec : Prop :=
  ∀ n, P13026533174857649397.a n = (A017595 n : ℝ)

end A017595

/-! ## A017595.P17885765279222066725

`8*A016945(n)^3`
-/

namespace A017595.P17885765279222066725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016945 n ^ 3

end

end A017595.P17885765279222066725

namespace A017595

/-- `8*A016945(n)^3` -/
def P17885765279222066725.Spec : Prop :=
  ∀ n, P17885765279222066725.a n = A017595 n

theorem P17885765279222066725.correct : P17885765279222066725.Spec := by
  intro n
  simp only [A017595, Nat.add_sub_cancel, A017595.P17885765279222066725.a, A017595.P5808580862531119874.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017595

/-! ## A017595.P10147183750905518792

`A017593(n)*A017594(n)`
-/

namespace A017595.P10147183750905518792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n * A017594 n

end

end A017595.P10147183750905518792

namespace A017595

/-- `A017593(n)*A017594(n)` -/
def P10147183750905518792.Spec : Prop :=
  ∀ n, P10147183750905518792.a n = A017595 n

theorem P10147183750905518792.correct : P10147183750905518792.Spec := by
  intro n
  simp only [A017595, Nat.add_sub_cancel, A017595.P10147183750905518792.a, A017595.P5808580862531119874.a, A017593, A017593.P13091213750843470751.a, A017594, A017594.P9971712820933043582.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017595

/-! ## A017595.P5062548903518237699

`A017596(n)/A017593(n)`
-/

namespace A017595.P5062548903518237699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017596 n : ℚ) / (A017593 n : ℚ)

end

end A017595.P5062548903518237699

namespace A017595

/-- `A017596(n)/A017593(n)` -/
def P5062548903518237699.Spec : Prop :=
  ∀ n, P5062548903518237699.a n = (A017595 n : ℚ)

end A017595

/-! ## A017595.P13841095898053540921

`A017597(n)/A017594(n)`
-/

namespace A017595.P13841095898053540921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017597 n : ℚ) / (A017594 n : ℚ)

end

end A017595.P13841095898053540921

namespace A017595

/-- `A017597(n)/A017594(n)` -/
def P13841095898053540921.Spec : Prop :=
  ∀ n, P13841095898053540921.a n = (A017595 n : ℚ)

end A017595

/-! ## A017595.P4154590965614602046

`lcm(A016827(n), A016947(n))`
-/

namespace A017595.P4154590965614602046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016827 n) (A016947 n)

end

end A017595.P4154590965614602046

namespace A017595

/-- `lcm(A016827(n), A016947(n))` -/
def P4154590965614602046.Spec : Prop :=
  ∀ n, (P4154590965614602046.a n : ℤ) = A017595 n

end A017595

/-! ## A017595.P300515361152260148

`A017597(n)/A017593(n)²`
-/

namespace A017595.P300515361152260148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017597 n : ℚ) / (A017593 n ^ 2 : ℚ)

end

end A017595.P300515361152260148

namespace A017595

/-- `A017597(n)/A017593(n)²` -/
def P300515361152260148.Spec : Prop :=
  ∀ n, P300515361152260148.a n = (A017595 n : ℚ)

end A017595

/-! ## A017595.P2050371172077374069

`Δ[A033581(n)]²*Δ[A033581(n)]`
-/

namespace A017595.P2050371172077374069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017595.P2050371172077374069

namespace A017595

/-- `Δ[A033581(n)]²*Δ[A033581(n)]` -/
def P2050371172077374069.Spec : Prop :=
  ∀ n, P2050371172077374069.a n = A017595 n

theorem P2050371172077374069.correct : P2050371172077374069.Spec := by
  intro n
  simp only [A017595, Nat.add_sub_cancel, A017595.P2050371172077374069.f1, A017595.P2050371172077374069.f2, A017595.P2050371172077374069.a, A017595.P5808580862531119874.a, A033581, A033581.P13583599227635646969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017595

/-! ## A017595.P4965815919975174799

`A017598(n)/(A017593(n)²*A017593(n))`
-/

namespace A017595.P4965815919975174799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017598 n : ℚ) / (A017593 n ^ 2 * A017593 n : ℚ)

end

end A017595.P4965815919975174799

namespace A017595

/-- `A017598(n)/(A017593(n)²*A017593(n))` -/
def P4965815919975174799.Spec : Prop :=
  ∀ n, P4965815919975174799.a n = (A017595 n : ℚ)

end A017595

/-! ## A017595.P10411819180803132994

`Δ[A097803(n)]²*Δ[A097803(n)]`
-/

namespace A017595.P10411819180803132994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017595.P10411819180803132994

namespace A017595

/-- `Δ[A097803(n)]²*Δ[A097803(n)]` -/
def P10411819180803132994.Spec : Prop :=
  ∀ n, P10411819180803132994.a n = A017595 n

theorem P10411819180803132994.correct : P10411819180803132994.Spec := by
  intro n
  simp only [A017595, Nat.add_sub_cancel, A017595.P10411819180803132994.f1, A017595.P10411819180803132994.f2, A017595.P10411819180803132994.a, A017595.P5808580862531119874.a, A097803, A097803.P14601754456533614847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017595

/-! ## A017595.P18234813377447422955

`Δ[A140811(n)]²*Δ[A140811(n)]`
-/

namespace A017595.P18234813377447422955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017595.P18234813377447422955

namespace A017595

/-- `Δ[A140811(n)]²*Δ[A140811(n)]` -/
def P18234813377447422955.Spec : Prop :=
  ∀ n, P18234813377447422955.a n = A017595 n

theorem P18234813377447422955.correct : P18234813377447422955.Spec := by
  intro n
  simp only [A017595, Nat.add_sub_cancel, A017595.P18234813377447422955.f1, A017595.P18234813377447422955.f2, A017595.P18234813377447422955.a, A017595.P5808580862531119874.a, A140811, A140811.P17716776478933671421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017595

/-! ## A017595.P5509966134935938791

`(A016910(n+1)-A016910(n))*A260955(n)`
-/

namespace A017595.P5509966134935938791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016910 (n + 1) - A016910 n) * A260955 n

end

end A017595.P5509966134935938791

namespace A017595

/-- `(A016910(n+1)-A016910(n))*A260955(n)` -/
def P5509966134935938791.Spec : Prop :=
  ∀ n, P5509966134935938791.a n = A017595 n

theorem P5509966134935938791.correct : P5509966134935938791.Spec := by
  intro n
  simp only [A017595, Nat.add_sub_cancel, A017595.P5509966134935938791.a, A017595.P5808580862531119874.a, A016910, A016910.P3732514033866141413.a, A260955, A260955.P4305537005508239230.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017595

/-! ## A017595.P88119178623217135

`record[(n+6)^floor(log2(gcd(12, n)))]`
-/

namespace A017595.P88119178623217135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 6) ^ Nat.log 2 (Nat.gcd 12 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017595.P88119178623217135

namespace A017595

/-- `record[(n+6)^floor(log2(gcd(12, n)))]` -/
def P88119178623217135.Spec : Prop :=
  ∀ n, (P88119178623217135.a n : ℤ) = A017595 n

end A017595

/-! ## A017595.P2392784619936381624

`A016911(Δ[n²])`
-/

namespace A017595.P2392784619936381624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016911 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017595.P2392784619936381624

namespace A017595

/-- `A016911(Δ[n²])` -/
def P2392784619936381624.Spec : Prop :=
  ∀ n, P2392784619936381624.a n = A017595 n

end A017595

/-!
# A017596: a(n) = (12*n + 6)^4.

The programs for A017596, the canonical program `A017596.P5519379892548272549` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017596 has offset 0).

The definition of A017596 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+6)^4` (program `A017596.P5519379892548272549`, by `A017596.P5519379892548272549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017596.P5519379892548272549

`(12*n+6)^4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017596

/-- `(12*n+6)^4` -/
def P5519379892548272549.Spec : Prop :=
  ∀ n, (P5519379892548272549.a n : ℤ) = A017596 n

theorem P5519379892548272549.correct : P5519379892548272549.Spec := by
  intro n
  simp only [A017596]

end A017596

/-! ## A017596.P11024817192643334283

`record[(6*xor(1, n))^4]`
-/

namespace A017596.P11024817192643334283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * Nat.xor 1 n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017596.P11024817192643334283

namespace A017596

/-- `record[(6*xor(1, n))^4]` -/
def P11024817192643334283.Spec : Prop :=
  ∀ n, (P11024817192643334283.a n : ℤ) = A017596 n

end A017596

/-! ## A017596.P3661580199515434877

`lcm(2, 6*n+3)²²`
-/

namespace A017596.P3661580199515434877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (6 * n + 3) ^ 2) ^ 2

end

end A017596.P3661580199515434877

namespace A017596

/-- `lcm(2, 6*n+3)²²` -/
def P3661580199515434877.Spec : Prop :=
  ∀ n, (P3661580199515434877.a n : ℤ) = A017596 n

end A017596

/-! ## A017596.P14377655324245176841

`(3*or(2, 4*n))²²`
-/

namespace A017596.P14377655324245176841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.lor 2 (4 * n)) ^ 2) ^ 2

end

end A017596.P14377655324245176841

namespace A017596

/-- `(3*or(2, 4*n))²²` -/
def P14377655324245176841.Spec : Prop :=
  ∀ n, (P14377655324245176841.a n : ℤ) = A017596 n

end A017596

/-! ## A017596.P3563578043169710205

`(3*xor(2, 4*n))²²`
-/

namespace A017596.P3563578043169710205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.xor 2 (4 * n)) ^ 2) ^ 2

end

end A017596.P3563578043169710205

namespace A017596

/-- `(3*xor(2, 4*n))²²` -/
def P3563578043169710205.Spec : Prop :=
  ∀ n, (P3563578043169710205.a n : ℤ) = A017596 n

end A017596

/-! ## A017596.P13416794078520260787

`((2*n+1)/tan(acot(6)))²²`
-/

namespace A017596.P13416794078520260787
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1 : ℝ) / Real.tan (SequenceMachineLib.acot (6 : ℝ))) ^ 2) ^ 2

end

end A017596.P13416794078520260787

namespace A017596

/-- `((2*n+1)/tan(acot(6)))²²` -/
def P13416794078520260787.Spec : Prop :=
  ∀ n, P13416794078520260787.a n = (A017596 n : ℝ)

end A017596

/-! ## A017596.P16707576762768631387

`((2*n+1)/cot(atan(6)))²²`
-/

namespace A017596.P16707576762768631387
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1 : ℝ) / Real.cot (Real.arctan (6 : ℝ))) ^ 2) ^ 2

end

end A017596.P16707576762768631387

namespace A017596

/-- `((2*n+1)/cot(atan(6)))²²` -/
def P16707576762768631387.Spec : Prop :=
  ∀ n, P16707576762768631387.a n = (A017596 n : ℝ)

end A017596

/-! ## A017596.P14330360215895248123

`(6*C(2*n+1, 2*n))²²`
-/

namespace A017596.P14330360215895248123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((6 * Nat.choose (2 * n + 1) (2 * n)) ^ 2) ^ 2

end

end A017596.P14330360215895248123

namespace A017596

/-- `(6*C(2*n+1, 2*n))²²` -/
def P14330360215895248123.Spec : Prop :=
  ∀ n, (P14330360215895248123.a n : ℤ) = A017596 n

theorem P14330360215895248123.correct : P14330360215895248123.Spec := by
  intro n
  simp only [A017596, Nat.add_sub_cancel, A017596.P14330360215895248123.a, A017596.P5519379892548272549.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017596

/-! ## A017596.P3109218064538728663

`Δ[Δ[(n-1)*C(2*n, 2)]]²²`
-/

namespace A017596.P3109218064538728663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose (2 * n) 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017596.P3109218064538728663

namespace A017596

/-- `Δ[Δ[(n-1)*C(2*n, 2)]]²²` -/
def P3109218064538728663.Spec : Prop :=
  ∀ n, P3109218064538728663.a n = A017596 n

theorem P3109218064538728663.correct : P3109218064538728663.Spec := by
  intro n
  simp only [A017596, Nat.add_sub_cancel, A017596.P3109218064538728663.f2, A017596.P3109218064538728663.f1, A017596.P3109218064538728663.a, A017596.P5519379892548272549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017596

/-! ## A017596.P8983153108279494319

`A017594(n)²`
-/

namespace A017596.P8983153108279494319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017594 n ^ 2

end

end A017596.P8983153108279494319

namespace A017596

/-- `A017594(n)²` -/
def P8983153108279494319.Spec : Prop :=
  ∀ n, P8983153108279494319.a n = A017596 n

theorem P8983153108279494319.correct : P8983153108279494319.Spec := by
  intro n
  simp only [A017596, Nat.add_sub_cancel, A017596.P8983153108279494319.a, A017596.P5519379892548272549.a, A017594, A017594.P9971712820933043582.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017596

/-! ## A017596.P11853205175398301598

`sqrt(A017600(n))`
-/

namespace A017596.P11853205175398301598
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017600 n : ℝ)

end

end A017596.P11853205175398301598

namespace A017596

/-- `sqrt(A017600(n))` -/
def P11853205175398301598.Spec : Prop :=
  ∀ n, P11853205175398301598.a n = (A017596 n : ℝ)

end A017596

/-! ## A017596.P2422355245798529138

`A017593(n)²²`
-/

namespace A017596.P2422355245798529138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017593 n ^ 2) ^ 2

end

end A017596.P2422355245798529138

namespace A017596

/-- `A017593(n)²²` -/
def P2422355245798529138.Spec : Prop :=
  ∀ n, P2422355245798529138.a n = A017596 n

theorem P2422355245798529138.correct : P2422355245798529138.Spec := by
  intro n
  simp only [A017596, Nat.add_sub_cancel, A017596.P2422355245798529138.a, A017596.P5519379892548272549.a, A017593, A017593.P13091213750843470751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017596

/-! ## A017596.P15428003751728892487

`(4*A016946(n))²`
-/

namespace A017596.P15428003751728892487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A016946 n) ^ 2

end

end A017596.P15428003751728892487

namespace A017596

/-- `(4*A016946(n))²` -/
def P15428003751728892487.Spec : Prop :=
  ∀ n, P15428003751728892487.a n = A017596 n

theorem P15428003751728892487.correct : P15428003751728892487.Spec := by
  intro n
  simp only [A017596, Nat.add_sub_cancel, A017596.P15428003751728892487.a, A017596.P5519379892548272549.a, A016946, A016946.P16494615086453922637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017596

/-! ## A017596.P2734946593366530827

`Δ[A033581(n)]²²`
-/

namespace A017596.P2734946593366530827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017596.P2734946593366530827

namespace A017596

/-- `Δ[A033581(n)]²²` -/
def P2734946593366530827.Spec : Prop :=
  ∀ n, P2734946593366530827.a n = A017596 n

theorem P2734946593366530827.correct : P2734946593366530827.Spec := by
  intro n
  simp only [A017596, Nat.add_sub_cancel, A017596.P2734946593366530827.f1, A017596.P2734946593366530827.a, A017596.P5519379892548272549.a, A033581, A033581.P13583599227635646969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017596

/-! ## A017596.P17780714903453237830

`4*4*A016948(n)`
-/

namespace A017596.P17780714903453237830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (4 * A016948 n)

end

end A017596.P17780714903453237830

namespace A017596

/-- `4*4*A016948(n)` -/
def P17780714903453237830.Spec : Prop :=
  ∀ n, P17780714903453237830.a n = A017596 n

theorem P17780714903453237830.correct : P17780714903453237830.Spec := by
  intro n
  simp only [A017596, Nat.add_sub_cancel, A017596.P17780714903453237830.a, A017596.P5519379892548272549.a, A016948, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017596

/-! ## A017596.P8653454110318716691

`(A017581(n)+1)²²`
-/

namespace A017596.P8653454110318716691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017581 n + 1) ^ 2) ^ 2

end

end A017596.P8653454110318716691

namespace A017596

/-- `(A017581(n)+1)²²` -/
def P8653454110318716691.Spec : Prop :=
  ∀ n, P8653454110318716691.a n = A017596 n

theorem P8653454110318716691.correct : P8653454110318716691.Spec := by
  intro n
  simp only [A017596, Nat.add_sub_cancel, A017596.P8653454110318716691.a, A017596.P5519379892548272549.a, A017581, A017581.P8854877261644846518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017596

/-! ## A017596.P6687095341696362618

`(A017569(n)+2)²²`
-/

namespace A017596.P6687095341696362618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017569 n + 2) ^ 2) ^ 2

end

end A017596.P6687095341696362618

namespace A017596

/-- `(A017569(n)+2)²²` -/
def P6687095341696362618.Spec : Prop :=
  ∀ n, P6687095341696362618.a n = A017596 n

theorem P6687095341696362618.correct : P6687095341696362618.Spec := by
  intro n
  simp only [A017596, Nat.add_sub_cancel, A017596.P6687095341696362618.a, A017596.P5519379892548272549.a, A017569, A017569.P14340039372117997380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017596

/-! ## A017596.P11546614360673342009

`(1-A017605(n))²²`
-/

namespace A017596.P11546614360673342009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017605 n) ^ 2) ^ 2

end

end A017596.P11546614360673342009

namespace A017596

/-- `(1-A017605(n))²²` -/
def P11546614360673342009.Spec : Prop :=
  ∀ n, P11546614360673342009.a n = A017596 n

theorem P11546614360673342009.correct : P11546614360673342009.Spec := by
  intro n
  simp only [A017596, Nat.add_sub_cancel, A017596.P11546614360673342009.a, A017596.P5519379892548272549.a, A017605, A017605.P12903970419572684084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017596

/-! ## A017596.P2913184097977406358

`(A017557(n)+3)²²`
-/

namespace A017596.P2913184097977406358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017557 n + 3) ^ 2) ^ 2

end

end A017596.P2913184097977406358

namespace A017596

/-- `(A017557(n)+3)²²` -/
def P2913184097977406358.Spec : Prop :=
  ∀ n, P2913184097977406358.a n = A017596 n

theorem P2913184097977406358.correct : P2913184097977406358.Spec := by
  intro n
  simp only [A017596, Nat.add_sub_cancel, A017596.P2913184097977406358.a, A017596.P5519379892548272549.a, A017557, A017557.P7719209615978230604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017596

/-! ## A017596.P6241992035551728834

`(2-A017617(n))²²`
-/

namespace A017596.P6241992035551728834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017617 n) ^ 2) ^ 2

end

end A017596.P6241992035551728834

namespace A017596

/-- `(2-A017617(n))²²` -/
def P6241992035551728834.Spec : Prop :=
  ∀ n, P6241992035551728834.a n = A017596 n

theorem P6241992035551728834.correct : P6241992035551728834.Spec := by
  intro n
  simp only [A017596, Nat.add_sub_cancel, A017596.P6241992035551728834.a, A017596.P5519379892548272549.a, A017617, A017617.P15573883131522867575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017596

/-!
# A017597: a(n) = (12*n + 6)^5.

The programs for A017597, the canonical program `A017597.P17969072080987422215` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017597 has offset 0).

The definition of A017597 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+6)^5` (program `A017597.P17969072080987422215`, by `A017597.P17969072080987422215.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017597.P17969072080987422215

`(12*n+6)^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017597

/-- `(12*n+6)^5` -/
def P17969072080987422215.Spec : Prop :=
  ∀ n, (P17969072080987422215.a n : ℤ) = A017597 n

theorem P17969072080987422215.correct : P17969072080987422215.Spec := by
  intro n
  simp only [A017597]

end A017597

/-! ## A017597.P2378755185403628829

`record[(6*xor(1, n))^5]`
-/

namespace A017597.P2378755185403628829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * Nat.xor 1 n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017597.P2378755185403628829

namespace A017597

/-- `record[(6*xor(1, n))^5]` -/
def P2378755185403628829.Spec : Prop :=
  ∀ n, (P2378755185403628829.a n : ℤ) = A017597 n

end A017597

/-! ## A017597.P10422088472057496149

`record[lcm(2, 3*(n-1))^5]`
-/

namespace A017597.P10422088472057496149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (3 * ((n : ℤ) - 1)) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017597.P10422088472057496149

namespace A017597

/-- `record[lcm(2, 3*(n-1))^5]` -/
def P10422088472057496149.Spec : Prop :=
  ∀ n, (P10422088472057496149.a n : ℤ) = A017597 n

end A017597

/-! ## A017597.P8388454000811440016

`sqrt(A017594(n)^5)`
-/

namespace A017597.P8388454000811440016
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017594 n ^ 5 : ℝ)

end

end A017597.P8388454000811440016

namespace A017597

/-- `sqrt(A017594(n)^5)` -/
def P8388454000811440016.Spec : Prop :=
  ∀ n, P8388454000811440016.a n = (A017597 n : ℝ)

end A017597

/-! ## A017597.P11867278360510752754

`4*8*A016949(n)`
-/

namespace A017597.P11867278360510752754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (8 * A016949 n)

end

end A017597.P11867278360510752754

namespace A017597

/-- `4*8*A016949(n)` -/
def P11867278360510752754.Spec : Prop :=
  ∀ n, P11867278360510752754.a n = A017597 n

theorem P11867278360510752754.correct : P11867278360510752754.Spec := by
  intro n
  simp only [A017597, Nat.add_sub_cancel, A017597.P11867278360510752754.a, A017597.P17969072080987422215.a, A016949, A016949.P7895979054807280839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017597

/-! ## A017597.P1494805105051110416

`A017593(n)*A017596(n)`
-/

namespace A017597.P1494805105051110416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n * A017596 n

end

end A017597.P1494805105051110416

namespace A017597

/-- `A017593(n)*A017596(n)` -/
def P1494805105051110416.Spec : Prop :=
  ∀ n, P1494805105051110416.a n = A017597 n

theorem P1494805105051110416.correct : P1494805105051110416.Spec := by
  intro n
  simp only [A017597, Nat.add_sub_cancel, A017597.P1494805105051110416.a, A017597.P17969072080987422215.a, A017593, A017593.P13091213750843470751.a, A017596, A017596.P5519379892548272549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017597

/-! ## A017597.P4501301262330853384

`A017594(n)*A017595(n)`
-/

namespace A017597.P4501301262330853384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017594 n * A017595 n

end

end A017597.P4501301262330853384

namespace A017597

/-- `A017594(n)*A017595(n)` -/
def P4501301262330853384.Spec : Prop :=
  ∀ n, P4501301262330853384.a n = A017597 n

theorem P4501301262330853384.correct : P4501301262330853384.Spec := by
  intro n
  simp only [A017597, Nat.add_sub_cancel, A017597.P4501301262330853384.a, A017597.P17969072080987422215.a, A017594, A017594.P9971712820933043582.a, A017595, A017595.P5808580862531119874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017597

/-! ## A017597.P5117154945037157030

`A017598(n)/A017593(n)`
-/

namespace A017597.P5117154945037157030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017598 n : ℚ) / (A017593 n : ℚ)

end

end A017597.P5117154945037157030

namespace A017597

/-- `A017598(n)/A017593(n)` -/
def P5117154945037157030.Spec : Prop :=
  ∀ n, P5117154945037157030.a n = (A017597 n : ℚ)

end A017597

/-! ## A017597.P10425497579014748502

`lcm(A016829(n), A016949(n))`
-/

namespace A017597.P10425497579014748502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016829 n) (A016949 n)

end

end A017597.P10425497579014748502

namespace A017597

/-- `lcm(A016829(n), A016949(n))` -/
def P10425497579014748502.Spec : Prop :=
  ∀ n, (P10425497579014748502.a n : ℤ) = A017597 n

end A017597

/-! ## A017597.P6086110517482622773

`A017594(n)²*A017593(n)`
-/

namespace A017597.P6086110517482622773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017594 n ^ 2 * A017593 n

end

end A017597.P6086110517482622773

namespace A017597

/-- `A017594(n)²*A017593(n)` -/
def P6086110517482622773.Spec : Prop :=
  ∀ n, P6086110517482622773.a n = A017597 n

theorem P6086110517482622773.correct : P6086110517482622773.Spec := by
  intro n
  simp only [A017597, Nat.add_sub_cancel, A017597.P6086110517482622773.a, A017597.P17969072080987422215.a, A017593, A017593.P13091213750843470751.a, A017594, A017594.P9971712820933043582.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017597

/-! ## A017597.P3033017310572617115

`A017596(n)²/A017595(n)`
-/

namespace A017597.P3033017310572617115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017596 n ^ 2 : ℚ) / (A017595 n : ℚ)

end

end A017597.P3033017310572617115

namespace A017597

/-- `A017596(n)²/A017595(n)` -/
def P3033017310572617115.Spec : Prop :=
  ∀ n, P3033017310572617115.a n = (A017597 n : ℚ)

end A017597

/-! ## A017597.P3122641675877411850

`2*A073762(n+1)²*A016947(n)`
-/

namespace A017597.P3122641675877411850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A073762 (n + 1) ^ 2 * A016947 n)

end

end A017597.P3122641675877411850

namespace A017597

/-- `2*A073762(n+1)²*A016947(n)` -/
def P3122641675877411850.Spec : Prop :=
  ∀ n, P3122641675877411850.a n = A017597 n

theorem P3122641675877411850.correct : P3122641675877411850.Spec := by
  intro n
  simp only [A017597, Nat.add_sub_cancel, A017597.P3122641675877411850.a, A017597.P17969072080987422215.a, A016947, A016947.P4365293070950782915.a, A073762, A073762.P2466953430987671134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017597

/-! ## A017597.P708506450760449535

`A016913(Δ[n²])`
-/

namespace A017597.P708506450760449535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016913 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017597.P708506450760449535

namespace A017597

/-- `A016913(Δ[n²])` -/
def P708506450760449535.Spec : Prop :=
  ∀ n, P708506450760449535.a n = A017597 n

end A017597

/-! ## A017597.P11513520465841432522

`lcm(2, A016913(2*n+1))`
-/

namespace A017597.P11513520465841432522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016913 (2 * n + 1))

end

end A017597.P11513520465841432522

namespace A017597

/-- `lcm(2, A016913(2*n+1))` -/
def P11513520465841432522.Spec : Prop :=
  ∀ n, (P11513520465841432522.a n : ℤ) = A017597 n

end A017597

/-! ## A017597.P8163650449068614827

`A016915(2*n+1)/(12*n+6)²`
-/

namespace A017597.P8163650449068614827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016915 (2 * n + 1) : ℚ) / ((12 * n + 6) ^ 2 : ℚ)

end

end A017597.P8163650449068614827

namespace A017597

/-- `A016915(2*n+1)/(12*n+6)²` -/
def P8163650449068614827.Spec : Prop :=
  ∀ n, P8163650449068614827.a n = (A017597 n : ℚ)

theorem P8163650449068614827.correct : P8163650449068614827.Spec := by
  intro n
  simp only [A017597, Nat.add_sub_cancel, A017597.P8163650449068614827.a, A017597.P17969072080987422215.a, A016915, A016915.P14109322170555830723.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017597

/-! ## A017597.P12502872374287241697

`A008588(2*n+1)*A016912(2*n+1)`
-/

namespace A017597.P12502872374287241697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (2 * n + 1) * A016912 (2 * n + 1)

end

end A017597.P12502872374287241697

namespace A017597

/-- `A008588(2*n+1)*A016912(2*n+1)` -/
def P12502872374287241697.Spec : Prop :=
  ∀ n, P12502872374287241697.a n = A017597 n

theorem P12502872374287241697.correct : P12502872374287241697.Spec := by
  intro n
  simp only [A017597, Nat.add_sub_cancel, A017597.P12502872374287241697.a, A017597.P17969072080987422215.a, A008588, A008588.P12386450284809463491.a, A016912, A016912.P4786313169569101579.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017597

/-! ## A017597.P1849944398596117659

`A016910(2*n+1)*A016911(2*n+1)`
-/

namespace A017597.P1849944398596117659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016910 (2 * n + 1) * A016911 (2 * n + 1)

end

end A017597.P1849944398596117659

namespace A017597

/-- `A016910(2*n+1)*A016911(2*n+1)` -/
def P1849944398596117659.Spec : Prop :=
  ∀ n, P1849944398596117659.a n = A017597 n

theorem P1849944398596117659.correct : P1849944398596117659.Spec := by
  intro n
  simp only [A017597, Nat.add_sub_cancel, A017597.P1849944398596117659.a, A017597.P17969072080987422215.a, A016910, A016910.P3732514033866141413.a, A016911, A016911.P4671614508612182127.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017597

/-! ## A017597.P4124216229604205828

`A008458(2*n+1)²²*A008588(2*n+1)`
-/

namespace A017597.P4124216229604205828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008458 (2 * n + 1) ^ 2) ^ 2 * A008588 (2 * n + 1)

end

end A017597.P4124216229604205828

namespace A017597

/-- `A008458(2*n+1)²²*A008588(2*n+1)` -/
def P4124216229604205828.Spec : Prop :=
  ∀ n, P4124216229604205828.a n = A017597 n

end A017597

/-! ## A017597.P422854415778563919

`A008458(2*n+1)²²*A298026(2*n+1)`
-/

namespace A017597.P422854415778563919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008458 (2 * n + 1) ^ 2) ^ 2 * A298026 (2 * n + 1)

end

end A017597.P422854415778563919

namespace A017597

/-- `A008458(2*n+1)²²*A298026(2*n+1)` -/
def P422854415778563919.Spec : Prop :=
  ∀ n, P422854415778563919.a n = A017597 n

end A017597

/-! ## A017597.P5375287732185049497

`A016829(3*n+1)`
-/

namespace A017597.P5375287732185049497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016829 (3 * n + 1)

end

end A017597.P5375287732185049497

namespace A017597

/-- `A016829(3*n+1)` -/
def P5375287732185049497.Spec : Prop :=
  ∀ n, P5375287732185049497.a n = A017597 n

theorem P5375287732185049497.correct : P5375287732185049497.Spec := by
  intro n
  simp only [A017597, Nat.add_sub_cancel, A017597.P5375287732185049497.a, A017597.P17969072080987422215.a, A016829, A016829.P4272908375837523993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017597

/-!
# A017598: a(n) = (12*n + 6)^6.

The programs for A017598, the canonical program `A017598.P1669132873428544669` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017598 has offset 0).

The definition of A017598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+6)^6` (program `A017598.P1669132873428544669`, by `A017598.P1669132873428544669.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017598.P1669132873428544669

`(12*n+6)^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017598

/-- `(12*n+6)^6` -/
def P1669132873428544669.Spec : Prop :=
  ∀ n, (P1669132873428544669.a n : ℤ) = A017598 n

theorem P1669132873428544669.correct : P1669132873428544669.Spec := by
  intro n
  simp only [A017598]

end A017598

/-! ## A017598.P12219634258745302239

`record[(6*xor(1, n))^6]`
-/

namespace A017598.P12219634258745302239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * Nat.xor 1 n) ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017598.P12219634258745302239

namespace A017598

/-- `record[(6*xor(1, n))^6]` -/
def P12219634258745302239.Spec : Prop :=
  ∀ n, (P12219634258745302239.a n : ℤ) = A017598 n

end A017598

/-! ## A017598.P8384849386385684080

`record[(6*n^(n%2))^6]`
-/

namespace A017598.P8384849386385684080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n ^ (n % 2)) ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017598.P8384849386385684080

namespace A017598

/-- `record[(6*n^(n%2))^6]` -/
def P8384849386385684080.Spec : Prop :=
  ∀ n, (P8384849386385684080.a n : ℤ) = A017598 n

end A017598

/-! ## A017598.P16742335559518118685

`A017595(n)²`
-/

namespace A017598.P16742335559518118685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017595 n ^ 2

end

end A017598.P16742335559518118685

namespace A017598

/-- `A017595(n)²` -/
def P16742335559518118685.Spec : Prop :=
  ∀ n, P16742335559518118685.a n = A017598 n

theorem P16742335559518118685.correct : P16742335559518118685.Spec := by
  intro n
  simp only [A017598, Nat.add_sub_cancel, A017598.P16742335559518118685.a, A017598.P1669132873428544669.a, A017595, A017595.P5808580862531119874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017598

/-! ## A017598.P12600186318627931289

`(8*A016947(n))²`
-/

namespace A017598.P12600186318627931289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * A016947 n) ^ 2

end

end A017598.P12600186318627931289

namespace A017598

/-- `(8*A016947(n))²` -/
def P12600186318627931289.Spec : Prop :=
  ∀ n, P12600186318627931289.a n = A017598 n

theorem P12600186318627931289.correct : P12600186318627931289.Spec := by
  intro n
  simp only [A017598, Nat.add_sub_cancel, A017598.P12600186318627931289.a, A017598.P1669132873428544669.a, A016947, A016947.P4365293070950782915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017598

/-! ## A017598.P1059027348384660081

`(Δ[A033581(n)]^3)²`
-/

namespace A017598.P1059027348384660081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017598.P1059027348384660081

namespace A017598

/-- `(Δ[A033581(n)]^3)²` -/
def P1059027348384660081.Spec : Prop :=
  ∀ n, P1059027348384660081.a n = A017598 n

theorem P1059027348384660081.correct : P1059027348384660081.Spec := by
  intro n
  simp only [A017598, Nat.add_sub_cancel, A017598.P1059027348384660081.f1, A017598.P1059027348384660081.a, A017598.P1669132873428544669.a, A033581, A033581.P13583599227635646969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017598

/-! ## A017598.P12571298325270557926

`A017593(n)*A017597(n)`
-/

namespace A017598.P12571298325270557926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n * A017597 n

end

end A017598.P12571298325270557926

namespace A017598

/-- `A017593(n)*A017597(n)` -/
def P12571298325270557926.Spec : Prop :=
  ∀ n, P12571298325270557926.a n = A017598 n

theorem P12571298325270557926.correct : P12571298325270557926.Spec := by
  intro n
  simp only [A017598, Nat.add_sub_cancel, A017598.P12571298325270557926.a, A017598.P1669132873428544669.a, A017593, A017593.P13091213750843470751.a, A017597, A017597.P17969072080987422215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017598

/-! ## A017598.P2968783336545216745

`A017594(n)*A017596(n)`
-/

namespace A017598.P2968783336545216745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017594 n * A017596 n

end

end A017598.P2968783336545216745

namespace A017598

/-- `A017594(n)*A017596(n)` -/
def P2968783336545216745.Spec : Prop :=
  ∀ n, P2968783336545216745.a n = A017598 n

theorem P2968783336545216745.correct : P2968783336545216745.Spec := by
  intro n
  simp only [A017598, Nat.add_sub_cancel, A017598.P2968783336545216745.a, A017598.P1669132873428544669.a, A017594, A017594.P9971712820933043582.a, A017596, A017596.P5519379892548272549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017598

/-! ## A017598.P1958571382813830176

`lcm(A016830(n), A016950(n))`
-/

namespace A017598.P1958571382813830176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016830 n) (A016950 n)

end

end A017598.P1958571382813830176

namespace A017598

/-- `lcm(A016830(n), A016950(n))` -/
def P1958571382813830176.Spec : Prop :=
  ∀ n, (P1958571382813830176.a n : ℤ) = A017598 n

end A017598

/-! ## A017598.P18071629007826009408

`(A017593(n)*A017594(n))²`
-/

namespace A017598.P18071629007826009408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017593 n * A017594 n) ^ 2

end

end A017598.P18071629007826009408

namespace A017598

/-- `(A017593(n)*A017594(n))²` -/
def P18071629007826009408.Spec : Prop :=
  ∀ n, P18071629007826009408.a n = A017598 n

theorem P18071629007826009408.correct : P18071629007826009408.Spec := by
  intro n
  simp only [A017598, Nat.add_sub_cancel, A017598.P18071629007826009408.a, A017598.P1669132873428544669.a, A017593, A017593.P13091213750843470751.a, A017594, A017594.P9971712820933043582.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017598

/-! ## A017598.P6162014573388561029

`A017593(n)²*A017596(n)`
-/

namespace A017598.P6162014573388561029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n ^ 2 * A017596 n

end

end A017598.P6162014573388561029

namespace A017598

/-- `A017593(n)²*A017596(n)` -/
def P6162014573388561029.Spec : Prop :=
  ∀ n, P6162014573388561029.a n = A017598 n

theorem P6162014573388561029.correct : P6162014573388561029.Spec := by
  intro n
  simp only [A017598, Nat.add_sub_cancel, A017598.P6162014573388561029.a, A017598.P1669132873428544669.a, A017593, A017593.P13091213750843470751.a, A017596, A017596.P5519379892548272549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017598

/-! ## A017598.P17137531507027617997

`(A017597(n)/A017594(n))²`
-/

namespace A017598.P17137531507027617997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017597 n : ℚ) / (A017594 n : ℚ)) ^ 2

end

end A017598.P17137531507027617997

namespace A017598

/-- `(A017597(n)/A017594(n))²` -/
def P17137531507027617997.Spec : Prop :=
  ∀ n, P17137531507027617997.a n = (A017598 n : ℚ)

end A017598

/-! ## A017598.P11268303319092507272

`lcm(A016827(n), A016947(n))²`
-/

namespace A017598.P11268303319092507272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016827 n) (A016947 n) ^ 2

end

end A017598.P11268303319092507272

namespace A017598

/-- `lcm(A016827(n), A016947(n))²` -/
def P11268303319092507272.Spec : Prop :=
  ∀ n, (P11268303319092507272.a n : ℤ) = A017598 n

end A017598

/-! ## A017598.P1226070660839564687

`A017600(n)/sqrt(sqrt(A017600(n)))`
-/

namespace A017598.P1226070660839564687
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017600 n : ℝ) / Real.sqrt (Real.sqrt (A017600 n : ℝ))

end

end A017598.P1226070660839564687

namespace A017598

/-- `A017600(n)/sqrt(sqrt(A017600(n)))` -/
def P1226070660839564687.Spec : Prop :=
  ∀ n, P1226070660839564687.a n = (A017598 n : ℝ)

end A017598

/-! ## A017598.P14694093931242613162

`((4*A016945(n))²/2*A016945(n))²`
-/

namespace A017598.P14694093931242613162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((4 * A016945 n) ^ 2 : ℚ) / 2 * (A016945 n : ℚ)) ^ 2

end

end A017598.P14694093931242613162

namespace A017598

/-- `((4*A016945(n))²/2*A016945(n))²` -/
def P14694093931242613162.Spec : Prop :=
  ∀ n, P14694093931242613162.a n = (A017598 n : ℚ)

theorem P14694093931242613162.correct : P14694093931242613162.Spec := by
  intro n
  simp only [A017598, Nat.add_sub_cancel, A017598.P14694093931242613162.a, A017598.P1669132873428544669.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017598

/-! ## A017598.P5644058794855814738

`A016830(n)/A016758(n)*A016950(n)`
-/

namespace A017598.P5644058794855814738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016830 n : ℚ) / (A016758 n : ℚ) * (A016950 n : ℚ)

end

end A017598.P5644058794855814738

namespace A017598

/-- `A016830(n)/A016758(n)*A016950(n)` -/
def P5644058794855814738.Spec : Prop :=
  ∀ n, P5644058794855814738.a n = (A017598 n : ℚ)

theorem P5644058794855814738.correct : P5644058794855814738.Spec := by
  intro n
  simp only [A017598, Nat.add_sub_cancel, A017598.P5644058794855814738.a, A017598.P1669132873428544669.a, A016758, A016758.P10546800318422421596.a, A016830, A016830.P16460860161337745608.a, A016950, A016950.P12981427071470377345.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017598

/-! ## A017598.P7740062020337571716

`(Δ[A097803(n)]^3)²`
-/

namespace A017598.P7740062020337571716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017598.P7740062020337571716

namespace A017598

/-- `(Δ[A097803(n)]^3)²` -/
def P7740062020337571716.Spec : Prop :=
  ∀ n, P7740062020337571716.a n = A017598 n

theorem P7740062020337571716.correct : P7740062020337571716.Spec := by
  intro n
  simp only [A017598, Nat.add_sub_cancel, A017598.P7740062020337571716.f1, A017598.P7740062020337571716.a, A017598.P1669132873428544669.a, A097803, A097803.P14601754456533614847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017598

/-! ## A017598.P10610739512917672754

`(Δ[A140811(n)]^3)²`
-/

namespace A017598.P10610739512917672754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017598.P10610739512917672754

namespace A017598

/-- `(Δ[A140811(n)]^3)²` -/
def P10610739512917672754.Spec : Prop :=
  ∀ n, P10610739512917672754.a n = A017598 n

theorem P10610739512917672754.correct : P10610739512917672754.Spec := by
  intro n
  simp only [A017598, Nat.add_sub_cancel, A017598.P10610739512917672754.f1, A017598.P10610739512917672754.a, A017598.P1669132873428544669.a, A140811, A140811.P17716776478933671421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017598

/-! ## A017598.P14523321587280978119

`(Δ[A227776(n)]^3)²`
-/

namespace A017598.P14523321587280978119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017598.P14523321587280978119

namespace A017598

/-- `(Δ[A227776(n)]^3)²` -/
def P14523321587280978119.Spec : Prop :=
  ∀ n, P14523321587280978119.a n = A017598 n

theorem P14523321587280978119.correct : P14523321587280978119.Spec := by
  intro n
  simp only [A017598, Nat.add_sub_cancel, A017598.P14523321587280978119.f1, A017598.P14523321587280978119.a, A017598.P1669132873428544669.a, A227776, A227776.P10684709739672148907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017598

/-! ## A017598.P14427499197647048260

`(Δ[A157517(n+1)]^3)²`
-/

namespace A017598.P14427499197647048260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017598.P14427499197647048260

namespace A017598

/-- `(Δ[A157517(n+1)]^3)²` -/
def P14427499197647048260.Spec : Prop :=
  ∀ n, P14427499197647048260.a n = A017598 n

theorem P14427499197647048260.correct : P14427499197647048260.Spec := by
  intro n
  simp only [A017598, Nat.add_sub_cancel, A017598.P14427499197647048260.f1, A017598.P14427499197647048260.a, A017598.P1669132873428544669.a, A157517, A157517.P12499757383157217649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017598

/-!
# A017599: a(n) = (12*n + 6)^7.

The programs for A017599, the canonical program `A017599.P17684746639334402784` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017599 has offset 0).

The definition of A017599 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+6)^7` (program `A017599.P17684746639334402784`, by `A017599.P17684746639334402784.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017599.P17684746639334402784

`(12*n+6)^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017599

/-- `(12*n+6)^7` -/
def P17684746639334402784.Spec : Prop :=
  ∀ n, (P17684746639334402784.a n : ℤ) = A017599 n

theorem P17684746639334402784.correct : P17684746639334402784.Spec := by
  intro n
  simp only [A017599]

end A017599

/-! ## A017599.P7555394438908132911

`A017593(n)*A017598(n)`
-/

namespace A017599.P7555394438908132911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n * A017598 n

end

end A017599.P7555394438908132911

namespace A017599

/-- `A017593(n)*A017598(n)` -/
def P7555394438908132911.Spec : Prop :=
  ∀ n, P7555394438908132911.a n = A017599 n

theorem P7555394438908132911.correct : P7555394438908132911.Spec := by
  intro n
  simp only [A017599, Nat.add_sub_cancel, A017599.P7555394438908132911.a, A017599.P17684746639334402784.a, A017593, A017593.P13091213750843470751.a, A017598, A017598.P1669132873428544669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017599

/-! ## A017599.P16183662694161112004

`A017594(n)*A017597(n)`
-/

namespace A017599.P16183662694161112004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017594 n * A017597 n

end

end A017599.P16183662694161112004

namespace A017599

/-- `A017594(n)*A017597(n)` -/
def P16183662694161112004.Spec : Prop :=
  ∀ n, P16183662694161112004.a n = A017599 n

theorem P16183662694161112004.correct : P16183662694161112004.Spec := by
  intro n
  simp only [A017599, Nat.add_sub_cancel, A017599.P16183662694161112004.a, A017599.P17684746639334402784.a, A017594, A017594.P9971712820933043582.a, A017597, A017597.P17969072080987422215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017599

/-! ## A017599.P2228743443208427816

`A017595(n)*A017596(n)`
-/

namespace A017599.P2228743443208427816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017595 n * A017596 n

end

end A017599.P2228743443208427816

namespace A017599

/-- `A017595(n)*A017596(n)` -/
def P2228743443208427816.Spec : Prop :=
  ∀ n, P2228743443208427816.a n = A017599 n

theorem P2228743443208427816.correct : P2228743443208427816.Spec := by
  intro n
  simp only [A017599, Nat.add_sub_cancel, A017599.P2228743443208427816.a, A017599.P17684746639334402784.a, A017595, A017595.P5808580862531119874.a, A017596, A017596.P5519379892548272549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017599

/-! ## A017599.P13392606537110194741

`lcm(A016831(n), A016951(n))`
-/

namespace A017599.P13392606537110194741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016831 n) (A016951 n)

end

end A017599.P13392606537110194741

namespace A017599

/-- `lcm(A016831(n), A016951(n))` -/
def P13392606537110194741.Spec : Prop :=
  ∀ n, (P13392606537110194741.a n : ℤ) = A017599 n

end A017599

/-! ## A017599.P9063603092694926589

`A017594(n)²*A017595(n)`
-/

namespace A017599.P9063603092694926589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017594 n ^ 2 * A017595 n

end

end A017599.P9063603092694926589

namespace A017599

/-- `A017594(n)²*A017595(n)` -/
def P9063603092694926589.Spec : Prop :=
  ∀ n, P9063603092694926589.a n = A017599 n

theorem P9063603092694926589.correct : P9063603092694926589.Spec := by
  intro n
  simp only [A017599, Nat.add_sub_cancel, A017599.P9063603092694926589.a, A017599.P17684746639334402784.a, A017594, A017594.P9971712820933043582.a, A017595, A017595.P5808580862531119874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017599

/-! ## A017599.P2140204686044806302

`A017593(n)²*A017597(n)`
-/

namespace A017599.P2140204686044806302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n ^ 2 * A017597 n

end

end A017599.P2140204686044806302

namespace A017599

/-- `A017593(n)²*A017597(n)` -/
def P2140204686044806302.Spec : Prop :=
  ∀ n, P2140204686044806302.a n = A017599 n

theorem P2140204686044806302.correct : P2140204686044806302.Spec := by
  intro n
  simp only [A017599, Nat.add_sub_cancel, A017599.P2140204686044806302.a, A017599.P17684746639334402784.a, A017593, A017593.P13091213750843470751.a, A017597, A017597.P17969072080987422215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017599

/-! ## A017599.P12488889908859027678

`A017596(n)²/A017593(n)`
-/

namespace A017599.P12488889908859027678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017596 n ^ 2 : ℚ) / (A017593 n : ℚ)

end

end A017599.P12488889908859027678

namespace A017599

/-- `A017596(n)²/A017593(n)` -/
def P12488889908859027678.Spec : Prop :=
  ∀ n, P12488889908859027678.a n = (A017599 n : ℚ)

end A017599

/-! ## A017599.P445320934845221475

`A017594(n)²²/A017593(n)`
-/

namespace A017599.P445320934845221475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017594 n ^ 2) ^ 2 : ℚ) / (A017593 n : ℚ)

end

end A017599.P445320934845221475

namespace A017599

/-- `A017594(n)²²/A017593(n)` -/
def P445320934845221475.Spec : Prop :=
  ∀ n, P445320934845221475.a n = (A017599 n : ℚ)

end A017599

/-! ## A017599.P17773718572876472458

`A016831(n)/A016759(n)*A016951(n)`
-/

namespace A017599.P17773718572876472458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016831 n : ℚ) / (A016759 n : ℚ) * (A016951 n : ℚ)

end

end A017599.P17773718572876472458

namespace A017599

/-- `A016831(n)/A016759(n)*A016951(n)` -/
def P17773718572876472458.Spec : Prop :=
  ∀ n, P17773718572876472458.a n = (A017599 n : ℚ)

theorem P17773718572876472458.correct : P17773718572876472458.Spec := by
  intro n
  simp only [A017599, Nat.add_sub_cancel, A017599.P17773718572876472458.a, A017599.P17684746639334402784.a, A016759, A016759.P1108963978635063233.a, A016831, A016831.P2624877946558227194.a, A016951, A016951.P324115468251133091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017599

/-! ## A017599.P11254644873370145036

`A016951(n)/A016831(n)*A017119(n)`
-/

namespace A017599.P11254644873370145036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016951 n : ℚ) / (A016831 n : ℚ) * (A017119 n : ℚ)

end

end A017599.P11254644873370145036

namespace A017599

/-- `A016951(n)/A016831(n)*A017119(n)` -/
def P11254644873370145036.Spec : Prop :=
  ∀ n, P11254644873370145036.a n = (A017599 n : ℚ)

theorem P11254644873370145036.correct : P11254644873370145036.Spec := by
  intro n
  simp only [A017599, Nat.add_sub_cancel, A017599.P11254644873370145036.a, A017599.P17684746639334402784.a, A016831, A016831.P2624877946558227194.a, A016951, A016951.P324115468251133091.a, A017119, A017119.P15712220127836664613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017599

/-! ## A017599.P17567352908313899867

`A017597(n)/A017595(n)*A017597(n)`
-/

namespace A017599.P17567352908313899867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017597 n : ℚ) / (A017595 n : ℚ) * (A017597 n : ℚ)

end

end A017599.P17567352908313899867

namespace A017599

/-- `A017597(n)/A017595(n)*A017597(n)` -/
def P17567352908313899867.Spec : Prop :=
  ∀ n, P17567352908313899867.a n = (A017599 n : ℚ)

end A017599

/-! ## A017599.P15914309901604655089

`A016807(n+1)/A016747(n+1)*A016951(n)`
-/

namespace A017599.P15914309901604655089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016807 (n + 1) : ℚ) / (A016747 (n + 1) : ℚ) * (A016951 n : ℚ)

end

end A017599.P15914309901604655089

namespace A017599

/-- `A016807(n+1)/A016747(n+1)*A016951(n)` -/
def P15914309901604655089.Spec : Prop :=
  ∀ n, P15914309901604655089.a n = (A017599 n : ℚ)

theorem P15914309901604655089.correct : P15914309901604655089.Spec := by
  intro n
  simp only [A017599, Nat.add_sub_cancel, A017599.P15914309901604655089.a, A017599.P17684746639334402784.a, A016747, A016747.P10712690314001872389.a, A016807, A016807.P3617930477537150980.a, A016951, A016951.P324115468251133091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017599

/-! ## A017599.P16654395216747815920

`A016915(n+1)/A001015(n+1)*A016759(n)`
-/

namespace A017599.P16654395216747815920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016915 (n + 1) : ℚ) / (A001015 (n + 1) : ℚ) * (A016759 n : ℚ)

end

end A017599.P16654395216747815920

namespace A017599

/-- `A016915(n+1)/A001015(n+1)*A016759(n)` -/
def P16654395216747815920.Spec : Prop :=
  ∀ n, P16654395216747815920.a n = (A017599 n : ℚ)

theorem P16654395216747815920.correct : P16654395216747815920.Spec := by
  intro n
  simp only [A017599, Nat.add_sub_cancel, A017599.P16654395216747815920.a, A017599.P17684746639334402784.a, A001015, A001015.P16876498052081657174.a, A016759, A016759.P1108963978635063233.a, A016915, A016915.P14109322170555830723.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017599

/-! ## A017599.P5906315576102764705

`A016747(n+1)/A001015(n+1)*A016951(n)`
-/

namespace A017599.P5906315576102764705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016747 (n + 1) : ℚ) / (A001015 (n + 1) : ℚ) * (A016951 n : ℚ)

end

end A017599.P5906315576102764705

namespace A017599

/-- `A016747(n+1)/A001015(n+1)*A016951(n)` -/
def P5906315576102764705.Spec : Prop :=
  ∀ n, P5906315576102764705.a n = (A017599 n : ℚ)

theorem P5906315576102764705.correct : P5906315576102764705.Spec := by
  intro n
  simp only [A017599, Nat.add_sub_cancel, A017599.P5906315576102764705.a, A017599.P17684746639334402784.a, A001015, A001015.P16876498052081657174.a, A016747, A016747.P10712690314001872389.a, A016951, A016951.P324115468251133091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017599

/-! ## A017599.P7028524349590339742

`A016915(Δ[n²])`
-/

namespace A017599.P7028524349590339742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016915 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017599.P7028524349590339742

namespace A017599

/-- `A016915(Δ[n²])` -/
def P7028524349590339742.Spec : Prop :=
  ∀ n, P7028524349590339742.a n = A017599 n

end A017599

/-! ## A017599.P10726188688542865242

`lcm(2, A016915(2*n+1))`
-/

namespace A017599.P10726188688542865242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016915 (2 * n + 1))

end

end A017599.P10726188688542865242

namespace A017599

/-- `lcm(2, A016915(2*n+1))` -/
def P10726188688542865242.Spec : Prop :=
  ∀ n, (P10726188688542865242.a n : ℤ) = A017599 n

end A017599

/-! ## A017599.P13601704271138091633

`A016911(2*n+1)*A016912(2*n+1)`
-/

namespace A017599.P13601704271138091633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016911 (2 * n + 1) * A016912 (2 * n + 1)

end

end A017599.P13601704271138091633

namespace A017599

/-- `A016911(2*n+1)*A016912(2*n+1)` -/
def P13601704271138091633.Spec : Prop :=
  ∀ n, P13601704271138091633.a n = A017599 n

theorem P13601704271138091633.correct : P13601704271138091633.Spec := by
  intro n
  simp only [A017599, Nat.add_sub_cancel, A017599.P13601704271138091633.a, A017599.P17684746639334402784.a, A016911, A016911.P4671614508612182127.a, A016912, A016912.P4786313169569101579.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017599

/-! ## A017599.P7785216542988987352

`A016831(3*n+1)`
-/

namespace A017599.P7785216542988987352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016831 (3 * n + 1)

end

end A017599.P7785216542988987352

namespace A017599

/-- `A016831(3*n+1)` -/
def P7785216542988987352.Spec : Prop :=
  ∀ n, P7785216542988987352.a n = A017599 n

theorem P7785216542988987352.correct : P7785216542988987352.Spec := by
  intro n
  simp only [A017599, Nat.add_sub_cancel, A017599.P7785216542988987352.a, A017599.P17684746639334402784.a, A016831, A016831.P2624877946558227194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017599

/-! ## A017599.P9903806760179980646

`∩[A016831(n), A016915(n)]`
-/

namespace A017599.P9903806760179980646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016831 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016915 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A017599.P9903806760179980646

namespace A017599

/-- `∩[A016831(n), A016915(n)]` -/
def P9903806760179980646.Spec : Prop :=
  ∀ n, (P9903806760179980646.a n : ℤ) = A017599 n

end A017599

