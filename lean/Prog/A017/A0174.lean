import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C004
import Seq.Opaque.C015
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A017400: 

The programs for A017400, there is no canonical definition to state claims against.
-/

/-! ## A017400.P6007952189285844363

`(11*n)^12`
-/

namespace A017400.P6007952189285844363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n) ^ 12

end

end A017400.P6007952189285844363

/-!
# A017401: a(n) = 11n + 1.

The programs for A017401, the canonical program `A017401.P13777489390994228607` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017401 has offset 0).

The definition of A017401 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*n+1` (program `A017401.P13777489390994228607`, by `A017401.P13777489390994228607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017401.P13777489390994228607

`11*n+1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017401

/-- `11*n+1` -/
def P13777489390994228607.Spec : Prop :=
  ∀ n, (P13777489390994228607.a n : ℤ) = A017401 n

theorem P13777489390994228607.correct : P13777489390994228607.Spec := by
  intro n
  simp only [A017401]

end A017401

/-!
# A017402: a(n) = (11*n+1)^2.

The programs for A017402, the canonical program `A017402.P2157335795432361377` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017402 has offset 0).

The definition of A017402 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+1)²` (program `A017402.P2157335795432361377`, by `A017402.P2157335795432361377.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017402.P2157335795432361377

`(11*n+1)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017402

/-- `(11*n+1)²` -/
def P2157335795432361377.Spec : Prop :=
  ∀ n, (P2157335795432361377.a n : ℤ) = A017402 n

theorem P2157335795432361377.correct : P2157335795432361377.Spec := by
  intro n
  simp only [A017402]

end A017402

/-! ## A017402.P15276297069513891705

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=144, a(2)=529`
-/

namespace A017402.P15276297069513891705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 144, 529] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017402.P15276297069513891705

namespace A017402

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15276297069513891705.Spec : Prop :=
  ∀ n, P15276297069513891705.a n = A017402 n

theorem P15276297069513891705.correct : P15276297069513891705.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017402, Nat.add_sub_cancel, A017402.P15276297069513891705.a, A017402.P2157335795432361377.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017402, Nat.add_sub_cancel, A017402.P15276297069513891705.a, A017402.P2157335795432361377.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017402

/-! ## A017402.P12012972044073914567

`xor(11*n, -1)^2`
-/

namespace A017402.P12012972044073914567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (11 * n : ℤ) (-1) ^ 2

end

end A017402.P12012972044073914567

namespace A017402

/-- `xor(11*n, -1)^2` -/
def P12012972044073914567.Spec : Prop :=
  ∀ n, P12012972044073914567.a n = A017402 n

end A017402

/-! ## A017402.P10462147763257322460

`(lcm(11, 11*n)+1)^2`
-/

namespace A017402.P10462147763257322460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 11 (11 * n) + 1) ^ 2

end

end A017402.P10462147763257322460

namespace A017402

/-- `(lcm(11, 11*n)+1)^2` -/
def P10462147763257322460.Spec : Prop :=
  ∀ n, (P10462147763257322460.a n : ℤ) = A017402 n

theorem P10462147763257322460.correct : P10462147763257322460.Spec := by
  intro n
  simp only [A017402, Nat.add_sub_cancel, A017402.P10462147763257322460.a, A017402.P2157335795432361377.a, SequenceMachineLib.memo_apply]
  try simp

end A017402

/-! ## A017402.P16413553575005483676

`(or(1, 10*n)+n)^2`
-/

namespace A017402.P16413553575005483676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (10 * n) + n) ^ 2

end

end A017402.P16413553575005483676

namespace A017402

/-- `(or(1, 10*n)+n)^2` -/
def P16413553575005483676.Spec : Prop :=
  ∀ n, (P16413553575005483676.a n : ℤ) = A017402 n

end A017402

/-! ## A017402.P15757436663252343619

`floor((sqrt(a(n-1))+11)²)` with `a(0)=1`
-/

namespace A017402.P15757436663252343619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.sqrt (a (n - 1) : ℝ) + 11) ^ 2⌋

end

end A017402.P15757436663252343619

namespace A017402

/-- `floor((sqrt(a(n-1))+11)²)` -/
def P15757436663252343619.Spec : Prop :=
  ∀ n, P15757436663252343619.a n = A017402 n

end A017402

/-! ## A017402.P1502938025613173242

`sqrt(A017404(n))`
-/

namespace A017402.P1502938025613173242
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017404 n : ℝ)

end

end A017402.P1502938025613173242

namespace A017402

/-- `sqrt(A017404(n))` -/
def P1502938025613173242.Spec : Prop :=
  ∀ n, P1502938025613173242.a n = (A017402 n : ℝ)

end A017402

/-! ## A017402.P12645291677662155001

`sqrt(sqrt(A017408(n)))`
-/

namespace A017402.P12645291677662155001
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017408 n : ℝ))

end

end A017402.P12645291677662155001

namespace A017402

/-- `sqrt(sqrt(A017408(n)))` -/
def P12645291677662155001.Spec : Prop :=
  ∀ n, P12645291677662155001.a n = (A017402 n : ℝ)

end A017402

/-! ## A017402.P5003407511433821401

`A017406(n)^(1/3)`
-/

namespace A017402.P5003407511433821401
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017406 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017402.P5003407511433821401

namespace A017402

/-- `A017406(n)^(1/3)` -/
def P5003407511433821401.Spec : Prop :=
  ∀ n, P5003407511433821401.a n = (A017402 n : ℝ)

end A017402

/-! ## A017402.P10304958003387362738

`A017403(n)^(2/3)`
-/

namespace A017402.P10304958003387362738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017403 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017402.P10304958003387362738

namespace A017402

/-- `A017403(n)^(2/3)` -/
def P10304958003387362738.Spec : Prop :=
  ∀ n, P10304958003387362738.a n = (A017402 n : ℝ)

end A017402

/-! ## A017402.P10567122142899378507

`(11*n+1)^and(2, A004767(n))`
-/

namespace A017402.P10567122142899378507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * n + 1 : ℚ) ^ (Int.land 2 (A004767 n) : ℤ)

end

end A017402.P10567122142899378507

namespace A017402

/-- `(11*n+1)^and(2, A004767(n))` -/
def P10567122142899378507.Spec : Prop :=
  ∀ n, P10567122142899378507.a n = (A017402 n : ℚ)

end A017402

/-! ## A017402.P15326405763825934575

`A161709(n)+A017390(n)`
-/

namespace A017402.P15326405763825934575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + A017390 n

end

end A017402.P15326405763825934575

namespace A017402

/-- `A161709(n)+A017390(n)` -/
def P15326405763825934575.Spec : Prop :=
  ∀ n, P15326405763825934575.a n = A017402 n

theorem P15326405763825934575.correct : P15326405763825934575.Spec := by
  intro n
  simp only [A017402, Nat.add_sub_cancel, A017402.P15326405763825934575.a, A017402.P2157335795432361377.a, A017390, A017390.P8628830918857893322.a, A161709, A161709.P7473715427958799161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017402

/-! ## A017402.P17605265195339965155

`A017401(n)*A017401(n)`
-/

namespace A017402.P17605265195339965155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n * A017401 n

end

end A017402.P17605265195339965155

namespace A017402

/-- `A017401(n)*A017401(n)` -/
def P17605265195339965155.Spec : Prop :=
  ∀ n, P17605265195339965155.a n = A017402 n

theorem P17605265195339965155.correct : P17605265195339965155.Spec := by
  intro n
  simp only [A017402, Nat.add_sub_cancel, A017402.P17605265195339965155.a, A017402.P2157335795432361377.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017402

/-! ## A017402.P11999655279668304226

`A017403(n)/A017401(n)`
-/

namespace A017402.P11999655279668304226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017403 n : ℚ) / (A017401 n : ℚ)

end

end A017402.P11999655279668304226

namespace A017402

/-- `A017403(n)/A017401(n)` -/
def P11999655279668304226.Spec : Prop :=
  ∀ n, P11999655279668304226.a n = (A017402 n : ℚ)

end A017402

/-! ## A017402.P5384047018844986738

`A017405(n)/A017403(n)`
-/

namespace A017402.P5384047018844986738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017405 n : ℚ) / (A017403 n : ℚ)

end

end A017402.P5384047018844986738

namespace A017402

/-- `A017405(n)/A017403(n)` -/
def P5384047018844986738.Spec : Prop :=
  ∀ n, P5384047018844986738.a n = (A017402 n : ℚ)

end A017402

/-! ## A017402.P11510067543600743178

`A017406(n)/A017404(n)`
-/

namespace A017402.P11510067543600743178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017406 n : ℚ) / (A017404 n : ℚ)

end

end A017402.P11510067543600743178

namespace A017402

/-- `A017406(n)/A017404(n)` -/
def P11510067543600743178.Spec : Prop :=
  ∀ n, P11510067543600743178.a n = (A017402 n : ℚ)

end A017402

/-! ## A017402.P3392647257678002614

`A017403(n)²/A017404(n)`
-/

namespace A017402.P3392647257678002614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017403 n ^ 2 : ℚ) / (A017404 n : ℚ)

end

end A017402.P3392647257678002614

namespace A017402

/-- `A017403(n)²/A017404(n)` -/
def P3392647257678002614.Spec : Prop :=
  ∀ n, P3392647257678002614.a n = (A017402 n : ℚ)

end A017402

/-! ## A017402.P10736938511584420612

`A008593(n)*A017413(n)+1`
-/

namespace A017402.P10736938511584420612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n * A017413 n + 1

end

end A017402.P10736938511584420612

namespace A017402

/-- `A008593(n)*A017413(n)+1` -/
def P10736938511584420612.Spec : Prop :=
  ∀ n, P10736938511584420612.a n = A017402 n

theorem P10736938511584420612.correct : P10736938511584420612.Spec := by
  intro n
  simp only [A017402, Nat.add_sub_cancel, A017402.P10736938511584420612.a, A017402.P2157335795432361377.a, A008593, A008593.P2680892499938115192.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017402

/-! ## A017402.P9409572701653319138

`A017406(n)/A017401(n)²²`
-/

namespace A017402.P9409572701653319138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017406 n : ℚ) / ((A017401 n ^ 2) ^ 2 : ℚ)

end

end A017402.P9409572701653319138

namespace A017402

/-- `A017406(n)/A017401(n)²²` -/
def P9409572701653319138.Spec : Prop :=
  ∀ n, P9409572701653319138.a n = (A017402 n : ℚ)

end A017402

/-! ## A017402.P1712401189537040572

`A051876(n+1)²/(n+1)²`
-/

namespace A017402.P1712401189537040572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051876 (n + 1) ^ 2 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A017402.P1712401189537040572

namespace A017402

/-- `A051876(n+1)²/(n+1)²` -/
def P1712401189537040572.Spec : Prop :=
  ∀ n, P1712401189537040572.a n = (A017402 n : ℚ)

theorem P1712401189537040572.correct : P1712401189537040572.Spec := by
  intro n
  simp only [A017402, Nat.add_sub_cancel, A017402.P1712401189537040572.a, A017402.P2157335795432361377.a, A051876, A051876.P7910470835603757038.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017402

/-!
# A017403: a(n) = (11*n + 1)^3.

The programs for A017403, the canonical program `A017403.P7241268550045248601` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017403 has offset 0).

The definition of A017403 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+1)^3` (program `A017403.P7241268550045248601`, by `A017403.P7241268550045248601.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017403.P7241268550045248601

`(11*n+1)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017403

/-- `(11*n+1)^3` -/
def P7241268550045248601.Spec : Prop :=
  ∀ n, (P7241268550045248601.a n : ℤ) = A017403 n

theorem P7241268550045248601.correct : P7241268550045248601.Spec := by
  intro n
  simp only [A017403]

end A017403

/-! ## A017403.P13222943636405497049

`abs(xor(11*n, -1)^3)`
-/

namespace A017403.P13222943636405497049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (11 * n : ℤ) (-1) ^ 3|

end

end A017403.P13222943636405497049

namespace A017403

/-- `abs(xor(11*n, -1)^3)` -/
def P13222943636405497049.Spec : Prop :=
  ∀ n, P13222943636405497049.a n = A017403 n

end A017403

/-! ## A017403.P2434427032605728319

`-xor(11*n, -1)^3`
-/

namespace A017403.P2434427032605728319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (11 * n : ℤ) (-1) ^ 3)

end

end A017403.P2434427032605728319

namespace A017403

/-- `-xor(11*n, -1)^3` -/
def P2434427032605728319.Spec : Prop :=
  ∀ n, P2434427032605728319.a n = A017403 n

end A017403

/-! ## A017403.P8535432138043841057

`(or(1, 10*n)+n)*(11*n+1)²`
-/

namespace A017403.P8535432138043841057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (10 * n) + n) * (11 * n + 1) ^ 2

end

end A017403.P8535432138043841057

namespace A017403

/-- `(or(1, 10*n)+n)*(11*n+1)²` -/
def P8535432138043841057.Spec : Prop :=
  ∀ n, (P8535432138043841057.a n : ℤ) = A017403 n

end A017403

/-! ## A017403.P13476470331670606649

`sqrt(A017406(n))`
-/

namespace A017403.P13476470331670606649
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017406 n : ℝ)

end

end A017403.P13476470331670606649

namespace A017403

/-- `sqrt(A017406(n))` -/
def P13476470331670606649.Spec : Prop :=
  ∀ n, P13476470331670606649.a n = (A017403 n : ℝ)

end A017403

/-! ## A017403.P13238820552534284078

`sqrt(A017402(n)^3)`
-/

namespace A017403.P13238820552534284078
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017402 n ^ 3 : ℝ)

end

end A017403.P13238820552534284078

namespace A017403

/-- `sqrt(A017402(n)^3)` -/
def P13238820552534284078.Spec : Prop :=
  ∀ n, P13238820552534284078.a n = (A017403 n : ℝ)

end A017403

/-! ## A017403.P12373172684804244555

`A017401(n)*A017402(n)`
-/

namespace A017403.P12373172684804244555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n * A017402 n

end

end A017403.P12373172684804244555

namespace A017403

/-- `A017401(n)*A017402(n)` -/
def P12373172684804244555.Spec : Prop :=
  ∀ n, P12373172684804244555.a n = A017403 n

theorem P12373172684804244555.correct : P12373172684804244555.Spec := by
  intro n
  simp only [A017403, Nat.add_sub_cancel, A017403.P12373172684804244555.a, A017403.P7241268550045248601.a, A017401, A017401.P13777489390994228607.a, A017402, A017402.P2157335795432361377.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017403

/-! ## A017403.P8362280568516007925

`A017404(n)/A017401(n)`
-/

namespace A017403.P8362280568516007925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017404 n : ℚ) / (A017401 n : ℚ)

end

end A017403.P8362280568516007925

namespace A017403

/-- `A017404(n)/A017401(n)` -/
def P8362280568516007925.Spec : Prop :=
  ∀ n, P8362280568516007925.a n = (A017403 n : ℚ)

end A017403

/-! ## A017403.P2696452303045923500

`A017405(n)/A017402(n)`
-/

namespace A017403.P2696452303045923500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017405 n : ℚ) / (A017402 n : ℚ)

end

end A017403.P2696452303045923500

namespace A017403

/-- `A017405(n)/A017402(n)` -/
def P2696452303045923500.Spec : Prop :=
  ∀ n, P2696452303045923500.a n = (A017403 n : ℚ)

end A017403

/-! ## A017403.P4910158922698921766

`A017407(n)/A017404(n)`
-/

namespace A017403.P4910158922698921766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017407 n : ℚ) / (A017404 n : ℚ)

end

end A017403.P4910158922698921766

namespace A017403

/-- `A017407(n)/A017404(n)` -/
def P4910158922698921766.Spec : Prop :=
  ∀ n, P4910158922698921766.a n = (A017403 n : ℚ)

end A017403

/-! ## A017403.P2862667164778130331

`A017405(n)/A017401(n)²`
-/

namespace A017403.P2862667164778130331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017405 n : ℚ) / (A017401 n ^ 2 : ℚ)

end

end A017403.P2862667164778130331

namespace A017403

/-- `A017405(n)/A017401(n)²` -/
def P2862667164778130331.Spec : Prop :=
  ∀ n, P2862667164778130331.a n = (A017403 n : ℚ)

end A017403

/-! ## A017403.P11117915277836714998

`A017407(n)/A017401(n)²²`
-/

namespace A017403.P11117915277836714998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017407 n : ℚ) / ((A017401 n ^ 2) ^ 2 : ℚ)

end

end A017403.P11117915277836714998

namespace A017403

/-- `A017407(n)/A017401(n)²²` -/
def P11117915277836714998.Spec : Prop :=
  ∀ n, P11117915277836714998.a n = (A017403 n : ℚ)

end A017403

/-! ## A017403.P4839904240868513757

`(A008593(n)+1)*A017401(n)²`
-/

namespace A017403.P4839904240868513757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008593 n + 1) * A017401 n ^ 2

end

end A017403.P4839904240868513757

namespace A017403

/-- `(A008593(n)+1)*A017401(n)²` -/
def P4839904240868513757.Spec : Prop :=
  ∀ n, P4839904240868513757.a n = A017403 n

theorem P4839904240868513757.correct : P4839904240868513757.Spec := by
  intro n
  simp only [A017403, Nat.add_sub_cancel, A017403.P4839904240868513757.a, A017403.P7241268550045248601.a, A008593, A008593.P2680892499938115192.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017403

/-! ## A017403.P16191837871653360843

`A017406(n)/(A017401(n)²*A017401(n))`
-/

namespace A017403.P16191837871653360843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017406 n : ℚ) / (A017401 n ^ 2 * A017401 n : ℚ)

end

end A017403.P16191837871653360843

namespace A017403

/-- `A017406(n)/(A017401(n)²*A017401(n))` -/
def P16191837871653360843.Spec : Prop :=
  ∀ n, P16191837871653360843.a n = (A017403 n : ℚ)

end A017403

/-! ## A017403.P2952989467028517665

`Δ[A051865(n)]²*Δ[A051865(n)]`
-/

namespace A017403.P2952989467028517665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017403.P2952989467028517665

namespace A017403

/-- `Δ[A051865(n)]²*Δ[A051865(n)]` -/
def P2952989467028517665.Spec : Prop :=
  ∀ n, P2952989467028517665.a n = A017403 n

end A017403

/-! ## A017403.P8727277254704351660

`record[(n+1)^(gcd(11, n)-8)]`
-/

namespace A017403.P8727277254704351660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((Nat.gcd 11 n : ℤ) - 8 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017403.P8727277254704351660

namespace A017403

/-- `record[(n+1)^(gcd(11, n)-8)]` -/
def P8727277254704351660.Spec : Prop :=
  ∀ n, P8727277254704351660.a n = (A017403 n : ℚ)

end A017403

/-! ## A017403.P18269051795867574863

`A017415(2*n)/8`
-/

namespace A017403.P18269051795867574863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017415 (2 * n) : ℚ) / 8

end

end A017403.P18269051795867574863

namespace A017403

/-- `A017415(2*n)/8` -/
def P18269051795867574863.Spec : Prop :=
  ∀ n, P18269051795867574863.a n = (A017403 n : ℚ)

theorem P18269051795867574863.correct : P18269051795867574863.Spec := by
  intro n
  simp only [A017403, Nat.add_sub_cancel, A017403.P18269051795867574863.a, A017403.P7241268550045248601.a, A017415, A017415.P9330836573434406207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017403

/-! ## A017403.P9516853199440097512

`A131912(2*n+1)²*A131912(2*n+1)`
-/

namespace A017403.P9516853199440097512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131912 (2 * n + 1) ^ 2 * A131912 (2 * n + 1)

end

end A017403.P9516853199440097512

namespace A017403

/-- `A131912(2*n+1)²*A131912(2*n+1)` -/
def P9516853199440097512.Spec : Prop :=
  ∀ n, P9516853199440097512.a n = A017403 n

end A017403

/-! ## A017403.P8046943793079550677

`A143795(2*n+1)²*A143795(2*n+1)`
-/

namespace A017403.P8046943793079550677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143795 (2 * n + 1) ^ 2 * A143795 (2 * n + 1)

end

end A017403.P8046943793079550677

namespace A017403

/-- `A143795(2*n+1)²*A143795(2*n+1)` -/
def P8046943793079550677.Spec : Prop :=
  ∀ n, P8046943793079550677.a n = A017403 n

end A017403

/-! ## A017403.P8017422514984568484

`A166033(2*n+1)²*A166033(2*n+1)`
-/

namespace A017403.P8017422514984568484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166033 (2 * n + 1) ^ 2 * A166033 (2 * n + 1)

end

end A017403.P8017422514984568484

namespace A017403

/-- `A166033(2*n+1)²*A166033(2*n+1)` -/
def P8017422514984568484.Spec : Prop :=
  ∀ n, P8017422514984568484.a n = A017403 n

end A017403

/-!
# A017404: a(n) = (11*n + 1)^4.

The programs for A017404, the canonical program `A017404.P4337032155838249813` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017404 has offset 0).

The definition of A017404 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+1)^4` (program `A017404.P4337032155838249813`, by `A017404.P4337032155838249813.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017404.P4337032155838249813

`(11*n+1)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017404

/-- `(11*n+1)^4` -/
def P4337032155838249813.Spec : Prop :=
  ∀ n, (P4337032155838249813.a n : ℤ) = A017404 n

theorem P4337032155838249813.correct : P4337032155838249813.Spec := by
  intro n
  simp only [A017404]

end A017404

/-! ## A017404.P15189469644025268139

`xor(11*n, -1)²²`
-/

namespace A017404.P15189469644025268139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (11 * n : ℤ) (-1) ^ 2) ^ 2

end

end A017404.P15189469644025268139

namespace A017404

/-- `xor(11*n, -1)²²` -/
def P15189469644025268139.Spec : Prop :=
  ∀ n, P15189469644025268139.a n = A017404 n

end A017404

/-! ## A017404.P5447483029927536513

`(lcm(11, 11*n)+1)²²`
-/

namespace A017404.P5447483029927536513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 11 (11 * n) + 1) ^ 2) ^ 2

end

end A017404.P5447483029927536513

namespace A017404

/-- `(lcm(11, 11*n)+1)²²` -/
def P5447483029927536513.Spec : Prop :=
  ∀ n, (P5447483029927536513.a n : ℤ) = A017404 n

theorem P5447483029927536513.correct : P5447483029927536513.Spec := by
  intro n
  simp only [A017404, Nat.add_sub_cancel, A017404.P5447483029927536513.a, A017404.P4337032155838249813.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017404

/-! ## A017404.P4135133381345828749

`abs(xor(11*n, -1)^4)`
-/

namespace A017404.P4135133381345828749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (11 * n : ℤ) (-1) ^ 4|

end

end A017404.P4135133381345828749

namespace A017404

/-- `abs(xor(11*n, -1)^4)` -/
def P4135133381345828749.Spec : Prop :=
  ∀ n, P4135133381345828749.a n = A017404 n

end A017404

/-! ## A017404.P6716286756259508647

`Δ[11*C(n, 2)+n]²²`
-/

namespace A017404.P6716286756259508647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * Nat.choose n 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017404.P6716286756259508647

namespace A017404

/-- `Δ[11*C(n, 2)+n]²²` -/
def P6716286756259508647.Spec : Prop :=
  ∀ n, P6716286756259508647.a n = A017404 n

theorem P6716286756259508647.correct : P6716286756259508647.Spec := by
  intro n
  simp only [A017404, Nat.add_sub_cancel, A017404.P6716286756259508647.f1, A017404.P6716286756259508647.a, A017404.P4337032155838249813.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017404

/-! ## A017404.P1212068278789348752

`A017402(n)²`
-/

namespace A017404.P1212068278789348752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017402 n ^ 2

end

end A017404.P1212068278789348752

namespace A017404

/-- `A017402(n)²` -/
def P1212068278789348752.Spec : Prop :=
  ∀ n, P1212068278789348752.a n = A017404 n

theorem P1212068278789348752.correct : P1212068278789348752.Spec := by
  intro n
  simp only [A017404, Nat.add_sub_cancel, A017404.P1212068278789348752.a, A017404.P4337032155838249813.a, A017402, A017402.P2157335795432361377.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017404

/-! ## A017404.P3122209401158260034

`sqrt(A017408(n))`
-/

namespace A017404.P3122209401158260034
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017408 n : ℝ)

end

end A017404.P3122209401158260034

namespace A017404

/-- `sqrt(A017408(n))` -/
def P3122209401158260034.Spec : Prop :=
  ∀ n, P3122209401158260034.a n = (A017404 n : ℝ)

end A017404

/-! ## A017404.P12278318932582971801

`A017401(n)²²`
-/

namespace A017404.P12278318932582971801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017401 n ^ 2) ^ 2

end

end A017404.P12278318932582971801

namespace A017404

/-- `A017401(n)²²` -/
def P12278318932582971801.Spec : Prop :=
  ∀ n, P12278318932582971801.a n = A017404 n

theorem P12278318932582971801.correct : P12278318932582971801.Spec := by
  intro n
  simp only [A017404, Nat.add_sub_cancel, A017404.P12278318932582971801.a, A017404.P4337032155838249813.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017404

/-! ## A017404.P497073210869730046

`(A008593(n)+1)²²`
-/

namespace A017404.P497073210869730046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008593 n + 1) ^ 2) ^ 2

end

end A017404.P497073210869730046

namespace A017404

/-- `(A008593(n)+1)²²` -/
def P497073210869730046.Spec : Prop :=
  ∀ n, P497073210869730046.a n = A017404 n

theorem P497073210869730046.correct : P497073210869730046.Spec := by
  intro n
  simp only [A017404, Nat.add_sub_cancel, A017404.P497073210869730046.a, A017404.P4337032155838249813.a, A008593, A008593.P2680892499938115192.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017404

/-! ## A017404.P14430829897000540060

`(1-A017413(n))²²`
-/

namespace A017404.P14430829897000540060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017413 n) ^ 2) ^ 2

end

end A017404.P14430829897000540060

namespace A017404

/-- `(1-A017413(n))²²` -/
def P14430829897000540060.Spec : Prop :=
  ∀ n, P14430829897000540060.a n = A017404 n

theorem P14430829897000540060.correct : P14430829897000540060.Spec := by
  intro n
  simp only [A017404, Nat.add_sub_cancel, A017404.P14430829897000540060.a, A017404.P4337032155838249813.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017404

/-! ## A017404.P16130518876949713091

`(2-A017425(n))²²`
-/

namespace A017404.P16130518876949713091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017425 n) ^ 2) ^ 2

end

end A017404.P16130518876949713091

namespace A017404

/-- `(2-A017425(n))²²` -/
def P16130518876949713091.Spec : Prop :=
  ∀ n, P16130518876949713091.a n = A017404 n

theorem P16130518876949713091.correct : P16130518876949713091.Spec := by
  intro n
  simp only [A017404, Nat.add_sub_cancel, A017404.P16130518876949713091.a, A017404.P4337032155838249813.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017404

/-! ## A017404.P5469973158207059689

`(3-A017437(n))²²`
-/

namespace A017404.P5469973158207059689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017437 n) ^ 2) ^ 2

end

end A017404.P5469973158207059689

namespace A017404

/-- `(3-A017437(n))²²` -/
def P5469973158207059689.Spec : Prop :=
  ∀ n, P5469973158207059689.a n = A017404 n

theorem P5469973158207059689.correct : P5469973158207059689.Spec := by
  intro n
  simp only [A017404, Nat.add_sub_cancel, A017404.P5469973158207059689.a, A017404.P4337032155838249813.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017404

/-! ## A017404.P13014822088014408174

`(A017281(n)+n)²²`
-/

namespace A017404.P13014822088014408174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017281 n + (n : ℤ)) ^ 2) ^ 2

end

end A017404.P13014822088014408174

namespace A017404

/-- `(A017281(n)+n)²²` -/
def P13014822088014408174.Spec : Prop :=
  ∀ n, P13014822088014408174.a n = A017404 n

theorem P13014822088014408174.correct : P13014822088014408174.Spec := by
  intro n
  simp only [A017404, Nat.add_sub_cancel, A017404.P13014822088014408174.a, A017404.P4337032155838249813.a, A017281, A017281.P12372910670058171543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017404

/-! ## A017404.P2853759430057370980

`(n-A017533(n))²²`
-/

namespace A017404.P2853759430057370980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017533 n) ^ 2) ^ 2

end

end A017404.P2853759430057370980

namespace A017404

/-- `(n-A017533(n))²²` -/
def P2853759430057370980.Spec : Prop :=
  ∀ n, P2853759430057370980.a n = A017404 n

theorem P2853759430057370980.correct : P2853759430057370980.Spec := by
  intro n
  simp only [A017404, Nat.add_sub_cancel, A017404.P2853759430057370980.a, A017404.P4337032155838249813.a, A017533, A017533.P146508076441825746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017404

/-! ## A017404.P2139316346844084129

`(sqrt(A017390(n))+1)²²`
-/

namespace A017404.P2139316346844084129
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017390 n : ℝ) + 1) ^ 2) ^ 2

end

end A017404.P2139316346844084129

namespace A017404

/-- `(sqrt(A017390(n))+1)²²` -/
def P2139316346844084129.Spec : Prop :=
  ∀ n, P2139316346844084129.a n = (A017404 n : ℝ)

end A017404

/-! ## A017404.P9614395602446140557

`(1-sqrt(A017414(n)))²²`
-/

namespace A017404.P9614395602446140557
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017414 n : ℝ)) ^ 2) ^ 2

end

end A017404.P9614395602446140557

namespace A017404

/-- `(1-sqrt(A017414(n)))²²` -/
def P9614395602446140557.Spec : Prop :=
  ∀ n, P9614395602446140557.a n = (A017404 n : ℝ)

end A017404

/-! ## A017404.P4036577216592915815

`(2-sqrt(A017426(n)))²²`
-/

namespace A017404.P4036577216592915815
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - Real.sqrt (A017426 n : ℝ)) ^ 2) ^ 2

end

end A017404.P4036577216592915815

namespace A017404

/-- `(2-sqrt(A017426(n)))²²` -/
def P4036577216592915815.Spec : Prop :=
  ∀ n, P4036577216592915815.a n = (A017404 n : ℝ)

end A017404

/-! ## A017404.P8296106392277935617

`(1-Δ[A180223(n)])²²`
-/

namespace A017404.P8296106392277935617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (f1 (n + 1) - f1 n)) ^ 2) ^ 2

end

end A017404.P8296106392277935617

namespace A017404

/-- `(1-Δ[A180223(n)])²²` -/
def P8296106392277935617.Spec : Prop :=
  ∀ n, P8296106392277935617.a n = A017404 n

end A017404

/-! ## A017404.P9096503649623875090

`(sqrt(A017282(n))+n)²²`
-/

namespace A017404.P9096503649623875090
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017282 n : ℝ) + (n : ℝ)) ^ 2) ^ 2

end

end A017404.P9096503649623875090

namespace A017404

/-- `(sqrt(A017282(n))+n)²²` -/
def P9096503649623875090.Spec : Prop :=
  ∀ n, P9096503649623875090.a n = (A017404 n : ℝ)

end A017404

/-! ## A017404.P11264685152294944114

`A017401(n)*A017403(n)`
-/

namespace A017404.P11264685152294944114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n * A017403 n

end

end A017404.P11264685152294944114

namespace A017404

/-- `A017401(n)*A017403(n)` -/
def P11264685152294944114.Spec : Prop :=
  ∀ n, P11264685152294944114.a n = A017404 n

theorem P11264685152294944114.correct : P11264685152294944114.Spec := by
  intro n
  simp only [A017404, Nat.add_sub_cancel, A017404.P11264685152294944114.a, A017404.P4337032155838249813.a, A017401, A017401.P13777489390994228607.a, A017403, A017403.P7241268550045248601.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017404

/-!
# A017405: a(n) = (11*n+1)^5.

The programs for A017405, the canonical program `A017405.P6428403968024428793` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017405 has offset 0).

The definition of A017405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+1)^5` (program `A017405.P6428403968024428793`, by `A017405.P6428403968024428793.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017405.P6428403968024428793

`(11*n+1)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017405

/-- `(11*n+1)^5` -/
def P6428403968024428793.Spec : Prop :=
  ∀ n, (P6428403968024428793.a n : ℤ) = A017405 n

theorem P6428403968024428793.correct : P6428403968024428793.Spec := by
  intro n
  simp only [A017405]

end A017405

/-! ## A017405.P538817924632331910

`A000584(A017401(n))`
-/

namespace A017405.P538817924632331910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A017401 n).toNat

end

end A017405.P538817924632331910

namespace A017405

/-- `A000584(A017401(n))` -/
def P538817924632331910.Spec : Prop :=
  ∀ n, P538817924632331910.a n = A017405 n

end A017405

/-! ## A017405.P4377281483666766954

`abs(xor(11*n, -1)^5)`
-/

namespace A017405.P4377281483666766954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (11 * n : ℤ) (-1) ^ 5|

end

end A017405.P4377281483666766954

namespace A017405

/-- `abs(xor(11*n, -1)^5)` -/
def P4377281483666766954.Spec : Prop :=
  ∀ n, P4377281483666766954.a n = A017405 n

end A017405

/-! ## A017405.P2565327110650801696

`-xor(11*n, -1)^5`
-/

namespace A017405.P2565327110650801696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (11 * n : ℤ) (-1) ^ 5)

end

end A017405.P2565327110650801696

namespace A017405

/-- `-xor(11*n, -1)^5` -/
def P2565327110650801696.Spec : Prop :=
  ∀ n, P2565327110650801696.a n = A017405 n

end A017405

/-! ## A017405.P15587697953494414305

`A017401(n)*A017404(n)`
-/

namespace A017405.P15587697953494414305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n * A017404 n

end

end A017405.P15587697953494414305

namespace A017405

/-- `A017401(n)*A017404(n)` -/
def P15587697953494414305.Spec : Prop :=
  ∀ n, P15587697953494414305.a n = A017405 n

theorem P15587697953494414305.correct : P15587697953494414305.Spec := by
  intro n
  simp only [A017405, Nat.add_sub_cancel, A017405.P15587697953494414305.a, A017405.P6428403968024428793.a, A017401, A017401.P13777489390994228607.a, A017404, A017404.P4337032155838249813.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017405

/-! ## A017405.P3175107840901976923

`A017402(n)*A017403(n)`
-/

namespace A017405.P3175107840901976923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017402 n * A017403 n

end

end A017405.P3175107840901976923

namespace A017405

/-- `A017402(n)*A017403(n)` -/
def P3175107840901976923.Spec : Prop :=
  ∀ n, P3175107840901976923.a n = A017405 n

theorem P3175107840901976923.correct : P3175107840901976923.Spec := by
  intro n
  simp only [A017405, Nat.add_sub_cancel, A017405.P3175107840901976923.a, A017405.P6428403968024428793.a, A017402, A017402.P2157335795432361377.a, A017403, A017403.P7241268550045248601.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017405

/-! ## A017405.P1593236464400047503

`A017406(n)/A017401(n)`
-/

namespace A017405.P1593236464400047503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017406 n : ℚ) / (A017401 n : ℚ)

end

end A017405.P1593236464400047503

namespace A017405

/-- `A017406(n)/A017401(n)` -/
def P1593236464400047503.Spec : Prop :=
  ∀ n, P1593236464400047503.a n = (A017405 n : ℚ)

end A017405

/-! ## A017405.P3662582932409734276

`A017401(n)²*A017403(n)`
-/

namespace A017405.P3662582932409734276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n ^ 2 * A017403 n

end

end A017405.P3662582932409734276

namespace A017405

/-- `A017401(n)²*A017403(n)` -/
def P3662582932409734276.Spec : Prop :=
  ∀ n, P3662582932409734276.a n = A017405 n

theorem P3662582932409734276.correct : P3662582932409734276.Spec := by
  intro n
  simp only [A017405, Nat.add_sub_cancel, A017405.P3662582932409734276.a, A017405.P6428403968024428793.a, A017401, A017401.P13777489390994228607.a, A017403, A017403.P7241268550045248601.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017405

/-! ## A017405.P4675542173810449079

`A017402(n)²*A017401(n)`
-/

namespace A017405.P4675542173810449079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017402 n ^ 2 * A017401 n

end

end A017405.P4675542173810449079

namespace A017405

/-- `A017402(n)²*A017401(n)` -/
def P4675542173810449079.Spec : Prop :=
  ∀ n, P4675542173810449079.a n = A017405 n

theorem P4675542173810449079.correct : P4675542173810449079.Spec := by
  intro n
  simp only [A017405, Nat.add_sub_cancel, A017405.P4675542173810449079.a, A017405.P6428403968024428793.a, A017401, A017401.P13777489390994228607.a, A017402, A017402.P2157335795432361377.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017405

/-! ## A017405.P1197103927809887486

`A017404(n)²/A017403(n)`
-/

namespace A017405.P1197103927809887486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017404 n ^ 2 : ℚ) / (A017403 n : ℚ)

end

end A017405.P1197103927809887486

namespace A017405

/-- `A017404(n)²/A017403(n)` -/
def P1197103927809887486.Spec : Prop :=
  ∀ n, P1197103927809887486.a n = (A017405 n : ℚ)

end A017405

/-! ## A017405.P17871359790123728560

`A017407(n)/A017401(n)²`
-/

namespace A017405.P17871359790123728560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017407 n : ℚ) / (A017401 n ^ 2 : ℚ)

end

end A017405.P17871359790123728560

namespace A017405

/-- `A017407(n)/A017401(n)²` -/
def P17871359790123728560.Spec : Prop :=
  ∀ n, P17871359790123728560.a n = (A017405 n : ℚ)

end A017405

/-! ## A017405.P15062594255853218303

`A017404(n)/A017407(n)*A017404(n)²`
-/

namespace A017405.P15062594255853218303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017404 n : ℚ) / (A017407 n : ℚ) * (A017404 n ^ 2 : ℚ)

end

end A017405.P15062594255853218303

namespace A017405

/-- `A017404(n)/A017407(n)*A017404(n)²` -/
def P15062594255853218303.Spec : Prop :=
  ∀ n, P15062594255853218303.a n = (A017405 n : ℚ)

end A017405

/-! ## A017405.P2874854658278928618

`record[(n+1)^(gcd(11, n)-6)]`
-/

namespace A017405.P2874854658278928618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((Nat.gcd 11 n : ℤ) - 6 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017405.P2874854658278928618

namespace A017405

/-- `record[(n+1)^(gcd(11, n)-6)]` -/
def P2874854658278928618.Spec : Prop :=
  ∀ n, P2874854658278928618.a n = (A017405 n : ℚ)

end A017405

/-! ## A017405.P10292879166205279304

`abs((A016921(2*n)-n)^5)`
-/

namespace A017405.P10292879166205279304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016921 (2 * n) - (n : ℤ)) ^ 5|

end

end A017405.P10292879166205279304

namespace A017405

/-- `abs((A016921(2*n)-n)^5)` -/
def P10292879166205279304.Spec : Prop :=
  ∀ n, P10292879166205279304.a n = A017405 n

end A017405

/-! ## A017405.P14699355803858077223

`A143795(2*n+1)²²*A143795(2*n+1)`
-/

namespace A017405.P14699355803858077223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143795 (2 * n + 1) ^ 2) ^ 2 * A143795 (2 * n + 1)

end

end A017405.P14699355803858077223

namespace A017405

/-- `A143795(2*n+1)²²*A143795(2*n+1)` -/
def P14699355803858077223.Spec : Prop :=
  ∀ n, P14699355803858077223.a n = A017405 n

end A017405

/-! ## A017405.P12518279240551393708

`A166033(2*n+1)²²*A166033(2*n+1)`
-/

namespace A017405.P12518279240551393708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166033 (2 * n + 1) ^ 2) ^ 2 * A166033 (2 * n + 1)

end

end A017405.P12518279240551393708

namespace A017405

/-- `A166033(2*n+1)²²*A166033(2*n+1)` -/
def P12518279240551393708.Spec : Prop :=
  ∀ n, P12518279240551393708.a n = A017405 n

end A017405

/-! ## A017405.P15876730198338557070

`A168670(2*n+1)²²*A168670(2*n+1)`
-/

namespace A017405.P15876730198338557070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168670 (2 * n + 1) ^ 2) ^ 2 * A168670 (2 * n + 1)

end

end A017405.P15876730198338557070

namespace A017405

/-- `A168670(2*n+1)²²*A168670(2*n+1)` -/
def P15876730198338557070.Spec : Prop :=
  ∀ n, P15876730198338557070.a n = A017405 n

end A017405

/-! ## A017405.P2950362166137190820

`A175885(2*n+1)²²*A175885(2*n+1)`
-/

namespace A017405.P2950362166137190820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175885 (2 * n + 1) ^ 2) ^ 2 * A175885 (2 * n + 1)

end

end A017405.P2950362166137190820

namespace A017405

/-- `A175885(2*n+1)²²*A175885(2*n+1)` -/
def P2950362166137190820.Spec : Prop :=
  ∀ n, P2950362166137190820.a n = A017405 n

end A017405

/-! ## A017405.P5021505292114440264

`A000584(10*n+n+1)`
-/

namespace A017405.P5021505292114440264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (10 * n + (n + 1))

end

end A017405.P5021505292114440264

namespace A017405

/-- `A000584(10*n+n+1)` -/
def P5021505292114440264.Spec : Prop :=
  ∀ n, P5021505292114440264.a n = A017405 n

theorem P5021505292114440264.correct : P5021505292114440264.Spec := by
  intro n
  simp only [A017405, Nat.add_sub_cancel, A017405.P5021505292114440264.a, A017405.P6428403968024428793.a, A000584, A000584.P5477385692209315495.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017405

/-!
# A017406: a(n) = (11n+1)^6.

The programs for A017406, the canonical program `A017406.P5350902470863744699` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017406 has offset 0).

The definition of A017406 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+1)^6` (program `A017406.P5350902470863744699`, by `A017406.P5350902470863744699.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017406.P5350902470863744699

`(11*n+1)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017406

/-- `(11*n+1)^6` -/
def P5350902470863744699.Spec : Prop :=
  ∀ n, (P5350902470863744699.a n : ℤ) = A017406 n

theorem P5350902470863744699.correct : P5350902470863744699.Spec := by
  intro n
  simp only [A017406]

end A017406

/-! ## A017406.P8860413903845197320

`(xor(11*n, -1)^3)²`
-/

namespace A017406.P8860413903845197320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (11 * n : ℤ) (-1) ^ 3) ^ 2

end

end A017406.P8860413903845197320

namespace A017406

/-- `(xor(11*n, -1)^3)²` -/
def P8860413903845197320.Spec : Prop :=
  ∀ n, P8860413903845197320.a n = A017406 n

end A017406

/-! ## A017406.P9996815420490307606

`abs(xor(11*n, -1)^6)`
-/

namespace A017406.P9996815420490307606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (11 * n : ℤ) (-1) ^ 6|

end

end A017406.P9996815420490307606

namespace A017406

/-- `abs(xor(11*n, -1)^6)` -/
def P9996815420490307606.Spec : Prop :=
  ∀ n, P9996815420490307606.a n = A017406 n

end A017406

/-! ## A017406.P13739694132833255667

`xor(11*n, -1)²*xor(11*n, -1)²²`
-/

namespace A017406.P13739694132833255667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (11 * n : ℤ) (-1) ^ 2 * (Int.xor (11 * n : ℤ) (-1) ^ 2) ^ 2

end

end A017406.P13739694132833255667

namespace A017406

/-- `xor(11*n, -1)²*xor(11*n, -1)²²` -/
def P13739694132833255667.Spec : Prop :=
  ∀ n, P13739694132833255667.a n = A017406 n

end A017406

/-! ## A017406.P8309521661604477825

`A017403(n)²`
-/

namespace A017406.P8309521661604477825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017403 n ^ 2

end

end A017406.P8309521661604477825

namespace A017406

/-- `A017403(n)²` -/
def P8309521661604477825.Spec : Prop :=
  ∀ n, P8309521661604477825.a n = A017406 n

theorem P8309521661604477825.correct : P8309521661604477825.Spec := by
  intro n
  simp only [A017406, Nat.add_sub_cancel, A017406.P8309521661604477825.a, A017406.P5350902470863744699.a, A017403, A017403.P7241268550045248601.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017406

/-! ## A017406.P15068567923045962253

`(A017401(n)^3)²`
-/

namespace A017406.P15068567923045962253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017401 n ^ 3) ^ 2

end

end A017406.P15068567923045962253

namespace A017406

/-- `(A017401(n)^3)²` -/
def P15068567923045962253.Spec : Prop :=
  ∀ n, P15068567923045962253.a n = A017406 n

theorem P15068567923045962253.correct : P15068567923045962253.Spec := by
  intro n
  simp only [A017406, Nat.add_sub_cancel, A017406.P15068567923045962253.a, A017406.P5350902470863744699.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017406

/-! ## A017406.P11340063393508291162

`A017401(n)*A017405(n)`
-/

namespace A017406.P11340063393508291162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n * A017405 n

end

end A017406.P11340063393508291162

namespace A017406

/-- `A017401(n)*A017405(n)` -/
def P11340063393508291162.Spec : Prop :=
  ∀ n, P11340063393508291162.a n = A017406 n

theorem P11340063393508291162.correct : P11340063393508291162.Spec := by
  intro n
  simp only [A017406, Nat.add_sub_cancel, A017406.P11340063393508291162.a, A017406.P5350902470863744699.a, A017401, A017401.P13777489390994228607.a, A017405, A017405.P6428403968024428793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017406

/-! ## A017406.P18039173666062972032

`A017402(n)*A017404(n)`
-/

namespace A017406.P18039173666062972032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017402 n * A017404 n

end

end A017406.P18039173666062972032

namespace A017406

/-- `A017402(n)*A017404(n)` -/
def P18039173666062972032.Spec : Prop :=
  ∀ n, P18039173666062972032.a n = A017406 n

theorem P18039173666062972032.correct : P18039173666062972032.Spec := by
  intro n
  simp only [A017406, Nat.add_sub_cancel, A017406.P18039173666062972032.a, A017406.P5350902470863744699.a, A017402, A017402.P2157335795432361377.a, A017404, A017404.P4337032155838249813.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017406

/-! ## A017406.P8815536514515021577

`A017407(n)/A017401(n)`
-/

namespace A017406.P8815536514515021577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017407 n : ℚ) / (A017401 n : ℚ)

end

end A017406.P8815536514515021577

namespace A017406

/-- `A017407(n)/A017401(n)` -/
def P8815536514515021577.Spec : Prop :=
  ∀ n, P8815536514515021577.a n = (A017406 n : ℚ)

end A017406

/-! ## A017406.P550572008278282495

`(A017401(n)*A017402(n))²`
-/

namespace A017406.P550572008278282495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017401 n * A017402 n) ^ 2

end

end A017406.P550572008278282495

namespace A017406

/-- `(A017401(n)*A017402(n))²` -/
def P550572008278282495.Spec : Prop :=
  ∀ n, P550572008278282495.a n = A017406 n

theorem P550572008278282495.correct : P550572008278282495.Spec := by
  intro n
  simp only [A017406, Nat.add_sub_cancel, A017406.P550572008278282495.a, A017406.P5350902470863744699.a, A017401, A017401.P13777489390994228607.a, A017402, A017402.P2157335795432361377.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017406

/-! ## A017406.P6133681274660582837

`A017401(n)²*A017404(n)`
-/

namespace A017406.P6133681274660582837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n ^ 2 * A017404 n

end

end A017406.P6133681274660582837

namespace A017406

/-- `A017401(n)²*A017404(n)` -/
def P6133681274660582837.Spec : Prop :=
  ∀ n, P6133681274660582837.a n = A017406 n

theorem P6133681274660582837.correct : P6133681274660582837.Spec := by
  intro n
  simp only [A017406, Nat.add_sub_cancel, A017406.P6133681274660582837.a, A017406.P5350902470863744699.a, A017401, A017401.P13777489390994228607.a, A017404, A017404.P4337032155838249813.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017406

/-! ## A017406.P14052078704078706009

`(A017405(n)/A017402(n))²`
-/

namespace A017406.P14052078704078706009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017405 n : ℚ) / (A017402 n : ℚ)) ^ 2

end

end A017406.P14052078704078706009

namespace A017406

/-- `(A017405(n)/A017402(n))²` -/
def P14052078704078706009.Spec : Prop :=
  ∀ n, P14052078704078706009.a n = (A017406 n : ℚ)

end A017406

/-! ## A017406.P5507446484115296379

`(A017407(n)/A017404(n))²`
-/

namespace A017406.P5507446484115296379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017407 n : ℚ) / (A017404 n : ℚ)) ^ 2

end

end A017406.P5507446484115296379

namespace A017406

/-- `(A017407(n)/A017404(n))²` -/
def P5507446484115296379.Spec : Prop :=
  ∀ n, P5507446484115296379.a n = (A017406 n : ℚ)

end A017406

/-! ## A017406.P11975304727065541914

`A017408(n)/sqrt(sqrt(A017408(n)))`
-/

namespace A017406.P11975304727065541914
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017408 n : ℝ) / Real.sqrt (Real.sqrt (A017408 n : ℝ))

end

end A017406.P11975304727065541914

namespace A017406

/-- `A017408(n)/sqrt(sqrt(A017408(n)))` -/
def P11975304727065541914.Spec : Prop :=
  ∀ n, P11975304727065541914.a n = (A017406 n : ℝ)

end A017406

/-! ## A017406.P9420187713393138437

`A017405(n)*A017413(n)-A017405(n)`
-/

namespace A017406.P9420187713393138437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017405 n * A017413 n - A017405 n

end

end A017406.P9420187713393138437

namespace A017406

/-- `A017405(n)*A017413(n)-A017405(n)` -/
def P9420187713393138437.Spec : Prop :=
  ∀ n, P9420187713393138437.a n = A017406 n

theorem P9420187713393138437.correct : P9420187713393138437.Spec := by
  intro n
  simp only [A017406, Nat.add_sub_cancel, A017406.P9420187713393138437.a, A017406.P5350902470863744699.a, A017405, A017405.P6428403968024428793.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017406

/-! ## A017406.P7346544744016245369

`(Δ[A051865(n)]^3)²`
-/

namespace A017406.P7346544744016245369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017406.P7346544744016245369

namespace A017406

/-- `(Δ[A051865(n)]^3)²` -/
def P7346544744016245369.Spec : Prop :=
  ∀ n, P7346544744016245369.a n = A017406 n

end A017406

/-! ## A017406.P6217274143249670350

`record[(n+1)^(gcd(11, n)-5)]`
-/

namespace A017406.P6217274143249670350
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((Nat.gcd 11 n : ℤ) - 5 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017406.P6217274143249670350

namespace A017406

/-- `record[(n+1)^(gcd(11, n)-5)]` -/
def P6217274143249670350.Spec : Prop :=
  ∀ n, P6217274143249670350.a n = (A017406 n : ℚ)

end A017406

/-! ## A017406.P11370701109031683789

`(A143795(2*n+1)²*A143795(2*n+1))²`
-/

namespace A017406.P11370701109031683789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143795 (2 * n + 1) ^ 2 * A143795 (2 * n + 1)) ^ 2

end

end A017406.P11370701109031683789

namespace A017406

/-- `(A143795(2*n+1)²*A143795(2*n+1))²` -/
def P11370701109031683789.Spec : Prop :=
  ∀ n, P11370701109031683789.a n = A017406 n

end A017406

/-! ## A017406.P17180813781283031919

`(A166033(2*n+1)²*A166033(2*n+1))²`
-/

namespace A017406.P17180813781283031919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166033 (2 * n + 1) ^ 2 * A166033 (2 * n + 1)) ^ 2

end

end A017406.P17180813781283031919

namespace A017406

/-- `(A166033(2*n+1)²*A166033(2*n+1))²` -/
def P17180813781283031919.Spec : Prop :=
  ∀ n, P17180813781283031919.a n = A017406 n

end A017406

/-! ## A017406.P13165358038790750073

`(A168670(2*n+1)²*A168670(2*n+1))²`
-/

namespace A017406.P13165358038790750073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168670 (2 * n + 1) ^ 2 * A168670 (2 * n + 1)) ^ 2

end

end A017406.P13165358038790750073

namespace A017406

/-- `(A168670(2*n+1)²*A168670(2*n+1))²` -/
def P13165358038790750073.Spec : Prop :=
  ∀ n, P13165358038790750073.a n = A017406 n

end A017406

/-!
# A017407: a(n) = (11*n + 1)^7.

The programs for A017407, the canonical program `A017407.P7633603463405550180` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017407 has offset 0).

The definition of A017407 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+1)^7` (program `A017407.P7633603463405550180`, by `A017407.P7633603463405550180.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017407.P7633603463405550180

`(11*n+1)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017407

/-- `(11*n+1)^7` -/
def P7633603463405550180.Spec : Prop :=
  ∀ n, (P7633603463405550180.a n : ℤ) = A017407 n

theorem P7633603463405550180.correct : P7633603463405550180.Spec := by
  intro n
  simp only [A017407]

end A017407

/-! ## A017407.P13500823212978194837

`abs(xor(11*n, -1)^7)`
-/

namespace A017407.P13500823212978194837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (11 * n : ℤ) (-1) ^ 7|

end

end A017407.P13500823212978194837

namespace A017407

/-- `abs(xor(11*n, -1)^7)` -/
def P13500823212978194837.Spec : Prop :=
  ∀ n, P13500823212978194837.a n = A017407 n

end A017407

/-! ## A017407.P4997113899808152458

`-(-A017401(n))^7`
-/

namespace A017407.P4997113899808152458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-A017401 n) ^ 7)

end

end A017407.P4997113899808152458

namespace A017407

/-- `-(-A017401(n))^7` -/
def P4997113899808152458.Spec : Prop :=
  ∀ n, P4997113899808152458.a n = A017407 n

theorem P4997113899808152458.correct : P4997113899808152458.Spec := by
  intro n
  simp only [A017407, Nat.add_sub_cancel, A017407.P4997113899808152458.a, A017407.P7633603463405550180.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017407

/-! ## A017407.P2106209864611155660

`abs((1-A017413(n))^7)`
-/

namespace A017407.P2106209864611155660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A017413 n) ^ 7|

end

end A017407.P2106209864611155660

namespace A017407

/-- `abs((1-A017413(n))^7)` -/
def P2106209864611155660.Spec : Prop :=
  ∀ n, P2106209864611155660.a n = A017407 n

end A017407

/-! ## A017407.P14736426727400046703

`A017401(n)*A017406(n)`
-/

namespace A017407.P14736426727400046703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n * A017406 n

end

end A017407.P14736426727400046703

namespace A017407

/-- `A017401(n)*A017406(n)` -/
def P14736426727400046703.Spec : Prop :=
  ∀ n, P14736426727400046703.a n = A017407 n

theorem P14736426727400046703.correct : P14736426727400046703.Spec := by
  intro n
  simp only [A017407, Nat.add_sub_cancel, A017407.P14736426727400046703.a, A017407.P7633603463405550180.a, A017401, A017401.P13777489390994228607.a, A017406, A017406.P5350902470863744699.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017407

/-! ## A017407.P6987572701186556881

`A017402(n)*A017405(n)`
-/

namespace A017407.P6987572701186556881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017402 n * A017405 n

end

end A017407.P6987572701186556881

namespace A017407

/-- `A017402(n)*A017405(n)` -/
def P6987572701186556881.Spec : Prop :=
  ∀ n, P6987572701186556881.a n = A017407 n

theorem P6987572701186556881.correct : P6987572701186556881.Spec := by
  intro n
  simp only [A017407, Nat.add_sub_cancel, A017407.P6987572701186556881.a, A017407.P7633603463405550180.a, A017402, A017402.P2157335795432361377.a, A017405, A017405.P6428403968024428793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017407

/-! ## A017407.P2441130090014091775

`A017403(n)*A017404(n)`
-/

namespace A017407.P2441130090014091775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017403 n * A017404 n

end

end A017407.P2441130090014091775

namespace A017407

/-- `A017403(n)*A017404(n)` -/
def P2441130090014091775.Spec : Prop :=
  ∀ n, P2441130090014091775.a n = A017407 n

theorem P2441130090014091775.correct : P2441130090014091775.Spec := by
  intro n
  simp only [A017407, Nat.add_sub_cancel, A017407.P2441130090014091775.a, A017407.P7633603463405550180.a, A017403, A017403.P7241268550045248601.a, A017404, A017404.P4337032155838249813.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017407

/-! ## A017407.P13129375973966577503

`A017401(n)²*A017405(n)`
-/

namespace A017407.P13129375973966577503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n ^ 2 * A017405 n

end

end A017407.P13129375973966577503

namespace A017407

/-- `A017401(n)²*A017405(n)` -/
def P13129375973966577503.Spec : Prop :=
  ∀ n, P13129375973966577503.a n = A017407 n

theorem P13129375973966577503.correct : P13129375973966577503.Spec := by
  intro n
  simp only [A017407, Nat.add_sub_cancel, A017407.P13129375973966577503.a, A017407.P7633603463405550180.a, A017401, A017401.P13777489390994228607.a, A017405, A017405.P6428403968024428793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017407

/-! ## A017407.P7720021710256639207

`A017402(n)²*A017403(n)`
-/

namespace A017407.P7720021710256639207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017402 n ^ 2 * A017403 n

end

end A017407.P7720021710256639207

namespace A017407

/-- `A017402(n)²*A017403(n)` -/
def P7720021710256639207.Spec : Prop :=
  ∀ n, P7720021710256639207.a n = A017407 n

theorem P7720021710256639207.correct : P7720021710256639207.Spec := by
  intro n
  simp only [A017407, Nat.add_sub_cancel, A017407.P7720021710256639207.a, A017407.P7633603463405550180.a, A017402, A017402.P2157335795432361377.a, A017403, A017403.P7241268550045248601.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017407

/-! ## A017407.P4384107088101022195

`A017403(n)²*A017401(n)`
-/

namespace A017407.P4384107088101022195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017403 n ^ 2 * A017401 n

end

end A017407.P4384107088101022195

namespace A017407

/-- `A017403(n)²*A017401(n)` -/
def P4384107088101022195.Spec : Prop :=
  ∀ n, P4384107088101022195.a n = A017407 n

theorem P4384107088101022195.correct : P4384107088101022195.Spec := by
  intro n
  simp only [A017407, Nat.add_sub_cancel, A017407.P4384107088101022195.a, A017407.P7633603463405550180.a, A017401, A017401.P13777489390994228607.a, A017403, A017403.P7241268550045248601.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017407

/-! ## A017407.P1175278550964656935

`A017404(n)²/A017401(n)`
-/

namespace A017407.P1175278550964656935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017404 n ^ 2 : ℚ) / (A017401 n : ℚ)

end

end A017407.P1175278550964656935

namespace A017407

/-- `A017404(n)²/A017401(n)` -/
def P1175278550964656935.Spec : Prop :=
  ∀ n, P1175278550964656935.a n = (A017407 n : ℚ)

end A017407

/-! ## A017407.P3156312254746571220

`A017402(n)²²/A017401(n)`
-/

namespace A017407.P3156312254746571220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017402 n ^ 2) ^ 2 : ℚ) / (A017401 n : ℚ)

end

end A017407.P3156312254746571220

namespace A017407

/-- `A017402(n)²²/A017401(n)` -/
def P3156312254746571220.Spec : Prop :=
  ∀ n, P3156312254746571220.a n = (A017407 n : ℚ)

end A017407

/-! ## A017407.P16778857425248177046

`A017405(n)/A017403(n)*A017405(n)`
-/

namespace A017407.P16778857425248177046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017405 n : ℚ) / (A017403 n : ℚ) * (A017405 n : ℚ)

end

end A017407.P16778857425248177046

namespace A017407

/-- `A017405(n)/A017403(n)*A017405(n)` -/
def P16778857425248177046.Spec : Prop :=
  ∀ n, P16778857425248177046.a n = (A017407 n : ℚ)

end A017407

/-! ## A017407.P4451111159706202305

`A001015(11*n+1)`
-/

namespace A017407.P4451111159706202305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (11 * n + 1)

end

end A017407.P4451111159706202305

namespace A017407

/-- `A001015(11*n+1)` -/
def P4451111159706202305.Spec : Prop :=
  ∀ n, P4451111159706202305.a n = A017407 n

end A017407

/-! ## A017407.P14077870468408360734

`A009641(7*A017401(n))`
-/

namespace A017407.P14077870468408360734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009641 (7 * A017401 n).toNat

end

end A017407.P14077870468408360734

namespace A017407

/-- `A009641(7*A017401(n))` -/
def P14077870468408360734.Spec : Prop :=
  ∀ n, P14077870468408360734.a n = A017407 n

end A017407

/-!
# A017408: a(n) = (11*n + 1)^8.

The programs for A017408, the canonical program `A017408.P16956071596272169690` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017408 has offset 0).

The definition of A017408 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+1)^8` (program `A017408.P16956071596272169690`, by `A017408.P16956071596272169690.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017408.P16956071596272169690

`(11*n+1)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017408

/-- `(11*n+1)^8` -/
def P16956071596272169690.Spec : Prop :=
  ∀ n, (P16956071596272169690.a n : ℤ) = A017408 n

theorem P16956071596272169690.correct : P16956071596272169690.Spec := by
  intro n
  simp only [A017408]

end A017408

/-! ## A017408.P2355207762146147835

`A017404(n)²`
-/

namespace A017408.P2355207762146147835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017404 n ^ 2

end

end A017408.P2355207762146147835

namespace A017408

/-- `A017404(n)²` -/
def P2355207762146147835.Spec : Prop :=
  ∀ n, P2355207762146147835.a n = A017408 n

theorem P2355207762146147835.correct : P2355207762146147835.Spec := by
  intro n
  simp only [A017408, Nat.add_sub_cancel, A017408.P2355207762146147835.a, A017408.P16956071596272169690.a, A017404, A017404.P4337032155838249813.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017408

/-! ## A017408.P12207774029455441687

`A017402(n)²²`
-/

namespace A017408.P12207774029455441687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017402 n ^ 2) ^ 2

end

end A017408.P12207774029455441687

namespace A017408

/-- `A017402(n)²²` -/
def P12207774029455441687.Spec : Prop :=
  ∀ n, P12207774029455441687.a n = A017408 n

theorem P12207774029455441687.correct : P12207774029455441687.Spec := by
  intro n
  simp only [A017408, Nat.add_sub_cancel, A017408.P12207774029455441687.a, A017408.P16956071596272169690.a, A017402, A017402.P2157335795432361377.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017408

/-! ## A017408.P14453855839897331708

`(A017401(n)^4)²`
-/

namespace A017408.P14453855839897331708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017401 n ^ 4) ^ 2

end

end A017408.P14453855839897331708

namespace A017408

/-- `(A017401(n)^4)²` -/
def P14453855839897331708.Spec : Prop :=
  ∀ n, P14453855839897331708.a n = A017408 n

theorem P14453855839897331708.correct : P14453855839897331708.Spec := by
  intro n
  simp only [A017408, Nat.add_sub_cancel, A017408.P14453855839897331708.a, A017408.P16956071596272169690.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017408

/-! ## A017408.P13617324457688353532

`(A008593(n)+1)²²²`
-/

namespace A017408.P13617324457688353532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008593 n + 1) ^ 2) ^ 2) ^ 2

end

end A017408.P13617324457688353532

namespace A017408

/-- `(A008593(n)+1)²²²` -/
def P13617324457688353532.Spec : Prop :=
  ∀ n, P13617324457688353532.a n = A017408 n

theorem P13617324457688353532.correct : P13617324457688353532.Spec := by
  intro n
  simp only [A017408, Nat.add_sub_cancel, A017408.P13617324457688353532.a, A017408.P16956071596272169690.a, A008593, A008593.P2680892499938115192.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017408

/-! ## A017408.P10002298894560661637

`(1-A017413(n))²²²`
-/

namespace A017408.P10002298894560661637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017413 n) ^ 2) ^ 2) ^ 2

end

end A017408.P10002298894560661637

namespace A017408

/-- `(1-A017413(n))²²²` -/
def P10002298894560661637.Spec : Prop :=
  ∀ n, P10002298894560661637.a n = A017408 n

theorem P10002298894560661637.correct : P10002298894560661637.Spec := by
  intro n
  simp only [A017408, Nat.add_sub_cancel, A017408.P10002298894560661637.a, A017408.P16956071596272169690.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017408

/-! ## A017408.P11531774628590080544

`(2-A017425(n))²²²`
-/

namespace A017408.P11531774628590080544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017425 n) ^ 2) ^ 2) ^ 2

end

end A017408.P11531774628590080544

namespace A017408

/-- `(2-A017425(n))²²²` -/
def P11531774628590080544.Spec : Prop :=
  ∀ n, P11531774628590080544.a n = A017408 n

theorem P11531774628590080544.correct : P11531774628590080544.Spec := by
  intro n
  simp only [A017408, Nat.add_sub_cancel, A017408.P11531774628590080544.a, A017408.P16956071596272169690.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017408

/-! ## A017408.P7248157773561725332

`(n-A017533(n))²²²`
-/

namespace A017408.P7248157773561725332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017533 n) ^ 2) ^ 2) ^ 2

end

end A017408.P7248157773561725332

namespace A017408

/-- `(n-A017533(n))²²²` -/
def P7248157773561725332.Spec : Prop :=
  ∀ n, P7248157773561725332.a n = A017408 n

theorem P7248157773561725332.correct : P7248157773561725332.Spec := by
  intro n
  simp only [A017408, Nat.add_sub_cancel, A017408.P7248157773561725332.a, A017408.P16956071596272169690.a, A017533, A017533.P146508076441825746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017408

/-! ## A017408.P3175274184719889274

`(A008592(n)+n+1)²²²`
-/

namespace A017408.P3175274184719889274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008592 n + (n + 1 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017408.P3175274184719889274

namespace A017408

/-- `(A008592(n)+n+1)²²²` -/
def P3175274184719889274.Spec : Prop :=
  ∀ n, P3175274184719889274.a n = A017408 n

theorem P3175274184719889274.correct : P3175274184719889274.Spec := by
  intro n
  simp only [A017408, Nat.add_sub_cancel, A017408.P3175274184719889274.a, A017408.P16956071596272169690.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017408

/-! ## A017408.P18278383447941442663

`A017401(n)*A017407(n)`
-/

namespace A017408.P18278383447941442663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n * A017407 n

end

end A017408.P18278383447941442663

namespace A017408

/-- `A017401(n)*A017407(n)` -/
def P18278383447941442663.Spec : Prop :=
  ∀ n, P18278383447941442663.a n = A017408 n

theorem P18278383447941442663.correct : P18278383447941442663.Spec := by
  intro n
  simp only [A017408, Nat.add_sub_cancel, A017408.P18278383447941442663.a, A017408.P16956071596272169690.a, A017401, A017401.P13777489390994228607.a, A017407, A017407.P7633603463405550180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017408

/-! ## A017408.P14890306866598660052

`A017402(n)*A017406(n)`
-/

namespace A017408.P14890306866598660052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017402 n * A017406 n

end

end A017408.P14890306866598660052

namespace A017408

/-- `A017402(n)*A017406(n)` -/
def P14890306866598660052.Spec : Prop :=
  ∀ n, P14890306866598660052.a n = A017408 n

theorem P14890306866598660052.correct : P14890306866598660052.Spec := by
  intro n
  simp only [A017408, Nat.add_sub_cancel, A017408.P14890306866598660052.a, A017408.P16956071596272169690.a, A017402, A017402.P2157335795432361377.a, A017406, A017406.P5350902470863744699.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017408

/-! ## A017408.P1748527489066934551

`A017403(n)*A017405(n)`
-/

namespace A017408.P1748527489066934551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017403 n * A017405 n

end

end A017408.P1748527489066934551

namespace A017408

/-- `A017403(n)*A017405(n)` -/
def P1748527489066934551.Spec : Prop :=
  ∀ n, P1748527489066934551.a n = A017408 n

theorem P1748527489066934551.correct : P1748527489066934551.Spec := by
  intro n
  simp only [A017408, Nat.add_sub_cancel, A017408.P1748527489066934551.a, A017408.P16956071596272169690.a, A017403, A017403.P7241268550045248601.a, A017405, A017405.P6428403968024428793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017408

/-! ## A017408.P14321503339354021117

`(A017407(n)/A017403(n))²`
-/

namespace A017408.P14321503339354021117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017407 n : ℚ) / (A017403 n : ℚ)) ^ 2

end

end A017408.P14321503339354021117

namespace A017408

/-- `(A017407(n)/A017403(n))²` -/
def P14321503339354021117.Spec : Prop :=
  ∀ n, P14321503339354021117.a n = (A017408 n : ℚ)

end A017408

/-! ## A017408.P14812020982166861509

`A017403(n)²*A017403(n)/A017401(n)`
-/

namespace A017408.P14812020982166861509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017403 n ^ 2 * A017403 n : ℚ) / (A017401 n : ℚ)

end

end A017408.P14812020982166861509

namespace A017408

/-- `A017403(n)²*A017403(n)/A017401(n)` -/
def P14812020982166861509.Spec : Prop :=
  ∀ n, P14812020982166861509.a n = (A017408 n : ℚ)

end A017408

/-! ## A017408.P1250448995493827252

`Δ[A051865(n)]²²²`
-/

namespace A017408.P1250448995493827252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017408.P1250448995493827252

namespace A017408

/-- `Δ[A051865(n)]²²²` -/
def P1250448995493827252.Spec : Prop :=
  ∀ n, P1250448995493827252.a n = A017408 n

end A017408

/-! ## A017408.P12414140319772484135

`A131912(2*n+1)²²²`
-/

namespace A017408.P12414140319772484135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A131912 (2 * n + 1) ^ 2) ^ 2) ^ 2

end

end A017408.P12414140319772484135

namespace A017408

/-- `A131912(2*n+1)²²²` -/
def P12414140319772484135.Spec : Prop :=
  ∀ n, P12414140319772484135.a n = A017408 n

end A017408

/-! ## A017408.P9642130759837898065

`A143795(2*n+1)²²²`
-/

namespace A017408.P9642130759837898065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A143795 (2 * n + 1) ^ 2) ^ 2) ^ 2

end

end A017408.P9642130759837898065

namespace A017408

/-- `A143795(2*n+1)²²²` -/
def P9642130759837898065.Spec : Prop :=
  ∀ n, P9642130759837898065.a n = A017408 n

end A017408

/-! ## A017408.P4984832570049947607

`A166033(2*n+1)²²²`
-/

namespace A017408.P4984832570049947607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A166033 (2 * n + 1) ^ 2) ^ 2) ^ 2

end

end A017408.P4984832570049947607

namespace A017408

/-- `A166033(2*n+1)²²²` -/
def P4984832570049947607.Spec : Prop :=
  ∀ n, P4984832570049947607.a n = A017408 n

end A017408

/-! ## A017408.P3030027546026874228

`A168670(2*n+1)²²²`
-/

namespace A017408.P3030027546026874228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A168670 (2 * n + 1) ^ 2) ^ 2) ^ 2

end

end A017408.P3030027546026874228

namespace A017408

/-- `A168670(2*n+1)²²²` -/
def P3030027546026874228.Spec : Prop :=
  ∀ n, P3030027546026874228.a n = A017408 n

end A017408

/-! ## A017408.P12840809939634534201

`A175885(2*n+1)²²²`
-/

namespace A017408.P12840809939634534201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A175885 (2 * n + 1) ^ 2) ^ 2) ^ 2

end

end A017408.P12840809939634534201

namespace A017408

/-- `A175885(2*n+1)²²²` -/
def P12840809939634534201.Spec : Prop :=
  ∀ n, P12840809939634534201.a n = A017408 n

end A017408

/-!
# A017409: a(n) = (11n+1)^9.

The programs for A017409, the canonical program `A017409.P5384397434521172467` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017409 has offset 0).

The definition of A017409 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+1)^9` (program `A017409.P5384397434521172467`, by `A017409.P5384397434521172467.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017409.P5384397434521172467

`(11*n+1)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017409

/-- `(11*n+1)^9` -/
def P5384397434521172467.Spec : Prop :=
  ∀ n, (P5384397434521172467.a n : ℤ) = A017409 n

theorem P5384397434521172467.correct : P5384397434521172467.Spec := by
  intro n
  simp only [A017409]

end A017409

/-! ## A017409.P11069413376062228955

`A017403(n)*A017406(n)`
-/

namespace A017409.P11069413376062228955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017403 n * A017406 n

end

end A017409.P11069413376062228955

namespace A017409

/-- `A017403(n)*A017406(n)` -/
def P11069413376062228955.Spec : Prop :=
  ∀ n, P11069413376062228955.a n = A017409 n

theorem P11069413376062228955.correct : P11069413376062228955.Spec := by
  intro n
  simp only [A017409, Nat.add_sub_cancel, A017409.P11069413376062228955.a, A017409.P5384397434521172467.a, A017403, A017403.P7241268550045248601.a, A017406, A017406.P5350902470863744699.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017409

/-! ## A017409.P15126995448413834235

`A017404(n)*A017405(n)`
-/

namespace A017409.P15126995448413834235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017404 n * A017405 n

end

end A017409.P15126995448413834235

namespace A017409

/-- `A017404(n)*A017405(n)` -/
def P15126995448413834235.Spec : Prop :=
  ∀ n, P15126995448413834235.a n = A017409 n

theorem P15126995448413834235.correct : P15126995448413834235.Spec := by
  intro n
  simp only [A017409, Nat.add_sub_cancel, A017409.P15126995448413834235.a, A017409.P5384397434521172467.a, A017404, A017404.P4337032155838249813.a, A017405, A017405.P6428403968024428793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017409

/-! ## A017409.P7784258997489650443

`A017401(n)²*A017407(n)`
-/

namespace A017409.P7784258997489650443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n ^ 2 * A017407 n

end

end A017409.P7784258997489650443

namespace A017409

/-- `A017401(n)²*A017407(n)` -/
def P7784258997489650443.Spec : Prop :=
  ∀ n, P7784258997489650443.a n = A017409 n

theorem P7784258997489650443.correct : P7784258997489650443.Spec := by
  intro n
  simp only [A017409, Nat.add_sub_cancel, A017409.P7784258997489650443.a, A017409.P5384397434521172467.a, A017401, A017401.P13777489390994228607.a, A017407, A017407.P7633603463405550180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017409

/-! ## A017409.P8428956354028081753

`A001017(A017401(n))`
-/

namespace A017409.P8428956354028081753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017401 n).toNat

end

end A017409.P8428956354028081753

namespace A017409

/-- `A001017(A017401(n))` -/
def P8428956354028081753.Spec : Prop :=
  ∀ n, P8428956354028081753.a n = A017409 n

end A017409

/-! ## A017409.P6940642627237540713

`A001017(A017281(n)+n)`
-/

namespace A017409.P6940642627237540713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017281 n + (n : ℤ)).toNat

end

end A017409.P6940642627237540713

namespace A017409

/-- `A001017(A017281(n)+n)` -/
def P6940642627237540713.Spec : Prop :=
  ∀ n, P6940642627237540713.a n = A017409 n

end A017409

/-! ## A017409.P9235750571048492412

`A001017(A008587(2*n)+n+1)`
-/

namespace A017409.P9235750571048492412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A008587 (2 * n) + (n + 1 : ℤ)).toNat

end

end A017409.P9235750571048492412

namespace A017409

/-- `A001017(A008587(2*n)+n+1)` -/
def P9235750571048492412.Spec : Prop :=
  ∀ n, P9235750571048492412.a n = A017409 n

end A017409

/-!
# A017410: 

The programs for A017410, there is no canonical definition to state claims against.
-/

/-! ## A017410.P8123803700690621047

`(11*n+1)^10`
-/

namespace A017410.P8123803700690621047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 1) ^ 10

end

end A017410.P8123803700690621047

/-! ## A017410.P14528322524867734481

`A017405(n)²`
-/

namespace A017410.P14528322524867734481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017405 n ^ 2

end

end A017410.P14528322524867734481

/-! ## A017410.P6442144050569956188

`(A017401(n)^5)²`
-/

namespace A017410.P6442144050569956188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017401 n ^ 5) ^ 2

end

end A017410.P6442144050569956188

/-! ## A017410.P6331739341743775658

`A008454(A008593(n)+1)`
-/

namespace A017410.P6331739341743775658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008593 n + 1).toNat

end

end A017410.P6331739341743775658

/-! ## A017410.P8519430683490124309

`A008454(A016945(2*n)-(n+2))`
-/

namespace A017410.P8519430683490124309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016945 (2 * n) - (n + 2 : ℤ)).toNat

end

end A017410.P8519430683490124309

/-!
# A017411: 

The programs for A017411, there is no canonical definition to state claims against.
-/

/-! ## A017411.P4604156169916274270

`(11*n+1)^11`
-/

namespace A017411.P4604156169916274270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 1) ^ 11

end

end A017411.P4604156169916274270

/-! ## A017411.P524383071121811414

`A017404(n)*A017407(n)`
-/

namespace A017411.P524383071121811414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017404 n * A017407 n

end

end A017411.P524383071121811414

/-! ## A017411.P16441780038647524057

`A017405(n)*A017406(n)`
-/

namespace A017411.P16441780038647524057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017405 n * A017406 n

end

end A017411.P16441780038647524057

/-! ## A017411.P5029536964568733365

`A017401(n)²*A017409(n)`
-/

namespace A017411.P5029536964568733365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n ^ 2 * A017409 n

end

end A017411.P5029536964568733365

/-! ## A017411.P16209775675621342263

`A008455(11*n+1)`
-/

namespace A017411.P16209775675621342263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (11 * n + 1)

end

end A017411.P16209775675621342263

/-!
# A017412: 

The programs for A017412, there is no canonical definition to state claims against.
-/

/-! ## A017412.P9644042148305479113

`A017406(n)²`
-/

namespace A017412.P9644042148305479113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017406 n ^ 2

end

end A017412.P9644042148305479113

/-! ## A017412.P8964329362124346244

`A017404(n)^3`
-/

namespace A017412.P8964329362124346244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017404 n ^ 3

end

end A017412.P8964329362124346244

/-! ## A017412.P12316846825355667798

`A017403(n)^4`
-/

namespace A017412.P12316846825355667798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017403 n ^ 4

end

end A017412.P12316846825355667798

/-! ## A017412.P16976056151848962980

`A017402(n)^6`
-/

namespace A017412.P16976056151848962980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017402 n ^ 6

end

end A017412.P16976056151848962980

/-! ## A017412.P11372109326970322022

`sqrt(A017408(n)^3)`
-/

namespace A017412.P11372109326970322022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017408 n ^ 3 : ℝ)

end

end A017412.P11372109326970322022

/-!
# A017413: a(n) = 11*n + 2.

The programs for A017413, the canonical program `A017413.P11529384767991400928` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017413 has offset 0).

The definition of A017413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*n+2` (program `A017413.P11529384767991400928`, by `A017413.P11529384767991400928.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017413.P11529384767991400928

`11*n+2`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017413

/-- `11*n+2` -/
def P11529384767991400928.Spec : Prop :=
  ∀ n, (P11529384767991400928.a n : ℤ) = A017413 n

theorem P11529384767991400928.correct : P11529384767991400928.Spec := by
  intro n
  simp only [A017413]

end A017413

/-!
# A017414: a(n) = (11*n + 2)^2.

The programs for A017414, the canonical program `A017414.P15246053875314055855` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017414 has offset 0).

The definition of A017414 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+2)²` (program `A017414.P15246053875314055855`, by `A017414.P15246053875314055855.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017414.P15246053875314055855

`(11*n+2)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017414

/-- `(11*n+2)²` -/
def P15246053875314055855.Spec : Prop :=
  ∀ n, (P15246053875314055855.a n : ℤ) = A017414 n

theorem P15246053875314055855.correct : P15246053875314055855.Spec := by
  intro n
  simp only [A017414]

end A017414

/-! ## A017414.P12208759120689194810

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=4, a(1)=169, a(2)=576`
-/

namespace A017414.P12208759120689194810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 169, 576] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017414.P12208759120689194810

namespace A017414

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P12208759120689194810.Spec : Prop :=
  ∀ n, P12208759120689194810.a n = A017414 n

theorem P12208759120689194810.correct : P12208759120689194810.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017414, Nat.add_sub_cancel, A017414.P12208759120689194810.a, A017414.P15246053875314055855.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017414, Nat.add_sub_cancel, A017414.P12208759120689194810.a, A017414.P15246053875314055855.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017414

/-! ## A017414.P5318649555923690807

`sqrt(A017416(n))`
-/

namespace A017414.P5318649555923690807
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017416 n : ℝ)

end

end A017414.P5318649555923690807

namespace A017414

/-- `sqrt(A017416(n))` -/
def P5318649555923690807.Spec : Prop :=
  ∀ n, P5318649555923690807.a n = (A017414 n : ℝ)

end A017414

/-! ## A017414.P9580607942932175462

`sqrt(sqrt(A017420(n)))`
-/

namespace A017414.P9580607942932175462
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017420 n : ℝ))

end

end A017414.P9580607942932175462

namespace A017414

/-- `sqrt(sqrt(A017420(n)))` -/
def P9580607942932175462.Spec : Prop :=
  ∀ n, P9580607942932175462.a n = (A017414 n : ℝ)

end A017414

/-! ## A017414.P7950637558233704830

`Δ[A180223(n)]^2`
-/

namespace A017414.P7950637558233704830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A017414.P7950637558233704830

namespace A017414

/-- `Δ[A180223(n)]^2` -/
def P7950637558233704830.Spec : Prop :=
  ∀ n, P7950637558233704830.a n = A017414 n

end A017414

/-! ## A017414.P4881261688562979799

`A017418(n)^(1/3)`
-/

namespace A017414.P4881261688562979799
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017418 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017414.P4881261688562979799

namespace A017414

/-- `A017418(n)^(1/3)` -/
def P4881261688562979799.Spec : Prop :=
  ∀ n, P4881261688562979799.a n = (A017414 n : ℝ)

end A017414

/-! ## A017414.P6398459741381526488

`A017415(n)^(2/3)`
-/

namespace A017414.P6398459741381526488
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017415 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017414.P6398459741381526488

namespace A017414

/-- `A017415(n)^(2/3)` -/
def P6398459741381526488.Spec : Prop :=
  ∀ n, P6398459741381526488.a n = (A017414 n : ℝ)

end A017414

/-! ## A017414.P1958500696364837534

`A017413(n)*A017413(n)`
-/

namespace A017414.P1958500696364837534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n * A017413 n

end

end A017414.P1958500696364837534

namespace A017414

/-- `A017413(n)*A017413(n)` -/
def P1958500696364837534.Spec : Prop :=
  ∀ n, P1958500696364837534.a n = A017414 n

theorem P1958500696364837534.correct : P1958500696364837534.Spec := by
  intro n
  simp only [A017414, Nat.add_sub_cancel, A017414.P1958500696364837534.a, A017414.P15246053875314055855.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017414

/-! ## A017414.P6631198356279387511

`A017415(n)/A017413(n)`
-/

namespace A017414.P6631198356279387511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017415 n : ℚ) / (A017413 n : ℚ)

end

end A017414.P6631198356279387511

namespace A017414

/-- `A017415(n)/A017413(n)` -/
def P6631198356279387511.Spec : Prop :=
  ∀ n, P6631198356279387511.a n = (A017414 n : ℚ)

end A017414

/-! ## A017414.P14378444032186524751

`A017417(n)/A017415(n)`
-/

namespace A017414.P14378444032186524751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017417 n : ℚ) / (A017415 n : ℚ)

end

end A017414.P14378444032186524751

namespace A017414

/-- `A017417(n)/A017415(n)` -/
def P14378444032186524751.Spec : Prop :=
  ∀ n, P14378444032186524751.a n = (A017414 n : ℚ)

end A017414

/-! ## A017414.P179983289843805251

`A017418(n)/A017416(n)`
-/

namespace A017414.P179983289843805251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017418 n : ℚ) / (A017416 n : ℚ)

end

end A017414.P179983289843805251

namespace A017414

/-- `A017418(n)/A017416(n)` -/
def P179983289843805251.Spec : Prop :=
  ∀ n, P179983289843805251.a n = (A017414 n : ℚ)

end A017414

/-! ## A017414.P4860022384433451270

`A017415(n)²/A017416(n)`
-/

namespace A017414.P4860022384433451270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017415 n ^ 2 : ℚ) / (A017416 n : ℚ)

end

end A017414.P4860022384433451270

namespace A017414

/-- `A017415(n)²/A017416(n)` -/
def P4860022384433451270.Spec : Prop :=
  ∀ n, P4860022384433451270.a n = (A017414 n : ℚ)

end A017414

/-! ## A017414.P6876419402087232158

`A017413(n)²%A017474(n)`
-/

namespace A017414.P6876419402087232158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017413 n ^ 2) (A017474 n)

end

end A017414.P6876419402087232158

namespace A017414

/-- `A017413(n)²%A017474(n)` -/
def P6876419402087232158.Spec : Prop :=
  ∀ n, P6876419402087232158.a n = A017414 n

end A017414

/-! ## A017414.P4582654010306933561

`A157440(n+1)+A016921(n)`
-/

namespace A017414.P4582654010306933561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157440 (n + 1) + A016921 n

end

end A017414.P4582654010306933561

namespace A017414

/-- `A157440(n+1)+A016921(n)` -/
def P4582654010306933561.Spec : Prop :=
  ∀ n, P4582654010306933561.a n = A017414 n

theorem P4582654010306933561.correct : P4582654010306933561.Spec := by
  intro n
  simp only [A017414, Nat.add_sub_cancel, A017414.P4582654010306933561.a, A017414.P15246053875314055855.a, A016921, A016921.P18318603358862595186.a, A157440, A157440.P7578082168919146828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017414

/-! ## A017414.P5184752999740212111

`A017401(n)*A017425(n)+1`
-/

namespace A017414.P5184752999740212111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n * A017425 n + 1

end

end A017414.P5184752999740212111

namespace A017414

/-- `A017401(n)*A017425(n)+1` -/
def P5184752999740212111.Spec : Prop :=
  ∀ n, P5184752999740212111.a n = A017414 n

theorem P5184752999740212111.correct : P5184752999740212111.Spec := by
  intro n
  simp only [A017414, Nat.add_sub_cancel, A017414.P5184752999740212111.a, A017414.P15246053875314055855.a, A017401, A017401.P13777489390994228607.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017414

/-! ## A017414.P1169863492133224399

`A017418(n)/A017413(n)²²`
-/

namespace A017414.P1169863492133224399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017418 n : ℚ) / ((A017413 n ^ 2) ^ 2 : ℚ)

end

end A017414.P1169863492133224399

namespace A017414

/-- `A017418(n)/A017413(n)²²` -/
def P1169863492133224399.Spec : Prop :=
  ∀ n, P1169863492133224399.a n = (A017414 n : ℚ)

end A017414

/-! ## A017414.P6335818874412128366

`A017437(n)+A008593(n)*A017425(n)`
-/

namespace A017414.P6335818874412128366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n + A008593 n * A017425 n

end

end A017414.P6335818874412128366

namespace A017414

/-- `A017437(n)+A008593(n)*A017425(n)` -/
def P6335818874412128366.Spec : Prop :=
  ∀ n, P6335818874412128366.a n = A017414 n

theorem P6335818874412128366.correct : P6335818874412128366.Spec := by
  intro n
  simp only [A017414, Nat.add_sub_cancel, A017414.P6335818874412128366.a, A017414.P15246053875314055855.a, A008593, A008593.P2680892499938115192.a, A017425, A017425.P2855568862637286375.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017414

/-! ## A017414.P6305490560832001121

`A017401(n)*A017437(n)-A008593(n)`
-/

namespace A017414.P6305490560832001121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n * A017437 n - A008593 n

end

end A017414.P6305490560832001121

namespace A017414

/-- `A017401(n)*A017437(n)-A008593(n)` -/
def P6305490560832001121.Spec : Prop :=
  ∀ n, P6305490560832001121.a n = A017414 n

theorem P6305490560832001121.correct : P6305490560832001121.Spec := by
  intro n
  simp only [A017414, Nat.add_sub_cancel, A017414.P6305490560832001121.a, A017414.P15246053875314055855.a, A008593, A008593.P2680892499938115192.a, A017401, A017401.P13777489390994228607.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017414

/-! ## A017414.P701752200891088482

`A017417(n)/A017420(n)*A017417(n)`
-/

namespace A017414.P701752200891088482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017417 n : ℚ) / (A017420 n : ℚ) * (A017417 n : ℚ)

end

end A017414.P701752200891088482

namespace A017414

/-- `A017417(n)/A017420(n)*A017417(n)` -/
def P701752200891088482.Spec : Prop :=
  ∀ n, P701752200891088482.a n = (A017414 n : ℚ)

end A017414

/-! ## A017414.P6176160003071352204

`A152997(n+1)²/(n+1)²`
-/

namespace A017414.P6176160003071352204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152997 (n + 1) ^ 2 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A017414.P6176160003071352204

namespace A017414

/-- `A152997(n+1)²/(n+1)²` -/
def P6176160003071352204.Spec : Prop :=
  ∀ n, P6176160003071352204.a n = (A017414 n : ℚ)

theorem P6176160003071352204.correct : P6176160003071352204.Spec := by
  intro n
  simp only [A017414, Nat.add_sub_cancel, A017414.P6176160003071352204.a, A017414.P15246053875314055855.a, A152997, A152997.P11215865166906993200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017414

/-!
# A017415: a(n) = (11*n + 2)^3.

The programs for A017415, the canonical program `A017415.P9330836573434406207` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017415 has offset 0).

The definition of A017415 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+2)^3` (program `A017415.P9330836573434406207`, by `A017415.P9330836573434406207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017415.P9330836573434406207

`(11*n+2)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017415

/-- `(11*n+2)^3` -/
def P9330836573434406207.Spec : Prop :=
  ∀ n, (P9330836573434406207.a n : ℤ) = A017415 n

theorem P9330836573434406207.correct : P9330836573434406207.Spec := by
  intro n
  simp only [A017415]

end A017415

/-! ## A017415.P14433021584630998780

`abs((or(2, 12*n)-n)^3)`
-/

namespace A017415.P14433021584630998780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.lor 2 (12 * n) : ℤ) - (n : ℤ)) ^ 3|

end

end A017415.P14433021584630998780

namespace A017415

/-- `abs((or(2, 12*n)-n)^3)` -/
def P14433021584630998780.Spec : Prop :=
  ∀ n, P14433021584630998780.a n = A017415 n

end A017415

/-! ## A017415.P8506141174941248980

`abs((xor(2, 12*n)-n)^3)`
-/

namespace A017415.P8506141174941248980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.xor 2 (12 * n) : ℤ) - (n : ℤ)) ^ 3|

end

end A017415.P8506141174941248980

namespace A017415

/-- `abs((xor(2, 12*n)-n)^3)` -/
def P8506141174941248980.Spec : Prop :=
  ∀ n, P8506141174941248980.a n = A017415 n

end A017415

/-! ## A017415.P7706155635983588734

`(lcm(11, 11*n)+2)*(lcm(11, 11*n)+2)²`
-/

namespace A017415.P7706155635983588734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 11 (11 * n) + 2) * (Nat.lcm 11 (11 * n) + 2) ^ 2

end

end A017415.P7706155635983588734

namespace A017415

/-- `(lcm(11, 11*n)+2)*(lcm(11, 11*n)+2)²` -/
def P7706155635983588734.Spec : Prop :=
  ∀ n, (P7706155635983588734.a n : ℤ) = A017415 n

theorem P7706155635983588734.correct : P7706155635983588734.Spec := by
  intro n
  simp only [A017415, Nat.add_sub_cancel, A017415.P7706155635983588734.a, A017415.P9330836573434406207.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017415

/-! ## A017415.P2737949788597822927

`(or(2, 12*n)-n)*(or(2, 12*n)-n)²`
-/

namespace A017415.P2737949788597822927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 (12 * n) : ℤ) - (n : ℤ)) * ((Nat.lor 2 (12 * n) : ℤ) - (n : ℤ)) ^ 2

end

end A017415.P2737949788597822927

namespace A017415

/-- `(or(2, 12*n)-n)*(or(2, 12*n)-n)²` -/
def P2737949788597822927.Spec : Prop :=
  ∀ n, P2737949788597822927.a n = A017415 n

end A017415

/-! ## A017415.P13926304719747749491

`(xor(2, 12*n)-n)*(xor(2, 12*n)-n)²`
-/

namespace A017415.P13926304719747749491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 2 (12 * n) : ℤ) - (n : ℤ)) * ((Nat.xor 2 (12 * n) : ℤ) - (n : ℤ)) ^ 2

end

end A017415.P13926304719747749491

namespace A017415

/-- `(xor(2, 12*n)-n)*(xor(2, 12*n)-n)²` -/
def P13926304719747749491.Spec : Prop :=
  ∀ n, P13926304719747749491.a n = A017415 n

end A017415

/-! ## A017415.P18401492345583813008

`sqrt(A017418(n))`
-/

namespace A017415.P18401492345583813008
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017418 n : ℝ)

end

end A017415.P18401492345583813008

namespace A017415

/-- `sqrt(A017418(n))` -/
def P18401492345583813008.Spec : Prop :=
  ∀ n, P18401492345583813008.a n = (A017415 n : ℝ)

end A017415

/-! ## A017415.P9094638085728309801

`sqrt(A017414(n)^3)`
-/

namespace A017415.P9094638085728309801
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017414 n ^ 3 : ℝ)

end

end A017415.P9094638085728309801

namespace A017415

/-- `sqrt(A017414(n)^3)` -/
def P9094638085728309801.Spec : Prop :=
  ∀ n, P9094638085728309801.a n = (A017415 n : ℝ)

end A017415

/-! ## A017415.P2189858732991794563

`A017413(n)*A017414(n)`
-/

namespace A017415.P2189858732991794563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n * A017414 n

end

end A017415.P2189858732991794563

namespace A017415

/-- `A017413(n)*A017414(n)` -/
def P2189858732991794563.Spec : Prop :=
  ∀ n, P2189858732991794563.a n = A017415 n

theorem P2189858732991794563.correct : P2189858732991794563.Spec := by
  intro n
  simp only [A017415, Nat.add_sub_cancel, A017415.P2189858732991794563.a, A017415.P9330836573434406207.a, A017413, A017413.P11529384767991400928.a, A017414, A017414.P15246053875314055855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017415

/-! ## A017415.P9593569576214640954

`A017416(n)/A017413(n)`
-/

namespace A017415.P9593569576214640954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017416 n : ℚ) / (A017413 n : ℚ)

end

end A017415.P9593569576214640954

namespace A017415

/-- `A017416(n)/A017413(n)` -/
def P9593569576214640954.Spec : Prop :=
  ∀ n, P9593569576214640954.a n = (A017415 n : ℚ)

end A017415

/-! ## A017415.P11421076177619065953

`A017417(n)/A017414(n)`
-/

namespace A017415.P11421076177619065953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017417 n : ℚ) / (A017414 n : ℚ)

end

end A017415.P11421076177619065953

namespace A017415

/-- `A017417(n)/A017414(n)` -/
def P11421076177619065953.Spec : Prop :=
  ∀ n, P11421076177619065953.a n = (A017415 n : ℚ)

end A017415

/-! ## A017415.P10703374799551654509

`A017420(n)/A017417(n)`
-/

namespace A017415.P10703374799551654509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017420 n : ℚ) / (A017417 n : ℚ)

end

end A017415.P10703374799551654509

namespace A017415

/-- `A017420(n)/A017417(n)` -/
def P10703374799551654509.Spec : Prop :=
  ∀ n, P10703374799551654509.a n = (A017415 n : ℚ)

end A017415

/-! ## A017415.P6019042035454144330

`A017421(n)/A017418(n)`
-/

namespace A017415.P6019042035454144330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017421 n : ℚ) / (A017418 n : ℚ)

end

end A017415.P6019042035454144330

namespace A017415

/-- `A017421(n)/A017418(n)` -/
def P6019042035454144330.Spec : Prop :=
  ∀ n, P6019042035454144330.a n = (A017415 n : ℚ)

end A017415

/-! ## A017415.P8498421711035243195

`A017417(n)/A017413(n)²`
-/

namespace A017415.P8498421711035243195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017417 n : ℚ) / (A017413 n ^ 2 : ℚ)

end

end A017415.P8498421711035243195

namespace A017415

/-- `A017417(n)/A017413(n)²` -/
def P8498421711035243195.Spec : Prop :=
  ∀ n, P8498421711035243195.a n = (A017415 n : ℚ)

end A017415

/-! ## A017415.P15614266225471298716

`A017417(n)/(A017401(n)+1)²`
-/

namespace A017415.P15614266225471298716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017417 n : ℚ) / ((A017401 n + 1) ^ 2 : ℚ)

end

end A017415.P15614266225471298716

namespace A017415

/-- `A017417(n)/(A017401(n)+1)²` -/
def P15614266225471298716.Spec : Prop :=
  ∀ n, P15614266225471298716.a n = (A017415 n : ℚ)

theorem P15614266225471298716.correct : P15614266225471298716.Spec := by
  intro n
  simp only [A017415, Nat.add_sub_cancel, A017415.P15614266225471298716.a, A017415.P9330836573434406207.a, A017401, A017401.P13777489390994228607.a, A017417, A017417.P912847864889481660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017415

/-! ## A017415.P1753624240430758435

`Δ[A180223(n)]²*Δ[A180223(n)]`
-/

namespace A017415.P1753624240430758435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017415.P1753624240430758435

namespace A017415

/-- `Δ[A180223(n)]²*Δ[A180223(n)]` -/
def P1753624240430758435.Spec : Prop :=
  ∀ n, P1753624240430758435.a n = A017415 n

end A017415

/-! ## A017415.P10286585115939045651

`A017418(n)/(A017413(n)²*A017413(n))`
-/

namespace A017415.P10286585115939045651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017418 n : ℚ) / (A017413 n ^ 2 * A017413 n : ℚ)

end

end A017415.P10286585115939045651

namespace A017415

/-- `A017418(n)/(A017413(n)²*A017413(n))` -/
def P10286585115939045651.Spec : Prop :=
  ∀ n, P10286585115939045651.a n = (A017415 n : ℚ)

end A017415

/-! ## A017415.P3659297486408660493

`record[(n+2)^(gcd(11, n)-8)]`
-/

namespace A017415.P3659297486408660493
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ ((Nat.gcd 11 n : ℤ) - 8 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017415.P3659297486408660493

namespace A017415

/-- `record[(n+2)^(gcd(11, n)-8)]` -/
def P3659297486408660493.Spec : Prop :=
  ∀ n, P3659297486408660493.a n = (A017415 n : ℚ)

end A017415

/-! ## A017415.P18116313687102150136

`A017439(2*n)/8`
-/

namespace A017415.P18116313687102150136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017439 (2 * n) : ℚ) / 8

end

end A017415.P18116313687102150136

namespace A017415

/-- `A017439(2*n)/8` -/
def P18116313687102150136.Spec : Prop :=
  ∀ n, P18116313687102150136.a n = (A017415 n : ℚ)

theorem P18116313687102150136.correct : P18116313687102150136.Spec := by
  intro n
  simp only [A017415, Nat.add_sub_cancel, A017415.P18116313687102150136.a, A017415.P9330836573434406207.a, A017439, A017439.P9110168289680559285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017415

/-! ## A017415.P7664798559513034119

`A168465(2*n+1)²*A168465(2*n+1)`
-/

namespace A017415.P7664798559513034119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168465 (2 * n + 1) ^ 2 * A168465 (2 * n + 1)

end

end A017415.P7664798559513034119

namespace A017415

/-- `A168465(2*n+1)²*A168465(2*n+1)` -/
def P7664798559513034119.Spec : Prop :=
  ∀ n, P7664798559513034119.a n = A017415 n

end A017415

/-!
# A017416: a(n) = (11*n + 2)^4.

The programs for A017416, the canonical program `A017416.P15540303599325335403` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017416 has offset 0).

The definition of A017416 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+2)^4` (program `A017416.P15540303599325335403`, by `A017416.P15540303599325335403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017416.P15540303599325335403

`(11*n+2)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017416

/-- `(11*n+2)^4` -/
def P15540303599325335403.Spec : Prop :=
  ∀ n, (P15540303599325335403.a n : ℤ) = A017416 n

theorem P15540303599325335403.correct : P15540303599325335403.Spec := by
  intro n
  simp only [A017416]

end A017416

/-! ## A017416.P17248172603551466065

`(lcm(11, 11*n)+2)²²`
-/

namespace A017416.P17248172603551466065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 11 (11 * n) + 2) ^ 2) ^ 2

end

end A017416.P17248172603551466065

namespace A017416

/-- `(lcm(11, 11*n)+2)²²` -/
def P17248172603551466065.Spec : Prop :=
  ∀ n, (P17248172603551466065.a n : ℤ) = A017416 n

theorem P17248172603551466065.correct : P17248172603551466065.Spec := by
  intro n
  simp only [A017416, Nat.add_sub_cancel, A017416.P17248172603551466065.a, A017416.P15540303599325335403.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017416

/-! ## A017416.P10424602574923793695

`(or(2, 12*n)-n)²²`
-/

namespace A017416.P10424602574923793695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.lor 2 (12 * n) : ℤ) - (n : ℤ)) ^ 2) ^ 2

end

end A017416.P10424602574923793695

namespace A017416

/-- `(or(2, 12*n)-n)²²` -/
def P10424602574923793695.Spec : Prop :=
  ∀ n, P10424602574923793695.a n = A017416 n

end A017416

/-! ## A017416.P14436003474680975373

`(xor(2, 12*n)-n)²²`
-/

namespace A017416.P14436003474680975373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.xor 2 (12 * n) : ℤ) - (n : ℤ)) ^ 2) ^ 2

end

end A017416.P14436003474680975373

namespace A017416

/-- `(xor(2, 12*n)-n)²²` -/
def P14436003474680975373.Spec : Prop :=
  ∀ n, P14436003474680975373.a n = A017416 n

end A017416

/-! ## A017416.P15152481439774106452

`A017414(n)²`
-/

namespace A017416.P15152481439774106452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017414 n ^ 2

end

end A017416.P15152481439774106452

namespace A017416

/-- `A017414(n)²` -/
def P15152481439774106452.Spec : Prop :=
  ∀ n, P15152481439774106452.a n = A017416 n

theorem P15152481439774106452.correct : P15152481439774106452.Spec := by
  intro n
  simp only [A017416, Nat.add_sub_cancel, A017416.P15152481439774106452.a, A017416.P15540303599325335403.a, A017414, A017414.P15246053875314055855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017416

/-! ## A017416.P16813034133808900602

`sqrt(A017420(n))`
-/

namespace A017416.P16813034133808900602
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017420 n : ℝ)

end

end A017416.P16813034133808900602

namespace A017416

/-- `sqrt(A017420(n))` -/
def P16813034133808900602.Spec : Prop :=
  ∀ n, P16813034133808900602.a n = (A017416 n : ℝ)

end A017416

/-! ## A017416.P16356123682979544618

`A017413(n)²²`
-/

namespace A017416.P16356123682979544618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017413 n ^ 2) ^ 2

end

end A017416.P16356123682979544618

namespace A017416

/-- `A017413(n)²²` -/
def P16356123682979544618.Spec : Prop :=
  ∀ n, P16356123682979544618.a n = A017416 n

theorem P16356123682979544618.correct : P16356123682979544618.Spec := by
  intro n
  simp only [A017416, Nat.add_sub_cancel, A017416.P16356123682979544618.a, A017416.P15540303599325335403.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017416

/-! ## A017416.P884177675899185114

`Δ[A180223(n)]²²`
-/

namespace A017416.P884177675899185114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017416.P884177675899185114

namespace A017416

/-- `Δ[A180223(n)]²²` -/
def P884177675899185114.Spec : Prop :=
  ∀ n, P884177675899185114.a n = A017416 n

end A017416

/-! ## A017416.P3722627496441198276

`(A017401(n)+1)²²`
-/

namespace A017416.P3722627496441198276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017401 n + 1) ^ 2) ^ 2

end

end A017416.P3722627496441198276

namespace A017416

/-- `(A017401(n)+1)²²` -/
def P3722627496441198276.Spec : Prop :=
  ∀ n, P3722627496441198276.a n = A017416 n

theorem P3722627496441198276.correct : P3722627496441198276.Spec := by
  intro n
  simp only [A017416, Nat.add_sub_cancel, A017416.P3722627496441198276.a, A017416.P15540303599325335403.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017416

/-! ## A017416.P14222813601655890705

`(A008593(n)+2)²²`
-/

namespace A017416.P14222813601655890705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008593 n + 2) ^ 2) ^ 2

end

end A017416.P14222813601655890705

namespace A017416

/-- `(A008593(n)+2)²²` -/
def P14222813601655890705.Spec : Prop :=
  ∀ n, P14222813601655890705.a n = A017416 n

theorem P14222813601655890705.correct : P14222813601655890705.Spec := by
  intro n
  simp only [A017416, Nat.add_sub_cancel, A017416.P14222813601655890705.a, A017416.P15540303599325335403.a, A008593, A008593.P2680892499938115192.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017416

/-! ## A017416.P13945088648129723772

`(1-A017425(n))²²`
-/

namespace A017416.P13945088648129723772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017425 n) ^ 2) ^ 2

end

end A017416.P13945088648129723772

namespace A017416

/-- `(1-A017425(n))²²` -/
def P13945088648129723772.Spec : Prop :=
  ∀ n, P13945088648129723772.a n = A017416 n

theorem P13945088648129723772.correct : P13945088648129723772.Spec := by
  intro n
  simp only [A017416, Nat.add_sub_cancel, A017416.P13945088648129723772.a, A017416.P15540303599325335403.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017416

/-! ## A017416.P798051006116575468

`(2-A017437(n))²²`
-/

namespace A017416.P798051006116575468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017437 n) ^ 2) ^ 2

end

end A017416.P798051006116575468

namespace A017416

/-- `(2-A017437(n))²²` -/
def P798051006116575468.Spec : Prop :=
  ∀ n, P798051006116575468.a n = A017416 n

theorem P798051006116575468.correct : P798051006116575468.Spec := by
  intro n
  simp only [A017416, Nat.add_sub_cancel, A017416.P798051006116575468.a, A017416.P15540303599325335403.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017416

/-! ## A017416.P13228485659384891767

`(3-A017449(n))²²`
-/

namespace A017416.P13228485659384891767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017449 n) ^ 2) ^ 2

end

end A017416.P13228485659384891767

namespace A017416

/-- `(3-A017449(n))²²` -/
def P13228485659384891767.Spec : Prop :=
  ∀ n, P13228485659384891767.a n = A017416 n

theorem P13228485659384891767.correct : P13228485659384891767.Spec := by
  intro n
  simp only [A017416, Nat.add_sub_cancel, A017416.P13228485659384891767.a, A017416.P15540303599325335403.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017416

/-! ## A017416.P1810602107435409623

`(A017293(n)+n)²²`
-/

namespace A017416.P1810602107435409623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017293 n + (n : ℤ)) ^ 2) ^ 2

end

end A017416.P1810602107435409623

namespace A017416

/-- `(A017293(n)+n)²²` -/
def P1810602107435409623.Spec : Prop :=
  ∀ n, P1810602107435409623.a n = A017416 n

theorem P1810602107435409623.correct : P1810602107435409623.Spec := by
  intro n
  simp only [A017416, Nat.add_sub_cancel, A017416.P1810602107435409623.a, A017416.P15540303599325335403.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017416

/-! ## A017416.P18291276305430337097

`(n-A017545(n))²²`
-/

namespace A017416.P18291276305430337097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017545 n) ^ 2) ^ 2

end

end A017416.P18291276305430337097

namespace A017416

/-- `(n-A017545(n))²²` -/
def P18291276305430337097.Spec : Prop :=
  ∀ n, P18291276305430337097.a n = A017416 n

theorem P18291276305430337097.correct : P18291276305430337097.Spec := by
  intro n
  simp only [A017416, Nat.add_sub_cancel, A017416.P18291276305430337097.a, A017416.P15540303599325335403.a, A017545, A017545.P14965093399951293214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017416

/-! ## A017416.P10694928370534375698

`(sqrt(A017402(n))+1)²²`
-/

namespace A017416.P10694928370534375698
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017402 n : ℝ) + 1) ^ 2) ^ 2

end

end A017416.P10694928370534375698

namespace A017416

/-- `(sqrt(A017402(n))+1)²²` -/
def P10694928370534375698.Spec : Prop :=
  ∀ n, P10694928370534375698.a n = (A017416 n : ℝ)

end A017416

/-! ## A017416.P1267657730622875567

`(sqrt(A017390(n))+2)²²`
-/

namespace A017416.P1267657730622875567
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017390 n : ℝ) + 2) ^ 2) ^ 2

end

end A017416.P1267657730622875567

namespace A017416

/-- `(sqrt(A017390(n))+2)²²` -/
def P1267657730622875567.Spec : Prop :=
  ∀ n, P1267657730622875567.a n = (A017416 n : ℝ)

end A017416

/-! ## A017416.P4564553488557143562

`(1-sqrt(A017426(n)))²²`
-/

namespace A017416.P4564553488557143562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017426 n : ℝ)) ^ 2) ^ 2

end

end A017416.P4564553488557143562

namespace A017416

/-- `(1-sqrt(A017426(n)))²²` -/
def P4564553488557143562.Spec : Prop :=
  ∀ n, P4564553488557143562.a n = (A017416 n : ℝ)

end A017416

/-! ## A017416.P18169129367953511723

`(2-sqrt(A017438(n)))²²`
-/

namespace A017416.P18169129367953511723
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - Real.sqrt (A017438 n : ℝ)) ^ 2) ^ 2

end

end A017416.P18169129367953511723

namespace A017416

/-- `(2-sqrt(A017438(n)))²²` -/
def P18169129367953511723.Spec : Prop :=
  ∀ n, P18169129367953511723.a n = (A017416 n : ℝ)

end A017416

/-! ## A017416.P9708165992692549304

`(sqrt(A017294(n))+n)²²`
-/

namespace A017416.P9708165992692549304
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017294 n : ℝ) + (n : ℝ)) ^ 2) ^ 2

end

end A017416.P9708165992692549304

namespace A017416

/-- `(sqrt(A017294(n))+n)²²` -/
def P9708165992692549304.Spec : Prop :=
  ∀ n, P9708165992692549304.a n = (A017416 n : ℝ)

end A017416

/-!
# A017417: a(n) = (11*n + 2)^5.

The programs for A017417, the canonical program `A017417.P912847864889481660` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017417 has offset 0).

The definition of A017417 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+2)^5` (program `A017417.P912847864889481660`, by `A017417.P912847864889481660.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017417.P912847864889481660

`(11*n+2)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017417

/-- `(11*n+2)^5` -/
def P912847864889481660.Spec : Prop :=
  ∀ n, (P912847864889481660.a n : ℤ) = A017417 n

theorem P912847864889481660.correct : P912847864889481660.Spec := by
  intro n
  simp only [A017417]

end A017417

/-! ## A017417.P5317549369174946074

`abs((or(2, 12*n)-n)^5)`
-/

namespace A017417.P5317549369174946074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.lor 2 (12 * n) : ℤ) - (n : ℤ)) ^ 5|

end

end A017417.P5317549369174946074

namespace A017417

/-- `abs((or(2, 12*n)-n)^5)` -/
def P5317549369174946074.Spec : Prop :=
  ∀ n, P5317549369174946074.a n = A017417 n

end A017417

/-! ## A017417.P13218602117191480403

`abs((xor(2, 12*n)-n)^5)`
-/

namespace A017417.P13218602117191480403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.xor 2 (12 * n) : ℤ) - (n : ℤ)) ^ 5|

end

end A017417.P13218602117191480403

namespace A017417

/-- `abs((xor(2, 12*n)-n)^5)` -/
def P13218602117191480403.Spec : Prop :=
  ∀ n, P13218602117191480403.a n = A017417 n

end A017417

/-! ## A017417.P9236952528290141008

`(xor(2, 12*n)-n)*(xor(2, 12*n)-n)^4`
-/

namespace A017417.P9236952528290141008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 2 (12 * n) : ℤ) - (n : ℤ)) * ((Nat.xor 2 (12 * n) : ℤ) - (n : ℤ)) ^ 4

end

end A017417.P9236952528290141008

namespace A017417

/-- `(xor(2, 12*n)-n)*(xor(2, 12*n)-n)^4` -/
def P9236952528290141008.Spec : Prop :=
  ∀ n, P9236952528290141008.a n = A017417 n

end A017417

/-! ## A017417.P2180834920390419602

`(xor(2, 12*n)-n)*(xor(2, 12*n)-n)²²`
-/

namespace A017417.P2180834920390419602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 2 (12 * n) : ℤ) - (n : ℤ)) * (((Nat.xor 2 (12 * n) : ℤ) - (n : ℤ)) ^ 2) ^ 2

end

end A017417.P2180834920390419602

namespace A017417

/-- `(xor(2, 12*n)-n)*(xor(2, 12*n)-n)²²` -/
def P2180834920390419602.Spec : Prop :=
  ∀ n, P2180834920390419602.a n = A017417 n

end A017417

/-! ## A017417.P2919738608621381942

`(A017413(n)^(5/2))²`
-/

namespace A017417.P2919738608621381942
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A017413 n : ℝ) ^ ((5 : ℚ) / 2 : ℝ)) ^ 2

end

end A017417.P2919738608621381942

namespace A017417

/-- `(A017413(n)^(5/2))²` -/
def P2919738608621381942.Spec : Prop :=
  ∀ n, P2919738608621381942.a n = (A017417 n : ℝ)

end A017417

/-! ## A017417.P6645540129458458954

`A017413(n)*A017416(n)`
-/

namespace A017417.P6645540129458458954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n * A017416 n

end

end A017417.P6645540129458458954

namespace A017417

/-- `A017413(n)*A017416(n)` -/
def P6645540129458458954.Spec : Prop :=
  ∀ n, P6645540129458458954.a n = A017417 n

theorem P6645540129458458954.correct : P6645540129458458954.Spec := by
  intro n
  simp only [A017417, Nat.add_sub_cancel, A017417.P6645540129458458954.a, A017417.P912847864889481660.a, A017413, A017413.P11529384767991400928.a, A017416, A017416.P15540303599325335403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017417

/-! ## A017417.P9348149488230466601

`A017414(n)*A017415(n)`
-/

namespace A017417.P9348149488230466601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017414 n * A017415 n

end

end A017417.P9348149488230466601

namespace A017417

/-- `A017414(n)*A017415(n)` -/
def P9348149488230466601.Spec : Prop :=
  ∀ n, P9348149488230466601.a n = A017417 n

theorem P9348149488230466601.correct : P9348149488230466601.Spec := by
  intro n
  simp only [A017417, Nat.add_sub_cancel, A017417.P9348149488230466601.a, A017417.P912847864889481660.a, A017414, A017414.P15246053875314055855.a, A017415, A017415.P9330836573434406207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017417

/-! ## A017417.P671282981161296218

`A017418(n)/A017413(n)`
-/

namespace A017417.P671282981161296218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017418 n : ℚ) / (A017413 n : ℚ)

end

end A017417.P671282981161296218

namespace A017417

/-- `A017418(n)/A017413(n)` -/
def P671282981161296218.Spec : Prop :=
  ∀ n, P671282981161296218.a n = (A017417 n : ℚ)

end A017417

/-! ## A017417.P15144953057780187511

`A017413(n)²*A017415(n)`
-/

namespace A017417.P15144953057780187511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n ^ 2 * A017415 n

end

end A017417.P15144953057780187511

namespace A017417

/-- `A017413(n)²*A017415(n)` -/
def P15144953057780187511.Spec : Prop :=
  ∀ n, P15144953057780187511.a n = A017417 n

theorem P15144953057780187511.correct : P15144953057780187511.Spec := by
  intro n
  simp only [A017417, Nat.add_sub_cancel, A017417.P15144953057780187511.a, A017417.P912847864889481660.a, A017413, A017413.P11529384767991400928.a, A017415, A017415.P9330836573434406207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017417

/-! ## A017417.P12490298453749061761

`A017414(n)²*A017413(n)`
-/

namespace A017417.P12490298453749061761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017414 n ^ 2 * A017413 n

end

end A017417.P12490298453749061761

namespace A017417

/-- `A017414(n)²*A017413(n)` -/
def P12490298453749061761.Spec : Prop :=
  ∀ n, P12490298453749061761.a n = A017417 n

theorem P12490298453749061761.correct : P12490298453749061761.Spec := by
  intro n
  simp only [A017417, Nat.add_sub_cancel, A017417.P12490298453749061761.a, A017417.P912847864889481660.a, A017413, A017413.P11529384767991400928.a, A017414, A017414.P15246053875314055855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017417

/-! ## A017417.P13007254772517714685

`A017416(n)²/A017415(n)`
-/

namespace A017417.P13007254772517714685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017416 n ^ 2 : ℚ) / (A017415 n : ℚ)

end

end A017417.P13007254772517714685

namespace A017417

/-- `A017416(n)²/A017415(n)` -/
def P13007254772517714685.Spec : Prop :=
  ∀ n, P13007254772517714685.a n = (A017417 n : ℚ)

end A017417

/-! ## A017417.P15770769074675494057

`A017418(n)/(A017401(n)+1)`
-/

namespace A017417.P15770769074675494057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017418 n : ℚ) / (A017401 n + 1 : ℚ)

end

end A017417.P15770769074675494057

namespace A017417

/-- `A017418(n)/(A017401(n)+1)` -/
def P15770769074675494057.Spec : Prop :=
  ∀ n, P15770769074675494057.a n = (A017417 n : ℚ)

theorem P15770769074675494057.correct : P15770769074675494057.Spec := by
  intro n
  simp only [A017417, Nat.add_sub_cancel, A017417.P15770769074675494057.a, A017417.P912847864889481660.a, A017401, A017401.P13777489390994228607.a, A017418, A017418.P1042390322104948958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017417

/-! ## A017417.P5231949662997220693

`A017420(n)/(A017413(n)²*A017413(n))`
-/

namespace A017417.P5231949662997220693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017420 n : ℚ) / (A017413 n ^ 2 * A017413 n : ℚ)

end

end A017417.P5231949662997220693

namespace A017417

/-- `A017420(n)/(A017413(n)²*A017413(n))` -/
def P5231949662997220693.Spec : Prop :=
  ∀ n, P5231949662997220693.a n = (A017417 n : ℚ)

end A017417

/-! ## A017417.P865884758737687215

`A017441(2*n)/32`
-/

namespace A017417.P865884758737687215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017441 (2 * n) : ℚ) / 32

end

end A017417.P865884758737687215

namespace A017417

/-- `A017441(2*n)/32` -/
def P865884758737687215.Spec : Prop :=
  ∀ n, P865884758737687215.a n = (A017417 n : ℚ)

theorem P865884758737687215.correct : P865884758737687215.Spec := by
  intro n
  simp only [A017417, Nat.add_sub_cancel, A017417.P865884758737687215.a, A017417.P912847864889481660.a, A017441, A017441.P6612316806926504406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017417

/-! ## A017417.P12112753985223133793

`A143795(2*(n+1))²²*A143795(2*(n+1))`
-/

namespace A017417.P12112753985223133793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143795 (2 * (n + 1)) ^ 2) ^ 2 * A143795 (2 * (n + 1))

end

end A017417.P12112753985223133793

namespace A017417

/-- `A143795(2*(n+1))²²*A143795(2*(n+1))` -/
def P12112753985223133793.Spec : Prop :=
  ∀ n, P12112753985223133793.a n = A017417 n

end A017417

/-! ## A017417.P17638531395027397936

`A168465(2*n+1)²²*A168465(2*n+1)`
-/

namespace A017417.P17638531395027397936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168465 (2 * n + 1) ^ 2) ^ 2 * A168465 (2 * n + 1)

end

end A017417.P17638531395027397936

namespace A017417

/-- `A168465(2*n+1)²²*A168465(2*n+1)` -/
def P17638531395027397936.Spec : Prop :=
  ∀ n, P17638531395027397936.a n = A017417 n

end A017417

/-! ## A017417.P974590803203683190

`A168486(2*n+1)²²*A168486(2*n+1)`
-/

namespace A017417.P974590803203683190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168486 (2 * n + 1) ^ 2) ^ 2 * A168486 (2 * n + 1)

end

end A017417.P974590803203683190

namespace A017417

/-- `A168486(2*n+1)²²*A168486(2*n+1)` -/
def P974590803203683190.Spec : Prop :=
  ∀ n, P974590803203683190.a n = A017417 n

end A017417

/-! ## A017417.P1100099270170805701

`A000584(11*n+2)`
-/

namespace A017417.P1100099270170805701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (11 * n + 2)

end

end A017417.P1100099270170805701

namespace A017417

/-- `A000584(11*n+2)` -/
def P1100099270170805701.Spec : Prop :=
  ∀ n, P1100099270170805701.a n = A017417 n

end A017417

/-!
# A017418: a(n) = (11*n + 2)^6.

The programs for A017418, the canonical program `A017418.P1042390322104948958` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017418 has offset 0).

The definition of A017418 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+2)^6` (program `A017418.P1042390322104948958`, by `A017418.P1042390322104948958.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017418.P1042390322104948958

`(11*n+2)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017418

/-- `(11*n+2)^6` -/
def P1042390322104948958.Spec : Prop :=
  ∀ n, (P1042390322104948958.a n : ℤ) = A017418 n

theorem P1042390322104948958.correct : P1042390322104948958.Spec := by
  intro n
  simp only [A017418]

end A017418

/-! ## A017418.P17892968420773723744

`((or(2, 12*n)-n)^3)²`
-/

namespace A017418.P17892968420773723744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.lor 2 (12 * n) : ℤ) - (n : ℤ)) ^ 3) ^ 2

end

end A017418.P17892968420773723744

namespace A017418

/-- `((or(2, 12*n)-n)^3)²` -/
def P17892968420773723744.Spec : Prop :=
  ∀ n, P17892968420773723744.a n = A017418 n

end A017418

/-! ## A017418.P484727812756308275

`abs((or(2, 12*n)-n)^6)`
-/

namespace A017418.P484727812756308275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.lor 2 (12 * n) : ℤ) - (n : ℤ)) ^ 6|

end

end A017418.P484727812756308275

namespace A017418

/-- `abs((or(2, 12*n)-n)^6)` -/
def P484727812756308275.Spec : Prop :=
  ∀ n, P484727812756308275.a n = A017418 n

end A017418

/-! ## A017418.P18216040563788613042

`((xor(2, 12*n)-n)^3)²`
-/

namespace A017418.P18216040563788613042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.xor 2 (12 * n) : ℤ) - (n : ℤ)) ^ 3) ^ 2

end

end A017418.P18216040563788613042

namespace A017418

/-- `((xor(2, 12*n)-n)^3)²` -/
def P18216040563788613042.Spec : Prop :=
  ∀ n, P18216040563788613042.a n = A017418 n

end A017418

/-! ## A017418.P15111335293056290553

`abs((xor(2, 12*n)-n)^6)`
-/

namespace A017418.P15111335293056290553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.xor 2 (12 * n) : ℤ) - (n : ℤ)) ^ 6|

end

end A017418.P15111335293056290553

namespace A017418

/-- `abs((xor(2, 12*n)-n)^6)` -/
def P15111335293056290553.Spec : Prop :=
  ∀ n, P15111335293056290553.a n = A017418 n

end A017418

/-! ## A017418.P14068042348903041705

`A017415(n)²`
-/

namespace A017418.P14068042348903041705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017415 n ^ 2

end

end A017418.P14068042348903041705

namespace A017418

/-- `A017415(n)²` -/
def P14068042348903041705.Spec : Prop :=
  ∀ n, P14068042348903041705.a n = A017418 n

theorem P14068042348903041705.correct : P14068042348903041705.Spec := by
  intro n
  simp only [A017418, Nat.add_sub_cancel, A017418.P14068042348903041705.a, A017418.P1042390322104948958.a, A017415, A017415.P9330836573434406207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017418

/-! ## A017418.P18032852277577921639

`(A017413(n)^3)²`
-/

namespace A017418.P18032852277577921639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017413 n ^ 3) ^ 2

end

end A017418.P18032852277577921639

namespace A017418

/-- `(A017413(n)^3)²` -/
def P18032852277577921639.Spec : Prop :=
  ∀ n, P18032852277577921639.a n = A017418 n

theorem P18032852277577921639.correct : P18032852277577921639.Spec := by
  intro n
  simp only [A017418, Nat.add_sub_cancel, A017418.P18032852277577921639.a, A017418.P1042390322104948958.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017418

/-! ## A017418.P16246800061592063132

`(Δ[A180223(n)]^3)²`
-/

namespace A017418.P16246800061592063132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017418.P16246800061592063132

namespace A017418

/-- `(Δ[A180223(n)]^3)²` -/
def P16246800061592063132.Spec : Prop :=
  ∀ n, P16246800061592063132.a n = A017418 n

end A017418

/-! ## A017418.P11857700555048594441

`A017413(n)*A017417(n)`
-/

namespace A017418.P11857700555048594441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n * A017417 n

end

end A017418.P11857700555048594441

namespace A017418

/-- `A017413(n)*A017417(n)` -/
def P11857700555048594441.Spec : Prop :=
  ∀ n, P11857700555048594441.a n = A017418 n

theorem P11857700555048594441.correct : P11857700555048594441.Spec := by
  intro n
  simp only [A017418, Nat.add_sub_cancel, A017418.P11857700555048594441.a, A017418.P1042390322104948958.a, A017413, A017413.P11529384767991400928.a, A017417, A017417.P912847864889481660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017418

/-! ## A017418.P10299679246995022591

`A017414(n)*A017416(n)`
-/

namespace A017418.P10299679246995022591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017414 n * A017416 n

end

end A017418.P10299679246995022591

namespace A017418

/-- `A017414(n)*A017416(n)` -/
def P10299679246995022591.Spec : Prop :=
  ∀ n, P10299679246995022591.a n = A017418 n

theorem P10299679246995022591.correct : P10299679246995022591.Spec := by
  intro n
  simp only [A017418, Nat.add_sub_cancel, A017418.P10299679246995022591.a, A017418.P1042390322104948958.a, A017414, A017414.P15246053875314055855.a, A017416, A017416.P15540303599325335403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017418

/-! ## A017418.P11896768917075005631

`(A017413(n)*A017414(n))²`
-/

namespace A017418.P11896768917075005631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017413 n * A017414 n) ^ 2

end

end A017418.P11896768917075005631

namespace A017418

/-- `(A017413(n)*A017414(n))²` -/
def P11896768917075005631.Spec : Prop :=
  ∀ n, P11896768917075005631.a n = A017418 n

theorem P11896768917075005631.correct : P11896768917075005631.Spec := by
  intro n
  simp only [A017418, Nat.add_sub_cancel, A017418.P11896768917075005631.a, A017418.P1042390322104948958.a, A017413, A017413.P11529384767991400928.a, A017414, A017414.P15246053875314055855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017418

/-! ## A017418.P1795697694692790824

`A017413(n)²*A017416(n)`
-/

namespace A017418.P1795697694692790824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n ^ 2 * A017416 n

end

end A017418.P1795697694692790824

namespace A017418

/-- `A017413(n)²*A017416(n)` -/
def P1795697694692790824.Spec : Prop :=
  ∀ n, P1795697694692790824.a n = A017418 n

theorem P1795697694692790824.correct : P1795697694692790824.Spec := by
  intro n
  simp only [A017418, Nat.add_sub_cancel, A017418.P1795697694692790824.a, A017418.P1042390322104948958.a, A017413, A017413.P11529384767991400928.a, A017416, A017416.P15540303599325335403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017418

/-! ## A017418.P12988335623893710500

`(A017417(n)/A017414(n))²`
-/

namespace A017418.P12988335623893710500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017417 n : ℚ) / (A017414 n : ℚ)) ^ 2

end

end A017418.P12988335623893710500

namespace A017418

/-- `(A017417(n)/A017414(n))²` -/
def P12988335623893710500.Spec : Prop :=
  ∀ n, P12988335623893710500.a n = (A017418 n : ℚ)

end A017418

/-! ## A017418.P14706421470957830295

`A017420(n)/A017413(n)²`
-/

namespace A017418.P14706421470957830295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017420 n : ℚ) / (A017413 n ^ 2 : ℚ)

end

end A017418.P14706421470957830295

namespace A017418

/-- `A017420(n)/A017413(n)²` -/
def P14706421470957830295.Spec : Prop :=
  ∀ n, P14706421470957830295.a n = (A017418 n : ℚ)

end A017418

/-! ## A017418.P3223188153978698921

`(A017420(n)/A017417(n))²`
-/

namespace A017418.P3223188153978698921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017420 n : ℚ) / (A017417 n : ℚ)) ^ 2

end

end A017418.P3223188153978698921

namespace A017418

/-- `(A017420(n)/A017417(n))²` -/
def P3223188153978698921.Spec : Prop :=
  ∀ n, P3223188153978698921.a n = (A017418 n : ℚ)

end A017418

/-! ## A017418.P9998027977953048053

`(A017401(n)+1)*A017417(n)`
-/

namespace A017418.P9998027977953048053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017401 n + 1) * A017417 n

end

end A017418.P9998027977953048053

namespace A017418

/-- `(A017401(n)+1)*A017417(n)` -/
def P9998027977953048053.Spec : Prop :=
  ∀ n, P9998027977953048053.a n = A017418 n

theorem P9998027977953048053.correct : P9998027977953048053.Spec := by
  intro n
  simp only [A017418, Nat.add_sub_cancel, A017418.P9998027977953048053.a, A017418.P1042390322104948958.a, A017401, A017401.P13777489390994228607.a, A017417, A017417.P912847864889481660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017418

/-! ## A017418.P367013188376228251

`A017420(n)/(A017401(n)+1)²`
-/

namespace A017418.P367013188376228251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017420 n : ℚ) / ((A017401 n + 1) ^ 2 : ℚ)

end

end A017418.P367013188376228251

namespace A017418

/-- `A017420(n)/(A017401(n)+1)²` -/
def P367013188376228251.Spec : Prop :=
  ∀ n, P367013188376228251.a n = (A017418 n : ℚ)

theorem P367013188376228251.correct : P367013188376228251.Spec := by
  intro n
  simp only [A017418, Nat.add_sub_cancel, A017418.P367013188376228251.a, A017418.P1042390322104948958.a, A017401, A017401.P13777489390994228607.a, A017420, A017420.P7558790448637835170.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017418

/-! ## A017418.P5757181988290318341

`(A143795(2*(n+1))²*A143795(2*(n+1)))²`
-/

namespace A017418.P5757181988290318341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143795 (2 * (n + 1)) ^ 2 * A143795 (2 * (n + 1))) ^ 2

end

end A017418.P5757181988290318341

namespace A017418

/-- `(A143795(2*(n+1))²*A143795(2*(n+1)))²` -/
def P5757181988290318341.Spec : Prop :=
  ∀ n, P5757181988290318341.a n = A017418 n

end A017418

/-! ## A017418.P10791837185271916471

`(A168465(2*n+1)²*A168465(2*n+1))²`
-/

namespace A017418.P10791837185271916471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168465 (2 * n + 1) ^ 2 * A168465 (2 * n + 1)) ^ 2

end

end A017418.P10791837185271916471

namespace A017418

/-- `(A168465(2*n+1)²*A168465(2*n+1))²` -/
def P10791837185271916471.Spec : Prop :=
  ∀ n, P10791837185271916471.a n = A017418 n

end A017418

/-! ## A017418.P663307255152662191

`(A168486(2*n+1)²*A168486(2*n+1))²`
-/

namespace A017418.P663307255152662191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168486 (2 * n + 1) ^ 2 * A168486 (2 * n + 1)) ^ 2

end

end A017418.P663307255152662191

namespace A017418

/-- `(A168486(2*n+1)²*A168486(2*n+1))²` -/
def P663307255152662191.Spec : Prop :=
  ∀ n, P663307255152662191.a n = A017418 n

end A017418

/-!
# A017419: a(n) = (11*n + 2)^7.

The programs for A017419, the canonical program `A017419.P12151812333140594517` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017419 has offset 0).

The definition of A017419 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+2)^7` (program `A017419.P12151812333140594517`, by `A017419.P12151812333140594517.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017419.P12151812333140594517

`(11*n+2)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017419

/-- `(11*n+2)^7` -/
def P12151812333140594517.Spec : Prop :=
  ∀ n, (P12151812333140594517.a n : ℤ) = A017419 n

theorem P12151812333140594517.correct : P12151812333140594517.Spec := by
  intro n
  simp only [A017419]

end A017419

/-! ## A017419.P14843523650458959192

`abs((or(2, 12*n)-n)^7)`
-/

namespace A017419.P14843523650458959192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.lor 2 (12 * n) : ℤ) - (n : ℤ)) ^ 7|

end

end A017419.P14843523650458959192

namespace A017419

/-- `abs((or(2, 12*n)-n)^7)` -/
def P14843523650458959192.Spec : Prop :=
  ∀ n, P14843523650458959192.a n = A017419 n

end A017419

/-! ## A017419.P13373309566653189506

`floor((sqrt(A017390(n))+2)^7)`
-/

namespace A017419.P13373309566653189506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (A017390 n : ℝ) + 2) ^ 7⌋

end

end A017419.P13373309566653189506

namespace A017419

/-- `floor((sqrt(A017390(n))+2)^7)` -/
def P13373309566653189506.Spec : Prop :=
  ∀ n, P13373309566653189506.a n = A017419 n

end A017419

/-! ## A017419.P8629830701180753296

`A017413(n)*A017418(n)`
-/

namespace A017419.P8629830701180753296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n * A017418 n

end

end A017419.P8629830701180753296

namespace A017419

/-- `A017413(n)*A017418(n)` -/
def P8629830701180753296.Spec : Prop :=
  ∀ n, P8629830701180753296.a n = A017419 n

theorem P8629830701180753296.correct : P8629830701180753296.Spec := by
  intro n
  simp only [A017419, Nat.add_sub_cancel, A017419.P8629830701180753296.a, A017419.P12151812333140594517.a, A017413, A017413.P11529384767991400928.a, A017418, A017418.P1042390322104948958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017419

/-! ## A017419.P17440651932997739298

`A017414(n)*A017417(n)`
-/

namespace A017419.P17440651932997739298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017414 n * A017417 n

end

end A017419.P17440651932997739298

namespace A017419

/-- `A017414(n)*A017417(n)` -/
def P17440651932997739298.Spec : Prop :=
  ∀ n, P17440651932997739298.a n = A017419 n

theorem P17440651932997739298.correct : P17440651932997739298.Spec := by
  intro n
  simp only [A017419, Nat.add_sub_cancel, A017419.P17440651932997739298.a, A017419.P12151812333140594517.a, A017414, A017414.P15246053875314055855.a, A017417, A017417.P912847864889481660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017419

/-! ## A017419.P11691935471777891396

`A017415(n)*A017416(n)`
-/

namespace A017419.P11691935471777891396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017415 n * A017416 n

end

end A017419.P11691935471777891396

namespace A017419

/-- `A017415(n)*A017416(n)` -/
def P11691935471777891396.Spec : Prop :=
  ∀ n, P11691935471777891396.a n = A017419 n

theorem P11691935471777891396.correct : P11691935471777891396.Spec := by
  intro n
  simp only [A017419, Nat.add_sub_cancel, A017419.P11691935471777891396.a, A017419.P12151812333140594517.a, A017415, A017415.P9330836573434406207.a, A017416, A017416.P15540303599325335403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017419

/-! ## A017419.P2648518963833782618

`A017420(n)/A017413(n)`
-/

namespace A017419.P2648518963833782618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017420 n : ℚ) / (A017413 n : ℚ)

end

end A017419.P2648518963833782618

namespace A017419

/-- `A017420(n)/A017413(n)` -/
def P2648518963833782618.Spec : Prop :=
  ∀ n, P2648518963833782618.a n = (A017419 n : ℚ)

end A017419

/-! ## A017419.P10010281783611854475

`A017413(n)²*A017417(n)`
-/

namespace A017419.P10010281783611854475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n ^ 2 * A017417 n

end

end A017419.P10010281783611854475

namespace A017419

/-- `A017413(n)²*A017417(n)` -/
def P10010281783611854475.Spec : Prop :=
  ∀ n, P10010281783611854475.a n = A017419 n

theorem P10010281783611854475.correct : P10010281783611854475.Spec := by
  intro n
  simp only [A017419, Nat.add_sub_cancel, A017419.P10010281783611854475.a, A017419.P12151812333140594517.a, A017413, A017413.P11529384767991400928.a, A017417, A017417.P912847864889481660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017419

/-! ## A017419.P376808602800112485

`A017414(n)²*A017415(n)`
-/

namespace A017419.P376808602800112485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017414 n ^ 2 * A017415 n

end

end A017419.P376808602800112485

namespace A017419

/-- `A017414(n)²*A017415(n)` -/
def P376808602800112485.Spec : Prop :=
  ∀ n, P376808602800112485.a n = A017419 n

theorem P376808602800112485.correct : P376808602800112485.Spec := by
  intro n
  simp only [A017419, Nat.add_sub_cancel, A017419.P376808602800112485.a, A017419.P12151812333140594517.a, A017414, A017414.P15246053875314055855.a, A017415, A017415.P9330836573434406207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017419

/-! ## A017419.P3257541001527533897

`A017415(n)²*A017413(n)`
-/

namespace A017419.P3257541001527533897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017415 n ^ 2 * A017413 n

end

end A017419.P3257541001527533897

namespace A017419

/-- `A017415(n)²*A017413(n)` -/
def P3257541001527533897.Spec : Prop :=
  ∀ n, P3257541001527533897.a n = A017419 n

theorem P3257541001527533897.correct : P3257541001527533897.Spec := by
  intro n
  simp only [A017419, Nat.add_sub_cancel, A017419.P3257541001527533897.a, A017419.P12151812333140594517.a, A017413, A017413.P11529384767991400928.a, A017415, A017415.P9330836573434406207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017419

/-! ## A017419.P2940949841895970416

`A017416(n)²/A017413(n)`
-/

namespace A017419.P2940949841895970416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017416 n ^ 2 : ℚ) / (A017413 n : ℚ)

end

end A017419.P2940949841895970416

namespace A017419

/-- `A017416(n)²/A017413(n)` -/
def P2940949841895970416.Spec : Prop :=
  ∀ n, P2940949841895970416.a n = (A017419 n : ℚ)

end A017419

/-! ## A017419.P5163638676711204693

`(A017401(n)+1)*A017418(n)`
-/

namespace A017419.P5163638676711204693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017401 n + 1) * A017418 n

end

end A017419.P5163638676711204693

namespace A017419

/-- `(A017401(n)+1)*A017418(n)` -/
def P5163638676711204693.Spec : Prop :=
  ∀ n, P5163638676711204693.a n = A017419 n

theorem P5163638676711204693.correct : P5163638676711204693.Spec := by
  intro n
  simp only [A017419, Nat.add_sub_cancel, A017419.P5163638676711204693.a, A017419.P12151812333140594517.a, A017401, A017401.P13777489390994228607.a, A017418, A017418.P1042390322104948958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017419

/-! ## A017419.P2626851077983090920

`A017420(n)/(A017401(n)+1)`
-/

namespace A017419.P2626851077983090920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017420 n : ℚ) / (A017401 n + 1 : ℚ)

end

end A017419.P2626851077983090920

namespace A017419

/-- `A017420(n)/(A017401(n)+1)` -/
def P2626851077983090920.Spec : Prop :=
  ∀ n, P2626851077983090920.a n = (A017419 n : ℚ)

theorem P2626851077983090920.correct : P2626851077983090920.Spec := by
  intro n
  simp only [A017419, Nat.add_sub_cancel, A017419.P2626851077983090920.a, A017419.P12151812333140594517.a, A017401, A017401.P13777489390994228607.a, A017420, A017420.P7558790448637835170.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017419

/-! ## A017419.P15513861739353973685

`A017414(n)²²/A017413(n)`
-/

namespace A017419.P15513861739353973685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017414 n ^ 2) ^ 2 : ℚ) / (A017413 n : ℚ)

end

end A017419.P15513861739353973685

namespace A017419

/-- `A017414(n)²²/A017413(n)` -/
def P15513861739353973685.Spec : Prop :=
  ∀ n, P15513861739353973685.a n = (A017419 n : ℚ)

end A017419

/-! ## A017419.P7100266383268800530

`(A017401(n)+1)²*A017417(n)`
-/

namespace A017419.P7100266383268800530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017401 n + 1) ^ 2 * A017417 n

end

end A017419.P7100266383268800530

namespace A017419

/-- `(A017401(n)+1)²*A017417(n)` -/
def P7100266383268800530.Spec : Prop :=
  ∀ n, P7100266383268800530.a n = A017419 n

theorem P7100266383268800530.correct : P7100266383268800530.Spec := by
  intro n
  simp only [A017419, Nat.add_sub_cancel, A017419.P7100266383268800530.a, A017419.P12151812333140594517.a, A017401, A017401.P13777489390994228607.a, A017417, A017417.P912847864889481660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017419

/-! ## A017419.P5372940849523016385

`A017417(n)/A017415(n)*A017417(n)`
-/

namespace A017419.P5372940849523016385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017417 n : ℚ) / (A017415 n : ℚ) * (A017417 n : ℚ)

end

end A017419.P5372940849523016385

namespace A017419

/-- `A017417(n)/A017415(n)*A017417(n)` -/
def P5372940849523016385.Spec : Prop :=
  ∀ n, P5372940849523016385.a n = (A017419 n : ℚ)

end A017419

/-! ## A017419.P6058431569890695449

`A001015(11*n+2)`
-/

namespace A017419.P6058431569890695449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (11 * n + 2)

end

end A017419.P6058431569890695449

namespace A017419

/-- `A001015(11*n+2)` -/
def P6058431569890695449.Spec : Prop :=
  ∀ n, P6058431569890695449.a n = A017419 n

end A017419

/-!
# A017420: a(n) = (11*n + 2)^8.

The programs for A017420, the canonical program `A017420.P7558790448637835170` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017420 has offset 0).

The definition of A017420 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+2)^8` (program `A017420.P7558790448637835170`, by `A017420.P7558790448637835170.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017420.P7558790448637835170

`(11*n+2)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017420

/-- `(11*n+2)^8` -/
def P7558790448637835170.Spec : Prop :=
  ∀ n, (P7558790448637835170.a n : ℤ) = A017420 n

theorem P7558790448637835170.correct : P7558790448637835170.Spec := by
  intro n
  simp only [A017420]

end A017420

/-! ## A017420.P909129505651981020

`A017416(n)²`
-/

namespace A017420.P909129505651981020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017416 n ^ 2

end

end A017420.P909129505651981020

namespace A017420

/-- `A017416(n)²` -/
def P909129505651981020.Spec : Prop :=
  ∀ n, P909129505651981020.a n = A017420 n

theorem P909129505651981020.correct : P909129505651981020.Spec := by
  intro n
  simp only [A017420, Nat.add_sub_cancel, A017420.P909129505651981020.a, A017420.P7558790448637835170.a, A017416, A017416.P15540303599325335403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017420

/-! ## A017420.P10654317107952060170

`A017414(n)²²`
-/

namespace A017420.P10654317107952060170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017414 n ^ 2) ^ 2

end

end A017420.P10654317107952060170

namespace A017420

/-- `A017414(n)²²` -/
def P10654317107952060170.Spec : Prop :=
  ∀ n, P10654317107952060170.a n = A017420 n

theorem P10654317107952060170.correct : P10654317107952060170.Spec := by
  intro n
  simp only [A017420, Nat.add_sub_cancel, A017420.P10654317107952060170.a, A017420.P7558790448637835170.a, A017414, A017414.P15246053875314055855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017420

/-! ## A017420.P2455469542680093872

`A017413(n)²²²`
-/

namespace A017420.P2455469542680093872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017413 n ^ 2) ^ 2) ^ 2

end

end A017420.P2455469542680093872

namespace A017420

/-- `A017413(n)²²²` -/
def P2455469542680093872.Spec : Prop :=
  ∀ n, P2455469542680093872.a n = A017420 n

theorem P2455469542680093872.correct : P2455469542680093872.Spec := by
  intro n
  simp only [A017420, Nat.add_sub_cancel, A017420.P2455469542680093872.a, A017420.P7558790448637835170.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017420

/-! ## A017420.P3420057373276327487

`Δ[A180223(n)]²²²`
-/

namespace A017420.P3420057373276327487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017420.P3420057373276327487

namespace A017420

/-- `Δ[A180223(n)]²²²` -/
def P3420057373276327487.Spec : Prop :=
  ∀ n, P3420057373276327487.a n = A017420 n

end A017420

/-! ## A017420.P9247415598363546296

`(A017401(n)+1)²²²`
-/

namespace A017420.P9247415598363546296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017401 n + 1) ^ 2) ^ 2) ^ 2

end

end A017420.P9247415598363546296

namespace A017420

/-- `(A017401(n)+1)²²²` -/
def P9247415598363546296.Spec : Prop :=
  ∀ n, P9247415598363546296.a n = A017420 n

theorem P9247415598363546296.correct : P9247415598363546296.Spec := by
  intro n
  simp only [A017420, Nat.add_sub_cancel, A017420.P9247415598363546296.a, A017420.P7558790448637835170.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017420

/-! ## A017420.P12824434351974342089

`(A008593(n)+2)²²²`
-/

namespace A017420.P12824434351974342089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008593 n + 2) ^ 2) ^ 2) ^ 2

end

end A017420.P12824434351974342089

namespace A017420

/-- `(A008593(n)+2)²²²` -/
def P12824434351974342089.Spec : Prop :=
  ∀ n, P12824434351974342089.a n = A017420 n

theorem P12824434351974342089.correct : P12824434351974342089.Spec := by
  intro n
  simp only [A017420, Nat.add_sub_cancel, A017420.P12824434351974342089.a, A017420.P7558790448637835170.a, A008593, A008593.P2680892499938115192.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017420

/-! ## A017420.P9194974703401187805

`(1-A017425(n))²²²`
-/

namespace A017420.P9194974703401187805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017425 n) ^ 2) ^ 2) ^ 2

end

end A017420.P9194974703401187805

namespace A017420

/-- `(1-A017425(n))²²²` -/
def P9194974703401187805.Spec : Prop :=
  ∀ n, P9194974703401187805.a n = A017420 n

theorem P9194974703401187805.correct : P9194974703401187805.Spec := by
  intro n
  simp only [A017420, Nat.add_sub_cancel, A017420.P9194974703401187805.a, A017420.P7558790448637835170.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017420

/-! ## A017420.P9431881549921950924

`(2-A017437(n))²²²`
-/

namespace A017420.P9431881549921950924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017437 n) ^ 2) ^ 2) ^ 2

end

end A017420.P9431881549921950924

namespace A017420

/-- `(2-A017437(n))²²²` -/
def P9431881549921950924.Spec : Prop :=
  ∀ n, P9431881549921950924.a n = A017420 n

theorem P9431881549921950924.correct : P9431881549921950924.Spec := by
  intro n
  simp only [A017420, Nat.add_sub_cancel, A017420.P9431881549921950924.a, A017420.P7558790448637835170.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017420

/-! ## A017420.P14275715167544712945

`(A017293(n)+n)²²²`
-/

namespace A017420.P14275715167544712945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017293 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017420.P14275715167544712945

namespace A017420

/-- `(A017293(n)+n)²²²` -/
def P14275715167544712945.Spec : Prop :=
  ∀ n, P14275715167544712945.a n = A017420 n

theorem P14275715167544712945.correct : P14275715167544712945.Spec := by
  intro n
  simp only [A017420, Nat.add_sub_cancel, A017420.P14275715167544712945.a, A017420.P7558790448637835170.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017420

/-! ## A017420.P15002560171223721726

`(n-A017545(n))²²²`
-/

namespace A017420.P15002560171223721726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017545 n) ^ 2) ^ 2) ^ 2

end

end A017420.P15002560171223721726

namespace A017420

/-- `(n-A017545(n))²²²` -/
def P15002560171223721726.Spec : Prop :=
  ∀ n, P15002560171223721726.a n = A017420 n

theorem P15002560171223721726.correct : P15002560171223721726.Spec := by
  intro n
  simp only [A017420, Nat.add_sub_cancel, A017420.P15002560171223721726.a, A017420.P7558790448637835170.a, A017545, A017545.P14965093399951293214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017420

/-! ## A017420.P15179245637373499864

`A017414(n)*A017418(n)`
-/

namespace A017420.P15179245637373499864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017414 n * A017418 n

end

end A017420.P15179245637373499864

namespace A017420

/-- `A017414(n)*A017418(n)` -/
def P15179245637373499864.Spec : Prop :=
  ∀ n, P15179245637373499864.a n = A017420 n

theorem P15179245637373499864.correct : P15179245637373499864.Spec := by
  intro n
  simp only [A017420, Nat.add_sub_cancel, A017420.P15179245637373499864.a, A017420.P7558790448637835170.a, A017414, A017414.P15246053875314055855.a, A017418, A017418.P1042390322104948958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017420

/-! ## A017420.P7879349446690086773

`A017415(n)*A017417(n)`
-/

namespace A017420.P7879349446690086773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017415 n * A017417 n

end

end A017420.P7879349446690086773

namespace A017420

/-- `A017415(n)*A017417(n)` -/
def P7879349446690086773.Spec : Prop :=
  ∀ n, P7879349446690086773.a n = A017420 n

theorem P7879349446690086773.correct : P7879349446690086773.Spec := by
  intro n
  simp only [A017420, Nat.add_sub_cancel, A017420.P7879349446690086773.a, A017420.P7558790448637835170.a, A017415, A017415.P9330836573434406207.a, A017417, A017417.P912847864889481660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017420

/-! ## A017420.P11299237336046962260

`(A157440(n+1)+A016921(n))²²`
-/

namespace A017420.P11299237336046962260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A157440 (n + 1) + A016921 n) ^ 2) ^ 2

end

end A017420.P11299237336046962260

namespace A017420

/-- `(A157440(n+1)+A016921(n))²²` -/
def P11299237336046962260.Spec : Prop :=
  ∀ n, P11299237336046962260.a n = A017420 n

theorem P11299237336046962260.correct : P11299237336046962260.Spec := by
  intro n
  simp only [A017420, Nat.add_sub_cancel, A017420.P11299237336046962260.a, A017420.P7558790448637835170.a, A016921, A016921.P18318603358862595186.a, A157440, A157440.P7578082168919146828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017420

/-! ## A017420.P14523413710982735231

`A017417(n)/A017414(n)*A017417(n)`
-/

namespace A017420.P14523413710982735231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017417 n : ℚ) / (A017414 n : ℚ) * (A017417 n : ℚ)

end

end A017420.P14523413710982735231

namespace A017420

/-- `A017417(n)/A017414(n)*A017417(n)` -/
def P14523413710982735231.Spec : Prop :=
  ∀ n, P14523413710982735231.a n = (A017420 n : ℚ)

end A017420

/-! ## A017420.P11055723087017610241

`A143795(2*(n+1))²²²`
-/

namespace A017420.P11055723087017610241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A143795 (2 * (n + 1)) ^ 2) ^ 2) ^ 2

end

end A017420.P11055723087017610241

namespace A017420

/-- `A143795(2*(n+1))²²²` -/
def P11055723087017610241.Spec : Prop :=
  ∀ n, P11055723087017610241.a n = A017420 n

end A017420

/-! ## A017420.P2422010920515638137

`A168465(2*n+1)²²²`
-/

namespace A017420.P2422010920515638137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A168465 (2 * n + 1) ^ 2) ^ 2) ^ 2

end

end A017420.P2422010920515638137

namespace A017420

/-- `A168465(2*n+1)²²²` -/
def P2422010920515638137.Spec : Prop :=
  ∀ n, P2422010920515638137.a n = A017420 n

end A017420

/-! ## A017420.P3074728066375031548

`A168486(2*n+1)²²²`
-/

namespace A017420.P3074728066375031548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A168486 (2 * n + 1) ^ 2) ^ 2) ^ 2

end

end A017420.P3074728066375031548

namespace A017420

/-- `A168486(2*n+1)²²²` -/
def P3074728066375031548.Spec : Prop :=
  ∀ n, P3074728066375031548.a n = A017420 n

end A017420

/-! ## A017420.P4130773730922315123

`A001016(11*n+2)`
-/

namespace A017420.P4130773730922315123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 (11 * n + 2)

end

end A017420.P4130773730922315123

namespace A017420

/-- `A001016(11*n+2)` -/
def P4130773730922315123.Spec : Prop :=
  ∀ n, P4130773730922315123.a n = A017420 n

end A017420

/-! ## A017420.P7425420680492816569

`A000290(2*(n+1)+9*n)²²`
-/

namespace A017420.P7425420680492816569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000290 (2 * (n + 1) + 9 * n) ^ 2) ^ 2

end

end A017420.P7425420680492816569

namespace A017420

/-- `A000290(2*(n+1)+9*n)²²` -/
def P7425420680492816569.Spec : Prop :=
  ∀ n, P7425420680492816569.a n = A017420 n

theorem P7425420680492816569.correct : P7425420680492816569.Spec := by
  intro n
  simp only [A017420, Nat.add_sub_cancel, A017420.P7425420680492816569.a, A017420.P7558790448637835170.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017420

/-!
# A017421: a(n) = (11*n + 2)^9.

The programs for A017421, the canonical program `A017421.P11187021485523989498` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017421 has offset 0).

The definition of A017421 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+2)^9` (program `A017421.P11187021485523989498`, by `A017421.P11187021485523989498.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017421.P11187021485523989498

`(11*n+2)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017421

/-- `(11*n+2)^9` -/
def P11187021485523989498.Spec : Prop :=
  ∀ n, (P11187021485523989498.a n : ℤ) = A017421 n

theorem P11187021485523989498.correct : P11187021485523989498.Spec := by
  intro n
  simp only [A017421]

end A017421

/-! ## A017421.P4326298520598520480

`A017413(n)*A017420(n)`
-/

namespace A017421.P4326298520598520480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n * A017420 n

end

end A017421.P4326298520598520480

namespace A017421

/-- `A017413(n)*A017420(n)` -/
def P4326298520598520480.Spec : Prop :=
  ∀ n, P4326298520598520480.a n = A017421 n

theorem P4326298520598520480.correct : P4326298520598520480.Spec := by
  intro n
  simp only [A017421, Nat.add_sub_cancel, A017421.P4326298520598520480.a, A017421.P11187021485523989498.a, A017413, A017413.P11529384767991400928.a, A017420, A017420.P7558790448637835170.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017421

/-! ## A017421.P3609993697934935143

`A017415(n)*A017418(n)`
-/

namespace A017421.P3609993697934935143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017415 n * A017418 n

end

end A017421.P3609993697934935143

namespace A017421

/-- `A017415(n)*A017418(n)` -/
def P3609993697934935143.Spec : Prop :=
  ∀ n, P3609993697934935143.a n = A017421 n

theorem P3609993697934935143.correct : P3609993697934935143.Spec := by
  intro n
  simp only [A017421, Nat.add_sub_cancel, A017421.P3609993697934935143.a, A017421.P11187021485523989498.a, A017415, A017415.P9330836573434406207.a, A017418, A017418.P1042390322104948958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017421

/-! ## A017421.P11881720242150998689

`A017416(n)*A017417(n)`
-/

namespace A017421.P11881720242150998689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017416 n * A017417 n

end

end A017421.P11881720242150998689

namespace A017421

/-- `A017416(n)*A017417(n)` -/
def P11881720242150998689.Spec : Prop :=
  ∀ n, P11881720242150998689.a n = A017421 n

theorem P11881720242150998689.correct : P11881720242150998689.Spec := by
  intro n
  simp only [A017421, Nat.add_sub_cancel, A017421.P11881720242150998689.a, A017421.P11187021485523989498.a, A017416, A017416.P15540303599325335403.a, A017417, A017417.P912847864889481660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017421

/-! ## A017421.P16828044580954575613

`A001017(A017413(n))`
-/

namespace A017421.P16828044580954575613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017413 n).toNat

end

end A017421.P16828044580954575613

namespace A017421

/-- `A001017(A017413(n))` -/
def P16828044580954575613.Spec : Prop :=
  ∀ n, P16828044580954575613.a n = A017421 n

end A017421

/-! ## A017421.P2172654287382263255

`A001017(A017293(n)+n)`
-/

namespace A017421.P2172654287382263255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017293 n + (n : ℤ)).toNat

end

end A017421.P2172654287382263255

namespace A017421

/-- `A001017(A017293(n)+n)` -/
def P2172654287382263255.Spec : Prop :=
  ∀ n, P2172654287382263255.a n = A017421 n

end A017421

/-! ## A017421.P1155950924184687010

`A001017(A017281(n)+n+1)`
-/

namespace A017421.P1155950924184687010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017281 n + (n + 1 : ℤ)).toNat

end

end A017421.P1155950924184687010

namespace A017421

/-- `A001017(A017281(n)+n+1)` -/
def P1155950924184687010.Spec : Prop :=
  ∀ n, P1155950924184687010.a n = A017421 n

end A017421

/-! ## A017421.P6585405058232704873

`A001017(A008587(2*n)+n+2)`
-/

namespace A017421.P6585405058232704873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A008587 (2 * n) + (n + 2 : ℤ)).toNat

end

end A017421.P6585405058232704873

namespace A017421

/-- `A001017(A008587(2*n)+n+2)` -/
def P6585405058232704873.Spec : Prop :=
  ∀ n, P6585405058232704873.a n = A017421 n

end A017421

/-!
# A017422: 

The programs for A017422, there is no canonical definition to state claims against.
-/

/-! ## A017422.P10071493767095225458

`(11*n+2)^10`
-/

namespace A017422.P10071493767095225458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 2) ^ 10

end

end A017422.P10071493767095225458

/-! ## A017422.P6241999427362310334

`A017417(n)²`
-/

namespace A017422.P6241999427362310334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017417 n ^ 2

end

end A017422.P6241999427362310334

/-! ## A017422.P8137097663138650141

`(A017413(n)^5)²`
-/

namespace A017422.P8137097663138650141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017413 n ^ 5) ^ 2

end

end A017422.P8137097663138650141

/-! ## A017422.P5097098410469567162

`A008454(A016873(2*n)+n)`
-/

namespace A017422.P5097098410469567162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016873 (2 * n) + (n : ℤ)).toNat

end

end A017422.P5097098410469567162

/-! ## A017422.P10024929159327891084

`A008454(A016945(2*n)-(n+1))`
-/

namespace A017422.P10024929159327891084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016945 (2 * n) - (n + 1 : ℤ)).toNat

end

end A017422.P10024929159327891084

/-!
# A017423: 

The programs for A017423, there is no canonical definition to state claims against.
-/

/-! ## A017423.P13044590355708110744

`(11*n+2)^11`
-/

namespace A017423.P13044590355708110744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 2) ^ 11

end

end A017423.P13044590355708110744

/-! ## A017423.P10216201120420032869

`A017416(n)*A017419(n)`
-/

namespace A017423.P10216201120420032869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017416 n * A017419 n

end

end A017423.P10216201120420032869

/-! ## A017423.P12653160953190230928

`A017420(n)²/A017417(n)`
-/

namespace A017423.P12653160953190230928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017420 n ^ 2 : ℚ) / (A017417 n : ℚ)

end

end A017423.P12653160953190230928

/-! ## A017423.P8138193941129267437

`A017421(n)²/A017419(n)`
-/

namespace A017423.P8138193941129267437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017421 n ^ 2 : ℚ) / (A017419 n : ℚ)

end

end A017423.P8138193941129267437

/-! ## A017423.P11212877736753856622

`record[(n+2)^gcd(11, n)]`
-/

namespace A017423.P11212877736753856622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.gcd 11 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017423.P11212877736753856622

/-! ## A017423.P18314158192257598640

`A008455(A017533(n)-(n-1))`
-/

namespace A017423.P18314158192257598640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017533 n - ((n : ℤ) - 1)).toNat

end

end A017423.P18314158192257598640

/-!
# A017424: 

The programs for A017424, there is no canonical definition to state claims against.
-/

/-! ## A017424.P5706487412461211673

`A017418(n)²`
-/

namespace A017424.P5706487412461211673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017418 n ^ 2

end

end A017424.P5706487412461211673

/-! ## A017424.P14524338651164111819

`A017416(n)^3`
-/

namespace A017424.P14524338651164111819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017416 n ^ 3

end

end A017424.P14524338651164111819

/-! ## A017424.P3419998894488333962

`A017415(n)^4`
-/

namespace A017424.P3419998894488333962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017415 n ^ 4

end

end A017424.P3419998894488333962

/-! ## A017424.P15657058557613038645

`A017413(n)^12`
-/

namespace A017424.P15657058557613038645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n ^ 12

end

end A017424.P15657058557613038645

/-! ## A017424.P5820262757955220101

`A017418(n)^A248218(A256342(n+1))`
-/

namespace A017424.P5820262757955220101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017418 n : ℚ) ^ (A248218 (A256342 (n + 1)).toNat : ℤ)

end

end A017424.P5820262757955220101

/-! ## A017424.P16449152227944419904

`A017418(n)^A000005(A033216(n+1))`
-/

namespace A017424.P16449152227944419904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017418 n : ℚ) ^ (A000005 (A033216 (n + 1)).toNat : ℤ)

end

end A017424.P16449152227944419904

/-! ## A017424.P9922015979291210228

`A023443(A017425(n))^12`
-/

namespace A017424.P9922015979291210228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A017425 n).toNat ^ 12

end

end A017424.P9922015979291210228

/-! ## A017424.P12687363964396309844

`A017418(n)^A000005(A247981(n+1))`
-/

namespace A017424.P12687363964396309844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017418 n : ℚ) ^ (A000005 (A247981 (n + 1)).toNat : ℤ)

end

end A017424.P12687363964396309844

/-!
# A017425: a(n) = 11*n + 3.

The programs for A017425, the canonical program `A017425.P2855568862637286375` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017425 has offset 0).

The definition of A017425 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*n+3` (program `A017425.P2855568862637286375`, by `A017425.P2855568862637286375.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017425.P2855568862637286375

`11*n+3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017425

/-- `11*n+3` -/
def P2855568862637286375.Spec : Prop :=
  ∀ n, (P2855568862637286375.a n : ℤ) = A017425 n

theorem P2855568862637286375.correct : P2855568862637286375.Spec := by
  intro n
  simp only [A017425]

end A017425

/-!
# A017426: a(n) = (11*n + 3)^2.

The programs for A017426, the canonical program `A017426.P5106419471572726330` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017426 has offset 0).

The definition of A017426 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+3)²` (program `A017426.P5106419471572726330`, by `A017426.P5106419471572726330.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017426.P5106419471572726330

`(11*n+3)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017426

/-- `(11*n+3)²` -/
def P5106419471572726330.Spec : Prop :=
  ∀ n, (P5106419471572726330.a n : ℤ) = A017426 n

theorem P5106419471572726330.correct : P5106419471572726330.Spec := by
  intro n
  simp only [A017426]

end A017426

/-! ## A017426.P12680202028062924067

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=9, a(1)=196, a(2)=625`
-/

namespace A017426.P12680202028062924067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 196, 625] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017426.P12680202028062924067

namespace A017426

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P12680202028062924067.Spec : Prop :=
  ∀ n, P12680202028062924067.a n = A017426 n

theorem P12680202028062924067.correct : P12680202028062924067.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017426, Nat.add_sub_cancel, A017426.P12680202028062924067.a, A017426.P5106419471572726330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017426, Nat.add_sub_cancel, A017426.P12680202028062924067.a, A017426.P5106419471572726330.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017426

/-! ## A017426.P2586931577617679552

`(or(3, 12*n)-n)^2`
-/

namespace A017426.P2586931577617679552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 3 (12 * n) : ℤ) - (n : ℤ)) ^ 2

end

end A017426.P2586931577617679552

namespace A017426

/-- `(or(3, 12*n)-n)^2` -/
def P2586931577617679552.Spec : Prop :=
  ∀ n, P2586931577617679552.a n = A017426 n

end A017426

/-! ## A017426.P17160623803132487725

`(xor(1, 10*n)+n+2)^2`
-/

namespace A017426.P17160623803132487725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (10 * n) + (n + 2)) ^ 2

end

end A017426.P17160623803132487725

namespace A017426

/-- `(xor(1, 10*n)+n+2)^2` -/
def P17160623803132487725.Spec : Prop :=
  ∀ n, (P17160623803132487725.a n : ℤ) = A017426 n

end A017426

/-! ## A017426.P14036015385508919934

`sqrt(A017428(n))`
-/

namespace A017426.P14036015385508919934
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017428 n : ℝ)

end

end A017426.P14036015385508919934

namespace A017426

/-- `sqrt(A017428(n))` -/
def P14036015385508919934.Spec : Prop :=
  ∀ n, P14036015385508919934.a n = (A017426 n : ℝ)

end A017426

/-! ## A017426.P5596033984970549291

`sqrt(sqrt(A017432(n)))`
-/

namespace A017426.P5596033984970549291
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017432 n : ℝ))

end

end A017426.P5596033984970549291

namespace A017426

/-- `sqrt(sqrt(A017432(n)))` -/
def P5596033984970549291.Spec : Prop :=
  ∀ n, P5596033984970549291.a n = (A017426 n : ℝ)

end A017426

/-! ## A017426.P11022082869205896532

`A017430(n)^(1/3)`
-/

namespace A017426.P11022082869205896532
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017430 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017426.P11022082869205896532

namespace A017426

/-- `A017430(n)^(1/3)` -/
def P11022082869205896532.Spec : Prop :=
  ∀ n, P11022082869205896532.a n = (A017426 n : ℝ)

end A017426

/-! ## A017426.P910087598512818797

`A017427(n)^(2/3)`
-/

namespace A017426.P910087598512818797
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017427 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017426.P910087598512818797

namespace A017426

/-- `A017427(n)^(2/3)` -/
def P910087598512818797.Spec : Prop :=
  ∀ n, P910087598512818797.a n = (A017426 n : ℝ)

end A017426

/-! ## A017426.P8654496080798176396

`abs(2-(A008592(n)+n+3)²)+2`
-/

namespace A017426.P8654496080798176396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A008592 n + (n + 3 : ℤ)) ^ 2| + 2

end

end A017426.P8654496080798176396

namespace A017426

/-- `abs(2-(A008592(n)+n+3)²)+2` -/
def P8654496080798176396.Spec : Prop :=
  ∀ n, P8654496080798176396.a n = A017426 n

end A017426

/-! ## A017426.P8226943436671194342

`A017425(n)*A017425(n)`
-/

namespace A017426.P8226943436671194342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n * A017425 n

end

end A017426.P8226943436671194342

namespace A017426

/-- `A017425(n)*A017425(n)` -/
def P8226943436671194342.Spec : Prop :=
  ∀ n, P8226943436671194342.a n = A017426 n

theorem P8226943436671194342.correct : P8226943436671194342.Spec := by
  intro n
  simp only [A017426, Nat.add_sub_cancel, A017426.P8226943436671194342.a, A017426.P5106419471572726330.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017426

/-! ## A017426.P4431658706340026828

`A017427(n)/A017425(n)`
-/

namespace A017426.P4431658706340026828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017427 n : ℚ) / (A017425 n : ℚ)

end

end A017426.P4431658706340026828

namespace A017426

/-- `A017427(n)/A017425(n)` -/
def P4431658706340026828.Spec : Prop :=
  ∀ n, P4431658706340026828.a n = (A017426 n : ℚ)

end A017426

/-! ## A017426.P15855460623059800477

`A017429(n)/A017427(n)`
-/

namespace A017426.P15855460623059800477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017429 n : ℚ) / (A017427 n : ℚ)

end

end A017426.P15855460623059800477

namespace A017426

/-- `A017429(n)/A017427(n)` -/
def P15855460623059800477.Spec : Prop :=
  ∀ n, P15855460623059800477.a n = (A017426 n : ℚ)

end A017426

/-! ## A017426.P16996070610666858301

`A017430(n)/A017428(n)`
-/

namespace A017426.P16996070610666858301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017430 n : ℚ) / (A017428 n : ℚ)

end

end A017426.P16996070610666858301

namespace A017426

/-- `A017430(n)/A017428(n)` -/
def P16996070610666858301.Spec : Prop :=
  ∀ n, P16996070610666858301.a n = (A017426 n : ℚ)

end A017426

/-! ## A017426.P11299899685072092313

`A017427(n)²/A017428(n)`
-/

namespace A017426.P11299899685072092313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017427 n ^ 2 : ℚ) / (A017428 n : ℚ)

end

end A017426.P11299899685072092313

namespace A017426

/-- `A017427(n)²/A017428(n)` -/
def P11299899685072092313.Spec : Prop :=
  ∀ n, P11299899685072092313.a n = (A017426 n : ℚ)

end A017426

/-! ## A017426.P255308697697232445

`A017432(n)/A017427(n)²`
-/

namespace A017426.P255308697697232445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017432 n : ℚ) / (A017427 n ^ 2 : ℚ)

end

end A017426.P255308697697232445

namespace A017426

/-- `A017432(n)/A017427(n)²` -/
def P255308697697232445.Spec : Prop :=
  ∀ n, P255308697697232445.a n = (A017426 n : ℚ)

end A017426

/-! ## A017426.P6725269046372368831

`A017413(n)*A017437(n)+1`
-/

namespace A017426.P6725269046372368831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n * A017437 n + 1

end

end A017426.P6725269046372368831

namespace A017426

/-- `A017413(n)*A017437(n)+1` -/
def P6725269046372368831.Spec : Prop :=
  ∀ n, P6725269046372368831.a n = A017426 n

theorem P6725269046372368831.correct : P6725269046372368831.Spec := by
  intro n
  simp only [A017426, Nat.add_sub_cancel, A017426.P6725269046372368831.a, A017426.P5106419471572726330.a, A017413, A017413.P11529384767991400928.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017426

/-! ## A017426.P15517602789120735677

`A017430(n)/A017425(n)²²`
-/

namespace A017426.P15517602789120735677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017430 n : ℚ) / ((A017425 n ^ 2) ^ 2 : ℚ)

end

end A017426.P15517602789120735677

namespace A017426

/-- `A017430(n)/A017425(n)²²` -/
def P15517602789120735677.Spec : Prop :=
  ∀ n, P15517602789120735677.a n = (A017426 n : ℚ)

end A017426

/-! ## A017426.P13438256610876248506

`round(sqrt((4-(A016969(n)+A016873(n)))²²+2))`
-/

namespace A017426.P13438256610876248506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((4 - (A016969 n + A016873 n)) ^ 2) ^ 2 + 2 : ℝ))

end

end A017426.P13438256610876248506

namespace A017426

/-- `round(sqrt((4-(A016969(n)+A016873(n)))²²+2))` -/
def P13438256610876248506.Spec : Prop :=
  ∀ n, P13438256610876248506.a n = A017426 n

end A017426

/-! ## A017426.P11929707598201781350

`A017438(n)-(A017437(n)+A017425(n))`
-/

namespace A017426.P11929707598201781350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017438 n - (A017437 n + A017425 n)

end

end A017426.P11929707598201781350

namespace A017426

/-- `A017438(n)-(A017437(n)+A017425(n))` -/
def P11929707598201781350.Spec : Prop :=
  ∀ n, P11929707598201781350.a n = A017426 n

theorem P11929707598201781350.correct : P11929707598201781350.Spec := by
  intro n
  simp only [A017426, Nat.add_sub_cancel, A017426.P11929707598201781350.a, A017426.P5106419471572726330.a, A017425, A017425.P2855568862637286375.a, A017437, A017437.P10409157242345038154.a, A017438, A017438.P10301325170580427455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017426

/-! ## A017426.P5978892868294510547

`A017413(n)*A017449(n)-A017401(n)`
-/

namespace A017426.P5978892868294510547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n * A017449 n - A017401 n

end

end A017426.P5978892868294510547

namespace A017426

/-- `A017413(n)*A017449(n)-A017401(n)` -/
def P5978892868294510547.Spec : Prop :=
  ∀ n, P5978892868294510547.a n = A017426 n

theorem P5978892868294510547.correct : P5978892868294510547.Spec := by
  intro n
  simp only [A017426, Nat.add_sub_cancel, A017426.P5978892868294510547.a, A017426.P5106419471572726330.a, A017401, A017401.P13777489390994228607.a, A017413, A017413.P11529384767991400928.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017426

/-!
# A017427: a(n) = (11*n + 3)^3.

The programs for A017427, the canonical program `A017427.P5962536406076504421` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017427 has offset 0).

The definition of A017427 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+3)^3` (program `A017427.P5962536406076504421`, by `A017427.P5962536406076504421.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017427.P5962536406076504421

`(11*n+3)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017427

/-- `(11*n+3)^3` -/
def P5962536406076504421.Spec : Prop :=
  ∀ n, (P5962536406076504421.a n : ℤ) = A017427 n

theorem P5962536406076504421.correct : P5962536406076504421.Spec := by
  intro n
  simp only [A017427]

end A017427

/-! ## A017427.P2161183536014616961

`A000578(A017425(n))`
-/

namespace A017427.P2161183536014616961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A017425 n).toNat

end

end A017427.P2161183536014616961

namespace A017427

/-- `A000578(A017425(n))` -/
def P2161183536014616961.Spec : Prop :=
  ∀ n, P2161183536014616961.a n = A017427 n

end A017427

/-! ## A017427.P11832890392357258810

`abs((or(3, 12*n)-n)^3)`
-/

namespace A017427.P11832890392357258810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.lor 3 (12 * n) : ℤ) - (n : ℤ)) ^ 3|

end

end A017427.P11832890392357258810

namespace A017427

/-- `abs((or(3, 12*n)-n)^3)` -/
def P11832890392357258810.Spec : Prop :=
  ∀ n, P11832890392357258810.a n = A017427 n

end A017427

/-! ## A017427.P8868477063754461883

`(lcm(11, 11*n)+3)*(lcm(11, 11*n)+3)²`
-/

namespace A017427.P8868477063754461883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 11 (11 * n) + 3) * (Nat.lcm 11 (11 * n) + 3) ^ 2

end

end A017427.P8868477063754461883

namespace A017427

/-- `(lcm(11, 11*n)+3)*(lcm(11, 11*n)+3)²` -/
def P8868477063754461883.Spec : Prop :=
  ∀ n, (P8868477063754461883.a n : ℤ) = A017427 n

theorem P8868477063754461883.correct : P8868477063754461883.Spec := by
  intro n
  simp only [A017427, Nat.add_sub_cancel, A017427.P8868477063754461883.a, A017427.P5962536406076504421.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017427

/-! ## A017427.P5060461878239306945

`sqrt(A017430(n))`
-/

namespace A017427.P5060461878239306945
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017430 n : ℝ)

end

end A017427.P5060461878239306945

namespace A017427

/-- `sqrt(A017430(n))` -/
def P5060461878239306945.Spec : Prop :=
  ∀ n, P5060461878239306945.a n = (A017427 n : ℝ)

end A017427

/-! ## A017427.P3360797474782312613

`sqrt(A017426(n)^3)`
-/

namespace A017427.P3360797474782312613
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017426 n ^ 3 : ℝ)

end

end A017427.P3360797474782312613

namespace A017427

/-- `sqrt(A017426(n)^3)` -/
def P3360797474782312613.Spec : Prop :=
  ∀ n, P3360797474782312613.a n = (A017427 n : ℝ)

end A017427

/-! ## A017427.P10749371008498812193

`A017425(n)*A017426(n)`
-/

namespace A017427.P10749371008498812193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n * A017426 n

end

end A017427.P10749371008498812193

namespace A017427

/-- `A017425(n)*A017426(n)` -/
def P10749371008498812193.Spec : Prop :=
  ∀ n, P10749371008498812193.a n = A017427 n

theorem P10749371008498812193.correct : P10749371008498812193.Spec := by
  intro n
  simp only [A017427, Nat.add_sub_cancel, A017427.P10749371008498812193.a, A017427.P5962536406076504421.a, A017425, A017425.P2855568862637286375.a, A017426, A017426.P5106419471572726330.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017427

/-! ## A017427.P6586073779535087409

`A017428(n)/A017425(n)`
-/

namespace A017427.P6586073779535087409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017428 n : ℚ) / (A017425 n : ℚ)

end

end A017427.P6586073779535087409

namespace A017427

/-- `A017428(n)/A017425(n)` -/
def P6586073779535087409.Spec : Prop :=
  ∀ n, P6586073779535087409.a n = (A017427 n : ℚ)

end A017427

/-! ## A017427.P302882919649586193

`A017429(n)/A017426(n)`
-/

namespace A017427.P302882919649586193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017429 n : ℚ) / (A017426 n : ℚ)

end

end A017427.P302882919649586193

namespace A017427

/-- `A017429(n)/A017426(n)` -/
def P302882919649586193.Spec : Prop :=
  ∀ n, P302882919649586193.a n = (A017427 n : ℚ)

end A017427

/-! ## A017427.P17116925325704339345

`A017432(n)/A017429(n)`
-/

namespace A017427.P17116925325704339345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017432 n : ℚ) / (A017429 n : ℚ)

end

end A017427.P17116925325704339345

namespace A017427

/-- `A017432(n)/A017429(n)` -/
def P17116925325704339345.Spec : Prop :=
  ∀ n, P17116925325704339345.a n = (A017427 n : ℚ)

end A017427

/-! ## A017427.P848923833711454608

`A017433(n)/A017430(n)`
-/

namespace A017427.P848923833711454608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017433 n : ℚ) / (A017430 n : ℚ)

end

end A017427.P848923833711454608

namespace A017427

/-- `A017433(n)/A017430(n)` -/
def P848923833711454608.Spec : Prop :=
  ∀ n, P848923833711454608.a n = (A017427 n : ℚ)

end A017427

/-! ## A017427.P17344877472697978816

`A017429(n)/A017425(n)²`
-/

namespace A017427.P17344877472697978816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017429 n : ℚ) / (A017425 n ^ 2 : ℚ)

end

end A017427.P17344877472697978816

namespace A017427

/-- `A017429(n)/A017425(n)²` -/
def P17344877472697978816.Spec : Prop :=
  ∀ n, P17344877472697978816.a n = (A017427 n : ℚ)

end A017427

/-! ## A017427.P8217751088151172032

`(A017413(n)+1)*A017426(n)`
-/

namespace A017427.P8217751088151172032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017413 n + 1) * A017426 n

end

end A017427.P8217751088151172032

namespace A017427

/-- `(A017413(n)+1)*A017426(n)` -/
def P8217751088151172032.Spec : Prop :=
  ∀ n, P8217751088151172032.a n = A017427 n

theorem P8217751088151172032.correct : P8217751088151172032.Spec := by
  intro n
  simp only [A017427, Nat.add_sub_cancel, A017427.P8217751088151172032.a, A017427.P5962536406076504421.a, A017413, A017413.P11529384767991400928.a, A017426, A017426.P5106419471572726330.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017427

/-! ## A017427.P15870835292357988825

`(A017449(n)-2)*A017426(n)`
-/

namespace A017427.P15870835292357988825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017449 n - 2) * A017426 n

end

end A017427.P15870835292357988825

namespace A017427

/-- `(A017449(n)-2)*A017426(n)` -/
def P15870835292357988825.Spec : Prop :=
  ∀ n, P15870835292357988825.a n = A017427 n

theorem P15870835292357988825.correct : P15870835292357988825.Spec := by
  intro n
  simp only [A017427, Nat.add_sub_cancel, A017427.P15870835292357988825.a, A017427.P5962536406076504421.a, A017426, A017426.P5106419471572726330.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017427

/-! ## A017427.P11683021154798646238

`(A017413(n)+1)*A017425(n)²`
-/

namespace A017427.P11683021154798646238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017413 n + 1) * A017425 n ^ 2

end

end A017427.P11683021154798646238

namespace A017427

/-- `(A017413(n)+1)*A017425(n)²` -/
def P11683021154798646238.Spec : Prop :=
  ∀ n, P11683021154798646238.a n = A017427 n

theorem P11683021154798646238.correct : P11683021154798646238.Spec := by
  intro n
  simp only [A017427, Nat.add_sub_cancel, A017427.P11683021154798646238.a, A017427.P5962536406076504421.a, A017413, A017413.P11529384767991400928.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017427

/-! ## A017427.P7847588888543848200

`(A017437(n)-1)*A017425(n)²`
-/

namespace A017427.P7847588888543848200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017437 n - 1) * A017425 n ^ 2

end

end A017427.P7847588888543848200

namespace A017427

/-- `(A017437(n)-1)*A017425(n)²` -/
def P7847588888543848200.Spec : Prop :=
  ∀ n, P7847588888543848200.a n = A017427 n

theorem P7847588888543848200.correct : P7847588888543848200.Spec := by
  intro n
  simp only [A017427, Nat.add_sub_cancel, A017427.P7847588888543848200.a, A017427.P5962536406076504421.a, A017425, A017425.P2855568862637286375.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017427

/-! ## A017427.P2967596090955265640

`A017429(n)/(1-A017437(n))²`
-/

namespace A017427.P2967596090955265640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017429 n : ℚ) / ((1 - A017437 n) ^ 2 : ℚ)

end

end A017427.P2967596090955265640

namespace A017427

/-- `A017429(n)/(1-A017437(n))²` -/
def P2967596090955265640.Spec : Prop :=
  ∀ n, P2967596090955265640.a n = (A017427 n : ℚ)

end A017427

/-! ## A017427.P3969601320857320100

`(A008592(n)+n+3)*(A008592(n)+n+3)²`
-/

namespace A017427.P3969601320857320100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008592 n + (n + 3 : ℤ)) * (A008592 n + (n + 3 : ℤ)) ^ 2

end

end A017427.P3969601320857320100

namespace A017427

/-- `(A008592(n)+n+3)*(A008592(n)+n+3)²` -/
def P3969601320857320100.Spec : Prop :=
  ∀ n, P3969601320857320100.a n = A017427 n

theorem P3969601320857320100.correct : P3969601320857320100.Spec := by
  intro n
  simp only [A017427, Nat.add_sub_cancel, A017427.P3969601320857320100.a, A017427.P5962536406076504421.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017427

/-! ## A017427.P6940821875900168541

`A017430(n)/(A017425(n)²*A017425(n))`
-/

namespace A017427.P6940821875900168541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017430 n : ℚ) / (A017425 n ^ 2 * A017425 n : ℚ)

end

end A017427.P6940821875900168541

namespace A017427

/-- `A017430(n)/(A017425(n)²*A017425(n))` -/
def P6940821875900168541.Spec : Prop :=
  ∀ n, P6940821875900168541.a n = (A017427 n : ℚ)

end A017427

/-! ## A017427.P7037817506453811776

`Δ[A226492(n)]²*Δ[A226492(n)]`
-/

namespace A017427.P7037817506453811776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017427.P7037817506453811776

namespace A017427

/-- `Δ[A226492(n)]²*Δ[A226492(n)]` -/
def P7037817506453811776.Spec : Prop :=
  ∀ n, P7037817506453811776.a n = A017427 n

end A017427

/-!
# A017428: a(n) = (11*n + 3)^4.

The programs for A017428, the canonical program `A017428.P7582591564891883416` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017428 has offset 0).

The definition of A017428 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+3)^4` (program `A017428.P7582591564891883416`, by `A017428.P7582591564891883416.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017428.P7582591564891883416

`(11*n+3)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017428

/-- `(11*n+3)^4` -/
def P7582591564891883416.Spec : Prop :=
  ∀ n, (P7582591564891883416.a n : ℤ) = A017428 n

theorem P7582591564891883416.correct : P7582591564891883416.Spec := by
  intro n
  simp only [A017428]

end A017428

/-! ## A017428.P3630927340716099942

`(lcm(11, 11*n)+3)²²`
-/

namespace A017428.P3630927340716099942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 11 (11 * n) + 3) ^ 2) ^ 2

end

end A017428.P3630927340716099942

namespace A017428

/-- `(lcm(11, 11*n)+3)²²` -/
def P3630927340716099942.Spec : Prop :=
  ∀ n, (P3630927340716099942.a n : ℤ) = A017428 n

theorem P3630927340716099942.correct : P3630927340716099942.Spec := by
  intro n
  simp only [A017428, Nat.add_sub_cancel, A017428.P3630927340716099942.a, A017428.P7582591564891883416.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017428

/-! ## A017428.P5542449891064019818

`(or(3, 12*n)-n)²²`
-/

namespace A017428.P5542449891064019818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.lor 3 (12 * n) : ℤ) - (n : ℤ)) ^ 2) ^ 2

end

end A017428.P5542449891064019818

namespace A017428

/-- `(or(3, 12*n)-n)²²` -/
def P5542449891064019818.Spec : Prop :=
  ∀ n, P5542449891064019818.a n = A017428 n

end A017428

/-! ## A017428.P2015237316031581812

`(xor(3, 12*n)-n)²²`
-/

namespace A017428.P2015237316031581812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.xor 3 (12 * n) : ℤ) - (n : ℤ)) ^ 2) ^ 2

end

end A017428.P2015237316031581812

namespace A017428

/-- `(xor(3, 12*n)-n)²²` -/
def P2015237316031581812.Spec : Prop :=
  ∀ n, P2015237316031581812.a n = A017428 n

end A017428

/-! ## A017428.P5621594004213643934

`(record[xor(3, n)]+7*n)²²`
-/

namespace A017428.P5621594004213643934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 7 * n) ^ 2) ^ 2

end

end A017428.P5621594004213643934

namespace A017428

/-- `(record[xor(3, n)]+7*n)²²` -/
def P5621594004213643934.Spec : Prop :=
  ∀ n, (P5621594004213643934.a n : ℤ) = A017428 n

end A017428

/-! ## A017428.P6784365253994381342

`((n+3)²-lcm(n-2, n-3))²²`
-/

namespace A017428.P6784365253994381342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n + 3) ^ 2 : ℤ) - (Int.lcm ((n : ℤ) - 2) ((n : ℤ) - 3) : ℤ)) ^ 2) ^ 2

end

end A017428.P6784365253994381342

namespace A017428

/-- `((n+3)²-lcm(n-2, n-3))²²` -/
def P6784365253994381342.Spec : Prop :=
  ∀ n, P6784365253994381342.a n = A017428 n

end A017428

/-! ## A017428.P18269101322110194967

`(11*n+5-(3*n+2)%3)²²`
-/

namespace A017428.P18269101322110194967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((11 * n + 5 : ℤ) - (((3 * n + 2) % 3 : ℕ) : ℤ)) ^ 2) ^ 2

end

end A017428.P18269101322110194967

namespace A017428

/-- `(11*n+5-(3*n+2)%3)²²` -/
def P18269101322110194967.Spec : Prop :=
  ∀ n, P18269101322110194967.a n = A017428 n

theorem P18269101322110194967.correct : P18269101322110194967.Spec := by
  intro n
  simp only [A017428, Nat.add_sub_cancel, A017428.P18269101322110194967.a, A017428.P7582591564891883416.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017428

/-! ## A017428.P11830626796581877968

`A017426(n)²`
-/

namespace A017428.P11830626796581877968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017426 n ^ 2

end

end A017428.P11830626796581877968

namespace A017428

/-- `A017426(n)²` -/
def P11830626796581877968.Spec : Prop :=
  ∀ n, P11830626796581877968.a n = A017428 n

theorem P11830626796581877968.correct : P11830626796581877968.Spec := by
  intro n
  simp only [A017428, Nat.add_sub_cancel, A017428.P11830626796581877968.a, A017428.P7582591564891883416.a, A017426, A017426.P5106419471572726330.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017428

/-! ## A017428.P15081700052052016404

`sqrt(A017432(n))`
-/

namespace A017428.P15081700052052016404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017432 n : ℝ)

end

end A017428.P15081700052052016404

namespace A017428

/-- `sqrt(A017432(n))` -/
def P15081700052052016404.Spec : Prop :=
  ∀ n, P15081700052052016404.a n = (A017428 n : ℝ)

end A017428

/-! ## A017428.P8765101443259916163

`A017425(n)²²`
-/

namespace A017428.P8765101443259916163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017425 n ^ 2) ^ 2

end

end A017428.P8765101443259916163

namespace A017428

/-- `A017425(n)²²` -/
def P8765101443259916163.Spec : Prop :=
  ∀ n, P8765101443259916163.a n = A017428 n

theorem P8765101443259916163.correct : P8765101443259916163.Spec := by
  intro n
  simp only [A017428, Nat.add_sub_cancel, A017428.P8765101443259916163.a, A017428.P7582591564891883416.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017428

/-! ## A017428.P17764147168111872366

`(A017413(n)+1)²²`
-/

namespace A017428.P17764147168111872366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017413 n + 1) ^ 2) ^ 2

end

end A017428.P17764147168111872366

namespace A017428

/-- `(A017413(n)+1)²²` -/
def P17764147168111872366.Spec : Prop :=
  ∀ n, P17764147168111872366.a n = A017428 n

theorem P17764147168111872366.correct : P17764147168111872366.Spec := by
  intro n
  simp only [A017428, Nat.add_sub_cancel, A017428.P17764147168111872366.a, A017428.P7582591564891883416.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017428

/-! ## A017428.P12590269612238763699

`(A017401(n)+2)²²`
-/

namespace A017428.P12590269612238763699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017401 n + 2) ^ 2) ^ 2

end

end A017428.P12590269612238763699

namespace A017428

/-- `(A017401(n)+2)²²` -/
def P12590269612238763699.Spec : Prop :=
  ∀ n, P12590269612238763699.a n = A017428 n

theorem P12590269612238763699.correct : P12590269612238763699.Spec := by
  intro n
  simp only [A017428, Nat.add_sub_cancel, A017428.P12590269612238763699.a, A017428.P7582591564891883416.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017428

/-! ## A017428.P239044365044176772

`(1-A017437(n))²²`
-/

namespace A017428.P239044365044176772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017437 n) ^ 2) ^ 2

end

end A017428.P239044365044176772

namespace A017428

/-- `(1-A017437(n))²²` -/
def P239044365044176772.Spec : Prop :=
  ∀ n, P239044365044176772.a n = A017428 n

theorem P239044365044176772.correct : P239044365044176772.Spec := by
  intro n
  simp only [A017428, Nat.add_sub_cancel, A017428.P239044365044176772.a, A017428.P7582591564891883416.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017428

/-! ## A017428.P15842620276951352555

`(A008593(n)+3)²²`
-/

namespace A017428.P15842620276951352555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008593 n + 3) ^ 2) ^ 2

end

end A017428.P15842620276951352555

namespace A017428

/-- `(A008593(n)+3)²²` -/
def P15842620276951352555.Spec : Prop :=
  ∀ n, P15842620276951352555.a n = A017428 n

theorem P15842620276951352555.correct : P15842620276951352555.Spec := by
  intro n
  simp only [A017428, Nat.add_sub_cancel, A017428.P15842620276951352555.a, A017428.P7582591564891883416.a, A008593, A008593.P2680892499938115192.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017428

/-! ## A017428.P8823265095412058958

`(2-A017449(n))²²`
-/

namespace A017428.P8823265095412058958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017449 n) ^ 2) ^ 2

end

end A017428.P8823265095412058958

namespace A017428

/-- `(2-A017449(n))²²` -/
def P8823265095412058958.Spec : Prop :=
  ∀ n, P8823265095412058958.a n = A017428 n

theorem P8823265095412058958.correct : P8823265095412058958.Spec := by
  intro n
  simp only [A017428, Nat.add_sub_cancel, A017428.P8823265095412058958.a, A017428.P7582591564891883416.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017428

/-! ## A017428.P14616465308976197998

`(3-A017461(n))²²`
-/

namespace A017428.P14616465308976197998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017461 n) ^ 2) ^ 2

end

end A017428.P14616465308976197998

namespace A017428

/-- `(3-A017461(n))²²` -/
def P14616465308976197998.Spec : Prop :=
  ∀ n, P14616465308976197998.a n = A017428 n

theorem P14616465308976197998.correct : P14616465308976197998.Spec := by
  intro n
  simp only [A017428, Nat.add_sub_cancel, A017428.P14616465308976197998.a, A017428.P7582591564891883416.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017428

/-! ## A017428.P5152573006357857913

`(A017305(n)+n)²²`
-/

namespace A017428.P5152573006357857913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017305 n + (n : ℤ)) ^ 2) ^ 2

end

end A017428.P5152573006357857913

namespace A017428

/-- `(A017305(n)+n)²²` -/
def P5152573006357857913.Spec : Prop :=
  ∀ n, P5152573006357857913.a n = A017428 n

theorem P5152573006357857913.correct : P5152573006357857913.Spec := by
  intro n
  simp only [A017428, Nat.add_sub_cancel, A017428.P5152573006357857913.a, A017428.P7582591564891883416.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017428

/-! ## A017428.P16959133580398437818

`(n-A017557(n))²²`
-/

namespace A017428.P16959133580398437818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017557 n) ^ 2) ^ 2

end

end A017428.P16959133580398437818

namespace A017428

/-- `(n-A017557(n))²²` -/
def P16959133580398437818.Spec : Prop :=
  ∀ n, P16959133580398437818.a n = A017428 n

theorem P16959133580398437818.correct : P16959133580398437818.Spec := by
  intro n
  simp only [A017428, Nat.add_sub_cancel, A017428.P16959133580398437818.a, A017428.P7582591564891883416.a, A017557, A017557.P7719209615978230604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017428

/-! ## A017428.P1436844978193471602

`(sqrt(A017414(n))+1)²²`
-/

namespace A017428.P1436844978193471602
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017414 n : ℝ) + 1) ^ 2) ^ 2

end

end A017428.P1436844978193471602

namespace A017428

/-- `(sqrt(A017414(n))+1)²²` -/
def P1436844978193471602.Spec : Prop :=
  ∀ n, P1436844978193471602.a n = (A017428 n : ℝ)

end A017428

/-! ## A017428.P9003321766153613502

`(sqrt(A017402(n))+2)²²`
-/

namespace A017428.P9003321766153613502
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017402 n : ℝ) + 2) ^ 2) ^ 2

end

end A017428.P9003321766153613502

namespace A017428

/-- `(sqrt(A017402(n))+2)²²` -/
def P9003321766153613502.Spec : Prop :=
  ∀ n, P9003321766153613502.a n = (A017428 n : ℝ)

end A017428

/-!
# A017429: a(n) = (11*n+3)^5.

The programs for A017429, the canonical program `A017429.P2314429628448225399` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017429 has offset 0).

The definition of A017429 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+3)^5` (program `A017429.P2314429628448225399`, by `A017429.P2314429628448225399.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017429.P2314429628448225399

`(11*n+3)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017429

/-- `(11*n+3)^5` -/
def P2314429628448225399.Spec : Prop :=
  ∀ n, (P2314429628448225399.a n : ℤ) = A017429 n

theorem P2314429628448225399.correct : P2314429628448225399.Spec := by
  intro n
  simp only [A017429]

end A017429

/-! ## A017429.P17373169627461179078

`-(-A017425(n))^5`
-/

namespace A017429.P17373169627461179078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-A017425 n) ^ 5)

end

end A017429.P17373169627461179078

namespace A017429

/-- `-(-A017425(n))^5` -/
def P17373169627461179078.Spec : Prop :=
  ∀ n, P17373169627461179078.a n = A017429 n

theorem P17373169627461179078.correct : P17373169627461179078.Spec := by
  intro n
  simp only [A017429, Nat.add_sub_cancel, A017429.P17373169627461179078.a, A017429.P2314429628448225399.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017429

/-! ## A017429.P10923460395469736506

`abs((A017437(n)-1)^5)`
-/

namespace A017429.P10923460395469736506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A017437 n - 1) ^ 5|

end

end A017429.P10923460395469736506

namespace A017429

/-- `abs((A017437(n)-1)^5)` -/
def P10923460395469736506.Spec : Prop :=
  ∀ n, P10923460395469736506.a n = A017429 n

end A017429

/-! ## A017429.P3386771582846144234

`A017425(n)*A017428(n)`
-/

namespace A017429.P3386771582846144234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n * A017428 n

end

end A017429.P3386771582846144234

namespace A017429

/-- `A017425(n)*A017428(n)` -/
def P3386771582846144234.Spec : Prop :=
  ∀ n, P3386771582846144234.a n = A017429 n

theorem P3386771582846144234.correct : P3386771582846144234.Spec := by
  intro n
  simp only [A017429, Nat.add_sub_cancel, A017429.P3386771582846144234.a, A017429.P2314429628448225399.a, A017425, A017425.P2855568862637286375.a, A017428, A017428.P7582591564891883416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017429

/-! ## A017429.P4849192522331014423

`A017426(n)*A017427(n)`
-/

namespace A017429.P4849192522331014423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017426 n * A017427 n

end

end A017429.P4849192522331014423

namespace A017429

/-- `A017426(n)*A017427(n)` -/
def P4849192522331014423.Spec : Prop :=
  ∀ n, P4849192522331014423.a n = A017429 n

theorem P4849192522331014423.correct : P4849192522331014423.Spec := by
  intro n
  simp only [A017429, Nat.add_sub_cancel, A017429.P4849192522331014423.a, A017429.P2314429628448225399.a, A017426, A017426.P5106419471572726330.a, A017427, A017427.P5962536406076504421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017429

/-! ## A017429.P11753917926548138264

`A017430(n)/A017425(n)`
-/

namespace A017429.P11753917926548138264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017430 n : ℚ) / (A017425 n : ℚ)

end

end A017429.P11753917926548138264

namespace A017429

/-- `A017430(n)/A017425(n)` -/
def P11753917926548138264.Spec : Prop :=
  ∀ n, P11753917926548138264.a n = (A017429 n : ℚ)

end A017429

/-! ## A017429.P527625929384636394

`A017432(n)/A017427(n)`
-/

namespace A017429.P527625929384636394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017432 n : ℚ) / (A017427 n : ℚ)

end

end A017429.P527625929384636394

namespace A017429

/-- `A017432(n)/A017427(n)` -/
def P527625929384636394.Spec : Prop :=
  ∀ n, P527625929384636394.a n = (A017429 n : ℚ)

end A017429

/-! ## A017429.P5877209168645832872

`A017425(n)²*A017427(n)`
-/

namespace A017429.P5877209168645832872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n ^ 2 * A017427 n

end

end A017429.P5877209168645832872

namespace A017429

/-- `A017425(n)²*A017427(n)` -/
def P5877209168645832872.Spec : Prop :=
  ∀ n, P5877209168645832872.a n = A017429 n

theorem P5877209168645832872.correct : P5877209168645832872.Spec := by
  intro n
  simp only [A017429, Nat.add_sub_cancel, A017429.P5877209168645832872.a, A017429.P2314429628448225399.a, A017425, A017425.P2855568862637286375.a, A017427, A017427.P5962536406076504421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017429

/-! ## A017429.P13405508764267348024

`A017426(n)²*A017425(n)`
-/

namespace A017429.P13405508764267348024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017426 n ^ 2 * A017425 n

end

end A017429.P13405508764267348024

namespace A017429

/-- `A017426(n)²*A017425(n)` -/
def P13405508764267348024.Spec : Prop :=
  ∀ n, P13405508764267348024.a n = A017429 n

theorem P13405508764267348024.correct : P13405508764267348024.Spec := by
  intro n
  simp only [A017429, Nat.add_sub_cancel, A017429.P13405508764267348024.a, A017429.P2314429628448225399.a, A017425, A017425.P2855568862637286375.a, A017426, A017426.P5106419471572726330.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017429

/-! ## A017429.P225074905577064566

`A017428(n)²/A017427(n)`
-/

namespace A017429.P225074905577064566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017428 n ^ 2 : ℚ) / (A017427 n : ℚ)

end

end A017429.P225074905577064566

namespace A017429

/-- `A017428(n)²/A017427(n)` -/
def P225074905577064566.Spec : Prop :=
  ∀ n, P225074905577064566.a n = (A017429 n : ℚ)

end A017429

/-! ## A017429.P17073540389709630440

`A017433(n)/A017426(n)²`
-/

namespace A017429.P17073540389709630440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017433 n : ℚ) / (A017426 n ^ 2 : ℚ)

end

end A017429.P17073540389709630440

namespace A017429

/-- `A017433(n)/A017426(n)²` -/
def P17073540389709630440.Spec : Prop :=
  ∀ n, P17073540389709630440.a n = (A017429 n : ℚ)

end A017429

/-! ## A017429.P8961487933704144402

`A017430(n)/(A017413(n)+1)`
-/

namespace A017429.P8961487933704144402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017430 n : ℚ) / (A017413 n + 1 : ℚ)

end

end A017429.P8961487933704144402

namespace A017429

/-- `A017430(n)/(A017413(n)+1)` -/
def P8961487933704144402.Spec : Prop :=
  ∀ n, P8961487933704144402.a n = (A017429 n : ℚ)

theorem P8961487933704144402.correct : P8961487933704144402.Spec := by
  intro n
  simp only [A017429, Nat.add_sub_cancel, A017429.P8961487933704144402.a, A017429.P2314429628448225399.a, A017413, A017413.P11529384767991400928.a, A017430, A017430.P6567619192077289923.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017429

/-! ## A017429.P17553534515872160865

`(A017413(n)+1)*A017426(n)²`
-/

namespace A017429.P17553534515872160865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017413 n + 1) * A017426 n ^ 2

end

end A017429.P17553534515872160865

namespace A017429

/-- `(A017413(n)+1)*A017426(n)²` -/
def P17553534515872160865.Spec : Prop :=
  ∀ n, P17553534515872160865.a n = A017429 n

theorem P17553534515872160865.correct : P17553534515872160865.Spec := by
  intro n
  simp only [A017429, Nat.add_sub_cancel, A017429.P17553534515872160865.a, A017429.P2314429628448225399.a, A017413, A017413.P11529384767991400928.a, A017426, A017426.P5106419471572726330.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017429

/-! ## A017429.P3048837004736113476

`(A017449(n)-2)*A017426(n)²`
-/

namespace A017429.P3048837004736113476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017449 n - 2) * A017426 n ^ 2

end

end A017429.P3048837004736113476

namespace A017429

/-- `(A017449(n)-2)*A017426(n)²` -/
def P3048837004736113476.Spec : Prop :=
  ∀ n, P3048837004736113476.a n = A017429 n

theorem P3048837004736113476.correct : P3048837004736113476.Spec := by
  intro n
  simp only [A017429, Nat.add_sub_cancel, A017429.P3048837004736113476.a, A017429.P2314429628448225399.a, A017426, A017426.P5106419471572726330.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017429

/-! ## A017429.P18361888288965433551

`abs((A016945(2*n)-n)^5)`
-/

namespace A017429.P18361888288965433551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016945 (2 * n) - (n : ℤ)) ^ 5|

end

end A017429.P18361888288965433551

namespace A017429

/-- `abs((A016945(2*n)-n)^5)` -/
def P18361888288965433551.Spec : Prop :=
  ∀ n, P18361888288965433551.a n = A017429 n

end A017429

/-! ## A017429.P5668854757340646558

`A299647(2*n+1)²²*A299647(2*n+1)`
-/

namespace A017429.P5668854757340646558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A299647 (2 * n + 1) ^ 2) ^ 2 * A299647 (2 * n + 1)

end

end A017429.P5668854757340646558

namespace A017429

/-- `A299647(2*n+1)²²*A299647(2*n+1)` -/
def P5668854757340646558.Spec : Prop :=
  ∀ n, P5668854757340646558.a n = A017429 n

end A017429

/-! ## A017429.P1964707562391466876

`A000584(11*n+3)`
-/

namespace A017429.P1964707562391466876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (11 * n + 3)

end

end A017429.P1964707562391466876

namespace A017429

/-- `A000584(11*n+3)` -/
def P1964707562391466876.Spec : Prop :=
  ∀ n, P1964707562391466876.a n = A017429 n

end A017429

/-! ## A017429.P7608557520674004670

`A258807(11*n+3)+1`
-/

namespace A017429.P7608557520674004670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258807 (11 * n + 3) + 1

end

end A017429.P7608557520674004670

namespace A017429

/-- `A258807(11*n+3)+1` -/
def P7608557520674004670.Spec : Prop :=
  ∀ n, P7608557520674004670.a n = A017429 n

theorem P7608557520674004670.correct : P7608557520674004670.Spec := by
  intro n
  simp only [A017429, Nat.add_sub_cancel, A017429.P7608557520674004670.a, A017429.P2314429628448225399.a, A258807, A258807.P3833737994083168200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017429

/-! ## A017429.P15786308904113971693

`A346007(A139611(n))`
-/

namespace A017429.P15786308904113971693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346007 (A139611 n).toNat

end

end A017429.P15786308904113971693

namespace A017429

/-- `A346007(A139611(n))` -/
def P15786308904113971693.Spec : Prop :=
  ∀ n, P15786308904113971693.a n = A017429 n

end A017429

/-!
# A017430: a(n) = (11*n + 3)^6.

The programs for A017430, the canonical program `A017430.P6567619192077289923` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017430 has offset 0).

The definition of A017430 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+3)^6` (program `A017430.P6567619192077289923`, by `A017430.P6567619192077289923.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017430.P6567619192077289923

`(11*n+3)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017430

/-- `(11*n+3)^6` -/
def P6567619192077289923.Spec : Prop :=
  ∀ n, (P6567619192077289923.a n : ℤ) = A017430 n

theorem P6567619192077289923.correct : P6567619192077289923.Spec := by
  intro n
  simp only [A017430]

end A017430

/-! ## A017430.P12532106531508818069

`((or(3, 12*n)-n)^3)²`
-/

namespace A017430.P12532106531508818069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.lor 3 (12 * n) : ℤ) - (n : ℤ)) ^ 3) ^ 2

end

end A017430.P12532106531508818069

namespace A017430

/-- `((or(3, 12*n)-n)^3)²` -/
def P12532106531508818069.Spec : Prop :=
  ∀ n, P12532106531508818069.a n = A017430 n

end A017430

/-! ## A017430.P18097177568207006104

`abs((or(3, 12*n)-n)^6)`
-/

namespace A017430.P18097177568207006104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.lor 3 (12 * n) : ℤ) - (n : ℤ)) ^ 6|

end

end A017430.P18097177568207006104

namespace A017430

/-- `abs((or(3, 12*n)-n)^6)` -/
def P18097177568207006104.Spec : Prop :=
  ∀ n, P18097177568207006104.a n = A017430 n

end A017430

/-! ## A017430.P15033675379207126823

`A017427(n)²`
-/

namespace A017430.P15033675379207126823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017427 n ^ 2

end

end A017430.P15033675379207126823

namespace A017430

/-- `A017427(n)²` -/
def P15033675379207126823.Spec : Prop :=
  ∀ n, P15033675379207126823.a n = A017430 n

theorem P15033675379207126823.correct : P15033675379207126823.Spec := by
  intro n
  simp only [A017430, Nat.add_sub_cancel, A017430.P15033675379207126823.a, A017430.P6567619192077289923.a, A017427, A017427.P5962536406076504421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017430

/-! ## A017430.P13634302946283984650

`A017429(n)*(11*n+3)`
-/

namespace A017430.P13634302946283984650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017429 n * (11 * n + 3 : ℤ)

end

end A017430.P13634302946283984650

namespace A017430

/-- `A017429(n)*(11*n+3)` -/
def P13634302946283984650.Spec : Prop :=
  ∀ n, P13634302946283984650.a n = A017430 n

theorem P13634302946283984650.correct : P13634302946283984650.Spec := by
  intro n
  simp only [A017430, Nat.add_sub_cancel, A017430.P13634302946283984650.a, A017430.P6567619192077289923.a, A017429, A017429.P2314429628448225399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017430

/-! ## A017430.P16039689606402665996

`A017425(n)*A017429(n)`
-/

namespace A017430.P16039689606402665996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n * A017429 n

end

end A017430.P16039689606402665996

namespace A017430

/-- `A017425(n)*A017429(n)` -/
def P16039689606402665996.Spec : Prop :=
  ∀ n, P16039689606402665996.a n = A017430 n

theorem P16039689606402665996.correct : P16039689606402665996.Spec := by
  intro n
  simp only [A017430, Nat.add_sub_cancel, A017430.P16039689606402665996.a, A017430.P6567619192077289923.a, A017425, A017425.P2855568862637286375.a, A017429, A017429.P2314429628448225399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017430

/-! ## A017430.P2025450609878905450

`A017426(n)*A017428(n)`
-/

namespace A017430.P2025450609878905450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017426 n * A017428 n

end

end A017430.P2025450609878905450

namespace A017430

/-- `A017426(n)*A017428(n)` -/
def P2025450609878905450.Spec : Prop :=
  ∀ n, P2025450609878905450.a n = A017430 n

theorem P2025450609878905450.correct : P2025450609878905450.Spec := by
  intro n
  simp only [A017430, Nat.add_sub_cancel, A017430.P2025450609878905450.a, A017430.P6567619192077289923.a, A017426, A017426.P5106419471572726330.a, A017428, A017428.P7582591564891883416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017430

/-! ## A017430.P12180414665546483735

`A017432(n)/A017426(n)`
-/

namespace A017430.P12180414665546483735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017432 n : ℚ) / (A017426 n : ℚ)

end

end A017430.P12180414665546483735

namespace A017430

/-- `A017432(n)/A017426(n)` -/
def P12180414665546483735.Spec : Prop :=
  ∀ n, P12180414665546483735.a n = (A017430 n : ℚ)

end A017430

/-! ## A017430.P16688619182824786611

`A017433(n)/A017427(n)`
-/

namespace A017430.P16688619182824786611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017433 n : ℚ) / (A017427 n : ℚ)

end

end A017430.P16688619182824786611

namespace A017430

/-- `A017433(n)/A017427(n)` -/
def P16688619182824786611.Spec : Prop :=
  ∀ n, P16688619182824786611.a n = (A017430 n : ℚ)

end A017430

/-! ## A017430.P13402255003752024477

`(A017425(n)*A017426(n))²`
-/

namespace A017430.P13402255003752024477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017425 n * A017426 n) ^ 2

end

end A017430.P13402255003752024477

namespace A017430

/-- `(A017425(n)*A017426(n))²` -/
def P13402255003752024477.Spec : Prop :=
  ∀ n, P13402255003752024477.a n = A017430 n

theorem P13402255003752024477.correct : P13402255003752024477.Spec := by
  intro n
  simp only [A017430, Nat.add_sub_cancel, A017430.P13402255003752024477.a, A017430.P6567619192077289923.a, A017425, A017425.P2855568862637286375.a, A017426, A017426.P5106419471572726330.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017430

/-! ## A017430.P9233310135587427536

`A017425(n)²*A017428(n)`
-/

namespace A017430.P9233310135587427536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n ^ 2 * A017428 n

end

end A017430.P9233310135587427536

namespace A017430

/-- `A017425(n)²*A017428(n)` -/
def P9233310135587427536.Spec : Prop :=
  ∀ n, P9233310135587427536.a n = A017430 n

theorem P9233310135587427536.correct : P9233310135587427536.Spec := by
  intro n
  simp only [A017430, Nat.add_sub_cancel, A017430.P9233310135587427536.a, A017430.P6567619192077289923.a, A017425, A017425.P2855568862637286375.a, A017428, A017428.P7582591564891883416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017430

/-! ## A017430.P8592161426367919207

`(A017429(n)/A017426(n))²`
-/

namespace A017430.P8592161426367919207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017429 n : ℚ) / (A017426 n : ℚ)) ^ 2

end

end A017430.P8592161426367919207

namespace A017430

/-- `(A017429(n)/A017426(n))²` -/
def P8592161426367919207.Spec : Prop :=
  ∀ n, P8592161426367919207.a n = (A017430 n : ℚ)

end A017430

/-! ## A017430.P12123578071286894311

`(A017432(n)/A017429(n))²`
-/

namespace A017430.P12123578071286894311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017432 n : ℚ) / (A017429 n : ℚ)) ^ 2

end

end A017430.P12123578071286894311

namespace A017430

/-- `(A017432(n)/A017429(n))²` -/
def P12123578071286894311.Spec : Prop :=
  ∀ n, P12123578071286894311.a n = (A017430 n : ℚ)

end A017430

/-! ## A017430.P9795464108532978310

`(A017437(n)-1)*A017429(n)`
-/

namespace A017430.P9795464108532978310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017437 n - 1) * A017429 n

end

end A017430.P9795464108532978310

namespace A017430

/-- `(A017437(n)-1)*A017429(n)` -/
def P9795464108532978310.Spec : Prop :=
  ∀ n, P9795464108532978310.a n = A017430 n

theorem P9795464108532978310.correct : P9795464108532978310.Spec := by
  intro n
  simp only [A017430, Nat.add_sub_cancel, A017430.P9795464108532978310.a, A017430.P6567619192077289923.a, A017429, A017429.P2314429628448225399.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017430

/-! ## A017430.P2480566344922370244

`A017432(n)/(A017413(n)+1)²`
-/

namespace A017430.P2480566344922370244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017432 n : ℚ) / ((A017413 n + 1) ^ 2 : ℚ)

end

end A017430.P2480566344922370244

namespace A017430

/-- `A017432(n)/(A017413(n)+1)²` -/
def P2480566344922370244.Spec : Prop :=
  ∀ n, P2480566344922370244.a n = (A017430 n : ℚ)

theorem P2480566344922370244.correct : P2480566344922370244.Spec := by
  intro n
  simp only [A017430, Nat.add_sub_cancel, A017430.P2480566344922370244.a, A017430.P6567619192077289923.a, A017413, A017413.P11529384767991400928.a, A017432, A017432.P4427599400347342277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017430

/-! ## A017430.P14352706722263865134

`(Δ[A226492(n)]^3)²`
-/

namespace A017430.P14352706722263865134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017430.P14352706722263865134

namespace A017430

/-- `(Δ[A226492(n)]^3)²` -/
def P14352706722263865134.Spec : Prop :=
  ∀ n, P14352706722263865134.a n = A017430 n

end A017430

/-! ## A017430.P18125991327068892496

`(A299647(2*n+1)²*A299647(2*n+1))²`
-/

namespace A017430.P18125991327068892496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A299647 (2 * n + 1) ^ 2 * A299647 (2 * n + 1)) ^ 2

end

end A017430.P18125991327068892496

namespace A017430

/-- `(A299647(2*n+1)²*A299647(2*n+1))²` -/
def P18125991327068892496.Spec : Prop :=
  ∀ n, P18125991327068892496.a n = A017430 n

end A017430

/-! ## A017430.P7987792119665400658

`A001014(11*n+3)`
-/

namespace A017430.P7987792119665400658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (11 * n + 3)

end

end A017430.P7987792119665400658

namespace A017430

/-- `A001014(11*n+3)` -/
def P7987792119665400658.Spec : Prop :=
  ∀ n, P7987792119665400658.a n = A017430 n

end A017430

/-! ## A017430.P3467948271769571144

`A000578(11*n+3)²`
-/

namespace A017430.P3467948271769571144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (11 * n + 3) ^ 2

end

end A017430.P3467948271769571144

namespace A017430

/-- `A000578(11*n+3)²` -/
def P3467948271769571144.Spec : Prop :=
  ∀ n, P3467948271769571144.a n = A017430 n

theorem P3467948271769571144.correct : P3467948271769571144.Spec := by
  intro n
  simp only [A017430, Nat.add_sub_cancel, A017430.P3467948271769571144.a, A017430.P6567619192077289923.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017430

/-! ## A017430.P30496125015094583

`A070931(A017449(n))`
-/

namespace A017430.P30496125015094583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070931 (A017449 n).toNat

end

end A017430.P30496125015094583

namespace A017430

/-- `A070931(A017449(n))` -/
def P30496125015094583.Spec : Prop :=
  ∀ n, P30496125015094583.a n = A017430 n

end A017430

/-!
# A017431: a(n) = (11*n + 3)^7.

The programs for A017431, the canonical program `A017431.P14103961129503137495` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017431 has offset 0).

The definition of A017431 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+3)^7` (program `A017431.P14103961129503137495`, by `A017431.P14103961129503137495.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017431.P14103961129503137495

`(11*n+3)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017431

/-- `(11*n+3)^7` -/
def P14103961129503137495.Spec : Prop :=
  ∀ n, (P14103961129503137495.a n : ℤ) = A017431 n

theorem P14103961129503137495.correct : P14103961129503137495.Spec := by
  intro n
  simp only [A017431]

end A017431

/-! ## A017431.P17676108291633208705

`A017425(n)*A017430(n)`
-/

namespace A017431.P17676108291633208705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n * A017430 n

end

end A017431.P17676108291633208705

namespace A017431

/-- `A017425(n)*A017430(n)` -/
def P17676108291633208705.Spec : Prop :=
  ∀ n, P17676108291633208705.a n = A017431 n

theorem P17676108291633208705.correct : P17676108291633208705.Spec := by
  intro n
  simp only [A017431, Nat.add_sub_cancel, A017431.P17676108291633208705.a, A017431.P14103961129503137495.a, A017425, A017425.P2855568862637286375.a, A017430, A017430.P6567619192077289923.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017431

/-! ## A017431.P6931222603687446278

`A017426(n)*A017429(n)`
-/

namespace A017431.P6931222603687446278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017426 n * A017429 n

end

end A017431.P6931222603687446278

namespace A017431

/-- `A017426(n)*A017429(n)` -/
def P6931222603687446278.Spec : Prop :=
  ∀ n, P6931222603687446278.a n = A017431 n

theorem P6931222603687446278.correct : P6931222603687446278.Spec := by
  intro n
  simp only [A017431, Nat.add_sub_cancel, A017431.P6931222603687446278.a, A017431.P14103961129503137495.a, A017426, A017426.P5106419471572726330.a, A017429, A017429.P2314429628448225399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017431

/-! ## A017431.P10935813541645789745

`A017427(n)*A017428(n)`
-/

namespace A017431.P10935813541645789745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017427 n * A017428 n

end

end A017431.P10935813541645789745

namespace A017431

/-- `A017427(n)*A017428(n)` -/
def P10935813541645789745.Spec : Prop :=
  ∀ n, P10935813541645789745.a n = A017431 n

theorem P10935813541645789745.correct : P10935813541645789745.Spec := by
  intro n
  simp only [A017431, Nat.add_sub_cancel, A017431.P10935813541645789745.a, A017431.P14103961129503137495.a, A017427, A017427.P5962536406076504421.a, A017428, A017428.P7582591564891883416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017431

/-! ## A017431.P11279179806439923179

`A017433(n)/A017426(n)`
-/

namespace A017431.P11279179806439923179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017433 n : ℚ) / (A017426 n : ℚ)

end

end A017431.P11279179806439923179

namespace A017431

/-- `A017433(n)/A017426(n)` -/
def P11279179806439923179.Spec : Prop :=
  ∀ n, P11279179806439923179.a n = (A017431 n : ℚ)

end A017431

/-! ## A017431.P16114221038159267444

`A017425(n)²*A017429(n)`
-/

namespace A017431.P16114221038159267444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n ^ 2 * A017429 n

end

end A017431.P16114221038159267444

namespace A017431

/-- `A017425(n)²*A017429(n)` -/
def P16114221038159267444.Spec : Prop :=
  ∀ n, P16114221038159267444.a n = A017431 n

theorem P16114221038159267444.correct : P16114221038159267444.Spec := by
  intro n
  simp only [A017431, Nat.add_sub_cancel, A017431.P16114221038159267444.a, A017431.P14103961129503137495.a, A017425, A017425.P2855568862637286375.a, A017429, A017429.P2314429628448225399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017431

/-! ## A017431.P16170053514801105640

`A017426(n)²*A017427(n)`
-/

namespace A017431.P16170053514801105640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017426 n ^ 2 * A017427 n

end

end A017431.P16170053514801105640

namespace A017431

/-- `A017426(n)²*A017427(n)` -/
def P16170053514801105640.Spec : Prop :=
  ∀ n, P16170053514801105640.a n = A017431 n

theorem P16170053514801105640.correct : P16170053514801105640.Spec := by
  intro n
  simp only [A017431, Nat.add_sub_cancel, A017431.P16170053514801105640.a, A017431.P14103961129503137495.a, A017426, A017426.P5106419471572726330.a, A017427, A017427.P5962536406076504421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017431

/-! ## A017431.P5621060653410166193

`A017427(n)²*A017425(n)`
-/

namespace A017431.P5621060653410166193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017427 n ^ 2 * A017425 n

end

end A017431.P5621060653410166193

namespace A017431

/-- `A017427(n)²*A017425(n)` -/
def P5621060653410166193.Spec : Prop :=
  ∀ n, P5621060653410166193.a n = A017431 n

theorem P5621060653410166193.correct : P5621060653410166193.Spec := by
  intro n
  simp only [A017431, Nat.add_sub_cancel, A017431.P5621060653410166193.a, A017431.P14103961129503137495.a, A017425, A017425.P2855568862637286375.a, A017427, A017427.P5962536406076504421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017431

/-! ## A017431.P15320811421842200656

`A017428(n)²/A017425(n)`
-/

namespace A017431.P15320811421842200656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017428 n ^ 2 : ℚ) / (A017425 n : ℚ)

end

end A017431.P15320811421842200656

namespace A017431

/-- `A017428(n)²/A017425(n)` -/
def P15320811421842200656.Spec : Prop :=
  ∀ n, P15320811421842200656.a n = (A017431 n : ℚ)

end A017431

/-! ## A017431.P3161880371030742338

`(A017413(n)+1)*A017430(n)`
-/

namespace A017431.P3161880371030742338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017413 n + 1) * A017430 n

end

end A017431.P3161880371030742338

namespace A017431

/-- `(A017413(n)+1)*A017430(n)` -/
def P3161880371030742338.Spec : Prop :=
  ∀ n, P3161880371030742338.a n = A017431 n

theorem P3161880371030742338.correct : P3161880371030742338.Spec := by
  intro n
  simp only [A017431, Nat.add_sub_cancel, A017431.P3161880371030742338.a, A017431.P14103961129503137495.a, A017413, A017413.P11529384767991400928.a, A017430, A017430.P6567619192077289923.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017431

/-! ## A017431.P4252495511698071295

`A017432(n)/(A017413(n)+1)`
-/

namespace A017431.P4252495511698071295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017432 n : ℚ) / (A017413 n + 1 : ℚ)

end

end A017431.P4252495511698071295

namespace A017431

/-- `A017432(n)/(A017413(n)+1)` -/
def P4252495511698071295.Spec : Prop :=
  ∀ n, P4252495511698071295.a n = (A017431 n : ℚ)

theorem P4252495511698071295.correct : P4252495511698071295.Spec := by
  intro n
  simp only [A017431, Nat.add_sub_cancel, A017431.P4252495511698071295.a, A017431.P14103961129503137495.a, A017413, A017413.P11529384767991400928.a, A017432, A017432.P4427599400347342277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017431

/-! ## A017431.P15923175228408694036

`A017426(n)²²/A017425(n)`
-/

namespace A017431.P15923175228408694036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017426 n ^ 2) ^ 2 : ℚ) / (A017425 n : ℚ)

end

end A017431.P15923175228408694036

namespace A017431

/-- `A017426(n)²²/A017425(n)` -/
def P15923175228408694036.Spec : Prop :=
  ∀ n, P15923175228408694036.a n = (A017431 n : ℚ)

end A017431

/-! ## A017431.P505103435244577683

`(1-A017437(n))²*A017429(n)`
-/

namespace A017431.P505103435244577683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A017437 n) ^ 2 * A017429 n

end

end A017431.P505103435244577683

namespace A017431

/-- `(1-A017437(n))²*A017429(n)` -/
def P505103435244577683.Spec : Prop :=
  ∀ n, P505103435244577683.a n = A017431 n

theorem P505103435244577683.correct : P505103435244577683.Spec := by
  intro n
  simp only [A017431, Nat.add_sub_cancel, A017431.P505103435244577683.a, A017431.P14103961129503137495.a, A017429, A017429.P2314429628448225399.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017431

/-! ## A017431.P4354042049819078196

`A017427(n)*A017429(n)/A017425(n)`
-/

namespace A017431.P4354042049819078196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017427 n * A017429 n : ℚ) / (A017425 n : ℚ)

end

end A017431.P4354042049819078196

namespace A017431

/-- `A017427(n)*A017429(n)/A017425(n)` -/
def P4354042049819078196.Spec : Prop :=
  ∀ n, P4354042049819078196.a n = (A017431 n : ℚ)

end A017431

/-! ## A017431.P9678351766654473863

`A001015(11*n+3)`
-/

namespace A017431.P9678351766654473863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (11 * n + 3)

end

end A017431.P9678351766654473863

namespace A017431

/-- `A001015(11*n+3)` -/
def P9678351766654473863.Spec : Prop :=
  ∀ n, P9678351766654473863.a n = A017431 n

end A017431

/-!
# A017432: a(n) = (11*n + 3)^8.

The programs for A017432, the canonical program `A017432.P4427599400347342277` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017432 has offset 0).

The definition of A017432 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+3)^8` (program `A017432.P4427599400347342277`, by `A017432.P4427599400347342277.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017432.P4427599400347342277

`(11*n+3)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017432

/-- `(11*n+3)^8` -/
def P4427599400347342277.Spec : Prop :=
  ∀ n, (P4427599400347342277.a n : ℤ) = A017432 n

theorem P4427599400347342277.correct : P4427599400347342277.Spec := by
  intro n
  simp only [A017432]

end A017432

/-! ## A017432.P717920201955814244

`A017428(n)²`
-/

namespace A017432.P717920201955814244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017428 n ^ 2

end

end A017432.P717920201955814244

namespace A017432

/-- `A017428(n)²` -/
def P717920201955814244.Spec : Prop :=
  ∀ n, P717920201955814244.a n = A017432 n

theorem P717920201955814244.correct : P717920201955814244.Spec := by
  intro n
  simp only [A017432, Nat.add_sub_cancel, A017432.P717920201955814244.a, A017432.P4427599400347342277.a, A017428, A017428.P7582591564891883416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017432

/-! ## A017432.P15845665636082120056

`A017426(n)²²`
-/

namespace A017432.P15845665636082120056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017426 n ^ 2) ^ 2

end

end A017432.P15845665636082120056

namespace A017432

/-- `A017426(n)²²` -/
def P15845665636082120056.Spec : Prop :=
  ∀ n, P15845665636082120056.a n = A017432 n

theorem P15845665636082120056.correct : P15845665636082120056.Spec := by
  intro n
  simp only [A017432, Nat.add_sub_cancel, A017432.P15845665636082120056.a, A017432.P4427599400347342277.a, A017426, A017426.P5106419471572726330.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017432

/-! ## A017432.P3817239874013446564

`A017425(n)²²²`
-/

namespace A017432.P3817239874013446564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017425 n ^ 2) ^ 2) ^ 2

end

end A017432.P3817239874013446564

namespace A017432

/-- `A017425(n)²²²` -/
def P3817239874013446564.Spec : Prop :=
  ∀ n, P3817239874013446564.a n = A017432 n

theorem P3817239874013446564.correct : P3817239874013446564.Spec := by
  intro n
  simp only [A017432, Nat.add_sub_cancel, A017432.P3817239874013446564.a, A017432.P4427599400347342277.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017432

/-! ## A017432.P6799583429936532778

`(A017413(n)+1)²²²`
-/

namespace A017432.P6799583429936532778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017413 n + 1) ^ 2) ^ 2) ^ 2

end

end A017432.P6799583429936532778

namespace A017432

/-- `(A017413(n)+1)²²²` -/
def P6799583429936532778.Spec : Prop :=
  ∀ n, P6799583429936532778.a n = A017432 n

theorem P6799583429936532778.correct : P6799583429936532778.Spec := by
  intro n
  simp only [A017432, Nat.add_sub_cancel, A017432.P6799583429936532778.a, A017432.P4427599400347342277.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017432

/-! ## A017432.P8537832262367216872

`(A017401(n)+2)²²²`
-/

namespace A017432.P8537832262367216872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017401 n + 2) ^ 2) ^ 2) ^ 2

end

end A017432.P8537832262367216872

namespace A017432

/-- `(A017401(n)+2)²²²` -/
def P8537832262367216872.Spec : Prop :=
  ∀ n, P8537832262367216872.a n = A017432 n

theorem P8537832262367216872.correct : P8537832262367216872.Spec := by
  intro n
  simp only [A017432, Nat.add_sub_cancel, A017432.P8537832262367216872.a, A017432.P4427599400347342277.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017432

/-! ## A017432.P14909439111132774547

`(1-A017437(n))²²²`
-/

namespace A017432.P14909439111132774547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017437 n) ^ 2) ^ 2) ^ 2

end

end A017432.P14909439111132774547

namespace A017432

/-- `(1-A017437(n))²²²` -/
def P14909439111132774547.Spec : Prop :=
  ∀ n, P14909439111132774547.a n = A017432 n

theorem P14909439111132774547.correct : P14909439111132774547.Spec := by
  intro n
  simp only [A017432, Nat.add_sub_cancel, A017432.P14909439111132774547.a, A017432.P4427599400347342277.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017432

/-! ## A017432.P6762923958803083364

`(2-A017449(n))²²²`
-/

namespace A017432.P6762923958803083364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017449 n) ^ 2) ^ 2) ^ 2

end

end A017432.P6762923958803083364

namespace A017432

/-- `(2-A017449(n))²²²` -/
def P6762923958803083364.Spec : Prop :=
  ∀ n, P6762923958803083364.a n = A017432 n

theorem P6762923958803083364.correct : P6762923958803083364.Spec := by
  intro n
  simp only [A017432, Nat.add_sub_cancel, A017432.P6762923958803083364.a, A017432.P4427599400347342277.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017432

/-! ## A017432.P644630795291859515

`(A017305(n)+n)²²²`
-/

namespace A017432.P644630795291859515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017305 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017432.P644630795291859515

namespace A017432

/-- `(A017305(n)+n)²²²` -/
def P644630795291859515.Spec : Prop :=
  ∀ n, P644630795291859515.a n = A017432 n

theorem P644630795291859515.correct : P644630795291859515.Spec := by
  intro n
  simp only [A017432, Nat.add_sub_cancel, A017432.P644630795291859515.a, A017432.P4427599400347342277.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017432

/-! ## A017432.P15525304000526527407

`(n-A017557(n))²²²`
-/

namespace A017432.P15525304000526527407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017557 n) ^ 2) ^ 2) ^ 2

end

end A017432.P15525304000526527407

namespace A017432

/-- `(n-A017557(n))²²²` -/
def P15525304000526527407.Spec : Prop :=
  ∀ n, P15525304000526527407.a n = A017432 n

theorem P15525304000526527407.correct : P15525304000526527407.Spec := by
  intro n
  simp only [A017432, Nat.add_sub_cancel, A017432.P15525304000526527407.a, A017432.P4427599400347342277.a, A017557, A017557.P7719209615978230604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017432

/-! ## A017432.P7664299647251159900

`(A008592(n)+n+3)²²²`
-/

namespace A017432.P7664299647251159900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008592 n + (n + 3 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017432.P7664299647251159900

namespace A017432

/-- `(A008592(n)+n+3)²²²` -/
def P7664299647251159900.Spec : Prop :=
  ∀ n, P7664299647251159900.a n = A017432 n

theorem P7664299647251159900.correct : P7664299647251159900.Spec := by
  intro n
  simp only [A017432, Nat.add_sub_cancel, A017432.P7664299647251159900.a, A017432.P4427599400347342277.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017432

/-! ## A017432.P15421989108507850831

`(n-4*A016777(n)+1)²²²`
-/

namespace A017432.P15421989108507850831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - 4 * A016777 n + 1) ^ 2) ^ 2) ^ 2

end

end A017432.P15421989108507850831

namespace A017432

/-- `(n-4*A016777(n)+1)²²²` -/
def P15421989108507850831.Spec : Prop :=
  ∀ n, P15421989108507850831.a n = A017432 n

theorem P15421989108507850831.correct : P15421989108507850831.Spec := by
  intro n
  simp only [A017432, Nat.add_sub_cancel, A017432.P15421989108507850831.a, A017432.P4427599400347342277.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017432

/-! ## A017432.P7081129008936329943

`A017426(n)*A017430(n)`
-/

namespace A017432.P7081129008936329943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017426 n * A017430 n

end

end A017432.P7081129008936329943

namespace A017432

/-- `A017426(n)*A017430(n)` -/
def P7081129008936329943.Spec : Prop :=
  ∀ n, P7081129008936329943.a n = A017432 n

theorem P7081129008936329943.correct : P7081129008936329943.Spec := by
  intro n
  simp only [A017432, Nat.add_sub_cancel, A017432.P7081129008936329943.a, A017432.P4427599400347342277.a, A017426, A017426.P5106419471572726330.a, A017430, A017430.P6567619192077289923.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017432

/-! ## A017432.P6822664551012794858

`A017427(n)*A017429(n)`
-/

namespace A017432.P6822664551012794858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017427 n * A017429 n

end

end A017432.P6822664551012794858

namespace A017432

/-- `A017427(n)*A017429(n)` -/
def P6822664551012794858.Spec : Prop :=
  ∀ n, P6822664551012794858.a n = A017432 n

theorem P6822664551012794858.correct : P6822664551012794858.Spec := by
  intro n
  simp only [A017432, Nat.add_sub_cancel, A017432.P6822664551012794858.a, A017432.P4427599400347342277.a, A017427, A017427.P5962536406076504421.a, A017429, A017429.P2314429628448225399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017432

/-! ## A017432.P4678851462663276173

`A017429(n)/A017426(n)*A017429(n)`
-/

namespace A017432.P4678851462663276173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017429 n : ℚ) / (A017426 n : ℚ) * (A017429 n : ℚ)

end

end A017432.P4678851462663276173

namespace A017432

/-- `A017429(n)/A017426(n)*A017429(n)` -/
def P4678851462663276173.Spec : Prop :=
  ∀ n, P4678851462663276173.a n = (A017432 n : ℚ)

end A017432

/-! ## A017432.P8842824339064602145

`Δ[A226492(n)]²²²`
-/

namespace A017432.P8842824339064602145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017432.P8842824339064602145

namespace A017432

/-- `Δ[A226492(n)]²²²` -/
def P8842824339064602145.Spec : Prop :=
  ∀ n, P8842824339064602145.a n = A017432 n

end A017432

/-! ## A017432.P12544212415331649048

`A299647(2*n+1)²²²`
-/

namespace A017432.P12544212415331649048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A299647 (2 * n + 1) ^ 2) ^ 2) ^ 2

end

end A017432.P12544212415331649048

namespace A017432

/-- `A299647(2*n+1)²²²` -/
def P12544212415331649048.Spec : Prop :=
  ∀ n, P12544212415331649048.a n = A017432 n

end A017432

/-! ## A017432.P4956617871498468995

`(A016945(2*n)-n)²²²`
-/

namespace A017432.P4956617871498468995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016945 (2 * n) - (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017432.P4956617871498468995

namespace A017432

/-- `(A016945(2*n)-n)²²²` -/
def P4956617871498468995.Spec : Prop :=
  ∀ n, P4956617871498468995.a n = A017432 n

theorem P4956617871498468995.correct : P4956617871498468995.Spec := by
  intro n
  simp only [A017432, Nat.add_sub_cancel, A017432.P4956617871498468995.a, A017432.P4427599400347342277.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017432

/-! ## A017432.P14140207972402034638

`A001016(11*n+3)`
-/

namespace A017432.P14140207972402034638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 (11 * n + 3)

end

end A017432.P14140207972402034638

namespace A017432

/-- `A001016(11*n+3)` -/
def P14140207972402034638.Spec : Prop :=
  ∀ n, P14140207972402034638.a n = A017432 n

end A017432

/-! ## A017432.P493457338742397947

`A000290(2*(n+1)+9*n+1)²²`
-/

namespace A017432.P493457338742397947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000290 (2 * (n + 1) + (9 * n + 1)) ^ 2) ^ 2

end

end A017432.P493457338742397947

namespace A017432

/-- `A000290(2*(n+1)+9*n+1)²²` -/
def P493457338742397947.Spec : Prop :=
  ∀ n, P493457338742397947.a n = A017432 n

theorem P493457338742397947.correct : P493457338742397947.Spec := by
  intro n
  simp only [A017432, Nat.add_sub_cancel, A017432.P493457338742397947.a, A017432.P4427599400347342277.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017432

/-!
# A017433: a(n) = (11*n + 3)^9.

The programs for A017433, the canonical program `A017433.P14735751620498626448` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017433 has offset 0).

The definition of A017433 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+3)^9` (program `A017433.P14735751620498626448`, by `A017433.P14735751620498626448.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017433.P14735751620498626448

`(11*n+3)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017433

/-- `(11*n+3)^9` -/
def P14735751620498626448.Spec : Prop :=
  ∀ n, (P14735751620498626448.a n : ℤ) = A017433 n

theorem P14735751620498626448.correct : P14735751620498626448.Spec := by
  intro n
  simp only [A017433]

end A017433

/-! ## A017433.P15815647623694958212

`A017427(n)*A017430(n)`
-/

namespace A017433.P15815647623694958212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017427 n * A017430 n

end

end A017433.P15815647623694958212

namespace A017433

/-- `A017427(n)*A017430(n)` -/
def P15815647623694958212.Spec : Prop :=
  ∀ n, P15815647623694958212.a n = A017433 n

theorem P15815647623694958212.correct : P15815647623694958212.Spec := by
  intro n
  simp only [A017433, Nat.add_sub_cancel, A017433.P15815647623694958212.a, A017433.P14735751620498626448.a, A017427, A017427.P5962536406076504421.a, A017430, A017430.P6567619192077289923.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017433

/-! ## A017433.P2779010417698916531

`A017428(n)*A017429(n)`
-/

namespace A017433.P2779010417698916531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017428 n * A017429 n

end

end A017433.P2779010417698916531

namespace A017433

/-- `A017428(n)*A017429(n)` -/
def P2779010417698916531.Spec : Prop :=
  ∀ n, P2779010417698916531.a n = A017433 n

theorem P2779010417698916531.correct : P2779010417698916531.Spec := by
  intro n
  simp only [A017433, Nat.add_sub_cancel, A017433.P2779010417698916531.a, A017433.P14735751620498626448.a, A017428, A017428.P7582591564891883416.a, A017429, A017429.P2314429628448225399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017433

/-! ## A017433.P15866306532235555518

`A017426(n)²*A017429(n)`
-/

namespace A017433.P15866306532235555518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017426 n ^ 2 * A017429 n

end

end A017433.P15866306532235555518

namespace A017433

/-- `A017426(n)²*A017429(n)` -/
def P15866306532235555518.Spec : Prop :=
  ∀ n, P15866306532235555518.a n = A017433 n

theorem P15866306532235555518.correct : P15866306532235555518.Spec := by
  intro n
  simp only [A017433, Nat.add_sub_cancel, A017433.P15866306532235555518.a, A017433.P14735751620498626448.a, A017426, A017426.P5106419471572726330.a, A017429, A017429.P2314429628448225399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017433

/-! ## A017433.P2581984936063884403

`A017425(n)*A017427(n)*A017429(n)`
-/

namespace A017433.P2581984936063884403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n * A017427 n * A017429 n

end

end A017433.P2581984936063884403

namespace A017433

/-- `A017425(n)*A017427(n)*A017429(n)` -/
def P2581984936063884403.Spec : Prop :=
  ∀ n, P2581984936063884403.a n = A017433 n

theorem P2581984936063884403.correct : P2581984936063884403.Spec := by
  intro n
  simp only [A017433, Nat.add_sub_cancel, A017433.P2581984936063884403.a, A017433.P14735751620498626448.a, A017425, A017425.P2855568862637286375.a, A017427, A017427.P5962536406076504421.a, A017429, A017429.P2314429628448225399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017433

/-! ## A017433.P10198004797291572373

`A001017(A017425(n))`
-/

namespace A017433.P10198004797291572373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017425 n).toNat

end

end A017433.P10198004797291572373

namespace A017433

/-- `A001017(A017425(n))` -/
def P10198004797291572373.Spec : Prop :=
  ∀ n, P10198004797291572373.a n = A017433 n

end A017433

/-!
# A017434: 

The programs for A017434, there is no canonical definition to state claims against.
-/

/-! ## A017434.P13419347983693995977

`(11*n+3)^10`
-/

namespace A017434.P13419347983693995977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 3) ^ 10

end

end A017434.P13419347983693995977

/-! ## A017434.P15867071528549677995

`(A017425(n)^5)²`
-/

namespace A017434.P15867071528549677995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017425 n ^ 5) ^ 2

end

end A017434.P15867071528549677995

/-! ## A017434.P9677685418777023057

`A008454(A008593(n)+3)`
-/

namespace A017434.P9677685418777023057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008593 n + 3).toNat

end

end A017434.P9677685418777023057

/-! ## A017434.P3840148397695395446

`A008454(A016945(2*n)-n)`
-/

namespace A017434.P3840148397695395446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016945 (2 * n) - (n : ℤ)).toNat

end

end A017434.P3840148397695395446

/-! ## A017434.P14033869696725104153

`A008454(A016873(2*n)+n+1)`
-/

namespace A017434.P14033869696725104153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016873 (2 * n) + (n + 1 : ℤ)).toNat

end

end A017434.P14033869696725104153

/-!
# A017435: 

The programs for A017435, there is no canonical definition to state claims against.
-/

/-! ## A017435.P12373518380044247319

`A017425(n)^11`
-/

namespace A017435.P12373518380044247319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n ^ 11

end

end A017435.P12373518380044247319

/-! ## A017435.P4424335542859284729

`Δ[A226492(n)]^11`
-/

namespace A017435.P4424335542859284729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 11

end

end A017435.P4424335542859284729

/-! ## A017435.P10788943345231794117

`sqrt(A017426(n)^11)`
-/

namespace A017435.P10788943345231794117
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017426 n ^ 11 : ℝ)

end

end A017435.P10788943345231794117

/-! ## A017435.P14340931983253135436

`A023443(A017437(n))^11`
-/

namespace A017435.P14340931983253135436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A017437 n).toNat ^ 11

end

end A017435.P14340931983253135436

/-! ## A017435.P16845888070551071261

`A289207(A017449(n))^11`
-/

namespace A017435.P16845888070551071261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A017449 n).toNat ^ 11

end

end A017435.P16845888070551071261

/-!
# A017436: 

The programs for A017436, there is no canonical definition to state claims against.
-/

/-! ## A017436.P8486309297516470622

`A017430(n)²`
-/

namespace A017436.P8486309297516470622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017430 n ^ 2

end

end A017436.P8486309297516470622

/-! ## A017436.P10894868037805955368

`A017428(n)^3`
-/

namespace A017436.P10894868037805955368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017428 n ^ 3

end

end A017436.P10894868037805955368

/-! ## A017436.P4634380664975420799

`A017427(n)^4`
-/

namespace A017436.P4634380664975420799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017427 n ^ 4

end

end A017436.P4634380664975420799

/-! ## A017436.P9811488580050081541

`A017426(n)^6`
-/

namespace A017436.P9811488580050081541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017426 n ^ 6

end

end A017436.P9811488580050081541

/-! ## A017436.P15336941751270695435

`A017425(n)^12`
-/

namespace A017436.P15336941751270695435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n ^ 12

end

end A017436.P15336941751270695435

/-!
# A017437: a(n) = 11*n + 4.

The programs for A017437, the canonical program `A017437.P10409157242345038154` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017437 has offset 0).

The definition of A017437 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*n+4` (program `A017437.P10409157242345038154`, by `A017437.P10409157242345038154.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017437.P10409157242345038154

`11*n+4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017437

/-- `11*n+4` -/
def P10409157242345038154.Spec : Prop :=
  ∀ n, (P10409157242345038154.a n : ℤ) = A017437 n

theorem P10409157242345038154.correct : P10409157242345038154.Spec := by
  intro n
  simp only [A017437]

end A017437

/-!
# A017438: a(n) = (11*n + 4)^2.

The programs for A017438, the canonical program `A017438.P10301325170580427455` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017438 has offset 0).

The definition of A017438 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+4)²` (program `A017438.P10301325170580427455`, by `A017438.P10301325170580427455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017438.P10301325170580427455

`(11*n+4)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017438

/-- `(11*n+4)²` -/
def P10301325170580427455.Spec : Prop :=
  ∀ n, (P10301325170580427455.a n : ℤ) = A017438 n

theorem P10301325170580427455.correct : P10301325170580427455.Spec := by
  intro n
  simp only [A017438]

end A017438

/-! ## A017438.P3433676154451239782

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=16, a(1)=225, a(2)=676`
-/

namespace A017438.P3433676154451239782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 225, 676] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017438.P3433676154451239782

namespace A017438

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3433676154451239782.Spec : Prop :=
  ∀ n, P3433676154451239782.a n = A017438 n

theorem P3433676154451239782.correct : P3433676154451239782.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017438, Nat.add_sub_cancel, A017438.P3433676154451239782.a, A017438.P10301325170580427455.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017438, Nat.add_sub_cancel, A017438.P3433676154451239782.a, A017438.P10301325170580427455.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017438

/-! ## A017438.P13492959959866319221

`sqrt(A017440(n))`
-/

namespace A017438.P13492959959866319221
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017440 n : ℝ)

end

end A017438.P13492959959866319221

namespace A017438

/-- `sqrt(A017440(n))` -/
def P13492959959866319221.Spec : Prop :=
  ∀ n, P13492959959866319221.a n = (A017438 n : ℝ)

end A017438

/-! ## A017438.P697078704029455153

`A017437(n)^2`
-/

namespace A017438.P697078704029455153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n ^ 2

end

end A017438.P697078704029455153

namespace A017438

/-- `A017437(n)^2` -/
def P697078704029455153.Spec : Prop :=
  ∀ n, P697078704029455153.a n = A017438 n

theorem P697078704029455153.correct : P697078704029455153.Spec := by
  intro n
  simp only [A017438, Nat.add_sub_cancel, A017438.P697078704029455153.a, A017438.P10301325170580427455.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017438

/-! ## A017438.P16756665057568954081

`sqrt(sqrt(A017444(n)))`
-/

namespace A017438.P16756665057568954081
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017444 n : ℝ))

end

end A017438.P16756665057568954081

namespace A017438

/-- `sqrt(sqrt(A017444(n)))` -/
def P16756665057568954081.Spec : Prop :=
  ∀ n, P16756665057568954081.a n = (A017438 n : ℝ)

end A017438

/-! ## A017438.P14951351571245897689

`A017442(n)^(1/3)`
-/

namespace A017438.P14951351571245897689
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017442 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017438.P14951351571245897689

namespace A017438

/-- `A017442(n)^(1/3)` -/
def P14951351571245897689.Spec : Prop :=
  ∀ n, P14951351571245897689.a n = (A017438 n : ℝ)

end A017438

/-! ## A017438.P8315008050301092792

`A017439(n)^(2/3)`
-/

namespace A017438.P8315008050301092792
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017439 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017438.P8315008050301092792

namespace A017438

/-- `A017439(n)^(2/3)` -/
def P8315008050301092792.Spec : Prop :=
  ∀ n, P8315008050301092792.a n = (A017438 n : ℝ)

end A017438

/-! ## A017438.P7666791884989509804

`abs(2-(A008592(n)+n+4)²)+2`
-/

namespace A017438.P7666791884989509804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A008592 n + (n + 4 : ℤ)) ^ 2| + 2

end

end A017438.P7666791884989509804

namespace A017438

/-- `abs(2-(A008592(n)+n+4)²)+2` -/
def P7666791884989509804.Spec : Prop :=
  ∀ n, P7666791884989509804.a n = A017438 n

end A017438

/-! ## A017438.P10405507219960407270

`A017439(n)/A017437(n)`
-/

namespace A017438.P10405507219960407270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017439 n : ℚ) / (A017437 n : ℚ)

end

end A017438.P10405507219960407270

namespace A017438

/-- `A017439(n)/A017437(n)` -/
def P10405507219960407270.Spec : Prop :=
  ∀ n, P10405507219960407270.a n = (A017438 n : ℚ)

end A017438

/-! ## A017438.P723524850897304296

`A017441(n)/A017439(n)`
-/

namespace A017438.P723524850897304296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017441 n : ℚ) / (A017439 n : ℚ)

end

end A017438.P723524850897304296

namespace A017438

/-- `A017441(n)/A017439(n)` -/
def P723524850897304296.Spec : Prop :=
  ∀ n, P723524850897304296.a n = (A017438 n : ℚ)

end A017438

/-! ## A017438.P1898950947167618752

`A017442(n)/A017440(n)`
-/

namespace A017438.P1898950947167618752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017442 n : ℚ) / (A017440 n : ℚ)

end

end A017438.P1898950947167618752

namespace A017438

/-- `A017442(n)/A017440(n)` -/
def P1898950947167618752.Spec : Prop :=
  ∀ n, P1898950947167618752.a n = (A017438 n : ℚ)

end A017438

/-! ## A017438.P530527022344114348

`A017443(n)/A017441(n)`
-/

namespace A017438.P530527022344114348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017443 n : ℚ) / (A017441 n : ℚ)

end

end A017438.P530527022344114348

namespace A017438

/-- `A017443(n)/A017441(n)` -/
def P530527022344114348.Spec : Prop :=
  ∀ n, P530527022344114348.a n = (A017438 n : ℚ)

end A017438

/-! ## A017438.P7157207736794849759

`A017444(n)/A017442(n)`
-/

namespace A017438.P7157207736794849759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017444 n : ℚ) / (A017442 n : ℚ)

end

end A017438.P7157207736794849759

namespace A017438

/-- `A017444(n)/A017442(n)` -/
def P7157207736794849759.Spec : Prop :=
  ∀ n, P7157207736794849759.a n = (A017438 n : ℚ)

end A017438

/-! ## A017438.P17346317095789514347

`A017445(n)/A017443(n)`
-/

namespace A017438.P17346317095789514347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017445 n : ℚ) / (A017443 n : ℚ)

end

end A017438.P17346317095789514347

namespace A017438

/-- `A017445(n)/A017443(n)` -/
def P17346317095789514347.Spec : Prop :=
  ∀ n, P17346317095789514347.a n = (A017438 n : ℚ)

end A017438

/-! ## A017438.P1576706429286091225

`A017439(n)²/A017440(n)`
-/

namespace A017438.P1576706429286091225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017439 n ^ 2 : ℚ) / (A017440 n : ℚ)

end

end A017438.P1576706429286091225

namespace A017438

/-- `A017439(n)²/A017440(n)` -/
def P1576706429286091225.Spec : Prop :=
  ∀ n, P1576706429286091225.a n = (A017438 n : ℚ)

end A017438

/-! ## A017438.P1315419226834824840

`A017444(n)/A017439(n)²`
-/

namespace A017438.P1315419226834824840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017444 n : ℚ) / (A017439 n ^ 2 : ℚ)

end

end A017438.P1315419226834824840

namespace A017438

/-- `A017444(n)/A017439(n)²` -/
def P1315419226834824840.Spec : Prop :=
  ∀ n, P1315419226834824840.a n = (A017438 n : ℚ)

end A017438

/-! ## A017438.P10772874442672536635

`A017437(n)²%A017450(n)`
-/

namespace A017438.P10772874442672536635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017437 n ^ 2) (A017450 n)

end

end A017438.P10772874442672536635

namespace A017438

/-- `A017437(n)²%A017450(n)` -/
def P10772874442672536635.Spec : Prop :=
  ∀ n, P10772874442672536635.a n = A017438 n

end A017438

/-! ## A017438.P6629156463572495636

`A017442(n)/A017437(n)²²`
-/

namespace A017438.P6629156463572495636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017442 n : ℚ) / ((A017437 n ^ 2) ^ 2 : ℚ)

end

end A017438.P6629156463572495636

namespace A017438

/-- `A017442(n)/A017437(n)²²` -/
def P6629156463572495636.Spec : Prop :=
  ∀ n, P6629156463572495636.a n = (A017438 n : ℚ)

end A017438

/-! ## A017438.P6479135079644330307

`A017461(n)+A017413(n)*A017449(n)`
-/

namespace A017438.P6479135079644330307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n + A017413 n * A017449 n

end

end A017438.P6479135079644330307

namespace A017438

/-- `A017461(n)+A017413(n)*A017449(n)` -/
def P6479135079644330307.Spec : Prop :=
  ∀ n, P6479135079644330307.a n = A017438 n

theorem P6479135079644330307.correct : P6479135079644330307.Spec := by
  intro n
  simp only [A017438, Nat.add_sub_cancel, A017438.P6479135079644330307.a, A017438.P10301325170580427455.a, A017413, A017413.P11529384767991400928.a, A017449, A017449.P2551254521878161710.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017438

/-! ## A017438.P15447424832092556430

`A017425(n)*A017461(n)-A017413(n)`
-/

namespace A017438.P15447424832092556430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n * A017461 n - A017413 n

end

end A017438.P15447424832092556430

namespace A017438

/-- `A017425(n)*A017461(n)-A017413(n)` -/
def P15447424832092556430.Spec : Prop :=
  ∀ n, P15447424832092556430.a n = A017438 n

theorem P15447424832092556430.correct : P15447424832092556430.Spec := by
  intro n
  simp only [A017438, Nat.add_sub_cancel, A017438.P15447424832092556430.a, A017438.P10301325170580427455.a, A017413, A017413.P11529384767991400928.a, A017425, A017425.P2855568862637286375.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017438

/-!
# A017439: a(n) = (11*n + 4)^3.

The programs for A017439, the canonical program `A017439.P9110168289680559285` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017439 has offset 0).

The definition of A017439 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+4)^3` (program `A017439.P9110168289680559285`, by `A017439.P9110168289680559285.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017439.P9110168289680559285

`(11*n+4)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017439

/-- `(11*n+4)^3` -/
def P9110168289680559285.Spec : Prop :=
  ∀ n, (P9110168289680559285.a n : ℤ) = A017439 n

theorem P9110168289680559285.correct : P9110168289680559285.Spec := by
  intro n
  simp only [A017439]

end A017439

/-! ## A017439.P9762741185952198356

`sqrt(A017442(n))`
-/

namespace A017439.P9762741185952198356
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017442 n : ℝ)

end

end A017439.P9762741185952198356

namespace A017439

/-- `sqrt(A017442(n))` -/
def P9762741185952198356.Spec : Prop :=
  ∀ n, P9762741185952198356.a n = (A017439 n : ℝ)

end A017439

/-! ## A017439.P13049220196147826828

`sqrt(A017438(n)^3)`
-/

namespace A017439.P13049220196147826828
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017438 n ^ 3 : ℝ)

end

end A017439.P13049220196147826828

namespace A017439

/-- `sqrt(A017438(n)^3)` -/
def P13049220196147826828.Spec : Prop :=
  ∀ n, P13049220196147826828.a n = (A017439 n : ℝ)

end A017439

/-! ## A017439.P16082670069647750069

`A017437(n)*A017438(n)`
-/

namespace A017439.P16082670069647750069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n * A017438 n

end

end A017439.P16082670069647750069

namespace A017439

/-- `A017437(n)*A017438(n)` -/
def P16082670069647750069.Spec : Prop :=
  ∀ n, P16082670069647750069.a n = A017439 n

theorem P16082670069647750069.correct : P16082670069647750069.Spec := by
  intro n
  simp only [A017439, Nat.add_sub_cancel, A017439.P16082670069647750069.a, A017439.P9110168289680559285.a, A017437, A017437.P10409157242345038154.a, A017438, A017438.P10301325170580427455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017439

/-! ## A017439.P17755596114702835663

`A017440(n)/A017437(n)`
-/

namespace A017439.P17755596114702835663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017440 n : ℚ) / (A017437 n : ℚ)

end

end A017439.P17755596114702835663

namespace A017439

/-- `A017440(n)/A017437(n)` -/
def P17755596114702835663.Spec : Prop :=
  ∀ n, P17755596114702835663.a n = (A017439 n : ℚ)

end A017439

/-! ## A017439.P3109181039594447898

`A017441(n)/A017438(n)`
-/

namespace A017439.P3109181039594447898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017441 n : ℚ) / (A017438 n : ℚ)

end

end A017439.P3109181039594447898

namespace A017439

/-- `A017441(n)/A017438(n)` -/
def P3109181039594447898.Spec : Prop :=
  ∀ n, P3109181039594447898.a n = (A017439 n : ℚ)

end A017439

/-! ## A017439.P17275796342830900962

`A017443(n)/A017440(n)`
-/

namespace A017439.P17275796342830900962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017443 n : ℚ) / (A017440 n : ℚ)

end

end A017439.P17275796342830900962

namespace A017439

/-- `A017443(n)/A017440(n)` -/
def P17275796342830900962.Spec : Prop :=
  ∀ n, P17275796342830900962.a n = (A017439 n : ℚ)

end A017439

/-! ## A017439.P3866834151619634032

`A017444(n)/A017441(n)`
-/

namespace A017439.P3866834151619634032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017444 n : ℚ) / (A017441 n : ℚ)

end

end A017439.P3866834151619634032

namespace A017439

/-- `A017444(n)/A017441(n)` -/
def P3866834151619634032.Spec : Prop :=
  ∀ n, P3866834151619634032.a n = (A017439 n : ℚ)

end A017439

/-! ## A017439.P12822310561218442246

`A017445(n)/A017442(n)`
-/

namespace A017439.P12822310561218442246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017445 n : ℚ) / (A017442 n : ℚ)

end

end A017439.P12822310561218442246

namespace A017439

/-- `A017445(n)/A017442(n)` -/
def P12822310561218442246.Spec : Prop :=
  ∀ n, P12822310561218442246.a n = (A017439 n : ℚ)

end A017439

/-! ## A017439.P14790237256554834496

`A017440(n)²/A017441(n)`
-/

namespace A017439.P14790237256554834496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017440 n ^ 2 : ℚ) / (A017441 n : ℚ)

end

end A017439.P14790237256554834496

namespace A017439

/-- `A017440(n)²/A017441(n)` -/
def P14790237256554834496.Spec : Prop :=
  ∀ n, P14790237256554834496.a n = (A017439 n : ℚ)

end A017439

/-! ## A017439.P10978994296805721990

`A017441(n)/A017437(n)²`
-/

namespace A017439.P10978994296805721990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017441 n : ℚ) / (A017437 n ^ 2 : ℚ)

end

end A017439.P10978994296805721990

namespace A017439

/-- `A017441(n)/A017437(n)²` -/
def P10978994296805721990.Spec : Prop :=
  ∀ n, P10978994296805721990.a n = (A017439 n : ℚ)

end A017439

/-! ## A017439.P12732635525466375883

`A017443(n)/A017438(n)²`
-/

namespace A017439.P12732635525466375883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017443 n : ℚ) / (A017438 n ^ 2 : ℚ)

end

end A017439.P12732635525466375883

namespace A017439

/-- `A017443(n)/A017438(n)²` -/
def P12732635525466375883.Spec : Prop :=
  ∀ n, P12732635525466375883.a n = (A017439 n : ℚ)

end A017439

/-! ## A017439.P1242733974646410133

`(A017425(n)+1)*A017438(n)`
-/

namespace A017439.P1242733974646410133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017425 n + 1) * A017438 n

end

end A017439.P1242733974646410133

namespace A017439

/-- `(A017425(n)+1)*A017438(n)` -/
def P1242733974646410133.Spec : Prop :=
  ∀ n, P1242733974646410133.a n = A017439 n

theorem P1242733974646410133.correct : P1242733974646410133.Spec := by
  intro n
  simp only [A017439, Nat.add_sub_cancel, A017439.P1242733974646410133.a, A017439.P9110168289680559285.a, A017425, A017425.P2855568862637286375.a, A017438, A017438.P10301325170580427455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017439

/-! ## A017439.P1097368465311701156

`A017440(n)/(A017425(n)+1)`
-/

namespace A017439.P1097368465311701156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017440 n : ℚ) / (A017425 n + 1 : ℚ)

end

end A017439.P1097368465311701156

namespace A017439

/-- `A017440(n)/(A017425(n)+1)` -/
def P1097368465311701156.Spec : Prop :=
  ∀ n, P1097368465311701156.a n = (A017439 n : ℚ)

theorem P1097368465311701156.correct : P1097368465311701156.Spec := by
  intro n
  simp only [A017439, Nat.add_sub_cancel, A017439.P1097368465311701156.a, A017439.P9110168289680559285.a, A017425, A017425.P2855568862637286375.a, A017440, A017440.P7887673629828701987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017439

/-! ## A017439.P8395690930401869238

`A017443(n)/A017437(n)²²`
-/

namespace A017439.P8395690930401869238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017443 n : ℚ) / ((A017437 n ^ 2) ^ 2 : ℚ)

end

end A017439.P8395690930401869238

namespace A017439

/-- `A017443(n)/A017437(n)²²` -/
def P8395690930401869238.Spec : Prop :=
  ∀ n, P8395690930401869238.a n = (A017439 n : ℚ)

end A017439

/-! ## A017439.P5840064601498619158

`A017441(n)/(A017425(n)+1)²`
-/

namespace A017439.P5840064601498619158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017441 n : ℚ) / ((A017425 n + 1) ^ 2 : ℚ)

end

end A017439.P5840064601498619158

namespace A017439

/-- `A017441(n)/(A017425(n)+1)²` -/
def P5840064601498619158.Spec : Prop :=
  ∀ n, P5840064601498619158.a n = (A017439 n : ℚ)

theorem P5840064601498619158.correct : P5840064601498619158.Spec := by
  intro n
  simp only [A017439, Nat.add_sub_cancel, A017439.P5840064601498619158.a, A017439.P9110168289680559285.a, A017425, A017425.P2855568862637286375.a, A017441, A017441.P6612316806926504406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017439

/-!
# A017440: a(n) = (11*n + 4)^4.

The programs for A017440, the canonical program `A017440.P7887673629828701987` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017440 has offset 0).

The definition of A017440 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+4)^4` (program `A017440.P7887673629828701987`, by `A017440.P7887673629828701987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017440.P7887673629828701987

`(11*n+4)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017440

/-- `(11*n+4)^4` -/
def P7887673629828701987.Spec : Prop :=
  ∀ n, (P7887673629828701987.a n : ℤ) = A017440 n

theorem P7887673629828701987.correct : P7887673629828701987.Spec := by
  intro n
  simp only [A017440]

end A017440

/-! ## A017440.P5684513820543764799

`A017438(n)²`
-/

namespace A017440.P5684513820543764799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017438 n ^ 2

end

end A017440.P5684513820543764799

namespace A017440

/-- `A017438(n)²` -/
def P5684513820543764799.Spec : Prop :=
  ∀ n, P5684513820543764799.a n = A017440 n

theorem P5684513820543764799.correct : P5684513820543764799.Spec := by
  intro n
  simp only [A017440, Nat.add_sub_cancel, A017440.P5684513820543764799.a, A017440.P7887673629828701987.a, A017438, A017438.P10301325170580427455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017440

/-! ## A017440.P13821214243217020780

`sqrt(A017444(n))`
-/

namespace A017440.P13821214243217020780
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017444 n : ℝ)

end

end A017440.P13821214243217020780

namespace A017440

/-- `sqrt(A017444(n))` -/
def P13821214243217020780.Spec : Prop :=
  ∀ n, P13821214243217020780.a n = (A017440 n : ℝ)

end A017440

/-! ## A017440.P88049246349583521

`A017437(n)²²`
-/

namespace A017440.P88049246349583521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017437 n ^ 2) ^ 2

end

end A017440.P88049246349583521

namespace A017440

/-- `A017437(n)²²` -/
def P88049246349583521.Spec : Prop :=
  ∀ n, P88049246349583521.a n = A017440 n

theorem P88049246349583521.correct : P88049246349583521.Spec := by
  intro n
  simp only [A017440, Nat.add_sub_cancel, A017440.P88049246349583521.a, A017440.P7887673629828701987.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017440

/-! ## A017440.P4058881674128768320

`(A017425(n)+1)²²`
-/

namespace A017440.P4058881674128768320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017425 n + 1) ^ 2) ^ 2

end

end A017440.P4058881674128768320

namespace A017440

/-- `(A017425(n)+1)²²` -/
def P4058881674128768320.Spec : Prop :=
  ∀ n, P4058881674128768320.a n = A017440 n

theorem P4058881674128768320.correct : P4058881674128768320.Spec := by
  intro n
  simp only [A017440, Nat.add_sub_cancel, A017440.P4058881674128768320.a, A017440.P7887673629828701987.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017440

/-! ## A017440.P17029581226288454928

`(A017413(n)+2)²²`
-/

namespace A017440.P17029581226288454928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017413 n + 2) ^ 2) ^ 2

end

end A017440.P17029581226288454928

namespace A017440

/-- `(A017413(n)+2)²²` -/
def P17029581226288454928.Spec : Prop :=
  ∀ n, P17029581226288454928.a n = A017440 n

theorem P17029581226288454928.correct : P17029581226288454928.Spec := by
  intro n
  simp only [A017440, Nat.add_sub_cancel, A017440.P17029581226288454928.a, A017440.P7887673629828701987.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017440

/-! ## A017440.P10757983350435539145

`(1-A017449(n))²²`
-/

namespace A017440.P10757983350435539145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017449 n) ^ 2) ^ 2

end

end A017440.P10757983350435539145

namespace A017440

/-- `(1-A017449(n))²²` -/
def P10757983350435539145.Spec : Prop :=
  ∀ n, P10757983350435539145.a n = A017440 n

theorem P10757983350435539145.correct : P10757983350435539145.Spec := by
  intro n
  simp only [A017440, Nat.add_sub_cancel, A017440.P10757983350435539145.a, A017440.P7887673629828701987.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017440

/-! ## A017440.P9496029965946344426

`(A017401(n)+3)²²`
-/

namespace A017440.P9496029965946344426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017401 n + 3) ^ 2) ^ 2

end

end A017440.P9496029965946344426

namespace A017440

/-- `(A017401(n)+3)²²` -/
def P9496029965946344426.Spec : Prop :=
  ∀ n, P9496029965946344426.a n = A017440 n

theorem P9496029965946344426.correct : P9496029965946344426.Spec := by
  intro n
  simp only [A017440, Nat.add_sub_cancel, A017440.P9496029965946344426.a, A017440.P7887673629828701987.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017440

/-! ## A017440.P3238578577220216914

`(2-A017461(n))²²`
-/

namespace A017440.P3238578577220216914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017461 n) ^ 2) ^ 2

end

end A017440.P3238578577220216914

namespace A017440

/-- `(2-A017461(n))²²` -/
def P3238578577220216914.Spec : Prop :=
  ∀ n, P3238578577220216914.a n = A017440 n

theorem P3238578577220216914.correct : P3238578577220216914.Spec := by
  intro n
  simp only [A017440, Nat.add_sub_cancel, A017440.P3238578577220216914.a, A017440.P7887673629828701987.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017440

/-! ## A017440.P12388428989687725337

`(3-A017473(n))²²`
-/

namespace A017440.P12388428989687725337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017473 n) ^ 2) ^ 2

end

end A017440.P12388428989687725337

namespace A017440

/-- `(3-A017473(n))²²` -/
def P12388428989687725337.Spec : Prop :=
  ∀ n, P12388428989687725337.a n = A017440 n

theorem P12388428989687725337.correct : P12388428989687725337.Spec := by
  intro n
  simp only [A017440, Nat.add_sub_cancel, A017440.P12388428989687725337.a, A017440.P7887673629828701987.a, A017473, A017473.P6794540674081733570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017440

/-! ## A017440.P11312794406968897965

`(A017317(n)+n)²²`
-/

namespace A017440.P11312794406968897965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017317 n + (n : ℤ)) ^ 2) ^ 2

end

end A017440.P11312794406968897965

namespace A017440

/-- `(A017317(n)+n)²²` -/
def P11312794406968897965.Spec : Prop :=
  ∀ n, P11312794406968897965.a n = A017440 n

theorem P11312794406968897965.correct : P11312794406968897965.Spec := by
  intro n
  simp only [A017440, Nat.add_sub_cancel, A017440.P11312794406968897965.a, A017440.P7887673629828701987.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017440

/-! ## A017440.P14204317727745156761

`(n-A017569(n))²²`
-/

namespace A017440.P14204317727745156761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017569 n) ^ 2) ^ 2

end

end A017440.P14204317727745156761

namespace A017440

/-- `(n-A017569(n))²²` -/
def P14204317727745156761.Spec : Prop :=
  ∀ n, P14204317727745156761.a n = A017440 n

theorem P14204317727745156761.correct : P14204317727745156761.Spec := by
  intro n
  simp only [A017440, Nat.add_sub_cancel, A017440.P14204317727745156761.a, A017440.P7887673629828701987.a, A017569, A017569.P14340039372117997380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017440

/-! ## A017440.P8541344591352575579

`(sqrt(A017426(n))+1)²²`
-/

namespace A017440.P8541344591352575579
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017426 n : ℝ) + 1) ^ 2) ^ 2

end

end A017440.P8541344591352575579

namespace A017440

/-- `(sqrt(A017426(n))+1)²²` -/
def P8541344591352575579.Spec : Prop :=
  ∀ n, P8541344591352575579.a n = (A017440 n : ℝ)

end A017440

/-! ## A017440.P14008375045417959526

`(sqrt(A017414(n))+2)²²`
-/

namespace A017440.P14008375045417959526
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017414 n : ℝ) + 2) ^ 2) ^ 2

end

end A017440.P14008375045417959526

namespace A017440

/-- `(sqrt(A017414(n))+2)²²` -/
def P14008375045417959526.Spec : Prop :=
  ∀ n, P14008375045417959526.a n = (A017440 n : ℝ)

end A017440

/-! ## A017440.P17193570884054680121

`(1-sqrt(A017450(n)))²²`
-/

namespace A017440.P17193570884054680121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017450 n : ℝ)) ^ 2) ^ 2

end

end A017440.P17193570884054680121

namespace A017440

/-- `(1-sqrt(A017450(n)))²²` -/
def P17193570884054680121.Spec : Prop :=
  ∀ n, P17193570884054680121.a n = (A017440 n : ℝ)

end A017440

/-! ## A017440.P3679635545439743949

`(2-sqrt(A017462(n)))²²`
-/

namespace A017440.P3679635545439743949
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - Real.sqrt (A017462 n : ℝ)) ^ 2) ^ 2

end

end A017440.P3679635545439743949

namespace A017440

/-- `(2-sqrt(A017462(n)))²²` -/
def P3679635545439743949.Spec : Prop :=
  ∀ n, P3679635545439743949.a n = (A017440 n : ℝ)

end A017440

/-! ## A017440.P1251149440209885813

`(Δ[A180223(n)]+2)²²`
-/

namespace A017440.P1251149440209885813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n + 2) ^ 2) ^ 2

end

end A017440.P1251149440209885813

namespace A017440

/-- `(Δ[A180223(n)]+2)²²` -/
def P1251149440209885813.Spec : Prop :=
  ∀ n, P1251149440209885813.a n = A017440 n

end A017440

/-! ## A017440.P17563009644093638864

`(sqrt(A017318(n))+n)²²`
-/

namespace A017440.P17563009644093638864
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017318 n : ℝ) + (n : ℝ)) ^ 2) ^ 2

end

end A017440.P17563009644093638864

namespace A017440

/-- `(sqrt(A017318(n))+n)²²` -/
def P17563009644093638864.Spec : Prop :=
  ∀ n, P17563009644093638864.a n = (A017440 n : ℝ)

end A017440

/-! ## A017440.P5741599697580617660

`(n-sqrt(A017570(n)))²²`
-/

namespace A017440.P5741599697580617660
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) - Real.sqrt (A017570 n : ℝ)) ^ 2) ^ 2

end

end A017440.P5741599697580617660

namespace A017440

/-- `(n-sqrt(A017570(n)))²²` -/
def P5741599697580617660.Spec : Prop :=
  ∀ n, P5741599697580617660.a n = (A017440 n : ℝ)

end A017440

/-! ## A017440.P1287610922411394991

`(A017305(n)+n+1)²²`
-/

namespace A017440.P1287610922411394991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017305 n + (n + 1 : ℤ)) ^ 2) ^ 2

end

end A017440.P1287610922411394991

namespace A017440

/-- `(A017305(n)+n+1)²²` -/
def P1287610922411394991.Spec : Prop :=
  ∀ n, P1287610922411394991.a n = A017440 n

theorem P1287610922411394991.correct : P1287610922411394991.Spec := by
  intro n
  simp only [A017440, Nat.add_sub_cancel, A017440.P1287610922411394991.a, A017440.P7887673629828701987.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017440

/-!
# A017441: a(n) = (11*n + 4)^5.

The programs for A017441, the canonical program `A017441.P6612316806926504406` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017441 has offset 0).

The definition of A017441 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+4)^5` (program `A017441.P6612316806926504406`, by `A017441.P6612316806926504406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017441.P6612316806926504406

`(11*n+4)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017441

/-- `(11*n+4)^5` -/
def P6612316806926504406.Spec : Prop :=
  ∀ n, (P6612316806926504406.a n : ℤ) = A017441 n

theorem P6612316806926504406.correct : P6612316806926504406.Spec := by
  intro n
  simp only [A017441]

end A017441

/-! ## A017441.P11105033638870380916

`sqrt(A017438(n)^5)`
-/

namespace A017441.P11105033638870380916
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017438 n ^ 5 : ℝ)

end

end A017441.P11105033638870380916

namespace A017441

/-- `sqrt(A017438(n)^5)` -/
def P11105033638870380916.Spec : Prop :=
  ∀ n, P11105033638870380916.a n = (A017441 n : ℝ)

end A017441

/-! ## A017441.P5250056556628993262

`A017437(n)*A017440(n)`
-/

namespace A017441.P5250056556628993262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n * A017440 n

end

end A017441.P5250056556628993262

namespace A017441

/-- `A017437(n)*A017440(n)` -/
def P5250056556628993262.Spec : Prop :=
  ∀ n, P5250056556628993262.a n = A017441 n

theorem P5250056556628993262.correct : P5250056556628993262.Spec := by
  intro n
  simp only [A017441, Nat.add_sub_cancel, A017441.P5250056556628993262.a, A017441.P6612316806926504406.a, A017437, A017437.P10409157242345038154.a, A017440, A017440.P7887673629828701987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017441

/-! ## A017441.P3652043281530639918

`A017438(n)*A017439(n)`
-/

namespace A017441.P3652043281530639918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017438 n * A017439 n

end

end A017441.P3652043281530639918

namespace A017441

/-- `A017438(n)*A017439(n)` -/
def P3652043281530639918.Spec : Prop :=
  ∀ n, P3652043281530639918.a n = A017441 n

theorem P3652043281530639918.correct : P3652043281530639918.Spec := by
  intro n
  simp only [A017441, Nat.add_sub_cancel, A017441.P3652043281530639918.a, A017441.P6612316806926504406.a, A017438, A017438.P10301325170580427455.a, A017439, A017439.P9110168289680559285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017441

/-! ## A017441.P13088925775566760315

`A017442(n)/A017437(n)`
-/

namespace A017441.P13088925775566760315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017442 n : ℚ) / (A017437 n : ℚ)

end

end A017441.P13088925775566760315

namespace A017441

/-- `A017442(n)/A017437(n)` -/
def P13088925775566760315.Spec : Prop :=
  ∀ n, P13088925775566760315.a n = (A017441 n : ℚ)

end A017441

/-! ## A017441.P14517938307090444675

`A017443(n)/A017438(n)`
-/

namespace A017441.P14517938307090444675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017443 n : ℚ) / (A017438 n : ℚ)

end

end A017441.P14517938307090444675

namespace A017441

/-- `A017443(n)/A017438(n)` -/
def P14517938307090444675.Spec : Prop :=
  ∀ n, P14517938307090444675.a n = (A017441 n : ℚ)

end A017441

/-! ## A017441.P2664940432055158926

`A017444(n)/A017439(n)`
-/

namespace A017441.P2664940432055158926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017444 n : ℚ) / (A017439 n : ℚ)

end

end A017441.P2664940432055158926

namespace A017441

/-- `A017444(n)/A017439(n)` -/
def P2664940432055158926.Spec : Prop :=
  ∀ n, P2664940432055158926.a n = (A017441 n : ℚ)

end A017441

/-! ## A017441.P17316254294992188960

`A017445(n)/A017440(n)`
-/

namespace A017441.P17316254294992188960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017445 n : ℚ) / (A017440 n : ℚ)

end

end A017441.P17316254294992188960

namespace A017441

/-- `A017445(n)/A017440(n)` -/
def P17316254294992188960.Spec : Prop :=
  ∀ n, P17316254294992188960.a n = (A017441 n : ℚ)

end A017441

/-! ## A017441.P10976921935315263287

`A017437(n)²*A017439(n)`
-/

namespace A017441.P10976921935315263287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n ^ 2 * A017439 n

end

end A017441.P10976921935315263287

namespace A017441

/-- `A017437(n)²*A017439(n)` -/
def P10976921935315263287.Spec : Prop :=
  ∀ n, P10976921935315263287.a n = A017441 n

theorem P10976921935315263287.correct : P10976921935315263287.Spec := by
  intro n
  simp only [A017441, Nat.add_sub_cancel, A017441.P10976921935315263287.a, A017441.P6612316806926504406.a, A017437, A017437.P10409157242345038154.a, A017439, A017439.P9110168289680559285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017441

/-! ## A017441.P14453077407394043075

`A017438(n)²*A017437(n)`
-/

namespace A017441.P14453077407394043075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017438 n ^ 2 * A017437 n

end

end A017441.P14453077407394043075

namespace A017441

/-- `A017438(n)²*A017437(n)` -/
def P14453077407394043075.Spec : Prop :=
  ∀ n, P14453077407394043075.a n = A017441 n

theorem P14453077407394043075.correct : P14453077407394043075.Spec := by
  intro n
  simp only [A017441, Nat.add_sub_cancel, A017441.P14453077407394043075.a, A017441.P6612316806926504406.a, A017437, A017437.P10409157242345038154.a, A017438, A017438.P10301325170580427455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017441

/-! ## A017441.P17053108815309888176

`A017440(n)²/A017439(n)`
-/

namespace A017441.P17053108815309888176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017440 n ^ 2 : ℚ) / (A017439 n : ℚ)

end

end A017441.P17053108815309888176

namespace A017441

/-- `A017440(n)²/A017439(n)` -/
def P17053108815309888176.Spec : Prop :=
  ∀ n, P17053108815309888176.a n = (A017441 n : ℚ)

end A017441

/-! ## A017441.P10912830944214149819

`A017442(n)²/A017443(n)`
-/

namespace A017441.P10912830944214149819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017442 n ^ 2 : ℚ) / (A017443 n : ℚ)

end

end A017441.P10912830944214149819

namespace A017441

/-- `A017442(n)²/A017443(n)` -/
def P10912830944214149819.Spec : Prop :=
  ∀ n, P10912830944214149819.a n = (A017441 n : ℚ)

end A017441

/-! ## A017441.P8365718593019175989

`A017443(n)/A017437(n)²`
-/

namespace A017441.P8365718593019175989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017443 n : ℚ) / (A017437 n ^ 2 : ℚ)

end

end A017441.P8365718593019175989

namespace A017441

/-- `A017443(n)/A017437(n)²` -/
def P8365718593019175989.Spec : Prop :=
  ∀ n, P8365718593019175989.a n = (A017441 n : ℚ)

end A017441

/-! ## A017441.P16588079818136712681

`A017445(n)/A017438(n)²`
-/

namespace A017441.P16588079818136712681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017445 n : ℚ) / (A017438 n ^ 2 : ℚ)

end

end A017441.P16588079818136712681

namespace A017441

/-- `A017445(n)/A017438(n)²` -/
def P16588079818136712681.Spec : Prop :=
  ∀ n, P16588079818136712681.a n = (A017441 n : ℚ)

end A017441

/-! ## A017441.P2724105613487027073

`(A017425(n)+1)*A017440(n)`
-/

namespace A017441.P2724105613487027073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017425 n + 1) * A017440 n

end

end A017441.P2724105613487027073

namespace A017441

/-- `(A017425(n)+1)*A017440(n)` -/
def P2724105613487027073.Spec : Prop :=
  ∀ n, P2724105613487027073.a n = A017441 n

theorem P2724105613487027073.correct : P2724105613487027073.Spec := by
  intro n
  simp only [A017441, Nat.add_sub_cancel, A017441.P2724105613487027073.a, A017441.P6612316806926504406.a, A017425, A017425.P2855568862637286375.a, A017440, A017440.P7887673629828701987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017441

/-! ## A017441.P9287892288180841878

`A017442(n)/(A017449(n)-1)`
-/

namespace A017441.P9287892288180841878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017442 n : ℚ) / (A017449 n - 1 : ℚ)

end

end A017441.P9287892288180841878

namespace A017441

/-- `A017442(n)/(A017449(n)-1)` -/
def P9287892288180841878.Spec : Prop :=
  ∀ n, P9287892288180841878.a n = (A017441 n : ℚ)

end A017441

/-!
# A017442: a(n) = (11*n + 4)^6.

The programs for A017442, the canonical program `A017442.P8547152198293829921` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017442 has offset 0).

The definition of A017442 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+4)^6` (program `A017442.P8547152198293829921`, by `A017442.P8547152198293829921.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017442.P8547152198293829921

`(11*n+4)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017442

/-- `(11*n+4)^6` -/
def P8547152198293829921.Spec : Prop :=
  ∀ n, (P8547152198293829921.a n : ℤ) = A017442 n

theorem P8547152198293829921.correct : P8547152198293829921.Spec := by
  intro n
  simp only [A017442]

end A017442

/-! ## A017442.P1677723142046482221

`A017439(n)²`
-/

namespace A017442.P1677723142046482221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017439 n ^ 2

end

end A017442.P1677723142046482221

namespace A017442

/-- `A017439(n)²` -/
def P1677723142046482221.Spec : Prop :=
  ∀ n, P1677723142046482221.a n = A017442 n

theorem P1677723142046482221.correct : P1677723142046482221.Spec := by
  intro n
  simp only [A017442, Nat.add_sub_cancel, A017442.P1677723142046482221.a, A017442.P8547152198293829921.a, A017439, A017439.P9110168289680559285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017442

/-! ## A017442.P10847130049579559100

`(A017437(n)^3)²`
-/

namespace A017442.P10847130049579559100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017437 n ^ 3) ^ 2

end

end A017442.P10847130049579559100

namespace A017442

/-- `(A017437(n)^3)²` -/
def P10847130049579559100.Spec : Prop :=
  ∀ n, P10847130049579559100.a n = A017442 n

theorem P10847130049579559100.correct : P10847130049579559100.Spec := by
  intro n
  simp only [A017442, Nat.add_sub_cancel, A017442.P10847130049579559100.a, A017442.P8547152198293829921.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017442

/-! ## A017442.P17139646123795730223

`sqrt(A017440(n)^3)`
-/

namespace A017442.P17139646123795730223
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017440 n ^ 3 : ℝ)

end

end A017442.P17139646123795730223

namespace A017442

/-- `sqrt(A017440(n)^3)` -/
def P17139646123795730223.Spec : Prop :=
  ∀ n, P17139646123795730223.a n = (A017442 n : ℝ)

end A017442

/-! ## A017442.P11531947207005864513

`A017437(n)*A017441(n)`
-/

namespace A017442.P11531947207005864513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n * A017441 n

end

end A017442.P11531947207005864513

namespace A017442

/-- `A017437(n)*A017441(n)` -/
def P11531947207005864513.Spec : Prop :=
  ∀ n, P11531947207005864513.a n = A017442 n

theorem P11531947207005864513.correct : P11531947207005864513.Spec := by
  intro n
  simp only [A017442, Nat.add_sub_cancel, A017442.P11531947207005864513.a, A017442.P8547152198293829921.a, A017437, A017437.P10409157242345038154.a, A017441, A017441.P6612316806926504406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017442

/-! ## A017442.P13180079779176677368

`A017438(n)*A017440(n)`
-/

namespace A017442.P13180079779176677368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017438 n * A017440 n

end

end A017442.P13180079779176677368

namespace A017442

/-- `A017438(n)*A017440(n)` -/
def P13180079779176677368.Spec : Prop :=
  ∀ n, P13180079779176677368.a n = A017442 n

theorem P13180079779176677368.correct : P13180079779176677368.Spec := by
  intro n
  simp only [A017442, Nat.add_sub_cancel, A017442.P13180079779176677368.a, A017442.P8547152198293829921.a, A017438, A017438.P10301325170580427455.a, A017440, A017440.P7887673629828701987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017442

/-! ## A017442.P13297634647932986861

`A017443(n)/A017437(n)`
-/

namespace A017442.P13297634647932986861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017443 n : ℚ) / (A017437 n : ℚ)

end

end A017442.P13297634647932986861

namespace A017442

/-- `A017443(n)/A017437(n)` -/
def P13297634647932986861.Spec : Prop :=
  ∀ n, P13297634647932986861.a n = (A017442 n : ℚ)

end A017442

/-! ## A017442.P4452562164389829662

`A017444(n)/A017438(n)`
-/

namespace A017442.P4452562164389829662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017444 n : ℚ) / (A017438 n : ℚ)

end

end A017442.P4452562164389829662

namespace A017442

/-- `A017444(n)/A017438(n)` -/
def P4452562164389829662.Spec : Prop :=
  ∀ n, P4452562164389829662.a n = (A017442 n : ℚ)

end A017442

/-! ## A017442.P2325925139616100428

`A017445(n)/A017439(n)`
-/

namespace A017442.P2325925139616100428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017445 n : ℚ) / (A017439 n : ℚ)

end

end A017442.P2325925139616100428

namespace A017442

/-- `A017445(n)/A017439(n)` -/
def P2325925139616100428.Spec : Prop :=
  ∀ n, P2325925139616100428.a n = (A017442 n : ℚ)

end A017442

/-! ## A017442.P17261851913142699086

`(A017437(n)*A017438(n))²`
-/

namespace A017442.P17261851913142699086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017437 n * A017438 n) ^ 2

end

end A017442.P17261851913142699086

namespace A017442

/-- `(A017437(n)*A017438(n))²` -/
def P17261851913142699086.Spec : Prop :=
  ∀ n, P17261851913142699086.a n = A017442 n

theorem P17261851913142699086.correct : P17261851913142699086.Spec := by
  intro n
  simp only [A017442, Nat.add_sub_cancel, A017442.P17261851913142699086.a, A017442.P8547152198293829921.a, A017437, A017437.P10409157242345038154.a, A017438, A017438.P10301325170580427455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017442

/-! ## A017442.P4191384072386561332

`A017437(n)²*A017440(n)`
-/

namespace A017442.P4191384072386561332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n ^ 2 * A017440 n

end

end A017442.P4191384072386561332

namespace A017442

/-- `A017437(n)²*A017440(n)` -/
def P4191384072386561332.Spec : Prop :=
  ∀ n, P4191384072386561332.a n = A017442 n

theorem P4191384072386561332.correct : P4191384072386561332.Spec := by
  intro n
  simp only [A017442, Nat.add_sub_cancel, A017442.P4191384072386561332.a, A017442.P8547152198293829921.a, A017437, A017437.P10409157242345038154.a, A017440, A017440.P7887673629828701987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017442

/-! ## A017442.P13621183005920154534

`(A017441(n)/A017438(n))²`
-/

namespace A017442.P13621183005920154534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017441 n : ℚ) / (A017438 n : ℚ)) ^ 2

end

end A017442.P13621183005920154534

namespace A017442

/-- `(A017441(n)/A017438(n))²` -/
def P13621183005920154534.Spec : Prop :=
  ∀ n, P13621183005920154534.a n = (A017442 n : ℚ)

end A017442

/-! ## A017442.P6027744878670182469

`A017441(n)²/A017440(n)`
-/

namespace A017442.P6027744878670182469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017441 n ^ 2 : ℚ) / (A017440 n : ℚ)

end

end A017442.P6027744878670182469

namespace A017442

/-- `A017441(n)²/A017440(n)` -/
def P6027744878670182469.Spec : Prop :=
  ∀ n, P6027744878670182469.a n = (A017442 n : ℚ)

end A017442

/-! ## A017442.P11301379832683211294

`(A017443(n)/A017440(n))²`
-/

namespace A017442.P11301379832683211294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017443 n : ℚ) / (A017440 n : ℚ)) ^ 2

end

end A017442.P11301379832683211294

namespace A017442

/-- `(A017443(n)/A017440(n))²` -/
def P11301379832683211294.Spec : Prop :=
  ∀ n, P11301379832683211294.a n = (A017442 n : ℚ)

end A017442

/-! ## A017442.P4064258896761469614

`A017444(n)/A017437(n)²`
-/

namespace A017442.P4064258896761469614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017444 n : ℚ) / (A017437 n ^ 2 : ℚ)

end

end A017442.P4064258896761469614

namespace A017442

/-- `A017444(n)/A017437(n)²` -/
def P4064258896761469614.Spec : Prop :=
  ∀ n, P4064258896761469614.a n = (A017442 n : ℚ)

end A017442

/-! ## A017442.P6976566308556405815

`(A017444(n)/A017441(n))²`
-/

namespace A017442.P6976566308556405815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017444 n : ℚ) / (A017441 n : ℚ)) ^ 2

end

end A017442.P6976566308556405815

namespace A017442

/-- `(A017444(n)/A017441(n))²` -/
def P6976566308556405815.Spec : Prop :=
  ∀ n, P6976566308556405815.a n = (A017442 n : ℚ)

end A017442

/-!
# A017443: a(n) = (11*n + 4)^7.

The programs for A017443, the canonical program `A017443.P5498171787824606494` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017443 has offset 0).

The definition of A017443 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+4)^7` (program `A017443.P5498171787824606494`, by `A017443.P5498171787824606494.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017443.P5498171787824606494

`(11*n+4)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017443

/-- `(11*n+4)^7` -/
def P5498171787824606494.Spec : Prop :=
  ∀ n, (P5498171787824606494.a n : ℤ) = A017443 n

theorem P5498171787824606494.correct : P5498171787824606494.Spec := by
  intro n
  simp only [A017443]

end A017443

/-! ## A017443.P5698694279246558627

`A017437(n)*A017442(n)`
-/

namespace A017443.P5698694279246558627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n * A017442 n

end

end A017443.P5698694279246558627

namespace A017443

/-- `A017437(n)*A017442(n)` -/
def P5698694279246558627.Spec : Prop :=
  ∀ n, P5698694279246558627.a n = A017443 n

theorem P5698694279246558627.correct : P5698694279246558627.Spec := by
  intro n
  simp only [A017443, Nat.add_sub_cancel, A017443.P5698694279246558627.a, A017443.P5498171787824606494.a, A017437, A017437.P10409157242345038154.a, A017442, A017442.P8547152198293829921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017443

/-! ## A017443.P4546242280337224407

`A017438(n)*A017441(n)`
-/

namespace A017443.P4546242280337224407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017438 n * A017441 n

end

end A017443.P4546242280337224407

namespace A017443

/-- `A017438(n)*A017441(n)` -/
def P4546242280337224407.Spec : Prop :=
  ∀ n, P4546242280337224407.a n = A017443 n

theorem P4546242280337224407.correct : P4546242280337224407.Spec := by
  intro n
  simp only [A017443, Nat.add_sub_cancel, A017443.P4546242280337224407.a, A017443.P5498171787824606494.a, A017438, A017438.P10301325170580427455.a, A017441, A017441.P6612316806926504406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017443

/-! ## A017443.P507681754734164804

`A017439(n)*A017440(n)`
-/

namespace A017443.P507681754734164804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017439 n * A017440 n

end

end A017443.P507681754734164804

namespace A017443

/-- `A017439(n)*A017440(n)` -/
def P507681754734164804.Spec : Prop :=
  ∀ n, P507681754734164804.a n = A017443 n

theorem P507681754734164804.correct : P507681754734164804.Spec := by
  intro n
  simp only [A017443, Nat.add_sub_cancel, A017443.P507681754734164804.a, A017443.P5498171787824606494.a, A017439, A017439.P9110168289680559285.a, A017440, A017440.P7887673629828701987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017443

/-! ## A017443.P17665607389477058372

`A017444(n)/A017437(n)`
-/

namespace A017443.P17665607389477058372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017444 n : ℚ) / (A017437 n : ℚ)

end

end A017443.P17665607389477058372

namespace A017443

/-- `A017444(n)/A017437(n)` -/
def P17665607389477058372.Spec : Prop :=
  ∀ n, P17665607389477058372.a n = (A017443 n : ℚ)

end A017443

/-! ## A017443.P9724628486409931324

`A017445(n)/A017438(n)`
-/

namespace A017443.P9724628486409931324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017445 n : ℚ) / (A017438 n : ℚ)

end

end A017443.P9724628486409931324

namespace A017443

/-- `A017445(n)/A017438(n)` -/
def P9724628486409931324.Spec : Prop :=
  ∀ n, P9724628486409931324.a n = (A017443 n : ℚ)

end A017443

/-! ## A017443.P3872061930025411936

`A017437(n)²*A017441(n)`
-/

namespace A017443.P3872061930025411936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n ^ 2 * A017441 n

end

end A017443.P3872061930025411936

namespace A017443

/-- `A017437(n)²*A017441(n)` -/
def P3872061930025411936.Spec : Prop :=
  ∀ n, P3872061930025411936.a n = A017443 n

theorem P3872061930025411936.correct : P3872061930025411936.Spec := by
  intro n
  simp only [A017443, Nat.add_sub_cancel, A017443.P3872061930025411936.a, A017443.P5498171787824606494.a, A017437, A017437.P10409157242345038154.a, A017441, A017441.P6612316806926504406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017443

/-! ## A017443.P7358393302491867034

`A017438(n)²*A017439(n)`
-/

namespace A017443.P7358393302491867034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017438 n ^ 2 * A017439 n

end

end A017443.P7358393302491867034

namespace A017443

/-- `A017438(n)²*A017439(n)` -/
def P7358393302491867034.Spec : Prop :=
  ∀ n, P7358393302491867034.a n = A017443 n

theorem P7358393302491867034.correct : P7358393302491867034.Spec := by
  intro n
  simp only [A017443, Nat.add_sub_cancel, A017443.P7358393302491867034.a, A017443.P5498171787824606494.a, A017438, A017438.P10301325170580427455.a, A017439, A017439.P9110168289680559285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017443

/-! ## A017443.P13663162178403151401

`A017439(n)²*A017437(n)`
-/

namespace A017443.P13663162178403151401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017439 n ^ 2 * A017437 n

end

end A017443.P13663162178403151401

namespace A017443

/-- `A017439(n)²*A017437(n)` -/
def P13663162178403151401.Spec : Prop :=
  ∀ n, P13663162178403151401.a n = A017443 n

theorem P13663162178403151401.correct : P13663162178403151401.Spec := by
  intro n
  simp only [A017443, Nat.add_sub_cancel, A017443.P13663162178403151401.a, A017443.P5498171787824606494.a, A017437, A017437.P10409157242345038154.a, A017439, A017439.P9110168289680559285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017443

/-! ## A017443.P8212163088262018531

`A017440(n)²/A017437(n)`
-/

namespace A017443.P8212163088262018531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017440 n ^ 2 : ℚ) / (A017437 n : ℚ)

end

end A017443.P8212163088262018531

namespace A017443

/-- `A017440(n)²/A017437(n)` -/
def P8212163088262018531.Spec : Prop :=
  ∀ n, P8212163088262018531.a n = (A017443 n : ℚ)

end A017443

/-! ## A017443.P10913188131084668757

`A017441(n)²/A017439(n)`
-/

namespace A017443.P10913188131084668757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017441 n ^ 2 : ℚ) / (A017439 n : ℚ)

end

end A017443.P10913188131084668757

namespace A017443

/-- `A017441(n)²/A017439(n)` -/
def P10913188131084668757.Spec : Prop :=
  ∀ n, P10913188131084668757.a n = (A017443 n : ℚ)

end A017443

/-! ## A017443.P15212534994663547091

`A017442(n)²/A017441(n)`
-/

namespace A017443.P15212534994663547091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017442 n ^ 2 : ℚ) / (A017441 n : ℚ)

end

end A017443.P15212534994663547091

namespace A017443

/-- `A017442(n)²/A017441(n)` -/
def P15212534994663547091.Spec : Prop :=
  ∀ n, P15212534994663547091.a n = (A017443 n : ℚ)

end A017443

/-! ## A017443.P2341049423218791576

`A017445(n)/A017437(n)²`
-/

namespace A017443.P2341049423218791576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017445 n : ℚ) / (A017437 n ^ 2 : ℚ)

end

end A017443.P2341049423218791576

namespace A017443

/-- `A017445(n)/A017437(n)²` -/
def P2341049423218791576.Spec : Prop :=
  ∀ n, P2341049423218791576.a n = (A017443 n : ℚ)

end A017443

/-! ## A017443.P4678664010200723884

`(A017449(n)-1)*A017442(n)`
-/

namespace A017443.P4678664010200723884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017449 n - 1) * A017442 n

end

end A017443.P4678664010200723884

namespace A017443

/-- `(A017449(n)-1)*A017442(n)` -/
def P4678664010200723884.Spec : Prop :=
  ∀ n, P4678664010200723884.a n = A017443 n

theorem P4678664010200723884.correct : P4678664010200723884.Spec := by
  intro n
  simp only [A017443, Nat.add_sub_cancel, A017443.P4678664010200723884.a, A017443.P5498171787824606494.a, A017442, A017442.P8547152198293829921.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017443

/-! ## A017443.P5620755664060473381

`A017438(n)²²/A017437(n)`
-/

namespace A017443.P5620755664060473381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017438 n ^ 2) ^ 2 : ℚ) / (A017437 n : ℚ)

end

end A017443.P5620755664060473381

namespace A017443

/-- `A017438(n)²²/A017437(n)` -/
def P5620755664060473381.Spec : Prop :=
  ∀ n, P5620755664060473381.a n = (A017443 n : ℚ)

end A017443

/-!
# A017444: a(n) = (11*n + 4)^8.

The programs for A017444, the canonical program `A017444.P4854202197909504885` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017444 has offset 0).

The definition of A017444 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+4)^8` (program `A017444.P4854202197909504885`, by `A017444.P4854202197909504885.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017444.P4854202197909504885

`(11*n+4)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017444

/-- `(11*n+4)^8` -/
def P4854202197909504885.Spec : Prop :=
  ∀ n, (P4854202197909504885.a n : ℤ) = A017444 n

theorem P4854202197909504885.correct : P4854202197909504885.Spec := by
  intro n
  simp only [A017444]

end A017444

/-! ## A017444.P4006299509727313441

`A017440(n)²`
-/

namespace A017444.P4006299509727313441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017440 n ^ 2

end

end A017444.P4006299509727313441

namespace A017444

/-- `A017440(n)²` -/
def P4006299509727313441.Spec : Prop :=
  ∀ n, P4006299509727313441.a n = A017444 n

theorem P4006299509727313441.correct : P4006299509727313441.Spec := by
  intro n
  simp only [A017444, Nat.add_sub_cancel, A017444.P4006299509727313441.a, A017444.P4854202197909504885.a, A017440, A017440.P7887673629828701987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017444

/-! ## A017444.P7533538313411171890

`A017438(n)²²`
-/

namespace A017444.P7533538313411171890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017438 n ^ 2) ^ 2

end

end A017444.P7533538313411171890

namespace A017444

/-- `A017438(n)²²` -/
def P7533538313411171890.Spec : Prop :=
  ∀ n, P7533538313411171890.a n = A017444 n

theorem P7533538313411171890.correct : P7533538313411171890.Spec := by
  intro n
  simp only [A017444, Nat.add_sub_cancel, A017444.P7533538313411171890.a, A017444.P4854202197909504885.a, A017438, A017438.P10301325170580427455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017444

/-! ## A017444.P3150601703446403231

`A017437(n)²²²`
-/

namespace A017444.P3150601703446403231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017437 n ^ 2) ^ 2) ^ 2

end

end A017444.P3150601703446403231

namespace A017444

/-- `A017437(n)²²²` -/
def P3150601703446403231.Spec : Prop :=
  ∀ n, P3150601703446403231.a n = A017444 n

theorem P3150601703446403231.correct : P3150601703446403231.Spec := by
  intro n
  simp only [A017444, Nat.add_sub_cancel, A017444.P3150601703446403231.a, A017444.P4854202197909504885.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017444

/-! ## A017444.P5767754924763206664

`(A017425(n)+1)²²²`
-/

namespace A017444.P5767754924763206664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017425 n + 1) ^ 2) ^ 2) ^ 2

end

end A017444.P5767754924763206664

namespace A017444

/-- `(A017425(n)+1)²²²` -/
def P5767754924763206664.Spec : Prop :=
  ∀ n, P5767754924763206664.a n = A017444 n

theorem P5767754924763206664.correct : P5767754924763206664.Spec := by
  intro n
  simp only [A017444, Nat.add_sub_cancel, A017444.P5767754924763206664.a, A017444.P4854202197909504885.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017444

/-! ## A017444.P3397955496376381191

`(A017413(n)+2)²²²`
-/

namespace A017444.P3397955496376381191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017413 n + 2) ^ 2) ^ 2) ^ 2

end

end A017444.P3397955496376381191

namespace A017444

/-- `(A017413(n)+2)²²²` -/
def P3397955496376381191.Spec : Prop :=
  ∀ n, P3397955496376381191.a n = A017444 n

theorem P3397955496376381191.correct : P3397955496376381191.Spec := by
  intro n
  simp only [A017444, Nat.add_sub_cancel, A017444.P3397955496376381191.a, A017444.P4854202197909504885.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017444

/-! ## A017444.P9488804828078339281

`(1-A017449(n))²²²`
-/

namespace A017444.P9488804828078339281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017449 n) ^ 2) ^ 2) ^ 2

end

end A017444.P9488804828078339281

namespace A017444

/-- `(1-A017449(n))²²²` -/
def P9488804828078339281.Spec : Prop :=
  ∀ n, P9488804828078339281.a n = A017444 n

theorem P9488804828078339281.correct : P9488804828078339281.Spec := by
  intro n
  simp only [A017444, Nat.add_sub_cancel, A017444.P9488804828078339281.a, A017444.P4854202197909504885.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017444

/-! ## A017444.P13079368732172027595

`(2-A017461(n))²²²`
-/

namespace A017444.P13079368732172027595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017461 n) ^ 2) ^ 2) ^ 2

end

end A017444.P13079368732172027595

namespace A017444

/-- `(2-A017461(n))²²²` -/
def P13079368732172027595.Spec : Prop :=
  ∀ n, P13079368732172027595.a n = A017444 n

theorem P13079368732172027595.correct : P13079368732172027595.Spec := by
  intro n
  simp only [A017444, Nat.add_sub_cancel, A017444.P13079368732172027595.a, A017444.P4854202197909504885.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017444

/-! ## A017444.P15284849862464285165

`(A017317(n)+n)²²²`
-/

namespace A017444.P15284849862464285165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017317 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017444.P15284849862464285165

namespace A017444

/-- `(A017317(n)+n)²²²` -/
def P15284849862464285165.Spec : Prop :=
  ∀ n, P15284849862464285165.a n = A017444 n

theorem P15284849862464285165.correct : P15284849862464285165.Spec := by
  intro n
  simp only [A017444, Nat.add_sub_cancel, A017444.P15284849862464285165.a, A017444.P4854202197909504885.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017444

/-! ## A017444.P17170975910984001292

`(n-A017569(n))²²²`
-/

namespace A017444.P17170975910984001292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017569 n) ^ 2) ^ 2) ^ 2

end

end A017444.P17170975910984001292

namespace A017444

/-- `(n-A017569(n))²²²` -/
def P17170975910984001292.Spec : Prop :=
  ∀ n, P17170975910984001292.a n = A017444 n

theorem P17170975910984001292.correct : P17170975910984001292.Spec := by
  intro n
  simp only [A017444, Nat.add_sub_cancel, A017444.P17170975910984001292.a, A017444.P4854202197909504885.a, A017569, A017569.P14340039372117997380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017444

/-! ## A017444.P285374267939938266

`(n-4*A016777(n))²²²`
-/

namespace A017444.P285374267939938266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - 4 * A016777 n) ^ 2) ^ 2) ^ 2

end

end A017444.P285374267939938266

namespace A017444

/-- `(n-4*A016777(n))²²²` -/
def P285374267939938266.Spec : Prop :=
  ∀ n, P285374267939938266.a n = A017444 n

theorem P285374267939938266.correct : P285374267939938266.Spec := by
  intro n
  simp only [A017444, Nat.add_sub_cancel, A017444.P285374267939938266.a, A017444.P4854202197909504885.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017444

/-! ## A017444.P3738694248313202127

`A017437(n)*A017443(n)`
-/

namespace A017444.P3738694248313202127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n * A017443 n

end

end A017444.P3738694248313202127

namespace A017444

/-- `A017437(n)*A017443(n)` -/
def P3738694248313202127.Spec : Prop :=
  ∀ n, P3738694248313202127.a n = A017444 n

theorem P3738694248313202127.correct : P3738694248313202127.Spec := by
  intro n
  simp only [A017444, Nat.add_sub_cancel, A017444.P3738694248313202127.a, A017444.P4854202197909504885.a, A017437, A017437.P10409157242345038154.a, A017443, A017443.P5498171787824606494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017444

/-! ## A017444.P8454199012164945173

`A017438(n)*A017442(n)`
-/

namespace A017444.P8454199012164945173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017438 n * A017442 n

end

end A017444.P8454199012164945173

namespace A017444

/-- `A017438(n)*A017442(n)` -/
def P8454199012164945173.Spec : Prop :=
  ∀ n, P8454199012164945173.a n = A017444 n

theorem P8454199012164945173.correct : P8454199012164945173.Spec := by
  intro n
  simp only [A017444, Nat.add_sub_cancel, A017444.P8454199012164945173.a, A017444.P4854202197909504885.a, A017438, A017438.P10301325170580427455.a, A017442, A017442.P8547152198293829921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017444

/-! ## A017444.P9375465935722138999

`A017439(n)*A017441(n)`
-/

namespace A017444.P9375465935722138999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017439 n * A017441 n

end

end A017444.P9375465935722138999

namespace A017444

/-- `A017439(n)*A017441(n)` -/
def P9375465935722138999.Spec : Prop :=
  ∀ n, P9375465935722138999.a n = A017444 n

theorem P9375465935722138999.correct : P9375465935722138999.Spec := by
  intro n
  simp only [A017444, Nat.add_sub_cancel, A017444.P9375465935722138999.a, A017444.P4854202197909504885.a, A017439, A017439.P9110168289680559285.a, A017441, A017441.P6612316806926504406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017444

/-! ## A017444.P16462221529751136212

`A017445(n)/A017437(n)`
-/

namespace A017444.P16462221529751136212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017445 n : ℚ) / (A017437 n : ℚ)

end

end A017444.P16462221529751136212

namespace A017444

/-- `A017445(n)/A017437(n)` -/
def P16462221529751136212.Spec : Prop :=
  ∀ n, P16462221529751136212.a n = (A017444 n : ℚ)

end A017444

/-! ## A017444.P9769972855991689306

`(A017443(n)/A017439(n))²`
-/

namespace A017444.P9769972855991689306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017443 n : ℚ) / (A017439 n : ℚ)) ^ 2

end

end A017444.P9769972855991689306

namespace A017444

/-- `(A017443(n)/A017439(n))²` -/
def P9769972855991689306.Spec : Prop :=
  ∀ n, P9769972855991689306.a n = (A017444 n : ℚ)

end A017444

/-! ## A017444.P5907397180181998274

`A017443(n)²/A017442(n)`
-/

namespace A017444.P5907397180181998274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017443 n ^ 2 : ℚ) / (A017442 n : ℚ)

end

end A017444.P5907397180181998274

namespace A017444

/-- `A017443(n)²/A017442(n)` -/
def P5907397180181998274.Spec : Prop :=
  ∀ n, P5907397180181998274.a n = (A017444 n : ℚ)

end A017444

/-!
# A017445: a(n) = (11*n + 4)^9.

The programs for A017445, the canonical program `A017445.P18440661159277169492` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017445 has offset 0).

The definition of A017445 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+4)^9` (program `A017445.P18440661159277169492`, by `A017445.P18440661159277169492.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017445.P18440661159277169492

`(11*n+4)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017445

/-- `(11*n+4)^9` -/
def P18440661159277169492.Spec : Prop :=
  ∀ n, (P18440661159277169492.a n : ℤ) = A017445 n

theorem P18440661159277169492.correct : P18440661159277169492.Spec := by
  intro n
  simp only [A017445]

end A017445

/-! ## A017445.P8401393001512074569

`sqrt(A017442(n)^3)`
-/

namespace A017445.P8401393001512074569
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017442 n ^ 3 : ℝ)

end

end A017445.P8401393001512074569

namespace A017445

/-- `sqrt(A017442(n)^3)` -/
def P8401393001512074569.Spec : Prop :=
  ∀ n, P8401393001512074569.a n = (A017445 n : ℝ)

end A017445

/-! ## A017445.P12169504204099617654

`A017437(n)*A017444(n)`
-/

namespace A017445.P12169504204099617654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n * A017444 n

end

end A017445.P12169504204099617654

namespace A017445

/-- `A017437(n)*A017444(n)` -/
def P12169504204099617654.Spec : Prop :=
  ∀ n, P12169504204099617654.a n = A017445 n

theorem P12169504204099617654.correct : P12169504204099617654.Spec := by
  intro n
  simp only [A017445, Nat.add_sub_cancel, A017445.P12169504204099617654.a, A017445.P18440661159277169492.a, A017437, A017437.P10409157242345038154.a, A017444, A017444.P4854202197909504885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017445

/-! ## A017445.P18140441937161770249

`A017438(n)*A017443(n)`
-/

namespace A017445.P18140441937161770249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017438 n * A017443 n

end

end A017445.P18140441937161770249

namespace A017445

/-- `A017438(n)*A017443(n)` -/
def P18140441937161770249.Spec : Prop :=
  ∀ n, P18140441937161770249.a n = A017445 n

theorem P18140441937161770249.correct : P18140441937161770249.Spec := by
  intro n
  simp only [A017445, Nat.add_sub_cancel, A017445.P18140441937161770249.a, A017445.P18440661159277169492.a, A017438, A017438.P10301325170580427455.a, A017443, A017443.P5498171787824606494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017445

/-! ## A017445.P4740462335754658430

`A017439(n)*A017442(n)`
-/

namespace A017445.P4740462335754658430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017439 n * A017442 n

end

end A017445.P4740462335754658430

namespace A017445

/-- `A017439(n)*A017442(n)` -/
def P4740462335754658430.Spec : Prop :=
  ∀ n, P4740462335754658430.a n = A017445 n

theorem P4740462335754658430.correct : P4740462335754658430.Spec := by
  intro n
  simp only [A017445, Nat.add_sub_cancel, A017445.P4740462335754658430.a, A017445.P18440661159277169492.a, A017439, A017439.P9110168289680559285.a, A017442, A017442.P8547152198293829921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017445

/-! ## A017445.P3079427944967321560

`A017440(n)*A017441(n)`
-/

namespace A017445.P3079427944967321560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017440 n * A017441 n

end

end A017445.P3079427944967321560

namespace A017445

/-- `A017440(n)*A017441(n)` -/
def P3079427944967321560.Spec : Prop :=
  ∀ n, P3079427944967321560.a n = A017445 n

theorem P3079427944967321560.correct : P3079427944967321560.Spec := by
  intro n
  simp only [A017445, Nat.add_sub_cancel, A017445.P3079427944967321560.a, A017445.P18440661159277169492.a, A017440, A017440.P7887673629828701987.a, A017441, A017441.P6612316806926504406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017445

/-! ## A017445.P12954542627253252822

`A017437(n)²*A017443(n)`
-/

namespace A017445.P12954542627253252822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n ^ 2 * A017443 n

end

end A017445.P12954542627253252822

namespace A017445

/-- `A017437(n)²*A017443(n)` -/
def P12954542627253252822.Spec : Prop :=
  ∀ n, P12954542627253252822.a n = A017445 n

theorem P12954542627253252822.correct : P12954542627253252822.Spec := by
  intro n
  simp only [A017445, Nat.add_sub_cancel, A017445.P12954542627253252822.a, A017445.P18440661159277169492.a, A017437, A017437.P10409157242345038154.a, A017443, A017443.P5498171787824606494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017445

/-! ## A017445.P3203592602059094199

`A017438(n)²*A017441(n)`
-/

namespace A017445.P3203592602059094199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017438 n ^ 2 * A017441 n

end

end A017445.P3203592602059094199

namespace A017445

/-- `A017438(n)²*A017441(n)` -/
def P3203592602059094199.Spec : Prop :=
  ∀ n, P3203592602059094199.a n = A017445 n

theorem P3203592602059094199.correct : P3203592602059094199.Spec := by
  intro n
  simp only [A017445, Nat.add_sub_cancel, A017445.P3203592602059094199.a, A017445.P18440661159277169492.a, A017438, A017438.P10301325170580427455.a, A017441, A017441.P6612316806926504406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017445

/-! ## A017445.P15157847444645519703

`A017440(n)²*A017437(n)`
-/

namespace A017445.P15157847444645519703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017440 n ^ 2 * A017437 n

end

end A017445.P15157847444645519703

namespace A017445

/-- `A017440(n)²*A017437(n)` -/
def P15157847444645519703.Spec : Prop :=
  ∀ n, P15157847444645519703.a n = A017445 n

theorem P15157847444645519703.correct : P15157847444645519703.Spec := by
  intro n
  simp only [A017445, Nat.add_sub_cancel, A017445.P15157847444645519703.a, A017445.P18440661159277169492.a, A017437, A017437.P10409157242345038154.a, A017440, A017440.P7887673629828701987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017445

/-! ## A017445.P13637174734959990037

`A017441(n)²/A017437(n)`
-/

namespace A017445.P13637174734959990037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017441 n ^ 2 : ℚ) / (A017437 n : ℚ)

end

end A017445.P13637174734959990037

namespace A017445

/-- `A017441(n)²/A017437(n)` -/
def P13637174734959990037.Spec : Prop :=
  ∀ n, P13637174734959990037.a n = (A017445 n : ℚ)

end A017445

/-! ## A017445.P18231428401784493760

`A017443(n)²/A017441(n)`
-/

namespace A017445.P18231428401784493760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017443 n ^ 2 : ℚ) / (A017441 n : ℚ)

end

end A017445.P18231428401784493760

namespace A017445

/-- `A017443(n)²/A017441(n)` -/
def P18231428401784493760.Spec : Prop :=
  ∀ n, P18231428401784493760.a n = (A017445 n : ℚ)

end A017445

/-! ## A017445.P6030907942892327736

`A017438(n)²²*A017437(n)`
-/

namespace A017445.P6030907942892327736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017438 n ^ 2) ^ 2 * A017437 n

end

end A017445.P6030907942892327736

namespace A017445

/-- `A017438(n)²²*A017437(n)` -/
def P6030907942892327736.Spec : Prop :=
  ∀ n, P6030907942892327736.a n = A017445 n

theorem P6030907942892327736.correct : P6030907942892327736.Spec := by
  intro n
  simp only [A017445, Nat.add_sub_cancel, A017445.P6030907942892327736.a, A017445.P18440661159277169492.a, A017437, A017437.P10409157242345038154.a, A017438, A017438.P10301325170580427455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017445

/-! ## A017445.P15688554286127775322

`A017440(n)²²/A017443(n)`
-/

namespace A017445.P15688554286127775322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017440 n ^ 2) ^ 2 : ℚ) / (A017443 n : ℚ)

end

end A017445.P15688554286127775322

namespace A017445

/-- `A017440(n)²²/A017443(n)` -/
def P15688554286127775322.Spec : Prop :=
  ∀ n, P15688554286127775322.a n = (A017445 n : ℚ)

end A017445

/-! ## A017445.P13495458017639036761

`A001017(A017437(n))`
-/

namespace A017445.P13495458017639036761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017437 n).toNat

end

end A017445.P13495458017639036761

namespace A017445

/-- `A001017(A017437(n))` -/
def P13495458017639036761.Spec : Prop :=
  ∀ n, P13495458017639036761.a n = A017445 n

end A017445

/-!
# A017446: 

The programs for A017446, there is no canonical definition to state claims against.
-/

/-! ## A017446.P10822312935656090762

`(11*n+4)^10`
-/

namespace A017446.P10822312935656090762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 4) ^ 10

end

end A017446.P10822312935656090762

/-! ## A017446.P1366917449135802484

`A017441(n)²`
-/

namespace A017446.P1366917449135802484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017441 n ^ 2

end

end A017446.P1366917449135802484

/-! ## A017446.P10062490403146929293

`A017437(n)*A017445(n)`
-/

namespace A017446.P10062490403146929293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n * A017445 n

end

end A017446.P10062490403146929293

/-! ## A017446.P3165509129329821717

`A017438(n)*A017444(n)`
-/

namespace A017446.P3165509129329821717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017438 n * A017444 n

end

end A017446.P3165509129329821717

/-! ## A017446.P2935929323739082703

`A017439(n)*A017443(n)`
-/

namespace A017446.P2935929323739082703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017439 n * A017443 n

end

end A017446.P2935929323739082703

/-! ## A017446.P13436919530052216251

`A017440(n)*A017442(n)`
-/

namespace A017446.P13436919530052216251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017440 n * A017442 n

end

end A017446.P13436919530052216251

/-! ## A017446.P7254170152839613759

`(A017437(n)*A017440(n))²`
-/

namespace A017446.P7254170152839613759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017437 n * A017440 n) ^ 2

end

end A017446.P7254170152839613759

/-! ## A017446.P8928468636194407543

`A017437(n)²*A017444(n)`
-/

namespace A017446.P8928468636194407543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n ^ 2 * A017444 n

end

end A017446.P8928468636194407543

/-! ## A017446.P10820206493836305068

`(A017438(n)*A017439(n))²`
-/

namespace A017446.P10820206493836305068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017438 n * A017439 n) ^ 2

end

end A017446.P10820206493836305068

/-! ## A017446.P14955797521234901091

`A017438(n)²*A017442(n)`
-/

namespace A017446.P14955797521234901091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017438 n ^ 2 * A017442 n

end

end A017446.P14955797521234901091

/-! ## A017446.P736410532480452044

`A017439(n)²*A017440(n)`
-/

namespace A017446.P736410532480452044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017439 n ^ 2 * A017440 n

end

end A017446.P736410532480452044

/-! ## A017446.P7099222862148673450

`A017440(n)²*A017438(n)`
-/

namespace A017446.P7099222862148673450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017440 n ^ 2 * A017438 n

end

end A017446.P7099222862148673450

/-! ## A017446.P6660007360330652630

`(A017442(n)/A017437(n))²`
-/

namespace A017446.P6660007360330652630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017442 n : ℚ) / (A017437 n : ℚ)) ^ 2

end

end A017446.P6660007360330652630

/-! ## A017446.P1786027028439503301

`(A017443(n)/A017438(n))²`
-/

namespace A017446.P1786027028439503301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017443 n : ℚ) / (A017438 n : ℚ)) ^ 2

end

end A017446.P1786027028439503301

/-!
# A017447: 

The programs for A017447, there is no canonical definition to state claims against.
-/

/-! ## A017447.P3186392770209355938

`(11*n+4)^11`
-/

namespace A017447.P3186392770209355938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 4) ^ 11

end

end A017447.P3186392770209355938

/-! ## A017447.P8104377138692401805

`A017438(n)*A017445(n)`
-/

namespace A017447.P8104377138692401805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017438 n * A017445 n

end

end A017447.P8104377138692401805

/-! ## A017447.P16967854266064620664

`A017439(n)*A017444(n)`
-/

namespace A017447.P16967854266064620664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017439 n * A017444 n

end

end A017447.P16967854266064620664

/-! ## A017447.P275239646554774319

`A017440(n)*A017443(n)`
-/

namespace A017447.P275239646554774319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017440 n * A017443 n

end

end A017447.P275239646554774319

/-! ## A017447.P7692905790829362657

`A017441(n)*A017442(n)`
-/

namespace A017447.P7692905790829362657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017441 n * A017442 n

end

end A017447.P7692905790829362657

/-! ## A017447.P16568326934868079696

`A017437(n)²*A017445(n)`
-/

namespace A017447.P16568326934868079696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n ^ 2 * A017445 n

end

end A017447.P16568326934868079696

/-! ## A017447.P13572091188899308320

`A017438(n)²*A017443(n)`
-/

namespace A017447.P13572091188899308320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017438 n ^ 2 * A017443 n

end

end A017447.P13572091188899308320

/-! ## A017447.P7931360712872010793

`A017439(n)²*A017441(n)`
-/

namespace A017447.P7931360712872010793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017439 n ^ 2 * A017441 n

end

end A017447.P7931360712872010793

/-! ## A017447.P1737551968297229875

`A017440(n)²*A017439(n)`
-/

namespace A017447.P1737551968297229875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017440 n ^ 2 * A017439 n

end

end A017447.P1737551968297229875

/-! ## A017447.P5616726173806274204

`A017441(n)²*A017437(n)`
-/

namespace A017447.P5616726173806274204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017441 n ^ 2 * A017437 n

end

end A017447.P5616726173806274204

/-! ## A017447.P17980414400040402927

`A017442(n)²/A017437(n)`
-/

namespace A017447.P17980414400040402927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017442 n ^ 2 : ℚ) / (A017437 n : ℚ)

end

end A017447.P17980414400040402927

/-! ## A017447.P9623880650803305459

`A017443(n)²/A017439(n)`
-/

namespace A017447.P9623880650803305459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017443 n ^ 2 : ℚ) / (A017439 n : ℚ)

end

end A017447.P9623880650803305459

/-! ## A017447.P17852419910719912597

`A017444(n)²/A017441(n)`
-/

namespace A017447.P17852419910719912597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017444 n ^ 2 : ℚ) / (A017441 n : ℚ)

end

end A017447.P17852419910719912597

/-! ## A017447.P16747466311192164298

`A017438(n)²²*A017439(n)`
-/

namespace A017447.P16747466311192164298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017438 n ^ 2) ^ 2 * A017439 n

end

end A017447.P16747466311192164298

/-!
# A017448: 

The programs for A017448, there is no canonical definition to state claims against.
-/

/-! ## A017448.P16007614783257818700

`(11*n+4)^12`
-/

namespace A017448.P16007614783257818700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 4) ^ 12

end

end A017448.P16007614783257818700

/-! ## A017448.P1200151293696962399

`A017442(n)²`
-/

namespace A017448.P1200151293696962399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017442 n ^ 2

end

end A017448.P1200151293696962399

/-! ## A017448.P15997969675940013986

`A017439(n)*A017445(n)`
-/

namespace A017448.P15997969675940013986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017439 n * A017445 n

end

end A017448.P15997969675940013986

/-! ## A017448.P2940091661811670672

`A017440(n)*A017444(n)`
-/

namespace A017448.P2940091661811670672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017440 n * A017444 n

end

end A017448.P2940091661811670672

/-! ## A017448.P17437628033273007841

`A017441(n)*A017443(n)`
-/

namespace A017448.P17437628033273007841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017441 n * A017443 n

end

end A017448.P17437628033273007841

/-! ## A017448.P4440738752473810547

`(A017437(n)*A017441(n))²`
-/

namespace A017448.P4440738752473810547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017437 n * A017441 n) ^ 2

end

end A017448.P4440738752473810547

/-! ## A017448.P6276476320953596209

`(A017438(n)*A017440(n))²`
-/

namespace A017448.P6276476320953596209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017438 n * A017440 n) ^ 2

end

end A017448.P6276476320953596209

/-! ## A017448.P10354105723447972145

`A017438(n)²*A017444(n)`
-/

namespace A017448.P10354105723447972145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017438 n ^ 2 * A017444 n

end

end A017448.P10354105723447972145

/-! ## A017448.P6559846906710641803

`A017441(n)²*A017438(n)`
-/

namespace A017448.P6559846906710641803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017441 n ^ 2 * A017438 n

end

end A017448.P6559846906710641803

/-! ## A017448.P3748526901194309841

`(A017443(n)/A017437(n))²`
-/

namespace A017448.P3748526901194309841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017443 n : ℚ) / (A017437 n : ℚ)) ^ 2

end

end A017448.P3748526901194309841

/-! ## A017448.P13264518114194703446

`A017443(n)²/A017438(n)`
-/

namespace A017448.P13264518114194703446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017443 n ^ 2 : ℚ) / (A017438 n : ℚ)

end

end A017448.P13264518114194703446

/-!
# A017449: a(n) = 11*n + 5.

The programs for A017449, the canonical program `A017449.P2551254521878161710` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017449 has offset 0).

The definition of A017449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*n+5` (program `A017449.P2551254521878161710`, by `A017449.P2551254521878161710.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017449.P2551254521878161710

`11*n+5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017449

/-- `11*n+5` -/
def P2551254521878161710.Spec : Prop :=
  ∀ n, (P2551254521878161710.a n : ℤ) = A017449 n

theorem P2551254521878161710.correct : P2551254521878161710.Spec := by
  intro n
  simp only [A017449]

end A017449

/-!
# A017450: a(n) = (11*n + 5)^2.

The programs for A017450, the canonical program `A017450.P1801296710465505424` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017450 has offset 0).

The definition of A017450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+5)²` (program `A017450.P1801296710465505424`, by `A017450.P1801296710465505424.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017450.P1801296710465505424

`(11*n+5)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017450

/-- `(11*n+5)²` -/
def P1801296710465505424.Spec : Prop :=
  ∀ n, (P1801296710465505424.a n : ℤ) = A017450 n

theorem P1801296710465505424.correct : P1801296710465505424.Spec := by
  intro n
  simp only [A017450]

end A017450

/-! ## A017450.P2685175957420426350

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=25, a(1)=256, a(2)=729`
-/

namespace A017450.P2685175957420426350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25, 256, 729] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017450.P2685175957420426350

namespace A017450

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2685175957420426350.Spec : Prop :=
  ∀ n, P2685175957420426350.a n = A017450 n

theorem P2685175957420426350.correct : P2685175957420426350.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017450, Nat.add_sub_cancel, A017450.P2685175957420426350.a, A017450.P1801296710465505424.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017450, Nat.add_sub_cancel, A017450.P2685175957420426350.a, A017450.P1801296710465505424.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017450

/-! ## A017450.P4594093442679856753

`floor(Δ[C(11*n, 2)/11]²)`
-/

namespace A017450.P4594093442679856753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (11 * n) 2 : ℚ) / 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n) ^ 2⌋

end

end A017450.P4594093442679856753

namespace A017450

/-- `floor(Δ[C(11*n, 2)/11]²)` -/
def P4594093442679856753.Spec : Prop :=
  ∀ n, P4594093442679856753.a n = A017450 n

end A017450

/-! ## A017450.P9243435927756301817

`round(Δ[C(11*n, 2)/11]²)`
-/

namespace A017450.P9243435927756301817
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (11 * n) 2 : ℚ) / 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n) ^ 2)

end

end A017450.P9243435927756301817

namespace A017450

/-- `round(Δ[C(11*n, 2)/11]²)` -/
def P9243435927756301817.Spec : Prop :=
  ∀ n, P9243435927756301817.a n = A017450 n

end A017450

/-! ## A017450.P16362546157280171931

`sqrt(A017452(n))`
-/

namespace A017450.P16362546157280171931
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017452 n : ℝ)

end

end A017450.P16362546157280171931

namespace A017450

/-- `sqrt(A017452(n))` -/
def P16362546157280171931.Spec : Prop :=
  ∀ n, P16362546157280171931.a n = (A017450 n : ℝ)

end A017450

/-! ## A017450.P11873688420874462578

`A017449(n)^2`
-/

namespace A017450.P11873688420874462578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n ^ 2

end

end A017450.P11873688420874462578

namespace A017450

/-- `A017449(n)^2` -/
def P11873688420874462578.Spec : Prop :=
  ∀ n, P11873688420874462578.a n = A017450 n

theorem P11873688420874462578.correct : P11873688420874462578.Spec := by
  intro n
  simp only [A017450, Nat.add_sub_cancel, A017450.P11873688420874462578.a, A017450.P1801296710465505424.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017450

/-! ## A017450.P16007584226875511568

`sqrt(sqrt(A017456(n)))`
-/

namespace A017450.P16007584226875511568
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017456 n : ℝ))

end

end A017450.P16007584226875511568

namespace A017450

/-- `sqrt(sqrt(A017456(n)))` -/
def P16007584226875511568.Spec : Prop :=
  ∀ n, P16007584226875511568.a n = (A017450 n : ℝ)

end A017450

/-! ## A017450.P5376129055313112756

`A017454(n)^(1/3)`
-/

namespace A017450.P5376129055313112756
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017454 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017450.P5376129055313112756

namespace A017450

/-- `A017454(n)^(1/3)` -/
def P5376129055313112756.Spec : Prop :=
  ∀ n, P5376129055313112756.a n = (A017450 n : ℝ)

end A017450

/-! ## A017450.P17922250798060634396

`A017451(n)^(2/3)`
-/

namespace A017450.P17922250798060634396
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017451 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017450.P17922250798060634396

namespace A017450

/-- `A017451(n)^(2/3)` -/
def P17922250798060634396.Spec : Prop :=
  ∀ n, P17922250798060634396.a n = (A017450 n : ℝ)

end A017450

/-! ## A017450.P3327941191696733473

`A017451(n)/A017449(n)`
-/

namespace A017450.P3327941191696733473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017451 n : ℚ) / (A017449 n : ℚ)

end

end A017450.P3327941191696733473

namespace A017450

/-- `A017451(n)/A017449(n)` -/
def P3327941191696733473.Spec : Prop :=
  ∀ n, P3327941191696733473.a n = (A017450 n : ℚ)

end A017450

/-! ## A017450.P4217654237330847303

`A017453(n)/A017451(n)`
-/

namespace A017450.P4217654237330847303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017453 n : ℚ) / (A017451 n : ℚ)

end

end A017450.P4217654237330847303

namespace A017450

/-- `A017453(n)/A017451(n)` -/
def P4217654237330847303.Spec : Prop :=
  ∀ n, P4217654237330847303.a n = (A017450 n : ℚ)

end A017450

/-! ## A017450.P12853858857782454920

`A017454(n)/A017452(n)`
-/

namespace A017450.P12853858857782454920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017454 n : ℚ) / (A017452 n : ℚ)

end

end A017450.P12853858857782454920

namespace A017450

/-- `A017454(n)/A017452(n)` -/
def P12853858857782454920.Spec : Prop :=
  ∀ n, P12853858857782454920.a n = (A017450 n : ℚ)

end A017450

/-! ## A017450.P2697042153146591467

`A017455(n)/A017453(n)`
-/

namespace A017450.P2697042153146591467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017455 n : ℚ) / (A017453 n : ℚ)

end

end A017450.P2697042153146591467

namespace A017450

/-- `A017455(n)/A017453(n)` -/
def P2697042153146591467.Spec : Prop :=
  ∀ n, P2697042153146591467.a n = (A017450 n : ℚ)

end A017450

/-! ## A017450.P937312112057817146

`A017456(n)/A017454(n)`
-/

namespace A017450.P937312112057817146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017456 n : ℚ) / (A017454 n : ℚ)

end

end A017450.P937312112057817146

namespace A017450

/-- `A017456(n)/A017454(n)` -/
def P937312112057817146.Spec : Prop :=
  ∀ n, P937312112057817146.a n = (A017450 n : ℚ)

end A017450

/-! ## A017450.P4492527642159833019

`A017457(n)/A017455(n)`
-/

namespace A017450.P4492527642159833019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017457 n : ℚ) / (A017455 n : ℚ)

end

end A017450.P4492527642159833019

namespace A017450

/-- `A017457(n)/A017455(n)` -/
def P4492527642159833019.Spec : Prop :=
  ∀ n, P4492527642159833019.a n = (A017450 n : ℚ)

end A017450

/-! ## A017450.P10505287321561573193

`A017451(n)²/A017452(n)`
-/

namespace A017450.P10505287321561573193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017451 n ^ 2 : ℚ) / (A017452 n : ℚ)

end

end A017450.P10505287321561573193

namespace A017450

/-- `A017451(n)²/A017452(n)` -/
def P10505287321561573193.Spec : Prop :=
  ∀ n, P10505287321561573193.a n = (A017450 n : ℚ)

end A017450

/-! ## A017450.P3725749585787536536

`A017456(n)/A017451(n)²`
-/

namespace A017450.P3725749585787536536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017456 n : ℚ) / (A017451 n ^ 2 : ℚ)

end

end A017450.P3725749585787536536

namespace A017450

/-- `A017456(n)/A017451(n)²` -/
def P3725749585787536536.Spec : Prop :=
  ∀ n, P3725749585787536536.a n = (A017450 n : ℚ)

end A017450

/-! ## A017450.P2501906611612650292

`A017474(n)-A304157(n+1)`
-/

namespace A017450.P2501906611612650292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017474 n - A304157 (n + 1)

end

end A017450.P2501906611612650292

namespace A017450

/-- `A017474(n)-A304157(n+1)` -/
def P2501906611612650292.Spec : Prop :=
  ∀ n, P2501906611612650292.a n = A017450 n

theorem P2501906611612650292.correct : P2501906611612650292.Spec := by
  intro n
  simp only [A017450, Nat.add_sub_cancel, A017450.P2501906611612650292.a, A017450.P1801296710465505424.a, A017474, A017474.P13447193533429871447.a, A304157, A304157.P9913014979865334882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017450

/-!
# A017451: a(n) = (11*n + 5)^3.

The programs for A017451, the canonical program `A017451.P16046351165357907986` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017451 has offset 0).

The definition of A017451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+5)^3` (program `A017451.P16046351165357907986`, by `A017451.P16046351165357907986.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017451.P16046351165357907986

`(11*n+5)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017451

/-- `(11*n+5)^3` -/
def P16046351165357907986.Spec : Prop :=
  ∀ n, (P16046351165357907986.a n : ℤ) = A017451 n

theorem P16046351165357907986.correct : P16046351165357907986.Spec := by
  intro n
  simp only [A017451]

end A017451

/-! ## A017451.P13817970821637858823

`sqrt(A017454(n))`
-/

namespace A017451.P13817970821637858823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017454 n : ℝ)

end

end A017451.P13817970821637858823

namespace A017451

/-- `sqrt(A017454(n))` -/
def P13817970821637858823.Spec : Prop :=
  ∀ n, P13817970821637858823.a n = (A017451 n : ℝ)

end A017451

/-! ## A017451.P8123474558234475204

`sqrt(A017450(n)^3)`
-/

namespace A017451.P8123474558234475204
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017450 n ^ 3 : ℝ)

end

end A017451.P8123474558234475204

namespace A017451

/-- `sqrt(A017450(n)^3)` -/
def P8123474558234475204.Spec : Prop :=
  ∀ n, P8123474558234475204.a n = (A017451 n : ℝ)

end A017451

/-! ## A017451.P9182763073134716991

`A017452(n)/(11*n+5)`
-/

namespace A017451.P9182763073134716991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017452 n : ℚ) / (11 * n + 5 : ℚ)

end

end A017451.P9182763073134716991

namespace A017451

/-- `A017452(n)/(11*n+5)` -/
def P9182763073134716991.Spec : Prop :=
  ∀ n, P9182763073134716991.a n = (A017451 n : ℚ)

end A017451

/-! ## A017451.P16841377076246600157

`(11*n+5)²*A017449(n)`
-/

namespace A017451.P16841377076246600157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((11 * n + 5) ^ 2 : ℤ) * A017449 n

end

end A017451.P16841377076246600157

namespace A017451

/-- `(11*n+5)²*A017449(n)` -/
def P16841377076246600157.Spec : Prop :=
  ∀ n, P16841377076246600157.a n = A017451 n

theorem P16841377076246600157.correct : P16841377076246600157.Spec := by
  intro n
  simp only [A017451, Nat.add_sub_cancel, A017451.P16841377076246600157.a, A017451.P16046351165357907986.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017451

/-! ## A017451.P16039714699316411630

`A017449(n)*A017450(n)`
-/

namespace A017451.P16039714699316411630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n * A017450 n

end

end A017451.P16039714699316411630

namespace A017451

/-- `A017449(n)*A017450(n)` -/
def P16039714699316411630.Spec : Prop :=
  ∀ n, P16039714699316411630.a n = A017451 n

theorem P16039714699316411630.correct : P16039714699316411630.Spec := by
  intro n
  simp only [A017451, Nat.add_sub_cancel, A017451.P16039714699316411630.a, A017451.P16046351165357907986.a, A017449, A017449.P2551254521878161710.a, A017450, A017450.P1801296710465505424.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017451

/-! ## A017451.P14658584624784591352

`A017453(n)/A017450(n)`
-/

namespace A017451.P14658584624784591352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017453 n : ℚ) / (A017450 n : ℚ)

end

end A017451.P14658584624784591352

namespace A017451

/-- `A017453(n)/A017450(n)` -/
def P14658584624784591352.Spec : Prop :=
  ∀ n, P14658584624784591352.a n = (A017451 n : ℚ)

end A017451

/-! ## A017451.P1622319193504132434

`A017455(n)/A017452(n)`
-/

namespace A017451.P1622319193504132434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017455 n : ℚ) / (A017452 n : ℚ)

end

end A017451.P1622319193504132434

namespace A017451

/-- `A017455(n)/A017452(n)` -/
def P1622319193504132434.Spec : Prop :=
  ∀ n, P1622319193504132434.a n = (A017451 n : ℚ)

end A017451

/-! ## A017451.P6866228440596019974

`A017456(n)/A017453(n)`
-/

namespace A017451.P6866228440596019974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017456 n : ℚ) / (A017453 n : ℚ)

end

end A017451.P6866228440596019974

namespace A017451

/-- `A017456(n)/A017453(n)` -/
def P6866228440596019974.Spec : Prop :=
  ∀ n, P6866228440596019974.a n = (A017451 n : ℚ)

end A017451

/-! ## A017451.P10489231453301509686

`A017457(n)/A017454(n)`
-/

namespace A017451.P10489231453301509686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017457 n : ℚ) / (A017454 n : ℚ)

end

end A017451.P10489231453301509686

namespace A017451

/-- `A017457(n)/A017454(n)` -/
def P10489231453301509686.Spec : Prop :=
  ∀ n, P10489231453301509686.a n = (A017451 n : ℚ)

end A017451

/-! ## A017451.P14748096697128568392

`A017452(n)²/A017453(n)`
-/

namespace A017451.P14748096697128568392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017452 n ^ 2 : ℚ) / (A017453 n : ℚ)

end

end A017451.P14748096697128568392

namespace A017451

/-- `A017452(n)²/A017453(n)` -/
def P14748096697128568392.Spec : Prop :=
  ∀ n, P14748096697128568392.a n = (A017451 n : ℚ)

end A017451

/-! ## A017451.P17388388940709208183

`A017453(n)/A017449(n)²`
-/

namespace A017451.P17388388940709208183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017453 n : ℚ) / (A017449 n ^ 2 : ℚ)

end

end A017451.P17388388940709208183

namespace A017451

/-- `A017453(n)/A017449(n)²` -/
def P17388388940709208183.Spec : Prop :=
  ∀ n, P17388388940709208183.a n = (A017451 n : ℚ)

end A017451

/-! ## A017451.P12672578312547954460

`A017455(n)/A017450(n)²`
-/

namespace A017451.P12672578312547954460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017455 n : ℚ) / (A017450 n ^ 2 : ℚ)

end

end A017451.P12672578312547954460

namespace A017451

/-- `A017455(n)/A017450(n)²` -/
def P12672578312547954460.Spec : Prop :=
  ∀ n, P12672578312547954460.a n = (A017451 n : ℚ)

end A017451

/-! ## A017451.P949707760131335500

`(A017437(n)+1)*A017450(n)`
-/

namespace A017451.P949707760131335500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017437 n + 1) * A017450 n

end

end A017451.P949707760131335500

namespace A017451

/-- `(A017437(n)+1)*A017450(n)` -/
def P949707760131335500.Spec : Prop :=
  ∀ n, P949707760131335500.a n = A017451 n

theorem P949707760131335500.correct : P949707760131335500.Spec := by
  intro n
  simp only [A017451, Nat.add_sub_cancel, A017451.P949707760131335500.a, A017451.P16046351165357907986.a, A017437, A017437.P10409157242345038154.a, A017450, A017450.P1801296710465505424.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017451

/-! ## A017451.P379034003628973432

`A017455(n)/A017449(n)²²`
-/

namespace A017451.P379034003628973432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017455 n : ℚ) / ((A017449 n ^ 2) ^ 2 : ℚ)

end

end A017451.P379034003628973432

namespace A017451

/-- `A017455(n)/A017449(n)²²` -/
def P379034003628973432.Spec : Prop :=
  ∀ n, P379034003628973432.a n = (A017451 n : ℚ)

end A017451

/-! ## A017451.P10671563937837040156

`(A017437(n)+1)*A017449(n)²`
-/

namespace A017451.P10671563937837040156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017437 n + 1) * A017449 n ^ 2

end

end A017451.P10671563937837040156

namespace A017451

/-- `(A017437(n)+1)*A017449(n)²` -/
def P10671563937837040156.Spec : Prop :=
  ∀ n, P10671563937837040156.a n = A017451 n

theorem P10671563937837040156.correct : P10671563937837040156.Spec := by
  intro n
  simp only [A017451, Nat.add_sub_cancel, A017451.P10671563937837040156.a, A017451.P16046351165357907986.a, A017437, A017437.P10409157242345038154.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017451

/-!
# A017452: a(n) = (11*n + 5)^4.

The programs for A017452, the canonical program `A017452.P9416975292255906010` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017452 has offset 0).

The definition of A017452 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+5)^4` (program `A017452.P9416975292255906010`, by `A017452.P9416975292255906010.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017452.P9416975292255906010

`(11*n+5)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017452

/-- `(11*n+5)^4` -/
def P9416975292255906010.Spec : Prop :=
  ∀ n, (P9416975292255906010.a n : ℤ) = A017452 n

theorem P9416975292255906010.correct : P9416975292255906010.Spec := by
  intro n
  simp only [A017452]

end A017452

/-! ## A017452.P10625954923687429322

`A017450(n)²`
-/

namespace A017452.P10625954923687429322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017450 n ^ 2

end

end A017452.P10625954923687429322

namespace A017452

/-- `A017450(n)²` -/
def P10625954923687429322.Spec : Prop :=
  ∀ n, P10625954923687429322.a n = A017452 n

theorem P10625954923687429322.correct : P10625954923687429322.Spec := by
  intro n
  simp only [A017452, Nat.add_sub_cancel, A017452.P10625954923687429322.a, A017452.P9416975292255906010.a, A017450, A017450.P1801296710465505424.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017452

/-! ## A017452.P10772951935494216037

`sqrt(A017456(n))`
-/

namespace A017452.P10772951935494216037
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017456 n : ℝ)

end

end A017452.P10772951935494216037

namespace A017452

/-- `sqrt(A017456(n))` -/
def P10772951935494216037.Spec : Prop :=
  ∀ n, P10772951935494216037.a n = (A017452 n : ℝ)

end A017452

/-! ## A017452.P7254522871779724076

`A017449(n)²²`
-/

namespace A017452.P7254522871779724076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017449 n ^ 2) ^ 2

end

end A017452.P7254522871779724076

namespace A017452

/-- `A017449(n)²²` -/
def P7254522871779724076.Spec : Prop :=
  ∀ n, P7254522871779724076.a n = A017452 n

theorem P7254522871779724076.correct : P7254522871779724076.Spec := by
  intro n
  simp only [A017452, Nat.add_sub_cancel, A017452.P7254522871779724076.a, A017452.P9416975292255906010.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017452

/-! ## A017452.P13205644768667312893

`(A017437(n)+1)²²`
-/

namespace A017452.P13205644768667312893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017437 n + 1) ^ 2) ^ 2

end

end A017452.P13205644768667312893

namespace A017452

/-- `(A017437(n)+1)²²` -/
def P13205644768667312893.Spec : Prop :=
  ∀ n, P13205644768667312893.a n = A017452 n

theorem P13205644768667312893.correct : P13205644768667312893.Spec := by
  intro n
  simp only [A017452, Nat.add_sub_cancel, A017452.P13205644768667312893.a, A017452.P9416975292255906010.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017452

/-! ## A017452.P12890169215651990129

`(A017425(n)+2)²²`
-/

namespace A017452.P12890169215651990129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017425 n + 2) ^ 2) ^ 2

end

end A017452.P12890169215651990129

namespace A017452

/-- `(A017425(n)+2)²²` -/
def P12890169215651990129.Spec : Prop :=
  ∀ n, P12890169215651990129.a n = A017452 n

theorem P12890169215651990129.correct : P12890169215651990129.Spec := by
  intro n
  simp only [A017452, Nat.add_sub_cancel, A017452.P12890169215651990129.a, A017452.P9416975292255906010.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017452

/-! ## A017452.P2733944095544961751

`(1-A017461(n))²²`
-/

namespace A017452.P2733944095544961751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017461 n) ^ 2) ^ 2

end

end A017452.P2733944095544961751

namespace A017452

/-- `(1-A017461(n))²²` -/
def P2733944095544961751.Spec : Prop :=
  ∀ n, P2733944095544961751.a n = A017452 n

theorem P2733944095544961751.correct : P2733944095544961751.Spec := by
  intro n
  simp only [A017452, Nat.add_sub_cancel, A017452.P2733944095544961751.a, A017452.P9416975292255906010.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017452

/-! ## A017452.P17500912501782089873

`(A017413(n)+3)²²`
-/

namespace A017452.P17500912501782089873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017413 n + 3) ^ 2) ^ 2

end

end A017452.P17500912501782089873

namespace A017452

/-- `(A017413(n)+3)²²` -/
def P17500912501782089873.Spec : Prop :=
  ∀ n, P17500912501782089873.a n = A017452 n

theorem P17500912501782089873.correct : P17500912501782089873.Spec := by
  intro n
  simp only [A017452, Nat.add_sub_cancel, A017452.P17500912501782089873.a, A017452.P9416975292255906010.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017452

/-! ## A017452.P15399039056013675664

`(2-A017473(n))²²`
-/

namespace A017452.P15399039056013675664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017473 n) ^ 2) ^ 2

end

end A017452.P15399039056013675664

namespace A017452

/-- `(2-A017473(n))²²` -/
def P15399039056013675664.Spec : Prop :=
  ∀ n, P15399039056013675664.a n = A017452 n

theorem P15399039056013675664.correct : P15399039056013675664.Spec := by
  intro n
  simp only [A017452, Nat.add_sub_cancel, A017452.P15399039056013675664.a, A017452.P9416975292255906010.a, A017473, A017473.P6794540674081733570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017452

/-! ## A017452.P2867269847690883044

`(3-A017485(n))²²`
-/

namespace A017452.P2867269847690883044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017485 n) ^ 2) ^ 2

end

end A017452.P2867269847690883044

namespace A017452

/-- `(3-A017485(n))²²` -/
def P2867269847690883044.Spec : Prop :=
  ∀ n, P2867269847690883044.a n = A017452 n

theorem P2867269847690883044.correct : P2867269847690883044.Spec := by
  intro n
  simp only [A017452, Nat.add_sub_cancel, A017452.P2867269847690883044.a, A017452.P9416975292255906010.a, A017485, A017485.P4370091181196038588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017452

/-! ## A017452.P12706727146924702042

`(A017329(n)+n)²²`
-/

namespace A017452.P12706727146924702042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017329 n + (n : ℤ)) ^ 2) ^ 2

end

end A017452.P12706727146924702042

namespace A017452

/-- `(A017329(n)+n)²²` -/
def P12706727146924702042.Spec : Prop :=
  ∀ n, P12706727146924702042.a n = A017452 n

theorem P12706727146924702042.correct : P12706727146924702042.Spec := by
  intro n
  simp only [A017452, Nat.add_sub_cancel, A017452.P12706727146924702042.a, A017452.P9416975292255906010.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017452

/-! ## A017452.P16637115673708211737

`(n-A017581(n))²²`
-/

namespace A017452.P16637115673708211737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017581 n) ^ 2) ^ 2

end

end A017452.P16637115673708211737

namespace A017452

/-- `(n-A017581(n))²²` -/
def P16637115673708211737.Spec : Prop :=
  ∀ n, P16637115673708211737.a n = A017452 n

theorem P16637115673708211737.correct : P16637115673708211737.Spec := by
  intro n
  simp only [A017452, Nat.add_sub_cancel, A017452.P16637115673708211737.a, A017452.P9416975292255906010.a, A017581, A017581.P8854877261644846518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017452

/-! ## A017452.P6380986629322922188

`(sqrt(A017438(n))+1)²²`
-/

namespace A017452.P6380986629322922188
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017438 n : ℝ) + 1) ^ 2) ^ 2

end

end A017452.P6380986629322922188

namespace A017452

/-- `(sqrt(A017438(n))+1)²²` -/
def P6380986629322922188.Spec : Prop :=
  ∀ n, P6380986629322922188.a n = (A017452 n : ℝ)

end A017452

/-! ## A017452.P15055823384600803276

`(sqrt(A017426(n))+2)²²`
-/

namespace A017452.P15055823384600803276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017426 n : ℝ) + 2) ^ 2) ^ 2

end

end A017452.P15055823384600803276

namespace A017452

/-- `(sqrt(A017426(n))+2)²²` -/
def P15055823384600803276.Spec : Prop :=
  ∀ n, P15055823384600803276.a n = (A017452 n : ℝ)

end A017452

/-! ## A017452.P11395860882292312813

`(1-sqrt(A017462(n)))²²`
-/

namespace A017452.P11395860882292312813
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017462 n : ℝ)) ^ 2) ^ 2

end

end A017452.P11395860882292312813

namespace A017452

/-- `(1-sqrt(A017462(n)))²²` -/
def P11395860882292312813.Spec : Prop :=
  ∀ n, P11395860882292312813.a n = (A017452 n : ℝ)

end A017452

/-! ## A017452.P18309124507976607753

`(2-sqrt(A017474(n)))²²`
-/

namespace A017452.P18309124507976607753
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - Real.sqrt (A017474 n : ℝ)) ^ 2) ^ 2

end

end A017452.P18309124507976607753

namespace A017452

/-- `(2-sqrt(A017474(n)))²²` -/
def P18309124507976607753.Spec : Prop :=
  ∀ n, P18309124507976607753.a n = (A017452 n : ℝ)

end A017452

/-! ## A017452.P18112700548398527964

`(sqrt(A017330(n))+n)²²`
-/

namespace A017452.P18112700548398527964
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017330 n : ℝ) + (n : ℝ)) ^ 2) ^ 2

end

end A017452.P18112700548398527964

namespace A017452

/-- `(sqrt(A017330(n))+n)²²` -/
def P18112700548398527964.Spec : Prop :=
  ∀ n, P18112700548398527964.a n = (A017452 n : ℝ)

end A017452

/-! ## A017452.P7460730160359064803

`(n-sqrt(A017582(n)))²²`
-/

namespace A017452.P7460730160359064803
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) - Real.sqrt (A017582 n : ℝ)) ^ 2) ^ 2

end

end A017452.P7460730160359064803

namespace A017452

/-- `(n-sqrt(A017582(n)))²²` -/
def P7460730160359064803.Spec : Prop :=
  ∀ n, P7460730160359064803.a n = (A017452 n : ℝ)

end A017452

/-! ## A017452.P9421369060092052134

`(A017317(n)+n+1)²²`
-/

namespace A017452.P9421369060092052134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017317 n + (n + 1 : ℤ)) ^ 2) ^ 2

end

end A017452.P9421369060092052134

namespace A017452

/-- `(A017317(n)+n+1)²²` -/
def P9421369060092052134.Spec : Prop :=
  ∀ n, P9421369060092052134.a n = A017452 n

theorem P9421369060092052134.correct : P9421369060092052134.Spec := by
  intro n
  simp only [A017452, Nat.add_sub_cancel, A017452.P9421369060092052134.a, A017452.P9416975292255906010.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017452

/-! ## A017452.P8620233433679350641

`(A017305(n)+n+2)²²`
-/

namespace A017452.P8620233433679350641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017305 n + (n + 2 : ℤ)) ^ 2) ^ 2

end

end A017452.P8620233433679350641

namespace A017452

/-- `(A017305(n)+n+2)²²` -/
def P8620233433679350641.Spec : Prop :=
  ∀ n, P8620233433679350641.a n = A017452 n

theorem P8620233433679350641.correct : P8620233433679350641.Spec := by
  intro n
  simp only [A017452, Nat.add_sub_cancel, A017452.P8620233433679350641.a, A017452.P9416975292255906010.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017452

/-!
# A017453: a(n) = (11*n + 5)^5.

The programs for A017453, the canonical program `A017453.P2837489911295367245` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017453 has offset 0).

The definition of A017453 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+5)^5` (program `A017453.P2837489911295367245`, by `A017453.P2837489911295367245.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017453.P2837489911295367245

`(11*n+5)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017453

/-- `(11*n+5)^5` -/
def P2837489911295367245.Spec : Prop :=
  ∀ n, (P2837489911295367245.a n : ℤ) = A017453 n

theorem P2837489911295367245.correct : P2837489911295367245.Spec := by
  intro n
  simp only [A017453]

end A017453

/-! ## A017453.P2564771959771888931

`sqrt(A017450(n)^5)`
-/

namespace A017453.P2564771959771888931
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017450 n ^ 5 : ℝ)

end

end A017453.P2564771959771888931

namespace A017453

/-- `sqrt(A017450(n)^5)` -/
def P2564771959771888931.Spec : Prop :=
  ∀ n, P2564771959771888931.a n = (A017453 n : ℝ)

end A017453

/-! ## A017453.P6492882635901215196

`A017452(n)*(11*n+5)`
-/

namespace A017453.P6492882635901215196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017452 n * (11 * n + 5 : ℤ)

end

end A017453.P6492882635901215196

namespace A017453

/-- `A017452(n)*(11*n+5)` -/
def P6492882635901215196.Spec : Prop :=
  ∀ n, P6492882635901215196.a n = A017453 n

theorem P6492882635901215196.correct : P6492882635901215196.Spec := by
  intro n
  simp only [A017453, Nat.add_sub_cancel, A017453.P6492882635901215196.a, A017453.P2837489911295367245.a, A017452, A017452.P9416975292255906010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017453

/-! ## A017453.P9741941748698688982

`A017449(n)*A017452(n)`
-/

namespace A017453.P9741941748698688982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n * A017452 n

end

end A017453.P9741941748698688982

namespace A017453

/-- `A017449(n)*A017452(n)` -/
def P9741941748698688982.Spec : Prop :=
  ∀ n, P9741941748698688982.a n = A017453 n

theorem P9741941748698688982.correct : P9741941748698688982.Spec := by
  intro n
  simp only [A017453, Nat.add_sub_cancel, A017453.P9741941748698688982.a, A017453.P2837489911295367245.a, A017449, A017449.P2551254521878161710.a, A017452, A017452.P9416975292255906010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017453

/-! ## A017453.P14288646730826898643

`A017450(n)*A017451(n)`
-/

namespace A017453.P14288646730826898643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017450 n * A017451 n

end

end A017453.P14288646730826898643

namespace A017453

/-- `A017450(n)*A017451(n)` -/
def P14288646730826898643.Spec : Prop :=
  ∀ n, P14288646730826898643.a n = A017453 n

theorem P14288646730826898643.correct : P14288646730826898643.Spec := by
  intro n
  simp only [A017453, Nat.add_sub_cancel, A017453.P14288646730826898643.a, A017453.P2837489911295367245.a, A017450, A017450.P1801296710465505424.a, A017451, A017451.P16046351165357907986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017453

/-! ## A017453.P6698952389568734123

`A017454(n)/A017449(n)`
-/

namespace A017453.P6698952389568734123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017454 n : ℚ) / (A017449 n : ℚ)

end

end A017453.P6698952389568734123

namespace A017453

/-- `A017454(n)/A017449(n)` -/
def P6698952389568734123.Spec : Prop :=
  ∀ n, P6698952389568734123.a n = (A017453 n : ℚ)

end A017453

/-! ## A017453.P17098186831156854050

`A017455(n)/A017450(n)`
-/

namespace A017453.P17098186831156854050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017455 n : ℚ) / (A017450 n : ℚ)

end

end A017453.P17098186831156854050

namespace A017453

/-- `A017455(n)/A017450(n)` -/
def P17098186831156854050.Spec : Prop :=
  ∀ n, P17098186831156854050.a n = (A017453 n : ℚ)

end A017453

/-! ## A017453.P9675523669665240467

`A017456(n)/A017451(n)`
-/

namespace A017453.P9675523669665240467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017456 n : ℚ) / (A017451 n : ℚ)

end

end A017453.P9675523669665240467

namespace A017453

/-- `A017456(n)/A017451(n)` -/
def P9675523669665240467.Spec : Prop :=
  ∀ n, P9675523669665240467.a n = (A017453 n : ℚ)

end A017453

/-! ## A017453.P3147993916808956883

`A017457(n)/A017452(n)`
-/

namespace A017453.P3147993916808956883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017457 n : ℚ) / (A017452 n : ℚ)

end

end A017453.P3147993916808956883

namespace A017453

/-- `A017457(n)/A017452(n)` -/
def P3147993916808956883.Spec : Prop :=
  ∀ n, P3147993916808956883.a n = (A017453 n : ℚ)

end A017453

/-! ## A017453.P4930688041433014829

`A017449(n)²*A017451(n)`
-/

namespace A017453.P4930688041433014829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n ^ 2 * A017451 n

end

end A017453.P4930688041433014829

namespace A017453

/-- `A017449(n)²*A017451(n)` -/
def P4930688041433014829.Spec : Prop :=
  ∀ n, P4930688041433014829.a n = A017453 n

theorem P4930688041433014829.correct : P4930688041433014829.Spec := by
  intro n
  simp only [A017453, Nat.add_sub_cancel, A017453.P4930688041433014829.a, A017453.P2837489911295367245.a, A017449, A017449.P2551254521878161710.a, A017451, A017451.P16046351165357907986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017453

/-! ## A017453.P6364875822599006585

`A017450(n)²*A017449(n)`
-/

namespace A017453.P6364875822599006585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017450 n ^ 2 * A017449 n

end

end A017453.P6364875822599006585

namespace A017453

/-- `A017450(n)²*A017449(n)` -/
def P6364875822599006585.Spec : Prop :=
  ∀ n, P6364875822599006585.a n = A017453 n

theorem P6364875822599006585.correct : P6364875822599006585.Spec := by
  intro n
  simp only [A017453, Nat.add_sub_cancel, A017453.P6364875822599006585.a, A017453.P2837489911295367245.a, A017449, A017449.P2551254521878161710.a, A017450, A017450.P1801296710465505424.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017453

/-! ## A017453.P3719256172351061359

`A017452(n)²/A017451(n)`
-/

namespace A017453.P3719256172351061359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017452 n ^ 2 : ℚ) / (A017451 n : ℚ)

end

end A017453.P3719256172351061359

namespace A017453

/-- `A017452(n)²/A017451(n)` -/
def P3719256172351061359.Spec : Prop :=
  ∀ n, P3719256172351061359.a n = (A017453 n : ℚ)

end A017453

/-! ## A017453.P6830069868923118560

`A017455(n)/A017449(n)²`
-/

namespace A017453.P6830069868923118560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017455 n : ℚ) / (A017449 n ^ 2 : ℚ)

end

end A017453.P6830069868923118560

namespace A017453

/-- `A017455(n)/A017449(n)²` -/
def P6830069868923118560.Spec : Prop :=
  ∀ n, P6830069868923118560.a n = (A017453 n : ℚ)

end A017453

/-! ## A017453.P13749483258581779316

`A017457(n)/A017450(n)²`
-/

namespace A017453.P13749483258581779316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017457 n : ℚ) / (A017450 n ^ 2 : ℚ)

end

end A017453.P13749483258581779316

namespace A017453

/-- `A017457(n)/A017450(n)²` -/
def P13749483258581779316.Spec : Prop :=
  ∀ n, P13749483258581779316.a n = (A017453 n : ℚ)

end A017453

/-! ## A017453.P1285145697717438665

`(A017437(n)+1)*A017452(n)`
-/

namespace A017453.P1285145697717438665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017437 n + 1) * A017452 n

end

end A017453.P1285145697717438665

namespace A017453

/-- `(A017437(n)+1)*A017452(n)` -/
def P1285145697717438665.Spec : Prop :=
  ∀ n, P1285145697717438665.a n = A017453 n

theorem P1285145697717438665.correct : P1285145697717438665.Spec := by
  intro n
  simp only [A017453, Nat.add_sub_cancel, A017453.P1285145697717438665.a, A017453.P2837489911295367245.a, A017437, A017437.P10409157242345038154.a, A017452, A017452.P9416975292255906010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017453

/-!
# A017454: a(n) = (11*n + 5)^6.

The programs for A017454, the canonical program `A017454.P9356834418525378816` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017454 has offset 0).

The definition of A017454 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+5)^6` (program `A017454.P9356834418525378816`, by `A017454.P9356834418525378816.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017454.P9356834418525378816

`(11*n+5)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017454

/-- `(11*n+5)^6` -/
def P9356834418525378816.Spec : Prop :=
  ∀ n, (P9356834418525378816.a n : ℤ) = A017454 n

theorem P9356834418525378816.correct : P9356834418525378816.Spec := by
  intro n
  simp only [A017454]

end A017454

/-! ## A017454.P15259461483816133711

`A017451(n)²`
-/

namespace A017454.P15259461483816133711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017451 n ^ 2

end

end A017454.P15259461483816133711

namespace A017454

/-- `A017451(n)²` -/
def P15259461483816133711.Spec : Prop :=
  ∀ n, P15259461483816133711.a n = A017454 n

theorem P15259461483816133711.correct : P15259461483816133711.Spec := by
  intro n
  simp only [A017454, Nat.add_sub_cancel, A017454.P15259461483816133711.a, A017454.P9356834418525378816.a, A017451, A017451.P16046351165357907986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017454

/-! ## A017454.P12604783275074759881

`sqrt(A017452(n)^3)`
-/

namespace A017454.P12604783275074759881
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017452 n ^ 3 : ℝ)

end

end A017454.P12604783275074759881

namespace A017454

/-- `sqrt(A017452(n)^3)` -/
def P12604783275074759881.Spec : Prop :=
  ∀ n, P12604783275074759881.a n = (A017454 n : ℝ)

end A017454

/-! ## A017454.P1730572740354746330

`A017449(n)*A017453(n)`
-/

namespace A017454.P1730572740354746330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n * A017453 n

end

end A017454.P1730572740354746330

namespace A017454

/-- `A017449(n)*A017453(n)` -/
def P1730572740354746330.Spec : Prop :=
  ∀ n, P1730572740354746330.a n = A017454 n

theorem P1730572740354746330.correct : P1730572740354746330.Spec := by
  intro n
  simp only [A017454, Nat.add_sub_cancel, A017454.P1730572740354746330.a, A017454.P9356834418525378816.a, A017449, A017449.P2551254521878161710.a, A017453, A017453.P2837489911295367245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017454

/-! ## A017454.P1929040020594733846

`A017450(n)*A017452(n)`
-/

namespace A017454.P1929040020594733846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017450 n * A017452 n

end

end A017454.P1929040020594733846

namespace A017454

/-- `A017450(n)*A017452(n)` -/
def P1929040020594733846.Spec : Prop :=
  ∀ n, P1929040020594733846.a n = A017454 n

theorem P1929040020594733846.correct : P1929040020594733846.Spec := by
  intro n
  simp only [A017454, Nat.add_sub_cancel, A017454.P1929040020594733846.a, A017454.P9356834418525378816.a, A017450, A017450.P1801296710465505424.a, A017452, A017452.P9416975292255906010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017454

/-! ## A017454.P15971325696899639657

`A017455(n)/A017449(n)`
-/

namespace A017454.P15971325696899639657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017455 n : ℚ) / (A017449 n : ℚ)

end

end A017454.P15971325696899639657

namespace A017454

/-- `A017455(n)/A017449(n)` -/
def P15971325696899639657.Spec : Prop :=
  ∀ n, P15971325696899639657.a n = (A017454 n : ℚ)

end A017454

/-! ## A017454.P17598721832407260850

`A017456(n)/A017450(n)`
-/

namespace A017454.P17598721832407260850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017456 n : ℚ) / (A017450 n : ℚ)

end

end A017454.P17598721832407260850

namespace A017454

/-- `A017456(n)/A017450(n)` -/
def P17598721832407260850.Spec : Prop :=
  ∀ n, P17598721832407260850.a n = (A017454 n : ℚ)

end A017454

/-! ## A017454.P15592658373071397514

`A017457(n)/A017451(n)`
-/

namespace A017454.P15592658373071397514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017457 n : ℚ) / (A017451 n : ℚ)

end

end A017454.P15592658373071397514

namespace A017454

/-- `A017457(n)/A017451(n)` -/
def P15592658373071397514.Spec : Prop :=
  ∀ n, P15592658373071397514.a n = (A017454 n : ℚ)

end A017454

/-! ## A017454.P1831985346770193012

`(A017449(n)*A017450(n))²`
-/

namespace A017454.P1831985346770193012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017449 n * A017450 n) ^ 2

end

end A017454.P1831985346770193012

namespace A017454

/-- `(A017449(n)*A017450(n))²` -/
def P1831985346770193012.Spec : Prop :=
  ∀ n, P1831985346770193012.a n = A017454 n

theorem P1831985346770193012.correct : P1831985346770193012.Spec := by
  intro n
  simp only [A017454, Nat.add_sub_cancel, A017454.P1831985346770193012.a, A017454.P9356834418525378816.a, A017449, A017449.P2551254521878161710.a, A017450, A017450.P1801296710465505424.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017454

/-! ## A017454.P6696805323307135187

`A017449(n)²*A017452(n)`
-/

namespace A017454.P6696805323307135187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n ^ 2 * A017452 n

end

end A017454.P6696805323307135187

namespace A017454

/-- `A017449(n)²*A017452(n)` -/
def P6696805323307135187.Spec : Prop :=
  ∀ n, P6696805323307135187.a n = A017454 n

theorem P6696805323307135187.correct : P6696805323307135187.Spec := by
  intro n
  simp only [A017454, Nat.add_sub_cancel, A017454.P6696805323307135187.a, A017454.P9356834418525378816.a, A017449, A017449.P2551254521878161710.a, A017452, A017452.P9416975292255906010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017454

/-! ## A017454.P16711355560116828668

`(A017453(n)/A017450(n))²`
-/

namespace A017454.P16711355560116828668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017453 n : ℚ) / (A017450 n : ℚ)) ^ 2

end

end A017454.P16711355560116828668

namespace A017454

/-- `(A017453(n)/A017450(n))²` -/
def P16711355560116828668.Spec : Prop :=
  ∀ n, P16711355560116828668.a n = (A017454 n : ℚ)

end A017454

/-! ## A017454.P2303093740593139616

`A017453(n)²/A017452(n)`
-/

namespace A017454.P2303093740593139616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017453 n ^ 2 : ℚ) / (A017452 n : ℚ)

end

end A017454.P2303093740593139616

namespace A017454

/-- `A017453(n)²/A017452(n)` -/
def P2303093740593139616.Spec : Prop :=
  ∀ n, P2303093740593139616.a n = (A017454 n : ℚ)

end A017454

/-! ## A017454.P8366269007238057234

`(A017455(n)/A017452(n))²`
-/

namespace A017454.P8366269007238057234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017455 n : ℚ) / (A017452 n : ℚ)) ^ 2

end

end A017454.P8366269007238057234

namespace A017454

/-- `(A017455(n)/A017452(n))²` -/
def P8366269007238057234.Spec : Prop :=
  ∀ n, P8366269007238057234.a n = (A017454 n : ℚ)

end A017454

/-! ## A017454.P15986490760498341665

`A017456(n)/A017449(n)²`
-/

namespace A017454.P15986490760498341665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017456 n : ℚ) / (A017449 n ^ 2 : ℚ)

end

end A017454.P15986490760498341665

namespace A017454

/-- `A017456(n)/A017449(n)²` -/
def P15986490760498341665.Spec : Prop :=
  ∀ n, P15986490760498341665.a n = (A017454 n : ℚ)

end A017454

/-! ## A017454.P3259110286680000888

`(A017456(n)/A017453(n))²`
-/

namespace A017454.P3259110286680000888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017456 n : ℚ) / (A017453 n : ℚ)) ^ 2

end

end A017454.P3259110286680000888

namespace A017454

/-- `(A017456(n)/A017453(n))²` -/
def P3259110286680000888.Spec : Prop :=
  ∀ n, P3259110286680000888.a n = (A017454 n : ℚ)

end A017454

/-! ## A017454.P7817847019803989812

`(A017437(n)+1)*A017453(n)`
-/

namespace A017454.P7817847019803989812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017437 n + 1) * A017453 n

end

end A017454.P7817847019803989812

namespace A017454

/-- `(A017437(n)+1)*A017453(n)` -/
def P7817847019803989812.Spec : Prop :=
  ∀ n, P7817847019803989812.a n = A017454 n

theorem P7817847019803989812.correct : P7817847019803989812.Spec := by
  intro n
  simp only [A017454, Nat.add_sub_cancel, A017454.P7817847019803989812.a, A017454.P9356834418525378816.a, A017437, A017437.P10409157242345038154.a, A017453, A017453.P2837489911295367245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017454

/-!
# A017455: a(n) = (11*n + 5)^7.

The programs for A017455, the canonical program `A017455.P8889166629371763521` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017455 has offset 0).

The definition of A017455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+5)^7` (program `A017455.P8889166629371763521`, by `A017455.P8889166629371763521.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017455.P8889166629371763521

`(11*n+5)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017455

/-- `(11*n+5)^7` -/
def P8889166629371763521.Spec : Prop :=
  ∀ n, (P8889166629371763521.a n : ℤ) = A017455 n

theorem P8889166629371763521.correct : P8889166629371763521.Spec := by
  intro n
  simp only [A017455]

end A017455

/-! ## A017455.P13240592120881318501

`A017449(n)*A017454(n)`
-/

namespace A017455.P13240592120881318501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n * A017454 n

end

end A017455.P13240592120881318501

namespace A017455

/-- `A017449(n)*A017454(n)` -/
def P13240592120881318501.Spec : Prop :=
  ∀ n, P13240592120881318501.a n = A017455 n

theorem P13240592120881318501.correct : P13240592120881318501.Spec := by
  intro n
  simp only [A017455, Nat.add_sub_cancel, A017455.P13240592120881318501.a, A017455.P8889166629371763521.a, A017449, A017449.P2551254521878161710.a, A017454, A017454.P9356834418525378816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017455

/-! ## A017455.P8528167276647018882

`A017450(n)*A017453(n)`
-/

namespace A017455.P8528167276647018882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017450 n * A017453 n

end

end A017455.P8528167276647018882

namespace A017455

/-- `A017450(n)*A017453(n)` -/
def P8528167276647018882.Spec : Prop :=
  ∀ n, P8528167276647018882.a n = A017455 n

theorem P8528167276647018882.correct : P8528167276647018882.Spec := by
  intro n
  simp only [A017455, Nat.add_sub_cancel, A017455.P8528167276647018882.a, A017455.P8889166629371763521.a, A017450, A017450.P1801296710465505424.a, A017453, A017453.P2837489911295367245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017455

/-! ## A017455.P14931138129446812330

`A017451(n)*A017452(n)`
-/

namespace A017455.P14931138129446812330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017451 n * A017452 n

end

end A017455.P14931138129446812330

namespace A017455

/-- `A017451(n)*A017452(n)` -/
def P14931138129446812330.Spec : Prop :=
  ∀ n, P14931138129446812330.a n = A017455 n

theorem P14931138129446812330.correct : P14931138129446812330.Spec := by
  intro n
  simp only [A017455, Nat.add_sub_cancel, A017455.P14931138129446812330.a, A017455.P8889166629371763521.a, A017451, A017451.P16046351165357907986.a, A017452, A017452.P9416975292255906010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017455

/-! ## A017455.P4417715965701555044

`A017456(n)/A017449(n)`
-/

namespace A017455.P4417715965701555044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017456 n : ℚ) / (A017449 n : ℚ)

end

end A017455.P4417715965701555044

namespace A017455

/-- `A017456(n)/A017449(n)` -/
def P4417715965701555044.Spec : Prop :=
  ∀ n, P4417715965701555044.a n = (A017455 n : ℚ)

end A017455

/-! ## A017455.P11016807218940244157

`A017457(n)/A017450(n)`
-/

namespace A017455.P11016807218940244157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017457 n : ℚ) / (A017450 n : ℚ)

end

end A017455.P11016807218940244157

namespace A017455

/-- `A017457(n)/A017450(n)` -/
def P11016807218940244157.Spec : Prop :=
  ∀ n, P11016807218940244157.a n = (A017455 n : ℚ)

end A017455

/-! ## A017455.P7439003542238544994

`A017449(n)²*A017453(n)`
-/

namespace A017455.P7439003542238544994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n ^ 2 * A017453 n

end

end A017455.P7439003542238544994

namespace A017455

/-- `A017449(n)²*A017453(n)` -/
def P7439003542238544994.Spec : Prop :=
  ∀ n, P7439003542238544994.a n = A017455 n

theorem P7439003542238544994.correct : P7439003542238544994.Spec := by
  intro n
  simp only [A017455, Nat.add_sub_cancel, A017455.P7439003542238544994.a, A017455.P8889166629371763521.a, A017449, A017449.P2551254521878161710.a, A017453, A017453.P2837489911295367245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017455

/-! ## A017455.P16541624955184460725

`A017450(n)²*A017451(n)`
-/

namespace A017455.P16541624955184460725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017450 n ^ 2 * A017451 n

end

end A017455.P16541624955184460725

namespace A017455

/-- `A017450(n)²*A017451(n)` -/
def P16541624955184460725.Spec : Prop :=
  ∀ n, P16541624955184460725.a n = A017455 n

theorem P16541624955184460725.correct : P16541624955184460725.Spec := by
  intro n
  simp only [A017455, Nat.add_sub_cancel, A017455.P16541624955184460725.a, A017455.P8889166629371763521.a, A017450, A017450.P1801296710465505424.a, A017451, A017451.P16046351165357907986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017455

/-! ## A017455.P13373051919908769012

`A017451(n)²*A017449(n)`
-/

namespace A017455.P13373051919908769012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017451 n ^ 2 * A017449 n

end

end A017455.P13373051919908769012

namespace A017455

/-- `A017451(n)²*A017449(n)` -/
def P13373051919908769012.Spec : Prop :=
  ∀ n, P13373051919908769012.a n = A017455 n

theorem P13373051919908769012.correct : P13373051919908769012.Spec := by
  intro n
  simp only [A017455, Nat.add_sub_cancel, A017455.P13373051919908769012.a, A017455.P8889166629371763521.a, A017449, A017449.P2551254521878161710.a, A017451, A017451.P16046351165357907986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017455

/-! ## A017455.P1412060782784559521

`A017452(n)²/A017449(n)`
-/

namespace A017455.P1412060782784559521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017452 n ^ 2 : ℚ) / (A017449 n : ℚ)

end

end A017455.P1412060782784559521

namespace A017455

/-- `A017452(n)²/A017449(n)` -/
def P1412060782784559521.Spec : Prop :=
  ∀ n, P1412060782784559521.a n = (A017455 n : ℚ)

end A017455

/-! ## A017455.P14953492209363218689

`A017453(n)²/A017451(n)`
-/

namespace A017455.P14953492209363218689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017453 n ^ 2 : ℚ) / (A017451 n : ℚ)

end

end A017455.P14953492209363218689

namespace A017455

/-- `A017453(n)²/A017451(n)` -/
def P14953492209363218689.Spec : Prop :=
  ∀ n, P14953492209363218689.a n = (A017455 n : ℚ)

end A017455

/-! ## A017455.P16762826359337937924

`A017454(n)²/A017453(n)`
-/

namespace A017455.P16762826359337937924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017454 n ^ 2 : ℚ) / (A017453 n : ℚ)

end

end A017455.P16762826359337937924

namespace A017455

/-- `A017454(n)²/A017453(n)` -/
def P16762826359337937924.Spec : Prop :=
  ∀ n, P16762826359337937924.a n = (A017455 n : ℚ)

end A017455

/-! ## A017455.P4905276003247856685

`A017457(n)/A017449(n)²`
-/

namespace A017455.P4905276003247856685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017457 n : ℚ) / (A017449 n ^ 2 : ℚ)

end

end A017455.P4905276003247856685

namespace A017455

/-- `A017457(n)/A017449(n)²` -/
def P4905276003247856685.Spec : Prop :=
  ∀ n, P4905276003247856685.a n = (A017455 n : ℚ)

end A017455

/-! ## A017455.P9529343757198382023

`(A017437(n)+1)*A017454(n)`
-/

namespace A017455.P9529343757198382023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017437 n + 1) * A017454 n

end

end A017455.P9529343757198382023

namespace A017455

/-- `(A017437(n)+1)*A017454(n)` -/
def P9529343757198382023.Spec : Prop :=
  ∀ n, P9529343757198382023.a n = A017455 n

theorem P9529343757198382023.correct : P9529343757198382023.Spec := by
  intro n
  simp only [A017455, Nat.add_sub_cancel, A017455.P9529343757198382023.a, A017455.P8889166629371763521.a, A017437, A017437.P10409157242345038154.a, A017454, A017454.P9356834418525378816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017455

/-! ## A017455.P10291146216538382698

`A017456(n)/(A017437(n)+1)`
-/

namespace A017455.P10291146216538382698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017456 n : ℚ) / (A017437 n + 1 : ℚ)

end

end A017455.P10291146216538382698

namespace A017455

/-- `A017456(n)/(A017437(n)+1)` -/
def P10291146216538382698.Spec : Prop :=
  ∀ n, P10291146216538382698.a n = (A017455 n : ℚ)

theorem P10291146216538382698.correct : P10291146216538382698.Spec := by
  intro n
  simp only [A017455, Nat.add_sub_cancel, A017455.P10291146216538382698.a, A017455.P8889166629371763521.a, A017437, A017437.P10409157242345038154.a, A017456, A017456.P5539033001543796870.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017455

/-! ## A017455.P16465253680102390409

`A017450(n)²²/A017449(n)`
-/

namespace A017455.P16465253680102390409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017450 n ^ 2) ^ 2 : ℚ) / (A017449 n : ℚ)

end

end A017455.P16465253680102390409

namespace A017455

/-- `A017450(n)²²/A017449(n)` -/
def P16465253680102390409.Spec : Prop :=
  ∀ n, P16465253680102390409.a n = (A017455 n : ℚ)

end A017455

/-!
# A017456: a(n) = (11*n + 5)^8.

The programs for A017456, the canonical program `A017456.P5539033001543796870` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017456 has offset 0).

The definition of A017456 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+5)^8` (program `A017456.P5539033001543796870`, by `A017456.P5539033001543796870.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017456.P5539033001543796870

`(11*n+5)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017456

/-- `(11*n+5)^8` -/
def P5539033001543796870.Spec : Prop :=
  ∀ n, (P5539033001543796870.a n : ℤ) = A017456 n

theorem P5539033001543796870.correct : P5539033001543796870.Spec := by
  intro n
  simp only [A017456]

end A017456

/-! ## A017456.P14815936065642108936

`A017452(n)²`
-/

namespace A017456.P14815936065642108936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017452 n ^ 2

end

end A017456.P14815936065642108936

namespace A017456

/-- `A017452(n)²` -/
def P14815936065642108936.Spec : Prop :=
  ∀ n, P14815936065642108936.a n = A017456 n

theorem P14815936065642108936.correct : P14815936065642108936.Spec := by
  intro n
  simp only [A017456, Nat.add_sub_cancel, A017456.P14815936065642108936.a, A017456.P5539033001543796870.a, A017452, A017452.P9416975292255906010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017456

/-! ## A017456.P1666903585221494720

`A017450(n)²²`
-/

namespace A017456.P1666903585221494720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017450 n ^ 2) ^ 2

end

end A017456.P1666903585221494720

namespace A017456

/-- `A017450(n)²²` -/
def P1666903585221494720.Spec : Prop :=
  ∀ n, P1666903585221494720.a n = A017456 n

theorem P1666903585221494720.correct : P1666903585221494720.Spec := by
  intro n
  simp only [A017456, Nat.add_sub_cancel, A017456.P1666903585221494720.a, A017456.P5539033001543796870.a, A017450, A017450.P1801296710465505424.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017456

/-! ## A017456.P8116830045002715048

`(A017449(n)^4)²`
-/

namespace A017456.P8116830045002715048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017449 n ^ 4) ^ 2

end

end A017456.P8116830045002715048

namespace A017456

/-- `(A017449(n)^4)²` -/
def P8116830045002715048.Spec : Prop :=
  ∀ n, P8116830045002715048.a n = A017456 n

theorem P8116830045002715048.correct : P8116830045002715048.Spec := by
  intro n
  simp only [A017456, Nat.add_sub_cancel, A017456.P8116830045002715048.a, A017456.P5539033001543796870.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017456

/-! ## A017456.P8616684802504456016

`(A017437(n)+1)²²²`
-/

namespace A017456.P8616684802504456016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017437 n + 1) ^ 2) ^ 2) ^ 2

end

end A017456.P8616684802504456016

namespace A017456

/-- `(A017437(n)+1)²²²` -/
def P8616684802504456016.Spec : Prop :=
  ∀ n, P8616684802504456016.a n = A017456 n

theorem P8616684802504456016.correct : P8616684802504456016.Spec := by
  intro n
  simp only [A017456, Nat.add_sub_cancel, A017456.P8616684802504456016.a, A017456.P5539033001543796870.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017456

/-! ## A017456.P11936684706821105850

`(A017425(n)+2)²²²`
-/

namespace A017456.P11936684706821105850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017425 n + 2) ^ 2) ^ 2) ^ 2

end

end A017456.P11936684706821105850

namespace A017456

/-- `(A017425(n)+2)²²²` -/
def P11936684706821105850.Spec : Prop :=
  ∀ n, P11936684706821105850.a n = A017456 n

theorem P11936684706821105850.correct : P11936684706821105850.Spec := by
  intro n
  simp only [A017456, Nat.add_sub_cancel, A017456.P11936684706821105850.a, A017456.P5539033001543796870.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017456

/-! ## A017456.P13314158651356394346

`(1-A017461(n))²²²`
-/

namespace A017456.P13314158651356394346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017461 n) ^ 2) ^ 2) ^ 2

end

end A017456.P13314158651356394346

namespace A017456

/-- `(1-A017461(n))²²²` -/
def P13314158651356394346.Spec : Prop :=
  ∀ n, P13314158651356394346.a n = A017456 n

theorem P13314158651356394346.correct : P13314158651356394346.Spec := by
  intro n
  simp only [A017456, Nat.add_sub_cancel, A017456.P13314158651356394346.a, A017456.P5539033001543796870.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017456

/-! ## A017456.P9780181595071503000

`(2-A017473(n))²²²`
-/

namespace A017456.P9780181595071503000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017473 n) ^ 2) ^ 2) ^ 2

end

end A017456.P9780181595071503000

namespace A017456

/-- `(2-A017473(n))²²²` -/
def P9780181595071503000.Spec : Prop :=
  ∀ n, P9780181595071503000.a n = A017456 n

theorem P9780181595071503000.correct : P9780181595071503000.Spec := by
  intro n
  simp only [A017456, Nat.add_sub_cancel, A017456.P9780181595071503000.a, A017456.P5539033001543796870.a, A017473, A017473.P6794540674081733570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017456

/-! ## A017456.P5286431491106857239

`(A017329(n)+n)²²²`
-/

namespace A017456.P5286431491106857239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017329 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017456.P5286431491106857239

namespace A017456

/-- `(A017329(n)+n)²²²` -/
def P5286431491106857239.Spec : Prop :=
  ∀ n, P5286431491106857239.a n = A017456 n

theorem P5286431491106857239.correct : P5286431491106857239.Spec := by
  intro n
  simp only [A017456, Nat.add_sub_cancel, A017456.P5286431491106857239.a, A017456.P5539033001543796870.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017456

/-! ## A017456.P12598923137098645435

`(n-A017581(n))²²²`
-/

namespace A017456.P12598923137098645435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017581 n) ^ 2) ^ 2) ^ 2

end

end A017456.P12598923137098645435

namespace A017456

/-- `(n-A017581(n))²²²` -/
def P12598923137098645435.Spec : Prop :=
  ∀ n, P12598923137098645435.a n = A017456 n

theorem P12598923137098645435.correct : P12598923137098645435.Spec := by
  intro n
  simp only [A017456, Nat.add_sub_cancel, A017456.P12598923137098645435.a, A017456.P5539033001543796870.a, A017581, A017581.P8854877261644846518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017456

/-! ## A017456.P17822471662869453450

`(A004770(n+1)+3*n)²²²`
-/

namespace A017456.P17822471662869453450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A004770 (n + 1) + (3 * n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017456.P17822471662869453450

namespace A017456

/-- `(A004770(n+1)+3*n)²²²` -/
def P17822471662869453450.Spec : Prop :=
  ∀ n, P17822471662869453450.a n = A017456 n

theorem P17822471662869453450.correct : P17822471662869453450.Spec := by
  intro n
  simp only [A017456, Nat.add_sub_cancel, A017456.P17822471662869453450.a, A017456.P5539033001543796870.a, A004770, A004770.P3348596714663788795.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017456

/-! ## A017456.P9145258269243508784

`A017449(n)*A017455(n)`
-/

namespace A017456.P9145258269243508784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n * A017455 n

end

end A017456.P9145258269243508784

namespace A017456

/-- `A017449(n)*A017455(n)` -/
def P9145258269243508784.Spec : Prop :=
  ∀ n, P9145258269243508784.a n = A017456 n

theorem P9145258269243508784.correct : P9145258269243508784.Spec := by
  intro n
  simp only [A017456, Nat.add_sub_cancel, A017456.P9145258269243508784.a, A017456.P5539033001543796870.a, A017449, A017449.P2551254521878161710.a, A017455, A017455.P8889166629371763521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017456

/-! ## A017456.P13408950889974455763

`A017450(n)*A017454(n)`
-/

namespace A017456.P13408950889974455763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017450 n * A017454 n

end

end A017456.P13408950889974455763

namespace A017456

/-- `A017450(n)*A017454(n)` -/
def P13408950889974455763.Spec : Prop :=
  ∀ n, P13408950889974455763.a n = A017456 n

theorem P13408950889974455763.correct : P13408950889974455763.Spec := by
  intro n
  simp only [A017456, Nat.add_sub_cancel, A017456.P13408950889974455763.a, A017456.P5539033001543796870.a, A017450, A017450.P1801296710465505424.a, A017454, A017454.P9356834418525378816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017456

/-! ## A017456.P15764778674193507588

`A017451(n)*A017453(n)`
-/

namespace A017456.P15764778674193507588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017451 n * A017453 n

end

end A017456.P15764778674193507588

namespace A017456

/-- `A017451(n)*A017453(n)` -/
def P15764778674193507588.Spec : Prop :=
  ∀ n, P15764778674193507588.a n = A017456 n

theorem P15764778674193507588.correct : P15764778674193507588.Spec := by
  intro n
  simp only [A017456, Nat.add_sub_cancel, A017456.P15764778674193507588.a, A017456.P5539033001543796870.a, A017451, A017451.P16046351165357907986.a, A017453, A017453.P2837489911295367245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017456

/-! ## A017456.P15630585260910309817

`A017457(n)/A017449(n)`
-/

namespace A017456.P15630585260910309817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017457 n : ℚ) / (A017449 n : ℚ)

end

end A017456.P15630585260910309817

namespace A017456

/-- `A017457(n)/A017449(n)` -/
def P15630585260910309817.Spec : Prop :=
  ∀ n, P15630585260910309817.a n = (A017456 n : ℚ)

end A017456

/-! ## A017456.P8352019560152287078

`(A017455(n)/A017451(n))²`
-/

namespace A017456.P8352019560152287078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017455 n : ℚ) / (A017451 n : ℚ)) ^ 2

end

end A017456.P8352019560152287078

namespace A017456

/-- `(A017455(n)/A017451(n))²` -/
def P8352019560152287078.Spec : Prop :=
  ∀ n, P8352019560152287078.a n = (A017456 n : ℚ)

end A017456

/-! ## A017456.P7742104194420720183

`(A017457(n)/A017453(n))²`
-/

namespace A017456.P7742104194420720183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017457 n : ℚ) / (A017453 n : ℚ)) ^ 2

end

end A017456.P7742104194420720183

namespace A017456

/-- `(A017457(n)/A017453(n))²` -/
def P7742104194420720183.Spec : Prop :=
  ∀ n, P7742104194420720183.a n = (A017456 n : ℚ)

end A017456

/-!
# A017457: a(n) = (11*n + 5)^9.

The programs for A017457, the canonical program `A017457.P7359141122908935857` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017457 has offset 0).

The definition of A017457 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+5)^9` (program `A017457.P7359141122908935857`, by `A017457.P7359141122908935857.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017457.P7359141122908935857

`(11*n+5)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017457

/-- `(11*n+5)^9` -/
def P7359141122908935857.Spec : Prop :=
  ∀ n, (P7359141122908935857.a n : ℤ) = A017457 n

theorem P7359141122908935857.correct : P7359141122908935857.Spec := by
  intro n
  simp only [A017457]

end A017457

/-! ## A017457.P18166082462155560416

`sqrt(A017454(n)^3)`
-/

namespace A017457.P18166082462155560416
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017454 n ^ 3 : ℝ)

end

end A017457.P18166082462155560416

namespace A017457

/-- `sqrt(A017454(n)^3)` -/
def P18166082462155560416.Spec : Prop :=
  ∀ n, P18166082462155560416.a n = (A017457 n : ℝ)

end A017457

/-! ## A017457.P13804746404267259104

`A017449(n)*A017456(n)`
-/

namespace A017457.P13804746404267259104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n * A017456 n

end

end A017457.P13804746404267259104

namespace A017457

/-- `A017449(n)*A017456(n)` -/
def P13804746404267259104.Spec : Prop :=
  ∀ n, P13804746404267259104.a n = A017457 n

theorem P13804746404267259104.correct : P13804746404267259104.Spec := by
  intro n
  simp only [A017457, Nat.add_sub_cancel, A017457.P13804746404267259104.a, A017457.P7359141122908935857.a, A017449, A017449.P2551254521878161710.a, A017456, A017456.P5539033001543796870.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017457

/-! ## A017457.P2979335389760756024

`A017450(n)*A017455(n)`
-/

namespace A017457.P2979335389760756024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017450 n * A017455 n

end

end A017457.P2979335389760756024

namespace A017457

/-- `A017450(n)*A017455(n)` -/
def P2979335389760756024.Spec : Prop :=
  ∀ n, P2979335389760756024.a n = A017457 n

theorem P2979335389760756024.correct : P2979335389760756024.Spec := by
  intro n
  simp only [A017457, Nat.add_sub_cancel, A017457.P2979335389760756024.a, A017457.P7359141122908935857.a, A017450, A017450.P1801296710465505424.a, A017455, A017455.P8889166629371763521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017457

/-! ## A017457.P7712091081874915811

`A017451(n)*A017454(n)`
-/

namespace A017457.P7712091081874915811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017451 n * A017454 n

end

end A017457.P7712091081874915811

namespace A017457

/-- `A017451(n)*A017454(n)` -/
def P7712091081874915811.Spec : Prop :=
  ∀ n, P7712091081874915811.a n = A017457 n

theorem P7712091081874915811.correct : P7712091081874915811.Spec := by
  intro n
  simp only [A017457, Nat.add_sub_cancel, A017457.P7712091081874915811.a, A017457.P7359141122908935857.a, A017451, A017451.P16046351165357907986.a, A017454, A017454.P9356834418525378816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017457

/-! ## A017457.P6507775552210096930

`A017452(n)*A017453(n)`
-/

namespace A017457.P6507775552210096930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017452 n * A017453 n

end

end A017457.P6507775552210096930

namespace A017457

/-- `A017452(n)*A017453(n)` -/
def P6507775552210096930.Spec : Prop :=
  ∀ n, P6507775552210096930.a n = A017457 n

theorem P6507775552210096930.correct : P6507775552210096930.Spec := by
  intro n
  simp only [A017457, Nat.add_sub_cancel, A017457.P6507775552210096930.a, A017457.P7359141122908935857.a, A017452, A017452.P9416975292255906010.a, A017453, A017453.P2837489911295367245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017457

/-! ## A017457.P7969986732342746241

`A017449(n)²*A017455(n)`
-/

namespace A017457.P7969986732342746241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n ^ 2 * A017455 n

end

end A017457.P7969986732342746241

namespace A017457

/-- `A017449(n)²*A017455(n)` -/
def P7969986732342746241.Spec : Prop :=
  ∀ n, P7969986732342746241.a n = A017457 n

theorem P7969986732342746241.correct : P7969986732342746241.Spec := by
  intro n
  simp only [A017457, Nat.add_sub_cancel, A017457.P7969986732342746241.a, A017457.P7359141122908935857.a, A017449, A017449.P2551254521878161710.a, A017455, A017455.P8889166629371763521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017457

/-! ## A017457.P16713753985589203847

`A017450(n)²*A017453(n)`
-/

namespace A017457.P16713753985589203847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017450 n ^ 2 * A017453 n

end

end A017457.P16713753985589203847

namespace A017457

/-- `A017450(n)²*A017453(n)` -/
def P16713753985589203847.Spec : Prop :=
  ∀ n, P16713753985589203847.a n = A017457 n

theorem P16713753985589203847.correct : P16713753985589203847.Spec := by
  intro n
  simp only [A017457, Nat.add_sub_cancel, A017457.P16713753985589203847.a, A017457.P7359141122908935857.a, A017450, A017450.P1801296710465505424.a, A017453, A017453.P2837489911295367245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017457

/-! ## A017457.P11502752566104111675

`A017452(n)²*A017449(n)`
-/

namespace A017457.P11502752566104111675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017452 n ^ 2 * A017449 n

end

end A017457.P11502752566104111675

namespace A017457

/-- `A017452(n)²*A017449(n)` -/
def P11502752566104111675.Spec : Prop :=
  ∀ n, P11502752566104111675.a n = A017457 n

theorem P11502752566104111675.correct : P11502752566104111675.Spec := by
  intro n
  simp only [A017457, Nat.add_sub_cancel, A017457.P11502752566104111675.a, A017457.P7359141122908935857.a, A017449, A017449.P2551254521878161710.a, A017452, A017452.P9416975292255906010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017457

/-! ## A017457.P5558803266405577105

`A017453(n)²/A017449(n)`
-/

namespace A017457.P5558803266405577105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017453 n ^ 2 : ℚ) / (A017449 n : ℚ)

end

end A017457.P5558803266405577105

namespace A017457

/-- `A017453(n)²/A017449(n)` -/
def P5558803266405577105.Spec : Prop :=
  ∀ n, P5558803266405577105.a n = (A017457 n : ℚ)

end A017457

/-! ## A017457.P1105171061803069511

`A017455(n)²/A017453(n)`
-/

namespace A017457.P1105171061803069511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017455 n ^ 2 : ℚ) / (A017453 n : ℚ)

end

end A017457.P1105171061803069511

namespace A017457

/-- `A017455(n)²/A017453(n)` -/
def P1105171061803069511.Spec : Prop :=
  ∀ n, P1105171061803069511.a n = (A017457 n : ℚ)

end A017457

/-! ## A017457.P9167169838888518334

`A017450(n)²²*A017449(n)`
-/

namespace A017457.P9167169838888518334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017450 n ^ 2) ^ 2 * A017449 n

end

end A017457.P9167169838888518334

namespace A017457

/-- `A017450(n)²²*A017449(n)` -/
def P9167169838888518334.Spec : Prop :=
  ∀ n, P9167169838888518334.a n = A017457 n

theorem P9167169838888518334.correct : P9167169838888518334.Spec := by
  intro n
  simp only [A017457, Nat.add_sub_cancel, A017457.P9167169838888518334.a, A017457.P7359141122908935857.a, A017449, A017449.P2551254521878161710.a, A017450, A017450.P1801296710465505424.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017457

/-! ## A017457.P12439743740111447679

`A017452(n)²²/A017455(n)`
-/

namespace A017457.P12439743740111447679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017452 n ^ 2) ^ 2 : ℚ) / (A017455 n : ℚ)

end

end A017457.P12439743740111447679

namespace A017457

/-- `A017452(n)²²/A017455(n)` -/
def P12439743740111447679.Spec : Prop :=
  ∀ n, P12439743740111447679.a n = (A017457 n : ℚ)

end A017457

/-! ## A017457.P8581070386029300928

`(A017437(n)+1)*A017452(n)²`
-/

namespace A017457.P8581070386029300928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017437 n + 1) * A017452 n ^ 2

end

end A017457.P8581070386029300928

namespace A017457

/-- `(A017437(n)+1)*A017452(n)²` -/
def P8581070386029300928.Spec : Prop :=
  ∀ n, P8581070386029300928.a n = A017457 n

theorem P8581070386029300928.correct : P8581070386029300928.Spec := by
  intro n
  simp only [A017457, Nat.add_sub_cancel, A017457.P8581070386029300928.a, A017457.P7359141122908935857.a, A017437, A017437.P10409157242345038154.a, A017452, A017452.P9416975292255906010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017457

/-! ## A017457.P14036255119621463219

`A001017(A017449(n))`
-/

namespace A017457.P14036255119621463219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017449 n).toNat

end

end A017457.P14036255119621463219

namespace A017457

/-- `A001017(A017449(n))` -/
def P14036255119621463219.Spec : Prop :=
  ∀ n, P14036255119621463219.a n = A017457 n

end A017457

/-!
# A017458: 

The programs for A017458, there is no canonical definition to state claims against.
-/

/-! ## A017458.P11035177470371748057

`(11*n+5)^10`
-/

namespace A017458.P11035177470371748057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 5) ^ 10

end

end A017458.P11035177470371748057

/-! ## A017458.P6026408576117235297

`A017453(n)²`
-/

namespace A017458.P6026408576117235297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017453 n ^ 2

end

end A017458.P6026408576117235297

/-! ## A017458.P2289810551548395753

`(A017449(n)^5)²`
-/

namespace A017458.P2289810551548395753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017449 n ^ 5) ^ 2

end

end A017458.P2289810551548395753

/-! ## A017458.P552143332630444651

`A017449(n)*A017457(n)`
-/

namespace A017458.P552143332630444651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n * A017457 n

end

end A017458.P552143332630444651

/-! ## A017458.P18257379461796162970

`A017450(n)*A017456(n)`
-/

namespace A017458.P18257379461796162970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017450 n * A017456 n

end

end A017458.P18257379461796162970

/-! ## A017458.P8347545295963109980

`A017451(n)*A017455(n)`
-/

namespace A017458.P8347545295963109980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017451 n * A017455 n

end

end A017458.P8347545295963109980

/-! ## A017458.P14884735969444585832

`A017452(n)*A017454(n)`
-/

namespace A017458.P14884735969444585832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017452 n * A017454 n

end

end A017458.P14884735969444585832

/-! ## A017458.P11119265924568818520

`(A017449(n)*A017452(n))²`
-/

namespace A017458.P11119265924568818520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017449 n * A017452 n) ^ 2

end

end A017458.P11119265924568818520

/-! ## A017458.P7453453717150578072

`A017449(n)²*A017456(n)`
-/

namespace A017458.P7453453717150578072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n ^ 2 * A017456 n

end

end A017458.P7453453717150578072

/-! ## A017458.P13477740122721553246

`(A017450(n)*A017451(n))²`
-/

namespace A017458.P13477740122721553246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017450 n * A017451 n) ^ 2

end

end A017458.P13477740122721553246

/-! ## A017458.P6418828449926678861

`A017450(n)²*A017454(n)`
-/

namespace A017458.P6418828449926678861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017450 n ^ 2 * A017454 n

end

end A017458.P6418828449926678861

/-! ## A017458.P4706135448068685955

`A017451(n)²*A017452(n)`
-/

namespace A017458.P4706135448068685955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017451 n ^ 2 * A017452 n

end

end A017458.P4706135448068685955

/-! ## A017458.P7880999979952887233

`A017452(n)²*A017450(n)`
-/

namespace A017458.P7880999979952887233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017452 n ^ 2 * A017450 n

end

end A017458.P7880999979952887233

/-! ## A017458.P17425919395674800396

`(A017454(n)/A017449(n))²`
-/

namespace A017458.P17425919395674800396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017454 n : ℚ) / (A017449 n : ℚ)) ^ 2

end

end A017458.P17425919395674800396

/-! ## A017458.P18131524311068705488

`(A017455(n)/A017450(n))²`
-/

namespace A017458.P18131524311068705488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017455 n : ℚ) / (A017450 n : ℚ)) ^ 2

end

end A017458.P18131524311068705488

/-! ## A017458.P14768281979665481628

`A017455(n)²/A017452(n)`
-/

namespace A017458.P14768281979665481628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017455 n ^ 2 : ℚ) / (A017452 n : ℚ)

end

end A017458.P14768281979665481628

/-! ## A017458.P10286068063841797874

`(A017456(n)/A017451(n))²`
-/

namespace A017458.P10286068063841797874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017456 n : ℚ) / (A017451 n : ℚ)) ^ 2

end

end A017458.P10286068063841797874

/-!
# A017459: 

The programs for A017459, there is no canonical definition to state claims against.
-/

/-! ## A017459.P7776906315249275401

`(11*n+5)^11`
-/

namespace A017459.P7776906315249275401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 5) ^ 11

end

end A017459.P7776906315249275401

/-! ## A017459.P6086952512587806642

`A017450(n)*A017457(n)`
-/

namespace A017459.P6086952512587806642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017450 n * A017457 n

end

end A017459.P6086952512587806642

/-! ## A017459.P7754408197662787335

`A017451(n)*A017456(n)`
-/

namespace A017459.P7754408197662787335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017451 n * A017456 n

end

end A017459.P7754408197662787335

/-! ## A017459.P9100341751601236786

`A017452(n)*A017455(n)`
-/

namespace A017459.P9100341751601236786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017452 n * A017455 n

end

end A017459.P9100341751601236786

/-! ## A017459.P6540704598596368549

`A017453(n)*A017454(n)`
-/

namespace A017459.P6540704598596368549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017453 n * A017454 n

end

end A017459.P6540704598596368549

/-! ## A017459.P12976224931736106550

`A017449(n)²*A017457(n)`
-/

namespace A017459.P12976224931736106550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n ^ 2 * A017457 n

end

end A017459.P12976224931736106550

/-! ## A017459.P9673194809675079519

`A017450(n)²*A017455(n)`
-/

namespace A017459.P9673194809675079519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017450 n ^ 2 * A017455 n

end

end A017459.P9673194809675079519

/-! ## A017459.P11362126117420263593

`A017451(n)²*A017453(n)`
-/

namespace A017459.P11362126117420263593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017451 n ^ 2 * A017453 n

end

end A017459.P11362126117420263593

/-! ## A017459.P9206701598916493245

`A017452(n)²*A017451(n)`
-/

namespace A017459.P9206701598916493245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017452 n ^ 2 * A017451 n

end

end A017459.P9206701598916493245

/-! ## A017459.P11485209697021123746

`A017453(n)²*A017449(n)`
-/

namespace A017459.P11485209697021123746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017453 n ^ 2 * A017449 n

end

end A017459.P11485209697021123746

/-! ## A017459.P17645357890053528136

`A017454(n)²/A017449(n)`
-/

namespace A017459.P17645357890053528136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017454 n ^ 2 : ℚ) / (A017449 n : ℚ)

end

end A017459.P17645357890053528136

/-! ## A017459.P13949801875411768010

`A017455(n)²/A017451(n)`
-/

namespace A017459.P13949801875411768010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017455 n ^ 2 : ℚ) / (A017451 n : ℚ)

end

end A017459.P13949801875411768010

/-! ## A017459.P6690208470098682319

`A017456(n)²/A017453(n)`
-/

namespace A017459.P6690208470098682319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017456 n ^ 2 : ℚ) / (A017453 n : ℚ)

end

end A017459.P6690208470098682319

/-! ## A017459.P2873776686675670008

`A017449(n)²²*A017455(n)`
-/

namespace A017459.P2873776686675670008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017449 n ^ 2) ^ 2 * A017455 n

end

end A017459.P2873776686675670008

/-! ## A017459.P9303861687224102031

`A017450(n)²²*A017451(n)`
-/

namespace A017459.P9303861687224102031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017450 n ^ 2) ^ 2 * A017451 n

end

end A017459.P9303861687224102031

/-! ## A017459.P14245835451908638319

`A017451(n)²²/A017449(n)`
-/

namespace A017459.P14245835451908638319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017451 n ^ 2) ^ 2 : ℚ) / (A017449 n : ℚ)

end

end A017459.P14245835451908638319

/-! ## A017459.P12206918526162341314

`A017452(n)²²/A017453(n)`
-/

namespace A017459.P12206918526162341314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017452 n ^ 2) ^ 2 : ℚ) / (A017453 n : ℚ)

end

end A017459.P12206918526162341314

/-! ## A017459.P17443663710653867998

`A017450(n)²²²/A017453(n)`
-/

namespace A017459.P17443663710653867998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017450 n ^ 2) ^ 2) ^ 2 : ℚ) / (A017453 n : ℚ)

end

end A017459.P17443663710653867998

/-!
# A017460: 

The programs for A017460, there is no canonical definition to state claims against.
-/

/-! ## A017460.P1289864845941457658

`(11*n+5)^12`
-/

namespace A017460.P1289864845941457658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 5) ^ 12

end

end A017460.P1289864845941457658

/-! ## A017460.P13275531084567865367

`A017454(n)²`
-/

namespace A017460.P13275531084567865367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017454 n ^ 2

end

end A017460.P13275531084567865367

/-! ## A017460.P12590090920962907906

`A017451(n)²²`
-/

namespace A017460.P12590090920962907906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017451 n ^ 2) ^ 2

end

end A017460.P12590090920962907906

/-! ## A017460.P14080093100692712013

`A017451(n)*A017457(n)`
-/

namespace A017460.P14080093100692712013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017451 n * A017457 n

end

end A017460.P14080093100692712013

/-! ## A017460.P14108261707008772794

`A017452(n)*A017456(n)`
-/

namespace A017460.P14108261707008772794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017452 n * A017456 n

end

end A017460.P14108261707008772794

/-! ## A017460.P11733989317056122974

`A017453(n)*A017455(n)`
-/

namespace A017460.P11733989317056122974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017453 n * A017455 n

end

end A017460.P11733989317056122974

/-! ## A017460.P15713157112760536177

`(A017449(n)*A017453(n))²`
-/

namespace A017460.P15713157112760536177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017449 n * A017453 n) ^ 2

end

end A017460.P15713157112760536177

/-! ## A017460.P503817924682644914

`(A017450(n)*A017452(n))²`
-/

namespace A017460.P503817924682644914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017450 n * A017452 n) ^ 2

end

end A017460.P503817924682644914

/-! ## A017460.P16841420363929829484

`A017450(n)²*A017456(n)`
-/

namespace A017460.P16841420363929829484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017450 n ^ 2 * A017456 n

end

end A017460.P16841420363929829484

/-! ## A017460.P2393477780811286552

`A017453(n)²*A017450(n)`
-/

namespace A017460.P2393477780811286552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017453 n ^ 2 * A017450 n

end

end A017460.P2393477780811286552

/-! ## A017460.P8704953249264835123

`(A017455(n)/A017449(n))²`
-/

namespace A017460.P8704953249264835123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017455 n : ℚ) / (A017449 n : ℚ)) ^ 2

end

end A017460.P8704953249264835123

/-! ## A017460.P1603510515372382363

`A017455(n)²/A017450(n)`
-/

namespace A017460.P1603510515372382363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017455 n ^ 2 : ℚ) / (A017450 n : ℚ)

end

end A017460.P1603510515372382363

/-! ## A017460.P14866166014434032957

`(A017449(n)*A017450(n))²²`
-/

namespace A017460.P14866166014434032957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017449 n * A017450 n) ^ 2) ^ 2

end

end A017460.P14866166014434032957

/-!
# A017461: a(n) = 11*n + 6.

The programs for A017461, the canonical program `A017461.P14513907222713688530` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017461 has offset 0).

The definition of A017461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*n+6` (program `A017461.P14513907222713688530`, by `A017461.P14513907222713688530.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017461.P14513907222713688530

`11*n+6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017461

/-- `11*n+6` -/
def P14513907222713688530.Spec : Prop :=
  ∀ n, (P14513907222713688530.a n : ℤ) = A017461 n

theorem P14513907222713688530.correct : P14513907222713688530.Spec := by
  intro n
  simp only [A017461]

end A017461

/-!
# A017462: a(n) = (11*n + 6)^2.

The programs for A017462, the canonical program `A017462.P5289857702194093977` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017462 has offset 0).

The definition of A017462 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+6)²` (program `A017462.P5289857702194093977`, by `A017462.P5289857702194093977.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017462.P5289857702194093977

`(11*n+6)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017462

/-- `(11*n+6)²` -/
def P5289857702194093977.Spec : Prop :=
  ∀ n, (P5289857702194093977.a n : ℤ) = A017462 n

theorem P5289857702194093977.correct : P5289857702194093977.Spec := by
  intro n
  simp only [A017462]

end A017462

/-! ## A017462.P3872905017224640015

`sqrt(A017464(n))`
-/

namespace A017462.P3872905017224640015
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017464 n : ℝ)

end

end A017462.P3872905017224640015

namespace A017462

/-- `sqrt(A017464(n))` -/
def P3872905017224640015.Spec : Prop :=
  ∀ n, P3872905017224640015.a n = (A017462 n : ℝ)

end A017462

/-! ## A017462.P13249888854006998508

`A017461(n)^2`
-/

namespace A017462.P13249888854006998508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n ^ 2

end

end A017462.P13249888854006998508

namespace A017462

/-- `A017461(n)^2` -/
def P13249888854006998508.Spec : Prop :=
  ∀ n, P13249888854006998508.a n = A017462 n

theorem P13249888854006998508.correct : P13249888854006998508.Spec := by
  intro n
  simp only [A017462, Nat.add_sub_cancel, A017462.P13249888854006998508.a, A017462.P5289857702194093977.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017462

/-! ## A017462.P13633842098832565712

`sqrt(sqrt(A017468(n)))`
-/

namespace A017462.P13633842098832565712
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017468 n : ℝ))

end

end A017462.P13633842098832565712

namespace A017462

/-- `sqrt(sqrt(A017468(n)))` -/
def P13633842098832565712.Spec : Prop :=
  ∀ n, P13633842098832565712.a n = (A017462 n : ℝ)

end A017462

/-! ## A017462.P257419935172464724

`A141694(n)²/4`
-/

namespace A017462.P257419935172464724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141694 n ^ 2 : ℚ) / 4

end

end A017462.P257419935172464724

namespace A017462

/-- `A141694(n)²/4` -/
def P257419935172464724.Spec : Prop :=
  ∀ n, P257419935172464724.a n = (A017462 n : ℚ)

theorem P257419935172464724.correct : P257419935172464724.Spec := by
  intro n
  simp only [A017462, Nat.add_sub_cancel, A017462.P257419935172464724.a, A017462.P5289857702194093977.a, A141694, A141694.P14688773505282126803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017462

/-! ## A017462.P14500595255826270771

`A017466(n)^(1/3)`
-/

namespace A017462.P14500595255826270771
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017466 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017462.P14500595255826270771

namespace A017462

/-- `A017466(n)^(1/3)` -/
def P14500595255826270771.Spec : Prop :=
  ∀ n, P14500595255826270771.a n = (A017462 n : ℝ)

end A017462

/-! ## A017462.P9586517147815948034

`A017463(n)^(2/3)`
-/

namespace A017462.P9586517147815948034
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017463 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017462.P9586517147815948034

namespace A017462

/-- `A017463(n)^(2/3)` -/
def P9586517147815948034.Spec : Prop :=
  ∀ n, P9586517147815948034.a n = (A017462 n : ℝ)

end A017462

/-! ## A017462.P17898403669610670635

`A017463(n)/A017461(n)`
-/

namespace A017462.P17898403669610670635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017463 n : ℚ) / (A017461 n : ℚ)

end

end A017462.P17898403669610670635

namespace A017462

/-- `A017463(n)/A017461(n)` -/
def P17898403669610670635.Spec : Prop :=
  ∀ n, P17898403669610670635.a n = (A017462 n : ℚ)

end A017462

/-! ## A017462.P18265844662390982921

`A017465(n)/A017463(n)`
-/

namespace A017462.P18265844662390982921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017465 n : ℚ) / (A017463 n : ℚ)

end

end A017462.P18265844662390982921

namespace A017462

/-- `A017465(n)/A017463(n)` -/
def P18265844662390982921.Spec : Prop :=
  ∀ n, P18265844662390982921.a n = (A017462 n : ℚ)

end A017462

/-! ## A017462.P12291898331541701421

`A017466(n)/A017464(n)`
-/

namespace A017462.P12291898331541701421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017466 n : ℚ) / (A017464 n : ℚ)

end

end A017462.P12291898331541701421

namespace A017462

/-- `A017466(n)/A017464(n)` -/
def P12291898331541701421.Spec : Prop :=
  ∀ n, P12291898331541701421.a n = (A017462 n : ℚ)

end A017462

/-! ## A017462.P2131664820490938858

`A017467(n)/A017465(n)`
-/

namespace A017462.P2131664820490938858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017467 n : ℚ) / (A017465 n : ℚ)

end

end A017462.P2131664820490938858

namespace A017462

/-- `A017467(n)/A017465(n)` -/
def P2131664820490938858.Spec : Prop :=
  ∀ n, P2131664820490938858.a n = (A017462 n : ℚ)

end A017462

/-! ## A017462.P17284625585594386009

`A017468(n)/A017466(n)`
-/

namespace A017462.P17284625585594386009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017468 n : ℚ) / (A017466 n : ℚ)

end

end A017462.P17284625585594386009

namespace A017462

/-- `A017468(n)/A017466(n)` -/
def P17284625585594386009.Spec : Prop :=
  ∀ n, P17284625585594386009.a n = (A017462 n : ℚ)

end A017462

/-! ## A017462.P15448203546672783821

`A017469(n)/A017467(n)`
-/

namespace A017462.P15448203546672783821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017469 n : ℚ) / (A017467 n : ℚ)

end

end A017462.P15448203546672783821

namespace A017462

/-- `A017469(n)/A017467(n)` -/
def P15448203546672783821.Spec : Prop :=
  ∀ n, P15448203546672783821.a n = (A017462 n : ℚ)

end A017462

/-! ## A017462.P2445035487942005283

`A017463(n)²/A017464(n)`
-/

namespace A017462.P2445035487942005283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017463 n ^ 2 : ℚ) / (A017464 n : ℚ)

end

end A017462.P2445035487942005283

namespace A017462

/-- `A017463(n)²/A017464(n)` -/
def P2445035487942005283.Spec : Prop :=
  ∀ n, P2445035487942005283.a n = (A017462 n : ℚ)

end A017462

/-! ## A017462.P12127750436186008039

`A017468(n)/A017463(n)²`
-/

namespace A017462.P12127750436186008039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017468 n : ℚ) / (A017463 n ^ 2 : ℚ)

end

end A017462.P12127750436186008039

namespace A017462

/-- `A017468(n)/A017463(n)²` -/
def P12127750436186008039.Spec : Prop :=
  ∀ n, P12127750436186008039.a n = (A017462 n : ℚ)

end A017462

/-! ## A017462.P15357333485659229620

`A017466(n)/A017461(n)²²`
-/

namespace A017462.P15357333485659229620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017466 n : ℚ) / ((A017461 n ^ 2) ^ 2 : ℚ)

end

end A017462.P15357333485659229620

namespace A017462

/-- `A017466(n)/A017461(n)²²` -/
def P15357333485659229620.Spec : Prop :=
  ∀ n, P15357333485659229620.a n = (A017462 n : ℚ)

end A017462

/-! ## A017462.P6349139430263383032

`A017461(n)/A017466(n)*A017467(n)`
-/

namespace A017462.P6349139430263383032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017461 n : ℚ) / (A017466 n : ℚ) * (A017467 n : ℚ)

end

end A017462.P6349139430263383032

namespace A017462

/-- `A017461(n)/A017466(n)*A017467(n)` -/
def P6349139430263383032.Spec : Prop :=
  ∀ n, P6349139430263383032.a n = (A017462 n : ℚ)

end A017462

/-! ## A017462.P4890702884183355655

`A017463(n)/A017467(n)*A017466(n)`
-/

namespace A017462.P4890702884183355655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017463 n : ℚ) / (A017467 n : ℚ) * (A017466 n : ℚ)

end

end A017462.P4890702884183355655

namespace A017462

/-- `A017463(n)/A017467(n)*A017466(n)` -/
def P4890702884183355655.Spec : Prop :=
  ∀ n, P4890702884183355655.a n = (A017462 n : ℚ)

end A017462

/-!
# A017463: a(n) = (11*n + 6)^3.

The programs for A017463, the canonical program `A017463.P13683683401331882589` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017463 has offset 0).

The definition of A017463 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+6)^3` (program `A017463.P13683683401331882589`, by `A017463.P13683683401331882589.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017463.P13683683401331882589

`(11*n+6)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017463

/-- `(11*n+6)^3` -/
def P13683683401331882589.Spec : Prop :=
  ∀ n, (P13683683401331882589.a n : ℤ) = A017463 n

theorem P13683683401331882589.correct : P13683683401331882589.Spec := by
  intro n
  simp only [A017463]

end A017463

/-! ## A017463.P4544091445251015838

`sqrt(A017466(n))`
-/

namespace A017463.P4544091445251015838
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017466 n : ℝ)

end

end A017463.P4544091445251015838

namespace A017463

/-- `sqrt(A017466(n))` -/
def P4544091445251015838.Spec : Prop :=
  ∀ n, P4544091445251015838.a n = (A017463 n : ℝ)

end A017463

/-! ## A017463.P10043042786493116954

`sqrt(A017462(n)^3)`
-/

namespace A017463.P10043042786493116954
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017462 n ^ 3 : ℝ)

end

end A017463.P10043042786493116954

namespace A017463

/-- `sqrt(A017462(n)^3)` -/
def P10043042786493116954.Spec : Prop :=
  ∀ n, P10043042786493116954.a n = (A017463 n : ℝ)

end A017463

/-! ## A017463.P5422852508144854976

`A017461(n)*A017462(n)`
-/

namespace A017463.P5422852508144854976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n * A017462 n

end

end A017463.P5422852508144854976

namespace A017463

/-- `A017461(n)*A017462(n)` -/
def P5422852508144854976.Spec : Prop :=
  ∀ n, P5422852508144854976.a n = A017463 n

theorem P5422852508144854976.correct : P5422852508144854976.Spec := by
  intro n
  simp only [A017463, Nat.add_sub_cancel, A017463.P5422852508144854976.a, A017463.P13683683401331882589.a, A017461, A017461.P14513907222713688530.a, A017462, A017462.P5289857702194093977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017463

/-! ## A017463.P11899450575432014794

`A017464(n)/A017461(n)`
-/

namespace A017463.P11899450575432014794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017464 n : ℚ) / (A017461 n : ℚ)

end

end A017463.P11899450575432014794

namespace A017463

/-- `A017464(n)/A017461(n)` -/
def P11899450575432014794.Spec : Prop :=
  ∀ n, P11899450575432014794.a n = (A017463 n : ℚ)

end A017463

/-! ## A017463.P343479233298941963

`A017465(n)/A017462(n)`
-/

namespace A017463.P343479233298941963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017465 n : ℚ) / (A017462 n : ℚ)

end

end A017463.P343479233298941963

namespace A017463

/-- `A017465(n)/A017462(n)` -/
def P343479233298941963.Spec : Prop :=
  ∀ n, P343479233298941963.a n = (A017463 n : ℚ)

end A017463

/-! ## A017463.P2608946581168761516

`A017467(n)/A017464(n)`
-/

namespace A017463.P2608946581168761516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017467 n : ℚ) / (A017464 n : ℚ)

end

end A017463.P2608946581168761516

namespace A017463

/-- `A017467(n)/A017464(n)` -/
def P2608946581168761516.Spec : Prop :=
  ∀ n, P2608946581168761516.a n = (A017463 n : ℚ)

end A017463

/-! ## A017463.P16563310485468069677

`A017468(n)/A017465(n)`
-/

namespace A017463.P16563310485468069677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017468 n : ℚ) / (A017465 n : ℚ)

end

end A017463.P16563310485468069677

namespace A017463

/-- `A017468(n)/A017465(n)` -/
def P16563310485468069677.Spec : Prop :=
  ∀ n, P16563310485468069677.a n = (A017463 n : ℚ)

end A017463

/-! ## A017463.P16545130953638377102

`A017469(n)/A017466(n)`
-/

namespace A017463.P16545130953638377102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017469 n : ℚ) / (A017466 n : ℚ)

end

end A017463.P16545130953638377102

namespace A017463

/-- `A017469(n)/A017466(n)` -/
def P16545130953638377102.Spec : Prop :=
  ∀ n, P16545130953638377102.a n = (A017463 n : ℚ)

end A017463

/-! ## A017463.P5153136821293605540

`A017464(n)²/A017465(n)`
-/

namespace A017463.P5153136821293605540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017464 n ^ 2 : ℚ) / (A017465 n : ℚ)

end

end A017463.P5153136821293605540

namespace A017463

/-- `A017464(n)²/A017465(n)` -/
def P5153136821293605540.Spec : Prop :=
  ∀ n, P5153136821293605540.a n = (A017463 n : ℚ)

end A017463

/-! ## A017463.P941724968687167015

`A017465(n)/A017461(n)²`
-/

namespace A017463.P941724968687167015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017465 n : ℚ) / (A017461 n ^ 2 : ℚ)

end

end A017463.P941724968687167015

namespace A017463

/-- `A017465(n)/A017461(n)²` -/
def P941724968687167015.Spec : Prop :=
  ∀ n, P941724968687167015.a n = (A017463 n : ℚ)

end A017463

/-! ## A017463.P14215516355521369063

`A017467(n)/A017462(n)²`
-/

namespace A017463.P14215516355521369063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017467 n : ℚ) / (A017462 n ^ 2 : ℚ)

end

end A017463.P14215516355521369063

namespace A017463

/-- `A017467(n)/A017462(n)²` -/
def P14215516355521369063.Spec : Prop :=
  ∀ n, P14215516355521369063.a n = (A017463 n : ℚ)

end A017463

/-! ## A017463.P824991146471132495

`(A017449(n)+1)*A017462(n)`
-/

namespace A017463.P824991146471132495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017449 n + 1) * A017462 n

end

end A017463.P824991146471132495

namespace A017463

/-- `(A017449(n)+1)*A017462(n)` -/
def P824991146471132495.Spec : Prop :=
  ∀ n, P824991146471132495.a n = A017463 n

theorem P824991146471132495.correct : P824991146471132495.Spec := by
  intro n
  simp only [A017463, Nat.add_sub_cancel, A017463.P824991146471132495.a, A017463.P13683683401331882589.a, A017449, A017449.P2551254521878161710.a, A017462, A017462.P5289857702194093977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017463

/-! ## A017463.P1302864698820209515

`A017464(n)/(A017449(n)+1)`
-/

namespace A017463.P1302864698820209515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017464 n : ℚ) / (A017449 n + 1 : ℚ)

end

end A017463.P1302864698820209515

namespace A017463

/-- `A017464(n)/(A017449(n)+1)` -/
def P1302864698820209515.Spec : Prop :=
  ∀ n, P1302864698820209515.a n = (A017463 n : ℚ)

theorem P1302864698820209515.correct : P1302864698820209515.Spec := by
  intro n
  simp only [A017463, Nat.add_sub_cancel, A017463.P1302864698820209515.a, A017463.P13683683401331882589.a, A017449, A017449.P2551254521878161710.a, A017464, A017464.P11589788462732553002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017463

/-! ## A017463.P4195505953287771789

`(A017473(n)-1)*A017462(n)`
-/

namespace A017463.P4195505953287771789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017473 n - 1) * A017462 n

end

end A017463.P4195505953287771789

namespace A017463

/-- `(A017473(n)-1)*A017462(n)` -/
def P4195505953287771789.Spec : Prop :=
  ∀ n, P4195505953287771789.a n = A017463 n

theorem P4195505953287771789.correct : P4195505953287771789.Spec := by
  intro n
  simp only [A017463, Nat.add_sub_cancel, A017463.P4195505953287771789.a, A017463.P13683683401331882589.a, A017462, A017462.P5289857702194093977.a, A017473, A017473.P6794540674081733570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017463

/-! ## A017463.P16408804986774905217

`A017467(n)/A017461(n)²²`
-/

namespace A017463.P16408804986774905217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017467 n : ℚ) / ((A017461 n ^ 2) ^ 2 : ℚ)

end

end A017463.P16408804986774905217

namespace A017463

/-- `A017467(n)/A017461(n)²²` -/
def P16408804986774905217.Spec : Prop :=
  ∀ n, P16408804986774905217.a n = (A017463 n : ℚ)

end A017463

/-!
# A017464: a(n) = (11*n + 6)^4.

The programs for A017464, the canonical program `A017464.P11589788462732553002` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017464 has offset 0).

The definition of A017464 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+6)^4` (program `A017464.P11589788462732553002`, by `A017464.P11589788462732553002.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017464.P11589788462732553002

`(11*n+6)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017464

/-- `(11*n+6)^4` -/
def P11589788462732553002.Spec : Prop :=
  ∀ n, (P11589788462732553002.a n : ℤ) = A017464 n

theorem P11589788462732553002.correct : P11589788462732553002.Spec := by
  intro n
  simp only [A017464]

end A017464

/-! ## A017464.P4493051073675857816

`A017462(n)²`
-/

namespace A017464.P4493051073675857816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017462 n ^ 2

end

end A017464.P4493051073675857816

namespace A017464

/-- `A017462(n)²` -/
def P4493051073675857816.Spec : Prop :=
  ∀ n, P4493051073675857816.a n = A017464 n

theorem P4493051073675857816.correct : P4493051073675857816.Spec := by
  intro n
  simp only [A017464, Nat.add_sub_cancel, A017464.P4493051073675857816.a, A017464.P11589788462732553002.a, A017462, A017462.P5289857702194093977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017464

/-! ## A017464.P15376327527329455050

`sqrt(A017468(n))`
-/

namespace A017464.P15376327527329455050
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017468 n : ℝ)

end

end A017464.P15376327527329455050

namespace A017464

/-- `sqrt(A017468(n))` -/
def P15376327527329455050.Spec : Prop :=
  ∀ n, P15376327527329455050.a n = (A017464 n : ℝ)

end A017464

/-! ## A017464.P7615568219549405080

`A017461(n)²²`
-/

namespace A017464.P7615568219549405080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017461 n ^ 2) ^ 2

end

end A017464.P7615568219549405080

namespace A017464

/-- `A017461(n)²²` -/
def P7615568219549405080.Spec : Prop :=
  ∀ n, P7615568219549405080.a n = A017464 n

theorem P7615568219549405080.correct : P7615568219549405080.Spec := by
  intro n
  simp only [A017464, Nat.add_sub_cancel, A017464.P7615568219549405080.a, A017464.P11589788462732553002.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017464

/-! ## A017464.P1167474937198682507

`(A017449(n)+1)²²`
-/

namespace A017464.P1167474937198682507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017449 n + 1) ^ 2) ^ 2

end

end A017464.P1167474937198682507

namespace A017464

/-- `(A017449(n)+1)²²` -/
def P1167474937198682507.Spec : Prop :=
  ∀ n, P1167474937198682507.a n = A017464 n

theorem P1167474937198682507.correct : P1167474937198682507.Spec := by
  intro n
  simp only [A017464, Nat.add_sub_cancel, A017464.P1167474937198682507.a, A017464.P11589788462732553002.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017464

/-! ## A017464.P9185224855542887045

`(A017437(n)+2)²²`
-/

namespace A017464.P9185224855542887045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017437 n + 2) ^ 2) ^ 2

end

end A017464.P9185224855542887045

namespace A017464

/-- `(A017437(n)+2)²²` -/
def P9185224855542887045.Spec : Prop :=
  ∀ n, P9185224855542887045.a n = A017464 n

theorem P9185224855542887045.correct : P9185224855542887045.Spec := by
  intro n
  simp only [A017464, Nat.add_sub_cancel, A017464.P9185224855542887045.a, A017464.P11589788462732553002.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017464

/-! ## A017464.P9591972121925501541

`(1-A017473(n))²²`
-/

namespace A017464.P9591972121925501541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017473 n) ^ 2) ^ 2

end

end A017464.P9591972121925501541

namespace A017464

/-- `(1-A017473(n))²²` -/
def P9591972121925501541.Spec : Prop :=
  ∀ n, P9591972121925501541.a n = A017464 n

theorem P9591972121925501541.correct : P9591972121925501541.Spec := by
  intro n
  simp only [A017464, Nat.add_sub_cancel, A017464.P9591972121925501541.a, A017464.P11589788462732553002.a, A017473, A017473.P6794540674081733570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017464

/-! ## A017464.P15956841188196533057

`(A017425(n)+3)²²`
-/

namespace A017464.P15956841188196533057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017425 n + 3) ^ 2) ^ 2

end

end A017464.P15956841188196533057

namespace A017464

/-- `(A017425(n)+3)²²` -/
def P15956841188196533057.Spec : Prop :=
  ∀ n, P15956841188196533057.a n = A017464 n

theorem P15956841188196533057.correct : P15956841188196533057.Spec := by
  intro n
  simp only [A017464, Nat.add_sub_cancel, A017464.P15956841188196533057.a, A017464.P11589788462732553002.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017464

/-! ## A017464.P12623020750291821341

`(2-A017485(n))²²`
-/

namespace A017464.P12623020750291821341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017485 n) ^ 2) ^ 2

end

end A017464.P12623020750291821341

namespace A017464

/-- `(2-A017485(n))²²` -/
def P12623020750291821341.Spec : Prop :=
  ∀ n, P12623020750291821341.a n = A017464 n

theorem P12623020750291821341.correct : P12623020750291821341.Spec := by
  intro n
  simp only [A017464, Nat.add_sub_cancel, A017464.P12623020750291821341.a, A017464.P11589788462732553002.a, A017485, A017485.P4370091181196038588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017464

/-! ## A017464.P8888456526144912979

`(3-A017497(n))²²`
-/

namespace A017464.P8888456526144912979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017497 n) ^ 2) ^ 2

end

end A017464.P8888456526144912979

namespace A017464

/-- `(3-A017497(n))²²` -/
def P8888456526144912979.Spec : Prop :=
  ∀ n, P8888456526144912979.a n = A017464 n

theorem P8888456526144912979.correct : P8888456526144912979.Spec := by
  intro n
  simp only [A017464, Nat.add_sub_cancel, A017464.P8888456526144912979.a, A017464.P11589788462732553002.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017464

/-! ## A017464.P9283300749582602976

`(A141694(n)/2)²²`
-/

namespace A017464.P9283300749582602976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A141694 n : ℚ) / 2) ^ 2) ^ 2

end

end A017464.P9283300749582602976

namespace A017464

/-- `(A141694(n)/2)²²` -/
def P9283300749582602976.Spec : Prop :=
  ∀ n, P9283300749582602976.a n = (A017464 n : ℚ)

theorem P9283300749582602976.correct : P9283300749582602976.Spec := by
  intro n
  simp only [A017464, Nat.add_sub_cancel, A017464.P9283300749582602976.a, A017464.P11589788462732553002.a, A141694, A141694.P14688773505282126803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017464

/-! ## A017464.P10335348735406302608

`(A017341(n)+n)²²`
-/

namespace A017464.P10335348735406302608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017341 n + (n : ℤ)) ^ 2) ^ 2

end

end A017464.P10335348735406302608

namespace A017464

/-- `(A017341(n)+n)²²` -/
def P10335348735406302608.Spec : Prop :=
  ∀ n, P10335348735406302608.a n = A017464 n

theorem P10335348735406302608.correct : P10335348735406302608.Spec := by
  intro n
  simp only [A017464, Nat.add_sub_cancel, A017464.P10335348735406302608.a, A017464.P11589788462732553002.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017464

/-! ## A017464.P5875161240182603579

`(n-A017593(n))²²`
-/

namespace A017464.P5875161240182603579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017593 n) ^ 2) ^ 2

end

end A017464.P5875161240182603579

namespace A017464

/-- `(n-A017593(n))²²` -/
def P5875161240182603579.Spec : Prop :=
  ∀ n, P5875161240182603579.a n = A017464 n

theorem P5875161240182603579.correct : P5875161240182603579.Spec := by
  intro n
  simp only [A017464, Nat.add_sub_cancel, A017464.P5875161240182603579.a, A017464.P11589788462732553002.a, A017593, A017593.P13091213750843470751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017464

/-! ## A017464.P12140669829093165444

`(sqrt(A017450(n))+1)²²`
-/

namespace A017464.P12140669829093165444
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017450 n : ℝ) + 1) ^ 2) ^ 2

end

end A017464.P12140669829093165444

namespace A017464

/-- `(sqrt(A017450(n))+1)²²` -/
def P12140669829093165444.Spec : Prop :=
  ∀ n, P12140669829093165444.a n = (A017464 n : ℝ)

end A017464

/-! ## A017464.P669258003564067563

`(sqrt(A017438(n))+2)²²`
-/

namespace A017464.P669258003564067563
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017438 n : ℝ) + 2) ^ 2) ^ 2

end

end A017464.P669258003564067563

namespace A017464

/-- `(sqrt(A017438(n))+2)²²` -/
def P669258003564067563.Spec : Prop :=
  ∀ n, P669258003564067563.a n = (A017464 n : ℝ)

end A017464

/-! ## A017464.P12928249725004411405

`(1-sqrt(A017474(n)))²²`
-/

namespace A017464.P12928249725004411405
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017474 n : ℝ)) ^ 2) ^ 2

end

end A017464.P12928249725004411405

namespace A017464

/-- `(1-sqrt(A017474(n)))²²` -/
def P12928249725004411405.Spec : Prop :=
  ∀ n, P12928249725004411405.a n = (A017464 n : ℝ)

end A017464

/-! ## A017464.P515189478425402759

`(2-sqrt(A017486(n)))²²`
-/

namespace A017464.P515189478425402759
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - Real.sqrt (A017486 n : ℝ)) ^ 2) ^ 2

end

end A017464.P515189478425402759

namespace A017464

/-- `(2-sqrt(A017486(n)))²²` -/
def P515189478425402759.Spec : Prop :=
  ∀ n, P515189478425402759.a n = (A017464 n : ℝ)

end A017464

/-! ## A017464.P14950139632544578815

`(sqrt(A017342(n))+n)²²`
-/

namespace A017464.P14950139632544578815
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017342 n : ℝ) + (n : ℝ)) ^ 2) ^ 2

end

end A017464.P14950139632544578815

namespace A017464

/-- `(sqrt(A017342(n))+n)²²` -/
def P14950139632544578815.Spec : Prop :=
  ∀ n, P14950139632544578815.a n = (A017464 n : ℝ)

end A017464

/-! ## A017464.P15194094740649006083

`(n-sqrt(A017594(n)))²²`
-/

namespace A017464.P15194094740649006083
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) - Real.sqrt (A017594 n : ℝ)) ^ 2) ^ 2

end

end A017464.P15194094740649006083

namespace A017464

/-- `(n-sqrt(A017594(n)))²²` -/
def P15194094740649006083.Spec : Prop :=
  ∀ n, P15194094740649006083.a n = (A017464 n : ℝ)

end A017464

/-! ## A017464.P5103358264706185659

`(n-Δ[A033581(n)])²²`
-/

namespace A017464.P5103358264706185659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - (f1 (n + 1) - f1 n)) ^ 2) ^ 2

end

end A017464.P5103358264706185659

namespace A017464

/-- `(n-Δ[A033581(n)])²²` -/
def P5103358264706185659.Spec : Prop :=
  ∀ n, P5103358264706185659.a n = A017464 n

theorem P5103358264706185659.correct : P5103358264706185659.Spec := by
  intro n
  simp only [A017464, Nat.add_sub_cancel, A017464.P5103358264706185659.f1, A017464.P5103358264706185659.a, A017464.P11589788462732553002.a, A033581, A033581.P13583599227635646969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017464

/-!
# A017465: a(n) = (11*n + 6)^5.

The programs for A017465, the canonical program `A017465.P1063014630243818002` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017465 has offset 0).

The definition of A017465 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+6)^5` (program `A017465.P1063014630243818002`, by `A017465.P1063014630243818002.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017465.P1063014630243818002

`(11*n+6)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017465

/-- `(11*n+6)^5` -/
def P1063014630243818002.Spec : Prop :=
  ∀ n, (P1063014630243818002.a n : ℤ) = A017465 n

theorem P1063014630243818002.correct : P1063014630243818002.Spec := by
  intro n
  simp only [A017465]

end A017465

/-! ## A017465.P11375409056277988279

`sqrt(A017462(n)^5)`
-/

namespace A017465.P11375409056277988279
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017462 n ^ 5 : ℝ)

end

end A017465.P11375409056277988279

namespace A017465

/-- `sqrt(A017462(n)^5)` -/
def P11375409056277988279.Spec : Prop :=
  ∀ n, P11375409056277988279.a n = (A017465 n : ℝ)

end A017465

/-! ## A017465.P15402923258621601539

`A017461(n)*A017464(n)`
-/

namespace A017465.P15402923258621601539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n * A017464 n

end

end A017465.P15402923258621601539

namespace A017465

/-- `A017461(n)*A017464(n)` -/
def P15402923258621601539.Spec : Prop :=
  ∀ n, P15402923258621601539.a n = A017465 n

theorem P15402923258621601539.correct : P15402923258621601539.Spec := by
  intro n
  simp only [A017465, Nat.add_sub_cancel, A017465.P15402923258621601539.a, A017465.P1063014630243818002.a, A017461, A017461.P14513907222713688530.a, A017464, A017464.P11589788462732553002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017465

/-! ## A017465.P3527549714654541056

`A017462(n)*A017463(n)`
-/

namespace A017465.P3527549714654541056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017462 n * A017463 n

end

end A017465.P3527549714654541056

namespace A017465

/-- `A017462(n)*A017463(n)` -/
def P3527549714654541056.Spec : Prop :=
  ∀ n, P3527549714654541056.a n = A017465 n

theorem P3527549714654541056.correct : P3527549714654541056.Spec := by
  intro n
  simp only [A017465, Nat.add_sub_cancel, A017465.P3527549714654541056.a, A017465.P1063014630243818002.a, A017462, A017462.P5289857702194093977.a, A017463, A017463.P13683683401331882589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017465

/-! ## A017465.P10267114577015079376

`A017466(n)/A017461(n)`
-/

namespace A017465.P10267114577015079376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017466 n : ℚ) / (A017461 n : ℚ)

end

end A017465.P10267114577015079376

namespace A017465

/-- `A017466(n)/A017461(n)` -/
def P10267114577015079376.Spec : Prop :=
  ∀ n, P10267114577015079376.a n = (A017465 n : ℚ)

end A017465

/-! ## A017465.P5112377606328316103

`A017467(n)/A017462(n)`
-/

namespace A017465.P5112377606328316103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017467 n : ℚ) / (A017462 n : ℚ)

end

end A017465.P5112377606328316103

namespace A017465

/-- `A017467(n)/A017462(n)` -/
def P5112377606328316103.Spec : Prop :=
  ∀ n, P5112377606328316103.a n = (A017465 n : ℚ)

end A017465

/-! ## A017465.P18038808108960715953

`A017468(n)/A017463(n)`
-/

namespace A017465.P18038808108960715953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017468 n : ℚ) / (A017463 n : ℚ)

end

end A017465.P18038808108960715953

namespace A017465

/-- `A017468(n)/A017463(n)` -/
def P18038808108960715953.Spec : Prop :=
  ∀ n, P18038808108960715953.a n = (A017465 n : ℚ)

end A017465

/-! ## A017465.P7294534917265705915

`A017469(n)/A017464(n)`
-/

namespace A017465.P7294534917265705915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017469 n : ℚ) / (A017464 n : ℚ)

end

end A017465.P7294534917265705915

namespace A017465

/-- `A017469(n)/A017464(n)` -/
def P7294534917265705915.Spec : Prop :=
  ∀ n, P7294534917265705915.a n = (A017465 n : ℚ)

end A017465

/-! ## A017465.P3650979826043576967

`A017461(n)²*A017463(n)`
-/

namespace A017465.P3650979826043576967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n ^ 2 * A017463 n

end

end A017465.P3650979826043576967

namespace A017465

/-- `A017461(n)²*A017463(n)` -/
def P3650979826043576967.Spec : Prop :=
  ∀ n, P3650979826043576967.a n = A017465 n

theorem P3650979826043576967.correct : P3650979826043576967.Spec := by
  intro n
  simp only [A017465, Nat.add_sub_cancel, A017465.P3650979826043576967.a, A017465.P1063014630243818002.a, A017461, A017461.P14513907222713688530.a, A017463, A017463.P13683683401331882589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017465

/-! ## A017465.P7686098864670702200

`A017462(n)²*A017461(n)`
-/

namespace A017465.P7686098864670702200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017462 n ^ 2 * A017461 n

end

end A017465.P7686098864670702200

namespace A017465

/-- `A017462(n)²*A017461(n)` -/
def P7686098864670702200.Spec : Prop :=
  ∀ n, P7686098864670702200.a n = A017465 n

theorem P7686098864670702200.correct : P7686098864670702200.Spec := by
  intro n
  simp only [A017465, Nat.add_sub_cancel, A017465.P7686098864670702200.a, A017465.P1063014630243818002.a, A017461, A017461.P14513907222713688530.a, A017462, A017462.P5289857702194093977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017465

/-! ## A017465.P11570929927829594169

`A017464(n)²/A017463(n)`
-/

namespace A017465.P11570929927829594169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017464 n ^ 2 : ℚ) / (A017463 n : ℚ)

end

end A017465.P11570929927829594169

namespace A017465

/-- `A017464(n)²/A017463(n)` -/
def P11570929927829594169.Spec : Prop :=
  ∀ n, P11570929927829594169.a n = (A017465 n : ℚ)

end A017465

/-! ## A017465.P544943419482313118

`A017466(n)²/A017467(n)`
-/

namespace A017465.P544943419482313118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017466 n ^ 2 : ℚ) / (A017467 n : ℚ)

end

end A017465.P544943419482313118

namespace A017465

/-- `A017466(n)²/A017467(n)` -/
def P544943419482313118.Spec : Prop :=
  ∀ n, P544943419482313118.a n = (A017465 n : ℚ)

end A017465

/-! ## A017465.P12045592788970800613

`A017467(n)/A017461(n)²`
-/

namespace A017465.P12045592788970800613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017467 n : ℚ) / (A017461 n ^ 2 : ℚ)

end

end A017465.P12045592788970800613

namespace A017465

/-- `A017467(n)/A017461(n)²` -/
def P12045592788970800613.Spec : Prop :=
  ∀ n, P12045592788970800613.a n = (A017465 n : ℚ)

end A017465

/-! ## A017465.P8811618856072415339

`A017469(n)/A017462(n)²`
-/

namespace A017465.P8811618856072415339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017469 n : ℚ) / (A017462 n ^ 2 : ℚ)

end

end A017465.P8811618856072415339

namespace A017465

/-- `A017469(n)/A017462(n)²` -/
def P8811618856072415339.Spec : Prop :=
  ∀ n, P8811618856072415339.a n = (A017465 n : ℚ)

end A017465

/-! ## A017465.P4223318465579715659

`(A017449(n)+1)*A017464(n)`
-/

namespace A017465.P4223318465579715659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017449 n + 1) * A017464 n

end

end A017465.P4223318465579715659

namespace A017465

/-- `(A017449(n)+1)*A017464(n)` -/
def P4223318465579715659.Spec : Prop :=
  ∀ n, P4223318465579715659.a n = A017465 n

theorem P4223318465579715659.correct : P4223318465579715659.Spec := by
  intro n
  simp only [A017465, Nat.add_sub_cancel, A017465.P4223318465579715659.a, A017465.P1063014630243818002.a, A017449, A017449.P2551254521878161710.a, A017464, A017464.P11589788462732553002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017465

/-!
# A017466: a(n) = (11*n + 6)^6.

The programs for A017466, the canonical program `A017466.P8335780401059382914` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017466 has offset 0).

The definition of A017466 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+6)^6` (program `A017466.P8335780401059382914`, by `A017466.P8335780401059382914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017466.P8335780401059382914

`(11*n+6)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017466

/-- `(11*n+6)^6` -/
def P8335780401059382914.Spec : Prop :=
  ∀ n, (P8335780401059382914.a n : ℤ) = A017466 n

theorem P8335780401059382914.correct : P8335780401059382914.Spec := by
  intro n
  simp only [A017466]

end A017466

/-! ## A017466.P12570639559923376087

`A017463(n)²`
-/

namespace A017466.P12570639559923376087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017463 n ^ 2

end

end A017466.P12570639559923376087

namespace A017466

/-- `A017463(n)²` -/
def P12570639559923376087.Spec : Prop :=
  ∀ n, P12570639559923376087.a n = A017466 n

theorem P12570639559923376087.correct : P12570639559923376087.Spec := by
  intro n
  simp only [A017466, Nat.add_sub_cancel, A017466.P12570639559923376087.a, A017466.P8335780401059382914.a, A017463, A017463.P13683683401331882589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017466

/-! ## A017466.P13470807758430108217

`(A017461(n)^3)²`
-/

namespace A017466.P13470807758430108217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017461 n ^ 3) ^ 2

end

end A017466.P13470807758430108217

namespace A017466

/-- `(A017461(n)^3)²` -/
def P13470807758430108217.Spec : Prop :=
  ∀ n, P13470807758430108217.a n = A017466 n

theorem P13470807758430108217.correct : P13470807758430108217.Spec := by
  intro n
  simp only [A017466, Nat.add_sub_cancel, A017466.P13470807758430108217.a, A017466.P8335780401059382914.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017466

/-! ## A017466.P16753884748154029101

`sqrt(A017464(n)^3)`
-/

namespace A017466.P16753884748154029101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017464 n ^ 3 : ℝ)

end

end A017466.P16753884748154029101

namespace A017466

/-- `sqrt(A017464(n)^3)` -/
def P16753884748154029101.Spec : Prop :=
  ∀ n, P16753884748154029101.a n = (A017466 n : ℝ)

end A017466

/-! ## A017466.P1356493492702672934

`A017461(n)*A017465(n)`
-/

namespace A017466.P1356493492702672934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n * A017465 n

end

end A017466.P1356493492702672934

namespace A017466

/-- `A017461(n)*A017465(n)` -/
def P1356493492702672934.Spec : Prop :=
  ∀ n, P1356493492702672934.a n = A017466 n

theorem P1356493492702672934.correct : P1356493492702672934.Spec := by
  intro n
  simp only [A017466, Nat.add_sub_cancel, A017466.P1356493492702672934.a, A017466.P8335780401059382914.a, A017461, A017461.P14513907222713688530.a, A017465, A017465.P1063014630243818002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017466

/-! ## A017466.P4161675653272065347

`A017462(n)*A017464(n)`
-/

namespace A017466.P4161675653272065347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017462 n * A017464 n

end

end A017466.P4161675653272065347

namespace A017466

/-- `A017462(n)*A017464(n)` -/
def P4161675653272065347.Spec : Prop :=
  ∀ n, P4161675653272065347.a n = A017466 n

theorem P4161675653272065347.correct : P4161675653272065347.Spec := by
  intro n
  simp only [A017466, Nat.add_sub_cancel, A017466.P4161675653272065347.a, A017466.P8335780401059382914.a, A017462, A017462.P5289857702194093977.a, A017464, A017464.P11589788462732553002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017466

/-! ## A017466.P10106810649160592426

`A017467(n)/A017461(n)`
-/

namespace A017466.P10106810649160592426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017467 n : ℚ) / (A017461 n : ℚ)

end

end A017466.P10106810649160592426

namespace A017466

/-- `A017467(n)/A017461(n)` -/
def P10106810649160592426.Spec : Prop :=
  ∀ n, P10106810649160592426.a n = (A017466 n : ℚ)

end A017466

/-! ## A017466.P2773317742143616821

`A017468(n)/A017462(n)`
-/

namespace A017466.P2773317742143616821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017468 n : ℚ) / (A017462 n : ℚ)

end

end A017466.P2773317742143616821

namespace A017466

/-- `A017468(n)/A017462(n)` -/
def P2773317742143616821.Spec : Prop :=
  ∀ n, P2773317742143616821.a n = (A017466 n : ℚ)

end A017466

/-! ## A017466.P1834148872671674621

`A017469(n)/A017463(n)`
-/

namespace A017466.P1834148872671674621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017469 n : ℚ) / (A017463 n : ℚ)

end

end A017466.P1834148872671674621

namespace A017466

/-- `A017469(n)/A017463(n)` -/
def P1834148872671674621.Spec : Prop :=
  ∀ n, P1834148872671674621.a n = (A017466 n : ℚ)

end A017466

/-! ## A017466.P18024956691767698605

`(A017461(n)*A017462(n))²`
-/

namespace A017466.P18024956691767698605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017461 n * A017462 n) ^ 2

end

end A017466.P18024956691767698605

namespace A017466

/-- `(A017461(n)*A017462(n))²` -/
def P18024956691767698605.Spec : Prop :=
  ∀ n, P18024956691767698605.a n = A017466 n

theorem P18024956691767698605.correct : P18024956691767698605.Spec := by
  intro n
  simp only [A017466, Nat.add_sub_cancel, A017466.P18024956691767698605.a, A017466.P8335780401059382914.a, A017461, A017461.P14513907222713688530.a, A017462, A017462.P5289857702194093977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017466

/-! ## A017466.P14601147494242870791

`A017461(n)²*A017464(n)`
-/

namespace A017466.P14601147494242870791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n ^ 2 * A017464 n

end

end A017466.P14601147494242870791

namespace A017466

/-- `A017461(n)²*A017464(n)` -/
def P14601147494242870791.Spec : Prop :=
  ∀ n, P14601147494242870791.a n = A017466 n

theorem P14601147494242870791.correct : P14601147494242870791.Spec := by
  intro n
  simp only [A017466, Nat.add_sub_cancel, A017466.P14601147494242870791.a, A017466.P8335780401059382914.a, A017461, A017461.P14513907222713688530.a, A017464, A017464.P11589788462732553002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017466

/-! ## A017466.P17024416540398018357

`(A017465(n)/A017462(n))²`
-/

namespace A017466.P17024416540398018357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017465 n : ℚ) / (A017462 n : ℚ)) ^ 2

end

end A017466.P17024416540398018357

namespace A017466

/-- `(A017465(n)/A017462(n))²` -/
def P17024416540398018357.Spec : Prop :=
  ∀ n, P17024416540398018357.a n = (A017466 n : ℚ)

end A017466

/-! ## A017466.P14514381234960859780

`A017465(n)²/A017464(n)`
-/

namespace A017466.P14514381234960859780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017465 n ^ 2 : ℚ) / (A017464 n : ℚ)

end

end A017466.P14514381234960859780

namespace A017466

/-- `A017465(n)²/A017464(n)` -/
def P14514381234960859780.Spec : Prop :=
  ∀ n, P14514381234960859780.a n = (A017466 n : ℚ)

end A017466

/-! ## A017466.P3677325806374616839

`(A017467(n)/A017464(n))²`
-/

namespace A017466.P3677325806374616839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017467 n : ℚ) / (A017464 n : ℚ)) ^ 2

end

end A017466.P3677325806374616839

namespace A017466

/-- `(A017467(n)/A017464(n))²` -/
def P3677325806374616839.Spec : Prop :=
  ∀ n, P3677325806374616839.a n = (A017466 n : ℚ)

end A017466

/-! ## A017466.P13398125574751984921

`A017468(n)/A017461(n)²`
-/

namespace A017466.P13398125574751984921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017468 n : ℚ) / (A017461 n ^ 2 : ℚ)

end

end A017466.P13398125574751984921

namespace A017466

/-- `A017468(n)/A017461(n)²` -/
def P13398125574751984921.Spec : Prop :=
  ∀ n, P13398125574751984921.a n = (A017466 n : ℚ)

end A017466

/-! ## A017466.P5105752776496513124

`(A017468(n)/A017465(n))²`
-/

namespace A017466.P5105752776496513124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017468 n : ℚ) / (A017465 n : ℚ)) ^ 2

end

end A017466.P5105752776496513124

namespace A017466

/-- `(A017468(n)/A017465(n))²` -/
def P5105752776496513124.Spec : Prop :=
  ∀ n, P5105752776496513124.a n = (A017466 n : ℚ)

end A017466

/-!
# A017467: a(n) = (11*n + 6)^7.

The programs for A017467, the canonical program `A017467.P2786101943588950020` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017467 has offset 0).

The definition of A017467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+6)^7` (program `A017467.P2786101943588950020`, by `A017467.P2786101943588950020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017467.P2786101943588950020

`(11*n+6)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017467

/-- `(11*n+6)^7` -/
def P2786101943588950020.Spec : Prop :=
  ∀ n, (P2786101943588950020.a n : ℤ) = A017467 n

theorem P2786101943588950020.correct : P2786101943588950020.Spec := by
  intro n
  simp only [A017467]

end A017467

/-! ## A017467.P10106182558151582579

`A017461(n)*A017466(n)`
-/

namespace A017467.P10106182558151582579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n * A017466 n

end

end A017467.P10106182558151582579

namespace A017467

/-- `A017461(n)*A017466(n)` -/
def P10106182558151582579.Spec : Prop :=
  ∀ n, P10106182558151582579.a n = A017467 n

theorem P10106182558151582579.correct : P10106182558151582579.Spec := by
  intro n
  simp only [A017467, Nat.add_sub_cancel, A017467.P10106182558151582579.a, A017467.P2786101943588950020.a, A017461, A017461.P14513907222713688530.a, A017466, A017466.P8335780401059382914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017467

/-! ## A017467.P13572378014206621614

`A017462(n)*A017465(n)`
-/

namespace A017467.P13572378014206621614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017462 n * A017465 n

end

end A017467.P13572378014206621614

namespace A017467

/-- `A017462(n)*A017465(n)` -/
def P13572378014206621614.Spec : Prop :=
  ∀ n, P13572378014206621614.a n = A017467 n

theorem P13572378014206621614.correct : P13572378014206621614.Spec := by
  intro n
  simp only [A017467, Nat.add_sub_cancel, A017467.P13572378014206621614.a, A017467.P2786101943588950020.a, A017462, A017462.P5289857702194093977.a, A017465, A017465.P1063014630243818002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017467

/-! ## A017467.P4273698701715810209

`A017463(n)*A017464(n)`
-/

namespace A017467.P4273698701715810209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017463 n * A017464 n

end

end A017467.P4273698701715810209

namespace A017467

/-- `A017463(n)*A017464(n)` -/
def P4273698701715810209.Spec : Prop :=
  ∀ n, P4273698701715810209.a n = A017467 n

theorem P4273698701715810209.correct : P4273698701715810209.Spec := by
  intro n
  simp only [A017467, Nat.add_sub_cancel, A017467.P4273698701715810209.a, A017467.P2786101943588950020.a, A017463, A017463.P13683683401331882589.a, A017464, A017464.P11589788462732553002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017467

/-! ## A017467.P10616340419226900557

`A017468(n)/A017461(n)`
-/

namespace A017467.P10616340419226900557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017468 n : ℚ) / (A017461 n : ℚ)

end

end A017467.P10616340419226900557

namespace A017467

/-- `A017468(n)/A017461(n)` -/
def P10616340419226900557.Spec : Prop :=
  ∀ n, P10616340419226900557.a n = (A017467 n : ℚ)

end A017467

/-! ## A017467.P13946027127073008340

`A017469(n)/A017462(n)`
-/

namespace A017467.P13946027127073008340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017469 n : ℚ) / (A017462 n : ℚ)

end

end A017467.P13946027127073008340

namespace A017467

/-- `A017469(n)/A017462(n)` -/
def P13946027127073008340.Spec : Prop :=
  ∀ n, P13946027127073008340.a n = (A017467 n : ℚ)

end A017467

/-! ## A017467.P15517816995971567380

`A017461(n)²*A017465(n)`
-/

namespace A017467.P15517816995971567380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n ^ 2 * A017465 n

end

end A017467.P15517816995971567380

namespace A017467

/-- `A017461(n)²*A017465(n)` -/
def P15517816995971567380.Spec : Prop :=
  ∀ n, P15517816995971567380.a n = A017467 n

theorem P15517816995971567380.correct : P15517816995971567380.Spec := by
  intro n
  simp only [A017467, Nat.add_sub_cancel, A017467.P15517816995971567380.a, A017467.P2786101943588950020.a, A017461, A017461.P14513907222713688530.a, A017465, A017465.P1063014630243818002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017467

/-! ## A017467.P10823307000997543608

`A017462(n)²*A017463(n)`
-/

namespace A017467.P10823307000997543608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017462 n ^ 2 * A017463 n

end

end A017467.P10823307000997543608

namespace A017467

/-- `A017462(n)²*A017463(n)` -/
def P10823307000997543608.Spec : Prop :=
  ∀ n, P10823307000997543608.a n = A017467 n

theorem P10823307000997543608.correct : P10823307000997543608.Spec := by
  intro n
  simp only [A017467, Nat.add_sub_cancel, A017467.P10823307000997543608.a, A017467.P2786101943588950020.a, A017462, A017462.P5289857702194093977.a, A017463, A017463.P13683683401331882589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017467

/-! ## A017467.P759589839431587115

`A017463(n)²*A017461(n)`
-/

namespace A017467.P759589839431587115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017463 n ^ 2 * A017461 n

end

end A017467.P759589839431587115

namespace A017467

/-- `A017463(n)²*A017461(n)` -/
def P759589839431587115.Spec : Prop :=
  ∀ n, P759589839431587115.a n = A017467 n

theorem P759589839431587115.correct : P759589839431587115.Spec := by
  intro n
  simp only [A017467, Nat.add_sub_cancel, A017467.P759589839431587115.a, A017467.P2786101943588950020.a, A017461, A017461.P14513907222713688530.a, A017463, A017463.P13683683401331882589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017467

/-! ## A017467.P4334335983450735830

`A017464(n)²/A017461(n)`
-/

namespace A017467.P4334335983450735830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017464 n ^ 2 : ℚ) / (A017461 n : ℚ)

end

end A017467.P4334335983450735830

namespace A017467

/-- `A017464(n)²/A017461(n)` -/
def P4334335983450735830.Spec : Prop :=
  ∀ n, P4334335983450735830.a n = (A017467 n : ℚ)

end A017467

/-! ## A017467.P8964209497737016234

`A017465(n)²/A017463(n)`
-/

namespace A017467.P8964209497737016234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017465 n ^ 2 : ℚ) / (A017463 n : ℚ)

end

end A017467.P8964209497737016234

namespace A017467

/-- `A017465(n)²/A017463(n)` -/
def P8964209497737016234.Spec : Prop :=
  ∀ n, P8964209497737016234.a n = (A017467 n : ℚ)

end A017467

/-! ## A017467.P3049493622745063149

`A017466(n)²/A017465(n)`
-/

namespace A017467.P3049493622745063149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017466 n ^ 2 : ℚ) / (A017465 n : ℚ)

end

end A017467.P3049493622745063149

namespace A017467

/-- `A017466(n)²/A017465(n)` -/
def P3049493622745063149.Spec : Prop :=
  ∀ n, P3049493622745063149.a n = (A017467 n : ℚ)

end A017467

/-! ## A017467.P8543959799149704690

`A017469(n)/A017461(n)²`
-/

namespace A017467.P8543959799149704690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017469 n : ℚ) / (A017461 n ^ 2 : ℚ)

end

end A017467.P8543959799149704690

namespace A017467

/-- `A017469(n)/A017461(n)²` -/
def P8543959799149704690.Spec : Prop :=
  ∀ n, P8543959799149704690.a n = (A017467 n : ℚ)

end A017467

/-! ## A017467.P9698095282624238283

`A017462(n)²²/A017461(n)`
-/

namespace A017467.P9698095282624238283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017462 n ^ 2) ^ 2 : ℚ) / (A017461 n : ℚ)

end

end A017467.P9698095282624238283

namespace A017467

/-- `A017462(n)²²/A017461(n)` -/
def P9698095282624238283.Spec : Prop :=
  ∀ n, P9698095282624238283.a n = (A017467 n : ℚ)

end A017467

/-! ## A017467.P1595463224595638141

`A017464(n)²/(A017449(n)+1)`
-/

namespace A017467.P1595463224595638141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017464 n ^ 2 : ℚ) / (A017449 n + 1 : ℚ)

end

end A017467.P1595463224595638141

namespace A017467

/-- `A017464(n)²/(A017449(n)+1)` -/
def P1595463224595638141.Spec : Prop :=
  ∀ n, P1595463224595638141.a n = (A017467 n : ℚ)

theorem P1595463224595638141.correct : P1595463224595638141.Spec := by
  intro n
  simp only [A017467, Nat.add_sub_cancel, A017467.P1595463224595638141.a, A017467.P2786101943588950020.a, A017449, A017449.P2551254521878161710.a, A017464, A017464.P11589788462732553002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017467

/-!
# A017468: a(n) = (11*n + 6)^8.

The programs for A017468, the canonical program `A017468.P739127350521880103` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017468 has offset 0).

The definition of A017468 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+6)^8` (program `A017468.P739127350521880103`, by `A017468.P739127350521880103.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017468.P739127350521880103

`(11*n+6)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017468

/-- `(11*n+6)^8` -/
def P739127350521880103.Spec : Prop :=
  ∀ n, (P739127350521880103.a n : ℤ) = A017468 n

theorem P739127350521880103.correct : P739127350521880103.Spec := by
  intro n
  simp only [A017468]

end A017468

/-! ## A017468.P7492250344122304214

`A017464(n)²`
-/

namespace A017468.P7492250344122304214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017464 n ^ 2

end

end A017468.P7492250344122304214

namespace A017468

/-- `A017464(n)²` -/
def P7492250344122304214.Spec : Prop :=
  ∀ n, P7492250344122304214.a n = A017468 n

theorem P7492250344122304214.correct : P7492250344122304214.Spec := by
  intro n
  simp only [A017468, Nat.add_sub_cancel, A017468.P7492250344122304214.a, A017468.P739127350521880103.a, A017464, A017464.P11589788462732553002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017468

/-! ## A017468.P11152609828899947705

`A017462(n)²²`
-/

namespace A017468.P11152609828899947705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017462 n ^ 2) ^ 2

end

end A017468.P11152609828899947705

namespace A017468

/-- `A017462(n)²²` -/
def P11152609828899947705.Spec : Prop :=
  ∀ n, P11152609828899947705.a n = A017468 n

theorem P11152609828899947705.correct : P11152609828899947705.Spec := by
  intro n
  simp only [A017468, Nat.add_sub_cancel, A017468.P11152609828899947705.a, A017468.P739127350521880103.a, A017462, A017462.P5289857702194093977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017468

/-! ## A017468.P4969886491132763832

`A017461(n)²²²`
-/

namespace A017468.P4969886491132763832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017461 n ^ 2) ^ 2) ^ 2

end

end A017468.P4969886491132763832

namespace A017468

/-- `A017461(n)²²²` -/
def P4969886491132763832.Spec : Prop :=
  ∀ n, P4969886491132763832.a n = A017468 n

theorem P4969886491132763832.correct : P4969886491132763832.Spec := by
  intro n
  simp only [A017468, Nat.add_sub_cancel, A017468.P4969886491132763832.a, A017468.P739127350521880103.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017468

/-! ## A017468.P12700336023278637476

`(A017449(n)+1)²²²`
-/

namespace A017468.P12700336023278637476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017449 n + 1) ^ 2) ^ 2) ^ 2

end

end A017468.P12700336023278637476

namespace A017468

/-- `(A017449(n)+1)²²²` -/
def P12700336023278637476.Spec : Prop :=
  ∀ n, P12700336023278637476.a n = A017468 n

theorem P12700336023278637476.correct : P12700336023278637476.Spec := by
  intro n
  simp only [A017468, Nat.add_sub_cancel, A017468.P12700336023278637476.a, A017468.P739127350521880103.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017468

/-! ## A017468.P4811495142844392110

`(A017437(n)+2)²²²`
-/

namespace A017468.P4811495142844392110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017437 n + 2) ^ 2) ^ 2) ^ 2

end

end A017468.P4811495142844392110

namespace A017468

/-- `(A017437(n)+2)²²²` -/
def P4811495142844392110.Spec : Prop :=
  ∀ n, P4811495142844392110.a n = A017468 n

theorem P4811495142844392110.correct : P4811495142844392110.Spec := by
  intro n
  simp only [A017468, Nat.add_sub_cancel, A017468.P4811495142844392110.a, A017468.P739127350521880103.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017468

/-! ## A017468.P10944899721378304450

`(1-A017473(n))²²²`
-/

namespace A017468.P10944899721378304450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017473 n) ^ 2) ^ 2) ^ 2

end

end A017468.P10944899721378304450

namespace A017468

/-- `(1-A017473(n))²²²` -/
def P10944899721378304450.Spec : Prop :=
  ∀ n, P10944899721378304450.a n = A017468 n

theorem P10944899721378304450.correct : P10944899721378304450.Spec := by
  intro n
  simp only [A017468, Nat.add_sub_cancel, A017468.P10944899721378304450.a, A017468.P739127350521880103.a, A017473, A017473.P6794540674081733570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017468

/-! ## A017468.P4488709356914622687

`(2-A017485(n))²²²`
-/

namespace A017468.P4488709356914622687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017485 n) ^ 2) ^ 2) ^ 2

end

end A017468.P4488709356914622687

namespace A017468

/-- `(2-A017485(n))²²²` -/
def P4488709356914622687.Spec : Prop :=
  ∀ n, P4488709356914622687.a n = A017468 n

theorem P4488709356914622687.correct : P4488709356914622687.Spec := by
  intro n
  simp only [A017468, Nat.add_sub_cancel, A017468.P4488709356914622687.a, A017468.P739127350521880103.a, A017485, A017485.P4370091181196038588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017468

/-! ## A017468.P8330890080045570848

`(A141694(n)/2)²²²`
-/

namespace A017468.P8330890080045570848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((A141694 n : ℚ) / 2) ^ 2) ^ 2) ^ 2

end

end A017468.P8330890080045570848

namespace A017468

/-- `(A141694(n)/2)²²²` -/
def P8330890080045570848.Spec : Prop :=
  ∀ n, P8330890080045570848.a n = (A017468 n : ℚ)

theorem P8330890080045570848.correct : P8330890080045570848.Spec := by
  intro n
  simp only [A017468, Nat.add_sub_cancel, A017468.P8330890080045570848.a, A017468.P739127350521880103.a, A141694, A141694.P14688773505282126803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017468

/-! ## A017468.P16746101330050041829

`(A017341(n)+n)²²²`
-/

namespace A017468.P16746101330050041829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017341 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017468.P16746101330050041829

namespace A017468

/-- `(A017341(n)+n)²²²` -/
def P16746101330050041829.Spec : Prop :=
  ∀ n, P16746101330050041829.a n = A017468 n

theorem P16746101330050041829.correct : P16746101330050041829.Spec := by
  intro n
  simp only [A017468, Nat.add_sub_cancel, A017468.P16746101330050041829.a, A017468.P739127350521880103.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017468

/-! ## A017468.P35232723395451597

`(n-A017593(n))²²²`
-/

namespace A017468.P35232723395451597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017593 n) ^ 2) ^ 2) ^ 2

end

end A017468.P35232723395451597

namespace A017468

/-- `(n-A017593(n))²²²` -/
def P35232723395451597.Spec : Prop :=
  ∀ n, P35232723395451597.a n = A017468 n

theorem P35232723395451597.correct : P35232723395451597.Spec := by
  intro n
  simp only [A017468, Nat.add_sub_cancel, A017468.P35232723395451597.a, A017468.P739127350521880103.a, A017593, A017593.P13091213750843470751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017468

/-! ## A017468.P11556118810830706974

`A017461(n)*A017467(n)`
-/

namespace A017468.P11556118810830706974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n * A017467 n

end

end A017468.P11556118810830706974

namespace A017468

/-- `A017461(n)*A017467(n)` -/
def P11556118810830706974.Spec : Prop :=
  ∀ n, P11556118810830706974.a n = A017468 n

theorem P11556118810830706974.correct : P11556118810830706974.Spec := by
  intro n
  simp only [A017468, Nat.add_sub_cancel, A017468.P11556118810830706974.a, A017468.P739127350521880103.a, A017461, A017461.P14513907222713688530.a, A017467, A017467.P2786101943588950020.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017468

/-! ## A017468.P17940513234223516864

`A017462(n)*A017466(n)`
-/

namespace A017468.P17940513234223516864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017462 n * A017466 n

end

end A017468.P17940513234223516864

namespace A017468

/-- `A017462(n)*A017466(n)` -/
def P17940513234223516864.Spec : Prop :=
  ∀ n, P17940513234223516864.a n = A017468 n

theorem P17940513234223516864.correct : P17940513234223516864.Spec := by
  intro n
  simp only [A017468, Nat.add_sub_cancel, A017468.P17940513234223516864.a, A017468.P739127350521880103.a, A017462, A017462.P5289857702194093977.a, A017466, A017466.P8335780401059382914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017468

/-! ## A017468.P17781119854842530326

`A017463(n)*A017465(n)`
-/

namespace A017468.P17781119854842530326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017463 n * A017465 n

end

end A017468.P17781119854842530326

namespace A017468

/-- `A017463(n)*A017465(n)` -/
def P17781119854842530326.Spec : Prop :=
  ∀ n, P17781119854842530326.a n = A017468 n

theorem P17781119854842530326.correct : P17781119854842530326.Spec := by
  intro n
  simp only [A017468, Nat.add_sub_cancel, A017468.P17781119854842530326.a, A017468.P739127350521880103.a, A017463, A017463.P13683683401331882589.a, A017465, A017465.P1063014630243818002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017468

/-! ## A017468.P7080931056711228674

`A017469(n)/A017461(n)`
-/

namespace A017468.P7080931056711228674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017469 n : ℚ) / (A017461 n : ℚ)

end

end A017468.P7080931056711228674

namespace A017468

/-- `A017469(n)/A017461(n)` -/
def P7080931056711228674.Spec : Prop :=
  ∀ n, P7080931056711228674.a n = (A017468 n : ℚ)

end A017468

/-! ## A017468.P15259148246277062093

`(A017467(n)/A017463(n))²`
-/

namespace A017468.P15259148246277062093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017467 n : ℚ) / (A017463 n : ℚ)) ^ 2

end

end A017468.P15259148246277062093

namespace A017468

/-- `(A017467(n)/A017463(n))²` -/
def P15259148246277062093.Spec : Prop :=
  ∀ n, P15259148246277062093.a n = (A017468 n : ℚ)

end A017468

/-! ## A017468.P7124269162371536997

`A017467(n)²/A017466(n)`
-/

namespace A017468.P7124269162371536997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017467 n ^ 2 : ℚ) / (A017466 n : ℚ)

end

end A017468.P7124269162371536997

namespace A017468

/-- `A017467(n)²/A017466(n)` -/
def P7124269162371536997.Spec : Prop :=
  ∀ n, P7124269162371536997.a n = (A017468 n : ℚ)

end A017468

/-!
# A017469: a(n) = (11*n + 6)^9.

The programs for A017469, the canonical program `A017469.P11322116688333785743` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017469 has offset 0).

The definition of A017469 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+6)^9` (program `A017469.P11322116688333785743`, by `A017469.P11322116688333785743.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017469.P11322116688333785743

`(11*n+6)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017469

/-- `(11*n+6)^9` -/
def P11322116688333785743.Spec : Prop :=
  ∀ n, (P11322116688333785743.a n : ℤ) = A017469 n

theorem P11322116688333785743.correct : P11322116688333785743.Spec := by
  intro n
  simp only [A017469]

end A017469

/-! ## A017469.P7975073941558191132

`sqrt(A017466(n)^3)`
-/

namespace A017469.P7975073941558191132
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017466 n ^ 3 : ℝ)

end

end A017469.P7975073941558191132

namespace A017469

/-- `sqrt(A017466(n)^3)` -/
def P7975073941558191132.Spec : Prop :=
  ∀ n, P7975073941558191132.a n = (A017469 n : ℝ)

end A017469

/-! ## A017469.P16959503809130242366

`A017461(n)*A017468(n)`
-/

namespace A017469.P16959503809130242366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n * A017468 n

end

end A017469.P16959503809130242366

namespace A017469

/-- `A017461(n)*A017468(n)` -/
def P16959503809130242366.Spec : Prop :=
  ∀ n, P16959503809130242366.a n = A017469 n

theorem P16959503809130242366.correct : P16959503809130242366.Spec := by
  intro n
  simp only [A017469, Nat.add_sub_cancel, A017469.P16959503809130242366.a, A017469.P11322116688333785743.a, A017461, A017461.P14513907222713688530.a, A017468, A017468.P739127350521880103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017469

/-! ## A017469.P5466347420877370397

`A017462(n)*A017467(n)`
-/

namespace A017469.P5466347420877370397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017462 n * A017467 n

end

end A017469.P5466347420877370397

namespace A017469

/-- `A017462(n)*A017467(n)` -/
def P5466347420877370397.Spec : Prop :=
  ∀ n, P5466347420877370397.a n = A017469 n

theorem P5466347420877370397.correct : P5466347420877370397.Spec := by
  intro n
  simp only [A017469, Nat.add_sub_cancel, A017469.P5466347420877370397.a, A017469.P11322116688333785743.a, A017462, A017462.P5289857702194093977.a, A017467, A017467.P2786101943588950020.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017469

/-! ## A017469.P18442680786574637579

`A017463(n)*A017466(n)`
-/

namespace A017469.P18442680786574637579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017463 n * A017466 n

end

end A017469.P18442680786574637579

namespace A017469

/-- `A017463(n)*A017466(n)` -/
def P18442680786574637579.Spec : Prop :=
  ∀ n, P18442680786574637579.a n = A017469 n

theorem P18442680786574637579.correct : P18442680786574637579.Spec := by
  intro n
  simp only [A017469, Nat.add_sub_cancel, A017469.P18442680786574637579.a, A017469.P11322116688333785743.a, A017463, A017463.P13683683401331882589.a, A017466, A017466.P8335780401059382914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017469

/-! ## A017469.P15457374379514369178

`A017464(n)*A017465(n)`
-/

namespace A017469.P15457374379514369178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017464 n * A017465 n

end

end A017469.P15457374379514369178

namespace A017469

/-- `A017464(n)*A017465(n)` -/
def P15457374379514369178.Spec : Prop :=
  ∀ n, P15457374379514369178.a n = A017469 n

theorem P15457374379514369178.correct : P15457374379514369178.Spec := by
  intro n
  simp only [A017469, Nat.add_sub_cancel, A017469.P15457374379514369178.a, A017469.P11322116688333785743.a, A017464, A017464.P11589788462732553002.a, A017465, A017465.P1063014630243818002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017469

/-! ## A017469.P16818885525786987712

`A017461(n)²*A017467(n)`
-/

namespace A017469.P16818885525786987712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n ^ 2 * A017467 n

end

end A017469.P16818885525786987712

namespace A017469

/-- `A017461(n)²*A017467(n)` -/
def P16818885525786987712.Spec : Prop :=
  ∀ n, P16818885525786987712.a n = A017469 n

theorem P16818885525786987712.correct : P16818885525786987712.Spec := by
  intro n
  simp only [A017469, Nat.add_sub_cancel, A017469.P16818885525786987712.a, A017469.P11322116688333785743.a, A017461, A017461.P14513907222713688530.a, A017467, A017467.P2786101943588950020.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017469

/-! ## A017469.P7422436723704387197

`A017462(n)²*A017465(n)`
-/

namespace A017469.P7422436723704387197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017462 n ^ 2 * A017465 n

end

end A017469.P7422436723704387197

namespace A017469

/-- `A017462(n)²*A017465(n)` -/
def P7422436723704387197.Spec : Prop :=
  ∀ n, P7422436723704387197.a n = A017469 n

theorem P7422436723704387197.correct : P7422436723704387197.Spec := by
  intro n
  simp only [A017469, Nat.add_sub_cancel, A017469.P7422436723704387197.a, A017469.P11322116688333785743.a, A017462, A017462.P5289857702194093977.a, A017465, A017465.P1063014630243818002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017469

/-! ## A017469.P12778953490145918734

`A017464(n)²*A017461(n)`
-/

namespace A017469.P12778953490145918734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017464 n ^ 2 * A017461 n

end

end A017469.P12778953490145918734

namespace A017469

/-- `A017464(n)²*A017461(n)` -/
def P12778953490145918734.Spec : Prop :=
  ∀ n, P12778953490145918734.a n = A017469 n

theorem P12778953490145918734.correct : P12778953490145918734.Spec := by
  intro n
  simp only [A017469, Nat.add_sub_cancel, A017469.P12778953490145918734.a, A017469.P11322116688333785743.a, A017461, A017461.P14513907222713688530.a, A017464, A017464.P11589788462732553002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017469

/-! ## A017469.P13911091695395807633

`A017465(n)²/A017461(n)`
-/

namespace A017469.P13911091695395807633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017465 n ^ 2 : ℚ) / (A017461 n : ℚ)

end

end A017469.P13911091695395807633

namespace A017469

/-- `A017465(n)²/A017461(n)` -/
def P13911091695395807633.Spec : Prop :=
  ∀ n, P13911091695395807633.a n = (A017469 n : ℚ)

end A017469

/-! ## A017469.P15677806699666237131

`A017467(n)²/A017465(n)`
-/

namespace A017469.P15677806699666237131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017467 n ^ 2 : ℚ) / (A017465 n : ℚ)

end

end A017469.P15677806699666237131

namespace A017469

/-- `A017467(n)²/A017465(n)` -/
def P15677806699666237131.Spec : Prop :=
  ∀ n, P15677806699666237131.a n = (A017469 n : ℚ)

end A017469

/-! ## A017469.P2271627599272433236

`A017462(n)²²*A017461(n)`
-/

namespace A017469.P2271627599272433236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017462 n ^ 2) ^ 2 * A017461 n

end

end A017469.P2271627599272433236

namespace A017469

/-- `A017462(n)²²*A017461(n)` -/
def P2271627599272433236.Spec : Prop :=
  ∀ n, P2271627599272433236.a n = A017469 n

theorem P2271627599272433236.correct : P2271627599272433236.Spec := by
  intro n
  simp only [A017469, Nat.add_sub_cancel, A017469.P2271627599272433236.a, A017469.P11322116688333785743.a, A017461, A017461.P14513907222713688530.a, A017462, A017462.P5289857702194093977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017469

/-! ## A017469.P8740117005024177472

`A017464(n)²²/A017467(n)`
-/

namespace A017469.P8740117005024177472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017464 n ^ 2) ^ 2 : ℚ) / (A017467 n : ℚ)

end

end A017469.P8740117005024177472

namespace A017469

/-- `A017464(n)²²/A017467(n)` -/
def P8740117005024177472.Spec : Prop :=
  ∀ n, P8740117005024177472.a n = (A017469 n : ℚ)

end A017469

/-! ## A017469.P12406494553270713945

`(A017449(n)+1)*A017464(n)²`
-/

namespace A017469.P12406494553270713945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017449 n + 1) * A017464 n ^ 2

end

end A017469.P12406494553270713945

namespace A017469

/-- `(A017449(n)+1)*A017464(n)²` -/
def P12406494553270713945.Spec : Prop :=
  ∀ n, P12406494553270713945.a n = A017469 n

theorem P12406494553270713945.correct : P12406494553270713945.Spec := by
  intro n
  simp only [A017469, Nat.add_sub_cancel, A017469.P12406494553270713945.a, A017469.P11322116688333785743.a, A017449, A017449.P2551254521878161710.a, A017464, A017464.P11589788462732553002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017469

/-! ## A017469.P6905246866573669570

`A001017(A017461(n))`
-/

namespace A017469.P6905246866573669570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017461 n).toNat

end

end A017469.P6905246866573669570

namespace A017469

/-- `A001017(A017461(n))` -/
def P6905246866573669570.Spec : Prop :=
  ∀ n, P6905246866573669570.a n = A017469 n

end A017469

/-!
# A017470: 

The programs for A017470, there is no canonical definition to state claims against.
-/

/-! ## A017470.P9379672990976218614

`(11*n+6)^10`
-/

namespace A017470.P9379672990976218614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 6) ^ 10

end

end A017470.P9379672990976218614

/-! ## A017470.P11202683997081317110

`A017465(n)²`
-/

namespace A017470.P11202683997081317110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017465 n ^ 2

end

end A017470.P11202683997081317110

/-! ## A017470.P14894807629784542035

`A017461(n)*A017469(n)`
-/

namespace A017470.P14894807629784542035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n * A017469 n

end

end A017470.P14894807629784542035

/-! ## A017470.P4293729812278374182

`A017462(n)*A017468(n)`
-/

namespace A017470.P4293729812278374182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017462 n * A017468 n

end

end A017470.P4293729812278374182

/-! ## A017470.P18364100936808091682

`A017463(n)*A017467(n)`
-/

namespace A017470.P18364100936808091682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017463 n * A017467 n

end

end A017470.P18364100936808091682

/-! ## A017470.P5806819733661303332

`A017464(n)*A017466(n)`
-/

namespace A017470.P5806819733661303332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017464 n * A017466 n

end

end A017470.P5806819733661303332

/-! ## A017470.P2489536620488290592

`(A017461(n)*A017464(n))²`
-/

namespace A017470.P2489536620488290592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017461 n * A017464 n) ^ 2

end

end A017470.P2489536620488290592

/-! ## A017470.P251606455541280929

`A017461(n)²*A017468(n)`
-/

namespace A017470.P251606455541280929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n ^ 2 * A017468 n

end

end A017470.P251606455541280929

/-! ## A017470.P4005079683067366932

`(A017462(n)*A017463(n))²`
-/

namespace A017470.P4005079683067366932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017462 n * A017463 n) ^ 2

end

end A017470.P4005079683067366932

/-! ## A017470.P4672082820012751757

`A017462(n)²*A017466(n)`
-/

namespace A017470.P4672082820012751757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017462 n ^ 2 * A017466 n

end

end A017470.P4672082820012751757

/-! ## A017470.P14501969346144733422

`A017463(n)²*A017464(n)`
-/

namespace A017470.P14501969346144733422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017463 n ^ 2 * A017464 n

end

end A017470.P14501969346144733422

/-! ## A017470.P16999436477279885282

`A017464(n)²*A017462(n)`
-/

namespace A017470.P16999436477279885282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017464 n ^ 2 * A017462 n

end

end A017470.P16999436477279885282

/-! ## A017470.P16812161226783215978

`(A017466(n)/A017461(n))²`
-/

namespace A017470.P16812161226783215978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017466 n : ℚ) / (A017461 n : ℚ)) ^ 2

end

end A017470.P16812161226783215978

/-! ## A017470.P4027452013146629925

`(A017467(n)/A017462(n))²`
-/

namespace A017470.P4027452013146629925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017467 n : ℚ) / (A017462 n : ℚ)) ^ 2

end

end A017470.P4027452013146629925

/-! ## A017470.P4008544789470762625

`A017467(n)²/A017464(n)`
-/

namespace A017470.P4008544789470762625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017467 n ^ 2 : ℚ) / (A017464 n : ℚ)

end

end A017470.P4008544789470762625

/-!
# A017471: 

The programs for A017471, there is no canonical definition to state claims against.
-/

/-! ## A017471.P11700256109042254508

`(11*n+6)^11`
-/

namespace A017471.P11700256109042254508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 6) ^ 11

end

end A017471.P11700256109042254508

/-! ## A017471.P3060670876258186431

`A017462(n)*A017469(n)`
-/

namespace A017471.P3060670876258186431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017462 n * A017469 n

end

end A017471.P3060670876258186431

/-! ## A017471.P1428627904139976916

`A017463(n)*A017468(n)`
-/

namespace A017471.P1428627904139976916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017463 n * A017468 n

end

end A017471.P1428627904139976916

/-! ## A017471.P2951559644139144228

`A017464(n)*A017467(n)`
-/

namespace A017471.P2951559644139144228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017464 n * A017467 n

end

end A017471.P2951559644139144228

/-! ## A017471.P5905287573219291082

`A017465(n)*A017466(n)`
-/

namespace A017471.P5905287573219291082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017465 n * A017466 n

end

end A017471.P5905287573219291082

/-! ## A017471.P118590822804626660

`A017461(n)²*A017469(n)`
-/

namespace A017471.P118590822804626660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n ^ 2 * A017469 n

end

end A017471.P118590822804626660

/-! ## A017471.P12205567017073852063

`A017462(n)²*A017467(n)`
-/

namespace A017471.P12205567017073852063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017462 n ^ 2 * A017467 n

end

end A017471.P12205567017073852063

/-! ## A017471.P14509714484087187330

`A017463(n)²*A017465(n)`
-/

namespace A017471.P14509714484087187330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017463 n ^ 2 * A017465 n

end

end A017471.P14509714484087187330

/-! ## A017471.P4224803811978168851

`A017464(n)²*A017463(n)`
-/

namespace A017471.P4224803811978168851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017464 n ^ 2 * A017463 n

end

end A017471.P4224803811978168851

/-! ## A017471.P5334101760936623952

`A017465(n)²*A017461(n)`
-/

namespace A017471.P5334101760936623952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017465 n ^ 2 * A017461 n

end

end A017471.P5334101760936623952

/-! ## A017471.P12904867648920059204

`A017466(n)²/A017461(n)`
-/

namespace A017471.P12904867648920059204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017466 n ^ 2 : ℚ) / (A017461 n : ℚ)

end

end A017471.P12904867648920059204

/-! ## A017471.P226182730518612450

`A017467(n)²/A017463(n)`
-/

namespace A017471.P226182730518612450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017467 n ^ 2 : ℚ) / (A017463 n : ℚ)

end

end A017471.P226182730518612450

/-! ## A017471.P4072171742749348920

`A017468(n)²/A017465(n)`
-/

namespace A017471.P4072171742749348920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017468 n ^ 2 : ℚ) / (A017465 n : ℚ)

end

end A017471.P4072171742749348920

/-! ## A017471.P9497543494028383886

`A017461(n)²²*A017467(n)`
-/

namespace A017471.P9497543494028383886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017461 n ^ 2) ^ 2 * A017467 n

end

end A017471.P9497543494028383886

/-! ## A017471.P7119165679031177564

`A017462(n)²²*A017463(n)`
-/

namespace A017471.P7119165679031177564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017462 n ^ 2) ^ 2 * A017463 n

end

end A017471.P7119165679031177564

/-! ## A017471.P18032553847013002063

`A017463(n)²²/A017461(n)`
-/

namespace A017471.P18032553847013002063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017463 n ^ 2) ^ 2 : ℚ) / (A017461 n : ℚ)

end

end A017471.P18032553847013002063

/-!
# A017472: 

The programs for A017472, there is no canonical definition to state claims against.
-/

/-! ## A017472.P4520237739389032439

`(11*n+6)^12`
-/

namespace A017472.P4520237739389032439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 6) ^ 12

end

end A017472.P4520237739389032439

/-! ## A017472.P18173690978534266318

`A017466(n)²`
-/

namespace A017472.P18173690978534266318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017466 n ^ 2

end

end A017472.P18173690978534266318

/-! ## A017472.P5907795101753011489

`(A017461(n)^6)²`
-/

namespace A017472.P5907795101753011489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017461 n ^ 6) ^ 2

end

end A017472.P5907795101753011489

/-! ## A017472.P6617232845566599627

`A017463(n)*A017469(n)`
-/

namespace A017472.P6617232845566599627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017463 n * A017469 n

end

end A017472.P6617232845566599627

/-! ## A017472.P10045944117394320844

`A017464(n)*A017468(n)`
-/

namespace A017472.P10045944117394320844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017464 n * A017468 n

end

end A017472.P10045944117394320844

/-! ## A017472.P8854715475639583989

`A017465(n)*A017467(n)`
-/

namespace A017472.P8854715475639583989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017465 n * A017467 n

end

end A017472.P8854715475639583989

/-! ## A017472.P8799752969644683337

`(A017461(n)*A017465(n))²`
-/

namespace A017472.P8799752969644683337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017461 n * A017465 n) ^ 2

end

end A017472.P8799752969644683337

/-! ## A017472.P5212206114293512853

`(A017462(n)*A017464(n))²`
-/

namespace A017472.P5212206114293512853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017462 n * A017464 n) ^ 2

end

end A017472.P5212206114293512853

/-! ## A017472.P8705330816672802383

`A017462(n)²*A017468(n)`
-/

namespace A017472.P8705330816672802383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017462 n ^ 2 * A017468 n

end

end A017472.P8705330816672802383

/-! ## A017472.P4365104070876424584

`A017465(n)²*A017462(n)`
-/

namespace A017472.P4365104070876424584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017465 n ^ 2 * A017462 n

end

end A017472.P4365104070876424584

/-! ## A017472.P268546907215990795

`(A017467(n)/A017461(n))²`
-/

namespace A017472.P268546907215990795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017467 n : ℚ) / (A017461 n : ℚ)) ^ 2

end

end A017472.P268546907215990795

/-! ## A017472.P14769729164623583044

`A017467(n)²/A017462(n)`
-/

namespace A017472.P14769729164623583044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017467 n ^ 2 : ℚ) / (A017462 n : ℚ)

end

end A017472.P14769729164623583044

/-!
# A017473: a(n) = 11*n + 7.

The programs for A017473, the canonical program `A017473.P6794540674081733570` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017473 has offset 0).

The definition of A017473 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*n+7` (program `A017473.P6794540674081733570`, by `A017473.P6794540674081733570.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017473.P6794540674081733570

`11*n+7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017473

/-- `11*n+7` -/
def P6794540674081733570.Spec : Prop :=
  ∀ n, (P6794540674081733570.a n : ℤ) = A017473 n

theorem P6794540674081733570.correct : P6794540674081733570.Spec := by
  intro n
  simp only [A017473]

end A017473

/-!
# A017474: a(n) = (11*n + 7)^2.

The programs for A017474, the canonical program `A017474.P13447193533429871447` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017474 has offset 0).

The definition of A017474 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+7)²` (program `A017474.P13447193533429871447`, by `A017474.P13447193533429871447.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017474.P13447193533429871447

`(11*n+7)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017474

/-- `(11*n+7)²` -/
def P13447193533429871447.Spec : Prop :=
  ∀ n, (P13447193533429871447.a n : ℤ) = A017474 n

theorem P13447193533429871447.correct : P13447193533429871447.Spec := by
  intro n
  simp only [A017474]

end A017474

/-! ## A017474.P12918702419395720278

`sqrt(A017476(n))`
-/

namespace A017474.P12918702419395720278
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017476 n : ℝ)

end

end A017474.P12918702419395720278

namespace A017474

/-- `sqrt(A017476(n))` -/
def P12918702419395720278.Spec : Prop :=
  ∀ n, P12918702419395720278.a n = (A017474 n : ℝ)

end A017474

/-! ## A017474.P18073565018679081927

`A017473(n)^2`
-/

namespace A017474.P18073565018679081927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n ^ 2

end

end A017474.P18073565018679081927

namespace A017474

/-- `A017473(n)^2` -/
def P18073565018679081927.Spec : Prop :=
  ∀ n, P18073565018679081927.a n = A017474 n

theorem P18073565018679081927.correct : P18073565018679081927.Spec := by
  intro n
  simp only [A017474, Nat.add_sub_cancel, A017474.P18073565018679081927.a, A017474.P13447193533429871447.a, A017473, A017473.P6794540674081733570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017474

/-! ## A017474.P3614956140152345947

`sqrt(sqrt(A017480(n)))`
-/

namespace A017474.P3614956140152345947
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017480 n : ℝ))

end

end A017474.P3614956140152345947

namespace A017474

/-- `sqrt(sqrt(A017480(n)))` -/
def P3614956140152345947.Spec : Prop :=
  ∀ n, P3614956140152345947.a n = (A017474 n : ℝ)

end A017474

/-! ## A017474.P7585978569985279534

`(A017461(n)+1)^2`
-/

namespace A017474.P7585978569985279534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017461 n + 1) ^ 2

end

end A017474.P7585978569985279534

namespace A017474

/-- `(A017461(n)+1)^2` -/
def P7585978569985279534.Spec : Prop :=
  ∀ n, P7585978569985279534.a n = A017474 n

theorem P7585978569985279534.correct : P7585978569985279534.Spec := by
  intro n
  simp only [A017474, Nat.add_sub_cancel, A017474.P7585978569985279534.a, A017474.P13447193533429871447.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017474

/-! ## A017474.P10942747759401942322

`A017478(n)^(1/3)`
-/

namespace A017474.P10942747759401942322
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017478 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017474.P10942747759401942322

namespace A017474

/-- `A017478(n)^(1/3)` -/
def P10942747759401942322.Spec : Prop :=
  ∀ n, P10942747759401942322.a n = (A017474 n : ℝ)

end A017474

/-! ## A017474.P16846852419158184209

`A017475(n)^(2/3)`
-/

namespace A017474.P16846852419158184209
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017475 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017474.P16846852419158184209

namespace A017474

/-- `A017475(n)^(2/3)` -/
def P16846852419158184209.Spec : Prop :=
  ∀ n, P16846852419158184209.a n = (A017474 n : ℝ)

end A017474

/-! ## A017474.P14632024715305861122

`A017475(n)/A017473(n)`
-/

namespace A017474.P14632024715305861122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017475 n : ℚ) / (A017473 n : ℚ)

end

end A017474.P14632024715305861122

namespace A017474

/-- `A017475(n)/A017473(n)` -/
def P14632024715305861122.Spec : Prop :=
  ∀ n, P14632024715305861122.a n = (A017474 n : ℚ)

end A017474

/-! ## A017474.P6720066103207232228

`A017477(n)/A017475(n)`
-/

namespace A017474.P6720066103207232228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017477 n : ℚ) / (A017475 n : ℚ)

end

end A017474.P6720066103207232228

namespace A017474

/-- `A017477(n)/A017475(n)` -/
def P6720066103207232228.Spec : Prop :=
  ∀ n, P6720066103207232228.a n = (A017474 n : ℚ)

end A017474

/-! ## A017474.P10775758828180951427

`A017478(n)/A017476(n)`
-/

namespace A017474.P10775758828180951427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017478 n : ℚ) / (A017476 n : ℚ)

end

end A017474.P10775758828180951427

namespace A017474

/-- `A017478(n)/A017476(n)` -/
def P10775758828180951427.Spec : Prop :=
  ∀ n, P10775758828180951427.a n = (A017474 n : ℚ)

end A017474

/-! ## A017474.P17557327245274613496

`A017479(n)/A017477(n)`
-/

namespace A017474.P17557327245274613496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017479 n : ℚ) / (A017477 n : ℚ)

end

end A017474.P17557327245274613496

namespace A017474

/-- `A017479(n)/A017477(n)` -/
def P17557327245274613496.Spec : Prop :=
  ∀ n, P17557327245274613496.a n = (A017474 n : ℚ)

end A017474

/-! ## A017474.P2820164244599490372

`A017480(n)/A017478(n)`
-/

namespace A017474.P2820164244599490372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017480 n : ℚ) / (A017478 n : ℚ)

end

end A017474.P2820164244599490372

namespace A017474

/-- `A017480(n)/A017478(n)` -/
def P2820164244599490372.Spec : Prop :=
  ∀ n, P2820164244599490372.a n = (A017474 n : ℚ)

end A017474

/-! ## A017474.P1712505157864206643

`A017481(n)/A017479(n)`
-/

namespace A017474.P1712505157864206643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017481 n : ℚ) / (A017479 n : ℚ)

end

end A017474.P1712505157864206643

namespace A017474

/-- `A017481(n)/A017479(n)` -/
def P1712505157864206643.Spec : Prop :=
  ∀ n, P1712505157864206643.a n = (A017474 n : ℚ)

end A017474

/-! ## A017474.P5536464821258344458

`A017475(n)²/A017476(n)`
-/

namespace A017474.P5536464821258344458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017475 n ^ 2 : ℚ) / (A017476 n : ℚ)

end

end A017474.P5536464821258344458

namespace A017474

/-- `A017475(n)²/A017476(n)` -/
def P5536464821258344458.Spec : Prop :=
  ∀ n, P5536464821258344458.a n = (A017474 n : ℚ)

end A017474

/-! ## A017474.P5287024099773850272

`A017480(n)/A017475(n)²`
-/

namespace A017474.P5287024099773850272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017480 n : ℚ) / (A017475 n ^ 2 : ℚ)

end

end A017474.P5287024099773850272

namespace A017474

/-- `A017480(n)/A017475(n)²` -/
def P5287024099773850272.Spec : Prop :=
  ∀ n, P5287024099773850272.a n = (A017474 n : ℚ)

end A017474

/-! ## A017474.P12044780376725883446

`A017473(n)²%A017486(n)`
-/

namespace A017474.P12044780376725883446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017473 n ^ 2) (A017486 n)

end

end A017474.P12044780376725883446

namespace A017474

/-- `A017473(n)²%A017486(n)` -/
def P12044780376725883446.Spec : Prop :=
  ∀ n, P12044780376725883446.a n = A017474 n

end A017474

/-! ## A017474.P3468681556417404796

`A304157(n+1)+A017450(n)`
-/

namespace A017474.P3468681556417404796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + A017450 n

end

end A017474.P3468681556417404796

namespace A017474

/-- `A304157(n+1)+A017450(n)` -/
def P3468681556417404796.Spec : Prop :=
  ∀ n, P3468681556417404796.a n = A017474 n

theorem P3468681556417404796.correct : P3468681556417404796.Spec := by
  intro n
  simp only [A017474, Nat.add_sub_cancel, A017474.P3468681556417404796.a, A017474.P13447193533429871447.a, A017450, A017450.P1801296710465505424.a, A304157, A304157.P9913014979865334882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017474

/-! ## A017474.P11993653859286859073

`A017478(n)/A017473(n)²²`
-/

namespace A017474.P11993653859286859073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017478 n : ℚ) / ((A017473 n ^ 2) ^ 2 : ℚ)

end

end A017474.P11993653859286859073

namespace A017474

/-- `A017478(n)/A017473(n)²²` -/
def P11993653859286859073.Spec : Prop :=
  ∀ n, P11993653859286859073.a n = (A017474 n : ℚ)

end A017474

/-!
# A017475: a(n) = (11*n + 7)^3.

The programs for A017475, the canonical program `A017475.P4508267272127270353` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017475 has offset 0).

The definition of A017475 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+7)^3` (program `A017475.P4508267272127270353`, by `A017475.P4508267272127270353.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017475.P4508267272127270353

`(11*n+7)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017475

/-- `(11*n+7)^3` -/
def P4508267272127270353.Spec : Prop :=
  ∀ n, (P4508267272127270353.a n : ℤ) = A017475 n

theorem P4508267272127270353.correct : P4508267272127270353.Spec := by
  intro n
  simp only [A017475]

end A017475

/-! ## A017475.P11311363280302822380

`sqrt(A017478(n))`
-/

namespace A017475.P11311363280302822380
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017478 n : ℝ)

end

end A017475.P11311363280302822380

namespace A017475

/-- `sqrt(A017478(n))` -/
def P11311363280302822380.Spec : Prop :=
  ∀ n, P11311363280302822380.a n = (A017475 n : ℝ)

end A017475

/-! ## A017475.P7704588750871816721

`sqrt(A017474(n)^3)`
-/

namespace A017475.P7704588750871816721
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017474 n ^ 3 : ℝ)

end

end A017475.P7704588750871816721

namespace A017475

/-- `sqrt(A017474(n)^3)` -/
def P7704588750871816721.Spec : Prop :=
  ∀ n, P7704588750871816721.a n = (A017475 n : ℝ)

end A017475

/-! ## A017475.P8456688120935381303

`(11*n+7)²*A000027(11*n+7)`
-/

namespace A017475.P8456688120935381303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((11 * n + 7) ^ 2 : ℤ) * A000027 (11 * n + 7)

end

end A017475.P8456688120935381303

namespace A017475

/-- `(11*n+7)²*A000027(11*n+7)` -/
def P8456688120935381303.Spec : Prop :=
  ∀ n, P8456688120935381303.a n = A017475 n

theorem P8456688120935381303.correct : P8456688120935381303.Spec := by
  intro n
  simp only [A017475, Nat.add_sub_cancel, A017475.P8456688120935381303.a, A017475.P4508267272127270353.a, A000027, A000027.P10331202704469894836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017475

/-! ## A017475.P2793404834084919769

`A017473(n)*A017474(n)`
-/

namespace A017475.P2793404834084919769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n * A017474 n

end

end A017475.P2793404834084919769

namespace A017475

/-- `A017473(n)*A017474(n)` -/
def P2793404834084919769.Spec : Prop :=
  ∀ n, P2793404834084919769.a n = A017475 n

theorem P2793404834084919769.correct : P2793404834084919769.Spec := by
  intro n
  simp only [A017475, Nat.add_sub_cancel, A017475.P2793404834084919769.a, A017475.P4508267272127270353.a, A017473, A017473.P6794540674081733570.a, A017474, A017474.P13447193533429871447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017475

/-! ## A017475.P605424977460298546

`A017476(n)/A017473(n)`
-/

namespace A017475.P605424977460298546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017476 n : ℚ) / (A017473 n : ℚ)

end

end A017475.P605424977460298546

namespace A017475

/-- `A017476(n)/A017473(n)` -/
def P605424977460298546.Spec : Prop :=
  ∀ n, P605424977460298546.a n = (A017475 n : ℚ)

end A017475

/-! ## A017475.P1136510267042259460

`A017477(n)/A017474(n)`
-/

namespace A017475.P1136510267042259460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017477 n : ℚ) / (A017474 n : ℚ)

end

end A017475.P1136510267042259460

namespace A017475

/-- `A017477(n)/A017474(n)` -/
def P1136510267042259460.Spec : Prop :=
  ∀ n, P1136510267042259460.a n = (A017475 n : ℚ)

end A017475

/-! ## A017475.P18045241311917557290

`A017479(n)/A017476(n)`
-/

namespace A017475.P18045241311917557290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017479 n : ℚ) / (A017476 n : ℚ)

end

end A017475.P18045241311917557290

namespace A017475

/-- `A017479(n)/A017476(n)` -/
def P18045241311917557290.Spec : Prop :=
  ∀ n, P18045241311917557290.a n = (A017475 n : ℚ)

end A017475

/-! ## A017475.P11839085898070126360

`A017480(n)/A017477(n)`
-/

namespace A017475.P11839085898070126360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017480 n : ℚ) / (A017477 n : ℚ)

end

end A017475.P11839085898070126360

namespace A017475

/-- `A017480(n)/A017477(n)` -/
def P11839085898070126360.Spec : Prop :=
  ∀ n, P11839085898070126360.a n = (A017475 n : ℚ)

end A017475

/-! ## A017475.P18022795762372683859

`A017481(n)/A017478(n)`
-/

namespace A017475.P18022795762372683859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017481 n : ℚ) / (A017478 n : ℚ)

end

end A017475.P18022795762372683859

namespace A017475

/-- `A017481(n)/A017478(n)` -/
def P18022795762372683859.Spec : Prop :=
  ∀ n, P18022795762372683859.a n = (A017475 n : ℚ)

end A017475

/-! ## A017475.P13766761521638473162

`A017476(n)²/A017477(n)`
-/

namespace A017475.P13766761521638473162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017476 n ^ 2 : ℚ) / (A017477 n : ℚ)

end

end A017475.P13766761521638473162

namespace A017475

/-- `A017476(n)²/A017477(n)` -/
def P13766761521638473162.Spec : Prop :=
  ∀ n, P13766761521638473162.a n = (A017475 n : ℚ)

end A017475

/-! ## A017475.P9305063953832904977

`A017477(n)/A017473(n)²`
-/

namespace A017475.P9305063953832904977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017477 n : ℚ) / (A017473 n ^ 2 : ℚ)

end

end A017475.P9305063953832904977

namespace A017475

/-- `A017477(n)/A017473(n)²` -/
def P9305063953832904977.Spec : Prop :=
  ∀ n, P9305063953832904977.a n = (A017475 n : ℚ)

end A017475

/-! ## A017475.P17765763337165877892

`A017479(n)/A017474(n)²`
-/

namespace A017475.P17765763337165877892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017479 n : ℚ) / (A017474 n ^ 2 : ℚ)

end

end A017475.P17765763337165877892

namespace A017475

/-- `A017479(n)/A017474(n)²` -/
def P17765763337165877892.Spec : Prop :=
  ∀ n, P17765763337165877892.a n = (A017475 n : ℚ)

end A017475

/-! ## A017475.P7303362961465426668

`(A017497(n)-2)*A017474(n)`
-/

namespace A017475.P7303362961465426668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017497 n - 2) * A017474 n

end

end A017475.P7303362961465426668

namespace A017475

/-- `(A017497(n)-2)*A017474(n)` -/
def P7303362961465426668.Spec : Prop :=
  ∀ n, P7303362961465426668.a n = A017475 n

theorem P7303362961465426668.correct : P7303362961465426668.Spec := by
  intro n
  simp only [A017475, Nat.add_sub_cancel, A017475.P7303362961465426668.a, A017475.P4508267272127270353.a, A017474, A017474.P13447193533429871447.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017475

/-! ## A017475.P11049713982886289080

`A017479(n)/A017473(n)²²`
-/

namespace A017475.P11049713982886289080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017479 n : ℚ) / ((A017473 n ^ 2) ^ 2 : ℚ)

end

end A017475.P11049713982886289080

namespace A017475

/-- `A017479(n)/A017473(n)²²` -/
def P11049713982886289080.Spec : Prop :=
  ∀ n, P11049713982886289080.a n = (A017475 n : ℚ)

end A017475

/-! ## A017475.P11939703838586805471

`A017473(n)/A017477(n)*A017479(n)`
-/

namespace A017475.P11939703838586805471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017473 n : ℚ) / (A017477 n : ℚ) * (A017479 n : ℚ)

end

end A017475.P11939703838586805471

namespace A017475

/-- `A017473(n)/A017477(n)*A017479(n)` -/
def P11939703838586805471.Spec : Prop :=
  ∀ n, P11939703838586805471.a n = (A017475 n : ℚ)

end A017475

/-!
# A017476: a(n) = (11*n + 7)^4.

The programs for A017476, the canonical program `A017476.P11769284304425161020` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017476 has offset 0).

The definition of A017476 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+7)^4` (program `A017476.P11769284304425161020`, by `A017476.P11769284304425161020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017476.P11769284304425161020

`(11*n+7)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017476

/-- `(11*n+7)^4` -/
def P11769284304425161020.Spec : Prop :=
  ∀ n, (P11769284304425161020.a n : ℤ) = A017476 n

theorem P11769284304425161020.correct : P11769284304425161020.Spec := by
  intro n
  simp only [A017476]

end A017476

/-! ## A017476.P17629929683742088174

`A017474(n)²`
-/

namespace A017476.P17629929683742088174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017474 n ^ 2

end

end A017476.P17629929683742088174

namespace A017476

/-- `A017474(n)²` -/
def P17629929683742088174.Spec : Prop :=
  ∀ n, P17629929683742088174.a n = A017476 n

theorem P17629929683742088174.correct : P17629929683742088174.Spec := by
  intro n
  simp only [A017476, Nat.add_sub_cancel, A017476.P17629929683742088174.a, A017476.P11769284304425161020.a, A017474, A017474.P13447193533429871447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017476

/-! ## A017476.P2034593295722936574

`sqrt(A017480(n))`
-/

namespace A017476.P2034593295722936574
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017480 n : ℝ)

end

end A017476.P2034593295722936574

namespace A017476

/-- `sqrt(A017480(n))` -/
def P2034593295722936574.Spec : Prop :=
  ∀ n, P2034593295722936574.a n = (A017476 n : ℝ)

end A017476

/-! ## A017476.P9333432289162789892

`A017473(n)²²`
-/

namespace A017476.P9333432289162789892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017473 n ^ 2) ^ 2

end

end A017476.P9333432289162789892

namespace A017476

/-- `A017473(n)²²` -/
def P9333432289162789892.Spec : Prop :=
  ∀ n, P9333432289162789892.a n = A017476 n

theorem P9333432289162789892.correct : P9333432289162789892.Spec := by
  intro n
  simp only [A017476, Nat.add_sub_cancel, A017476.P9333432289162789892.a, A017476.P11769284304425161020.a, A017473, A017473.P6794540674081733570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017476

/-! ## A017476.P1361950255029003185

`(A017461(n)+1)²²`
-/

namespace A017476.P1361950255029003185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017461 n + 1) ^ 2) ^ 2

end

end A017476.P1361950255029003185

namespace A017476

/-- `(A017461(n)+1)²²` -/
def P1361950255029003185.Spec : Prop :=
  ∀ n, P1361950255029003185.a n = A017476 n

theorem P1361950255029003185.correct : P1361950255029003185.Spec := by
  intro n
  simp only [A017476, Nat.add_sub_cancel, A017476.P1361950255029003185.a, A017476.P11769284304425161020.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017476

/-! ## A017476.P12006231634690752821

`(A017449(n)+2)²²`
-/

namespace A017476.P12006231634690752821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017449 n + 2) ^ 2) ^ 2

end

end A017476.P12006231634690752821

namespace A017476

/-- `(A017449(n)+2)²²` -/
def P12006231634690752821.Spec : Prop :=
  ∀ n, P12006231634690752821.a n = A017476 n

theorem P12006231634690752821.correct : P12006231634690752821.Spec := by
  intro n
  simp only [A017476, Nat.add_sub_cancel, A017476.P12006231634690752821.a, A017476.P11769284304425161020.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017476

/-! ## A017476.P6860762629090969107

`(1-A017485(n))²²`
-/

namespace A017476.P6860762629090969107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017485 n) ^ 2) ^ 2

end

end A017476.P6860762629090969107

namespace A017476

/-- `(1-A017485(n))²²` -/
def P6860762629090969107.Spec : Prop :=
  ∀ n, P6860762629090969107.a n = A017476 n

theorem P6860762629090969107.correct : P6860762629090969107.Spec := by
  intro n
  simp only [A017476, Nat.add_sub_cancel, A017476.P6860762629090969107.a, A017476.P11769284304425161020.a, A017485, A017485.P4370091181196038588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017476

/-! ## A017476.P8547472605202638207

`(A017437(n)+3)²²`
-/

namespace A017476.P8547472605202638207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017437 n + 3) ^ 2) ^ 2

end

end A017476.P8547472605202638207

namespace A017476

/-- `(A017437(n)+3)²²` -/
def P8547472605202638207.Spec : Prop :=
  ∀ n, P8547472605202638207.a n = A017476 n

theorem P8547472605202638207.correct : P8547472605202638207.Spec := by
  intro n
  simp only [A017476, Nat.add_sub_cancel, A017476.P8547472605202638207.a, A017476.P11769284304425161020.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017476

/-! ## A017476.P11066712712707318489

`(2-A017497(n))²²`
-/

namespace A017476.P11066712712707318489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017497 n) ^ 2) ^ 2

end

end A017476.P11066712712707318489

namespace A017476

/-- `(2-A017497(n))²²` -/
def P11066712712707318489.Spec : Prop :=
  ∀ n, P11066712712707318489.a n = A017476 n

theorem P11066712712707318489.correct : P11066712712707318489.Spec := by
  intro n
  simp only [A017476, Nat.add_sub_cancel, A017476.P11066712712707318489.a, A017476.P11769284304425161020.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017476

/-! ## A017476.P9082028812968696614

`(3-A017509(n))²²`
-/

namespace A017476.P9082028812968696614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017509 n) ^ 2) ^ 2

end

end A017476.P9082028812968696614

namespace A017476

/-- `(3-A017509(n))²²` -/
def P9082028812968696614.Spec : Prop :=
  ∀ n, P9082028812968696614.a n = A017476 n

theorem P9082028812968696614.correct : P9082028812968696614.Spec := by
  intro n
  simp only [A017476, Nat.add_sub_cancel, A017476.P9082028812968696614.a, A017476.P11769284304425161020.a, A017509, A017509.P7373483985674399481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017476

/-! ## A017476.P5103891361469704195

`(A017353(n)+n)²²`
-/

namespace A017476.P5103891361469704195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017353 n + (n : ℤ)) ^ 2) ^ 2

end

end A017476.P5103891361469704195

namespace A017476

/-- `(A017353(n)+n)²²` -/
def P5103891361469704195.Spec : Prop :=
  ∀ n, P5103891361469704195.a n = A017476 n

theorem P5103891361469704195.correct : P5103891361469704195.Spec := by
  intro n
  simp only [A017476, Nat.add_sub_cancel, A017476.P5103891361469704195.a, A017476.P11769284304425161020.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017476

/-! ## A017476.P4333123552989842199

`(n-A017605(n))²²`
-/

namespace A017476.P4333123552989842199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017605 n) ^ 2) ^ 2

end

end A017476.P4333123552989842199

namespace A017476

/-- `(n-A017605(n))²²` -/
def P4333123552989842199.Spec : Prop :=
  ∀ n, P4333123552989842199.a n = A017476 n

theorem P4333123552989842199.correct : P4333123552989842199.Spec := by
  intro n
  simp only [A017476, Nat.add_sub_cancel, A017476.P4333123552989842199.a, A017476.P11769284304425161020.a, A017605, A017605.P12903970419572684084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017476

/-! ## A017476.P9324618939623398404

`(sqrt(A017462(n))+1)²²`
-/

namespace A017476.P9324618939623398404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017462 n : ℝ) + 1) ^ 2) ^ 2

end

end A017476.P9324618939623398404

namespace A017476

/-- `(sqrt(A017462(n))+1)²²` -/
def P9324618939623398404.Spec : Prop :=
  ∀ n, P9324618939623398404.a n = (A017476 n : ℝ)

end A017476

/-! ## A017476.P5299609891947754663

`(sqrt(A017450(n))+2)²²`
-/

namespace A017476.P5299609891947754663
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017450 n : ℝ) + 2) ^ 2) ^ 2

end

end A017476.P5299609891947754663

namespace A017476

/-- `(sqrt(A017450(n))+2)²²` -/
def P5299609891947754663.Spec : Prop :=
  ∀ n, P5299609891947754663.a n = (A017476 n : ℝ)

end A017476

/-! ## A017476.P9411337449873723976

`(1-sqrt(A017486(n)))²²`
-/

namespace A017476.P9411337449873723976
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017486 n : ℝ)) ^ 2) ^ 2

end

end A017476.P9411337449873723976

namespace A017476

/-- `(1-sqrt(A017486(n)))²²` -/
def P9411337449873723976.Spec : Prop :=
  ∀ n, P9411337449873723976.a n = (A017476 n : ℝ)

end A017476

/-! ## A017476.P4390648957215279704

`(2-sqrt(A017498(n)))²²`
-/

namespace A017476.P4390648957215279704
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - Real.sqrt (A017498 n : ℝ)) ^ 2) ^ 2

end

end A017476.P4390648957215279704

namespace A017476

/-- `(2-sqrt(A017498(n)))²²` -/
def P4390648957215279704.Spec : Prop :=
  ∀ n, P4390648957215279704.a n = (A017476 n : ℝ)

end A017476

/-! ## A017476.P10656437455615646987

`(sqrt(A017354(n))+n)²²`
-/

namespace A017476.P10656437455615646987
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017354 n : ℝ) + (n : ℝ)) ^ 2) ^ 2

end

end A017476.P10656437455615646987

namespace A017476

/-- `(sqrt(A017354(n))+n)²²` -/
def P10656437455615646987.Spec : Prop :=
  ∀ n, P10656437455615646987.a n = (A017476 n : ℝ)

end A017476

/-! ## A017476.P9583544583681557053

`(n-sqrt(A017606(n)))²²`
-/

namespace A017476.P9583544583681557053
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) - Real.sqrt (A017606 n : ℝ)) ^ 2) ^ 2

end

end A017476.P9583544583681557053

namespace A017476

/-- `(n-sqrt(A017606(n)))²²` -/
def P9583544583681557053.Spec : Prop :=
  ∀ n, P9583544583681557053.a n = (A017476 n : ℝ)

end A017476

/-! ## A017476.P12161062738336800040

`(Δ[A168668(n)]+n)²²`
-/

namespace A017476.P12161062738336800040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n + (n : ℤ)) ^ 2) ^ 2

end

end A017476.P12161062738336800040

namespace A017476

/-- `(Δ[A168668(n)]+n)²²` -/
def P12161062738336800040.Spec : Prop :=
  ∀ n, P12161062738336800040.a n = A017476 n

theorem P12161062738336800040.correct : P12161062738336800040.Spec := by
  intro n
  simp only [A017476, Nat.add_sub_cancel, A017476.P12161062738336800040.f1, A017476.P12161062738336800040.a, A017476.P11769284304425161020.a, A168668, A168668.P11025489875590215140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017476

/-! ## A017476.P12051138867743667277

`(A017341(n)+1+n)²²`
-/

namespace A017476.P12051138867743667277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017341 n + 1 + (n : ℤ)) ^ 2) ^ 2

end

end A017476.P12051138867743667277

namespace A017476

/-- `(A017341(n)+1+n)²²` -/
def P12051138867743667277.Spec : Prop :=
  ∀ n, P12051138867743667277.a n = A017476 n

theorem P12051138867743667277.correct : P12051138867743667277.Spec := by
  intro n
  simp only [A017476, Nat.add_sub_cancel, A017476.P12051138867743667277.a, A017476.P11769284304425161020.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017476

/-!
# A017477: a(n) = (11*n + 7)^5.

The programs for A017477, the canonical program `A017477.P1835275560251232623` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017477 has offset 0).

The definition of A017477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+7)^5` (program `A017477.P1835275560251232623`, by `A017477.P1835275560251232623.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017477.P1835275560251232623

`(11*n+7)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017477

/-- `(11*n+7)^5` -/
def P1835275560251232623.Spec : Prop :=
  ∀ n, (P1835275560251232623.a n : ℤ) = A017477 n

theorem P1835275560251232623.correct : P1835275560251232623.Spec := by
  intro n
  simp only [A017477]

end A017477

/-! ## A017477.P2534915561999640307

`sqrt(A017474(n)^5)`
-/

namespace A017477.P2534915561999640307
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017474 n ^ 5 : ℝ)

end

end A017477.P2534915561999640307

namespace A017477

/-- `sqrt(A017474(n)^5)` -/
def P2534915561999640307.Spec : Prop :=
  ∀ n, P2534915561999640307.a n = (A017477 n : ℝ)

end A017477

/-! ## A017477.P8842274705638226877

`A017473(n)*A017476(n)`
-/

namespace A017477.P8842274705638226877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n * A017476 n

end

end A017477.P8842274705638226877

namespace A017477

/-- `A017473(n)*A017476(n)` -/
def P8842274705638226877.Spec : Prop :=
  ∀ n, P8842274705638226877.a n = A017477 n

theorem P8842274705638226877.correct : P8842274705638226877.Spec := by
  intro n
  simp only [A017477, Nat.add_sub_cancel, A017477.P8842274705638226877.a, A017477.P1835275560251232623.a, A017473, A017473.P6794540674081733570.a, A017476, A017476.P11769284304425161020.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017477

/-! ## A017477.P5667813998612359428

`A017474(n)*A017475(n)`
-/

namespace A017477.P5667813998612359428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017474 n * A017475 n

end

end A017477.P5667813998612359428

namespace A017477

/-- `A017474(n)*A017475(n)` -/
def P5667813998612359428.Spec : Prop :=
  ∀ n, P5667813998612359428.a n = A017477 n

theorem P5667813998612359428.correct : P5667813998612359428.Spec := by
  intro n
  simp only [A017477, Nat.add_sub_cancel, A017477.P5667813998612359428.a, A017477.P1835275560251232623.a, A017474, A017474.P13447193533429871447.a, A017475, A017475.P4508267272127270353.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017477

/-! ## A017477.P3627208945553285326

`A017478(n)/A017473(n)`
-/

namespace A017477.P3627208945553285326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017478 n : ℚ) / (A017473 n : ℚ)

end

end A017477.P3627208945553285326

namespace A017477

/-- `A017478(n)/A017473(n)` -/
def P3627208945553285326.Spec : Prop :=
  ∀ n, P3627208945553285326.a n = (A017477 n : ℚ)

end A017477

/-! ## A017477.P10729229395273539232

`A017479(n)/A017474(n)`
-/

namespace A017477.P10729229395273539232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017479 n : ℚ) / (A017474 n : ℚ)

end

end A017477.P10729229395273539232

namespace A017477

/-- `A017479(n)/A017474(n)` -/
def P10729229395273539232.Spec : Prop :=
  ∀ n, P10729229395273539232.a n = (A017477 n : ℚ)

end A017477

/-! ## A017477.P14395857442615723067

`A017480(n)/A017475(n)`
-/

namespace A017477.P14395857442615723067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017480 n : ℚ) / (A017475 n : ℚ)

end

end A017477.P14395857442615723067

namespace A017477

/-- `A017480(n)/A017475(n)` -/
def P14395857442615723067.Spec : Prop :=
  ∀ n, P14395857442615723067.a n = (A017477 n : ℚ)

end A017477

/-! ## A017477.P17901975115561920371

`A017481(n)/A017476(n)`
-/

namespace A017477.P17901975115561920371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017481 n : ℚ) / (A017476 n : ℚ)

end

end A017477.P17901975115561920371

namespace A017477

/-- `A017481(n)/A017476(n)` -/
def P17901975115561920371.Spec : Prop :=
  ∀ n, P17901975115561920371.a n = (A017477 n : ℚ)

end A017477

/-! ## A017477.P10089936296119854037

`A017473(n)²*A017475(n)`
-/

namespace A017477.P10089936296119854037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n ^ 2 * A017475 n

end

end A017477.P10089936296119854037

namespace A017477

/-- `A017473(n)²*A017475(n)` -/
def P10089936296119854037.Spec : Prop :=
  ∀ n, P10089936296119854037.a n = A017477 n

theorem P10089936296119854037.correct : P10089936296119854037.Spec := by
  intro n
  simp only [A017477, Nat.add_sub_cancel, A017477.P10089936296119854037.a, A017477.P1835275560251232623.a, A017473, A017473.P6794540674081733570.a, A017475, A017475.P4508267272127270353.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017477

/-! ## A017477.P9177613600516601105

`A017474(n)²*A017473(n)`
-/

namespace A017477.P9177613600516601105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017474 n ^ 2 * A017473 n

end

end A017477.P9177613600516601105

namespace A017477

/-- `A017474(n)²*A017473(n)` -/
def P9177613600516601105.Spec : Prop :=
  ∀ n, P9177613600516601105.a n = A017477 n

theorem P9177613600516601105.correct : P9177613600516601105.Spec := by
  intro n
  simp only [A017477, Nat.add_sub_cancel, A017477.P9177613600516601105.a, A017477.P1835275560251232623.a, A017473, A017473.P6794540674081733570.a, A017474, A017474.P13447193533429871447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017477

/-! ## A017477.P8603889997473529795

`A017476(n)²/A017475(n)`
-/

namespace A017477.P8603889997473529795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017476 n ^ 2 : ℚ) / (A017475 n : ℚ)

end

end A017477.P8603889997473529795

namespace A017477

/-- `A017476(n)²/A017475(n)` -/
def P8603889997473529795.Spec : Prop :=
  ∀ n, P8603889997473529795.a n = (A017477 n : ℚ)

end A017477

/-! ## A017477.P9649194438484944565

`A017478(n)²/A017479(n)`
-/

namespace A017477.P9649194438484944565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017478 n ^ 2 : ℚ) / (A017479 n : ℚ)

end

end A017477.P9649194438484944565

namespace A017477

/-- `A017478(n)²/A017479(n)` -/
def P9649194438484944565.Spec : Prop :=
  ∀ n, P9649194438484944565.a n = (A017477 n : ℚ)

end A017477

/-! ## A017477.P15166471099378071526

`A017479(n)/A017473(n)²`
-/

namespace A017477.P15166471099378071526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017479 n : ℚ) / (A017473 n ^ 2 : ℚ)

end

end A017477.P15166471099378071526

namespace A017477

/-- `A017479(n)/A017473(n)²` -/
def P15166471099378071526.Spec : Prop :=
  ∀ n, P15166471099378071526.a n = (A017477 n : ℚ)

end A017477

/-! ## A017477.P4804585457455163998

`A017481(n)/A017474(n)²`
-/

namespace A017477.P4804585457455163998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017481 n : ℚ) / (A017474 n ^ 2 : ℚ)

end

end A017477.P4804585457455163998

namespace A017477

/-- `A017481(n)/A017474(n)²` -/
def P4804585457455163998.Spec : Prop :=
  ∀ n, P4804585457455163998.a n = (A017477 n : ℚ)

end A017477

/-! ## A017477.P7309231528733652001

`A017476(n)²/sqrt(A017478(n))`
-/

namespace A017477.P7309231528733652001
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017476 n ^ 2 : ℝ) / Real.sqrt (A017478 n : ℝ)

end

end A017477.P7309231528733652001

namespace A017477

/-- `A017476(n)²/sqrt(A017478(n))` -/
def P7309231528733652001.Spec : Prop :=
  ∀ n, P7309231528733652001.a n = (A017477 n : ℝ)

end A017477

/-!
# A017478: a(n) = (11*n + 7)^6.

The programs for A017478, the canonical program `A017478.P142916397065320014` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017478 has offset 0).

The definition of A017478 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+7)^6` (program `A017478.P142916397065320014`, by `A017478.P142916397065320014.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017478.P142916397065320014

`(11*n+7)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017478

/-- `(11*n+7)^6` -/
def P142916397065320014.Spec : Prop :=
  ∀ n, (P142916397065320014.a n : ℤ) = A017478 n

theorem P142916397065320014.correct : P142916397065320014.Spec := by
  intro n
  simp only [A017478]

end A017478

/-! ## A017478.P170798830490863340

`A017475(n)²`
-/

namespace A017478.P170798830490863340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017475 n ^ 2

end

end A017478.P170798830490863340

namespace A017478

/-- `A017475(n)²` -/
def P170798830490863340.Spec : Prop :=
  ∀ n, P170798830490863340.a n = A017478 n

theorem P170798830490863340.correct : P170798830490863340.Spec := by
  intro n
  simp only [A017478, Nat.add_sub_cancel, A017478.P170798830490863340.a, A017478.P142916397065320014.a, A017475, A017475.P4508267272127270353.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017478

/-! ## A017478.P9358643664138885710

`(A017473(n)^3)²`
-/

namespace A017478.P9358643664138885710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017473 n ^ 3) ^ 2

end

end A017478.P9358643664138885710

namespace A017478

/-- `(A017473(n)^3)²` -/
def P9358643664138885710.Spec : Prop :=
  ∀ n, P9358643664138885710.a n = A017478 n

theorem P9358643664138885710.correct : P9358643664138885710.Spec := by
  intro n
  simp only [A017478, Nat.add_sub_cancel, A017478.P9358643664138885710.a, A017478.P142916397065320014.a, A017473, A017473.P6794540674081733570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017478

/-! ## A017478.P14522907068734028028

`sqrt(A017476(n)^3)`
-/

namespace A017478.P14522907068734028028
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017476 n ^ 3 : ℝ)

end

end A017478.P14522907068734028028

namespace A017478

/-- `sqrt(A017476(n)^3)` -/
def P14522907068734028028.Spec : Prop :=
  ∀ n, P14522907068734028028.a n = (A017478 n : ℝ)

end A017478

/-! ## A017478.P12346915269173812158

`A017473(n)*A017477(n)`
-/

namespace A017478.P12346915269173812158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n * A017477 n

end

end A017478.P12346915269173812158

namespace A017478

/-- `A017473(n)*A017477(n)` -/
def P12346915269173812158.Spec : Prop :=
  ∀ n, P12346915269173812158.a n = A017478 n

theorem P12346915269173812158.correct : P12346915269173812158.Spec := by
  intro n
  simp only [A017478, Nat.add_sub_cancel, A017478.P12346915269173812158.a, A017478.P142916397065320014.a, A017473, A017473.P6794540674081733570.a, A017477, A017477.P1835275560251232623.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017478

/-! ## A017478.P16111334992077187844

`A017474(n)*A017476(n)`
-/

namespace A017478.P16111334992077187844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017474 n * A017476 n

end

end A017478.P16111334992077187844

namespace A017478

/-- `A017474(n)*A017476(n)` -/
def P16111334992077187844.Spec : Prop :=
  ∀ n, P16111334992077187844.a n = A017478 n

theorem P16111334992077187844.correct : P16111334992077187844.Spec := by
  intro n
  simp only [A017478, Nat.add_sub_cancel, A017478.P16111334992077187844.a, A017478.P142916397065320014.a, A017474, A017474.P13447193533429871447.a, A017476, A017476.P11769284304425161020.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017478

/-! ## A017478.P11752916474895112202

`A017479(n)/A017473(n)`
-/

namespace A017478.P11752916474895112202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017479 n : ℚ) / (A017473 n : ℚ)

end

end A017478.P11752916474895112202

namespace A017478

/-- `A017479(n)/A017473(n)` -/
def P11752916474895112202.Spec : Prop :=
  ∀ n, P11752916474895112202.a n = (A017478 n : ℚ)

end A017478

/-! ## A017478.P12036023185127535936

`A017480(n)/A017474(n)`
-/

namespace A017478.P12036023185127535936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017480 n : ℚ) / (A017474 n : ℚ)

end

end A017478.P12036023185127535936

namespace A017478

/-- `A017480(n)/A017474(n)` -/
def P12036023185127535936.Spec : Prop :=
  ∀ n, P12036023185127535936.a n = (A017478 n : ℚ)

end A017478

/-! ## A017478.P17089195735206667865

`A017481(n)/A017475(n)`
-/

namespace A017478.P17089195735206667865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017481 n : ℚ) / (A017475 n : ℚ)

end

end A017478.P17089195735206667865

namespace A017478

/-- `A017481(n)/A017475(n)` -/
def P17089195735206667865.Spec : Prop :=
  ∀ n, P17089195735206667865.a n = (A017478 n : ℚ)

end A017478

/-! ## A017478.P1080050825889215411

`(A017473(n)*A017474(n))²`
-/

namespace A017478.P1080050825889215411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017473 n * A017474 n) ^ 2

end

end A017478.P1080050825889215411

namespace A017478

/-- `(A017473(n)*A017474(n))²` -/
def P1080050825889215411.Spec : Prop :=
  ∀ n, P1080050825889215411.a n = A017478 n

theorem P1080050825889215411.correct : P1080050825889215411.Spec := by
  intro n
  simp only [A017478, Nat.add_sub_cancel, A017478.P1080050825889215411.a, A017478.P142916397065320014.a, A017473, A017473.P6794540674081733570.a, A017474, A017474.P13447193533429871447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017478

/-! ## A017478.P15864060668695712969

`A017473(n)²*A017476(n)`
-/

namespace A017478.P15864060668695712969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n ^ 2 * A017476 n

end

end A017478.P15864060668695712969

namespace A017478

/-- `A017473(n)²*A017476(n)` -/
def P15864060668695712969.Spec : Prop :=
  ∀ n, P15864060668695712969.a n = A017478 n

theorem P15864060668695712969.correct : P15864060668695712969.Spec := by
  intro n
  simp only [A017478, Nat.add_sub_cancel, A017478.P15864060668695712969.a, A017478.P142916397065320014.a, A017473, A017473.P6794540674081733570.a, A017476, A017476.P11769284304425161020.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017478

/-! ## A017478.P1359696664743805874

`(A017477(n)/A017474(n))²`
-/

namespace A017478.P1359696664743805874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017477 n : ℚ) / (A017474 n : ℚ)) ^ 2

end

end A017478.P1359696664743805874

namespace A017478

/-- `(A017477(n)/A017474(n))²` -/
def P1359696664743805874.Spec : Prop :=
  ∀ n, P1359696664743805874.a n = (A017478 n : ℚ)

end A017478

/-! ## A017478.P12419025651923105584

`A017477(n)²/A017476(n)`
-/

namespace A017478.P12419025651923105584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017477 n ^ 2 : ℚ) / (A017476 n : ℚ)

end

end A017478.P12419025651923105584

namespace A017478

/-- `A017477(n)²/A017476(n)` -/
def P12419025651923105584.Spec : Prop :=
  ∀ n, P12419025651923105584.a n = (A017478 n : ℚ)

end A017478

/-! ## A017478.P15086612890909805809

`(A017479(n)/A017476(n))²`
-/

namespace A017478.P15086612890909805809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017479 n : ℚ) / (A017476 n : ℚ)) ^ 2

end

end A017478.P15086612890909805809

namespace A017478

/-- `(A017479(n)/A017476(n))²` -/
def P15086612890909805809.Spec : Prop :=
  ∀ n, P15086612890909805809.a n = (A017478 n : ℚ)

end A017478

/-! ## A017478.P5337941181352880828

`A017480(n)/A017473(n)²`
-/

namespace A017478.P5337941181352880828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017480 n : ℚ) / (A017473 n ^ 2 : ℚ)

end

end A017478.P5337941181352880828

namespace A017478

/-- `A017480(n)/A017473(n)²` -/
def P5337941181352880828.Spec : Prop :=
  ∀ n, P5337941181352880828.a n = (A017478 n : ℚ)

end A017478

/-! ## A017478.P13180518022599147779

`(A017480(n)/A017477(n))²`
-/

namespace A017478.P13180518022599147779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017480 n : ℚ) / (A017477 n : ℚ)) ^ 2

end

end A017478.P13180518022599147779

namespace A017478

/-- `(A017480(n)/A017477(n))²` -/
def P13180518022599147779.Spec : Prop :=
  ∀ n, P13180518022599147779.a n = (A017478 n : ℚ)

end A017478

/-!
# A017479: a(n) = (11*n + 7)^7.

The programs for A017479, the canonical program `A017479.P12328853989003666682` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017479 has offset 0).

The definition of A017479 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+7)^7` (program `A017479.P12328853989003666682`, by `A017479.P12328853989003666682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017479.P12328853989003666682

`(11*n+7)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017479

/-- `(11*n+7)^7` -/
def P12328853989003666682.Spec : Prop :=
  ∀ n, (P12328853989003666682.a n : ℤ) = A017479 n

theorem P12328853989003666682.correct : P12328853989003666682.Spec := by
  intro n
  simp only [A017479]

end A017479

/-! ## A017479.P17736415199884961313

`A017473(n)*A017478(n)`
-/

namespace A017479.P17736415199884961313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n * A017478 n

end

end A017479.P17736415199884961313

namespace A017479

/-- `A017473(n)*A017478(n)` -/
def P17736415199884961313.Spec : Prop :=
  ∀ n, P17736415199884961313.a n = A017479 n

theorem P17736415199884961313.correct : P17736415199884961313.Spec := by
  intro n
  simp only [A017479, Nat.add_sub_cancel, A017479.P17736415199884961313.a, A017479.P12328853989003666682.a, A017473, A017473.P6794540674081733570.a, A017478, A017478.P142916397065320014.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017479

/-! ## A017479.P4190258098443173990

`A017474(n)*A017477(n)`
-/

namespace A017479.P4190258098443173990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017474 n * A017477 n

end

end A017479.P4190258098443173990

namespace A017479

/-- `A017474(n)*A017477(n)` -/
def P4190258098443173990.Spec : Prop :=
  ∀ n, P4190258098443173990.a n = A017479 n

theorem P4190258098443173990.correct : P4190258098443173990.Spec := by
  intro n
  simp only [A017479, Nat.add_sub_cancel, A017479.P4190258098443173990.a, A017479.P12328853989003666682.a, A017474, A017474.P13447193533429871447.a, A017477, A017477.P1835275560251232623.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017479

/-! ## A017479.P4679109343915543912

`A017475(n)*A017476(n)`
-/

namespace A017479.P4679109343915543912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017475 n * A017476 n

end

end A017479.P4679109343915543912

namespace A017479

/-- `A017475(n)*A017476(n)` -/
def P4679109343915543912.Spec : Prop :=
  ∀ n, P4679109343915543912.a n = A017479 n

theorem P4679109343915543912.correct : P4679109343915543912.Spec := by
  intro n
  simp only [A017479, Nat.add_sub_cancel, A017479.P4679109343915543912.a, A017479.P12328853989003666682.a, A017475, A017475.P4508267272127270353.a, A017476, A017476.P11769284304425161020.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017479

/-! ## A017479.P6534910727204475791

`A017480(n)/A017473(n)`
-/

namespace A017479.P6534910727204475791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017480 n : ℚ) / (A017473 n : ℚ)

end

end A017479.P6534910727204475791

namespace A017479

/-- `A017480(n)/A017473(n)` -/
def P6534910727204475791.Spec : Prop :=
  ∀ n, P6534910727204475791.a n = (A017479 n : ℚ)

end A017479

/-! ## A017479.P500126539914255830

`A017481(n)/A017474(n)`
-/

namespace A017479.P500126539914255830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017481 n : ℚ) / (A017474 n : ℚ)

end

end A017479.P500126539914255830

namespace A017479

/-- `A017481(n)/A017474(n)` -/
def P500126539914255830.Spec : Prop :=
  ∀ n, P500126539914255830.a n = (A017479 n : ℚ)

end A017479

/-! ## A017479.P5998066815658438753

`A017473(n)²*A017477(n)`
-/

namespace A017479.P5998066815658438753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n ^ 2 * A017477 n

end

end A017479.P5998066815658438753

namespace A017479

/-- `A017473(n)²*A017477(n)` -/
def P5998066815658438753.Spec : Prop :=
  ∀ n, P5998066815658438753.a n = A017479 n

theorem P5998066815658438753.correct : P5998066815658438753.Spec := by
  intro n
  simp only [A017479, Nat.add_sub_cancel, A017479.P5998066815658438753.a, A017479.P12328853989003666682.a, A017473, A017473.P6794540674081733570.a, A017477, A017477.P1835275560251232623.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017479

/-! ## A017479.P18275685938736680702

`A017474(n)²*A017475(n)`
-/

namespace A017479.P18275685938736680702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017474 n ^ 2 * A017475 n

end

end A017479.P18275685938736680702

namespace A017479

/-- `A017474(n)²*A017475(n)` -/
def P18275685938736680702.Spec : Prop :=
  ∀ n, P18275685938736680702.a n = A017479 n

theorem P18275685938736680702.correct : P18275685938736680702.Spec := by
  intro n
  simp only [A017479, Nat.add_sub_cancel, A017479.P18275685938736680702.a, A017479.P12328853989003666682.a, A017474, A017474.P13447193533429871447.a, A017475, A017475.P4508267272127270353.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017479

/-! ## A017479.P4110628915301386195

`A017475(n)²*A017473(n)`
-/

namespace A017479.P4110628915301386195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017475 n ^ 2 * A017473 n

end

end A017479.P4110628915301386195

namespace A017479

/-- `A017475(n)²*A017473(n)` -/
def P4110628915301386195.Spec : Prop :=
  ∀ n, P4110628915301386195.a n = A017479 n

theorem P4110628915301386195.correct : P4110628915301386195.Spec := by
  intro n
  simp only [A017479, Nat.add_sub_cancel, A017479.P4110628915301386195.a, A017479.P12328853989003666682.a, A017473, A017473.P6794540674081733570.a, A017475, A017475.P4508267272127270353.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017479

/-! ## A017479.P17564578612776177990

`A017476(n)²/A017473(n)`
-/

namespace A017479.P17564578612776177990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017476 n ^ 2 : ℚ) / (A017473 n : ℚ)

end

end A017479.P17564578612776177990

namespace A017479

/-- `A017476(n)²/A017473(n)` -/
def P17564578612776177990.Spec : Prop :=
  ∀ n, P17564578612776177990.a n = (A017479 n : ℚ)

end A017479

/-! ## A017479.P765327846387930424

`A017477(n)²/A017475(n)`
-/

namespace A017479.P765327846387930424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017477 n ^ 2 : ℚ) / (A017475 n : ℚ)

end

end A017479.P765327846387930424

namespace A017479

/-- `A017477(n)²/A017475(n)` -/
def P765327846387930424.Spec : Prop :=
  ∀ n, P765327846387930424.a n = (A017479 n : ℚ)

end A017479

/-! ## A017479.P14210286813805366345

`A017478(n)²/A017477(n)`
-/

namespace A017479.P14210286813805366345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017478 n ^ 2 : ℚ) / (A017477 n : ℚ)

end

end A017479.P14210286813805366345

namespace A017479

/-- `A017478(n)²/A017477(n)` -/
def P14210286813805366345.Spec : Prop :=
  ∀ n, P14210286813805366345.a n = (A017479 n : ℚ)

end A017479

/-! ## A017479.P8687994265069998262

`sqrt(A017478(n))*A017476(n)`
-/

namespace A017479.P8687994265069998262
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017478 n : ℝ) * (A017476 n : ℝ)

end

end A017479.P8687994265069998262

namespace A017479

/-- `sqrt(A017478(n))*A017476(n)` -/
def P8687994265069998262.Spec : Prop :=
  ∀ n, P8687994265069998262.a n = (A017479 n : ℝ)

end A017479

/-! ## A017479.P11176773030478264909

`A017481(n)/A017473(n)²`
-/

namespace A017479.P11176773030478264909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017481 n : ℚ) / (A017473 n ^ 2 : ℚ)

end

end A017479.P11176773030478264909

namespace A017479

/-- `A017481(n)/A017473(n)²` -/
def P11176773030478264909.Spec : Prop :=
  ∀ n, P11176773030478264909.a n = (A017479 n : ℚ)

end A017479

/-! ## A017479.P2324345246648282192

`A017474(n)²²/A017473(n)`
-/

namespace A017479.P2324345246648282192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017474 n ^ 2) ^ 2 : ℚ) / (A017473 n : ℚ)

end

end A017479.P2324345246648282192

namespace A017479

/-- `A017474(n)²²/A017473(n)` -/
def P2324345246648282192.Spec : Prop :=
  ∀ n, P2324345246648282192.a n = (A017479 n : ℚ)

end A017479

/-!
# A017480: a(n) = (11*n + 7)^8.

The programs for A017480, the canonical program `A017480.P2184313680733810563` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017480 has offset 0).

The definition of A017480 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+7)^8` (program `A017480.P2184313680733810563`, by `A017480.P2184313680733810563.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017480.P2184313680733810563

`(11*n+7)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017480

/-- `(11*n+7)^8` -/
def P2184313680733810563.Spec : Prop :=
  ∀ n, (P2184313680733810563.a n : ℤ) = A017480 n

theorem P2184313680733810563.correct : P2184313680733810563.Spec := by
  intro n
  simp only [A017480]

end A017480

/-! ## A017480.P123427851768021382

`A017476(n)²`
-/

namespace A017480.P123427851768021382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017476 n ^ 2

end

end A017480.P123427851768021382

namespace A017480

/-- `A017476(n)²` -/
def P123427851768021382.Spec : Prop :=
  ∀ n, P123427851768021382.a n = A017480 n

theorem P123427851768021382.correct : P123427851768021382.Spec := by
  intro n
  simp only [A017480, Nat.add_sub_cancel, A017480.P123427851768021382.a, A017480.P2184313680733810563.a, A017476, A017476.P11769284304425161020.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017480

/-! ## A017480.P4867874334791851619

`A017474(n)²²`
-/

namespace A017480.P4867874334791851619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017474 n ^ 2) ^ 2

end

end A017480.P4867874334791851619

namespace A017480

/-- `A017474(n)²²` -/
def P4867874334791851619.Spec : Prop :=
  ∀ n, P4867874334791851619.a n = A017480 n

theorem P4867874334791851619.correct : P4867874334791851619.Spec := by
  intro n
  simp only [A017480, Nat.add_sub_cancel, A017480.P4867874334791851619.a, A017480.P2184313680733810563.a, A017474, A017474.P13447193533429871447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017480

/-! ## A017480.P7053266023336684480

`A017473(n)²²²`
-/

namespace A017480.P7053266023336684480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017473 n ^ 2) ^ 2) ^ 2

end

end A017480.P7053266023336684480

namespace A017480

/-- `A017473(n)²²²` -/
def P7053266023336684480.Spec : Prop :=
  ∀ n, P7053266023336684480.a n = A017480 n

theorem P7053266023336684480.correct : P7053266023336684480.Spec := by
  intro n
  simp only [A017480, Nat.add_sub_cancel, A017480.P7053266023336684480.a, A017480.P2184313680733810563.a, A017473, A017473.P6794540674081733570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017480

/-! ## A017480.P17421995391831835738

`(A017461(n)+1)²²²`
-/

namespace A017480.P17421995391831835738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017461 n + 1) ^ 2) ^ 2) ^ 2

end

end A017480.P17421995391831835738

namespace A017480

/-- `(A017461(n)+1)²²²` -/
def P17421995391831835738.Spec : Prop :=
  ∀ n, P17421995391831835738.a n = A017480 n

theorem P17421995391831835738.correct : P17421995391831835738.Spec := by
  intro n
  simp only [A017480, Nat.add_sub_cancel, A017480.P17421995391831835738.a, A017480.P2184313680733810563.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017480

/-! ## A017480.P3092004042545084270

`(A017449(n)+2)²²²`
-/

namespace A017480.P3092004042545084270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017449 n + 2) ^ 2) ^ 2) ^ 2

end

end A017480.P3092004042545084270

namespace A017480

/-- `(A017449(n)+2)²²²` -/
def P3092004042545084270.Spec : Prop :=
  ∀ n, P3092004042545084270.a n = A017480 n

theorem P3092004042545084270.correct : P3092004042545084270.Spec := by
  intro n
  simp only [A017480, Nat.add_sub_cancel, A017480.P3092004042545084270.a, A017480.P2184313680733810563.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017480

/-! ## A017480.P10505956957896639092

`(1-A017485(n))²²²`
-/

namespace A017480.P10505956957896639092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017485 n) ^ 2) ^ 2) ^ 2

end

end A017480.P10505956957896639092

namespace A017480

/-- `(1-A017485(n))²²²` -/
def P10505956957896639092.Spec : Prop :=
  ∀ n, P10505956957896639092.a n = A017480 n

theorem P10505956957896639092.correct : P10505956957896639092.Spec := by
  intro n
  simp only [A017480, Nat.add_sub_cancel, A017480.P10505956957896639092.a, A017480.P2184313680733810563.a, A017485, A017485.P4370091181196038588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017480

/-! ## A017480.P18173850244582306210

`(2-A017497(n))²²²`
-/

namespace A017480.P18173850244582306210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017497 n) ^ 2) ^ 2) ^ 2

end

end A017480.P18173850244582306210

namespace A017480

/-- `(2-A017497(n))²²²` -/
def P18173850244582306210.Spec : Prop :=
  ∀ n, P18173850244582306210.a n = A017480 n

theorem P18173850244582306210.correct : P18173850244582306210.Spec := by
  intro n
  simp only [A017480, Nat.add_sub_cancel, A017480.P18173850244582306210.a, A017480.P2184313680733810563.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017480

/-! ## A017480.P14535182516390913254

`(A017353(n)+n)²²²`
-/

namespace A017480.P14535182516390913254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017353 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017480.P14535182516390913254

namespace A017480

/-- `(A017353(n)+n)²²²` -/
def P14535182516390913254.Spec : Prop :=
  ∀ n, P14535182516390913254.a n = A017480 n

theorem P14535182516390913254.correct : P14535182516390913254.Spec := by
  intro n
  simp only [A017480, Nat.add_sub_cancel, A017480.P14535182516390913254.a, A017480.P2184313680733810563.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017480

/-! ## A017480.P7224207932305786592

`(n-A017605(n))²²²`
-/

namespace A017480.P7224207932305786592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017605 n) ^ 2) ^ 2) ^ 2

end

end A017480.P7224207932305786592

namespace A017480

/-- `(n-A017605(n))²²²` -/
def P7224207932305786592.Spec : Prop :=
  ∀ n, P7224207932305786592.a n = A017480 n

theorem P7224207932305786592.correct : P7224207932305786592.Spec := by
  intro n
  simp only [A017480, Nat.add_sub_cancel, A017480.P7224207932305786592.a, A017480.P2184313680733810563.a, A017605, A017605.P12903970419572684084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017480

/-! ## A017480.P1734968707450713093

`A017473(n)*A017479(n)`
-/

namespace A017480.P1734968707450713093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n * A017479 n

end

end A017480.P1734968707450713093

namespace A017480

/-- `A017473(n)*A017479(n)` -/
def P1734968707450713093.Spec : Prop :=
  ∀ n, P1734968707450713093.a n = A017480 n

theorem P1734968707450713093.correct : P1734968707450713093.Spec := by
  intro n
  simp only [A017480, Nat.add_sub_cancel, A017480.P1734968707450713093.a, A017480.P2184313680733810563.a, A017473, A017473.P6794540674081733570.a, A017479, A017479.P12328853989003666682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017480

/-! ## A017480.P1358350972542782802

`A017474(n)*A017478(n)`
-/

namespace A017480.P1358350972542782802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017474 n * A017478 n

end

end A017480.P1358350972542782802

namespace A017480

/-- `A017474(n)*A017478(n)` -/
def P1358350972542782802.Spec : Prop :=
  ∀ n, P1358350972542782802.a n = A017480 n

theorem P1358350972542782802.correct : P1358350972542782802.Spec := by
  intro n
  simp only [A017480, Nat.add_sub_cancel, A017480.P1358350972542782802.a, A017480.P2184313680733810563.a, A017474, A017474.P13447193533429871447.a, A017478, A017478.P142916397065320014.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017480

/-! ## A017480.P3581701159115650975

`A017475(n)*A017477(n)`
-/

namespace A017480.P3581701159115650975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017475 n * A017477 n

end

end A017480.P3581701159115650975

namespace A017480

/-- `A017475(n)*A017477(n)` -/
def P3581701159115650975.Spec : Prop :=
  ∀ n, P3581701159115650975.a n = A017480 n

theorem P3581701159115650975.correct : P3581701159115650975.Spec := by
  intro n
  simp only [A017480, Nat.add_sub_cancel, A017480.P3581701159115650975.a, A017480.P2184313680733810563.a, A017475, A017475.P4508267272127270353.a, A017477, A017477.P1835275560251232623.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017480

/-! ## A017480.P10586127938720754966

`A017481(n)/A017473(n)`
-/

namespace A017480.P10586127938720754966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017481 n : ℚ) / (A017473 n : ℚ)

end

end A017480.P10586127938720754966

namespace A017480

/-- `A017481(n)/A017473(n)` -/
def P10586127938720754966.Spec : Prop :=
  ∀ n, P10586127938720754966.a n = (A017480 n : ℚ)

end A017480

/-! ## A017480.P2025193161306870234

`sqrt(A017476(n))*A017478(n)`
-/

namespace A017480.P2025193161306870234
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017476 n : ℝ) * (A017478 n : ℝ)

end

end A017480.P2025193161306870234

namespace A017480

/-- `sqrt(A017476(n))*A017478(n)` -/
def P2025193161306870234.Spec : Prop :=
  ∀ n, P2025193161306870234.a n = (A017480 n : ℝ)

end A017480

/-! ## A017480.P13994398779433030815

`(A017479(n)/A017475(n))²`
-/

namespace A017480.P13994398779433030815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017479 n : ℚ) / (A017475 n : ℚ)) ^ 2

end

end A017480.P13994398779433030815

namespace A017480

/-- `(A017479(n)/A017475(n))²` -/
def P13994398779433030815.Spec : Prop :=
  ∀ n, P13994398779433030815.a n = (A017480 n : ℚ)

end A017480

/-! ## A017480.P1684633993235645045

`A017479(n)²/A017478(n)`
-/

namespace A017480.P1684633993235645045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017479 n ^ 2 : ℚ) / (A017478 n : ℚ)

end

end A017480.P1684633993235645045

namespace A017480

/-- `A017479(n)²/A017478(n)` -/
def P1684633993235645045.Spec : Prop :=
  ∀ n, P1684633993235645045.a n = (A017480 n : ℚ)

end A017480

/-!
# A017481: a(n) = (11*n + 7)^9.

The programs for A017481, the canonical program `A017481.P16668573898337662973` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017481 has offset 0).

The definition of A017481 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+7)^9` (program `A017481.P16668573898337662973`, by `A017481.P16668573898337662973.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017481.P16668573898337662973

`(11*n+7)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017481

/-- `(11*n+7)^9` -/
def P16668573898337662973.Spec : Prop :=
  ∀ n, (P16668573898337662973.a n : ℤ) = A017481 n

theorem P16668573898337662973.correct : P16668573898337662973.Spec := by
  intro n
  simp only [A017481]

end A017481

/-! ## A017481.P13946651766547425251

`sqrt(A017478(n)^3)`
-/

namespace A017481.P13946651766547425251
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017478 n ^ 3 : ℝ)

end

end A017481.P13946651766547425251

namespace A017481

/-- `sqrt(A017478(n)^3)` -/
def P13946651766547425251.Spec : Prop :=
  ∀ n, P13946651766547425251.a n = (A017481 n : ℝ)

end A017481

/-! ## A017481.P17634739222664381336

`A017473(n)*A017480(n)`
-/

namespace A017481.P17634739222664381336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n * A017480 n

end

end A017481.P17634739222664381336

namespace A017481

/-- `A017473(n)*A017480(n)` -/
def P17634739222664381336.Spec : Prop :=
  ∀ n, P17634739222664381336.a n = A017481 n

theorem P17634739222664381336.correct : P17634739222664381336.Spec := by
  intro n
  simp only [A017481, Nat.add_sub_cancel, A017481.P17634739222664381336.a, A017481.P16668573898337662973.a, A017473, A017473.P6794540674081733570.a, A017480, A017480.P2184313680733810563.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017481

/-! ## A017481.P8314940517612814694

`A017474(n)*A017479(n)`
-/

namespace A017481.P8314940517612814694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017474 n * A017479 n

end

end A017481.P8314940517612814694

namespace A017481

/-- `A017474(n)*A017479(n)` -/
def P8314940517612814694.Spec : Prop :=
  ∀ n, P8314940517612814694.a n = A017481 n

theorem P8314940517612814694.correct : P8314940517612814694.Spec := by
  intro n
  simp only [A017481, Nat.add_sub_cancel, A017481.P8314940517612814694.a, A017481.P16668573898337662973.a, A017474, A017474.P13447193533429871447.a, A017479, A017479.P12328853989003666682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017481

/-! ## A017481.P16633429847168687615

`A017475(n)*A017478(n)`
-/

namespace A017481.P16633429847168687615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017475 n * A017478 n

end

end A017481.P16633429847168687615

namespace A017481

/-- `A017475(n)*A017478(n)` -/
def P16633429847168687615.Spec : Prop :=
  ∀ n, P16633429847168687615.a n = A017481 n

theorem P16633429847168687615.correct : P16633429847168687615.Spec := by
  intro n
  simp only [A017481, Nat.add_sub_cancel, A017481.P16633429847168687615.a, A017481.P16668573898337662973.a, A017475, A017475.P4508267272127270353.a, A017478, A017478.P142916397065320014.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017481

/-! ## A017481.P5350696457182478784

`A017476(n)*A017477(n)`
-/

namespace A017481.P5350696457182478784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017476 n * A017477 n

end

end A017481.P5350696457182478784

namespace A017481

/-- `A017476(n)*A017477(n)` -/
def P5350696457182478784.Spec : Prop :=
  ∀ n, P5350696457182478784.a n = A017481 n

theorem P5350696457182478784.correct : P5350696457182478784.Spec := by
  intro n
  simp only [A017481, Nat.add_sub_cancel, A017481.P5350696457182478784.a, A017481.P16668573898337662973.a, A017476, A017476.P11769284304425161020.a, A017477, A017477.P1835275560251232623.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017481

/-! ## A017481.P12328055043420207502

`A017473(n)²*A017479(n)`
-/

namespace A017481.P12328055043420207502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n ^ 2 * A017479 n

end

end A017481.P12328055043420207502

namespace A017481

/-- `A017473(n)²*A017479(n)` -/
def P12328055043420207502.Spec : Prop :=
  ∀ n, P12328055043420207502.a n = A017481 n

theorem P12328055043420207502.correct : P12328055043420207502.Spec := by
  intro n
  simp only [A017481, Nat.add_sub_cancel, A017481.P12328055043420207502.a, A017481.P16668573898337662973.a, A017473, A017473.P6794540674081733570.a, A017479, A017479.P12328853989003666682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017481

/-! ## A017481.P6197383844706079630

`A017474(n)²*A017477(n)`
-/

namespace A017481.P6197383844706079630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017474 n ^ 2 * A017477 n

end

end A017481.P6197383844706079630

namespace A017481

/-- `A017474(n)²*A017477(n)` -/
def P6197383844706079630.Spec : Prop :=
  ∀ n, P6197383844706079630.a n = A017481 n

theorem P6197383844706079630.correct : P6197383844706079630.Spec := by
  intro n
  simp only [A017481, Nat.add_sub_cancel, A017481.P6197383844706079630.a, A017481.P16668573898337662973.a, A017474, A017474.P13447193533429871447.a, A017477, A017477.P1835275560251232623.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017481

/-! ## A017481.P4694897984779058843

`A017476(n)²*A017473(n)`
-/

namespace A017481.P4694897984779058843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017476 n ^ 2 * A017473 n

end

end A017481.P4694897984779058843

namespace A017481

/-- `A017476(n)²*A017473(n)` -/
def P4694897984779058843.Spec : Prop :=
  ∀ n, P4694897984779058843.a n = A017481 n

theorem P4694897984779058843.correct : P4694897984779058843.Spec := by
  intro n
  simp only [A017481, Nat.add_sub_cancel, A017481.P4694897984779058843.a, A017481.P16668573898337662973.a, A017473, A017473.P6794540674081733570.a, A017476, A017476.P11769284304425161020.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017481

/-! ## A017481.P6606810013136078619

`A017477(n)²/A017473(n)`
-/

namespace A017481.P6606810013136078619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017477 n ^ 2 : ℚ) / (A017473 n : ℚ)

end

end A017481.P6606810013136078619

namespace A017481

/-- `A017477(n)²/A017473(n)` -/
def P6606810013136078619.Spec : Prop :=
  ∀ n, P6606810013136078619.a n = (A017481 n : ℚ)

end A017481

/-! ## A017481.P2495968620865755776

`A017479(n)²/A017477(n)`
-/

namespace A017481.P2495968620865755776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017479 n ^ 2 : ℚ) / (A017477 n : ℚ)

end

end A017481.P2495968620865755776

namespace A017481

/-- `A017479(n)²/A017477(n)` -/
def P2495968620865755776.Spec : Prop :=
  ∀ n, P2495968620865755776.a n = (A017481 n : ℚ)

end A017481

/-! ## A017481.P2294337815421204164

`A017474(n)²²*A017473(n)`
-/

namespace A017481.P2294337815421204164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017474 n ^ 2) ^ 2 * A017473 n

end

end A017481.P2294337815421204164

namespace A017481

/-- `A017474(n)²²*A017473(n)` -/
def P2294337815421204164.Spec : Prop :=
  ∀ n, P2294337815421204164.a n = A017481 n

theorem P2294337815421204164.correct : P2294337815421204164.Spec := by
  intro n
  simp only [A017481, Nat.add_sub_cancel, A017481.P2294337815421204164.a, A017481.P16668573898337662973.a, A017473, A017473.P6794540674081733570.a, A017474, A017474.P13447193533429871447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017481

/-! ## A017481.P16882266743177478602

`A017476(n)²²/A017479(n)`
-/

namespace A017481.P16882266743177478602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017476 n ^ 2) ^ 2 : ℚ) / (A017479 n : ℚ)

end

end A017481.P16882266743177478602

namespace A017481

/-- `A017476(n)²²/A017479(n)` -/
def P16882266743177478602.Spec : Prop :=
  ∀ n, P16882266743177478602.a n = (A017481 n : ℚ)

end A017481

/-! ## A017481.P12730988135632009640

`A017473(n)*A017474(n)*A017478(n)`
-/

namespace A017481.P12730988135632009640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n * A017474 n * A017478 n

end

end A017481.P12730988135632009640

namespace A017481

/-- `A017473(n)*A017474(n)*A017478(n)` -/
def P12730988135632009640.Spec : Prop :=
  ∀ n, P12730988135632009640.a n = A017481 n

theorem P12730988135632009640.correct : P12730988135632009640.Spec := by
  intro n
  simp only [A017481, Nat.add_sub_cancel, A017481.P12730988135632009640.a, A017481.P16668573898337662973.a, A017473, A017473.P6794540674081733570.a, A017474, A017474.P13447193533429871447.a, A017478, A017478.P142916397065320014.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017481

/-! ## A017481.P245198234642688834

`A001017(A017473(n))`
-/

namespace A017481.P245198234642688834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017473 n).toNat

end

end A017481.P245198234642688834

namespace A017481

/-- `A001017(A017473(n))` -/
def P245198234642688834.Spec : Prop :=
  ∀ n, P245198234642688834.a n = A017481 n

end A017481

/-! ## A017481.P13677257665590784821

`A001017(A017497(n)-2)`
-/

namespace A017481.P13677257665590784821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017497 n - 2).toNat

end

end A017481.P13677257665590784821

namespace A017481

/-- `A001017(A017497(n)-2)` -/
def P13677257665590784821.Spec : Prop :=
  ∀ n, P13677257665590784821.a n = A017481 n

end A017481

/-!
# A017482: 

The programs for A017482, there is no canonical definition to state claims against.
-/

/-! ## A017482.P614574293969690174

`(11*n+7)^10`
-/

namespace A017482.P614574293969690174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 7) ^ 10

end

end A017482.P614574293969690174

/-! ## A017482.P17267622541214389595

`A017477(n)²`
-/

namespace A017482.P17267622541214389595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017477 n ^ 2

end

end A017482.P17267622541214389595

/-! ## A017482.P7439701176796761528

`A017473(n)*A017481(n)`
-/

namespace A017482.P7439701176796761528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n * A017481 n

end

end A017482.P7439701176796761528

/-! ## A017482.P4835304916321975413

`A017474(n)*A017480(n)`
-/

namespace A017482.P4835304916321975413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017474 n * A017480 n

end

end A017482.P4835304916321975413

/-! ## A017482.P10907020420641827320

`A017475(n)*A017479(n)`
-/

namespace A017482.P10907020420641827320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017475 n * A017479 n

end

end A017482.P10907020420641827320

/-! ## A017482.P16274223993727179413

`A017476(n)*A017478(n)`
-/

namespace A017482.P16274223993727179413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017476 n * A017478 n

end

end A017482.P16274223993727179413

/-! ## A017482.P15304191400399191555

`(A017473(n)*A017476(n))²`
-/

namespace A017482.P15304191400399191555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017473 n * A017476 n) ^ 2

end

end A017482.P15304191400399191555

/-! ## A017482.P14289877698306657940

`A017473(n)²*A017480(n)`
-/

namespace A017482.P14289877698306657940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n ^ 2 * A017480 n

end

end A017482.P14289877698306657940

/-! ## A017482.P14143752876796817188

`(A017474(n)*A017475(n))²`
-/

namespace A017482.P14143752876796817188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017474 n * A017475 n) ^ 2

end

end A017482.P14143752876796817188

/-! ## A017482.P10227410160400414223

`A017474(n)²*A017478(n)`
-/

namespace A017482.P10227410160400414223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017474 n ^ 2 * A017478 n

end

end A017482.P10227410160400414223

/-! ## A017482.P17657789953175180625

`A017475(n)²*A017476(n)`
-/

namespace A017482.P17657789953175180625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017475 n ^ 2 * A017476 n

end

end A017482.P17657789953175180625

/-! ## A017482.P1087358234764344335

`A017476(n)²*A017474(n)`
-/

namespace A017482.P1087358234764344335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017476 n ^ 2 * A017474 n

end

end A017482.P1087358234764344335

/-! ## A017482.P2309892279465394825

`(A017478(n)/A017473(n))²`
-/

namespace A017482.P2309892279465394825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017478 n : ℚ) / (A017473 n : ℚ)) ^ 2

end

end A017482.P2309892279465394825

/-! ## A017482.P7525138355461907763

`(A017479(n)/A017474(n))²`
-/

namespace A017482.P7525138355461907763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017479 n : ℚ) / (A017474 n : ℚ)) ^ 2

end

end A017482.P7525138355461907763

/-! ## A017482.P7165202503896685038

`A017479(n)²/A017476(n)`
-/

namespace A017482.P7165202503896685038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017479 n ^ 2 : ℚ) / (A017476 n : ℚ)

end

end A017482.P7165202503896685038

/-!
# A017483: 

The programs for A017483, there is no canonical definition to state claims against.
-/

/-! ## A017483.P12503272828368567968

`(11*n+7)^11`
-/

namespace A017483.P12503272828368567968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 7) ^ 11

end

end A017483.P12503272828368567968

/-! ## A017483.P6521793211819828377

`A017474(n)*A017481(n)`
-/

namespace A017483.P6521793211819828377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017474 n * A017481 n

end

end A017483.P6521793211819828377

/-! ## A017483.P1328499442623520589

`A017475(n)*A017480(n)`
-/

namespace A017483.P1328499442623520589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017475 n * A017480 n

end

end A017483.P1328499442623520589

/-! ## A017483.P14009997265117113022

`A017476(n)*A017479(n)`
-/

namespace A017483.P14009997265117113022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017476 n * A017479 n

end

end A017483.P14009997265117113022

/-! ## A017483.P15125873991423756845

`A017477(n)*A017478(n)`
-/

namespace A017483.P15125873991423756845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017477 n * A017478 n

end

end A017483.P15125873991423756845

/-! ## A017483.P31307847987331134

`A017473(n)²*A017481(n)`
-/

namespace A017483.P31307847987331134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n ^ 2 * A017481 n

end

end A017483.P31307847987331134

/-! ## A017483.P5680524667681425295

`A017474(n)²*A017479(n)`
-/

namespace A017483.P5680524667681425295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017474 n ^ 2 * A017479 n

end

end A017483.P5680524667681425295

/-! ## A017483.P15491353761157950499

`A017475(n)²*A017477(n)`
-/

namespace A017483.P15491353761157950499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017475 n ^ 2 * A017477 n

end

end A017483.P15491353761157950499

/-! ## A017483.P15682672824488436948

`A017476(n)²*A017475(n)`
-/

namespace A017483.P15682672824488436948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017476 n ^ 2 * A017475 n

end

end A017483.P15682672824488436948

/-! ## A017483.P13468158104477097026

`A017477(n)²*A017473(n)`
-/

namespace A017483.P13468158104477097026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017477 n ^ 2 * A017473 n

end

end A017483.P13468158104477097026

/-! ## A017483.P6670319540246803125

`A017478(n)²/A017473(n)`
-/

namespace A017483.P6670319540246803125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017478 n ^ 2 : ℚ) / (A017473 n : ℚ)

end

end A017483.P6670319540246803125

/-! ## A017483.P17504244252979367313

`A017479(n)²/A017475(n)`
-/

namespace A017483.P17504244252979367313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017479 n ^ 2 : ℚ) / (A017475 n : ℚ)

end

end A017483.P17504244252979367313

/-! ## A017483.P7677857915839422796

`A017480(n)²/A017477(n)`
-/

namespace A017483.P7677857915839422796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017480 n ^ 2 : ℚ) / (A017477 n : ℚ)

end

end A017483.P7677857915839422796

/-! ## A017483.P17242328893507666209

`A017473(n)²²*A017479(n)`
-/

namespace A017483.P17242328893507666209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017473 n ^ 2) ^ 2 * A017479 n

end

end A017483.P17242328893507666209

/-! ## A017483.P12214232693042178070

`A017474(n)²²*A017475(n)`
-/

namespace A017483.P12214232693042178070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017474 n ^ 2) ^ 2 * A017475 n

end

end A017483.P12214232693042178070

/-! ## A017483.P15322030311442198126

`A017475(n)²²/A017473(n)`
-/

namespace A017483.P15322030311442198126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017475 n ^ 2) ^ 2 : ℚ) / (A017473 n : ℚ)

end

end A017483.P15322030311442198126

/-!
# A017484: 

The programs for A017484, there is no canonical definition to state claims against.
-/

/-! ## A017484.P13782954593403751981

`(11*n+7)^12`
-/

namespace A017484.P13782954593403751981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 7) ^ 12

end

end A017484.P13782954593403751981

/-! ## A017484.P1316732386977803062

`A017478(n)²`
-/

namespace A017484.P1316732386977803062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017478 n ^ 2

end

end A017484.P1316732386977803062

/-! ## A017484.P17696676589913843815

`A017475(n)*A017481(n)`
-/

namespace A017484.P17696676589913843815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017475 n * A017481 n

end

end A017484.P17696676589913843815

/-! ## A017484.P16624288315517560524

`A017476(n)*A017480(n)`
-/

namespace A017484.P16624288315517560524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017476 n * A017480 n

end

end A017484.P16624288315517560524

/-! ## A017484.P11819128942386646482

`A017477(n)*A017479(n)`
-/

namespace A017484.P11819128942386646482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017477 n * A017479 n

end

end A017484.P11819128942386646482

/-! ## A017484.P3809381525721090845

`(A017473(n)*A017477(n))²`
-/

namespace A017484.P3809381525721090845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017473 n * A017477 n) ^ 2

end

end A017484.P3809381525721090845

/-! ## A017484.P5711990275950226874

`(A017474(n)*A017476(n))²`
-/

namespace A017484.P5711990275950226874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017474 n * A017476 n) ^ 2

end

end A017484.P5711990275950226874

/-! ## A017484.P2132231826288049295

`A017474(n)²*A017480(n)`
-/

namespace A017484.P2132231826288049295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017474 n ^ 2 * A017480 n

end

end A017484.P2132231826288049295

/-! ## A017484.P8874140309792274395

`A017477(n)²*A017474(n)`
-/

namespace A017484.P8874140309792274395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017477 n ^ 2 * A017474 n

end

end A017484.P8874140309792274395

/-! ## A017484.P13785981357816621893

`(A017479(n)/A017473(n))²`
-/

namespace A017484.P13785981357816621893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017479 n : ℚ) / (A017473 n : ℚ)) ^ 2

end

end A017484.P13785981357816621893

/-! ## A017484.P2513016820490936255

`A017479(n)²/A017474(n)`
-/

namespace A017484.P2513016820490936255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017479 n ^ 2 : ℚ) / (A017474 n : ℚ)

end

end A017484.P2513016820490936255

/-!
# A017485: a(n) = 11*n + 8.

The programs for A017485, the canonical program `A017485.P4370091181196038588` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017485 has offset 0).

The definition of A017485 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*n+8` (program `A017485.P4370091181196038588`, by `A017485.P4370091181196038588.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017485.P4370091181196038588

`11*n+8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017485

/-- `11*n+8` -/
def P4370091181196038588.Spec : Prop :=
  ∀ n, (P4370091181196038588.a n : ℤ) = A017485 n

theorem P4370091181196038588.correct : P4370091181196038588.Spec := by
  intro n
  simp only [A017485]

end A017485

/-!
# A017486: a(n) = (11*n + 8)^2.

The programs for A017486, the canonical program `A017486.P7200803324460769638` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017486 has offset 0).

The definition of A017486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+8)²` (program `A017486.P7200803324460769638`, by `A017486.P7200803324460769638.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017486.P7200803324460769638

`(11*n+8)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017486

/-- `(11*n+8)²` -/
def P7200803324460769638.Spec : Prop :=
  ∀ n, (P7200803324460769638.a n : ℤ) = A017486 n

theorem P7200803324460769638.correct : P7200803324460769638.Spec := by
  intro n
  simp only [A017486]

end A017486

/-! ## A017486.P14218872370235652541

`sqrt(A017488(n))`
-/

namespace A017486.P14218872370235652541
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017488 n : ℝ)

end

end A017486.P14218872370235652541

namespace A017486

/-- `sqrt(A017488(n))` -/
def P14218872370235652541.Spec : Prop :=
  ∀ n, P14218872370235652541.a n = (A017486 n : ℝ)

end A017486

/-! ## A017486.P16324093507015308539

`A017485(n)^2`
-/

namespace A017486.P16324093507015308539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n ^ 2

end

end A017486.P16324093507015308539

namespace A017486

/-- `A017485(n)^2` -/
def P16324093507015308539.Spec : Prop :=
  ∀ n, P16324093507015308539.a n = A017486 n

theorem P16324093507015308539.correct : P16324093507015308539.Spec := by
  intro n
  simp only [A017486, Nat.add_sub_cancel, A017486.P16324093507015308539.a, A017486.P7200803324460769638.a, A017485, A017485.P4370091181196038588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017486

/-! ## A017486.P3366553256375095475

`sqrt(sqrt(A017492(n)))`
-/

namespace A017486.P3366553256375095475
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017492 n : ℝ))

end

end A017486.P3366553256375095475

namespace A017486

/-- `sqrt(sqrt(A017492(n)))` -/
def P3366553256375095475.Spec : Prop :=
  ∀ n, P3366553256375095475.a n = (A017486 n : ℝ)

end A017486

/-! ## A017486.P17697788896978650875

`A017490(n)^(1/3)`
-/

namespace A017486.P17697788896978650875
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017490 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017486.P17697788896978650875

namespace A017486

/-- `A017490(n)^(1/3)` -/
def P17697788896978650875.Spec : Prop :=
  ∀ n, P17697788896978650875.a n = (A017486 n : ℝ)

end A017486

/-! ## A017486.P12023979685590891544

`A017487(n)^(2/3)`
-/

namespace A017486.P12023979685590891544
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017487 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017486.P12023979685590891544

namespace A017486

/-- `A017487(n)^(2/3)` -/
def P12023979685590891544.Spec : Prop :=
  ∀ n, P12023979685590891544.a n = (A017486 n : ℝ)

end A017486

/-! ## A017486.P6183482457218727776

`A017487(n)/A017485(n)`
-/

namespace A017486.P6183482457218727776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017487 n : ℚ) / (A017485 n : ℚ)

end

end A017486.P6183482457218727776

namespace A017486

/-- `A017487(n)/A017485(n)` -/
def P6183482457218727776.Spec : Prop :=
  ∀ n, P6183482457218727776.a n = (A017486 n : ℚ)

end A017486

/-! ## A017486.P11441956364038046269

`A017489(n)/A017487(n)`
-/

namespace A017486.P11441956364038046269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017489 n : ℚ) / (A017487 n : ℚ)

end

end A017486.P11441956364038046269

namespace A017486

/-- `A017489(n)/A017487(n)` -/
def P11441956364038046269.Spec : Prop :=
  ∀ n, P11441956364038046269.a n = (A017486 n : ℚ)

end A017486

/-! ## A017486.P18109493542568095401

`A017490(n)/A017488(n)`
-/

namespace A017486.P18109493542568095401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017490 n : ℚ) / (A017488 n : ℚ)

end

end A017486.P18109493542568095401

namespace A017486

/-- `A017490(n)/A017488(n)` -/
def P18109493542568095401.Spec : Prop :=
  ∀ n, P18109493542568095401.a n = (A017486 n : ℚ)

end A017486

/-! ## A017486.P6233324855842156973

`A017491(n)/A017489(n)`
-/

namespace A017486.P6233324855842156973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017491 n : ℚ) / (A017489 n : ℚ)

end

end A017486.P6233324855842156973

namespace A017486

/-- `A017491(n)/A017489(n)` -/
def P6233324855842156973.Spec : Prop :=
  ∀ n, P6233324855842156973.a n = (A017486 n : ℚ)

end A017486

/-! ## A017486.P5892799323143545024

`A017492(n)/A017490(n)`
-/

namespace A017486.P5892799323143545024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017492 n : ℚ) / (A017490 n : ℚ)

end

end A017486.P5892799323143545024

namespace A017486

/-- `A017492(n)/A017490(n)` -/
def P5892799323143545024.Spec : Prop :=
  ∀ n, P5892799323143545024.a n = (A017486 n : ℚ)

end A017486

/-! ## A017486.P997303294036992356

`A017493(n)/A017491(n)`
-/

namespace A017486.P997303294036992356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017493 n : ℚ) / (A017491 n : ℚ)

end

end A017486.P997303294036992356

namespace A017486

/-- `A017493(n)/A017491(n)` -/
def P997303294036992356.Spec : Prop :=
  ∀ n, P997303294036992356.a n = (A017486 n : ℚ)

end A017486

/-! ## A017486.P10655312482095451098

`A017487(n)²/A017488(n)`
-/

namespace A017486.P10655312482095451098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017487 n ^ 2 : ℚ) / (A017488 n : ℚ)

end

end A017486.P10655312482095451098

namespace A017486

/-- `A017487(n)²/A017488(n)` -/
def P10655312482095451098.Spec : Prop :=
  ∀ n, P10655312482095451098.a n = (A017486 n : ℚ)

end A017486

/-! ## A017486.P16204114471572793431

`A017492(n)/A017487(n)²`
-/

namespace A017486.P16204114471572793431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017492 n : ℚ) / (A017487 n ^ 2 : ℚ)

end

end A017486.P16204114471572793431

namespace A017486

/-- `A017492(n)/A017487(n)²` -/
def P16204114471572793431.Spec : Prop :=
  ∀ n, P16204114471572793431.a n = (A017486 n : ℚ)

end A017486

/-! ## A017486.P13558130091990817007

`A017490(n)/A017485(n)²²`
-/

namespace A017486.P13558130091990817007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017490 n : ℚ) / ((A017485 n ^ 2) ^ 2 : ℚ)

end

end A017486.P13558130091990817007

namespace A017486

/-- `A017490(n)/A017485(n)²²` -/
def P13558130091990817007.Spec : Prop :=
  ∀ n, P13558130091990817007.a n = (A017486 n : ℚ)

end A017486

/-! ## A017486.P8273088301539509149

`round(sqrt((A016969(n)+A016873(n)+1)²²+2))`
-/

namespace A017486.P8273088301539509149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((A016969 n + A016873 n + 1) ^ 2) ^ 2 + 2 : ℝ))

end

end A017486.P8273088301539509149

namespace A017486

/-- `round(sqrt((A016969(n)+A016873(n)+1)²²+2))` -/
def P8273088301539509149.Spec : Prop :=
  ∀ n, P8273088301539509149.a n = A017486 n

end A017486

/-! ## A017486.P15220252257873260078

`A017485(n)*A017489(n)/A017488(n)`
-/

namespace A017486.P15220252257873260078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017485 n * A017489 n : ℚ) / (A017488 n : ℚ)

end

end A017486.P15220252257873260078

namespace A017486

/-- `A017485(n)*A017489(n)/A017488(n)` -/
def P15220252257873260078.Spec : Prop :=
  ∀ n, P15220252257873260078.a n = (A017486 n : ℚ)

end A017486

/-! ## A017486.P16042357121343650745

`A017485(n)/A017489(n)*A017490(n)`
-/

namespace A017486.P16042357121343650745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017485 n : ℚ) / (A017489 n : ℚ) * (A017490 n : ℚ)

end

end A017486.P16042357121343650745

namespace A017486

/-- `A017485(n)/A017489(n)*A017490(n)` -/
def P16042357121343650745.Spec : Prop :=
  ∀ n, P16042357121343650745.a n = (A017486 n : ℚ)

end A017486

/-! ## A017486.P11307393410694127603

`A017485(n)/A017490(n)*A017491(n)`
-/

namespace A017486.P11307393410694127603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017485 n : ℚ) / (A017490 n : ℚ) * (A017491 n : ℚ)

end

end A017486.P11307393410694127603

namespace A017486

/-- `A017485(n)/A017490(n)*A017491(n)` -/
def P11307393410694127603.Spec : Prop :=
  ∀ n, P11307393410694127603.a n = (A017486 n : ℚ)

end A017486

/-! ## A017486.P15465586061128437044

`A017485(n)/A017491(n)*A017492(n)`
-/

namespace A017486.P15465586061128437044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017485 n : ℚ) / (A017491 n : ℚ) * (A017492 n : ℚ)

end

end A017486.P15465586061128437044

namespace A017486

/-- `A017485(n)/A017491(n)*A017492(n)` -/
def P15465586061128437044.Spec : Prop :=
  ∀ n, P15465586061128437044.a n = (A017486 n : ℚ)

end A017486

/-!
# A017487: a(n) = (11*n + 8)^3.

The programs for A017487, the canonical program `A017487.P4684112795124535931` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017487 has offset 0).

The definition of A017487 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+8)^3` (program `A017487.P4684112795124535931`, by `A017487.P4684112795124535931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017487.P4684112795124535931

`(11*n+8)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017487

/-- `(11*n+8)^3` -/
def P4684112795124535931.Spec : Prop :=
  ∀ n, (P4684112795124535931.a n : ℤ) = A017487 n

theorem P4684112795124535931.correct : P4684112795124535931.Spec := by
  intro n
  simp only [A017487]

end A017487

/-! ## A017487.P4128945673767298408

`sqrt(A017490(n))`
-/

namespace A017487.P4128945673767298408
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017490 n : ℝ)

end

end A017487.P4128945673767298408

namespace A017487

/-- `sqrt(A017490(n))` -/
def P4128945673767298408.Spec : Prop :=
  ∀ n, P4128945673767298408.a n = (A017487 n : ℝ)

end A017487

/-! ## A017487.P210828576966793563

`sqrt(A017486(n)^3)`
-/

namespace A017487.P210828576966793563
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017486 n ^ 3 : ℝ)

end

end A017487.P210828576966793563

namespace A017487

/-- `sqrt(A017486(n)^3)` -/
def P210828576966793563.Spec : Prop :=
  ∀ n, P210828576966793563.a n = (A017487 n : ℝ)

end A017487

/-! ## A017487.P3123354720832172668

`A017488(n)/(11*n+8)`
-/

namespace A017487.P3123354720832172668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017488 n : ℚ) / (11 * n + 8 : ℚ)

end

end A017487.P3123354720832172668

namespace A017487

/-- `A017488(n)/(11*n+8)` -/
def P3123354720832172668.Spec : Prop :=
  ∀ n, P3123354720832172668.a n = (A017487 n : ℚ)

end A017487

/-! ## A017487.P17210633211198839605

`A017485(n)*A017486(n)`
-/

namespace A017487.P17210633211198839605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n * A017486 n

end

end A017487.P17210633211198839605

namespace A017487

/-- `A017485(n)*A017486(n)` -/
def P17210633211198839605.Spec : Prop :=
  ∀ n, P17210633211198839605.a n = A017487 n

theorem P17210633211198839605.correct : P17210633211198839605.Spec := by
  intro n
  simp only [A017487, Nat.add_sub_cancel, A017487.P17210633211198839605.a, A017487.P4684112795124535931.a, A017485, A017485.P4370091181196038588.a, A017486, A017486.P7200803324460769638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017487

/-! ## A017487.P11435163788038061443

`A017489(n)/A017486(n)`
-/

namespace A017487.P11435163788038061443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017489 n : ℚ) / (A017486 n : ℚ)

end

end A017487.P11435163788038061443

namespace A017487

/-- `A017489(n)/A017486(n)` -/
def P11435163788038061443.Spec : Prop :=
  ∀ n, P11435163788038061443.a n = (A017487 n : ℚ)

end A017487

/-! ## A017487.P3116668018744619743

`A017491(n)/A017488(n)`
-/

namespace A017487.P3116668018744619743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017491 n : ℚ) / (A017488 n : ℚ)

end

end A017487.P3116668018744619743

namespace A017487

/-- `A017491(n)/A017488(n)` -/
def P3116668018744619743.Spec : Prop :=
  ∀ n, P3116668018744619743.a n = (A017487 n : ℚ)

end A017487

/-! ## A017487.P3993565964928253145

`A017492(n)/A017489(n)`
-/

namespace A017487.P3993565964928253145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017492 n : ℚ) / (A017489 n : ℚ)

end

end A017487.P3993565964928253145

namespace A017487

/-- `A017492(n)/A017489(n)` -/
def P3993565964928253145.Spec : Prop :=
  ∀ n, P3993565964928253145.a n = (A017487 n : ℚ)

end A017487

/-! ## A017487.P15325556490426033630

`A017493(n)/A017490(n)`
-/

namespace A017487.P15325556490426033630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017493 n : ℚ) / (A017490 n : ℚ)

end

end A017487.P15325556490426033630

namespace A017487

/-- `A017493(n)/A017490(n)` -/
def P15325556490426033630.Spec : Prop :=
  ∀ n, P15325556490426033630.a n = (A017487 n : ℚ)

end A017487

/-! ## A017487.P3768624294841166306

`A017488(n)²/A017489(n)`
-/

namespace A017487.P3768624294841166306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017488 n ^ 2 : ℚ) / (A017489 n : ℚ)

end

end A017487.P3768624294841166306

namespace A017487

/-- `A017488(n)²/A017489(n)` -/
def P3768624294841166306.Spec : Prop :=
  ∀ n, P3768624294841166306.a n = (A017487 n : ℚ)

end A017487

/-! ## A017487.P16073693598286667046

`A017489(n)/A017485(n)²`
-/

namespace A017487.P16073693598286667046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017489 n : ℚ) / (A017485 n ^ 2 : ℚ)

end

end A017487.P16073693598286667046

namespace A017487

/-- `A017489(n)/A017485(n)²` -/
def P16073693598286667046.Spec : Prop :=
  ∀ n, P16073693598286667046.a n = (A017487 n : ℚ)

end A017487

/-! ## A017487.P13759337926843305122

`A017491(n)/A017486(n)²`
-/

namespace A017487.P13759337926843305122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017491 n : ℚ) / (A017486 n ^ 2 : ℚ)

end

end A017487.P13759337926843305122

namespace A017487

/-- `A017491(n)/A017486(n)²` -/
def P13759337926843305122.Spec : Prop :=
  ∀ n, P13759337926843305122.a n = (A017487 n : ℚ)

end A017487

/-! ## A017487.P711875051920740728

`(A017473(n)+1)*A017486(n)`
-/

namespace A017487.P711875051920740728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017473 n + 1) * A017486 n

end

end A017487.P711875051920740728

namespace A017487

/-- `(A017473(n)+1)*A017486(n)` -/
def P711875051920740728.Spec : Prop :=
  ∀ n, P711875051920740728.a n = A017487 n

theorem P711875051920740728.correct : P711875051920740728.Spec := by
  intro n
  simp only [A017487, Nat.add_sub_cancel, A017487.P711875051920740728.a, A017487.P4684112795124535931.a, A017473, A017473.P6794540674081733570.a, A017486, A017486.P7200803324460769638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017487

/-! ## A017487.P1682930230588777929

`(A017497(n)-1)*A017486(n)`
-/

namespace A017487.P1682930230588777929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017497 n - 1) * A017486 n

end

end A017487.P1682930230588777929

namespace A017487

/-- `(A017497(n)-1)*A017486(n)` -/
def P1682930230588777929.Spec : Prop :=
  ∀ n, P1682930230588777929.a n = A017487 n

theorem P1682930230588777929.correct : P1682930230588777929.Spec := by
  intro n
  simp only [A017487, Nat.add_sub_cancel, A017487.P1682930230588777929.a, A017487.P4684112795124535931.a, A017486, A017486.P7200803324460769638.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017487

/-! ## A017487.P17380486575747173179

`A017491(n)/A017485(n)²²`
-/

namespace A017487.P17380486575747173179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017491 n : ℚ) / ((A017485 n ^ 2) ^ 2 : ℚ)

end

end A017487.P17380486575747173179

namespace A017487

/-- `A017491(n)/A017485(n)²²` -/
def P17380486575747173179.Spec : Prop :=
  ∀ n, P17380486575747173179.a n = (A017487 n : ℚ)

end A017487

/-! ## A017487.P566850166872701043

`(1-A017497(n))²*A017485(n)`
-/

namespace A017487.P566850166872701043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A017497 n) ^ 2 * A017485 n

end

end A017487.P566850166872701043

namespace A017487

/-- `(1-A017497(n))²*A017485(n)` -/
def P566850166872701043.Spec : Prop :=
  ∀ n, P566850166872701043.a n = A017487 n

theorem P566850166872701043.correct : P566850166872701043.Spec := by
  intro n
  simp only [A017487, Nat.add_sub_cancel, A017487.P566850166872701043.a, A017487.P4684112795124535931.a, A017485, A017485.P4370091181196038588.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017487

/-! ## A017487.P10300090960610527905

`A017485(n)/A017488(n)*A017490(n)`
-/

namespace A017487.P10300090960610527905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017485 n : ℚ) / (A017488 n : ℚ) * (A017490 n : ℚ)

end

end A017487.P10300090960610527905

namespace A017487

/-- `A017485(n)/A017488(n)*A017490(n)` -/
def P10300090960610527905.Spec : Prop :=
  ∀ n, P10300090960610527905.a n = (A017487 n : ℚ)

end A017487

/-! ## A017487.P325061380302380807

`A017485(n)/A017489(n)*A017491(n)`
-/

namespace A017487.P325061380302380807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017485 n : ℚ) / (A017489 n : ℚ) * (A017491 n : ℚ)

end

end A017487.P325061380302380807

namespace A017487

/-- `A017485(n)/A017489(n)*A017491(n)` -/
def P325061380302380807.Spec : Prop :=
  ∀ n, P325061380302380807.a n = (A017487 n : ℚ)

end A017487

/-! ## A017487.P399677849241471708

`A017486(n)/A017490(n)*A017491(n)`
-/

namespace A017487.P399677849241471708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017486 n : ℚ) / (A017490 n : ℚ) * (A017491 n : ℚ)

end

end A017487.P399677849241471708

namespace A017487

/-- `A017486(n)/A017490(n)*A017491(n)` -/
def P399677849241471708.Spec : Prop :=
  ∀ n, P399677849241471708.a n = (A017487 n : ℚ)

end A017487

/-!
# A017488: a(n) = (11*n + 8)^4.

The programs for A017488, the canonical program `A017488.P17123188788182934376` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017488 has offset 0).

The definition of A017488 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+8)^4` (program `A017488.P17123188788182934376`, by `A017488.P17123188788182934376.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017488.P17123188788182934376

`(11*n+8)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017488

/-- `(11*n+8)^4` -/
def P17123188788182934376.Spec : Prop :=
  ∀ n, (P17123188788182934376.a n : ℤ) = A017488 n

theorem P17123188788182934376.correct : P17123188788182934376.Spec := by
  intro n
  simp only [A017488]

end A017488

/-! ## A017488.P7908654079895311540

`A017486(n)²`
-/

namespace A017488.P7908654079895311540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017486 n ^ 2

end

end A017488.P7908654079895311540

namespace A017488

/-- `A017486(n)²` -/
def P7908654079895311540.Spec : Prop :=
  ∀ n, P7908654079895311540.a n = A017488 n

theorem P7908654079895311540.correct : P7908654079895311540.Spec := by
  intro n
  simp only [A017488, Nat.add_sub_cancel, A017488.P7908654079895311540.a, A017488.P17123188788182934376.a, A017486, A017486.P7200803324460769638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017488

/-! ## A017488.P1711976975408603614

`sqrt(A017492(n))`
-/

namespace A017488.P1711976975408603614
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017492 n : ℝ)

end

end A017488.P1711976975408603614

namespace A017488

/-- `sqrt(A017492(n))` -/
def P1711976975408603614.Spec : Prop :=
  ∀ n, P1711976975408603614.a n = (A017488 n : ℝ)

end A017488

/-! ## A017488.P8231245146347180053

`A017485(n)²²`
-/

namespace A017488.P8231245146347180053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017485 n ^ 2) ^ 2

end

end A017488.P8231245146347180053

namespace A017488

/-- `A017485(n)²²` -/
def P8231245146347180053.Spec : Prop :=
  ∀ n, P8231245146347180053.a n = A017488 n

theorem P8231245146347180053.correct : P8231245146347180053.Spec := by
  intro n
  simp only [A017488, Nat.add_sub_cancel, A017488.P8231245146347180053.a, A017488.P17123188788182934376.a, A017485, A017485.P4370091181196038588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017488

/-! ## A017488.P2840540785201402025

`(A017473(n)+1)²²`
-/

namespace A017488.P2840540785201402025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017473 n + 1) ^ 2) ^ 2

end

end A017488.P2840540785201402025

namespace A017488

/-- `(A017473(n)+1)²²` -/
def P2840540785201402025.Spec : Prop :=
  ∀ n, P2840540785201402025.a n = A017488 n

theorem P2840540785201402025.correct : P2840540785201402025.Spec := by
  intro n
  simp only [A017488, Nat.add_sub_cancel, A017488.P2840540785201402025.a, A017488.P17123188788182934376.a, A017473, A017473.P6794540674081733570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017488

/-! ## A017488.P13952076253630905843

`(A017461(n)+2)²²`
-/

namespace A017488.P13952076253630905843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017461 n + 2) ^ 2) ^ 2

end

end A017488.P13952076253630905843

namespace A017488

/-- `(A017461(n)+2)²²` -/
def P13952076253630905843.Spec : Prop :=
  ∀ n, P13952076253630905843.a n = A017488 n

theorem P13952076253630905843.correct : P13952076253630905843.Spec := by
  intro n
  simp only [A017488, Nat.add_sub_cancel, A017488.P13952076253630905843.a, A017488.P17123188788182934376.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017488

/-! ## A017488.P742311813148308601

`(1-A017497(n))²²`
-/

namespace A017488.P742311813148308601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017497 n) ^ 2) ^ 2

end

end A017488.P742311813148308601

namespace A017488

/-- `(1-A017497(n))²²` -/
def P742311813148308601.Spec : Prop :=
  ∀ n, P742311813148308601.a n = A017488 n

theorem P742311813148308601.correct : P742311813148308601.Spec := by
  intro n
  simp only [A017488, Nat.add_sub_cancel, A017488.P742311813148308601.a, A017488.P17123188788182934376.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017488

/-! ## A017488.P46153477472486564

`(A017449(n)+3)²²`
-/

namespace A017488.P46153477472486564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017449 n + 3) ^ 2) ^ 2

end

end A017488.P46153477472486564

namespace A017488

/-- `(A017449(n)+3)²²` -/
def P46153477472486564.Spec : Prop :=
  ∀ n, P46153477472486564.a n = A017488 n

theorem P46153477472486564.correct : P46153477472486564.Spec := by
  intro n
  simp only [A017488, Nat.add_sub_cancel, A017488.P46153477472486564.a, A017488.P17123188788182934376.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017488

/-! ## A017488.P17949640908534557563

`(2-A017509(n))²²`
-/

namespace A017488.P17949640908534557563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017509 n) ^ 2) ^ 2

end

end A017488.P17949640908534557563

namespace A017488

/-- `(2-A017509(n))²²` -/
def P17949640908534557563.Spec : Prop :=
  ∀ n, P17949640908534557563.a n = A017488 n

theorem P17949640908534557563.correct : P17949640908534557563.Spec := by
  intro n
  simp only [A017488, Nat.add_sub_cancel, A017488.P17949640908534557563.a, A017488.P17123188788182934376.a, A017509, A017509.P7373483985674399481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017488

/-! ## A017488.P9195044062047785463

`(A017365(n)+n)²²`
-/

namespace A017488.P9195044062047785463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017365 n + (n : ℤ)) ^ 2) ^ 2

end

end A017488.P9195044062047785463

namespace A017488

/-- `(A017365(n)+n)²²` -/
def P9195044062047785463.Spec : Prop :=
  ∀ n, P9195044062047785463.a n = A017488 n

theorem P9195044062047785463.correct : P9195044062047785463.Spec := by
  intro n
  simp only [A017488, Nat.add_sub_cancel, A017488.P9195044062047785463.a, A017488.P17123188788182934376.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017488

/-! ## A017488.P4851954239257593474

`(n-A017617(n))²²`
-/

namespace A017488.P4851954239257593474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017617 n) ^ 2) ^ 2

end

end A017488.P4851954239257593474

namespace A017488

/-- `(n-A017617(n))²²` -/
def P4851954239257593474.Spec : Prop :=
  ∀ n, P4851954239257593474.a n = A017488 n

theorem P4851954239257593474.correct : P4851954239257593474.Spec := by
  intro n
  simp only [A017488, Nat.add_sub_cancel, A017488.P4851954239257593474.a, A017488.P17123188788182934376.a, A017617, A017617.P15573883131522867575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017488

/-! ## A017488.P11366996678623595676

`(sqrt(A017474(n))+1)²²`
-/

namespace A017488.P11366996678623595676
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017474 n : ℝ) + 1) ^ 2) ^ 2

end

end A017488.P11366996678623595676

namespace A017488

/-- `(sqrt(A017474(n))+1)²²` -/
def P11366996678623595676.Spec : Prop :=
  ∀ n, P11366996678623595676.a n = (A017488 n : ℝ)

end A017488

/-! ## A017488.P9396574804681976316

`(sqrt(A017462(n))+2)²²`
-/

namespace A017488.P9396574804681976316
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017462 n : ℝ) + 2) ^ 2) ^ 2

end

end A017488.P9396574804681976316

namespace A017488

/-- `(sqrt(A017462(n))+2)²²` -/
def P9396574804681976316.Spec : Prop :=
  ∀ n, P9396574804681976316.a n = (A017488 n : ℝ)

end A017488

/-! ## A017488.P7581628181974508379

`(1-sqrt(A017498(n)))²²`
-/

namespace A017488.P7581628181974508379
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017498 n : ℝ)) ^ 2) ^ 2

end

end A017488.P7581628181974508379

namespace A017488

/-- `(1-sqrt(A017498(n)))²²` -/
def P7581628181974508379.Spec : Prop :=
  ∀ n, P7581628181974508379.a n = (A017488 n : ℝ)

end A017488

/-! ## A017488.P6003711300264317982

`(2-sqrt(A017510(n)))²²`
-/

namespace A017488.P6003711300264317982
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - Real.sqrt (A017510 n : ℝ)) ^ 2) ^ 2

end

end A017488.P6003711300264317982

namespace A017488

/-- `(2-sqrt(A017510(n)))²²` -/
def P6003711300264317982.Spec : Prop :=
  ∀ n, P6003711300264317982.a n = (A017488 n : ℝ)

end A017488

/-! ## A017488.P14445832629844132590

`(sqrt(A017366(n))+n)²²`
-/

namespace A017488.P14445832629844132590
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017366 n : ℝ) + (n : ℝ)) ^ 2) ^ 2

end

end A017488.P14445832629844132590

namespace A017488

/-- `(sqrt(A017366(n))+n)²²` -/
def P14445832629844132590.Spec : Prop :=
  ∀ n, P14445832629844132590.a n = (A017488 n : ℝ)

end A017488

/-! ## A017488.P9943649971999008575

`(n-sqrt(A017618(n)))²²`
-/

namespace A017488.P9943649971999008575
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) - Real.sqrt (A017618 n : ℝ)) ^ 2) ^ 2

end

end A017488.P9943649971999008575

namespace A017488

/-- `(n-sqrt(A017618(n)))²²` -/
def P9943649971999008575.Spec : Prop :=
  ∀ n, P9943649971999008575.a n = (A017488 n : ℝ)

end A017488

/-! ## A017488.P4480376240428019416

`(3-A008593(n+1))²²`
-/

namespace A017488.P4480376240428019416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A008593 (n + 1)) ^ 2) ^ 2

end

end A017488.P4480376240428019416

namespace A017488

/-- `(3-A008593(n+1))²²` -/
def P4480376240428019416.Spec : Prop :=
  ∀ n, P4480376240428019416.a n = A017488 n

theorem P4480376240428019416.correct : P4480376240428019416.Spec := by
  intro n
  simp only [A017488, Nat.add_sub_cancel, A017488.P4480376240428019416.a, A017488.P17123188788182934376.a, A008593, A008593.P2680892499938115192.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017488

/-! ## A017488.P10396567105401951063

`(A017353(n)+n+1)²²`
-/

namespace A017488.P10396567105401951063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017353 n + (n + 1 : ℤ)) ^ 2) ^ 2

end

end A017488.P10396567105401951063

namespace A017488

/-- `(A017353(n)+n+1)²²` -/
def P10396567105401951063.Spec : Prop :=
  ∀ n, P10396567105401951063.a n = A017488 n

theorem P10396567105401951063.correct : P10396567105401951063.Spec := by
  intro n
  simp only [A017488, Nat.add_sub_cancel, A017488.P10396567105401951063.a, A017488.P17123188788182934376.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017488

/-! ## A017488.P6105425323061690883

`(A017341(n)+n+2)²²`
-/

namespace A017488.P6105425323061690883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017341 n + (n + 2 : ℤ)) ^ 2) ^ 2

end

end A017488.P6105425323061690883

namespace A017488

/-- `(A017341(n)+n+2)²²` -/
def P6105425323061690883.Spec : Prop :=
  ∀ n, P6105425323061690883.a n = A017488 n

theorem P6105425323061690883.correct : P6105425323061690883.Spec := by
  intro n
  simp only [A017488, Nat.add_sub_cancel, A017488.P6105425323061690883.a, A017488.P17123188788182934376.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017488

/-!
# A017489: a(n) = (11*n + 8)^5.

The programs for A017489, the canonical program `A017489.P14342355751131469528` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017489 has offset 0).

The definition of A017489 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+8)^5` (program `A017489.P14342355751131469528`, by `A017489.P14342355751131469528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017489.P14342355751131469528

`(11*n+8)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017489

/-- `(11*n+8)^5` -/
def P14342355751131469528.Spec : Prop :=
  ∀ n, (P14342355751131469528.a n : ℤ) = A017489 n

theorem P14342355751131469528.correct : P14342355751131469528.Spec := by
  intro n
  simp only [A017489]

end A017489

/-! ## A017489.P9470216652000991880

`sqrt(A017486(n)^5)`
-/

namespace A017489.P9470216652000991880
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017486 n ^ 5 : ℝ)

end

end A017489.P9470216652000991880

namespace A017489

/-- `sqrt(A017486(n)^5)` -/
def P9470216652000991880.Spec : Prop :=
  ∀ n, P9470216652000991880.a n = (A017489 n : ℝ)

end A017489

/-! ## A017489.P8388969176012466412

`A017485(n)*A017488(n)`
-/

namespace A017489.P8388969176012466412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n * A017488 n

end

end A017489.P8388969176012466412

namespace A017489

/-- `A017485(n)*A017488(n)` -/
def P8388969176012466412.Spec : Prop :=
  ∀ n, P8388969176012466412.a n = A017489 n

theorem P8388969176012466412.correct : P8388969176012466412.Spec := by
  intro n
  simp only [A017489, Nat.add_sub_cancel, A017489.P8388969176012466412.a, A017489.P14342355751131469528.a, A017485, A017485.P4370091181196038588.a, A017488, A017488.P17123188788182934376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017489

/-! ## A017489.P2187174849137340470

`A017486(n)*A017487(n)`
-/

namespace A017489.P2187174849137340470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017486 n * A017487 n

end

end A017489.P2187174849137340470

namespace A017489

/-- `A017486(n)*A017487(n)` -/
def P2187174849137340470.Spec : Prop :=
  ∀ n, P2187174849137340470.a n = A017489 n

theorem P2187174849137340470.correct : P2187174849137340470.Spec := by
  intro n
  simp only [A017489, Nat.add_sub_cancel, A017489.P2187174849137340470.a, A017489.P14342355751131469528.a, A017486, A017486.P7200803324460769638.a, A017487, A017487.P4684112795124535931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017489

/-! ## A017489.P15813725212630172662

`A017490(n)/A017485(n)`
-/

namespace A017489.P15813725212630172662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017490 n : ℚ) / (A017485 n : ℚ)

end

end A017489.P15813725212630172662

namespace A017489

/-- `A017490(n)/A017485(n)` -/
def P15813725212630172662.Spec : Prop :=
  ∀ n, P15813725212630172662.a n = (A017489 n : ℚ)

end A017489

/-! ## A017489.P14243215687015877023

`A017491(n)/A017486(n)`
-/

namespace A017489.P14243215687015877023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017491 n : ℚ) / (A017486 n : ℚ)

end

end A017489.P14243215687015877023

namespace A017489

/-- `A017491(n)/A017486(n)` -/
def P14243215687015877023.Spec : Prop :=
  ∀ n, P14243215687015877023.a n = (A017489 n : ℚ)

end A017489

/-! ## A017489.P8812347956709001238

`A017492(n)/A017487(n)`
-/

namespace A017489.P8812347956709001238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017492 n : ℚ) / (A017487 n : ℚ)

end

end A017489.P8812347956709001238

namespace A017489

/-- `A017492(n)/A017487(n)` -/
def P8812347956709001238.Spec : Prop :=
  ∀ n, P8812347956709001238.a n = (A017489 n : ℚ)

end A017489

/-! ## A017489.P8198051829860555717

`A017493(n)/A017488(n)`
-/

namespace A017489.P8198051829860555717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017493 n : ℚ) / (A017488 n : ℚ)

end

end A017489.P8198051829860555717

namespace A017489

/-- `A017493(n)/A017488(n)` -/
def P8198051829860555717.Spec : Prop :=
  ∀ n, P8198051829860555717.a n = (A017489 n : ℚ)

end A017489

/-! ## A017489.P12482478803140825000

`A017485(n)²*A017487(n)`
-/

namespace A017489.P12482478803140825000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n ^ 2 * A017487 n

end

end A017489.P12482478803140825000

namespace A017489

/-- `A017485(n)²*A017487(n)` -/
def P12482478803140825000.Spec : Prop :=
  ∀ n, P12482478803140825000.a n = A017489 n

theorem P12482478803140825000.correct : P12482478803140825000.Spec := by
  intro n
  simp only [A017489, Nat.add_sub_cancel, A017489.P12482478803140825000.a, A017489.P14342355751131469528.a, A017485, A017485.P4370091181196038588.a, A017487, A017487.P4684112795124535931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017489

/-! ## A017489.P626505131018077756

`A017486(n)²*A017485(n)`
-/

namespace A017489.P626505131018077756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017486 n ^ 2 * A017485 n

end

end A017489.P626505131018077756

namespace A017489

/-- `A017486(n)²*A017485(n)` -/
def P626505131018077756.Spec : Prop :=
  ∀ n, P626505131018077756.a n = A017489 n

theorem P626505131018077756.correct : P626505131018077756.Spec := by
  intro n
  simp only [A017489, Nat.add_sub_cancel, A017489.P626505131018077756.a, A017489.P14342355751131469528.a, A017485, A017485.P4370091181196038588.a, A017486, A017486.P7200803324460769638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017489

/-! ## A017489.P15633160841336106398

`A017488(n)²/A017487(n)`
-/

namespace A017489.P15633160841336106398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017488 n ^ 2 : ℚ) / (A017487 n : ℚ)

end

end A017489.P15633160841336106398

namespace A017489

/-- `A017488(n)²/A017487(n)` -/
def P15633160841336106398.Spec : Prop :=
  ∀ n, P15633160841336106398.a n = (A017489 n : ℚ)

end A017489

/-! ## A017489.P9205250624039800934

`A017490(n)²/A017491(n)`
-/

namespace A017489.P9205250624039800934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017490 n ^ 2 : ℚ) / (A017491 n : ℚ)

end

end A017489.P9205250624039800934

namespace A017489

/-- `A017490(n)²/A017491(n)` -/
def P9205250624039800934.Spec : Prop :=
  ∀ n, P9205250624039800934.a n = (A017489 n : ℚ)

end A017489

/-! ## A017489.P6641332967440494346

`A017491(n)/A017485(n)²`
-/

namespace A017489.P6641332967440494346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017491 n : ℚ) / (A017485 n ^ 2 : ℚ)

end

end A017489.P6641332967440494346

namespace A017489

/-- `A017491(n)/A017485(n)²` -/
def P6641332967440494346.Spec : Prop :=
  ∀ n, P6641332967440494346.a n = (A017489 n : ℚ)

end A017489

/-! ## A017489.P17390925078813740878

`A017493(n)/A017486(n)²`
-/

namespace A017489.P17390925078813740878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017493 n : ℚ) / (A017486 n ^ 2 : ℚ)

end

end A017489.P17390925078813740878

namespace A017489

/-- `A017493(n)/A017486(n)²` -/
def P17390925078813740878.Spec : Prop :=
  ∀ n, P17390925078813740878.a n = (A017489 n : ℚ)

end A017489

/-! ## A017489.P14963668677077394357

`(A017473(n)+1)*A017486(n)²`
-/

namespace A017489.P14963668677077394357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017473 n + 1) * A017486 n ^ 2

end

end A017489.P14963668677077394357

namespace A017489

/-- `(A017473(n)+1)*A017486(n)²` -/
def P14963668677077394357.Spec : Prop :=
  ∀ n, P14963668677077394357.a n = A017489 n

theorem P14963668677077394357.correct : P14963668677077394357.Spec := by
  intro n
  simp only [A017489, Nat.add_sub_cancel, A017489.P14963668677077394357.a, A017489.P14342355751131469528.a, A017473, A017473.P6794540674081733570.a, A017486, A017486.P7200803324460769638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017489

/-! ## A017489.P8616426931568469709

`(A017497(n)-1)*A017486(n)²`
-/

namespace A017489.P8616426931568469709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017497 n - 1) * A017486 n ^ 2

end

end A017489.P8616426931568469709

namespace A017489

/-- `(A017497(n)-1)*A017486(n)²` -/
def P8616426931568469709.Spec : Prop :=
  ∀ n, P8616426931568469709.a n = A017489 n

theorem P8616426931568469709.correct : P8616426931568469709.Spec := by
  intro n
  simp only [A017489, Nat.add_sub_cancel, A017489.P8616426931568469709.a, A017489.P14342355751131469528.a, A017486, A017486.P7200803324460769638.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017489

/-! ## A017489.P7808574552846510185

`A017485(n)/A017487(n)*A017491(n)`
-/

namespace A017489.P7808574552846510185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017485 n : ℚ) / (A017487 n : ℚ) * (A017491 n : ℚ)

end

end A017489.P7808574552846510185

namespace A017489

/-- `A017485(n)/A017487(n)*A017491(n)` -/
def P7808574552846510185.Spec : Prop :=
  ∀ n, P7808574552846510185.a n = (A017489 n : ℚ)

end A017489

/-!
# A017490: a(n) = (11*n + 8)^6.

The programs for A017490, the canonical program `A017490.P4196226893979965126` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017490 has offset 0).

The definition of A017490 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+8)^6` (program `A017490.P4196226893979965126`, by `A017490.P4196226893979965126.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017490.P4196226893979965126

`(11*n+8)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017490

/-- `(11*n+8)^6` -/
def P4196226893979965126.Spec : Prop :=
  ∀ n, (P4196226893979965126.a n : ℤ) = A017490 n

theorem P4196226893979965126.correct : P4196226893979965126.Spec := by
  intro n
  simp only [A017490]

end A017490

/-! ## A017490.P3640349398563140914

`A001014(A017485(n))`
-/

namespace A017490.P3640349398563140914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A017485 n).toNat

end

end A017490.P3640349398563140914

namespace A017490

/-- `A001014(A017485(n))` -/
def P3640349398563140914.Spec : Prop :=
  ∀ n, P3640349398563140914.a n = A017490 n

end A017490

/-! ## A017490.P932315789662296271

`A017487(n)²`
-/

namespace A017490.P932315789662296271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017487 n ^ 2

end

end A017490.P932315789662296271

namespace A017490

/-- `A017487(n)²` -/
def P932315789662296271.Spec : Prop :=
  ∀ n, P932315789662296271.a n = A017490 n

theorem P932315789662296271.correct : P932315789662296271.Spec := by
  intro n
  simp only [A017490, Nat.add_sub_cancel, A017490.P932315789662296271.a, A017490.P4196226893979965126.a, A017487, A017487.P4684112795124535931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017490

/-! ## A017490.P5220020362629230096

`sqrt(A017488(n)^3)`
-/

namespace A017490.P5220020362629230096
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017488 n ^ 3 : ℝ)

end

end A017490.P5220020362629230096

namespace A017490

/-- `sqrt(A017488(n)^3)` -/
def P5220020362629230096.Spec : Prop :=
  ∀ n, P5220020362629230096.a n = (A017490 n : ℝ)

end A017490

/-! ## A017490.P7068733804629240196

`((A017509(n)-2)^3)²`
-/

namespace A017490.P7068733804629240196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017509 n - 2) ^ 3) ^ 2

end

end A017490.P7068733804629240196

namespace A017490

/-- `((A017509(n)-2)^3)²` -/
def P7068733804629240196.Spec : Prop :=
  ∀ n, P7068733804629240196.a n = A017490 n

theorem P7068733804629240196.correct : P7068733804629240196.Spec := by
  intro n
  simp only [A017490, Nat.add_sub_cancel, A017490.P7068733804629240196.a, A017490.P4196226893979965126.a, A017509, A017509.P7373483985674399481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017490

/-! ## A017490.P16944960415583388322

`(11*n+8)*A017489(n)`
-/

namespace A017490.P16944960415583388322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n + 8 : ℤ) * A017489 n

end

end A017490.P16944960415583388322

namespace A017490

/-- `(11*n+8)*A017489(n)` -/
def P16944960415583388322.Spec : Prop :=
  ∀ n, P16944960415583388322.a n = A017490 n

theorem P16944960415583388322.correct : P16944960415583388322.Spec := by
  intro n
  simp only [A017490, Nat.add_sub_cancel, A017490.P16944960415583388322.a, A017490.P4196226893979965126.a, A017489, A017489.P14342355751131469528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017490

/-! ## A017490.P17228298506679690402

`A017486(n)*A017488(n)`
-/

namespace A017490.P17228298506679690402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017486 n * A017488 n

end

end A017490.P17228298506679690402

namespace A017490

/-- `A017486(n)*A017488(n)` -/
def P17228298506679690402.Spec : Prop :=
  ∀ n, P17228298506679690402.a n = A017490 n

theorem P17228298506679690402.correct : P17228298506679690402.Spec := by
  intro n
  simp only [A017490, Nat.add_sub_cancel, A017490.P17228298506679690402.a, A017490.P4196226893979965126.a, A017486, A017486.P7200803324460769638.a, A017488, A017488.P17123188788182934376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017490

/-! ## A017490.P8871948354394307369

`A017491(n)/A017485(n)`
-/

namespace A017490.P8871948354394307369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017491 n : ℚ) / (A017485 n : ℚ)

end

end A017490.P8871948354394307369

namespace A017490

/-- `A017491(n)/A017485(n)` -/
def P8871948354394307369.Spec : Prop :=
  ∀ n, P8871948354394307369.a n = (A017490 n : ℚ)

end A017490

/-! ## A017490.P14432315727502563734

`A017492(n)/A017486(n)`
-/

namespace A017490.P14432315727502563734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017492 n : ℚ) / (A017486 n : ℚ)

end

end A017490.P14432315727502563734

namespace A017490

/-- `A017492(n)/A017486(n)` -/
def P14432315727502563734.Spec : Prop :=
  ∀ n, P14432315727502563734.a n = (A017490 n : ℚ)

end A017490

/-! ## A017490.P15742049438331138358

`A017493(n)/A017487(n)`
-/

namespace A017490.P15742049438331138358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017493 n : ℚ) / (A017487 n : ℚ)

end

end A017490.P15742049438331138358

namespace A017490

/-- `A017493(n)/A017487(n)` -/
def P15742049438331138358.Spec : Prop :=
  ∀ n, P15742049438331138358.a n = (A017490 n : ℚ)

end A017490

/-! ## A017490.P7596842448563124462

`(A017485(n)*A017486(n))²`
-/

namespace A017490.P7596842448563124462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017485 n * A017486 n) ^ 2

end

end A017490.P7596842448563124462

namespace A017490

/-- `(A017485(n)*A017486(n))²` -/
def P7596842448563124462.Spec : Prop :=
  ∀ n, P7596842448563124462.a n = A017490 n

theorem P7596842448563124462.correct : P7596842448563124462.Spec := by
  intro n
  simp only [A017490, Nat.add_sub_cancel, A017490.P7596842448563124462.a, A017490.P4196226893979965126.a, A017485, A017485.P4370091181196038588.a, A017486, A017486.P7200803324460769638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017490

/-! ## A017490.P15780945636021284239

`A017485(n)²*A017488(n)`
-/

namespace A017490.P15780945636021284239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n ^ 2 * A017488 n

end

end A017490.P15780945636021284239

namespace A017490

/-- `A017485(n)²*A017488(n)` -/
def P15780945636021284239.Spec : Prop :=
  ∀ n, P15780945636021284239.a n = A017490 n

theorem P15780945636021284239.correct : P15780945636021284239.Spec := by
  intro n
  simp only [A017490, Nat.add_sub_cancel, A017490.P15780945636021284239.a, A017490.P4196226893979965126.a, A017485, A017485.P4370091181196038588.a, A017488, A017488.P17123188788182934376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017490

/-! ## A017490.P9863383733803203879

`(A017489(n)/A017486(n))²`
-/

namespace A017490.P9863383733803203879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017489 n : ℚ) / (A017486 n : ℚ)) ^ 2

end

end A017490.P9863383733803203879

namespace A017490

/-- `(A017489(n)/A017486(n))²` -/
def P9863383733803203879.Spec : Prop :=
  ∀ n, P9863383733803203879.a n = (A017490 n : ℚ)

end A017490

/-! ## A017490.P16466043994116306342

`A017489(n)²/A017488(n)`
-/

namespace A017490.P16466043994116306342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017489 n ^ 2 : ℚ) / (A017488 n : ℚ)

end

end A017490.P16466043994116306342

namespace A017490

/-- `A017489(n)²/A017488(n)` -/
def P16466043994116306342.Spec : Prop :=
  ∀ n, P16466043994116306342.a n = (A017490 n : ℚ)

end A017490

/-! ## A017490.P1944087301078166170

`(A017491(n)/A017488(n))²`
-/

namespace A017490.P1944087301078166170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017491 n : ℚ) / (A017488 n : ℚ)) ^ 2

end

end A017490.P1944087301078166170

namespace A017490

/-- `(A017491(n)/A017488(n))²` -/
def P1944087301078166170.Spec : Prop :=
  ∀ n, P1944087301078166170.a n = (A017490 n : ℚ)

end A017490

/-! ## A017490.P7231077391924129377

`A017492(n)/A017485(n)²`
-/

namespace A017490.P7231077391924129377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017492 n : ℚ) / (A017485 n ^ 2 : ℚ)

end

end A017490.P7231077391924129377

namespace A017490

/-- `A017492(n)/A017485(n)²` -/
def P7231077391924129377.Spec : Prop :=
  ∀ n, P7231077391924129377.a n = (A017490 n : ℚ)

end A017490

/-! ## A017490.P4679058340463748613

`(A017492(n)/A017489(n))²`
-/

namespace A017490.P4679058340463748613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017492 n : ℚ) / (A017489 n : ℚ)) ^ 2

end

end A017490.P4679058340463748613

namespace A017490

/-- `(A017492(n)/A017489(n))²` -/
def P4679058340463748613.Spec : Prop :=
  ∀ n, P4679058340463748613.a n = (A017490 n : ℚ)

end A017490

/-!
# A017491: a(n) = (11*n + 8)^7.

The programs for A017491, the canonical program `A017491.P9890913540820912516` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017491 has offset 0).

The definition of A017491 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+8)^7` (program `A017491.P9890913540820912516`, by `A017491.P9890913540820912516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017491.P9890913540820912516

`(11*n+8)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017491

/-- `(11*n+8)^7` -/
def P9890913540820912516.Spec : Prop :=
  ∀ n, (P9890913540820912516.a n : ℤ) = A017491 n

theorem P9890913540820912516.correct : P9890913540820912516.Spec := by
  intro n
  simp only [A017491]

end A017491

/-! ## A017491.P13492834214267269860

`A017485(n)*A017490(n)`
-/

namespace A017491.P13492834214267269860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n * A017490 n

end

end A017491.P13492834214267269860

namespace A017491

/-- `A017485(n)*A017490(n)` -/
def P13492834214267269860.Spec : Prop :=
  ∀ n, P13492834214267269860.a n = A017491 n

theorem P13492834214267269860.correct : P13492834214267269860.Spec := by
  intro n
  simp only [A017491, Nat.add_sub_cancel, A017491.P13492834214267269860.a, A017491.P9890913540820912516.a, A017485, A017485.P4370091181196038588.a, A017490, A017490.P4196226893979965126.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017491

/-! ## A017491.P7669618537686347948

`A017486(n)*A017489(n)`
-/

namespace A017491.P7669618537686347948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017486 n * A017489 n

end

end A017491.P7669618537686347948

namespace A017491

/-- `A017486(n)*A017489(n)` -/
def P7669618537686347948.Spec : Prop :=
  ∀ n, P7669618537686347948.a n = A017491 n

theorem P7669618537686347948.correct : P7669618537686347948.Spec := by
  intro n
  simp only [A017491, Nat.add_sub_cancel, A017491.P7669618537686347948.a, A017491.P9890913540820912516.a, A017486, A017486.P7200803324460769638.a, A017489, A017489.P14342355751131469528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017491

/-! ## A017491.P16025952884735309775

`A017487(n)*A017488(n)`
-/

namespace A017491.P16025952884735309775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017487 n * A017488 n

end

end A017491.P16025952884735309775

namespace A017491

/-- `A017487(n)*A017488(n)` -/
def P16025952884735309775.Spec : Prop :=
  ∀ n, P16025952884735309775.a n = A017491 n

theorem P16025952884735309775.correct : P16025952884735309775.Spec := by
  intro n
  simp only [A017491, Nat.add_sub_cancel, A017491.P16025952884735309775.a, A017491.P9890913540820912516.a, A017487, A017487.P4684112795124535931.a, A017488, A017488.P17123188788182934376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017491

/-! ## A017491.P16752214660700959398

`A017492(n)/A017485(n)`
-/

namespace A017491.P16752214660700959398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017492 n : ℚ) / (A017485 n : ℚ)

end

end A017491.P16752214660700959398

namespace A017491

/-- `A017492(n)/A017485(n)` -/
def P16752214660700959398.Spec : Prop :=
  ∀ n, P16752214660700959398.a n = (A017491 n : ℚ)

end A017491

/-! ## A017491.P545404082674508840

`A017493(n)/A017486(n)`
-/

namespace A017491.P545404082674508840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017493 n : ℚ) / (A017486 n : ℚ)

end

end A017491.P545404082674508840

namespace A017491

/-- `A017493(n)/A017486(n)` -/
def P545404082674508840.Spec : Prop :=
  ∀ n, P545404082674508840.a n = (A017491 n : ℚ)

end A017491

/-! ## A017491.P4169073159492855575

`A017485(n)²*A017489(n)`
-/

namespace A017491.P4169073159492855575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n ^ 2 * A017489 n

end

end A017491.P4169073159492855575

namespace A017491

/-- `A017485(n)²*A017489(n)` -/
def P4169073159492855575.Spec : Prop :=
  ∀ n, P4169073159492855575.a n = A017491 n

theorem P4169073159492855575.correct : P4169073159492855575.Spec := by
  intro n
  simp only [A017491, Nat.add_sub_cancel, A017491.P4169073159492855575.a, A017491.P9890913540820912516.a, A017485, A017485.P4370091181196038588.a, A017489, A017489.P14342355751131469528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017491

/-! ## A017491.P208138593880966604

`A017486(n)²*A017487(n)`
-/

namespace A017491.P208138593880966604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017486 n ^ 2 * A017487 n

end

end A017491.P208138593880966604

namespace A017491

/-- `A017486(n)²*A017487(n)` -/
def P208138593880966604.Spec : Prop :=
  ∀ n, P208138593880966604.a n = A017491 n

theorem P208138593880966604.correct : P208138593880966604.Spec := by
  intro n
  simp only [A017491, Nat.add_sub_cancel, A017491.P208138593880966604.a, A017491.P9890913540820912516.a, A017486, A017486.P7200803324460769638.a, A017487, A017487.P4684112795124535931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017491

/-! ## A017491.P13632822713551692347

`A017487(n)²*A017485(n)`
-/

namespace A017491.P13632822713551692347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017487 n ^ 2 * A017485 n

end

end A017491.P13632822713551692347

namespace A017491

/-- `A017487(n)²*A017485(n)` -/
def P13632822713551692347.Spec : Prop :=
  ∀ n, P13632822713551692347.a n = A017491 n

theorem P13632822713551692347.correct : P13632822713551692347.Spec := by
  intro n
  simp only [A017491, Nat.add_sub_cancel, A017491.P13632822713551692347.a, A017491.P9890913540820912516.a, A017485, A017485.P4370091181196038588.a, A017487, A017487.P4684112795124535931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017491

/-! ## A017491.P15907905499702711711

`A017488(n)²/A017485(n)`
-/

namespace A017491.P15907905499702711711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017488 n ^ 2 : ℚ) / (A017485 n : ℚ)

end

end A017491.P15907905499702711711

namespace A017491

/-- `A017488(n)²/A017485(n)` -/
def P15907905499702711711.Spec : Prop :=
  ∀ n, P15907905499702711711.a n = (A017491 n : ℚ)

end A017491

/-! ## A017491.P1751487086474990618

`A017489(n)²/A017487(n)`
-/

namespace A017491.P1751487086474990618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017489 n ^ 2 : ℚ) / (A017487 n : ℚ)

end

end A017491.P1751487086474990618

namespace A017491

/-- `A017489(n)²/A017487(n)` -/
def P1751487086474990618.Spec : Prop :=
  ∀ n, P1751487086474990618.a n = (A017491 n : ℚ)

end A017491

/-! ## A017491.P17248816993322640371

`A017490(n)²/A017489(n)`
-/

namespace A017491.P17248816993322640371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017490 n ^ 2 : ℚ) / (A017489 n : ℚ)

end

end A017491.P17248816993322640371

namespace A017491

/-- `A017490(n)²/A017489(n)` -/
def P17248816993322640371.Spec : Prop :=
  ∀ n, P17248816993322640371.a n = (A017491 n : ℚ)

end A017491

/-! ## A017491.P8508933645974936821

`A017493(n)/A017485(n)²`
-/

namespace A017491.P8508933645974936821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017493 n : ℚ) / (A017485 n ^ 2 : ℚ)

end

end A017491.P8508933645974936821

namespace A017491

/-- `A017493(n)/A017485(n)²` -/
def P8508933645974936821.Spec : Prop :=
  ∀ n, P8508933645974936821.a n = (A017491 n : ℚ)

end A017491

/-! ## A017491.P11849111474892042744

`A017486(n)²²/A017485(n)`
-/

namespace A017491.P11849111474892042744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017486 n ^ 2) ^ 2 : ℚ) / (A017485 n : ℚ)

end

end A017491.P11849111474892042744

namespace A017491

/-- `A017486(n)²²/A017485(n)` -/
def P11849111474892042744.Spec : Prop :=
  ∀ n, P11849111474892042744.a n = (A017491 n : ℚ)

end A017491

/-! ## A017491.P4985871772984225565

`A017485(n)*A017486(n)*A017488(n)`
-/

namespace A017491.P4985871772984225565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n * A017486 n * A017488 n

end

end A017491.P4985871772984225565

namespace A017491

/-- `A017485(n)*A017486(n)*A017488(n)` -/
def P4985871772984225565.Spec : Prop :=
  ∀ n, P4985871772984225565.a n = A017491 n

theorem P4985871772984225565.correct : P4985871772984225565.Spec := by
  intro n
  simp only [A017491, Nat.add_sub_cancel, A017491.P4985871772984225565.a, A017491.P9890913540820912516.a, A017485, A017485.P4370091181196038588.a, A017486, A017486.P7200803324460769638.a, A017488, A017488.P17123188788182934376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017491

/-!
# A017492: a(n) = (11*n + 8)^8.

The programs for A017492, the canonical program `A017492.P6513029710537564285` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017492 has offset 0).

The definition of A017492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+8)^8` (program `A017492.P6513029710537564285`, by `A017492.P6513029710537564285.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017492.P6513029710537564285

`(11*n+8)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017492

/-- `(11*n+8)^8` -/
def P6513029710537564285.Spec : Prop :=
  ∀ n, (P6513029710537564285.a n : ℤ) = A017492 n

theorem P6513029710537564285.correct : P6513029710537564285.Spec := by
  intro n
  simp only [A017492]

end A017492

/-! ## A017492.P5797355984290655246

`A017488(n)²`
-/

namespace A017492.P5797355984290655246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017488 n ^ 2

end

end A017492.P5797355984290655246

namespace A017492

/-- `A017488(n)²` -/
def P5797355984290655246.Spec : Prop :=
  ∀ n, P5797355984290655246.a n = A017492 n

theorem P5797355984290655246.correct : P5797355984290655246.Spec := by
  intro n
  simp only [A017492, Nat.add_sub_cancel, A017492.P5797355984290655246.a, A017492.P6513029710537564285.a, A017488, A017488.P17123188788182934376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017492

/-! ## A017492.P980067437989313611

`A017486(n)²²`
-/

namespace A017492.P980067437989313611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017486 n ^ 2) ^ 2

end

end A017492.P980067437989313611

namespace A017492

/-- `A017486(n)²²` -/
def P980067437989313611.Spec : Prop :=
  ∀ n, P980067437989313611.a n = A017492 n

theorem P980067437989313611.correct : P980067437989313611.Spec := by
  intro n
  simp only [A017492, Nat.add_sub_cancel, A017492.P980067437989313611.a, A017492.P6513029710537564285.a, A017486, A017486.P7200803324460769638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017492

/-! ## A017492.P13634003372044773884

`A017485(n)²²²`
-/

namespace A017492.P13634003372044773884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017485 n ^ 2) ^ 2) ^ 2

end

end A017492.P13634003372044773884

namespace A017492

/-- `A017485(n)²²²` -/
def P13634003372044773884.Spec : Prop :=
  ∀ n, P13634003372044773884.a n = A017492 n

theorem P13634003372044773884.correct : P13634003372044773884.Spec := by
  intro n
  simp only [A017492, Nat.add_sub_cancel, A017492.P13634003372044773884.a, A017492.P6513029710537564285.a, A017485, A017485.P4370091181196038588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017492

/-! ## A017492.P12845483692610122456

`(A017473(n)+1)²²²`
-/

namespace A017492.P12845483692610122456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017473 n + 1) ^ 2) ^ 2) ^ 2

end

end A017492.P12845483692610122456

namespace A017492

/-- `(A017473(n)+1)²²²` -/
def P12845483692610122456.Spec : Prop :=
  ∀ n, P12845483692610122456.a n = A017492 n

theorem P12845483692610122456.correct : P12845483692610122456.Spec := by
  intro n
  simp only [A017492, Nat.add_sub_cancel, A017492.P12845483692610122456.a, A017492.P6513029710537564285.a, A017473, A017473.P6794540674081733570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017492

/-! ## A017492.P10535143648408043200

`(A017461(n)+2)²²²`
-/

namespace A017492.P10535143648408043200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017461 n + 2) ^ 2) ^ 2) ^ 2

end

end A017492.P10535143648408043200

namespace A017492

/-- `(A017461(n)+2)²²²` -/
def P10535143648408043200.Spec : Prop :=
  ∀ n, P10535143648408043200.a n = A017492 n

theorem P10535143648408043200.correct : P10535143648408043200.Spec := by
  intro n
  simp only [A017492, Nat.add_sub_cancel, A017492.P10535143648408043200.a, A017492.P6513029710537564285.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017492

/-! ## A017492.P6559474401792006506

`(1-A017497(n))²²²`
-/

namespace A017492.P6559474401792006506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017497 n) ^ 2) ^ 2) ^ 2

end

end A017492.P6559474401792006506

namespace A017492

/-- `(1-A017497(n))²²²` -/
def P6559474401792006506.Spec : Prop :=
  ∀ n, P6559474401792006506.a n = A017492 n

theorem P6559474401792006506.correct : P6559474401792006506.Spec := by
  intro n
  simp only [A017492, Nat.add_sub_cancel, A017492.P6559474401792006506.a, A017492.P6513029710537564285.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017492

/-! ## A017492.P3053815855177104097

`(2-A017509(n))²²²`
-/

namespace A017492.P3053815855177104097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017509 n) ^ 2) ^ 2) ^ 2

end

end A017492.P3053815855177104097

namespace A017492

/-- `(2-A017509(n))²²²` -/
def P3053815855177104097.Spec : Prop :=
  ∀ n, P3053815855177104097.a n = A017492 n

theorem P3053815855177104097.correct : P3053815855177104097.Spec := by
  intro n
  simp only [A017492, Nat.add_sub_cancel, A017492.P3053815855177104097.a, A017492.P6513029710537564285.a, A017509, A017509.P7373483985674399481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017492

/-! ## A017492.P8082514698254715988

`(A017365(n)+n)²²²`
-/

namespace A017492.P8082514698254715988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017365 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017492.P8082514698254715988

namespace A017492

/-- `(A017365(n)+n)²²²` -/
def P8082514698254715988.Spec : Prop :=
  ∀ n, P8082514698254715988.a n = A017492 n

theorem P8082514698254715988.correct : P8082514698254715988.Spec := by
  intro n
  simp only [A017492, Nat.add_sub_cancel, A017492.P8082514698254715988.a, A017492.P6513029710537564285.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017492

/-! ## A017492.P13940417311828799049

`(n-A017617(n))²²²`
-/

namespace A017492.P13940417311828799049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017617 n) ^ 2) ^ 2) ^ 2

end

end A017492.P13940417311828799049

namespace A017492

/-- `(n-A017617(n))²²²` -/
def P13940417311828799049.Spec : Prop :=
  ∀ n, P13940417311828799049.a n = A017492 n

theorem P13940417311828799049.correct : P13940417311828799049.Spec := by
  intro n
  simp only [A017492, Nat.add_sub_cancel, A017492.P13940417311828799049.a, A017492.P6513029710537564285.a, A017617, A017617.P15573883131522867575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017492

/-! ## A017492.P3614221429530000810

`A017485(n)*A017491(n)`
-/

namespace A017492.P3614221429530000810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n * A017491 n

end

end A017492.P3614221429530000810

namespace A017492

/-- `A017485(n)*A017491(n)` -/
def P3614221429530000810.Spec : Prop :=
  ∀ n, P3614221429530000810.a n = A017492 n

theorem P3614221429530000810.correct : P3614221429530000810.Spec := by
  intro n
  simp only [A017492, Nat.add_sub_cancel, A017492.P3614221429530000810.a, A017492.P6513029710537564285.a, A017485, A017485.P4370091181196038588.a, A017491, A017491.P9890913540820912516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017492

/-! ## A017492.P6043709279991492776

`A017486(n)*A017490(n)`
-/

namespace A017492.P6043709279991492776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017486 n * A017490 n

end

end A017492.P6043709279991492776

namespace A017492

/-- `A017486(n)*A017490(n)` -/
def P6043709279991492776.Spec : Prop :=
  ∀ n, P6043709279991492776.a n = A017492 n

theorem P6043709279991492776.correct : P6043709279991492776.Spec := by
  intro n
  simp only [A017492, Nat.add_sub_cancel, A017492.P6043709279991492776.a, A017492.P6513029710537564285.a, A017486, A017486.P7200803324460769638.a, A017490, A017490.P4196226893979965126.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017492

/-! ## A017492.P11774177477067236681

`A017487(n)*A017489(n)`
-/

namespace A017492.P11774177477067236681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017487 n * A017489 n

end

end A017492.P11774177477067236681

namespace A017492

/-- `A017487(n)*A017489(n)` -/
def P11774177477067236681.Spec : Prop :=
  ∀ n, P11774177477067236681.a n = A017492 n

theorem P11774177477067236681.correct : P11774177477067236681.Spec := by
  intro n
  simp only [A017492, Nat.add_sub_cancel, A017492.P11774177477067236681.a, A017492.P6513029710537564285.a, A017487, A017487.P4684112795124535931.a, A017489, A017489.P14342355751131469528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017492

/-! ## A017492.P8038975140683954903

`A017493(n)/A017485(n)`
-/

namespace A017492.P8038975140683954903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017493 n : ℚ) / (A017485 n : ℚ)

end

end A017492.P8038975140683954903

namespace A017492

/-- `A017493(n)/A017485(n)` -/
def P8038975140683954903.Spec : Prop :=
  ∀ n, P8038975140683954903.a n = (A017492 n : ℚ)

end A017492

/-! ## A017492.P11317044499388575372

`(A017491(n)/A017487(n))²`
-/

namespace A017492.P11317044499388575372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017491 n : ℚ) / (A017487 n : ℚ)) ^ 2

end

end A017492.P11317044499388575372

namespace A017492

/-- `(A017491(n)/A017487(n))²` -/
def P11317044499388575372.Spec : Prop :=
  ∀ n, P11317044499388575372.a n = (A017492 n : ℚ)

end A017492

/-! ## A017492.P3777563921885282303

`A017491(n)²/A017490(n)`
-/

namespace A017492.P3777563921885282303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017491 n ^ 2 : ℚ) / (A017490 n : ℚ)

end

end A017492.P3777563921885282303

namespace A017492

/-- `A017491(n)²/A017490(n)` -/
def P3777563921885282303.Spec : Prop :=
  ∀ n, P3777563921885282303.a n = (A017492 n : ℚ)

end A017492

/-! ## A017492.P11888874894707794418

`(A017493(n)/A017489(n))²`
-/

namespace A017492.P11888874894707794418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017493 n : ℚ) / (A017489 n : ℚ)) ^ 2

end

end A017492.P11888874894707794418

namespace A017492

/-- `(A017493(n)/A017489(n))²` -/
def P11888874894707794418.Spec : Prop :=
  ∀ n, P11888874894707794418.a n = (A017492 n : ℚ)

end A017492

/-!
# A017493: a(n) = (11*n + 8)^9.

The programs for A017493, the canonical program `A017493.P15184924049206582508` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017493 has offset 0).

The definition of A017493 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+8)^9` (program `A017493.P15184924049206582508`, by `A017493.P15184924049206582508.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017493.P15184924049206582508

`(11*n+8)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017493

/-- `(11*n+8)^9` -/
def P15184924049206582508.Spec : Prop :=
  ∀ n, (P15184924049206582508.a n : ℤ) = A017493 n

theorem P15184924049206582508.correct : P15184924049206582508.Spec := by
  intro n
  simp only [A017493]

end A017493

/-! ## A017493.P18015096646229735523

`sqrt(A017490(n)^3)`
-/

namespace A017493.P18015096646229735523
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017490 n ^ 3 : ℝ)

end

end A017493.P18015096646229735523

namespace A017493

/-- `sqrt(A017490(n)^3)` -/
def P18015096646229735523.Spec : Prop :=
  ∀ n, P18015096646229735523.a n = (A017493 n : ℝ)

end A017493

/-! ## A017493.P4898643487120884287

`A017485(n)*A017492(n)`
-/

namespace A017493.P4898643487120884287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n * A017492 n

end

end A017493.P4898643487120884287

namespace A017493

/-- `A017485(n)*A017492(n)` -/
def P4898643487120884287.Spec : Prop :=
  ∀ n, P4898643487120884287.a n = A017493 n

theorem P4898643487120884287.correct : P4898643487120884287.Spec := by
  intro n
  simp only [A017493, Nat.add_sub_cancel, A017493.P4898643487120884287.a, A017493.P15184924049206582508.a, A017485, A017485.P4370091181196038588.a, A017492, A017492.P6513029710537564285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017493

/-! ## A017493.P14236903631300697029

`A017486(n)*A017491(n)`
-/

namespace A017493.P14236903631300697029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017486 n * A017491 n

end

end A017493.P14236903631300697029

namespace A017493

/-- `A017486(n)*A017491(n)` -/
def P14236903631300697029.Spec : Prop :=
  ∀ n, P14236903631300697029.a n = A017493 n

theorem P14236903631300697029.correct : P14236903631300697029.Spec := by
  intro n
  simp only [A017493, Nat.add_sub_cancel, A017493.P14236903631300697029.a, A017493.P15184924049206582508.a, A017486, A017486.P7200803324460769638.a, A017491, A017491.P9890913540820912516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017493

/-! ## A017493.P798746819807434564

`A017487(n)*A017490(n)`
-/

namespace A017493.P798746819807434564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017487 n * A017490 n

end

end A017493.P798746819807434564

namespace A017493

/-- `A017487(n)*A017490(n)` -/
def P798746819807434564.Spec : Prop :=
  ∀ n, P798746819807434564.a n = A017493 n

theorem P798746819807434564.correct : P798746819807434564.Spec := by
  intro n
  simp only [A017493, Nat.add_sub_cancel, A017493.P798746819807434564.a, A017493.P15184924049206582508.a, A017487, A017487.P4684112795124535931.a, A017490, A017490.P4196226893979965126.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017493

/-! ## A017493.P11567749518268478216

`A017488(n)*A017489(n)`
-/

namespace A017493.P11567749518268478216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017488 n * A017489 n

end

end A017493.P11567749518268478216

namespace A017493

/-- `A017488(n)*A017489(n)` -/
def P11567749518268478216.Spec : Prop :=
  ∀ n, P11567749518268478216.a n = A017493 n

theorem P11567749518268478216.correct : P11567749518268478216.Spec := by
  intro n
  simp only [A017493, Nat.add_sub_cancel, A017493.P11567749518268478216.a, A017493.P15184924049206582508.a, A017488, A017488.P17123188788182934376.a, A017489, A017489.P14342355751131469528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017493

/-! ## A017493.P17907567797552244286

`A017485(n)²*A017491(n)`
-/

namespace A017493.P17907567797552244286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n ^ 2 * A017491 n

end

end A017493.P17907567797552244286

namespace A017493

/-- `A017485(n)²*A017491(n)` -/
def P17907567797552244286.Spec : Prop :=
  ∀ n, P17907567797552244286.a n = A017493 n

theorem P17907567797552244286.correct : P17907567797552244286.Spec := by
  intro n
  simp only [A017493, Nat.add_sub_cancel, A017493.P17907567797552244286.a, A017493.P15184924049206582508.a, A017485, A017485.P4370091181196038588.a, A017491, A017491.P9890913540820912516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017493

/-! ## A017493.P10118678314003918704

`A017486(n)²*A017489(n)`
-/

namespace A017493.P10118678314003918704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017486 n ^ 2 * A017489 n

end

end A017493.P10118678314003918704

namespace A017493

/-- `A017486(n)²*A017489(n)` -/
def P10118678314003918704.Spec : Prop :=
  ∀ n, P10118678314003918704.a n = A017493 n

theorem P10118678314003918704.correct : P10118678314003918704.Spec := by
  intro n
  simp only [A017493, Nat.add_sub_cancel, A017493.P10118678314003918704.a, A017493.P15184924049206582508.a, A017486, A017486.P7200803324460769638.a, A017489, A017489.P14342355751131469528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017493

/-! ## A017493.P11309176624131843611

`A017488(n)²*A017485(n)`
-/

namespace A017493.P11309176624131843611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017488 n ^ 2 * A017485 n

end

end A017493.P11309176624131843611

namespace A017493

/-- `A017488(n)²*A017485(n)` -/
def P11309176624131843611.Spec : Prop :=
  ∀ n, P11309176624131843611.a n = A017493 n

theorem P11309176624131843611.correct : P11309176624131843611.Spec := by
  intro n
  simp only [A017493, Nat.add_sub_cancel, A017493.P11309176624131843611.a, A017493.P15184924049206582508.a, A017485, A017485.P4370091181196038588.a, A017488, A017488.P17123188788182934376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017493

/-! ## A017493.P729361454263401502

`A017489(n)²/A017485(n)`
-/

namespace A017493.P729361454263401502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017489 n ^ 2 : ℚ) / (A017485 n : ℚ)

end

end A017493.P729361454263401502

namespace A017493

/-- `A017489(n)²/A017485(n)` -/
def P729361454263401502.Spec : Prop :=
  ∀ n, P729361454263401502.a n = (A017493 n : ℚ)

end A017493

/-! ## A017493.P2747641943646398378

`A017491(n)²/A017489(n)`
-/

namespace A017493.P2747641943646398378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017491 n ^ 2 : ℚ) / (A017489 n : ℚ)

end

end A017493.P2747641943646398378

namespace A017493

/-- `A017491(n)²/A017489(n)` -/
def P2747641943646398378.Spec : Prop :=
  ∀ n, P2747641943646398378.a n = (A017493 n : ℚ)

end A017493

/-! ## A017493.P15702180114766086219

`A017486(n)²²*A017485(n)`
-/

namespace A017493.P15702180114766086219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017486 n ^ 2) ^ 2 * A017485 n

end

end A017493.P15702180114766086219

namespace A017493

/-- `A017486(n)²²*A017485(n)` -/
def P15702180114766086219.Spec : Prop :=
  ∀ n, P15702180114766086219.a n = A017493 n

theorem P15702180114766086219.correct : P15702180114766086219.Spec := by
  intro n
  simp only [A017493, Nat.add_sub_cancel, A017493.P15702180114766086219.a, A017493.P15184924049206582508.a, A017485, A017485.P4370091181196038588.a, A017486, A017486.P7200803324460769638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017493

/-! ## A017493.P4262949677273138308

`A017488(n)²²/A017491(n)`
-/

namespace A017493.P4262949677273138308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017488 n ^ 2) ^ 2 : ℚ) / (A017491 n : ℚ)

end

end A017493.P4262949677273138308

namespace A017493

/-- `A017488(n)²²/A017491(n)` -/
def P4262949677273138308.Spec : Prop :=
  ∀ n, P4262949677273138308.a n = (A017493 n : ℚ)

end A017493

/-! ## A017493.P1141662765999955916

`A001017(A017485(n))`
-/

namespace A017493.P1141662765999955916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017485 n).toNat

end

end A017493.P1141662765999955916

namespace A017493

/-- `A001017(A017485(n))` -/
def P1141662765999955916.Spec : Prop :=
  ∀ n, P1141662765999955916.a n = A017493 n

end A017493

/-! ## A017493.P1845231595601166317

`A001017(A017497(n)-1)`
-/

namespace A017493.P1845231595601166317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017497 n - 1).toNat

end

end A017493.P1845231595601166317

namespace A017493

/-- `A001017(A017497(n)-1)` -/
def P1845231595601166317.Spec : Prop :=
  ∀ n, P1845231595601166317.a n = A017493 n

end A017493

/-!
# A017494: 

The programs for A017494, there is no canonical definition to state claims against.
-/

/-! ## A017494.P14858094841119099856

`(11*n+8)^10`
-/

namespace A017494.P14858094841119099856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 8) ^ 10

end

end A017494.P14858094841119099856

/-! ## A017494.P18214589599337966498

`A017489(n)²`
-/

namespace A017494.P18214589599337966498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017489 n ^ 2

end

end A017494.P18214589599337966498

/-! ## A017494.P11995079834118710599

`(A017485(n)^5)²`
-/

namespace A017494.P11995079834118710599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017485 n ^ 5) ^ 2

end

end A017494.P11995079834118710599

/-! ## A017494.P11124167896910121456

`A017485(n)*A017493(n)`
-/

namespace A017494.P11124167896910121456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n * A017493 n

end

end A017494.P11124167896910121456

/-! ## A017494.P17543391625536859474

`A017486(n)*A017492(n)`
-/

namespace A017494.P17543391625536859474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017486 n * A017492 n

end

end A017494.P17543391625536859474

/-! ## A017494.P8316667855697764108

`A017487(n)*A017491(n)`
-/

namespace A017494.P8316667855697764108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017487 n * A017491 n

end

end A017494.P8316667855697764108

/-! ## A017494.P13490146527512633325

`A017488(n)*A017490(n)`
-/

namespace A017494.P13490146527512633325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017488 n * A017490 n

end

end A017494.P13490146527512633325

/-! ## A017494.P11077862300820157483

`(A017485(n)*A017488(n))²`
-/

namespace A017494.P11077862300820157483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017485 n * A017488 n) ^ 2

end

end A017494.P11077862300820157483

/-! ## A017494.P10779521867055768278

`A017485(n)²*A017492(n)`
-/

namespace A017494.P10779521867055768278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n ^ 2 * A017492 n

end

end A017494.P10779521867055768278

/-! ## A017494.P3094125442722034685

`(A017486(n)*A017487(n))²`
-/

namespace A017494.P3094125442722034685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017486 n * A017487 n) ^ 2

end

end A017494.P3094125442722034685

/-! ## A017494.P6515662787808386665

`A017486(n)²*A017490(n)`
-/

namespace A017494.P6515662787808386665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017486 n ^ 2 * A017490 n

end

end A017494.P6515662787808386665

/-! ## A017494.P3487518648950440130

`A017487(n)²*A017488(n)`
-/

namespace A017494.P3487518648950440130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017487 n ^ 2 * A017488 n

end

end A017494.P3487518648950440130

/-! ## A017494.P16337675761095145330

`A017488(n)²*A017486(n)`
-/

namespace A017494.P16337675761095145330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017488 n ^ 2 * A017486 n

end

end A017494.P16337675761095145330

/-! ## A017494.P11271570672940816160

`(A017490(n)/A017485(n))²`
-/

namespace A017494.P11271570672940816160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017490 n : ℚ) / (A017485 n : ℚ)) ^ 2

end

end A017494.P11271570672940816160

/-! ## A017494.P11678827658861956258

`(A017491(n)/A017486(n))²`
-/

namespace A017494.P11678827658861956258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017491 n : ℚ) / (A017486 n : ℚ)) ^ 2

end

end A017494.P11678827658861956258

/-!
# A017495: 

The programs for A017495, there is no canonical definition to state claims against.
-/

/-! ## A017495.P12740080959076139979

`(11*n+8)^11`
-/

namespace A017495.P12740080959076139979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 8) ^ 11

end

end A017495.P12740080959076139979

/-! ## A017495.P5527025673735589200

`A017486(n)*A017493(n)`
-/

namespace A017495.P5527025673735589200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017486 n * A017493 n

end

end A017495.P5527025673735589200

/-! ## A017495.P3110598204719502724

`A017487(n)*A017492(n)`
-/

namespace A017495.P3110598204719502724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017487 n * A017492 n

end

end A017495.P3110598204719502724

/-! ## A017495.P15470236187964566492

`A017488(n)*A017491(n)`
-/

namespace A017495.P15470236187964566492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017488 n * A017491 n

end

end A017495.P15470236187964566492

/-! ## A017495.P1658227563858553736

`A017489(n)*A017490(n)`
-/

namespace A017495.P1658227563858553736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017489 n * A017490 n

end

end A017495.P1658227563858553736

/-! ## A017495.P3306901283656821179

`A017487(n)²*A017489(n)`
-/

namespace A017495.P3306901283656821179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017487 n ^ 2 * A017489 n

end

end A017495.P3306901283656821179

/-! ## A017495.P7300210392298393112

`A017488(n)²*A017487(n)`
-/

namespace A017495.P7300210392298393112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017488 n ^ 2 * A017487 n

end

end A017495.P7300210392298393112

/-! ## A017495.P5753898720674305081

`A017489(n)²*A017485(n)`
-/

namespace A017495.P5753898720674305081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017489 n ^ 2 * A017485 n

end

end A017495.P5753898720674305081

/-!
# A017496: 

The programs for A017496, there is no canonical definition to state claims against.
-/

/-! ## A017496.P7123012820231131758

`(11*n+8)^12`
-/

namespace A017496.P7123012820231131758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 8) ^ 12

end

end A017496.P7123012820231131758

/-! ## A017496.P14432621795172818962

`A017490(n)²`
-/

namespace A017496.P14432621795172818962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017490 n ^ 2

end

end A017496.P14432621795172818962

/-! ## A017496.P3696451911456337731

`A017487(n)*A017493(n)`
-/

namespace A017496.P3696451911456337731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017487 n * A017493 n

end

end A017496.P3696451911456337731

/-! ## A017496.P2754522123451720107

`A017488(n)*A017492(n)`
-/

namespace A017496.P2754522123451720107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017488 n * A017492 n

end

end A017496.P2754522123451720107

/-! ## A017496.P14201419433638702285

`A017489(n)*A017491(n)`
-/

namespace A017496.P14201419433638702285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017489 n * A017491 n

end

end A017496.P14201419433638702285

/-! ## A017496.P4657909315003626738

`(A017485(n)*A017489(n))²`
-/

namespace A017496.P4657909315003626738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017485 n * A017489 n) ^ 2

end

end A017496.P4657909315003626738

/-! ## A017496.P15355578577057642705

`(A017486(n)*A017488(n))²`
-/

namespace A017496.P15355578577057642705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017486 n * A017488 n) ^ 2

end

end A017496.P15355578577057642705

/-! ## A017496.P17016026535116205248

`A017486(n)²*A017492(n)`
-/

namespace A017496.P17016026535116205248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017486 n ^ 2 * A017492 n

end

end A017496.P17016026535116205248

/-! ## A017496.P1589859198732901488

`A017489(n)²*A017486(n)`
-/

namespace A017496.P1589859198732901488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017489 n ^ 2 * A017486 n

end

end A017496.P1589859198732901488

/-! ## A017496.P16316009478818754835

`(A017491(n)/A017485(n))²`
-/

namespace A017496.P16316009478818754835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017491 n : ℚ) / (A017485 n : ℚ)) ^ 2

end

end A017496.P16316009478818754835

/-! ## A017496.P8068698691668953861

`A017491(n)²/A017486(n)`
-/

namespace A017496.P8068698691668953861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017491 n ^ 2 : ℚ) / (A017486 n : ℚ)

end

end A017496.P8068698691668953861

/-!
# A017497: a(n) = 11*n + 9.

The programs for A017497, the canonical program `A017497.P15469120572134644275` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017497 has offset 0).

The definition of A017497 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*n+9` (program `A017497.P15469120572134644275`, by `A017497.P15469120572134644275.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017497.P15469120572134644275

`11*n+9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017497

/-- `11*n+9` -/
def P15469120572134644275.Spec : Prop :=
  ∀ n, (P15469120572134644275.a n : ℤ) = A017497 n

theorem P15469120572134644275.correct : P15469120572134644275.Spec := by
  intro n
  simp only [A017497]

end A017497

/-!
# A017498: a(n) = (11*n + 9)^2.

The programs for A017498, the canonical program `A017498.P11433022045752089983` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017498 has offset 0).

The definition of A017498 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+9)²` (program `A017498.P11433022045752089983`, by `A017498.P11433022045752089983.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017498.P11433022045752089983

`(11*n+9)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017498

/-- `(11*n+9)²` -/
def P11433022045752089983.Spec : Prop :=
  ∀ n, (P11433022045752089983.a n : ℤ) = A017498 n

theorem P11433022045752089983.correct : P11433022045752089983.Spec := by
  intro n
  simp only [A017498]

end A017498

/-! ## A017498.P1686961284810039996

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=81, a(1)=400, a(2)=961`
-/

namespace A017498.P1686961284810039996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [81, 400, 961] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017498.P1686961284810039996

namespace A017498

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P1686961284810039996.Spec : Prop :=
  ∀ n, P1686961284810039996.a n = A017498 n

theorem P1686961284810039996.correct : P1686961284810039996.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017498, Nat.add_sub_cancel, A017498.P1686961284810039996.a, A017498.P11433022045752089983.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017498, Nat.add_sub_cancel, A017498.P1686961284810039996.a, A017498.P11433022045752089983.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017498

/-! ## A017498.P11726779951769776065

`sqrt(A017500(n))`
-/

namespace A017498.P11726779951769776065
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017500 n : ℝ)

end

end A017498.P11726779951769776065

namespace A017498

/-- `sqrt(A017500(n))` -/
def P11726779951769776065.Spec : Prop :=
  ∀ n, P11726779951769776065.a n = (A017498 n : ℝ)

end A017498

/-! ## A017498.P8523788329558268650

`sqrt(sqrt(A017504(n)))`
-/

namespace A017498.P8523788329558268650
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017504 n : ℝ))

end

end A017498.P8523788329558268650

namespace A017498

/-- `sqrt(sqrt(A017504(n)))` -/
def P8523788329558268650.Spec : Prop :=
  ∀ n, P8523788329558268650.a n = (A017498 n : ℝ)

end A017498

/-! ## A017498.P8880101003372803758

`A017502(n)^(1/3)`
-/

namespace A017498.P8880101003372803758
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017502 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017498.P8880101003372803758

namespace A017498

/-- `A017502(n)^(1/3)` -/
def P8880101003372803758.Spec : Prop :=
  ∀ n, P8880101003372803758.a n = (A017498 n : ℝ)

end A017498

/-! ## A017498.P15573509069965850520

`A017499(n)^(2/3)`
-/

namespace A017498.P15573509069965850520
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017499 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017498.P15573509069965850520

namespace A017498

/-- `A017499(n)^(2/3)` -/
def P15573509069965850520.Spec : Prop :=
  ∀ n, P15573509069965850520.a n = (A017498 n : ℝ)

end A017498

/-! ## A017498.P16362684422404328805

`abs((1-A017509(n))²-1)+1`
-/

namespace A017498.P16362684422404328805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A017509 n) ^ 2 - 1| + 1

end

end A017498.P16362684422404328805

namespace A017498

/-- `abs((1-A017509(n))²-1)+1` -/
def P16362684422404328805.Spec : Prop :=
  ∀ n, P16362684422404328805.a n = A017498 n

end A017498

/-! ## A017498.P10196345043863273936

`A017510(n)-A248339(n)`
-/

namespace A017498.P10196345043863273936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n - A248339 n

end

end A017498.P10196345043863273936

namespace A017498

/-- `A017510(n)-A248339(n)` -/
def P10196345043863273936.Spec : Prop :=
  ∀ n, P10196345043863273936.a n = A017498 n

theorem P10196345043863273936.correct : P10196345043863273936.Spec := by
  intro n
  simp only [A017498, Nat.add_sub_cancel, A017498.P10196345043863273936.a, A017498.P11433022045752089983.a, A017510, A017510.P5520538972762125414.a, A248339, A248339.P12910854868344435228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017498

/-! ## A017498.P10366534854082871565

`A017497(n)*A017497(n)`
-/

namespace A017498.P10366534854082871565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n * A017497 n

end

end A017498.P10366534854082871565

namespace A017498

/-- `A017497(n)*A017497(n)` -/
def P10366534854082871565.Spec : Prop :=
  ∀ n, P10366534854082871565.a n = A017498 n

theorem P10366534854082871565.correct : P10366534854082871565.Spec := by
  intro n
  simp only [A017498, Nat.add_sub_cancel, A017498.P10366534854082871565.a, A017498.P11433022045752089983.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017498

/-! ## A017498.P345311707821675985

`A017499(n)/A017497(n)`
-/

namespace A017498.P345311707821675985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017499 n : ℚ) / (A017497 n : ℚ)

end

end A017498.P345311707821675985

namespace A017498

/-- `A017499(n)/A017497(n)` -/
def P345311707821675985.Spec : Prop :=
  ∀ n, P345311707821675985.a n = (A017498 n : ℚ)

end A017498

/-! ## A017498.P10821356104319100165

`A017501(n)/A017499(n)`
-/

namespace A017498.P10821356104319100165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017501 n : ℚ) / (A017499 n : ℚ)

end

end A017498.P10821356104319100165

namespace A017498

/-- `A017501(n)/A017499(n)` -/
def P10821356104319100165.Spec : Prop :=
  ∀ n, P10821356104319100165.a n = (A017498 n : ℚ)

end A017498

/-! ## A017498.P17621899857234223078

`A017502(n)/A017500(n)`
-/

namespace A017498.P17621899857234223078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017502 n : ℚ) / (A017500 n : ℚ)

end

end A017498.P17621899857234223078

namespace A017498

/-- `A017502(n)/A017500(n)` -/
def P17621899857234223078.Spec : Prop :=
  ∀ n, P17621899857234223078.a n = (A017498 n : ℚ)

end A017498

/-! ## A017498.P4353338655676144010

`A017503(n)/A017501(n)`
-/

namespace A017498.P4353338655676144010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017503 n : ℚ) / (A017501 n : ℚ)

end

end A017498.P4353338655676144010

namespace A017498

/-- `A017503(n)/A017501(n)` -/
def P4353338655676144010.Spec : Prop :=
  ∀ n, P4353338655676144010.a n = (A017498 n : ℚ)

end A017498

/-! ## A017498.P7342878221093577032

`A017504(n)/A017502(n)`
-/

namespace A017498.P7342878221093577032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017504 n : ℚ) / (A017502 n : ℚ)

end

end A017498.P7342878221093577032

namespace A017498

/-- `A017504(n)/A017502(n)` -/
def P7342878221093577032.Spec : Prop :=
  ∀ n, P7342878221093577032.a n = (A017498 n : ℚ)

end A017498

/-! ## A017498.P4994143938309073975

`A017505(n)/A017503(n)`
-/

namespace A017498.P4994143938309073975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017505 n : ℚ) / (A017503 n : ℚ)

end

end A017498.P4994143938309073975

namespace A017498

/-- `A017505(n)/A017503(n)` -/
def P4994143938309073975.Spec : Prop :=
  ∀ n, P4994143938309073975.a n = (A017498 n : ℚ)

end A017498

/-! ## A017498.P16478960605085526435

`A017499(n)²/A017500(n)`
-/

namespace A017498.P16478960605085526435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017499 n ^ 2 : ℚ) / (A017500 n : ℚ)

end

end A017498.P16478960605085526435

namespace A017498

/-- `A017499(n)²/A017500(n)` -/
def P16478960605085526435.Spec : Prop :=
  ∀ n, P16478960605085526435.a n = (A017498 n : ℚ)

end A017498

/-! ## A017498.P2014713463242740634

`A017504(n)/A017499(n)²`
-/

namespace A017498.P2014713463242740634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017504 n : ℚ) / (A017499 n ^ 2 : ℚ)

end

end A017498.P2014713463242740634

namespace A017498

/-- `A017504(n)/A017499(n)²` -/
def P2014713463242740634.Spec : Prop :=
  ∀ n, P2014713463242740634.a n = (A017498 n : ℚ)

end A017498

/-! ## A017498.P13855676098669318774

`A017497(n)²%A017463(n)`
-/

namespace A017498.P13855676098669318774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017497 n ^ 2) (A017463 n)

end

end A017498.P13855676098669318774

namespace A017498

/-- `A017497(n)²%A017463(n)` -/
def P13855676098669318774.Spec : Prop :=
  ∀ n, P13855676098669318774.a n = A017498 n

end A017498

/-!
# A017499: a(n) = (11*n + 9)^3.

The programs for A017499, the canonical program `A017499.P1618840416987338505` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017499 has offset 0).

The definition of A017499 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+9)^3` (program `A017499.P1618840416987338505`, by `A017499.P1618840416987338505.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017499.P1618840416987338505

`(11*n+9)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017499

/-- `(11*n+9)^3` -/
def P1618840416987338505.Spec : Prop :=
  ∀ n, (P1618840416987338505.a n : ℤ) = A017499 n

theorem P1618840416987338505.correct : P1618840416987338505.Spec := by
  intro n
  simp only [A017499]

end A017499

/-! ## A017499.P3887717230463238174

`sqrt(A017502(n))`
-/

namespace A017499.P3887717230463238174
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017502 n : ℝ)

end

end A017499.P3887717230463238174

namespace A017499

/-- `sqrt(A017502(n))` -/
def P3887717230463238174.Spec : Prop :=
  ∀ n, P3887717230463238174.a n = (A017499 n : ℝ)

end A017499

/-! ## A017499.P17475565009254644117

`sqrt(A017498(n)^3)`
-/

namespace A017499.P17475565009254644117
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017498 n ^ 3 : ℝ)

end

end A017499.P17475565009254644117

namespace A017499

/-- `sqrt(A017498(n)^3)` -/
def P17475565009254644117.Spec : Prop :=
  ∀ n, P17475565009254644117.a n = (A017499 n : ℝ)

end A017499

/-! ## A017499.P13527510288300429729

`A017497(n)*A017498(n)`
-/

namespace A017499.P13527510288300429729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n * A017498 n

end

end A017499.P13527510288300429729

namespace A017499

/-- `A017497(n)*A017498(n)` -/
def P13527510288300429729.Spec : Prop :=
  ∀ n, P13527510288300429729.a n = A017499 n

theorem P13527510288300429729.correct : P13527510288300429729.Spec := by
  intro n
  simp only [A017499, Nat.add_sub_cancel, A017499.P13527510288300429729.a, A017499.P1618840416987338505.a, A017497, A017497.P15469120572134644275.a, A017498, A017498.P11433022045752089983.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017499

/-! ## A017499.P13085773399115963910

`A017500(n)/A017497(n)`
-/

namespace A017499.P13085773399115963910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017500 n : ℚ) / (A017497 n : ℚ)

end

end A017499.P13085773399115963910

namespace A017499

/-- `A017500(n)/A017497(n)` -/
def P13085773399115963910.Spec : Prop :=
  ∀ n, P13085773399115963910.a n = (A017499 n : ℚ)

end A017499

/-! ## A017499.P7227662329272992685

`A017501(n)/A017498(n)`
-/

namespace A017499.P7227662329272992685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017501 n : ℚ) / (A017498 n : ℚ)

end

end A017499.P7227662329272992685

namespace A017499

/-- `A017501(n)/A017498(n)` -/
def P7227662329272992685.Spec : Prop :=
  ∀ n, P7227662329272992685.a n = (A017499 n : ℚ)

end A017499

/-! ## A017499.P15385290076004709771

`A017503(n)/A017500(n)`
-/

namespace A017499.P15385290076004709771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017503 n : ℚ) / (A017500 n : ℚ)

end

end A017499.P15385290076004709771

namespace A017499

/-- `A017503(n)/A017500(n)` -/
def P15385290076004709771.Spec : Prop :=
  ∀ n, P15385290076004709771.a n = (A017499 n : ℚ)

end A017499

/-! ## A017499.P8788481052809518285

`A017504(n)/A017501(n)`
-/

namespace A017499.P8788481052809518285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017504 n : ℚ) / (A017501 n : ℚ)

end

end A017499.P8788481052809518285

namespace A017499

/-- `A017504(n)/A017501(n)` -/
def P8788481052809518285.Spec : Prop :=
  ∀ n, P8788481052809518285.a n = (A017499 n : ℚ)

end A017499

/-! ## A017499.P14891110863073503731

`A017505(n)/A017502(n)`
-/

namespace A017499.P14891110863073503731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017505 n : ℚ) / (A017502 n : ℚ)

end

end A017499.P14891110863073503731

namespace A017499

/-- `A017505(n)/A017502(n)` -/
def P14891110863073503731.Spec : Prop :=
  ∀ n, P14891110863073503731.a n = (A017499 n : ℚ)

end A017499

/-! ## A017499.P15391306274914636142

`A017500(n)²/A017501(n)`
-/

namespace A017499.P15391306274914636142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017500 n ^ 2 : ℚ) / (A017501 n : ℚ)

end

end A017499.P15391306274914636142

namespace A017499

/-- `A017500(n)²/A017501(n)` -/
def P15391306274914636142.Spec : Prop :=
  ∀ n, P15391306274914636142.a n = (A017499 n : ℚ)

end A017499

/-! ## A017499.P4851829636717246331

`A017501(n)/A017497(n)²`
-/

namespace A017499.P4851829636717246331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017501 n : ℚ) / (A017497 n ^ 2 : ℚ)

end

end A017499.P4851829636717246331

namespace A017499

/-- `A017501(n)/A017497(n)²` -/
def P4851829636717246331.Spec : Prop :=
  ∀ n, P4851829636717246331.a n = (A017499 n : ℚ)

end A017499

/-! ## A017499.P16495558120050054045

`A017503(n)/A017498(n)²`
-/

namespace A017499.P16495558120050054045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017503 n : ℚ) / (A017498 n ^ 2 : ℚ)

end

end A017499.P16495558120050054045

namespace A017499

/-- `A017503(n)/A017498(n)²` -/
def P16495558120050054045.Spec : Prop :=
  ∀ n, P16495558120050054045.a n = (A017499 n : ℚ)

end A017499

/-! ## A017499.P11659094520840241526

`A017503(n)/A017497(n)²²`
-/

namespace A017499.P11659094520840241526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017503 n : ℚ) / ((A017497 n ^ 2) ^ 2 : ℚ)

end

end A017499.P11659094520840241526

namespace A017499

/-- `A017503(n)/A017497(n)²²` -/
def P11659094520840241526.Spec : Prop :=
  ∀ n, P11659094520840241526.a n = (A017499 n : ℚ)

end A017499

/-! ## A017499.P14796510386341026328

`A017497(n)/A017501(n)*A017503(n)`
-/

namespace A017499.P14796510386341026328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017497 n : ℚ) / (A017501 n : ℚ) * (A017503 n : ℚ)

end

end A017499.P14796510386341026328

namespace A017499

/-- `A017497(n)/A017501(n)*A017503(n)` -/
def P14796510386341026328.Spec : Prop :=
  ∀ n, P14796510386341026328.a n = (A017499 n : ℚ)

end A017499

/-! ## A017499.P1694140216084603784

`A017497(n)/A017502(n)*A017504(n)`
-/

namespace A017499.P1694140216084603784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017497 n : ℚ) / (A017502 n : ℚ) * (A017504 n : ℚ)

end

end A017499.P1694140216084603784

namespace A017499

/-- `A017497(n)/A017502(n)*A017504(n)` -/
def P1694140216084603784.Spec : Prop :=
  ∀ n, P1694140216084603784.a n = (A017499 n : ℚ)

end A017499

/-! ## A017499.P4768174188590849937

`A017498(n)/A017502(n)*A017503(n)`
-/

namespace A017499.P4768174188590849937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017498 n : ℚ) / (A017502 n : ℚ) * (A017503 n : ℚ)

end

end A017499.P4768174188590849937

namespace A017499

/-- `A017498(n)/A017502(n)*A017503(n)` -/
def P4768174188590849937.Spec : Prop :=
  ∀ n, P4768174188590849937.a n = (A017499 n : ℚ)

end A017499

